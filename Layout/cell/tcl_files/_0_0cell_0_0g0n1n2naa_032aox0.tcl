xload ../rect_files/_0_0cell_0_0g0n1n2naa_032aox0
box 232.5 172.5 270 247.5
paint pdiffusion
box 233.5 173.5 233.5 173.5
label "#10" right pdiffusion
box 232.5 75 270 120
paint ndiffusion
box 233.5 76 233.5 76
label "#10" right ndiffusion
box 202.5 172.5 232.5 247.5
paint ptransistor
box 202.5 247.5 232.5 262.5
paint polysilicon
box 202.5 60 232.5 75
paint polysilicon
box 202.5 75 232.5 120
paint ntransistor
box 202.5 120 232.5 135
paint polysilicon
box 203.5 121 203.5 121
label "out" right polysilicon
box 202.5 157.5 232.5 172.5
paint polysilicon
box 203.5 158.5 203.5 158.5
label "out" right polysilicon
box 195 172.5 202.5 247.5
paint pdiffusion
box 165 75 202.5 120
paint ndiffusion
box 166 76 166 76
label "GND" right ndiffusion
box 165 172.5 195 345
paint pdiffusion
box 166 173.5 166 173.5
label "Vdd" right pdiffusion
box 150 60 165 75
paint polysilicon
box 150 75 165 120
paint ntransistor
box 150 120 165 135
paint polysilicon
box 151 121 151 121
label "in(0)" right polysilicon
box 150 157.5 165 172.5
paint polysilicon
box 151 158.5 151 158.5
label "in(0)" right polysilicon
box 150 172.5 165 345
paint ptransistor
box 150 345 165 360
paint polysilicon
box 112.5 75 150 120
paint ndiffusion
box 113.5 76 113.5 76
label "out" right ndiffusion
box 112.5 172.5 150 345
paint pdiffusion
box 97.5 157.5 112.5 172.5
paint polysilicon
box 98.5 158.5 98.5 158.5
label "in(1)" right polysilicon
box 97.5 172.5 112.5 345
paint ptransistor
box 97.5 345 112.5 360
paint polysilicon
box 60 172.5 97.5 345
paint pdiffusion
box 61 173.5 61 173.5
label "#7" right pdiffusion
box 817.5 172.5 855 217.5
paint pdiffusion
box 818.5 173.5 818.5 173.5
label "Vdd" right pdiffusion
box 712.5 157.5 817.5 172.5
paint polysilicon
box 713.5 158.5 713.5 158.5
label "GND" right polysilicon
box 712.5 172.5 817.5 217.5
paint ptransistor
box 712.5 217.5 817.5 232.5
paint polysilicon
box 690 172.5 712.5 217.5
paint pdiffusion
box 690 75 727.5 120
paint ndiffusion
box 691 76 691 76
label "#12" right ndiffusion
box 675 120 690 135
paint polysilicon
box 676 121 676 121
label "#10" right polysilicon
box 675 157.5 690 172.5
paint polysilicon
box 676 158.5 676 158.5
label "#10" right polysilicon
box 675 172.5 690 217.5
paint ptransistor
box 675 217.5 690 232.5
paint polysilicon
box 675 60 690 75
paint polysilicon
box 675 75 690 120
paint ntransistor
box 667.5 172.5 675 217.5
paint pdiffusion
box 667.5 75 675 120
paint ndiffusion
box 637.5 172.5 667.5 345
paint pdiffusion
box 638.5 173.5 638.5 173.5
label "out" right pdiffusion
box 637.5 45 667.5 120
paint ndiffusion
box 638.5 46 638.5 46
label "out" right ndiffusion
box 622.5 120 637.5 135
paint polysilicon
box 623.5 121 623.5 121
label "in(2)" right polysilicon
box 622.5 157.5 637.5 172.5
paint polysilicon
box 623.5 158.5 623.5 158.5
label "in(2)" right polysilicon
box 622.5 172.5 637.5 345
paint ptransistor
box 622.5 345 637.5 360
paint polysilicon
box 622.5 30 637.5 45
paint polysilicon
box 622.5 45 637.5 120
paint ntransistor
box 585 172.5 622.5 345
paint pdiffusion
box 586 173.5 586 173.5
label "#7" right pdiffusion
box 585 45 622.5 120
paint ndiffusion
box 570 120 585 135
paint polysilicon
box 571 121 571 121
label "in(3)" right polysilicon
box 570 30 585 45
paint polysilicon
box 570 45 585 120
paint ntransistor
box 540 45 570 120
paint ndiffusion
box 517.5 75 540 120
paint ndiffusion
box 518.5 76 518.5 76
label "GND" right ndiffusion
box 352.5 60 517.5 75
paint polysilicon
box 352.5 75 517.5 120
paint ntransistor
box 352.5 120 517.5 135
paint polysilicon
box 353.5 121 353.5 121
label "Vdd" right polysilicon
box 315 75 352.5 120
paint ndiffusion
box 316 76 316 76
label "#12" right ndiffusion
box 660 360 690 390
paint m1
box 661 361 661 361
label "GND" right m1
port class input
port make
box 540 360 570 390
paint m1
box 541 361 541 361
label "Vdd" right m1
port class input
port make
box 420 360 450 390
paint m1
box 421 361 421 361
label "in(3)" right m1
port class input
port make
box 300 360 330 390
paint m1
box 301 361 301 361
label "in(2)" right m1
port class input
port make
box 180 360 210 390
paint m1
box 181 361 181 361
label "in(1)" right m1
port class input
port make
box 60 30 90 60
paint m1
box 61 31 61 31
label "out" right m1
port class output
port make
box 60 360 90 390
paint m1
box 61 361 61 361
label "in(0)" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
