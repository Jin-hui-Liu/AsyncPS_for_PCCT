*
*---- act defproc: sink<> -----
* raw ports:  c1.r c1.a c2.r c2.a c3.r c3.a c4.r c4.a
*
.subckt sink c1_ar c1_aa c2_ar c2_aa c3_ar c3_aa c4_ar c4_aa
*.PININFO c1_ar:I c1_aa:O c2_ar:I c2_aa:O c3_ar:I c3_aa:O c4_ar:I c4_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* c1_aa (combinational)
* __c1__r (combinational)
* c2_aa (combinational)
* __c2__r (combinational)
* c3_aa (combinational)
* __c3__r (combinational)
* c4_aa (combinational)
* __c4__r (combinational)
*
* --- end node flags ---
*
xM0_ Vdd Reset #3 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #7 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #10 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #13 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd c1_ar __c1__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd c2_ar __c2__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd c3_ar __c3__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd c4_ar __c4__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM8_ GND Reset c1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM9_ GND __c1__r c1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM10_ GND Reset c2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM11_ GND __c2__r c2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM12_ GND Reset c3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM13_ GND __c3__r c3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM14_ GND Reset c4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM15_ GND __c4__r c4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM16_ GND c1_ar __c1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM17_ GND c2_ar __c2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM18_ GND c3_ar __c3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM19_ GND c4_ar __c4__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_0 c1_aa GND 5e-15
xM20_ #3 __c1__r c1_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 __c1__r GND 5e-15
C_per_node_2 c2_aa GND 5e-15
xM21_ #7 __c2__r c2_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_3 __c2__r GND 5e-15
C_per_node_4 c3_aa GND 5e-15
xM22_ #10 __c3__r c3_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_5 __c3__r GND 5e-15
C_per_node_6 c4_aa GND 5e-15
xM23_ #13 __c4__r c4_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_7 __c4__r GND 5e-15
.ends
*---- end of process: sink<> -----
*
*---- act defproc: subtractor<> -----
* raw ports:  max1.r max1.a min1.r min1.a max2.r max2.a min2.r min2.a max3.r max3.a min3.r min3.a max4.r max4.a reset.r reset.a O1.r O1.a O2.r O2.a O3.r O3.a O4.r O4.a
*
.subckt subtractor max1_ar max1_aa min1_ar min1_aa max2_ar max2_aa min2_ar min2_aa max3_ar max3_aa min3_ar min3_aa max4_ar max4_aa reset_ar reset_aa O1_ar O1_aa O2_ar O2_aa O3_ar O3_aa O4_ar O4_aa
*.PININFO max1_ar:I max1_aa:O min1_ar:I min1_aa:O max2_ar:I max2_aa:O min2_ar:I min2_aa:O max3_ar:I max3_aa:O min3_ar:I min3_aa:O max4_ar:I max4_aa:O reset_ar:I reset_aa:O O1_ar:O O1_aa:I O2_ar:O O2_aa:I O3_ar:O O3_aa:I O4_ar:O O4_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* O1_ar (state-holding): pup_reff=0.266917; pdn_reff=0.4
* __max1__r (combinational)
* max1_aa (state-holding): pup_reff=0.26087; pdn_reff=0.4
* __max2__r (combinational)
* max2_aa (state-holding): pup_reff=0.26087; pdn_reff=0.4
* __b1 (combinational)
* __max3__r (combinational)
* max3_aa (state-holding): pup_reff=0.26087; pdn_reff=0.4
* __b2 (combinational)
* __max4__r (combinational)
* max4_aa (state-holding): pup_reff=0.26087; pdn_reff=0.4
* b1n (combinational)
* b2n (combinational)
* O2_ar (state-holding): pup_reff=0.263624; pdn_reff=0.4
* O3_ar (state-holding): pup_reff=0.263624; pdn_reff=0.4
* O4_ar (state-holding): pup_reff=0.263158; pdn_reff=0.4
* b1 (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* __min3__r (combinational)
* __min1__r (combinational)
* b2 (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* __min2__r (combinational)
* min3_aa (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* min2_aa (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* min1_aa (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* reset_aa (state-holding): pup_reff=0.266667; pdn_reff=0.333333
* __reset__r (combinational)
* __O1__a (combinational)
* __O2__a (combinational)
* __O3__a (combinational)
* __O4__a (combinational)
*
* --- end node flags ---
*
xM0_ Vdd Reset #3 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #30 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #43 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #58 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd Reset #62 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd Reset #68 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd Reset #74 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd Reset #78 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM8_ Vdd Reset #82 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM9_ Vdd Reset #86 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM10_ Vdd Reset #89 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM11_ Vdd Reset #93 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM12_ Vdd Reset #98 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM13_ Vdd Reset #104 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM14_ Vdd O1_aa __O1__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM15_ Vdd O2_aa __O2__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM16_ Vdd O3_aa __O3__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM17_ Vdd O4_aa __O4__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM18_ Vdd max1_ar __max1__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM19_ Vdd max2_ar __max2__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM20_ Vdd max3_ar __max3__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM21_ Vdd max4_ar __max4__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM22_ Vdd min1_ar __min1__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM23_ Vdd min2_ar __min2__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM24_ Vdd min3_ar __min3__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM25_ Vdd reset_ar __reset__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM26_ Vdd b1 __b1 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM27_ Vdd __b1 b1n Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM28_ Vdd b2 __b2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM29_ Vdd __b2 b2n Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM30_ Vdd O1_ar #fb119# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM31_ Vdd max1_aa #fb122# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM32_keeper Vdd GND #120 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM33_ Vdd max2_aa #fb125# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM34_keeper Vdd GND #123 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM35_ Vdd max3_aa #fb128# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM36_keeper Vdd GND #126 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM37_ Vdd max4_aa #fb131# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM38_keeper Vdd GND #129 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM39_ Vdd O2_ar #fb134# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM40_keeper Vdd GND #132 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM41_ Vdd O3_ar #fb137# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM42_keeper Vdd GND #135 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM43_ Vdd O4_ar #fb140# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM44_keeper Vdd GND #138 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM45_keeper Vdd GND #141 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM46_keeper Vdd GND #143 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM47_ Vdd min3_aa #fb147# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM48_keeper Vdd GND #145 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM49_ Vdd min2_aa #fb150# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM50_keeper Vdd GND #148 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM51_ Vdd min1_aa #fb153# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM52_keeper Vdd GND #151 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM53_ Vdd reset_aa #fb156# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM54_keeper Vdd GND #154 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM55_keeper Vdd GND #157 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM56_ GND Reset O1_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM57_ GND max1_aa O1_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM58_ GND max2_aa #23 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM59_ GND max3_aa #25 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM60_ GND max4_aa #28 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM61_ GND Reset O2_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM62_ GND max2_aa #38 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM63_ GND max3_aa #39 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM64_ GND max4_aa #41 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM65_ GND Reset O3_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM66_ GND max3_aa #51 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM67_ GND max4_aa #53 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM68_ GND Reset O4_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM69_ GND max4_aa #60 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM70_ GND Reset b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM71_ GND min2_ar b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM72_ GND reset_ar b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM73_ GND Reset b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM74_ GND min1_ar b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM75_ GND reset_ar b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM76_ GND Reset min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM77_ GND __min3__r min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM78_ GND Reset min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM79_ GND __min2__r min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM80_ GND Reset min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM81_ GND __min1__r min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM82_ GND Reset reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM83_ GND __reset__r reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM84_ GND Reset max1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM85_ GND __O1__a #91 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM86_ GND Reset max2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM87_ GND __O1__a #96 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM88_ GND Reset max3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM89_ GND __O1__a #102 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM90_ GND Reset max4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM91_ GND __O1__a #109 GND sky130_fd_pr__nfet_01v8 W=1.875 L=0.15 nrs=1 nrd=1 nf=1
xM92_ GND O1_aa __O1__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM93_ GND O2_aa __O2__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM94_ GND O3_aa __O3__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM95_ GND O4_aa __O4__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM96_ GND max1_ar __max1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM97_ GND max2_ar __max2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM98_ GND max3_ar __max3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM99_ GND max4_ar __max4__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM100_ GND min1_ar __min1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM101_ GND min2_ar __min2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM102_ GND min3_ar __min3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM103_ GND reset_ar __reset__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM104_ GND b1 __b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM105_ GND __b1 b1n GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM106_ GND b2 __b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM107_ GND __b2 b2n GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM108_ GND O1_ar #fb119# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM109_ GND max1_aa #fb122# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM110_keeper GND Vdd #121 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM111_ GND max2_aa #fb125# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM112_keeper GND Vdd #124 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM113_ GND max3_aa #fb128# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM114_keeper GND Vdd #127 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM115_ GND max4_aa #fb131# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM116_keeper GND Vdd #130 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM117_ GND O2_ar #fb134# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM118_keeper GND Vdd #133 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM119_ GND O3_ar #fb137# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM120_keeper GND Vdd #136 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM121_ GND O4_ar #fb140# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM122_keeper GND Vdd #139 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM123_keeper GND Vdd #142 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM124_keeper GND Vdd #144 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM125_ GND min3_aa #fb147# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM126_keeper GND Vdd #146 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM127_ GND min2_aa #fb150# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM128_keeper GND Vdd #149 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM129_ GND min1_aa #fb153# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM130_keeper GND Vdd #152 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM131_ GND reset_aa #fb156# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM132_keeper GND Vdd #155 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM133_keeper GND Vdd #158 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
C_per_node_0 O1_ar GND 5e-15
xM134_ #5 max1_aa O1_ar Vdd sky130_fd_pr__pfet_01v8  W=2.1 L=0.15 nrs=1 nrd=1 nf=1
xM135_ #8 __b1 O1_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM136_ #13 __b2 O1_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM137_ #18 __b2 O1_ar Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM138_ #23 b1n O1_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM139_ #25 b2n O1_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM140_ #27 b2n O1_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM141_keeper #120 #fb119# O1_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM142_keeper #121 #fb119# O1_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM143_ #3 __max1__r #5 Vdd sky130_fd_pr__pfet_01v8  W=1.05 L=0.15 nrs=1 nrd=1 nf=1
xM144_ #3 __max2__r #9 Vdd sky130_fd_pr__pfet_01v8  W=1.425 L=0.15 nrs=1 nrd=1 nf=1
xM145_ #3 __max3__r #14 Vdd sky130_fd_pr__pfet_01v8  W=1.425 L=0.15 nrs=1 nrd=1 nf=1
xM146_ #3 __max4__r #20 Vdd sky130_fd_pr__pfet_01v8  W=1.8 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 __max1__r GND 5e-15
C_per_node_2 max1_aa GND 5e-15
xM147_ #88 __max1__r max1_aa Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM148_ #91 __max1__r max1_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM149_keeper #123 #fb122# max1_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM150_keeper #124 #fb122# max1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM151_ #9 max2_aa #8 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_3 __max2__r GND 5e-15
C_per_node_4 max2_aa GND 5e-15
xM152_ #92 __max2__r max2_aa Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM153_ #95 __max2__r max2_aa GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM154_keeper #126 #fb125# max2_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM155_keeper #127 #fb125# max2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_5 __b1 GND 5e-15
xM156_ #14 max3_aa #13 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_6 __max3__r GND 5e-15
C_per_node_7 max3_aa GND 5e-15
xM157_ #97 __max3__r max3_aa Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM158_ #100 __max3__r max3_aa GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM159_keeper #129 #fb128# max3_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM160_keeper #130 #fb128# max3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_8 __b2 GND 5e-15
xM161_ #19 __b1 #18 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM162_ #20 max4_aa #19 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_9 __max4__r GND 5e-15
C_per_node_10 max4_aa GND 5e-15
xM163_ #103 __max4__r max4_aa Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM164_ #106 __max4__r max4_aa GND sky130_fd_pr__nfet_01v8 W=1.875 L=0.15 nrs=1 nrd=1 nf=1
xM165_keeper #132 #fb131# max4_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM166_keeper #133 #fb131# max4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_11 b1n GND 5e-15
C_per_node_12 b2n GND 5e-15
xM167_ #28 b1n #27 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_13 O2_ar GND 5e-15
xM168_ #31 b1n O2_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM169_ #33 __b1 O2_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM170_ #35 __b2 O2_ar Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM171_ #38 __b1 O2_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM172_ #39 b1n O2_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM173_ #40 b2n O2_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM174_keeper #135 #fb134# O2_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM175_keeper #136 #fb134# O2_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM176_ #30 __max2__r #32 Vdd sky130_fd_pr__pfet_01v8  W=1.425 L=0.15 nrs=1 nrd=1 nf=1
xM177_ #30 __max3__r #34 Vdd sky130_fd_pr__pfet_01v8  W=1.425 L=0.15 nrs=1 nrd=1 nf=1
xM178_ #30 __max4__r #37 Vdd sky130_fd_pr__pfet_01v8  W=1.8 L=0.15 nrs=1 nrd=1 nf=1
xM179_ #32 max2_aa #31 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM180_ #34 max3_aa #33 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM181_ #36 b1n #35 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM182_ #37 max4_aa #36 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM183_ #41 __b1 #40 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_14 O3_ar GND 5e-15
xM184_ #44 b2n O3_ar Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM185_ #47 b2n O3_ar Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM186_ #50 __b2 O3_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM187_ #52 __b2 O3_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM188_keeper #138 #fb137# O3_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM189_keeper #139 #fb137# O3_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM190_ #43 __max3__r #46 Vdd sky130_fd_pr__pfet_01v8  W=1.8 L=0.15 nrs=1 nrd=1 nf=1
xM191_ #43 __max4__r #49 Vdd sky130_fd_pr__pfet_01v8  W=1.8 L=0.15 nrs=1 nrd=1 nf=1
xM192_ #45 b1n #44 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM193_ #46 max3_aa #45 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM194_ #48 __b1 #47 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM195_ #49 max4_aa #48 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM196_ #51 __b1 #50 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM197_ #53 b1n #52 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_15 O4_ar GND 5e-15
xM198_ #55 b2n O4_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM199_ #59 __b2 O4_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM200_keeper #141 #fb140# O4_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM201_keeper #142 #fb140# O4_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM202_ #56 b1n #55 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM203_ #57 max4_aa #56 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM204_ #58 __max4__r #57 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM205_ #60 __b1 #59 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_16 b1 GND 5e-15
xM206_ #62 __min3__r b1 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM207_ #62 __min1__r b1 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM208_keeper #143 __b1 b1 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM209_keeper #144 __b1 b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_17 __min3__r GND 5e-15
C_per_node_18 __min1__r GND 5e-15
C_per_node_19 b2 GND 5e-15
xM210_ #68 __min3__r b2 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM211_ #68 __min2__r b2 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM212_keeper #145 __b2 b2 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM213_keeper #146 __b2 b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_20 __min2__r GND 5e-15
C_per_node_21 min3_aa GND 5e-15
xM214_ #72 __min3__r min3_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM215_keeper #148 #fb147# min3_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM216_keeper #149 #fb147# min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM217_ #73 __b2 #72 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM218_ #74 __b1 #73 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_22 min2_aa GND 5e-15
xM219_ #76 __min2__r min2_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM220_keeper #151 #fb150# min2_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM221_keeper #152 #fb150# min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM222_ #77 __b2 #76 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM223_ #78 b1n #77 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_23 min1_aa GND 5e-15
xM224_ #80 __min1__r min1_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM225_keeper #154 #fb153# min1_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM226_keeper #155 #fb153# min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM227_ #81 b2n #80 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM228_ #82 __b1 #81 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_24 reset_aa GND 5e-15
xM229_ #84 __reset__r reset_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM230_keeper #157 #fb156# reset_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM231_keeper #158 #fb156# reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM232_ #85 b2n #84 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM233_ #86 b1n #85 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_25 __reset__r GND 5e-15
xM234_ #89 __O1__a #88 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_26 __O1__a GND 5e-15
xM235_ #93 __O1__a #92 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM236_ #93 __O2__a #92 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_27 __O2__a GND 5e-15
xM237_ #96 __O2__a #95 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM238_ #98 __O1__a #97 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM239_ #98 __O2__a #97 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM240_ #98 __O3__a #97 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_28 __O3__a GND 5e-15
xM241_ #101 __O3__a #100 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM242_ #102 __O2__a #101 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM243_ #104 __O1__a #103 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM244_ #104 __O2__a #103 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM245_ #104 __O3__a #103 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM246_ #104 __O4__a #103 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_29 __O4__a GND 5e-15
xM247_ #107 __O4__a #106 GND sky130_fd_pr__nfet_01v8 W=1.875 L=0.15 nrs=1 nrd=1 nf=1
xM248_ #108 __O3__a #107 GND sky130_fd_pr__nfet_01v8 W=1.875 L=0.15 nrs=1 nrd=1 nf=1
xM249_ #109 __O2__a #108 GND sky130_fd_pr__nfet_01v8 W=1.875 L=0.15 nrs=1 nrd=1 nf=1
.ends
*---- end of process: subtractor<> -----
*
*---- act defproc: system<> -----
* raw ports:  max1.r max1.a min1.r min1.a max2.r max2.a min2.r min2.a max3.r max3.a min3.r min3.a max4.r max4.a subreset.r subreset.a
*
.subckt system max1_ar max1_aa min1_ar min1_aa max2_ar max2_aa min2_ar min2_aa max3_ar max3_aa min3_ar min3_aa max4_ar max4_aa subreset_ar subreset_aa
*.PININFO max1_ar:I max1_aa:O min1_ar:I min1_aa:O max2_ar:I max2_aa:O min2_ar:I min2_aa:O max3_ar:I max3_aa:O min3_ar:I min3_aa:O max4_ar:I max4_aa:O subreset_ar:I subreset_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xC C_ac1_ar C_ac1_aa C_ac2_ar C_ac2_aa C_ac3_ar C_ac3_aa C_ac4_ar C_ac4_aa sink
xSUB max1_ar max1_aa min1_ar min1_aa max2_ar max2_aa min2_ar min2_aa max3_ar max3_aa min3_ar min3_aa max4_ar max4_aa subreset_ar subreset_aa C_ac1_ar C_ac1_aa C_ac2_ar C_ac2_aa C_ac3_ar C_ac3_aa C_ac4_ar C_ac4_aa subtractor
.ends
*---- end of process: system<> -----
