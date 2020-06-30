* stimulus.sp

* Parameters and models
*--------------------------------------------------------------------------------------------------
.TITLE Case_in_1111_1111
.LIB '../../library.lib' TTTT

.OPTION
+    DELMAX=1e-9
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

* Subcircuits
*---------------------------------------------------------------------------------------------------
.include 'W_Mul.pex.netlist'

* Simulation netlist
*---------------------------------------------------------------------------------------------------
x1 x0 x1 x2 x3 y0 y3 y2 y1 gnd p7 p0 p1 p2 p4 p5 p6 p3 vdd W_Mul

* Stimulus
*---------------------------------------------------------------------------------------------------
VDD vdd gnd vdd
vin_x0 x0 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x1 x1 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x2 x2 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x3 x3 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y0 y0 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y1 y1 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y2 y2 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y3 y3 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.TRAN 100e-12 20e-9 START=0.0

* Measure
*---------------------------------------------------------------------------------------------------
.measure tran tr_x0_p4 TRIG v(x0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' RISE=1
.measure tran tf_x0_p4 TRIG v(x0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdf_x0_p4 TRIG v(x0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdr_x0_p4 TRIG v(x0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x0_p5 trig v(x0) val='vdd/2' td=0.0 rise=1
+	targ v(p5) val='vdd/2' rise=1
.measure tran tf_x0_p5 trig v(x0) val='vdd/2' td=0.0 fall=1
+	targ v(p5) val='vdd/2' fall=1
.measure tran tpdf_x0_p5 trig v(x0) val='vdd/2' td=0.0 rise=1
+	targ v(p5) val='vdd/2' fall=1
.measure tran tpdr_x0_p5 trig v(x0) val='vdd/2' td=0.0 fall=1
+	targ v(p5) val='vdd/2' rise=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x0_p6 TRIG v(x0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' RISE=1
.measure tran tf_x0_p6 TRIG v(x0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdf_x0_p6 TRIG v(x0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdr_x0_p6 TRIG v(x0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x0_p7 TRIG v(x0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' RISE=1
.measure tran tf_x0_p7 TRIG v(x0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdf_x0_p7 TRIG v(x0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdr_x0_p7 TRIG v(x0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x1_p4 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' RISE=1
.measure tran tf_x1_p4 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdf_x1_p4 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdr_x1_p4 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x1_p5 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' RISE=1
.measure tran tf_x1_p5 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdf_x1_p5 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdr_x1_p5 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x1_p6 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' RISE=1
.measure tran tf_x1_p6 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdf_x1_p6 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdr_x1_p6 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x1_p7 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' RISE=1
.measure tran tf_x1_p7 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdf_x1_p7 TRIG v(x1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdr_x1_p7 TRIG v(x1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x2_p4 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' RISE=1
.measure tran tf_x2_p4 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdf_x2_p4 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdr_x2_p4 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x2_p5 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' RISE=1
.measure tran tf_x2_p5 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdf_x2_p5 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdr_x2_p5 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x2_p6 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' RISE=1
.measure tran tf_x2_p6 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdf_x2_p6 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdr_x2_p6 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_x2_p7 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' RISE=1
.measure tran tf_x2_p7 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdf_x2_p7 TRIG v(x2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdr_x2_p7 TRIG v(x2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y0_p4 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' RISE=1
.measure tran tf_y0_p4 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdf_y0_p4 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdr_y0_p4 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y0_p5 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' RISE=1
.measure tran tf_y0_p5 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdf_y0_p5 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdr_y0_p5 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y0_p6 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' RISE=1
.measure tran tf_y0_p6 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdf_y0_p6 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdr_y0_p6 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y0_p7 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' RISE=1
.measure tran tf_y0_p7 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdf_y0_p7 TRIG v(y0) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdr_y0_p7 TRIG v(y0) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y1_p4 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' RISE=1
.measure tran tf_y1_p4 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdf_y1_p4 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdr_y1_p4 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y1_p5 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' RISE=1
.measure tran tf_y1_p5 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdf_y1_p5 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdr_y1_p5 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y1_p6 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' RISE=1
.measure tran tf_y1_p6 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdf_y1_p6 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdr_y1_p6 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y1_p7 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' RISE=1
.measure tran tf_y1_p7 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdf_y1_p7 TRIG v(y1) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdr_y1_p7 TRIG v(y1) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y2_p4 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' RISE=1
.measure tran tf_y2_p4 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdf_y2_p4 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p4) VAL='vdd/2' FALL=1
.measure tran tpdr_y2_p4 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p4) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y2_p5 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' RISE=1
.measure tran tf_y2_p5 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdf_y2_p5 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p5) VAL='vdd/2' FALL=1
.measure tran tpdr_y2_p5 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p5) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y2_p6 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' RISE=1
.measure tran tf_y2_p6 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdf_y2_p6 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p6) VAL='vdd/2' FALL=1
.measure tran tpdr_y2_p6 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p6) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_y2_p7 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' RISE=1
.measure tran tf_y2_p7 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdf_y2_p7 TRIG v(y2) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(p7) VAL='vdd/2' FALL=1
.measure tran tpdr_y2_p7 TRIG v(y2) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(p7) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------

.ALTER Case_in_1010_0111
vin_x0 x0 gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_x1 x1 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x2 x2 gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_x3 x3 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y0 y0 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y1 y1 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y2 y2 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y3 y3 gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case_in_worst1 
vin_x0 x0 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x1 x1 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x2 x2 gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_x3 x3 gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_y0 y0 gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_y1 y1 gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_y2 y2 gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_y3 y3 gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case_in_worst2 
vin_x0 x0 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x1 x1 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_x2 x2 gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_x3 x3 gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_y0 y0 gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_y1 y1 gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_y2 y2 gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_y3 y3 gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
.END
