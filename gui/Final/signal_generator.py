import tkinter as tk
from tkinter import ttk, filedialog
import matplotlib.pyplot as plt
import scipy.io.wavfile
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import numpy as np
import wave
import struct
from scipy.fftpack import fft
import scipy
from scipy.io.wavfile import read, write

class SignalGenerator:
    def __init__(self, root):
        self.window = tk.Toplevel(root)
        self.window.title("Signal Generator")
        self.window.geometry("800x600")

        self.combined_signal = None
        self.sampling_rate = 44100

        # Left configuration panel
        self.config_frame = tk.Frame(self.window, width=200, bg="lightgray")
        self.config_frame.pack(side=tk.LEFT, fill=tk.Y)

        # Signal type dropdown
        self.signal_type_var = tk.StringVar()
        tk.Label(self.config_frame, text="Signal", bg="lightgray", font=("Arial", 10)).pack(pady=10)
        self.signal_dropdown = ttk.Combobox(self.config_frame, textvariable=self.signal_type_var, state="readonly")
        self.signal_dropdown["values"] = ("Sine", "Triangle", "Square", "Sawtooth", "White noise")
        self.signal_dropdown.pack(pady=5, padx=10)
        self.signal_dropdown.set("Sine")

        # Amplitude entry
        tk.Label(self.config_frame, text="Amplitude", bg="lightgray", font=("Arial", 10)).pack(pady=10)
        self.amplitude_entry = tk.Entry(self.config_frame)
        self.amplitude_entry.pack(pady=5, padx=10)
        self.amplitude_entry.insert(0, "1")

        # Frequency entry
        tk.Label(self.config_frame, text="Frequency [Hz]", bg="lightgray", font=("Arial", 10)).pack(pady=10)
        self.frequency_entry = tk.Entry(self.config_frame)
        self.frequency_entry.pack(pady=5, padx=10)
        self.frequency_entry.insert(0, "100")

        # Sampling rate entry
        tk.Label(self.config_frame, text="Sampling frequency [Hz]", bg="lightgray", font=("Arial", 10)).pack(pady=10)
        self.sampling_rate_entry = tk.Entry(self.config_frame)
        self.sampling_rate_entry.pack(pady=5, padx=10)
        self.sampling_rate_entry.insert(0, "44100")

        # Duration entry
        tk.Label(self.config_frame, text="Duration time [s]", bg="lightgray", font=("Arial", 10)).pack(pady=10)
        self.duration_entry = tk.Entry(self.config_frame)
        self.duration_entry.pack(pady=5, padx=10)
        self.duration_entry.insert(0, "2")

        # Add signal button
        tk.Button(self.config_frame, text="Add Signal", bg="lightblue", command=self.add_signal).pack(pady=20, padx=10)

        # Load and save buttons
        tk.Button(self.config_frame, text="Save to WAV", bg="lightgreen", command=self.save_to_wav).pack(pady=5, padx=10)
        tk.Button(self.config_frame, text="Load WAV", bg="lightgreen", command=self.load_wav_file).pack(pady=5, padx=10)

        # Reset button
        tk.Button(self.config_frame, text="Reset signal", bg="grey", command=self.reset_signal).pack(pady=5, padx=10)
        # Right plot area
        self.plot_frame = tk.Frame(self.window, bg="white")
        self.plot_frame.pack(side=tk.RIGHT, fill=tk.BOTH, expand=True)

        # Time domain plot
        self.fig, (self.time_ax, self.freq_ax) = plt.subplots(2, 1, figsize=(5, 4), gridspec_kw={'hspace': 0.5})
        self.time_canvas = FigureCanvasTkAgg(self.fig, self.plot_frame)
        self.time_canvas.get_tk_widget().pack(fill=tk.BOTH, expand=True)

        self.time_ax.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
        self.freq_ax.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)

    def generate_signal(self, signal_type, amplitude, frequency, sampling_rate, duration):
        t = np.linspace(0, duration, int(sampling_rate * duration), endpoint=False)
        if signal_type == "Sine":
            signal = amplitude * np.sin(2 * np.pi * frequency * t)
        elif signal_type == "Triangle":
            signal = amplitude * (2 * np.abs(2 * (frequency * t % 1) - 1) - 1)
        elif signal_type == "Square":
            signal = amplitude * np.sign(np.sin(2 * np.pi * frequency * t))
        elif signal_type == "Sawtooth":
            signal = amplitude * (2 * (frequency * t % 1) - 1)
        elif signal_type == "White Noise":
            signal = amplitude * np.random.normal(0, 1, len(t))
        # elif signal_type == "Biały szum":
        #     signal = amplitude * np.random.normal(0, 1, len(t))
        else:
            signal = np.zeros_like(t)
        return t, signal

    def add_signal(self):
        signal_type = self.signal_type_var.get()
        amplitude = float(self.amplitude_entry.get())
        frequency = float(self.frequency_entry.get())
        sampling_rate = int(self.sampling_rate_entry.get())
        duration = float(self.duration_entry.get())
        t, new_signal = self.generate_signal(signal_type, amplitude, frequency, sampling_rate, duration)

        if self.combined_signal is None:
            self.combined_signal = new_signal
        else:
            self.combined_signal = np.pad(self.combined_signal, (0, len(new_signal) - len(self.combined_signal)), mode='constant')
            new_signal = np.pad(new_signal, (0, len(self.combined_signal) - len(new_signal)), mode='constant')
            self.combined_signal += new_signal

        self.update_plots(self.combined_signal, sampling_rate)

    def update_plots(self, signal, sampling_rate):
        # Time domain plot

        self.time_ax.clear()
        self.time_ax.plot(np.linspace(0, len(signal) / sampling_rate, len(signal)), signal)
        self.time_ax.set_title("Signal in time domain")
        self.time_ax.set_xlabel("Time [s]")
        self.time_ax.set_ylabel("Amplitude")

        # Frequency domain plot
        self.freq_ax.clear()
        freq = fft(signal)
        self.freq_ax.plot(np.fft.fftfreq(len(freq), 1 / sampling_rate)[:len(freq) // 2],
                          np.abs(freq)[:len(freq) // 2])
        self.freq_ax.set_title("Signal spectrum")
        self.freq_ax.set_xlabel("Frequency [Hz]")
        self.freq_ax.set_ylabel("Amplitude")
        self.time_ax.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
        self.freq_ax.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
        self.time_canvas.draw()

    def reset_signal(self):
        self.combined_signal = None
        self.time_ax.clear()
        self.freq_ax.clear()
        self.time_ax.set_title("Signal in time domain")
        self.time_ax.set_xlabel("Time [s]")
        self.time_ax.set_ylabel("Amplitude")
        self.freq_ax.set_title("Signal spectrum")
        self.freq_ax.set_xlabel("Frequency [Hz]")
        self.freq_ax.set_ylabel("Amplitude")
        self.time_ax.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
        self.freq_ax.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
        self.time_canvas.draw()

    def load_wav_file(self):
        file_path = filedialog.askopenfilename(filetypes=[("WAV files", "*.wav")])
        if file_path:
            # with wave.open(file_path, 'rb') as wav_file:
            Fs, data = read(file_path)
            self.sampling_rate = Fs
            data = [d/(2**15-1) for d in data]
            # n_frames = wav_file.getnframes()
            # self.sampling_rate = wav_file.getframerate()
            # signal = np.array(struct.unpack("%ih" % n_frames, wav_file.readframes(n_frames)))
            self.combined_signal = data
            self.update_plots(data, self.sampling_rate)

    def save_to_wav(self):
        file_path = filedialog.asksaveasfilename(defaultextension=".wav", filetypes=[("WAV files", "*.wav")])
        if file_path:
            # with open(file_path, 'w'):
            #     audio_data = np.int16(self.combined_signal)
            #     scipy.io.wavfile.write(file_path, self.sampling_rate, audio_data)
            audio_data = (self.combined_signal * (2**15-1)).astype("<h")
            with wave.open(file_path, 'w') as wav_file:
                wav_file.setnchannels(1)
                wav_file.setsampwidth(2)
                wav_file.setframerate(self.sampling_rate)
                wav_file.writeframes(audio_data.tobytes())
