import os

def float_to_fixed_point(value, decimal_bits, signed=True, coeff_type="integer"):
    """
    Converts a floating-point value to a signed hexadecimal value in Q2.30 format.

    Args:
        value (float): The floating-point number to convert.

    Returns:
        str: The signed decimal
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
    if coeff_type == "integer":
        signed_32_bit = scaled_value
    elif coeff_type == "hex":
        signed_32_bit = scaled_value & 0xFFFFFFFF
    signed_value = f"{scaled_value}"
    # Convert to hexadecimal format
    hex_value = f"{signed_32_bit:08X}"

    return signed_value, hex_value


def wrap_params_to_vhdl(fix_values, filter_descriptor, num_of_coeff=5, value_type="dec", file_name="vhdl_coeffs.txt"):
    """
    Function that returns params in vhdl code
    {b0, b1, b2, a1, a2}
    :param fix_values: dict
    :return: str
    """
    b_coeffs = int((num_of_coeff-1)/2 + 1)
    a_coeffs = b_coeffs-1
    vhdl_coeffs = ""
    idx = 0
    for value in fix_values:
        if b_coeffs > 0:
            b_coeffs -= 1
            if value_type == "dec":
                vhdl_coeffs += f"constant b{b_coeffs} : integer := {value};\n\r"
            elif value_type == "hex":
                vhdl_coeffs += f"constant b{b_coeffs} : integer := x\"{value}\";\n\r"
        elif a_coeffs > 0:
            a_coeffs -= 1
            if value_type == "dec":
                vhdl_coeffs += f"constant a{a_coeffs} : integer := {value};\n\r"
            elif value_type == "hex":
                vhdl_coeffs += f"constant a{a_coeffs} : integer := x\"{value}\";\n\r"

    cwd = os.getcwd()
    with open(f"{cwd}\\{file_name}", 'a') as file:
        file.write(f"----------[f0 = {filter_descriptor}]------------\n\r")
        file.write(vhdl_coeffs)
        file.write(f"-------------[END]-----------------\n\r")

    return vhdl_coeffs

def extract_coefficients(input_file_path, output_file_path):
    coeff_map = {
        "b0": [],
        "b1": [],
        "b2": [],
        "a1": [],
        "a0": []
    }

    with open(input_file_path, "r") as file:
        lines = file.readlines()

    current_block = {}
    for line in lines:
        line = line.strip()
        if line.startswith("constant"):
            # Extract the coefficient and its value
            parts = line.split(" ")
            coeff_name = parts[1]
            value = int(parts[-1].strip(";"))
            current_block[coeff_name] = value

        elif line.startswith("-------------[END]"):
            # Append current block values to their respective coefficient lists
            for key in coeff_map:
                coeff_map[key].append(current_block.get(key, 0))
            current_block = {}

    # Write the output to the file
    with open(output_file_path, "w") as output_file:
        for coeff_name, values in coeff_map.items():
            array_values = ", ".join(map(str, values))
            output_file.write(f"constant {coeff_name}_coeff : coeff_array := ({array_values});\n\n")

# Example usage



if __name__ == "__main__":
    # Example usage
    # value = 0.901472543630567  # Example floating-point value
    # hex_value = float_to_fixed_point(value, 30)
    # print(f"Q2.30 representation of {value}: 0x{hex_value}")
    # b_coeff = [0.982734650837571,-1.945208869717304,0.982385855904997]
    # a_coeff = [1,-1.945208869717304,0.965120506742568]
    coefficients = {'b0': 0.8665657493814556, 'b1': -1.3010193067658173,
                    'b2': 0.8525200387900298, 'a1': -1.3010193067658173, 'a2': 0.7190857881714854}
    #
    unsigned_hex_coeffs = [float_to_fixed_point(val, 30)[0] for key, val in coefficients.items()]
    # print(unsigned_hex_coeffs)

    vhdl_coeff = wrap_params_to_vhdl(unsigned_hex_coeffs, "fc5k_q10_A_40dB")
    print(vhdl_coeff)
    input_file = "vhdl_coeffs_5k_q10_A_40dB.txt"
    output_file = "vhdl_coeffs_array_5k_q10_A_40dB.txt"
    # extract_coefficients(input_file, output_file)