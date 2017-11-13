--  This spec has been automatically generated from ATSAM3S8B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog-to-Digital Converter
package SAM_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ADC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  Write-only. Start Conversion
      START         : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Write-only. Automatic Calibration of ADC
      AUTOCAL       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      START         at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      AUTOCAL       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Trigger Enable
   type MR_TRGEN_Field is
     (
      --  Hardware triggers are disabled. Starting a conversion is only
      --  possible by software.
      Dis,
      --  Hardware trigger selected by TRGSEL field is enabled.
      En)
     with Size => 1;
   for MR_TRGEN_Field use
     (Dis => 0,
      En => 1);

   --  Trigger Selection
   type MR_TRGSEL_Field is
     (
      --  External trigger
      Adc_Trig0,
      --  TIO Output of the Timer Counter Channel 0
      Adc_Trig1,
      --  TIO Output of the Timer Counter Channel 1
      Adc_Trig2,
      --  TIO Output of the Timer Counter Channel 2
      Adc_Trig3,
      --  PWM Event Line 0
      Adc_Trig4,
      --  PWM Event Line 1
      Adc_Trig5)
     with Size => 3;
   for MR_TRGSEL_Field use
     (Adc_Trig0 => 0,
      Adc_Trig1 => 1,
      Adc_Trig2 => 2,
      Adc_Trig3 => 3,
      Adc_Trig4 => 4,
      Adc_Trig5 => 5);

   --  Resolution
   type MR_LOWRES_Field is
     (
      --  12-bit resolution
      Bits_12,
      --  10-bit resolution
      Bits_10)
     with Size => 1;
   for MR_LOWRES_Field use
     (Bits_12 => 0,
      Bits_10 => 1);

   --  Sleep Mode
   type MR_SLEEP_Field is
     (
      --  Normal Mode: The ADC Core and reference voltage circuitry are kept ON
      --  between conversions
      Normal,
      --  Sleep Mode: The ADC Core and reference voltage circuitry are OFF
      --  between conversions
      Sleep)
     with Size => 1;
   for MR_SLEEP_Field use
     (Normal => 0,
      Sleep => 1);

   --  Fast Wake Up
   type MR_FWUP_Field is
     (
      --  Normal Sleep Mode: The sleep mode is defined by the SLEEP bit
      Off,
      --  Fast Wake Up Sleep Mode: The Voltage reference is ON between
      --  conversions and ADC Core is OFF
      On)
     with Size => 1;
   for MR_FWUP_Field use
     (Off => 0,
      On => 1);

   --  Free Run Mode
   type MR_FREERUN_Field is
     (
      --  Normal Mode
      Off,
      --  Free Run Mode: Never wait for any trigger.
      On)
     with Size => 1;
   for MR_FREERUN_Field use
     (Off => 0,
      On => 1);

   subtype ADC_MR_PRESCAL_Field is HAL.UInt8;

   --  Start Up Time
   type MR_STARTUP_Field is
     (
      --  0 periods of ADCClock
      Sut0,
      --  8 periods of ADCClock
      Sut8,
      --  16 periods of ADCClock
      Sut16,
      --  24 periods of ADCClock
      Sut24,
      --  64 periods of ADCClock
      Sut64,
      --  80 periods of ADCClock
      Sut80,
      --  96 periods of ADCClock
      Sut96,
      --  112 periods of ADCClock
      Sut112,
      --  512 periods of ADCClock
      Sut512,
      --  576 periods of ADCClock
      Sut576,
      --  640 periods of ADCClock
      Sut640,
      --  704 periods of ADCClock
      Sut704,
      --  768 periods of ADCClock
      Sut768,
      --  832 periods of ADCClock
      Sut832,
      --  896 periods of ADCClock
      Sut896,
      --  960 periods of ADCClock
      Sut960)
     with Size => 4;
   for MR_STARTUP_Field use
     (Sut0 => 0,
      Sut8 => 1,
      Sut16 => 2,
      Sut24 => 3,
      Sut64 => 4,
      Sut80 => 5,
      Sut96 => 6,
      Sut112 => 7,
      Sut512 => 8,
      Sut576 => 9,
      Sut640 => 10,
      Sut704 => 11,
      Sut768 => 12,
      Sut832 => 13,
      Sut896 => 14,
      Sut960 => 15);

   --  Analog Settling Time
   type MR_SETTLING_Field is
     (
      --  3 periods of ADCClock
      Ast3,
      --  5 periods of ADCClock
      Ast5,
      --  9 periods of ADCClock
      Ast9,
      --  17 periods of ADCClock
      Ast17)
     with Size => 2;
   for MR_SETTLING_Field use
     (Ast3 => 0,
      Ast5 => 1,
      Ast9 => 2,
      Ast17 => 3);

   --  Analog Change
   type MR_ANACH_Field is
     (
      --  No analog change on channel switching: DIFF0, GAIN0 and OFF0 are used
      --  for all channels
      None,
      --  Allows different analog settings for each channel. See ADC_CGR and
      --  ADC_COR Registers
      Allowed)
     with Size => 1;
   for MR_ANACH_Field use
     (None => 0,
      Allowed => 1);

   subtype ADC_MR_TRACKTIM_Field is HAL.UInt4;
   subtype ADC_MR_TRANSFER_Field is HAL.UInt2;

   --  Use Sequence Enable
   type MR_USEQ_Field is
     (
      --  Normal Mode: The controller converts channels in a simple numeric
      --  order.
      Num_Order,
      --  User Sequence Mode: The sequence respects what is defined in
      --  ADC_SEQR1 and ADC_SEQR2 registers.
      Reg_Order)
     with Size => 1;
   for MR_USEQ_Field use
     (Num_Order => 0,
      Reg_Order => 1);

   --  Mode Register
   type ADC_MR_Register is record
      --  Trigger Enable
      TRGEN          : MR_TRGEN_Field := SAM_SVD.ADC.Dis;
      --  Trigger Selection
      TRGSEL         : MR_TRGSEL_Field := SAM_SVD.ADC.Adc_Trig0;
      --  Resolution
      LOWRES         : MR_LOWRES_Field := SAM_SVD.ADC.Bits_12;
      --  Sleep Mode
      SLEEP          : MR_SLEEP_Field := SAM_SVD.ADC.Normal;
      --  Fast Wake Up
      FWUP           : MR_FWUP_Field := SAM_SVD.ADC.Off;
      --  Free Run Mode
      FREERUN        : MR_FREERUN_Field := SAM_SVD.ADC.Off;
      --  Prescaler Rate Selection
      PRESCAL        : ADC_MR_PRESCAL_Field := 16#0#;
      --  Start Up Time
      STARTUP        : MR_STARTUP_Field := SAM_SVD.ADC.Sut0;
      --  Analog Settling Time
      SETTLING       : MR_SETTLING_Field := SAM_SVD.ADC.Ast3;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Analog Change
      ANACH          : MR_ANACH_Field := SAM_SVD.ADC.None;
      --  Tracking Time
      TRACKTIM       : ADC_MR_TRACKTIM_Field := 16#0#;
      --  Transfer Period
      TRANSFER       : ADC_MR_TRANSFER_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Use Sequence Enable
      USEQ           : MR_USEQ_Field := SAM_SVD.ADC.Num_Order;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      LOWRES         at 0 range 4 .. 4;
      SLEEP          at 0 range 5 .. 5;
      FWUP           at 0 range 6 .. 6;
      FREERUN        at 0 range 7 .. 7;
      PRESCAL        at 0 range 8 .. 15;
      STARTUP        at 0 range 16 .. 19;
      SETTLING       at 0 range 20 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      ANACH          at 0 range 23 .. 23;
      TRACKTIM       at 0 range 24 .. 27;
      TRANSFER       at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      USEQ           at 0 range 31 .. 31;
   end record;

   subtype ADC_SEQR1_USCH1_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH2_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH3_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH4_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH5_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH6_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH7_Field is HAL.UInt3;
   subtype ADC_SEQR1_USCH8_Field is HAL.UInt3;

   --  Channel Sequence Register 1
   type ADC_SEQR1_Register is record
      --  User Sequence Number 1
      USCH1          : ADC_SEQR1_USCH1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  User Sequence Number 2
      USCH2          : ADC_SEQR1_USCH2_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  User Sequence Number 3
      USCH3          : ADC_SEQR1_USCH3_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  User Sequence Number 4
      USCH4          : ADC_SEQR1_USCH4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  User Sequence Number 5
      USCH5          : ADC_SEQR1_USCH5_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  User Sequence Number 6
      USCH6          : ADC_SEQR1_USCH6_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  User Sequence Number 7
      USCH7          : ADC_SEQR1_USCH7_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  User Sequence Number 8
      USCH8          : ADC_SEQR1_USCH8_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SEQR1_Register use record
      USCH1          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      USCH2          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      USCH3          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      USCH4          at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      USCH5          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      USCH6          at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      USCH7          at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      USCH8          at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ADC_SEQR2_USCH9_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH10_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH11_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH12_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH13_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH14_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH15_Field is HAL.UInt3;
   subtype ADC_SEQR2_USCH16_Field is HAL.UInt3;

   --  Channel Sequence Register 2
   type ADC_SEQR2_Register is record
      --  User Sequence Number 9
      USCH9          : ADC_SEQR2_USCH9_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  User Sequence Number 10
      USCH10         : ADC_SEQR2_USCH10_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  User Sequence Number 11
      USCH11         : ADC_SEQR2_USCH11_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  User Sequence Number 12
      USCH12         : ADC_SEQR2_USCH12_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  User Sequence Number 13
      USCH13         : ADC_SEQR2_USCH13_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  User Sequence Number 14
      USCH14         : ADC_SEQR2_USCH14_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  User Sequence Number 15
      USCH15         : ADC_SEQR2_USCH15_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  User Sequence Number 16
      USCH16         : ADC_SEQR2_USCH16_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SEQR2_Register use record
      USCH9          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      USCH10         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      USCH11         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      USCH12         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      USCH13         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      USCH14         at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      USCH15         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      USCH16         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  ADC_CHER_CH array
   type ADC_CHER_CH_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_CHER_CH
   type ADC_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt16;
         when True =>
            --  CH as an array
            Arr : ADC_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_CHER_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Channel Enable Register
   type ADC_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH             : ADC_CHER_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHER_Register use record
      CH             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ADC_CHDR_CH array
   type ADC_CHDR_CH_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_CHDR_CH
   type ADC_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt16;
         when True =>
            --  CH as an array
            Arr : ADC_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_CHDR_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Channel Disable Register
   type ADC_CHDR_Register is record
      --  Write-only. Channel 0 Disable
      CH             : ADC_CHDR_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHDR_Register use record
      CH             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ADC_CHSR_CH array
   type ADC_CHSR_CH_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_CHSR_CH
   type ADC_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt16;
         when True =>
            --  CH as an array
            Arr : ADC_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_CHSR_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Channel Status Register
   type ADC_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH             : ADC_CHSR_CH_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHSR_Register use record
      CH             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_LCDR_LDATA_Field is HAL.UInt12;
   subtype ADC_LCDR_CHNB_Field is HAL.UInt4;

   --  Last Converted Data Register
   type ADC_LCDR_Register is record
      --  Read-only. Last Data Converted
      LDATA          : ADC_LCDR_LDATA_Field;
      --  Read-only. Channel Number
      CHNB           : ADC_LCDR_CHNB_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_LCDR_Register use record
      LDATA          at 0 range 0 .. 11;
      CHNB           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ADC_IER_EOC array
   type ADC_IER_EOC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_IER_EOC
   type ADC_IER_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt16;
         when True =>
            --  EOC as an array
            Arr : ADC_IER_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_IER_EOC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Enable Register
   type ADC_IER_Register is record
      --  Write-only. End of Conversion Interrupt Enable 0
      EOC            : ADC_IER_EOC_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_22 : HAL.UInt7 := 16#0#;
      --  Write-only. End of Calibration Sequence
      EOCAL          : Boolean := False;
      --  Write-only. Data Ready Interrupt Enable
      DRDY           : Boolean := False;
      --  Write-only. General Overrun Error Interrupt Enable
      GOVRE          : Boolean := False;
      --  Write-only. Comparison Event Interrupt Enable
      COMPE          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IER_Register use record
      EOC            at 0 range 0 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_IDR_EOC array
   type ADC_IDR_EOC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_IDR_EOC
   type ADC_IDR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt16;
         when True =>
            --  EOC as an array
            Arr : ADC_IDR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_IDR_EOC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Disable Register
   type ADC_IDR_Register is record
      --  Write-only. End of Conversion Interrupt Disable 0
      EOC            : ADC_IDR_EOC_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_22 : HAL.UInt7 := 16#0#;
      --  Write-only. End of Calibration Sequence
      EOCAL          : Boolean := False;
      --  Write-only. Data Ready Interrupt Disable
      DRDY           : Boolean := False;
      --  Write-only. General Overrun Error Interrupt Disable
      GOVRE          : Boolean := False;
      --  Write-only. Comparison Event Interrupt Disable
      COMPE          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IDR_Register use record
      EOC            at 0 range 0 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_IMR_EOC array
   type ADC_IMR_EOC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_IMR_EOC
   type ADC_IMR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt16;
         when True =>
            --  EOC as an array
            Arr : ADC_IMR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_IMR_EOC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Mask Register
   type ADC_IMR_Register is record
      --  Read-only. End of Conversion Interrupt Mask 0
      EOC            : ADC_IMR_EOC_Field;
      --  unspecified
      Reserved_16_22 : HAL.UInt7;
      --  Read-only. End of Calibration Sequence
      EOCAL          : Boolean;
      --  Read-only. Data Ready Interrupt Mask
      DRDY           : Boolean;
      --  Read-only. General Overrun Error Interrupt Mask
      GOVRE          : Boolean;
      --  Read-only. Comparison Event Interrupt Mask
      COMPE          : Boolean;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IMR_Register use record
      EOC            at 0 range 0 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_ISR_EOC array
   type ADC_ISR_EOC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_ISR_EOC
   type ADC_ISR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt16;
         when True =>
            --  EOC as an array
            Arr : ADC_ISR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_ISR_EOC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Status Register
   type ADC_ISR_Register is record
      --  Read-only. End of Conversion 0
      EOC            : ADC_ISR_EOC_Field;
      --  unspecified
      Reserved_16_22 : HAL.UInt7;
      --  Read-only. End of Calibration Sequence
      EOCAL          : Boolean;
      --  Read-only. Data Ready
      DRDY           : Boolean;
      --  Read-only. General Overrun Error
      GOVRE          : Boolean;
      --  Read-only. Comparison Error
      COMPE          : Boolean;
      --  Read-only. End of RX Buffer
      ENDRX          : Boolean;
      --  Read-only. RX Buffer Full
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_ISR_Register use record
      EOC            at 0 range 0 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_OVER_OVRE array
   type ADC_OVER_OVRE_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_OVER_OVRE
   type ADC_OVER_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt16;
         when True =>
            --  OVRE as an array
            Arr : ADC_OVER_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_OVER_OVRE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Overrun Status Register
   type ADC_OVER_Register is record
      --  Read-only. Overrun Error 0
      OVRE           : ADC_OVER_OVRE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_OVER_Register use record
      OVRE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Comparison Mode
   type EMR_CMPMODE_Field is
     (
      --  Generates an event when the converted data is lower than the low
      --  threshold of the window.
      Low,
      --  Generates an event when the converted data is higher than the high
      --  threshold of the window.
      High,
      --  Generates an event when the converted data is in the comparison
      --  window.
      In_k,
      --  Generates an event when the converted data is out of the comparison
      --  window.
      Out_k)
     with Size => 2;
   for EMR_CMPMODE_Field use
     (Low => 0,
      High => 1,
      In_k => 2,
      Out_k => 3);

   subtype ADC_EMR_CMPSEL_Field is HAL.UInt4;
   subtype ADC_EMR_CMPFILTER_Field is HAL.UInt2;

   --  Extended Mode Register
   type ADC_EMR_Register is record
      --  Comparison Mode
      CMPMODE        : EMR_CMPMODE_Field := SAM_SVD.ADC.Low;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Comparison Selected Channel
      CMPSEL         : ADC_EMR_CMPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Compare All Channels
      CMPALL         : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Compare Event Filtering
      CMPFILTER      : ADC_EMR_CMPFILTER_Field := 16#0#;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  TAG of ADC_LDCR register
      TAG            : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_EMR_Register use record
      CMPMODE        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CMPSEL         at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CMPALL         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CMPFILTER      at 0 range 12 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      TAG            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADC_CWR_LOWTHRES_Field is HAL.UInt12;
   subtype ADC_CWR_HIGHTHRES_Field is HAL.UInt12;

   --  Compare Window Register
   type ADC_CWR_Register is record
      --  Low Threshold
      LOWTHRES       : ADC_CWR_LOWTHRES_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  High Threshold
      HIGHTHRES      : ADC_CWR_HIGHTHRES_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CWR_Register use record
      LOWTHRES       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HIGHTHRES      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ADC_CGR_GAIN array element
   subtype ADC_CGR_GAIN_Element is HAL.UInt2;

   --  ADC_CGR_GAIN array
   type ADC_CGR_GAIN_Field_Array is array (0 .. 15) of ADC_CGR_GAIN_Element
     with Component_Size => 2, Size => 32;

   --  Channel Gain Register
   type ADC_CGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GAIN as a value
            Val : HAL.UInt32;
         when True =>
            --  GAIN as an array
            Arr : ADC_CGR_GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_CGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ADC_COR_OFF array
   type ADC_COR_OFF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_COR_OFF
   type ADC_COR_OFF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OFF as a value
            Val : HAL.UInt16;
         when True =>
            --  OFF as an array
            Arr : ADC_COR_OFF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_COR_OFF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ADC_COR_DIFF array
   type ADC_COR_DIFF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ADC_COR_DIFF
   type ADC_COR_DIFF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIFF as a value
            Val : HAL.UInt16;
         when True =>
            --  DIFF as an array
            Arr : ADC_COR_DIFF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADC_COR_DIFF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Channel Offset Register
   type ADC_COR_Register is record
      --  Offset for channel 0
      OFF  : ADC_COR_OFF_Field := (As_Array => False, Val => 16#0#);
      --  Differential inputs for channel 0
      DIFF : ADC_COR_DIFF_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_COR_Register use record
      OFF  at 0 range 0 .. 15;
      DIFF at 0 range 16 .. 31;
   end record;

   subtype ADC_CDR_DATA_Field is HAL.UInt12;

   --  Channel Data Register
   type ADC_CDR_Register is record
      --  Read-only. Converted Data
      DATA           : ADC_CDR_DATA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CDR_Register use record
      DATA           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Channel Data Register
   type ADC_CDR_Registers is array (0 .. 14) of ADC_CDR_Register
     with Volatile;

   subtype ADC_ACR_IBCTL_Field is HAL.UInt2;

   --  Analog Control Register
   type ADC_ACR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Temperature Sensor On
      TSON           : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  ADC Bias Current Control
      IBCTL          : ADC_ACR_IBCTL_Field := 16#1#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_ACR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      TSON           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      IBCTL          at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ADC_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type ADC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : ADC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype ADC_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protect Status Register
   type ADC_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : ADC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ADC_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type ADC_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : ADC_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type ADC_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : ADC_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type ADC_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type ADC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter
   type ADC_Peripheral is record
      --  Control Register
      CR    : aliased ADC_CR_Register;
      --  Mode Register
      MR    : aliased ADC_MR_Register;
      --  Channel Sequence Register 1
      SEQR1 : aliased ADC_SEQR1_Register;
      --  Channel Sequence Register 2
      SEQR2 : aliased ADC_SEQR2_Register;
      --  Channel Enable Register
      CHER  : aliased ADC_CHER_Register;
      --  Channel Disable Register
      CHDR  : aliased ADC_CHDR_Register;
      --  Channel Status Register
      CHSR  : aliased ADC_CHSR_Register;
      --  Last Converted Data Register
      LCDR  : aliased ADC_LCDR_Register;
      --  Interrupt Enable Register
      IER   : aliased ADC_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased ADC_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased ADC_IMR_Register;
      --  Interrupt Status Register
      ISR   : aliased ADC_ISR_Register;
      --  Overrun Status Register
      OVER  : aliased ADC_OVER_Register;
      --  Extended Mode Register
      EMR   : aliased ADC_EMR_Register;
      --  Compare Window Register
      CWR   : aliased ADC_CWR_Register;
      --  Channel Gain Register
      CGR   : aliased ADC_CGR_Register;
      --  Channel Offset Register
      COR   : aliased ADC_COR_Register;
      --  Channel Data Register
      CDR   : aliased ADC_CDR_Registers;
      --  Analog Control Register
      ACR   : aliased ADC_ACR_Register;
      --  Write Protect Mode Register
      WPMR  : aliased ADC_WPMR_Register;
      --  Write Protect Status Register
      WPSR  : aliased ADC_WPSR_Register;
      --  Receive Pointer Register
      RPR   : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR   : aliased ADC_RCR_Register;
      --  Receive Next Pointer Register
      RNPR  : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR  : aliased ADC_RNCR_Register;
      --  Transfer Control Register
      PTCR  : aliased ADC_PTCR_Register;
      --  Transfer Status Register
      PTSR  : aliased ADC_PTSR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      MR    at 16#4# range 0 .. 31;
      SEQR1 at 16#8# range 0 .. 31;
      SEQR2 at 16#C# range 0 .. 31;
      CHER  at 16#10# range 0 .. 31;
      CHDR  at 16#14# range 0 .. 31;
      CHSR  at 16#18# range 0 .. 31;
      LCDR  at 16#20# range 0 .. 31;
      IER   at 16#24# range 0 .. 31;
      IDR   at 16#28# range 0 .. 31;
      IMR   at 16#2C# range 0 .. 31;
      ISR   at 16#30# range 0 .. 31;
      OVER  at 16#3C# range 0 .. 31;
      EMR   at 16#40# range 0 .. 31;
      CWR   at 16#44# range 0 .. 31;
      CGR   at 16#48# range 0 .. 31;
      COR   at 16#4C# range 0 .. 31;
      CDR   at 16#50# range 0 .. 479;
      ACR   at 16#94# range 0 .. 31;
      WPMR  at 16#E4# range 0 .. 31;
      WPSR  at 16#E8# range 0 .. 31;
      RPR   at 16#100# range 0 .. 31;
      RCR   at 16#104# range 0 .. 31;
      RNPR  at 16#110# range 0 .. 31;
      RNCR  at 16#114# range 0 .. 31;
      PTCR  at 16#120# range 0 .. 31;
      PTSR  at 16#124# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end SAM_SVD.ADC;
