--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2017 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAMC20E15A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.OSCCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Clear
   type OSCCTRL_INTENCLR_Register is record
      --  XOSC Ready Interrupt Enable
      XOSCRDY        : Boolean := False;
      --  XOSC Clock Failure Detector Interrupt Enable
      XOSCFAIL       : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  OSC48M Ready Interrupt Enable
      OSC48MRDY      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise Interrupt Enable
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall Interrupt Enable
      DPLLLCKF       : Boolean := False;
      --  DPLL Time Out Interrupt Enable
      DPLLLTO        : Boolean := False;
      --  DPLL Ratio Ready Interrupt Enable
      DPLLLDRTO      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_INTENCLR_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSCFAIL       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      OSC48MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DPLLLCKR       at 0 range 8 .. 8;
      DPLLLCKF       at 0 range 9 .. 9;
      DPLLLTO        at 0 range 10 .. 10;
      DPLLLDRTO      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Enable Set
   type OSCCTRL_INTENSET_Register is record
      --  XOSC Ready Interrupt Enable
      XOSCRDY        : Boolean := False;
      --  XOSC Clock Failure Detector Interrupt Enable
      XOSCFAIL       : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  OSC48M Ready Interrupt Enable
      OSC48MRDY      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise Interrupt Enable
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall Interrupt Enable
      DPLLLCKF       : Boolean := False;
      --  DPLL Time Out Interrupt Enable
      DPLLLTO        : Boolean := False;
      --  DPLL Ratio Ready Interrupt Enable
      DPLLLDRTO      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_INTENSET_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSCFAIL       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      OSC48MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DPLLLCKR       at 0 range 8 .. 8;
      DPLLLCKF       at 0 range 9 .. 9;
      DPLLLTO        at 0 range 10 .. 10;
      DPLLLDRTO      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type OSCCTRL_INTFLAG_Register is record
      --  XOSC Ready
      XOSCRDY        : Boolean := False;
      --  XOSC Clock Failure Detector
      XOSCFAIL       : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  OSC48M Ready
      OSC48MRDY      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall
      DPLLLCKF       : Boolean := False;
      --  DPLL Timeout
      DPLLLTO        : Boolean := False;
      --  DPLL Ratio Ready
      DPLLLDRTO      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_INTFLAG_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSCFAIL       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      OSC48MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DPLLLCKR       at 0 range 8 .. 8;
      DPLLLCKF       at 0 range 9 .. 9;
      DPLLLTO        at 0 range 10 .. 10;
      DPLLLDRTO      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Power and Clocks Status
   type OSCCTRL_STATUS_Register is record
      --  Read-only. XOSC Ready
      XOSCRDY        : Boolean;
      --  Read-only. XOSC Clock Failure Detector
      XOSCFAIL       : Boolean;
      --  Read-only. XOSC Clock Switch
      XOSCCKSW       : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. OSC48M Ready
      OSC48MRDY      : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. DPLL Lock Rise
      DPLLLCKR       : Boolean;
      --  Read-only. DPLL Lock Fall
      DPLLLCKF       : Boolean;
      --  Read-only. DPLL Timeout
      DPLLTO         : Boolean;
      --  Read-only. DPLL Ratio Ready
      DPLLLDRTO      : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_STATUS_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSCFAIL       at 0 range 1 .. 1;
      XOSCCKSW       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OSC48MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DPLLLCKR       at 0 range 8 .. 8;
      DPLLLCKF       at 0 range 9 .. 9;
      DPLLTO         at 0 range 10 .. 10;
      DPLLLDRTO      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype OSCCTRL_XOSCCTRL_GAIN_Field is HAL.UInt3;
   subtype OSCCTRL_XOSCCTRL_STARTUP_Field is HAL.UInt4;

   --  External Multipurpose Crystal Oscillator (XOSC) Control
   type OSCCTRL_XOSCCTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE       : Boolean := False;
      --  Crystal Oscillator Enable
      XTALEN       : Boolean := False;
      --  Xosc Clock Failure Detecteor Enable
      CFDEN        : Boolean := False;
      --  Xosc Clock Switch Enable
      SWBEN        : Boolean := False;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Control
      ONDEMAND     : Boolean := True;
      --  Oscillator Gain
      GAIN         : OSCCTRL_XOSCCTRL_GAIN_Field := 16#0#;
      --  Automatic Amplitude Gain Control
      AMPGC        : Boolean := False;
      --  Start-Up Time
      STARTUP      : OSCCTRL_XOSCCTRL_STARTUP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_XOSCCTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      XTALEN       at 0 range 2 .. 2;
      CFDEN        at 0 range 3 .. 3;
      SWBEN        at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
      GAIN         at 0 range 8 .. 10;
      AMPGC        at 0 range 11 .. 11;
      STARTUP      at 0 range 12 .. 15;
   end record;

   subtype OSCCTRL_CFDPRESC_CFDPRESC_Field is HAL.UInt3;

   --  Clock Failure Detector Prescaler
   type OSCCTRL_CFDPRESC_Register is record
      --  Clock Failure Detector Prescaler
      CFDPRESC     : OSCCTRL_CFDPRESC_CFDPRESC_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_CFDPRESC_Register use record
      CFDPRESC     at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Event Control
   type OSCCTRL_EVCTRL_Register is record
      --  Clock Failure Detector Event Output Enable
      CFDEO        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_EVCTRL_Register use record
      CFDEO        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  48MHz Internal Oscillator (OSC48M) Control
   type OSCCTRL_OSC48MCTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE       : Boolean := True;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Control
      ONDEMAND     : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_OSC48MCTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
   end record;

   subtype OSCCTRL_OSC48MDIV_DIV_Field is HAL.UInt4;

   --  OSC48M Divider
   type OSCCTRL_OSC48MDIV_Register is record
      --  OSC48M Division Factor
      DIV          : OSCCTRL_OSC48MDIV_DIV_Field := 16#B#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_OSC48MDIV_Register use record
      DIV          at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype OSCCTRL_OSC48MSTUP_STARTUP_Field is HAL.UInt3;

   --  OSC48M Startup Time
   type OSCCTRL_OSC48MSTUP_Register is record
      --  Startup Time
      STARTUP      : OSCCTRL_OSC48MSTUP_STARTUP_Field := 16#7#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_OSC48MSTUP_Register use record
      STARTUP      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  OSC48M Synchronization Busy
   type OSCCTRL_OSC48MSYNCBUSY_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. OSC48MDIV Synchronization Status
      OSC48MDIV     : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_OSC48MSYNCBUSY_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OSC48MDIV     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  DPLL Control
   type OSCCTRL_DPLLCTRLA_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand
      ONDEMAND     : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_DPLLCTRLA_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
   end record;

   subtype OSCCTRL_DPLLRATIO_LDR_Field is HAL.UInt12;
   subtype OSCCTRL_DPLLRATIO_LDRFRAC_Field is HAL.UInt4;

   --  DPLL Ratio Control
   type OSCCTRL_DPLLRATIO_Register is record
      --  Loop Divider Ratio
      LDR            : OSCCTRL_DPLLRATIO_LDR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Loop Divider Ratio Fractional Part
      LDRFRAC        : OSCCTRL_DPLLRATIO_LDRFRAC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_DPLLRATIO_Register use record
      LDR            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LDRFRAC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OSCCTRL_DPLLCTRLB_FILTER_Field is HAL.UInt2;
   subtype OSCCTRL_DPLLCTRLB_REFCLK_Field is HAL.UInt2;
   subtype OSCCTRL_DPLLCTRLB_LTIME_Field is HAL.UInt3;
   subtype OSCCTRL_DPLLCTRLB_DIV_Field is HAL.UInt11;

   --  Digital Core Configuration
   type OSCCTRL_DPLLCTRLB_Register is record
      --  Proportional Integral Filter Selection
      FILTER         : OSCCTRL_DPLLCTRLB_FILTER_Field := 16#0#;
      --  Low-Power Enable
      LPEN           : Boolean := False;
      --  Wake Up Fast
      WUF            : Boolean := False;
      --  Reference Clock Selection
      REFCLK         : OSCCTRL_DPLLCTRLB_REFCLK_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Lock Time
      LTIME          : OSCCTRL_DPLLCTRLB_LTIME_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Lock Bypass
      LBYPASS        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Clock Divider
      DIV            : OSCCTRL_DPLLCTRLB_DIV_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_DPLLCTRLB_Register use record
      FILTER         at 0 range 0 .. 1;
      LPEN           at 0 range 2 .. 2;
      WUF            at 0 range 3 .. 3;
      REFCLK         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LTIME          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LBYPASS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DIV            at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Output Clock Prescaler
   type DPLLPRESC_PRESCSelect is
     (
      --  DPLL output is divided by 1
      Div1,
      --  DPLL output is divided by 2
      Div2,
      --  DPLL output is divided by 4
      Div4)
     with Size => 2;
   for DPLLPRESC_PRESCSelect use
     (Div1 => 0,
      Div2 => 1,
      Div4 => 2);

   --  DPLL Prescaler
   type OSCCTRL_DPLLPRESC_Register is record
      --  Output Clock Prescaler
      PRESC        : DPLLPRESC_PRESCSelect := SAM_SVD.OSCCTRL.Div1;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_DPLLPRESC_Register use record
      PRESC        at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  DPLL Synchronization Busy
   type OSCCTRL_DPLLSYNCBUSY_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit;
      --  Read-only. DPLL Enable Synchronization Status
      ENABLE       : Boolean;
      --  Read-only. DPLL Ratio Synchronization Status
      DPLLRATIO    : Boolean;
      --  Read-only. DPLL Prescaler Synchronization Status
      DPLLPRESC    : Boolean;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_DPLLSYNCBUSY_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      DPLLRATIO    at 0 range 2 .. 2;
      DPLLPRESC    at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  DPLL Status
   type OSCCTRL_DPLLSTATUS_Register is record
      --  Read-only. DPLL Lock Status
      LOCK         : Boolean;
      --  Read-only. DPLL Clock Ready
      CLKRDY       : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_DPLLSTATUS_Register use record
      LOCK         at 0 range 0 .. 0;
      CLKRDY       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype OSCCTRL_CAL48M_FCAL_Field is HAL.UInt6;
   subtype OSCCTRL_CAL48M_FRANGE_Field is HAL.UInt2;
   subtype OSCCTRL_CAL48M_TCAL_Field is HAL.UInt6;

   --  48MHz Oscillator Calibration
   type OSCCTRL_CAL48M_Register is record
      --  Frequency Calibration (48MHz)
      FCAL           : OSCCTRL_CAL48M_FCAL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Frequency Range (48MHz)
      FRANGE         : OSCCTRL_CAL48M_FRANGE_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Temperature Calibration (48MHz)
      TCAL           : OSCCTRL_CAL48M_TCAL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_CAL48M_Register use record
      FCAL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FRANGE         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      TCAL           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Oscillators Control
   type OSCCTRL_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR       : aliased OSCCTRL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET       : aliased OSCCTRL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG        : aliased OSCCTRL_INTFLAG_Register;
      --  Power and Clocks Status
      STATUS         : aliased OSCCTRL_STATUS_Register;
      --  External Multipurpose Crystal Oscillator (XOSC) Control
      XOSCCTRL       : aliased OSCCTRL_XOSCCTRL_Register;
      --  Clock Failure Detector Prescaler
      CFDPRESC       : aliased OSCCTRL_CFDPRESC_Register;
      --  Event Control
      EVCTRL         : aliased OSCCTRL_EVCTRL_Register;
      --  48MHz Internal Oscillator (OSC48M) Control
      OSC48MCTRL     : aliased OSCCTRL_OSC48MCTRL_Register;
      --  OSC48M Divider
      OSC48MDIV      : aliased OSCCTRL_OSC48MDIV_Register;
      --  OSC48M Startup Time
      OSC48MSTUP     : aliased OSCCTRL_OSC48MSTUP_Register;
      --  OSC48M Synchronization Busy
      OSC48MSYNCBUSY : aliased OSCCTRL_OSC48MSYNCBUSY_Register;
      --  DPLL Control
      DPLLCTRLA      : aliased OSCCTRL_DPLLCTRLA_Register;
      --  DPLL Ratio Control
      DPLLRATIO      : aliased OSCCTRL_DPLLRATIO_Register;
      --  Digital Core Configuration
      DPLLCTRLB      : aliased OSCCTRL_DPLLCTRLB_Register;
      --  DPLL Prescaler
      DPLLPRESC      : aliased OSCCTRL_DPLLPRESC_Register;
      --  DPLL Synchronization Busy
      DPLLSYNCBUSY   : aliased OSCCTRL_DPLLSYNCBUSY_Register;
      --  DPLL Status
      DPLLSTATUS     : aliased OSCCTRL_DPLLSTATUS_Register;
      --  48MHz Oscillator Calibration
      CAL48M         : aliased OSCCTRL_CAL48M_Register;
   end record
     with Volatile;

   for OSCCTRL_Peripheral use record
      INTENCLR       at 16#0# range 0 .. 31;
      INTENSET       at 16#4# range 0 .. 31;
      INTFLAG        at 16#8# range 0 .. 31;
      STATUS         at 16#C# range 0 .. 31;
      XOSCCTRL       at 16#10# range 0 .. 15;
      CFDPRESC       at 16#12# range 0 .. 7;
      EVCTRL         at 16#13# range 0 .. 7;
      OSC48MCTRL     at 16#14# range 0 .. 7;
      OSC48MDIV      at 16#15# range 0 .. 7;
      OSC48MSTUP     at 16#16# range 0 .. 7;
      OSC48MSYNCBUSY at 16#18# range 0 .. 31;
      DPLLCTRLA      at 16#1C# range 0 .. 7;
      DPLLRATIO      at 16#20# range 0 .. 31;
      DPLLCTRLB      at 16#24# range 0 .. 31;
      DPLLPRESC      at 16#28# range 0 .. 7;
      DPLLSYNCBUSY   at 16#2C# range 0 .. 7;
      DPLLSTATUS     at 16#30# range 0 .. 7;
      CAL48M         at 16#38# range 0 .. 31;
   end record;

   --  Oscillators Control
   OSCCTRL_Periph : aliased OSCCTRL_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end SAM_SVD.OSCCTRL;
