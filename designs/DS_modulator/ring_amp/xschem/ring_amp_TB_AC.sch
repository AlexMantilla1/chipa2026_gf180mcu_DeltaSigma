v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 550 -520 590 -520 {lab=Vout}
N 590 -520 590 -490 {lab=Vout}
N 590 -430 590 -390 {lab=0}
N 450 -460 450 -390 {lab=0}
N 450 -610 450 -580 {lab=VDD}
N 450 -620 450 -610 {lab=VDD}
N 410 -620 410 -580 {lab=#net1}
N 250 -520 250 -480 {lab=Vin}
N 250 -520 290 -520 {lab=Vin}
N 250 -420 250 -380 {lab=0}
N 150 -440 150 -400 {lab=0}
N 150 -540 150 -500 {lab=VDD}
N 290 -520 350 -520 {lab=Vin}
C {title.sym} 200 -70 0 0 {name=l1 author="Onchip"}
C {capa.sym} 590 -460 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 450 -620 0 0 {name=l2 lab=VDD}
C {vdd.sym} 150 -540 0 0 {name=l3 lab=VDD}
C {noconn.sym} 410 -620 0 0 {name=l4}
C {vsource.sym} 150 -470 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} 250 -450 0 0 {name=V2 value=0.75 savecurrent=false}
C {gnd.sym} 150 -400 0 0 {name=l5 lab=0}
C {gnd.sym} 250 -380 0 0 {name=l6 lab=0}
C {gnd.sym} 450 -390 0 0 {name=l7 lab=0}
C {gnd.sym} 590 -390 0 0 {name=l8 lab=0}
C {devices/code_shown.sym} 720 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 720 -860 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Polarizacion de entrada
alter @V2[DC] = 0.75
alter @V2[AC] = 1

** Parametros AC
let fstart = 1
let fstop = 1e9
let npts = 100

set wdz = 0.4u

** Analisis
op
dc
ac dec $&npts $&fstart $&fstop

** Ganancia y fase
plot db(v(Vout))
plot ph(v(Vout))

setplot op1
print net1
print x1.vout2p
print x1.vout2n
print x1.vout2p-x1.vout2n
print vout
write ringamp_AC.raw

.endc
"}
C {lab_wire.sym} 250 -520 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {lab_wire.sym} 590 -500 0 0 {name=p2 sig_type=std_logic lab=Vout
}
C {launcher.sym} 170 -250 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {DS_modulator/ring_amp/xschem/ring_amp.sym} 430 -520 0 0 {name=x1}
