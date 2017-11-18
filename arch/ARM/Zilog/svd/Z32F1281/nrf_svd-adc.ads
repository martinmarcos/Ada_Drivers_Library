--

--  This spec has been automatically generated from Z32F1281.svd

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

   subtype MR_TRGSRC_Field is HAL.UInt3;
   subtype MR_ADCMOD_Field is HAL.UInt2;
   subtype MR_BSTCNT_Field is HAL.UInt3;
   subtype MR_BWAIT_Field is HAL.UInt8;

   --  ADCn Mode Register
   type MR_Register is record
      --  ADC Trigger source sel
      TRGSRC         : MR_TRGSRC_Field := 16#0#;
      --  Trigger sources enable
      TRGEN          : Boolean := False;
      --  ADC convert mode
      ADCMOD         : MR_ADCMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  ADC Enable
      ADCEN          : Boolean := False;
      --  No Burst Mode
      BSTCNT         : MR_BSTCNT_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Burst wait enable
      BWAITEN        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA channel option
      DMACH          : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  burst wait count value
      BWAIT          : MR_BWAIT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      TRGSRC         at 0 range 0 .. 2;
      TRGEN          at 0 range 3 .. 3;
      ADCMOD         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      ADCEN          at 0 range 7 .. 7;
      BSTCNT         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      BWAITEN        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DMACH          at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      BWAIT          at 0 range 24 .. 31;
   end record;

   subtype CSR_CHSEL_Field is HAL.UInt4;

   --  ADCn Channel Select Register
   type CSR_Register is record
      --  channel select
      CHSEL         : CSR_CHSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      CHSEL         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CR1_STSEL_Field is HAL.UInt5;
   subtype CR1_CLKDIV_Field is HAL.UInt7;

   --  ADCn Control Register 1
   type CR1_Register is record
      --  Sampling time selection
      STSEL          : CR1_STSEL_Field := 16#0#;
      --  divided clock inversion
      CLKINVT        : Boolean := False;
      --  ADCuse external clock
      EXTCLK         : Boolean := False;
      --  ADC Power down
      ADCPD          : Boolean := False;
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
      STSEL          at 0 range 0 .. 4;
      CLKINVT        at 0 range 5 .. 5;
      EXTCLK         at 0 range 6 .. 6;
      ADCPD          at 0 range 7 .. 7;
      CLKDIV         at 0 range 8 .. 14;
      ADCPDA         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  TRG0_MP0TRG array element
   subtype TRG0_MP0TRG_Element is HAL.UInt4;

   --  TRG0_MP0TRG array
   type TRG0_MP0TRG_Field_Array is array (1 .. 6) of TRG0_MP0TRG_Element
     with Component_Size => 4, Size => 24;

   --  Type definition for TRG0_MP0TRG
   type TRG0_MP0TRG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MP0TRG as a value
            Val : HAL.UInt24;
         when True =>
            --  MP0TRG as an array
            Arr : TRG0_MP0TRG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for TRG0_MP0TRG_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   subtype TRG0_TRG0EN_Field is HAL.UInt6;

   --  ADC Trigger 0 Channel Register
   type TRG0_Register is record
      --  ADC channel n select for MPWM0 ADC trigger1 operation
      MP0TRG         : TRG0_MP0TRG_Field := (As_Array => False, Val => 16#0#);
      --  MP0TRGn enable
      TRG0EN         : TRG0_TRG0EN_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRG0_Register use record
      MP0TRG         at 0 range 0 .. 23;
      TRG0EN         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  TRG1_MP1TRG array element
   subtype TRG1_MP1TRG_Element is HAL.UInt4;

   --  TRG1_MP1TRG array
   type TRG1_MP1TRG_Field_Array is array (1 .. 6) of TRG1_MP1TRG_Element
     with Component_Size => 4, Size => 24;

   --  Type definition for TRG1_MP1TRG
   type TRG1_MP1TRG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MP1TRG as a value
            Val : HAL.UInt24;
         when True =>
            --  MP1TRG as an array
            Arr : TRG1_MP1TRG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for TRG1_MP1TRG_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   subtype TRG1_TRG1EN_Field is HAL.UInt6;

   --  ADC Trigger 1 Channel Register
   type TRG1_Register is record
      --  ADC channel n select for MPWM1 ADC trigger1 operation
      MP1TRG         : TRG1_MP1TRG_Field := (As_Array => False, Val => 16#0#);
      --  MP1TRGn enable
      TRG1EN         : TRG1_TRG1EN_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRG1_Register use record
      MP1TRG         at 0 range 0 .. 23;
      TRG1EN         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TRG2_T0CH_Field is HAL.UInt4;
   subtype TRG2_T1CH_Field is HAL.UInt4;
   subtype TRG2_EXTCH_Field is HAL.UInt4;

   --  ADC Trigger 2 Channel Register
   type TRG2_Register is record
      --  ADC channel n select for timer0 trigger operation
      T0CH           : TRG2_T0CH_Field := 16#0#;
      --  ADC channel n select for timer1 trigger operation
      T1CH           : TRG2_T1CH_Field := 16#0#;
      --  ADC channel n select for external trigger operation
      EXTCH          : TRG2_EXTCH_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRG2_Register use record
      T0CH           at 0 range 0 .. 3;
      T1CH           at 0 range 4 .. 7;
      EXTCH          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype BCSR_BST1CH_Field is HAL.UInt4;
   subtype BCSR_BST2CH_Field is HAL.UInt4;
   subtype BCSR_BST3CH_Field is HAL.UInt4;
   subtype BCSR_BST4CH_Field is HAL.UInt4;
   subtype BCSR_BST5CH_Field is HAL.UInt4;
   subtype BCSR_BST6CH_Field is HAL.UInt4;
   subtype BCSR_BST7CH_Field is HAL.UInt4;
   subtype BCSR_BST8CH_Field is HAL.UInt4;

   --  ADC Burst Mode Channel select
   type BCSR_Register is record
      --  1st burst mode coversion channel selection
      BST1CH : BCSR_BST1CH_Field := 16#0#;
      --  2nd burst mode coversion channel selection
      BST2CH : BCSR_BST2CH_Field := 16#0#;
      --  3rd burst mode coversion channel selection
      BST3CH : BCSR_BST3CH_Field := 16#0#;
      --  4th burst mode coversion channel selection
      BST4CH : BCSR_BST4CH_Field := 16#0#;
      --  5th burst mode coversion channel selection
      BST5CH : BCSR_BST5CH_Field := 16#0#;
      --  6th burst mode coversion channel selection
      BST6CH : BCSR_BST6CH_Field := 16#0#;
      --  7th burst mode coversion channel selection
      BST7CH : BCSR_BST7CH_Field := 16#0#;
      --  8th burst mode coversion channel selection
      BST8CH : BCSR_BST8CH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCSR_Register use record
      BST1CH at 0 range 0 .. 3;
      BST2CH at 0 range 4 .. 7;
      BST3CH at 0 range 8 .. 11;
      BST4CH at 0 range 12 .. 15;
      BST5CH at 0 range 16 .. 19;
      BST6CH at 0 range 20 .. 23;
      BST7CH at 0 range 24 .. 27;
      BST8CH at 0 range 28 .. 31;
   end record;

   --  ADCn Control Register 2
   type CR2_Register is record
      --  ADC conversion start
      ASTART        : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Write-only. ADC Stop
      ASTOP         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      ASTART        at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      ASTOP         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SR_BSTAT_Field is HAL.UInt3;
   subtype SR_ADCH_Field is HAL.UInt4;
   subtype SR_MPWM0TRG_Field is HAL.UInt6;
   subtype SR_MPWM1TRG_Field is HAL.UInt6;

   --  ADCn Status Register
   type SR_Register is record
      --  ADC single interrupt flag
      SIRQ           : Boolean := False;
      --  ADC continuous interrupt flag
      CIRQ           : Boolean := False;
      --  ADC burst interrupt flag
      BIRQ           : Boolean := False;
      --  ADC Trigger interrupt flag
      TIRQ           : Boolean := False;
      --  DMA received/transfer is done
      DMAIRQ         : Boolean := False;
      --  DMA overrun flag
      DOVRUN         : Boolean := False;
      --  ADC conversion busy flag
      ABUSY          : Boolean := False;
      --  ADC End Flag
      ADEND          : Boolean := False;
      --  Burst mode operation count status
      BSTAT          : SR_BSTAT_Field := 16#0#;
      --  Trigger event status
      TRG            : Boolean := False;
      --  ADC channel bits of present operation
      ADCH           : SR_ADCH_Field := 16#0#;
      --  MPWM0TRG
      MPWM0TRG       : SR_MPWM0TRG_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  MPWM1TRG
      MPWM1TRG       : SR_MPWM1TRG_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      SIRQ           at 0 range 0 .. 0;
      CIRQ           at 0 range 1 .. 1;
      BIRQ           at 0 range 2 .. 2;
      TIRQ           at 0 range 3 .. 3;
      DMAIRQ         at 0 range 4 .. 4;
      DOVRUN         at 0 range 5 .. 5;
      ABUSY          at 0 range 6 .. 6;
      ADEND          at 0 range 7 .. 7;
      BSTAT          at 0 range 8 .. 10;
      TRG            at 0 range 11 .. 11;
      ADCH           at 0 range 12 .. 15;
      MPWM0TRG       at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      MPWM1TRG       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Enable Register
   type IER_Register is record
      --  ADC single conversion intterupt enable
      SIEN          : Boolean := False;
      --  ADC continus conversion interrupt enable
      CIEN          : Boolean := False;
      --  ADC burst conversion interrupt enable
      BIEN          : Boolean := False;
      --  ADC Trigger conversion intterupt enable
      TIEN          : Boolean := False;
      --  DMA done interrupt enable
      DIEN          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      SIEN          at 0 range 0 .. 0;
      CIEN          at 0 range 1 .. 1;
      BIEN          at 0 range 2 .. 2;
      TIEN          at 0 range 3 .. 3;
      DIEN          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDR_ADMACH_Field is HAL.UInt4;
   subtype DDR_ADDMAR_Field is HAL.UInt12;

   --  ADC 0/1/2 DMA Data Register
   type DDR_Register is record
      --  ADC data channel indicator
      ADMACH         : DDR_ADMACH_Field := 16#0#;
      --  ADC conversion result data
      ADDMAR         : DDR_ADDMAR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDR_Register use record
      ADMACH         at 0 range 0 .. 3;
      ADDMAR         at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR_CVAL_Field is HAL.UInt12;
   subtype CCR_CCH_Field is HAL.UInt4;

   --  ADC Channel Compare Control Register
   type CCR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  compare value
      CVAL           : CCR_CVAL_Field := 16#0#;
      --  compare channel select
      CCH            : CCR_CCH_Field := 16#0#;
      --  compare direction(greater/less)
      LTE            : Boolean := False;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Read-only. ADC compare operation enable
      COMPOUT        : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      CVAL           at 0 range 4 .. 15;
      CCH            at 0 range 16 .. 19;
      LTE            at 0 range 20 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      COMPOUT        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  12-BIT A/D CONVERTER
   type ADC_Peripheral is record
      --  ADCn Mode Register
      MR   : aliased MR_Register;
      --  ADCn Channel Select Register
      CSR  : aliased CSR_Register;
      --  ADCn Control Register 1
      CR1  : aliased CR1_Register;
      --  ADC Trigger 0 Channel Register
      TRG0 : aliased TRG0_Register;
      --  ADC Trigger 1 Channel Register
      TRG1 : aliased TRG1_Register;
      --  ADC Trigger 2 Channel Register
      TRG2 : aliased TRG2_Register;
      --  ADC Burst Mode Channel select
      BCSR : aliased BCSR_Register;
      --  ADCn Control Register 2
      CR2  : aliased CR2_Register;
      --  ADCn Status Register
      SR   : aliased SR_Register;
      --  Interrupt Enable Register
      IER  : aliased IER_Register;
      --  ADC 0/1/2 DMA Data Register
      DDR  : aliased DDR_Register;
      --  ADC Channel Compare Control Register
      CCR  : aliased CCR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      CSR  at 16#4# range 0 .. 31;
      CR1  at 16#8# range 0 .. 31;
      TRG0 at 16#C# range 0 .. 31;
      TRG1 at 16#10# range 0 .. 31;
      TRG2 at 16#14# range 0 .. 31;
      BCSR at 16#18# range 0 .. 31;
      CR2  at 16#20# range 0 .. 31;
      SR   at 16#24# range 0 .. 31;
      IER  at 16#28# range 0 .. 31;
      DDR  at 16#2C# range 0 .. 31;
      CCR  at 16#70# range 0 .. 31;
   end record;

   --  12-BIT A/D CONVERTER
   AD0_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4000B000#);

   --  12-BIT A/D CONVERTER
   AD1_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4000B100#);

   --  12-BIT A/D CONVERTER
   AD2_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4000B200#);

end NRF_SVD.ADC;
