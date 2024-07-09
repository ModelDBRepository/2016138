## To generate Figure 3 in Cirtala2024 please follow the following steps:
1. Run NEURON code:
    a. Open a terminal at the folder `/Neuron_codes/CAP_08`
    b. Load the mod files by typing:

        nrnivmodl mod

    c. Run NEURON code:

        nrngui Branch15.hoc

What you will obtain from NEURON:
- In the NEURON window you will see a shape plot corresponding to how dendritic
spikes propagate (Figures 3G-I after activation time t = 399msec).
- In the Results folder you will see a lot of `.dat` files. The simulation
automatically runs all PF in [2:2:150] for the CAP08.

2. Plot the Results

    a. In the Results folder find the Matlab code `Plot_Figure3DtoF.m`, please run it and
    you will obtain Figure3D-F.

    b. If you wish to obtain the comparative plots shown in Figure 3B and C please:

    - run the neuron codes corresponding to each CaP = {0.6,0.8,1}
    - for each case run `Plot_Figure3DtoF.m`, which will generate you a `.mat` file
    - Download each of this files and place them in the Matlab_codes
    - Run `Plot_Fig3panelsBC.m`

Observation: For obtaining FigureS1 please run the NEURON codes corresponding to 1.0 CaP and use `Plot_Figure3DtoF.m` to get FigureS1: panels A-C.


If you have problems or you wish to test more scenarios, please email me at gabriela-cirtala@oist.jp
