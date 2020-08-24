*--------------------------------------------------------------------------------------------------
* Parameters and models
*--------------------------------------------------------------------------------------------------
.PARAM SUPPLY=1.8
.OPTION DELMAX=1e-9

.TEMP 25.0
* .op is necessary for graph
.op
.OPTION post  
+	ARTIST=2
+	INGOLD=2
+	PARHIER=LOCAL
+	PSF=2
.INCLUDE "/Tools/Library/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
.INCLUDE "/Tools/Library/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc"

*---------------------------------------------------------------------------------------------------
* Subcircuits
*---------------------------------------------------------------------------------------------------
.include ../lib/lib.sp

*---------------------------------------------------------------------------------------------------
* Simulation netlist
*---------------------------------------------------------------------------------------------------
.subckt inverter_dont_touch a vdd gnd b 
m0 b a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 b a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends inverter_dont_touch



* ORIGINAL
*x1 input1 VDD GND output1 inverter_dont_touch
* SCALE
* input 2 and output 2 means net 
x2 input2 output2 inverter P='P1'
* need to connect soruce like below 
Vin input2 gnd 0 
*---------------------------------------------------------------------------------------------------
* Stimulus 
*---------------------------------------------------------------------------------------------------
.global vdd gnd
VDD vdd gnd 'SUPPLY' 0
input2 
*---------------------------------------------------------------------------------------------------
* Measure
*---------------------------------------------------------------------------------------------------
.DC Vin 0.01 'SUPPLY' 0.1 SWEEP P1 1.52 2.0 0.01   
*.DC input1 0.01 'SUPPLY' 0.1

*.measure DC Vm1  find par(input1) 
*+	when V(output1)=V(input1)

.measure DC Vm find V(input2)
+	when V(output2)=V(input2)



.end
