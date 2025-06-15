import tkinter as tk
from tkinter import Toplevel
import json
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from fixed_point import float_to_fixed_point
import json
import threading
import queue
import struct
from scipy.fftpack import fft
from utils.float_params import calc_coeffs
# np.set_printoptions(precision=10, suppress=True)
# from decimal import Decimal, getcontext
# getcontext().prec = 16

class Equalizer:
    def __init__(self, master, config, serial_connection):
        self.master = master
        # self.serial_manager = SerialManager()
        self.config = config
        self.data = {}
        self.serial_connection = serial_connection
        # Create the popup window

        self.data_queue = queue.Queue()
        self.popup = Toplevel(master)
        self.popup.title("Equalizer")
        self.popup.geometry("1000x800")
        # Create a matplotlib figure for the spectrum plot
        self.fig, self.ax = plt.subplots(figsize=(10, 5))
        self.ax.set_title("Signal Spectrum")
        self.ax.set_xlabel("Frequency (Hz)")
        self.ax.set_ylabel("Magnitude (dB)")

        # Canvas to display the plot in the Tkinter window
        self.canvas = FigureCanvasTkAgg(self.fig, master=self.popup)
        self.canvas.get_tk_widget().grid(row=0, column=0, columnspan=12, pady=20)

        # self.label = tk.Label(self.popup, text="Equalizer - Data from UART")
        # self.label.pack(pady=10)
        self.plot_data = [0] * 1024
        # self.canvas.get_tk_widget().pack(side=tk.TOP, fill=tk.BOTH, expand=True)

        self.load_config()
        self.data['filters'] = sorted(self.data['filters'], key=lambda f: f['fc'])
        # Create sliders for each filter
        self.sliders = []
        self.frame_buffer = bytearray()


        label_left = tk.Label(self.popup, text="+12 [dB]", bg="lightgrey")
        label_left.grid(row=1, column=1, padx=10, pady=(5, 10), sticky="n")

        # for filter_data in self.data['filters']:
        #     self.create_slider(filter_data, int(filter_data["name"][-1]))
        for idx, filter_data in enumerate(self.data['filters']):
            self.create_slider(filter_data, idx)

        label_right = tk.Label(self.popup, text="-24 [dB]", bg="lightgrey")
        label_right.grid(row=4, column=1, padx=10, pady=(10, 5), sticky="s")

        self.running = True
        self.running_plot = True
        threading.Thread(target=self.receive_data, daemon=True).start()
        # threading.Thread(target=self.update_plot_loop, daemon=True).start()

        # Plot update function (this can be called to update the plot)
        self.update_plot()

    def create_slider(self, filter_data, filter_index):

        slider = tk.Scale(self.popup, from_=12, to=-24, orient=tk.VERTICAL, troughcolor="lightblue", sliderlength=20, activebackground="blue", length=100, command=lambda value, idx=filter_index: self.slider_changed(idx, value))
        slider.grid(row=2, column=filter_index+1,  padx=10, pady=20)
        self.sliders.append((slider, filter_data))

        label = tk.Label(self.popup, text=f"{filter_data['fc']} [Hz]")
        label.grid(row=3, column=filter_index+1, padx=10, pady=10)
    #
    # def create_slider(self, filter_data, filter_index):
    #     slider = tk.Scale(self.popup, from_=24, to=-24, orient=tk.VERTICAL, sliderlength=20,
    #                       command=lambda value, idx=filter_index: self.slider_changed(idx, value))
    #     slider.grid(row=2, column=filter_index, padx=10, pady=20)
    #     self.sliders.append((slider, filter_data))
    #
    #     label = tk.Label(self.popup, text=f"{filter_data['fc']} [Hz]")
    #     label.grid(row=3, column=filter_index, padx=10, pady=10)

    def slider_changed(self, index, value):
        """Callback when a slider value changes."""
        print(f"Slider {index} changed to {value}")
        self.send_slider_values()

    # @staticmethod
    # def calc_coeffs(fc, A, Q=1.41, fs=96_000):
    #     # Time step and normalized angular frequency
    #     # fs = int(fs)
    #     # fc = int(fc)
    #     # A = float(A)
    #
    #     Ts = 1 / fs
    #     wc = 2 * np.pi * fc
    #     wc_unwarped = (2 / Ts) * np.tan((Ts / 2) * wc)
    #     wcT = wc_unwarped * Ts
    #     # print(f'params: fc:{fc}\tA:{A}\tQ:{Q}\tfs:{fs}')
    #     # Calculate the coefficients
    #     a0 = 4 + (2 / Q) * wcT + wcT ** 2
    #     b0 = (4 + (2 * A / Q) * wcT + wcT ** 2) / a0
    #     b1 = (2 * wcT ** 2 - 8) / a0
    #     b2 = (4 - (2 * A / Q) * wcT + wcT ** 2) / a0
    #     a1 = ((2 * wcT ** 2) - 8) / a0
    #     a2 = (4 - (2 / Q) * wcT + wcT ** 2) / a0
    #     print(f"a0:{a0:.16f}\tb2:{b2:.16f}\tb0:{b0:.16f}\ta2:{a2:.16f}")
    #     return [b0, b1, b2, a1, a2]
    #     # return coefficients
    def send_slider_values(self):
        """Send all slider coefficients over UART."""
        slider_data = []
        idx=0
        # Iterate through each sliderFdb_to

        for slider, filter_data in self.sliders:
            # print('data', filter_data)
            slider_value = slider.get()
            # print('slider val:', slider_value)
            slider_linear_value = self.db_to_linear(slider_value)
            # print(f"slider_val:{slider_value} db: {slider_linear_value}")

            # Calculate coefficients (dummy implementation for calc_coeffs; replace with your logic)
            # print(filter_data['coefficients']['a'])
            fc = filter_data['fc']

            A = slider_linear_value
            coeffs_list = calc_coeffs(fc, A, 1.41, 96_000)
            # print(f"fc: {fc}, A: {A}")

            coeffs = [float(value) for value in coeffs_list]
            print("coeffs:",coeffs_list)

            # a_coeffs = [float(value) for key, value in filter_data['coefficients']['a'].items()]
            # b_coeffs = [float(value) for key, value in filter_data['coefficients']['b'].items()]
            # all_coeffs =  b_coeffs + a_coeffs
            # print(a_coeffs)
            # print('all:', all_coeffs)
            # Replace with actual coefficient calculation logic

            # Ensure coefficients are 4-byte encoded integers
            decimal_fixed_bits = 30
            hex_coeffs = [float_to_fixed_point(val, decimal_fixed_bits) for val in coeffs_list]
            signed_hex = []
            for hex_val in hex_coeffs:
                signed_value = hex_val
                # if int(signed_value) >= (1 << 31):  # Check if it's a negative value in signed 32-bit
                #     signed_value -= (1 << 32)
                signed_hex.append(int(signed_value,16))
            hex_ = [hex(i) for i in signed_hex]
            # print("hex:", hex_)
            # hex_coeffs = [struct.pack('>I', coeff) for coeff in coeffs]

            # Create a list for this slider: [index, coeff1, coeff2, ..., coeff5]
            slider_entry = [slider_value] + signed_hex
            # print("slider entry:", slider_entry)
            slider_data.append(slider_entry)
            idx+=1

        # Build the final message
        message = bytearray()
        message.append(0x77)  # START_BIT

        # number_of_filters_idx_header = len(slider_entry)

        message.append(idx-1)
        i=0
        for slider_entry in slider_data:
            # if slider_entry[0] < 0:
            #     new_val = slider_entry[0].to_bytes(2, byteorder='big', signed=True)
            #     message.append(new_val)  # SLIDER_IDX
            # else:
            #     print(f"slider entry[0]: {slider_entry[0]}")
            message.append(i)  # SLIDER_IDX
            # print(i)
            for coeff in slider_entry[1:]:
                message.extend(coeff.to_bytes(4, byteorder='big'))  # Append coefficients (4 bytes each)
            i+=1

        message.append(0xFF)  # STOP_BIT

        # Send the message over UART
        try:
            if self.serial_connection and self.serial_connection.is_open:
                self.serial_connection.write(message)
                print(f"Sent message: {message.hex()}")
            else:
                print("UART connection not open.")
        except Exception as e:
            print(f"Error sending slider values: {e}")

    def db_to_linear(self, value_db):
        return 10.0 ** (value_db / 20.0)

    def update_plot(self):
        """Update the plot to display the most recently received frame."""
        # if self.running and self.plot_data:
        self.ax.clear()
        spectrum = fft(self.plot_data)
        freq = np.fft.fftfreq(len(spectrum))
        self.ax.plot(freq[2:len(freq)//2], np.abs(spectrum)[2:len(freq)//2], label="Current Frame Data")
        # self.ax.plot(self.plot_data, label="Current Frame Data")
        self.ax.set_title("Signal Spectrum")
        self.ax.set_xlabel("Sample Index")
        self.ax.set_ylabel("Magnitude")
        self.ax.legend()
        self.canvas.draw()



# Load configuration from JSON file
    def load_config(self):
        with open(self.config, 'r') as f:
            data = json.load(f)
        self.data = data

    def receive_data(self):
        # idx=0
        """Continuously receive data from the serial connection."""
        syncing = True  # Indicates whether we're waiting for the start of a frame
        while self.running and self.serial_connection and self.serial_connection.is_open:
            try:
                byte = self.serial_connection.read(1)  # Read one byte at a time
                if byte:
                    # Convert byte to integer
                    byte = byte[0]
                    # print(f"{byte:#04x}")
                    if syncing:
                        # print("dupa2")
                        # Wait for the start of a frame (0xAA)
                        if byte == 170:     # 0xAA 170 / FPGA: 0x77 =  119
                            # print("dupa3")
                            syncing = False  # Start recording frame data
                            self.frame_buffer = bytearray([byte])  # Initialize the buffer with 0xAA
                    else:
                        # Add byte to the frame buffer
                        self.frame_buffer.append(byte)
                        # print("dupa4")
                        # Check if we have received the full frame
                        if len(self.frame_buffer) >= 1024 * 3 + 2:  # Start byte + 1024 samples + End byte
                        # if len(self.frame_buffer) >= 234:
                            # print("dupa5")
                            if self.frame_buffer[-1] == 0x55:  # Valid end of frame 0xFF/ 0x55 -> arduino
                                self.process_frame(self.frame_buffer)  # Process the complete frame
                            else:
                                print("Invalid end of frame detected, discarding data.")

                            # Reset for the next frame
                            syncing = True
                            self.frame_buffer.clear()
                else:
                    continue

            except Exception as e:
                print(f"Error receiving data: {e}")

    def process_frame(self, frame):
        """Process the received frame."""
        if len(frame) != 1024 * 3 + 2:
        # if len(frame) != 234:

            print("Invalid frame length!")
            return

        try:
            # Extract and convert the 1024 samples (3 bytes each)
            samples = []
            for i in range(1, len(frame) - 1, 3):  # Skip start (0xAA) and end (0x55) bytes
                sample = struct.unpack('>i', b'\x00' + frame[i:i + 3])[0]  # Convert 3 bytes to signed int
                samples.append(sample)
            # print(samples)
            self.plot_data = samples
            self.update_plot()

        except Exception as e:
            print(f"Error processing frame: {e}")

    def close(self):
        self.running = False
        self.popup.destroy()



    # def update_plot_loop(self):
    #     """Loop to update the plot asynchronously."""
    #     while self.running:
    #         try:
    #             # Get the latest frame from the queue
    #             if not self.data_queue.empty():
    #                 self.plot_data = self.data_queue.get()
    #                 self.update_plot()
    #             # else:
    #                 time.sleep(0.01)  # Small delay to avoid CPU overuse
    #         except Exception as e:
    #             print(f"Error in plotting loop: {e}")



    # def send_slider_values(self):
    #     """Send all slider values over UART."""
    #     slider_values = [slider[0].get() for slider in self.sliders]  # Collect values
    #     print(f"Sending slider values: {slider_values}")
    #
    #     if self.serial_connection and self.serial_connection.is_open:
    #         try:
    #             # Convert values to a comma-separated string and send over UART
    #             values_string = ','.join(map(str, slider_values))
    #             self.serial_connection.write(values_string.encode('utf-8'))
    #             self.serial_connection.write(b'\n')  # Add newline as a delimiter
    #             print("Slider values sent.")
    #         except Exception as e:
    #             print(f"Error sending slider values: {e}")
    #     else:
    #         print("UART connection not open.")
