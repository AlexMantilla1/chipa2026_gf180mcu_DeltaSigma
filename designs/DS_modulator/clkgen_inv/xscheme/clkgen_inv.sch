v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -160 100 -100 {lab=VDD}
N 100 -40 100 40 {lab=B}
N 20 -70 60 -70 {lab=A}
N 20 -70 20 0 {lab=A}
N -20 0 20 0 {lab=A}
N 20 0 20 70 {lab=A}
N 20 70 60 70 {lab=A}
N 100 -70 200 -70 {lab=VDD}
N 200 -120 200 -70 {lab=VDD}
N 100 -120 200 -120 {lab=VDD}
N 100 70 200 70 {lab=VSS}
N 200 70 200 120 {lab=VSS}
N 100 120 200 120 {lab=VSS}
N 100 100 100 140 {lab=VSS}
N 100 0 240 0 {lab=B}
C {symbols/nfet_03v3.sym} 80 70 0 0 {name=MN
<<<<<<< HEAD
L=1u
W=1u
nf=1
m=1
=======
L=0.28u
W=1.8u
nf=1
m=4
>>>>>>> 9989ca739e404c74d48f7b852d19f4f93f77e512
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 80 -70 0 0 {name=MP
<<<<<<< HEAD
L=1u
W=3u
nf=1
m=1
=======
L=0.28u
W=1.8u
nf=1
m=8
>>>>>>> 9989ca739e404c74d48f7b852d19f4f93f77e512
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {opin.sym} 240 0 0 0 {name=p1 lab=B}
C {ipin.sym} -20 0 0 0 {name=p2 lab=A}
C {iopin.sym} 100 -160 1 1 {name=p5 lab=VDD}
C {iopin.sym} 100 140 1 0 {name=p4 lab=VSS}
