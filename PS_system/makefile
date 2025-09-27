CC=gcc
CFLAGS=-I

PRS2NET=prs2net
PRS2SIM_FLAGS=-Tsky130l

Xyce=Xyce

GNUPLOT=gnuplot

ROOT_DIR=../

ACT_PATH=$(abspath $(ROOT_DIR))
export ACT_PATH:=$(ACT_PATH)

all: gnuplot

prs2net:
	$(PRS2NET) $(PRS2SIM_FLAGS) -s1e6 -p "system<>" -o system_meicc.sp system.act

xyce: prs2net
	$(Xyce) Ncounter_test.sp

gnuplot: xyce
	$(GNUPLOT) gnuplot.gp

.PHONY: clean
clean:
	rm -f ./*.png ./Ncounter.sp ./*.plot
