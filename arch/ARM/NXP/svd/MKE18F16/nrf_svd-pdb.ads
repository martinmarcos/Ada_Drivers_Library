--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PDB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Continuous Mode Enable
   type SC_CONT_Field is
     (
      --  PDB operation in One-Shot mode
      Cont_0,
      --  PDB operation in Continuous mode
      Cont_1)
     with Size => 1;
   for SC_CONT_Field use
     (Cont_0 => 0,
      Cont_1 => 1);

   --  Multiplication Factor Select for Prescaler
   type SC_MULT_Field is
     (
      --  Multiplication factor is 1.
      Mult_0,
      --  Multiplication factor is 10.
      Mult_1,
      --  Multiplication factor is 20.
      Mult_2,
      --  Multiplication factor is 40.
      Mult_3)
     with Size => 2;
   for SC_MULT_Field use
     (Mult_0 => 0,
      Mult_1 => 1,
      Mult_2 => 2,
      Mult_3 => 3);

   --  PDB Interrupt Enable
   type SC_PDBIE_Field is
     (
      --  PDB interrupt disabled.
      Pdbie_0,
      --  PDB interrupt enabled.
      Pdbie_1)
     with Size => 1;
   for SC_PDBIE_Field use
     (Pdbie_0 => 0,
      Pdbie_1 => 1);

   --  PDB Enable
   type SC_PDBEN_Field is
     (
      --  PDB disabled. Counter is off.
      Pdben_0,
      --  PDB enabled.
      Pdben_1)
     with Size => 1;
   for SC_PDBEN_Field use
     (Pdben_0 => 0,
      Pdben_1 => 1);

   --  Trigger Input Source Select
   type SC_TRGSEL_Field is
     (
      --  Trigger-In 0 is selected.
      Trgsel_0,
      --  Trigger-In 1 is selected.
      Trgsel_1,
      --  Trigger-In 2 is selected.
      Trgsel_2,
      --  Trigger-In 3 is selected.
      Trgsel_3,
      --  Trigger-In 4 is selected.
      Trgsel_4,
      --  Trigger-In 5 is selected.
      Trgsel_5,
      --  Trigger-In 6 is selected.
      Trgsel_6,
      --  Trigger-In 7 is selected.
      Trgsel_7,
      --  Trigger-In 8 is selected.
      Trgsel_8,
      --  Trigger-In 9 is selected.
      Trgsel_9,
      --  Trigger-In 10 is selected.
      Trgsel_10,
      --  Trigger-In 11 is selected.
      Trgsel_11,
      --  Trigger-In 12 is selected.
      Trgsel_12,
      --  Trigger-In 13 is selected.
      Trgsel_13,
      --  Trigger-In 14 is selected.
      Trgsel_14,
      --  Software trigger is selected.
      Trgsel_15)
     with Size => 4;
   for SC_TRGSEL_Field use
     (Trgsel_0 => 0,
      Trgsel_1 => 1,
      Trgsel_2 => 2,
      Trgsel_3 => 3,
      Trgsel_4 => 4,
      Trgsel_5 => 5,
      Trgsel_6 => 6,
      Trgsel_7 => 7,
      Trgsel_8 => 8,
      Trgsel_9 => 9,
      Trgsel_10 => 10,
      Trgsel_11 => 11,
      Trgsel_12 => 12,
      Trgsel_13 => 13,
      Trgsel_14 => 14,
      Trgsel_15 => 15);

   --  Prescaler Divider Select
   type SC_PRESCALER_Field is
     (
      --  Counting uses the peripheral clock divided by multiplication factor
      --  selected by MULT.
      Prescaler_0,
      --  Counting uses the peripheral clock divided by twice of the
      --  multiplication factor selected by MULT.
      Prescaler_1,
      --  Counting uses the peripheral clock divided by four times of the
      --  multiplication factor selected by MULT.
      Prescaler_2,
      --  Counting uses the peripheral clock divided by eight times of the
      --  multiplication factor selected by MULT.
      Prescaler_3,
      --  Counting uses the peripheral clock divided by 16 times of the
      --  multiplication factor selected by MULT.
      Prescaler_4,
      --  Counting uses the peripheral clock divided by 32 times of the
      --  multiplication factor selected by MULT.
      Prescaler_5,
      --  Counting uses the peripheral clock divided by 64 times of the
      --  multiplication factor selected by MULT.
      Prescaler_6,
      --  Counting uses the peripheral clock divided by 128 times of the
      --  multiplication factor selected by MULT.
      Prescaler_7)
     with Size => 3;
   for SC_PRESCALER_Field use
     (Prescaler_0 => 0,
      Prescaler_1 => 1,
      Prescaler_2 => 2,
      Prescaler_3 => 3,
      Prescaler_4 => 4,
      Prescaler_5 => 5,
      Prescaler_6 => 6,
      Prescaler_7 => 7);

   --  DMA Enable
   type SC_DMAEN_Field is
     (
      --  DMA disabled.
      Dmaen_0,
      --  DMA enabled.
      Dmaen_1)
     with Size => 1;
   for SC_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  PDB Sequence Error Interrupt Enable
   type SC_PDBEIE_Field is
     (
      --  PDB sequence error interrupt disabled.
      Pdbeie_0,
      --  PDB sequence error interrupt enabled.
      Pdbeie_1)
     with Size => 1;
   for SC_PDBEIE_Field use
     (Pdbeie_0 => 0,
      Pdbeie_1 => 1);

   --  Load Mode Select
   type SC_LDMOD_Field is
     (
      --  The internal registers are loaded with the values from their buffers
      --  immediately after 1 is written to LDOK.
      Ldmod_0,
      --  The internal registers are loaded with the values from their buffers
      --  when the PDB counter reaches the MOD register value after 1 is
      --  written to LDOK.
      Ldmod_1,
      --  The internal registers are loaded with the values from their buffers
      --  when a trigger input event is detected after 1 is written to LDOK.
      Ldmod_2,
      --  The internal registers are loaded with the values from their buffers
      --  when either the PDB counter reaches the MOD register value or a
      --  trigger input event is detected, after 1 is written to LDOK.
      Ldmod_3)
     with Size => 2;
   for SC_LDMOD_Field use
     (Ldmod_0 => 0,
      Ldmod_1 => 1,
      Ldmod_2 => 2,
      Ldmod_3 => 3);

   --  Status and Control register
   type PDB0_SC_Register is record
      --  Load OK
      LDOK           : Boolean := False;
      --  Continuous Mode Enable
      CONT           : SC_CONT_Field := NRF_SVD.PDB.Cont_0;
      --  Multiplication Factor Select for Prescaler
      MULT           : SC_MULT_Field := NRF_SVD.PDB.Mult_0;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  PDB Interrupt Enable
      PDBIE          : SC_PDBIE_Field := NRF_SVD.PDB.Pdbie_0;
      --  PDB Interrupt Flag
      PDBIF          : Boolean := False;
      --  PDB Enable
      PDBEN          : SC_PDBEN_Field := NRF_SVD.PDB.Pdben_0;
      --  Trigger Input Source Select
      TRGSEL         : SC_TRGSEL_Field := NRF_SVD.PDB.Trgsel_0;
      --  Prescaler Divider Select
      PRESCALER      : SC_PRESCALER_Field := NRF_SVD.PDB.Prescaler_0;
      --  DMA Enable
      DMAEN          : SC_DMAEN_Field := NRF_SVD.PDB.Dmaen_0;
      --  Write-only. Software Trigger
      SWTRIG         : Boolean := False;
      --  PDB Sequence Error Interrupt Enable
      PDBEIE         : SC_PDBEIE_Field := NRF_SVD.PDB.Pdbeie_0;
      --  Load Mode Select
      LDMOD          : SC_LDMOD_Field := NRF_SVD.PDB.Ldmod_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_SC_Register use record
      LDOK           at 0 range 0 .. 0;
      CONT           at 0 range 1 .. 1;
      MULT           at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      PDBIE          at 0 range 5 .. 5;
      PDBIF          at 0 range 6 .. 6;
      PDBEN          at 0 range 7 .. 7;
      TRGSEL         at 0 range 8 .. 11;
      PRESCALER      at 0 range 12 .. 14;
      DMAEN          at 0 range 15 .. 15;
      SWTRIG         at 0 range 16 .. 16;
      PDBEIE         at 0 range 17 .. 17;
      LDMOD          at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PDB0_MOD_MOD_Field is HAL.UInt16;

   --  Modulus register
   type PDB0_MOD_Register is record
      --  PDB Modulus
      MOD_k          : PDB0_MOD_MOD_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_MOD_Register use record
      MOD_k          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDB0_CNT_CNT_Field is HAL.UInt16;

   --  Counter register
   type PDB0_CNT_Register is record
      --  Read-only. PDB Counter
      CNT            : PDB0_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDB0_IDLY_IDLY_Field is HAL.UInt16;

   --  Interrupt Delay register
   type PDB0_IDLY_Register is record
      --  PDB Interrupt Delay
      IDLY           : PDB0_IDLY_IDLY_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_IDLY_Register use record
      IDLY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDB Channel Pre-Trigger Enable
   type CHC1_EN_Field is
     (
      --  PDB channel's corresponding pre-trigger disabled.
      En_0,
      --  PDB channel's corresponding pre-trigger enabled.
      En_1)
     with Size => 8;
   for CHC1_EN_Field use
     (En_0 => 0,
      En_1 => 1);

   --  PDB Channel Pre-Trigger Output Select
   type CHC1_TOS_Field is
     (
      --  PDB channel's corresponding pre-trigger is in bypassed mode. The
      --  pre-trigger asserts one peripheral clock cycle after a rising edge is
      --  detected on selected trigger input source or software trigger is
      --  selected and SWTRIG is written with 1.
      Tos_0,
      --  PDB channel's corresponding pre-trigger asserts when the counter
      --  reaches the channel delay register plus one peripheral clock cycle
      --  after a rising edge is detected on selected trigger input source or
      --  software trigger is selected and SETRIG is written with 1.
      Tos_1)
     with Size => 8;
   for CHC1_TOS_Field use
     (Tos_0 => 0,
      Tos_1 => 1);

   --  PDB Channel Pre-Trigger Back-to-Back Operation Enable
   type CHC1_BB_Field is
     (
      --  PDB channel's corresponding pre-trigger back-to-back operation
      --  disabled.
      Bb_0,
      --  PDB channel's corresponding pre-trigger back-to-back operation
      --  enabled.
      Bb_1)
     with Size => 8;
   for CHC1_BB_Field use
     (Bb_0 => 0,
      Bb_1 => 1);

   --  Channel n Control register 1
   type PDB0_CHC1_Register is record
      --  PDB Channel Pre-Trigger Enable
      EN             : CHC1_EN_Field := NRF_SVD.PDB.En_0;
      --  PDB Channel Pre-Trigger Output Select
      TOS            : CHC1_TOS_Field := NRF_SVD.PDB.Tos_0;
      --  PDB Channel Pre-Trigger Back-to-Back Operation Enable
      BB             : CHC1_BB_Field := NRF_SVD.PDB.Bb_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_CHC1_Register use record
      EN             at 0 range 0 .. 7;
      TOS            at 0 range 8 .. 15;
      BB             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PDB Channel Sequence Error Flags
   type CHS_ERR_Field is
     (
      --  Sequence error not detected on PDB channel's corresponding
      --  pre-trigger.
      Err_0,
      --  Sequence error detected on PDB channel's corresponding pre-trigger.
      --  ADCn block can be triggered for a conversion by one pre-trigger from
      --  PDB channel n. When one conversion, which is triggered by one of the
      --  pre-triggers from PDB channel n, is in progress, new trigger from PDB
      --  channel's corresponding pre-trigger m cannot be accepted by ADCn, and
      --  ERR[m] is set. Writing 0's to clear the sequence error flags.
      Err_1)
     with Size => 8;
   for CHS_ERR_Field use
     (Err_0 => 0,
      Err_1 => 1);

   subtype PDB0_CHS_CF_Field is HAL.UInt8;

   --  Channel n Status register
   type PDB0_CHS_Register is record
      --  PDB Channel Sequence Error Flags
      ERR            : CHS_ERR_Field := NRF_SVD.PDB.Err_0;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  PDB Channel Flags
      CF             : PDB0_CHS_CF_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_CHS_Register use record
      ERR            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CF             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CHDLY_DLY_Field is HAL.UInt16;

   --  Channel n Delay 0 register
   type CHDLY_Register is record
      --  PDB Channel Delay
      DLY            : CHDLY_DLY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHDLY_Register use record
      DLY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DAC Interval Trigger Enable
   type DACINTC_TOE_Field is
     (
      --  DAC interval trigger disabled.
      Toe_0,
      --  DAC interval trigger enabled.
      Toe_1)
     with Size => 1;
   for DACINTC_TOE_Field use
     (Toe_0 => 0,
      Toe_1 => 1);

   --  DAC External Trigger Input Enable
   type DACINTC_EXT_Field is
     (
      --  DAC external trigger input disabled. DAC interval counter is reset
      --  and started counting when a rising edge is detected on selected
      --  trigger input source or software trigger is selected and SWTRIG is
      --  written with 1.
      Ext_0,
      --  DAC external trigger input enabled. DAC interval counter is bypassed
      --  and DAC external trigger input triggers the DAC interval trigger.
      Ext_1)
     with Size => 1;
   for DACINTC_EXT_Field use
     (Ext_0 => 0,
      Ext_1 => 1);

   --  DAC Interval Trigger n Control register
   type PDB0_DACINTC_Register is record
      --  DAC Interval Trigger Enable
      TOE           : DACINTC_TOE_Field := NRF_SVD.PDB.Toe_0;
      --  DAC External Trigger Input Enable
      EXT           : DACINTC_EXT_Field := NRF_SVD.PDB.Ext_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_DACINTC_Register use record
      TOE           at 0 range 0 .. 0;
      EXT           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PDB0_DACINT_INT_Field is HAL.UInt16;

   --  DAC Interval n register
   type PDB0_DACINT_Register is record
      --  DAC Interval
      INT            : PDB0_DACINT_INT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_DACINT_Register use record
      INT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDB Pulse-Out Enable
   type POEN_POEN_Field is
     (
      --  PDB Pulse-Out disabled
      Poen_0,
      --  PDB Pulse-Out enabled
      Poen_1)
     with Size => 8;
   for POEN_POEN_Field use
     (Poen_0 => 0,
      Poen_1 => 1);

   --  Pulse-Out n Enable register
   type PDB0_POEN_Register is record
      --  PDB Pulse-Out Enable
      POEN          : POEN_POEN_Field := NRF_SVD.PDB.Poen_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_POEN_Register use record
      POEN          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PDB0_PODLY_DLY2_Field is HAL.UInt16;
   subtype PDB0_PODLY_DLY1_Field is HAL.UInt16;

   --  Pulse-Out n Delay register
   type PDB0_PODLY_Register is record
      --  PDB Pulse-Out Delay 2
      DLY2 : PDB0_PODLY_DLY2_Field := 16#0#;
      --  PDB Pulse-Out Delay 1
      DLY1 : PDB0_PODLY_DLY1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_PODLY_Register use record
      DLY2 at 0 range 0 .. 15;
      DLY1 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Programmable Delay Block
   type PDB_Peripheral is record
      --  Status and Control register
      SC      : aliased PDB0_SC_Register;
      --  Modulus register
      MOD_k   : aliased PDB0_MOD_Register;
      --  Counter register
      CNT     : aliased PDB0_CNT_Register;
      --  Interrupt Delay register
      IDLY    : aliased PDB0_IDLY_Register;
      --  Channel n Control register 1
      CHC1    : aliased PDB0_CHC1_Register;
      --  Channel n Status register
      CHS     : aliased PDB0_CHS_Register;
      --  Channel n Delay 0 register
      CHDLY0  : aliased CHDLY_Register;
      --  Channel n Delay 1 register
      CHDLY1  : aliased CHDLY_Register;
      --  Channel n Delay 2 register
      CHDLY2  : aliased CHDLY_Register;
      --  Channel n Delay 3 register
      CHDLY3  : aliased CHDLY_Register;
      --  Channel n Delay 4 register
      CHDLY4  : aliased CHDLY_Register;
      --  Channel n Delay 5 register
      CHDLY5  : aliased CHDLY_Register;
      --  Channel n Delay 6 register
      CHDLY6  : aliased CHDLY_Register;
      --  Channel n Delay 7 register
      CHDLY7  : aliased CHDLY_Register;
      --  DAC Interval Trigger n Control register
      DACINTC : aliased PDB0_DACINTC_Register;
      --  DAC Interval n register
      DACINT  : aliased PDB0_DACINT_Register;
      --  Pulse-Out n Enable register
      POEN    : aliased PDB0_POEN_Register;
      --  Pulse-Out n Delay register
      PODLY   : aliased PDB0_PODLY_Register;
   end record
     with Volatile;

   for PDB_Peripheral use record
      SC      at 16#0# range 0 .. 31;
      MOD_k   at 16#4# range 0 .. 31;
      CNT     at 16#8# range 0 .. 31;
      IDLY    at 16#C# range 0 .. 31;
      CHC1    at 16#10# range 0 .. 31;
      CHS     at 16#14# range 0 .. 31;
      CHDLY0  at 16#18# range 0 .. 31;
      CHDLY1  at 16#1C# range 0 .. 31;
      CHDLY2  at 16#20# range 0 .. 31;
      CHDLY3  at 16#24# range 0 .. 31;
      CHDLY4  at 16#28# range 0 .. 31;
      CHDLY5  at 16#2C# range 0 .. 31;
      CHDLY6  at 16#30# range 0 .. 31;
      CHDLY7  at 16#34# range 0 .. 31;
      DACINTC at 16#150# range 0 .. 31;
      DACINT  at 16#154# range 0 .. 31;
      POEN    at 16#190# range 0 .. 31;
      PODLY   at 16#194# range 0 .. 31;
   end record;

   --  Programmable Delay Block
   PDB0_Periph : aliased PDB_Peripheral
     with Import, Address => System'To_Address (16#40036000#);

   --  Programmable Delay Block
   PDB1_Periph : aliased PDB_Peripheral
     with Import, Address => System'To_Address (16#40031000#);

   --  Programmable Delay Block
   PDB2_Periph : aliased PDB_Peripheral
     with Import, Address => System'To_Address (16#40033000#);

end NRF_SVD.PDB;
