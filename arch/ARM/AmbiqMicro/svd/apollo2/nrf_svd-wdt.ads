--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Watchdog Timer
package NRF_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CFG_RESVAL_Field is HAL.UInt8;
   subtype CFG_INTVAL_Field is HAL.UInt8;

   --  Select the frequency for the WDT. All values not enumerated below are
   --  undefined.
   type CFG_CLKSEL_Field is
     (
      --  Low Power Mode. value.
      Off,
      --  128 Hz LFRC clock. value.
      CFG_CLKSEL_Field_128Hz,
      --  16 Hz LFRC clock. value.
      CFG_CLKSEL_Field_16Hz,
      --  1 Hz LFRC clock. value.
      CFG_CLKSEL_Field_1Hz,
      --  1/16th Hz LFRC clock. value.
      CFG_CLKSEL_Field_1_16Hz)
     with Size => 3;
   for CFG_CLKSEL_Field use
     (Off => 0,
      CFG_CLKSEL_Field_128Hz => 1,
      CFG_CLKSEL_Field_16Hz => 2,
      CFG_CLKSEL_Field_1Hz => 3,
      CFG_CLKSEL_Field_1_16Hz => 4);

   --  Configuration Register
   type CFG_Register is record
      --  This bitfield enables the WDT.
      WDTEN          : Boolean := False;
      --  This bitfield enables the WDT interrupt. Note : This bit must be set
      --  before the interrupt status bit will reflect a watchdog timer
      --  expiration. The IER interrupt register must also be enabled for a WDT
      --  interrupt to be sent to the NVIC.
      INTEN          : Boolean := False;
      --  This bitfield enables the WDT reset.
      RESEN          : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  This bitfield is the compare value for counter bits 7:0 to generate a
      --  watchdog reset.
      RESVAL         : CFG_RESVAL_Field := 16#FF#;
      --  This bitfield is the compare value for counter bits 7:0 to generate a
      --  watchdog interrupt.
      INTVAL         : CFG_INTVAL_Field := 16#FF#;
      --  Select the frequency for the WDT. All values not enumerated below are
      --  undefined.
      CLKSEL         : CFG_CLKSEL_Field := NRF_SVD.WDT.Off;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      WDTEN          at 0 range 0 .. 0;
      INTEN          at 0 range 1 .. 1;
      RESEN          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RESVAL         at 0 range 8 .. 15;
      INTVAL         at 0 range 16 .. 23;
      CLKSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Writing 0xB2 to WDTRSTRT restarts the watchdog timer.
   type RSTRT_RSTRT_Field is
     (
      --  Reset value for the field
      Rstrt_Rstrt_Field_Reset,
      --  This is the key value to write to WDTRSTRT to restart the WDT. value.
      Keyvalue)
     with Size => 8;
   for RSTRT_RSTRT_Field use
     (Rstrt_Rstrt_Field_Reset => 0,
      Keyvalue => 178);

   --  Restart the watchdog timer
   type RSTRT_Register is record
      --  Writing 0xB2 to WDTRSTRT restarts the watchdog timer.
      RSTRT         : RSTRT_RSTRT_Field := Rstrt_Rstrt_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTRT_Register use record
      RSTRT         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Writing 0x3A locks the watchdog timer. Once locked, the WDTCFG reg
   --  cannot be written and WDTEN is set.
   type LOCK_LOCK_Field is
     (
      --  Reset value for the field
      Lock_Lock_Field_Reset,
      --  This is the key value to write to WDTLOCK to lock the WDT. value.
      Keyvalue)
     with Size => 8;
   for LOCK_LOCK_Field use
     (Lock_Lock_Field_Reset => 0,
      Keyvalue => 58);

   --  Locks the WDT
   type LOCK_Register is record
      --  Writing 0x3A locks the watchdog timer. Once locked, the WDTCFG reg
      --  cannot be written and WDTEN is set.
      LOCK          : LOCK_LOCK_Field := Lock_Lock_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      LOCK          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype COUNT_COUNT_Field is HAL.UInt8;

   --  Current Counter Value for WDT
   type COUNT_Register is record
      --  Read-Only current value of the WDT counter
      COUNT         : COUNT_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNT_Register use record
      COUNT         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  WDT Interrupt register: Enable
   type INTEN_Register is record
      --  Watchdog Timer Interrupt.
      WDT           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      WDT           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  WDT Interrupt register: Status
   type INTSTAT_Register is record
      --  Watchdog Timer Interrupt.
      WDT           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      WDT           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  WDT Interrupt register: Clear
   type INTCLR_Register is record
      --  Watchdog Timer Interrupt.
      WDT           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      WDT           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  WDT Interrupt register: Set
   type INTSET_Register is record
      --  Watchdog Timer Interrupt.
      WDT           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      WDT           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Configuration Register
      CFG     : aliased CFG_Register;
      --  Restart the watchdog timer
      RSTRT   : aliased RSTRT_Register;
      --  Locks the WDT
      LOCK    : aliased LOCK_Register;
      --  Current Counter Value for WDT
      COUNT   : aliased COUNT_Register;
      --  WDT Interrupt register: Enable
      INTEN   : aliased INTEN_Register;
      --  WDT Interrupt register: Status
      INTSTAT : aliased INTSTAT_Register;
      --  WDT Interrupt register: Clear
      INTCLR  : aliased INTCLR_Register;
      --  WDT Interrupt register: Set
      INTSET  : aliased INTSET_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      CFG     at 16#0# range 0 .. 31;
      RSTRT   at 16#4# range 0 .. 31;
      LOCK    at 16#8# range 0 .. 31;
      COUNT   at 16#C# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => WDT_Base;

end NRF_SVD.WDT;
