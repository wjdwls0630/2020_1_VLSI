* SPICE NETLIST
***************************************

.SUBCKT inverter Input GND VDD Output
** N=4 EP=4 IP=0 FDC=2
M0 Output Input GND GND NMOS_VTL L=5e-08 W=9e-08 AD=1.1475e-14 AS=1.125e-14 PD=4.35e-07 PS=4.3e-07 $X=-3225 $Y=1345 $D=1
M1 Output Input VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.25e-14 PD=6.15e-07 PS=6.1e-07 $X=-3225 $Y=2355 $D=0
.ENDS
***************************************
