** Generated for: hspiceD
** Generated on: Apr 17 01:05:50 2020
** Design library name: Library_Jin
** Design cell name: nor2
** Design view name: schematic



** Library name: Library_Jin
** Cell name: nor2
** View name: schematic
.subckt nor2 y a b vdd gnd
m1 y b gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 y a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net18 a vdd vdd PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
m2 y b net18 vdd PMOS_VTL L=50e-9 W=360e-9 AD=37.8e-15 AS=37.8e-15 PD=570e-9 PS=570e-9 M=1
.ends
