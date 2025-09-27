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
* O1max_ar (state-holding): pup_reff=0.266667; pdn_reff=0.4
* __P1__r (combinational)
* __flat (combinational)
* y (state-holding): pup_reff=0.274854; pdn_reff=0.333333
* P1__rn (combinational)
* O1min_ar (state-holding): pup_reff=0.263158; pdn_reff=0.4
* __P2__r (combinational)
* b1n (combinational)
* b2n (combinational)
* trend2 (combinational)
* P2__rn (combinational)
* O2max_ar (state-holding): pup_reff=0.266667; pdn_reff=0.4
* __b1 (combinational)
* __trend (combinational)
* O2min_ar (state-holding): pup_reff=0.263158; pdn_reff=0.4
* __P3__r (combinational)
* P3__rn (combinational)
* O3max_ar (state-holding): pup_reff=0.263158; pdn_reff=0.4
* __b2 (combinational)
* O3min_ar (state-holding): pup_reff=0.26087; pdn_reff=0.4
* __P4__r (combinational)
* P4__rn (combinational)
* O4max_ar (state-holding): pup_reff=0.266667; pdn_reff=0.4
* subreset_ar (state-holding): pup_reff=0.263158; pdn_reff=0.4
* flat (state-holding): pup_reff=0.26087; pdn_reff=0.4
* trend (state-holding): pup_reff=0.25; pdn_reff=0.4
* __Reset (combinational)
* __O2min__a (combinational)
* __O1min__a (combinational)
* __subreset__a (combinational)
* __O3min__a (combinational)
* __y (combinational)
* __O1max__a (combinational)
* b1 (state-holding): pup_reff=0.266667; pdn_reff=0.4
* b2 (state-holding): pup_reff=0.26087; pdn_reff=0.4
*
* --- end node flags ---
*
xM0_ Vdd Reset #5 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #16 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #26 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #35 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd Reset #44 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd Reset #51 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd Reset #58 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd Reset #65 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM8_ Vdd __Reset trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM9_ Vdd __O2min__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM10_ Vdd __O1min__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM11_ Vdd __subreset__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM12_ Vdd __O3min__a trend Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM13_ Vdd Reset #80 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM14_ Vdd Reset #83 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM15_ Vdd Reset #90 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM16_ Vdd Reset #102 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
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
xM40_keeper Vdd GND #115 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM41_ Vdd O1min_ar #fb119# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM42_keeper Vdd GND #117 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.825 nrs=1 nrd=1 nf=1
xM43_ Vdd O2max_ar #fb122# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM44_keeper Vdd GND #120 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM45_ Vdd O2min_ar #fb125# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM46_keeper Vdd GND #123 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM47_ Vdd O3max_ar #fb128# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM48_keeper Vdd GND #126 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM49_ Vdd O3min_ar #fb131# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM50_keeper Vdd GND #129 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM51_ Vdd O4max_ar #fb134# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM52_keeper Vdd GND #132 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM53_ Vdd subreset_ar #fb137# Vdd sky130_fd_pr__pfet_01v8  W=0.75 L=0.3 nrs=1 nrd=1 nf=1
xM54_keeper Vdd GND #135 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM55_keeper Vdd GND #138 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM56_keeper Vdd GND #140 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM57_keeper Vdd GND #142 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM58_keeper Vdd GND #144 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM59_keeper Vdd GND #146 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=1.05 nrs=1 nrd=1 nf=1
xM60_ GND Reset O1max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM61_ GND P1__rn #10 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM62_ GND Reset O1min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM63_ GND P2__rn #21 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM64_ GND Reset O2max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM65_ GND P1__rn #30 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM66_ GND Reset O2min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM67_ GND P3__rn #38 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM68_ GND Reset O3max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM69_ GND P2__rn #48 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM70_ GND Reset O3min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM71_ GND P4__rn #53 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM72_ GND Reset O4max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM73_ GND P3__rn #60 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM74_ GND Reset subreset_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM75_ GND P1__rn #68 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM76_ GND __Reset #75 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM77_ GND Reset flat GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM78_ GND P2__rn #82 GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM79_ GND Reset y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM80_ GND __P1__r y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM81_ GND Reset b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM82_ GND P3__rn #97 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM83_ GND P3__rn #99 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM84_ GND y b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM85_ GND Reset b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM86_ GND __P3__r #104 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
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
xM110_keeper GND Vdd #116 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM111_ GND O1min_ar #fb119# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM112_keeper GND Vdd #118 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.725 nrs=1 nrd=1 nf=1
xM113_ GND O2max_ar #fb122# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM114_keeper GND Vdd #121 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM115_ GND O2min_ar #fb125# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM116_keeper GND Vdd #124 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM117_ GND O3max_ar #fb128# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM118_keeper GND Vdd #127 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM119_ GND O3min_ar #fb131# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM120_keeper GND Vdd #130 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM121_ GND O4max_ar #fb134# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM122_keeper GND Vdd #133 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM123_ GND subreset_ar #fb137# GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.3 nrs=1 nrd=1 nf=1
xM124_keeper GND Vdd #136 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM125_keeper GND Vdd #139 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM126_keeper GND Vdd #141 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM127_keeper GND Vdd #143 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.575 nrs=1 nrd=1 nf=1
xM128_keeper GND Vdd #145 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
xM129_keeper GND Vdd #147 GND sky130_fd_pr__nfet_01v8 W=0.45 L=1.65 nrs=1 nrd=1 nf=1
C_per_node_0 O1max_ar GND 5e-15
xM130_ #3 y O1max_ar Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM131_ #10 y O1max_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM132_keeper #115 #fb114# O1max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM133_keeper #116 #fb114# O1max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM134_ #4 __flat #3 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM135_ #5 __P1__r #4 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 __P1__r GND 5e-15
C_per_node_2 __flat GND 5e-15
C_per_node_3 y GND 5e-15
xM136_ #84 trend2 y Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM137_ #87 __trend y Vdd sky130_fd_pr__pfet_01v8  W=2.1 L=0.15 nrs=1 nrd=1 nf=1
xM138_ #83 __O1max__a y Vdd sky130_fd_pr__pfet_01v8  W=0.675 L=0.15 nrs=1 nrd=1 nf=1
xM139_keeper #117 __y y Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM140_keeper #118 __y y GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_4 P1__rn GND 5e-15
C_per_node_5 O1min_ar GND 5e-15
xM141_ #13 trend2 O1min_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM142_ #21 b1n O1min_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM143_keeper #120 #fb119# O1min_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM144_keeper #121 #fb119# O1min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM145_ #14 b2n #13 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM146_ #15 b1n #14 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM147_ #16 __P2__r #15 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_6 __P2__r GND 5e-15
C_per_node_7 b1n GND 5e-15
C_per_node_8 b2n GND 5e-15
C_per_node_9 trend2 GND 5e-15
C_per_node_10 P2__rn GND 5e-15
C_per_node_11 O2max_ar GND 5e-15
xM148_ #24 __trend O2max_ar Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM149_ #29 __trend O2max_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM150_keeper #123 #fb122# O2max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM151_keeper #124 #fb122# O2max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM152_ #25 __b1 #24 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM153_ #26 __P1__r #25 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_12 __b1 GND 5e-15
C_per_node_13 __trend GND 5e-15
xM154_ #30 __b1 #29 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_14 O2min_ar GND 5e-15
xM155_ #32 trend2 O2min_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM156_ #37 b2n O2min_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM157_keeper #126 #fb125# O2min_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM158_keeper #127 #fb125# O2min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM159_ #33 b2n #32 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM160_ #34 __b1 #33 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM161_ #35 __P3__r #34 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_15 __P3__r GND 5e-15
xM162_ #38 __b1 #37 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_16 P3__rn GND 5e-15
C_per_node_17 O3max_ar GND 5e-15
xM163_ #41 __trend O3max_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM164_ #46 __trend O3max_ar GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM165_keeper #129 #fb128# O3max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM166_keeper #130 #fb128# O3max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM167_ #42 __b2 #41 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM168_ #43 b1n #42 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM169_ #44 __P2__r #43 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_18 __b2 GND 5e-15
xM170_ #47 __b2 #46 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM171_ #48 b1n #47 GND sky130_fd_pr__nfet_01v8 W=1.5 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_19 O3min_ar GND 5e-15
xM172_ #50 trend2 O3min_ar Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM173_ #53 b1n O3min_ar GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM174_keeper #132 #fb131# O3min_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM175_keeper #133 #fb131# O3min_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM176_ #51 __P4__r #50 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_20 __P4__r GND 5e-15
C_per_node_21 P4__rn GND 5e-15
C_per_node_22 O4max_ar GND 5e-15
xM177_ #56 __b2 O4max_ar Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM178_ #59 b2n O4max_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM179_keeper #135 #fb134# O4max_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM180_keeper #136 #fb134# O4max_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM181_ #57 __b1 #56 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM182_ #58 __P3__r #57 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM183_ #60 __b1 #59 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_23 subreset_ar GND 5e-15
xM184_ #62 y subreset_ar Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM185_ #67 y subreset_ar GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM186_keeper #138 #fb137# subreset_ar Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM187_keeper #139 #fb137# subreset_ar GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM188_ #63 flat #62 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM189_ #64 b1n #63 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
xM190_ #65 __P1__r #64 Vdd sky130_fd_pr__pfet_01v8  W=2.85 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_24 flat GND 5e-15
xM191_ #79 __y flat Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM192_ #82 __y flat GND sky130_fd_pr__nfet_01v8 W=0.75 L=0.15 nrs=1 nrd=1 nf=1
xM193_keeper #140 __flat flat Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM194_keeper #141 __flat flat GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM195_ #68 flat #67 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
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
xM202_ #83 __P1__r #86 Vdd sky130_fd_pr__pfet_01v8  W=1.8 L=0.15 nrs=1 nrd=1 nf=1
xM203_ #83 __subreset__a #87 Vdd sky130_fd_pr__pfet_01v8  W=1.05 L=0.15 nrs=1 nrd=1 nf=1
xM204_ #85 b2n #84 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
xM205_ #86 __b1 #85 Vdd sky130_fd_pr__pfet_01v8  W=3.525 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_32 __O1max__a GND 5e-15
C_per_node_33 b1 GND 5e-15
xM206_ #91 trend2 b1 Vdd sky130_fd_pr__pfet_01v8  W=3 L=0.15 nrs=1 nrd=1 nf=1
xM207_ #93 __trend b1 Vdd sky130_fd_pr__pfet_01v8  W=3 L=0.15 nrs=1 nrd=1 nf=1
xM208_ #95 __P4__r b1 Vdd sky130_fd_pr__pfet_01v8  W=2.25 L=0.15 nrs=1 nrd=1 nf=1
xM209_ #96 __b2 b1 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM210_ #98 b2n b1 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM211_keeper #144 __b1 b1 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM212_keeper #145 __b1 b1 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM213_ #90 __P2__r #92 Vdd sky130_fd_pr__pfet_01v8  W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM214_ #90 __P2__r #94 Vdd sky130_fd_pr__pfet_01v8  W=1.5 L=0.15 nrs=1 nrd=1 nf=1
xM215_ #90 __trend #95 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM216_ #92 __b2 #91 Vdd sky130_fd_pr__pfet_01v8  W=3 L=0.15 nrs=1 nrd=1 nf=1
xM217_ #94 b2n #93 Vdd sky130_fd_pr__pfet_01v8  W=3 L=0.15 nrs=1 nrd=1 nf=1
xM218_ #97 trend2 #96 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM219_ #99 __trend #98 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_34 b2 GND 5e-15
xM220_ #101 b1n b2 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM221_ #103 b1n b2 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM222_keeper #146 __b2 b2 Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM223_keeper #147 __b2 b2 GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM224_ #102 __P3__r #101 Vdd sky130_fd_pr__pfet_01v8  W=1.725 L=0.15 nrs=1 nrd=1 nf=1
xM225_ #104 P2__rn #103 GND sky130_fd_pr__nfet_01v8 W=1.125 L=0.15 nrs=1 nrd=1 nf=1
.ends
*---- end of process: identifier<> -----
*
*---- act defproc: sink<> -----
* raw ports:  max1.r max1.a max2.r max2.a max3.r max3.a max4.r max4.a min1.r min1.a min2.r min2.a min3.r min3.a reset.r reset.a
*
.subckt sink max1_ar max1_aa max2_ar max2_aa max3_ar max3_aa max4_ar max4_aa min1_ar min1_aa min2_ar min2_aa min3_ar min3_aa reset_ar reset_aa
*.PININFO max1_ar:I max1_aa:O max2_ar:I max2_aa:O max3_ar:I max3_aa:O max4_ar:I max4_aa:O min1_ar:I min1_aa:O min2_ar:I min2_aa:O min3_ar:I min3_aa:O reset_ar:I reset_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* max1_aa (combinational)
* __max1__r (combinational)
* max2_aa (combinational)
* __max2__r (combinational)
* max3_aa (combinational)
* __max3__r (combinational)
* max4_aa (combinational)
* __max4__r (combinational)
* min1_aa (combinational)
* __min1__r (combinational)
* min2_aa (combinational)
* __min2__r (combinational)
* min3_aa (combinational)
* __min3__r (combinational)
* reset_aa (combinational)
* __reset__r (combinational)
*
* --- end node flags ---
*
xM0_ Vdd Reset #3 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM1_ Vdd Reset #7 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM2_ Vdd Reset #10 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM3_ Vdd Reset #13 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM4_ Vdd Reset #16 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM5_ Vdd Reset #19 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM6_ Vdd Reset #22 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM7_ Vdd Reset #25 Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
xM8_ Vdd max1_ar __max1__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM9_ Vdd max2_ar __max2__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM10_ Vdd max3_ar __max3__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM11_ Vdd max4_ar __max4__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM12_ Vdd min1_ar __min1__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM13_ Vdd min2_ar __min2__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM14_ Vdd min3_ar __min3__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM15_ Vdd reset_ar __reset__r Vdd sky130_fd_pr__pfet_01v8  W=0.6 L=0.15 nrs=1 nrd=1 nf=1
xM16_ GND Reset max1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM17_ GND __max1__r max1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM18_ GND Reset max2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM19_ GND __max2__r max2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM20_ GND Reset max3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM21_ GND __max3__r max3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM22_ GND Reset max4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM23_ GND __max4__r max4_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM24_ GND Reset min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM25_ GND __min1__r min1_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM26_ GND Reset min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM27_ GND __min2__r min2_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM28_ GND Reset min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM29_ GND __min3__r min3_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM30_ GND Reset reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM31_ GND __reset__r reset_aa GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM32_ GND max1_ar __max1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM33_ GND max2_ar __max2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM34_ GND max3_ar __max3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM35_ GND max4_ar __max4__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM36_ GND min1_ar __min1__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM37_ GND min2_ar __min2__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM38_ GND min3_ar __min3__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
xM39_ GND reset_ar __reset__r GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_0 max1_aa GND 5e-15
xM40_ #3 __max1__r max1_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_1 __max1__r GND 5e-15
C_per_node_2 max2_aa GND 5e-15
xM41_ #7 __max2__r max2_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_3 __max2__r GND 5e-15
C_per_node_4 max3_aa GND 5e-15
xM42_ #10 __max3__r max3_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_5 __max3__r GND 5e-15
C_per_node_6 max4_aa GND 5e-15
xM43_ #13 __max4__r max4_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_7 __max4__r GND 5e-15
C_per_node_8 min1_aa GND 5e-15
xM44_ #16 __min1__r min1_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_9 __min1__r GND 5e-15
C_per_node_10 min2_aa GND 5e-15
xM45_ #19 __min2__r min2_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_11 __min2__r GND 5e-15
C_per_node_12 min3_aa GND 5e-15
xM46_ #22 __min3__r min3_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_13 __min3__r GND 5e-15
C_per_node_14 reset_aa GND 5e-15
xM47_ #25 __reset__r reset_aa Vdd sky130_fd_pr__pfet_01v8  W=1.125 L=0.15 nrs=1 nrd=1 nf=1
C_per_node_15 __reset__r GND 5e-15
.ends
*---- end of process: sink<> -----
*
*---- act defproc: system<> -----
* raw ports:  in1.r in2.r in3.r in4.r
*
.subckt system in1_ar in2_ar in3_ar in4_ar
*.PININFO in1_ar:I in2_ar:I in3_ar:I in4_ar:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xA in1_ar in2_ar in3_ar in4_ar A_aO1max_ar A_aO1max_aa A_aO1min_ar A_aO1min_aa A_aO2max_ar A_aO2max_aa A_aO2min_ar A_aO2min_aa A_aO3max_ar A_aO3max_aa A_aO3min_ar A_aO3min_aa A_aO4max_ar A_aO4max_aa A_asubreset_ar A_asubreset_aa identifier
xSUB A_aO1max_ar A_aO1max_aa A_aO2max_ar A_aO2max_aa A_aO3max_ar A_aO3max_aa A_aO4max_ar A_aO4max_aa A_aO1min_ar A_aO1min_aa A_aO2min_ar A_aO2min_aa A_aO3min_ar A_aO3min_aa A_asubreset_ar A_asubreset_aa sink
.ends
*---- end of process: system<> -----
