--

--  This spec has been automatically generated from Z32F3841.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  32bit Free Run Timer
package NRF_SVD.FRT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_CLKSEL_Field is HAL.UInt2;

   --  Free Run Timer Mode Register
   type MR_Register is record
      --  MatchInterrupt Enable
      MIE           : Boolean := False;
      --  Overflow Interrupt Enable
      OVIE          : Boolean := False;
      --  Counter Match clear Disable flag
      MCD           : Boolean := False;
      --  FRT Counter clock source
      CLKSEL        : MR_CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      MIE           at 0 range 0 .. 0;
      OVIE          at 0 range 1 .. 1;
      MCD           at 0 range 2 .. 2;
      CLKSEL        at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Free Run Timer Control Register
   type CR_Register is record
      --  FRT Enable
      FEN           : Boolean := False;
      --  Counter Register Hold
      FHOLD         : Boolean := False;
      --  Counter Register Clear
      FCLR          : Boolean := False;
      --  FRT Counter Read Request bitr
      CNTREQ        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      FEN           at 0 range 0 .. 0;
      FHOLD         at 0 range 1 .. 1;
      FCLR          at 0 range 2 .. 2;
      CNTREQ        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free Run Timer Status Register
   type SR_Register is record
      --  Match Interrupt flag
      MIF           : Boolean := False;
      --  Overflow Interrupt flag
      OVIF          : Boolean := False;
      --  Read Counter Acknowledge bit
      RACK          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      MIF           at 0 range 0 .. 0;
      OVIF          at 0 range 1 .. 1;
      RACK          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  32bit Free Run Timer
   type FRT_Peripheral is record
      --  Free Run Timer Mode Register
      MR  : aliased MR_Register;
      --  Free Run Timer Control Register
      CR  : aliased CR_Register;
      --  Free Run Timer Period Match Register
      PER : aliased HAL.UInt32;
      --  Free Run Timer Counter Register
      CNT : aliased HAL.UInt32;
      --  Free Run Timer Status Register
      SR  : aliased SR_Register;
   end record
     with Volatile;

   for FRT_Peripheral use record
      MR  at 16#0# range 0 .. 31;
      CR  at 16#4# range 0 .. 31;
      PER at 16#8# range 0 .. 31;
      CNT at 16#C# range 0 .. 31;
      SR  at 16#10# range 0 .. 31;
   end record;

   --  32bit Free Run Timer
   FRT_Periph : aliased FRT_Peripheral
     with Import, Address => FRT_Base;

end NRF_SVD.FRT;
