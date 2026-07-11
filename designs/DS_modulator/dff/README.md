1. Overview
A D-type flip-flop (DFF) is a sequential storage element that captures the value present at the data input (D) on the active edge of the clock signal and stores it at the output (Q). The stored value remains unchanged until the next active clock edge.

2. Role in the Delta-Sigma Modulator.

The figure demodulator.png illustrates a 2-level quantizer making the circuit simple and cheap. A/D conversion is a two-dimensional process by discretization of both value und time, realized by comparator CP and flipflop FF, respectively. The D flip-flop stores and synchronizes the quantizer (comparator) output with the modulator clock, generating a stable binary sequence for the feedback loop and subsequent digital signal processing.

ref: https://www.omicron-lab.com/fileadmin/assets/Bode_100/Articles_UseCases/Lab2_Delta_Sigma_ADC_sol.pdf

3. Short Analysis.
The implemented flip-flop consist of two latch (master-slave), the latch structure is showed in figure lathc.png. So el design of the latch is starts from the initial condition Q=0, the transition to the Q=1 state is only possible if the pull-down network formed by M5 and M6 is strong enough to overcome the positive feedback of the latch. To analyze this condition, the series-connected pair M5-M6 is modeled as an equivalent transistor, and the currents of the pull-up and pull-down networks are equated at the critical operating point VQ=VDD/2, while neglecting channel-length modulation.

The theoretical analysis establishes that the effective transistor sizing ratio must satisfy
(W/L)M5-6 >= 2.26
which implies that each transistor M5 and M6 should have approximately

(W/L)>=4.5.

However, simulations show that an individual transistor ratio of W/L>3 is already sufficient to switch the latch successfully. The discrepancy between the analytical prediction and the simulation results is attributed to second-order effects, such as drain-induced barrier lowering (DIBL) and channel-length modulation, which were neglected in the analytical model.

In summary, the sizing of the access transistors must ensure that the pull-down network is capable of overpowering the latch's positive feedback during the write operation, thereby guaranteeing reliable and robust switching of the latch state.

ref: Rabaey, J. M., Chandrakasan, A., & Nikoli?, B. (2003). Digital Integrated Circuits: A Design Perspective (2nd ed.). Prentice Hall.


4. Specifications

| Parameter                | Symbol | Target Value | Unit |
|--------------------------|--------|-------------:|:----:|
| Supply Voltage           | VDD    | 1.5          | V    |
| Operating Frequency      | fCLK   | 5            | MHz  |
| Clock Period             | TCLK   | 200          | ns   |
| Clock-to-Q Delay         | tCQ    | < 80         | ns   |
| Setup Time               | tSU    | < 20         | ns   |
| Hold Time                | tH     | < 20         | ns   |
| D-to-Q Propagation Delay | tPD    | < 100        | ns   |
| Rise Time                | tR     | < 20         | ns   |
| Fall Time                | tF     | < 20         | ns   |
| Output High Voltage      | VOH    | > 0.9·VDD    | V    |
| Output Low Voltage       | VOL    | < 0.1·VDD    | V    |


