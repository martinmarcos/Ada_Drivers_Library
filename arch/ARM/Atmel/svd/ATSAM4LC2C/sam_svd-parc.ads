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

package SAM_SVD.PARC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PARC_CFG_DSIZE_Field is HAL.UInt2;
   subtype PARC_CFG_SMODE_Field is HAL.UInt2;

   --  Configuration Register
   type PARC_CFG_Register is record
      --  Data Size
      DSIZE         : PARC_CFG_DSIZE_Field := 16#0#;
      --  Sampling Mode
      SMODE         : PARC_CFG_SMODE_Field := 16#0#;
      --  Events Mode
      EMODE         : Boolean := False;
      --  Sampling Edge Select
      EDGE          : Boolean := False;
      --  Half Capture
      HALF          : Boolean := False;
      --  Odd Capture
      ODD           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_CFG_Register use record
      DSIZE         at 0 range 0 .. 1;
      SMODE         at 0 range 2 .. 3;
      EMODE         at 0 range 4 .. 4;
      EDGE          at 0 range 5 .. 5;
      HALF          at 0 range 6 .. 6;
      ODD           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Control Register
   type PARC_CR_Register is record
      --  Enable
      EN            : Boolean := False;
      --  Write-only. Disable
      DIS           : Boolean := False;
      --  Write-only. Start Capture
      START         : Boolean := False;
      --  Stop Capture
      STOP          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_CR_Register use record
      EN            at 0 range 0 .. 0;
      DIS           at 0 range 1 .. 1;
      START         at 0 range 2 .. 2;
      STOP          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Enable Register
   type PARC_IER_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Data Ready Interrupt Enable
      DRDY          : Boolean := False;
      --  Write-only. Overrun Interrupt Enable
      OVR           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_IER_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Disable Register
   type PARC_IDR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Data Ready Interrupt Disable
      DRDY          : Boolean := False;
      --  Write-only. Overrun Interrupt Disable
      OVR           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_IDR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Mask Register
   type PARC_IMR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. Data Ready Interrupt Mask
      DRDY          : Boolean;
      --  Read-only. Overrun Interrupt Mask
      OVR           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_IMR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Status Register
   type PARC_SR_Register is record
      --  Read-only. Enable Status
      EN            : Boolean;
      --  Read-only. Capture Status
      CS            : Boolean;
      --  Read-only. Data Ready Interrupt Status
      DRDY          : Boolean;
      --  Read-only. Overrun Interrupt Status
      OVR           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_SR_Register use record
      EN            at 0 range 0 .. 0;
      CS            at 0 range 1 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Status Clear Register
   type PARC_ICR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Data Ready Interrupt Status Clear
      DRDY          : Boolean := False;
      --  Write-only. Overrun Interrupt Status Clear
      OVR           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PARC_VERSION_VERSION_Field is HAL.UInt12;
   subtype PARC_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type PARC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : PARC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : PARC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Capture
   type PARC_Peripheral is record
      --  Configuration Register
      CFG     : aliased PARC_CFG_Register;
      --  Control Register
      CR      : aliased PARC_CR_Register;
      --  Interrupt Enable Register
      IER     : aliased PARC_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased PARC_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased PARC_IMR_Register;
      --  Status Register
      SR      : aliased PARC_SR_Register;
      --  Interrupt Status Clear Register
      ICR     : aliased PARC_ICR_Register;
      --  Receive Holding Register
      RHR     : aliased HAL.UInt32;
      --  Version Register
      VERSION : aliased PARC_VERSION_Register;
   end record
     with Volatile;

   for PARC_Peripheral use record
      CFG     at 16#0# range 0 .. 31;
      CR      at 16#4# range 0 .. 31;
      IER     at 16#8# range 0 .. 31;
      IDR     at 16#C# range 0 .. 31;
      IMR     at 16#10# range 0 .. 31;
      SR      at 16#14# range 0 .. 31;
      ICR     at 16#18# range 0 .. 31;
      RHR     at 16#1C# range 0 .. 31;
      VERSION at 16#20# range 0 .. 31;
   end record;

   --  Parallel Capture
   PARC_Periph : aliased PARC_Peripheral
     with Import, Address => System'To_Address (16#4006C000#);

end SAM_SVD.PARC;
