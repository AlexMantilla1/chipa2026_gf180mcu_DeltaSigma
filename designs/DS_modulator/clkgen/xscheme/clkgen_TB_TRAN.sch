v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -80 110 -60 {lab=#net1}
N -150 -80 110 -80 {lab=#net1}
N -150 -80 -150 -0 {lab=#net1}
N -150 60 -150 70 {lab=0}
N 110 60 110 70 {lab=0}
N -60 60 -60 70 {lab=0}
N -60 -0 30 0 {lab=clk}
N 230 90 230 100 {lab=0}
N 10 100 230 100 {lab=0}
N 10 100 10 110 {lab=0}
N 300 90 300 100 {lab=0}
N 230 100 300 100 {lab=0}
N 110 70 110 100 {lab=0}
N -150 70 -150 100 {lab=0}
N -150 100 10 100 {lab=0}
N -60 70 -60 100 {lab=0}
N 190 20 230 20 {lab=Out2}
N 230 20 230 30 {lab=Out2}
N 190 -20 300 -20 {lab=Out1}
N 300 -20 300 30 {lab=Out1}
C {chipaton/chipa2026_gf180mcu_DeltaSigma/designs/DS_modulator/clkgen/xscheme/clkgen.sym} 110 0 0 0 {name=x1}
C {vsource.sym} -150 30 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} -60 30 0 0 {name=Vclk value=1.5 savecurrent=false}
C {gnd.sym} 10 110 0 0 {name=l1 lab=0}
C {capa-2.sym} 230 60 0 0 {name=C1
m=1
value=50f
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 300 60 0 0 {name=C2
m=1
value=50f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 0 0 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_wire.sym} 250 -20 0 0 {name=p2 sig_type=std_logic lab=Out1}
C {lab_wire.sym} 230 20 0 0 {name=p3 sig_type=std_logic lab=Out2}
C {devices/code_shown.sym} -630 210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -640 -320 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

alter @Vclk[DC]=0
alter @Vclk[PULSE] = [ 0 1.5 1u 10n 10n 0.49u 1u ]

** SIM **
let tstep = 1n
let tstop = 12us
let tmax = 1n

tran $&tstep $&tstop 0 $&tmax

setplot clk
plot v(clk)

setplot Out1
plot v(Out1)

setplot Out2
plot v(Out2)

write clkgen_TB_TRAN.raw
.endc
"}
