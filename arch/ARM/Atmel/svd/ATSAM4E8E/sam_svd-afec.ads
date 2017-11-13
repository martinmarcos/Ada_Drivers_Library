--  This spec has been automatically generated from ATSAM4E8E.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AFEC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type AFEC0_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  Write-only. Start Conversion
      START         : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Write-only. Automatic Calibration of AFE
      AUTOCAL       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CR_Register use record
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
      --  ADTRG pin
      Afe_Trig0,
      --  TIO Output of the Timer Counter Channel 0
      Afe_Trig1,
      --  TIO Output of the Timer Counter Channel 1
      Afe_Trig2,
      --  TIO Output of the Timer Counter Channel 2
      Afe_Trig3,
      --  PWM Event Line 0
      Afe_Trig4,
      --  PWM Event Line 1
      Afe_Trig5)
     with Size => 3;
   for MR_TRGSEL_Field use
     (Afe_Trig0 => 0,
      Afe_Trig1 => 1,
      Afe_Trig2 => 2,
      Afe_Trig3 => 3,
      Afe_Trig4 => 4,
      Afe_Trig5 => 5);

   --  Sleep Mode
   type MR_SLEEP_Field is
     (
      --  Normal Mode: The AFE Core and reference voltage circuitry are kept ON
      --  between conversions
      Normal,
      --  Sleep Mode: The AFE Core and reference voltage circuitry are OFF
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
      --  conversions and AFE Core is OFF
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

   subtype AFEC0_MR_PRESCAL_Field is HAL.UInt8;

   --  Start Up Time
   type MR_STARTUP_Field is
     (
      --  0 periods of AFEClock
      Sut0,
      --  8 periods of AFEClock
      Sut8,
      --  16 periods of AFEClock
      Sut16,
      --  24 periods of AFEClock
      Sut24,
      --  64 periods of AFEClock
      Sut64,
      --  80 periods of AFEClock
      Sut80,
      --  96 periods of AFEClock
      Sut96,
      --  112 periods of AFEClock
      Sut112,
      --  512 periods of AFEClock
      Sut512,
      --  576 periods of AFEClock
      Sut576,
      --  640 periods of AFEClock
      Sut640,
      --  704 periods of AFEClock
      Sut704,
      --  768 periods of AFEClock
      Sut768,
      --  832 periods of AFEClock
      Sut832,
      --  896 periods of AFEClock
      Sut896,
      --  960 periods of AFEClock
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
      --  3 periods of AFEClock
      Ast3,
      --  5 periods of AFEClock
      Ast5,
      --  9 periods of AFEClock
      Ast9,
      --  17 periods of AFEClock
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
      --  Allows different analog settings for each channel. See AFE_CGR and
      --  AFE_CDOR Registers
      Allowed)
     with Size => 1;
   for MR_ANACH_Field use
     (None => 0,
      Allowed => 1);

   subtype AFEC0_MR_TRACKTIM_Field is HAL.UInt4;
   subtype AFEC0_MR_TRANSFER_Field is HAL.UInt2;

   --  Use Sequence Enable
   type MR_USEQ_Field is
     (
      --  Normal Mode: The controller converts channels in a simple numeric
      --  order.
      Num_Order,
      --  User Sequence Mode: The sequence respects what is defined in
      --  AFE_SEQR1 and AFE_SEQR2 registers.
      Reg_Order)
     with Size => 1;
   for MR_USEQ_Field use
     (Num_Order => 0,
      Reg_Order => 1);

   --  Mode Register
   type AFEC0_MR_Register is record
      --  Trigger Enable
      TRGEN          : MR_TRGEN_Field := SAM_SVD.AFEC.Dis;
      --  Trigger Selection
      TRGSEL         : MR_TRGSEL_Field := SAM_SVD.AFEC.Afe_Trig0;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Sleep Mode
      SLEEP          : MR_SLEEP_Field := SAM_SVD.AFEC.Normal;
      --  Fast Wake Up
      FWUP           : MR_FWUP_Field := SAM_SVD.AFEC.Off;
      --  Free Run Mode
      FREERUN        : MR_FREERUN_Field := SAM_SVD.AFEC.Off;
      --  Prescaler Rate Selection
      PRESCAL        : AFEC0_MR_PRESCAL_Field := 16#0#;
      --  Start Up Time
      STARTUP        : MR_STARTUP_Field := SAM_SVD.AFEC.Sut0;
      --  Analog Settling Time
      SETTLING       : MR_SETTLING_Field := SAM_SVD.AFEC.Ast3;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Analog Change
      ANACH          : MR_ANACH_Field := SAM_SVD.AFEC.None;
      --  Tracking Time
      TRACKTIM       : AFEC0_MR_TRACKTIM_Field := 16#0#;
      --  Transfer Period
      TRANSFER       : AFEC0_MR_TRANSFER_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Use Sequence Enable
      USEQ           : MR_USEQ_Field := SAM_SVD.AFEC.Num_Order;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
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

   subtype AFEC0_EMR_CMPSEL_Field is HAL.UInt5;
   subtype AFEC0_EMR_CMPFILTER_Field is HAL.UInt2;

   --  Resolution
   type EMR_RES_Field is
     (
      --  12-bit resolution, AFE sample rate is maximum (no averaging).
      No_Average,
      --  10-bit resolution, AFE sample rate is maximum (no averaging).
      Low_Res,
      --  13-bit resolution, AFE sample rate divided by 4 (averaging).
      Osr4,
      --  14-bit resolution, AFE sample rate divided by 16 (averaging).
      Osr16,
      --  15-bit resolution, AFE sample rate divided by 64 (averaging).
      Osr64,
      --  16-bit resolution, AFE sample rate divided by 256 (averaging).
      Osr256)
     with Size => 3;
   for EMR_RES_Field use
     (No_Average => 0,
      Low_Res => 1,
      Osr4 => 2,
      Osr16 => 3,
      Osr64 => 4,
      Osr256 => 5);

   --  Extended Mode Register
   type AFEC0_EMR_Register is record
      --  Comparison Mode
      CMPMODE        : EMR_CMPMODE_Field := SAM_SVD.AFEC.Low;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Comparison Selected Channel
      CMPSEL         : AFEC0_EMR_CMPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Compare All Channels
      CMPALL         : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Compare Event Filtering
      CMPFILTER      : AFEC0_EMR_CMPFILTER_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resolution
      RES            : EMR_RES_Field := SAM_SVD.AFEC.No_Average;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  TAG of AFE_LDCR register
      TAG            : Boolean := False;
      --  Single Trigger Mode
      STM            : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_EMR_Register use record
      CMPMODE        at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CMPSEL         at 0 range 3 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CMPALL         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CMPFILTER      at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RES            at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      TAG            at 0 range 24 .. 24;
      STM            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  AFEC0_SEQ1R_USCH array element
   subtype AFEC0_SEQ1R_USCH_Element is HAL.UInt4;

   --  AFEC0_SEQ1R_USCH array
   type AFEC0_SEQ1R_USCH_Field_Array is array (0 .. 7)
     of AFEC0_SEQ1R_USCH_Element
     with Component_Size => 4, Size => 32;

   --  Channel Sequence 1 Register
   type AFEC0_SEQ1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USCH as a value
            Val : HAL.UInt32;
         when True =>
            --  USCH as an array
            Arr : AFEC0_SEQ1R_USCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for AFEC0_SEQ1R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFEC0_SEQ2R_USCH array element
   subtype AFEC0_SEQ2R_USCH_Element is HAL.UInt4;

   --  AFEC0_SEQ2R_USCH array
   type AFEC0_SEQ2R_USCH_Field_Array is array (8 .. 15)
     of AFEC0_SEQ2R_USCH_Element
     with Component_Size => 4, Size => 32;

   --  Channel Sequence 2 Register
   type AFEC0_SEQ2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USCH as a value
            Val : HAL.UInt32;
         when True =>
            --  USCH as an array
            Arr : AFEC0_SEQ2R_USCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for AFEC0_SEQ2R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFEC0_CHER_CH array
   type AFEC0_CHER_CH_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for AFEC0_CHER_CH
   type AFEC0_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt17;
         when True =>
            --  CH as an array
            Arr : AFEC0_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for AFEC0_CHER_CH_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  AFEC0_CHER_CH array
   type AFEC0_CHER_CH_Field_Array_1 is array (18 .. 23) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for AFEC0_CHER_CH
   type AFEC0_CHER_CH_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt6;
         when True =>
            --  CH as an array
            Arr : AFEC0_CHER_CH_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for AFEC0_CHER_CH_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Channel Enable Register
   type AFEC0_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH             : AFEC0_CHER_CH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only.
      DIFF17         : Boolean := False;
      --  Write-only. Channel 18 Enable
      CH_1           : AFEC0_CHER_CH_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CHER_Register use record
      CH             at 0 range 0 .. 16;
      DIFF17         at 0 range 17 .. 17;
      CH_1           at 0 range 18 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  AFEC0_CHDR_CH array
   type AFEC0_CHDR_CH_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for AFEC0_CHDR_CH
   type AFEC0_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt17;
         when True =>
            --  CH as an array
            Arr : AFEC0_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for AFEC0_CHDR_CH_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  AFEC0_CHDR_CH array
   type AFEC0_CHDR_CH_Field_Array_1 is array (18 .. 23) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for AFEC0_CHDR_CH
   type AFEC0_CHDR_CH_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt6;
         when True =>
            --  CH as an array
            Arr : AFEC0_CHDR_CH_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for AFEC0_CHDR_CH_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Channel Disable Register
   type AFEC0_CHDR_Register is record
      --  Write-only. Channel 0 Disable
      CH             : AFEC0_CHDR_CH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only.
      DIFF17         : Boolean := False;
      --  Write-only. Channel 18 Disable
      CH_1           : AFEC0_CHDR_CH_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CHDR_Register use record
      CH             at 0 range 0 .. 16;
      DIFF17         at 0 range 17 .. 17;
      CH_1           at 0 range 18 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  AFEC0_CHSR_CH array
   type AFEC0_CHSR_CH_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for AFEC0_CHSR_CH
   type AFEC0_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt17;
         when True =>
            --  CH as an array
            Arr : AFEC0_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for AFEC0_CHSR_CH_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  AFEC0_CHSR_CH array
   type AFEC0_CHSR_CH_Field_Array_1 is array (18 .. 23) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for AFEC0_CHSR_CH
   type AFEC0_CHSR_CH_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt6;
         when True =>
            --  CH as an array
            Arr : AFEC0_CHSR_CH_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for AFEC0_CHSR_CH_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Channel Status Register
   type AFEC0_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH             : AFEC0_CHSR_CH_Field;
      --  Read-only.
      DIFF17         : Boolean;
      --  Read-only. Channel 18 Status
      CH_1           : AFEC0_CHSR_CH_Field_1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CHSR_Register use record
      CH             at 0 range 0 .. 16;
      DIFF17         at 0 range 17 .. 17;
      CH_1           at 0 range 18 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype AFEC0_LCDR_LDATA_Field is HAL.UInt16;
   subtype AFEC0_LCDR_CHNB_Field is HAL.UInt4;

   --  Last Converted Data Register
   type AFEC0_LCDR_Register is record
      --  Read-only. Last Data Converted
      LDATA          : AFEC0_LCDR_LDATA_Field;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Channel Number
      CHNB           : AFEC0_LCDR_CHNB_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_LCDR_Register use record
      LDATA          at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      CHNB           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AFEC0_IER_EOC array
   type AFEC0_IER_EOC_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for AFEC0_IER_EOC
   type AFEC0_IER_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt24;
         when True =>
            --  EOC as an array
            Arr : AFEC0_IER_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for AFEC0_IER_EOC_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Interrupt Enable Register
   type AFEC0_IER_Register is record
      --  Write-only. End of Conversion Interrupt Enable 0
      EOC            : AFEC0_IER_EOC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Data Ready Interrupt Enable
      DRDY           : Boolean := False;
      --  Write-only. General Overrun Error Interrupt Enable
      GOVRE          : Boolean := False;
      --  Write-only. Comparison Event Interrupt Enable+
      COMPE          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Write-only. Temperature Change Interrupt Enable
      TEMPCHG        : Boolean := False;
      --  Write-only. End of Calibration Sequence Interrupt Enable
      EOCAL          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_IER_Register use record
      EOC            at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TEMPCHG        at 0 range 30 .. 30;
      EOCAL          at 0 range 31 .. 31;
   end record;

   --  AFEC0_IDR_EOC array
   type AFEC0_IDR_EOC_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for AFEC0_IDR_EOC
   type AFEC0_IDR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt24;
         when True =>
            --  EOC as an array
            Arr : AFEC0_IDR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for AFEC0_IDR_EOC_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Interrupt Disable Register
   type AFEC0_IDR_Register is record
      --  Write-only. End of Conversion Interrupt Disable 0
      EOC            : AFEC0_IDR_EOC_Field :=
                        (As_Array => False, Val => 16#0#);
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
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Write-only. Temperature Change Interrupt Disable
      TEMPCHG        : Boolean := False;
      --  Write-only. End of Calibration Sequence Interrupt Disable
      EOCAL          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_IDR_Register use record
      EOC            at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TEMPCHG        at 0 range 30 .. 30;
      EOCAL          at 0 range 31 .. 31;
   end record;

   --  AFEC0_IMR_EOC array
   type AFEC0_IMR_EOC_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for AFEC0_IMR_EOC
   type AFEC0_IMR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt24;
         when True =>
            --  EOC as an array
            Arr : AFEC0_IMR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for AFEC0_IMR_EOC_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Interrupt Mask Register
   type AFEC0_IMR_Register is record
      --  Read-only. End of Conversion Interrupt Mask 0
      EOC            : AFEC0_IMR_EOC_Field;
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
      Reserved_29_29 : HAL.Bit;
      --  Read-only. Temperature Change Interrupt Mask
      TEMPCHG        : Boolean;
      --  Read-only. End of Calibration Sequence Interrupt Mask
      EOCAL          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_IMR_Register use record
      EOC            at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TEMPCHG        at 0 range 30 .. 30;
      EOCAL          at 0 range 31 .. 31;
   end record;

   --  AFEC0_ISR_EOC array
   type AFEC0_ISR_EOC_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for AFEC0_ISR_EOC
   type AFEC0_ISR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt24;
         when True =>
            --  EOC as an array
            Arr : AFEC0_ISR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for AFEC0_ISR_EOC_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Interrupt Status Register
   type AFEC0_ISR_Register is record
      --  Read-only. End of Conversion 0
      EOC            : AFEC0_ISR_EOC_Field;
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
      Reserved_29_29 : HAL.Bit;
      --  Read-only. Temperature Change
      TEMPCHG        : Boolean;
      --  Read-only. End of Calibration Sequence
      EOCAL          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_ISR_Register use record
      EOC            at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TEMPCHG        at 0 range 30 .. 30;
      EOCAL          at 0 range 31 .. 31;
   end record;

   --  AFEC0_OVER_OVRE array
   type AFEC0_OVER_OVRE_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for AFEC0_OVER_OVRE
   type AFEC0_OVER_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt16;
         when True =>
            --  OVRE as an array
            Arr : AFEC0_OVER_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for AFEC0_OVER_OVRE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype AFEC0_OVER_OVRE16_Field is HAL.UInt2;

   --  AFEC0_OVER_OVRE array
   type AFEC0_OVER_OVRE_Field_Array_1 is array (17 .. 22) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for AFEC0_OVER_OVRE
   type AFEC0_OVER_OVRE_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt6;
         when True =>
            --  OVRE as an array
            Arr : AFEC0_OVER_OVRE_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for AFEC0_OVER_OVRE_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Overrun Status Register
   type AFEC0_OVER_Register is record
      --  Read-only. Overrun Error 0
      OVRE           : AFEC0_OVER_OVRE_Field;
      --  Read-only. Overrun Error 16
      OVRE16         : AFEC0_OVER_OVRE16_Field;
      --  Read-only. Overrun Error 17
      OVRE_1         : AFEC0_OVER_OVRE_Field_1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_OVER_Register use record
      OVRE           at 0 range 0 .. 15;
      OVRE16         at 0 range 16 .. 17;
      OVRE_1         at 0 range 18 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype AFEC0_CWR_LOWTHRES_Field is HAL.UInt12;
   subtype AFEC0_CWR_HIGHTHRES_Field is HAL.UInt12;

   --  Compare Window Register
   type AFEC0_CWR_Register is record
      --  Low Threshold
      LOWTHRES       : AFEC0_CWR_LOWTHRES_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  High Threshold
      HIGHTHRES      : AFEC0_CWR_HIGHTHRES_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CWR_Register use record
      LOWTHRES       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HIGHTHRES      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AFEC0_CGR_GAIN array element
   subtype AFEC0_CGR_GAIN_Element is HAL.UInt2;

   --  AFEC0_CGR_GAIN array
   type AFEC0_CGR_GAIN_Field_Array is array (0 .. 15)
     of AFEC0_CGR_GAIN_Element
     with Component_Size => 2, Size => 32;

   --  Channel Gain Register
   type AFEC0_CGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GAIN as a value
            Val : HAL.UInt32;
         when True =>
            --  GAIN as an array
            Arr : AFEC0_CGR_GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFEC0_CDOR_OFF array
   type AFEC0_CDOR_OFF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for AFEC0_CDOR_OFF
   type AFEC0_CDOR_OFF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OFF as a value
            Val : HAL.UInt16;
         when True =>
            --  OFF as an array
            Arr : AFEC0_CDOR_OFF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for AFEC0_CDOR_OFF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  AFEC0_CDOR_OVRE array
   type AFEC0_CDOR_OVRE_Field_Array is array (16 .. 17) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AFEC0_CDOR_OVRE
   type AFEC0_CDOR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt2;
         when True =>
            --  OVRE as an array
            Arr : AFEC0_CDOR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AFEC0_CDOR_OVRE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AFEC0_CDOR_OFF array
   type AFEC0_CDOR_OFF_Field_Array_1 is array (18 .. 23) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for AFEC0_CDOR_OFF
   type AFEC0_CDOR_OFF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OFF as a value
            Val : HAL.UInt6;
         when True =>
            --  OFF as an array
            Arr : AFEC0_CDOR_OFF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for AFEC0_CDOR_OFF_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Channel DC Offset Register
   type AFEC0_CDOR_Register is record
      --  Offset for channel 0
      OFF            : AFEC0_CDOR_OFF_Field :=
                        (As_Array => False, Val => 16#0#);
      OVRE           : AFEC0_CDOR_OVRE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Offset for channel 18
      OFF_1          : AFEC0_CDOR_OFF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CDOR_Register use record
      OFF            at 0 range 0 .. 15;
      OVRE           at 0 range 16 .. 17;
      OFF_1          at 0 range 18 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  AFEC0_DIFFR_DIFF array
   type AFEC0_DIFFR_DIFF_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for AFEC0_DIFFR_DIFF
   type AFEC0_DIFFR_DIFF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIFF as a value
            Val : HAL.UInt24;
         when True =>
            --  DIFF as an array
            Arr : AFEC0_DIFFR_DIFF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for AFEC0_DIFFR_DIFF_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Channel Differential Register
   type AFEC0_DIFFR_Register is record
      --  Differential inputs for channel 0
      DIFF           : AFEC0_DIFFR_DIFF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_DIFFR_Register use record
      DIFF           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype AFEC0_CSELR_CSEL_Field is HAL.UInt4;

   --  Channel Register Selection
   type AFEC0_CSELR_Register is record
      --  Read-only. Channel Selection
      CSEL          : AFEC0_CSELR_CSEL_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CSELR_Register use record
      CSEL          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype AFEC0_CDR_DATA_Field is HAL.UInt12;

   --  Channel Data Register
   type AFEC0_CDR_Register is record
      --  Read-only. Converted Data
      DATA           : AFEC0_CDR_DATA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_CDR_Register use record
      DATA           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype AFEC0_COCR_AOFF_Field is HAL.UInt12;

   --  Channel Offset Compensation Register
   type AFEC0_COCR_Register is record
      --  Read-only. Analog Offset
      AOFF           : AFEC0_COCR_AOFF_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_COCR_Register use record
      AOFF           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Temperature Comparison Mode
   type TEMPMR_TEMPCMPMOD_Field is
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
   for TEMPMR_TEMPCMPMOD_Field use
     (Low => 0,
      High => 1,
      In_k => 2,
      Out_k => 3);

   --  Temperature Sensor Mode Register
   type AFEC0_TEMPMR_Register is record
      --  Temperature Sensor RTC Trigger mode
      RTCT          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Temperature Comparison Mode
      TEMPCMPMOD    : TEMPMR_TEMPCMPMOD_Field := SAM_SVD.AFEC.Low;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_TEMPMR_Register use record
      RTCT          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      TEMPCMPMOD    at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype AFEC0_TEMPCWR_TLOWTHRES_Field is HAL.UInt16;
   subtype AFEC0_TEMPCWR_THIGHTHRES_Field is HAL.UInt16;

   --  Temperature Compare Window Register
   type AFEC0_TEMPCWR_Register is record
      --  Temperature Low Threshold
      TLOWTHRES  : AFEC0_TEMPCWR_TLOWTHRES_Field := 16#0#;
      --  Temperature High Threshold
      THIGHTHRES : AFEC0_TEMPCWR_THIGHTHRES_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_TEMPCWR_Register use record
      TLOWTHRES  at 0 range 0 .. 15;
      THIGHTHRES at 0 range 16 .. 31;
   end record;

   subtype AFEC0_ACR_IBCTL_Field is HAL.UInt2;

   --  Analog Control Register
   type AFEC0_ACR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  AFE Bias Current Control
      IBCTL          : AFEC0_ACR_IBCTL_Field := 16#1#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_ACR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      IBCTL          at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype AFEC0_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type AFEC0_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : AFEC0_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype AFEC0_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protect Status Register
   type AFEC0_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : AFEC0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype AFEC0_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type AFEC0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : AFEC0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AFEC0_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type AFEC0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : AFEC0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFEC0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type AFEC0_PTCR_Register is record
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

   for AFEC0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type AFEC0_PTSR_Register is record
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

   for AFEC0_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-Front-End Controller 0
   type AFEC_Peripheral is record
      --  Control Register
      CR      : aliased AFEC0_CR_Register;
      --  Mode Register
      MR      : aliased AFEC0_MR_Register;
      --  Extended Mode Register
      EMR     : aliased AFEC0_EMR_Register;
      --  Channel Sequence 1 Register
      SEQ1R   : aliased AFEC0_SEQ1R_Register;
      --  Channel Sequence 2 Register
      SEQ2R   : aliased AFEC0_SEQ2R_Register;
      --  Channel Enable Register
      CHER    : aliased AFEC0_CHER_Register;
      --  Channel Disable Register
      CHDR    : aliased AFEC0_CHDR_Register;
      --  Channel Status Register
      CHSR    : aliased AFEC0_CHSR_Register;
      --  Last Converted Data Register
      LCDR    : aliased AFEC0_LCDR_Register;
      --  Interrupt Enable Register
      IER     : aliased AFEC0_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased AFEC0_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased AFEC0_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased AFEC0_ISR_Register;
      --  Overrun Status Register
      OVER    : aliased AFEC0_OVER_Register;
      --  Compare Window Register
      CWR     : aliased AFEC0_CWR_Register;
      --  Channel Gain Register
      CGR     : aliased AFEC0_CGR_Register;
      --  Channel DC Offset Register
      CDOR    : aliased AFEC0_CDOR_Register;
      --  Channel Differential Register
      DIFFR   : aliased AFEC0_DIFFR_Register;
      --  Channel Register Selection
      CSELR   : aliased AFEC0_CSELR_Register;
      --  Channel Data Register
      CDR     : aliased AFEC0_CDR_Register;
      --  Channel Offset Compensation Register
      COCR    : aliased AFEC0_COCR_Register;
      --  Temperature Sensor Mode Register
      TEMPMR  : aliased AFEC0_TEMPMR_Register;
      --  Temperature Compare Window Register
      TEMPCWR : aliased AFEC0_TEMPCWR_Register;
      --  Analog Control Register
      ACR     : aliased AFEC0_ACR_Register;
      --  Write Protect Mode Register
      WPMR    : aliased AFEC0_WPMR_Register;
      --  Write Protect Status Register
      WPSR    : aliased AFEC0_WPSR_Register;
      --  Receive Pointer Register
      RPR     : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR     : aliased AFEC0_RCR_Register;
      --  Receive Next Pointer Register
      RNPR    : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR    : aliased AFEC0_RNCR_Register;
      --  Transfer Control Register
      PTCR    : aliased AFEC0_PTCR_Register;
      --  Transfer Status Register
      PTSR    : aliased AFEC0_PTSR_Register;
   end record
     with Volatile;

   for AFEC_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      MR      at 16#4# range 0 .. 31;
      EMR     at 16#8# range 0 .. 31;
      SEQ1R   at 16#C# range 0 .. 31;
      SEQ2R   at 16#10# range 0 .. 31;
      CHER    at 16#14# range 0 .. 31;
      CHDR    at 16#18# range 0 .. 31;
      CHSR    at 16#1C# range 0 .. 31;
      LCDR    at 16#20# range 0 .. 31;
      IER     at 16#24# range 0 .. 31;
      IDR     at 16#28# range 0 .. 31;
      IMR     at 16#2C# range 0 .. 31;
      ISR     at 16#30# range 0 .. 31;
      OVER    at 16#4C# range 0 .. 31;
      CWR     at 16#50# range 0 .. 31;
      CGR     at 16#54# range 0 .. 31;
      CDOR    at 16#5C# range 0 .. 31;
      DIFFR   at 16#60# range 0 .. 31;
      CSELR   at 16#64# range 0 .. 31;
      CDR     at 16#68# range 0 .. 31;
      COCR    at 16#6C# range 0 .. 31;
      TEMPMR  at 16#70# range 0 .. 31;
      TEMPCWR at 16#74# range 0 .. 31;
      ACR     at 16#94# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      RPR     at 16#100# range 0 .. 31;
      RCR     at 16#104# range 0 .. 31;
      RNPR    at 16#110# range 0 .. 31;
      RNCR    at 16#114# range 0 .. 31;
      PTCR    at 16#120# range 0 .. 31;
      PTSR    at 16#124# range 0 .. 31;
   end record;

   --  Analog-Front-End Controller 0
   AFEC0_Periph : aliased AFEC_Peripheral
     with Import, Address => System'To_Address (16#400B0000#);

   --  Analog-Front-End Controller 1
   AFEC1_Periph : aliased AFEC_Peripheral
     with Import, Address => System'To_Address (16#400B4000#);

end SAM_SVD.AFEC;
