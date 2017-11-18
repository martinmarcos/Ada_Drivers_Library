--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.WDT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Timer Interrupt
   type CTL_IRQ_Field is
     (
      --  WDT asserts reset when timed out
      Rst,
      --  WDT generates interrupt when timed out
      Int)
     with Size => 1;
   for CTL_IRQ_Field use
     (Rst => 0,
      Int => 1);

   --  Prescaler
   type CTL_PRE_Field is
     (
      --  Source clock/1
      DIV1,
      --  Source clock/16
      DIV16,
      --  Source clock/256 (default)
      DIV256)
     with Size => 2;
   for CTL_PRE_Field use
     (DIV1 => 0,
      DIV16 => 1,
      DIV256 => 2);

   --  Timer Enable
   type CTL_EN_Field is
     (
      --  WDT not enabled
      Wdt_Dis,
      --  WDT enabled
      Wdt_En)
     with Size => 1;
   for CTL_EN_Field use
     (Wdt_Dis => 0,
      Wdt_En => 1);

   --  Timer Mode
   type CTL_MODE_Field is
     (
      --  Free running mode
      Free_Run,
      --  Periodic mode
      Periodic)
     with Size => 1;
   for CTL_MODE_Field use
     (Free_Run => 0,
      Periodic => 1);

   --  Control
   type CTL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#1#;
      --  Timer Interrupt
      IRQ           : CTL_IRQ_Field := NRF_SVD.WDT0.Rst;
      --  Prescaler
      PRE           : CTL_PRE_Field := NRF_SVD.WDT0.DIV256;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Timer Enable
      EN            : CTL_EN_Field := NRF_SVD.WDT0.Wdt_En;
      --  Timer Mode
      MODE          : CTL_MODE_Field := NRF_SVD.WDT0.Periodic;
      --  Unused Spare Bit
      SPARE         : Boolean := True;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IRQ           at 0 range 1 .. 1;
      PRE           at 0 range 2 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      EN            at 0 range 5 .. 5;
      MODE          at 0 range 6 .. 6;
      SPARE         at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Load Register Write Sync in Progress
   type STAT_LOADING_Field is
     (
      --  APB and WDT clock domains LOAD values match.
      Load_Match,
      --  APB LOAD value is being synchronized to WDT clock domain.
      Load_Syncing)
     with Size => 1;
   for STAT_LOADING_Field use
     (Load_Match => 0,
      Load_Syncing => 1);

   --  Control Register Write Sync in Progress
   type STAT_COUNTING_Field is
     (
      --  APB and WDT clock domain CTRL values match
      Count_Match,
      --  APB CTRL register values are being synchronized to WDT clock domain.
      Count_Syncing)
     with Size => 1;
   for STAT_COUNTING_Field use
     (Count_Match => 0,
      Count_Syncing => 1);

   --  Status
   type STAT_Register is record
      --  Read-only. WDT Interrupt
      IRQ           : Boolean;
      --  Read-only. Clear Interrupt Register Write Sync in Progress
      CLRIRQ        : Boolean;
      --  Read-only. Load Register Write Sync in Progress
      LOADING       : STAT_LOADING_Field;
      --  Read-only. Control Register Write Sync in Progress
      COUNTING      : STAT_COUNTING_Field;
      --  Read-only. Lock Status Bit
      LOCKED        : Boolean;
      --  unspecified
      Reserved_5_15 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      IRQ           at 0 range 0 .. 0;
      CLRIRQ        at 0 range 1 .. 1;
      LOADING       at 0 range 2 .. 2;
      COUNTING      at 0 range 3 .. 3;
      LOCKED        at 0 range 4 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT0_Peripheral is record
      --  Load Value
      LOAD    : aliased HAL.UInt16;
      --  Current Count Value
      CCNT    : aliased HAL.UInt16;
      --  Control
      CTL     : aliased CTL_Register;
      --  Clear Interrupt
      RESTART : aliased HAL.UInt16;
      --  Status
      STAT    : aliased STAT_Register;
   end record
     with Volatile;

   for WDT0_Peripheral use record
      LOAD    at 16#0# range 0 .. 15;
      CCNT    at 16#4# range 0 .. 15;
      CTL     at 16#8# range 0 .. 15;
      RESTART at 16#C# range 0 .. 15;
      STAT    at 16#18# range 0 .. 15;
   end record;

   --  Watchdog Timer
   WDT0_Periph : aliased WDT0_Peripheral
     with Import, Address => System'To_Address (16#40002C00#);

end NRF_SVD.WDT0;
