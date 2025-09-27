*
*---- act defproc: OR8X1<> -----
* raw ports:  N S W E NE NW SE SW Y
*
.subckt OR8X1 N S W E NE NW SE SW Y
*.PININFO N:I S:I W:I E:I NE:I NW:I SE:I SW:I Y:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __Y (combinational)
* Y (combinational)
*
* --- end node flags ---
*
xM0_ Vdd N #17 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd __Y Y Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM2_ GND N __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM3_ GND S __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM4_ GND W __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM5_ GND E __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM6_ GND NE __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM7_ GND NW __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM8_ GND SE __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM9_ GND SW __Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM10_ GND __Y Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_0 __Y GND 5e-15
xM11_ #11 SW __Y Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM12_ #12 SE #11 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM13_ #13 NW #12 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM14_ #14 NE #13 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM15_ #15 E #14 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM16_ #16 W #15 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM17_ #17 S #16 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 Y GND 5e-15
.ends
*---- end of process: OR8X1<> -----
*
*---- act defproc: subtractor<> -----
* raw ports:  max1.r max1.a min1.r min1.a max2.r max2.a min2.r min2.a max3.r max3.a min3.r min3.a max4.r max4.a reset.r reset.a O1.d[0] O1.d[1] O1.r O1.a O2.d[0] O2.d[1] O2.r O2.a O3.d[0] O3.d[1] O3.r O3.a O4.d[0] O4.d[1] O4.r O4.a
*
.subckt subtractor max1_ar max1_aa min1_ar min1_aa max2_ar max2_aa min2_ar min2_aa max3_ar max3_aa min3_ar min3_aa max4_ar max4_aa reset_ar reset_aa O1_ad_50_6 O1_ad_51_6 O1_ar O1_aa O2_ad_50_6 O2_ad_51_6 O2_ar O2_aa O3_ad_50_6 O3_ad_51_6 O3_ar O3_aa O4_ad_50_6 O4_ad_51_6 O4_ar O4_aa
*.PININFO max1_ar:I max1_aa:O min1_ar:I min1_aa:O max2_ar:I max2_aa:O min2_ar:I min2_aa:O max3_ar:I max3_aa:O min3_ar:I min3_aa:O max4_ar:I max4_aa:O reset_ar:I reset_aa:O O1_ad_50_6:O O1_ad_51_6:O O1_ar:O O1_aa:I O2_ad_50_6:O O2_ad_51_6:O O2_ar:O O2_aa:I O3_ad_50_6:O O3_ad_51_6:O O3_ar:O O3_aa:I O4_ad_50_6:O O4_ad_51_6:O O4_ar:O O4_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* O1_ar (state-holding): pup_reff=0.0881851; pdn_reff=0.133333
* __max1__r (combinational)
* max1_aa (state-holding): pup_reff=0.26087; pdn_reff=0.4
* __max2__r (combinational)
* max2_aa (state-holding): pup_reff=0.133333; pdn_reff=0.2
* __b1 (combinational)
* __max3__r (combinational)
* max3_aa (state-holding): pup_reff=0.133333; pdn_reff=0.2
* __b2 (combinational)
* __max4__r (combinational)
* max4_aa (state-holding): pup_reff=0.133333; pdn_reff=0.2
* b1n (combinational)
* b2n (combinational)
* O2_ar (state-holding): pup_reff=0.132027; pdn_reff=0.2
* O3_ar (state-holding): pup_reff=0.132027; pdn_reff=0.2
* O4_ar (state-holding): pup_reff=0.131579; pdn_reff=0.2
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
* O1_ad_50_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* __Reset (combinational)
* O1_ad_51_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* O2_ad_50_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* O2_ad_51_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* O3_ad_50_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* O3_ad_51_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* O4_ad_50_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
* O4_ad_51_6 (state-holding): pup_reff=-1; pdn_reff=0.333333
*
* --- end node flags ---
*
xM0_ Vdd Reset #3 Vdd sky130_fd_pr__pfet_01v8  W=8.475 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #30 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #43 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #58 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd Reset #62 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd Reset #68 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd Reset #74 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd Reset #78 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM8_ Vdd Reset #82 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM9_ Vdd Reset #86 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM10_ Vdd Reset #89 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM11_ Vdd Reset #93 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM12_ Vdd Reset #98 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM13_ Vdd Reset #104 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
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
xM26_ Vdd Reset __Reset Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM27_ Vdd b1 __b1 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM28_ Vdd __b1 b1n Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM29_ Vdd b2 __b2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM30_ Vdd __b2 b2n Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM31_ Vdd O1_ar #fb128# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM32_ Vdd max1_aa #fb131# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM33_keeper Vdd GND #129 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.225 nrs=1 nrd=1 nf=1
xM34_ Vdd max2_aa #fb134# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM35_keeper Vdd GND #132 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM36_ Vdd max3_aa #fb137# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM37_keeper Vdd GND #135 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM38_ Vdd max4_aa #fb140# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM39_keeper Vdd GND #138 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM40_ Vdd O2_ar #fb143# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM41_keeper Vdd GND #141 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM42_ Vdd O3_ar #fb146# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM43_keeper Vdd GND #144 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM44_ Vdd O4_ar #fb149# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM45_keeper Vdd GND #147 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM46_keeper Vdd GND #150 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM47_keeper Vdd GND #152 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM48_ Vdd min3_aa #fb156# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM49_keeper Vdd GND #154 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM50_ Vdd min2_aa #fb159# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM51_keeper Vdd GND #157 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM52_ Vdd min1_aa #fb162# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM53_keeper Vdd GND #160 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM54_ Vdd reset_aa #fb165# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM55_keeper Vdd GND #163 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM56_ Vdd O1_ad_50_6 #fb168# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM57_keeper Vdd GND #166 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM58_ Vdd O1_ad_51_6 #fb170# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM59_keeper Vdd GND #169 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM60_ Vdd O2_ad_50_6 #fb172# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM61_keeper Vdd GND #171 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM62_ Vdd O2_ad_51_6 #fb174# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM63_keeper Vdd GND #173 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM64_ Vdd O3_ad_50_6 #fb176# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM65_keeper Vdd GND #175 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM66_ Vdd O3_ad_51_6 #fb178# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM67_keeper Vdd GND #177 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM68_ Vdd O4_ad_50_6 #fb180# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM69_keeper Vdd GND #179 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM70_ Vdd O4_ad_51_6 #fb182# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM71_keeper Vdd GND #181 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM72_keeper Vdd GND #183 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM73_ GND Reset O1_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM74_ GND max1_aa O1_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM75_ GND max2_aa #23 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM76_ GND max3_aa #25 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM77_ GND max4_aa #28 GND sky130_fd_pr__nfet_01v8 W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM78_ GND Reset O2_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM79_ GND max2_aa #38 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM80_ GND max3_aa #39 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM81_ GND max4_aa #41 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM82_ GND Reset O3_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM83_ GND max3_aa #51 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM84_ GND max4_aa #53 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM85_ GND Reset O4_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM86_ GND max4_aa #60 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM87_ GND Reset b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM88_ GND min2_ar b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM89_ GND reset_ar b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM90_ GND Reset b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM91_ GND min1_ar b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM92_ GND reset_ar b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM93_ GND Reset min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM94_ GND __min3__r min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM95_ GND Reset min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM96_ GND __min2__r min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM97_ GND Reset min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM98_ GND __min1__r min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM99_ GND Reset reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM100_ GND __reset__r reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM101_ GND Reset max1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM102_ GND __O1__a #91 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM103_ GND Reset max2_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM104_ GND __O1__a #96 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM105_ GND Reset max3_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM106_ GND __O1__a #102 GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM107_ GND Reset max4_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM108_ GND __O1__a #109 GND sky130_fd_pr__nfet_01v8 W=3.75 L=0.15 nrs=1 nrd=1 nf=1
xM109_ GND __Reset O1_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM110_ GND __Reset O1_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM111_ GND __Reset O2_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM112_ GND __Reset O2_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM113_ GND __Reset O3_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM114_ GND __Reset O3_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM115_ GND __Reset O4_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM116_ GND __Reset O4_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM117_ GND O1_aa __O1__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM118_ GND O2_aa __O2__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM119_ GND O3_aa __O3__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM120_ GND O4_aa __O4__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM121_ GND max1_ar __max1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM122_ GND max2_ar __max2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM123_ GND max3_ar __max3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM124_ GND max4_ar __max4__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM125_ GND min1_ar __min1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM126_ GND min2_ar __min2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM127_ GND min3_ar __min3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM128_ GND reset_ar __reset__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM129_ GND Reset __Reset GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM130_ GND b1 __b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM131_ GND __b1 b1n GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM132_ GND b2 __b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM133_ GND __b2 b2n GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM134_ GND O1_ar #fb128# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM135_ GND max1_aa #fb131# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM136_keeper GND Vdd #130 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM137_ GND max2_aa #fb134# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM138_keeper GND Vdd #133 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM139_ GND max3_aa #fb137# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM140_keeper GND Vdd #136 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM141_ GND max4_aa #fb140# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM142_keeper GND Vdd #139 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM143_ GND O2_ar #fb143# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM144_keeper GND Vdd #142 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM145_ GND O3_ar #fb146# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM146_keeper GND Vdd #145 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM147_ GND O4_ar #fb149# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM148_keeper GND Vdd #148 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM149_keeper GND Vdd #151 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM150_keeper GND Vdd #153 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM151_ GND min3_aa #fb156# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM152_keeper GND Vdd #155 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM153_ GND min2_aa #fb159# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM154_keeper GND Vdd #158 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM155_ GND min1_aa #fb162# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM156_keeper GND Vdd #161 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM157_ GND reset_aa #fb165# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM158_keeper GND Vdd #164 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM159_ GND O1_ad_50_6 #fb168# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM160_keeper GND #fb168# O1_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM161_ GND O1_ad_51_6 #fb170# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM162_keeper GND #fb170# O1_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM163_ GND O2_ad_50_6 #fb172# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM164_keeper GND #fb172# O2_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM165_ GND O2_ad_51_6 #fb174# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM166_keeper GND #fb174# O2_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM167_ GND O3_ad_50_6 #fb176# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM168_keeper GND #fb176# O3_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM169_ GND O3_ad_51_6 #fb178# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM170_keeper GND #fb178# O3_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM171_ GND O4_ad_50_6 #fb180# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM172_keeper GND #fb180# O4_ad_50_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM173_ GND O4_ad_51_6 #fb182# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM174_keeper GND #fb182# O4_ad_51_6 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM175_keeper GND Vdd #167 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
C_per_node_0 O1_ar GND 5e-15
xM176_ #5 max1_aa O1_ar Vdd sky130_fd_pr__pfet_01v8  W=6.375 L=0.15 nrs=1 nrd=1 nf=1
xM177_ #8 __b1 O1_ar Vdd sky130_fd_pr__pfet_01v8  W=8.475 L=0.15 nrs=1 nrd=1 nf=1
xM178_ #13 __b2 O1_ar Vdd sky130_fd_pr__pfet_01v8  W=8.475 L=0.15 nrs=1 nrd=1 nf=1
xM179_ #18 __b2 O1_ar Vdd sky130_fd_pr__pfet_01v8  W=10.65 L=0.15 nrs=1 nrd=1 nf=1
xM180_ #23 b1n O1_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM181_ #25 b2n O1_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM182_ #27 b2n O1_ar GND sky130_fd_pr__nfet_01v8 W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM183_keeper #129 #fb128# O1_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM184_keeper #130 #fb128# O1_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM185_ #3 __max1__r #5 Vdd sky130_fd_pr__pfet_01v8  W=3.225 L=0.15 nrs=1 nrd=1 nf=1
xM186_ #3 __max2__r #9 Vdd sky130_fd_pr__pfet_01v8  W=4.275 L=0.15 nrs=1 nrd=1 nf=1
xM187_ #3 __max3__r #14 Vdd sky130_fd_pr__pfet_01v8  W=4.275 L=0.15 nrs=1 nrd=1 nf=1
xM188_ #3 __max4__r #20 Vdd sky130_fd_pr__pfet_01v8  W=5.325 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 __max1__r GND 5e-15
C_per_node_2 max1_aa GND 5e-15
xM189_ #88 __max1__r max1_aa Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM190_ #91 __max1__r max1_aa GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM191_keeper #132 #fb131# max1_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM192_keeper #133 #fb131# max1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM193_ #9 max2_aa #8 Vdd sky130_fd_pr__pfet_01v8  W=8.475 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_3 __max2__r GND 5e-15
C_per_node_4 max2_aa GND 5e-15
xM194_ #92 __max2__r max2_aa Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM195_ #95 __max2__r max2_aa GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM196_keeper #135 #fb134# max2_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM197_keeper #136 #fb134# max2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_5 __b1 GND 5e-15
xM198_ #14 max3_aa #13 Vdd sky130_fd_pr__pfet_01v8  W=8.475 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_6 __max3__r GND 5e-15
C_per_node_7 max3_aa GND 5e-15
xM199_ #97 __max3__r max3_aa Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM200_ #100 __max3__r max3_aa GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM201_keeper #138 #fb137# max3_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM202_keeper #139 #fb137# max3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_8 __b2 GND 5e-15
xM203_ #19 __b1 #18 Vdd sky130_fd_pr__pfet_01v8  W=10.65 L=0.15 nrs=1 nrd=1 nf=1
xM204_ #20 max4_aa #19 Vdd sky130_fd_pr__pfet_01v8  W=10.65 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_9 __max4__r GND 5e-15
C_per_node_10 max4_aa GND 5e-15
xM205_ #103 __max4__r max4_aa Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM206_ #106 __max4__r max4_aa GND sky130_fd_pr__nfet_01v8 W=3.75 L=0.15 nrs=1 nrd=1 nf=1
xM207_keeper #141 #fb140# max4_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM208_keeper #142 #fb140# max4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_11 b1n GND 5e-15
C_per_node_12 b2n GND 5e-15
xM209_ #28 b1n #27 GND sky130_fd_pr__nfet_01v8 W=3.375 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_13 O2_ar GND 5e-15
xM210_ #31 b1n O2_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM211_ #33 __b1 O2_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM212_ #35 __b2 O2_ar Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM213_ #38 __b1 O2_ar GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM214_ #39 b1n O2_ar GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM215_ #40 b2n O2_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM216_keeper #144 #fb143# O2_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM217_keeper #145 #fb143# O2_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM218_ #30 __max2__r #32 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM219_ #30 __max3__r #34 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM220_ #30 __max4__r #37 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM221_ #32 max2_aa #31 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM222_ #34 max3_aa #33 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM223_ #36 b1n #35 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM224_ #37 max4_aa #36 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM225_ #41 __b1 #40 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_14 O3_ar GND 5e-15
xM226_ #44 b2n O3_ar Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM227_ #47 b2n O3_ar Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM228_ #50 __b2 O3_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM229_ #52 __b2 O3_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM230_keeper #147 #fb146# O3_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM231_keeper #148 #fb146# O3_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM232_ #43 __max3__r #46 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM233_ #43 __max4__r #49 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM234_ #45 b1n #44 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM235_ #46 max3_aa #45 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM236_ #48 __b1 #47 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM237_ #49 max4_aa #48 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM238_ #51 __b1 #50 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM239_ #53 b1n #52 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_15 O4_ar GND 5e-15
xM240_ #55 b2n O4_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM241_ #59 __b2 O4_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM242_keeper #150 #fb149# O4_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM243_keeper #151 #fb149# O4_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM244_ #56 b1n #55 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM245_ #57 max4_aa #56 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM246_ #58 __max4__r #57 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM247_ #60 __b1 #59 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_16 b1 GND 5e-15
xM248_ #62 __min3__r b1 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM249_ #62 __min1__r b1 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM250_keeper #152 __b1 b1 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM251_keeper #153 __b1 b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_17 __min3__r GND 5e-15
C_per_node_18 __min1__r GND 5e-15
C_per_node_19 b2 GND 5e-15
xM252_ #68 __min3__r b2 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM253_ #68 __min2__r b2 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM254_keeper #154 __b2 b2 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM255_keeper #155 __b2 b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_20 __min2__r GND 5e-15
C_per_node_21 min3_aa GND 5e-15
xM256_ #72 __min3__r min3_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM257_keeper #157 #fb156# min3_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM258_keeper #158 #fb156# min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM259_ #73 __b2 #72 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM260_ #74 __b1 #73 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_22 min2_aa GND 5e-15
xM261_ #76 __min2__r min2_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM262_keeper #160 #fb159# min2_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM263_keeper #161 #fb159# min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM264_ #77 __b2 #76 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM265_ #78 b1n #77 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_23 min1_aa GND 5e-15
xM266_ #80 __min1__r min1_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM267_keeper #163 #fb162# min1_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM268_keeper #164 #fb162# min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM269_ #81 b2n #80 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM270_ #82 __b1 #81 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_24 reset_aa GND 5e-15
xM271_ #84 __reset__r reset_aa Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM272_keeper #166 #fb165# reset_aa Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM273_keeper #167 #fb165# reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM274_ #85 b2n #84 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM275_ #86 b1n #85 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_25 __reset__r GND 5e-15
xM276_ #89 __O1__a #88 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_26 __O1__a GND 5e-15
xM277_ #93 __O1__a #92 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM278_ #93 __O2__a #92 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_27 __O2__a GND 5e-15
xM279_ #96 __O2__a #95 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM280_ #98 __O1__a #97 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM281_ #98 __O2__a #97 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM282_ #98 __O3__a #97 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_28 __O3__a GND 5e-15
xM283_ #101 __O3__a #100 GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM284_ #102 __O2__a #101 GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM285_ #104 __O1__a #103 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM286_ #104 __O2__a #103 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM287_ #104 __O3__a #103 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM288_ #104 __O4__a #103 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_29 __O4__a GND 5e-15
xM289_ #107 __O4__a #106 GND sky130_fd_pr__nfet_01v8 W=3.75 L=0.15 nrs=1 nrd=1 nf=1
xM290_ #108 __O3__a #107 GND sky130_fd_pr__nfet_01v8 W=3.75 L=0.15 nrs=1 nrd=1 nf=1
xM291_ #109 __O2__a #108 GND sky130_fd_pr__nfet_01v8 W=3.75 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_30 O1_ad_50_6 GND 5e-15
xM292_keeper #169 #fb168# O1_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_31 __Reset GND 5e-15
C_per_node_32 O1_ad_51_6 GND 5e-15
xM293_keeper #171 #fb170# O1_ad_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_33 O2_ad_50_6 GND 5e-15
xM294_keeper #173 #fb172# O2_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_34 O2_ad_51_6 GND 5e-15
xM295_keeper #175 #fb174# O2_ad_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_35 O3_ad_50_6 GND 5e-15
xM296_keeper #177 #fb176# O3_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_36 O3_ad_51_6 GND 5e-15
xM297_keeper #179 #fb178# O3_ad_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_37 O4_ad_50_6 GND 5e-15
xM298_keeper #181 #fb180# O4_ad_50_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_38 O4_ad_51_6 GND 5e-15
xM299_keeper #183 #fb182# O4_ad_51_6 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
.ends
*---- end of process: subtractor<> -----
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
*---- act defproc: AND2X1<> -----
* raw ports:  A B Y
*
.subckt AND2X1 A B Y
*.PININFO A:I B:I Y:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __Y (combinational)
* Y (combinational)
*
* --- end node flags ---
*
xM0_ Vdd A __Y Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd B __Y Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd __Y Y Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM3_ GND A #3 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM4_ GND __Y Y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_0 __Y GND 5e-15
xM5_ #3 B __Y GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 Y GND 5e-15
.ends
*---- end of process: AND2X1<> -----
*
*---- act defproc: identifier<> -----
* raw ports:  P1.r P2.r P3.r P4.r O1max.r O1max.a O1min.r O1min.a O2max.r O2max.a O2min.r O2min.a O3max.r O3max.a O3min.r O3min.a O4max.r O4max.a subreset.r subreset.a
*
.subckt identifier P1_ar P2_ar P3_ar P4_ar O1max_ar O1max_aa O1min_ar O1min_aa O2max_ar O2max_aa O2min_ar O2min_aa O3max_ar O3max_aa O3min_ar O3min_aa O4max_ar O4max_aa subreset_ar subreset_aa
*.PININFO P1_ar:I P2_ar:I P3_ar:I P4_ar:I O1max_ar:O O1max_aa:I O1min_ar:O O1min_aa:I O2max_ar:O O2max_aa:I O2min_ar:O O2min_aa:I O3max_ar:O O3max_aa:I O3min_ar:O O3min_aa:I O4max_ar:O O4max_aa:I subreset_ar:O subreset_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* O1max_ar (state-holding): pup_reff=0.133333; pdn_reff=0.2
* __P1__r (combinational)
* __flat (combinational)
* y (state-holding): pup_reff=0.132832; pdn_reff=0.2
* P1__rn (combinational)
* O1min_ar (state-holding): pup_reff=0.131579; pdn_reff=0.2
* __P2__r (combinational)
* b1n (combinational)
* b2n (combinational)
* trend2 (combinational)
* P2__rn (combinational)
* O2max_ar (state-holding): pup_reff=0.133333; pdn_reff=0.2
* __b1 (combinational)
* __trend (combinational)
* O2min_ar (state-holding): pup_reff=0.131579; pdn_reff=0.2
* __P3__r (combinational)
* P3__rn (combinational)
* O3max_ar (state-holding): pup_reff=0.131579; pdn_reff=0.2
* __b2 (combinational)
* O3min_ar (state-holding): pup_reff=0.133333; pdn_reff=0.2
* __P4__r (combinational)
* P4__rn (combinational)
* O4max_ar (state-holding): pup_reff=0.133333; pdn_reff=0.2
* subreset_ar (state-holding): pup_reff=0.131579; pdn_reff=0.2
* flat (state-holding): pup_reff=0.26087; pdn_reff=0.4
* trend (state-holding): pup_reff=0.25; pdn_reff=0.4
* __Reset (combinational)
* __O2min__a (combinational)
* __O1min__a (combinational)
* __subreset__a (combinational)
* __O3min__a (combinational)
* __y (combinational)
* __O1max__a (combinational)
* b1 (state-holding): pup_reff=0.133333; pdn_reff=0.2
* b2 (state-holding): pup_reff=0.133333; pdn_reff=0.2
*
* --- end node flags ---
*
xM0_ Vdd Reset #5 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #16 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #26 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #35 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd Reset #44 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd Reset #51 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd Reset #58 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd Reset #65 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM8_ Vdd __Reset trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM9_ Vdd __O2min__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM10_ Vdd __O1min__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM11_ Vdd __subreset__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM12_ Vdd __O3min__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM13_ Vdd Reset #80 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM14_ Vdd Reset #83 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM15_ Vdd Reset #90 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM16_ Vdd Reset #102 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM17_ Vdd flat __flat Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM18_ Vdd y __y Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM19_ Vdd O1max_aa __O1max__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM20_ Vdd O1min_aa __O1min__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM21_ Vdd O2min_aa __O2min__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM22_ Vdd O3min_aa __O3min__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM23_ Vdd subreset_aa __subreset__a Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM24_ Vdd Reset __Reset Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM25_ Vdd b1 __b1 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM26_ Vdd __b1 b1n Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM27_ Vdd b2 __b2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM28_ Vdd __b2 b2n Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM29_ Vdd trend __trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM30_ Vdd __trend trend2 Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM31_ Vdd P1_ar __P1__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM32_ Vdd __P1__r P1__rn Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM33_ Vdd P2_ar __P2__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM34_ Vdd __P2__r P2__rn Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM35_ Vdd P3_ar __P3__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM36_ Vdd __P3__r P3__rn Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM37_ Vdd P4_ar __P4__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM38_ Vdd __P4__r P4__rn Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM39_ Vdd O1max_ar #fb114# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM40_keeper Vdd GND #115 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM41_ Vdd O1min_ar #fb119# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM42_keeper Vdd GND #117 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM43_ Vdd O2max_ar #fb122# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM44_keeper Vdd GND #120 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM45_ Vdd O2min_ar #fb125# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM46_keeper Vdd GND #123 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM47_ Vdd O3max_ar #fb128# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM48_keeper Vdd GND #126 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM49_ Vdd O3min_ar #fb131# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM50_keeper Vdd GND #129 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM51_ Vdd O4max_ar #fb134# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM52_keeper Vdd GND #132 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM53_ Vdd subreset_ar #fb137# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM54_keeper Vdd GND #135 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM55_keeper Vdd GND #138 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM56_keeper Vdd GND #140 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM57_keeper Vdd GND #142 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM58_keeper Vdd GND #144 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM59_keeper Vdd GND #146 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.45 nrs=1 nrd=1 nf=1
xM60_ GND Reset O1max_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM61_ GND P1__rn #10 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM62_ GND Reset O1min_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM63_ GND P2__rn #21 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM64_ GND Reset O2max_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM65_ GND P1__rn #30 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM66_ GND Reset O2min_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM67_ GND P3__rn #38 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM68_ GND Reset O3max_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM69_ GND P2__rn #48 GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM70_ GND Reset O3min_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM71_ GND P4__rn #53 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM72_ GND Reset O4max_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM73_ GND P3__rn #60 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM74_ GND Reset subreset_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM75_ GND P1__rn #68 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM76_ GND __Reset #75 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM77_ GND Reset flat GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM78_ GND P2__rn #82 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM79_ GND Reset y GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM80_ GND __P1__r y GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM81_ GND Reset b1 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM82_ GND P3__rn #97 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM83_ GND P3__rn #99 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM84_ GND y b1 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM85_ GND Reset b2 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM86_ GND __P3__r #104 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM87_ GND flat __flat GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM88_ GND y __y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM89_ GND O1max_aa __O1max__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM90_ GND O1min_aa __O1min__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM91_ GND O2min_aa __O2min__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM92_ GND O3min_aa __O3min__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM93_ GND subreset_aa __subreset__a GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM94_ GND Reset __Reset GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM95_ GND b1 __b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM96_ GND __b1 b1n GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM97_ GND b2 __b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM98_ GND __b2 b2n GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM99_ GND trend __trend GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM100_ GND __trend trend2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM101_ GND P1_ar __P1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM102_ GND __P1__r P1__rn GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM103_ GND P2_ar __P2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM104_ GND __P2__r P2__rn GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM105_ GND P3_ar __P3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM106_ GND __P3__r P3__rn GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM107_ GND P4_ar __P4__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM108_ GND __P4__r P4__rn GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM109_ GND O1max_ar #fb114# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM110_keeper GND Vdd #116 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM111_ GND O1min_ar #fb119# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM112_keeper GND Vdd #118 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM113_ GND O2max_ar #fb122# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM114_keeper GND Vdd #121 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM115_ GND O2min_ar #fb125# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM116_keeper GND Vdd #124 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM117_ GND O3max_ar #fb128# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM118_keeper GND Vdd #127 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM119_ GND O3min_ar #fb131# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM120_keeper GND Vdd #130 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM121_ GND O4max_ar #fb134# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM122_keeper GND Vdd #133 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM123_ GND subreset_ar #fb137# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM124_keeper GND Vdd #136 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM125_keeper GND Vdd #139 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM126_keeper GND Vdd #141 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM127_keeper GND Vdd #143 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.575 nrs=1 nrd=1 nf=1
xM128_keeper GND Vdd #145 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
xM129_keeper GND Vdd #147 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.75 nrs=1 nrd=1 nf=1
C_per_node_0 O1max_ar GND 5e-15
xM130_ #3 y O1max_ar Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM131_ #10 y O1max_ar GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM132_keeper #115 #fb114# O1max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM133_keeper #116 #fb114# O1max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM134_ #4 __flat #3 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM135_ #5 __P1__r #4 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 __P1__r GND 5e-15
C_per_node_2 __flat GND 5e-15
C_per_node_3 y GND 5e-15
xM136_ #84 trend2 y Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM137_ #87 __trend y Vdd sky130_fd_pr__pfet_01v8  W=4.275 L=0.15 nrs=1 nrd=1 nf=1
xM138_ #83 __O1max__a y Vdd sky130_fd_pr__pfet_01v8  W=1.425 L=0.15 nrs=1 nrd=1 nf=1
xM139_keeper #117 __y y Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM140_keeper #118 __y y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_4 P1__rn GND 5e-15
C_per_node_5 O1min_ar GND 5e-15
xM141_ #13 trend2 O1min_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM142_ #21 b1n O1min_ar GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM143_keeper #120 #fb119# O1min_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM144_keeper #121 #fb119# O1min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM145_ #14 b2n #13 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM146_ #15 b1n #14 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM147_ #16 __P2__r #15 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_6 __P2__r GND 5e-15
C_per_node_7 b1n GND 5e-15
C_per_node_8 b2n GND 5e-15
C_per_node_9 trend2 GND 5e-15
C_per_node_10 P2__rn GND 5e-15
C_per_node_11 O2max_ar GND 5e-15
xM148_ #24 __trend O2max_ar Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM149_ #29 __trend O2max_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM150_keeper #123 #fb122# O2max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM151_keeper #124 #fb122# O2max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM152_ #25 __b1 #24 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM153_ #26 __P1__r #25 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_12 __b1 GND 5e-15
C_per_node_13 __trend GND 5e-15
xM154_ #30 __b1 #29 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_14 O2min_ar GND 5e-15
xM155_ #32 trend2 O2min_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM156_ #37 b2n O2min_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM157_keeper #126 #fb125# O2min_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM158_keeper #127 #fb125# O2min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM159_ #33 b2n #32 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM160_ #34 __b1 #33 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM161_ #35 __P3__r #34 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_15 __P3__r GND 5e-15
xM162_ #38 __b1 #37 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_16 P3__rn GND 5e-15
C_per_node_17 O3max_ar GND 5e-15
xM163_ #41 __trend O3max_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM164_ #46 __trend O3max_ar GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM165_keeper #129 #fb128# O3max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM166_keeper #130 #fb128# O3max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM167_ #42 __b2 #41 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM168_ #43 b1n #42 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM169_ #44 __P2__r #43 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_18 __b2 GND 5e-15
xM170_ #47 __b2 #46 GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
xM171_ #48 b1n #47 GND sky130_fd_pr__nfet_01v8 W=3 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_19 O3min_ar GND 5e-15
xM172_ #50 trend2 O3min_ar Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM173_ #53 b1n O3min_ar GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM174_keeper #132 #fb131# O3min_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM175_keeper #133 #fb131# O3min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM176_ #51 __P4__r #50 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_20 __P4__r GND 5e-15
C_per_node_21 P4__rn GND 5e-15
C_per_node_22 O4max_ar GND 5e-15
xM177_ #56 __b2 O4max_ar Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM178_ #59 b2n O4max_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM179_keeper #135 #fb134# O4max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM180_keeper #136 #fb134# O4max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM181_ #57 __b1 #56 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM182_ #58 __P3__r #57 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM183_ #60 __b1 #59 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_23 subreset_ar GND 5e-15
xM184_ #62 y subreset_ar Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM185_ #67 y subreset_ar GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM186_keeper #138 #fb137# subreset_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM187_keeper #139 #fb137# subreset_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM188_ #63 flat #62 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM189_ #64 b1n #63 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
xM190_ #65 __P1__r #64 Vdd sky130_fd_pr__pfet_01v8  W=5.7 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_24 flat GND 5e-15
xM191_ #79 __y flat Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM192_ #82 __y flat GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM193_keeper #140 __flat flat Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM194_keeper #141 __flat flat GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM195_ #68 flat #67 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_25 trend GND 5e-15
xM196_ #75 O4max_aa trend GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM197_ #75 O3max_aa trend GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM198_ #75 O2max_aa trend GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM199_keeper #142 __trend trend Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM200_keeper #143 __trend trend GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_26 __Reset GND 5e-15
C_per_node_27 __O2min__a GND 5e-15
C_per_node_28 __O1min__a GND 5e-15
C_per_node_29 __subreset__a GND 5e-15
C_per_node_30 __O3min__a GND 5e-15
xM201_ #80 __trend #79 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_31 __y GND 5e-15
xM202_ #83 __P1__r #86 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM203_ #83 __subreset__a #87 Vdd sky130_fd_pr__pfet_01v8  W=2.1 L=0.15 nrs=1 nrd=1 nf=1
xM204_ #85 b2n #84 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
xM205_ #86 __b1 #85 Vdd sky130_fd_pr__pfet_01v8  W=7.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_32 __O1max__a GND 5e-15
C_per_node_33 b1 GND 5e-15
xM206_ #91 trend2 b1 Vdd sky130_fd_pr__pfet_01v8  W=6.075 L=0.15 nrs=1 nrd=1 nf=1
xM207_ #93 __trend b1 Vdd sky130_fd_pr__pfet_01v8  W=6.075 L=0.15 nrs=1 nrd=1 nf=1
xM208_ #95 __P4__r b1 Vdd sky130_fd_pr__pfet_01v8  W=4.5 L=0.15 nrs=1 nrd=1 nf=1
xM209_ #96 __b2 b1 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM210_ #98 b2n b1 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM211_keeper #144 __b1 b1 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM212_keeper #145 __b1 b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM213_ #90 __P2__r #92 Vdd sky130_fd_pr__pfet_01v8  W=3 L=0.15 nrs=1 nrd=1 nf=1
xM214_ #90 __P2__r #94 Vdd sky130_fd_pr__pfet_01v8  W=3 L=0.15 nrs=1 nrd=1 nf=1
xM215_ #90 __trend #95 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM216_ #92 __b2 #91 Vdd sky130_fd_pr__pfet_01v8  W=6.075 L=0.15 nrs=1 nrd=1 nf=1
xM217_ #94 b2n #93 Vdd sky130_fd_pr__pfet_01v8  W=6.075 L=0.15 nrs=1 nrd=1 nf=1
xM218_ #97 trend2 #96 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM219_ #99 __trend #98 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_34 b2 GND 5e-15
xM220_ #101 b1n b2 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM221_ #103 b1n b2 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM222_keeper #146 __b2 b2 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM223_keeper #147 __b2 b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM224_ #102 __P3__r #101 Vdd sky130_fd_pr__pfet_01v8  W=3.375 L=0.15 nrs=1 nrd=1 nf=1
xM225_ #104 P2__rn #103 GND sky130_fd_pr__nfet_01v8 W=2.25 L=0.15 nrs=1 nrd=1 nf=1
.ends
*---- end of process: identifier<> -----
*
*---- act defproc: system<> -----
* raw ports:  in11.r in21.r in31.r in41.r in12.r in22.r in32.r in42.r N S W NE NW SE SW
*
.subckt system in11_ar in21_ar in31_ar in41_ar in12_ar in22_ar in32_ar in42_ar N S W NE NW SE SW
*.PININFO in11_ar:I in21_ar:I in31_ar:I in41_ar:I in12_ar:I in22_ar:I in32_ar:I in42_ar:I N:I S:I W:I NE:I NW:I SE:I SW:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xOR N S W OR_aE NE NW SE SW OR_aY OR8X1
xSUB2 A2_aO1max_ar A2_aO1max_aa A2_aO1min_ar A2_aO1min_aa A2_aO2max_ar A2_aO2max_aa A2_aO2min_ar A2_aO2min_aa A2_aO3max_ar A2_aO3max_aa A2_aO3min_ar A2_aO3min_aa A2_aO4max_ar A2_aO4max_aa A2_asubreset_ar A2_asubreset_aa C12_ain_ad_50_6 C12_ain_ad_51_6 C12_ain_ar C12_ain_aa C22_ain_ad_50_6 C22_ain_ad_51_6 OR_aE C22_ain_aa C32_ain_ad_50_6 C32_ain_ad_51_6 C32_ain_ar C32_ain_aa C42_ain_ad_50_6 C42_ain_ad_51_6 C42_ain_ar C42_ain_aa subtractor
xC41 C41_ain_ad_50_6 C41_ain_ad_51_6 C41_ain_ar C41_ain_aa counter_34_4
xC31 C31_ain_ad_50_6 C31_ain_ad_51_6 C31_ain_ar C31_ain_aa counter_34_4
xSUB1 A1_aO1max_ar A1_aO1max_aa A1_aO1min_ar A1_aO1min_aa A1_aO2max_ar A1_aO2max_aa A1_aO2min_ar A1_aO2min_aa A1_aO3max_ar A1_aO3max_aa A1_aO3min_ar A1_aO3min_aa A1_aO4max_ar A1_aO4max_aa A1_asubreset_ar A1_asubreset_aa C11_ain_ad_50_6 C11_ain_ad_51_6 C11_ain_ar C11_ain_aa CC_ain_ad_50_6 CC_ain_ad_51_6 AND_aA C21_ain_aa C31_ain_ad_50_6 C31_ain_ad_51_6 C31_ain_ar C31_ain_aa C41_ain_ad_50_6 C41_ain_ad_51_6 C41_ain_ar C41_ain_aa subtractor
xAND AND_aA OR_aY AND_aY AND2X1
xC22 C22_ain_ad_50_6 C22_ain_ad_51_6 OR_aE C22_ain_aa counter_34_4
xCC CC_ain_ad_50_6 CC_ain_ad_51_6 AND_aY CC_ain_aa counter_34_4
xA1 in11_ar in21_ar in31_ar in41_ar A1_aO1max_ar A1_aO1max_aa A1_aO1min_ar A1_aO1min_aa A1_aO2max_ar A1_aO2max_aa A1_aO2min_ar A1_aO2min_aa A1_aO3max_ar A1_aO3max_aa A1_aO3min_ar A1_aO3min_aa A1_aO4max_ar A1_aO4max_aa A1_asubreset_ar A1_asubreset_aa identifier
xC42 C42_ain_ad_50_6 C42_ain_ad_51_6 C42_ain_ar C42_ain_aa counter_34_4
xC21 CC_ain_ad_50_6 CC_ain_ad_51_6 AND_aA C21_ain_aa counter_34_4
xC11 C11_ain_ad_50_6 C11_ain_ad_51_6 C11_ain_ar C11_ain_aa counter_34_4
xA2 in12_ar in22_ar in32_ar in42_ar A2_aO1max_ar A2_aO1max_aa A2_aO1min_ar A2_aO1min_aa A2_aO2max_ar A2_aO2max_aa A2_aO2min_ar A2_aO2min_aa A2_aO3max_ar A2_aO3max_aa A2_aO3min_ar A2_aO3min_aa A2_aO4max_ar A2_aO4max_aa A2_asubreset_ar A2_asubreset_aa identifier
xC32 C32_ain_ad_50_6 C32_ain_ad_51_6 C32_ain_ar C32_ain_aa counter_34_4
xC12 C12_ain_ad_50_6 C12_ain_ad_51_6 C12_ain_ar C12_ain_aa counter_34_4
.ends
*---- end of process: system<> -----
