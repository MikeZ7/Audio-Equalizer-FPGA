import tkinter as tk
from tkinter import Menu, messagebox, Listbox
import matplotlib.pyplot as plt
# from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import numpy as np
from scipy.signal import freqz, tf2zpk
from decimal import Decimal, getcontext
from fixed_point import float_to_fixed_point
import json
from utils.parsing_filter_coeffs_from_str import parse_str_to_coeffs
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg, NavigationToolbar2Tk

# Set the precision to 16 decimal places
getcontext().prec = 16

class FilterDesigner:
    def __init__(self, parent):
        self.parent = parent
        self.window = tk.Toplevel(parent)
        self.window.title("Filter Designer")
        self.window.geometry("1000x550")
        self.create_menu()
        self.create_widgets()
        # filter params
        self.fs = 0
        self.fc = 0
        self.A = 0
        self.Q = 0
        self.b0 = 0
        self.b1 = 0
        self.b2 = 0
        self.a1 = 0
        self.a2 = 0
        self.b_coefficients = []  # Współczynniki b filtrów
        self.a_coefficients = []  # Współczynniki a filtrów
        self.filter_list = []

    def create_menu(self):
        menu_bar = Menu(self.window)

        file_menu = Menu(menu_bar, tearoff=0)
        file_menu.add_command(label="Save Configuration", command=self.save_configuration)
        file_menu.add_command(label="Load Configuration", command=lambda: messagebox.showinfo("Load", "Configuration Loaded"))
        file_menu.add_separator()
        file_menu.add_command(label="Exit", command=self.window.destroy)
        menu_bar.add_cascade(label="File", menu=file_menu)

        menu_bar.add_command(label="About", command=self.about_dialog)
        menu_bar.add_command(label="Help", command=self.help_dialog)

        self.window.config(menu=menu_bar)

    def create_widgets(self):
        # Left column frame
        frame_left = tk.Frame(self.window, bg="lightgrey")
        frame_left.grid(row=0, column=0, rowspan=2, sticky="nsew", padx=20, pady=20)

        # Settings section
        tk.Label(frame_left, text="Sampling Rate",bg="lightgray").grid(row=0, column=0, sticky="w")
        self.entry_sampling_rate = tk.Entry(frame_left)
        self.entry_sampling_rate.grid(row=0, column=1)
        self.entry_sampling_rate.insert(0, "44100")

        tk.Label(frame_left, text="Center Frequency",bg="lightgray").grid(row=1, column=0, sticky="w")
        self.entry_center_freq = tk.Entry(frame_left)
        self.entry_center_freq.grid(row=1, column=1)
        self.entry_center_freq.insert(0, "5000")

        tk.Label(frame_left, text="Quality Factor",bg="lightgray").grid(row=2, column=0, sticky="w")
        self.entry_quality_factor = tk.Entry(frame_left)
        self.entry_quality_factor.grid(row=2, column=1)
        self.entry_quality_factor.insert(0, "1.41")

        tk.Label(frame_left, text="Gain",bg="lightgray").grid(row=3, column=0, sticky="w")
        self.entry_gain = tk.Entry(frame_left)
        self.entry_gain.grid(row=3, column=1)
        self.entry_gain.insert(0, "2")

        btn_create = tk.Button(frame_left, text="Create", bg="lightgreen", command=self.calculate_coefficients)
        btn_create.grid(row=4, column=0, columnspan=2, pady=10)

        # Filter list section
        tk.Label(frame_left, text="Filter List",bg="lightgray").grid(row=5, column=0, columnspan=2, sticky="w")
        self.filter_listbox = Listbox(frame_left, height=12, width=40)
        self.filter_listbox.grid(row=6, column=0, columnspan=2, pady=5)

        btn_add_filter = tk.Button(frame_left, text="Add Filter",bg="lightblue", command=self.add_filter)
        btn_add_filter.grid(row=7, column=0, pady=5)

        btn_delete_filter = tk.Button(frame_left, text="Delete Filter",bg="lightblue", command=self.delete_filter)
        btn_delete_filter.grid(row=7, column=1, pady=5)

        btn_reset = tk.Button(frame_left, text="Reset", bg="grey", command=self.reset_all)
        btn_reset.grid(row=8, column=0, columnspan=2, pady=10)

        # Coefficients and save section
        tk.Label(frame_left, text="Filter Coefficients",bg="lightgray").grid(row=8, column=0, columnspan=2, sticky="w")
        self.text_output = tk.Text(frame_left, height=12, width=30)
        self.text_output.grid(row=9, column=0, columnspan=2, pady=5)

        btn_save = tk.Button(frame_left, text="Save", bg="lightgreen", command=self.save_configuration)
        btn_save.grid(row=10, column=0, columnspan=2, pady=10)

        # Graphs frame
        # Left column frame
        # frame_left = tk.Frame(self.window)
        # frame_left.grid(row=0, column=0, rowspan=2, sticky="nsew", padx=10, pady=10)

        # Settings section (pozostałe elementy GUI w lewym panelu)
        # [Kod do tworzenia pól i przycisków konfiguracji filtrów pozostaje bez zmian]

        # Graphs frame (dla wykresów)
        frame_graphs = tk.Frame(self.window, bg="white")
        frame_graphs.grid(row=0, column=1, columnspan=2, sticky="nsew", padx=10, pady=10)

        # Wykres zer i biegunów
        poles_zeros_fig, self.poles_zeros_ax = plt.subplots(figsize=(6, 4))
        self.poles_zeros_ax.set_title("Poles and Zeros")
        self.poles_zeros_ax.set_xlabel("Re(z)")
        self.poles_zeros_ax.set_ylabel("Im(z)")
        self.poles_canvas = FigureCanvasTkAgg(poles_zeros_fig, frame_graphs)
        self.poles_zeros_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.poles_canvas.get_tk_widget().grid(row=0, column=1, sticky="nsew", padx=5, pady=5)

        # Wykres odpowiedzi częstotliwościowej aktualnego filtra
        freq_response_fig, self.freq_response_ax = plt.subplots(figsize=(6, 4))
        self.freq_response_ax.set_xlabel("Frequency [Hz]")
        self.freq_response_ax.set_ylabel("Magnitude [dB]")
        self.freq_response_ax.set_title("Current Filter Frequency Response")
        self.freq_response_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.freq_canvas = FigureCanvasTkAgg(freq_response_fig, frame_graphs)
        self.freq_canvas.get_tk_widget().grid(row=0, column=0, sticky="nsew", padx=5, pady=5)

        # Wykres połączonej odpowiedzi częstotliwościowej
        combined_response_fig, self.combined_response_ax = plt.subplots(figsize=(12, 4))
        self.combined_response_ax.set_title("Combined Frequency Response")
        self.combined_response_ax.set_xlabel("Frequency [Hz]")
        self.combined_response_ax.set_ylabel("Magnitude [dB]")
        self.combined_response_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.combined_canvas = FigureCanvasTkAgg(combined_response_fig, frame_graphs)
        self.combined_canvas.get_tk_widget().grid(row=1, column=0, columnspan=2, sticky="nsew", padx=5, pady=5)

        # Konfiguracja proporcji kolumn i wierszy
        frame_graphs.grid_rowconfigure(0, weight=1)
        frame_graphs.grid_rowconfigure(1, weight=1)
        frame_graphs.grid_columnconfigure(0, weight=1)
        frame_graphs.grid_columnconfigure(1, weight=1)

    def plot_filter_response(self, num, den):

        w, h = freqz(num, den, worN=8000)  # linspace(0, fs/2,N)

        self.freq_response_ax.clear()
        self.poles_zeros_ax.clear()

        self.freq_response_ax.plot(w / np.pi, 20 * np.log10(np.abs(h)), 'b')

        # Phase response
        # self.freq_response_ax.plot(w / np.pi, np.angle(h), 'r')

        # Zeros and Poles
        z, p, k = tf2zpk(num, den)
        # Unit circle
        theta = np.linspace(0, 2 * np.pi, 100)
        self.poles_zeros_ax.plot(np.cos(theta), np.sin(theta), 'k--', label='Unit Circle')  # Unit circle
        # Zeros and poles
        self.poles_zeros_ax.scatter(np.real(z), np.imag(z), marker='o', label='Zeros', color='red')
        self.poles_zeros_ax.scatter(np.real(p), np.imag(p), marker='x', label='Poles', color='blue')
        self.poles_zeros_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.freq_response_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.poles_zeros_ax.legend()
        self.poles_zeros_ax.legend(loc="lower right", fontsize=8, bbox_to_anchor=(1, 0))
        print(p)
        print(np.abs(p))
        tolerance = 1e-2
        if np.all(np.abs(p) < 1-tolerance):
            stability_text = "Stable"
            color = "green"
        elif np.all(np.isclose(np.abs(p), 1 - tolerance, atol=tolerance)):
            stability_text = "Conditionallu stable"
            color = "orange"
        else:
            stability_text = "Unstable"
            color = "red"

            # Add stability indicator text
        self.poles_zeros_ax.text(0.02, 0.95, f"Filter is {stability_text}", color=color, fontsize=10,
                     transform=self.poles_zeros_ax.transAxes, verticalalignment='top')
        self.freq_response_ax.set_xlabel("Frequency [Hz]")
        self.freq_response_ax.set_ylabel("Magnitude [dB]")
        self.freq_response_ax.set_title("Current Filter Frequency Response")
        self.poles_zeros_ax.set_title("Poles and Zeros")
        self.poles_zeros_ax.set_xlabel("Re(z)")
        self.poles_zeros_ax.set_ylabel("Im(z)")
        self.freq_canvas.draw()
        self.poles_canvas.draw()

    def plot_combined_frequency_response(self):
        # Pobierz współczynniki filtrów z listy
        filters = []
        for idx in range(self.filter_listbox.size()):
            # Tutaj pobierz parametry każdego filtra
            # np. współczynniki b i a przechowywane w self.b_coefficients i self.a_coefficients
            filters.append((self.b_coefficients[idx], self.a_coefficients[idx]))

        # Początkowa wartość to neutralny filtr
        # w = np.linspace(0, np.pi, 8000)
        zeros = [0 for _ in range(8000)]
        combined_response = np.ones_like(zeros, dtype=complex)


        for b, a in filters:
            w, h = freqz(b, a, worN=8000)
            combined_response *= h  # Łączymy odpowiedzi w kaskadzie

        # Obliczenie wartości w dB
        magnitude_response = 20 * np.log10(np.abs(combined_response))

        # Aktualizacja wykresu
        self.combined_response_ax.clear()
        self.combined_response_ax.plot(w / np.pi, magnitude_response, 'r', label="Combined Response")
        self.combined_response_ax.legend()
        self.combined_response_ax.set_title("Combined Frequency Response")
        self.combined_response_ax.set_xlabel("Frequency [Hz]")
        self.combined_response_ax.set_ylabel("Magnitude [dB]")
        self.combined_response_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.combined_canvas.draw()

    def calculate_coefficients(self):

        fs = 96_000
        Ts = 1 / fs
        fc = int(self.entry_center_freq.get())
        Q = float(self.entry_quality_factor.get())
        A = float(self.entry_gain.get())

        wc = 2 * np.pi * fc
        wc_unwarped = (2 / Ts) * np.tan((Ts / 2) * wc)
        wcT = wc_unwarped * Ts

        a0 = 4 + (2 / Q) * wcT + wcT ** 2
        b0 = (4 + (2 * A / Q) * wcT + wcT ** 2) / a0
        b1 = (2 * wcT ** 2 - 8) / a0
        b2 = (4 - (2 * A / Q) * wcT + wcT ** 2) / a0
        a1 = ((2 * wcT ** 2) - 8) / a0
        a2 = (4 - (2 / Q) * wcT + wcT ** 2) / a0

        self.b0 = b0
        self.b1 = b1
        self.b2 = b2
        self.a1 = a1
        self.a2 = a2

        # coefficients = {
        #     "b0": b0,
        #     "b1": b1,
        #     "b2": b2,
        #     "a1": a1,
        #     "a2": a2,
        # }
        # na potrzeby kodu
        coefficients = {
            "a0": b0,
            "a1": b1,
            "a2": b2,
            "b1": a1,
            "b2": a2,
        }
        decimal_fixed_bits = 30
        unsigned_hex_coeffs = [float_to_fixed_point(val, decimal_fixed_bits) for key, val in coefficients.items()]

        self.text_output.delete("1.0", tk.END)
        self.text_output.insert(tk.END, f"--Filter Coefficients fs:{fs}, fc:{fc}, A:{A}, Q:{Q}:\n\r")
        idx = 0
        for key, value in coefficients.items():
            self.text_output.insert(tk.END, f"{key} => {round(value*2**30)},\n\r")
            # self.text_output.insert(tk.END, f"//{key}:{value:.16f}\n\rparameter signed {key} = {decimal_fixed_bits+2}'sh{str(unsigned_hex_coeffs[idx])};\n\r")
            # self.text_output.insert(tk.END, f"{key}: {value:.16f} : \n\rparameter signed key {decimal_fixed_bits+2}'sh{str(unsigned_hex_coeffs[idx])}\n")
            idx += 1

        self.plot_filter_response([b0,b1,b2], [a0/a0,a1,a2])

    def add_filter(self):
        fs = int(self.entry_sampling_rate.get())
        fc = int(self.entry_center_freq.get())
        Q = float(self.entry_quality_factor.get())
        A = float(self.entry_gain.get())
        self.filter_list.append(f"Filter {len(self.filter_listbox.get(0, tk.END)) + 1}: fs={fs}, fc={fc}, Q={Q}, A={A}")
        self.filter_listbox.insert(tk.END,
        f"Filter {len(self.filter_listbox.get(0, tk.END)) + 1}: fs={fs}, fc={fc}, Q={Q}, A={A}")
        self.b_coefficients.append([self.b0, self.b1, self.b2])
        self.a_coefficients.append([1, self.a1, self.a2])
        self.plot_combined_frequency_response()  # Aktualizacja wykresu

    def delete_filter(self):
        selected = self.filter_listbox.curselection()
        if selected:
            self.filter_listbox.delete(selected)

    def save_configuration(self):
        if not self.filter_listbox.size():
            messagebox.showerror("Error", "No filters to save!")
            return

        # Build the filter bank configuration
        filter_bank = {"filters": []}

        for idx in range(self.filter_listbox.size()):
            filter_name = f"filter{idx}"
            coeffs = parse_str_to_coeffs(self.filter_list[idx])
            print(coeffs)
            fs = coeffs["fs"] # Sampling frequency
            fc = coeffs["fc"]  # Center frequency
            Q = coeffs["Q"]  # Quality factor
            G = coeffs["A"]  # Gain
            coefficients = {
                "b": {
                    "b0": self.b_coefficients[idx][0],
                    "b1": self.b_coefficients[idx][1],
                    "b2": self.b_coefficients[idx][2]
                },
                "a": {
                    "a1": self.a_coefficients[idx][1],
                    "a2": self.a_coefficients[idx][2]
                }
            }

            # Add filter configuration to the filter bank
            filter_bank["filters"].append({
                "name": filter_name,
                "fs": fs,
                "fc": fc,
                "Q": Q,
                "G": G,
                "coefficients": coefficients
            })

        # Save to a JSON file
        try:
            with open("filter_configuration.json", "w") as json_file:
                json.dump(filter_bank, json_file, indent=2)
            messagebox.showinfo("Save", "Filter configuration saved to 'filter_configuration.json'.")
        except Exception as e:
            messagebox.showerror("Error", f"Failed to save configuration: {e}")

    def reset_all(self):
        """Clears all graphs, resets variables, and restores default values."""
        # Reset filter parameters and coefficients
        self.fs = 0
        self.fc = 0
        self.A = 0
        self.Q = 0
        self.b0 = 0
        self.b1 = 0
        self.b2 = 0
        self.a1 = 0
        self.a2 = 0
        self.b_coefficients = []
        self.a_coefficients = []
        self.filter_list = []

        # Clear filter listbox
        self.filter_listbox.delete(0, tk.END)

        # Clear text output
        self.text_output.delete("1.0", tk.END)

        # Reset input fields
        self.entry_sampling_rate.delete(0, tk.END)
        self.entry_sampling_rate.insert(0, "44100")
        self.entry_center_freq.delete(0, tk.END)
        self.entry_center_freq.insert(0, "500")
        self.entry_quality_factor.delete(0, tk.END)
        self.entry_quality_factor.insert(0, "20")
        self.entry_gain.delete(0, tk.END)
        self.entry_gain.insert(0, "2")

        # Clear graphs
        self.poles_zeros_ax.clear()
        self.poles_zeros_ax.set_title("Poles and Zeros")
        self.poles_zeros_ax.set_xlabel("Re(z)")
        self.poles_zeros_ax.set_ylabel("Im(z)")
        self.freq_response_ax.clear()
        self.freq_response_ax.set_title("Current Filter Frequency Response")
        self.freq_response_ax.set_xlabel("Frequency [Hz]")
        self.freq_response_ax.set_ylabel("Magnitude [dB]")
        self.combined_response_ax.clear()
        self.combined_response_ax.set_title("Combined Frequency Response")
        self.combined_response_ax.set_xlabel("Frequency [Hz]")
        self.combined_response_ax.set_ylabel("Magnitude [dB]")
        self.poles_zeros_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.freq_response_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        self.combined_response_ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.7)
        # Redraw graphs
        self.poles_canvas.draw()
        self.freq_canvas.draw()
        self.combined_canvas.draw()

    def about_dialog(self):
        messagebox.showinfo("About", "Filter Design Tool\nVersion 1.0")

    def help_dialog(self):
        messagebox.showinfo("Help", "Instructions for using the Filter Design Tool.")
