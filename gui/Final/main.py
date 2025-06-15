import tkinter as tk
from filter_designer import FilterDesigner
from equalizer import Equalizer
from signal_generator import SignalGenerator
from hardware_manager import HardwareManager
import serial

class MainApplication:
    def __init__(self, root):
        self.root = root
        self.root.title("Audio Platform Application by MZ")
        self.root.geometry("400x300")
        self.config = "eq_configuration.json"
        self.root.configure(bg="lightgrey")
        self.label = tk.Label(root, text="Audio Platform", font=("Arial", 16), bg="lightgrey")
        self.serial_connection = None
        self.label.pack(pady=20)

        self.btn_open_signal_generator = tk.Button(root, text="Signal Generator", bg="lightblue", command=self.open_signal_generator, width=20)
        self.btn_open_signal_generator.pack(pady=10)

        self.btn_open_designer = tk.Button(root, text="Biquad Designer",bg="lightblue", command=self.open_filter_designer, width=20)
        self.btn_open_designer.pack(pady=10)

        self.btn_open_equalizer = tk.Button(root, text="Equalizer",bg="lightblue", command=self.open_equalizer, width=20)
        self.btn_open_equalizer.pack(pady=10)

        self.btn_hardware_manager = tk.Button(root, text="Hardware Manager",bg="lightblue", command=self.open_hardware_manager, width=20)
        self.btn_hardware_manager.pack(pady=10)

    def open_filter_designer(self):
        FilterDesigner(self.root)

    def open_equalizer(self):
        # Open the equalizer popup window
        Equalizer(self.root, self.config, self.serial_connection)

    def open_signal_generator(self):
        SignalGenerator(self.root)

    def open_hardware_manager(self):
        HardwareManager(self.root, self)

    def set_serial_connection(self, connection):
        """Set the shared serial connection."""
        self.serial_connection = connection

    def close_serial_connection(self):
        """Close the shared serial connection."""
        if self.serial_connection and self.serial_connection.is_open:
            self.serial_connection.close()
            self.serial_connection = None


if __name__ == "__main__":
    root = tk.Tk()
    app = MainApplication(root)
    root.mainloop()
