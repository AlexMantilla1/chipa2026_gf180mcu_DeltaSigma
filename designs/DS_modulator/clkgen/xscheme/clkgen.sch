v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
<<<<<<< HEAD
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
=======
N 200 -190 280 -190 {lab=#net1}
N 420 -190 540 -190 {lab=#net2}
N 210 30 280 30 {lab=#net3}
N 420 30 540 30 {lab=#net4}
N 680 30 780 30 {lab=OUT2}
N 680 -190 780 -190 {lab=OUT1}
N 130 -40 340 -40 {lab=VDD}
N 340 -40 600 -40 {lab=VDD}
N 340 -120 600 -120 {lab=VSS}
N 120 -120 340 -120 {lab=VSS}
N 120 -260 340 -260 {lab=VDD}
N 340 -260 600 -260 {lab=VDD}
N 130 100 340 100 {lab=VSS}
N 340 100 600 100 {lab=VSS}
N 30 -190 60 -190 {lab=#net5}
N 30 30 70 30 {lab=#net6}
N -50 -260 120 -260 {lab=VDD}
N -50 -260 -50 -240 {lab=VDD}
N -50 -140 -50 -130 {lab=VSS}
N -50 -120 120 -120 {lab=VSS}
N -50 -130 -50 -120 {lab=VSS}
N -50 -40 130 -40 {lab=VDD}
N -50 -40 -50 -20 {lab=VDD}
N -50 100 130 100 {lab=VSS}
N -50 80 -50 100 {lab=VSS}
N -290 -210 -100 -210 {lab=clk}
N -210 50 -100 50 {lab=#net7}
N -120 -100 480 -100 {lab=#net2}
N -120 -80 -120 10 {lab=#net2}
N -120 10 -100 10 {lab=#net2}
N -120 -100 -120 -80 {lab=#net2}
N 480 -190 480 -100 {lab=#net2}
N -280 -210 -280 -160 {lab=clk}
N -330 -210 -290 -210 {lab=clk}
N -280 50 -210 50 {lab=#net7}
N -280 -20 -280 50 {lab=#net7}
N 480 -60 480 30 {lab=#net4}
N -100 -60 480 -60 {lab=#net4}
N -100 -170 -100 -60 {lab=#net4}
N 250 100 250 120 {lab=VSS}
N 250 -280 250 -260 {lab=VDD}
N 50 -260 50 -40 {lab=VDD}
N 240 -120 240 100 {lab=VSS}
N -210 -100 -160 -100 {lab=VDD}
N -160 -260 -160 -100 {lab=VDD}
N -160 -260 -50 -260 {lab=VDD}
N -380 -100 -350 -100 {lab=VSS}
N -380 -100 -380 100 {lab=VSS}
N -380 100 -50 100 {lab=VSS}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} -280 -100 1 0 {name=x7}
C {ipin.sym} -330 -210 0 0 {name=p1 lab=clk}
C {opin.sym} 780 -190 0 0 {name=p2 lab=OUT1}
C {opin.sym} 780 30 0 0 {name=p3 lab=OUT2}
C {iopin.sym} 250 -280 3 0 {name=p4 lab=VDD}
C {iopin.sym} 250 120 1 0 {name=p5 lab=VSS}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 70 30 0 0 {name=x1}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 280 30 0 0 {name=x2}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 540 30 0 0 {name=x3}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 540 -190 0 0 {name=x6}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 60 -190 0 0 {name=x4}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_inv/xscheme/clkgen_inv.sym} 280 -190 0 0 {name=x5}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_nand/xscheme/clkgen_nand.sym} -50 -190 0 0 {name=x8}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen_nand/xscheme/clkgen_nand.sym} -50 30 0 0 {name=x9}
>>>>>>> 9989ca739e404c74d48f7b852d19f4f93f77e512
