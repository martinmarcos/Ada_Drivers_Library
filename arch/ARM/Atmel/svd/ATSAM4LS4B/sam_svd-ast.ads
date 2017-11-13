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

--  This spec has been automatically generated from ATSAM4LS4B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AST is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable
   type CR_ENSelect is
     (
      --  The AST is disabled.
      CR_ENSelect_0,
      --  The AST is enabled
      CR_ENSelect_1)
     with Size => 1;
   for CR_ENSelect use
     (CR_ENSelect_0 => 0,
      CR_ENSelect_1 => 1);

   --  AST_CR_CA array
   type AST_CR_CA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_CR_CA
   type AST_CR_CA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CA as a value
            Val : HAL.UInt2;
         when True =>
            --  CA as an array
            Arr : AST_CR_CA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_CR_CA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype AST_CR_PSEL_Field is HAL.UInt5;

   --  Control Register
   type AST_CR_Register is record
      --  Enable
      EN             : CR_ENSelect := SAM_SVD.AST.CR_ENSelect_0;
      --  Prescaler Clear
      PCLR           : Boolean := False;
      --  Calendar mode
      CAL            : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Clear on Alarm 0
      CA             : AST_CR_CA_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Prescaler Select
      PSEL           : AST_CR_PSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_CR_Register use record
      EN             at 0 range 0 .. 0;
      PCLR           at 0 range 1 .. 1;
      CAL            at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CA             at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PSEL           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  AST_SR_ALARM array
   type AST_SR_ALARM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_SR_ALARM
   type AST_SR_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : HAL.UInt2;
         when True =>
            --  ALARM as an array
            Arr : AST_SR_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_SR_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST_SR_PER array
   type AST_SR_PER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_SR_PER
   type AST_SR_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : HAL.UInt2;
         when True =>
            --  PER as an array
            Arr : AST_SR_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_SR_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST Busy
   type SR_BUSYSelect is
     (
      --  The AST accepts writes to CV, WER, DTR, SCR, AR, PIR and CR
      SR_BUSYSelect_0,
      --  The AST is busy and will discard writes to CV, WER, DTR, SCR, AR, PIR
      --  and CR
      SR_BUSYSelect_1)
     with Size => 1;
   for SR_BUSYSelect use
     (SR_BUSYSelect_0 => 0,
      SR_BUSYSelect_1 => 1);

   --  Clock Busy
   type SR_CLKBUSYSelect is
     (
      --  The clock is ready and can be changed
      SR_CLKBUSYSelect_0,
      --  CEN has been written and the clock is busy
      SR_CLKBUSYSelect_1)
     with Size => 1;
   for SR_CLKBUSYSelect use
     (SR_CLKBUSYSelect_0 => 0,
      SR_CLKBUSYSelect_1 => 1);

   --  Status Register
   type AST_SR_Register is record
      --  Read-only. Overflow
      OVF            : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Alarm 0
      ALARM          : AST_SR_ALARM_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Periodic 0
      PER            : AST_SR_PER_Field;
      --  unspecified
      Reserved_18_23 : HAL.UInt6;
      --  Read-only. AST Busy
      BUSY           : SR_BUSYSelect;
      --  Read-only. AST Ready
      READY          : Boolean;
      --  unspecified
      Reserved_26_27 : HAL.UInt2;
      --  Read-only. Clock Busy
      CLKBUSY        : SR_CLKBUSYSelect;
      --  Read-only. Clock Ready
      CLKRDY         : Boolean;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_SR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      BUSY           at 0 range 24 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CLKBUSY        at 0 range 28 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  AST_SCR_ALARM array
   type AST_SCR_ALARM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_SCR_ALARM
   type AST_SCR_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : HAL.UInt2;
         when True =>
            --  ALARM as an array
            Arr : AST_SCR_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_SCR_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST_SCR_PER array
   type AST_SCR_PER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_SCR_PER
   type AST_SCR_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : HAL.UInt2;
         when True =>
            --  PER as an array
            Arr : AST_SCR_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_SCR_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status Clear Register
   type AST_SCR_Register is record
      --  Write-only. Overflow
      OVF            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM          : AST_SCR_ALARM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Periodic 0
      PER            : AST_SCR_PER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_24 : HAL.UInt7 := 16#0#;
      --  Write-only. AST Ready
      READY          : Boolean := False;
      --  unspecified
      Reserved_26_28 : HAL.UInt3 := 16#0#;
      --  Write-only. Clock Ready
      CLKRDY         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_SCR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Overflow
   type IER_OVFSelect is
     (
      --  No effect
      IER_OVFSelect_0,
      --  Enable Interrupt.
      IER_OVFSelect_1)
     with Size => 1;
   for IER_OVFSelect use
     (IER_OVFSelect_0 => 0,
      IER_OVFSelect_1 => 1);

   --  Alarm 0
   type IER_ALARM0Select is
     (
      --  No effect
      IER_ALARM0Select_0,
      --  Enable interrupt
      IER_ALARM0Select_1)
     with Size => 1;
   for IER_ALARM0Select use
     (IER_ALARM0Select_0 => 0,
      IER_ALARM0Select_1 => 1);

   --  Alarm 1
   type IER_ALARM1Select is
     (
      --  No effect
      IER_ALARM1Select_0,
      --  Enable interrupt
      IER_ALARM1Select_1)
     with Size => 1;
   for IER_ALARM1Select use
     (IER_ALARM1Select_0 => 0,
      IER_ALARM1Select_1 => 1);

   --  Periodic 0
   type IER_PER0Select is
     (
      --  No effect
      IER_PER0Select_0,
      --  Enable interrupt
      IER_PER0Select_1)
     with Size => 1;
   for IER_PER0Select use
     (IER_PER0Select_0 => 0,
      IER_PER0Select_1 => 1);

   --  Periodic 1
   type IER_PER1Select is
     (
      --  No effect
      IER_PER1Select_0,
      --  Enable interrupt
      IER_PER1Select_1)
     with Size => 1;
   for IER_PER1Select use
     (IER_PER1Select_0 => 0,
      IER_PER1Select_1 => 1);

   --  AST Ready
   type IER_READYSelect is
     (
      --  No effect
      IER_READYSelect_0,
      --  Enable interrupt
      IER_READYSelect_1)
     with Size => 1;
   for IER_READYSelect use
     (IER_READYSelect_0 => 0,
      IER_READYSelect_1 => 1);

   --  Clock Ready
   type IER_CLKRDYSelect is
     (
      --  No effect
      IER_CLKRDYSelect_0,
      --  Enable interrupt
      IER_CLKRDYSelect_1)
     with Size => 1;
   for IER_CLKRDYSelect use
     (IER_CLKRDYSelect_0 => 0,
      IER_CLKRDYSelect_1 => 1);

   --  Interrupt Enable Register
   type AST_IER_Register is record
      --  Write-only. Overflow
      OVF            : IER_OVFSelect := SAM_SVD.AST.IER_OVFSelect_0;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM0         : IER_ALARM0Select := SAM_SVD.AST.IER_ALARM0Select_0;
      --  Write-only. Alarm 1
      ALARM1         : IER_ALARM1Select := SAM_SVD.AST.IER_ALARM1Select_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Periodic 0
      PER0           : IER_PER0Select := SAM_SVD.AST.IER_PER0Select_0;
      --  Write-only. Periodic 1
      PER1           : IER_PER1Select := SAM_SVD.AST.IER_PER1Select_0;
      --  unspecified
      Reserved_18_24 : HAL.UInt7 := 16#0#;
      --  Write-only. AST Ready
      READY          : IER_READYSelect := SAM_SVD.AST.IER_READYSelect_0;
      --  unspecified
      Reserved_26_28 : HAL.UInt3 := 16#0#;
      --  Write-only. Clock Ready
      CLKRDY         : IER_CLKRDYSelect := SAM_SVD.AST.IER_CLKRDYSelect_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_IER_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Overflow
   type IDR_OVFSelect is
     (
      --  No effect
      IDR_OVFSelect_0,
      --  Disable Interrupt.
      IDR_OVFSelect_1)
     with Size => 1;
   for IDR_OVFSelect use
     (IDR_OVFSelect_0 => 0,
      IDR_OVFSelect_1 => 1);

   --  Alarm 0
   type IDR_ALARM0Select is
     (
      --  No effect
      IDR_ALARM0Select_0,
      --  Disable interrupt
      IDR_ALARM0Select_1)
     with Size => 1;
   for IDR_ALARM0Select use
     (IDR_ALARM0Select_0 => 0,
      IDR_ALARM0Select_1 => 1);

   --  Alarm 1
   type IDR_ALARM1Select is
     (
      --  No effect
      IDR_ALARM1Select_0,
      --  Disable interrupt
      IDR_ALARM1Select_1)
     with Size => 1;
   for IDR_ALARM1Select use
     (IDR_ALARM1Select_0 => 0,
      IDR_ALARM1Select_1 => 1);

   --  Periodic 0
   type IDR_PER0Select is
     (
      --  No effet
      IDR_PER0Select_0,
      --  Disalbe interrupt
      IDR_PER0Select_1)
     with Size => 1;
   for IDR_PER0Select use
     (IDR_PER0Select_0 => 0,
      IDR_PER0Select_1 => 1);

   --  Periodic 1
   type IDR_PER1Select is
     (
      --  No effect
      IDR_PER1Select_0,
      --  Disable interrupt
      IDR_PER1Select_1)
     with Size => 1;
   for IDR_PER1Select use
     (IDR_PER1Select_0 => 0,
      IDR_PER1Select_1 => 1);

   --  AST Ready
   type IDR_READYSelect is
     (
      --  No effect
      IDR_READYSelect_0,
      --  Disable interrupt
      IDR_READYSelect_1)
     with Size => 1;
   for IDR_READYSelect use
     (IDR_READYSelect_0 => 0,
      IDR_READYSelect_1 => 1);

   --  Clock Ready
   type IDR_CLKRDYSelect is
     (
      --  No effect
      IDR_CLKRDYSelect_0,
      --  Disable interrupt
      IDR_CLKRDYSelect_1)
     with Size => 1;
   for IDR_CLKRDYSelect use
     (IDR_CLKRDYSelect_0 => 0,
      IDR_CLKRDYSelect_1 => 1);

   --  Interrupt Disable Register
   type AST_IDR_Register is record
      --  Write-only. Overflow
      OVF            : IDR_OVFSelect := SAM_SVD.AST.IDR_OVFSelect_0;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM0         : IDR_ALARM0Select := SAM_SVD.AST.IDR_ALARM0Select_0;
      --  Write-only. Alarm 1
      ALARM1         : IDR_ALARM1Select := SAM_SVD.AST.IDR_ALARM1Select_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Periodic 0
      PER0           : IDR_PER0Select := SAM_SVD.AST.IDR_PER0Select_0;
      --  Write-only. Periodic 1
      PER1           : IDR_PER1Select := SAM_SVD.AST.IDR_PER1Select_0;
      --  unspecified
      Reserved_18_24 : HAL.UInt7 := 16#0#;
      --  Write-only. AST Ready
      READY          : IDR_READYSelect := SAM_SVD.AST.IDR_READYSelect_0;
      --  unspecified
      Reserved_26_28 : HAL.UInt3 := 16#0#;
      --  Write-only. Clock Ready
      CLKRDY         : IDR_CLKRDYSelect := SAM_SVD.AST.IDR_CLKRDYSelect_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_IDR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Overflow
   type IMR_OVFSelect is
     (
      --  Interrupt is disabled
      IMR_OVFSelect_0,
      --  Interrupt is enabled.
      IMR_OVFSelect_1)
     with Size => 1;
   for IMR_OVFSelect use
     (IMR_OVFSelect_0 => 0,
      IMR_OVFSelect_1 => 1);

   --  Alarm 0
   type IMR_ALARM0Select is
     (
      --  Interupt is disabled
      IMR_ALARM0Select_0,
      --  Interrupt is enabled
      IMR_ALARM0Select_1)
     with Size => 1;
   for IMR_ALARM0Select use
     (IMR_ALARM0Select_0 => 0,
      IMR_ALARM0Select_1 => 1);

   --  Alarm 1
   type IMR_ALARM1Select is
     (
      --  Interrupt is disabled
      IMR_ALARM1Select_0,
      --  Interrupt is enabled
      IMR_ALARM1Select_1)
     with Size => 1;
   for IMR_ALARM1Select use
     (IMR_ALARM1Select_0 => 0,
      IMR_ALARM1Select_1 => 1);

   --  Periodic 0
   type IMR_PER0Select is
     (
      --  Interrupt is disabled
      IMR_PER0Select_0,
      --  Interrupt is enabled
      IMR_PER0Select_1)
     with Size => 1;
   for IMR_PER0Select use
     (IMR_PER0Select_0 => 0,
      IMR_PER0Select_1 => 1);

   --  Periodic 1
   type IMR_PER1Select is
     (
      --  Interrupt is disabled
      IMR_PER1Select_0,
      --  Interrupt is enabled
      IMR_PER1Select_1)
     with Size => 1;
   for IMR_PER1Select use
     (IMR_PER1Select_0 => 0,
      IMR_PER1Select_1 => 1);

   --  AST Ready
   type IMR_READYSelect is
     (
      --  Interrupt is disabled
      IMR_READYSelect_0,
      --  Interrupt is enabled
      IMR_READYSelect_1)
     with Size => 1;
   for IMR_READYSelect use
     (IMR_READYSelect_0 => 0,
      IMR_READYSelect_1 => 1);

   --  Clock Ready
   type IMR_CLKRDYSelect is
     (
      --  Interrupt is disabled
      IMR_CLKRDYSelect_0,
      --  Interrupt is enabled
      IMR_CLKRDYSelect_1)
     with Size => 1;
   for IMR_CLKRDYSelect use
     (IMR_CLKRDYSelect_0 => 0,
      IMR_CLKRDYSelect_1 => 1);

   --  Interrupt Mask Register
   type AST_IMR_Register is record
      --  Read-only. Overflow
      OVF            : IMR_OVFSelect;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Alarm 0
      ALARM0         : IMR_ALARM0Select;
      --  Read-only. Alarm 1
      ALARM1         : IMR_ALARM1Select;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Periodic 0
      PER0           : IMR_PER0Select;
      --  Read-only. Periodic 1
      PER1           : IMR_PER1Select;
      --  unspecified
      Reserved_18_24 : HAL.UInt7;
      --  Read-only. AST Ready
      READY          : IMR_READYSelect;
      --  unspecified
      Reserved_26_28 : HAL.UInt3;
      --  Read-only. Clock Ready
      CLKRDY         : IMR_CLKRDYSelect;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_IMR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Overflow
   type WER_OVFSelect is
     (
      --  The corresponing event will not wake up the CPU from sleep mode
      WER_OVFSelect_0,
      --  The corresponding event will wake up the CPU from sleep mode
      WER_OVFSelect_1)
     with Size => 1;
   for WER_OVFSelect use
     (WER_OVFSelect_0 => 0,
      WER_OVFSelect_1 => 1);

   --  Alarm 0
   type WER_ALARM0Select is
     (
      --  The corresponing event will not wake up the CPU from sleep mode
      WER_ALARM0Select_0,
      --  The corresponding event will wake up the CPU from sleep mode
      WER_ALARM0Select_1)
     with Size => 1;
   for WER_ALARM0Select use
     (WER_ALARM0Select_0 => 0,
      WER_ALARM0Select_1 => 1);

   --  Alarm 1
   type WER_ALARM1Select is
     (
      --  The corresponing event will not wake up the CPU from sleep mode
      WER_ALARM1Select_0,
      --  The corresponding event will wake up the CPU from sleep mode
      WER_ALARM1Select_1)
     with Size => 1;
   for WER_ALARM1Select use
     (WER_ALARM1Select_0 => 0,
      WER_ALARM1Select_1 => 1);

   --  Periodic 0
   type WER_PER0Select is
     (
      --  The corresponing event will not wake up the CPU from sleep mode
      WER_PER0Select_0,
      --  The corresponding event will wake up the CPU from sleep mode
      WER_PER0Select_1)
     with Size => 1;
   for WER_PER0Select use
     (WER_PER0Select_0 => 0,
      WER_PER0Select_1 => 1);

   --  Periodic 1
   type WER_PER1Select is
     (
      --  The corresponing event will not wake up the CPU from sleep mode
      WER_PER1Select_0,
      --  The corresponding event will wake up the CPU from sleep mode
      WER_PER1Select_1)
     with Size => 1;
   for WER_PER1Select use
     (WER_PER1Select_0 => 0,
      WER_PER1Select_1 => 1);

   --  Wake Enable Register
   type AST_WER_Register is record
      --  Overflow
      OVF            : WER_OVFSelect := SAM_SVD.AST.WER_OVFSelect_0;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Alarm 0
      ALARM0         : WER_ALARM0Select := SAM_SVD.AST.WER_ALARM0Select_0;
      --  Alarm 1
      ALARM1         : WER_ALARM1Select := SAM_SVD.AST.WER_ALARM1Select_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Periodic 0
      PER0           : WER_PER0Select := SAM_SVD.AST.WER_PER0Select_0;
      --  Periodic 1
      PER1           : WER_PER1Select := SAM_SVD.AST.WER_PER1Select_0;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_WER_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PIR_INSEL_Field is HAL.UInt5;

   --  Periodic Interval Register 0
   type PIR_Register is record
      --  Interval Select
      INSEL         : PIR_INSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIR_Register use record
      INSEL         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Clock Enable
   type CLOCK_CENSelect is
     (
      --  The clock is disabled
      CLOCK_CENSelect_0,
      --  The clock is enabled
      CLOCK_CENSelect_1)
     with Size => 1;
   for CLOCK_CENSelect use
     (CLOCK_CENSelect_0 => 0,
      CLOCK_CENSelect_1 => 1);

   --  Clock Source Selection
   type CLOCK_CSSELSelect is
     (
      --  Slow clock
      Slowclock,
      --  32 kHz clock
      CLOCK_CSSELSelect_32Khzclk,
      --  PB clock
      Pbclock,
      --  Generic clock
      Gclk,
      --  1kHz clock from 32 kHz oscillator
      CLOCK_CSSELSelect_1Khzclk)
     with Size => 3;
   for CLOCK_CSSELSelect use
     (Slowclock => 0,
      CLOCK_CSSELSelect_32Khzclk => 1,
      Pbclock => 2,
      Gclk => 3,
      CLOCK_CSSELSelect_1Khzclk => 4);

   --  Clock Control Register
   type AST_CLOCK_Register is record
      --  Clock Enable
      CEN            : CLOCK_CENSelect := SAM_SVD.AST.CLOCK_CENSelect_0;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Clock Source Selection
      CSSEL          : CLOCK_CSSELSelect := SAM_SVD.AST.Slowclock;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_CLOCK_Register use record
      CEN            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CSSEL          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype AST_DTR_EXP_Field is HAL.UInt5;
   subtype AST_DTR_VALUE_Field is HAL.UInt8;

   --  Digital Tuner Register
   type AST_DTR_Register is record
      --  EXP
      EXP            : AST_DTR_EXP_Field := 16#0#;
      --  ADD
      ADD            : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  VALUE
      VALUE          : AST_DTR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_DTR_Register use record
      EXP            at 0 range 0 .. 4;
      ADD            at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VALUE          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  AST_EVE_ALARM array
   type AST_EVE_ALARM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_EVE_ALARM
   type AST_EVE_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : HAL.UInt2;
         when True =>
            --  ALARM as an array
            Arr : AST_EVE_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_EVE_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST_EVE_PER array
   type AST_EVE_PER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_EVE_PER
   type AST_EVE_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : HAL.UInt2;
         when True =>
            --  PER as an array
            Arr : AST_EVE_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_EVE_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Enable Register
   type AST_EVE_Register is record
      --  Write-only. Overflow
      OVF            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM          : AST_EVE_ALARM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Perioidc 0
      PER            : AST_EVE_PER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_EVE_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  AST_EVD_ALARM array
   type AST_EVD_ALARM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_EVD_ALARM
   type AST_EVD_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : HAL.UInt2;
         when True =>
            --  ALARM as an array
            Arr : AST_EVD_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_EVD_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST_EVD_PER array
   type AST_EVD_PER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_EVD_PER
   type AST_EVD_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : HAL.UInt2;
         when True =>
            --  PER as an array
            Arr : AST_EVD_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_EVD_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Disable Register
   type AST_EVD_Register is record
      --  Write-only. Overflow
      OVF            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM          : AST_EVD_ALARM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Perioidc 0
      PER            : AST_EVD_PER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_EVD_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  AST_EVM_ALARM array
   type AST_EVM_ALARM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_EVM_ALARM
   type AST_EVM_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : HAL.UInt2;
         when True =>
            --  ALARM as an array
            Arr : AST_EVM_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_EVM_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST_EVM_PER array
   type AST_EVM_PER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AST_EVM_PER
   type AST_EVM_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : HAL.UInt2;
         when True =>
            --  PER as an array
            Arr : AST_EVM_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AST_EVM_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Mask Register
   type AST_EVM_Register is record
      --  Read-only. Overflow
      OVF            : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Alarm 0
      ALARM          : AST_EVM_ALARM_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Perioidc 0
      PER            : AST_EVM_PER_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_EVM_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype AST_CALV_SEC_Field is HAL.UInt6;
   subtype AST_CALV_MIN_Field is HAL.UInt6;
   subtype AST_CALV_HOUR_Field is HAL.UInt5;
   subtype AST_CALV_DAY_Field is HAL.UInt5;
   subtype AST_CALV_MONTH_Field is HAL.UInt4;
   subtype AST_CALV_YEAR_Field is HAL.UInt6;

   --  Calendar Value
   type AST_CALV_Register is record
      --  Second
      SEC   : AST_CALV_SEC_Field := 16#0#;
      --  Minute
      MIN   : AST_CALV_MIN_Field := 16#0#;
      --  Hour
      HOUR  : AST_CALV_HOUR_Field := 16#0#;
      --  Day
      DAY   : AST_CALV_DAY_Field := 16#0#;
      --  Month
      MONTH : AST_CALV_MONTH_Field := 16#0#;
      --  Year
      YEAR  : AST_CALV_YEAR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_CALV_Register use record
      SEC   at 0 range 0 .. 5;
      MIN   at 0 range 6 .. 11;
      HOUR  at 0 range 12 .. 16;
      DAY   at 0 range 17 .. 21;
      MONTH at 0 range 22 .. 25;
      YEAR  at 0 range 26 .. 31;
   end record;

   --  Digital Tuner
   type PARAMETER_DTSelect is
     (
      --  Digital tuner off
      Off,
      --  Digital tuner on
      On)
     with Size => 1;
   for PARAMETER_DTSelect use
     (Off => 0,
      On => 1);

   --  Digital Tuner Exponent Writeable
   type PARAMETER_DTEXPWASelect is
     (
      --  Digital tuner exponent is a constant value. Writes to EXP bitfield in
      --  DTR will be discarded.
      PARAMETER_DTEXPWASelect_0,
      --  Digital tuner exponent is chosen by writing to EXP bitfield in DTR
      PARAMETER_DTEXPWASelect_1)
     with Size => 1;
   for PARAMETER_DTEXPWASelect use
     (PARAMETER_DTEXPWASelect_0 => 0,
      PARAMETER_DTEXPWASelect_1 => 1);

   subtype AST_PARAMETER_DTEXPVALUE_Field is HAL.UInt5;

   --  Number of alarm comparators
   type PARAMETER_NUMARSelect is
     (
      --  No alarm comparators
      Zero,
      --  One alarm comparator
      One,
      --  Two alarm comparators
      Two)
     with Size => 2;
   for PARAMETER_NUMARSelect use
     (Zero => 0,
      One => 1,
      Two => 2);

   --  Number of periodic comparators
   type PARAMETER_NUMPIRSelect is
     (
      --  One periodic comparator
      One,
      --  Two periodic comparators
      Two)
     with Size => 1;
   for PARAMETER_NUMPIRSelect use
     (One => 0,
      Two => 1);

   --  Periodic Interval 0 Writeable
   type PARAMETER_PIR0WASelect is
     (
      --  Periodic alarm prescaler 0 tapping is a constant value. Writes to
      --  INSEL bitfield in PIR0 will be discarded.
      PARAMETER_PIR0WASelect_0,
      --  Periodic alarm prescaler 0 tapping is chosen by writing to INSEL
      --  bitfield in PIR0
      PARAMETER_PIR0WASelect_1)
     with Size => 1;
   for PARAMETER_PIR0WASelect use
     (PARAMETER_PIR0WASelect_0 => 0,
      PARAMETER_PIR0WASelect_1 => 1);

   --  Periodic Interval 1 Writeable
   type PARAMETER_PIR1WASelect is
     (
      --  Writes to PIR1 will be discarded
      PARAMETER_PIR1WASelect_0,
      --  PIR1 can be written
      PARAMETER_PIR1WASelect_1)
     with Size => 1;
   for PARAMETER_PIR1WASelect use
     (PARAMETER_PIR1WASelect_0 => 0,
      PARAMETER_PIR1WASelect_1 => 1);

   subtype AST_PARAMETER_PER0VALUE_Field is HAL.UInt5;
   subtype AST_PARAMETER_PER1VALUE_Field is HAL.UInt5;

   --  Parameter Register
   type AST_PARAMETER_Register is record
      --  Read-only. Digital Tuner
      DT             : PARAMETER_DTSelect;
      --  Read-only. Digital Tuner Exponent Writeable
      DTEXPWA        : PARAMETER_DTEXPWASelect;
      --  Read-only. Digital Tuner Exponent Value
      DTEXPVALUE     : AST_PARAMETER_DTEXPVALUE_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Number of alarm comparators
      NUMAR          : PARAMETER_NUMARSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of periodic comparators
      NUMPIR         : PARAMETER_NUMPIRSelect;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. Periodic Interval 0 Writeable
      PIR0WA         : PARAMETER_PIR0WASelect;
      --  Read-only. Periodic Interval 1 Writeable
      PIR1WA         : PARAMETER_PIR1WASelect;
      --  Read-only. Periodic Interval 0 Value
      PER0VALUE      : AST_PARAMETER_PER0VALUE_Field;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. Periodic Interval 1 Value
      PER1VALUE      : AST_PARAMETER_PER1VALUE_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_PARAMETER_Register use record
      DT             at 0 range 0 .. 0;
      DTEXPWA        at 0 range 1 .. 1;
      DTEXPVALUE     at 0 range 2 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NUMAR          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NUMPIR         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PIR0WA         at 0 range 14 .. 14;
      PIR1WA         at 0 range 15 .. 15;
      PER0VALUE      at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PER1VALUE      at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype AST_VERSION_VERSION_Field is HAL.UInt12;
   subtype AST_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type AST_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : AST_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : AST_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Asynchronous Timer
   type AST_Peripheral is record
      --  Control Register
      CR        : aliased AST_CR_Register;
      --  Counter Value
      CV        : aliased HAL.UInt32;
      --  Status Register
      SR        : aliased AST_SR_Register;
      --  Status Clear Register
      SCR       : aliased AST_SCR_Register;
      --  Interrupt Enable Register
      IER       : aliased AST_IER_Register;
      --  Interrupt Disable Register
      IDR       : aliased AST_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased AST_IMR_Register;
      --  Wake Enable Register
      WER       : aliased AST_WER_Register;
      --  Alarm Register 0
      AR0       : aliased HAL.UInt32;
      --  Alarm Register 1
      AR1       : aliased HAL.UInt32;
      --  Periodic Interval Register 0
      PIR0      : aliased PIR_Register;
      --  Periodic Interval Register 1
      PIR1      : aliased PIR_Register;
      --  Clock Control Register
      CLOCK     : aliased AST_CLOCK_Register;
      --  Digital Tuner Register
      DTR       : aliased AST_DTR_Register;
      --  Event Enable Register
      EVE       : aliased AST_EVE_Register;
      --  Event Disable Register
      EVD       : aliased AST_EVD_Register;
      --  Event Mask Register
      EVM       : aliased AST_EVM_Register;
      --  Calendar Value
      CALV      : aliased AST_CALV_Register;
      --  Parameter Register
      PARAMETER : aliased AST_PARAMETER_Register;
      --  Version Register
      VERSION   : aliased AST_VERSION_Register;
   end record
     with Volatile;

   for AST_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      CV        at 16#4# range 0 .. 31;
      SR        at 16#8# range 0 .. 31;
      SCR       at 16#C# range 0 .. 31;
      IER       at 16#10# range 0 .. 31;
      IDR       at 16#14# range 0 .. 31;
      IMR       at 16#18# range 0 .. 31;
      WER       at 16#1C# range 0 .. 31;
      AR0       at 16#20# range 0 .. 31;
      AR1       at 16#24# range 0 .. 31;
      PIR0      at 16#30# range 0 .. 31;
      PIR1      at 16#34# range 0 .. 31;
      CLOCK     at 16#40# range 0 .. 31;
      DTR       at 16#44# range 0 .. 31;
      EVE       at 16#48# range 0 .. 31;
      EVD       at 16#4C# range 0 .. 31;
      EVM       at 16#50# range 0 .. 31;
      CALV      at 16#54# range 0 .. 31;
      PARAMETER at 16#F0# range 0 .. 31;
      VERSION   at 16#FC# range 0 .. 31;
   end record;

   --  Asynchronous Timer
   AST_Periph : aliased AST_Peripheral
     with Import, Address => System'To_Address (16#400F0800#);

end SAM_SVD.AST;
