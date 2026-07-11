# RingAmp Differential

*Block of the Delta-Sigma Modulator — Chipathon 2026.*

## 1. Overview

In this block, a pseudo-differential Ring Amp is realized using two RingAmp blocks. Alongside with this, there are CMFB (common-mode feedback) and auto-zero circuits that are necessary for the correct functioning in the switched-capacitor integrator environment as they are responsible for controlling the output common-mode voltage and reducing offset-related error impact on the output respectively. Additionally, using a differential configuration allows the amplifier to process complementary signal paths.

## 2. Usage in the Delta-Sigma Modulator

This block plays the role of the active amplification element for the switched-capacitor integrator that is used inside the delta-sigma modulator. Using the pseudo-differential configuration of the amplifier makes possible to process differential signals. Such design makes the amplifier less sensitive to the common-mode disturbances and enlarges the available signal range comparing to the single-ended solution.

The common-mode feedback circuits maintain the output common-mode voltage inside the desired range. Otherwise, the voltages of the two output nodes could drift over time between different operating cycles leading to the deteriorated performance of the integrator or even driving the amplifier beyond its intended operation region.

Auto-zero part of the circuit is used for sampling and compensating offset-related errors before the amplifying stage. Reducing the offset influence on the amplifier makes possible to reach better accuracy and reduce the error accumulation effect during delta-sigma modulation.

## 3. Short Analysis

![Schematic of pseudo-differential RingAmp with RingAmp cores, CMFB, and auto-zero blocks.](img/ring_amp_diff.png)

*Figure 1. Schematic of pseudo-differential RingAmp.*

Pseudo-differential amplifier is formed using two RingAmp cores working on complementary signal paths. The output differential signal equals

```math
V_{OD}=V_{OP}-V_{ON},
```

and the output common-mode voltage equals

```math
V_{CM}=\frac{V_{OP}+V_{ON}}{2}.
```

RingAmp differential gain comes from RingAmp core blocks, and CMFB regulates the output common mode voltage. Separating these two functions allows the design to amplify the input differential signal and maintain the output node operating point at the same time.

As opposed to the signal-path capacitors, CMFB capacitors do not affect the differential transfer function of the integrator. Instead, they are used to detect and remove the common mode error that occurs in each clock cycle. As a result, they only need to be large enough to compensate for the accumulated common-mode error, making CMFB loop less demanding on the size of the capacitors used.

During the auto-zero phase, the offset of the amplification path is sampled onto special capacitors. During the amplification phase, the stored charge acts to compensate the sampled offset reducing its effect on the output error. Thus, this pseudo-differential RingAmp provides improved accuracy comparing to the uncompensated one.

## 4. Specifications

The following specifications are preliminary design targets intended to guide the initial development of the pseudo-differential RingAmp. These values may be refined as system-level requirements for the integrator and delta-sigma modulator become available.

| Spec                       | Comment                                | Target min | Target typ | Target max | Sch min | Sch typ | Sch max | Layout min | Layout typ | Layout max |
| -------------------------- | -------------------------------------- | ---------- | ---------- | ---------- | ------- | ------- | ------- | ---------- | ---------- | ---------- |
| V_DD                       | Supply voltage (±10%)                  | 1.35 V     | 1.50 V     | 1.65 V     | –       | –       | –       | –          | –          | –          |
| f_clk                      | Modulator clock frequency              | –          | –          | 5 MHz      | –       | –       | –       | –          | –          | –          |
| Differential DC Gain       | Low-frequency differential gain        | 70 dB      | –          | –          | –       | –       | –       | –          | –          | –          |
| Output Common-Mode Voltage | Regulated by CMFB                      | –          | 0.75 V     | –          | –       | –       | –       | –          | –          | –          |
| Differential Output Swing  | Available signal range                 | 1.2*VDD    | TBD        | TBD        | –       | –       | –       | –          | –          | –          |
| Input-Referred Offset      | After auto-zero operation              | TBD        | TBD        | TBD        | –       | –       | –       | –          | –          | –          |
| Average Power              | Amplifier contribution to power budget | –          | TBD        | –          | –       | –       | –       | –          | –          | –          |

## References

[1] A. J. Mantilla Rios, D. F. Gómez Serrano, and L. E. Rueda Guerrero, *Power Reduction Techniques for Low-Voltage Delta-Sigma Modulators*, Universidad Industrial de Santander, Bucaramanga, Colombia, 2023.
[2] L. Wu, M. Keskin, U. Moon, and G. C. Temes, "Efficient Common-Mode Feedback Circuits for Pseudo-Differential Switched-Capacitor Stages," in *Proceedings of the IEEE International Symposium on Circuits and Systems (ISCAS)*, vol. 5, pp. 445–448, 2000.
