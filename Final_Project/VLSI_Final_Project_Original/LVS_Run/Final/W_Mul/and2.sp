* SPICE NETLIST
***************************************

.SUBCKT and2 GND VDD A B Y
** N=7 EP=5 IP=0 FDC=6
M0 7 A GND GND NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.88e-14 PD=6.4e-07 PS=6.8e-07 $X=3340 $Y=6395 $D=1
M1 5 B 7 GND NMOS_VTL L=5e-08 W=1.8e-07 AD=3.06e-14 AS=2.52e-14 PD=7e-07 PS=6.4e-07 $X=3720 $Y=6395 $D=1
M2 Y 5 GND GND NMOS_VTL L=5.25e-08 W=9e-08 AD=1.1475e-14 AS=1.2375e-14 PD=4.35e-07 PS=4.55e-07 $X=5155 $Y=6575 $D=1
M3 5 A VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=4.41e-14 AS=2.88e-14 PD=8.5e-07 PS=6.8e-07 $X=3340 $Y=7910 $D=0
M4 VDD B 5 VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=3.33e-14 AS=4.41e-14 PD=7.3e-07 PS=8.5e-07 $X=3930 $Y=7910 $D=0
M5 Y 5 VDD VDD PMOS_VTL L=5.25e-08 W=1.8e-07 AD=2.295e-14 AS=2.025e-14 PD=6.15e-07 PS=5.85e-07 $X=5155 $Y=7920 $D=0
.ENDS
***************************************
