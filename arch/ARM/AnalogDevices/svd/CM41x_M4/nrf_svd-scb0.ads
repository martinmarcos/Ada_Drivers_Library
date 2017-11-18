--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCB0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMA0_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA0 Read Quality of Service
   type DMA0_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA0_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA0_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA0_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA0 Write Quality of Service
   type DMA0_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA0_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA0_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA1_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA1 Read Quality of Service
   type DMA1_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA1_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA1_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA1_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA1 Write Quality of Service
   type DMA1_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA1_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA1_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA2_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA2 Read Quality of Service
   type DMA2_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA2_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA2_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA2 Write Quality of Service
   type DMA2_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA2_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA3_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA3 Read Quality of Service
   type DMA3_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA3_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA3_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA3_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA3 Write Quality of Service
   type DMA3_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA3_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA3_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA4_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA4 Read Quality of Service
   type DMA4_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA4_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA4_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA4_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA4 Write Quality of Service
   type DMA4_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA4_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA4_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA5_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA5 Read Quality of Service
   type DMA5_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA5_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA5_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA5_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA5 Write Quality of Service
   type DMA5_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA5_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA5_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA6_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA6 Read Quality of Service
   type DMA6_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA6_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA6_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA6_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA6 Write Quality of Service
   type DMA6_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA6_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA6_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA7_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA7 Read Quality of Service
   type DMA7_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA7_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA7_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA7_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA7 Write Quality of Service
   type DMA7_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA7_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA7_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA8_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA8 Read Quality of Service
   type DMA8_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA8_RQOS_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA8_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA8_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA8 Write Quality of Service
   type DMA8_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA8_WQOS_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA8_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA9_RQOS_VALUE_Field is HAL.UInt4;

   --  DMA9 Read Quality of Service
   type DMA9_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : DMA9_RQOS_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA9_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA9_WQOS_VALUE_Field is HAL.UInt4;

   --  DMA9 Write Quality of Service
   type DMA9_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : DMA9_WQOS_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA9_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype AFE0_RQOS_VALUE_Field is HAL.UInt4;

   --  AFE0 Read Quality of Service
   type AFE0_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : AFE0_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFE0_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype AFE0_WQOS_VALUE_Field is HAL.UInt4;

   --  AFE0 Write Quality of Service
   type AFE0_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : AFE0_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFE0_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FFT0_RQOS_VALUE_Field is HAL.UInt4;

   --  FFT0 Read Quality of Service
   type FFT0_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : FFT0_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FFT0_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FFT0_WQOS_VALUE_Field is HAL.UInt4;

   --  FFT0 Write Quality of Service
   type FFT0_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : FFT0_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FFT0_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  M4 Core Fn Mod AHB Bus
   type M4_FNMOD_AHB_Register is record
      --  Rd Inc Override
      RDINCOVER     : Boolean := False;
      --  Wr Inc Override
      WRINCOVER     : Boolean := False;
      --  Lock Override
      LOCKOVER      : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M4_FNMOD_AHB_Register use record
      RDINCOVER     at 0 range 0 .. 0;
      WRINCOVER     at 0 range 1 .. 1;
      LOCKOVER      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype M4_RQOS_VALUE_Field is HAL.UInt4;

   --  M4 Core Read Quality of Service
   type M4_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : M4_RQOS_VALUE_Field := 16#2#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M4_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype M4_WQOS_VALUE_Field is HAL.UInt4;

   --  M4 Core Write Quality of Service
   type M4_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : M4_WQOS_VALUE_Field := 16#2#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M4_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype M0_RQOS_VALUE_Field is HAL.UInt4;

   --  M0 Core Read Quality of Service
   type M0_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : M0_RQOS_VALUE_Field := 16#3#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype M0_WQOS_VALUE_Field is HAL.UInt4;

   --  M0 Core Write Quality of Service
   type M0_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : M0_WQOS_VALUE_Field := 16#3#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SINC0_RQOS_VALUE_Field is HAL.UInt4;

   --  SINC0 Read Quality of Service
   type SINC0_RQOS_Register is record
      --  Read Quality of Service
      VALUE         : SINC0_RQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINC0_RQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SINC0_WQOS_VALUE_Field is HAL.UInt4;

   --  SINC0 Write Quality of Service
   type SINC0_WQOS_Register is record
      --  Write Quality of Service
      VALUE         : SINC0_WQOS_VALUE_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINC0_WQOS_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Crossbar
   type SCB0_Peripheral is record
      --  DMA0 Read Quality of Service
      DMA0_RQOS    : aliased DMA0_RQOS_Register;
      --  DMA0 Write Quality of Service
      DMA0_WQOS    : aliased DMA0_WQOS_Register;
      --  DMA1 Read Quality of Service
      DMA1_RQOS    : aliased DMA1_RQOS_Register;
      --  DMA1 Write Quality of Service
      DMA1_WQOS    : aliased DMA1_WQOS_Register;
      --  DMA2 Read Quality of Service
      DMA2_RQOS    : aliased DMA2_RQOS_Register;
      --  DMA2 Write Quality of Service
      DMA2_WQOS    : aliased DMA2_WQOS_Register;
      --  DMA3 Read Quality of Service
      DMA3_RQOS    : aliased DMA3_RQOS_Register;
      --  DMA3 Write Quality of Service
      DMA3_WQOS    : aliased DMA3_WQOS_Register;
      --  DMA4 Read Quality of Service
      DMA4_RQOS    : aliased DMA4_RQOS_Register;
      --  DMA4 Write Quality of Service
      DMA4_WQOS    : aliased DMA4_WQOS_Register;
      --  DMA5 Read Quality of Service
      DMA5_RQOS    : aliased DMA5_RQOS_Register;
      --  DMA5 Write Quality of Service
      DMA5_WQOS    : aliased DMA5_WQOS_Register;
      --  DMA6 Read Quality of Service
      DMA6_RQOS    : aliased DMA6_RQOS_Register;
      --  DMA6 Write Quality of Service
      DMA6_WQOS    : aliased DMA6_WQOS_Register;
      --  DMA7 Read Quality of Service
      DMA7_RQOS    : aliased DMA7_RQOS_Register;
      --  DMA7 Write Quality of Service
      DMA7_WQOS    : aliased DMA7_WQOS_Register;
      --  DMA8 Read Quality of Service
      DMA8_RQOS    : aliased DMA8_RQOS_Register;
      --  DMA8 Write Quality of Service
      DMA8_WQOS    : aliased DMA8_WQOS_Register;
      --  DMA9 Read Quality of Service
      DMA9_RQOS    : aliased DMA9_RQOS_Register;
      --  DMA9 Write Quality of Service
      DMA9_WQOS    : aliased DMA9_WQOS_Register;
      --  AFE0 Read Quality of Service
      AFE0_RQOS    : aliased AFE0_RQOS_Register;
      --  AFE0 Write Quality of Service
      AFE0_WQOS    : aliased AFE0_WQOS_Register;
      --  FFT0 Read Quality of Service
      FFT0_RQOS    : aliased FFT0_RQOS_Register;
      --  FFT0 Write Quality of Service
      FFT0_WQOS    : aliased FFT0_WQOS_Register;
      --  M4 Core Fn Mod AHB Bus
      M4_FNMOD_AHB : aliased M4_FNMOD_AHB_Register;
      --  M4 Core Read Quality of Service
      M4_RQOS      : aliased M4_RQOS_Register;
      --  M4 Core Write Quality of Service
      M4_WQOS      : aliased M4_WQOS_Register;
      --  M0 Core Read Quality of Service
      M0_RQOS      : aliased M0_RQOS_Register;
      --  M0 Core Write Quality of Service
      M0_WQOS      : aliased M0_WQOS_Register;
      --  SINC0 Read Quality of Service
      SINC0_RQOS   : aliased SINC0_RQOS_Register;
      --  SINC0 Write Quality of Service
      SINC0_WQOS   : aliased SINC0_WQOS_Register;
   end record
     with Volatile;

   for SCB0_Peripheral use record
      DMA0_RQOS    at 16#42100# range 0 .. 31;
      DMA0_WQOS    at 16#42104# range 0 .. 31;
      DMA1_RQOS    at 16#43100# range 0 .. 31;
      DMA1_WQOS    at 16#43104# range 0 .. 31;
      DMA2_RQOS    at 16#44100# range 0 .. 31;
      DMA2_WQOS    at 16#44104# range 0 .. 31;
      DMA3_RQOS    at 16#45100# range 0 .. 31;
      DMA3_WQOS    at 16#45104# range 0 .. 31;
      DMA4_RQOS    at 16#46100# range 0 .. 31;
      DMA4_WQOS    at 16#46104# range 0 .. 31;
      DMA5_RQOS    at 16#47100# range 0 .. 31;
      DMA5_WQOS    at 16#47104# range 0 .. 31;
      DMA6_RQOS    at 16#48100# range 0 .. 31;
      DMA6_WQOS    at 16#48104# range 0 .. 31;
      DMA7_RQOS    at 16#49100# range 0 .. 31;
      DMA7_WQOS    at 16#49104# range 0 .. 31;
      DMA8_RQOS    at 16#4A100# range 0 .. 31;
      DMA8_WQOS    at 16#4A104# range 0 .. 31;
      DMA9_RQOS    at 16#4B100# range 0 .. 31;
      DMA9_WQOS    at 16#4B104# range 0 .. 31;
      AFE0_RQOS    at 16#4C100# range 0 .. 31;
      AFE0_WQOS    at 16#4C104# range 0 .. 31;
      FFT0_RQOS    at 16#4D100# range 0 .. 31;
      FFT0_WQOS    at 16#4D104# range 0 .. 31;
      M4_FNMOD_AHB at 16#4E028# range 0 .. 31;
      M4_RQOS      at 16#4E100# range 0 .. 31;
      M4_WQOS      at 16#4E104# range 0 .. 31;
      M0_RQOS      at 16#4F100# range 0 .. 31;
      M0_WQOS      at 16#4F104# range 0 .. 31;
      SINC0_RQOS   at 16#51100# range 0 .. 31;
      SINC0_WQOS   at 16#51104# range 0 .. 31;
   end record;

   --  System Crossbar
   SCB0_Periph : aliased SCB0_Peripheral
     with Import, Address => System'To_Address (16#4F000000#);

end NRF_SVD.SCB0;
