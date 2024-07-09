## To generate Figure 5 in Cirtala2024 please follow the following steps:

1. Run NEURON code:

   For each branch in the Purkinje Cell please follow the steps: 

   a. Open a terminal at the desired branch: for example: `Figure5/Neuron_codes/left_tree/br1_CAP14`

   b. Load the mod files by typing:

        nrnivmodl mod

   c. Run NEURON code (corresponding to the branch you chose) 

      nrngui Branch1.hoc 

What you will obtain from NEURON:
- In the NEURON window you will see a shape plot corresponding to how dendritic
spikes propagate
- In the Results folder you will see a lot of `.dat` files. The simulation
automatically runs all PF in [2:2:150] 

2. Plot the Results

   a. In the Results folder find the Matlab code `Plot_br1.m`, please run it and you will obtain `br1_CAP14.mat`. Move this file to `Figure5/Matlab_codes`

To obtain the comparative plots in Figure 5, you need to repeat steps 1-2 for each branch of the dendritic tree and then run `Figure5_code.m` located inside `Figure5/Matlab codes`.  

If you have problems or you wish to test more scenarios, please email me at gabriela-cirtala@oist.jp

