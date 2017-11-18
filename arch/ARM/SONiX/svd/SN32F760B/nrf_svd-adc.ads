--

--  This spec has been automatically generated from SN32F760B.svd

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

   --  ADC input channel
   type ADM_CHS_Field is
     (
      --  AIN0
      ADM_CHS_Field_0,
      --  AIN1
      ADM_CHS_Field_1,
      --  AIN2
      ADM_CHS_Field_2,
      --  AIN3
      ADM_CHS_Field_3,
      --  AIN4
      ADM_CHS_Field_4,
      --  AIN5
      ADM_CHS_Field_5,
      --  AIN6
      ADM_CHS_Field_6,
      --  AIN7
      ADM_CHS_Field_7,
      --  AIN8
      ADM_CHS_Field_8,
      --  AIN9
      ADM_CHS_Field_9,
      --  AIN10
      ADM_CHS_Field_10,
      --  AIN11
      ADM_CHS_Field_11,
      --  AIN12
      ADM_CHS_Field_12,
      --  AIN13
      ADM_CHS_Field_13,
      --  AIN14
      ADM_CHS_Field_14,
      --  AIN15
      ADM_CHS_Field_15,
      --  AIN16(Internal reference voltage 4.5V/3V/2V)
      ADM_CHS_Field_16,
      --  AIN17(VDD)
      ADM_CHS_Field_17,
      --  AIN18(VSS)
      ADM_CHS_Field_18)
     with Size => 5;
   for ADM_CHS_Field use
     (ADM_CHS_Field_0 => 0,
      ADM_CHS_Field_1 => 1,
      ADM_CHS_Field_2 => 2,
      ADM_CHS_Field_3 => 3,
      ADM_CHS_Field_4 => 4,
      ADM_CHS_Field_5 => 5,
      ADM_CHS_Field_6 => 6,
      ADM_CHS_Field_7 => 7,
      ADM_CHS_Field_8 => 8,
      ADM_CHS_Field_9 => 9,
      ADM_CHS_Field_10 => 10,
      ADM_CHS_Field_11 => 11,
      ADM_CHS_Field_12 => 12,
      ADM_CHS_Field_13 => 13,
      ADM_CHS_Field_14 => 14,
      ADM_CHS_Field_15 => 15,
      ADM_CHS_Field_16 => 16,
      ADM_CHS_Field_17 => 17,
      ADM_CHS_Field_18 => 18);

   --  ADC status
   type ADM_EOC_Field is
     (
      --  ADC processing
      Busy,
      --  End of conversion
      End_k)
     with Size => 1;
   for ADM_EOC_Field use
     (Busy => 0,
      End_k => 1);

   --  ADC start control
   type ADM_ADS_Field is
     (
      --  ADC stopped
      Stop,
      --  Start ADC conversion
      Start)
     with Size => 1;
   for ADM_ADS_Field use
     (Stop => 0,
      Start => 1);

   --  ADC resolution
   type ADM_ADLEN_Field is
     (
      --  8-bit ADB
      ADM_ADLEN_Field_0,
      --  12-bit ADB
      ADM_ADLEN_Field_1)
     with Size => 1;
   for ADM_ADLEN_Field use
     (ADM_ADLEN_Field_0 => 0,
      ADM_ADLEN_Field_1 => 1);

   --  ADC clock source divider
   type ADM_ADCKS_Field is
     (
      --  ADC_PCLK/1
      ADM_ADCKS_Field_000,
      --  ADC_PCLK/2
      ADM_ADCKS_Field_001,
      --  ADC_PCLK/4
      ADM_ADCKS_Field_010,
      --  ADC_PCLK/8
      ADM_ADCKS_Field_011,
      --  ADC_PCLK/16
      ADM_ADCKS_Field_101,
      --  ADC_PCLK/32
      ADM_ADCKS_Field_110)
     with Size => 3;
   for ADM_ADCKS_Field use
     (ADM_ADCKS_Field_000 => 0,
      ADM_ADCKS_Field_001 => 1,
      ADM_ADCKS_Field_010 => 2,
      ADM_ADCKS_Field_011 => 3,
      ADM_ADCKS_Field_101 => 5,
      ADM_ADCKS_Field_110 => 6);

   --  ADC enable
   type ADM_ADENB_Field is
     (
      --  Disable ADC
      Disable,
      --  Enable ADC
      Enable)
     with Size => 1;
   for ADM_ADENB_Field use
     (Disable => 0,
      Enable => 1);

   --  ADC high reference voltage source
   type ADM_AVREFHSEL_Field is
     (
      --  P2.0 acts as GPIO or AIN0 pin
      Interal Vdd,
      --  P2.0 acts as AVREFH pin
      External REFERENCE VOLTAGE)
     with Size => 1;
   for ADM_AVREFHSEL_Field use
     (Interal Vdd => 0,
      External REFERENCE VOLTAGE => 1);

   --  Internal reference voltage level selection
   type ADM_VHS_Field is
     (
      --  Internal 2.0V
      ADM_VHS_Field_000,
      --  Internal 3.0V
      ADM_VHS_Field_001,
      --  Internal 4.5V
      ADM_VHS_Field_010,
      --  Internal VDD
      ADM_VHS_Field_111)
     with Size => 3;
   for ADM_VHS_Field use
     (ADM_VHS_Field_000 => 0,
      ADM_VHS_Field_001 => 1,
      ADM_VHS_Field_010 => 2,
      ADM_VHS_Field_111 => 7);

   --  ADC global channel enable
   type ADM_GCHS_Field is
     (
      --  Disable AIN channel
      Disable,
      --  Enable AIN channel
      Enable)
     with Size => 1;
   for ADM_GCHS_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 ADC Management Register
   type ADM_Register is record
      --  ADC input channel
      CHS            : ADM_CHS_Field := NRF_SVD.ADC.ADM_CHS_Field_0;
      --  ADC status
      EOC            : ADM_EOC_Field := NRF_SVD.ADC.Busy;
      --  ADC start control
      ADS            : ADM_ADS_Field := NRF_SVD.ADC.Stop;
      --  ADC resolution
      ADLEN          : ADM_ADLEN_Field := NRF_SVD.ADC.ADM_ADLEN_Field_0;
      --  ADC clock source divider
      ADCKS          : ADM_ADCKS_Field := NRF_SVD.ADC.ADM_ADCKS_Field_000;
      --  ADC enable
      ADENB          : ADM_ADENB_Field := NRF_SVD.ADC.Disable;
      --  ADC high reference voltage source
      AVREFHSEL      : ADM_AVREFHSEL_Field := NRF_SVD.ADC.Interal Vdd;
      --  Internal reference voltage level selection
      VHS            : ADM_VHS_Field := NRF_SVD.ADC.ADM_VHS_Field_000;
      --  ADC global channel enable
      GCHS           : ADM_GCHS_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADM_Register use record
      CHS            at 0 range 0 .. 4;
      EOC            at 0 range 5 .. 5;
      ADS            at 0 range 6 .. 6;
      ADLEN          at 0 range 7 .. 7;
      ADCKS          at 0 range 8 .. 10;
      ADENB          at 0 range 11 .. 11;
      AVREFHSEL      at 0 range 12 .. 12;
      VHS            at 0 range 13 .. 15;
      GCHS           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  AIN0 interrupt enable
   type IE_IE0_Field is
     (
      --  Disable AIN0 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN0 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE0_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN1 interrupt enable
   type IE_IE1_Field is
     (
      --  Disable AIN1 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN1 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE1_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN2 interrupt enable
   type IE_IE2_Field is
     (
      --  Disable AIN2 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN2 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE2_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN3 interrupt enable
   type IE_IE3_Field is
     (
      --  Disable AIN3 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN3 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE3_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN4 interrupt enable
   type IE_IE4_Field is
     (
      --  Disable AIN4 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN4 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE4_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN5 interrupt enable
   type IE_IE5_Field is
     (
      --  Disable AIN5 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN5 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE5_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN6 interrupt enable
   type IE_IE6_Field is
     (
      --  Disable AIN6 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN6 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE6_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN7 interrupt enable
   type IE_IE7_Field is
     (
      --  Disable AIN7 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN7 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE7_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN8 interrupt enable
   type IE_IE8_Field is
     (
      --  Disable AIN8 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN8 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE8_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN9 interrupt enable
   type IE_IE9_Field is
     (
      --  Disable AIN9 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN9 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE9_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN10 interrupt enable
   type IE_IE10_Field is
     (
      --  Disable AIN10 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN10 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE10_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN11 interrupt enable
   type IE_IE11_Field is
     (
      --  Disable AIN11 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN11 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE11_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN12 interrupt enable
   type IE_IE12_Field is
     (
      --  Disable AIN12 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN12 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE12_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN13 interrupt enable
   type IE_IE13_Field is
     (
      --  Disable AIN13 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN13 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE13_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN14 interrupt enable
   type IE_IE14_Field is
     (
      --  Disable AIN14 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN14 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE14_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN15 interrupt enable
   type IE_IE15_Field is
     (
      --  Disable AIN15 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN15 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE15_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN16 interrupt enable
   type IE_IE16_Field is
     (
      --  Disable AIN16 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN16 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE16_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN17 interrupt enable
   type IE_IE17_Field is
     (
      --  Disable AIN17 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN17 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE17_Field use
     (Disable => 0,
      Enable => 1);

   --  AIN18 interrupt enable
   type IE_IE18_Field is
     (
      --  Disable AIN18 interrupt
      Disable,
      --  ADC interrupt is triggered when AIN18 completes ADC conversion
      Enable)
     with Size => 1;
   for IE_IE18_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x0C ADC Interrupt Enable Register
   type IE_Register is record
      --  AIN0 interrupt enable
      IE0            : IE_IE0_Field := NRF_SVD.ADC.Disable;
      --  AIN1 interrupt enable
      IE1            : IE_IE1_Field := NRF_SVD.ADC.Disable;
      --  AIN2 interrupt enable
      IE2            : IE_IE2_Field := NRF_SVD.ADC.Disable;
      --  AIN3 interrupt enable
      IE3            : IE_IE3_Field := NRF_SVD.ADC.Disable;
      --  AIN4 interrupt enable
      IE4            : IE_IE4_Field := NRF_SVD.ADC.Disable;
      --  AIN5 interrupt enable
      IE5            : IE_IE5_Field := NRF_SVD.ADC.Disable;
      --  AIN6 interrupt enable
      IE6            : IE_IE6_Field := NRF_SVD.ADC.Disable;
      --  AIN7 interrupt enable
      IE7            : IE_IE7_Field := NRF_SVD.ADC.Disable;
      --  AIN8 interrupt enable
      IE8            : IE_IE8_Field := NRF_SVD.ADC.Disable;
      --  AIN9 interrupt enable
      IE9            : IE_IE9_Field := NRF_SVD.ADC.Disable;
      --  AIN10 interrupt enable
      IE10           : IE_IE10_Field := NRF_SVD.ADC.Disable;
      --  AIN11 interrupt enable
      IE11           : IE_IE11_Field := NRF_SVD.ADC.Disable;
      --  AIN12 interrupt enable
      IE12           : IE_IE12_Field := NRF_SVD.ADC.Disable;
      --  AIN13 interrupt enable
      IE13           : IE_IE13_Field := NRF_SVD.ADC.Disable;
      --  AIN14 interrupt enable
      IE14           : IE_IE14_Field := NRF_SVD.ADC.Disable;
      --  AIN15 interrupt enable
      IE15           : IE_IE15_Field := NRF_SVD.ADC.Disable;
      --  AIN16 interrupt enable
      IE16           : IE_IE16_Field := NRF_SVD.ADC.Disable;
      --  AIN17 interrupt enable
      IE17           : IE_IE17_Field := NRF_SVD.ADC.Disable;
      --  AIN18 interrupt enable
      IE18           : IE_IE18_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      IE0            at 0 range 0 .. 0;
      IE1            at 0 range 1 .. 1;
      IE2            at 0 range 2 .. 2;
      IE3            at 0 range 3 .. 3;
      IE4            at 0 range 4 .. 4;
      IE5            at 0 range 5 .. 5;
      IE6            at 0 range 6 .. 6;
      IE7            at 0 range 7 .. 7;
      IE8            at 0 range 8 .. 8;
      IE9            at 0 range 9 .. 9;
      IE10           at 0 range 10 .. 10;
      IE11           at 0 range 11 .. 11;
      IE12           at 0 range 12 .. 12;
      IE13           at 0 range 13 .. 13;
      IE14           at 0 range 14 .. 14;
      IE15           at 0 range 15 .. 15;
      IE16           at 0 range 16 .. 16;
      IE17           at 0 range 17 .. 17;
      IE18           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC
   type SN_ADC_Peripheral is record
      --  Offset:0x00 ADC Management Register
      ADM : aliased ADM_Register;
      --  Offset:0x04 ADC Data Register
      ADB : aliased HAL.UInt32;
      --  Offset:0x0C ADC Interrupt Enable Register
      IE  : aliased IE_Register;
      --  Offset:0x10 ADC Raw Interrupt Status Register
      RIS : aliased HAL.UInt32;
   end record
     with Volatile;

   for SN_ADC_Peripheral use record
      ADM at 16#0# range 0 .. 31;
      ADB at 16#4# range 0 .. 31;
      IE  at 16#C# range 0 .. 31;
      RIS at 16#10# range 0 .. 31;
   end record;

   --  ADC
   SN_ADC_Periph : aliased SN_ADC_Peripheral
     with Import, Address => System'To_Address (16#40026000#);

end NRF_SVD.ADC;
