#
# New suffixes to be handled by the Makefile
#    .mag : layout
#    .ext : extract file
# .sim/.al: sim file for irsim simulation
#  .irsim : irsim script file
#    .irx : dummy used to run an irsim simulation
#
.SUFFIXES: .mag .tcl .rect .ext

PRS2CELLS=prs2cells
PRS2CELLS_FLAGS=-Tsky130l

INTERACT=interact
INTERACT_FLAGS=-Tsky130l




#  List all cells
#
SRC_CELLS_RECT=rect_files
CELLS_RECT_EXTENSION=rect
#
# The target is tcl files for each
# cells
#
CELLS_TCL=$(CELLS:.rect=.tcl)
CELLS_EXT=$(CELLS:.rect=.ext)
CELLS_MAG=$(CELLS:.rect=.mag)

CELLS_TCL_NAME=$(notdir $(CELLS_TCL))
CELLS_EXT_NAME=$(notdir $(CELLS_EXT))
CELLS_MAG_NAME=$(notdir $(CELLS_MAG))


all: interact

interact:
	cat *.src | $(INTERACT) $(INTERACT_FLAGS) || true
	mkdir -p lef_def
	mv *.lef lef_def
	mv *.def lef_def
	test -d $(SRC_CELLS_RECT) || mkdir $(SRC_CELLS_RECT) && mv *.rect ./$(SRC_CELLS_RECT) && mv *.log ./$(SRC_CELLS_RECT)
	$(eval CELLS:=$(shell find $(SRC_CELLS_RECT) -type f -name *.$(CELLS_RECT_EXTENSION)))
	echo "Cells are: $(CELLS_TCL_NAME)"
	mkdir -p tcl_files
	$(MAKE) $(CELLS_TCL_NAME)
	mkdir -p mag_files
	mkdir -p mag_files_save_tcl_mag
	$(MAKE) $(CELLS_MAG_NAME)
	cp ./mag_files/*.mag ./mag_files_save_tcl_mag || true

extract:
	mkdir -p mag_files_save && mkdir -p ext_files
	cp ./mag_files/*.mag ./mag_files_save
	$(eval CELLS:=$(shell find $(SRC_CELLS_RECT) -type f -name *.$(CELLS_RECT_EXTENSION)))
	echo "Cells are: $(CELLS_EXT_NAME)"
	$(MAKE) $(CELLS_EXT_NAME)
	

#
# Implicit rules using pattern matching
#

%.tcl: ./$(SRC_CELLS_RECT)/%.rect
	echo "Converting $* into tcl file ..."
	cd ./tcl_files && ../scaling_mag.pl ../$(SRC_CELLS_RECT)/$*.rect 7.5 > $*.tcl

%.ext: ./mag_files_save/%.mag
	echo "Extracting layout $*..."
	chmod +x magic_cmds
	cd ./ext_files && ../magic_cmds ../mag_files_save/$* extract >> $*.log 2>&1
	cp ./mag_files_save/*.ext ./ext_files

%.mag: ./tcl_files/%.tcl
	cd ./mag_files && chmod +x ../magic_cmds && test -f $*.mag || ../magic_cmds "source ../tcl_files/$*.tcl; save $*" >> $*.log 2>&1



.PHONY: clean
clean:
	rm -f ./cells.act ./*.lef ./*.def || true
	rm -r mag_files mag_files_save mag_files_save_tcl_mag tcl_files rect_files ext_files lef_def|| true

