# AsyncPS_for_PCCT
This file contains the source codes of the asynchronous subtractor.

### Transistor-level simulation
The provided .act file contains the subtractor's PRS, which is manually synthesized from the CHP. Given the makefile, you can get the SPICE netlist (.sp) by running:

`make prs2net`

After this, a SPICE simulator can be used to simulate the netlist, such as Eldo, Xyce, PSpice, etc.
