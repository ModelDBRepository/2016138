## To generate Figure 2 in Cirtala2024 please follow the following steps:
1. Run NEURON code:

    a. Open a terminal at the folder `/Neuron_codes/CAP_17`

    b. Load the mod files by typing:

        nrnivmodl mod

    c. Run NEURON code:

        nrngui Branch3.hoc

What you will obtain from NEURON:
- In the NEURON window you will see a shape plot corresponding to how dendritic
spikes propagate (Figures 2G-I after activation time t = 398msec).
- In the Results folder you will see a lot of `.dat` files. The simulation
automatically runs all PF in [2:2:150] for the CAP17.

2. Plot the Results

    a. In the Results folder find the Matlab code `Plot_Figure2DtoF.m`, please run it and
    you will obtain Figure2D-F.

    b. If you wish to obtain the comparative plots shown in Figure 2B and C please:

    - run the neuron codes corresponding to each CaP = {1,1.3,1.5,1.7}
    - for each case run `Plot_Figure2DtoF.m`, which will generate you a `.mat` file
    - Download each of this files and place them in the Matlab_codes
    - Run `Plot_Fig3panelsBC.m`


If you have problems or you wish to test more scenarios, please email me at gabriela-cirtala@oist.jp

