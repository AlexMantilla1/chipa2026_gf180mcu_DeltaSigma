v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 640 -360 770 -360 {lab=Vcd_up}
N 910 -360 910 -320 {lab=CLKD}
N 830 -360 910 -360 {lab=CLKD}
N 910 -360 970 -360 {lab=CLKD}
N 510 -230 640 -230 {lab=Vcd_down}
N 640 -150 640 -100 {lab=VSS}
N 640 -510 640 -470 {lab=VDD}
N 390 -230 450 -230 {lab=VDD}
N 910 -260 910 -210 {lab=VSS}
N 640 -440 680 -440 {lab=Vcd_up}
N 480 -270 480 -230 {lab=VDD}
N 430 -270 480 -270 {lab=VDD}
N 430 -270 430 -230 {lab=VDD}
N 640 -180 670 -180 {lab=VSS}
N 680 -180 680 -140 {lab=VSS}
N 640 -140 670 -140 {lab=VSS}
N 910 -290 940 -290 {lab=VSS}
N 940 -290 940 -250 {lab=VSS}
N 910 -250 940 -250 {lab=VSS}
N 560 -180 600 -180 {lab=CLKb}
N 480 -190 480 -180 {lab=CLKb}
N 480 -180 560 -180 {lab=CLKb}
N 800 -320 800 -290 {lab=CLKb}
N 800 -290 870 -290 {lab=CLKb}
N 540 -440 600 -440 {lab=CLKD}
N 800 -430 800 -360 {lab=Vcd_up}
N 640 -410 640 -360 {lab=Vcd_up}
N 640 -260 640 -230 {lab=Vcd_down}
N 670 -180 680 -180 {lab=VSS}
N 670 -140 680 -140 {lab=VSS}
N 640 -230 640 -210 {lab=Vcd_down}
N 170 -280 170 -250 {lab=CLKb}
N 110 -310 130 -310 {lab=CLK}
N 110 -310 110 -220 {lab=CLK}
N 110 -220 130 -220 {lab=CLK}
N 170 -380 170 -340 {lab=VDD}
N 170 -190 170 -140 {lab=VSS}
N 80 -260 110 -260 {lab=CLK}
N 170 -260 210 -260 {lab=CLKb}
N 170 -310 200 -310 {lab=VDD}
N 170 -340 200 -340 {lab=VDD}
N 200 -340 200 -310 {lab=VDD}
N 170 -220 210 -220 {lab=VSS}
N 210 -220 210 -190 {lab=VSS}
N 170 -190 210 -190 {lab=VSS}
N 60 -120 60 -60 \{lab=#net1}
N 640 -270 640 -260 {lab=Vcd_down}
N 600 -310 610 -310 {lab=Vcd_up}
N 600 -330 600 -310 {lab=Vcd_up}
N 600 -330 680 -330 {lab=Vcd_up}
N 680 -330 680 -310 {lab=Vcd_up}
N 670 -310 680 -310 {lab=Vcd_up}
N 640 -360 640 -330 {lab=Vcd_up}
N 640 -320 640 -310 {lab=Vcd_up}
N 680 -440 680 -400 {lab=Vcd_up}
N 640 -400 660 -400 {lab=Vcd_up}
N 660 -400 680 -400 {lab=Vcd_up}
N 750 -430 800 -430 {lab=Vcd_up}
N 750 -430 750 -360 {lab=Vcd_up}
N 640 -330 640 -320 {lab=Vcd_up}
C {symbols/pfet_03v3.sym} 480 -210 3 0 {name=M4
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 890 -290 0 0 {name=M5
L=0.28u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 800 -340 3 0 {name=M6
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 640 -510 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -230 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -100 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 910 -210 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 530 -180 3 0 {name=p8 sig_type=std_logic lab=CLKb}
C {lab_pin.sym} 820 -290 3 0 {name=p9 sig_type=std_logic lab=CLKb}
C {lab_pin.sym} 970 -360 0 1 {name=p10 sig_type=std_logic lab=CLKD}
C {lab_pin.sym} 540 -440 0 0 {name=p11 sig_type=std_logic lab=CLKD}
C {iopin.sym} 30 -590 0 0 {name=p12 lab=VDD}
C {iopin.sym} 30 -550 0 0 {name=p13 lab=VSS}
C {iopin.sym} 30 -510 0 0 {name=p15 lab=CLK}
C {iopin.sym} 30 -470 0 0 {name=p16 lab=CLKD}
C {title.sym} 160 0 0 0 {name=l1 author="R. Vergel"}
C {symbols/pfet_03v3.sym} 620 -440 0 0 {name=M2
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 150 -310 0 0 {name=M8
L=0.28u
W=0.55u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 150 -220 0 0 {name=M9
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 170 -380 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -260 2 0 {name=p14 sig_type=std_logic lab=CLKb}
C {lab_pin.sym} 80 -260 0 0 {name=p18 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 170 -140 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 640 -290 3 0 {name=M7
L=18u
W=18u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 640 -390 2 1 {name=p1 sig_type=std_logic lab=Vcd_up}
C {lab_pin.sym} 640 -250 2 1 {name=p19 sig_type=std_logic lab=Vcd_down}
C {symbols/nfet_03v3.sym} 620 -180 0 0 {name=M1
L=0.28u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
