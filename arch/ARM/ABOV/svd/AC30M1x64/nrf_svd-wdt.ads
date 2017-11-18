--

--  This spec has been automatically generated from AC30M1x64.svd

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
      --  WDT underflow flag
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
