## To generate Figure 1 in Cirtala2024 please follow the following steps:
1. Run NEURON code:

    a. Open a terminal at the folder `/Neuron_codes/`

    b. Load the mod files by typing:

        nrnivmodl mod
    
    c. Run Neuron code:

        nrngui Branch5.hoc
        nrngui Branch18.hoc

### What you will obtain from NEURON:
- In the NEURON window you will see a shape plot corresponding to how dendritic
spikes propagate (after activation time t = 399msec).
- In the Results folder you will see a lot of `.dat` files. The simulation
automatically runs all PF in [2:2:150] for the reference value of 1.0CaP for both br5 and br18.
- In the Results folder, find the Matlab code `Figure1_plot.m`, this will give give you all panels in Figure 1

## To obtain Supplementary Figure S3.
    a. Run Neuron code: Branch5.hoc - The Neuron ShapePlot window will open and will allow you to visualize the dendritic spike propagation for different number of PF.
    b. After the Neuron code produces all .dat files required, plot results.
    c. If you wish to obtain the comparative plots from panels B and C, run again Branch5.hoc but change the CaP corresponding to branch 5 from 1.0CaP to 0.9CaP, respectively 0.8CaP.

If you have problems or you wish to test more scenarios, please email me at gabriela-cirtala@oist.jp
