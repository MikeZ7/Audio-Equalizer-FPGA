def float_to_fixed_point(value, decimal_bits=30, signed=True):
    """
    Converts a floating-point value to a signed hexadecimal value in Q2.30 format.

    Args:
        value (float): The floating-point number to convert.

    Returns:
        str: The signed hexadecimal representation in Q2.30 format.
        :param signed:
    """
    # Define the scaling factor for Q2.30
    scaling_factor = 2 ** decimal_bits

    # Scale the value
    scaled_value = int(round(value * scaling_factor))
    # Ensure the value fits in 32 bits (signed)
    # if scaled_value < -(2 ** decimal_bits+1) or scaled_value >= 2 ** decimal_bits+1:
    #     raise ValueError("Value out of range for Q2.30 format")

    # Convert to 32-bit signed integer representation
    signed_32_bit = scaled_value & 0xFFFFFFFF
    # hex_value = signed_32_bit
    # Convert to hexadecimal format
    hex_value = f"{signed_32_bit:08X}"

    return hex_value

if __name__ == "__main__":
    # Example usage
    # value = 0.901472543630567  # Example floating-point value
    # hex_value = float_to_fixed_point(value, 30)
    # print(f"Q2.30 representation of {value}: 0x{hex_value}")
    b_coeff = [0.985570988081227, -1.730406777618643, 0.915901555549339]
    a_coeff =[1,-1.730406777618643,0.901472543630567]
    coefficients = {
        "b0": b_coeff[0],
        "b1": b_coeff[1],
        "b2": b_coeff[2],
        "a1": a_coeff[1],
        "a2": a_coeff[2],
    }

    unsigned_hex_coeffs = [float_to_fixed_point(val, 30) for key, val in coefficients.items()]

    print(unsigned_hex_coeffs)
    print(hex(float_to_fixed_point(-1.9992564863156752, 30)))
    print(float_to_fixed_point(-1.9992564863156752, 30))

    # def float_to_fixed_point(value, decimal_bits=30):
    #     scaling_factor = 2 ** decimal_bits
    #     scaled_value = round(value * scaling_factor)
    #     # Range of Q2.30
    #     max_value = 2 ** (32 - decimal_bits - 1) - 2 ** (-decimal_bits)
    #     min_value = -2
    #     if value > max_value or value < min_value:
    #         raise ValueError(f"Value {value} is out of range for Q2.30 format")
    #     # Conversion to 32-bit integer
    #     fixed_point_value = int(scaled_value) & 0xFFFFFFFF
    #     # 2's complement for signed values
    #     if fixed_point_value >= 2 ** 31:
    #         fixed_point_value -= 2 ** 32
    #     return fixed_point_value

