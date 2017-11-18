--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SYSTICK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  no description available
   type CSR_ENABLE_Field is
     (
      --  counter disabled
      Enable_0,
      --  counter enabled
      Enable_1)
     with Size => 1;
   for CSR_ENABLE_Field use
     (Enable_0 => 0,
      Enable_1 => 1);

   --  no description available
   type CSR_TICKINT_Field is
     (
      --  counting down to 0 does not assert the SysTick exception request
      Tickint_0,
      --  counting down to 0 asserts the SysTick exception request
      Tickint_1)
     with Size => 1;
   for CSR_TICKINT_Field use
     (Tickint_0 => 0,
      Tickint_1 => 1);

   --  no description available
   type CSR_CLKSOURCE_Field is
     (
      --  external clock
      Clksource_0,
      --  processor clock
      Clksource_1)
     with Size => 1;
   for CSR_CLKSOURCE_Field use
     (Clksource_0 => 0,
      Clksource_1 => 1);

   --  SysTick Control and Status Register
   type SYST_CSR_Register is record
      --  no description available
      ENABLE         : CSR_ENABLE_Field := NRF_SVD.SYSTICK.Enable_0;
      --  no description available
      TICKINT        : CSR_TICKINT_Field := NRF_SVD.SYSTICK.Tickint_0;
      --  no description available
      CLKSOURCE      : CSR_CLKSOURCE_Field := NRF_SVD.SYSTICK.Clksource_1;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  no description available
      COUNTFLAG      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CSR_Register use record
      ENABLE         at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      COUNTFLAG      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SYST_RVR_RELOAD_Field is HAL.UInt24;

   --  SysTick Reload Value Register
   type SYST_RVR_Register is record
      --  Value to load into the SysTick Current Value Register when the
      --  counter reaches 0
      RELOAD         : SYST_RVR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_RVR_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SYST_CVR_CURRENT_Field is HAL.UInt24;

   --  SysTick Current Value Register
   type SYST_CVR_Register is record
      --  Current value at the time the register is accessed
      CURRENT        : SYST_CVR_CURRENT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CVR_Register use record
      CURRENT        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SYST_CALIB_TENMS_Field is HAL.UInt24;

   --  no description available
   type CALIB_SKEW_Field is
     (
      --  10ms calibration value is exact
      Skew_0,
      --  10ms calibration value is inexact, because of the clock frequency
      Skew_1)
     with Size => 1;
   for CALIB_SKEW_Field use
     (Skew_0 => 0,
      Skew_1 => 1);

   --  no description available
   type CALIB_NOREF_Field is
     (
      --  The reference clock is provided
      Noref_0,
      --  The reference clock is not provided
      Noref_1)
     with Size => 1;
   for CALIB_NOREF_Field use
     (Noref_0 => 0,
      Noref_1 => 1);

   --  SysTick Calibration Value Register
   type SYST_CALIB_Register is record
      --  Read-only. Reload value to use for 10ms timing
      TENMS          : SYST_CALIB_TENMS_Field;
      --  unspecified
      Reserved_24_29 : HAL.UInt6;
      --  Read-only. no description available
      SKEW           : CALIB_SKEW_Field;
      --  Read-only. no description available
      NOREF          : CALIB_NOREF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System timer
   type SysTick_Peripheral is record
      --  SysTick Control and Status Register
      CSR   : aliased SYST_CSR_Register;
      --  SysTick Reload Value Register
      RVR   : aliased SYST_RVR_Register;
      --  SysTick Current Value Register
      CVR   : aliased SYST_CVR_Register;
      --  SysTick Calibration Value Register
      CALIB : aliased SYST_CALIB_Register;
   end record
     with Volatile;

   for SysTick_Peripheral use record
      CSR   at 16#0# range 0 .. 31;
      RVR   at 16#4# range 0 .. 31;
      CVR   at 16#8# range 0 .. 31;
      CALIB at 16#C# range 0 .. 31;
   end record;

   --  System timer
   SysTick_Periph : aliased SysTick_Peripheral
     with Import, Address => System'To_Address (16#E000E010#);

end NRF_SVD.SYSTICK;
