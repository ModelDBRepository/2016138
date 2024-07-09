## To generate Figure 4 in Cirtala2024 please follow the following steps:

Run NEURON code for each scenario: 

1. Branch8 with no Kv4 increase - corresponds to panels A-C in Figure 4

    a. Open a terminal at the folder `Figure4/no_Kv4_increase/br8`

    b. Load the mod files by typing:

        nrnivmodl mod

    c. Run NEURON code:
    
        nrngui Branch8.hoc

    NEURON will open a ShapePlot and you will observe how dendritic spikes propagate for the case of 70PF (i.e. the threshold for Branch8). You will start seeing depolarization starting at the activation of the PF input, i.e. t = 410msec. 

2.  Branch8 with Kv4 increase - corresponds to panels D-F in Figure 4 

    In the folder `Figure4/with_Kv4_increase/br8`, Follow steps a-c from part A. 

3. Branch7 with no Kv4 increase - corresponds to panels G-I in Figure 4
    
    a. Open a terminal at the folder `/no_Kv4_increase/br7`

    b. Load the `mod` files by typing:

        nrnivmodl mod

    c. Run NEURON code:

        nrngui Branch7.hoc

NEURON will open a ShapePlot and you will observe how dendritic spikes propagate for the case of 42PF (i.e. the threshold for Branch7). You will start seeing depolarization starting at the activation of the PF input, i.e. t = 399msec. 

4. Branch7 with Kv4 increase - corresponds to panels J-L in Figure 4

    In the folder `Figure4/with_Kv4_increase/br7`, Follow steps a-c from part C. 


If you have problems or you wish to test more scenarios, please email me at gabriela-cirtala@oist.jp


	
