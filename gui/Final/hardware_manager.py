import tkinter as tk
from tkinter import ttk, messagebox, filedialog
import serial.tools.list_ports
import json
from fixed_point import float_to_fixed_point
# from serial_manager import SerialManager
import threading
import queue

class HardwareManager:
    def __init__(self, parent, main_app):
        self.window = tk.Toplevel(parent)
        self.window.title("Hardware Manager")
        self.window.configure(bg="lightgrey")
        self.window.geometry("350x200")
        self.main_app = main_app
        # Create SerialManager instance
        # self.serial_manager = SerialManager()
        self.com_port = None
        self.connection = None
        self.read_thread = None
        self.read_queue = queue.Queue()
        self.running = False
        self.received_data = b''

        # self.create_widgets()


        # Label and combobox for COM ports


        connect_frame = tk.Frame(self.window, bg="lightgrey")
        connect_frame.pack(pady=10)

        tk.Label(connect_frame, text="Available COM Ports:", bg="lightgrey").grid(row=0, column=0, padx=5)
        self.combobox = ttk.Combobox(connect_frame, state="readonly", width=10)
        self.combobox.grid(row=1, column=0, padx=5, sticky="w")

        self.refresh_button = tk.Button(connect_frame, text="Refresh", width=10, command=self.refresh_ports, bg="lightblue")
        self.refresh_button.grid(row=1, column=1, padx=5, pady=5, sticky="w")

        self.refresh_ports()

        self.connect_button = tk.Button(connect_frame, text="Connect", width=10, command=self.connect_to_port, bg="lightblue")
        self.connect_button.grid(row=2, column=0, padx=(5, 2), pady=(10, 0), sticky="w")

        self.disconnect_button = tk.Button(connect_frame, text="Disconnect", width=10, command=self.close_connection, bg="lightblue")
        # self.disconnect_button.grid(row=2, column=1, padx=5, pady=5)
        self.disconnect_button.grid(row=2, column=1, padx=(2, 5), pady=(10, 0), sticky="ew")

        self.status_indicator = tk.Label(connect_frame, text=" ", bg="red", width=2, height=1, relief="solid")
        # self.status_indicator.grid(row=2, column=2, padx=5)
        self.status_indicator.grid(row=2, column=2, padx=(5, 0), pady=(10, 0), sticky="w")

        # Load configuration button
        self.load_button = tk.Button(connect_frame, text="Load Configuration", command=self.load_configuration, bg="lightblue")
        self.load_button.grid(row=3, column=0, pady=15, columnspan=3)

        self.filters = []  # List of lists to store filter data

    def refresh_ports(self):
        """Refresh the list of COM ports in the combobox."""
        ports = serial.tools.list_ports.comports()
        port_list = [port.device for port in ports]
        if port_list:
            self.combobox['values'] = port_list
            self.combobox.current(0)
        else:
            self.combobox['values'] = ["No COM Ports Found"]
            self.combobox.current(0)

    def connect_to_port(self):
        """Connect to the selected COM port."""
        selected_port = self.combobox.get()
        if "No COM Ports Found" in selected_port:
            messagebox.showerror("Error", "No available COM ports to connect.")
            return
        if self.main_app.serial_connection and self.main_app.serial_connection.is_open:
            tk.messagebox.showinfo("Info", "Already connected to a COM port.")
            return
        try:
            # selected_port.connect(selected_port, 115200)
            self.main_app.serial_connection = serial.Serial(
                port=selected_port,  # Selected COM
                baudrate=115_200,  # Baud rate
                bytesize=serial.EIGHTBITS,  # 8 data bits
                parity=serial.PARITY_NONE,  # No parity
                stopbits=serial.STOPBITS_ONE,  # 1 stop bit
                timeout=1  # Timeout w sekundach
            )
            self.status_indicator.config(bg="green")
            messagebox.showinfo("Success", f"Connected to {selected_port}!")
            self.running = True
            # self.start_read_thread()
        except Exception as e:
            self.status_indicator.config(bg="red")
            messagebox.showerror("Error", f"Failed to connect to {selected_port}.{e}")

    def load_configuration(self):
        """Open a file dialog to load a configuration JSON file."""
        file_path = filedialog.askopenfilename(
            title="Select Configuration File",
            filetypes=(("JSON Files", "*.json"), ("All Files", "*.*"))
        )

        if file_path:
            try:
                with open(file_path, 'r') as file:
                    config_data = json.load(file)
                messagebox.showinfo("Success", f"Configuration loaded successfully!\n{file_path}")
                # print(config_data)  # Debug: Print the loaded configuration to console
            except Exception as e:
                messagebox.showerror("Error", f"Failed to load configuration file.\n{e}")

        self.filters.clear()
        try:
            filters = config_data.get("filters", [])
            for filter_item in filters:
                name = filter_item.get("name", "Unknown")
                fs = str(filter_item.get("fs", "N/A"))
                fc = str(filter_item.get("fc", "N/A"))
                Q = str(filter_item.get("Q", "N/A"))
                G = str(filter_item.get("G", "N/A"))
                b_coeffs = filter_item.get("coefficients", {}).get("b", {})
                a_coeffs = filter_item.get("coefficients", {}).get("a", {})
                print(f"b_coeffs: {b_coeffs}")
                print(f"a_coeffs: {a_coeffs}")
                filter_data = [name[6:]] + [str(float_to_fixed_point(value)) for value in b_coeffs.values()] + [str(float_to_fixed_point(value)) for value in a_coeffs.values()]
                self.filters.append(filter_data)
                print("self.filters: ", self.filters)
        except Exception as e:
            messagebox.showerror("Error", f"Error processing filter list: {e}")
        print(self.filters)
        self.send_filter_data()
        # self.receive_data()
    def send_filter_data(self):
        """Send filter configuration data via UART in the specified format."""
        if not hasattr(self, 'connection') or not self.main_app.serial_connection.is_open:
            messagebox.showerror("Error", "No active UART connection.")
            return

        try:
            # Start bit
            start_bit = b'\xCC'
            self.main_app.serial_connection.write(start_bit)

            # Number of filters
            num_filters = len(self.filters)
            if num_filters > 255:
                messagebox.showerror("Error", "Too many filters to write (max 255).")
                return
            self.main_app.serial_connection.write(bytes([num_filters-1]))

            # Filter data
            for filter_item in self.filters:
                index = int(filter_item[0])  # Filter index
                coeffs = filter_item[1:]  # Coefficients

                # Write index
                self.main_app.serial_connection.write(bytes([index]))

                # Write coefficients (5 values, each 4 bytes)
                for coeff in coeffs:
                    try:
                        # Validate coefficient format
                        coeff_value = int(coeff, 16)
                        print("coef_value:", coeff_value)
                        # if coeff_value < 0 or coeff_value > 0xFFFFFFFF:
                        #     raise ValueError(f"Coefficient out of range: {coeff}")

                        # Convert to bytes and write
                        coeff_bytes = coeff_value.to_bytes(4, byteorder='big', signed=False)
                        print(f"coeff: {coeff}")
                        print(f"coeff_value: {coeff_value}")
                        print(f"coeff_bytes: {coeff_bytes}")
                        self.main_app.serial_connection.write(coeff_bytes)
                    except ValueError as ve:
                        messagebox.showerror("Error", f"Invalid coefficient: {coeff}\n{ve}")
                        return

            # Stop bit
            stop_bit = b'\xFF'
            self.main_app.serial_connection.write(stop_bit)

            messagebox.showinfo("Success", "Filter data sent successfully!")

        except Exception as e:
            messagebox.showerror("Error", f"Failed to send data: {e}")

    # def read_data(self):
    #     while self.running and self.main_app.serial_connection and self.main_app.serial_connection.is_open:
    #         try:
    #             # data = self.main_app.serial_connection.readline().decode().strip()
    #             data = self.main_app.serial_connection.readline()
    #
    #             if data:
    #                 print(f"Received: {data}")
    #                 self.received_data = data
    #                 # print(data[0])
    #                 if data[0] == 204:
    #                     self.parse_coefficients()
    #         except serial.SerialException as e:
    #             print(f"Error reading data: {e}")
    #             break
    #
    # def start_read_thread(self):
    #     self.read_thread = threading.Thread(target=self.read_data, daemon=True)
    #     self.read_thread.start()

    def close_connection(self):
        """Close the serial connection and update UI."""
        if self.main_app.serial_connection and self.main_app.serial_connection.is_open:
            self.running = False  # Stop the read thread
            if self.read_thread:
                self.read_thread.join()  # Ensure the thread stops cleanly
            try:
                self.main_app.serial_connection.close()  # Close the serial connection
                self.status_indicator.config(bg="red")  # Update the indicator
                messagebox.showinfo("Success", "Disconnected successfully!")
            except Exception as e:
                messagebox.showerror("Error", f"Failed to close the connection: {e}")
        else:
            messagebox.showwarning("Warning", "No active connection to close.")

            # self.running = False

            # messagebox.showinfo("Success", f"Di to {selected_port}!")

    def parse_coefficients(self):
        """
        Parses received UART data to extract filter coefficients.

        Args:
            received_data (bytes): The received binary data.

        Returns:
            list: A list of floating-point coefficients.
        """
        try:
            # Remove start bit (\xcc), header (\x01), and stop bit (\xff)
            data = self.received_data[2:-1]  # Correct slicing: Start from index 2, exclude the last byte
            # print(len(self.received_data))
            # print(self.received_data)
            # Ensure the length is a multiple of 4 (each coefficient is 4 bytes)
            # print(len(data))
            # print(data)
            # if len(data) % 4 != 0:
            #     raise ValueError("Received data length is not valid for 4-byte coefficients.")
            data, _ = self.remove_indexes_from_data(data, 21)
            hex_data = [hex(d) for d in data]
            # print(hex_data)
            coefficients = []

            for i in range(0, len(data), 4):

                # Extract 4 bytes for each coefficient
                coeff_bytes = data[i:i + 4]

                # Convert bytes to an unsigned integer (big-endian)
                # coeff_value = int.from_bytes(coeff_bytes, byteorder='big', signed=False)

                coeff_value = int.from_bytes(coeff_bytes, byteorder='big', signed=True)

                # Scale down by 2^30 to recover the original float
                coefficient = coeff_value / (2 ** 30)

                # Append to the list
                coefficients.append(coefficient)
            # print(coefficients)
            return coefficients

        except Exception as e:
            print(f"Error parsing coefficients: {e}")
            return []

    def remove_indexes_from_data(self, data, step):
        """
        Processes the given data by removing bytes at indexes 0, 20, 40, ...

        Args:
            data (bytes): The input data as a bytes object.
            step (int): The interval for removing indexes.

        Returns:
            list: A list of bytes after removing specific indexes.
            list: A list of removed bytes.
        """
        byte_list = list(data)  # Convert bytes to a list of integers
        removed_bytes = []

        # Identify indexes to remove
        indexes_to_remove = [i for i in range(0, len(byte_list), step)]

        # Remove items in reverse order to avoid index shifting
        for index in sorted(indexes_to_remove, reverse=True):
            removed_bytes.append(hex(byte_list.pop(index)))

        return byte_list, removed_bytes
