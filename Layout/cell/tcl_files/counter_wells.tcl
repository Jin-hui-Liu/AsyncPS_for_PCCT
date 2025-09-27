xload ../rect_files/counter_wells
box 58500 40500 508500 63000
paint nwell
box 58501 40501 58501 40501
label "Vdd" right nwell
box 58500 128250 508500 168750
paint nwell
box 58501 128251 58501 128251
label "Vdd" right nwell
box 58500 227250 508500 256500
paint nwell
box 58501 227251 58501 227251
label "Vdd" right nwell
box 58500 321750 508500 362250
paint nwell
box 58501 321751 58501 321751
label "Vdd" right nwell
box 58500 427500 508500 459000
paint nwell
box 58501 427501 58501 427501
label "Vdd" right nwell
box 58500 510750 508500 531000
paint nwell
box 58501 510751 58501 510751
label "Vdd" right nwell
box 58500 555750 508500 567000
paint nwell
box 58501 555751 58501 555751
label "Vdd" right nwell
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
