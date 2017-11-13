--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
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

--  This spec has been automatically generated from ATSAML21J16B.svd

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
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  OSC16M Ready Interrupt Enable
      OSC16MRDY      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DFLL Ready Interrupt Enable
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds Interrupt Enable
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine Interrupt Enable
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse Interrupt Enable
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped Interrupt Enable
      DFLLRCS        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise Interrupt Enable
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall Interrupt Enable
      DPLLLCKF       : Boolean := False;
      --  DPLL Time Out Interrupt Enable
      DPLLLTO        : Boolean := False;
      --  DPLL Ratio Ready Interrupt Enable
      DPLLLDRTO      : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_INTENCLR_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OSC16MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DFLLRDY        at 0 range 8 .. 8;
      DFLLOOB        at 0 range 9 .. 9;
      DFLLLCKF       at 0 range 10 .. 10;
      DFLLLCKC       at 0 range 11 .. 11;
      DFLLRCS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DPLLLCKR       at 0 range 16 .. 16;
      DPLLLCKF       at 0 range 17 .. 17;
      DPLLLTO        at 0 range 18 .. 18;
      DPLLLDRTO      at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Enable Set
   type OSCCTRL_INTENSET_Register is record
      --  XOSC Ready Interrupt Enable
      XOSCRDY        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  OSC16M Ready Interrupt Enable
      OSC16MRDY      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DFLL Ready Interrupt Enable
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds Interrupt Enable
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine Interrupt Enable
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse Interrupt Enable
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped Interrupt Enable
      DFLLRCS        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise Interrupt Enable
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall Interrupt Enable
      DPLLLCKF       : Boolean := False;
      --  DPLL Time Out Interrupt Enable
      DPLLLTO        : Boolean := False;
      --  DPLL Ratio Ready Interrupt Enable
      DPLLLDRTO      : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_INTENSET_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OSC16MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DFLLRDY        at 0 range 8 .. 8;
      DFLLOOB        at 0 range 9 .. 9;
      DFLLLCKF       at 0 range 10 .. 10;
      DFLLLCKC       at 0 range 11 .. 11;
      DFLLRCS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DPLLLCKR       at 0 range 16 .. 16;
      DPLLLCKF       at 0 range 17 .. 17;
      DPLLLTO        at 0 range 18 .. 18;
      DPLLLDRTO      at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type OSCCTRL_INTFLAG_Register is record
      --  XOSC Ready
      XOSCRDY        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  OSC16M Ready
      OSC16MRDY      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
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
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall
      DPLLLCKF       : Boolean := False;
      --  DPLL Timeout
      DPLLLTO        : Boolean := False;
      --  DPLL Ratio Ready
      DPLLLDRTO      : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_INTFLAG_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OSC16MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DFLLRDY        at 0 range 8 .. 8;
      DFLLOOB        at 0 range 9 .. 9;
      DFLLLCKF       at 0 range 10 .. 10;
      DFLLLCKC       at 0 range 11 .. 11;
      DFLLRCS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DPLLLCKR       at 0 range 16 .. 16;
      DPLLLCKF       at 0 range 17 .. 17;
      DPLLLTO        at 0 range 18 .. 18;
      DPLLLDRTO      at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Power and Clocks Status
   type OSCCTRL_STATUS_Register is record
      --  Read-only. XOSC Ready
      XOSCRDY        : Boolean;
      --  unspecified
      Reserved_1_3   : HAL.UInt3;
      --  Read-only. OSC16M Ready
      OSC16MRDY      : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
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
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. DPLL Lock Rise
      DPLLLCKR       : Boolean;
      --  Read-only. DPLL Lock Fall
      DPLLLCKF       : Boolean;
      --  Read-only. DPLL Timeout
      DPLLTO         : Boolean;
      --  Read-only. DPLL Ratio Ready
      DPLLLDRTO      : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_STATUS_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OSC16MRDY      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DFLLRDY        at 0 range 8 .. 8;
      DFLLOOB        at 0 range 9 .. 9;
      DFLLLCKF       at 0 range 10 .. 10;
      DFLLLCKC       at 0 range 11 .. 11;
      DFLLRCS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DPLLLCKR       at 0 range 16 .. 16;
      DPLLLCKF       at 0 range 17 .. 17;
      DPLLTO         at 0 range 18 .. 18;
      DPLLLDRTO      at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
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
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
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
      Reserved_3_5 at 0 range 3 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
      GAIN         at 0 range 8 .. 10;
      AMPGC        at 0 range 11 .. 11;
      STARTUP      at 0 range 12 .. 15;
   end record;

   --  Oscillator Frequency Select
   type OSC16MCTRL_FSELSelect is
     (
      --  4MHz
      OSC16MCTRL_FSELSelect_4,
      --  8MHz
      OSC16MCTRL_FSELSelect_8,
      --  12MHz
      OSC16MCTRL_FSELSelect_12,
      --  16MHz
      OSC16MCTRL_FSELSelect_16)
     with Size => 2;
   for OSC16MCTRL_FSELSelect use
     (OSC16MCTRL_FSELSelect_4 => 0,
      OSC16MCTRL_FSELSelect_8 => 1,
      OSC16MCTRL_FSELSelect_12 => 2,
      OSC16MCTRL_FSELSelect_16 => 3);

   --  16MHz Internal Oscillator (OSC16M) Control
   type OSCCTRL_OSC16MCTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE       : Boolean := True;
      --  Oscillator Frequency Select
      FSEL         : OSC16MCTRL_FSELSelect :=
                      SAM_SVD.OSCCTRL.OSC16MCTRL_FSELSelect_4;
      --  unspecified
      Reserved_4_5 : HAL.UInt2 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Control
      ONDEMAND     : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_OSC16MCTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      FSEL         at 0 range 2 .. 3;
      Reserved_4_5 at 0 range 4 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
   end record;

   --  DFLL48M Control
   type OSCCTRL_DFLLCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  DFLL Enable
      ENABLE         : Boolean := False;
      --  Operating Mode Selection
      MODE           : Boolean := False;
      --  Stable DFLL Frequency
      STABLE         : Boolean := False;
      --  Lose Lock After Wake
      LLAW           : Boolean := False;
      --  USB Clock Recovery Mode
      USBCRM         : Boolean := False;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := True;
      --  Chill Cycle Disable
      CCDIS          : Boolean := False;
      --  Quick Lock Disable
      QLDIS          : Boolean := False;
      --  Bypass Coarse Lock
      BPLCKC         : Boolean := False;
      --  Wait Lock
      WAITLOCK       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_DFLLCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 2;
      STABLE         at 0 range 3 .. 3;
      LLAW           at 0 range 4 .. 4;
      USBCRM         at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      CCDIS          at 0 range 8 .. 8;
      QLDIS          at 0 range 9 .. 9;
      BPLCKC         at 0 range 10 .. 10;
      WAITLOCK       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype OSCCTRL_DFLLVAL_FINE_Field is HAL.UInt10;
   subtype OSCCTRL_DFLLVAL_COARSE_Field is HAL.UInt6;
   subtype OSCCTRL_DFLLVAL_DIFF_Field is HAL.UInt16;

   --  DFLL48M Value
   type OSCCTRL_DFLLVAL_Register is record
      --  Fine Value
      FINE   : OSCCTRL_DFLLVAL_FINE_Field := 16#0#;
      --  Coarse Value
      COARSE : OSCCTRL_DFLLVAL_COARSE_Field := 16#0#;
      --  Read-only. Multiplication Ratio Difference
      DIFF   : OSCCTRL_DFLLVAL_DIFF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_DFLLVAL_Register use record
      FINE   at 0 range 0 .. 9;
      COARSE at 0 range 10 .. 15;
      DIFF   at 0 range 16 .. 31;
   end record;

   subtype OSCCTRL_DFLLMUL_MUL_Field is HAL.UInt16;
   subtype OSCCTRL_DFLLMUL_FSTEP_Field is HAL.UInt10;
   subtype OSCCTRL_DFLLMUL_CSTEP_Field is HAL.UInt6;

   --  DFLL48M Multiplier
   type OSCCTRL_DFLLMUL_Register is record
      --  DFLL Multiply Factor
      MUL   : OSCCTRL_DFLLMUL_MUL_Field := 16#0#;
      --  Fine Maximum Step
      FSTEP : OSCCTRL_DFLLMUL_FSTEP_Field := 16#0#;
      --  Coarse Maximum Step
      CSTEP : OSCCTRL_DFLLMUL_CSTEP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCTRL_DFLLMUL_Register use record
      MUL   at 0 range 0 .. 15;
      FSTEP at 0 range 16 .. 25;
      CSTEP at 0 range 26 .. 31;
   end record;

   --  DFLL48M Synchronization
   type OSCCTRL_DFLLSYNC_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#0#;
      --  Write-only. Read Request
      READREQ      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSCCTRL_DFLLSYNC_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      READREQ      at 0 range 7 .. 7;
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

   -----------------
   -- Peripherals --
   -----------------

   --  Oscillators Control
   type OSCCTRL_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR     : aliased OSCCTRL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET     : aliased OSCCTRL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG      : aliased OSCCTRL_INTFLAG_Register;
      --  Power and Clocks Status
      STATUS       : aliased OSCCTRL_STATUS_Register;
      --  External Multipurpose Crystal Oscillator (XOSC) Control
      XOSCCTRL     : aliased OSCCTRL_XOSCCTRL_Register;
      --  16MHz Internal Oscillator (OSC16M) Control
      OSC16MCTRL   : aliased OSCCTRL_OSC16MCTRL_Register;
      --  DFLL48M Control
      DFLLCTRL     : aliased OSCCTRL_DFLLCTRL_Register;
      --  DFLL48M Value
      DFLLVAL      : aliased OSCCTRL_DFLLVAL_Register;
      --  DFLL48M Multiplier
      DFLLMUL      : aliased OSCCTRL_DFLLMUL_Register;
      --  DFLL48M Synchronization
      DFLLSYNC     : aliased OSCCTRL_DFLLSYNC_Register;
      --  DPLL Control
      DPLLCTRLA    : aliased OSCCTRL_DPLLCTRLA_Register;
      --  DPLL Ratio Control
      DPLLRATIO    : aliased OSCCTRL_DPLLRATIO_Register;
      --  Digital Core Configuration
      DPLLCTRLB    : aliased OSCCTRL_DPLLCTRLB_Register;
      --  DPLL Prescaler
      DPLLPRESC    : aliased OSCCTRL_DPLLPRESC_Register;
      --  DPLL Synchronization Busy
      DPLLSYNCBUSY : aliased OSCCTRL_DPLLSYNCBUSY_Register;
      --  DPLL Status
      DPLLSTATUS   : aliased OSCCTRL_DPLLSTATUS_Register;
   end record
     with Volatile;

   for OSCCTRL_Peripheral use record
      INTENCLR     at 16#0# range 0 .. 31;
      INTENSET     at 16#4# range 0 .. 31;
      INTFLAG      at 16#8# range 0 .. 31;
      STATUS       at 16#C# range 0 .. 31;
      XOSCCTRL     at 16#10# range 0 .. 15;
      OSC16MCTRL   at 16#14# range 0 .. 7;
      DFLLCTRL     at 16#18# range 0 .. 15;
      DFLLVAL      at 16#1C# range 0 .. 31;
      DFLLMUL      at 16#20# range 0 .. 31;
      DFLLSYNC     at 16#24# range 0 .. 7;
      DPLLCTRLA    at 16#28# range 0 .. 7;
      DPLLRATIO    at 16#2C# range 0 .. 31;
      DPLLCTRLB    at 16#30# range 0 .. 31;
      DPLLPRESC    at 16#34# range 0 .. 7;
      DPLLSYNCBUSY at 16#38# range 0 .. 7;
      DPLLSTATUS   at 16#3C# range 0 .. 7;
   end record;

   --  Oscillators Control
   OSCCTRL_Periph : aliased OSCCTRL_Peripheral
     with Import, Address => System'To_Address (16#40000C00#);

end SAM_SVD.OSCCTRL;
