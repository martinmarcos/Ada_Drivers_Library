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

--  This spec has been automatically generated from ATSAMD20J17.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SYSCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Clear
   type SYSCTRL_INTENCLR_Register is record
      --  XOSC Ready
      XOSCRDY        : Boolean := False;
      --  XOSC32K Ready
      XOSC32KRDY     : Boolean := False;
      --  OSC32K Ready
      OSC32KRDY      : Boolean := False;
      --  OSC8M Ready
      OSC8MRDY       : Boolean := False;
      --  DFLL Ready
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped
      DFLLRCS        : Boolean := False;
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_INTENCLR_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Enable Set
   type SYSCTRL_INTENSET_Register is record
      --  XOSC Ready
      XOSCRDY        : Boolean := False;
      --  XOSC32K Ready
      XOSC32KRDY     : Boolean := False;
      --  OSC32K Ready
      OSC32KRDY      : Boolean := False;
      --  OSC8M Ready
      OSC8MRDY       : Boolean := False;
      --  DFLL Ready
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped
      DFLLRCS        : Boolean := False;
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_INTENSET_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type SYSCTRL_INTFLAG_Register is record
      --  XOSC Ready
      XOSCRDY        : Boolean := False;
      --  XOSC32K Ready
      XOSC32KRDY     : Boolean := False;
      --  OSC32K Ready
      OSC32KRDY      : Boolean := False;
      --  OSC8M Ready
      OSC8MRDY       : Boolean := False;
      --  DFLL Ready
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped
      DFLLRCS        : Boolean := False;
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_INTFLAG_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Power and Clocks Status
   type SYSCTRL_PCLKSR_Register is record
      --  Read-only. XOSC Ready
      XOSCRDY        : Boolean;
      --  Read-only. XOSC32K Ready
      XOSC32KRDY     : Boolean;
      --  Read-only. OSC32K Ready
      OSC32KRDY      : Boolean;
      --  Read-only. OSC8M Ready
      OSC8MRDY       : Boolean;
      --  Read-only. DFLL Ready
      DFLLRDY        : Boolean;
      --  Read-only. DFLL Out Of Bounds
      DFLLOOB        : Boolean;
      --  Read-only. DFLL Lock Fine
      DFLLLCKF       : Boolean;
      --  Read-only. DFLL Lock Coarse
      DFLLLCKC       : Boolean;
      --  Read-only. DFLL Reference Clock Stopped
      DFLLRCS        : Boolean;
      --  Read-only. BOD33 Ready
      BOD33RDY       : Boolean;
      --  Read-only. BOD33 Detection
      BOD33DET       : Boolean;
      --  Read-only. BOD33 Synchronization Ready
      B33SRDY        : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_PCLKSR_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SYSCTRL_XOSC_GAIN_Field is HAL.UInt3;
   subtype SYSCTRL_XOSC_STARTUP_Field is HAL.UInt4;

   --  XOSC Control
   type SYSCTRL_XOSC_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Enable
      ENABLE       : Boolean := False;
      --  Crystal Oscillator Enable
      XTALEN       : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Run during Standby
      RUNSTDBY     : Boolean := False;
      --  Enable on Demand
      ONDEMAND     : Boolean := True;
      --  Gain Value
      GAIN         : SYSCTRL_XOSC_GAIN_Field := 16#0#;
      --  Automatic Amplitude Gain Control
      AMPGC        : Boolean := False;
      --  Start-Up Time
      STARTUP      : SYSCTRL_XOSC_STARTUP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_XOSC_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      XTALEN       at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
      GAIN         at 0 range 8 .. 10;
      AMPGC        at 0 range 11 .. 11;
      STARTUP      at 0 range 12 .. 15;
   end record;

   subtype SYSCTRL_XOSC32K_STARTUP_Field is HAL.UInt3;

   --  XOSC32K Control
   type SYSCTRL_XOSC32K_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Crystal Oscillator Enable
      XTALEN         : Boolean := False;
      --  32kHz Output Enable
      EN32K          : Boolean := False;
      --  1kHz Output Enable
      EN1K           : Boolean := False;
      --  Automatic Amplitude Control Enable
      AAMPEN         : Boolean := False;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  Enable on Demand
      ONDEMAND       : Boolean := True;
      --  Start-Up Time
      STARTUP        : SYSCTRL_XOSC32K_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write Lock
      WRTLOCK        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_XOSC32K_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      XTALEN         at 0 range 2 .. 2;
      EN32K          at 0 range 3 .. 3;
      EN1K           at 0 range 4 .. 4;
      AAMPEN         at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      STARTUP        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WRTLOCK        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype SYSCTRL_OSC32K_STARTUP_Field is HAL.UInt3;
   subtype SYSCTRL_OSC32K_CALIB_Field is HAL.UInt7;

   --  OSC32K Control
   type SYSCTRL_OSC32K_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  32kHz Output Enable
      EN32K          : Boolean := False;
      --  1kHz Output Enable
      EN1K           : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  Enable on Demand
      ONDEMAND       : Boolean := True;
      --  Start-Up Time
      STARTUP        : SYSCTRL_OSC32K_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write Lock
      WRTLOCK        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Calibration Value
      CALIB          : SYSCTRL_OSC32K_CALIB_Field := 16#3F#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_OSC32K_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      EN32K          at 0 range 2 .. 2;
      EN1K           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      STARTUP        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WRTLOCK        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CALIB          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SYSCTRL_OSCULP32K_CALIB_Field is HAL.UInt5;

   --  OSCULP32K Control
   type SYSCTRL_OSCULP32K_Register is record
      --  Calibration Value
      CALIB        : SYSCTRL_OSCULP32K_CALIB_Field := 16#F#;
      --  unspecified
      Reserved_5_6 : HAL.UInt2 := 16#0#;
      --  Write Lock
      WRTLOCK      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SYSCTRL_OSCULP32K_Register use record
      CALIB        at 0 range 0 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      WRTLOCK      at 0 range 7 .. 7;
   end record;

   subtype SYSCTRL_OSC8M_PRESC_Field is HAL.UInt2;
   subtype SYSCTRL_OSC8M_CALIB_Field is HAL.UInt12;
   subtype SYSCTRL_OSC8M_FRANGE_Field is HAL.UInt2;

   --  OSC8M Control A
   type SYSCTRL_OSC8M_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := True;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  Enable on Demand
      ONDEMAND       : Boolean := True;
      --  Prescaler Select
      PRESC          : SYSCTRL_OSC8M_PRESC_Field := 16#3#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Calibration Value
      CALIB          : SYSCTRL_OSC8M_CALIB_Field := 16#707#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Frequency Range
      FRANGE         : SYSCTRL_OSC8M_FRANGE_Field := 16#2#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_OSC8M_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      PRESC          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CALIB          at 0 range 16 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      FRANGE         at 0 range 30 .. 31;
   end record;

   --  DFLL Config
   type SYSCTRL_DFLLCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Mode Selection
      MODE           : Boolean := False;
      --  Stable Frequency
      STABLE         : Boolean := False;
      --  Lose Lock After Wake
      LLAW           : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  Enable on Demand
      ONDEMAND       : Boolean := True;
      --  Chill Cycle Disable
      CCDIS          : Boolean := False;
      --  Quick Lock Disable
      QLDIS          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 2;
      STABLE         at 0 range 3 .. 3;
      LLAW           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      CCDIS          at 0 range 8 .. 8;
      QLDIS          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   subtype SYSCTRL_DFLLVAL_FINE_Field is HAL.UInt10;
   subtype SYSCTRL_DFLLVAL_COARSE_Field is HAL.UInt6;
   subtype SYSCTRL_DFLLVAL_DIFF_Field is HAL.UInt16;

   --  DFLL Calibration Value
   type SYSCTRL_DFLLVAL_Register is record
      --  Fine Calibration Value
      FINE   : SYSCTRL_DFLLVAL_FINE_Field := 16#0#;
      --  Coarse Calibration Value
      COARSE : SYSCTRL_DFLLVAL_COARSE_Field := 16#0#;
      --  Read-only. Multiplication Ratio Difference
      DIFF   : SYSCTRL_DFLLVAL_DIFF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLVAL_Register use record
      FINE   at 0 range 0 .. 9;
      COARSE at 0 range 10 .. 15;
      DIFF   at 0 range 16 .. 31;
   end record;

   subtype SYSCTRL_DFLLMUL_MUL_Field is HAL.UInt16;
   subtype SYSCTRL_DFLLMUL_FSTEP_Field is HAL.UInt10;
   subtype SYSCTRL_DFLLMUL_CSTEP_Field is HAL.UInt6;

   --  DFLL Multiplier
   type SYSCTRL_DFLLMUL_Register is record
      --  Multiplication Value
      MUL   : SYSCTRL_DFLLMUL_MUL_Field := 16#0#;
      --  Maximum Fine Step Size
      FSTEP : SYSCTRL_DFLLMUL_FSTEP_Field := 16#0#;
      --  Maximum Coarse Step Size
      CSTEP : SYSCTRL_DFLLMUL_CSTEP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLMUL_Register use record
      MUL   at 0 range 0 .. 15;
      FSTEP at 0 range 16 .. 25;
      CSTEP at 0 range 26 .. 31;
   end record;

   --  DFLL Synchronization
   type SYSCTRL_DFLLSYNC_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#0#;
      --  Write-only. Read Request Synchronization
      READREQ      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLSYNC_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      READREQ      at 0 range 7 .. 7;
   end record;

   subtype SYSCTRL_BOD33_ACTION_Field is HAL.UInt2;
   subtype SYSCTRL_BOD33_PSEL_Field is HAL.UInt4;
   subtype SYSCTRL_BOD33_LEVEL_Field is HAL.UInt6;

   --  3.3V Brown-Out Detector (BOD33) Control
   type SYSCTRL_BOD33_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Hysteresis Enable
      HYST           : Boolean := False;
      --  Action when Threshold Crossed
      ACTION         : SYSCTRL_BOD33_ACTION_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Operation Modes
      MODE           : Boolean := False;
      --  Clock Enable
      CEN            : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Prescaler Select
      PSEL           : SYSCTRL_BOD33_PSEL_Field := 16#0#;
      --  Threshold Level
      LEVEL          : SYSCTRL_BOD33_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_BOD33_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      HYST           at 0 range 2 .. 2;
      ACTION         at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MODE           at 0 range 8 .. 8;
      CEN            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PSEL           at 0 range 12 .. 15;
      LEVEL          at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  VREG Control
   type SYSCTRL_VREG_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#2#;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_12  : HAL.UInt6 := 16#8#;
      --  Force LDO Voltage Regulator
      FORCELDO       : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_VREG_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      FORCELDO       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype SYSCTRL_VREF_CALIB_Field is HAL.UInt11;

   --  VREF Control A
   type SYSCTRL_VREF_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Temperature Sensor Output Enable
      TSEN           : Boolean := False;
      --  Bandgap Output Enable
      BGOUTEN        : Boolean := False;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Voltage Reference Calibration Value
      CALIB          : SYSCTRL_VREF_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_VREF_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TSEN           at 0 range 1 .. 1;
      BGOUTEN        at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      CALIB          at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control
   type SYSCTRL_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR  : aliased SYSCTRL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET  : aliased SYSCTRL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG   : aliased SYSCTRL_INTFLAG_Register;
      --  Power and Clocks Status
      PCLKSR    : aliased SYSCTRL_PCLKSR_Register;
      --  XOSC Control
      XOSC      : aliased SYSCTRL_XOSC_Register;
      --  XOSC32K Control
      XOSC32K   : aliased SYSCTRL_XOSC32K_Register;
      --  OSC32K Control
      OSC32K    : aliased SYSCTRL_OSC32K_Register;
      --  OSCULP32K Control
      OSCULP32K : aliased SYSCTRL_OSCULP32K_Register;
      --  OSC8M Control A
      OSC8M     : aliased SYSCTRL_OSC8M_Register;
      --  DFLL Config
      DFLLCTRL  : aliased SYSCTRL_DFLLCTRL_Register;
      --  DFLL Calibration Value
      DFLLVAL   : aliased SYSCTRL_DFLLVAL_Register;
      --  DFLL Multiplier
      DFLLMUL   : aliased SYSCTRL_DFLLMUL_Register;
      --  DFLL Synchronization
      DFLLSYNC  : aliased SYSCTRL_DFLLSYNC_Register;
      --  3.3V Brown-Out Detector (BOD33) Control
      BOD33     : aliased SYSCTRL_BOD33_Register;
      --  VREG Control
      VREG      : aliased SYSCTRL_VREG_Register;
      --  VREF Control A
      VREF      : aliased SYSCTRL_VREF_Register;
   end record
     with Volatile;

   for SYSCTRL_Peripheral use record
      INTENCLR  at 16#0# range 0 .. 31;
      INTENSET  at 16#4# range 0 .. 31;
      INTFLAG   at 16#8# range 0 .. 31;
      PCLKSR    at 16#C# range 0 .. 31;
      XOSC      at 16#10# range 0 .. 15;
      XOSC32K   at 16#14# range 0 .. 15;
      OSC32K    at 16#18# range 0 .. 31;
      OSCULP32K at 16#1C# range 0 .. 7;
      OSC8M     at 16#20# range 0 .. 31;
      DFLLCTRL  at 16#24# range 0 .. 15;
      DFLLVAL   at 16#28# range 0 .. 31;
      DFLLMUL   at 16#2C# range 0 .. 31;
      DFLLSYNC  at 16#30# range 0 .. 7;
      BOD33     at 16#34# range 0 .. 31;
      VREG      at 16#3C# range 0 .. 15;
      VREF      at 16#40# range 0 .. 31;
   end record;

   --  System Control
   SYSCTRL_Periph : aliased SYSCTRL_Peripheral
     with Import, Address => System'To_Address (16#40000800#);

end SAM_SVD.SYSCTRL;
