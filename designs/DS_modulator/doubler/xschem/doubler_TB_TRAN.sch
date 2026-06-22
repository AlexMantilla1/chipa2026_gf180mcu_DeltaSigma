v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 740 -250 740 -205 {lab=0}
N 740 -320 740 -310 {lab=clkd}
N 700 -320 740 -320 {lab=clkd}
N 60 -265 60 -220 {lab=0}
N 60 -350 60 -325 {lab=VDD}
N 125 -265 125 -220 {lab=0}
N 340 -320 400 -320 {lab=clk}
N 550 -460 550 -440 {lab=VDD}
N 125 -365 125 -325 {lab=VSS}
N 550 -280 550 -215 {lab=VSS}
N 340 -235 340 -190 {lab=0}
N 340 -315 340 -295 {lab=clk}
N 340 -320 340 -315 {lab=clk}
C {doubler/xschem/doubler.sym} 550 -360 0 0 {name=x1}
C {capa.sym} 740 -280 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 740 -205 0 0 {name=l2 lab=0}
C {vdd.sym} 550 -460 0 0 {name=l3 lab=VDD}
C {vsource.sym} 60 -295 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} 125 -295 0 0 {name=V2 value=0 savecurrent=false}
C {vdd.sym} 60 -350 0 0 {name=l4 lab=VDD}
C {gnd.sym} 60 -220 0 0 {name=l5 lab=0}
C {gnd.sym} 125 -220 0 0 {name=l6 lab=0}
C {lab_wire.sym} 340 -320 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_wire.sym} 740 -320 0 1 {name=p2 sig_type=std_logic lab=clkd}
C {lab_wire.sym} 125 -365 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -215 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {title.sym} 160 0 0 0 {name=l1 author="R. Vergel"}
C {devices/code_shown.sym} 20 -115 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 20 -880 0 0 {name=NGSPICE only_toplevel=true
value="
 
.control
save all

alter @Vclk[DC]=0
alter @Vclk[PULSE] = [ 0 1.5 1u 10n 10n 0.49u 1u ]
 
** SIM **

**op
**dc vclk 0 1.5 0.01
tran 1n 12u 0 1n          ; tstep=1n  tstop=12µs  tmax=1n

setplot clk
plot v(clk) 

setplot clkd
plot v(clkd) v(x1.CLKb)

write doubler_TB_TRAN.raw
.endc
"}
C {vsource.sym} 340 -265 0 0 {name=Vclk value=1.5 savecurrent=false}
C {gnd.sym} 340 -190 0 0 {name=l7 lab=0}
