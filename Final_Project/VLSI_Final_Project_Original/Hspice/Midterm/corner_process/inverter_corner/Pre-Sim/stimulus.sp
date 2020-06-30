
* stimulus.sp

* Parameters and models
*--------------------------------------------------------------------------------------------------
.TITLE TT TEMP SWEEP VTC
.LIB '../../../corner.lib' TTTT
.OPTION
+    DELMAX=1e-9
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

* Subcircuits
*---------------------------------------------------------------------------------------------------
.include 'inverter.sp'

* Simulation netlist
*---------------------------------------------------------------------------------------------------
x1 output input vdd gnd inverter
* Stimulus
*---------------------------------------------------------------------------------------------------
VDD vdd gnd vdd
vin0 input gnd vdd

.DC vin0 0 vdd 0.001 SWEEP TEMP POI 3 -45 25 125

.ALTER SS SWEEP VTC
.DEL LIB '../../../corner.lib' TTTT
.LIB '../../../corner.lib' TTSS


.ALTER FF SWEEP VTC
.DEL LIB '../../../corner.lib' TTSS
.LIB '../../../corner.lib' TTFF

.ALTER SF SWEEP VTC
.DEL LIB '../../../corner.lib' TTFF
.LIB '../../../corner.lib' TTSF

.ALTER FS SWEEP VTC
.DEL LIB '../../../corner.lib' TTSF
.LIB '../../../corner.lib' TTFS

.END
