--

--  This spec has been automatically generated from SN32F240.svd

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
      --  Temperature sensor
      ADM_CHS_Field_14)
     with Size => 4;
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
      ADM_CHS_Field_14 => 14);

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

   --  Temperature sensor enable bit
   type ADM_TSENB_Field is
     (
      --  Disable Temperature sensor
      Disable,
      --  Enable Temperature sensor
      Enable)
     with Size => 1;
   for ADM_TSENB_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 ADC Management Register
   type ADM_Register is record
      --  ADC input channel
      CHS            : ADM_CHS_Field := NRF_SVD.ADC.ADM_CHS_Field_0;
      --  ADC global channel enable
      GCHS           : ADM_GCHS_Field := NRF_SVD.ADC.Disable;
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
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  Temperature sensor enable bit
      TSENB          : ADM_TSENB_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADM_Register use record
      CHS            at 0 range 0 .. 3;
      GCHS           at 0 range 4 .. 4;
      EOC            at 0 range 5 .. 5;
      ADS            at 0 range 6 .. 6;
      ADLEN          at 0 range 7 .. 7;
      ADCKS          at 0 range 8 .. 10;
      ADENB          at 0 range 11 .. 11;
      AVREFHSEL      at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      TSENB          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  P2.0 Control
   type P2CON_P2CON0_Field is
     (
      --  P2.0 can be analog input or digital I/O pin
      Both,
      --  P2.0 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON0_Field use
     (Both => 0,
      Analog => 1);

   --  P2.1 Control
   type P2CON_P2CON1_Field is
     (
      --  P2.1 can be analog input or digital I/O pin
      Both,
      --  P2.1 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON1_Field use
     (Both => 0,
      Analog => 1);

   --  P2.2 Control
   type P2CON_P2CON2_Field is
     (
      --  P2.2 can be analog input or digital I/O pin
      Both,
      --  P2.2 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON2_Field use
     (Both => 0,
      Analog => 1);

   --  P2.3 Control
   type P2CON_P2CON3_Field is
     (
      --  P2.3 can be analog input or digital I/O pin
      Both,
      --  P2.3 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON3_Field use
     (Both => 0,
      Analog => 1);

   --  P2.4 Control
   type P2CON_P2CON4_Field is
     (
      --  P2.4 can be analog input or digital I/O pin
      Both,
      --  P2.4 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON4_Field use
     (Both => 0,
      Analog => 1);

   --  P2.5 Control
   type P2CON_P2CON5_Field is
     (
      --  P2.5 can be analog input or digital I/O pin
      Both,
      --  P2.5 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON5_Field use
     (Both => 0,
      Analog => 1);

   --  P2.6 Control
   type P2CON_P2CON6_Field is
     (
      --  P2.6 can be analog input or digital I/O pin
      Both,
      --  P2.6 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON6_Field use
     (Both => 0,
      Analog => 1);

   --  P2.7 Control
   type P2CON_P2CON7_Field is
     (
      --  P2.7 can be analog input or digital I/O pin
      Both,
      --  P2.7 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON7_Field use
     (Both => 0,
      Analog => 1);

   --  P2.8 Control
   type P2CON_P2CON8_Field is
     (
      --  P2.8 can be analog input or digital I/O pin
      Both,
      --  P2.8 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON8_Field use
     (Both => 0,
      Analog => 1);

   --  P2.9 Control
   type P2CON_P2CON9_Field is
     (
      --  P2.9 can be analog input or digital I/O pin
      Both,
      --  P2.9 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON9_Field use
     (Both => 0,
      Analog => 1);

   --  P2.10 Control
   type P2CON_P2CON10_Field is
     (
      --  P2.10 can be analog input or digital I/O pin
      Both,
      --  P2.10 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON10_Field use
     (Both => 0,
      Analog => 1);

   --  P2.11 Control
   type P2CON_P2CON11_Field is
     (
      --  P2.11 can be analog input or digital I/O pin
      Both,
      --  P2.11 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON11_Field use
     (Both => 0,
      Analog => 1);

   --  P2.12 Control
   type P2CON_P2CON12_Field is
     (
      --  P2.12 can be analog input or digital I/O pin
      Both,
      --  P2.12 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON12_Field use
     (Both => 0,
      Analog => 1);

   --  P2.13 Control
   type P2CON_P2CON13_Field is
     (
      --  P2.13 can be analog input or digital I/O pin
      Both,
      --  P2.13 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON13_Field use
     (Both => 0,
      Analog => 1);

   --  P2.14 Control
   type P2CON_P2CON14_Field is
     (
      --  P2.14 can be analog input or digital I/O pin
      Both,
      --  P2.14 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON14_Field use
     (Both => 0,
      Analog => 1);

   --  P2.15 Control
   type P2CON_P2CON15_Field is
     (
      --  P2.15 can be analog input or digital I/O pin
      Both,
      --  P2.15 is pure analog input, can't be digital I/O pin
      Analog)
     with Size => 1;
   for P2CON_P2CON15_Field use
     (Both => 0,
      Analog => 1);

   --  Offset:0x08 ADC Port 2 Control Register
   type P2CON_Register is record
      --  Read-only. P2.0 Control
      P2CON0         : P2CON_P2CON0_Field;
      --  Read-only. P2.1 Control
      P2CON1         : P2CON_P2CON1_Field;
      --  Read-only. P2.2 Control
      P2CON2         : P2CON_P2CON2_Field;
      --  Read-only. P2.3 Control
      P2CON3         : P2CON_P2CON3_Field;
      --  Read-only. P2.4 Control
      P2CON4         : P2CON_P2CON4_Field;
      --  Read-only. P2.5 Control
      P2CON5         : P2CON_P2CON5_Field;
      --  Read-only. P2.6 Control
      P2CON6         : P2CON_P2CON6_Field;
      --  Read-only. P2.7 Control
      P2CON7         : P2CON_P2CON7_Field;
      --  Read-only. P2.8 Control
      P2CON8         : P2CON_P2CON8_Field;
      --  Read-only. P2.9 Control
      P2CON9         : P2CON_P2CON9_Field;
      --  Read-only. P2.10 Control
      P2CON10        : P2CON_P2CON10_Field;
      --  Read-only. P2.11 Control
      P2CON11        : P2CON_P2CON11_Field;
      --  Read-only. P2.12 Control
      P2CON12        : P2CON_P2CON12_Field;
      --  Read-only. P2.13 Control
      P2CON13        : P2CON_P2CON13_Field;
      --  Read-only. P2.14 Control
      P2CON14        : P2CON_P2CON14_Field;
      --  Read-only. P2.15 Control
      P2CON15        : P2CON_P2CON15_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P2CON_Register use record
      P2CON0         at 0 range 0 .. 0;
      P2CON1         at 0 range 1 .. 1;
      P2CON2         at 0 range 2 .. 2;
      P2CON3         at 0 range 3 .. 3;
      P2CON4         at 0 range 4 .. 4;
      P2CON5         at 0 range 5 .. 5;
      P2CON6         at 0 range 6 .. 6;
      P2CON7         at 0 range 7 .. 7;
      P2CON8         at 0 range 8 .. 8;
      P2CON9         at 0 range 9 .. 9;
      P2CON10        at 0 range 10 .. 10;
      P2CON11        at 0 range 11 .. 11;
      P2CON12        at 0 range 12 .. 12;
      P2CON13        at 0 range 13 .. 13;
      P2CON14        at 0 range 14 .. 14;
      P2CON15        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
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
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  AIN0 interrupt flag
   type RIS_IF0_Field is
     (
      --  No interrupt on AIN0
      No INTERRUPT,
      --  AIN0 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF0_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN1 interrupt flag
   type RIS_IF1_Field is
     (
      --  No interrupt on AIN1
      No INTERRUPT,
      --  AIN1 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF1_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN2 interrupt flag
   type RIS_IF2_Field is
     (
      --  No interrupt on AIN2
      No INTERRUPT,
      --  AIN2 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF2_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN0 interrupt flag
   type RIS_IF3_Field is
     (
      --  No interrupt on AIN3
      No INTERRUPT,
      --  AIN3 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF3_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN4 interrupt flag
   type RIS_IF4_Field is
     (
      --  No interrupt on AIN4
      No INTERRUPT,
      --  AIN4 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF4_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN5 interrupt flag
   type RIS_IF5_Field is
     (
      --  No interrupt on AIN5
      No INTERRUPT,
      --  AIN5 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF5_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN6 interrupt flag
   type RIS_IF6_Field is
     (
      --  No interrupt on AIN6
      No INTERRUPT,
      --  AIN6 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF6_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN7 interrupt flag
   type RIS_IF7_Field is
     (
      --  No interrupt on AIN7
      No INTERRUPT,
      --  AIN7 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF7_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN8 interrupt flag
   type RIS_IF8_Field is
     (
      --  No interrupt on AIN8
      No INTERRUPT,
      --  AIN8 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF8_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN9 interrupt flag
   type RIS_IF9_Field is
     (
      --  No interrupt on AIN9
      No INTERRUPT,
      --  AIN9 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF9_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN10 interrupt flag
   type RIS_IF10_Field is
     (
      --  No interrupt on AIN10
      No INTERRUPT,
      --  AIN10 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF10_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN11 interrupt flag
   type RIS_IF11_Field is
     (
      --  No interrupt on AIN11
      No INTERRUPT,
      --  AIN11 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF11_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN12 interrupt flag
   type RIS_IF12_Field is
     (
      --  No interrupt on AIN12
      No INTERRUPT,
      --  AIN12 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF12_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN13 interrupt flag
   type RIS_IF13_Field is
     (
      --  No interrupt on AIN13
      No INTERRUPT,
      --  AIN13 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF13_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  AIN14 interrupt flag
   type RIS_IF14_Field is
     (
      --  No interrupt on AIN14
      No INTERRUPT,
      --  AIN14 completes ADC conversion
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF14_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x10 ADC Raw Interrupt Status Register
   type RIS_Register is record
      --  AIN0 interrupt flag
      IF0            : RIS_IF0_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN1 interrupt flag
      IF1            : RIS_IF1_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN2 interrupt flag
      IF2            : RIS_IF2_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN0 interrupt flag
      IF3            : RIS_IF3_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN4 interrupt flag
      IF4            : RIS_IF4_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN5 interrupt flag
      IF5            : RIS_IF5_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN6 interrupt flag
      IF6            : RIS_IF6_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN7 interrupt flag
      IF7            : RIS_IF7_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN8 interrupt flag
      IF8            : RIS_IF8_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN9 interrupt flag
      IF9            : RIS_IF9_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN10 interrupt flag
      IF10           : RIS_IF10_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN11 interrupt flag
      IF11           : RIS_IF11_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN12 interrupt flag
      IF12           : RIS_IF12_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN13 interrupt flag
      IF13           : RIS_IF13_Field := NRF_SVD.ADC.No INTERRUPT;
      --  AIN14 interrupt flag
      IF14           : RIS_IF14_Field := NRF_SVD.ADC.No INTERRUPT;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      IF0            at 0 range 0 .. 0;
      IF1            at 0 range 1 .. 1;
      IF2            at 0 range 2 .. 2;
      IF3            at 0 range 3 .. 3;
      IF4            at 0 range 4 .. 4;
      IF5            at 0 range 5 .. 5;
      IF6            at 0 range 6 .. 6;
      IF7            at 0 range 7 .. 7;
      IF8            at 0 range 8 .. 8;
      IF9            at 0 range 9 .. 9;
      IF10           at 0 range 10 .. 10;
      IF11           at 0 range 11 .. 11;
      IF12           at 0 range 12 .. 12;
      IF13           at 0 range 13 .. 13;
      IF14           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC
   type SN_ADC_Peripheral is record
      --  Offset:0x00 ADC Management Register
      ADM   : aliased ADM_Register;
      --  Offset:0x04 ADC Data Register
      ADB   : aliased HAL.UInt32;
      --  Offset:0x08 ADC Port 2 Control Register
      P2CON : aliased P2CON_Register;
      --  Offset:0x0C ADC Interrupt Enable Register
      IE    : aliased IE_Register;
      --  Offset:0x10 ADC Raw Interrupt Status Register
      RIS   : aliased RIS_Register;
   end record
     with Volatile;

   for SN_ADC_Peripheral use record
      ADM   at 16#0# range 0 .. 31;
      ADB   at 16#4# range 0 .. 31;
      P2CON at 16#8# range 0 .. 31;
      IE    at 16#C# range 0 .. 31;
      RIS   at 16#10# range 0 .. 31;
   end record;

   --  ADC
   SN_ADC_Periph : aliased SN_ADC_Peripheral
     with Import, Address => System'To_Address (16#40026000#);

end NRF_SVD.ADC;
