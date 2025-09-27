xload ../rect_files/_0_0cell_0_0g0n1n2n3naaa_02ox0
box 232.5 142.5 270 217.5
paint pdiffusion
box 233.5 143.5 233.5 143.5
label "#10" right pdiffusion
box 232.5 45 270 90
paint ndiffusion
box 233.5 46 233.5 46
label "#10" right ndiffusion
box 202.5 142.5 232.5 217.5
paint ptransistor
box 202.5 217.5 232.5 232.5
paint polysilicon
box 202.5 30 232.5 45
paint polysilicon
box 202.5 45 232.5 90
paint ntransistor
box 202.5 90 232.5 105
paint polysilicon
box 203.5 91 203.5 91
label "out" right polysilicon
box 202.5 127.5 232.5 142.5
paint polysilicon
box 203.5 128.5 203.5 128.5
label "out" right polysilicon
box 195 142.5 202.5 217.5
paint pdiffusion
box 165 45 202.5 90
paint ndiffusion
box 166 46 166 46
label "GND" right ndiffusion
box 165 142.5 195 367.5
paint pdiffusion
box 166 143.5 166 143.5
label "Vdd" right pdiffusion
box 150 30 165 45
paint polysilicon
box 150 45 165 90
paint ntransistor
box 150 90 165 105
paint polysilicon
box 151 91 151 91
label "in(0)" right polysilicon
box 150 127.5 165 142.5
paint polysilicon
box 151 128.5 151 128.5
label "in(0)" right polysilicon
box 150 142.5 165 367.5
paint ptransistor
box 150 367.5 165 382.5
paint polysilicon
box 112.5 45 150 90
paint ndiffusion
box 113.5 46 113.5 46
label "out" right ndiffusion
box 112.5 142.5 150 367.5
paint pdiffusion
box 97.5 127.5 112.5 142.5
paint polysilicon
box 98.5 128.5 98.5 128.5
label "in(1)" right polysilicon
box 97.5 142.5 112.5 367.5
paint ptransistor
box 97.5 367.5 112.5 382.5
paint polysilicon
box 60 142.5 97.5 367.5
paint pdiffusion
box 61 143.5 61 143.5
label "#6" right pdiffusion
box 570 45 607.5 90
paint ndiffusion
box 571 46 571 46
label "out" right ndiffusion
box 570 142.5 607.5 367.5
paint pdiffusion
box 571 143.5 571 143.5
label "#6" right pdiffusion
box 555 367.5 570 382.5
paint polysilicon
box 555 30 570 45
paint polysilicon
box 555 45 570 90
paint ntransistor
box 555 90 570 105
paint polysilicon
box 556 91 556 91
label "in(2)" right polysilicon
box 555 127.5 570 142.5
paint polysilicon
box 556 128.5 556 128.5
label "in(2)" right polysilicon
box 555 142.5 570 367.5
paint ptransistor
box 517.5 45 555 90
paint ndiffusion
box 518.5 46 518.5 46
label "GND" right ndiffusion
box 367.5 142.5 555 367.5
paint pdiffusion
box 352.5 30 517.5 45
paint polysilicon
box 352.5 45 517.5 90
paint ntransistor
box 352.5 90 517.5 105
paint polysilicon
box 353.5 91 353.5 91
label "Vdd" right polysilicon
box 352.5 127.5 367.5 142.5
paint polysilicon
box 353.5 128.5 353.5 128.5
label "in(3)" right polysilicon
box 352.5 142.5 367.5 367.5
paint ptransistor
box 352.5 367.5 367.5 382.5
paint polysilicon
box 315 45 352.5 90
paint ndiffusion
box 316 46 316 46
label "#12" right ndiffusion
box 315 142.5 352.5 367.5
paint pdiffusion
box 316 143.5 316 143.5
label "out" right pdiffusion
box 810 142.5 847.5 187.5
paint pdiffusion
box 811 143.5 811 143.5
label "Vdd" right pdiffusion
box 727.5 127.5 810 142.5
paint polysilicon
box 728.5 128.5 728.5 128.5
label "GND" right polysilicon
box 727.5 142.5 810 187.5
paint ptransistor
box 727.5 187.5 810 202.5
paint polysilicon
box 705 45 742.5 90
paint ndiffusion
box 706 46 706 46
label "#12" right ndiffusion
box 705 142.5 727.5 187.5
paint pdiffusion
box 690 30 705 45
paint polysilicon
box 690 45 705 90
paint ntransistor
box 690 90 705 105
paint polysilicon
box 691 91 691 91
label "#10" right polysilicon
box 690 127.5 705 142.5
paint polysilicon
box 691 128.5 691 128.5
label "#10" right polysilicon
box 690 142.5 705 187.5
paint ptransistor
box 690 187.5 705 202.5
paint polysilicon
box 652.5 45 690 90
paint ndiffusion
box 653.5 46 653.5 46
label "out" right ndiffusion
box 652.5 142.5 690 187.5
paint pdiffusion
box 653.5 143.5 653.5 143.5
label "out" right pdiffusion
box 660 390 690 420
paint m1
box 661 391 661 391
label "GND" right m1
port class input
port make
box 540 390 570 420
paint m1
box 541 391 541 391
label "Vdd" right m1
port class input
port make
box 420 390 450 420
paint m1
box 421 391 421 391
label "in(3)" right m1
port class input
port make
box 300 390 330 420
paint m1
box 301 391 301 391
label "in(2)" right m1
port class input
port make
box 180 390 210 420
paint m1
box 181 391 181 391
label "in(1)" right m1
port class input
port make
box 60 30 90 60
paint m1
box 61 31 61 31
label "out" right m1
port class output
port make
box 60 390 90 420
paint m1
box 61 391 61 391
label "in(0)" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
