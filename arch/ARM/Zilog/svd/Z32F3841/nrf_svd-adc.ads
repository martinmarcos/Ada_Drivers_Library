--

--  This spec has been automatically generated from Z32F3841.svd

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
   subtype MR_ADCMOD_Field is HAL.UInt2;
   subtype MR_SEQCNT_Field is HAL.UInt3;
   subtype MR_STSEL_Field is HAL.UInt5;

   --  ADCn Mode Register
   type MR_Register is record
      --  ADC Trigger source sel
      TRGSEL         : MR_TRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  ADC convert mode
      ADCMOD         : MR_ADCMOD_Field := 16#0#;
      --  Stop at end of sequence
      ARST           : Boolean := False;
      --  ADC Enable
      ADEN           : Boolean := False;
      --  Sequence count
      SEQCNT         : MR_SEQCNT_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Sampling Time Selection
      STSEL          : MR_STSEL_Field := 16#0#;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  DMA Channel option
      DMACH          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      TRGSEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ADCMOD         at 0 range 4 .. 5;
      ARST           at 0 range 6 .. 6;
      ADEN           at 0 range 7 .. 7;
      SEQCNT         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      STSEL          at 0 range 12 .. 16;
      DMAEN          at 0 range 17 .. 17;
      DMACH          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CSCR_CACH_Field is HAL.UInt4;
   subtype CSCR_CSEQN_Field is HAL.UInt3;

   --  ADCn Current Sequence/Channel Register
   type CSCR_Register is record
      --  Read-only. Current Active Channel
      CACH          : CSCR_CACH_Field := 16#0#;
      --  Current Sequence Number
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

   subtype CR1_CLKDIV_Field is HAL.UInt7;

   --  ADCn Clock Control Register
   type CR1_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  divided clock inversion
      CLKINVT        : Boolean := False;
      --  ADCuse external clock
      EXTCLK         : Boolean := False;
      --  ADC Power down
      ADCPD          : Boolean := True;
      --  ADC clock divider
      CLKDIV         : CR1_CLKDIV_Field := 16#0#;
      --  ADC R-ADC disable to save power
      ADCPDA         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CLKINVT        at 0 range 5 .. 5;
      EXTCLK         at 0 range 6 .. 6;
      ADCPD          at 0 range 7 .. 7;
      CLKDIV         at 0 range 8 .. 14;
      ADCPDA         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRG_SEQTRG0_Field is HAL.UInt3;
   subtype TRG_SEQTRG1_Field is HAL.UInt3;
   subtype TRG_SEQTRG2_Field is HAL.UInt3;
   subtype TRG_SEQTRG3_Field is HAL.UInt3;
   subtype TRG_SEQTRG4_Field is HAL.UInt3;
   subtype TRG_SEQTRG5_Field is HAL.UInt3;
   subtype TRG_SEQTRG6_Field is HAL.UInt3;
   subtype TRG_SEQTRG7_Field is HAL.UInt3;

   --  ADC Trigger Selection Register
   type TRG_Register is record
      --  Sequence Trigger 0
      SEQTRG0        : TRG_SEQTRG0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Sequence Trigger 1
      SEQTRG1        : TRG_SEQTRG1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Sequence Trigger 2
      SEQTRG2        : TRG_SEQTRG2_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Sequence Trigger 3
      SEQTRG3        : TRG_SEQTRG3_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Sequence Trigger 4
      SEQTRG4        : TRG_SEQTRG4_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Sequence Trigger 5
      SEQTRG5        : TRG_SEQTRG5_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Sequence Trigger 6
      SEQTRG6        : TRG_SEQTRG6_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Sequence Trigger 7
      SEQTRG7        : TRG_SEQTRG7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRG_Register use record
      SEQTRG0        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SEQTRG1        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEQTRG2        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SEQTRG3        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SEQTRG4        at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SEQTRG5        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SEQTRG6        at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SEQTRG7        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SCSR_SEQ0CH_Field is HAL.UInt4;
   subtype SCSR_SEQ1CH_Field is HAL.UInt4;
   subtype SCSR_SEQ2CH_Field is HAL.UInt4;
   subtype SCSR_SEQ3CH_Field is HAL.UInt4;
   subtype SCSR_SEQ4CH_Field is HAL.UInt4;
   subtype SCSR_SEQ5CH_Field is HAL.UInt4;
   subtype SCSR_SEQ6CH_Field is HAL.UInt4;
   subtype SCSR_SEQ7CH_Field is HAL.UInt4;

   --  ADC Sequence Channel select
   type SCSR_Register is record
      --  1st sequence coversion channel selection
      SEQ0CH : SCSR_SEQ0CH_Field := 16#0#;
      --  2nd sequence coversion channel selection
      SEQ1CH : SCSR_SEQ1CH_Field := 16#0#;
      --  3rd sequence coversion channel selection
      SEQ2CH : SCSR_SEQ2CH_Field := 16#0#;
      --  4th sequence coversion channel selection
      SEQ3CH : SCSR_SEQ3CH_Field := 16#0#;
      --  5th sequence coversion channel selection
      SEQ4CH : SCSR_SEQ4CH_Field := 16#0#;
      --  6th sequence coversion channel selection
      SEQ5CH : SCSR_SEQ5CH_Field := 16#0#;
      --  7th sequence coversion channel selection
      SEQ6CH : SCSR_SEQ6CH_Field := 16#0#;
      --  8th sequence coversion channel selection
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
      START         : Boolean := False;
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
      START         at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      ASTOP         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC Status Register
   type SR_Register is record
      --  Each conversion in sequence interrupt flag
      EOCIRQ        : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  End of Sequence interrupt flag
      EOSIRQ        : Boolean := False;
      --  ADC Trigger interrupt flag
      TRGIRQ        : Boolean := False;
      --  DMA received/transfer is done
      DMAIRQ        : Boolean := False;
      --  Read-only. DMA overrun flag
      DOVRUN        : Boolean := False;
      --  Read-only. ADC conversion busy flag
      ABUSY         : Boolean := False;
      --  Read-only. End of Conversion Flag
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
      DMAIRQ        at 0 range 4 .. 4;
      DOVRUN        at 0 range 5 .. 5;
      ABUSY         at 0 range 6 .. 6;
      EOC           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type IER_Register is record
      --  Conversion Complete interrupt enable
      EOCIRQE       : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  ADC End of Sequence interrupt enable
      EOSIRQE       : Boolean := False;
      --  ADC Trigger conversion intterupt enable
      TRGIRQE       : Boolean := False;
      --  DMA done interrupt enable
      DMAIRQE       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      EOCIRQE       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      EOSIRQE       at 0 range 2 .. 2;
      TRGIRQE       at 0 range 3 .. 3;
      DMAIRQE       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDR_ADMACH_Field is HAL.UInt4;
   subtype DDR_ADDMAR_Field is HAL.UInt12;

   --  ADC DMA Data Register
   type DDR_Register is record
      --  Read-only. ADC data channel indicator
      ADMACH         : DDR_ADMACH_Field;
      --  Read-only. ADC conversion result data
      ADDMAR         : DDR_ADDMAR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDR_Register use record
      ADMACH         at 0 range 0 .. 3;
      ADDMAR         at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DR_ADCDATA_Field is HAL.UInt12;

   --  ADC Sequence Data Register 1
   type DR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. ADC Sequence Data
      ADCDATA        : DR_ADCDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
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
   type ADC_Peripheral is record
      --  ADCn Mode Register
      MR   : aliased MR_Register;
      --  ADCn Current Sequence/Channel Register
      CSCR : aliased CSCR_Register;
      --  ADCn Clock Control Register
      CR1  : aliased CR1_Register;
      --  ADC Trigger Selection Register
      TRG  : aliased TRG_Register;
      --  ADC Sequence Channel select
      SCSR : aliased SCSR_Register;
      --  ADCn Control Register
      CR   : aliased CR_Register;
      --  ADC Status Register
      SR   : aliased SR_Register;
      --  Interrupt Enable Register
      IER  : aliased IER_Register;
      --  ADC DMA Data Register
      DDR  : aliased DDR_Register;
      --  ADC Sequence Data Register 1
      DR0  : aliased DR_Register;
      --  ADC Sequence Data Register 2
      DR1  : aliased DR_Register;
      --  ADC Sequence Data Register 3
      DR2  : aliased DR_Register;
      --  ADC Sequence Data Register 4
      DR3  : aliased DR_Register;
      --  ADC Sequence Data Register 5
      DR4  : aliased DR_Register;
      --  ADC Sequence Data Register 6
      DR5  : aliased DR_Register;
      --  ADC Sequence Data Register 7
      DR6  : aliased DR_Register;
      --  ADC Sequence Data Register 8
      DR7  : aliased DR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      CSCR at 16#4# range 0 .. 31;
      CR1  at 16#8# range 0 .. 31;
      TRG  at 16#C# range 0 .. 31;
      SCSR at 16#18# range 0 .. 31;
      CR   at 16#20# range 0 .. 31;
      SR   at 16#24# range 0 .. 31;
      IER  at 16#28# range 0 .. 31;
      DDR  at 16#2C# range 0 .. 31;
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
   AD0_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4000B000#);

   --  12-BIT A/D CONVERTER
   AD1_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4000B100#);

end NRF_SVD.ADC;
