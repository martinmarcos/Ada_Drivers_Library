--

--  This spec has been automatically generated from AC33Mx384A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_CLKSEL_Field is HAL.UInt2;

   --  FRT Mode Register
   type MR_Register is record
      --  Match Interrupt Enable bit
      MIE           : Boolean := False;
      --  Overflow Interrupt Enable bit
      OVIE          : Boolean := False;
      --  Counter Match Clear Disable bit
      MCD           : Boolean := False;
      --  FRT Counter clock source control
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
      --  Counter Match interrupt flag bit
      MF            : Boolean := False;
      --  Counter overflow interrupt flag bit
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

   subtype CON_WPRS_Field is HAL.UInt3;

   --  Watchdog Timer Control Register
   type CON_Register is record
      --  counter prescaler
      WPRS           : CON_WPRS_Field := 16#4#;
      --  WDTCLKIN clock source select
      CKSEL          : Boolean := True;
      --  WDT counter enable
      WDTEN          : Boolean := True;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  WDT interrupt reset
      WDTRE          : Boolean := True;
      --  WDT interrupt enable
      WDTIE          : Boolean := False;
      --  WDT underflow falg
      WUF            : Boolean := False;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  WDT operation in debug mode
      WDBG           : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      WPRS           at 0 range 0 .. 2;
      CKSEL          at 0 range 3 .. 3;
      WDTEN          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      WDTRE          at 0 range 6 .. 6;
      WDTIE          at 0 range 7 .. 7;
      WUF            at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      WDBG           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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

   --  WATCH-DOG TIMER
   type WDT_Peripheral is record
      --  Watchdog Timer Load Register
      LR  : aliased HAL.UInt32;
      --  Watchdog Timer Current Counter Register
      CNT : aliased HAL.UInt32;
      --  Watchdog Timer Control Register
      CON : aliased CON_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      LR  at 16#0# range 0 .. 31;
      CNT at 16#4# range 0 .. 31;
      CON at 16#8# range 0 .. 31;
   end record;

   --  WATCH-DOG TIMER
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#40000200#);

end NRF_SVD.WDT;
