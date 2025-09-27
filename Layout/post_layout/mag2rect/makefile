# Define the Python interpreter
PYTHON = python3

# Define the name of the conversion script
MAG2RECT_SCRIPT = mag2rect.py

# Define the directory name for the output .rect files
# Change this variable if you want a different output folder name
RECT_OUTPUT_DIR = ../converted_rects

# Use the wildcard function to find all files ending with .mag in the current directory
MAG_FILES = $(wildcard *.mag)

# Use patsubst to generate the list of corresponding .rect files based on the .mag file list,
# and specify the output path.
# Example: If MAG_FILES is "file1.mag file2.mag",
# then RECT_TARGETS will be "converted_rects/file1.rect converted_rects/file2.rect"
RECT_TARGETS = $(patsubst %.mag, $(RECT_OUTPUT_DIR)/%.rect, $(MAG_FILES))

# Default target: build all .rect files
# This target will be executed when you simply type "make"
all: $(RECT_TARGETS)
	@echo "All .mag files have been successfully converted to .rect files and saved in the $(RECT_OUTPUT_DIR) folder."

# Rule: how to generate a .rect file from a .mag file
# $@: The target file (e.g., converted_rects/file1.rect)
# $<: The first dependency file (e.g., file1.mag)
# @: Suppress the command output, only show echo messages
$(RECT_OUTPUT_DIR)/%.rect: %.mag $(MAG2RECT_SCRIPT)
	@echo "Converting $< to $@"
	# Ensure the output directory exists. The -p option means no error if directory already exists.
	@mkdir -p $(RECT_OUTPUT_DIR)
	# Execute the mag2rect.py script. It will generate a .rect file with the same name in the current directory.
	$(PYTHON) $(MAG2RECT_SCRIPT) $<
	# Move the generated .rect file to the specified output directory.
	# $(basename $<) extracts the base filename (without extension), e.g., "file1".
	@mv $(basename $<).rect $@

# Clean target: delete all generated .rect files and the output directory
# This target will be executed when you type "make clean"
clean:
	@echo "Cleaning up generated .rect files and directory..."
	@rm -f $(RECT_OUTPUT_DIR)/*.rect
	@rmdir $(RECT_OUTPUT_DIR) 2>/dev/null || true # Attempt to remove the directory, suppress error if not empty
	@echo "Cleanup complete."

# Declare clean target as phony to prevent conflicts with a file named 'clean'
.PHONY: all clean

