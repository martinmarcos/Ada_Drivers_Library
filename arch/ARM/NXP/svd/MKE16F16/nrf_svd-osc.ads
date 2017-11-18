--  This spec has been automatically generated from MKE16F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.OSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RTC 32k Oscillator external reference clcok selection
   type CR_ROSCEREFS_Field is
     (
      --  Bypass mode. RTC oscillator selects the external 32k clock.
      External,
      --  Crystal mode.
      Crystal)
     with Size => 1;
   for CR_ROSCEREFS_Field use
     (External => 0,
      Crystal => 1);

   --  RTC 32k Oscillator stable flag
   type CR_ROSCSTB_Field is
     (
      --  RTC 32k oscillator is unstable now and no clock will go out of the
      --  block.
      Stable,
      --  RTC 32k oscillator is stable.
      Unstable)
     with Size => 1;
   for CR_ROSCSTB_Field use
     (Stable => 0,
      Unstable => 1);

   --  RTC 32k Oscillator stop mode enable
   type CR_ROSCSTPEN_Field is
     (
      --  Oscillator is disabled regardless the state of ROSCEN.
      Disable,
      --  Oscillator is enabled in Stop mode when ROSCEN is set.
      Enable)
     with Size => 1;
   for CR_ROSCSTPEN_Field use
     (Disable => 0,
      Enable => 1);

   --  RTC 32k Oscillator enable
   type CR_ROSCEN_Field is
     (
      --  Oscillator is disabled.
      Disable,
      --  Oscillator is enabled.
      Enable)
     with Size => 1;
   for CR_ROSCEN_Field use
     (Disable => 0,
      Enable => 1);

   --  RTC Oscillator Control Register
   type OSC32_CR_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  RTC 32k Oscillator external reference clcok selection
      ROSCEREFS    : CR_ROSCEREFS_Field := NRF_SVD.OSC.External;
      --  Read-only. RTC 32k Oscillator stable flag
      ROSCSTB      : CR_ROSCSTB_Field := NRF_SVD.OSC.Stable;
      --  RTC 32k Oscillator stop mode enable
      ROSCSTPEN    : CR_ROSCSTPEN_Field := NRF_SVD.OSC.Disable;
      --  RTC 32k Oscillator enable
      ROSCEN       : CR_ROSCEN_Field := NRF_SVD.OSC.Disable;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSC32_CR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      ROSCEREFS    at 0 range 4 .. 4;
      ROSCSTB      at 0 range 5 .. 5;
      ROSCSTPEN    at 0 range 6 .. 6;
      ROSCEN       at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RTC Oscillator
   type OSC32_Peripheral is record
      --  RTC Oscillator Control Register
      CR : aliased OSC32_CR_Register;
   end record
     with Volatile;

   for OSC32_Peripheral use record
      CR at 0 range 0 .. 7;
   end record;

   --  RTC Oscillator
   OSC32_Periph : aliased OSC32_Peripheral
     with Import, Address => System'To_Address (16#40060000#);

end NRF_SVD.OSC;
