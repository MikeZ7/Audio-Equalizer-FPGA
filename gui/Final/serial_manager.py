import threading
import serial


class SerialManager:
    """Singleton class to manage a single COM port connection."""
    _instance = None

    def __new__(cls, *args, **kwargs):
        if not cls._instance:
            cls._instance = super(SerialManager, cls).__new__(cls)
            cls._instance.connection = None
            cls._instance.lock = threading.Lock()
        return cls._instance

    def connect(self, port, baudrate):
        try:
            self.connection = serial.Serial(
                port=port,
                baudrate=baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=1
            )
            print(f"Connected to {port}")
        except Exception as e:
            raise ConnectionError(f"Failed to connect to {port}: {e}")

    def disconnect(self):
        if self.connection and self.connection.is_open:
            self.connection.close()
            self.connection = None

    def is_connected(self):
        """Check if the serial connection is active."""
        return self.connection is not None and self.connection.is_open

    def send_data(self, data):
        if self.connection and self.connection.is_open:
            with self.lock:
                self.connection.write(data)
        else:
            raise ConnectionError("No active UART connection <send data>.")

    def receive_data(self):
        if self.connection and self.connection.is_open:
            with self.lock:
                return self.connection.read_all()
        else:
            raise ConnectionError("No active UART connection. <receive data>")
