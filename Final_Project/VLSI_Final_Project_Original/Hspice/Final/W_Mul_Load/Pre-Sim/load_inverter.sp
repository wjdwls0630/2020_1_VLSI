** Generated for: hspiceD
** Generated on: Jun 25 22:19:52 2020
** Design library name: MULTIPLIER
** Design cell name: load_inverter
** Design view name: schematic

** Library name: MULTIPLIER
** Cell name: load_inverter
** View name: schematic
.subckt load_inverter a b gnd vdd
m0 b a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 b a vdd vdd PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends load_inverter
