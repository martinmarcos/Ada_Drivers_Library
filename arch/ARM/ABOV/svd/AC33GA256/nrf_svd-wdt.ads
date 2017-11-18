--

--  This spec has been automatically generated from AC33GA256.svd

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

   --  WDT Control Register
   type CON_Register is record
      --  counter prescaler
      WPRS           : CON_WPRS_Field := 16#7#;
      --  WDTCLKIN clock source select
      WEC            : Boolean := False;
      --  WDT counter enable
      WEN            : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  WDT interrupt reset
      WRE            : Boolean := True;
      --  WDT interrupt enable
      WIE            : Boolean := False;
      --  WDT underflow falg
      WOF            : Boolean := False;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  WDT operation in debug mode
      WDH            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      WPRS           at 0 range 0 .. 2;
      WEC            at 0 range 3 .. 3;
      WEN            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      WRE            at 0 range 6 .. 6;
      WIE            at 0 range 7 .. 7;
      WOF            at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      WDH            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WATCH-DOG TIMER
   type WDT_Peripheral is record
      --  Watchdog Timer Load Register
      LR  : aliased HAL.UInt32;
      --  WDT Counter Value Register
      CVR : aliased HAL.UInt32;
      --  WDT Control Register
      CON : aliased CON_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      LR  at 16#0# range 0 .. 31;
      CVR at 16#4# range 0 .. 31;
      CON at 16#8# range 0 .. 31;
   end record;

   --  WATCH-DOG TIMER
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

end NRF_SVD.WDT;
