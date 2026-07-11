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
N 450 -460 450 -390 {lab=#net1}
N 450 -610 450 -580 {lab=VDD}
N 450 -620 450 -610 {lab=VDD}
N 410 -620 410 -580 {lab=Vout1}
N 250 -520 250 -480 {lab=Vin}
N 250 -520 290 -520 {lab=Vin}
N 250 -420 250 -380 {lab=0}
N 150 -440 150 -400 {lab=0}
N 150 -540 150 -500 {lab=VDD}
N 290 -520 350 -520 {lab=Vin}
N 450 -330 450 -300 {lab=0}
C {title.sym} 200 -70 0 0 {name=l1 author="Onchip"}
C {capa.sym} 590 -460 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 450 -620 0 0 {name=l2 lab=VDD}
C {vdd.sym} 150 -540 0 0 {name=l3 lab=VDD}
C {vsource.sym} 150 -470 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 250 -450 0 0 {name=V2 value=0.85 savecurrent=false}
C {gnd.sym} 150 -400 0 0 {name=l5 lab=0}
C {gnd.sym} 250 -380 0 0 {name=l6 lab=0}
C {gnd.sym} 590 -390 0 0 {name=l8 lab=0}
C {devices/code_shown.sym} 170 -790 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 820 -1220 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Polarizacion de entrada
alter @V2[DC] = 0.85
alter @V2[AC] = 1

** Parametros AC
let fstart = 1
let fstop = 1e9
let npts = 100

** Analisis
op
** dc
ac dec $&npts $&fstart $&fstop

** Ganancia y fase
plot db(v(Vout))
plot ph(v(Vout))*180/pi

let A0 = db(v(vout)[0])
print A0

let gain = db(v(vout))
let phase = ph(v(vout))*180/pi

meas ac UGF when gain=0
meas ac PH find phase at=UGF

setplot op1

let I1 = v.x1.v1#branch
let I2 = v.x1.v2#branch
let I3 = v.x1.v3#branch
let I2p = @m.x1.xm4.m0[id]
let I2n = @m.x1.xm5.m0[id]
let vout2p = x1.vout2p
let vout2n = x1.vout2n
let vdz = x1.vout2p-x1.vout2n

print vin
print vout1
print I1
print vout2p
print vout2n
print vdz
print I2
print I2p
print I2n
print vout
print I3

** op parameter example 
** let vth1n = @m.x1.xm1.m0[vth]
** print vth1n

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
C {designs/DS_modulator/ring_amp/xschem/ring_amp.sym} 430 -520 0 0 {name=x1}
C {vsource.sym} 450 -360 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 450 -300 0 0 {name=l7 lab=0}
C {lab_wire.sym} 410 -600 0 0 {name=p3 sig_type=std_logic lab=Vout1}
C {noconn.sym} 410 -620 3 1 {name=l4}
