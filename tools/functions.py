import json
from pathlib import Path
from typing import Union, Dict, Any, Sequence, Tuple
from pynq import MMIO, allocate
import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import resample_poly, sosfilt
from matplotlib.ticker import MultipleLocator, FuncFormatter
import time
import ipywidgets as w
from IPython.display import display

# GLOBAL DEFINITIONS
# ------------------------------------------------------------------
# CONSTANTS / UTILS
fs = 48_000
Ts = 1 / fs
n_sections = 8                 # filter count in cascade
json_path  = "filters.json"    # output file

REG_OFFSET = {           # coefficient → index 0-4
    "b0": 0,   # reg  0–7
    "b1": 1,   # reg  8–15
    "b2": 2,   # reg 16–23
    "a1": 3,   # reg 24–31
    "a2": 4    # reg 32–39
}
# --- MIMIO OBJECT-----------------------------------------------------
_MMIO = None
# --- DMA Capture PARAMETERS-----------------------------------------------------
NCYCLES = 256        # how many frames to capture
NFRAME  = 1024       # words 64-bit for frame  (must be = G_SAMPLES_PER_FRAME)
BYTES_PER_WORD = 8   # 64-bit - capturing 2 audio channels each 32-bit

def load_mmio(mmio_obj: MMIO):
    """Pass MMIO object to this module."""
    global _MMIO
    _MMIO = mmio_obj

def float_to_fixed_point(value: float, decimal_bits: int = 30) -> int:
    scaling_factor = 2 ** decimal_bits
    signed_32 = int(round(value * scaling_factor)) & 0xFFFFFFFF
    return signed_32       

def load_filters_from_json(json_path: str,
                      mmio: MMIO,
                      enable_eq: bool = True,
                      base_addr: int = 0x00) -> None:
    
    """reads filter_configuration.json → 41 registers AXI (0-40)."""

    filters = json.loads(Path(json_path).read_text())["filters"]
    if len(filters) > 8:
        raise ValueError("There is max 8 filters, found: %d" % len(filters))

    for section, f in enumerate(filters):
        coeffs = {
            "b0": f["coefficients"]["b"]["b0"],
            "b1": f["coefficients"]["b"]["b1"],
            "b2": f["coefficients"]["b"]["b2"],
            "a1": f["coefficients"]["a"]["a1"],
            "a2": f["coefficients"]["a"]["a2"],
        }
        for name, val in coeffs.items():
            reg_idx = section + 8 * REG_OFFSET[name]   # 0-39
            addr    = base_addr + reg_idx * 4
            mmio.write(addr, float_to_fixed_point(val))

    # register 40 – control_signal
    mmio.write(base_addr + 40 * 4, 0x01 if enable_eq else 0x00)

def init_mmio(ip_name: str, overlay) -> MMIO:
    """Initialize MMIO for the given IP name."""
    # ip_name = "AudioSystem_AXI_wrap_0"
    ip_info = overlay.ip_dict[ip_name]
    mmio = MMIO(ip_info["phys_addr"], 0xA4)
    return mmio

def bypass_mode(mmio: MMIO) -> None:
    """Set bypass mode for the audio system."""
    # register 40 – control_signal
    mmio.write(0x00 + 40 * 4, 0x00)

def filter_mode(mmio: MMIO) -> None:
    """Set filter mode for the audio system."""
    # register 40 – control_signal
    mmio.write(0x00 + 40 * 4, 0x01)

def init_dma(overlay):
    """Initialize two DMA channels for the given Overlay."""
    dma_in = overlay.axi_dma_0
    dma_out = overlay.axi_dma_1
    return dma_in, dma_out

def capture_audio_from_channels(dma_in, dma_out, ncycles: int = NCYCLES, nframe: int = NFRAME) -> np.ndarray:
    """Capture audio data from the DMA."""
    # Allocate buffer for audio data
    big_buf_in  = allocate((ncycles * nframe,),  dtype=np.uint64)
    big_buf_out = allocate((ncycles * nframe,),  dtype=np.uint64)

    # --- CAPTURE ----------------------------------------------
    for k in range(ncycles):
        view_in  = big_buf_in[k*nframe : (k+1)*nframe]
        view_out = big_buf_out[k*nframe : (k+1)*nframe]

        dma_in.recvchannel.transfer(view_in)
        dma_out.recvchannel.transfer(view_out)

        dma_in.recvchannel.wait()
        dma_out.recvchannel.wait()

    print(f"Captured {ncycles*nframe} words = {(ncycles*nframe*BYTES_PER_WORD)/1024:.1f} kB")

    # --- DEPACKING (endian-safe) -----------------------------------
    i32_in  = big_buf_in.view('<i4')   # little-endian int32
    i32_out = big_buf_out.view('<i4')

    left_in   = i32_in [0::2]           # Left channel = even indices
    right_in  = i32_in [1::2]
    left_out  = i32_out[0::2]
    right_out = i32_out[1::2]
    return left_in, right_in, left_out, right_out

# --- DELETE DUPLICATES --------------------------------------------------
def delete_duplicates(arr_l, arr_r):
    """Delete consecutive identical samples in L and R."""
    mask = np.empty_like(arr_l, dtype=bool)
    mask[0]   = True
    mask[1:]  = (arr_l[1:] != arr_l[:-1]) | (arr_r[1:] != arr_r[:-1])
    print("AFTER DUPLICATES REJECTION:", arr_l[mask].size, "SAMPLES IN ;",
        arr_r[mask].size, "OUT")
    return arr_l[mask], arr_r[mask]

def fixed_point_to_float(value: int, decimal_bits: int = 30) -> float:
    """Convert a fixed-point value to a floating-point number."""
    scaling_factor = 2 ** decimal_bits
    return value / scaling_factor

def plot_audio_in_vs_out_time_domain(audio_in, audio_out):
    plt.figure(figsize=(10,3))
    plt.plot(audio_in,  label="IN  L",  alpha=.7)
    plt.plot(audio_out, label="OUT L", alpha=.7)
    plt.title("Audio signal in time domain")
    plt.grid(); plt.legend(); plt.show()

def plot_audio_in_vs_out_freq_domain(audio_in, audio_out, fs: int = 48_000):

    # --- FFT Parameters -------------------------------------------------
    N_in   = len(audio_in)
    N_out   = len(audio_out)
    
    window_in = np.hanning(N_in)                        
    window_out = np.hanning(N_out)

    # FFT before filtering
    fft_in  = np.fft.rfft(audio_in * window_in)
    mag_in  = 20 * np.log10(np.abs(fft_in) + 1e-12)

    # FFT after filtering
    fft_out = np.fft.rfft(audio_out * window_out)
    mag_out = 20 * np.log10(np.abs(fft_out) + 1e-12)

    if N_in%2 != 0:
        freqs_in = (np.array(range(N_in)) * (fs/N_in))[:(N_in+1)//2]
    else:
        freqs_in = (np.array(range(N_in)) * (fs/N_in))[:(N_in//2)+1]
        
    if N_out%2 != 0:
        freqs_out = (np.array(range(N_out)) * (fs/N_out))[:(N_out+1)//2]
    else:
        freqs_out = (np.array(range(N_out)) * (fs/N_out))[:(N_out//2)+1]
    
    # --- Wykres --------------------------------------------------------
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 10), sharex=True)
   
    ax1.plot(freqs_in, mag_in)
    ax1.set_title("Widmo PRZED filtracją (kanał lewy)")
    ax1.set_ylabel("Amplitude [dBFS]")
    ax1.grid(True, which='both')

    ax2.plot(freqs_out, mag_out)
    ax2.set_title("Widmo PO filtracji (kanał lewy)")
    ax2.set_xlabel("Frequency [Hz]")
    ax2.set_ylabel("Amplitude [dBFS]")
    ax2.grid(True, which='both')
    
    for ax in (ax1, ax2):
        ax.set_xlim(0, 20_000)                       # X axis ends at 20 kHz
        ax.xaxis.set_major_locator(MultipleLocator(1000))   # major ticks every 1000 Hz
        ax.xaxis.set_minor_locator(MultipleLocator(500))    # minor ticks every 500 Hz (optional)
        # X axis formatter
        ax.xaxis.set_major_formatter(
            FuncFormatter(lambda v, _: f"{int(v/1000)} k" if v >= 1000 else f"{int(v)}")
        )

    # ------------ red lines + two-line label ---------------
    markers = [2000, 5000]                 # [Hz]

    for f_mark in markers:
        # index of the nearest bin
        idx = np.argmin(np.abs(freqs_in - f_mark))

        # amplitudes for both axes
        amp_in  = np.mean(mag_in[idx-5:idx+5])
        amp_out = np.mean(mag_out[idx-5:idx+5])

        # common X position and frequency format "2 k", "5 k"
        label_freq = f"{int(f_mark/1000)} k"

        # vertical line
        for ax in (ax1, ax2):
            ax.axvline(f_mark, color='red', linestyle='--', linewidth=1)

        # labels — separate text on each plot, with the appropriate amplitude
        ax1.text(f_mark, ax1.get_ylim()[1] - 3,
                f"{label_freq}\n{amp_in:.1f} dB",
                color='red', ha='center', va='top', fontsize=9)

        ax2.text(f_mark, ax2.get_ylim()[1] - 3,
                f"{label_freq}\n{amp_out:.1f} dB",
                color='red', ha='center', va='top', fontsize=9)

    plt.tight_layout()
    plt.show()

def _json_to_sos(json_path: str | Path) -> np.ndarray:
    """Reads JSON file and returns SOS matrix (shape = [n_sections, 6])."""
    with open(json_path, "r", encoding="utf-8") as f:
        cfg = json.load(f)

    sos_list: list[list[float]] = []

    for f_cfg in cfg["filters"]:
        b = f_cfg["coefficients"]["b"]
        a = f_cfg["coefficients"]["a"]
        # format: [b0, b1, b2, a0, a1, a2]   z a0 = 1.0
        sos_list.append([
            b["b0"],
            b["b1"],
            b["b2"],
            1.0,          # a0
            a["a1"],
            a["a2"],
        ])

    return np.asarray(sos_list, dtype=np.float64)

def filter_and_plot(
    json_path: str | Path,
    signal: Sequence[float] | np.ndarray,
    fs: int = 48_000,
    preview_ms: int = 15, plot: bool = True
) -> Tuple[np.ndarray, float]:
    """
    Filters `signal` with IIR cascade from JSON file and plots before/after.

    Parameters
    ----------
    json_path  : filter description file
    signal     : list / ndarray with samples
    fs         : sampling frequency [Hz]
    preview_ms : how many milliseconds to show in time domain

    Returns
    -------
    y        : filtered signal
    elapsed  : filtering time [s]
    """
    x = np.asarray(signal, dtype=np.float64)
    sos = _json_to_sos(json_path)

    t0 = time.perf_counter()
    y = sosfilt(sos, x)
    elapsed = time.perf_counter() - t0
    
    if plot==True:
        # ---------- 1. Plot Time Domain -----------------------
        n_prev = int(fs * preview_ms / 1000)
        t_axis = np.arange(n_prev) / fs * 1e3  # [ms]

        fig, (ax0, ax1, ax2) = plt.subplots(3, 1, figsize=(10, 10), sharex=False)
        ax0.plot(x, label="input")
        ax0.plot(y, label="filtered")
#         ax0.set_xlabel("Time [ms]")
        ax0.set_ylabel("Amplitude")
        ax0.set_title(f"First {preview_ms} ms: before vs after filtering")
        ax0.grid(True)
        ax0.legend()

        # ---------- 2. Plot Frequency Domain (dB) -------------------------------
        N_fft = len(x)
        window = np.hanning(N_fft)
        X = np.fft.rfft(x[:N_fft] * window)
        Y = np.fft.rfft(y[:N_fft] * window)
        freqs = np.fft.rfftfreq(N_fft, 1/fs)
        
        X_amp = 20 * np.log10(np.abs(X) + 1e-12)
        Y_amp = 20 * np.log10(np.abs(Y) + 1e-12)
        
        ax1.plot(freqs, X_amp)
        ax2.plot(freqs, Y_amp)
        
        ax1.set_title("Widmo PRZED filtracją")
        ax1.set_ylabel("Amplituda [dBFS]")
        ax1.grid(True, which='both')
        
        ax2.set_title("Widmo PO filtracji")
        ax2.set_ylabel("Amplituda [dBFS]")
        ax2.grid(True, which='both')
        
        for ax in (ax1, ax2):
            ax.set_xlim(0, 20_000)                       # osi X kończy się na 20 kHz
            ax.xaxis.set_major_locator(MultipleLocator(1000))
            ax.xaxis.set_minor_locator(MultipleLocator(500))
            ax.xaxis.set_major_formatter(
                FuncFormatter(lambda v, _: f"{int(v/1000)} k" if v >= 1000 else f"{int(v)}")
            )
        markers = [2000, 5000]                 # [Hz]
        
        for f_mark in markers:
            # index of the nearest bin
            idx = np.argmin(np.abs(freqs - f_mark))

            # average amplitude (dB) ±5 bins
            amp_in  = np.mean(X_amp[idx-5:idx+5])
            amp_out = np.mean(Y_amp [idx-5:idx+5])

            label_freq = f"{int(f_mark/1000)} k"
            for ax in (ax1, ax2):
                ax.axvline(f_mark, color='red', linestyle='--', linewidth=1)

            # separate labels above the line (once per axis)
            ax1.text(f_mark, ax1.get_ylim()[1] - 3,
                     f"{label_freq}\n{amp_in:.1f} dB",
                     color='red', ha='center', va='top', fontsize=9)
            ax2.text(f_mark, ax2.get_ylim()[1] - 3,
                     f"{label_freq}\n{amp_out:.1f} dB",
                     color='red', ha='center', va='top', fontsize=9)
        plt.tight_layout()
        plt.show()
    
    print(f"Filtering time: {elapsed*1e3:.2f} ms")
    return y, elapsed

# SLIDERS CODE
# ------------------------------------------------------------------
def calc_coeffs(fc: float, Q: float, A: float):
    """Returns dict {b0,b1,b2,a1,a2} for given parameters."""
    wc           = 2 * np.pi * fc
    wc_unwarped  = (2 / Ts) * np.tan((Ts / 2) * wc)
    wcT          = wc_unwarped * Ts

    a0 = 4 + (2 / Q) * wcT + wcT ** 2
    b0 = (4 + (2 * A / Q) * wcT + wcT ** 2) / a0
    b1 = (2 * wcT ** 2 - 8) / a0
    b2 = (4 - (2 * A / Q) * wcT + wcT ** 2) / a0
    a1 = (2 * wcT ** 2 - 8) / a0
    a2 = (4 - (2 / Q) * wcT + wcT ** 2) / a0
    return dict(b0=b0, b1=b1, b2=b2, a1=a1, a2=a2)

# ------------------------------------------------------------------
def build_json(fc: float, Q: float, G: float) -> dict:
    coeffs = calc_coeffs(fc, Q, G)
    section = {
        "fs":  fs,
        "fc":  fc,
        "Q":   Q,
        "G":   G,
        "coefficients": {
            "b": {k: coeffs[k] for k in ("b0", "b1", "b2")},
            "a": {k: coeffs[k] for k in ("a1", "a2")},
        },
    }
    # 8 copies (filter0 … filter7)
    section_list = [
        dict(name=f"filter{i}", **section) for i in range(n_sections)
    ]
    return {"filters": section_list}

# ------------------------------------------------------------------
def on_apply(_):
    fc = fc_slider.value
    Q  = Q_slider.value
    G  = gain_slider.value

    cfg = build_json(fc, Q, G)
    Path(json_path).write_text(json.dumps(cfg, indent=2))
#     print(f"✓ Saved {json_path}")

    # load coeffs
    load_filters_from_json(json_path, mmio=_MMIO)
#     print("✓ Coeffs were uploaded\n")

# ------------------------------------------------------------------
#  WIDGETS
fc_slider   = w.IntSlider(  min=16,   max=20_000, step=1,
                            value=2000, description="fc [Hz]",
                            continuous_update=False, style={"description_width":"80px"})
Q_slider    = w.FloatSlider(min=0.1, max=10, step=0.1,
                               value=1.0, description="Q = fc/Bandwidth", readout_format=".2f",
                               continuous_update=False, style={"description_width":"80px"})
gain_slider = w.FloatSlider(  min=0, max=2, step=0.01,
                            value=0.01, description="Gain [dB]", readout_format=".2f",
                            continuous_update=False, style={"description_width":"80px"})

apply_btn   = w.Button(description="Apply", button_style="success")
apply_btn.on_click(on_apply)

ui = w.VBox([fc_slider, Q_slider, gain_slider, apply_btn])

