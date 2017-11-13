--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAMD51J20A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.OSC32KCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Clear
   type OSC32KCTRL_INTENCLR_Register is record
      --  XOSC32K Ready Interrupt Enable
      XOSC32KRDY    : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  XOSC32K Clock Failure Detector Interrupt Enable
      XOSC32KFAIL   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_INTENCLR_Register use record
      XOSC32KRDY    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      XOSC32KFAIL   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Enable Set
   type OSC32KCTRL_INTENSET_Register is record
      --  XOSC32K Ready Interrupt Enable
      XOSC32KRDY    : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  XOSC32K Clock Failure Detector Interrupt Enable
      XOSC32KFAIL   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_INTENSET_Register use record
      XOSC32KRDY    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      XOSC32KFAIL   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type OSC32KCTRL_INTFLAG_Register is record
      --  XOSC32K Ready
      XOSC32KRDY    : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  XOSC32K Clock Failure Detector
      XOSC32KFAIL   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_INTFLAG_Register use record
      XOSC32KRDY    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      XOSC32KFAIL   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Power and Clocks Status
   type OSC32KCTRL_STATUS_Register is record
      --  Read-only. XOSC32K Ready
      XOSC32KRDY    : Boolean;
      --  unspecified
      Reserved_1_1  : HAL.Bit;
      --  Read-only. XOSC32K Clock Failure Detector
      XOSC32KFAIL   : Boolean;
      --  Read-only. XOSC32K Clock switch
      XOSC32KSW     : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_STATUS_Register use record
      XOSC32KRDY    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      XOSC32KFAIL   at 0 range 2 .. 2;
      XOSC32KSW     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RTC Clock Selection
   type RTCCTRL_RTCSELSelect is
     (
      --  1.024kHz from 32kHz internal ULP oscillator
      Ulp1K,
      --  32.768kHz from 32kHz internal ULP oscillator
      Ulp32K,
      --  1.024kHz from 32.768kHz internal oscillator
      Xosc1K,
      --  32.768kHz from 32.768kHz external crystal oscillator
      Xosc32K)
     with Size => 3;
   for RTCCTRL_RTCSELSelect use
     (Ulp1K => 0,
      Ulp32K => 1,
      Xosc1K => 4,
      Xosc32K => 5);

   --  RTC Clock Selection
   type OSC32KCTRL_RTCCTRL_Register is record
      --  RTC Clock Selection
      RTCSEL       : RTCCTRL_RTCSELSelect := SAM_SVD.OSC32KCTRL.Ulp1K;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_RTCCTRL_Register use record
      RTCSEL       at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype OSC32KCTRL_XOSC32K_STARTUP_Field is HAL.UInt3;

   --  Control Gain Mode
   type XOSC32K_CGMSelect is
     (
      --  Standard mode
      Xt,
      --  High Speed mode
      Hs)
     with Size => 2;
   for XOSC32K_CGMSelect use
     (Xt => 1,
      Hs => 2);

   --  32kHz External Crystal Oscillator (XOSC32K) Control
   type OSC32KCTRL_XOSC32K_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE         : Boolean := False;
      --  Crystal Oscillator Enable
      XTALEN         : Boolean := False;
      --  32kHz Output Enable
      EN32K          : Boolean := False;
      --  1kHz Output Enable
      EN1K           : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := True;
      --  Oscillator Start-Up Time
      STARTUP        : OSC32KCTRL_XOSC32K_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write Lock
      WRTLOCK        : Boolean := False;
      --  Control Gain Mode
      CGM            : XOSC32K_CGMSelect := SAM_SVD.OSC32KCTRL.Xt;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_XOSC32K_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      XTALEN         at 0 range 2 .. 2;
      EN32K          at 0 range 3 .. 3;
      EN1K           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      STARTUP        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WRTLOCK        at 0 range 12 .. 12;
      CGM            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  Clock Failure Detector Control
   type OSC32KCTRL_CFDCTRL_Register is record
      --  Clock Failure Detector Enable
      CFDEN        : Boolean := False;
      --  Clock Switch Back
      SWBACK       : Boolean := False;
      --  Clock Failure Detector Prescaler
      CFDPRESC     : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_CFDCTRL_Register use record
      CFDEN        at 0 range 0 .. 0;
      SWBACK       at 0 range 1 .. 1;
      CFDPRESC     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Event Control
   type OSC32KCTRL_EVCTRL_Register is record
      --  Clock Failure Detector Event Output Enable
      CFDEO        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_EVCTRL_Register use record
      CFDEO        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   subtype OSC32KCTRL_OSCULP32K_CALIB_Field is HAL.UInt6;

   --  32kHz Ultra Low Power Internal Oscillator (OSCULP32K) Control
   type OSC32KCTRL_OSCULP32K_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable Out 32k
      EN32K          : Boolean := False;
      --  Enable Out 1k
      EN1K           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Oscillator Calibration
      CALIB          : OSC32KCTRL_OSCULP32K_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Write Lock
      WRTLOCK        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSC32KCTRL_OSCULP32K_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EN32K          at 0 range 1 .. 1;
      EN1K           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CALIB          at 0 range 8 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      WRTLOCK        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  32kHz Oscillators Control
   type OSC32KCTRL_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR  : aliased OSC32KCTRL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET  : aliased OSC32KCTRL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG   : aliased OSC32KCTRL_INTFLAG_Register;
      --  Power and Clocks Status
      STATUS    : aliased OSC32KCTRL_STATUS_Register;
      --  RTC Clock Selection
      RTCCTRL   : aliased OSC32KCTRL_RTCCTRL_Register;
      --  32kHz External Crystal Oscillator (XOSC32K) Control
      XOSC32K   : aliased OSC32KCTRL_XOSC32K_Register;
      --  Clock Failure Detector Control
      CFDCTRL   : aliased OSC32KCTRL_CFDCTRL_Register;
      --  Event Control
      EVCTRL    : aliased OSC32KCTRL_EVCTRL_Register;
      --  32kHz Ultra Low Power Internal Oscillator (OSCULP32K) Control
      OSCULP32K : aliased OSC32KCTRL_OSCULP32K_Register;
   end record
     with Volatile;

   for OSC32KCTRL_Peripheral use record
      INTENCLR  at 16#0# range 0 .. 31;
      INTENSET  at 16#4# range 0 .. 31;
      INTFLAG   at 16#8# range 0 .. 31;
      STATUS    at 16#C# range 0 .. 31;
      RTCCTRL   at 16#10# range 0 .. 7;
      XOSC32K   at 16#14# range 0 .. 15;
      CFDCTRL   at 16#16# range 0 .. 7;
      EVCTRL    at 16#17# range 0 .. 7;
      OSCULP32K at 16#1C# range 0 .. 31;
   end record;

   --  32kHz Oscillators Control
   OSC32KCTRL_Periph : aliased OSC32KCTRL_Peripheral
     with Import, Address => System'To_Address (16#40001400#);

end SAM_SVD.OSC32KCTRL;
