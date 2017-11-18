--

--  This spec has been automatically generated from SN32F770.svd

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
      --  AIN5(Internal reference voltage 4.5V/3V/2V)
      ADM_CHS_Field_5,
      --  VDD
      ADM_CHS_Field_6,
      --  VSS
      ADM_CHS_Field_7)
     with Size => 3;
   for ADM_CHS_Field use
     (ADM_CHS_Field_0 => 0,
      ADM_CHS_Field_1 => 1,
      ADM_CHS_Field_2 => 2,
      ADM_CHS_Field_3 => 3,
      ADM_CHS_Field_4 => 4,
      ADM_CHS_Field_5 => 5,
      ADM_CHS_Field_6 => 6,
      ADM_CHS_Field_7 => 7);

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
      ADM_ADLEN_Field_8-BIT,
      --  12-bit ADB
      ADM_ADLEN_Field_12-BIT)
     with Size => 1;
   for ADM_ADLEN_Field use
     (ADM_ADLEN_Field_8-BIT => 0,
      ADM_ADLEN_Field_12-BIT => 1);

   --  ADC clock source divider
   type ADM_ADCKS_Field is
     (
      --  ADC_PCLK/1
      ADM_ADCKS_Field_000B,
      --  ADC_PCLK/2
      ADM_ADCKS_Field_001B,
      --  ADC_PCLK/4
      ADM_ADCKS_Field_010B,
      --  ADC_PCLK/8
      ADM_ADCKS_Field_011B,
      --  ADC_PCLK/16
      ADM_ADCKS_Field_101B,
      --  ADC_PCLK/32
      ADM_ADCKS_Field_110B)
     with Size => 3;
   for ADM_ADCKS_Field use
     (ADM_ADCKS_Field_000B => 0,
      ADM_ADCKS_Field_001B => 1,
      ADM_ADCKS_Field_010B => 2,
      ADM_ADCKS_Field_011B => 3,
      ADM_ADCKS_Field_101B => 5,
      ADM_ADCKS_Field_110B => 6);

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
      Interal Ref. Voltage,
      --  P2.0 acts as AVREFH pin
      External REFERENCE VOLTAGE)
     with Size => 1;
   for ADM_AVREFHSEL_Field use
     (Interal Ref. Voltage => 0,
      External REFERENCE VOLTAGE => 1);

   --  Internal Ref. voltage source
   type ADM_VHS_Field is
     (
      --  Internal 2.0V
      Internal 2.0V,
      --  Internal 3.0V
      Internal 3.0V,
      --  Internal 4.5V
      Internal 4.5V,
      --  VDD
      Vdd)
     with Size => 3;
   for ADM_VHS_Field use
     (Internal 2.0V => 0,
      Internal 3.0V => 1,
      Internal 4.5V => 2,
      Vdd => 7);

   --  Offset:0x00 ADC Management Register
   type ADM_Register is record
      --  ADC input channel
      CHS            : ADM_CHS_Field := NRF_SVD.ADC.ADM_CHS_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  ADC global channel enable
      GCHS           : ADM_GCHS_Field := NRF_SVD.ADC.Disable;
      --  ADC status
      EOC            : ADM_EOC_Field := NRF_SVD.ADC.Busy;
      --  ADC start control
      ADS            : ADM_ADS_Field := NRF_SVD.ADC.Stop;
      --  ADC resolution
      ADLEN          : ADM_ADLEN_Field := NRF_SVD.ADC.ADM_ADLEN_Field_8-BIT;
      --  ADC clock source divider
      ADCKS          : ADM_ADCKS_Field := NRF_SVD.ADC.ADM_ADCKS_Field_000B;
      --  ADC enable
      ADENB          : ADM_ADENB_Field := NRF_SVD.ADC.Disable;
      --  ADC high reference voltage source
      AVREFHSEL      : ADM_AVREFHSEL_Field :=
                        NRF_SVD.ADC.Interal Ref. Voltage;
      --  Internal Ref. voltage source
      VHS            : ADM_VHS_Field := NRF_SVD.ADC.Internal 2.0V;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADM_Register use record
      CHS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GCHS           at 0 range 4 .. 4;
      EOC            at 0 range 5 .. 5;
      ADS            at 0 range 6 .. 6;
      ADLEN          at 0 range 7 .. 7;
      ADCKS          at 0 range 8 .. 10;
      ADENB          at 0 range 11 .. 11;
      AVREFHSEL      at 0 range 12 .. 12;
      VHS            at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADB_ADB_Field is HAL.UInt12;

   --  Offset:0x04 ADC Data Register
   type ADB_Register is record
      --  Read-only. ADB11~ADB4 bits for 8-bit ADC, ADB11~ADB0 bits for 12-bit
      --  ADC
      ADB            : ADB_ADB_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADB_Register use record
      ADB            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
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

   --  Offset:0x0C ADC Interrupt Enable Register
   type IE_Register is record
      --  AIN0 interrupt enable
      IE0           : IE_IE0_Field := NRF_SVD.ADC.Disable;
      --  AIN1 interrupt enable
      IE1           : IE_IE1_Field := NRF_SVD.ADC.Disable;
      --  AIN2 interrupt enable
      IE2           : IE_IE2_Field := NRF_SVD.ADC.Disable;
      --  AIN3 interrupt enable
      IE3           : IE_IE3_Field := NRF_SVD.ADC.Disable;
      --  AIN4 interrupt enable
      IE4           : IE_IE4_Field := NRF_SVD.ADC.Disable;
      --  AIN5 interrupt enable
      IE5           : IE_IE5_Field := NRF_SVD.ADC.Disable;
      --  AIN6 interrupt enable
      IE6           : IE_IE6_Field := NRF_SVD.ADC.Disable;
      --  AIN7 interrupt enable
      IE7           : IE_IE7_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      IE0           at 0 range 0 .. 0;
      IE1           at 0 range 1 .. 1;
      IE2           at 0 range 2 .. 2;
      IE3           at 0 range 3 .. 3;
      IE4           at 0 range 4 .. 4;
      IE5           at 0 range 5 .. 5;
      IE6           at 0 range 6 .. 6;
      IE7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AIN0 interrupt flag
   type RIS_EOCIF0_Field is
     (
      --  No interrupt on AIN0
      No INTERRUPT,
      --  AIN0 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF0_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN1 interrupt flag
   type RIS_EOCIF1_Field is
     (
      --  No interrupt on AIN1
      No INTERRUPT,
      --  AIN1 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF1_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN2 interrupt flag
   type RIS_EOCIF2_Field is
     (
      --  No interrupt on AIN2
      No INTERRUPT,
      --  AIN2 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF2_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN0 interrupt flag
   type RIS_EOCIF3_Field is
     (
      --  No interrupt on AIN3
      No INTERRUPT,
      --  AIN3 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF3_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN4 interrupt flag
   type RIS_EOCIF4_Field is
     (
      --  No interrupt on AIN4
      No INTERRUPT,
      --  AIN4 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF4_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN5 interrupt flag
   type RIS_EOCIF5_Field is
     (
      --  No interrupt on AIN5
      No INTERRUPT,
      --  AIN5 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF5_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN6 interrupt flag
   type RIS_EOCIF6_Field is
     (
      --  No interrupt on AIN6
      No INTERRUPT,
      --  AIN6 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF6_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN7 interrupt flag
   type RIS_EOCIF7_Field is
     (
      --  No interrupt on AIN7
      No INTERRUPT,
      --  AIN7 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_EOCIF7_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x10 ADC Raw Interrupt Status Register
   type RIS_Register is record
      --  AIN0 interrupt flag
      EOCIF0        : RIS_EOCIF0_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN1 interrupt flag
      EOCIF1        : RIS_EOCIF1_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN2 interrupt flag
      EOCIF2        : RIS_EOCIF2_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN0 interrupt flag
      EOCIF3        : RIS_EOCIF3_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN4 interrupt flag
      EOCIF4        : RIS_EOCIF4_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN5 interrupt flag
      EOCIF5        : RIS_EOCIF5_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN6 interrupt flag
      EOCIF6        : RIS_EOCIF6_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN7 interrupt flag
      EOCIF7        : RIS_EOCIF7_Field := NRF_SVD.ADC.No INTERRUPT;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      EOCIF0        at 0 range 0 .. 0;
      EOCIF1        at 0 range 1 .. 1;
      EOCIF2        at 0 range 2 .. 2;
      EOCIF3        at 0 range 3 .. 3;
      EOCIF4        at 0 range 4 .. 4;
      EOCIF5        at 0 range 5 .. 5;
      EOCIF6        at 0 range 6 .. 6;
      EOCIF7        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC
   type SN_ADC_Peripheral is record
      --  Offset:0x00 ADC Management Register
      ADM : aliased ADM_Register;
      --  Offset:0x04 ADC Data Register
      ADB : aliased ADB_Register;
      --  Offset:0x0C ADC Interrupt Enable Register
      IE  : aliased IE_Register;
      --  Offset:0x10 ADC Raw Interrupt Status Register
      RIS : aliased RIS_Register;
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
