import re
import sys
import os

def modify_netlist(input_filepath, output_filepath):
    """
    Modifies a SPICE netlist file with the following changes:
    1. Renames 'nfet' to 'sky130_fd_pr__nfet_01v8' and 'pfet' to 'sky130_fd_pr__pfet_01v8'.
    2. Replaces the body terminal of 'pfet' transistors with 'Vdd'.
    3. Replaces strings like 'in_5x_6' (where x is a single digit) with 'in_x'.
    4. Replaces strings like 'in(x)' (where x is a single digit) with 'in_x'.
    5. Removes the 'u' unit from 'w' and 'l' parameters.
    6. For lines starting with 'X', replaces the second string with 'GND' and the third with 'Vdd'.

    Args:
        input_filepath (str): Path to the input SPICE netlist file.
        output_filepath (str): Path to the output modified SPICE netlist file.
    """
    try:
        with open(input_filepath, 'r') as infile, open(output_filepath, 'w') as outfile:
            current_transistor_lines = [] # Stores lines belonging to the current transistor definition

            # Regex for replacing 'in_5x_6' with 'in_x' where x is a single digit.
            # It looks for 'in_5', captures a single digit (\d) as group 1, then matches '_6'.
            IN_5X_6_PATTERN = re.compile(r'in_5(\d)_6')

            # Regex for replacing 'in(x)' with 'in_x' where x is a single digit.
            # It looks for 'in(', captures a single digit (\d) as group 1, then matches ')'.
            IN_PAREN_X_PATTERN = re.compile(r'in\((\d)\)')

            def apply_global_replacements(text):
                """
                Applies the 'in_5x_6' to 'in_x' and 'in(x)' to 'in_x' replacements globally.
                The order of replacement matters if patterns could overlap. Here, they are distinct enough.
                """
                # First, replace 'in_5x_6' with 'in_x'
                text = IN_5X_6_PATTERN.sub(r'in_\1', text)
                # Second, replace 'in(x)' with 'in_x'
                text = IN_PAREN_X_PATTERN.sub(r'in_\1', text)
                return text

            def process_transistor_block(block_lines):
                """
                Processes a block of lines representing a single transistor definition (including continuation lines).
                Applies type renaming, pfet body terminal modification, and w/l unit removal.
                """
                if not block_lines:
                    return []

                # The first line contains the main definition
                first_line_parts = block_lines[0].strip().split()
                
                # Basic check for a valid transistor line structure: M name d g s b type ...
                if len(first_line_parts) < 6:
                    # If it's not a valid transistor line, return it as is, after global replacements
                    return [apply_global_replacements(line) + '\n' for line in block_lines]

                original_transistor_type = first_line_parts[5].lower() # Get original transistor type (nfet/pfet)

                # Task 1: Rename nfet/pfet types
                if original_transistor_type == 'nfet':
                    first_line_parts[5] = 'sky130_fd_pr__nfet_01v8'
                elif original_transistor_type == 'pfet':
                    first_line_parts[5] = 'sky130_fd_pr__pfet_01v8'

                # Task 2: Modify pfet body terminal (only on the first line)
                # The body terminal is the 5th part (index 4) in the standard SPICE format
                if original_transistor_type == 'pfet':
                    if len(first_line_parts) >= 5: # Ensure the body terminal exists
                        first_line_parts[4] = 'Vdd'

                modified_block_lines = []
                
                # Process the first line of the transistor block
                new_first_line_parts = first_line_parts[:6] # Keep M name d g s b type
                for i in range(6, len(first_line_parts)): # Iterate through parameters on the first line
                    part = first_line_parts[i]
                    if '=' in part:
                        key, value_str = part.split('=', 1)
                        # Task 5: Remove 'u' unit from w/l parameters
                        if (key.lower() == 'w' or key.lower() == 'l') and value_str.lower().endswith('u'):
                            new_first_line_parts.append(f"{key}={value_str[:-1]}") # Remove 'u'
                        else:
                            new_first_line_parts.append(part)
                    else:
                        new_first_line_parts.append(part)
                
                # Apply global replacements (in_5x_6 to in_x, in(x) to in_x) to the constructed first line
                modified_block_lines.append(apply_global_replacements(' '.join(new_first_line_parts)))

                # Process continuation lines (starting with '+')
                for i in range(1, len(block_lines)):
                    cont_line = block_lines[i].strip()
                    if cont_line.startswith('+'):
                        # Task 5: Remove 'u' unit from w/l parameters on continuation lines
                        cont_line_parts = cont_line[1:].strip().split()
                        new_cont_line_parts = []
                        for part in cont_line_parts:
                            if '=' in part:
                                key, value_str = part.split('=', 1)
                                if (key.lower() == 'w' or key.lower() == 'l') and value_str.lower().endswith('u'):
                                    new_cont_line_parts.append(f"{key}={value_str[:-1]}")
                                else:
                                    new_cont_line_parts.append(part)
                            else:
                                new_cont_line_parts.append(part)
                        
                        # Apply global replacements to the constructed continuation line
                        modified_block_lines.append(apply_global_replacements('+ ' + ' '.join(new_cont_line_parts)))
                    else:
                        # This case should ideally not be reached if block_lines only contains a transistor block
                        modified_block_lines.append(apply_global_replacements(block_lines[i]))

                # Add newline characters back to each modified line
                return [line + '\n' for line in modified_block_lines]

            # Main loop to read and process the netlist file line by line
            for line in infile:
                stripped_line = line.strip()

                # Handle comment lines or empty lines
                if stripped_line.startswith('*') or not stripped_line:
                    # If it's a comment or empty line, first process any pending transistor block
                    # then apply global replacements to the current comment/empty line and write it.
                    if current_transistor_lines:
                        outfile.writelines(process_transistor_block(current_transistor_lines))
                        current_transistor_lines = []
                    outfile.write(apply_global_replacements(line)) # Apply global replacement to comments/empty lines
                    continue

                # Check if it's the start of a new transistor definition (starts with 'M' and not a continuation '+M')
                if stripped_line.startswith('M') and not stripped_line.startswith('+M'):
                    if current_transistor_lines: # If there was a previous transistor block, process it
                        outfile.writelines(process_transistor_block(current_transistor_lines))
                    current_transistor_lines = [stripped_line] # Start a new block with the current line
                elif stripped_line.startswith('+'): # It's a continuation line for the current transistor
                    current_transistor_lines.append(stripped_line)
                elif stripped_line.startswith('X'): # Task 6: Handle X-prefixed submodule definitions
                    if current_transistor_lines: # Process any pending M-block
                        outfile.writelines(process_transistor_block(current_transistor_lines))
                        current_transistor_lines = []
                    
                    # Process the X line
                    parts = stripped_line.split()
                    # Ensure there are at least 3 parts to modify (X_name, 2nd string, 3rd string)
                    if len(parts) >= 3:
                        parts[1] = 'GND' # Second string
                        parts[2] = 'Vdd' # Third string
                    
                    # Reconstruct the line and apply global replacements
                    modified_x_line = apply_global_replacements(' '.join(parts))
                    outfile.write(modified_x_line + '\n')
                else: # Any other non-transistor line (e.g., .option, .global, .subckt, .ends, etc.)
                    if current_transistor_lines: # Process any pending transistor block
                        outfile.writelines(process_transistor_block(current_transistor_lines))
                        current_transistor_lines = []
                    outfile.write(apply_global_replacements(line))

            # After the loop, process any remaining transistor block that might be at the end of the file
            if current_transistor_lines:
                outfile.writelines(process_transistor_block(current_transistor_lines))

        print(f"Netlist modified successfully. Output saved to '{output_filepath}'.")

    except FileNotFoundError:
        print(f"Error: Input file '{input_filepath}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    # Ensure correct command-line argument usage
    if len(sys.argv) != 3:
        print("Usage: python modify_netlist.py <input_netlist_file> <output_netlist_file>")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    # Call the main modification function
    modify_netlist(input_file, output_file)
