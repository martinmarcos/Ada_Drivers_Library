--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AON_SLEEP_TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CONTROL_SLP_TIMER_CLK_RELOAD_DLY_Field is HAL.UInt2;
   subtype CONTROL_SLP_TIMER_SINGLE_COUNT_ENABLE_DLY_Field is HAL.UInt3;

   --  Control for the Always On Sleep Timer
   type CONTROL_Register is record
      --  Active High Reload Enable
      RELOAD_ENABLE                     : Boolean := False;
      --  Rising Edge Single Count Enable
      SINGLE_COUNT_ENABLE               : Boolean := False;
      --  unspecified
      Reserved_2_3                      : HAL.UInt2 := 16#0#;
      --  Clears the interrupt. Auto clear. Must only be set after receiving
      --  the IRQ.
      IRQ_CLEAR                         : Boolean := False;
      --  unspecified
      Reserved_5_7                      : HAL.UInt3 := 16#0#;
      --  Read-only. Current Status of slp_timer_clk_reload on the sleep clock
      SLP_TIMER_CLK_RELOAD_DLY          : CONTROL_SLP_TIMER_CLK_RELOAD_DLY_Field :=
                                           16#0#;
      --  unspecified
      Reserved_10_11                    : HAL.UInt2 := 16#0#;
      --  Read-only. Current status of slp_timer_clk_single_count_enable on the
      --  sleep clock
      SLP_TIMER_SINGLE_COUNT_ENABLE_DLY : CONTROL_SLP_TIMER_SINGLE_COUNT_ENABLE_DLY_Field :=
                                           16#0#;
      --  unspecified
      Reserved_15_29                    : HAL.UInt15 := 16#0#;
      --  Read-only. If 1, indicates that the current sleep tiemr value is not
      --  0
      SLEEP_TIMER_ACTIVE                : Boolean := False;
      --  Read-only. If 1, indicates that the current sleep timer value is 0
      SLEEP_TIMER_NOT_ACTIVE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTROL_Register use record
      RELOAD_ENABLE                     at 0 range 0 .. 0;
      SINGLE_COUNT_ENABLE               at 0 range 1 .. 1;
      Reserved_2_3                      at 0 range 2 .. 3;
      IRQ_CLEAR                         at 0 range 4 .. 4;
      Reserved_5_7                      at 0 range 5 .. 7;
      SLP_TIMER_CLK_RELOAD_DLY          at 0 range 8 .. 9;
      Reserved_10_11                    at 0 range 10 .. 11;
      SLP_TIMER_SINGLE_COUNT_ENABLE_DLY at 0 range 12 .. 14;
      Reserved_15_29                    at 0 range 15 .. 29;
      SLEEP_TIMER_ACTIVE                at 0 range 30 .. 30;
      SLEEP_TIMER_NOT_ACTIVE            at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Always On Sleep Timer
   type AON_SLEEP_TIMER0_Peripheral is record
      --  Control for the Always On Sleep Timer
      CONTROL               : aliased CONTROL_Register;
      --  Count for the single count AND reload
      SINGLE_COUNT_DURATION : aliased HAL.UInt32;
      --  Current count of the sleep timer
      CURRENT_COUNT_VALUE   : aliased HAL.UInt32;
   end record
     with Volatile;

   for AON_SLEEP_TIMER0_Peripheral use record
      CONTROL               at 16#0# range 0 .. 31;
      SINGLE_COUNT_DURATION at 16#4# range 0 .. 31;
      CURRENT_COUNT_VALUE   at 16#C# range 0 .. 31;
   end record;

   --  Always On Sleep Timer
   AON_SLEEP_TIMER0_Periph : aliased AON_SLEEP_TIMER0_Peripheral
     with Import, Address => System'To_Address (16#4000D000#);

end SAM_SVD.AON_SLEEP_TIMER;
