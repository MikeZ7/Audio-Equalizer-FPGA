import numpy as np

def calc_coeffs(fc, A, Q=1.41, fs=96_000):
    """
    Calculate floating point coefficients for a digital filter.

    Parameters:
    fc : float
        Cut-off frequency (Hz).
    Q : float
        Quality factor of the filter.
    A : float
        Amplitude scaling factor.
    Ts : float
        Sampling period (1 / sampling frequency).

    Returns:
    list of float
        [b0, b1, b2, a1, a2] coefficients.
    """
    Ts = 1/fs
    # Pre-warp the cut-off frequency
    wc = 2 * np.pi * fc
    wc_unwarped = (2 / Ts) * np.tan((Ts / 2) * wc)
    wcT = wc_unwarped * Ts

    # Calculate the coefficients
    a0 = 4 + (2 / Q) * wcT + wcT ** 2
    b0 = (4 + (2 * A / Q) * wcT + wcT ** 2) / a0
    b1 = (2 * wcT ** 2 - 8) / a0
    b2 = (4 - (2 * A / Q) * wcT + wcT ** 2) / a0
    a1 = ((2 * wcT ** 2) - 8) / a0
    a2 = (4 - (2 / Q) * wcT + wcT ** 2) / a0
    coefs = [b0, b1, b2, a1, a2]
    b = [float(val) for val in coefs]
    return b
    # return [b0, b1, b2, a1, a2]
#
if __name__ == "__main__":
    # Example usage
    # fs = 96_000  # Cut-off frequency in Hz
    fc= 128
    # Q = 1.0  # Quality factor
    A = 1.1220184543019633    # Amplitude scaling factor
     # Sampling period for 48 kHz sampling frequency

    coefficients = calc_coeffs(fc, A)
    print("Filter Coefficients:", coefficients)
