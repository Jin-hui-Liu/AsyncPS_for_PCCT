xload ../rect_files/_0_0cell_0_0ginvx1
box 112.5 45 150 90
paint ndiffusion
box 113.5 46 113.5 46
label "out" right ndiffusion
box 112.5 142.5 150 217.5
paint pdiffusion
box 113.5 143.5 113.5 143.5
label "out" right pdiffusion
box 97.5 30 112.5 45
paint polysilicon
box 97.5 45 112.5 90
paint ntransistor
box 97.5 90 112.5 105
paint polysilicon
box 98.5 91 98.5 91
label "in(0)" right polysilicon
box 97.5 127.5 112.5 142.5
paint polysilicon
box 98.5 128.5 98.5 128.5
label "in(0)" right polysilicon
box 97.5 142.5 112.5 217.5
paint ptransistor
box 97.5 217.5 112.5 232.5
paint polysilicon
box 60 45 97.5 90
paint ndiffusion
box 61 46 61 46
label "GND" right ndiffusion
box 60 142.5 97.5 217.5
paint pdiffusion
box 61 143.5 61 143.5
label "Vdd" right pdiffusion
box 180 240 210 270
paint m1
box 181 241 181 241
label "GND" right m1
port class input
port make
box 120 240 150 270
paint m1
box 121 241 121 241
label "Vdd" right m1
port class input
port make
box 60 30 90 60
paint m1
box 61 31 61 31
label "out" right m1
port class output
port make
box 60 240 90 270
paint m1
box 61 241 61 241
label "in(0)" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
