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

--  This spec has been automatically generated from ATSAM4LS8A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  WDT Enable
   type CTRL_ENSelect is
     (
      --  WDT is disabled.
      CTRL_ENSelect_0,
      --  WDT is enabled
      CTRL_ENSelect_1)
     with Size => 1;
   for CTRL_ENSelect use
     (CTRL_ENSelect_0 => 0,
      CTRL_ENSelect_1 => 1);

   subtype WDT_CTRL_PSEL_Field is HAL.UInt5;
   subtype WDT_CTRL_TBAN_Field is HAL.UInt5;
   subtype WDT_CTRL_KEY_Field is HAL.UInt8;

   --  Control Register
   type WDT_CTRL_Register is record
      --  WDT Enable
      EN             : CTRL_ENSelect := SAM_SVD.WDT.CTRL_ENSelect_0;
      --  WDT Disable After Reset
      DAR            : Boolean := False;
      --  WDT Mode
      MODE           : Boolean := False;
      --  WDT Store Final Value
      SFV            : Boolean := False;
      --  WDT Interruput Mode
      IM             : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  WDT Fuse Calibration Done
      FCD            : Boolean := True;
      --  Timeout Prescale Select
      PSEL           : WDT_CTRL_PSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Clock Source Selection1
      CSSEL1         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Clock Enable
      CEN            : Boolean := True;
      --  Clock Source Selection0
      CSSEL          : Boolean := False;
      --  TBAN Prescale Select
      TBAN           : WDT_CTRL_TBAN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Key
      KEY            : WDT_CTRL_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_CTRL_Register use record
      EN             at 0 range 0 .. 0;
      DAR            at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 2;
      SFV            at 0 range 3 .. 3;
      IM             at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      FCD            at 0 range 7 .. 7;
      PSEL           at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CSSEL1         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CEN            at 0 range 16 .. 16;
      CSSEL          at 0 range 17 .. 17;
      TBAN           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   subtype WDT_CLR_KEY_Field is HAL.UInt8;

   --  Clear Register
   type WDT_CLR_Register is record
      --  Write-only. Clear WDT counter
      WDTCLR        : Boolean := False;
      --  unspecified
      Reserved_1_23 : HAL.UInt23 := 16#0#;
      --  Write-only. Key
      KEY           : WDT_CLR_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_CLR_Register use record
      WDTCLR        at 0 range 0 .. 0;
      Reserved_1_23 at 0 range 1 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   --  Status Register
   type WDT_SR_Register is record
      --  Read-only. WDT in window
      WINDOW        : Boolean;
      --  Read-only. WDT cleared
      CLEARED       : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_SR_Register use record
      WINDOW        at 0 range 0 .. 0;
      CLEARED       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Enable Register
   type WDT_IER_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Watchdog Interrupt
      WINT          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_IER_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Disable Register
   type WDT_IDR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Watchdog Interrupt
      WINT          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_IDR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Register
   type WDT_IMR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. Watchdog Interrupt
      WINT          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_IMR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Status Register
   type WDT_ISR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. Watchdog Interrupt
      WINT          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_ISR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Clear Register
   type WDT_ICR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Watchdog Interrupt
      WINT          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype WDT_VERSION_VERSION_Field is HAL.UInt12;
   subtype WDT_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type WDT_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : WDT_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : WDT_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Control Register
      CTRL    : aliased WDT_CTRL_Register;
      --  Clear Register
      CLR     : aliased WDT_CLR_Register;
      --  Status Register
      SR      : aliased WDT_SR_Register;
      --  Interrupt Enable Register
      IER     : aliased WDT_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased WDT_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased WDT_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased WDT_ISR_Register;
      --  Interrupt Clear Register
      ICR     : aliased WDT_ICR_Register;
      --  Version Register
      VERSION : aliased WDT_VERSION_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      CTRL    at 16#0# range 0 .. 31;
      CLR     at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      IER     at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      IMR     at 16#14# range 0 .. 31;
      ISR     at 16#18# range 0 .. 31;
      ICR     at 16#1C# range 0 .. 31;
      VERSION at 16#3FC# range 0 .. 31;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#400F0C00#);

end SAM_SVD.WDT;
