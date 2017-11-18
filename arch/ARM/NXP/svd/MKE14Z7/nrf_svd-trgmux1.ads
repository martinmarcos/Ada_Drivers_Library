--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TRGMUX1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TRGMUX_CTRL_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_CTRL_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_CTRL_SEL2_Field is HAL.UInt6;
   subtype TRGMUX_CTRL_SEL3_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_CTRL0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_CTRL0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_CTRL_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_CTRL_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_CTRL_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_CTRL_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 3 Source Select
      SEL3           : TRGMUX_CTRL_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_CTRL0_LK_Field := NRF_SVD.TRGMUX1.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_CTRL_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL3           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger MUX Control
   type TRGMUX1_Peripheral is record
      --  TRGMUX Register
      TRGMUX_CTRL0 : aliased TRGMUX_CTRL_Register;
      --  TRGMUX Register
      TRGMUX_CTRL1 : aliased TRGMUX_CTRL_Register;
   end record
     with Volatile;

   for TRGMUX1_Peripheral use record
      TRGMUX_CTRL0 at 16#0# range 0 .. 31;
      TRGMUX_CTRL1 at 16#4# range 0 .. 31;
   end record;

   --  Trigger MUX Control
   TRGMUX1_Periph : aliased TRGMUX1_Peripheral
     with Import, Address => System'To_Address (16#40063000#);

end NRF_SVD.TRGMUX1;
