* SPICE NETLIST
***************************************

.SUBCKT FA VDD GND B A Cin Sum Cout
** N=13 EP=7 IP=0 FDC=22
M0 11 B GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.17e-14 AS=1.1025e-14 PD=4.4e-07 PS=4.25e-07 $X=56215 $Y=-4020 $D=1
M1 12 A GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.17e-14 AS=1.1025e-14 PD=4.4e-07 PS=4.25e-07 $X=56215 $Y=655 $D=1
M2 7 Cin GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=57505 $Y=-4020 $D=1
M3 8 6 GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=57505 $Y=655 $D=1
M4 6 Cin 11 GND NMOS_VTL L=5e-08 W=9e-08 AD=2.5875e-14 AS=1.44e-14 PD=7.55e-07 PS=5e-07 $X=58405 $Y=-4015 $D=1
M5 Sum 6 12 GND NMOS_VTL L=5e-08 W=9e-08 AD=2.4975e-14 AS=1.53e-14 PD=7.35e-07 PS=5.2e-07 $X=58425 $Y=650 $D=1
M6 B 7 6 GND NMOS_VTL L=5e-08 W=9e-08 AD=1.8675e-14 AS=2.5875e-14 PD=5.95e-07 PS=7.55e-07 $X=59080 $Y=-4015 $D=1
M7 A 8 Sum GND NMOS_VTL L=5e-08 W=9e-08 AD=1.8675e-14 AS=2.4975e-14 PD=5.95e-07 PS=7.35e-07 $X=59080 $Y=650 $D=1
M8 10 6 GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=60945 $Y=655 $D=1
M9 Cout 6 A GND NMOS_VTL L=5e-08 W=9e-08 AD=2.4975e-14 AS=1.53e-14 PD=7.35e-07 PS=5.2e-07 $X=61865 $Y=650 $D=1
M10 B 10 Cout GND NMOS_VTL L=5e-08 W=9e-08 AD=1.8675e-14 AS=2.4975e-14 PD=5.95e-07 PS=7.35e-07 $X=62520 $Y=650 $D=1
M11 11 B VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=56215 $Y=-2215 $D=0
M12 12 A VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=56215 $Y=-1330 $D=0
M13 7 Cin VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=57505 $Y=-2200 $D=0
M14 8 6 VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=57505 $Y=-1345 $D=0
M15 6 Cin B VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=5.175e-14 AS=2.835e-14 PD=9.35e-07 PS=6.75e-07 $X=58405 $Y=-2200 $D=0
M16 Sum 6 A VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=4.995e-14 AS=3.015e-14 PD=9.15e-07 PS=6.95e-07 $X=58425 $Y=-1350 $D=0
M17 11 7 6 VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=3.735e-14 AS=5.175e-14 PD=7.75e-07 PS=9.35e-07 $X=59080 $Y=-2200 $D=0
M18 12 8 Sum VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=3.735e-14 AS=4.995e-14 PD=7.75e-07 PS=9.15e-07 $X=59080 $Y=-1350 $D=0
M19 10 6 VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=60945 $Y=-1345 $D=0
M20 Cout 6 B VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=4.995e-14 AS=3.015e-14 PD=9.15e-07 PS=6.95e-07 $X=61865 $Y=-1345 $D=0
M21 A 10 Cout VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=3.735e-14 AS=4.995e-14 PD=7.75e-07 PS=9.15e-07 $X=62520 $Y=-1345 $D=0
.ENDS
***************************************
