--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TMR0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_PRE_Field is HAL.UInt2;
   subtype CTL_CLK_Field is HAL.UInt2;
   subtype CTL_EVTRANGE_Field is HAL.UInt5;

   --  Control
   type CTL_Register is record
      --  Prescaler
      PRE      : CTL_PRE_Field := 16#2#;
      --  Count up
      UP       : Boolean := False;
      --  Timer Mode
      MODE     : Boolean := True;
      --  Timer Enable
      EN       : Boolean := False;
      --  Clock Select
      CLK      : CTL_CLK_Field := 16#0#;
      --  Reload Control
      RLD      : Boolean := False;
      --  Event Select Range
      EVTRANGE : CTL_EVTRANGE_Field := 16#0#;
      --  Event Select
      EVTEN    : Boolean := False;
      --  Counter and Prescale Reset Enable
      RSTEN    : Boolean := False;
      --  Synchronization Bypass
      SYNCBYP  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      PRE      at 0 range 0 .. 1;
      UP       at 0 range 2 .. 2;
      MODE     at 0 range 3 .. 3;
      EN       at 0 range 4 .. 4;
      CLK      at 0 range 5 .. 6;
      RLD      at 0 range 7 .. 7;
      EVTRANGE at 0 range 8 .. 12;
      EVTEN    at 0 range 13 .. 13;
      RSTEN    at 0 range 14 .. 14;
      SYNCBYP  at 0 range 15 .. 15;
   end record;

   --  Clear Interrupt
   type CLRINT_Register is record
      --  Write-only. Clear Timeout Interrupt
      TIMEOUT       : Boolean := False;
      --  Write-only. Clear Captured Event Interrupt
      EVTCAPT       : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CLRINT_Register use record
      TIMEOUT       at 0 range 0 .. 0;
      EVTCAPT       at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  Status
   type STAT_Register is record
      --  Read-only. Timeout Event Occurred
      TIMEOUT       : Boolean;
      --  Read-only. Capture Event Pending
      CAPTURE       : Boolean;
      --  unspecified
      Reserved_2_5  : HAL.UInt4;
      --  Read-only. Timer Busy
      BUSY          : Boolean;
      --  Read-only. Clear Interrupt Register Synchronization
      PDOK          : Boolean;
      --  Read-only. Counter Reset Occurring
      CNTRST        : Boolean;
      --  unspecified
      Reserved_9_15 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      TIMEOUT       at 0 range 0 .. 0;
      CAPTURE       at 0 range 1 .. 1;
      Reserved_2_5  at 0 range 2 .. 5;
      BUSY          at 0 range 6 .. 6;
      PDOK          at 0 range 7 .. 7;
      CNTRST        at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  PWM Match Enabled
   type PWMCTL_MATCH_Field is
     (
      --  PWM in toggle mode
      Pwm_Toggle,
      --  PWM in match mode
      Pwm_Match)
     with Size => 1;
   for PWMCTL_MATCH_Field use
     (Pwm_Toggle => 0,
      Pwm_Match => 1);

   --  PWM Idle State
   type PWMCTL_IDLESTATE_Field is
     (
      --  PWM idles low
      Idle_Low,
      --  PWM idles high
      Idle_High)
     with Size => 1;
   for PWMCTL_IDLESTATE_Field use
     (Idle_Low => 0,
      Idle_High => 1);

   --  PWM Control Register
   type PWMCTL_Register is record
      --  PWM Match Enabled
      MATCH         : PWMCTL_MATCH_Field := NRF_SVD.TMR0.Pwm_Toggle;
      --  PWM Idle State
      IDLESTATE     : PWMCTL_IDLESTATE_Field := NRF_SVD.TMR0.Idle_Low;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWMCTL_Register use record
      MATCH         at 0 range 0 .. 0;
      IDLESTATE     at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Timer
   type TMR0_Peripheral is record
      --  16-bit Load Value
      LOAD     : aliased HAL.UInt16;
      --  16-bit Timer Value
      CURCNT   : aliased HAL.UInt16;
      --  Control
      CTL      : aliased CTL_Register;
      --  Clear Interrupt
      CLRINT   : aliased CLRINT_Register;
      --  Capture
      CAPTURE  : aliased HAL.UInt16;
      --  16-bit Load Value, Asynchronous
      ALOAD    : aliased HAL.UInt16;
      --  16-bit Timer Value, Asynchronous
      ACURCNT  : aliased HAL.UInt16;
      --  Status
      STAT     : aliased STAT_Register;
      --  PWM Control Register
      PWMCTL   : aliased PWMCTL_Register;
      --  PWM Match Value
      PWMMATCH : aliased HAL.UInt16;
   end record
     with Volatile;

   for TMR0_Peripheral use record
      LOAD     at 16#0# range 0 .. 15;
      CURCNT   at 16#4# range 0 .. 15;
      CTL      at 16#8# range 0 .. 15;
      CLRINT   at 16#C# range 0 .. 15;
      CAPTURE  at 16#10# range 0 .. 15;
      ALOAD    at 16#14# range 0 .. 15;
      ACURCNT  at 16#18# range 0 .. 15;
      STAT     at 16#1C# range 0 .. 15;
      PWMCTL   at 16#20# range 0 .. 15;
      PWMMATCH at 16#24# range 0 .. 15;
   end record;

   --  General Purpose Timer
   TMR0_Periph : aliased TMR0_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

   --  General Purpose Timer
   TMR1_Periph : aliased TMR0_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

   --  General Purpose Timer
   TMR2_Periph : aliased TMR0_Peripheral
     with Import, Address => System'To_Address (16#40000800#);

end NRF_SVD.TMR0;
