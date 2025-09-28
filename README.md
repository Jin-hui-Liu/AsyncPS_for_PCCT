# AsyncPS_for_PCCT
## Digital asynchronous event-based circuits for photon detection in modern CT scans

This repository contains all key source codes developed during Jinhui Liu's master thesis project at Delft University of Technology. This project explores the integration of asynchronous event-driven circuitry with photon-counting technology to enhance detection performance in modern computed tomography (CT) systems. Asynchronous circuits are wellsuited for event-driven applications, including photon-counting imaging. However, conventional architectures, such as the threshold subtraction (TS) and direct binning (DB) schemes, have not been implemented at the circuit level, and their performance is limited by challenges, such as pulse pile-up and charge crosstalk. To address these limitations, we propose a novel pileup-specific (PS) system that mitigates pile-up effects by extracting both the onset and peak information of pulse events.

As shown in the two figures below, the entire PS system consists of a scintillation detector, a preamplifier, a low-pass filter, four comparators, four AND gates, and a pileup-specific module. Inside the pileup-specific module, an identifier, a subtractor and four counters are used. Since we mainly focus on digital circuit design, the front-end detectors and analog circuits are simulated through a Python script developed by the Medical Physics & Technology group at Delft University of Technology.

<img src="System_Schematic_pile_up.png" width="48%"/> <img src="Pile-up-identifier.png" width="48%"/>

This repository consists of five main parts: **Identifier**, **Subtractor**, **Counter**, **PS_system** and **Layout**. Each part of the work contains its own README file with its set of instructions and source codes. All design of these asynchronous circuits are based on the [ACT EDA flow](https://github.com/asyncvlsi/actflow) developed by Prof. Rajit Manohar's group at Yale University. If you would like to run any script in this repository, please make sure to first install ACT and all its dependencies. We also recommend that you carefully review the ACT toolchain [documentation](https://avlsi.csl.yale.edu/act/doku.php?id=start) to understand how to use this design flow.

When making use of any part of this work, we kindly request users to reference this document use:
https://resolver.tudelft.nl/uuid:4140175e-c679-4010-b3d8-45831b19d818
