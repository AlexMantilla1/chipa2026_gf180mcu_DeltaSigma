v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 710 -500 750 -500 {lab=Voutp}
N 710 -420 750 -420 {lab=Voutn}
N 560 -630 560 -590 {lab=VDD}
N 60 -620 60 -580 {lab=VDD}
N 60 -520 60 -480 {lab=0}
N 120 -520 120 -480 {lab=0}
N 120 -640 120 -580 {lab=VSS}
N 560 -330 560 -290 {lab=VSS}
N 180 -520 180 -480 {lab=0}
N 180 -640 180 -580 {lab=Vcm}
N 380 -500 460 -500 {lab=Vinp}
N 380 -420 460 -420 {lab=Vinn}
N 240 -500 320 -500 {lab=Vcm}
N 240 -420 320 -420 {lab=Vcm}
N 600 -330 600 -290 {lab=Vcm}
N 60 -400 60 -360 {lab=RST}
N 60 -300 60 -260 {lab=0}
N 120 -300 120 -260 {lab=0}
N 120 -420 120 -360 {lab=P2}
N 180 -300 180 -260 {lab=0}
N 180 -420 180 -360 {lab=P1}
N 60 -420 60 -400 {lab=RST}
N 660 -500 710 -500 {lab=Voutp}
N 660 -420 710 -420 {lab=Voutn}
N 520 -330 520 -290 {lab=P2}
N 520 -630 520 -590 {lab=P1}
N 600 -630 600 -590 {lab=RST}
N 560 -650 560 -630 {lab=VDD}
N 760 -420 760 -380 {lab=Voutn}
N 750 -420 760 -420 {lab=Voutn}
N 760 -320 760 -280 {lab=0}
N 760 -540 760 -500 {lab=Voutp}
N 760 -640 760 -600 {lab=0}
N 750 -500 760 -500 {lab=Voutp}
C {title.sym} 190 -60 0 0 {name=l1 author="Onchip"}
C {vsource.sym} 60 -550 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 120 -550 0 0 {name=V2 value=0 savecurrent=false}
C {vdd.sym} 60 -620 0 0 {name=l2 lab=VDD}
C {vdd.sym} 560 -650 0 0 {name=l3 lab=VDD}
C {gnd.sym} 60 -480 0 0 {name=l4 lab=0}
C {gnd.sym} 120 -480 0 0 {name=l5 lab=0}
C {lab_wire.sym} 120 -640 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 560 -290 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {vsource.sym} 180 -550 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 180 -480 0 0 {name=l8 lab=0}
C {lab_wire.sym} 180 -640 0 0 {name=p3 sig_type=std_logic lab=Vcm
}
C {vsource.sym} 350 -500 1 0 {name=V4 value=0.05 savecurrent=false}
C {vsource.sym} 350 -420 1 0 {name=V5 value=-0.05 savecurrent=false}
C {lab_wire.sym} 260 -500 0 0 {name=p4 sig_type=std_logic lab=Vcm
}
C {lab_wire.sym} 260 -420 0 0 {name=p5 sig_type=std_logic lab=Vcm
}
C {lab_wire.sym} 600 -290 0 0 {name=p6 sig_type=std_logic lab=Vcm
}
C {vsource.sym} 60 -330 0 0 {name=Vrst value=3.6 savecurrent=false}
C {vsource.sym} 120 -330 0 0 {name=Vp1 value=3.6 savecurrent=false}
C {gnd.sym} 60 -260 0 0 {name=l10 lab=0}
C {gnd.sym} 120 -260 0 0 {name=l11 lab=0}
C {vsource.sym} 180 -330 0 0 {name=Vp2 value=3.6 savecurrent=false}
C {gnd.sym} 180 -260 0 0 {name=l12 lab=0}
C {lab_wire.sym} 60 -420 0 0 {name=p7 sig_type=std_logic lab=RST
}
C {lab_wire.sym} 120 -420 0 0 {name=p8 sig_type=std_logic lab=P2
}
C {lab_wire.sym} 180 -420 0 0 {name=p9 sig_type=std_logic lab=P1
}
C {lab_wire.sym} 430 -500 0 0 {name=p10 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} 430 -420 0 0 {name=p11 sig_type=std_logic lab=Vinn
}
C {lab_wire.sym} 740 -420 0 0 {name=p12 sig_type=std_logic lab=Voutn
}
C {lab_wire.sym} 740 -500 0 0 {name=p13 sig_type=std_logic lab=Voutp}
C {lab_wire.sym} 600 -630 0 0 {name=p14 sig_type=std_logic lab=RST
}
C {lab_wire.sym} 520 -630 0 0 {name=p15 sig_type=std_logic lab=P1}
C {lab_wire.sym} 520 -290 0 0 {name=p16 sig_type=std_logic lab=P2}
C {devices/code_shown.sym} 270 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 820 -770 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Define transient signals
let Fclk = 1e6
let Tclk = 1/Fclk
let trise = 0.01*Tclk
let tfall = 0.01*Tclk
let tdelay = 0.02*Tclk
let tonp1 = 0.5*Tclk - trise - tfall
let tonp2 = 0.45*Tclk - trise - tfall

** Define transient params
let tstop = 10*Tclk
let tstep = 0.001*Tclk

** Set sources
alter @Vrst[PULSE] = [ 0 3.6 0 $&trise $&tfall $&Tclk $&tstop ]
alter @Vp1[PULSE] = [ 3.6 0 0 $&trise $&tfall $&tonp1 $&Tclk ]
alter @Vp2[PULSE] = [ 0 3.6 $&tdelay $&trise $&tfall $&tonp2 $&Tclk ]

** Sims
** op
tran $&tstep $&tstop

** plot voutp-voutn vinp-vinn
plot rst/30 p1/30 p2/30 x1.vsp-x1.fransiscop voutp-x1.vtp
plot x1.vsp-x1.fransiscop voutp-x1.vtp
plot x1.x1.x1.vout2p x1.x1.x1.vout2n
plot voutp-voutn

write integrator_TB_TRAN.raw
.endc
"}
C {designs/DS_modulator/integrator/xschem/integrator.sym} 560 -460 0 0 {name=x1}
C {capa.sym} 760 -350 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 760 -570 2 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 760 -280 0 0 {name=l6 lab=0}
C {gnd.sym} 760 -640 2 0 {name=l7 lab=0}
