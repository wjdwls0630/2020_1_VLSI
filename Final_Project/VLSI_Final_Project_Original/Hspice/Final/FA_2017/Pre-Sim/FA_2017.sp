** Generated for: hspiceD
** Generated on: Jun 19 18:05:03 2020
** Design library name: MULTIPLIER
** Design cell name: FA_2017
** Design view name: schematic

** Cell name: inverter
** View name: schematic
.subckt inverter a b gnd vdd
m0 b a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 b a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends inverter
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: pass_mux
** View name: schematic
.subckt pass_mux a b c gnd out vdd
m0 out c b gnd NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 out c a vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends pass_mux
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: FA_2017
** View name: schematic
.subckt FA_2017 sum cout a b cin vdd gnd
xi6 net64 sum gnd vdd inverter
xi5 net67 net64 gnd vdd inverter
xi4 net66 cout gnd vdd inverter
xi3 net65 net66 gnd vdd inverter
xi8 a net62 gnd vdd inverter
xi7 b net60 gnd vdd inverter
xi2 a net62 net56 gnd net67 vdd pass_mux
xi1 b net60 cin gnd net56 vdd pass_mux
xi0 b a net56 gnd net65 vdd pass_mux
.ends FA_2017
