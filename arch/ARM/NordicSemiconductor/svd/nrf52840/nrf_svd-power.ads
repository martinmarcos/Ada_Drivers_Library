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

--  This spec has been automatically generated from nrf52840.svd

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

   --  Write '1' to Enable interrupt for USBDETECTED event
   type INTENSET_USBDETECTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for USBDETECTED event
   type INTENSET_USBDETECTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Usbdetected_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBDETECTED_Field_1 use
     (Intenset_Usbdetected_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for USBREMOVED event
   type INTENSET_USBREMOVED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBREMOVED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for USBREMOVED event
   type INTENSET_USBREMOVED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Usbremoved_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBREMOVED_Field_1 use
     (Intenset_Usbremoved_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for USBPWRRDY event
   type INTENSET_USBPWRRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBPWRRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for USBPWRRDY event
   type INTENSET_USBPWRRDY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Usbpwrrdy_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBPWRRDY_Field_1 use
     (Intenset_Usbpwrrdy_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for POFWARN event
      POFWARN        : INTENSET_POFWARN_Field_1 :=
                        Intenset_Pofwarn_Field_Reset;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for SLEEPENTER event
      SLEEPENTER     : INTENSET_SLEEPENTER_Field_1 :=
                        Intenset_Sleepenter_Field_Reset;
      --  Write '1' to Enable interrupt for SLEEPEXIT event
      SLEEPEXIT      : INTENSET_SLEEPEXIT_Field_1 :=
                        Intenset_Sleepexit_Field_Reset;
      --  Write '1' to Enable interrupt for USBDETECTED event
      USBDETECTED    : INTENSET_USBDETECTED_Field_1 :=
                        Intenset_Usbdetected_Field_Reset;
      --  Write '1' to Enable interrupt for USBREMOVED event
      USBREMOVED     : INTENSET_USBREMOVED_Field_1 :=
                        Intenset_Usbremoved_Field_Reset;
      --  Write '1' to Enable interrupt for USBPWRRDY event
      USBPWRRDY      : INTENSET_USBPWRRDY_Field_1 :=
                        Intenset_Usbpwrrdy_Field_Reset;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      POFWARN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SLEEPENTER     at 0 range 5 .. 5;
      SLEEPEXIT      at 0 range 6 .. 6;
      USBDETECTED    at 0 range 7 .. 7;
      USBREMOVED     at 0 range 8 .. 8;
      USBPWRRDY      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
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

   --  Write '1' to Disable interrupt for USBDETECTED event
   type INTENCLR_USBDETECTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for USBDETECTED event
   type INTENCLR_USBDETECTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Usbdetected_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBDETECTED_Field_1 use
     (Intenclr_Usbdetected_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for USBREMOVED event
   type INTENCLR_USBREMOVED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBREMOVED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for USBREMOVED event
   type INTENCLR_USBREMOVED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Usbremoved_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBREMOVED_Field_1 use
     (Intenclr_Usbremoved_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for USBPWRRDY event
   type INTENCLR_USBPWRRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBPWRRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for USBPWRRDY event
   type INTENCLR_USBPWRRDY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Usbpwrrdy_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBPWRRDY_Field_1 use
     (Intenclr_Usbpwrrdy_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for POFWARN event
      POFWARN        : INTENCLR_POFWARN_Field_1 :=
                        Intenclr_Pofwarn_Field_Reset;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for SLEEPENTER event
      SLEEPENTER     : INTENCLR_SLEEPENTER_Field_1 :=
                        Intenclr_Sleepenter_Field_Reset;
      --  Write '1' to Disable interrupt for SLEEPEXIT event
      SLEEPEXIT      : INTENCLR_SLEEPEXIT_Field_1 :=
                        Intenclr_Sleepexit_Field_Reset;
      --  Write '1' to Disable interrupt for USBDETECTED event
      USBDETECTED    : INTENCLR_USBDETECTED_Field_1 :=
                        Intenclr_Usbdetected_Field_Reset;
      --  Write '1' to Disable interrupt for USBREMOVED event
      USBREMOVED     : INTENCLR_USBREMOVED_Field_1 :=
                        Intenclr_Usbremoved_Field_Reset;
      --  Write '1' to Disable interrupt for USBPWRRDY event
      USBPWRRDY      : INTENCLR_USBPWRRDY_Field_1 :=
                        Intenclr_Usbpwrrdy_Field_Reset;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      POFWARN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SLEEPENTER     at 0 range 5 .. 5;
      SLEEPEXIT      at 0 range 6 .. 6;
      USBDETECTED    at 0 range 7 .. 7;
      USBREMOVED     at 0 range 8 .. 8;
      USBPWRRDY      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
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
   --  ANADETECT signal from LPCOMP
   type RESETREAS_LPCOMP_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_LPCOMP_Field use
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

   --  Reset due to wake up from System OFF mode by NFC field detect
   type RESETREAS_NFC_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_NFC_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode by Vbus rising into valid
   --  range
   type RESETREAS_VBUS_Field is
     (
      --  Not detected
      Notdetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_VBUS_Field use
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
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from ANADETECT signal from LPCOMP
      LPCOMP         : RESETREAS_LPCOMP_Field := NRF_SVD.POWER.Notdetected;
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from entering into debug interface mode
      DIF            : RESETREAS_DIF_Field := NRF_SVD.POWER.Notdetected;
      --  Reset due to wake up from System OFF mode by NFC field detect
      NFC            : RESETREAS_NFC_Field := NRF_SVD.POWER.Notdetected;
      --  Reset due to wake up from System OFF mode by Vbus rising into valid
      --  range
      VBUS           : RESETREAS_VBUS_Field := NRF_SVD.POWER.Notdetected;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
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
      LPCOMP         at 0 range 17 .. 17;
      DIF            at 0 range 18 .. 18;
      NFC            at 0 range 19 .. 19;
      VBUS           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAM block 0 is on or off/powering up
   type RAMSTATUS_RAMBLOCK0_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for RAMSTATUS_RAMBLOCK0_Field use
     (Off => 0,
      On => 1);

   --  RAMSTATUS_RAMBLOCK array
   type RAMSTATUS_RAMBLOCK_Field_Array is array (0 .. 3)
     of RAMSTATUS_RAMBLOCK0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for RAMSTATUS_RAMBLOCK
   type RAMSTATUS_RAMBLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RAMBLOCK as a value
            Val : HAL.UInt4;
         when True =>
            --  RAMBLOCK as an array
            Arr : RAMSTATUS_RAMBLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RAMSTATUS_RAMBLOCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Deprecated register - RAM status register
   type RAMSTATUS_Register is record
      --  Read-only. RAM block 0 is on or off/powering up
      RAMBLOCK      : RAMSTATUS_RAMBLOCK_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMSTATUS_Register use record
      RAMBLOCK      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  VBUS input detection status (USBDETECTED and USBREMOVED events are
   --  derived from this information)
   type USBREGSTATUS_VBUSDETECT_Field is
     (
      --  VBUS voltage below valid threshold
      Novbus,
      --  VBUS voltage above valid threshold
      Vbuspresent)
     with Size => 1;
   for USBREGSTATUS_VBUSDETECT_Field use
     (Novbus => 0,
      Vbuspresent => 1);

   --  USB supply output settling time elapsed
   type USBREGSTATUS_OUTPUTRDY_Field is
     (
      --  USBREG output settling time not elapsed
      Notready,
      --  USBREG output settling time elapsed (same information as USBPWRRDY
      --  event)
      Ready)
     with Size => 1;
   for USBREGSTATUS_OUTPUTRDY_Field use
     (Notready => 0,
      Ready => 1);

   --  USB supply status
   type USBREGSTATUS_Register is record
      --  Read-only. VBUS input detection status (USBDETECTED and USBREMOVED
      --  events are derived from this information)
      VBUSDETECT    : USBREGSTATUS_VBUSDETECT_Field;
      --  Read-only. USB supply output settling time elapsed
      OUTPUTRDY     : USBREGSTATUS_OUTPUTRDY_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBREGSTATUS_Register use record
      VBUSDETECT    at 0 range 0 .. 0;
      OUTPUTRDY     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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

   --  Power failure comparator threshold setting. This setting applies both
   --  for normal voltage mode (supply connected to both VDD and VDDH) and high
   --  voltage mode (supply connected to VDDH only).
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

   --  Power failure comparator threshold setting for high voltage mode (supply
   --  connected to VDDH only). This setting does not apply for normal voltage
   --  mode (supply connected to both VDD and VDDH).
   type POFCON_THRESHOLDVDDH_Field is
     (
      --  Set threshold to 2.7 V
      V27,
      --  Set threshold to 2.8 V
      V28,
      --  Set threshold to 2.9 V
      V29,
      --  Set threshold to 3.0 V
      V30,
      --  Set threshold to 3.1 V
      V31,
      --  Set threshold to 3.2 V
      V32,
      --  Set threshold to 3.3 V
      V33,
      --  Set threshold to 3.4 V
      V34,
      --  Set threshold to 3.5 V
      V35,
      --  Set threshold to 3.6 V
      V36,
      --  Set threshold to 3.7 V
      V37,
      --  Set threshold to 3.8 V
      V38,
      --  Set threshold to 3.9 V
      V39,
      --  Set threshold to 4.0 V
      V40,
      --  Set threshold to 4.1 V
      V41,
      --  Set threshold to 4.2 V
      V42)
     with Size => 4;
   for POFCON_THRESHOLDVDDH_Field use
     (V27 => 0,
      V28 => 1,
      V29 => 2,
      V30 => 3,
      V31 => 4,
      V32 => 5,
      V33 => 6,
      V34 => 7,
      V35 => 8,
      V36 => 9,
      V37 => 10,
      V38 => 11,
      V39 => 12,
      V40 => 13,
      V41 => 14,
      V42 => 15);

   --  Power failure comparator configuration
   type POFCON_Register is record
      --  Enable or disable power failure comparator
      POF            : POFCON_POF_Field := NRF_SVD.POWER.Disabled;
      --  Power failure comparator threshold setting. This setting applies both
      --  for normal voltage mode (supply connected to both VDD and VDDH) and
      --  high voltage mode (supply connected to VDDH only).
      THRESHOLD      : POFCON_THRESHOLD_Field := Pofcon_Threshold_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Power failure comparator threshold setting for high voltage mode
      --  (supply connected to VDDH only). This setting does not apply for
      --  normal voltage mode (supply connected to both VDD and VDDH).
      THRESHOLDVDDH  : POFCON_THRESHOLDVDDH_Field := NRF_SVD.POWER.V27;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POFCON_Register use record
      POF            at 0 range 0 .. 0;
      THRESHOLD      at 0 range 1 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      THRESHOLDVDDH  at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
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

   --  Enable DC/DC converter for REG1 stage.
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

   --  Enable DC/DC converter for REG1 stage.
   type DCDCEN_Register is record
      --  Enable DC/DC converter for REG1 stage.
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

   --  Main supply status
   type MAINREGSTATUS_MAINREGSTATUS_Field is
     (
      --  Normal voltage mode. Voltage supplied on VDD.
      Normal,
      --  High voltage mode. Voltage supplied on VDDH.
      High)
     with Size => 1;
   for MAINREGSTATUS_MAINREGSTATUS_Field use
     (Normal => 0,
      High => 1);

   --  Main supply status
   type MAINREGSTATUS_Register is record
      --  Read-only. Main supply status
      MAINREGSTATUS : MAINREGSTATUS_MAINREGSTATUS_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAINREGSTATUS_Register use record
      MAINREGSTATUS at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------------
   -- RAM cluster's Registers --
   -----------------------------

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

   --  Keep RAM section S2 ON or OFF in System ON mode.
   type POWER_S2POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S2POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S3 ON or OFF in System ON mode.
   type POWER_S3POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S3POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S4 ON or OFF in System ON mode.
   type POWER_S4POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S4POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S5 ON or OFF in System ON mode.
   type POWER_S5POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S5POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S6 ON or OFF in System ON mode.
   type POWER_S6POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S6POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S7 ON or OFF in System ON mode.
   type POWER_S7POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S7POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S8 ON or OFF in System ON mode.
   type POWER_S8POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S8POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S9 ON or OFF in System ON mode.
   type POWER_S9POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S9POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S10 ON or OFF in System ON mode.
   type POWER_S10POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S10POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S11 ON or OFF in System ON mode.
   type POWER_S11POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S11POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S12 ON or OFF in System ON mode.
   type POWER_S12POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S12POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S13 ON or OFF in System ON mode.
   type POWER_S13POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S13POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S14 ON or OFF in System ON mode.
   type POWER_S14POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S14POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S15 ON or OFF in System ON mode.
   type POWER_S15POWER_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S15POWER_Field use
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

   --  Keep retention on RAM section S2 when RAM section is in OFF
   type POWER_S2RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S2RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S3 when RAM section is in OFF
   type POWER_S3RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S3RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S4 when RAM section is in OFF
   type POWER_S4RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S4RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S5 when RAM section is in OFF
   type POWER_S5RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S5RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S6 when RAM section is in OFF
   type POWER_S6RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S6RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S7 when RAM section is in OFF
   type POWER_S7RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S7RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S8 when RAM section is in OFF
   type POWER_S8RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S8RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S9 when RAM section is in OFF
   type POWER_S9RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S9RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S10 when RAM section is in OFF
   type POWER_S10RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S10RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S11 when RAM section is in OFF
   type POWER_S11RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S11RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S12 when RAM section is in OFF
   type POWER_S12RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S12RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S13 when RAM section is in OFF
   type POWER_S13RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S13RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S14 when RAM section is in OFF
   type POWER_S14RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S14RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S15 when RAM section is in OFF
   type POWER_S15RETENTION_Field is
     (
      --  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S15RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Description cluster[0]: RAM0 power control register
   type POWER_RAM_Register is record
      --  Keep RAM section S0 ON or OFF in System ON mode.
      S0POWER      : POWER_S0POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S1 ON or OFF in System ON mode.
      S1POWER      : POWER_S1POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S2 ON or OFF in System ON mode.
      S2POWER      : POWER_S2POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S3 ON or OFF in System ON mode.
      S3POWER      : POWER_S3POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S4 ON or OFF in System ON mode.
      S4POWER      : POWER_S4POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S5 ON or OFF in System ON mode.
      S5POWER      : POWER_S5POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S6 ON or OFF in System ON mode.
      S6POWER      : POWER_S6POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S7 ON or OFF in System ON mode.
      S7POWER      : POWER_S7POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S8 ON or OFF in System ON mode.
      S8POWER      : POWER_S8POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S9 ON or OFF in System ON mode.
      S9POWER      : POWER_S9POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S10 ON or OFF in System ON mode.
      S10POWER     : POWER_S10POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S11 ON or OFF in System ON mode.
      S11POWER     : POWER_S11POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S12 ON or OFF in System ON mode.
      S12POWER     : POWER_S12POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S13 ON or OFF in System ON mode.
      S13POWER     : POWER_S13POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S14 ON or OFF in System ON mode.
      S14POWER     : POWER_S14POWER_Field := NRF_SVD.POWER.On;
      --  Keep RAM section S15 ON or OFF in System ON mode.
      S15POWER     : POWER_S15POWER_Field := NRF_SVD.POWER.On;
      --  Keep retention on RAM section S0 when RAM section is in OFF
      S0RETENTION  : POWER_S0RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S1 when RAM section is in OFF
      S1RETENTION  : POWER_S1RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S2 when RAM section is in OFF
      S2RETENTION  : POWER_S2RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S3 when RAM section is in OFF
      S3RETENTION  : POWER_S3RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S4 when RAM section is in OFF
      S4RETENTION  : POWER_S4RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S5 when RAM section is in OFF
      S5RETENTION  : POWER_S5RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S6 when RAM section is in OFF
      S6RETENTION  : POWER_S6RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S7 when RAM section is in OFF
      S7RETENTION  : POWER_S7RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S8 when RAM section is in OFF
      S8RETENTION  : POWER_S8RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S9 when RAM section is in OFF
      S9RETENTION  : POWER_S9RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S10 when RAM section is in OFF
      S10RETENTION : POWER_S10RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S11 when RAM section is in OFF
      S11RETENTION : POWER_S11RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S12 when RAM section is in OFF
      S12RETENTION : POWER_S12RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S13 when RAM section is in OFF
      S13RETENTION : POWER_S13RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S14 when RAM section is in OFF
      S14RETENTION : POWER_S14RETENTION_Field := NRF_SVD.POWER.Off;
      --  Keep retention on RAM section S15 when RAM section is in OFF
      S15RETENTION : POWER_S15RETENTION_Field := NRF_SVD.POWER.Off;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_RAM_Register use record
      S0POWER      at 0 range 0 .. 0;
      S1POWER      at 0 range 1 .. 1;
      S2POWER      at 0 range 2 .. 2;
      S3POWER      at 0 range 3 .. 3;
      S4POWER      at 0 range 4 .. 4;
      S5POWER      at 0 range 5 .. 5;
      S6POWER      at 0 range 6 .. 6;
      S7POWER      at 0 range 7 .. 7;
      S8POWER      at 0 range 8 .. 8;
      S9POWER      at 0 range 9 .. 9;
      S10POWER     at 0 range 10 .. 10;
      S11POWER     at 0 range 11 .. 11;
      S12POWER     at 0 range 12 .. 12;
      S13POWER     at 0 range 13 .. 13;
      S14POWER     at 0 range 14 .. 14;
      S15POWER     at 0 range 15 .. 15;
      S0RETENTION  at 0 range 16 .. 16;
      S1RETENTION  at 0 range 17 .. 17;
      S2RETENTION  at 0 range 18 .. 18;
      S3RETENTION  at 0 range 19 .. 19;
      S4RETENTION  at 0 range 20 .. 20;
      S5RETENTION  at 0 range 21 .. 21;
      S6RETENTION  at 0 range 22 .. 22;
      S7RETENTION  at 0 range 23 .. 23;
      S8RETENTION  at 0 range 24 .. 24;
      S9RETENTION  at 0 range 25 .. 25;
      S10RETENTION at 0 range 26 .. 26;
      S11RETENTION at 0 range 27 .. 27;
      S12RETENTION at 0 range 28 .. 28;
      S13RETENTION at 0 range 29 .. 29;
      S14RETENTION at 0 range 30 .. 30;
      S15RETENTION at 0 range 31 .. 31;
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

   --  Keep RAM section S2 of RAM0 on or off in System ON mode
   type POWERSET_S2POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S2POWER_Field use
     (On => 1);

   --  Keep RAM section S3 of RAM0 on or off in System ON mode
   type POWERSET_S3POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S3POWER_Field use
     (On => 1);

   --  Keep RAM section S4 of RAM0 on or off in System ON mode
   type POWERSET_S4POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S4POWER_Field use
     (On => 1);

   --  Keep RAM section S5 of RAM0 on or off in System ON mode
   type POWERSET_S5POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S5POWER_Field use
     (On => 1);

   --  Keep RAM section S6 of RAM0 on or off in System ON mode
   type POWERSET_S6POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S6POWER_Field use
     (On => 1);

   --  Keep RAM section S7 of RAM0 on or off in System ON mode
   type POWERSET_S7POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S7POWER_Field use
     (On => 1);

   --  Keep RAM section S8 of RAM0 on or off in System ON mode
   type POWERSET_S8POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S8POWER_Field use
     (On => 1);

   --  Keep RAM section S9 of RAM0 on or off in System ON mode
   type POWERSET_S9POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S9POWER_Field use
     (On => 1);

   --  Keep RAM section S10 of RAM0 on or off in System ON mode
   type POWERSET_S10POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S10POWER_Field use
     (On => 1);

   --  Keep RAM section S11 of RAM0 on or off in System ON mode
   type POWERSET_S11POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S11POWER_Field use
     (On => 1);

   --  Keep RAM section S12 of RAM0 on or off in System ON mode
   type POWERSET_S12POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S12POWER_Field use
     (On => 1);

   --  Keep RAM section S13 of RAM0 on or off in System ON mode
   type POWERSET_S13POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S13POWER_Field use
     (On => 1);

   --  Keep RAM section S14 of RAM0 on or off in System ON mode
   type POWERSET_S14POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S14POWER_Field use
     (On => 1);

   --  Keep RAM section S15 of RAM0 on or off in System ON mode
   type POWERSET_S15POWER_Field is
     (
      --  On
      On)
     with Size => 1;
   for POWERSET_S15POWER_Field use
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

   --  Keep retention on RAM section S2 when RAM section is switched off
   type POWERSET_S2RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S2Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S2RETENTION_Field use
     (Powerset_S2Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S3 when RAM section is switched off
   type POWERSET_S3RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S3Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S3RETENTION_Field use
     (Powerset_S3Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S4 when RAM section is switched off
   type POWERSET_S4RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S4Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S4RETENTION_Field use
     (Powerset_S4Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S5 when RAM section is switched off
   type POWERSET_S5RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S5Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S5RETENTION_Field use
     (Powerset_S5Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S6 when RAM section is switched off
   type POWERSET_S6RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S6Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S6RETENTION_Field use
     (Powerset_S6Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S7 when RAM section is switched off
   type POWERSET_S7RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S7Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S7RETENTION_Field use
     (Powerset_S7Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S8 when RAM section is switched off
   type POWERSET_S8RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S8Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S8RETENTION_Field use
     (Powerset_S8Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S9 when RAM section is switched off
   type POWERSET_S9RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S9Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S9RETENTION_Field use
     (Powerset_S9Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S10 when RAM section is switched off
   type POWERSET_S10RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S10Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S10RETENTION_Field use
     (Powerset_S10Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S11 when RAM section is switched off
   type POWERSET_S11RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S11Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S11RETENTION_Field use
     (Powerset_S11Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S12 when RAM section is switched off
   type POWERSET_S12RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S12Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S12RETENTION_Field use
     (Powerset_S12Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S13 when RAM section is switched off
   type POWERSET_S13RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S13Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S13RETENTION_Field use
     (Powerset_S13Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S14 when RAM section is switched off
   type POWERSET_S14RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S14Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S14RETENTION_Field use
     (Powerset_S14Retention_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S15 when RAM section is switched off
   type POWERSET_S15RETENTION_Field is
     (
      --  Reset value for the field
      Powerset_S15Retention_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S15RETENTION_Field use
     (Powerset_S15Retention_Field_Reset => 0,
      On => 1);

   --  Description cluster[0]: RAM0 power control set register
   type POWERSET_RAM_Register is record
      --  Write-only. Keep RAM section S0 of RAM0 on or off in System ON mode
      S0POWER      : POWERSET_S0POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S1 of RAM0 on or off in System ON mode
      S1POWER      : POWERSET_S1POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S2 of RAM0 on or off in System ON mode
      S2POWER      : POWERSET_S2POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S3 of RAM0 on or off in System ON mode
      S3POWER      : POWERSET_S3POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S4 of RAM0 on or off in System ON mode
      S4POWER      : POWERSET_S4POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S5 of RAM0 on or off in System ON mode
      S5POWER      : POWERSET_S5POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S6 of RAM0 on or off in System ON mode
      S6POWER      : POWERSET_S6POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S7 of RAM0 on or off in System ON mode
      S7POWER      : POWERSET_S7POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S8 of RAM0 on or off in System ON mode
      S8POWER      : POWERSET_S8POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S9 of RAM0 on or off in System ON mode
      S9POWER      : POWERSET_S9POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S10 of RAM0 on or off in System ON mode
      S10POWER     : POWERSET_S10POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S11 of RAM0 on or off in System ON mode
      S11POWER     : POWERSET_S11POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S12 of RAM0 on or off in System ON mode
      S12POWER     : POWERSET_S12POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S13 of RAM0 on or off in System ON mode
      S13POWER     : POWERSET_S13POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S14 of RAM0 on or off in System ON mode
      S14POWER     : POWERSET_S14POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep RAM section S15 of RAM0 on or off in System ON mode
      S15POWER     : POWERSET_S15POWER_Field := NRF_SVD.POWER.On;
      --  Write-only. Keep retention on RAM section S0 when RAM section is
      --  switched off
      S0RETENTION  : POWERSET_S0RETENTION_Field :=
                      Powerset_S0Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S1 when RAM section is
      --  switched off
      S1RETENTION  : POWERSET_S1RETENTION_Field :=
                      Powerset_S1Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S2 when RAM section is
      --  switched off
      S2RETENTION  : POWERSET_S2RETENTION_Field :=
                      Powerset_S2Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S3 when RAM section is
      --  switched off
      S3RETENTION  : POWERSET_S3RETENTION_Field :=
                      Powerset_S3Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S4 when RAM section is
      --  switched off
      S4RETENTION  : POWERSET_S4RETENTION_Field :=
                      Powerset_S4Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S5 when RAM section is
      --  switched off
      S5RETENTION  : POWERSET_S5RETENTION_Field :=
                      Powerset_S5Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S6 when RAM section is
      --  switched off
      S6RETENTION  : POWERSET_S6RETENTION_Field :=
                      Powerset_S6Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S7 when RAM section is
      --  switched off
      S7RETENTION  : POWERSET_S7RETENTION_Field :=
                      Powerset_S7Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S8 when RAM section is
      --  switched off
      S8RETENTION  : POWERSET_S8RETENTION_Field :=
                      Powerset_S8Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S9 when RAM section is
      --  switched off
      S9RETENTION  : POWERSET_S9RETENTION_Field :=
                      Powerset_S9Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S10 when RAM section is
      --  switched off
      S10RETENTION : POWERSET_S10RETENTION_Field :=
                      Powerset_S10Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S11 when RAM section is
      --  switched off
      S11RETENTION : POWERSET_S11RETENTION_Field :=
                      Powerset_S11Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S12 when RAM section is
      --  switched off
      S12RETENTION : POWERSET_S12RETENTION_Field :=
                      Powerset_S12Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S13 when RAM section is
      --  switched off
      S13RETENTION : POWERSET_S13RETENTION_Field :=
                      Powerset_S13Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S14 when RAM section is
      --  switched off
      S14RETENTION : POWERSET_S14RETENTION_Field :=
                      Powerset_S14Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S15 when RAM section is
      --  switched off
      S15RETENTION : POWERSET_S15RETENTION_Field :=
                      Powerset_S15Retention_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERSET_RAM_Register use record
      S0POWER      at 0 range 0 .. 0;
      S1POWER      at 0 range 1 .. 1;
      S2POWER      at 0 range 2 .. 2;
      S3POWER      at 0 range 3 .. 3;
      S4POWER      at 0 range 4 .. 4;
      S5POWER      at 0 range 5 .. 5;
      S6POWER      at 0 range 6 .. 6;
      S7POWER      at 0 range 7 .. 7;
      S8POWER      at 0 range 8 .. 8;
      S9POWER      at 0 range 9 .. 9;
      S10POWER     at 0 range 10 .. 10;
      S11POWER     at 0 range 11 .. 11;
      S12POWER     at 0 range 12 .. 12;
      S13POWER     at 0 range 13 .. 13;
      S14POWER     at 0 range 14 .. 14;
      S15POWER     at 0 range 15 .. 15;
      S0RETENTION  at 0 range 16 .. 16;
      S1RETENTION  at 0 range 17 .. 17;
      S2RETENTION  at 0 range 18 .. 18;
      S3RETENTION  at 0 range 19 .. 19;
      S4RETENTION  at 0 range 20 .. 20;
      S5RETENTION  at 0 range 21 .. 21;
      S6RETENTION  at 0 range 22 .. 22;
      S7RETENTION  at 0 range 23 .. 23;
      S8RETENTION  at 0 range 24 .. 24;
      S9RETENTION  at 0 range 25 .. 25;
      S10RETENTION at 0 range 26 .. 26;
      S11RETENTION at 0 range 27 .. 27;
      S12RETENTION at 0 range 28 .. 28;
      S13RETENTION at 0 range 29 .. 29;
      S14RETENTION at 0 range 30 .. 30;
      S15RETENTION at 0 range 31 .. 31;
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

   --  Keep RAM section S2 of RAM0 on or off in System ON mode
   type POWERCLR_S2POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S2POWER_Field use
     (Off => 1);

   --  Keep RAM section S3 of RAM0 on or off in System ON mode
   type POWERCLR_S3POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S3POWER_Field use
     (Off => 1);

   --  Keep RAM section S4 of RAM0 on or off in System ON mode
   type POWERCLR_S4POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S4POWER_Field use
     (Off => 1);

   --  Keep RAM section S5 of RAM0 on or off in System ON mode
   type POWERCLR_S5POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S5POWER_Field use
     (Off => 1);

   --  Keep RAM section S6 of RAM0 on or off in System ON mode
   type POWERCLR_S6POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S6POWER_Field use
     (Off => 1);

   --  Keep RAM section S7 of RAM0 on or off in System ON mode
   type POWERCLR_S7POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S7POWER_Field use
     (Off => 1);

   --  Keep RAM section S8 of RAM0 on or off in System ON mode
   type POWERCLR_S8POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S8POWER_Field use
     (Off => 1);

   --  Keep RAM section S9 of RAM0 on or off in System ON mode
   type POWERCLR_S9POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S9POWER_Field use
     (Off => 1);

   --  Keep RAM section S10 of RAM0 on or off in System ON mode
   type POWERCLR_S10POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S10POWER_Field use
     (Off => 1);

   --  Keep RAM section S11 of RAM0 on or off in System ON mode
   type POWERCLR_S11POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S11POWER_Field use
     (Off => 1);

   --  Keep RAM section S12 of RAM0 on or off in System ON mode
   type POWERCLR_S12POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S12POWER_Field use
     (Off => 1);

   --  Keep RAM section S13 of RAM0 on or off in System ON mode
   type POWERCLR_S13POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S13POWER_Field use
     (Off => 1);

   --  Keep RAM section S14 of RAM0 on or off in System ON mode
   type POWERCLR_S14POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S14POWER_Field use
     (Off => 1);

   --  Keep RAM section S15 of RAM0 on or off in System ON mode
   type POWERCLR_S15POWER_Field is
     (
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S15POWER_Field use
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

   --  Keep retention on RAM section S2 when RAM section is switched off
   type POWERCLR_S2RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S2Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S2RETENTION_Field use
     (Powerclr_S2Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S3 when RAM section is switched off
   type POWERCLR_S3RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S3Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S3RETENTION_Field use
     (Powerclr_S3Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S4 when RAM section is switched off
   type POWERCLR_S4RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S4Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S4RETENTION_Field use
     (Powerclr_S4Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S5 when RAM section is switched off
   type POWERCLR_S5RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S5Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S5RETENTION_Field use
     (Powerclr_S5Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S6 when RAM section is switched off
   type POWERCLR_S6RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S6Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S6RETENTION_Field use
     (Powerclr_S6Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S7 when RAM section is switched off
   type POWERCLR_S7RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S7Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S7RETENTION_Field use
     (Powerclr_S7Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S8 when RAM section is switched off
   type POWERCLR_S8RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S8Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S8RETENTION_Field use
     (Powerclr_S8Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S9 when RAM section is switched off
   type POWERCLR_S9RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S9Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S9RETENTION_Field use
     (Powerclr_S9Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S10 when RAM section is switched off
   type POWERCLR_S10RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S10Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S10RETENTION_Field use
     (Powerclr_S10Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S11 when RAM section is switched off
   type POWERCLR_S11RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S11Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S11RETENTION_Field use
     (Powerclr_S11Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S12 when RAM section is switched off
   type POWERCLR_S12RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S12Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S12RETENTION_Field use
     (Powerclr_S12Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S13 when RAM section is switched off
   type POWERCLR_S13RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S13Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S13RETENTION_Field use
     (Powerclr_S13Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S14 when RAM section is switched off
   type POWERCLR_S14RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S14Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S14RETENTION_Field use
     (Powerclr_S14Retention_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S15 when RAM section is switched off
   type POWERCLR_S15RETENTION_Field is
     (
      --  Reset value for the field
      Powerclr_S15Retention_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S15RETENTION_Field use
     (Powerclr_S15Retention_Field_Reset => 0,
      Off => 1);

   --  Description cluster[0]: RAM0 power control clear register
   type POWERCLR_RAM_Register is record
      --  Write-only. Keep RAM section S0 of RAM0 on or off in System ON mode
      S0POWER      : POWERCLR_S0POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S1 of RAM0 on or off in System ON mode
      S1POWER      : POWERCLR_S1POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S2 of RAM0 on or off in System ON mode
      S2POWER      : POWERCLR_S2POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S3 of RAM0 on or off in System ON mode
      S3POWER      : POWERCLR_S3POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S4 of RAM0 on or off in System ON mode
      S4POWER      : POWERCLR_S4POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S5 of RAM0 on or off in System ON mode
      S5POWER      : POWERCLR_S5POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S6 of RAM0 on or off in System ON mode
      S6POWER      : POWERCLR_S6POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S7 of RAM0 on or off in System ON mode
      S7POWER      : POWERCLR_S7POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S8 of RAM0 on or off in System ON mode
      S8POWER      : POWERCLR_S8POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S9 of RAM0 on or off in System ON mode
      S9POWER      : POWERCLR_S9POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S10 of RAM0 on or off in System ON mode
      S10POWER     : POWERCLR_S10POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S11 of RAM0 on or off in System ON mode
      S11POWER     : POWERCLR_S11POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S12 of RAM0 on or off in System ON mode
      S12POWER     : POWERCLR_S12POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S13 of RAM0 on or off in System ON mode
      S13POWER     : POWERCLR_S13POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S14 of RAM0 on or off in System ON mode
      S14POWER     : POWERCLR_S14POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep RAM section S15 of RAM0 on or off in System ON mode
      S15POWER     : POWERCLR_S15POWER_Field := NRF_SVD.POWER.Off;
      --  Write-only. Keep retention on RAM section S0 when RAM section is
      --  switched off
      S0RETENTION  : POWERCLR_S0RETENTION_Field :=
                      Powerclr_S0Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S1 when RAM section is
      --  switched off
      S1RETENTION  : POWERCLR_S1RETENTION_Field :=
                      Powerclr_S1Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S2 when RAM section is
      --  switched off
      S2RETENTION  : POWERCLR_S2RETENTION_Field :=
                      Powerclr_S2Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S3 when RAM section is
      --  switched off
      S3RETENTION  : POWERCLR_S3RETENTION_Field :=
                      Powerclr_S3Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S4 when RAM section is
      --  switched off
      S4RETENTION  : POWERCLR_S4RETENTION_Field :=
                      Powerclr_S4Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S5 when RAM section is
      --  switched off
      S5RETENTION  : POWERCLR_S5RETENTION_Field :=
                      Powerclr_S5Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S6 when RAM section is
      --  switched off
      S6RETENTION  : POWERCLR_S6RETENTION_Field :=
                      Powerclr_S6Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S7 when RAM section is
      --  switched off
      S7RETENTION  : POWERCLR_S7RETENTION_Field :=
                      Powerclr_S7Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S8 when RAM section is
      --  switched off
      S8RETENTION  : POWERCLR_S8RETENTION_Field :=
                      Powerclr_S8Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S9 when RAM section is
      --  switched off
      S9RETENTION  : POWERCLR_S9RETENTION_Field :=
                      Powerclr_S9Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S10 when RAM section is
      --  switched off
      S10RETENTION : POWERCLR_S10RETENTION_Field :=
                      Powerclr_S10Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S11 when RAM section is
      --  switched off
      S11RETENTION : POWERCLR_S11RETENTION_Field :=
                      Powerclr_S11Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S12 when RAM section is
      --  switched off
      S12RETENTION : POWERCLR_S12RETENTION_Field :=
                      Powerclr_S12Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S13 when RAM section is
      --  switched off
      S13RETENTION : POWERCLR_S13RETENTION_Field :=
                      Powerclr_S13Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S14 when RAM section is
      --  switched off
      S14RETENTION : POWERCLR_S14RETENTION_Field :=
                      Powerclr_S14Retention_Field_Reset;
      --  Write-only. Keep retention on RAM section S15 when RAM section is
      --  switched off
      S15RETENTION : POWERCLR_S15RETENTION_Field :=
                      Powerclr_S15Retention_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERCLR_RAM_Register use record
      S0POWER      at 0 range 0 .. 0;
      S1POWER      at 0 range 1 .. 1;
      S2POWER      at 0 range 2 .. 2;
      S3POWER      at 0 range 3 .. 3;
      S4POWER      at 0 range 4 .. 4;
      S5POWER      at 0 range 5 .. 5;
      S6POWER      at 0 range 6 .. 6;
      S7POWER      at 0 range 7 .. 7;
      S8POWER      at 0 range 8 .. 8;
      S9POWER      at 0 range 9 .. 9;
      S10POWER     at 0 range 10 .. 10;
      S11POWER     at 0 range 11 .. 11;
      S12POWER     at 0 range 12 .. 12;
      S13POWER     at 0 range 13 .. 13;
      S14POWER     at 0 range 14 .. 14;
      S15POWER     at 0 range 15 .. 15;
      S0RETENTION  at 0 range 16 .. 16;
      S1RETENTION  at 0 range 17 .. 17;
      S2RETENTION  at 0 range 18 .. 18;
      S3RETENTION  at 0 range 19 .. 19;
      S4RETENTION  at 0 range 20 .. 20;
      S5RETENTION  at 0 range 21 .. 21;
      S6RETENTION  at 0 range 22 .. 22;
      S7RETENTION  at 0 range 23 .. 23;
      S8RETENTION  at 0 range 24 .. 24;
      S9RETENTION  at 0 range 25 .. 25;
      S10RETENTION at 0 range 26 .. 26;
      S11RETENTION at 0 range 27 .. 27;
      S12RETENTION at 0 range 28 .. 28;
      S13RETENTION at 0 range 29 .. 29;
      S14RETENTION at 0 range 30 .. 30;
      S15RETENTION at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type RAM_Cluster is record
      --  Description cluster[0]: RAM0 power control register
      POWER    : aliased POWER_RAM_Register;
      --  Description cluster[0]: RAM0 power control set register
      POWERSET : aliased POWERSET_RAM_Register;
      --  Description cluster[0]: RAM0 power control clear register
      POWERCLR : aliased POWERCLR_RAM_Register;
   end record
     with Volatile, Size => 128;

   for RAM_Cluster use record
      POWER    at 16#0# range 0 .. 31;
      POWERSET at 16#4# range 0 .. 31;
      POWERCLR at 16#8# range 0 .. 31;
   end record;

   --  Unspecified
   type RAM_Clusters is array (0 .. 8) of RAM_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type POWER_Peripheral is record
      --  Enable constant latency mode
      TASKS_CONSTLAT     : aliased HAL.UInt32;
      --  Enable low power mode (variable latency)
      TASKS_LOWPWR       : aliased HAL.UInt32;
      --  Power failure warning
      EVENTS_POFWARN     : aliased HAL.UInt32;
      --  CPU entered WFI/WFE sleep
      EVENTS_SLEEPENTER  : aliased HAL.UInt32;
      --  CPU exited WFI/WFE sleep
      EVENTS_SLEEPEXIT   : aliased HAL.UInt32;
      --  Voltage supply detected on VBUS
      EVENTS_USBDETECTED : aliased HAL.UInt32;
      --  Voltage supply removed from VBUS
      EVENTS_USBREMOVED  : aliased HAL.UInt32;
      --  USB 3.3 V supply ready
      EVENTS_USBPWRRDY   : aliased HAL.UInt32;
      --  Enable interrupt
      INTENSET           : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR           : aliased INTENCLR_Register;
      --  Reset reason
      RESETREAS          : aliased RESETREAS_Register;
      --  Deprecated register - RAM status register
      RAMSTATUS          : aliased RAMSTATUS_Register;
      --  USB supply status
      USBREGSTATUS       : aliased USBREGSTATUS_Register;
      --  System OFF register
      SYSTEMOFF          : aliased SYSTEMOFF_Register;
      --  Power failure comparator configuration
      POFCON             : aliased POFCON_Register;
      --  General purpose retention register
      GPREGRET           : aliased GPREGRET_Register;
      --  General purpose retention register
      GPREGRET2          : aliased GPREGRET_Register;
      --  Enable DC/DC converter for REG1 stage.
      DCDCEN             : aliased DCDCEN_Register;
      --  Enable DC/DC converter for REG0 stage.
      DCDCEN0            : aliased DCDCEN_Register;
      --  Main supply status
      MAINREGSTATUS      : aliased MAINREGSTATUS_Register;
      --  Unspecified
      RAM                : aliased RAM_Clusters;
   end record
     with Volatile;

   for POWER_Peripheral use record
      TASKS_CONSTLAT     at 16#78# range 0 .. 31;
      TASKS_LOWPWR       at 16#7C# range 0 .. 31;
      EVENTS_POFWARN     at 16#108# range 0 .. 31;
      EVENTS_SLEEPENTER  at 16#114# range 0 .. 31;
      EVENTS_SLEEPEXIT   at 16#118# range 0 .. 31;
      EVENTS_USBDETECTED at 16#11C# range 0 .. 31;
      EVENTS_USBREMOVED  at 16#120# range 0 .. 31;
      EVENTS_USBPWRRDY   at 16#124# range 0 .. 31;
      INTENSET           at 16#304# range 0 .. 31;
      INTENCLR           at 16#308# range 0 .. 31;
      RESETREAS          at 16#400# range 0 .. 31;
      RAMSTATUS          at 16#428# range 0 .. 31;
      USBREGSTATUS       at 16#438# range 0 .. 31;
      SYSTEMOFF          at 16#500# range 0 .. 31;
      POFCON             at 16#510# range 0 .. 31;
      GPREGRET           at 16#51C# range 0 .. 31;
      GPREGRET2          at 16#520# range 0 .. 31;
      DCDCEN             at 16#578# range 0 .. 31;
      DCDCEN0            at 16#580# range 0 .. 31;
      MAINREGSTATUS      at 16#640# range 0 .. 31;
      RAM                at 16#900# range 0 .. 1151;
   end record;

   --  Power control
   POWER_Periph : aliased POWER_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.POWER;
