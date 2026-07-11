v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -380 70 -380 {lab=Doutp}
N 30 -220 70 -220 {lab=Doutn}
N 470 -340 630 -340 {lab=Vintp_1}
N 470 -260 630 -260 {lab=Vintn_1}
N 680 -420 680 -390 {lab=VDD}
N 680 -210 680 -180 {lab=VSS}
N 570 -300 630 -300 {lab=phi_2_B}
N 840 -330 930 -330 {lab=Voutp}
N 840 -270 930 -270 {lab=Voutn}
N 930 -270 930 -230 {lab=Voutn}
N 570 -40 1100 -40 {lab=reset}
N 730 -210 730 -40 {lab=reset}
N 470 -400 470 -340 {lab=Vintp_1}
N 470 -260 470 -200 {lab=Vintn_1}
N 470 -140 470 -80 {lab=VSS}
N 470 -520 470 -460 {lab=VSS}
N 1500 -400 1500 -370 {lab=VDD}
N 1480 -400 1480 -370 {lab=VSS}
N 1350 -280 1400 -280 {lab=phi_2}
N 690 -820 690 -780 {lab=VDD}
N 690 -660 690 -620 {lab=VSS}
N 570 -720 610 -720 {lab=CLK}
N 30 -340 70 -340 {lab=Vinp}
N 30 -260 70 -260 {lab=Vinn}
N 170 -170 170 -130 {lab=VSS}
N 170 -500 170 -430 {lab=VDD}
N 1590 -290 1670 -290 {lab=Doutp_q}
N 1590 -330 1670 -330 {lab=Doutn_q}
N 100 -80 140 -80 {lab=VCM}
N 120 -40 200 -40 {lab=reset}
N 200 -40 570 -40 {lab=reset}
N 60 -470 120 -470 {lab=phi_1}
N 60 -120 120 -120 {lab=phi_2}
N 770 -700 830 -700 {lab=phi_2}
N 770 -740 830 -740 {lab=phi_1}
N 270 -340 450 -340 {lab=Vintp_1}
N 450 -340 470 -340 {lab=Vintp_1}
N 270 -260 470 -260 {lab=Vintn_1}
N 120 -470 130 -470 {lab=phi_1}
N 130 -470 130 -430 {lab=phi_1}
N 210 -500 210 -430 {lab=reset}
N 120 -120 130 -120 {lab=phi_2}
N 130 -170 130 -120 {lab=phi_2}
N 140 -80 210 -80 {lab=VCM}
N 210 -170 210 -80 {lab=VCM}
N 1140 -440 1260 -440 {lab=Doutn}
N 930 -440 980 -440 {lab=Voutp}
N 930 -440 930 -330 {lab=Voutp}
N 930 -230 930 -190 {lab=Voutn}
N 930 -190 980 -190 {lab=Voutn}
N 1040 -290 1040 -260 {lab=VDD}
N 1040 -540 1040 -510 {lab=VDD}
N 1040 -370 1040 -340 {lab=VSS}
N 1040 -120 1040 -90 {lab=VSS}
N 1120 -190 1260 -190 {lab=Doutp}
N 1120 -440 1140 -440 {lab=Doutn}
N 1360 -330 1400 -330 {lab=Doutp}
N 1200 -310 1400 -310 {lab=Doutn}
N 1200 -440 1200 -310 {lab=Doutn}
N 1220 -330 1360 -330 {lab=Doutp}
N 1220 -330 1220 -190 {lab=Doutp}
N 1180 -700 1240 -700 {lab=phi_2_B}
N 980 -700 1040 -700 {lab=phi_2}
N 1100 -810 1100 -770 {lab=VDD}
N 1100 -630 1100 -590 {lab=VSS}
C {devices/lab_wire.sym} 170 -500 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 690 -620 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -130 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 -180 2 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 -420 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} 470 -170 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 470 -430 2 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 470 -520 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -80 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1500 -400 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1480 -400 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 120 -40 0 0 {name=p108 lab=reset}
C {iopin.sym} 20 -720 0 0 {name=p16 lab=VDD}
C {iopin.sym} 20 -690 0 0 {name=p14 lab=VSS}
C {opin.sym} 1260 -190 0 0 {name=p21 lab=Doutp}
C {opin.sym} 1260 -440 0 0 {name=p22 lab=Doutn}
C {lab_wire.sym} 1660 -290 0 0 {name=p4 sig_type=std_logic lab=Doutp_q}
C {lab_wire.sym} 1660 -330 0 0 {name=p7 sig_type=std_logic lab=Doutn_q}
C {noconn.sym} 1670 -290 2 0 {name=l1}
C {noconn.sym} 1670 -330 2 0 {name=l2}
C {lab_wire.sym} 570 -300 2 1 {name=p17 sig_type=std_logic lab=phi_2_B}
C {lab_wire.sym} 1350 -280 2 1 {name=p18 sig_type=std_logic lab=phi_2}
C {lab_wire.sym} 690 -820 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {ipin.sym} 570 -720 0 0 {name=p1 lab=CLK}
C {lab_wire.sym} 830 -700 0 1 {name=p2 sig_type=std_logic lab=phi_2}
C {lab_wire.sym} 830 -740 0 1 {name=p20 sig_type=std_logic lab=phi_1}
C {ipin.sym} 30 -340 0 0 {name=p24 lab=Vinp}
C {ipin.sym} 30 -260 0 0 {name=p25 lab=Vinn}
C {lab_wire.sym} 30 -380 0 0 {name=p26 sig_type=std_logic lab=Doutp}
C {lab_wire.sym} 30 -220 0 0 {name=p27 sig_type=std_logic lab=Doutn}
C {lab_wire.sym} 480 -340 0 1 {name=p28 sig_type=std_logic lab=Vintp_1}
C {lab_wire.sym} 480 -260 0 1 {name=p29 sig_type=std_logic lab=Vintn_1}
C {ipin.sym} 100 -80 0 0 {name=p30 lab=VCM}
C {lab_wire.sym} 70 -120 0 0 {name=p23 sig_type=std_logic lab=phi_2}
C {lab_wire.sym} 70 -470 0 0 {name=p31 sig_type=std_logic lab=phi_1
}
C {DS_modulator/clkgen/xscheme/clkgen.sym} 690 -720 0 0 {name=x2}
C {DS_modulator/dff/xschem/dff.sym} 1400 -270 0 0 {name=x5}
C {DS_modulator/comparator/xschem/comparator.sym} 680 -300 0 0 {name=x6}
C {DS_modulator/integrator/xschem/integrator.sym} 170 -300 0 0 {name=x7}
C {devices/lab_wire.sym} 210 -500 0 1 {name=p15 sig_type=std_logic lab=reset}
C {DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 1040 -440 0 0 {name=x1}
C {DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 1040 -190 0 0 {name=x3}
C {lab_wire.sym} 1040 -290 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1040 -540 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1040 -340 2 1 {name=p34 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1040 -90 2 1 {name=p35 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 860 -330 0 1 {name=p36 sig_type=std_logic lab=Voutp}
C {lab_wire.sym} 860 -270 0 1 {name=p37 sig_type=std_logic lab=Voutn
}
C {DS_modulator/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 1100 -700 0 0 {name=x4}
C {lab_wire.sym} 1240 -700 2 1 {name=p38 sig_type=std_logic lab=phi_2_B}
C {lab_wire.sym} 990 -700 0 1 {name=p39 sig_type=std_logic lab=phi_2}
C {lab_wire.sym} 1100 -810 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1100 -590 2 1 {name=p41 sig_type=std_logic lab=VSS}
