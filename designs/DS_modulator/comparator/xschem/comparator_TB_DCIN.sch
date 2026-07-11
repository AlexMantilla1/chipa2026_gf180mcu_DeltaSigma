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
N -180 -150 40 -150 {lab=vdd}
N -60 -40 -10 -40 {lab=vin1}
N -60 40 -10 40 {lab=vin2}
N -60 -0 -10 -0 {lab=clk}
N 40 90 40 240 {lab=0}
N 40 -150 40 -90 {lab=vdd}
N 90 90 90 160 {lab=0}
N 200 -30 250 -30 {lab=Vop}
N 200 30 260 30 {lab=Von}
N 250 -30 260 -30 {lab=Vop}
N 260 30 260 90 {lab=Von}
N 340 -30 340 90 {lab=Vop}
N 260 -30 340 -30 {lab=Vop}
N 260 150 260 200 {lab=0}
N 340 150 340 200 {lab=0}
N -180 190 -180 220 {lab=0}
N -180 110 -180 130 {lab=vdd}
N -180 -150 -180 110 {lab=vdd}
C {vsource.sym} -330 190 0 0 {name=V1 value=0.75 savecurrent=false}
C {vsource.sym} -250 190 0 0 {name=V2 value="PWL(0 0 2u 1.5)" savecurrent=false}
C {vsource.sym} -180 160 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} -210 260 0 0 {name=l1 lab=0}
C {vsource.sym} -100 190 0 0 {name=V4 value="pulse(0 1 0 1n 1n 49n 100n)" savecurrent=false}
C {lab_pin.sym} -330 120 0 0 {name=p1 sig_type=std_logic lab=vin1
}
C {lab_pin.sym} -250 120 0 0 {name=p4 sig_type=std_logic lab=vin2}
C {lab_pin.sym} -180 120 0 0 {name=p5 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} -100 120 0 0 {name=p9 sig_type=std_logic lab=clk}
C {code_shown.sym} 420 20 0 0 {name=SIM1 only_toplevel=false value="
.control
tran 0.1n 2u
.save all
.endc"}
C {devices/code_shown.sym} 410 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {DS_modulator/comparator/xschem/comparator.sym} 40 0 0 0 {name=x1}
C {gnd.sym} 90 160 0 0 {name=l2 lab=0}
C {capa.sym} 260 120 0 0 {name=C1
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 340 120 0 0 {name=C2
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 200 0 0 {name=l3 lab=0}
C {gnd.sym} 340 200 0 0 {name=l4 lab=0}
C {lab_pin.sym} 260 30 2 0 {name=p2 sig_type=std_logic lab=Von
}
C {lab_pin.sym} 340 -30 2 0 {name=p3 sig_type=std_logic lab=Vop}
