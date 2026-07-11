v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 570 -340 650 -340 {lab=#net1}
N 790 -340 910 -340 {lab=#net2}
N 580 -120 650 -120 {lab=#net3}
N 790 -120 910 -120 {lab=#net4}
N 1050 -120 1150 -120 {lab=OUT2}
N 1050 -340 1150 -340 {lab=OUT1}
N 500 -190 710 -190 {lab=VDD}
N 710 -190 970 -190 {lab=VDD}
N 710 -270 970 -270 {lab=VSS}
N 490 -270 710 -270 {lab=VSS}
N 490 -410 710 -410 {lab=VDD}
N 710 -410 970 -410 {lab=VDD}
N 500 -50 710 -50 {lab=VSS}
N 710 -50 970 -50 {lab=VSS}
N 400 -340 430 -340 {lab=#net5}
N 400 -120 440 -120 {lab=#net6}
N 320 -410 490 -410 {lab=VDD}
N 320 -410 320 -390 {lab=VDD}
N 320 -290 320 -280 {lab=VSS}
N 320 -270 490 -270 {lab=VSS}
N 320 -280 320 -270 {lab=VSS}
N 320 -190 500 -190 {lab=VDD}
N 320 -190 320 -170 {lab=VDD}
N 320 -50 500 -50 {lab=VSS}
N 320 -70 320 -50 {lab=VSS}
N 80 -360 270 -360 {lab=clk}
N 160 -100 270 -100 {lab=#net7}
N 250 -250 850 -250 {lab=#net2}
N 250 -230 250 -140 {lab=#net2}
N 250 -140 270 -140 {lab=#net2}
N 250 -250 250 -230 {lab=#net2}
N 850 -340 850 -250 {lab=#net2}
N 90 -360 90 -310 {lab=clk}
N 40 -360 80 -360 {lab=clk}
N 90 -100 160 -100 {lab=#net7}
N 90 -170 90 -100 {lab=#net7}
N 850 -210 850 -120 {lab=#net4}
N 270 -210 850 -210 {lab=#net4}
N 270 -320 270 -210 {lab=#net4}
N 620 -50 620 -30 {lab=VSS}
N 620 -430 620 -410 {lab=VDD}
N 420 -410 420 -190 {lab=VDD}
N 610 -270 610 -50 {lab=VSS}
N 160 -250 210 -250 {lab=VDD}
N 210 -410 210 -250 {lab=VDD}
N 210 -410 320 -410 {lab=VDD}
N -10 -250 20 -250 {lab=VSS}
N -10 -250 -10 -50 {lab=VSS}
N -10 -50 320 -50 {lab=VSS}
C {ipin.sym} 40 -360 0 0 {name=p1 lab=clk}
C {opin.sym} 1150 -340 0 0 {name=p2 lab=OUT1}
C {opin.sym} 1150 -120 0 0 {name=p3 lab=OUT2}
C {iopin.sym} 620 -430 3 0 {name=p4 lab=VDD}
C {iopin.sym} 620 -30 1 0 {name=p5 lab=VSS}
C {DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 650 -340 0 0 {name=x5}
C {DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 430 -340 0 0 {name=x1}
C {DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 650 -120 0 0 {name=x4}
C {DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 440 -120 0 0 {name=x6}
C {DS_modulator/clkgen_nand/xscheme/clkgen_nand.sym} 320 -340 0 0 {name=x8}
C {DS_modulator/clkgen_nand/xscheme/clkgen_nand.sym} 320 -120 0 0 {name=x9}
C {DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 90 -250 1 0 {name=x7}
C {DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 970 -340 0 0 {name=x2}
C {DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 970 -120 0 0 {name=x3}
