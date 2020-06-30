* SPICE NETLIST
***************************************

.SUBCKT nand2 A GND B Y VDD
** N=6 EP=5 IP=0 FDC=4
M0 6 A GND GND NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.88e-14 PD=6.4e-07 PS=6.8e-07 $X=-97210 $Y=96070 $D=1
M1 Y B 6 GND NMOS_VTL L=5e-08 W=1.8e-07 AD=2.88e-14 AS=2.52e-14 PD=6.8e-07 PS=6.4e-07 $X=-96830 $Y=96070 $D=1
M2 Y A VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=4.41e-14 AS=2.88e-14 PD=8.5e-07 PS=6.8e-07 $X=-97210 $Y=97520 $D=0
M3 VDD B Y VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.88e-14 AS=4.41e-14 PD=6.8e-07 PS=8.5e-07 $X=-96620 $Y=97520 $D=0
.ENDS
***************************************
