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

--  This spec has been automatically generated from ATSAM4LS2B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SCIF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Register
   type SCIF_IER_Register is record
      --  Write-only. OSC0 Ready
      OSC0RDY        : Boolean := False;
      --  Write-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : Boolean := False;
      --  Write-only. DFLL0 Lock Fine
      DFLL0LOCKF     : Boolean := False;
      --  Write-only. DFLL0 Ready
      DFLL0RDY       : Boolean := False;
      --  Write-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : Boolean := False;
      --  Write-only. DFLL0 Out Of Bounds
      DFLL0OOB       : Boolean := False;
      --  Write-only. PLL0 Lock
      PLL0LOCK       : Boolean := False;
      --  Write-only. PLL0 Lock Lost
      PLL0LOCKLOST   : Boolean := False;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Write-only. RCFAST Lock
      RCFASTLOCK     : Boolean := False;
      --  Write-only. RCFAST Lock Lost
      RCFASTLOCKLOST : Boolean := False;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Write-only. Access Error
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_IER_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Disable Register
   type SCIF_IDR_Register is record
      --  Write-only. OSC0 Ready
      OSC0RDY        : Boolean := False;
      --  Write-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : Boolean := False;
      --  Write-only. DFLL0 Lock Fine
      DFLL0LOCKF     : Boolean := False;
      --  Write-only. DFLL0 Ready
      DFLL0RDY       : Boolean := False;
      --  Write-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : Boolean := False;
      --  Write-only. DFLL0 Out Of Bounds
      DFLL0OOB       : Boolean := False;
      --  Write-only. PLL0 Lock
      PLL0LOCK       : Boolean := False;
      --  Write-only. PLL0 Lock Lost
      PLL0LOCKLOST   : Boolean := False;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Write-only. RCFAST Lock
      RCFASTLOCK     : Boolean := False;
      --  Write-only. RCFAST Lock Lost
      RCFASTLOCKLOST : Boolean := False;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Write-only. Access Error
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_IDR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Mask Register
   type SCIF_IMR_Register is record
      --  Read-only. OSC0 Ready
      OSC0RDY        : Boolean;
      --  Read-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : Boolean;
      --  Read-only. DFLL0 Lock Fine
      DFLL0LOCKF     : Boolean;
      --  Read-only. DFLL0 Ready
      DFLL0RDY       : Boolean;
      --  Read-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : Boolean;
      --  Read-only. DFLL0 Out Of Bounds
      DFLL0OOB       : Boolean;
      --  Read-only. PLL0 Lock
      PLL0LOCK       : Boolean;
      --  Read-only. PLL0 Lock Lost
      PLL0LOCKLOST   : Boolean;
      --  unspecified
      Reserved_8_12  : HAL.UInt5;
      --  Read-only. RCFAST Lock
      RCFASTLOCK     : Boolean;
      --  Read-only. RCFAST Lock Lost
      RCFASTLOCKLOST : Boolean;
      --  unspecified
      Reserved_15_30 : HAL.UInt16;
      --  Read-only. Access Error
      AE             : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_IMR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Status Register
   type SCIF_ISR_Register is record
      --  Read-only. OSC0 Ready
      OSC0RDY        : Boolean;
      --  Read-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : Boolean;
      --  Read-only. DFLL0 Lock Fine
      DFLL0LOCKF     : Boolean;
      --  Read-only. DFLL0 Ready
      DFLL0RDY       : Boolean;
      --  Read-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : Boolean;
      --  Read-only. DFLL0 Out Of Bounds
      DFLL0OOB       : Boolean;
      --  Read-only. PLL0 Lock
      PLL0LOCK       : Boolean;
      --  Read-only. PLL0 Lock Lost
      PLL0LOCKLOST   : Boolean;
      --  unspecified
      Reserved_8_12  : HAL.UInt5;
      --  Read-only. RCFAST Lock
      RCFASTLOCK     : Boolean;
      --  Read-only. RCFAST Lock Lost
      RCFASTLOCKLOST : Boolean;
      --  unspecified
      Reserved_15_30 : HAL.UInt16;
      --  Read-only. Access Error
      AE             : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_ISR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Clear Register
   type SCIF_ICR_Register is record
      --  Write-only. OSC0 Ready
      OSC0RDY        : Boolean := False;
      --  Write-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : Boolean := False;
      --  Write-only. DFLL0 Lock Fine
      DFLL0LOCKF     : Boolean := False;
      --  Write-only. DFLL0 Ready
      DFLL0RDY       : Boolean := False;
      --  Write-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : Boolean := False;
      --  Write-only. DFLL0 Out Of Bounds
      DFLL0OOB       : Boolean := False;
      --  Write-only. PLL0 Lock
      PLL0LOCK       : Boolean := False;
      --  Write-only. PLL0 Lock Lost
      PLL0LOCKLOST   : Boolean := False;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Write-only. RCFAST Lock
      RCFASTLOCK     : Boolean := False;
      --  Write-only. RCFAST Lock Lost
      RCFASTLOCKLOST : Boolean := False;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Write-only. Access Error
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_ICR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Power and Clocks Status Register
   type SCIF_PCLKSR_Register is record
      --  Read-only. OSC0 Ready
      OSC0RDY        : Boolean;
      --  Read-only. DFLL0 Locked on Coarse Value
      DFLL0LOCKC     : Boolean;
      --  Read-only. DFLL0 Locked on Fine Value
      DFLL0LOCKF     : Boolean;
      --  Read-only. DFLL0 Synchronization Ready
      DFLL0RDY       : Boolean;
      --  Read-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : Boolean;
      --  Read-only. DFLL0 Track Out Of Bounds
      DFLL0OOB       : Boolean;
      --  Read-only. PLL0 Locked on Accurate value
      PLL0LOCK       : Boolean;
      --  Read-only. PLL0 lock lost value
      PLL0LOCKLOST   : Boolean;
      --  unspecified
      Reserved_8_12  : HAL.UInt5;
      --  Read-only. RCFAST Locked on Accurate value
      RCFASTLOCK     : Boolean;
      --  Read-only. RCFAST lock lost value
      RCFASTLOCKLOST : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_PCLKSR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SCIF_UNLOCK_ADDR_Field is HAL.UInt10;
   subtype SCIF_UNLOCK_KEY_Field is HAL.UInt8;

   --  Unlock Register
   type SCIF_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : SCIF_UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : SCIF_UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   subtype SCIF_OSCCTRL0_GAIN_Field is HAL.UInt2;
   subtype SCIF_OSCCTRL0_STARTUP_Field is HAL.UInt4;

   --  Oscillator Control Register
   type SCIF_OSCCTRL0_Register is record
      --  Oscillator Mode
      MODE           : Boolean := False;
      --  Gain
      GAIN           : SCIF_OSCCTRL0_GAIN_Field := 16#0#;
      --  Automatic Gain Control
      AGC            : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Oscillator Start-up Time
      STARTUP        : SCIF_OSCCTRL0_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Oscillator Enable
      OSCEN          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_OSCCTRL0_Register use record
      MODE           at 0 range 0 .. 0;
      GAIN           at 0 range 1 .. 2;
      AGC            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      STARTUP        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      OSCEN          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SCIF_PLL_PLLOSC_Field is HAL.UInt2;
   subtype SCIF_PLL_PLLOPT_Field is HAL.UInt3;
   subtype SCIF_PLL_PLLDIV_Field is HAL.UInt4;
   subtype SCIF_PLL_PLLMUL_Field is HAL.UInt4;
   subtype SCIF_PLL_PLLCOUNT_Field is HAL.UInt6;

   --  PLL0 Control Register
   type SCIF_PLL_Register is record
      --  PLL Enable
      PLLEN          : Boolean := False;
      --  PLL Oscillator Select
      PLLOSC         : SCIF_PLL_PLLOSC_Field := 16#0#;
      --  PLL Option
      PLLOPT         : SCIF_PLL_PLLOPT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PLL Division Factor
      PLLDIV         : SCIF_PLL_PLLDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  PLL Multiply Factor
      PLLMUL         : SCIF_PLL_PLLMUL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  PLL Count
      PLLCOUNT       : SCIF_PLL_PLLCOUNT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_PLL_Register use record
      PLLEN          at 0 range 0 .. 0;
      PLLOSC         at 0 range 1 .. 2;
      PLLOPT         at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PLLDIV         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLLMUL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLCOUNT       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SCIF_DFLL0CONF_RANGE_Field is HAL.UInt2;
   subtype SCIF_DFLL0CONF_CALIB_Field is HAL.UInt4;

   --  DFLL0 Config Register
   type SCIF_DFLL0CONF_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Mode Selection
      MODE           : Boolean := False;
      --  Stable DFLL Frequency
      STABLE         : Boolean := False;
      --  Lose Lock After Wake
      LLAW           : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Chill Cycle Disable
      CCDIS          : Boolean := False;
      --  Quick Lock Disable
      QLDIS          : Boolean := False;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Range Value
      RANGE_k        : SCIF_DFLL0CONF_RANGE_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Fuse Calibration Done
      FCD            : Boolean := False;
      --  Calibration Value
      CALIB          : SCIF_DFLL0CONF_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0CONF_Register use record
      EN             at 0 range 0 .. 0;
      MODE           at 0 range 1 .. 1;
      STABLE         at 0 range 2 .. 2;
      LLAW           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CCDIS          at 0 range 5 .. 5;
      QLDIS          at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      RANGE_k        at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      FCD            at 0 range 23 .. 23;
      CALIB          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SCIF_DFLL0VAL_FINE_Field is HAL.UInt8;
   subtype SCIF_DFLL0VAL_COARSE_Field is HAL.UInt5;

   --  DFLL Value Register
   type SCIF_DFLL0VAL_Register is record
      --  Fine Value
      FINE           : SCIF_DFLL0VAL_FINE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Coarse Value
      COARSE         : SCIF_DFLL0VAL_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0VAL_Register use record
      FINE           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      COARSE         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SCIF_DFLL0MUL_MUL_Field is HAL.UInt16;

   --  DFLL0 Multiplier Register
   type SCIF_DFLL0MUL_Register is record
      --  DFLL Multiply Factor
      MUL            : SCIF_DFLL0MUL_MUL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0MUL_Register use record
      MUL            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SCIF_DFLL0STEP_FSTEP_Field is HAL.UInt8;
   subtype SCIF_DFLL0STEP_CSTEP_Field is HAL.UInt5;

   --  DFLL0 Step Register
   type SCIF_DFLL0STEP_Register is record
      --  Fine Maximum Step
      FSTEP          : SCIF_DFLL0STEP_FSTEP_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Coarse Maximum Step
      CSTEP          : SCIF_DFLL0STEP_CSTEP_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0STEP_Register use record
      FSTEP          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CSTEP          at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SCIF_DFLL0SSG_AMPLITUDE_Field is HAL.UInt5;
   subtype SCIF_DFLL0SSG_STEPSIZE_Field is HAL.UInt5;

   --  DFLL0 Spread Spectrum Generator Control Register
   type SCIF_DFLL0SSG_Register is record
      --  Write-only. Enable
      EN             : Boolean := False;
      --  Write-only. Pseudo Random Bit Sequence
      PRBS           : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. SSG Amplitude
      AMPLITUDE      : SCIF_DFLL0SSG_AMPLITUDE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. SSG Step Size
      STEPSIZE       : SCIF_DFLL0SSG_STEPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0SSG_Register use record
      EN             at 0 range 0 .. 0;
      PRBS           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      AMPLITUDE      at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      STEPSIZE       at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SCIF_DFLL0RATIO_RATIODIFF_Field is HAL.UInt16;

   --  DFLL0 Ratio Registe
   type SCIF_DFLL0RATIO_Register is record
      --  Read-only. Multiplication Ratio Difference
      RATIODIFF      : SCIF_DFLL0RATIO_RATIODIFF_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0RATIO_Register use record
      RATIODIFF      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DFLL0 Synchronization Register
   type SCIF_DFLL0SYNC_Register is record
      --  Write-only. Synchronization
      SYNC          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0SYNC_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SCIF_RCCR_CALIB_Field is HAL.UInt10;

   --  System RC Oscillator Calibration Register
   type SCIF_RCCR_Register is record
      --  Calibration Value
      CALIB          : SCIF_RCCR_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Flash Calibration Done
      FCD            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCCR_Register use record
      CALIB          at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FCD            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SCIF_RCFASTCFG_NBPERIODS_Field is HAL.UInt3;
   subtype SCIF_RCFASTCFG_FRANGE_Field is HAL.UInt2;
   subtype SCIF_RCFASTCFG_LOCKMARGIN_Field is HAL.UInt4;
   subtype SCIF_RCFASTCFG_CALIB_Field is HAL.UInt7;

   --  4/8/12 MHz RC Oscillator Configuration Register
   type SCIF_RCFASTCFG_Register is record
      --  Oscillator Enable
      EN             : Boolean := False;
      --  Tuner Enable
      TUNEEN         : Boolean := False;
      --  Jitter Mode
      JITMODE        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Number of 32kHz Periods
      NBPERIODS      : SCIF_RCFASTCFG_NBPERIODS_Field := 16#0#;
      --  RCFAST Fuse Calibration Done
      FCD            : Boolean := False;
      --  Frequency Range
      FRANGE         : SCIF_RCFASTCFG_FRANGE_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Accepted Count Error for Lock
      LOCKMARGIN     : SCIF_RCFASTCFG_LOCKMARGIN_Field := 16#0#;
      --  Oscillator Calibration Value
      CALIB          : SCIF_RCFASTCFG_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCFASTCFG_Register use record
      EN             at 0 range 0 .. 0;
      TUNEEN         at 0 range 1 .. 1;
      JITMODE        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      NBPERIODS      at 0 range 4 .. 6;
      FCD            at 0 range 7 .. 7;
      FRANGE         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      LOCKMARGIN     at 0 range 12 .. 15;
      CALIB          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SCIF_RCFASTSR_CURTRIM_Field is HAL.UInt7;
   subtype SCIF_RCFASTSR_CNTERR_Field is HAL.UInt5;

   --  4/8/12 MHz RC Oscillator Status Register
   type SCIF_RCFASTSR_Register is record
      --  Current Trim Value
      CURTRIM        : SCIF_RCFASTSR_CURTRIM_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Current Count Error
      CNTERR         : SCIF_RCFASTSR_CNTERR_Field := 16#0#;
      --  Sign of Current Count Error
      SIGN           : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Lock
      LOCK           : Boolean := False;
      --  Lock Lost
      LOCKLOST       : Boolean := False;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  Current Trim Value Updated
      UPDATED        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCFASTSR_Register use record
      CURTRIM        at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      CNTERR         at 0 range 16 .. 20;
      SIGN           at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LOCK           at 0 range 24 .. 24;
      LOCKLOST       at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      UPDATED        at 0 range 31 .. 31;
   end record;

   subtype SCIF_RC80MCR_CALIB_Field is HAL.UInt2;

   --  80 MHz RC Oscillator Register
   type SCIF_RC80MCR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_6   : HAL.UInt6 := 16#0#;
      --  Flash Calibration Done
      FCD            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Calibration Value
      CALIB          : SCIF_RC80MCR_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RC80MCR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      FCD            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CALIB          at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SCIF_HRPCR_CKSEL_Field is HAL.UInt3;
   subtype SCIF_HRPCR_HRCOUNT_Field is HAL.UInt24;

   --  High Resolution Prescaler Control Register
   type SCIF_HRPCR_Register is record
      --  High Resolution Prescaler Enable
      HRPEN        : Boolean := False;
      --  Clock Input Selection
      CKSEL        : SCIF_HRPCR_CKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  High Resolution Counter
      HRCOUNT      : SCIF_HRPCR_HRCOUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_HRPCR_Register use record
      HRPEN        at 0 range 0 .. 0;
      CKSEL        at 0 range 1 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      HRCOUNT      at 0 range 8 .. 31;
   end record;

   subtype SCIF_FPCR_CKSEL_Field is HAL.UInt3;

   --  Fractional Prescaler Control Register
   type SCIF_FPCR_Register is record
      --  High Resolution Prescaler Enable
      FPEN          : Boolean := False;
      --  Clock Input Selection
      CKSEL         : SCIF_FPCR_CKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FPCR_Register use record
      FPEN          at 0 range 0 .. 0;
      CKSEL         at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SCIF_FPMUL_FPMUL_Field is HAL.UInt16;

   --  Fractional Prescaler Multiplier Register
   type SCIF_FPMUL_Register is record
      --  Fractional Prescaler Multiplication Factor
      FPMUL          : SCIF_FPMUL_FPMUL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FPMUL_Register use record
      FPMUL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SCIF_FPDIV_FPDIV_Field is HAL.UInt16;

   --  Fractional Prescaler DIVIDER Register
   type SCIF_FPDIV_Register is record
      --  Fractional Prescaler Division Factor
      FPDIV          : SCIF_FPDIV_FPDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FPDIV_Register use record
      FPDIV          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SCIF_GCCTRL_OSCSEL_Field is HAL.UInt5;
   subtype SCIF_GCCTRL_DIV_Field is HAL.UInt16;

   --  Generic Clock Control
   type SCIF_GCCTRL_Register is record
      --  Clock Enable
      CEN            : Boolean := False;
      --  Divide Enable
      DIVEN          : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Clock Select
      OSCSEL         : SCIF_GCCTRL_OSCSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Division Factor
      DIV            : SCIF_GCCTRL_DIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_GCCTRL_Register use record
      CEN            at 0 range 0 .. 0;
      DIVEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      OSCSEL         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DIV            at 0 range 16 .. 31;
   end record;

   --  Generic Clock Control
   type SCIF_GCCTRL_Registers is array (0 .. 11) of SCIF_GCCTRL_Register
     with Volatile;

   subtype SCIF_RCFASTVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_RCFASTVERSION_VARIANT_Field is HAL.UInt4;

   --  4/8/12 MHz RC Oscillator Version Register
   type SCIF_RCFASTVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_RCFASTVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_RCFASTVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCFASTVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_GCLKPRESCVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_GCLKPRESCVERSION_VARIANT_Field is HAL.UInt4;

   --  Generic Clock Prescaler Version Register
   type SCIF_GCLKPRESCVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_GCLKPRESCVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_GCLKPRESCVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_GCLKPRESCVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_PLLIFAVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_PLLIFAVERSION_VARIANT_Field is HAL.UInt4;

   --  PLL Version Register
   type SCIF_PLLIFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_PLLIFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant nubmer
      VARIANT        : SCIF_PLLIFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_PLLIFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_OSCIFAVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_OSCIFAVERSION_VARIANT_Field is HAL.UInt4;

   --  Oscillator 0 Version Register
   type SCIF_OSCIFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_OSCIFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant nubmer
      VARIANT        : SCIF_OSCIFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_OSCIFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_DFLLIFBVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_DFLLIFBVERSION_VARIANT_Field is HAL.UInt4;

   --  DFLL Version Register
   type SCIF_DFLLIFBVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_DFLLIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_DFLLIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLLIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_RCOSCIFAVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_RCOSCIFAVERSION_VARIANT_Field is HAL.UInt4;

   --  System RC Oscillator Version Register
   type SCIF_RCOSCIFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_RCOSCIFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_RCOSCIFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCOSCIFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_FLOVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_FLOVERSION_VARIANT_Field is HAL.UInt4;

   --  Frequency Locked Oscillator Version Register
   type SCIF_FLOVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_FLOVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_FLOVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FLOVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_RC80MVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_RC80MVERSION_VARIANT_Field is HAL.UInt4;

   --  80MHz RC Oscillator Version Register
   type SCIF_RC80MVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_RC80MVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_RC80MVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RC80MVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_GCLKIFVERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_GCLKIFVERSION_VARIANT_Field is HAL.UInt4;

   --  Generic Clock Version Register
   type SCIF_GCLKIFVERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_GCLKIFVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_GCLKIFVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_GCLKIFVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SCIF_VERSION_VERSION_Field is HAL.UInt12;
   subtype SCIF_VERSION_VARIANT_Field is HAL.UInt4;

   --  SCIF Version Register
   type SCIF_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : SCIF_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SCIF_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Interface
   type SCIF_Peripheral is record
      --  Interrupt Enable Register
      IER              : aliased SCIF_IER_Register;
      --  Interrupt Disable Register
      IDR              : aliased SCIF_IDR_Register;
      --  Interrupt Mask Register
      IMR              : aliased SCIF_IMR_Register;
      --  Interrupt Status Register
      ISR              : aliased SCIF_ISR_Register;
      --  Interrupt Clear Register
      ICR              : aliased SCIF_ICR_Register;
      --  Power and Clocks Status Register
      PCLKSR           : aliased SCIF_PCLKSR_Register;
      --  Unlock Register
      UNLOCK           : aliased SCIF_UNLOCK_Register;
      --  Chip Specific Configuration Register
      CSCR             : aliased HAL.UInt32;
      --  Oscillator Control Register
      OSCCTRL0         : aliased SCIF_OSCCTRL0_Register;
      --  PLL0 Control Register
      PLL              : aliased SCIF_PLL_Register;
      --  DFLL0 Config Register
      DFLL0CONF        : aliased SCIF_DFLL0CONF_Register;
      --  DFLL Value Register
      DFLL0VAL         : aliased SCIF_DFLL0VAL_Register;
      --  DFLL0 Multiplier Register
      DFLL0MUL         : aliased SCIF_DFLL0MUL_Register;
      --  DFLL0 Step Register
      DFLL0STEP        : aliased SCIF_DFLL0STEP_Register;
      --  DFLL0 Spread Spectrum Generator Control Register
      DFLL0SSG         : aliased SCIF_DFLL0SSG_Register;
      --  DFLL0 Ratio Registe
      DFLL0RATIO       : aliased SCIF_DFLL0RATIO_Register;
      --  DFLL0 Synchronization Register
      DFLL0SYNC        : aliased SCIF_DFLL0SYNC_Register;
      --  System RC Oscillator Calibration Register
      RCCR             : aliased SCIF_RCCR_Register;
      --  4/8/12 MHz RC Oscillator Configuration Register
      RCFASTCFG        : aliased SCIF_RCFASTCFG_Register;
      --  4/8/12 MHz RC Oscillator Status Register
      RCFASTSR         : aliased SCIF_RCFASTSR_Register;
      --  80 MHz RC Oscillator Register
      RC80MCR          : aliased SCIF_RC80MCR_Register;
      --  High Resolution Prescaler Control Register
      HRPCR            : aliased SCIF_HRPCR_Register;
      --  Fractional Prescaler Control Register
      FPCR             : aliased SCIF_FPCR_Register;
      --  Fractional Prescaler Multiplier Register
      FPMUL            : aliased SCIF_FPMUL_Register;
      --  Fractional Prescaler DIVIDER Register
      FPDIV            : aliased SCIF_FPDIV_Register;
      --  Generic Clock Control
      GCCTRL           : aliased SCIF_GCCTRL_Registers;
      --  4/8/12 MHz RC Oscillator Version Register
      RCFASTVERSION    : aliased SCIF_RCFASTVERSION_Register;
      --  Generic Clock Prescaler Version Register
      GCLKPRESCVERSION : aliased SCIF_GCLKPRESCVERSION_Register;
      --  PLL Version Register
      PLLIFAVERSION    : aliased SCIF_PLLIFAVERSION_Register;
      --  Oscillator 0 Version Register
      OSCIFAVERSION    : aliased SCIF_OSCIFAVERSION_Register;
      --  DFLL Version Register
      DFLLIFBVERSION   : aliased SCIF_DFLLIFBVERSION_Register;
      --  System RC Oscillator Version Register
      RCOSCIFAVERSION  : aliased SCIF_RCOSCIFAVERSION_Register;
      --  Frequency Locked Oscillator Version Register
      FLOVERSION       : aliased SCIF_FLOVERSION_Register;
      --  80MHz RC Oscillator Version Register
      RC80MVERSION     : aliased SCIF_RC80MVERSION_Register;
      --  Generic Clock Version Register
      GCLKIFVERSION    : aliased SCIF_GCLKIFVERSION_Register;
      --  SCIF Version Register
      VERSION          : aliased SCIF_VERSION_Register;
   end record
     with Volatile;

   for SCIF_Peripheral use record
      IER              at 16#0# range 0 .. 31;
      IDR              at 16#4# range 0 .. 31;
      IMR              at 16#8# range 0 .. 31;
      ISR              at 16#C# range 0 .. 31;
      ICR              at 16#10# range 0 .. 31;
      PCLKSR           at 16#14# range 0 .. 31;
      UNLOCK           at 16#18# range 0 .. 31;
      CSCR             at 16#1C# range 0 .. 31;
      OSCCTRL0         at 16#20# range 0 .. 31;
      PLL              at 16#24# range 0 .. 31;
      DFLL0CONF        at 16#28# range 0 .. 31;
      DFLL0VAL         at 16#2C# range 0 .. 31;
      DFLL0MUL         at 16#30# range 0 .. 31;
      DFLL0STEP        at 16#34# range 0 .. 31;
      DFLL0SSG         at 16#38# range 0 .. 31;
      DFLL0RATIO       at 16#3C# range 0 .. 31;
      DFLL0SYNC        at 16#40# range 0 .. 31;
      RCCR             at 16#44# range 0 .. 31;
      RCFASTCFG        at 16#48# range 0 .. 31;
      RCFASTSR         at 16#4C# range 0 .. 31;
      RC80MCR          at 16#50# range 0 .. 31;
      HRPCR            at 16#64# range 0 .. 31;
      FPCR             at 16#68# range 0 .. 31;
      FPMUL            at 16#6C# range 0 .. 31;
      FPDIV            at 16#70# range 0 .. 31;
      GCCTRL           at 16#74# range 0 .. 383;
      RCFASTVERSION    at 16#3D8# range 0 .. 31;
      GCLKPRESCVERSION at 16#3DC# range 0 .. 31;
      PLLIFAVERSION    at 16#3E0# range 0 .. 31;
      OSCIFAVERSION    at 16#3E4# range 0 .. 31;
      DFLLIFBVERSION   at 16#3E8# range 0 .. 31;
      RCOSCIFAVERSION  at 16#3EC# range 0 .. 31;
      FLOVERSION       at 16#3F0# range 0 .. 31;
      RC80MVERSION     at 16#3F4# range 0 .. 31;
      GCLKIFVERSION    at 16#3F8# range 0 .. 31;
      VERSION          at 16#3FC# range 0 .. 31;
   end record;

   --  System Control Interface
   SCIF_Periph : aliased SCIF_Peripheral
     with Import, Address => System'To_Address (16#400E0800#);

end SAM_SVD.SCIF;
