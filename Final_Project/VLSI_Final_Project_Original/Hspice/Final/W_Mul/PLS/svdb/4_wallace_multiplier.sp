* SPICE NETLIST
***************************************

.SUBCKT PTAP_CDNS_593089788440
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NTAP_CDNS_593089788442
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT PTAP_CDNS_593089788441
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT TGFA_2010 B 2 A 4 Cout Cin 7
** N=12 EP=7 IP=3 FDC=14
M0 12 A 8 4 NMOS_VTL L=5e-08 W=9e-08 AD=2.655e-14 AS=1.62e-14 PD=7.7e-07 PS=5.4e-07 $X=-13995 $Y=4260 $D=1
M1 4 B 12 4 NMOS_VTL L=5e-08 W=9e-08 AD=1.755e-14 AS=2.655e-14 PD=5.7e-07 PS=7.7e-07 $X=-13305 $Y=4260 $D=1
M2 Cout 9 A 4 NMOS_VTL L=5e-08 W=9e-08 AD=1.6425e-14 AS=1.6875e-14 PD=5.45e-07 PS=5.55e-07 $X=-13270 $Y=3575 $D=1
M3 7 9 Cin 4 NMOS_VTL L=5e-08 W=9e-08 AD=1.6425e-14 AS=1.6875e-14 PD=5.45e-07 PS=5.55e-07 $X=-12085 $Y=3570 $D=1
M4 9 8 4 4 NMOS_VTL L=5e-08 W=9e-08 AD=1.125e-14 AS=1.1025e-14 PD=4.3e-07 PS=4.25e-07 $X=-11620 $Y=4290 $D=1
M5 Cout 8 Cin 4 NMOS_VTL L=5e-08 W=9e-08 AD=1.665e-14 AS=1.665e-14 PD=5.5e-07 PS=5.5e-07 $X=-10755 $Y=3570 $D=1
M6 7 Cin 9 4 NMOS_VTL L=5e-08 W=9e-08 AD=1.6425e-14 AS=1.6425e-14 PD=5.45e-07 PS=5.45e-07 $X=-10625 $Y=4280 $D=1
M7 8 A B 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=5.31e-14 AS=3.195e-14 PD=9.5e-07 PS=7.15e-07 $X=-13995 $Y=5790 $D=0
M8 A B 8 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=3.51e-14 AS=5.31e-14 PD=7.5e-07 PS=9.5e-07 $X=-13305 $Y=5790 $D=0
M9 Cout 8 A 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=3.105e-14 AS=3.375e-14 PD=7.05e-07 PS=7.35e-07 $X=-13260 $Y=1850 $D=0
M10 7 8 Cin 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=3.195e-14 AS=3.465e-14 PD=7.15e-07 PS=7.45e-07 $X=-12075 $Y=1850 $D=0
M11 9 8 2 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=2.205e-14 AS=2.16e-14 PD=6.05e-07 PS=6e-07 $X=-11620 $Y=5790 $D=0
M12 Cout 9 Cin 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=3.105e-14 AS=3.375e-14 PD=7.05e-07 PS=7.35e-07 $X=-10740 $Y=1850 $D=0
M13 7 Cin 8 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=3.465e-14 AS=3.06e-14 PD=7.45e-07 PS=7e-07 $X=-10625 $Y=5790 $D=0
.ENDS
***************************************
.SUBCKT ICV_1 1 2 3 4 5 6 7 8 9 10 11 12
** N=12 EP=12 IP=14 FDC=28
X0 3 12 4 11 5 6 1 TGFA_2010 $T=0 0 0 0 $X=-15460 $Y=1610
X1 7 12 8 11 9 10 2 TGFA_2010 $T=6000 0 0 0 $X=-9460 $Y=1610
.ENDS
***************************************
.SUBCKT and2 GND 2 A B Y
** N=7 EP=5 IP=2 FDC=6
M0 7 A GND GND NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.88e-14 PD=6.4e-07 PS=6.8e-07 $X=3340 $Y=6395 $D=1
M1 6 B 7 GND NMOS_VTL L=5e-08 W=1.8e-07 AD=3.06e-14 AS=2.52e-14 PD=7e-07 PS=6.4e-07 $X=3720 $Y=6395 $D=1
M2 Y 6 GND GND NMOS_VTL L=5.25e-08 W=9e-08 AD=1.1475e-14 AS=1.2375e-14 PD=4.35e-07 PS=4.55e-07 $X=5155 $Y=6575 $D=1
M3 6 A 2 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=4.41e-14 AS=2.88e-14 PD=8.5e-07 PS=6.8e-07 $X=3340 $Y=7910 $D=0
M4 2 B 6 2 PMOS_VTL L=5e-08 W=1.8e-07 AD=3.33e-14 AS=4.41e-14 PD=7.3e-07 PS=8.5e-07 $X=3930 $Y=7910 $D=0
M5 Y 6 2 2 PMOS_VTL L=5.25e-08 W=1.8e-07 AD=2.295e-14 AS=2.025e-14 PD=6.15e-07 PS=5.85e-07 $X=5155 $Y=7920 $D=0
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8
** N=8 EP=8 IP=10 FDC=12
X0 7 8 1 2 3 and2 $T=0 12280 1 0 $X=2910 $Y=3750
X1 7 8 4 5 6 and2 $T=0 0 0 0 $X=2910 $Y=6140
.ENDS
***************************************
.SUBCKT ICV_3 1 2 3 4 5 6 7 8
** N=8 EP=8 IP=10 FDC=12
X0 7 8 1 2 3 and2 $T=0 0 0 0 $X=2910 $Y=6140
X1 7 8 4 5 6 and2 $T=3000 0 0 0 $X=5910 $Y=6140
.ENDS
***************************************
.SUBCKT 4_wallace_multiplier X0 X1 X2 X3 Y0 Y3 Y2 Y1 GND P7 P0 P1 P2 P4 P5 P6 P3 VDD
** N=50 EP=18 IP=144 FDC=264
X4 15 VDD 14 GND 29 12 21 TGFA_2010 $T=37790 21405 1 0 $X=22330 $Y=15015
X5 9 VDD 13 GND 23 10 22 TGFA_2010 $T=37790 26185 1 0 $X=22330 $Y=19795
X6 35 VDD 37 GND 47 GND P3 TGFA_2010 $T=52790 11845 1 0 $X=37330 $Y=5455
X7 33 VDD 31 GND 48 47 P4 TGFA_2010 $T=52790 16625 1 0 $X=37330 $Y=10235
X8 P1 P2 16 19 28 GND 28 30 35 GND GND VDD ICV_1 $T=40790 11845 1 0 $X=25330 $Y=5455
X9 30 37 17 11 46 18 21 24 33 46 GND VDD ICV_1 $T=40790 16625 1 0 $X=25330 $Y=10235
X10 31 P5 29 22 34 GND 34 32 49 48 GND VDD ICV_1 $T=46790 21405 1 0 $X=31330 $Y=15015
X11 32 P6 26 27 36 23 36 25 P7 49 GND VDD ICV_1 $T=46790 26185 1 0 $X=31330 $Y=19795
X12 X1 Y3 13 X3 Y0 12 GND VDD ICV_2 $T=16420 23545 1 0 $X=19330 $Y=15015
X13 X3 Y1 10 X2 Y2 9 GND VDD ICV_2 $T=16420 28325 1 0 $X=19330 $Y=19795
X14 X3 Y3 25 X0 Y3 24 GND VDD ICV_2 $T=25420 23545 1 0 $X=28330 $Y=15015
X15 X3 Y2 26 X2 Y3 27 GND VDD ICV_2 $T=25420 28325 1 0 $X=28330 $Y=19795
X16 X0 Y0 P0 X0 Y1 19 GND VDD ICV_3 $T=16420 13985 1 0 $X=19330 $Y=5455
X17 X0 Y2 11 X1 Y0 16 GND VDD ICV_3 $T=16420 1705 0 0 $X=19330 $Y=7845
X18 X1 Y2 14 X1 Y1 17 GND VDD ICV_3 $T=16420 18765 1 0 $X=19330 $Y=10235
X19 X2 Y1 15 X2 Y0 18 GND VDD ICV_3 $T=16420 6485 0 0 $X=19330 $Y=12625
.ENDS
***************************************
