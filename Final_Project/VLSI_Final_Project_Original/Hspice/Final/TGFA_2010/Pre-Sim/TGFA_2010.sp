** Generated for: hspiceD
** Generated on: Jun 20 13:48:48 2020
** Design library name: MULTIPLIER
** Design cell name: TGFA_2010
** Design view name: schematic

** Library name: MULTIPLIER
** Cell name: transmission
** View name: schematic
.subckt transmission gnd in in2 in3 out vdd
m0 in in3 out gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 in in2 out vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends transmission
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: TGFA_2010
** View name: schematic
.subckt TGFA_2010 sum cout a b cin vdd gnd 
m6 net21 cin sum gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 net21 net11 gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net42 b gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net11 a net42 gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 net11 cin sum vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m4 net21 net11 vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 b a net11 vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 net11 b a vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi2 gnd a net11 net21 cout vdd transmission
xi1 gnd cin net21 net11 cout vdd transmission
xi0 gnd cin net11 net21 sum vdd transmission
.ends TGFA_2010
