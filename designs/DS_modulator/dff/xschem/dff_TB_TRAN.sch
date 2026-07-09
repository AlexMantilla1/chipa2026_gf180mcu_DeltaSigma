v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -420 130 -380 {lab=VDD}
N 130 -320 130 -300 {lab=0}
N 360 -210 360 -190 {lab=0}
N 650 -340 650 -310 {lab=0}
N 600 -290 600 -260 {lab=0}
N 600 -370 600 -350 {lab=Q}
N 650 -410 650 -400 {lab=QN}
N 570 -410 650 -410 {lab=QN}
N 360 -360 380 -360 {lab=CLK}
N 360 -360 360 -270 {lab=CLK}
N 570 -370 600 -370 {lab=Q}
N 220 -410 220 -400 {lab=D}
N 220 -340 220 -320 {lab=0}
N 220 -410 380 -410 {lab=D
}
N 290 -390 380 -390 {lab=D}
N 290 -390 290 -190 {lab=D}
N 290 -130 290 -110 {lab=0}
C {vsource.sym} 130 -350 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 130 -300 0 0 {name=l1 lab=0}
C {gnd.sym} 460 -450 2 0 {name=l2 lab=0}
C {vdd.sym} 130 -420 0 0 {name=l3 lab=VDD}
C {vdd.sym} 480 -450 0 0 {name=l4 lab=VDD}
C {gnd.sym} 360 -190 0 0 {name=l7 lab=0}
C {lab_wire.sym} 360 -320 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/title.sym} 160 0 0 0 {name=l8 author= Luisa_Dovale}
C {devices/code_shown.sym} 680 -560 0 0 {name=NGSPICE only_toplevel=true 
value="
.control
save all

**Set sources

** Sims 
op
tran 10p 900n
meas tran tdelay TRIG v(clk) VAl=0.9 FALl=1 TARG v(Q) VAl=0.9 RISE=1
plot v(Q) v(D) v(CLK)

write dff_TB_TRAN.raw
.endc
"}
C {devices/vsource.sym} 360 -240 0 0 {name=Vclk value="dc 0 ac 0 PULSE(0 1.5 0.15n 1p 1p 100n 200n)"}
C {capa.sym} 650 -370 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 600 -320 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 600 -260 0 0 {name=l5 lab=0}
C {gnd.sym} 650 -310 0 0 {name=l6 lab=0}
C {lab_wire.sym} 630 -410 0 0 {name=p2 sig_type=std_logic lab=QN}
C {lab_wire.sym} 580 -370 0 1 {name=p3 sig_type=std_logic lab=Q
}
C {dff.sym} 380 -350 0 0 {name=x1}
C {devices/vsource.sym} 220 -370 0 0 {name=VD value="dc 0 ac 0 PULSE(0 1.5 75n 1p 1p 150n 400n)"}
C {gnd.sym} 220 -320 0 0 {name=l9 lab=0}
C {code_shown.sym} 0 -560 0 0 {name=models only_toplevel=true value=".include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {lab_wire.sym} 270 -410 0 0 {name=p4 sig_type=std_logic lab=D
}
C {devices/vsource.sym} 290 -160 0 0 {name=VD1 value="dc 0 ac 0 PULSE(400n 1.5 75n 1p 1p 150n 400n)"}
C {gnd.sym} 290 -110 0 0 {name=l10 lab=0}
C {lab_wire.sym} 340 -200 0 0 {name=p5 sig_type=std_logic lab=D
}
C {lab_wire.sym} 310 -390 0 0 {name=p6 sig_type=std_logic lab=DN
}
