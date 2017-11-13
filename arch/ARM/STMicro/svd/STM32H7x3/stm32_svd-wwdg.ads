--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.WWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype WWDG_CR_T_Field is HAL.UInt7;

   --  Control register
   type WWDG_CR_Register is record
      --  7-bit counter (MSB to LSB) These bits contain the value of the
      --  watchdog counter. It is decremented every (4096 x 2WDGTB[1:0]) PCLK
      --  cycles. A reset is produced when it is decremented from 0x40 to 0x3F
      --  (T6 becomes cleared).
      T             : WWDG_CR_T_Field := 16#7F#;
      --  Activation bit This bit is set by software and only cleared by
      --  hardware after a reset. When WDGA=1, the watchdog can generate a
      --  reset.
      WDGA          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDG_CR_Register use record
      T             at 0 range 0 .. 6;
      WDGA          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WWDG_CFR_W_Field is HAL.UInt7;
   subtype WWDG_CFR_WDGTB_Field is HAL.UInt2;

   --  Configuration register
   type WWDG_CFR_Register is record
      --  7-bit window value These bits contain the window value to be compared
      --  to the downcounter.
      W              : WWDG_CFR_W_Field := 16#7F#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Early wakeup interrupt When set, an interrupt occurs whenever the
      --  counter reaches the value 0x40. This interrupt is only cleared by
      --  hardware after a reset.
      EWI            : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Timer base The time base of the prescaler can be modified as follows:
      WDGTB          : WWDG_CFR_WDGTB_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDG_CFR_Register use record
      W              at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      EWI            at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WDGTB          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Status register
   type WWDG_SR_Register is record
      --  Early wakeup interrupt flag This bit is set by hardware when the
      --  counter has reached the value 0x40. It must be cleared by software by
      --  writing 0. A write of 1 has no effect. This bit is also set if the
      --  interrupt is not enabled.
      EWIF          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDG_SR_Register use record
      EWIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WWDG
   type WWDG_Peripheral is record
      --  Control register
      WWDG_CR  : aliased WWDG_CR_Register;
      --  Configuration register
      WWDG_CFR : aliased WWDG_CFR_Register;
      --  Status register
      WWDG_SR  : aliased WWDG_SR_Register;
   end record
     with Volatile;

   for WWDG_Peripheral use record
      WWDG_CR  at 16#0# range 0 .. 31;
      WWDG_CFR at 16#4# range 0 .. 31;
      WWDG_SR  at 16#8# range 0 .. 31;
   end record;

   --  WWDG
   WWDG_Periph : aliased WWDG_Peripheral
     with Import, Address => System'To_Address (16#50003000#);

end STM32_SVD.WWDG;
