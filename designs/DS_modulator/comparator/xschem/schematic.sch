v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 270 210 290 {lab=#net1}
N 210 290 370 290 {lab=#net1}
N 410 270 410 290 {lab=#net1}
N 400 240 410 240 {lab=#net1}
N 400 240 400 270 {lab=#net1}
N 400 270 410 270 {lab=#net1}
N 210 240 220 240 {lab=#net1}
N 220 240 220 270 {lab=#net1}
N 210 270 220 270 {lab=#net1}
N 210 190 210 210 {lab=#net2}
N 310 290 310 320 {lab=#net1}
N 310 380 310 420 {lab=gnd}
N 310 350 320 350 {lab=gnd}
N 320 350 320 380 {lab=gnd}
N 310 380 320 380 {lab=gnd}
N 250 350 270 350 {lab=clk}
N 410 170 410 210 {lab=#net3}
N 210 170 210 190 {lab=#net2}
N 200 140 210 140 {lab=#net1}
N 200 140 200 270 {lab=#net1}
N 200 270 210 270 {lab=#net1}
N 410 140 420 140 {lab=#net1}
N 420 140 420 270 {lab=#net1}
N 410 270 420 270 {lab=#net1}
N 250 140 280 140 {lab=vout2}
N 360 90 410 90 {lab=vout2}
N 410 90 410 110 {lab=vout2}
N 340 140 370 140 {lab=vout1}
N 370 290 410 290 {lab=#net1}
N 280 140 360 90 {lab=vout2}
N 270 90 340 140 {lab=vout1}
N 210 90 270 90 {lab=vout1}
N 210 90 210 110 {lab=vout1}
N 210 40 210 90 {lab=vout1}
N 410 40 410 90 {lab=vout2}
N 210 -70 210 -20 {lab=vdd}
N 210 -70 410 -70 {lab=vdd}
N 410 -70 410 -20 {lab=vdd}
N 410 10 420 10 {lab=vdd}
N 420 -20 420 10 {lab=vdd}
N 410 -20 420 -20 {lab=vdd}
N 200 10 210 10 {lab=vdd}
N 200 -20 200 10 {lab=vdd}
N 200 -20 210 -20 {lab=vdd}
N 250 10 290 10 {lab=vout2}
N 290 10 340 60 {lab=vout2}
N 340 60 410 60 {lab=vout2}
N 330 10 370 10 {lab=vout1}
N 280 60 330 10 {lab=vout1}
N 210 60 280 60 {lab=vout1}
N 410 60 540 60 {lab=vout2}
N 540 40 540 60 {lab=vout2}
N 540 -70 540 -20 {lab=vdd}
N 410 -70 540 -70 {lab=vdd}
N 530 10 540 10 {lab=vdd}
N 530 -20 530 10 {lab=vdd}
N 530 -20 540 -20 {lab=vdd}
N 680 -70 680 -30 {lab=vdd}
N 540 -70 680 -70 {lab=vdd}
N 680 -30 680 -20 {lab=vdd}
N 670 10 680 10 {lab=vdd}
N 670 -20 670 10 {lab=vdd}
N 670 -20 680 -20 {lab=vdd}
N 410 190 680 190 {lab=#net3}
N 680 40 680 190 {lab=#net3}
N 580 10 640 10 {lab=clk}
N 640 10 640 50 {lab=clk}
N 640 50 720 50 {lab=clk}
N 720 10 720 50 {lab=clk}
N 720 10 760 10 {lab=clk}
N 80 50 80 60 {lab=vout1}
N 80 60 210 60 {lab=vout1}
N 80 -70 80 -10 {lab=vdd}
N 80 -70 210 -70 {lab=vdd}
N 80 20 90 20 {lab=vdd}
N 90 -10 90 20 {lab=vdd}
N 80 -10 90 -10 {lab=vdd}
N -80 50 -80 180 {lab=#net1}
N -80 190 200 190 {lab=#net1}
N -80 180 -80 190 {lab=#net1}
N -80 -70 80 -70 {lab=vdd}
N -80 -70 -80 -10 {lab=vdd}
N -80 20 -70 20 {lab=vdd}
N -70 -10 -70 20 {lab=vdd}
N -80 -10 -70 -10 {lab=vdd}
N -30 20 40 20 {lab=clk}
N -30 20 -30 60 {lab=clk}
N -120 60 -30 60 {lab=clk}
N -120 20 -120 60 {lab=clk}
N -140 20 -120 20 {lab=clk}
N 410 90 470 90 {lab=vout2}
N 160 90 210 90 {lab=vout1}
N 150 90 160 90 {lab=vout1}
C {symbols/nfet_03v3.sym} 190 240 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 230 10 0 1 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 430 240 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 290 350 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 230 140 0 1 {name=M5
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
C {symbols/nfet_03v3.sym} 390 140 0 0 {name=M6
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
C {symbols/pfet_03v3.sym} 390 10 0 0 {name=M7
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 560 10 0 1 {name=M8
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 700 10 0 1 {name=M9
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 60 20 0 0 {name=M10
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -100 20 0 0 {name=M11
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
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 170 240 0 0 {name=p1 lab=vin1}
C {ipin.sym} 450 240 2 0 {name=p2 lab=vin2
}
C {ipin.sym} -140 20 0 0 {name=p4 lab=clk}
C {ipin.sym} 310 -70 1 0 {name=p6 lab=vdd}
C {iopin.sym} 470 90 0 0 {name=p7 lab=vout2}
C {iopin.sym} 150 90 2 0 {name=p8 lab=vout1}
C {ipin.sym} 310 420 3 0 {name=p9 lab=gnd}
C {lab_pin.sym} 250 350 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_pin.sym} 760 10 2 0 {name=p5 sig_type=std_logic lab=clk}
