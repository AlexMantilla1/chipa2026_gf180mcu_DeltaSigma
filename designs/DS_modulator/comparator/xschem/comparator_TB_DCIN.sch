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
N 180 130 180 160 {lab=0}
N -160 120 -100 120 {lab=0}
N -80 20 -80 60 {lab=clk}
N -100 120 -80 120 {lab=0}
N 270 30 320 30 {lab=out1}
N 270 70 320 70 {lab=out2}
N 50 90 80 90 {lab=VIN2}
N 50 10 80 10 {lab=VIN1}
N 180 -60 180 -30 {lab=VDD}
N 50 50 80 50 {lab=clk}
C {vsource.sym} -310 90 0 0 {name=V1 value=0.5 savecurrent=false}
C {vsource.sym} -230 90 0 0 {name=V2 value=0.2 savecurrent=false}
C {vsource.sym} -160 90 0 0 {name=V3 value=1 savecurrent=false}
C {gnd.sym} -190 160 0 0 {name=l1 lab=0}
C {gnd.sym} 180 160 0 0 {name=l2 lab=0}
C {vsource.sym} -80 90 0 0 {name=V4 value="pulse(0 1 0 1n 1n 49n 100n)" savecurrent=false}
C {lab_pin.sym} -310 20 0 0 {name=p1 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 50 10 0 0 {name=p2 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 50 90 0 0 {name=p3 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} -230 20 0 0 {name=p4 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} -160 20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -60 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {opin.sym} 320 30 0 0 {name=p7 lab=out1}
C {opin.sym} 320 70 0 0 {name=p8 lab=out2}
C {lab_pin.sym} -80 20 0 0 {name=p9 sig_type=std_logic lab=clk}
C {lab_pin.sym} 50 50 0 0 {name=p10 sig_type=std_logic lab=clk}
C {code_shown.sym} 490 60 0 0 {name=SIM1 only_toplevel=false value="
.control
tran 0.1n 500n
.save all
.endc"}
C {devices/code_shown.sym} 420 -70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {DS_modulator/comparator/xschem/schematic.sym} 170 50 0 0 {name=x2}
