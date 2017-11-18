--  This spec has been automatically generated from XMC1300.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Position Interface 0
package NRF_SVD.POSIF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Function Selector
   type PCONF_FSEL_Field is
     (
      --  Hall Sensor Mode enabled
      VALUE1,
      --  Quadrature Decoder Mode enabled
      VALUE2,
      --  stand-alone Multi-Channel Mode enabled
      VALUE3,
      --  Quadrature Decoder and stand-alone Multi-Channel Mode enabled
      VALUE4)
     with Size => 2;
   for PCONF_FSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Position Decoder Mode selection
   type PCONF_QDCM_Field is
     (
      --  Position encoder is in Quadrature Mode
      VALUE1,
      --  Position encoder is in Direction Count Mode.
      VALUE2)
     with Size => 1;
   for PCONF_QDCM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi-Channel Pattern SW update enable
   type PCONF_MCUE_Field is
     (
      --  Multi-Channel pattern update is controlled via HW
      VALUE1,
      --  Multi-Channel pattern update is controlled via SW
      VALUE2)
     with Size => 1;
   for PCONF_MCUE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PhaseA/Hal input 1 selector
   type PCONF_INSEL0_Field is
     (
      --  POSIFx.IN0A
      VALUE1,
      --  POSIFx.IN0B
      VALUE2,
      --  POSIFx.IN0C
      VALUE3,
      --  POSIFx.IN0D
      VALUE4)
     with Size => 2;
   for PCONF_INSEL0_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  PhaseB/Hall input 2 selector
   type PCONF_INSEL1_Field is
     (
      --  POSIFx.IN1A
      VALUE1,
      --  POSIFx.IN1B
      VALUE2,
      --  POSIFx.IN1C
      VALUE3,
      --  POSIFx.IN1D
      VALUE4)
     with Size => 2;
   for PCONF_INSEL1_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Index/Hall input 3 selector
   type PCONF_INSEL2_Field is
     (
      --  POSIFx.IN2A
      VALUE1,
      --  POSIFx.IN2B
      VALUE2,
      --  POSIFx.IN2C
      VALUE3,
      --  POSIFx.IN2D
      VALUE4)
     with Size => 2;
   for PCONF_INSEL2_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Delay Pin selector
   type PCONF_DSEL_Field is
     (
      --  POSIFx.HSDA
      VALUE1,
      --  POSIFx.HSDB
      VALUE2)
     with Size => 1;
   for PCONF_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Edge selector for the sampling trigger
   type PCONF_SPES_Field is
     (
      --  Rising edge
      VALUE1,
      --  Falling edge
      VALUE2)
     with Size => 1;
   for PCONF_SPES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Pattern update signal select
   type PCONF_MSETS_Field is
     (
      --  POSIFx.MSETA
      VALUE1,
      --  POSIFx.MSETB
      VALUE2,
      --  POSIFx.MSETC
      VALUE3,
      --  POSIFx.MSETD
      VALUE4,
      --  POSIFx.MSETE
      VALUE5,
      --  POSIFx.MSETF
      VALUE6,
      --  POSIFx.MSETG
      VALUE7,
      --  POSIFx.MSETH
      VALUE8)
     with Size => 3;
   for PCONF_MSETS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Multi-Channel pattern update trigger edge
   type PCONF_MSES_Field is
     (
      --  The signal used to enable a pattern update is active on the rising
      --  edge
      VALUE1,
      --  The signal used to enable a pattern update is active on the falling
      --  edge
      VALUE2)
     with Size => 1;
   for PCONF_MSES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PWM synchronization signal selector
   type PCONF_MSYNS_Field is
     (
      --  POSIFx.MSYNCA
      VALUE1,
      --  POSIFx.MSYNCB
      VALUE2,
      --  POSIFx.MSYNCC
      VALUE3,
      --  POSIFx.MSYNCD
      VALUE4)
     with Size => 2;
   for PCONF_MSYNS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Wrong Hall Event selection
   type PCONF_EWIS_Field is
     (
      --  POSIFx.EWHEA
      VALUE1,
      --  POSIFx.EWHEB
      VALUE2,
      --  POSIFx.EWHEC
      VALUE3,
      --  POSIFx.EWHED
      VALUE4)
     with Size => 2;
   for PCONF_EWIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Wrong Hall Event enable
   type PCONF_EWIE_Field is
     (
      --  External wrong hall event emulation signal, POSIFx.EWHE[D...A], is
      --  disabled
      VALUE1,
      --  External wrong hall event emulation signal, POSIFx.EWHE[D...A], is
      --  enabled.
      VALUE2)
     with Size => 1;
   for PCONF_EWIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Wrong Hall Event active level
   type PCONF_EWIL_Field is
     (
      --  POSIFx.EWHE[D...A] signal is active HIGH
      VALUE1,
      --  POSIFx.EWHE[D...A] signal is active LOW
      VALUE2)
     with Size => 1;
   for PCONF_EWIL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Low Pass Filters Configuration
   type PCONF_LPC_Field is
     (
      --  Low pass filter disabled
      VALUE1,
      --  Low pass of 1 clock cycle
      VALUE2,
      --  Low pass of 2 clock cycles
      VALUE3,
      --  Low pass of 4 clock cycles
      VALUE4,
      --  Low pass of 8 clock cycles
      VALUE5,
      --  Low pass of 16 clock cycles
      VALUE6,
      --  Low pass of 32 clock cycles
      VALUE7,
      --  Low pass of 64 clock cycles
      VALUE8)
     with Size => 3;
   for PCONF_LPC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  CORDIC Coprocessor configuration
   type PCONF_Register is record
      --  Function Selector
      FSEL           : PCONF_FSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Position Decoder Mode selection
      QDCM           : PCONF_QDCM_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Idle generation enable
      HIDG           : Boolean := False;
      --  Multi-Channel Pattern SW update enable
      MCUE           : PCONF_MCUE_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PhaseA/Hal input 1 selector
      INSEL0         : PCONF_INSEL0_Field := NRF_SVD.POSIF.VALUE1;
      --  PhaseB/Hall input 2 selector
      INSEL1         : PCONF_INSEL1_Field := NRF_SVD.POSIF.VALUE1;
      --  Index/Hall input 3 selector
      INSEL2         : PCONF_INSEL2_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Delay Pin selector
      DSEL           : PCONF_DSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Edge selector for the sampling trigger
      SPES           : PCONF_SPES_Field := NRF_SVD.POSIF.VALUE1;
      --  Pattern update signal select
      MSETS          : PCONF_MSETS_Field := NRF_SVD.POSIF.VALUE1;
      --  Multi-Channel pattern update trigger edge
      MSES           : PCONF_MSES_Field := NRF_SVD.POSIF.VALUE1;
      --  PWM synchronization signal selector
      MSYNS          : PCONF_MSYNS_Field := NRF_SVD.POSIF.VALUE1;
      --  Wrong Hall Event selection
      EWIS           : PCONF_EWIS_Field := NRF_SVD.POSIF.VALUE1;
      --  External Wrong Hall Event enable
      EWIE           : PCONF_EWIE_Field := NRF_SVD.POSIF.VALUE1;
      --  External Wrong Hall Event active level
      EWIL           : PCONF_EWIL_Field := NRF_SVD.POSIF.VALUE1;
      --  Low Pass Filters Configuration
      LPC            : PCONF_LPC_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCONF_Register use record
      FSEL           at 0 range 0 .. 1;
      QDCM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      HIDG           at 0 range 4 .. 4;
      MCUE           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      INSEL0         at 0 range 8 .. 9;
      INSEL1         at 0 range 10 .. 11;
      INSEL2         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DSEL           at 0 range 16 .. 16;
      SPES           at 0 range 17 .. 17;
      MSETS          at 0 range 18 .. 20;
      MSES           at 0 range 21 .. 21;
      MSYNS          at 0 range 22 .. 23;
      EWIS           at 0 range 24 .. 25;
      EWIE           at 0 range 26 .. 26;
      EWIL           at 0 range 27 .. 27;
      LPC            at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Quadrature Mode Suspend Config
   type PSUS_QSUS_Field is
     (
      --  Suspend request ignored
      VALUE1,
      --  Stop immediately
      VALUE2,
      --  Suspend in the next index occurrence
      VALUE3,
      --  Suspend in the next phase (PhaseA or PhaseB) occurrence
      VALUE4)
     with Size => 2;
   for PSUS_QSUS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Multi-Channel Mode Suspend Config
   type PSUS_MSUS_Field is
     (
      --  Suspend request ignored
      VALUE1,
      --  Stop immediately. Multi-Channel pattern is not set to the reset
      --  value.
      VALUE2,
      --  Stop immediately. Multi-Channel pattern is set to the reset value.
      VALUE3,
      --  Suspend with the synchronization of the PWM signal. Multi-Channel
      --  pattern is set to the reset value at the same time of the
      --  synchronization.
      VALUE4)
     with Size => 2;
   for PSUS_MSUS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  CORDIC Coprocessor Suspend Config
   type PSUS_Register is record
      --  Quadrature Mode Suspend Config
      QSUS          : PSUS_QSUS_Field := NRF_SVD.POSIF.VALUE1;
      --  Multi-Channel Mode Suspend Config
      MSUS          : PSUS_MSUS_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSUS_Register use record
      QSUS          at 0 range 0 .. 1;
      MSUS          at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  CORDIC Coprocessor Run Bit Set
   type PRUNS_Register is record
      --  Write-only. Set Run bit
      SRB           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRUNS_Register use record
      SRB           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CORDIC Coprocessor Run Bit Clear
   type PRUNC_Register is record
      --  Write-only. Clear Run bit
      CRB           : Boolean := False;
      --  Write-only. Clear Current internal status
      CSM           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRUNC_Register use record
      CRB           at 0 range 0 .. 0;
      CSM           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Run Bit
   type PRUN_RB_Field is
     (
      --  IDLE
      VALUE1,
      --  Running
      VALUE2)
     with Size => 1;
   for PRUN_RB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Coprocessor Run Bit Status
   type PRUN_Register is record
      --  Read-only. Run Bit
      RB            : PRUN_RB_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRUN_Register use record
      RB            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MIDR_MODR_Field is HAL.UInt8;
   subtype MIDR_MODT_Field is HAL.UInt8;
   subtype MIDR_MODN_Field is HAL.UInt16;

   --  Module Identification register
   type MIDR_Register is record
      --  Read-only. Module Revision
      MODR : MIDR_MODR_Field;
      --  Read-only. Module Type
      MODT : MIDR_MODT_Field;
      --  Read-only. Module Number
      MODN : MIDR_MODN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIDR_Register use record
      MODR at 0 range 0 .. 7;
      MODT at 0 range 8 .. 15;
      MODN at 0 range 16 .. 31;
   end record;

   subtype HALP_HCP_Field is HAL.UInt3;
   subtype HALP_HEP_Field is HAL.UInt3;

   --  Hall Sensor Patterns
   type HALP_Register is record
      --  Read-only. Hall Current Pattern
      HCP           : HALP_HCP_Field;
      --  Read-only. Hall Expected Pattern
      HEP           : HALP_HEP_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HALP_Register use record
      HCP           at 0 range 0 .. 2;
      HEP           at 0 range 3 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype HALPS_HCPS_Field is HAL.UInt3;
   subtype HALPS_HEPS_Field is HAL.UInt3;

   --  Hall Sensor Shadow Patterns
   type HALPS_Register is record
      --  Shadow Hall Current Pattern
      HCPS          : HALPS_HCPS_Field := 16#0#;
      --  Shadow Hall expected Pattern
      HEPS          : HALPS_HEPS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HALPS_Register use record
      HCPS          at 0 range 0 .. 2;
      HEPS          at 0 range 3 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MCM_MCMP_Field is HAL.UInt16;

   --  Multi-Channel Pattern
   type MCM_Register is record
      --  Read-only. Multi-Channel Pattern
      MCMP           : MCM_MCMP_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_Register use record
      MCMP           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCSM_MCMPS_Field is HAL.UInt16;

   --  Multi-Channel Shadow Pattern
   type MCSM_Register is record
      --  Shadow Multi-Channel Pattern
      MCMPS          : MCSM_MCMPS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCSM_Register use record
      MCMPS          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Multi-Channel Pattern Control set
   type MCMS_Register is record
      --  Write-only. Multi-Channel Pattern Update Enable Set
      MNPS          : Boolean := False;
      --  Write-only. Hall Pattern Shadow Transfer Request
      STHR          : Boolean := False;
      --  Write-only. Multi-Channel Shadow Transfer Request
      STMR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMS_Register use record
      MNPS          at 0 range 0 .. 0;
      STHR          at 0 range 1 .. 1;
      STMR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Multi-Channel Pattern Control clear
   type MCMC_Register is record
      --  Write-only. Multi-Channel Pattern Update Enable Clear
      MNPC          : Boolean := False;
      --  Write-only. Multi-Channel Pattern clear
      MPC           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMC_Register use record
      MNPC          at 0 range 0 .. 0;
      MPC           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Multi-Channel Pattern update status
   type MCMF_MSS_Field is
     (
      --  Update of the Multi-Channel pattern is set
      VALUE1,
      --  Update of the Multi-Channel pattern is not set
      VALUE2)
     with Size => 1;
   for MCMF_MSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi-Channel Pattern Control flag
   type MCMF_Register is record
      --  Read-only. Multi-Channel Pattern update status
      MSS           : MCMF_MSS_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMF_Register use record
      MSS           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Phase A Level selector
   type QDC_PALS_Field is
     (
      --  Phase A is active HIGH
      VALUE1,
      --  Phase A is active LOW
      VALUE2)
     with Size => 1;
   for QDC_PALS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Phase B Level selector
   type QDC_PBLS_Field is
     (
      --  Phase B is active HIGH
      VALUE1,
      --  Phase B is active LOW
      VALUE2)
     with Size => 1;
   for QDC_PBLS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Phase signals swap
   type QDC_PHS_Field is
     (
      --  Phase A is the leading signal for clockwise rotation
      VALUE1,
      --  Phase B is the leading signal for clockwise rotation
      VALUE2)
     with Size => 1;
   for QDC_PHS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Index Marker generations control
   type QDC_ICM_Field is
     (
      --  No index marker generation on POSIFx.OUT3
      VALUE1,
      --  Only first index occurrence generated on POSIFx.OUT3
      VALUE2,
      --  All index occurrences generated on POSIFx.OUT3
      VALUE3)
     with Size => 2;
   for QDC_ICM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Current rotation direction
   type QDC_DVAL_Field is
     (
      --  Counterclockwise rotation
      VALUE1,
      --  Clockwise rotation
      VALUE2)
     with Size => 1;
   for QDC_DVAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Decoder Control
   type QDC_Register is record
      --  Phase A Level selector
      PALS          : QDC_PALS_Field := NRF_SVD.POSIF.VALUE1;
      --  Phase B Level selector
      PBLS          : QDC_PBLS_Field := NRF_SVD.POSIF.VALUE1;
      --  Phase signals swap
      PHS           : QDC_PHS_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Index Marker generations control
      ICM           : QDC_ICM_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Read-only. Current rotation direction
      DVAL          : QDC_DVAL_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QDC_Register use record
      PALS          at 0 range 0 .. 0;
      PBLS          at 0 range 1 .. 1;
      PHS           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      ICM           at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      DVAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Correct Hall Event Status
   type PFLG_CHES_Field is
     (
      --  Correct Hall Event not detected
      VALUE1,
      --  Correct Hall Event detected
      VALUE2)
     with Size => 1;
   for PFLG_CHES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Wrong Hall Event Status
   type PFLG_WHES_Field is
     (
      --  Wrong Hall Event not detected
      VALUE1,
      --  Wrong Hall Event detected
      VALUE2)
     with Size => 1;
   for PFLG_WHES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Hall Inputs Update Status
   type PFLG_HIES_Field is
     (
      --  Transition on the Hall Inputs not detected
      VALUE1,
      --  Transition on the Hall Inputs detected
      VALUE2)
     with Size => 1;
   for PFLG_HIES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi-Channel pattern shadow transfer status
   type PFLG_MSTS_Field is
     (
      --  Shadow transfer not done
      VALUE1,
      --  Shadow transfer done
      VALUE2)
     with Size => 1;
   for PFLG_MSTS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Index Status
   type PFLG_INDXS_Field is
     (
      --  Index event not detected
      VALUE1,
      --  Index event detected
      VALUE2)
     with Size => 1;
   for PFLG_INDXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Phase Error Status
   type PFLG_ERRS_Field is
     (
      --  Phase Error event not detected
      VALUE1,
      --  Phase Error event detected
      VALUE2)
     with Size => 1;
   for PFLG_ERRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature CLK Status
   type PFLG_CNTS_Field is
     (
      --  Quadrature clock not generated
      VALUE1,
      --  Quadrature clock generated
      VALUE2)
     with Size => 1;
   for PFLG_CNTS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Direction Change
   type PFLG_DIRS_Field is
     (
      --  Change on direction not detected
      VALUE1,
      --  Change on direction detected
      VALUE2)
     with Size => 1;
   for PFLG_DIRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Period Clk Status
   type PFLG_PCLKS_Field is
     (
      --  Period clock not generated
      VALUE1,
      --  Period clock generated
      VALUE2)
     with Size => 1;
   for PFLG_PCLKS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Coprocessor Interrupt Flags
   type PFLG_Register is record
      --  Read-only. Correct Hall Event Status
      CHES           : PFLG_CHES_Field;
      --  Read-only. Wrong Hall Event Status
      WHES           : PFLG_WHES_Field;
      --  Read-only. Hall Inputs Update Status
      HIES           : PFLG_HIES_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Multi-Channel pattern shadow transfer status
      MSTS           : PFLG_MSTS_Field;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Quadrature Index Status
      INDXS          : PFLG_INDXS_Field;
      --  Read-only. Quadrature Phase Error Status
      ERRS           : PFLG_ERRS_Field;
      --  Read-only. Quadrature CLK Status
      CNTS           : PFLG_CNTS_Field;
      --  Read-only. Quadrature Direction Change
      DIRS           : PFLG_DIRS_Field;
      --  Read-only. Quadrature Period Clk Status
      PCLKS          : PFLG_PCLKS_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PFLG_Register use record
      CHES           at 0 range 0 .. 0;
      WHES           at 0 range 1 .. 1;
      HIES           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MSTS           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      INDXS          at 0 range 8 .. 8;
      ERRS           at 0 range 9 .. 9;
      CNTS           at 0 range 10 .. 10;
      DIRS           at 0 range 11 .. 11;
      PCLKS          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Correct Hall Event Enable
   type PFLGE_ECHE_Field is
     (
      --  Correct Hall Event interrupt disabled
      VALUE1,
      --  Correct Hall Event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_ECHE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Wrong Hall Event Enable
   type PFLGE_EWHE_Field is
     (
      --  Wrong Hall Event interrupt disabled
      VALUE1,
      --  Wrong Hall Event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EWHE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Hall Input Update Enable
   type PFLGE_EHIE_Field is
     (
      --  Update of the Hall Inputs interrupt is disabled
      VALUE1,
      --  Update of the Hall Inputs interrupt is enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EHIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi-Channel pattern shadow transfer enable
   type PFLGE_EMST_Field is
     (
      --  Shadow transfer event interrupt disabled
      VALUE1,
      --  Shadow transfer event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EMST_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Index Event Enable
   type PFLGE_EINDX_Field is
     (
      --  Index event interrupt disabled
      VALUE1,
      --  Index event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EINDX_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Phase Error Enable
   type PFLGE_EERR_Field is
     (
      --  Phase error event interrupt disabled
      VALUE1,
      --  Phase error event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature CLK interrupt Enable
   type PFLGE_ECNT_Field is
     (
      --  Quadrature CLK event interrupt disabled
      VALUE1,
      --  Quadrature CLK event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_ECNT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature direction change interrupt Enable
   type PFLGE_EDIR_Field is
     (
      --  Direction change event interrupt disabled
      VALUE1,
      --  Direction change event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EDIR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Period CLK interrupt Enable
   type PFLGE_EPCLK_Field is
     (
      --  Quadrature Period CLK event interrupt disabled
      VALUE1,
      --  Quadrature Period CLK event interrupt enabled
      VALUE2)
     with Size => 1;
   for PFLGE_EPCLK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Correct Hall Event Service Request Selector
   type PFLGE_CHESEL_Field is
     (
      --  Correct Hall Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Correct Hall Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_CHESEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Wrong Hall Event Service Request Selector
   type PFLGE_WHESEL_Field is
     (
      --  Wrong Hall Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Wrong Hall Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_WHESEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Hall Inputs Update Event Service Request Selector
   type PFLGE_HIESEL_Field is
     (
      --  Hall Inputs Update Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Hall Inputs Update Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_HIESEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi-Channel pattern Update Event Service Request Selector
   type PFLGE_MSTSEL_Field is
     (
      --  Multi-Channel pattern Update Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Multi-Channel pattern Update Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_MSTSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Index Event Service Request Selector
   type PFLGE_INDSEL_Field is
     (
      --  Quadrature Index Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Quadrature Index Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_INDSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Phase Error Event Service Request Selector
   type PFLGE_ERRSEL_Field is
     (
      --  Quadrature Phase error Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Quadrature Phase error Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_ERRSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Clock Event Service Request Selector
   type PFLGE_CNTSEL_Field is
     (
      --  Quadrature Clock Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Quadrature Clock Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_CNTSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Direction Update Event Service Request Selector
   type PFLGE_DIRSEL_Field is
     (
      --  Quadrature Direction Update Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Quadrature Direction Update Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_DIRSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Quadrature Period clock Event Service Request Selector
   type PFLGE_PCLSEL_Field is
     (
      --  Quadrature Period clock Event interrupt forward to POSIFx.SR0
      VALUE1,
      --  Quadrature Period clock Event interrupt forward to POSIFx.SR1
      VALUE2)
     with Size => 1;
   for PFLGE_PCLSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Coprocessor Interrupt Enable
   type PFLGE_Register is record
      --  Correct Hall Event Enable
      ECHE           : PFLGE_ECHE_Field := NRF_SVD.POSIF.VALUE1;
      --  Wrong Hall Event Enable
      EWHE           : PFLGE_EWHE_Field := NRF_SVD.POSIF.VALUE1;
      --  Hall Input Update Enable
      EHIE           : PFLGE_EHIE_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Multi-Channel pattern shadow transfer enable
      EMST           : PFLGE_EMST_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Quadrature Index Event Enable
      EINDX          : PFLGE_EINDX_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature Phase Error Enable
      EERR           : PFLGE_EERR_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature CLK interrupt Enable
      ECNT           : PFLGE_ECNT_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature direction change interrupt Enable
      EDIR           : PFLGE_EDIR_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature Period CLK interrupt Enable
      EPCLK          : PFLGE_EPCLK_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Correct Hall Event Service Request Selector
      CHESEL         : PFLGE_CHESEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Wrong Hall Event Service Request Selector
      WHESEL         : PFLGE_WHESEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Hall Inputs Update Event Service Request Selector
      HIESEL         : PFLGE_HIESEL_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Multi-Channel pattern Update Event Service Request Selector
      MSTSEL         : PFLGE_MSTSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Quadrature Index Event Service Request Selector
      INDSEL         : PFLGE_INDSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature Phase Error Event Service Request Selector
      ERRSEL         : PFLGE_ERRSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature Clock Event Service Request Selector
      CNTSEL         : PFLGE_CNTSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature Direction Update Event Service Request Selector
      DIRSEL         : PFLGE_DIRSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  Quadrature Period clock Event Service Request Selector
      PCLSEL         : PFLGE_PCLSEL_Field := NRF_SVD.POSIF.VALUE1;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PFLGE_Register use record
      ECHE           at 0 range 0 .. 0;
      EWHE           at 0 range 1 .. 1;
      EHIE           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EMST           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      EINDX          at 0 range 8 .. 8;
      EERR           at 0 range 9 .. 9;
      ECNT           at 0 range 10 .. 10;
      EDIR           at 0 range 11 .. 11;
      EPCLK          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CHESEL         at 0 range 16 .. 16;
      WHESEL         at 0 range 17 .. 17;
      HIESEL         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MSTSEL         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      INDSEL         at 0 range 24 .. 24;
      ERRSEL         at 0 range 25 .. 25;
      CNTSEL         at 0 range 26 .. 26;
      DIRSEL         at 0 range 27 .. 27;
      PCLSEL         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CORDIC Coprocessor Interrupt Set
   type SPFLG_Register is record
      --  Write-only. Correct Hall Event flag set
      SCHE           : Boolean := False;
      --  Write-only. Wrong Hall Event flag set
      SWHE           : Boolean := False;
      --  Write-only. Hall Inputs Update Event flag set
      SHIE           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Multi-Channel Pattern shadow transfer flag set
      SMST           : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Write-only. Quadrature Index flag set
      SINDX          : Boolean := False;
      --  Write-only. Quadrature Phase Error flag set
      SERR           : Boolean := False;
      --  Write-only. Quadrature CLK flag set
      SCNT           : Boolean := False;
      --  Write-only. Quadrature Direction flag set
      SDIR           : Boolean := False;
      --  Write-only. Quadrature period clock flag set
      SPCLK          : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPFLG_Register use record
      SCHE           at 0 range 0 .. 0;
      SWHE           at 0 range 1 .. 1;
      SHIE           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SMST           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SINDX          at 0 range 8 .. 8;
      SERR           at 0 range 9 .. 9;
      SCNT           at 0 range 10 .. 10;
      SDIR           at 0 range 11 .. 11;
      SPCLK          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CORDIC Coprocessor Interrupt Clear
   type RPFLG_Register is record
      --  Write-only. Correct Hall Event flag clear
      RCHE           : Boolean := False;
      --  Write-only. Wrong Hall Event flag clear
      RWHE           : Boolean := False;
      --  Write-only. Hall Inputs Update Event flag clear
      RHIE           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Multi-Channel Pattern shadow transfer flag clear
      RMST           : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Write-only. Quadrature Index flag clear
      RINDX          : Boolean := False;
      --  Write-only. Quadrature Phase Error flag clear
      RERR           : Boolean := False;
      --  Write-only. Quadrature CLK flag clear
      RCNT           : Boolean := False;
      --  Write-only. Quadrature Direction flag clear
      RDIR           : Boolean := False;
      --  Write-only. Quadrature period clock flag clear
      RPCLK          : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RPFLG_Register use record
      RCHE           at 0 range 0 .. 0;
      RWHE           at 0 range 1 .. 1;
      RHIE           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RMST           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RINDX          at 0 range 8 .. 8;
      RERR           at 0 range 9 .. 9;
      RCNT           at 0 range 10 .. 10;
      RDIR           at 0 range 11 .. 11;
      RPCLK          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype PDBG_QCSV_Field is HAL.UInt2;
   subtype PDBG_QPSV_Field is HAL.UInt2;
   subtype PDBG_HSP_Field is HAL.UInt3;
   subtype PDBG_LPP0_Field is HAL.UInt6;
   --  PDBG_LPP array element
   subtype PDBG_LPP_Element is HAL.UInt6;

   --  PDBG_LPP array
   type PDBG_LPP_Field_Array is array (1 .. 2) of PDBG_LPP_Element
     with Component_Size => 6, Size => 12;

   --  Type definition for PDBG_LPP
   type PDBG_LPP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPP as a value
            Val : HAL.UInt12;
         when True =>
            --  LPP as an array
            Arr : PDBG_LPP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for PDBG_LPP_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  CORDIC Coprocessor Debug register
   type PDBG_Register is record
      --  Read-only. Quadrature Decoder Current state
      QCSV           : PDBG_QCSV_Field;
      --  Read-only. Quadrature Decoder Previous state
      QPSV           : PDBG_QPSV_Field;
      --  Read-only. Current Index Value
      IVAL           : Boolean;
      --  Read-only. Hall Current Sampled Pattern
      HSP            : PDBG_HSP_Field;
      --  Read-only. Actual count of the Low Pass Filter for POSI0
      LPP0           : PDBG_LPP0_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Actual count of the Low Pass Filter for POSI1
      LPP            : PDBG_LPP_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDBG_Register use record
      QCSV           at 0 range 0 .. 1;
      QPSV           at 0 range 2 .. 3;
      IVAL           at 0 range 4 .. 4;
      HSP            at 0 range 5 .. 7;
      LPP0           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LPP            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Position Interface 0
   type POSIF_Peripheral is record
      --  CORDIC Coprocessor configuration
      PCONF : aliased PCONF_Register;
      --  CORDIC Coprocessor Suspend Config
      PSUS  : aliased PSUS_Register;
      --  CORDIC Coprocessor Run Bit Set
      PRUNS : aliased PRUNS_Register;
      --  CORDIC Coprocessor Run Bit Clear
      PRUNC : aliased PRUNC_Register;
      --  CORDIC Coprocessor Run Bit Status
      PRUN  : aliased PRUN_Register;
      --  Module Identification register
      MIDR  : aliased MIDR_Register;
      --  Hall Sensor Patterns
      HALP  : aliased HALP_Register;
      --  Hall Sensor Shadow Patterns
      HALPS : aliased HALPS_Register;
      --  Multi-Channel Pattern
      MCM   : aliased MCM_Register;
      --  Multi-Channel Shadow Pattern
      MCSM  : aliased MCSM_Register;
      --  Multi-Channel Pattern Control set
      MCMS  : aliased MCMS_Register;
      --  Multi-Channel Pattern Control clear
      MCMC  : aliased MCMC_Register;
      --  Multi-Channel Pattern Control flag
      MCMF  : aliased MCMF_Register;
      --  Quadrature Decoder Control
      QDC   : aliased QDC_Register;
      --  CORDIC Coprocessor Interrupt Flags
      PFLG  : aliased PFLG_Register;
      --  CORDIC Coprocessor Interrupt Enable
      PFLGE : aliased PFLGE_Register;
      --  CORDIC Coprocessor Interrupt Set
      SPFLG : aliased SPFLG_Register;
      --  CORDIC Coprocessor Interrupt Clear
      RPFLG : aliased RPFLG_Register;
      --  CORDIC Coprocessor Debug register
      PDBG  : aliased PDBG_Register;
   end record
     with Volatile;

   for POSIF_Peripheral use record
      PCONF at 16#0# range 0 .. 31;
      PSUS  at 16#4# range 0 .. 31;
      PRUNS at 16#8# range 0 .. 31;
      PRUNC at 16#C# range 0 .. 31;
      PRUN  at 16#10# range 0 .. 31;
      MIDR  at 16#20# range 0 .. 31;
      HALP  at 16#30# range 0 .. 31;
      HALPS at 16#34# range 0 .. 31;
      MCM   at 16#40# range 0 .. 31;
      MCSM  at 16#44# range 0 .. 31;
      MCMS  at 16#48# range 0 .. 31;
      MCMC  at 16#4C# range 0 .. 31;
      MCMF  at 16#50# range 0 .. 31;
      QDC   at 16#60# range 0 .. 31;
      PFLG  at 16#70# range 0 .. 31;
      PFLGE at 16#74# range 0 .. 31;
      SPFLG at 16#78# range 0 .. 31;
      RPFLG at 16#7C# range 0 .. 31;
      PDBG  at 16#100# range 0 .. 31;
   end record;

   --  Position Interface 0
   POSIF0_Periph : aliased POSIF_Peripheral
     with Import, Address => POSIF0_Base;

end NRF_SVD.POSIF;
