# Doubler (Clock Boosting Circuit)

*Block of the Delta-Sigma Modulator — Chipathon 2026.*

## 1. Overview

This block is a **clock voltage doubler** (clock booster). It takes the system clock CLK, which swings between 0 and V_DD, and produces a boosted clock CLKD that swings between 0 and 2·V_DD, in phase with the input and at the same frequency. The doubler is built from a pump capacitor **C_D** and five switches **S0–S4**. Operation alternates between two phases of CLK: in one phase the capacitor is charged to V_DD (precharge) while the output is reset to ground; in the other phase the charged capacitor is level-shifted so that its top plate, and therefore the output, reaches the 2·V_DD level. This operation results in a doubled clock waveform which is suitable for driving the switches of the modulator.

## 2. Role in the Delta-Sigma Modulator

The modulator is a switched-capacitor (SC) circuit: its integrators sample and transfer charge through analog switches gated by the clock. At a low supply (e.g., V_DD = 1.5 V) a switch whose gate is driven only to V_DD has a high resistance and it cannot pass a full-swing signal. As a consequence, incomplete settling, signal-dependent charge error, and distortion degrades the modulator's linearity (SNDR) and dynamic range.

Clock boosting solves this by creating *"another voltage domain"*: the switches are actuated by a clock that reaches 2·V_DD. With this boosted gate drive, simple **NMOS-only** switches turn fully on across the entire input range, giving a low, signal-independent on-resistance and rail-to-rail operation. This lets the SC integrators sample and settle correctly at low supply. The doubler therefore supplies the boosted clock CLKD that gates the critical sampling/charge-transfer switches throughout the modulator.

## 3. Short Analysis

![Doubler schematic — pump capacitor C_D and switches S0–S4 mapping CLK (0→V_DD) to CLKD (0→2·V_DD).](img/doubler.png)

*Figure 1. Doubler schematic: pump capacitor C_D and switches S0–S4.*

The circuit is a **clock voltage doubler** built around a pump capacitor **C_D**. It maps the input clock CLK (0 → V_DD) to a boosted, in-phase clock CLKD (0 → 2·V_DD) at the same frequency. Its purpose, per the reference, is to create "another voltage domain" so the switched-capacitor switches can be actuated at 2·V_DD and therefore pass a full-swing signal at low V_DD. Operation is governed by the two states of CLK:

**Precharge phase — CLK = V_SS.** Switches **S0, S2, S4** are on. **S2** charges the upper plate of C_D to V_DD while **S0** holds the lower plate at V_SS, so C_D is charged with its upper terminal positive:

```
V_CD = V_DD
```

At the same time **S4** forces the output to CLKD = V_SS, resetting the load.

**Boost / transfer phase — CLK = V_DD.** Switches **S1, S3** are on. **S1** drives the lower plate of C_D from V_SS up to V_DD; with the stored V_DD across C_D, the upper plate is level-shifted to 2·V_DD and **S3** connects it to the output:

```
V_CLKD = V_DD + V_CD = 2·V_DD
```

**Finite-load correction.** The load capacitance C_L (gate capacitance of the switches CLKD drives) absorbs part of the charge stored on C_D. Because S4 fully discharges CLKD each cycle, charge conservation on the boosted node gives following equation:

```
              2·V_DD
V_CLKD = ----------------
            1 + C_L / C_D
```

so the fractional droop below 2·V_DD is ≈ C_L/C_D for C_D ≫ C_L. To keep the loss small, C_D must be made large compared with the load C_L (e.g. C_D ≳ 100·C_L for < 1 % droop).

## 4. Specifications

| Spec | Comment | Target min | Target typ | Target max | Sch min | Sch typ | Sch max | Layout min | Layout typ | Layout max |
|---|---|---|---|---|---|---|---|---|---|---|
| V_DD | ±10 % | 1.35 V | 1.5 V | 1.65 V | – | – | – | – | – | – |
| f_clk | | 4 MHz | 4.5 MHz | 5 MHz | – | – | – | – | – | – |
| Boost loss vs 2·V_DD | C_L/C_D droop | – | 1 % | 2 % | – | – | – | – | – | – |
| Rise time (10–90 %) | Fit within half-period | – | 10 ns | 25 ns | – | – | – | – | – | – |
| Settling to final value | < ~T/4 @ 5 MHz | – | 30 ns | 50 ns | – | – | – | – | – | – |
| Avg. power | Doubler contribution to budget | – | TBM | – | – | – | – | – | – | – |

## References

- A. J. Mantilla Rios, D. F. Gómez Serrano, and L. E. Rueda Guerrero, *Power Reduction Techniques for Low-Voltage Delta-Sigma Modulators*, Universidad Industrial de Santander.
- J. A. Starzyk, Ying-Wei Jan and Fengjing Qiu, "A DC-DC charge pump design based on voltage doublers," in IEEE Transactions on Circuits and Systems I: Fundamental Theory and Applications, vol. 48, no. 3, pp. 350-359, March 2001, doi: 10.1109/81.915390.



