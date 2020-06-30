* SPICE NETLIST
***************************************

.SUBCKT load_inverter A GND VDD B
** N=4 EP=4 IP=0 FDC=2
M0 B A GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=-9265 $Y=2365 $D=1
M1 B A VDD VDD PMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=-9265 $Y=3475 $D=0
.ENDS
***************************************
