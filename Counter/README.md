# AsyncPS_for_PCCT
This file contains the source codes of the asynchronous constant-delay counter.

### Behavior simulation
The provided .act file contains the counter's CHP and the corresponding testbench. This file can be simulated by the actsim tool.

### Transistor-level simulation
The provided .act files contain the counter's PRS, which is manually synthesized from the CHP. Given the makefile, you can get the SPICE netlist (.sp) by running:

```
make prs2net
```

After this, a SPICE simulator can be used to simulate the netlist, such as Eldo, Xyce, PSpice, etc.
