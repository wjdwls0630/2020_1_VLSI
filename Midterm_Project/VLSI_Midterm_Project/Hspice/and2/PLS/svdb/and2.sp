* SPICE NETLIST
***************************************

.SUBCKT PTAP_CDNS_587199647660
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NTAP_CDNS_587199647661
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT and2 B A GND VDD Y
** N=7 EP=5 IP=4 FDC=6
M0 7 B GND GND NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.88e-14 PD=6.4e-07 PS=6.8e-07 $X=-28825 $Y=9650 $D=1
M1 3 A 7 GND NMOS_VTL L=5e-08 W=1.8e-07 AD=2.88e-14 AS=2.52e-14 PD=6.8e-07 PS=6.4e-07 $X=-28445 $Y=9650 $D=1
M2 Y 3 GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=-26370 $Y=10070 $D=1
M3 3 B VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=4.41e-14 AS=2.88e-14 PD=8.5e-07 PS=6.8e-07 $X=-28825 $Y=11100 $D=0
M4 VDD A 3 VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.88e-14 AS=4.41e-14 PD=6.8e-07 PS=8.5e-07 $X=-28235 $Y=11100 $D=0
M5 Y 3 VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=-26370 $Y=11080 $D=0
.ENDS
***************************************
