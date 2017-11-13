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

--  This spec has been automatically generated from ATSAM4LC2C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PEVC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Event Multiplexer
   type CHMX_EVMXSelect is
     (
      --  Event 0
      CHMX_EVMXSelect_0X00,
      --  Event 1
      CHMX_EVMXSelect_0X01)
     with Size => 6;
   for CHMX_EVMXSelect use
     (CHMX_EVMXSelect_0X00 => 0,
      CHMX_EVMXSelect_0X01 => 1);

   --  Software Event Multiplexer
   type CHMX_SMXSelect is
     (
      --  Hardware events
      CHMX_SMXSelect_0,
      --  Software event
      CHMX_SMXSelect_1)
     with Size => 1;
   for CHMX_SMXSelect use
     (CHMX_SMXSelect_0 => 0,
      CHMX_SMXSelect_1 => 1);

   --  Channel Multiplexer
   type PEVC_CHMX_Register is record
      --  Event Multiplexer
      EVMX          : CHMX_EVMXSelect := SAM_SVD.PEVC.CHMX_EVMXSelect_0X00;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Software Event Multiplexer
      SMX           : CHMX_SMXSelect := SAM_SVD.PEVC.CHMX_SMXSelect_0;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_CHMX_Register use record
      EVMX          at 0 range 0 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      SMX           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Channel Multiplexer
   type PEVC_CHMX_Registers is array (0 .. 18) of PEVC_CHMX_Register
     with Volatile;

   --  Event Shaper Enable
   type EVS_ENSelect is
     (
      --  No Action
      EVS_ENSelect_0,
      --  Event Shaper enable
      EVS_ENSelect_1)
     with Size => 1;
   for EVS_ENSelect use
     (EVS_ENSelect_0 => 0,
      EVS_ENSelect_1 => 1);

   --  Input Glitch Filter Rise
   type EVS_IGFRSelect is
     (
      --  No Action
      EVS_IGFRSelect_0,
      --  Input Glitch Filter : a rising edge on event input will raise trigger
      --  output
      EVS_IGFRSelect_1)
     with Size => 1;
   for EVS_IGFRSelect use
     (EVS_IGFRSelect_0 => 0,
      EVS_IGFRSelect_1 => 1);

   --  Input Glitch Filter Fall
   type EVS_IGFFSelect is
     (
      --  No Action
      EVS_IGFFSelect_0,
      --  Input Glitch Filter : a falling edge on event input will raise
      --  trigger output
      EVS_IGFFSelect_1)
     with Size => 1;
   for EVS_IGFFSelect use
     (EVS_IGFFSelect_0 => 0,
      EVS_IGFFSelect_1 => 1);

   --  Event Shaper
   type PEVC_EVS_Register is record
      --  Event Shaper Enable
      EN             : EVS_ENSelect := SAM_SVD.PEVC.EVS_ENSelect_0;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Input Glitch Filter Rise
      IGFR           : EVS_IGFRSelect := SAM_SVD.PEVC.EVS_IGFRSelect_0;
      --  Input Glitch Filter Fall
      IGFF           : EVS_IGFFSelect := SAM_SVD.PEVC.EVS_IGFFSelect_0;
      --  Input Glitch Filter Status
      IGFON          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_EVS_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IGFR           at 0 range 16 .. 16;
      IGFF           at 0 range 17 .. 17;
      IGFON          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Event Shaper
   type PEVC_EVS_Registers is array (0 .. 30) of PEVC_EVS_Register
     with Volatile;

   subtype PEVC_IGFDR_IGFDR_Field is HAL.UInt4;

   --  Input Glitch Filter Divider Register
   type PEVC_IGFDR_Register is record
      --  Input Glitch Filter Divider Register
      IGFDR         : PEVC_IGFDR_IGFDR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_IGFDR_Register use record
      IGFDR         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PEVC_PARAMETER_IGF_COUNT_Field is HAL.UInt8;
   subtype PEVC_PARAMETER_EVS_COUNT_Field is HAL.UInt8;
   subtype PEVC_PARAMETER_EVIN_Field is HAL.UInt8;
   subtype PEVC_PARAMETER_TRIGOUT_Field is HAL.UInt8;

   --  Parameter
   type PEVC_PARAMETER_Register is record
      --  Read-only. Number of Input Glitch Filters
      IGF_COUNT : PEVC_PARAMETER_IGF_COUNT_Field;
      --  Read-only. Number of Event Shapers
      EVS_COUNT : PEVC_PARAMETER_EVS_COUNT_Field;
      --  Read-only. Number of Event Inputs / Generators
      EVIN      : PEVC_PARAMETER_EVIN_Field;
      --  Read-only. Number of Trigger Outputs / Channels / Users
      TRIGOUT   : PEVC_PARAMETER_TRIGOUT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_PARAMETER_Register use record
      IGF_COUNT at 0 range 0 .. 7;
      EVS_COUNT at 0 range 8 .. 15;
      EVIN      at 0 range 16 .. 23;
      TRIGOUT   at 0 range 24 .. 31;
   end record;

   subtype PEVC_VERSION_VERSION_Field is HAL.UInt12;
   subtype PEVC_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version
   type PEVC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : PEVC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : PEVC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral Event Controller
   type PEVC_Peripheral is record
      --  Channel Status Register
      CHSR      : aliased HAL.UInt32;
      --  Channel Enable Register
      CHER      : aliased HAL.UInt32;
      --  Channel Disable Register
      CHDR      : aliased HAL.UInt32;
      --  Software Event
      SEV       : aliased HAL.UInt32;
      --  Channel / User Busy
      BUSY      : aliased HAL.UInt32;
      --  Trigger Interrupt Mask Enable Register
      TRIER     : aliased HAL.UInt32;
      --  Trigger Interrupt Mask Disable Register
      TRIDR     : aliased HAL.UInt32;
      --  Trigger Interrupt Mask Register
      TRIMR     : aliased HAL.UInt32;
      --  Trigger Status Register
      TRSR      : aliased HAL.UInt32;
      --  Trigger Status Clear Register
      TRSCR     : aliased HAL.UInt32;
      --  Overrun Interrupt Mask Enable Register
      OVIER     : aliased HAL.UInt32;
      --  Overrun Interrupt Mask Disable Register
      OVIDR     : aliased HAL.UInt32;
      --  Overrun Interrupt Mask Register
      OVIMR     : aliased HAL.UInt32;
      --  Overrun Status Register
      OVSR      : aliased HAL.UInt32;
      --  Overrun Status Clear Register
      OVSCR     : aliased HAL.UInt32;
      --  Channel Multiplexer
      CHMX      : aliased PEVC_CHMX_Registers;
      --  Event Shaper
      EVS       : aliased PEVC_EVS_Registers;
      --  Input Glitch Filter Divider Register
      IGFDR     : aliased PEVC_IGFDR_Register;
      --  Parameter
      PARAMETER : aliased PEVC_PARAMETER_Register;
      --  Version
      VERSION   : aliased PEVC_VERSION_Register;
   end record
     with Volatile;

   for PEVC_Peripheral use record
      CHSR      at 16#0# range 0 .. 31;
      CHER      at 16#4# range 0 .. 31;
      CHDR      at 16#8# range 0 .. 31;
      SEV       at 16#10# range 0 .. 31;
      BUSY      at 16#14# range 0 .. 31;
      TRIER     at 16#20# range 0 .. 31;
      TRIDR     at 16#24# range 0 .. 31;
      TRIMR     at 16#28# range 0 .. 31;
      TRSR      at 16#30# range 0 .. 31;
      TRSCR     at 16#34# range 0 .. 31;
      OVIER     at 16#40# range 0 .. 31;
      OVIDR     at 16#44# range 0 .. 31;
      OVIMR     at 16#48# range 0 .. 31;
      OVSR      at 16#50# range 0 .. 31;
      OVSCR     at 16#54# range 0 .. 31;
      CHMX      at 16#100# range 0 .. 607;
      EVS       at 16#200# range 0 .. 991;
      IGFDR     at 16#300# range 0 .. 31;
      PARAMETER at 16#3F8# range 0 .. 31;
      VERSION   at 16#3FC# range 0 .. 31;
   end record;

   --  Peripheral Event Controller
   PEVC_Periph : aliased PEVC_Peripheral
     with Import, Address => System'To_Address (16#400A6000#);

end SAM_SVD.PEVC;
