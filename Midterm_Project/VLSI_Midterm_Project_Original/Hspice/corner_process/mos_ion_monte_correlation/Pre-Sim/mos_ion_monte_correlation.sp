** Generated for: hspiceD
** Generated on: Apr 13 21:44:59 2020

** Cell name: mos_ion
** View name: schematic

* Parameters and models
*--------------------------------------------------------------------------------------------------
.TITLE TTTT
.LIB '../../../corner.lib' TTTT

.PARAM norm_1_random=agauss(0,1,3)
.PARAM norm_2_random=agauss(0,1,3)
.PARAM L_Param='50e-9+1.05e-9*(sqrt(0.5)*norm_1_random+sqrt(0.5)*norm_1_random)'
.PARAM Wn_Param='90e-9+2.5e-9*(sqrt(0.5)*norm_2_random+sqrt(0.5)*norm_2_random)'
.PARAM Wp_Param='Wn_Param*2'
.PARAM An_Param='Wn_Param*9.45e-15/90e-9'
.PARAM Ap_Param='Wp_Param*9.45e-15/90e-9'
.PARAM Pn_Param='Wn_Param+L_Param+160e-9'
.PARAM Pp_Param='Wp_Param+L_Param+160e-9'
*1.05e-9
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    DELMAX=1e-9
* Subcircuits
*---------------------------------------------------------------------------------------------------
* Simulation netlist
*---------------------------------------------------------------------------------------------------
m0 vds vgs gnd gnd NMOS_VTL L='L_Param' W='Wn_Param' AD='An_Param' AS='An_Param'
+PD='Pn_Param' PS='Pn_Param' M=1
m1 vds vsg vdd vdd PMOS_VTL L='L_Param' W='Wp_Param' AD='Ap_Param' AS='Ap_Param'
+PD='Pp_Param' PS='Pp_Param' M=1
* Simulation netlist
*---------------------------------------------------------------------------------------------------
* Stimulus
*---------------------------------------------------------------------------------------------------
vdd vdd gnd vdd
vgs vgs gnd vdd
vds vds gnd 0
vsg vsg gnd 0
.DC vds 0 vdd 0.01 MONTE=2500
.MEASURE DC iD_nMOS FIND i1(m0) WHEN v(vds)=vdd
.MEASURE DC iD_pMOS FIND i1(m1) WHEN v(vds)=0
.MEASURE DC ion_nMOS PARAM='iD_nMOS/90e-9'
.MEASURE DC ion_pMOS PARAM='-iD_pMOS/180e-9'
.END
