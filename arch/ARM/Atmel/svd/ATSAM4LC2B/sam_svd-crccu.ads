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

package SAM_SVD.CRCCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CRCCU_DSCR_DSCR_Field is HAL.UInt23;

   --  Descriptor Base Register
   type CRCCU_DSCR_Register is record
      --  unspecified
      Reserved_0_8 : HAL.UInt9 := 16#0#;
      --  Description Base Address
      DSCR         : CRCCU_DSCR_DSCR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DSCR_Register use record
      Reserved_0_8 at 0 range 0 .. 8;
      DSCR         at 0 range 9 .. 31;
   end record;

   --  DMA Enable Register
   type CRCCU_DMAEN_Register is record
      --  Write-only. DMA Enable
      DMAEN         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAEN_Register use record
      DMAEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA Disable Register
   type CRCCU_DMADIS_Register is record
      --  Write-only. DMA Disable
      DMADIS        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMADIS_Register use record
      DMADIS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA Status Register
   type CRCCU_DMASR_Register is record
      --  Read-only. DMA Channel Status
      DMASR         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMASR_Register use record
      DMASR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA Interrupt Enable Register
   type CRCCU_DMAIER_Register is record
      --  Write-only. DMA Interrupt Enable
      DMAIER        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAIER_Register use record
      DMAIER        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA Interrupt Disable Register
   type CRCCU_DMAIDR_Register is record
      --  Write-only. DMA Interrupt Disable
      DMAIDR        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAIDR_Register use record
      DMAIDR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA Interrupt Mask Register
   type CRCCU_DMAIMR_Register is record
      --  Write-only. DMA Interrupt Mask
      DMAIMR        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAIMR_Register use record
      DMAIMR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA Interrupt Status Register
   type CRCCU_DMAISR_Register is record
      --  Read-only. DMA Interrupt Status
      DMAISR        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAISR_Register use record
      DMAISR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Control Register
   type CRCCU_CR_Register is record
      --  Write-only. Reset CRCComputation
      RESET         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_CR_Register use record
      RESET         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Polynomial Type
   type MR_PTYPESelect is
     (
      Ccitt8023,
      Castagnoli,
      Ccitt16)
     with Size => 2;
   for MR_PTYPESelect use
     (Ccitt8023 => 0,
      Castagnoli => 1,
      Ccitt16 => 2);

   subtype CRCCU_MR_DIVIDER_Field is HAL.UInt4;

   --  Mode Register
   type CRCCU_MR_Register is record
      --  CRC Computation Enable
      ENABLE        : Boolean := False;
      --  CRC Compare
      COMPARE       : Boolean := False;
      --  Polynomial Type
      PTYPE         : MR_PTYPESelect := SAM_SVD.CRCCU.Ccitt8023;
      --  Bandwidth Divider
      DIVIDER       : CRCCU_MR_DIVIDER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_MR_Register use record
      ENABLE        at 0 range 0 .. 0;
      COMPARE       at 0 range 1 .. 1;
      PTYPE         at 0 range 2 .. 3;
      DIVIDER       at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type CRCCU_IER_Register is record
      --  Write-only. CRC Error Interrupt Enable
      ERRIER        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IER_Register use record
      ERRIER        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type CRCCU_IDR_Register is record
      --  Write-only. CRC Error Interrupt Disable
      ERRIDR        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IDR_Register use record
      ERRIDR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type CRCCU_IMR_Register is record
      --  Read-only. CRC Error Interrupt Mask
      ERRIMR        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IMR_Register use record
      ERRIMR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type CRCCU_ISR_Register is record
      --  Read-only. CRC Error Interrupt Status
      ERRISR        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_ISR_Register use record
      ERRISR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_VERSION_VERSION_Field is HAL.UInt12;
   subtype CRCCU_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type CRCCU_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : CRCCU_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : CRCCU_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRC Calculation Unit
   type CRCCU_Peripheral is record
      --  Descriptor Base Register
      DSCR    : aliased CRCCU_DSCR_Register;
      --  DMA Enable Register
      DMAEN   : aliased CRCCU_DMAEN_Register;
      --  DMA Disable Register
      DMADIS  : aliased CRCCU_DMADIS_Register;
      --  DMA Status Register
      DMASR   : aliased CRCCU_DMASR_Register;
      --  DMA Interrupt Enable Register
      DMAIER  : aliased CRCCU_DMAIER_Register;
      --  DMA Interrupt Disable Register
      DMAIDR  : aliased CRCCU_DMAIDR_Register;
      --  DMA Interrupt Mask Register
      DMAIMR  : aliased CRCCU_DMAIMR_Register;
      --  DMA Interrupt Status Register
      DMAISR  : aliased CRCCU_DMAISR_Register;
      --  Control Register
      CR      : aliased CRCCU_CR_Register;
      --  Mode Register
      MR      : aliased CRCCU_MR_Register;
      --  Status Register
      SR      : aliased HAL.UInt32;
      --  Interrupt Enable Register
      IER     : aliased CRCCU_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased CRCCU_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased CRCCU_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased CRCCU_ISR_Register;
      --  Version Register
      VERSION : aliased CRCCU_VERSION_Register;
   end record
     with Volatile;

   for CRCCU_Peripheral use record
      DSCR    at 16#0# range 0 .. 31;
      DMAEN   at 16#8# range 0 .. 31;
      DMADIS  at 16#C# range 0 .. 31;
      DMASR   at 16#10# range 0 .. 31;
      DMAIER  at 16#14# range 0 .. 31;
      DMAIDR  at 16#18# range 0 .. 31;
      DMAIMR  at 16#1C# range 0 .. 31;
      DMAISR  at 16#20# range 0 .. 31;
      CR      at 16#34# range 0 .. 31;
      MR      at 16#38# range 0 .. 31;
      SR      at 16#3C# range 0 .. 31;
      IER     at 16#40# range 0 .. 31;
      IDR     at 16#44# range 0 .. 31;
      IMR     at 16#48# range 0 .. 31;
      ISR     at 16#4C# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  CRC Calculation Unit
   CRCCU_Periph : aliased CRCCU_Peripheral
     with Import, Address => System'To_Address (16#400A4000#);

end SAM_SVD.CRCCU;
