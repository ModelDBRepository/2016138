## To generate Figure 7 in Cirtala2024 please follow the following steps:

1. Run NEURON code:

    a. Open a terminal at the folder `/Neuron_codes/br5and10 `

    b. Load the mod files by typing:

        nrnivmodl mod

    c. Run NEURON code:

        nrngui Branch5and10.hoc

What you will obtain from NEURON:
- In the NEURON window you will see a shape plot corresponding to how dendritic
spikes propagate for the co-activation of branches 5 and 10 (Figure7C-F  after activation time t = 400msec).
- In the Results folder you will see a lot of .dat files. The simulation
automatically runs all PF in [2:2:150] for 1.0CaP for branch5 and 1.5CaP for branch10. 

2. Plot the Results

    In the Results folder find the Matlab code `Plotfunction_br5and10.m`, please run it and
    you will obtain Figure7A. 

Repeat steps 1-2 for co-activation of branches 11 and 12: `/Neuron_codes/br11and12`. 

Same steps can be followed for obtaining all possible combination of branches in the PC and obtain panels K and L. 

If you have problems or you wish to test more scenarios, please email me at gabriela-cirtala@oist.jp

