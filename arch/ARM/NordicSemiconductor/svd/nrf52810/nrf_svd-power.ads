--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52810.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.POWER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable constant latency mode
   type TASKS_CONSTLAT_Register is record
      --  Write-only.
      TASKS_CONSTLAT : Boolean := False;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CONSTLAT_Register use record
      TASKS_CONSTLAT at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Enable low power mode (variable latency)
   type TASKS_LOWPWR_Register is record
      --  Write-only.
      TASKS_LOWPWR  : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_LOWPWR_Register use record
      TASKS_LOWPWR  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Power failure warning
   type EVENTS_POFWARN_Register is record
      EVENTS_POFWARN : Boolean := False;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_POFWARN_Register use record
      EVENTS_POFWARN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  CPU entered WFI/WFE sleep
   type EVENTS_SLEEPENTER_Register is record
      EVENTS_SLEEPENTER : Boolean := False;
      --  unspecified
      Reserved_1_31     : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SLEEPENTER_Register use record
      EVENTS_SLEEPENTER at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  CPU exited WFI/WFE sleep
   type EVENTS_SLEEPEXIT_Register is record
      EVENTS_SLEEPEXIT : Boolean := False;
      --  unspecified
      Reserved_1_31    : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SLEEPEXIT_Register use record
      EVENTS_SLEEPEXIT at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Write '1' to Enable interrupt for POFWARN event
   type INTENSET_POFWARN_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_POFWARN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for POFWARN event
   type INTENSET_POFWARN_Field_1 is
     (
      --  Reset value for the field
      Intenset_Pofwarn_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_POFWARN_Field_1 use
     (Intenset_Pofwarn_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for SLEEPENTER event
   type INTENSET_SLEEPENTER_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SLEEPENTER_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for SLEEPENTER event
   type INTENSET_SLEEPENTER_Field_1 is
     (
      --  Reset value for the field
      Intenset_Sleepenter_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SLEEPENTER_Field_1 use
     (Intenset_Sleepenter_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for SLEEPEXIT event
   type INTENSET_SLEEPEXIT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SLEEPEXIT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for SLEEPEXIT event
   type INTENSET_SLEEPEXIT_Field_1 is
     (
      --  Reset value for the field
      Intenset_Sleepexit_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SLEEPEXIT_Field_1 use
     (Intenset_Sleepexit_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for POFWARN event
      POFWARN       : INTENSET_POFWARN_Field_1 :=
                       Intenset_Pofwarn_Field_Reset;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for SLEEPENTER event
      SLEEPENTER    : INTENSET_SLEEPENTER_Field_1 :=
                       Intenset_Sleepenter_Field_Reset;
      --  Write '1' to Enable interrupt for SLEEPEXIT event
      SLEEPEXIT     : INTENSET_SLEEPEXIT_Field_1 :=
                       Intenset_Sleepexit_Field_Reset;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      POFWARN       at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      SLEEPENTER    at 0 range 5 .. 5;
      SLEEPEXIT     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Write '1' to Disable interrupt for POFWARN event
   type INTENCLR_POFWARN_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_POFWARN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for POFWARN event
   type INTENCLR_POFWARN_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Pofwarn_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_POFWARN_Field_1 use
     (Intenclr_Pofwarn_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for SLEEPENTER event
   type INTENCLR_SLEEPENTER_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SLEEPENTER_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for SLEEPENTER event
   type INTENCLR_SLEEPENTER_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Sleepenter_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SLEEPENTER_Field_1 use
     (Intenclr_Sleepenter_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for SLEEPEXIT event
   type INTENCLR_SLEEPEXIT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SLEEPEXIT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for SLEEPEXIT event
   type INTENCLR_SLEEPEXIT_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Sleepexit_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SLEEPEXIT_Field_1 use
     (Intenclr_Sleepexit_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for POFWARN event
      POFWARN       : INTENCLR_POFWARN_Field_1 :=
                       Intenclr_Pofwarn_Field_Reset;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for SLEEPENTER event
      SLEEPENTER    : INTENCLR_SLEEPENTER_Field_1 :=
                       Intenclr_Sleepenter_Field_Reset;
      --  Write '1' to Disable interrupt for SLEEPEXIT event
      SLEEPEXIT     : INTENCLR_SLEEPEXIT_Field_1 :=
                       Intenclr_Sleepexit_Field_Reset;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      POFWARN       at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      SLEEPENTER    at 0 range 5 .. 5;
      SLEEPEXIT     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Reset from pin-reset detected
   type RESETREAS_RESETPIN_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_RESETPIN_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset from watchdog detected
   type RESETREAS_DOG_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_DOG_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset from soft reset detected
   type RESETREAS_SREQ_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_SREQ_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset from CPU lock-up detected
   type RESETREAS_LOCKUP_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_LOCKUP_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode when wakeup is triggered from
   --  DETECT signal from GPIO
   type RESETREAS_OFF_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_OFF_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode when wakeup is triggered from
   --  entering into debug interface mode
   type RESETREAS_DIF_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_DIF_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset reason
   type RESETREAS_Register is record
      --  Reset from pin-reset detected
      RESETPIN       : RESETREAS_RESETPIN_Field := NRF_SVD.POWER.Notdetected;
      --  Reset from watchdog detected
      DOG            : RESETREAS_DOG_Field := NRF_SVD.POWER.Notdetected;
      --  Reset from soft reset detected
      SREQ           : RESETREAS_SREQ_Field := NRF_SVD.POWER.Notdetected;
      --  Reset from CPU lock-up detected
      LOCKUP         : RESETREAS_LOCKUP_Field := NRF_SVD.POWER.Notdetected;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from DETECT signal from GPIO
      OFF            : RESETREAS_OFF_Field := NRF_SVD.POWER.Notdetected;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from entering into debug interface mode
      DIF            : RESETREAS_DIF_Field := NRF_SVD.POWER.Notdetected;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESETREAS_Register use record
      RESETPIN       at 0 range 0 .. 0;
      DOG            at 0 range 1 .. 1;
      SREQ           at 0 range 2 .. 2;
      LOCKUP         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OFF            at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DIF            at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Enable System OFF mode
   type SYSTEMOFF_SYSTEMOFF_Field is
     (
      --  Reset value for the field
      Systemoff_Systemoff_Field_Reset,
      --  Enable System OFF mode
      Enter)
     with Size => 1;
   for SYSTEMOFF_SYSTEMOFF_Field use
     (Systemoff_Systemoff_Field_Reset => 0,
      Enter => 1);

   --  System OFF register
   type SYSTEMOFF_Register is record
      --  Write-only. Enable System OFF mode
      SYSTEMOFF     : SYSTEMOFF_SYSTEMOFF_Field :=
                       Systemoff_Systemoff_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTEMOFF_Register use record
      SYSTEMOFF     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable power failure comparator
   type POFCON_POF_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for POFCON_POF_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Power failure comparator threshold setting
   type POFCON_THRESHOLD_Field is
     (
      --  Reset value for the field
      Pofcon_Threshold_Field_Reset,
      --  Set threshold to 1.7 V
      V17,
      --  Set threshold to 1.8 V
      V18,
      --  Set threshold to 1.9 V
      V19,
      --  Set threshold to 2.0 V
      V20,
      --  Set threshold to 2.1 V
      V21,
      --  Set threshold to 2.2 V
      V22,
      --  Set threshold to 2.3 V
      V23,
      --  Set threshold to 2.4 V
      V24,
      --  Set threshold to 2.5 V
      V25,
      --  Set threshold to 2.6 V
      V26,
      --  Set threshold to 2.7 V
      V27,
      --  Set threshold to 2.8 V
      V28)
     with Size => 4;
   for POFCON_THRESHOLD_Field use
     (Pofcon_Threshold_Field_Reset => 0,
      V17 => 4,
      V18 => 5,
      V19 => 6,
      V20 => 7,
      V21 => 8,
      V22 => 9,
      V23 => 10,
      V24 => 11,
      V25 => 12,
      V26 => 13,
      V27 => 14,
      V28 => 15);

   --  Power failure comparator configuration
   type POFCON_Register is record
      --  Enable or disable power failure comparator
      POF           : POFCON_POF_Field := NRF_SVD.POWER.Disabled;
      --  Power failure comparator threshold setting
      THRESHOLD     : POFCON_THRESHOLD_Field := Pofcon_Threshold_Field_Reset;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POFCON_Register use record
      POF           at 0 range 0 .. 0;
      THRESHOLD     at 0 range 1 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype GPREGRET_GPREGRET_Field is HAL.UInt8;

   --  General purpose retention register
   type GPREGRET_Register is record
      --  General purpose retention register
      GPREGRET      : GPREGRET_GPREGRET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPREGRET_Register use record
      GPREGRET      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enable or disable DC/DC converter
   type DCDCEN_DCDCEN_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for DCDCEN_DCDCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  DC/DC enable register
   type DCDCEN_Register is record
      --  Enable or disable DC/DC converter
      DCDCEN        : DCDCEN_DCDCEN_Field := NRF_SVD.POWER.Disabled;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCEN_Register use record
      DCDCEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------------------
   -- POWER_RAM cluster's Registers --
   -----------------------------------

   --  Keep RAM section S0 ON or OFF in System ON mode.
   type POWER_S0POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S0POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S1 ON or OFF in System ON mode.
   type POWER_S1POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S1POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S0 when RAM section is in OFF
   type POWER_S0RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S0RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S1 when RAM section is in OFF
   type POWER_S1RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S1RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Description cluster[0]: RAM0 power control register
   type POWER_RAM_Register is record
      --  Keep RAM section S0 ON or OFF in System ON mode.
      S0POWER        : POWER_S0POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S1 ON or OFF in System ON mode.
      S1POWER        : POWER_S1POWER_Field := NRF_SVD.POWER.On;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#3FFF#;
      --  Keep retention on RAM section S0 when RAM section is in OFF
      S0RETENTION    : POWER_S0RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S1 when RAM section is in OFF
      S1RETENTION    : POWER_S1RETENTION_Field := NRF_SVD.POWER.Off;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_RAM_Register use record
      S0POWER        at 0 range 0 .. 0;
      S1POWER        at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      S0RETENTION    at 0 range 16 .. 16;
      S1RETENTION    at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Keep RAM section S0 of RAM0 on or off in System ON mode
   type POWERSET_S0POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S0POWER_Field use
     (On => 1);

   --  Keep RAM section S1 of RAM0 on or off in System ON mode
   type POWERSET_S1POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S1POWER_Field use
     (On => 1);

   --  Keep retention on RAM section S0 when RAM section is switched off
   type POWERSET_S0RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S0Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S0RETENTION_Field use
     (Powerset_S0Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S1 when RAM section is switched off
   type POWERSET_S1RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S1Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S1RETENTION_Field use
     (Powerset_S1Retention_Field_Reset => 0,
      On => 1);

   --  Description cluster[0]: RAM0 power control set register
   type POWERSET_RAM_Register is record
      --  Write-only. Keep RAM section S0 of RAM0 on or off in System ON mode
      S0POWER        : POWERSET_S0POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S1 of RAM0 on or off in System ON mode
      S1POWER        : POWERSET_S1POWER_Field := NRF_SVD.POWER.On;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#3FFF#;
      --  Write-only. Keep retention on RAM section S0 when RAM section is
      --  switched off
      S0RETENTION    : POWERSET_S0RETENTION_Field :=
                        Powerset_S0Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S1 when RAM section is
      --  switched off
      S1RETENTION    : POWERSET_S1RETENTION_Field :=
                        Powerset_S1Retention_Field_Reset;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERSET_RAM_Register use record
      S0POWER        at 0 range 0 .. 0;
      S1POWER        at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      S0RETENTION    at 0 range 16 .. 16;
      S1RETENTION    at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Keep RAM section S0 of RAM0 on or off in System ON mode
   type POWERCLR_S0POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S0POWER_Field use
     (Off => 1);

   --  Keep RAM section S1 of RAM0 on or off in System ON mode
   type POWERCLR_S1POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S1POWER_Field use
     (Off => 1);

   --  Keep retention on RAM section S0 when RAM section is switched off
   type POWERCLR_S0RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S0Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S0RETENTION_Field use
     (Powerclr_S0Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S1 when RAM section is switched off
   type POWERCLR_S1RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S1Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S1RETENTION_Field use
     (Powerclr_S1Retention_Field_Reset => 0,
      Off => 1);

   --  Description cluster[0]: RAM0 power control clear register
   type POWERCLR_RAM_Register is record
      --  Write-only. Keep RAM section S0 of RAM0 on or off in System ON mode
      S0POWER        : POWERCLR_S0POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S1 of RAM0 on or off in System ON mode
      S1POWER        : POWERCLR_S1POWER_Field := NRF_SVD.POWER.Off;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#3FFF#;
      --  Write-only. Keep retention on RAM section S0 when RAM section is
      --  switched off
      S0RETENTION    : POWERCLR_S0RETENTION_Field :=
                        Powerclr_S0Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S1 when RAM section is
      --  switched off
      S1RETENTION    : POWERCLR_S1RETENTION_Field :=
                        Powerclr_S1Retention_Field_Reset;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERCLR_RAM_Register use record
      S0POWER        at 0 range 0 .. 0;
      S1POWER        at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      S0RETENTION    at 0 range 16 .. 16;
      S1RETENTION    at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Unspecified
   type POWER_RAM_Cluster is record
      --  Description cluster[0]: RAM0 power control register
      POWER    : aliased POWER_RAM_Register;
      --  Description cluster[0]: RAM0 power control set register
      POWERSET : aliased POWERSET_RAM_Register;
      --  Description cluster[0]: RAM0 power control clear register
      POWERCLR : aliased POWERCLR_RAM_Register;
   end record
     with Volatile, Size => 128;

   for POWER_RAM_Cluster use record
      POWER    at 16#0# range 0 .. 31;
      POWERSET at 16#4# range 0 .. 31;
      POWERCLR at 16#8# range 0 .. 31;
   end record;

   --  Unspecified
   type POWER_RAM_Clusters is array (0 .. 7) of POWER_RAM_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type POWER_Peripheral is record
      --  Enable constant latency mode
      TASKS_CONSTLAT    : aliased TASKS_CONSTLAT_Register;
      --  Enable low power mode (variable latency)
      TASKS_LOWPWR      : aliased TASKS_LOWPWR_Register;
      --  Power failure warning
      EVENTS_POFWARN    : aliased EVENTS_POFWARN_Register;
      --  CPU entered WFI/WFE sleep
      EVENTS_SLEEPENTER : aliased EVENTS_SLEEPENTER_Register;
      --  CPU exited WFI/WFE sleep
      EVENTS_SLEEPEXIT  : aliased EVENTS_SLEEPEXIT_Register;
      --  Enable interrupt
      INTENSET          : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR          : aliased INTENCLR_Register;
      --  Reset reason
      RESETREAS         : aliased RESETREAS_Register;
      --  System OFF register
      SYSTEMOFF         : aliased SYSTEMOFF_Register;
      --  Power failure comparator configuration
      POFCON            : aliased POFCON_Register;
      --  General purpose retention register
      GPREGRET          : aliased GPREGRET_Register;
      --  General purpose retention register
      GPREGRET2         : aliased GPREGRET_Register;
      --  DC/DC enable register
      DCDCEN            : aliased DCDCEN_Register;
      --  Unspecified
      RAM               : aliased POWER_RAM_Clusters;
   end record
     with Volatile;

   for POWER_Peripheral use record
      TASKS_CONSTLAT    at 16#78# range 0 .. 31;
      TASKS_LOWPWR      at 16#7C# range 0 .. 31;
      EVENTS_POFWARN    at 16#108# range 0 .. 31;
      EVENTS_SLEEPENTER at 16#114# range 0 .. 31;
      EVENTS_SLEEPEXIT  at 16#118# range 0 .. 31;
      INTENSET          at 16#304# range 0 .. 31;
      INTENCLR          at 16#308# range 0 .. 31;
      RESETREAS         at 16#400# range 0 .. 31;
      SYSTEMOFF         at 16#500# range 0 .. 31;
      POFCON            at 16#510# range 0 .. 31;
      GPREGRET          at 16#51C# range 0 .. 31;
      GPREGRET2         at 16#520# range 0 .. 31;
      DCDCEN            at 16#578# range 0 .. 31;
      RAM               at 16#900# range 0 .. 1023;
   end record;

   --  Power control
   POWER_Periph : aliased POWER_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.POWER;
