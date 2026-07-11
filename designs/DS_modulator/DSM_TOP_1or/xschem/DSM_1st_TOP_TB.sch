v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 890 -170 {}
N 550 -50 550 -40 {lab=GND}
N 630 -50 630 -40 {lab=GND}
N 950 -580 950 -550 {lab=Vclk}
N 1110 -90 1150 -90 {lab=VSS}
N 1110 -110 1150 -110 {lab=VDD}
N 1110 -130 1150 -130 {lab=reset}
N 1110 -150 1150 -150 {lab=Vclk}
N 890 -410 890 -400 {lab=GND}
N 890 -510 890 -470 {lab=reset}
N 950 -490 950 -480 {lab=GND}
N 1220 -210 1350 -210 {lab=Doutn}
N 1350 -210 1350 -130 {lab=Doutn}
N 1220 -250 1480 -250 {lab=Doutp}
N 1480 -250 1480 -130 {lab=Doutp}
N 1350 -30 1350 -20 {lab=GND}
N 1350 -70 1350 -30 {lab=GND}
N 1480 -30 1480 -20 {lab=GND}
N 1480 -70 1480 -30 {lab=GND}
N 460 -50 460 -40 {lab=GND}
N 1080 -230 1110 -230 {lab=VCM}
N 800 -50 800 -40 {lab=GND}
N 800 -140 800 -110 {lab=Vin}
N 980 -200 1110 -200 {lab=Vinn}
N 980 -260 1110 -260 {lab=Vinp}
N 970 -330 970 -300 {lab=Vin}
N 970 -160 970 -130 {lab=Vin}
N 860 -230 920 -230 {lab=VCM}
N 920 -260 920 -230 {lab=VCM}
N 920 -230 920 -200 {lab=VCM}
N 920 -160 930 -160 {lab=GND}
N 920 -300 930 -300 {lab=GND}
N 830 -230 860 -230 {lab=VCM}
N 630 -130 630 -110 {lab=VSS}
N 550 -130 550 -110 {lab=VDD}
N 460 -130 460 -110 {lab=VCM}
N 550 -220 550 -190 {lab=VDD}
N 630 -220 630 -190 {lab=VSS}
N 460 -220 460 -190 {lab=VCM}
N 460 -190 460 -130 {lab=VCM}
N 550 -190 550 -130 {lab=VDD}
N 630 -190 630 -130 {lab=VSS}
C {devices/vsource.sym} 550 -80 0 0 {name=V8 value=\{VDD\}}
C {devices/gnd.sym} 550 -40 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 550 -200 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 630 -80 0 0 {name=V9 value=\{VSS\}}
C {devices/gnd.sym} 630 -40 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 630 -200 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 460 -680 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {launcher.sym} 540 -250 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xscherror_amplifier_N_input_v4 annotate_op"}
C {devices/launcher.sym} 540 -300 0 0 {name=h3
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/lab_wire.sym} 950 -580 0 0 {name=p14 sig_type=std_logic lab=Vclk}
C {devices/lab_wire.sym} 1110 -150 0 0 {name=p3 sig_type=std_logic lab=Vclk}
C {devices/lab_wire.sym} 1110 -130 0 0 {name=p4 sig_type=std_logic lab=reset}
C {devices/lab_wire.sym} 1110 -110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1110 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 890 -440 0 0 {name=V4 value="pulse \{VDD\} \{VSS\} \{T_clk/2\} \{trf\} \{trf\} \{tsim\} \{tsim\} 0"}
C {devices/gnd.sym} 890 -400 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 890 -510 0 0 {name=p10 sig_type=std_logic lab=reset}
C {devices/vsource.sym} 950 -520 0 0 {name=V3 value="pulse \{VDD\} \{VSS\} \{t_delay\} \{trf\} \{trf\} \{ton\} \{T_clk\} 0"
*The arguments are in order for:
*pulse V1 V2 delay trise tfall ton tper #Cycles
*If #cycles is not indicated, signal repeats forever}
C {devices/gnd.sym} 950 -480 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -10 -660 0 0 {name=Voltage_sources1 only_toplevel=true
value="
.param VDD = 1.8
.param VSS = 0 
.param Vin_CM = \{VDD/2\} 

* For the DS Mod
.param BW = 20k
.param Fs = \{2*BW\}
.param Ts = \{1/Fs\}
.param OSR = 128

* For input clock
.param F_clk = \{Fs*OSR\}
.param T_clk = \{1/F_clk\}
.param trf = \{T_clk/100\}
.param ton = \{T_clk/2\}
.param t_delay = \{T_clk\}


* For transitory simulation
.param tstep = \{T_clk/1000\}
.param tsim = \{Ts*130\}
*.param tsim = \{Ts*1\}

* For sinusoidal input
.param Vamp = 0.5
.param Vin_freq = \{Fs*7/128\}

*.op
.tran \{tstep\} \{tsim\}
 

*plot v(x1.vx) v(x1.vy) v(x1.vp) v(x1.vq)
*plot v(reset) v(clk) v(vinp) v(vinn)
*plot v(vop) v(von)

"}
C {devices/gnd.sym} 1350 -20 0 0 {name=l1 lab=GND}
C {capa.sym} 1350 -100 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1480 -100 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 -20 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1350 -210 0 0 {name=p8 sig_type=std_logic lab=Doutn}
C {devices/lab_wire.sym} 1480 -250 0 0 {name=p9 sig_type=std_logic lab=Doutp}
C {devices/vsource.sym} 460 -80 0 0 {name=V1 value=\{Vin_CM\}}
C {devices/gnd.sym} 460 -40 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 460 -200 0 0 {name=p11 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 1080 -230 0 0 {name=p12 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 800 -80 0 0 {name=V2 value="SINE(0 \{Vamp\} \{Vin_freq\})"}
C {devices/gnd.sym} 800 -40 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 800 -140 0 0 {name=p13 sig_type=std_logic lab=Vin}
C {vcvs.sym} 950 -260 1 0 {name=E1 value=0.5}
C {vcvs.sym} 950 -200 1 1 {name=E2 value=-0.5}
C {devices/lab_wire.sym} 970 -330 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 970 -130 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 1100 -260 0 0 {name=p17 sig_type=std_logic lab=Vinp}
C {devices/lab_wire.sym} 1100 -200 0 0 {name=p18 sig_type=std_logic lab=Vinn}
C {devices/lab_wire.sym} 830 -230 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {devices/gnd.sym} 920 -160 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 920 -300 2 0 {name=l8 lab=GND}
C {simulator_commands.sym} 620 -500 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.options method=gear
.control
    save Doutp Doutn 
    *save x1.Vintp_1 x1.Vintn_1 VCM x1.phi_1 x1.phi_2
    *save x1.x7.Vfx_p x1.x7.FransiscoP x1.x7.Vsp x1.x7.FransiscoP x1.Vintp_1 x1.x7.Vtp x1.phi_1 x1.phi_2
    
    * run tran simulation
    *tran 0.1u 10u
    run
    let Vout = v(Doutp)-v(Doutn)
    
    *plot v(Vin) 
    *plot Vout
    *plot Vclk reset
    *plot x1.Vintp_1 x1.Vintn_1 VCM x1.phi_1 x1.phi_2
    *plot x1.x7.P1 x1.x7.P2
    *plot x1.x7.Vfx_p-x1.x7.FransiscoP x1.x7.Vsp-x1.x7.FransiscoP x1.Vintp_1-x1.x7.Vtp x1.phi_1 x1.phi_2
    *plot Vout

    *write DSM_TOP_TB.raw

    set wr_vecnames
    *wrdata DSmod_1st_data.txt Vout Vin Vinp Vinn Doutp Doutn x1.Vintp_1 x1.Vintn_1
    wrdata DSmod_1st_data_tmp.txt Vout 

.endc
"}
C {DS_modulator/DSM_TOP_1or/xschem/DSM_1st_TOP.sym} 1170 -230 0 0 {name=x1}
