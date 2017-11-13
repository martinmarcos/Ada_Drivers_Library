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

--  This spec has been automatically generated from ATSAM4LC2B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.BSCIF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Register
   type BSCIF_IER_Register is record
      --  Write-only. 32kHz Oscillator Ready
      OSC32RDY       : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Ready
      RC32KRDY       : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : Boolean := False;
      --  Write-only. BOD33 Detected
      BOD33DET       : Boolean := False;
      --  Write-only. BOD18 Detected
      BOD18DET       : Boolean := False;
      --  Write-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : Boolean := False;
      --  Write-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : Boolean := False;
      --  Write-only. VREG Stop Switching Ready
      SSWRDY         : Boolean := False;
      --  Write-only. Main VREG OK
      VREGOK         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean := False;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Write-only. Access Error
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_IER_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Disable Register
   type BSCIF_IDR_Register is record
      --  Write-only. 32kHz Oscillator Ready
      OSC32RDY       : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Ready
      RC32KRDY       : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : Boolean := False;
      --  Write-only. BOD33 Detected
      BOD33DET       : Boolean := False;
      --  Write-only. BOD18 Detected
      BOD18DET       : Boolean := False;
      --  Write-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : Boolean := False;
      --  Write-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : Boolean := False;
      --  Write-only. VREG Stop Switching Ready
      SSWRDY         : Boolean := False;
      --  Write-only. Mai n VREG OK
      VREGOK         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean := False;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Write-only. Access Error
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_IDR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Mask Register
   type BSCIF_IMR_Register is record
      --  Read-only. 32kHz Oscillator Ready
      OSC32RDY       : Boolean;
      --  Read-only. 32kHz RC Oscillator Ready
      RC32KRDY       : Boolean;
      --  Read-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : Boolean;
      --  Read-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : Boolean;
      --  Read-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : Boolean;
      --  Read-only. BOD33 Detected
      BOD33DET       : Boolean;
      --  Read-only. BOD18 Detected
      BOD18DET       : Boolean;
      --  Read-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : Boolean;
      --  Read-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : Boolean;
      --  Read-only. VREG Stop Switching Ready
      SSWRDY         : Boolean;
      --  Read-only. Main VREG OK
      VREGOK         : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean;
      --  unspecified
      Reserved_13_30 : HAL.UInt18;
      --  Read-only. Access Error
      AE             : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_IMR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Status Register
   type BSCIF_ISR_Register is record
      --  Read-only. 32kHz Oscillator Ready
      OSC32RDY       : Boolean;
      --  Read-only. 32kHz RC Oscillator Ready
      RC32KRDY       : Boolean;
      --  Read-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : Boolean;
      --  Read-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : Boolean;
      --  Read-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : Boolean;
      --  Read-only. BOD33 Detected
      BOD33DET       : Boolean;
      --  Read-only. BOD18 Detected
      BOD18DET       : Boolean;
      --  Read-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : Boolean;
      --  Read-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : Boolean;
      --  Read-only. VREG Stop Switching Ready
      SSWRDY         : Boolean;
      --  Read-only. Main VREG OK
      VREGOK         : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean;
      --  unspecified
      Reserved_13_30 : HAL.UInt18;
      --  Read-only. Access Error
      AE             : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_ISR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Interrupt Clear Register
   type BSCIF_ICR_Register is record
      --  Write-only. 32kHz Oscillator Ready
      OSC32RDY       : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Ready
      RC32KRDY       : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : Boolean := False;
      --  Write-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : Boolean := False;
      --  Write-only. BOD33 Detected
      BOD33DET       : Boolean := False;
      --  Write-only. BOD18 Detected
      BOD18DET       : Boolean := False;
      --  Write-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : Boolean := False;
      --  Write-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : Boolean := False;
      --  Write-only. VREG Stop Switching Ready
      SSWRDY         : Boolean := False;
      --  Write-only. Main VREG OK
      VREGOK         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean := False;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Write-only. Access Error
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_ICR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Power and Clocks Status Register
   type BSCIF_PCLKSR_Register is record
      --  Read-only. 32kHz Oscillator Ready
      OSC32RDY       : Boolean;
      --  Read-only. 32kHz RC Oscillator Ready
      RC32KRDY       : Boolean;
      --  Read-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : Boolean;
      --  Read-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : Boolean;
      --  Read-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : Boolean;
      --  Read-only. BOD33 Detected
      BOD33DET       : Boolean;
      --  Read-only. BOD18 Detected
      BOD18DET       : Boolean;
      --  Read-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : Boolean;
      --  Read-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : Boolean;
      --  Read-only. VREG Stop Switching Ready
      SSWRDY         : Boolean;
      --  Read-only. Main VREG OK
      VREGOK         : Boolean;
      --  Read-only. RC 1MHz Oscillator Ready
      RC1MRDY        : Boolean;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_PCLKSR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      RC1MRDY        at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype BSCIF_UNLOCK_ADDR_Field is HAL.UInt10;

   --  Unlock Key
   type UNLOCK_KEYSelect is
     (
      --  Reset value for the field
      Unlock_Keyselect_Reset,
      --  Valid Key to Unlock register
      Valid)
     with Size => 8;
   for UNLOCK_KEYSelect use
     (Unlock_Keyselect_Reset => 0,
      Valid => 170);

   --  Unlock Register
   type BSCIF_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : BSCIF_UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : UNLOCK_KEYSelect := Unlock_Keyselect_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   subtype BSCIF_OSCCTRL32_MODE_Field is HAL.UInt3;
   subtype BSCIF_OSCCTRL32_SELCURR_Field is HAL.UInt4;
   subtype BSCIF_OSCCTRL32_STARTUP_Field is HAL.UInt3;

   --  Oscillator 32 Control Register
   type BSCIF_OSCCTRL32_Register is record
      --  32 KHz Oscillator Enable
      OSC32EN        : Boolean := False;
      --  Pins Select
      PINSEL         : Boolean := False;
      --  32 KHz output Enable
      EN32K          : Boolean := True;
      --  1 KHz output Enable
      EN1K           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Oscillator Mode
      MODE           : BSCIF_OSCCTRL32_MODE_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Current selection
      SELCURR        : BSCIF_OSCCTRL32_SELCURR_Field := 16#0#;
      --  Oscillator Start-up Time
      STARTUP        : BSCIF_OSCCTRL32_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_OSCCTRL32_Register use record
      OSC32EN        at 0 range 0 .. 0;
      PINSEL         at 0 range 1 .. 1;
      EN32K          at 0 range 2 .. 2;
      EN1K           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      MODE           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SELCURR        at 0 range 12 .. 15;
      STARTUP        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  32 kHz RC Oscillator Control Register
   type BSCIF_RC32KCR_Register is record
      --  Enable as Generic clock source
      EN            : Boolean := False;
      --  Temperature Compensation Enable
      TCEN          : Boolean := False;
      --  Enable 32 KHz output
      EN32K         : Boolean := False;
      --  Enable 1 kHz output
      EN1K          : Boolean := False;
      --  Mode Selection
      MODE          : Boolean := False;
      --  Reference select
      REF           : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Flash calibration done
      FCD           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC32KCR_Register use record
      EN            at 0 range 0 .. 0;
      TCEN          at 0 range 1 .. 1;
      EN32K         at 0 range 2 .. 2;
      EN1K          at 0 range 3 .. 3;
      MODE          at 0 range 4 .. 4;
      REF           at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      FCD           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BSCIF_RC32KTUNE_FINE_Field is HAL.UInt6;
   subtype BSCIF_RC32KTUNE_COARSE_Field is HAL.UInt7;

   --  32kHz RC Oscillator Tuning Register
   type BSCIF_RC32KTUNE_Register is record
      --  Fine value
      FINE           : BSCIF_RC32KTUNE_FINE_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Coarse Value
      COARSE         : BSCIF_RC32KTUNE_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC32KTUNE_Register use record
      FINE           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      COARSE         at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype BSCIF_BOD33CTRL_ACTION_Field is HAL.UInt2;

   --  BOD33 Control Register
   type BSCIF_BOD33CTRL_Register is record
      --  Enable
      EN             : Boolean := False;
      --  BOD Hysteresis
      HYST           : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Action
      ACTION         : BSCIF_BOD33CTRL_ACTION_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Operation modes
      MODE           : Boolean := False;
      --  unspecified
      Reserved_17_29 : HAL.UInt13 := 16#0#;
      --  BOD Fuse Calibration Done
      FCD            : Boolean := False;
      --  BOD Control Register Store Final Value
      SFV            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD33CTRL_Register use record
      EN             at 0 range 0 .. 0;
      HYST           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ACTION         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MODE           at 0 range 16 .. 16;
      Reserved_17_29 at 0 range 17 .. 29;
      FCD            at 0 range 30 .. 30;
      SFV            at 0 range 31 .. 31;
   end record;

   subtype BSCIF_BOD33LEVEL_VAL_Field is HAL.UInt6;

   --  BOD33 Level Register
   type BSCIF_BOD33LEVEL_Register is record
      --  BOD Value
      VAL           : BSCIF_BOD33LEVEL_VAL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD33LEVEL_Register use record
      VAL           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype BSCIF_BOD33SAMPLING_PSEL_Field is HAL.UInt4;

   --  BOD33 Sampling Control Register
   type BSCIF_BOD33SAMPLING_Register is record
      --  Clock Enable
      CEN            : Boolean := False;
      --  Clock Source Select
      CSSEL          : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Prescaler Select
      PSEL           : BSCIF_BOD33SAMPLING_PSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD33SAMPLING_Register use record
      CEN            at 0 range 0 .. 0;
      CSSEL          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      PSEL           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype BSCIF_BOD18CTRL_ACTION_Field is HAL.UInt2;

   --  BOD18 Control Register
   type BSCIF_BOD18CTRL_Register is record
      --  Enable
      EN             : Boolean := False;
      --  BOD Hysteresis
      HYST           : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Action
      ACTION         : BSCIF_BOD18CTRL_ACTION_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Operation modes
      MODE           : Boolean := False;
      --  unspecified
      Reserved_17_29 : HAL.UInt13 := 16#0#;
      --  BOD Fuse Calibration Done
      FCD            : Boolean := False;
      --  BOD Control Register Store Final Value
      SFV            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD18CTRL_Register use record
      EN             at 0 range 0 .. 0;
      HYST           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ACTION         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MODE           at 0 range 16 .. 16;
      Reserved_17_29 at 0 range 17 .. 29;
      FCD            at 0 range 30 .. 30;
      SFV            at 0 range 31 .. 31;
   end record;

   subtype BSCIF_BOD18LEVEL_VAL_Field is HAL.UInt6;

   --  BOD18 Level Register
   type BSCIF_BOD18LEVEL_Register is record
      --  BOD Value
      VAL           : BSCIF_BOD18LEVEL_VAL_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  BOD Threshold Range
      RANGE_k       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD18LEVEL_Register use record
      VAL           at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      RANGE_k       at 0 range 31 .. 31;
   end record;

   --  Voltage Regulator Configuration Register
   type BSCIF_VREGCR_Register is record
      --  Voltage Regulator disable
      DIS            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Spread Spectrum Generator Enable
      SSG            : Boolean := False;
      --  Stop Switching
      SSW            : Boolean := False;
      --  Stop Switching On Event Enable
      SSWEVT         : Boolean := False;
      --  unspecified
      Reserved_11_30 : HAL.UInt20 := 16#0#;
      --  Store Final Value
      SFV            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_VREGCR_Register use record
      DIS            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SSG            at 0 range 8 .. 8;
      SSW            at 0 range 9 .. 9;
      SSWEVT         at 0 range 10 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      SFV            at 0 range 31 .. 31;
   end record;

   subtype BSCIF_RC1MCR_CLKCAL_Field is HAL.UInt5;

   --  1MHz RC Clock Configuration Register
   type BSCIF_RC1MCR_Register is record
      --  1MHz RC Osc Clock Output Enable
      CLKOE          : Boolean := False;
      --  unspecified
      Reserved_1_6   : HAL.UInt6 := 16#0#;
      --  Flash Calibration Done
      FCD            : Boolean := False;
      --  1MHz RC Osc Calibration
      CLKCAL         : BSCIF_RC1MCR_CLKCAL_Field := 16#F#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC1MCR_Register use record
      CLKOE          at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      FCD            at 0 range 7 .. 7;
      CLKCAL         at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  ADC Input Selection
   type BGCTRL_ADCISELSelect is
     (
      Dis,
      Vtemp,
      Vref)
     with Size => 2;
   for BGCTRL_ADCISELSelect use
     (Dis => 0,
      Vtemp => 1,
      Vref => 2);

   --  Bandgap Control Register
   type BSCIF_BGCTRL_Register is record
      --  ADC Input Selection
      ADCISEL       : BGCTRL_ADCISELSelect := SAM_SVD.BSCIF.Dis;
      --  unspecified
      Reserved_2_7  : HAL.UInt6 := 16#0#;
      --  Temperature Sensor Enable
      TSEN          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BGCTRL_Register use record
      ADCISEL       at 0 range 0 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      TSEN          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Bandgap Buffer Ready
   type BGSR_BGBUFRDYSelect is
     (
      Flash,
      Pll,
      Vreg,
      Bufrr,
      Adc,
      Lcd)
     with Size => 8;
   for BGSR_BGBUFRDYSelect use
     (Flash => 1,
      Pll => 2,
      Vreg => 4,
      Bufrr => 8,
      Adc => 16,
      Lcd => 32);

   subtype BSCIF_BGSR_VREF_Field is HAL.UInt2;

   --  Bandgap Status Register
   type BSCIF_BGSR_Register is record
      --  Read-only. Bandgap Buffer Ready
      BGBUFRDY       : BGSR_BGBUFRDYSelect;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Bandgap Voltage Reference Ready
      BGRDY          : Boolean;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : Boolean;
      --  Read-only. Voltage Reference Used by the System
      VREF           : BSCIF_BGSR_VREF_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BGSR_Register use record
      BGBUFRDY       at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BGRDY          at 0 range 16 .. 16;
      LPBGRDY        at 0 range 17 .. 17;
      VREF           at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Backup Register

   --  Backup Register
   type BSCIF_BR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   subtype BSCIF_BRIFBVERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_BRIFBVERSION_VARIANT_Field is HAL.UInt4;

   --  Backup Register Interface Version Register
   type BSCIF_BRIFBVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BSCIF_BRIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BSCIF_BRIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BRIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BSCIF_BGREFIFBVERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_BGREFIFBVERSION_VARIANT_Field is HAL.UInt4;

   --  BGREFIFB Version Register
   type BSCIF_BGREFIFBVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BSCIF_BGREFIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BSCIF_BGREFIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BGREFIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BSCIF_VREGIFGVERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_VREGIFGVERSION_VARIANT_Field is HAL.UInt4;

   --  VREGIFA Version Register
   type BSCIF_VREGIFGVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BSCIF_VREGIFGVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BSCIF_VREGIFGVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_VREGIFGVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BSCIF_BODIFCVERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_BODIFCVERSION_VARIANT_Field is HAL.UInt4;

   --  BODIFC Version Register
   type BSCIF_BODIFCVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BSCIF_BODIFCVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BSCIF_BODIFCVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BODIFCVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BSCIF_RC32KIFBVERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_RC32KIFBVERSION_VARIANT_Field is HAL.UInt4;

   --  32 kHz RC Oscillator Version Register
   type BSCIF_RC32KIFBVERSION_Register is record
      --  Read-only. Version number
      VERSION        : BSCIF_RC32KIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : BSCIF_RC32KIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC32KIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BSCIF_OSC32IFAVERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_OSC32IFAVERSION_VARIANT_Field is HAL.UInt4;

   --  32 KHz Oscillator Version Register
   type BSCIF_OSC32IFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : BSCIF_OSC32IFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant nubmer
      VARIANT        : BSCIF_OSC32IFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_OSC32IFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BSCIF_VERSION_VERSION_Field is HAL.UInt12;
   subtype BSCIF_VERSION_VARIANT_Field is HAL.UInt4;

   --  BSCIF Version Register
   type BSCIF_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BSCIF_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BSCIF_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Backup System Control Interface
   type BSCIF_Peripheral is record
      --  Interrupt Enable Register
      IER             : aliased BSCIF_IER_Register;
      --  Interrupt Disable Register
      IDR             : aliased BSCIF_IDR_Register;
      --  Interrupt Mask Register
      IMR             : aliased BSCIF_IMR_Register;
      --  Interrupt Status Register
      ISR             : aliased BSCIF_ISR_Register;
      --  Interrupt Clear Register
      ICR             : aliased BSCIF_ICR_Register;
      --  Power and Clocks Status Register
      PCLKSR          : aliased BSCIF_PCLKSR_Register;
      --  Unlock Register
      UNLOCK          : aliased BSCIF_UNLOCK_Register;
      --  Chip Specific Configuration Register
      CSCR            : aliased HAL.UInt32;
      --  Oscillator 32 Control Register
      OSCCTRL32       : aliased BSCIF_OSCCTRL32_Register;
      --  32 kHz RC Oscillator Control Register
      RC32KCR         : aliased BSCIF_RC32KCR_Register;
      --  32kHz RC Oscillator Tuning Register
      RC32KTUNE       : aliased BSCIF_RC32KTUNE_Register;
      --  BOD33 Control Register
      BOD33CTRL       : aliased BSCIF_BOD33CTRL_Register;
      --  BOD33 Level Register
      BOD33LEVEL      : aliased BSCIF_BOD33LEVEL_Register;
      --  BOD33 Sampling Control Register
      BOD33SAMPLING   : aliased BSCIF_BOD33SAMPLING_Register;
      --  BOD18 Control Register
      BOD18CTRL       : aliased BSCIF_BOD18CTRL_Register;
      --  BOD18 Level Register
      BOD18LEVEL      : aliased BSCIF_BOD18LEVEL_Register;
      --  Voltage Regulator Configuration Register
      VREGCR          : aliased BSCIF_VREGCR_Register;
      --  Normal Mode Control and Status Register
      VREGNCSR        : aliased HAL.UInt32;
      --  LP Mode Control and Status Register
      VREGLPCSR       : aliased HAL.UInt32;
      --  1MHz RC Clock Configuration Register
      RC1MCR          : aliased BSCIF_RC1MCR_Register;
      --  Bandgap Calibration Register
      BGCR            : aliased HAL.UInt32;
      --  Bandgap Control Register
      BGCTRL          : aliased BSCIF_BGCTRL_Register;
      --  Bandgap Status Register
      BGSR            : aliased BSCIF_BGSR_Register;
      --  Backup Register
      BR              : aliased BSCIF_BR_Registers;
      --  Backup Register Interface Version Register
      BRIFBVERSION    : aliased BSCIF_BRIFBVERSION_Register;
      --  BGREFIFB Version Register
      BGREFIFBVERSION : aliased BSCIF_BGREFIFBVERSION_Register;
      --  VREGIFA Version Register
      VREGIFGVERSION  : aliased BSCIF_VREGIFGVERSION_Register;
      --  BODIFC Version Register
      BODIFCVERSION   : aliased BSCIF_BODIFCVERSION_Register;
      --  32 kHz RC Oscillator Version Register
      RC32KIFBVERSION : aliased BSCIF_RC32KIFBVERSION_Register;
      --  32 KHz Oscillator Version Register
      OSC32IFAVERSION : aliased BSCIF_OSC32IFAVERSION_Register;
      --  BSCIF Version Register
      VERSION         : aliased BSCIF_VERSION_Register;
   end record
     with Volatile;

   for BSCIF_Peripheral use record
      IER             at 16#0# range 0 .. 31;
      IDR             at 16#4# range 0 .. 31;
      IMR             at 16#8# range 0 .. 31;
      ISR             at 16#C# range 0 .. 31;
      ICR             at 16#10# range 0 .. 31;
      PCLKSR          at 16#14# range 0 .. 31;
      UNLOCK          at 16#18# range 0 .. 31;
      CSCR            at 16#1C# range 0 .. 31;
      OSCCTRL32       at 16#20# range 0 .. 31;
      RC32KCR         at 16#24# range 0 .. 31;
      RC32KTUNE       at 16#28# range 0 .. 31;
      BOD33CTRL       at 16#2C# range 0 .. 31;
      BOD33LEVEL      at 16#30# range 0 .. 31;
      BOD33SAMPLING   at 16#34# range 0 .. 31;
      BOD18CTRL       at 16#38# range 0 .. 31;
      BOD18LEVEL      at 16#3C# range 0 .. 31;
      VREGCR          at 16#44# range 0 .. 31;
      VREGNCSR        at 16#4C# range 0 .. 31;
      VREGLPCSR       at 16#50# range 0 .. 31;
      RC1MCR          at 16#58# range 0 .. 31;
      BGCR            at 16#5C# range 0 .. 31;
      BGCTRL          at 16#60# range 0 .. 31;
      BGSR            at 16#64# range 0 .. 31;
      BR              at 16#78# range 0 .. 127;
      BRIFBVERSION    at 16#3E4# range 0 .. 31;
      BGREFIFBVERSION at 16#3E8# range 0 .. 31;
      VREGIFGVERSION  at 16#3EC# range 0 .. 31;
      BODIFCVERSION   at 16#3F0# range 0 .. 31;
      RC32KIFBVERSION at 16#3F4# range 0 .. 31;
      OSC32IFAVERSION at 16#3F8# range 0 .. 31;
      VERSION         at 16#3FC# range 0 .. 31;
   end record;

   --  Backup System Control Interface
   BSCIF_Periph : aliased BSCIF_Peripheral
     with Import, Address => System'To_Address (16#400F0400#);

end SAM_SVD.BSCIF;
