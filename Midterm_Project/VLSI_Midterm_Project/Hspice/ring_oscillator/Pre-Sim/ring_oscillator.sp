** Generated for: hspiceD
** Generated on: Apr 23 22:55:44 2020
** Design library name: Library_Jin
** Design cell name: ring_oscillator
** Design view name: schematic

.PARAM vdd=1.1
.TRAN 1e-12 1e-9 START=0.0
.OPTION DELMAX=1e-12


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/Tools/Library/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
.INCLUDE "/Tools/Library/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc"

** Library name: Library_Jin
** Cell name: inverter
** View name: schematic
.subckt inverter gnd input output vdd
m0 output input gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 output input vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends inverter
** End of subcircuit definition.

** Library name: Library_Jin
** Cell name: ring_oscillator
** View name: schematic
vdd vdd gnd vdd
xi2 gnd out2 output vdd inverter
xi1 gnd out1 out2 vdd inverter
xi0 gnd output out1 vdd inverter
.END
