* SPICE NETLIST
***************************************

.SUBCKT nor2 A VDD B Y GND
** N=6 EP=5 IP=0 FDC=4
M0 Y A GND GND NMOS_VTL L=5e-08 W=9e-08 AD=2.475e-14 AS=1.44e-14 PD=7.3e-07 PS=5e-07 $X=-30880 $Y=35025 $D=1
M1 GND B Y GND NMOS_VTL L=5e-08 W=9e-08 AD=1.44e-14 AS=2.475e-14 PD=5e-07 PS=7.3e-07 $X=-30290 $Y=35025 $D=1
M2 6 A VDD VDD PMOS_VTL L=5e-08 W=3.6e-07 AD=5.13e-14 AS=5.76e-14 PD=1.005e-06 PS=1.04e-06 $X=-30880 $Y=36490 $D=0
M3 Y B 6 VDD PMOS_VTL L=5e-08 W=3.6e-07 AD=5.76e-14 AS=5.13e-14 PD=1.04e-06 PS=1.005e-06 $X=-30495 $Y=36490 $D=0
.ENDS
***************************************
