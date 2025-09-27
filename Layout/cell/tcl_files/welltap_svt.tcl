xload ../rect_files/welltap_svt
box 60 30 90 60
paint m1
box 61 31 61 31
label "GND" right m1
port class input
port make
box 60 150 90 180
paint m1
box 61 151 61 151
label "Vdd" right m1
port class input
port make
box 60 22.5 75 75
paint ppdiff
box 61 23.5 61 23.5
label "GND" right ppdiff
box 60 105 75 157.5
paint nndiff
box 61 106 61 106
label "Vdd" right nndiff
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
