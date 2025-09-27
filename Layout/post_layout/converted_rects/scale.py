import sys
import re
import math
import os

# Define the scaling factor
SCALE_FACTOR = 15

# Regular expression to match 'rect' lines
# Captures the part before coordinates (group 1), four coordinates (named groups xl, yl, xh, yh),
# and the part after coordinates (group 6)

# Use this for .rect file
RECT_PATTERN = re.compile(r'^(rect\s+[^ ]+\s+\w+\s+)(?P<xl>[0-9-]+)\s+(?P<yl>[0-9-]+)\s+(?P<xh>[0-9-]+)\s+(?P<yh>[0-9-]+)(.*)$')
# Use this for .mag file
# RECT_PATTERN = re.compile(r'^(rect\s+)(?P<xl>[0-9-]+)\s+(?P<yl>[0-9-]+)\s+(?P<xh>[0-9-]+)\s+(?P<yh>[0-9-]+)(.*)$')

# Regular expression to match 'rlabel' or 'flabel' lines
# Captures the label type and layer name (group 1), four coordinates (named groups xl, yl, xh, yh),
# and the part after coordinates (group 6, including number, optional font info, and actual label)
LABEL_PATTERN = re.compile(r'^([rf]label\s*\w+\s*)(?P<xl>[0-9-]+)\s+(?P<yl>[0-9-]+)\s+(?P<xh>[0-9-]+)\s+(?P<yh>[0-9-]+)(\s+\d+\s+(?:FreeSerif\s+120\s+0\s+0\s+0\s+)?.*)$')

def scale_coordinates_in_mag_file(input_filepath, output_filepath, scale_factor):
    """
    Reads the input .mag file, scales the coordinates in 'rect' and 'label' lines
    by the given scale factor, and writes the modified content to a new .mag file.
    """
    try:
        with open(input_filepath, 'r') as infile, open(output_filepath, 'w') as outfile:
            for line in infile:
                # Attempt to match 'rect' lines
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

                # Attempt to match 'label' lines (rlabel or flabel)
                match_label = LABEL_PATTERN.match(line)
                if match_label:
                    # Extract parts before and after coordinates
                    parts_before = match_label.group(1)
                    # Extract and scale coordinates, rounding to the nearest integer
                    xl = round(int(match_label.group('xl')) / scale_factor)
                    yl = round(int(match_label.group('yl')) / scale_factor)
                    xh = round(int(match_label.group('xh')) / scale_factor)
                    yh = round(int(match_label.group('yh')) / scale_factor)
                    parts_after = match_label.group(6) # Capture all content after coordinates

                    # Reconstruct the line and write to the output file
                    new_line = f"{parts_before}{xl} {yl} {xh} {yh}{parts_after}\n"
                    outfile.write(new_line)
                    continue # Processed current line, move to the next

                # If the current line is neither a rect nor a label, write it as is
                outfile.write(line)

        print(f"Successfully scaled coordinates by {scale_factor} in '{input_filepath}' and saved to '{output_filepath}'.")

    except FileNotFoundError:
        print(f"Error: Input file '{input_filepath}' not found. Please check the file path.")
        sys.exit(1)
    except Exception as e:
        print(f"An error occurred: {e}")
        sys.exit(1)

if __name__ == "__main__":
    # Check command-line argument count
    # Usage: python3 scale.py ../cell_lib
    if len(sys.argv) != 2: # Expects only one argument: the output directory
        print("Usage: python3 scale.py <output_directory>")
        print("Example: python3 scale.py scaled_mag_files")
        sys.exit(1)

    output_dir = sys.argv[1]

    # Create the output directory if it doesn't exist
    try:
        os.makedirs(output_dir, exist_ok=True)
        print(f"Output directory '{output_dir}' ensured.")
    except Exception as e:
        print(f"Error creating output directory '{output_dir}': {e}")
        sys.exit(1)

    # Get all .mag / .rect files in the current directory
    current_dir = os.getcwd()
    mag_files = [f for f in os.listdir(current_dir) if f.endswith('.rect')]

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
