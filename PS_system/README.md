# AsyncPS_for_PCCT

This file contains the source codes of the asynchronous pileup-specific (PS) system.

### Transistor-level simulation
The provided "system.act" file includes the three key PRS blocks: Identifier, Subtractor and Counter. By instantiating and connecting all the blocks in the top-level process 
"system", the entire PS structure can be built. While the proposed PS structure aims to address the pile-up events in the photon-counting CT, it is also compatible with the 
Multi-Energy Inter-Pixel Coincidence Counters (MEICC,\[1\]) structure, which can be used to address crosstalk events. Therefore, you could also find two logic blocks, 
AND2X1 and OR8X1, in the "system.act" file. They are used to construct the MEICC structure.

Given the makefile, you can get the SPICE netlist (system_meicc.sp) by running:

`make prs2net`



### Reference
\[1\] K. Taguchi, "Assessment of Multienergy Interpixel Coincidence Counters (MEICC) for Charge Sharing Correction or Compensation for Photon Counting Detectors With Boxcar Signals,"
in IEEE Transactions on Radiation and Plasma Medical Sciences, vol. 5, no. 4, pp. 465-475, July 2021, doi: 10.1109/TRPMS.2020.3003251.

