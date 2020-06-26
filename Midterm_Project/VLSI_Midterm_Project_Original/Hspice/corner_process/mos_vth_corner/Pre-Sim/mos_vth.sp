** Generated for: hspiceD
** Generated on: Apr 13 21:44:59 2020

** Cell name: mos_vth
** View name: schematic

* Parameters and models
*--------------------------------------------------------------------------------------------------
.TITLE SSSS
.LIB '../../../corner.lib' SSSS

.OPTION
+    DELMAX=1e-9
+    PROBE
+    POST=2
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    IVTH=100n
+    BYPASS=0


m0 vds vgs gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 vsd vsg vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1

* Simulation netlist
*---------------------------------------------------------------------------------------------------
* Stimulus
*---------------------------------------------------------------------------------------------------
vdd vdd gnd vdd
vgs vgs gnd vdd
vds vds gnd 50e-3
vsg vsg gnd 0
vsd vsd gnd vdd-50e-3

*.DC vgs 0 vdd 0.01
*.MEASURE DC NMOS_VTH FIND v(vgs) WHEN i(m0)=100n
*.MEASURE DC PMOS FIND v(vgs) WHEN i(m1)=-100n
*.MEASURE DC PMOS_VTH PARAM vdd-PMOS

.TRAN 5e-9 5e-9 START=0.0
.MEASURE TRAN ivth_nMOS em_avg lx142(m0)
.MEASURE TRAN ivth_pMOS_temp em_avg lx142(m1)
.MEASURE TRAN ivth_pMOS PARAM='-ivth_pMOS_temp'


.ALTER SSST
.DEL LIB '../../../corner.lib' SSSS
.LIB '../../../corner.lib' SSST

.ALTER SSSF
.DEL LIB '../../../corner.lib' SSST
.LIB '../../../corner.lib' SSSF

.ALTER SSTS
.DEL LIB '../../../corner.lib' SSSF
.LIB '../../../corner.lib' SSTS

.ALTER SSTT
.DEL LIB '../../../corner.lib' SSTS
.LIB '../../../corner.lib' SSTT

.ALTER SSTF
.DEL LIB '../../../corner.lib' SSTT
.LIB '../../../corner.lib' SSTF

.ALTER SSFS
.DEL LIB '../../../corner.lib' SSTF
.LIB '../../../corner.lib' SSFS

.ALTER SSFT
.DEL LIB '../../../corner.lib' SSFS
.LIB '../../../corner.lib' SSFT

.ALTER SSFF
.DEL LIB '../../../corner.lib' SSFT
.LIB '../../../corner.lib' SSFF

.ALTER STSS
.DEL LIB '../../../corner.lib' SSFF
.LIB '../../../corner.lib' STSS

.ALTER STST
.DEL LIB '../../../corner.lib' STSS
.LIB '../../../corner.lib' STST

.ALTER STSF
.DEL LIB '../../../corner.lib' STST
.LIB '../../../corner.lib' STSF

.ALTER STTS
.DEL LIB '../../../corner.lib' STSF
.LIB '../../../corner.lib' STTS

.ALTER STTT
.DEL LIB '../../../corner.lib' STTS
.LIB '../../../corner.lib' STTT

.ALTER STTF
.DEL LIB '../../../corner.lib' STTT
.LIB '../../../corner.lib' STTF

.ALTER STFS
.DEL LIB '../../../corner.lib' STTF
.LIB '../../../corner.lib' STFS

.ALTER STFT
.DEL LIB '../../../corner.lib' STFS
.LIB '../../../corner.lib' STFT

.ALTER STFF
.DEL LIB '../../../corner.lib' STFT
.LIB '../../../corner.lib' STFF

.ALTER SFSS
.DEL LIB '../../../corner.lib' STFF
.LIB '../../../corner.lib' SFSS

.ALTER SFST
.DEL LIB '../../../corner.lib' SFSS
.LIB '../../../corner.lib' SFST

.ALTER SFSF
.DEL LIB '../../../corner.lib' SFST
.LIB '../../../corner.lib' SFSF

.ALTER SFTS
.DEL LIB '../../../corner.lib' SFSF
.LIB '../../../corner.lib' SFTS

.ALTER SFTT
.DEL LIB '../../../corner.lib' SFTS
.LIB '../../../corner.lib' SFTT

.ALTER SFTF
.DEL LIB '../../../corner.lib' SFTT
.LIB '../../../corner.lib' SFTF

.ALTER SFFS
.DEL LIB '../../../corner.lib' SFTF
.LIB '../../../corner.lib' SFFS

.ALTER SFFT
.DEL LIB '../../../corner.lib' SFFS
.LIB '../../../corner.lib' SFFT

.ALTER SFFF
.DEL LIB '../../../corner.lib' SFFT
.LIB '../../../corner.lib' SFFF

* T~
.ALTER TSSS
.DEL LIB '../../../corner.lib' SFFF
.LIB '../../../corner.lib' TSSS

.ALTER TSST
.DEL LIB '../../../corner.lib' TSSS
.LIB '../../../corner.lib' TSST

.ALTER TSSF
.DEL LIB '../../../corner.lib' TSST
.LIB '../../../corner.lib' TSSF

.ALTER TSTS
.DEL LIB '../../../corner.lib' TSSF
.LIB '../../../corner.lib' TSTS

.ALTER TSTT
.DEL LIB '../../../corner.lib' TSTS
.LIB '../../../corner.lib' TSTT

.ALTER TSTF
.DEL LIB '../../../corner.lib' TSTT
.LIB '../../../corner.lib' TSTF

.ALTER TSFS
.DEL LIB '../../../corner.lib' TSTF
.LIB '../../../corner.lib' TSFS

.ALTER TSFT
.DEL LIB '../../../corner.lib' TSFS
.LIB '../../../corner.lib' TSFT

.ALTER TSFF
.DEL LIB '../../../corner.lib' TSFT
.LIB '../../../corner.lib' TSFF

.ALTER TTSS
.DEL LIB '../../../corner.lib' TSFF
.LIB '../../../corner.lib' TTSS

.ALTER TTST
.DEL LIB '../../../corner.lib' TTSS
.LIB '../../../corner.lib' TTST

.ALTER TTSF
.DEL LIB '../../../corner.lib' TTST
.LIB '../../../corner.lib' TTSF

.ALTER TTTS
.DEL LIB '../../../corner.lib' TTSF
.LIB '../../../corner.lib' TTTS

.ALTER TTTT
.DEL LIB '../../../corner.lib' TTTS
.LIB '../../../corner.lib' TTTT

.ALTER TTTF
.DEL LIB '../../../corner.lib' TTTT
.LIB '../../../corner.lib' TTTF

.ALTER TTFS
.DEL LIB '../../../corner.lib' TTTF
.LIB '../../../corner.lib' TTFS

.ALTER TTFT
.DEL LIB '../../../corner.lib' TTFS
.LIB '../../../corner.lib' TTFT

.ALTER TTFF
.DEL LIB '../../../corner.lib' TTFT
.LIB '../../../corner.lib' TTFF

.ALTER TFSS
.DEL LIB '../../../corner.lib' TTFF
.LIB '../../../corner.lib' TFSS

.ALTER TFST
.DEL LIB '../../../corner.lib' TFSS
.LIB '../../../corner.lib' TFST

.ALTER TFSF
.DEL LIB '../../../corner.lib' TFST
.LIB '../../../corner.lib' TFSF

.ALTER TFTS
.DEL LIB '../../../corner.lib' TFSF
.LIB '../../../corner.lib' TFTS

.ALTER TFTT
.DEL LIB '../../../corner.lib' TFTS
.LIB '../../../corner.lib' TFTT

.ALTER TFTF
.DEL LIB '../../../corner.lib' TFTT
.LIB '../../../corner.lib' TFTF

.ALTER TFFS
.DEL LIB '../../../corner.lib' TFTF
.LIB '../../../corner.lib' TFFS

.ALTER TFFT
.DEL LIB '../../../corner.lib' TFFS
.LIB '../../../corner.lib' TFFT

.ALTER TFFF
.DEL LIB '../../../corner.lib' TFFT
.LIB '../../../corner.lib' TFFF

// F~
.ALTER FSSS
.DEL LIB '../../../corner.lib' TFFF
.LIB '../../../corner.lib' FSSS

.ALTER FSST
.DEL LIB '../../../corner.lib' FSSS
.LIB '../../../corner.lib' FSST

.ALTER FSSF
.DEL LIB '../../../corner.lib' FSST
.LIB '../../../corner.lib' FSSF

.ALTER FSTS
.DEL LIB '../../../corner.lib' FSSF
.LIB '../../../corner.lib' FSTS

.ALTER FSTT
.DEL LIB '../../../corner.lib' FSTS
.LIB '../../../corner.lib' FSTT

.ALTER FSTF
.DEL LIB '../../../corner.lib' FSTT
.LIB '../../../corner.lib' FSTF

.ALTER FSFS
.DEL LIB '../../../corner.lib' FSTF
.LIB '../../../corner.lib' FSFS

.ALTER FSFT
.DEL LIB '../../../corner.lib' FSFS
.LIB '../../../corner.lib' FSFT

.ALTER FSFF
.DEL LIB '../../../corner.lib' FSFT
.LIB '../../../corner.lib' FSFF

.ALTER FTSS
.DEL LIB '../../../corner.lib' FSFF
.LIB '../../../corner.lib' FTSS

.ALTER FTST
.DEL LIB '../../../corner.lib' FTSS
.LIB '../../../corner.lib' FTST

.ALTER FTSF
.DEL LIB '../../../corner.lib' FTST
.LIB '../../../corner.lib' FTSF

.ALTER FTTS
.DEL LIB '../../../corner.lib' FTSF
.LIB '../../../corner.lib' FTTS

.ALTER FTTT
.DEL LIB '../../../corner.lib' FTTS
.LIB '../../../corner.lib' FTTT

.ALTER FTTF
.DEL LIB '../../../corner.lib' FTTT
.LIB '../../../corner.lib' FTTF

.ALTER FTFS
.DEL LIB '../../../corner.lib' FTTF
.LIB '../../../corner.lib' FTFS

.ALTER FTFT
.DEL LIB '../../../corner.lib' FTFS
.LIB '../../../corner.lib' FTFT

.ALTER FTFF
.DEL LIB '../../../corner.lib' FTFT
.LIB '../../../corner.lib' FTFF

.ALTER FFSS
.DEL LIB '../../../corner.lib' FTFF
.LIB '../../../corner.lib' FFSS

.ALTER FFST
.DEL LIB '../../../corner.lib' FFSS
.LIB '../../../corner.lib' FFST

.ALTER FFSF
.DEL LIB '../../../corner.lib' FFST
.LIB '../../../corner.lib' FFSF

.ALTER FFTS
.DEL LIB '../../../corner.lib' FFSF
.LIB '../../../corner.lib' FFTS

.ALTER FFTT
.DEL LIB '../../../corner.lib' FFTS
.LIB '../../../corner.lib' FFTT

.ALTER FFTF
.DEL LIB '../../../corner.lib' FFTT
.LIB '../../../corner.lib' FFTF

.ALTER FFFS
.DEL LIB '../../../corner.lib' FFTF
.LIB '../../../corner.lib' FFFS

.ALTER FFFT
.DEL LIB '../../../corner.lib' FFFS
.LIB '../../../corner.lib' FFFT

.ALTER FFFF
.DEL LIB '../../../corner.lib' FFFT
.LIB '../../../corner.lib' FFFF

.END
