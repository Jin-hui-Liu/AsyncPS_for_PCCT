*
*---- act defproc: MSBit<> -----
* raw ports:  Bin.r Bin.a
*
.subckt MSBit Bin_ar Bin_aa
*.PININFO Bin_ar:I Bin_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* Bin_aa (combinational)
* __Bin__r (combinational)
*
* --- end node flags ---
*
xM0_ Vdd __Bin__r Bin_aa Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Bin_ar __Bin__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM2_ GND __Bin__r Bin_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM3_ GND Bin_ar __Bin__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_0 Bin_aa GND 5e-15
C_per_node_1 __Bin__r GND 5e-15
.ends
*---- end of process: MSBit<> -----
*
*---- act defproc: receiver<> -----
* raw ports:  Rin.r Rin.a
*
.subckt receiver Rin_ar Rin_aa
*.PININFO Rin_ar:I Rin_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* Rin_aa (combinational)
* __Rin__r (combinational)
*
* --- end node flags ---
*
xM0_ Vdd __Rin__r Rin_aa Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Rin_ar __Rin__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM2_ GND __Rin__r Rin_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM3_ GND Rin_ar __Rin__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_0 Rin_aa GND 5e-15
C_per_node_1 __Rin__r GND 5e-15
.ends
*---- end of process: receiver<> -----
*
*---- act defproc: onebit_counter<> -----
* raw ports:  Cin.d[0] Cin.d[1] Cin.r Cin.a Cout.d[0] Cout.d[1] Cout.r Cout.a rd.d[0] rd.r rd.a
*
.subckt onebit_counter Cin_ad_50_6 Cin_ad_51_6 Cin_ar Cin_aa Cout_ad_50_6 Cout_ad_51_6 Cout_ar Cout_aa rd_ad_50_6 rd_ar rd_aa
*.PININFO Cin_ad_50_6:I Cin_ad_51_6:I Cin_ar:I Cin_aa:O Cout_ad_50_6:O Cout_ad_51_6:O Cout_ar:O Cout_aa:I rd_ad_50_6:O rd_ar:O rd_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* Cout_ar (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* y2 (combinational)
* __Cin__a (combinational)
* Cin2__r (combinational)
* rd_ad_50_6 (state-holding): pup_reff=0.266667; pdn_reff=0.4
* Cin2__d_50_6 (combinational)
* __y (combinational)
* z2 (combinational)
* __Cin__d_50_6 (combinational)
* __z (combinational)
* Cin_aa (state-holding): pup_reff=0.266917; pdn_reff=0.4
* __rd__a (combinational)
* __Cin__r (combinational)
* x2 (combinational)
* __x (combinational)
* rd_ar (state-holding): pup_reff=0.263158; pdn_reff=0.4
* Cin2__a (combinational)
* y (state-holding): pup_reff=0.266667; pdn_reff=0.4
* Cin2__d_51_6 (combinational)
* z (state-holding): pup_reff=0.266667; pdn_reff=0.401994
* __Reset (combinational)
* __Cin__d_51_6 (combinational)
* Cout_ad_50_6 (state-holding): pup_reff=0.26087; pdn_reff=0.4
* Cout_ad_51_6 (state-holding): pup_reff=0.26087; pdn_reff=0.4
*
* --- end node flags ---
*
xM0_ Vdd Reset #5 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #13 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #23 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #41 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd Reset #50 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd __Reset z Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd Cout_aa #58 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd Reset #66 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM8_ Vdd Reset #70 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM9_ Vdd rd_aa __rd__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM10_ Vdd Reset __Reset Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM11_ Vdd rd_ad_50_6 __x Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM12_ Vdd __x x2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM13_ Vdd y __y Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM14_ Vdd __y y2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM15_ Vdd z __z Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM16_ Vdd __z z2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM17_ Vdd Cin_ad_50_6 __Cin__d_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM18_ Vdd __Cin__d_50_6 Cin2__d_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM19_ Vdd Cin_ad_51_6 __Cin__d_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM20_ Vdd __Cin__d_51_6 Cin2__d_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM21_ Vdd Cin_ar __Cin__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM22_ Vdd __Cin__r Cin2__r Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM23_ Vdd Cin_aa __Cin__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM24_ Vdd __Cin__a Cin2__a Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM25_ Vdd Cout_ar #fb76# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM26_keeper Vdd GND #77 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM27_keeper Vdd GND #79 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM28_ Vdd rd_ar #fb83# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM29_keeper Vdd GND #81 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM30_keeper Vdd GND #84 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM31_keeper Vdd GND #86 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM32_ Vdd Cout_ad_50_6 #fb90# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM33_keeper Vdd GND #88 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM34_ Vdd Cout_ad_51_6 #fb93# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM35_keeper Vdd GND #91 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM36_keeper Vdd GND #94 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM37_ GND Reset Cout_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM38_ GND __Cin__a Cout_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM39_ GND Reset rd_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM40_ GND __Cin__d_50_6 #19 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM41_ GND Reset Cin_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM42_ GND Cout_aa #34 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM43_ GND y2 #36 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM44_ GND Reset rd_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM45_ GND Cin2__d_50_6 #44 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM46_ GND Reset y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM47_ GND __Cin__a #53 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM48_ GND __Reset #59 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM49_ GND Reset Cout_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM50_ GND Cin2__r #67 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM51_ GND Reset Cout_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM52_ GND Cin2__r #71 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM53_ GND rd_aa __rd__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM54_ GND Reset __Reset GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM55_ GND rd_ad_50_6 __x GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM56_ GND __x x2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM57_ GND y __y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM58_ GND __y y2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM59_ GND z __z GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM60_ GND __z z2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM61_ GND Cin_ad_50_6 __Cin__d_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM62_ GND __Cin__d_50_6 Cin2__d_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM63_ GND Cin_ad_51_6 __Cin__d_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM64_ GND __Cin__d_51_6 Cin2__d_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM65_ GND Cin_ar __Cin__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM66_ GND __Cin__r Cin2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM67_ GND Cin_aa __Cin__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM68_ GND __Cin__a Cin2__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM69_ GND Cout_ar #fb76# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM70_keeper GND Vdd #78 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM71_keeper GND Vdd #80 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM72_ GND rd_ar #fb83# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM73_keeper GND Vdd #82 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM74_keeper GND Vdd #85 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM75_keeper GND Vdd #87 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM76_ GND Cout_ad_50_6 #fb90# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM77_keeper GND Vdd #89 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM78_ GND Cout_ad_51_6 #fb93# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM79_keeper GND Vdd #92 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM80_keeper GND Vdd #95 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
C_per_node_0 Cout_ar GND 5e-15
xM81_ #3 Cin2__r Cout_ar Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM82_keeper #77 #fb76# Cout_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM83_keeper #78 #fb76# Cout_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM84_ #4 __Cin__a #3 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM85_ #5 y2 #4 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 y2 GND 5e-15
C_per_node_2 __Cin__a GND 5e-15
C_per_node_3 Cin2__r GND 5e-15
C_per_node_4 rd_ad_50_6 GND 5e-15
xM86_ #11 z2 rd_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM87_ #17 Cin2__r rd_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM88_keeper #79 __x rd_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM89_keeper #80 __x rd_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM90_ #12 __y #11 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM91_ #13 Cin2__d_50_6 #12 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_5 Cin2__d_50_6 GND 5e-15
C_per_node_6 __y GND 5e-15
C_per_node_7 z2 GND 5e-15
xM92_ #18 __z #17 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM93_ #19 __y #18 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_8 __Cin__d_50_6 GND 5e-15
C_per_node_9 __z GND 5e-15
C_per_node_10 Cin_aa GND 5e-15
xM94_ #24 __Cin__r Cin_aa Vdd sky130_fd_pr__pfet_01v8  W=2.1 L=0.15 nrs=1 nrd=1 nf=1
xM95_ #27 x2 Cin_aa Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM96_ #31 __x Cin_aa Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM97_ #34 __Cin__r Cin_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM98_ #36 __Cin__r Cin_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM99_keeper #81 __Cin__a Cin_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM100_keeper #82 __Cin__a Cin_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM101_ #23 __rd__a #24 Vdd sky130_fd_pr__pfet_01v8  W=1.05 L=0.15 nrs=1 nrd=1 nf=1
xM102_ #23 Cin2__d_50_6 #29 Vdd sky130_fd_pr__pfet_01v8  W=1.8 L=0.15 nrs=1 nrd=1 nf=1
xM103_ #23 __Cin__r #32 Vdd sky130_fd_pr__pfet_01v8  W=1.425 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_11 __rd__a GND 5e-15
C_per_node_12 __Cin__r GND 5e-15
xM104_ #28 z2 #27 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM105_ #29 __Cin__r #28 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_13 x2 GND 5e-15
xM106_ #32 __y #31 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_14 __x GND 5e-15
C_per_node_15 rd_ar GND 5e-15
xM107_ #38 z2 rd_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM108_ #43 __z rd_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM109_keeper #84 #fb83# rd_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM110_keeper #85 #fb83# rd_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM111_ #39 Cin2__a #38 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM112_ #40 __Cin__r #39 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM113_ #41 __Cin__d_50_6 #40 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_16 Cin2__a GND 5e-15
xM114_ #44 Cin2__a #43 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_17 y GND 5e-15
xM115_ #46 __Cin__r y Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM116_ #52 __z y GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM117_keeper #86 __y y Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM118_keeper #87 __y y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM119_ #47 x2 #46 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM120_ #48 __z #47 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM121_ #49 Cin2__d_51_6 #48 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM122_ #50 Cin2__a #49 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_18 Cin2__d_51_6 GND 5e-15
xM123_ #53 __Cin__r #52 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_19 z GND 5e-15
xM124_ #56 y2 z Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM125_ #60 Cin2__d_51_6 z GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM126_ #59 y2 z GND sky130_fd_pr__nfet_01v8 W=0.525 L=0.15 nrs=1 nrd=1 nf=1
xM127_ #61 x2 z GND sky130_fd_pr__nfet_01v8 W=2.025 L=0.15 nrs=1 nrd=1 nf=1
xM128_keeper #88 __z z Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM129_keeper #89 __z z GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_20 __Reset GND 5e-15
xM130_ #57 Cin2__a #56 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM131_ #58 Cin2__r #57 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM132_ #59 Cin2__r #60 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM133_ #59 Cin2__r #62 GND sky130_fd_pr__nfet_01v8 W=0.975 L=0.15 nrs=1 nrd=1 nf=1
xM134_ #62 __Cin__d_51_6 #61 GND sky130_fd_pr__nfet_01v8 W=2.025 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_21 __Cin__d_51_6 GND 5e-15
C_per_node_22 Cout_ad_50_6 GND 5e-15
xM135_ #65 __Cin__d_50_6 Cout_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM136_ #67 __Cin__d_50_6 Cout_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM137_keeper #91 #fb90# Cout_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM138_keeper #92 #fb90# Cout_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM139_ #66 __Cin__r #65 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_23 Cout_ad_51_6 GND 5e-15
xM140_ #69 __Cin__d_51_6 Cout_ad_51_6 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM141_ #71 __Cin__d_51_6 Cout_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM142_keeper #94 #fb93# Cout_ad_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM143_keeper #95 #fb93# Cout_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM144_ #70 __Cin__r #69 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
.ends
*---- end of process: onebit_counter<> -----
*
*---- act defproc: counter<4> -----
* raw ports:  in.d[0] in.d[1] in.r in.a
*
.subckt counter_34_4 in_ad_50_6 in_ad_51_6 in_ar in_aa
*.PININFO in_ad_50_6:I in_ad_51_6:I in_ar:I in_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xB B_aBin_ar B_aBin_aa MSBit
xR_50_6 C_50_6_ard_ar C_50_6_ard_aa receiver
xR_51_6 C_51_6_ard_ar C_51_6_ard_aa receiver
xR_52_6 C_52_6_ard_ar C_52_6_ard_aa receiver
xR_53_6 C_53_6_ard_ar C_53_6_ard_aa receiver
xC_50_6 in_ad_50_6 in_ad_51_6 in_ar in_aa C_50_6_aCout_ad_50_6 C_50_6_aCout_ad_51_6 C_50_6_aCout_ar C_50_6_aCout_aa C_50_6_ard_ad_50_6 C_50_6_ard_ar C_50_6_ard_aa onebit_counter
xC_51_6 C_50_6_aCout_ad_50_6 C_50_6_aCout_ad_51_6 C_50_6_aCout_ar C_50_6_aCout_aa C_51_6_aCout_ad_50_6 C_51_6_aCout_ad_51_6 C_51_6_aCout_ar C_51_6_aCout_aa C_51_6_ard_ad_50_6 C_51_6_ard_ar C_51_6_ard_aa onebit_counter
xC_52_6 C_51_6_aCout_ad_50_6 C_51_6_aCout_ad_51_6 C_51_6_aCout_ar C_51_6_aCout_aa C_52_6_aCout_ad_50_6 C_52_6_aCout_ad_51_6 C_52_6_aCout_ar C_52_6_aCout_aa C_52_6_ard_ad_50_6 C_52_6_ard_ar C_52_6_ard_aa onebit_counter
xC_53_6 C_52_6_aCout_ad_50_6 C_52_6_aCout_ad_51_6 C_52_6_aCout_ar C_52_6_aCout_aa B_aBin_ad_50_6 B_aBin_ad_51_6 B_aBin_ar B_aBin_aa C_53_6_ard_ad_50_6 C_53_6_ard_ar C_53_6_ard_aa onebit_counter
.ends
*---- end of process: counter<4> -----
*
*---- act defproc: four_bits_counter<> -----
* raw ports:  IN.d[0] IN.d[1] IN.r IN.a
*
.subckt four_bits_counter IN_ad_50_6 IN_ad_51_6 IN_ar IN_aa
*.PININFO IN_ad_50_6:I IN_ad_51_6:I IN_ar:I IN_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xc IN_ad_50_6 IN_ad_51_6 IN_ar IN_aa counter_34_4
.ends
*---- end of process: four_bits_counter<> -----
