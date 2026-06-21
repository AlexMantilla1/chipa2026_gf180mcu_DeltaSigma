v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 120 -190 160 {lab=0}
N -310 120 -230 120 {lab=0}
N -230 120 -160 120 {lab=0}
N -310 20 -310 60 {lab=VIN1}
N -230 20 -230 60 {lab=VIN2}
N -160 20 -160 60 {lab=VDD}
N 270 250 270 280 {lab=0}
N -160 120 -100 120 {lab=0}
N -80 20 -80 60 {lab=clk}
N -100 120 -80 120 {lab=0}
N 360 150 410 150 {lab=out1}
N 360 190 410 190 {lab=out2}
N 140 210 170 210 {lab=VIN2}
N 140 130 170 130 {lab=VIN1}
N 270 60 270 90 {lab=VDD}
N 140 170 170 170 {lab=clk}
C {schematic.sym} 260 170 0 0 {name=x1}
C {vsource.sym} -310 90 0 0 {name=V1 value=0.5 savecurrent=false}
C {vsource.sym} -230 90 0 0 {name=V2 value=0.2 savecurrent=false}
C {vsource.sym} -160 90 0 0 {name=V3 value=1 savecurrent=false}
C {gnd.sym} -190 160 0 0 {name=l1 lab=0}
C {gnd.sym} 270 280 0 0 {name=l2 lab=0}
C {vsource.sym} -80 90 0 0 {name=V4 value="pulse(0 1 0 1n 1n 49n 100n)" savecurrent=false}
C {lab_pin.sym} -310 20 0 0 {name=p1 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 140 130 0 0 {name=p2 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 140 210 0 0 {name=p3 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} -230 20 0 0 {name=p4 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} -160 20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 60 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {opin.sym} 410 150 0 0 {name=p7 lab=out1}
C {opin.sym} 410 190 0 0 {name=p8 lab=out2}
C {lab_pin.sym} -80 20 0 0 {name=p9 sig_type=std_logic lab=clk}
C {lab_pin.sym} 140 170 0 0 {name=p10 sig_type=std_logic lab=clk}
C {code_shown.sym} 610 80 0 0 {name=SIM1 only_toplevel=false value="
.control
.tran 0.1n 500n
.save all
.endc"}
