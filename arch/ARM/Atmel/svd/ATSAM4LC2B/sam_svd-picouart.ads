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

package SAM_SVD.PICOUART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type PICOUART_CR_Register is record
      --  Write-only. Enable
      EN            : Boolean := False;
      --  Write-only. Disable
      DIS           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_CR_Register use record
      EN            at 0 range 0 .. 0;
      DIS           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PICOUART_CFG_SOURCE_Field is HAL.UInt2;
   subtype PICOUART_CFG_MATCH_Field is HAL.UInt8;

   --  Configuration Register
   type PICOUART_CFG_Register is record
      --  Source Enable Mode
      SOURCE         : PICOUART_CFG_SOURCE_Field := 16#0#;
      --  Action to perform
      ACTION         : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Data Match
      MATCH          : PICOUART_CFG_MATCH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_CFG_Register use record
      SOURCE         at 0 range 0 .. 1;
      ACTION         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      MATCH          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Status Register
   type PICOUART_SR_Register is record
      --  Read-only. Enable Interrupt Status
      EN            : Boolean;
      --  Read-only. Data Ready Interrupt Status
      DRDY          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_SR_Register use record
      EN            at 0 range 0 .. 0;
      DRDY          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PICOUART_VERSION_VERSION_Field is HAL.UInt12;
   subtype PICOUART_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type PICOUART_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : PICOUART_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : PICOUART_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pico UART
   type PICOUART_Peripheral is record
      --  Control Register
      CR      : aliased PICOUART_CR_Register;
      --  Configuration Register
      CFG     : aliased PICOUART_CFG_Register;
      --  Status Register
      SR      : aliased PICOUART_SR_Register;
      --  Receive Holding Register
      RHR     : aliased HAL.UInt32;
      --  Version Register
      VERSION : aliased PICOUART_VERSION_Register;
   end record
     with Volatile;

   for PICOUART_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      CFG     at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      RHR     at 16#C# range 0 .. 31;
      VERSION at 16#20# range 0 .. 31;
   end record;

   --  Pico UART
   PICOUART_Periph : aliased PICOUART_Peripheral
     with Import, Address => System'To_Address (16#400F1400#);

end SAM_SVD.PICOUART;
