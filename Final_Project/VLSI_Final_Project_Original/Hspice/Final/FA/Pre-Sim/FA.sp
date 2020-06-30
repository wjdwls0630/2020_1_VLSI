** Generated for: hspiceD
** Generated on: Jun 19 17:49:47 2020
** Design library name: MULTIPLIER
** Design cell name: FA
** Design view name: schematic

** Library name: MULTIPLIER
** Cell name: inverter
** View name: schematic
.subckt inverter a b gnd vdd
m0 b a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 b a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends inverter
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: transmission
** View name: schematic
.subckt transmission gnd in in2 in3 out vdd
m0 in in3 out gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 in in2 out vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends transmission
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: mux2X1
** View name: schematic
.subckt mux2X1 a b gnd q sel vdd
xi4 sel net10 gnd vdd inverter
xi2 gnd b net10 sel q vdd transmission
xi1 gnd a sel net10 q vdd transmission
.ends mux2X1
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: FA
** View name: schematic
.subckt FA sum cout a b cin vdd gnd
xi8 a net21 gnd vdd inverter
xi7 b net19 gnd vdd inverter
xi3 a net21 gnd sum net14 vdd mux2X1
xi2 b a gnd cout net14 vdd mux2X1
xi1 b net19 gnd net14 cin vdd mux2X1
.ends FA
