--

--  This spec has been automatically generated from AC30M1x64.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FRT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_CLKSEL_Field is HAL.UInt2;

   --  FRT Mode Register
   type MR_Register is record
      --  Match Interrupt Enable bit
      MIE           : Boolean := False;
      --  Over Flow Interrupt Enable bit
      OVIE          : Boolean := False;
      --  Counter Match Clear Disable bit
      MCD           : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  FRT Counter clock source control
      CLKSEL        : MR_CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      MIE           at 0 range 0 .. 0;
      OVIE          at 0 range 1 .. 1;
      MCD           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CLKSEL        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  FRT Control Register
   type CR_Register is record
      --  FRT enable bit
      EN            : Boolean := False;
      --  FRT Counter register hold bit
      HOLD          : Boolean := False;
      --  FRT Counter register clear bit
      CLR           : Boolean := False;
      --  FRT Counter read request bit
      RREQ          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN            at 0 range 0 .. 0;
      HOLD          at 0 range 1 .. 1;
      CLR           at 0 range 2 .. 2;
      RREQ          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  FRTSR FRT Status Register
   type SR_Register is record
      --  Interrupt Flag
      MF            : Boolean := False;
      --  Overflow Interrupt Flag
      OVF           : Boolean := False;
      --  Read Counter Acknowledge bit
      RACK          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      MF            at 0 range 0 .. 0;
      OVF           at 0 range 1 .. 1;
      RACK          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Free-run Timer
   type FRT_Peripheral is record
      --  FRT Mode Register
      MR  : aliased MR_Register;
      --  FRT Control Register
      CR  : aliased CR_Register;
      --  FRTPER FRT Period Match Register
      PER : aliased HAL.UInt32;
      --  FRTCNT FRT Counter Register
      CNT : aliased HAL.UInt32;
      --  FRTSR FRT Status Register
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

   --  Free-run Timer
   FRT_Periph : aliased FRT_Peripheral
     with Import, Address => System'To_Address (16#40000600#);

end NRF_SVD.FRT;
