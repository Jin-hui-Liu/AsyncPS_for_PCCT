import sys
import re
import math
import os # Import the os module for path operations and directory listing

# Define the scaling factor
SCALE_FACTOR = 15

# Define custom layer mapping for << layer_name >> headers
# Keys are original layer names, values are desired new names
# Add more mappings here as needed. For example, if you want 'nwell' to be 'x', add 'nwell': 'x'.
LAYER_MAP = {
    'nmos': 'ntransistor',
    'pmos': 'ptransistor',
    'ndiff': 'ndiffusion',
    'pdiff': 'pdiffusion',
    'ndiffc': 'ndc',
    'pdiffc': 'pdc',
    'poly' : 'polysilicon',
    'polycont': 'pc',
    'locali' : 'm1',
    'viali' : 'm2c',
    'metal1' : 'm2',
    
    # Add other specific mappings as required by your ACT tool or preferences
}

# Regular expression to match 'rect' lines
# Captures the 'rect' keyword and leading whitespace (group 1),
# followed by four coordinates (named groups xl, yl, xh, yh),
# and any remaining content on the line (group 6)
RECT_PATTERN = re.compile(r'^(rect\s+)(?P<xl>[0-9-]+)\s+(?P<yl>[0-9-]+)\s+(?P<xh>[0-9-]+)\s+(?P<yh>[0-9-]+)(.*)$')

LABEL_PATTERN = re.compile(
    r'^(?P<label_type>[rf]label\s*)' # Named group 'label_type': rlabel or flabel keyword and leading space
    r'(?P<label_layer_name>\w+)'    # Named group 'label_layer_name': The layer type (e.g., ndiffusion)
    r'(?P<label_layer_suffix>\s*)'  # Named group 'label_layer_suffix': Trailing space after layer name
    r'(?P<xl>[0-9-]+)\s+'           # xl coordinate
    r'(?P<yl>[0-9-]+)\s+'           # yl coordinate
    r'(?P<xh>[0-9-]+)\s+'           # xh coordinate
    r'(?P<yh>[0-9-]+)'              # yh coordinate
    r'(\s+(?P<num_after_coords>\d+)\s+' # Group 7: number after coordinates (e.g., '3')
    r'(?:FreeSerif\s+(?P<font_size>[0-9-]+)\s+0\s+0\s+0\s+)?' # Optional font part, capturing font_size
    r'(?P<label>[a-zA-Z0-9_()#]+)'  # Named group 'label': the actual label string
    r')$' # End of line
)

# Regular expression to match layer header lines like << layer_name >>
LAYER_HEADER_PATTERN = re.compile(r'^(<<\s*)(?P<layer_name>\w+)(\s+>>)$')

def scale_coordinates_in_mag_file(input_filepath, output_filepath, scale_factor):
    """
    Reads the input .mag file, scales the coordinates in 'rect' and 'label' lines
    by the given scale factor, modifies header lines, applies custom layer mapping,
    and writes the modified content to a new .mag file.
    """
    try:
        with open(input_filepath, 'r') as infile, open(output_filepath, 'w') as outfile:
            for line_num, line in enumerate(infile):
                # 1. Handle specific header lines
                if line_num == 1: # This is the 'tech' line (0-indexed)
                    if "tech sky130A" in line:
                        outfile.write("tech sky130l\n")
                        continue
                elif line_num == 2: # This is the 'magscale' line
                    if "magscale 1 2" in line:
                        continue # Skip this line
                
                # 2. Handle layer header lines (e.g., << nwell >>)
                match_layer_header = LAYER_HEADER_PATTERN.match(line)
                if match_layer_header:
                    original_layer_name = match_layer_header.group('layer_name')
                    # Apply custom mapping if defined, otherwise keep original
                    mapped_layer_name = LAYER_MAP.get(original_layer_name, original_layer_name)
                    
                    # Reconstruct the layer header line
                    new_line = f"{match_layer_header.group(1)}{mapped_layer_name}{match_layer_header.group(3)}\n"
                    outfile.write(new_line)
                    continue # Processed current line, move to the next

                # 3. Attempt to match 'rect' lines
                match_rect = RECT_PATTERN.match(line)
                if match_rect:
                    # Extract parts before and after coordinates
                    parts_before = match_rect.group(1)
                    # Extract and scale coordinates, rounding to the nearest integer
                    xl = round(int(match_rect.group('xl')) / scale_factor)
                    yl = round(int(match_rect.group('yl')) / scale_factor)
                    xh = round(int(match_rect.group('xh')) / scale_factor)
                    yh = round(int(match_rect.group('yh')) / scale_factor)
                    parts_after = match_rect.group(6) # Capture any content at the end of the line (e.g., newline)

                    # Reconstruct the line and write to the output file
                    new_line = f"{parts_before}{xl} {yl} {xh} {yh}{parts_after}\n"
                    outfile.write(new_line)
                    continue # Processed current line, move to the next

                # 4. Attempt to match 'label' lines (rlabel or flabel)
                match_label = LABEL_PATTERN.match(line)
                if match_label:
                    # Extract label type, original layer name, and suffix
                    label_type = match_label.group('label_type')
                    original_label_layer_name = match_label.group('label_layer_name')
                    label_layer_suffix = match_label.group('label_layer_suffix')

                    # Apply custom mapping to the label's layer name
                    mapped_label_layer_name = LAYER_MAP.get(original_label_layer_name, original_label_layer_name)

                    # Extract and scale coordinates, rounding to the nearest integer
                    xl = round(int(match_label.group('xl')) / scale_factor)
                    yl = round(int(match_label.group('yl')) / scale_factor)
                    xh = round(int(match_label.group('xh')) / scale_factor)
                    yh = round(int(match_label.group('yh')) / scale_factor)

                    # Extract the font size if it exists, scale it, and reconstruct the optional font part
                    font_size_str = match_label.group('font_size')
                    if font_size_str:
                        scaled_font_size = round(int(font_size_str) / scale_factor)
                        font_part = f"FreeSerif {scaled_font_size} 0 0 0 "
                    else:
                        font_part = "" # No font part for rlabel

                    # Extract the number after coordinates and the final label
                    num_after_coords = match_label.group('num_after_coords')
                    final_label = match_label.group('label')

                    # Reconstruct the line with scaled coordinates, mapped layer name, and potentially scaled font size
                    new_line = (
                        f"{label_type}{mapped_label_layer_name}{label_layer_suffix}"
                        f"{xl} {yl} {xh} {yh}"
                        f" {num_after_coords} {font_part}{final_label}\n"
                    )
                    outfile.write(new_line)
                    continue # Processed current line, move to the next

                # If the current line is not handled by specific rules, write it as is
                outfile.write(line)

        print(f"Successfully scaled coordinates by {scale_factor} in '{input_filepath}' and saved to '{output_filepath}'.")

    except FileNotFoundError:
        print(f"Error: Input file '{input_filepath}' not found. Please check the file path.")
        sys.exit(1)
    except Exception as e:
        print(f"An error occurred during processing '{input_filepath}': {e}")
        sys.exit(1)

if __name__ == "__main__":
    # Check command-line argument count
    # python3 130A2L.py ../mag2ext
    if len(sys.argv) != 2: # Expects only one argument: the output directory
        print("Usage: python3 130A2L.py <output_directory>")
        print("Example: python3 130A2L.py scaled_mag_files")
        sys.exit(1)

    output_dir = sys.argv[1]

    # Create the output directory if it doesn't exist
    try:
        os.makedirs(output_dir, exist_ok=True)
        print(f"Output directory '{output_dir}' ensured.")
    except Exception as e:
        print(f"Error creating output directory '{output_dir}': {e}")
        sys.exit(1)

    # Get all .mag files in the current directory
    current_dir = os.getcwd()
    mag_files = [f for f in os.listdir(current_dir) if f.endswith('.mag')]

    if not mag_files:
        print("No .mag files found in the current directory.")
        sys.exit(0)

    print(f"Found {len(mag_files)} .mag files to process.")

    # Process each .mag file
    for mag_file in mag_files:
        input_filepath = os.path.join(current_dir, mag_file)
        output_filepath = os.path.join(output_dir, mag_file) # Output file name remains the same

        scale_coordinates_in_mag_file(input_filepath, output_filepath, SCALE_FACTOR)

    print("All specified .mag files have been processed.")
