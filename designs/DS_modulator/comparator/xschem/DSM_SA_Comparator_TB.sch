v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 620 -200 620 -190 {lab=GND}
N 620 -290 620 -260 {lab=Vin_CM}
N 440 -30 440 -20 {lab=GND}
N 440 -210 440 -180 {lab=VDD}
N 540 -30 540 -20 {lab=GND}
N 540 -210 540 -180 {lab=VSS}
N 960 -420 960 -390 {lab=VDD}
N 960 -210 960 -180 {lab=VSS}
N 1310 -220 1310 -160 {
lab=GND}
N 1310 -330 1310 -280 {
lab=Vop}
N 1230 -160 1230 -100 {
lab=GND}
N 1230 -270 1230 -220 {
lab=Von}
N 1120 -270 1230 -270 {lab=Von}
N 440 -330 440 -290 {lab=Vin_CM}
N 750 -330 750 -290 {lab=Vin_CM}
N 440 -430 440 -390 {lab=Vinp}
N 750 -430 750 -390 {lab=Vinn}
N 870 -340 910 -340 {lab=Vinp}
N 870 -260 910 -260 {lab=Vinn}
N 790 -100 790 -90 {lab=GND}
N 700 -30 700 -20 {lab=GND}
N 790 -200 790 -160 {lab=CLK}
N 700 -130 700 -90 {lab=reset}
N 870 -300 910 -300 {lab=CLK}
N 1010 -210 1010 -170 {lab=reset}
N 620 -290 750 -290 {lab=Vin_CM}
N 490 -290 620 -290 {lab=Vin_CM}
N 440 -120 440 -90 {lab=#net1}
N 540 -120 540 -90 {lab=#net2}
N 1120 -330 1310 -330 {lab=Vop}
N 440 -290 490 -290 {lab=Vin_CM}
C {devices/vsource.sym} 620 -230 0 0 {name=V6 value=\{Vin_CM\}}
C {devices/gnd.sym} 620 -190 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 620 -290 0 0 {name=p14 sig_type=std_logic lab=Vin_CM}
C {devices/vsource.sym} 440 -60 0 0 {name=V8 value=\{VDD\}}
C {devices/gnd.sym} 440 -20 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 440 -210 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 540 -60 0 0 {name=V9 value=\{VSS\}}
C {devices/gnd.sym} 540 -20 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 540 -210 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 340 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice sf
"}
C {devices/code_shown.sym} 0 -490 0 0 {name=Voltage_sources only_toplevel=true
value="
.param VDD = 1.5
.param VSS = 0 
.param Vin_CM = \{VDD/2\}
.param Vout_CM = 1.65

* For input clock
.param F_clk = 5Meg
.param T_clk = \{1/F_clk\}
.param trf = \{T_clk/100\}
.param ton = \{T_clk/2\}
.param t_delay = \{T_clk\}

* For transitory simulation
.param tstep = \{T_clk/50000\}
.param tsim = \{T_clk*2.5\}

* For sinusoidal input
.param Vamp = 1n
.param DC_IN = 1m
.param Vin_freq = \{F_clk*1.776/2\}

.op
.tran \{tstep\} \{tsim\} 

* Plots stated at COMMANDS1
"}
C {simulator_commands.sym} 1110 -490 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.control
savel all
run

plot x1.vx x1.vy x1.vp x1.vq
plot reset clk vinp vinn
plot x1.reset_bb x1.vx_b x1.reset_b+2 x1.vy_b+2 vop+4 von+4

.endc
"}
C {devices/launcher.sym} 860 -550 0 0 {name=h3
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 860 -490 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/lab_wire.sym} 960 -420 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 960 -180 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 1310 -250 0 0 {name=C4
m=1
value=500f 
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1310 -160 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 1230 -190 0 0 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1230 -100 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1280 -330 0 0 {name=p15 sig_type=std_logic lab=Vop}
C {devices/lab_wire.sym} 1200 -270 0 0 {name=p3 sig_type=std_logic lab=Von}
C {devices/vsource.sym} 440 -360 0 0 {name=V1 value="sin(\{DC_IN/2\} \{Vamp\} \{Vin_freq\} 0 0 0)"}
C {devices/vsource.sym} 750 -360 2 0 {name=V2 value="sin(\{DC_IN/2\} \{Vamp\} \{Vin_freq\} 0 0 0)" }
C {devices/lab_wire.sym} 440 -430 0 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/lab_wire.sym} 750 -430 0 0 {name=p5 sig_type=std_logic lab=Vinn}
C {devices/lab_wire.sym} 870 -340 0 0 {name=p6 sig_type=std_logic lab=Vinp}
C {devices/lab_wire.sym} 870 -260 0 0 {name=p7 sig_type=std_logic lab=Vinn}
C {devices/vsource.sym} 790 -130 0 0 {name=V3 value="pulse \{VSS\} \{VDD\} \{t_delay\} \{trf\} \{trf\} \{ton\} \{T_clk\} 0"
*The arguments are in order for:
*pulse V1 V2 delay trise tfall ton tper #Cycles
*If #cycles is not indicated, signal repeats forever}
C {devices/gnd.sym} 790 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 700 -60 0 0 {name=V4 value="pulse \{VDD\} \{VSS\} \{T_clk/2\} \{trf\} \{trf\} \{ton*200\} \{200*T_clk\} 0"}
C {devices/gnd.sym} 700 -20 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 790 -200 0 0 {name=p8 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 870 -300 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 700 -130 0 0 {name=p10 sig_type=std_logic lab=reset}
C {devices/lab_wire.sym} 1010 -170 2 0 {name=p11 sig_type=std_logic lab=reset}
C {DS_modulator/comparator/xschem/comparator.sym} 960 -300 0 0 {name=x1}
C {res.sym} 440 -150 2 0 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 540 -150 2 0 {name=R3
value=5
footprint=1206
device=resistor
m=1}
