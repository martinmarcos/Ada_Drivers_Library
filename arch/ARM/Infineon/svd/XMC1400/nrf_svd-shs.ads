--  This spec has been automatically generated from XMC1400.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Sample and Hold ADC Sequencer
package NRF_SVD.SHS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  Module Identification Register
   type ID_Register is record
      --  Read-only. Module Revision
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   --  Divider Factor for the SHS Clock
   type SHSCFG_DIVS_Field is
     (
      --  fSH = fCONV / 1
      VALUE1,
      --  fSH = fCONV / 2
      VALUE2,
      --  fSH = fCONV / 8
      VALUE3)
     with Size => 4;
   for SHSCFG_DIVS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 7);

   --  Analog Calbration Reference Voltage Selection
   type SHSCFG_AREF_Field is
     (
      --  External reference, upper supply range
      VALUE1,
      --  Internal reference, upper supply range
      VALUE3,
      --  Internal reference, lower supply range
      VALUE4)
     with Size => 2;
   for SHSCFG_AREF_Field use
     (VALUE1 => 0,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Analog Converter Power Down Force
   type SHSCFG_ANOFF_Field is
     (
      --  Converter controlled by bitfields ANONS (digital control block)
      VALUE1,
      --  Converter is permanently off
      VALUE2)
     with Size => 1;
   for SHSCFG_ANOFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Analog Converter Ready
   type SHSCFG_ANRDY_Field is
     (
      --  Converter is in power-down mode
      VALUE1,
      --  Converter is operable
      VALUE2)
     with Size => 1;
   for SHSCFG_ANRDY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Write Control for SHS Configuration
   type SHSCFG_SCWC_Field is
     (
      --  No write access to SHS configuration
      VALUE1,
      --  Bitfields ANOFF, AREF, DIVS can be written
      VALUE2)
     with Size => 1;
   for SHSCFG_SCWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sample Pending on S&H Unit x
   type SHSCFG_SP0_Field is
     (
      --  No sample pending
      VALUE1,
      --  S&H unit x has finished the sample phase
      VALUE2)
     with Size => 1;
   for SHSCFG_SP0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SHSCFG_SP array
   type SHSCFG_SP_Field_Array is array (0 .. 1) of SHSCFG_SP0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SHSCFG_SP
   type SHSCFG_SP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SP as a value
            Val : HAL.UInt2;
         when True =>
            --  SP as an array
            Arr : SHSCFG_SP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SHSCFG_SP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Test Control
   type SHSCFG_TC_Field is
     (
      --  Reset value for the field
      Shscfg_Tc_Field_Reset,
      --  Internal test functions enabled
      VALUE1)
     with Size => 4;
   for SHSCFG_TC_Field use
     (Shscfg_Tc_Field_Reset => 0,
      VALUE1 => 11);

   --  Current State of Sequencer
   type SHSCFG_STATE_Field is
     (
      --  Idle
      VALUE1,
      --  Offset calibration active
      VALUE2,
      --  Gain calibration active
      VALUE3,
      --  Startup calibration active
      VALUE4,
      --  Stepper process active for S&H unit 0
      VALUE5,
      --  Stepper process active for S&H unit 1
      VALUE6)
     with Size => 4;
   for SHSCFG_STATE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 8,
      VALUE6 => 9);

   --  SHS Configuration Register
   type SHSCFG_Register is record
      --  Divider Factor for the SHS Clock
      DIVS           : SHSCFG_DIVS_Field := NRF_SVD.SHS.VALUE1;
      --  unspecified
      Reserved_4_9   : HAL.UInt6 := 16#0#;
      --  Analog Calbration Reference Voltage Selection
      AREF           : SHSCFG_AREF_Field := NRF_SVD.SHS.VALUE1;
      --  Analog Converter Power Down Force
      ANOFF          : SHSCFG_ANOFF_Field := NRF_SVD.SHS.VALUE1;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Read-only. Analog Converter Ready
      ANRDY          : SHSCFG_ANRDY_Field := NRF_SVD.SHS.VALUE1;
      --  Write-only. Write Control for SHS Configuration
      SCWC           : SHSCFG_SCWC_Field := NRF_SVD.SHS.VALUE1;
      --  Read-only. Sample Pending on S&H Unit x
      SP             : SHSCFG_SP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Test Control
      TC             : SHSCFG_TC_Field := Shscfg_Tc_Field_Reset;
      --  Read-only. Current State of Sequencer
      STATE          : SHSCFG_STATE_Field := NRF_SVD.SHS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHSCFG_Register use record
      DIVS           at 0 range 0 .. 3;
      Reserved_4_9   at 0 range 4 .. 9;
      AREF           at 0 range 10 .. 11;
      ANOFF          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      ANRDY          at 0 range 14 .. 14;
      SCWC           at 0 range 15 .. 15;
      SP             at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      TC             at 0 range 24 .. 27;
      STATE          at 0 range 28 .. 31;
   end record;

   subtype STEPCFG_KSEL0_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN0_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL1_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN1_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL2_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN2_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL3_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN3_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN3_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL4_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN4_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN4_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL5_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN5_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN5_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL6_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN6_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN6_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype STEPCFG_KSEL7_Field is HAL.UInt3;

   --  Step x Enable
   type STEPCFG_SEN7_Field is
     (
      --  Off: This step is not part of the stepper sequence
      VALUE1,
      --  Active: This step is executed during the sequence
      VALUE2)
     with Size => 1;
   for STEPCFG_SEN7_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Stepper Configuration Register
   type STEPCFG_Register is record
      --  Kernel Select
      KSEL0 : STEPCFG_KSEL0_Field := 16#0#;
      --  Step x Enable
      SEN0  : STEPCFG_SEN0_Field := NRF_SVD.SHS.VALUE2;
      --  Kernel Select
      KSEL1 : STEPCFG_KSEL1_Field := 16#1#;
      --  Step x Enable
      SEN1  : STEPCFG_SEN1_Field := NRF_SVD.SHS.VALUE2;
      --  Kernel Select
      KSEL2 : STEPCFG_KSEL2_Field := 16#0#;
      --  Step x Enable
      SEN2  : STEPCFG_SEN2_Field := NRF_SVD.SHS.VALUE1;
      --  Kernel Select
      KSEL3 : STEPCFG_KSEL3_Field := 16#0#;
      --  Step x Enable
      SEN3  : STEPCFG_SEN3_Field := NRF_SVD.SHS.VALUE1;
      --  Kernel Select
      KSEL4 : STEPCFG_KSEL4_Field := 16#0#;
      --  Step x Enable
      SEN4  : STEPCFG_SEN4_Field := NRF_SVD.SHS.VALUE1;
      --  Kernel Select
      KSEL5 : STEPCFG_KSEL5_Field := 16#0#;
      --  Step x Enable
      SEN5  : STEPCFG_SEN5_Field := NRF_SVD.SHS.VALUE1;
      --  Kernel Select
      KSEL6 : STEPCFG_KSEL6_Field := 16#0#;
      --  Step x Enable
      SEN6  : STEPCFG_SEN6_Field := NRF_SVD.SHS.VALUE1;
      --  Kernel Select
      KSEL7 : STEPCFG_KSEL7_Field := 16#0#;
      --  Step x Enable
      SEN7  : STEPCFG_SEN7_Field := NRF_SVD.SHS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STEPCFG_Register use record
      KSEL0 at 0 range 0 .. 2;
      SEN0  at 0 range 3 .. 3;
      KSEL1 at 0 range 4 .. 6;
      SEN1  at 0 range 7 .. 7;
      KSEL2 at 0 range 8 .. 10;
      SEN2  at 0 range 11 .. 11;
      KSEL3 at 0 range 12 .. 14;
      SEN3  at 0 range 15 .. 15;
      KSEL4 at 0 range 16 .. 18;
      SEN4  at 0 range 19 .. 19;
      KSEL5 at 0 range 20 .. 22;
      SEN5  at 0 range 23 .. 23;
      KSEL6 at 0 range 24 .. 26;
      SEN6  at 0 range 27 .. 27;
      KSEL7 at 0 range 28 .. 30;
      SEN7  at 0 range 31 .. 31;
   end record;

   subtype LOOP_LPCH0_Field is HAL.UInt5;

   --  Loop y Enable
   type LOOP_LPEN0_Field is
     (
      --  Off: standard operation
      VALUE1,
      --  ON: sigma-delta-loop is active
      VALUE2)
     with Size => 1;
   for LOOP_LPEN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype LOOP_LPCH1_Field is HAL.UInt5;

   --  Loop y Enable
   type LOOP_LPEN1_Field is
     (
      --  Off: standard operation
      VALUE1,
      --  ON: sigma-delta-loop is active
      VALUE2)
     with Size => 1;
   for LOOP_LPEN1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Loop Control Register
   type LOOP_Register is record
      --  Loop y Channel
      LPCH0          : LOOP_LPCH0_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Loop y Sample&Hold Unit
      LPSH0          : Boolean := False;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  Loop y Enable
      LPEN0          : LOOP_LPEN0_Field := NRF_SVD.SHS.VALUE1;
      --  Loop y Channel
      LPCH1          : LOOP_LPCH1_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Loop y Sample&Hold Unit
      LPSH1          : Boolean := False;
      --  unspecified
      Reserved_25_30 : HAL.UInt6 := 16#0#;
      --  Loop y Enable
      LPEN1          : LOOP_LPEN1_Field := NRF_SVD.SHS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOOP_Register use record
      LPCH0          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      LPSH0          at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      LPEN0          at 0 range 15 .. 15;
      LPCH1          at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      LPSH1          at 0 range 24 .. 24;
      Reserved_25_30 at 0 range 25 .. 30;
      LPEN1          at 0 range 31 .. 31;
   end record;

   --  Accelerated Timing
   type TIMCFG0_AT_Field is
     (
      --  Compatible timing: Result available after standard conversion time
      VALUE1,
      --  Accelerated timing: Result available as soon as converted
      VALUE2)
     with Size => 1;
   for TIMCFG0_AT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Fast Compare Mode Response Time
   type TIMCFG0_FCRT_Field is
     (
      --  Result after tADCI x 2
      VALUE1,
      --  Result after tADCI x 32
      VALUE2)
     with Size => 4;
   for TIMCFG0_FCRT_Field use
     (VALUE1 => 0,
      VALUE2 => 15);

   --  Short Sample Time
   type TIMCFG0_SST_Field is
     (
      --  Compatible timing: Sample time is defined by DIVA and STC.
      VALUE1,
      --  Sample time is tADC x 1
      VALUE2,
      --  Sample time is tADC x 63
      VALUE3)
     with Size => 6;
   for TIMCFG0_SST_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 63);

   subtype TIMCFG_TGEN_Field is HAL.UInt14;

   --  Timing Configuration Register 0
   type TIMCFG_Register is record
      --  Accelerated Timing
      AT_k           : TIMCFG0_AT_Field := NRF_SVD.SHS.VALUE2;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Fast Compare Mode Response Time
      FCRT           : TIMCFG0_FCRT_Field := NRF_SVD.SHS.VALUE1;
      --  Short Sample Time
      SST            : TIMCFG0_SST_Field := NRF_SVD.SHS.VALUE1;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read-only. Timing Generator
      TGEN           : TIMCFG_TGEN_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCFG_Register use record
      AT_k           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      FCRT           at 0 range 4 .. 7;
      SST            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TGEN           at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Calibration Order
   type CALCTR_CALORD_Field is
     (
      --  Do conversions then calibration
      VALUE1,
      --  Do calibration then conversions
      VALUE2)
     with Size => 1;
   for CALCTR_CALORD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype CALCTR_CALGNSTC_Field is HAL.UInt6;
   subtype CALCTR_SUCALVAL_Field is HAL.UInt7;
   subtype CALCTR_CALMAX_Field is HAL.UInt6;

   --  Start-Up Calibration
   type CALCTR_SUCAL_Field is
     (
      --  No action
      VALUE1,
      --  Initiate the start-up calibration phase (indication in bitfield
      --  SHSCFG.STATE)
      VALUE2)
     with Size => 1;
   for CALCTR_SUCAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Calibration Control Register
   type CALCTR_Register is record
      --  Calibration Order
      CALORD         : CALCTR_CALORD_Field := NRF_SVD.SHS.VALUE1;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Gain Calibration Sample Time Control
      CALGNSTC       : CALCTR_CALGNSTC_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Startup Calibration Cycles
      SUCALVAL       : CALCTR_SUCALVAL_Field := 16#10#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Calibration Maximum Timing
      CALMAX         : CALCTR_CALMAX_Field := 16#3#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Write-only. Start-Up Calibration
      SUCAL          : CALCTR_SUCAL_Field := NRF_SVD.SHS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALCTR_Register use record
      CALORD         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CALGNSTC       at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SUCALVAL       at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CALMAX         at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SUCAL          at 0 range 31 .. 31;
   end record;

   subtype CALGC_CALGNVALS_Field is HAL.UInt14;

   --  Gain Calibration Write Control, Standard
   type CALGC0_GNSWC_Field is
     (
      --  No write access to gain calibration parameter
      VALUE1,
      --  CALGNVALS can be written
      VALUE2)
     with Size => 1;
   for CALGC0_GNSWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype CALGC_CALGNVALA_Field is HAL.UInt14;

   --  Gain Calibration Write Control, Alternate
   type CALGC0_GNAWC_Field is
     (
      --  No write access to gain calibration parameter
      VALUE1,
      --  CALGNVALA can be written
      VALUE2)
     with Size => 1;
   for CALGC0_GNAWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Gain Calibration Control Register 0
   type CALGC_Register is record
      --  Gain Calibration Value, Standard Reference
      CALGNVALS      : CALGC_CALGNVALS_Field := 16#2000#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Write-only. Gain Calibration Write Control, Standard
      GNSWC          : CALGC0_GNSWC_Field := NRF_SVD.SHS.VALUE1;
      --  Gain Calibration Value, Alternate Reference
      CALGNVALA      : CALGC_CALGNVALA_Field := 16#2000#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Write-only. Gain Calibration Write Control, Alternate
      GNAWC          : CALGC0_GNAWC_Field := NRF_SVD.SHS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALGC_Register use record
      CALGNVALS      at 0 range 0 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      GNSWC          at 0 range 15 .. 15;
      CALGNVALA      at 0 range 16 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      GNAWC          at 0 range 31 .. 31;
   end record;

   subtype CALOC_CALOFFVAL0_Field is HAL.UInt7;
   subtype CALOC_CALOFFVAL1_Field is HAL.UInt7;

   --  Offset Calibration Write Control
   type CALOC0_OFFWC_Field is
     (
      --  No write access to offset cal. parameters
      VALUE1,
      --  CALOFFVALz can be written
      VALUE2)
     with Size => 1;
   for CALOC0_OFFWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype CALOC_CALOFFVAL2_Field is HAL.UInt7;
   subtype CALOC_CALOFFVAL3_Field is HAL.UInt7;

   --  Disable Calibration
   type CALOC0_DISCAL_Field is
     (
      --  Calibration enabled (offset and gain)
      VALUE1,
      --  No calibration
      VALUE2)
     with Size => 1;
   for CALOC0_DISCAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Offset Calibration Control Register 0
   type CALOC_Register is record
      --  Offset Calibration Value for Gain Level z
      CALOFFVAL0     : CALOC_CALOFFVAL0_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Offset Calibration Value for Gain Level z
      CALOFFVAL1     : CALOC_CALOFFVAL1_Field := 16#0#;
      --  Write-only. Offset Calibration Write Control
      OFFWC          : CALOC0_OFFWC_Field := NRF_SVD.SHS.VALUE1;
      --  Offset Calibration Value for Gain Level z
      CALOFFVAL2     : CALOC_CALOFFVAL2_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Offset Calibration Value for Gain Level z
      CALOFFVAL3     : CALOC_CALOFFVAL3_Field := 16#0#;
      --  Disable Calibration
      DISCAL         : CALOC0_DISCAL_Field := NRF_SVD.SHS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALOC_Register use record
      CALOFFVAL0     at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CALOFFVAL1     at 0 range 8 .. 14;
      OFFWC          at 0 range 15 .. 15;
      CALOFFVAL2     at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CALOFFVAL3     at 0 range 24 .. 30;
      DISCAL         at 0 range 31 .. 31;
   end record;

   --  Gain Control 0
   type GNCTR00_GAIN0_Field is
     (
      --  Gain factor = 1
      VALUE1,
      --  Gain factor = 3
      VALUE2,
      --  Gain factor = 6
      VALUE3,
      --  Gain factor = 12
      VALUE4)
     with Size => 4;
   for GNCTR00_GAIN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  GNCTR_GAIN array
   type GNCTR_GAIN_Field_Array is array (0 .. 7) of GNCTR00_GAIN0_Field
     with Component_Size => 4, Size => 32;

   --  Gain Control Register 00
   type GNCTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GAIN as a value
            Val : HAL.UInt32;
         when True =>
            --  GAIN as an array
            Arr : GNCTR_GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GNCTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Sample and Hold ADC Sequencer
   type SHS_Peripheral is record
      --  Module Identification Register
      ID      : aliased ID_Register;
      --  SHS Configuration Register
      SHSCFG  : aliased SHSCFG_Register;
      --  Stepper Configuration Register
      STEPCFG : aliased STEPCFG_Register;
      --  Loop Control Register
      LOOP_k  : aliased LOOP_Register;
      --  Timing Configuration Register 0
      TIMCFG0 : aliased TIMCFG_Register;
      --  Timing Configuration Register 1
      TIMCFG1 : aliased TIMCFG_Register;
      --  Calibration Control Register
      CALCTR  : aliased CALCTR_Register;
      --  Gain Calibration Control Register 0
      CALGC0  : aliased CALGC_Register;
      --  Gain Calibration Control Register 1
      CALGC1  : aliased CALGC_Register;
      --  Offset Calibration Control Register 0
      CALOC0  : aliased CALOC_Register;
      --  Offset Calibration Control Register 1
      CALOC1  : aliased CALOC_Register;
      --  Gain Control Register 00
      GNCTR00 : aliased GNCTR_Register;
      --  Gain Control Register 10
      GNCTR10 : aliased GNCTR_Register;
   end record
     with Volatile;

   for SHS_Peripheral use record
      ID      at 16#8# range 0 .. 31;
      SHSCFG  at 16#40# range 0 .. 31;
      STEPCFG at 16#44# range 0 .. 31;
      LOOP_k  at 16#50# range 0 .. 31;
      TIMCFG0 at 16#80# range 0 .. 31;
      TIMCFG1 at 16#84# range 0 .. 31;
      CALCTR  at 16#BC# range 0 .. 31;
      CALGC0  at 16#C0# range 0 .. 31;
      CALGC1  at 16#C4# range 0 .. 31;
      CALOC0  at 16#E0# range 0 .. 31;
      CALOC1  at 16#E4# range 0 .. 31;
      GNCTR00 at 16#180# range 0 .. 31;
      GNCTR10 at 16#190# range 0 .. 31;
   end record;

   --  Sample and Hold ADC Sequencer
   SHS0_Periph : aliased SHS_Peripheral
     with Import, Address => SHS0_Base;

end NRF_SVD.SHS;
