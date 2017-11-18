--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TMR_RGB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_PRE_Field is HAL.UInt2;
   subtype CTL_CLK_Field is HAL.UInt2;

   --  Control
   type CTL_Register is record
      --  Prescaler
      PRE           : CTL_PRE_Field := 16#2#;
      --  Count up
      UP            : Boolean := False;
      --  Timer mode
      MODE          : Boolean := True;
      --  Timer enable
      EN            : Boolean := False;
      --  Clock select
      CLK           : CTL_CLK_Field := 16#0#;
      --  Reload control
      RLD           : Boolean := False;
      --  unspecified
      Reserved_8_12 : HAL.UInt5 := 16#0#;
      --  Event select
      EVTEN         : Boolean := False;
      --  Counter and prescale reset enable
      RSTEN         : Boolean := False;
      --  Synchronization bypass
      SYNCBYP       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      PRE           at 0 range 0 .. 1;
      UP            at 0 range 2 .. 2;
      MODE          at 0 range 3 .. 3;
      EN            at 0 range 4 .. 4;
      CLK           at 0 range 5 .. 6;
      RLD           at 0 range 7 .. 7;
      Reserved_8_12 at 0 range 8 .. 12;
      EVTEN         at 0 range 13 .. 13;
      RSTEN         at 0 range 14 .. 14;
      SYNCBYP       at 0 range 15 .. 15;
   end record;

   --  Clear interrupt
   type CLRINT_Register is record
      --  Write-only. Clear timeout interrupt
      TIMEOUT       : Boolean := False;
      --  Write-only. Clear captured event interrupt
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
      --  Read-only. Timeout event occurred
      TIMEOUT       : Boolean;
      --  Read-only. Capture event pending
      CAPTURE       : Boolean;
      --  unspecified
      Reserved_2_5  : HAL.UInt4;
      --  Read-only. Timer Busy
      BUSY          : Boolean;
      --  Read-only. Clear Interrupt Register synchronization
      PDOK          : Boolean;
      --  Read-only. Counter reset occurring
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

   --  PWM0 Control Register
   type PWM0CTL_Register is record
      --  PWM Match enabled
      MATCH         : Boolean := False;
      --  PWM Idle State
      IDLESTATE     : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0CTL_Register use record
      MATCH         at 0 range 0 .. 0;
      IDLESTATE     at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype EVENTSELECT_EVTRANGE_Field is HAL.UInt6;

   --  Timer Event selection Register
   type EVENTSELECT_Register is record
      --  Event select range
      EVTRANGE      : EVENTSELECT_EVTRANGE_Field := 16#0#;
      --  unspecified
      Reserved_6_15 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for EVENTSELECT_Register use record
      EVTRANGE      at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   --  PWM1 Control Register
   type PWM1CTL_Register is record
      --  PWM Match enabled
      MATCH         : Boolean := False;
      --  PWM Idle State
      IDLESTATE     : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM1CTL_Register use record
      MATCH         at 0 range 0 .. 0;
      IDLESTATE     at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  PWM2 Control Register
   type PWM2CTL_Register is record
      --  PWM Match enabled
      MATCH         : Boolean := False;
      --  PWM Idle State
      IDLESTATE     : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM2CTL_Register use record
      MATCH         at 0 range 0 .. 0;
      IDLESTATE     at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Timer_RGB with 3 PWM outputs
   type TMR_RGB_Peripheral is record
      --  16-bit load value
      LOAD        : aliased HAL.UInt16;
      --  16-bit timer value
      CURCNT      : aliased HAL.UInt16;
      --  Control
      CTL         : aliased CTL_Register;
      --  Clear interrupt
      CLRINT      : aliased CLRINT_Register;
      --  Capture
      CAPTURE     : aliased HAL.UInt16;
      --  16-bit load value, asynchronous
      ALOAD       : aliased HAL.UInt16;
      --  16-bit timer value, asynchronous
      ACURCNT     : aliased HAL.UInt16;
      --  Status
      STAT        : aliased STAT_Register;
      --  PWM0 Control Register
      PWM0CTL     : aliased PWM0CTL_Register;
      --  PWM0 Match Value
      PWM0MATCH   : aliased HAL.UInt16;
      --  Timer Event selection Register
      EVENTSELECT : aliased EVENTSELECT_Register;
      --  PWM1 Control Register
      PWM1CTL     : aliased PWM1CTL_Register;
      --  PWM1 Match Value
      PWM1MATCH   : aliased HAL.UInt16;
      --  PWM2 Control Register
      PWM2CTL     : aliased PWM2CTL_Register;
      --  PWM2 Match Value
      PWM2MATCH   : aliased HAL.UInt16;
   end record
     with Volatile;

   for TMR_RGB_Peripheral use record
      LOAD        at 16#0# range 0 .. 15;
      CURCNT      at 16#4# range 0 .. 15;
      CTL         at 16#8# range 0 .. 15;
      CLRINT      at 16#C# range 0 .. 15;
      CAPTURE     at 16#10# range 0 .. 15;
      ALOAD       at 16#14# range 0 .. 15;
      ACURCNT     at 16#18# range 0 .. 15;
      STAT        at 16#1C# range 0 .. 15;
      PWM0CTL     at 16#20# range 0 .. 15;
      PWM0MATCH   at 16#24# range 0 .. 15;
      EVENTSELECT at 16#28# range 0 .. 15;
      PWM1CTL     at 16#2C# range 0 .. 15;
      PWM1MATCH   at 16#30# range 0 .. 15;
      PWM2CTL     at 16#34# range 0 .. 15;
      PWM2MATCH   at 16#38# range 0 .. 15;
   end record;

   --  Timer_RGB with 3 PWM outputs
   TMR_RGB_Periph : aliased TMR_RGB_Peripheral
     with Import, Address => System'To_Address (16#40000C00#);

end NRF_SVD.TMR_RGB;
