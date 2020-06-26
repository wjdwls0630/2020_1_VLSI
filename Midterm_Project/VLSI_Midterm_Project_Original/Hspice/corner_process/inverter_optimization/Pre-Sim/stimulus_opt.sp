
* stimulus.sp

* Parameters and models
*--------------------------------------------------------------------------------------------------

.PARAM vdd=1.1
.OPTION DELMAX=1e-9

*1,3 

* 2
*.OPTION SCALE=25e-9



.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST
.INCLUDE "/Tools/Library/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
.INCLUDE "/Tools/Library/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc"

* Subcircuits
*---------------------------------------------------------------------------------------------------
.include 'inverter_opt.sp'

* Simulation netlist
*---------------------------------------------------------------------------------------------------
*1
*x1 output input inverter_opt Mul='H'
*2 
*x1 output input inv P='P1'
*3 
x1 output input inv2 Mul=2

* Stimulus 
*---------------------------------------------------------------------------------------------------
.global vdd gnd
VDD vdd gnd vdd 0

*1,3
*vin0 input 0 0 pulse 0 vdd 20n 0.1n 0.1n 20n 40n

*2
vin0 input gnd pulse 0 vdd 0 20ps 20ps 120ps 280ps 

*Optimization setup
*---------------------------------------------------------------------------------------------------
*1,3
.param H=optrange(2,1,4)
*2
*.param P1=optrange1(8,4,16)
.model optmod opt itropt=30
.measure bestratio param='H'
*2
*.measure bestratio param='P1/4'

* Measure
*---------------------------------------------------------------------------------------------------
*2 280ps
*.tran 1e-13  280e-12 SWEEP OPTIMIZE=optrange1 RESULTS=diff MODEL=optmod
.tran 1e-13 280e-12 SWEEP H 1.5 2.5 1e-2
*.tran 1e-13 280e-12 
*1,3 40n
*.TRAN 1e-12 100e-9 SWEEP OPTIMIZE=optrange RESULTS=tpd MODEL=optmod
*.TRAiN 1e-12 100e-9 SWEEP H 1 8 0.1

.measure tran tpdf TRIG v(input) VAL='vdd/2' RISE=1  *falling propagation delay
+	TARG v(output) VAL='vdd/2' FALL=1
.measure tran tpdr TRIG v(input) VAL='vdd/2' FALL=1  *rising propagation delay
+	TARG v(output) VAL='vdd/2' RISE=1
.measure tran tpd param='(tpdf+tpdr)/2' goal=0  * average prop delay
.measure tran diff param='abs(tpdr-tpdf)' goal=0 * diff between delay
.measure tran tr trig v(output) VAL='vdd*0.2', RISE=1 *rise time
+	targ v(output) VAL='vdd*0.8', RISE=1
.measure tran tf trig v(output) VAL='vdd*0.8', FALL=1 *fall time
+	targ v(output) VAL='vdd*0.2', FALL=1
.measure tran vmax_os_f MAX v(output) FROM=10n TO=25n
.measure tran vmin_os_f MIN v(output) FROM=10n TO=25n
.measure tran vmax_os_r MAX v(output) FROM=35n TO=50n
.measure tran vmin_os_r MIN v(output) FROM=35n TO=50n
.measure tran avgpower AVG power FROM=1n TO=100n
.measure tran peakpower MAX power FROM=1n TO=100n
.END
