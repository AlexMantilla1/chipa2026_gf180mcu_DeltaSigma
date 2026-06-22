v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 220 -210 260 {lab=0}
N -330 220 -250 220 {lab=0}
N -250 220 -180 220 {lab=0}
N -330 120 -330 160 {lab=vin1}
N -250 120 -250 160 {lab=vin2}
N -180 120 -180 160 {lab=vdd}
N -180 220 -120 220 {lab=0}
N -100 120 -100 160 {lab=clk}
N -120 220 -100 220 {lab=0}
N -330 -40 -330 120 {lab=vin1}
N -330 -40 -60 -40 {lab=vin1}
N -250 40 -250 120 {lab=vin2}
N -250 40 -60 40 {lab=vin2}
N -100 -0 -100 120 {lab=clk}
N -100 -0 -60 0 {lab=clk}
N -210 240 40 240 {lab=0}
N 40 80 40 240 {lab=0}
N -180 -150 -180 120 {lab=vdd}
N -180 -150 40 -150 {lab=vdd}
N 40 -150 40 -80 {lab=vdd}
C {vsource.sym} -330 190 0 0 {name=V1 value=0.5 savecurrent=false}
C {vsource.sym} -250 190 0 0 {name=V2 value="PWL(0 0 500n 1)" savecurrent=false}
C {vsource.sym} -180 190 0 0 {name=V3 value=1 savecurrent=false}
C {gnd.sym} -210 260 0 0 {name=l1 lab=0}
C {vsource.sym} -100 190 0 0 {name=V4 value="pulse(0 1 0 1n 1n 49n 100n)" savecurrent=false}
C {lab_pin.sym} -330 120 0 0 {name=p1 sig_type=std_logic lab=vin1
}
C {lab_pin.sym} -250 120 0 0 {name=p4 sig_type=std_logic lab=vin2}
C {lab_pin.sym} -180 120 0 0 {name=p5 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} -100 120 0 0 {name=p9 sig_type=std_logic lab=clk}
C {code_shown.sym} 230 60 0 0 {name=SIM1 only_toplevel=false value="
.control
tran 0.1n 500n
.save all
.endc"}
C {devices/code_shown.sym} 160 -70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {schematic.sym} 30 0 0 0 {name=x1}
