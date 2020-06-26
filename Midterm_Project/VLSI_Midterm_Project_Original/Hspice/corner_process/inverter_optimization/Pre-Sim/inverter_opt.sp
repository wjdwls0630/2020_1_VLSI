** Generated for: hspiceD
** Generated on: Apr 13 21:44:59 2020
** Design library name: Library_Jin
** Design cell name: inverter
** Design view name: schematic

** Library name: Library_Jin
** Cell name: inverter
** View name: schematic

.subckt inverter_opt output input  Mul=1
m0 output input gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 output input vdd vdd PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M='Mul'
.ends inverter_opt


.subckt inv y a N=4 P=8
M1 y a gnd gnd NMOS_VTL W='N' L=2
+ AS='N*5' PS='2*N+10' AD='N*5' PD='2*N+10'
M2 y a vdd vdd PMOS_VTL W='P' L=2
+ AS='P*5' PS='2*P+10' AD='P*5' PD='2*P+10'
.ends inv

.subckt inv2 output input Mul=1
m0 output input gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9  M=1
m1 output input vdd vdd PMOS_VTL L=50e-9 w='(90e-9)*Mul'
+ AS='Mul*(9.45e-15)' PS='Mul*(90e-9)+210e-9' AD='Mul*(9.45e-15)' PD='Mul*(90e-9)+210e-9' M=1
.ends inv2 
