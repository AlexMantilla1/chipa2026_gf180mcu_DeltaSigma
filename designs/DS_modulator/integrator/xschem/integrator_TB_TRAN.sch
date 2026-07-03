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
N 120 -420 120 -360 {lab=P1}
N 180 -300 180 -260 {lab=0}
N 180 -420 180 -360 {lab=P2}
N 60 -420 60 -400 {lab=RST}
N 660 -500 710 -500 {lab=Voutp}
N 660 -420 710 -420 {lab=Voutn}
N 520 -330 520 -290 {lab=P2}
N 520 -630 520 -590 {lab=P1}
N 600 -630 600 -590 {lab=RST}
N 560 -650 560 -630 {lab=VDD}
C {title.sym} 190 -60 0 0 {name=l1 author="Onchip"}
C {vsource.sym} 60 -550 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} 120 -550 0 0 {name=V2 value=0 savecurrent=false}
C {vdd.sym} 60 -620 0 0 {name=l2 lab=VDD}
C {vdd.sym} 560 -650 0 0 {name=l3 lab=VDD}
C {gnd.sym} 60 -480 0 0 {name=l4 lab=0}
C {gnd.sym} 120 -480 0 0 {name=l5 lab=0}
C {noconn.sym} 750 -500 0 1 {name=l6}
C {noconn.sym} 750 -420 0 1 {name=l7}
C {lab_wire.sym} 120 -640 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 560 -290 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {vsource.sym} 180 -550 0 0 {name=V3 value=0.75 savecurrent=false}
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
C {vsource.sym} 60 -330 0 0 {name=Vrst value=3.0 savecurrent=false}
C {vsource.sym} 120 -330 0 0 {name=Vp1 value=3.0 savecurrent=false}
C {gnd.sym} 60 -260 0 0 {name=l10 lab=0}
C {gnd.sym} 120 -260 0 0 {name=l11 lab=0}
C {vsource.sym} 180 -330 0 0 {name=Vp2 value=3.0 savecurrent=false}
C {gnd.sym} 180 -260 0 0 {name=l12 lab=0}
C {lab_wire.sym} 60 -420 0 0 {name=p7 sig_type=std_logic lab=RST
}
C {lab_wire.sym} 120 -420 0 0 {name=p8 sig_type=std_logic lab=P1}
C {lab_wire.sym} 180 -420 0 0 {name=p9 sig_type=std_logic lab=P2}
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
C {devices/code_shown.sym} 830 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 820 -800 0 0 {name=NGSPICE only_toplevel=true
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
let tstop = 5*Tclk
let tstep = 0.01*Tclk

** Set sources
alter @Vrst[PULSE] = [ 0 3.0 0 $&trise $&tfall $&Tclk $&tstop ]
alter @Vp1[PULSE] = [ 3.0 0 0 $&trise $&tfall $&tonp1 $&Tclk ]
alter @Vp2[PULSE] = [ 0 3.0 $&tdelay $&trise $&tfall $&tonp2 $&Tclk ]

** Sims
** op
tran $&tstep $&tstop

** plot voutp-voutn vinp-vinn
plot rst p1 p2 x1.vsp-x1.fransiscop voutp-x1.vtp

write integrator_TB_TRAN.raw
.endc
"}
C {DS_modulator/integrator/xschem/integrator.sym} 560 -460 0 0 {name=x1}
