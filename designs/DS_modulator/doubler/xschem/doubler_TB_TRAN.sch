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
C {DS_modulator/doubler/xschem/doubler.sym} 550 -360 0 0 {name=x1}
C {capa.sym} 740 -280 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 740 -205 0 0 {name=l2 lab=0}
C {vdd.sym} 550 -460 0 0 {name=l3 lab=VDD}
C {vsource.sym} 60 -295 0 0 {name=V1 value=1.5 savecurrent=true}
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
C {vsource.sym} 340 -265 0 0 {name=Vclk value=1.5 savecurrent=false}
C {gnd.sym} 340 -190 0 0 {name=l7 lab=0}
C {code.sym} 30 -520 0 0 {name=NGSPICE1 only_toplevel=true
value="
 
.control
save all

* ---- 4.5 MHz  (PER = 222.22 ns, PW = 101.11 ns) ----
* alter @Vclk[PULSE] = [ 0 1.5 1u 10n 10n 101.11n 222.22n ]

* ---- 5.0 MHz  (PER = 200.00 ns, PW =  90.00 ns) ----
* alter @Vclk[PULSE] = [ 0 1.5 1u 10n 10n 90n 200n ]

set fclk = 5e6        ; clock freq: 4.5e6  or  5e6
alter  C1 = 50f         ; load cap CL: 10f / 20f / 50f

let period  = 1 / $fclk
let pwidth  = period/2 - 10n         ; 50% duty, 10 ns edges
let simstop = 1u + 10 * period       ; 1 us settle delay + 10 clk cycles

alter @Vclk[DC]  = 0
alter @Vclk[PULSE] = [ 0 1.5 1u 10n 10n $&pwidth $&period ]
 
** SIM **

**op
**dc vclk 0 1.5 0.01
tran 1n $&simstop 0 1n               ; tstep=1n  tstop=1u+30/fclk  tmax=1n


* ================= MEASUREMENTS  =================
let vdd_val = 1.5
let vboost_ideal = 2*vdd_val          ; ideal 2*VDD = 3.0 V

* --- settled boosted level: clkd at the END of a high phase (when clk falls) ---
meas tran vfinal FIND v(clkd) WHEN v(clk)=0.75 FALL=5

* --- boost loss vs ideal 2*VDD [%] ---
let boostloss_pct = 100*(vboost_ideal - vfinal)/vboost_ideal
print boostloss_pct

* --- rise time (10-90% of the settled level) ---
let v10 = 0.1*vfinal
let v90 = 0.9*vfinal
meas tran trise TRIG v(clkd) VAL=$&v10 RISE=5 TARG v(clkd) VAL=$&v90 RISE=5

* --- settling time: from clk edge to clkd within 1% of final ---
let vset99 = 0.99*vfinal
meas tran tsettle TRIG v(clk) VAL=0.75 RISE=5 TARG v(clkd) VAL=$&vset99 RISE=5

* --- average supply power from VDD (V1) ---
meas tran iavg AVG i(v1) FROM=1.5u TO=2.9u
let pavg = vdd_val*abs(iavg)
print pavg

** ========== PLOTTING ==========**
setplot clkd
plot v(clk) v(x1.CLKb) v(clkd)

*setplot vcd
*plot v(x1.Vcd_up) v(x1.Vcd_down)

write doubler_TB_TRAN.raw
.endc
"}
