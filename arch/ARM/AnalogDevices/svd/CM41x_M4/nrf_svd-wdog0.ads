--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.WDOG0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_WDEN_Field is HAL.UInt8;

   --  Control Register
   type CTL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Watch Dog Enable
      WDEN           : CTL_WDEN_Field := 16#AD#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Watch Dog Rollover
      WDRO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      WDEN           at 0 range 4 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      WDRO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer Unit
   type WDOG0_Peripheral is record
      --  Control Register
      CTL  : aliased CTL_Register;
      --  Count Register
      CNT  : aliased HAL.UInt32;
      --  Watchdog Timer Status Register
      STAT : aliased HAL.UInt32;
   end record
     with Volatile;

   for WDOG0_Peripheral use record
      CTL  at 16#0# range 0 .. 31;
      CNT  at 16#4# range 0 .. 31;
      STAT at 16#8# range 0 .. 31;
   end record;

   --  Watchdog Timer Unit
   WDOG0_Periph : aliased WDOG0_Peripheral
     with Import, Address => System'To_Address (16#41005000#);

   --  Watchdog Timer Unit
   WDOG1_Periph : aliased WDOG0_Peripheral
     with Import, Address => System'To_Address (16#40011000#);

end NRF_SVD.WDOG0;
