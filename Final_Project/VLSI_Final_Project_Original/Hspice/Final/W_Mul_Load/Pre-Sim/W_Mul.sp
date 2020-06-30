** Generated for: hspiceD
** Generated on: Jun 25 21:40:24 2020
** Design library name: MULTIPLIER
** Design cell name: W_Mul
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
** Cell name: nand2
** View name: schematic
.subckt nand2 a b gnd vdd y
m1 y b vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m0 y a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 y a n1 gnd NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 n1 b gnd gnd NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends nand2
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: and2
** View name: schematic
.subckt and2 a b gnd vdd y
xi3 net8 y gnd vdd inverter
xi2 a b gnd vdd net8 nand2
.ends and2
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
** Cell name: TGFA_2010
** View name: schematic
.subckt TGFA_2010 a b cin cout gnd sum vdd
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
** End of subcircuit definition.

** Library name: MULTIPLIER
** Cell name: W_Mul
** View name: schematic
.subckt W_Mul p0 p1 p2 p3 p4 p5 p6 p7 x0 x1 x2 x3 y0 y1 y2 y3 vdd gnd 
xi15 x0 y0 gnd vdd p0 and2
xi14 x1 y0 gnd vdd net53 and2
xi13 x0 y1 gnd vdd net52 and2
xi12 x2 y0 gnd vdd net59 and2
xi11 x1 y1 gnd vdd net91 and2
xi10 x0 y2 gnd vdd net60 and2
xi9 x3 y0 gnd vdd net61 and2
xi8 x2 y1 gnd vdd net90 and2
xi7 x1 y2 gnd vdd net62 and2
xi6 x0 y3 gnd vdd net73 and2
xi5 x3 y1 gnd vdd net57 and2
xi4 x2 y2 gnd vdd net89 and2
xi3 x1 y3 gnd vdd net58 and2
xi2 x3 y2 gnd vdd net63 and2
xi1 x2 y3 gnd vdd net64 and2
xi0 x3 y3 gnd vdd net75 and2
xi40 net75 net83 net84 p7 gnd p6 vdd TGFA_2010
xi39 net81 net82 net86 net84 gnd p5 vdd TGFA_2010
xi38 net79 net78 net87 net86 gnd p4 vdd TGFA_2010
xi37 net77 net76 gnd net87 gnd p3 vdd TGFA_2010
xi35 net70 net66 gnd net76 gnd p2 vdd TGFA_2010
xi34 net73 net69 net68 net78 gnd net77 vdd TGFA_2010
xi33 net72 net71 gnd net82 gnd net79 vdd TGFA_2010
xi32 net64 net63 net67 net83 gnd net81 vdd TGFA_2010
xi31 net52 net53 gnd net66 gnd p1 vdd TGFA_2010
xi30 net60 net91 net59 net68 gnd net70 vdd TGFA_2010
xi29 net62 net90 net61 net71 gnd net69 vdd TGFA_2010
xi28 net58 net89 net57 net67 gnd net72 vdd TGFA_2010
.ends W_Mul
