--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCS1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Unknown
   type STCSR_Register is record
      --  Enable SysTick counter
      ENABLE         : Boolean := False;
      --  Pend SysTick
      TICKINT        : Boolean := False;
      --  Read-only. SysTick clock source.
      CLKSOURCE      : Boolean := False;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Read-only. Count down flag
      COUNTFLAG      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCSR_Register use record
      ENABLE         at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      COUNTFLAG      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype STRVR_RELOAD_Field is HAL.UInt24;

   --  Unknown
   type STRVR_Register is record
      --  Counter reload value
      RELOAD         : STRVR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STRVR_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype STCVR_CURRENT_Field is HAL.UInt24;

   --  Unknown
   type STCVR_Register is record
      --  Current counter value
      CURRENT        : STCVR_CURRENT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCVR_Register use record
      CURRENT        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype STCR_TENMS_Field is HAL.UInt24;

   --  Unknown
   type STCR_Register is record
      --  Read-only. Optional reload value
      TENMS          : STCR_TENMS_Field;
      --  unspecified
      Reserved_24_29 : HAL.UInt6;
      --  Read-only. Calibration inexact
      SKEW           : Boolean;
      --  Read-only. Reference clock provided
      NOREF          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCR_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   subtype IPR0_IP_0_Field is HAL.UInt2;
   subtype IPR0_IP_1_Field is HAL.UInt2;
   subtype IPR0_IP_2_Field is HAL.UInt2;
   subtype IPR0_IP_3_Field is HAL.UInt2;

   --  Unknown
   type IPR0_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 0
      IP_0           : IPR0_IP_0_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 1
      IP_1           : IPR0_IP_1_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 2
      IP_2           : IPR0_IP_2_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 3
      IP_3           : IPR0_IP_3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR0_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_0           at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_1           at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_2           at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_3           at 0 range 30 .. 31;
   end record;

   subtype IPR1_IP_4_Field is HAL.UInt2;
   subtype IPR1_IP_5_Field is HAL.UInt2;
   subtype IPR1_IP_6_Field is HAL.UInt2;
   subtype IPR1_IP_7_Field is HAL.UInt2;

   --  Unknown
   type IPR1_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 4
      IP_4           : IPR1_IP_4_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 5
      IP_5           : IPR1_IP_5_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 6
      IP_6           : IPR1_IP_6_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 7
      IP_7           : IPR1_IP_7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR1_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_4           at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_5           at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_6           at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_7           at 0 range 30 .. 31;
   end record;

   subtype IPR2_IP_8_Field is HAL.UInt2;
   subtype IPR2_IP_9_Field is HAL.UInt2;
   subtype IPR2_IP_10_Field is HAL.UInt2;
   subtype IPR2_IP_11_Field is HAL.UInt2;

   --  Unknown
   type IPR2_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 8
      IP_8           : IPR2_IP_8_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 9
      IP_9           : IPR2_IP_9_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 10
      IP_10          : IPR2_IP_10_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 11
      IP_11          : IPR2_IP_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR2_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_8           at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_9           at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_10          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_11          at 0 range 30 .. 31;
   end record;

   subtype IPR3_IP_12_Field is HAL.UInt2;
   subtype IPR3_IP_13_Field is HAL.UInt2;
   subtype IPR3_IP_14_Field is HAL.UInt2;
   subtype IPR3_IP_15_Field is HAL.UInt2;

   --  Unknown
   type IPR3_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 12
      IP_12          : IPR3_IP_12_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 13
      IP_13          : IPR3_IP_13_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 14
      IP_14          : IPR3_IP_14_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 15
      IP_15          : IPR3_IP_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR3_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_12          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_13          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_14          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_15          at 0 range 30 .. 31;
   end record;

   subtype IPR4_IP_16_Field is HAL.UInt2;
   subtype IPR4_IP_17_Field is HAL.UInt2;
   subtype IPR4_IP_18_Field is HAL.UInt2;
   subtype IPR4_IP_19_Field is HAL.UInt2;

   --  Unknown
   type IPR4_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 16
      IP_16          : IPR4_IP_16_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 17
      IP_17          : IPR4_IP_17_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 18
      IP_18          : IPR4_IP_18_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 19
      IP_19          : IPR4_IP_19_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR4_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_16          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_17          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_18          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_19          at 0 range 30 .. 31;
   end record;

   subtype IPR5_IP_20_Field is HAL.UInt2;
   subtype IPR5_IP_21_Field is HAL.UInt2;
   subtype IPR5_IP_22_Field is HAL.UInt2;
   subtype IPR5_IP_23_Field is HAL.UInt2;

   --  Unknown
   type IPR5_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 20
      IP_20          : IPR5_IP_20_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 21
      IP_21          : IPR5_IP_21_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 22
      IP_22          : IPR5_IP_22_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 23
      IP_23          : IPR5_IP_23_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR5_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_20          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_21          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_22          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_23          at 0 range 30 .. 31;
   end record;

   subtype IPR6_IP_24_Field is HAL.UInt2;
   subtype IPR6_IP_25_Field is HAL.UInt2;
   subtype IPR6_IP_26_Field is HAL.UInt2;
   subtype IPR6_IP_27_Field is HAL.UInt2;

   --  Unknown
   type IPR6_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 24
      IP_24          : IPR6_IP_24_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 25
      IP_25          : IPR6_IP_25_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 26
      IP_26          : IPR6_IP_26_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 27
      IP_27          : IPR6_IP_27_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR6_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_24          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_25          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_26          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_27          at 0 range 30 .. 31;
   end record;

   subtype IPR7_IP_28_Field is HAL.UInt2;
   subtype IPR7_IP_29_Field is HAL.UInt2;
   subtype IPR7_IP_30_Field is HAL.UInt2;
   subtype IPR7_IP_31_Field is HAL.UInt2;

   --  Unknown
   type IPR7_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 28
      IP_28          : IPR7_IP_28_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 29
      IP_29          : IPR7_IP_29_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 30
      IP_30          : IPR7_IP_30_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of interrupt 31
      IP_31          : IPR7_IP_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR7_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      IP_28          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      IP_29          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      IP_30          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      IP_31          at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  NVIC and SysTick
   type SCS1_Peripheral is record
      --  Unknown
      ACTLR : aliased HAL.UInt32;
      --  Unknown
      STCSR : aliased STCSR_Register;
      --  Unknown
      STRVR : aliased STRVR_Register;
      --  Unknown
      STCVR : aliased STCVR_Register;
      --  Unknown
      STCR  : aliased STCR_Register;
      --  Unknown
      ISER  : aliased HAL.UInt32;
      --  Unknown
      ICER  : aliased HAL.UInt32;
      --  Unknown
      ISPR  : aliased HAL.UInt32;
      --  Unknown
      ICPR  : aliased HAL.UInt32;
      --  Unknown
      IPR0  : aliased IPR0_Register;
      --  Unknown
      IPR1  : aliased IPR1_Register;
      --  Unknown
      IPR2  : aliased IPR2_Register;
      --  Unknown
      IPR3  : aliased IPR3_Register;
      --  Unknown
      IPR4  : aliased IPR4_Register;
      --  Unknown
      IPR5  : aliased IPR5_Register;
      --  Unknown
      IPR6  : aliased IPR6_Register;
      --  Unknown
      IPR7  : aliased IPR7_Register;
   end record
     with Volatile;

   for SCS1_Peripheral use record
      ACTLR at 16#8# range 0 .. 31;
      STCSR at 16#10# range 0 .. 31;
      STRVR at 16#14# range 0 .. 31;
      STCVR at 16#18# range 0 .. 31;
      STCR  at 16#1C# range 0 .. 31;
      ISER  at 16#100# range 0 .. 31;
      ICER  at 16#180# range 0 .. 31;
      ISPR  at 16#200# range 0 .. 31;
      ICPR  at 16#280# range 0 .. 31;
      IPR0  at 16#400# range 0 .. 31;
      IPR1  at 16#404# range 0 .. 31;
      IPR2  at 16#408# range 0 .. 31;
      IPR3  at 16#40C# range 0 .. 31;
      IPR4  at 16#410# range 0 .. 31;
      IPR5  at 16#414# range 0 .. 31;
      IPR6  at 16#418# range 0 .. 31;
      IPR7  at 16#41C# range 0 .. 31;
   end record;

   --  NVIC and SysTick
   SCS1_Periph : aliased SCS1_Peripheral
     with Import, Address => System'To_Address (16#E000E000#);

end NRF_SVD.SCS1;
