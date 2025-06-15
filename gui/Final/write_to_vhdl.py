import json

def float_to_fixed_point(value, decimal_bits=30):
    scaling_factor = 2 ** decimal_bits
    scaled_value = round(value * scaling_factor)
    fixed_point_value = int(scaled_value) & 0xFFFFFFFF
    return fixed_point_value

# Function to load JSON configuration file
def load_json_config(file_path):
    with open(file_path, 'r') as file:
        return json.load(file)

# Initialize arrays to store fixed-point coefficients
def initialize_coefficients(filters_json, decimal_bits=30):
    coeff_array = []

    for filter_data in filters_json["filters"]:
        b0 = float_to_fixed_point(filter_data["coefficients"]["b"]["b0"], decimal_bits)
        b1 = float_to_fixed_point(filter_data["coefficients"]["b"]["b1"], decimal_bits)
        b2 = float_to_fixed_point(filter_data["coefficients"]["b"]["b2"], decimal_bits)
        a1 = float_to_fixed_point(filter_data["coefficients"]["a"]["a1"], decimal_bits)
        a2 = float_to_fixed_point(filter_data["coefficients"]["a"]["a2"], decimal_bits)

        # Store coefficients as a tuple
        coeff_array.append((b0, b1, b2, a1, a2))

    return coeff_array

# Load configuration from JSON file
def parse_coefficients_to_vhdl(file_path, output_vhdl_path, decimal_bits=30):
    filters_json = load_json_config(file_path)
    fixed_point_coeffs = initialize_coefficients(filters_json, decimal_bits)

    # Write coefficients to VHDL initialization format
    with open(output_vhdl_path, "w") as file:
        file.write("signal coeff_data : coeff_array := \n(")
        for idx, coeffs in enumerate(fixed_point_coeffs):
            file.write(f"\n    {idx} => x\"{coeffs[0]:08X}{coeffs[1]:08X}{coeffs[2]:08X}{coeffs[3]:08X}{coeffs[4]:08X}\"")
            if idx < len(fixed_point_coeffs) - 1:
                file.write(",")
        file.write("\n);\n")

# Paths
config_file_path = "filter_configuration.json"  # Path to the JSON file
vhdl_output_path = "eq_coeff_outputs.vhdl"  # Path to the VHDL output file

# Generate VHDL initialization array
parse_coefficients_to_vhdl(config_file_path, vhdl_output_path)

print(f"VHDL initialization array has been written to {vhdl_output_path}.")
