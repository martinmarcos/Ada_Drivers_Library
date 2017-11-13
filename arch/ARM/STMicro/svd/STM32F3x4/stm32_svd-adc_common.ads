--  This spec has been automatically generated from STM32F3x4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ADC_Common is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADC Common status register
   type ADC1_CSR_Register is record
      --  Read-only. Master ADC ready
      ADRDY_MST      : Boolean;
      --  Read-only. End of Sampling phase flag of the master ADC
      EOSMP_MST      : Boolean;
      --  Read-only. End of regular conversion of the master ADC
      EOC_MST        : Boolean;
      --  Read-only. End of regular sequence flag of the master ADC
      EOS_MST        : Boolean;
      --  Read-only. Overrun flag of the master ADC
      OVR_MST        : Boolean;
      --  Read-only. End of injected conversion flag of the master ADC
      JEOC_MST       : Boolean;
      --  Read-only. End of injected sequence flag of the master ADC
      JEOS_MST       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the master ADC
      AWD1_MST       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the master ADC
      AWD2_MST       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the master ADC
      AWD3_MST       : Boolean;
      --  Read-only. Injected Context Queue Overflow flag of the master ADC
      JQOVF_MST      : Boolean;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Slave ADC ready
      ADRDY_SLV      : Boolean;
      --  Read-only. End of Sampling phase flag of the slave ADC
      EOSMP_SLV      : Boolean;
      --  Read-only. End of regular conversion of the slave ADC
      EOC_SLV        : Boolean;
      --  Read-only. End of regular sequence flag of the slave ADC
      EOS_SLV        : Boolean;
      --  Read-only. Overrun flag of the slave ADC
      OVR_SLV        : Boolean;
      --  Read-only. End of injected conversion flag of the slave ADC
      JEOC_SLV       : Boolean;
      --  Read-only. End of injected sequence flag of the slave ADC
      JEOS_SLV       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the slave ADC
      AWD1_SLV       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the slave ADC
      AWD2_SLV       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the slave ADC
      AWD3_SLV       : Boolean;
      --  Read-only. Injected Context Queue Overflow flag of the slave ADC
      JQOVF_SLV      : Boolean;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_CSR_Register use record
      ADRDY_MST      at 0 range 0 .. 0;
      EOSMP_MST      at 0 range 1 .. 1;
      EOC_MST        at 0 range 2 .. 2;
      EOS_MST        at 0 range 3 .. 3;
      OVR_MST        at 0 range 4 .. 4;
      JEOC_MST       at 0 range 5 .. 5;
      JEOS_MST       at 0 range 6 .. 6;
      AWD1_MST       at 0 range 7 .. 7;
      AWD2_MST       at 0 range 8 .. 8;
      AWD3_MST       at 0 range 9 .. 9;
      JQOVF_MST      at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      ADRDY_SLV      at 0 range 16 .. 16;
      EOSMP_SLV      at 0 range 17 .. 17;
      EOC_SLV        at 0 range 18 .. 18;
      EOS_SLV        at 0 range 19 .. 19;
      OVR_SLV        at 0 range 20 .. 20;
      JEOC_SLV       at 0 range 21 .. 21;
      JEOS_SLV       at 0 range 22 .. 22;
      AWD1_SLV       at 0 range 23 .. 23;
      AWD2_SLV       at 0 range 24 .. 24;
      AWD3_SLV       at 0 range 25 .. 25;
      JQOVF_SLV      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ADC1_CCR_DUAL_Field is HAL.UInt5;
   subtype ADC1_CCR_DELAY_Field is HAL.UInt4;
   subtype ADC1_CCR_MDMA_Field is HAL.UInt2;
   subtype ADC1_CCR_CKMODE_Field is HAL.UInt2;

   --  ADC common control register
   type ADC1_CCR_Register is record
      --  Dual ADC mode selection
      DUAL           : ADC1_CCR_DUAL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Delay between 2 sampling phases
      DELAY_k        : ADC1_CCR_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  DMA configuration (for dual ADC mode)
      DMACFG         : Boolean := False;
      --  Direct memory access mode for dual ADC mode
      MDMA           : ADC1_CCR_MDMA_Field := 16#0#;
      --  ADC clock mode
      CKMODE         : ADC1_CCR_CKMODE_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  VREFINT enable
      VREFEN         : Boolean := False;
      --  Temperature sensor enable
      TSEN           : Boolean := False;
      --  VBAT enable
      VBATEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_CCR_Register use record
      DUAL           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DELAY_k        at 0 range 8 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      DMACFG         at 0 range 13 .. 13;
      MDMA           at 0 range 14 .. 15;
      CKMODE         at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      TSEN           at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADC1_CDR_RDATA_MST_Field is HAL.UInt16;
   subtype ADC1_CDR_RDATA_SLV_Field is HAL.UInt16;

   --  ADC common regular data register for dual mode
   type ADC1_CDR_Register is record
      --  Read-only. Regular data of the master ADC
      RDATA_MST : ADC1_CDR_RDATA_MST_Field;
      --  Read-only. Regular data of the slave ADC
      RDATA_SLV : ADC1_CDR_RDATA_SLV_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_CDR_Register use record
      RDATA_MST at 0 range 0 .. 15;
      RDATA_SLV at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC common registers
   type ADC_Common_Peripheral is record
      --  ADC Common status register
      ADC1_CSR : aliased ADC1_CSR_Register;
      --  ADC common control register
      ADC1_CCR : aliased ADC1_CCR_Register;
      --  ADC common regular data register for dual mode
      ADC1_CDR : aliased ADC1_CDR_Register;
   end record
     with Volatile;

   for ADC_Common_Peripheral use record
      ADC1_CSR at 16#0# range 0 .. 31;
      ADC1_CCR at 16#8# range 0 .. 31;
      ADC1_CDR at 16#C# range 0 .. 31;
   end record;

   --  ADC common registers
   ADC_Common_Periph : aliased ADC_Common_Peripheral
     with Import, Address => System'To_Address (16#50000300#);

end STM32_SVD.ADC_Common;
