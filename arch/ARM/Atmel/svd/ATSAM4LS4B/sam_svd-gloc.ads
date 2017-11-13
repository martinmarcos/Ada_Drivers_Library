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

package SAM_SVD.GLOC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_AEN_Field is HAL.UInt4;

   --  Control Register
   type CR_Register is record
      --  Input mask
      AEN           : CR_AEN_Field := 16#0#;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  Filter enable
      FILTEN        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      AEN           at 0 range 0 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      FILTEN        at 0 range 31 .. 31;
   end record;

   subtype TRUTH_TRUTH_Field is HAL.UInt16;

   --  Truth Register
   type TRUTH_Register is record
      --  Truth
      TRUTH          : TRUTH_TRUTH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRUTH_Register use record
      TRUTH          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GLOC_PARAMETER_LUTS_Field is HAL.UInt8;

   --  Parameter Register
   type GLOC_PARAMETER_Register is record
      --  Read-only. LUTs
      LUTS          : GLOC_PARAMETER_LUTS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOC_PARAMETER_Register use record
      LUTS          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype GLOC_VERSION_VERSION_Field is HAL.UInt12;
   subtype GLOC_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type GLOC_VERSION_Register is record
      --  Read-only. Version
      VERSION        : GLOC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant
      VARIANT        : GLOC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Glue Logic Controller
   type GLOC_Peripheral is record
      --  Control Register
      CR0       : aliased CR_Register;
      --  Truth Register
      TRUTH0    : aliased TRUTH_Register;
      --  Control Register
      CR1       : aliased CR_Register;
      --  Truth Register
      TRUTH1    : aliased TRUTH_Register;
      --  Parameter Register
      PARAMETER : aliased GLOC_PARAMETER_Register;
      --  Version Register
      VERSION   : aliased GLOC_VERSION_Register;
   end record
     with Volatile;

   for GLOC_Peripheral use record
      CR0       at 16#0# range 0 .. 31;
      TRUTH0    at 16#4# range 0 .. 31;
      CR1       at 16#8# range 0 .. 31;
      TRUTH1    at 16#C# range 0 .. 31;
      PARAMETER at 16#38# range 0 .. 31;
      VERSION   at 16#3C# range 0 .. 31;
   end record;

   --  Glue Logic Controller
   GLOC_Periph : aliased GLOC_Peripheral
     with Import, Address => System'To_Address (16#40060000#);

end SAM_SVD.GLOC;
