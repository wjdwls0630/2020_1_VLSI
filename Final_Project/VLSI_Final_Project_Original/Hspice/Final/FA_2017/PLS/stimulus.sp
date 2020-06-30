* stimulus.sp

* Parameters and models
*--------------------------------------------------------------------------------------------------
.TITLE Case1
.LIB '../../library.lib' TTTT

.OPTION
+    DELMAX=1e-9
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

* Subcircuits
*---------------------------------------------------------------------------------------------------
.include 'FA_2017.pex.netlist'

* Simulation netlist
*---------------------------------------------------------------------------------------------------
x1 sum cout a b cin vdd gnd FA_2017

* Stimulus
*---------------------------------------------------------------------------------------------------
VDD vdd gnd vdd
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.TRAN 100e-12 20e-9 START=0.0

* Measure
*---------------------------------------------------------------------------------------------------
.measure tran tr_a_s TRIG v(a) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(sum) VAL='vdd/2' RISE=1
.measure tran tf_a_s TRIG v(a) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(sum) VAL='vdd/2' FALL=1
.measure tran tpdf_a_s TRIG v(a) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(sum) VAL='vdd/2' FALL=1
.measure tran tpdr_a_s TRIG v(a) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(sum) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_a_cout TRIG v(a) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(cout) VAL='vdd/2' RISE=1
.measure tran tf_a_cout TRIG v(a) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(cout) VAL='vdd/2' FALL=1
.measure tran tpdf_a_cout TRIG v(a) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(cout) VAL='vdd/2' FALL=1
.measure tran tpdr_a_cout TRIG v(a) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(cout) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_b_s TRIG v(b) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(sum) VAL='vdd/2' RISE=1
.measure tran tf_b_s TRIG v(b) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(sum) VAL='vdd/2' FALL=1
.measure tran tpdf_b_s TRIG v(b) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(sum) VAL='vdd/2' FALL=1
.measure tran tpdr_b_s TRIG v(b) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(sum) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_b_cout TRIG v(b) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(cout) VAL='vdd/2' RISE=1
.measure tran tf_b_cout TRIG v(b) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(cout) VAL='vdd/2' FALL=1
.measure tran tpdf_b_cout TRIG v(b) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(cout) VAL='vdd/2' FALL=1
.measure tran tpdr_b_cout TRIG v(b) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(cout) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_cin_s TRIG v(cin) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(sum) VAL='vdd/2' RISE=1
.measure tran tf_cin_s TRIG v(cin) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(sum) VAL='vdd/2' FALL=1
.measure tran tpdf_cin_s TRIG v(cin) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(sum) VAL='vdd/2' FALL=1
.measure tran tpdr_cin_s TRIG v(cin) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(sum) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------
.measure tran tr_cin_cout TRIG v(cin) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(cout) VAL='vdd/2' RISE=1
.measure tran tf_cin_cout TRIG v(cin) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(cout) VAL='vdd/2' FALL=1
.measure tran tpdf_cin_cout TRIG v(cin) VAL='vdd/2' TD=0.0 RISE=1
+	TARG v(cout) VAL='vdd/2' FALL=1
.measure tran tpdr_cin_cout TRIG v(cin) VAL='vdd/2' TD=0.0 FALL=1
+	TARG v(cout) VAL='vdd/2' RISE=1
*---------------------------------------------------------------------------------------------------

.ALTER Case2
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case3
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case4
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

*---------------------------------------------------------------------------------------------------
.ALTER Case5
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case6
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case7
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case8
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case9
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case10
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case11
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case12
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case13
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case14
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case15
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case16
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case17
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case18
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case19
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case20
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

*---------------------------------------------------------------------------------------------------
.ALTER Case21
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case22
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case23
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case24
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case25
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case26
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case27
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case28
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case29
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case30
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case31
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case32
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case33
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case34
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case35
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case36
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

*---------------------------------------------------------------------------------------------------
.ALTER Case37
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case38
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case39
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case40
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case41
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case42
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case43
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case44
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case45
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case46
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case47
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)

.ALTER Case48
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case49
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case50
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case51
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case52
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

*---------------------------------------------------------------------------------------------------
.ALTER Case53
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case54
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case55
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case56
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case57
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case58
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case59
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case60
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.ALTER Case61
vin_a a gnd pulse(0.0 vdd 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case62
vin_a a gnd pulse(0.0 vdd 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case63
vin_a a gnd pulse(vdd 0.0 10n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)

.ALTER Case64
vin_a a gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_b b gnd vdd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
vin_cin cin gnd pulse(vdd 0.0 50n 0.001n 0.001n 10n 20.04n)
*---------------------------------------------------------------------------------------------------
.END
