--

--  This spec has been automatically generated from AC30M1x64.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_TRGSEL_Field is HAL.UInt2;
   subtype MR_ADMOD_Field is HAL.UInt2;
   subtype MR_SEQCNT_Field is HAL.UInt3;
   subtype MR_STSEL_Field is HAL.UInt5;

   --  ADC Mode Register
   type MR_Register is record
      --  TRGSEL
      TRGSEL         : MR_TRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  ADC convert mode
      ADMOD          : MR_ADMOD_Field := 16#0#;
      --  ARST
      ARST           : Boolean := False;
      --  ADC Enable
      ADEN           : Boolean := False;
      --  SEQCNT
      SEQCNT         : MR_SEQCNT_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  STSEL
      STSEL          : MR_STSEL_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      TRGSEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ADMOD          at 0 range 4 .. 5;
      ARST           at 0 range 6 .. 6;
      ADEN           at 0 range 7 .. 7;
      SEQCNT         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      STSEL          at 0 range 12 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CSCR_CACH_Field is HAL.UInt4;
   subtype CSCR_CSEQN_Field is HAL.UInt3;

   --  Current Sequence/Channel Register
   type CSCR_Register is record
      --  Current Active Channel
      CACH          : CSCR_CACH_Field := 16#0#;
      --  CSEQN
      CSEQN         : CSCR_CSEQN_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSCR_Register use record
      CACH          at 0 range 0 .. 3;
      CSEQN         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CCR_CLKDIV_Field is HAL.UInt7;

   --  Clock Control Register
   type CCR_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  divided clock inversion
      CLKINVT        : Boolean := False;
      --  ADCuse external clock
      EXTCLK         : Boolean := False;
      --  ADC Power down
      ADCPD          : Boolean := False;
      --  ADC clock divider
      CLKDIV         : CCR_CLKDIV_Field := 16#0#;
      --  ADC R-ADC disable to save power
      ADCPDA         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CLKINVT        at 0 range 5 .. 5;
      EXTCLK         at 0 range 6 .. 6;
      ADCPD          at 0 range 7 .. 7;
      CLKDIV         at 0 range 8 .. 14;
      ADCPDA         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  TRG_SEQTRG array element
   subtype TRG_SEQTRG_Element is HAL.UInt4;

   --  TRG_SEQTRG array
   type TRG_SEQTRG_Field_Array is array (0 .. 7) of TRG_SEQTRG_Element
     with Component_Size => 4, Size => 32;

   --  ADC Trigger Selection Register
   type TRG_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQTRG as a value
            Val : HAL.UInt32;
         when True =>
            --  SEQTRG as an array
            Arr : TRG_SEQTRG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TRG_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype SCSR_SEQ0CH_Field is HAL.UInt4;
   subtype SCSR_SEQ1CH_Field is HAL.UInt4;
   subtype SCSR_SEQ2CH_Field is HAL.UInt4;
   subtype SCSR_SEQ3CH_Field is HAL.UInt4;
   subtype SCSR_SEQ4CH_Field is HAL.UInt4;
   subtype SCSR_SEQ5CH_Field is HAL.UInt4;
   subtype SCSR_SEQ6CH_Field is HAL.UInt4;
   subtype SCSR_SEQ7CH_Field is HAL.UInt4;

   --  ADC Sequence Channel Selection Register
   type SCSR_Register is record
      --  1st conversion sequence channel selection
      SEQ0CH : SCSR_SEQ0CH_Field := 16#0#;
      --  2nd conversion sequence channel selection
      SEQ1CH : SCSR_SEQ1CH_Field := 16#0#;
      --  3rd conversion sequence channel selection
      SEQ2CH : SCSR_SEQ2CH_Field := 16#0#;
      --  4th conversion sequence channel selection
      SEQ3CH : SCSR_SEQ3CH_Field := 16#0#;
      --  5th conversion sequence channel selection
      SEQ4CH : SCSR_SEQ4CH_Field := 16#0#;
      --  6th conversion sequence channel selection
      SEQ5CH : SCSR_SEQ5CH_Field := 16#0#;
      --  7th conversion sequence channel selection
      SEQ6CH : SCSR_SEQ6CH_Field := 16#0#;
      --  8th conversion sequence channel selection
      SEQ7CH : SCSR_SEQ7CH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCSR_Register use record
      SEQ0CH at 0 range 0 .. 3;
      SEQ1CH at 0 range 4 .. 7;
      SEQ2CH at 0 range 8 .. 11;
      SEQ3CH at 0 range 12 .. 15;
      SEQ4CH at 0 range 16 .. 19;
      SEQ5CH at 0 range 20 .. 23;
      SEQ6CH at 0 range 24 .. 27;
      SEQ7CH at 0 range 28 .. 31;
   end record;

   --  ADCn Control Register
   type CR_Register is record
      --  ADC conversion start
      ASTART        : Boolean := False;
      --  unspecified
      Reserved_1_6  : HAL.UInt6 := 16#0#;
      --  Write-only. ADC Stop
      ASTOP         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ASTART        at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      ASTOP         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADCn Status Register
   type SR_Register is record
      --  EOCIRQ
      EOCIRQ        : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  EOSIRQ
      EOSIRQ        : Boolean := False;
      --  ADC Trigger interrupt flag
      TRGIRQ        : Boolean := False;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  ADC conversion busy flag
      ABUSY         : Boolean := False;
      --  ADC End Flag
      EOC           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EOCIRQ        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      EOSIRQ        at 0 range 2 .. 2;
      TRGIRQ        at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      ABUSY         at 0 range 6 .. 6;
      EOC           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type IER_Register is record
      --  ADC single conversion interrupt enable
      EOCIRQE       : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  ADC sequence conversion interrupt enable
      EOSIRQE       : Boolean := False;
      --  ADC trigger conversion interrupt enable
      TRGIRQE       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      EOCIRQE       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      EOSIRQE       at 0 range 2 .. 2;
      TRGIRQE       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DR_ADCDATA_Field is HAL.UInt12;

   --  ADC Data Register 0
   type DR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  ADC conversion result data
      ADCDATA        : DR_ADCDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADCDATA        at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  12-BIT A/D CONVERTER
   type AD_Peripheral is record
      --  ADC Mode Register
      MR   : aliased MR_Register;
      --  Current Sequence/Channel Register
      CSCR : aliased CSCR_Register;
      --  Clock Control Register
      CCR  : aliased CCR_Register;
      --  ADC Trigger Selection Register
      TRG  : aliased TRG_Register;
      --  ADC Sequence Channel Selection Register
      SCSR : aliased SCSR_Register;
      --  ADCn Control Register
      CR   : aliased CR_Register;
      --  ADCn Status Register
      SR   : aliased SR_Register;
      --  Interrupt Enable Register
      IER  : aliased IER_Register;
      --  ADC Data Register 0
      DR0  : aliased DR_Register;
      --  ADC Data Register 1
      DR1  : aliased DR_Register;
      --  ADC Data Register 2
      DR2  : aliased DR_Register;
      --  ADC Data Register 3
      DR3  : aliased DR_Register;
      --  ADC Data Register 4
      DR4  : aliased DR_Register;
      --  ADC Data Register 5
      DR5  : aliased DR_Register;
      --  ADC Data Register 6
      DR6  : aliased DR_Register;
      --  ADC Data Register 7
      DR7  : aliased DR_Register;
   end record
     with Volatile;

   for AD_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      CSCR at 16#4# range 0 .. 31;
      CCR  at 16#8# range 0 .. 31;
      TRG  at 16#C# range 0 .. 31;
      SCSR at 16#18# range 0 .. 31;
      CR   at 16#20# range 0 .. 31;
      SR   at 16#24# range 0 .. 31;
      IER  at 16#28# range 0 .. 31;
      DR0  at 16#30# range 0 .. 31;
      DR1  at 16#34# range 0 .. 31;
      DR2  at 16#38# range 0 .. 31;
      DR3  at 16#3C# range 0 .. 31;
      DR4  at 16#40# range 0 .. 31;
      DR5  at 16#44# range 0 .. 31;
      DR6  at 16#48# range 0 .. 31;
      DR7  at 16#4C# range 0 .. 31;
   end record;

   --  12-BIT A/D CONVERTER
   AD_Periph : aliased AD_Peripheral
     with Import, Address => System'To_Address (16#4000B000#);

end NRF_SVD.ADC;
