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

--  This spec has been automatically generated from ATSAM4LS4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SMAP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type SMAP_CR_Register is record
      --  Write-only. Enable
      EN            : Boolean := False;
      --  Write-only. Disable
      DIS           : Boolean := False;
      --  Write-only. User Page Read
      CRC           : Boolean := False;
      --  Write-only. Flash Supplementary Page Read
      FSPR          : Boolean := False;
      --  Write-only. Chip Erase
      CE            : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_CR_Register use record
      EN            at 0 range 0 .. 0;
      DIS           at 0 range 1 .. 1;
      CRC           at 0 range 2 .. 2;
      FSPR          at 0 range 3 .. 3;
      CE            at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SMAP_SR_STATE_Field is HAL.UInt3;

   --  Status Register
   type SMAP_SR_Register is record
      --  Read-only. Operation done
      DONE           : Boolean;
      --  Read-only. Hold Core reset
      HCR            : Boolean;
      --  Read-only. Bus error
      BERR           : Boolean;
      --  Read-only. Failure
      FAIL           : Boolean;
      --  Read-only. Lock
      LCK            : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Enabled
      EN             : Boolean;
      --  Read-only. Protected
      PROT           : Boolean;
      --  Read-only. Debugger Present
      DBGP           : Boolean;
      --  unspecified
      Reserved_11_23 : HAL.UInt13;
      --  Read-only. State
      STATE          : SMAP_SR_STATE_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_SR_Register use record
      DONE           at 0 range 0 .. 0;
      HCR            at 0 range 1 .. 1;
      BERR           at 0 range 2 .. 2;
      FAIL           at 0 range 3 .. 3;
      LCK            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      EN             at 0 range 8 .. 8;
      PROT           at 0 range 9 .. 9;
      DBGP           at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      STATE          at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Status Clear Register
   type SMAP_SCR_Register is record
      --  Write-only. Done
      DONE          : Boolean := False;
      --  Write-only. Hold Core Register
      HCR           : Boolean := False;
      --  Write-only. Bus error
      BERR          : Boolean := False;
      --  Write-only. Failure
      FAIL          : Boolean := False;
      --  Write-only. Lock error
      LCK           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_SCR_Register use record
      DONE          at 0 range 0 .. 0;
      HCR           at 0 range 1 .. 1;
      BERR          at 0 range 2 .. 2;
      FAIL          at 0 range 3 .. 3;
      LCK           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SMAP_ADDR_ADDR_Field is HAL.UInt30;

   --  Address Register
   type SMAP_ADDR_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Address Value
      ADDR         : SMAP_ADDR_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_ADDR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   subtype SMAP_LENGTH_LENGTH_Field is HAL.UInt30;

   --  Length Register
   type SMAP_LENGTH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Length Register
      LENGTH       : SMAP_LENGTH_LENGTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_LENGTH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      LENGTH       at 0 range 2 .. 31;
   end record;

   subtype SMAP_VERSION_VERSION_Field is HAL.UInt12;
   subtype SMAP_VERSION_VARIANT_Field is HAL.UInt4;

   --  VERSION register
   type SMAP_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : SMAP_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : SMAP_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SMAP_CIDR_VERSION_Field is HAL.UInt5;
   subtype SMAP_CIDR_EPROC_Field is HAL.UInt3;
   --  SMAP_CIDR_NVPSIZ array element
   subtype SMAP_CIDR_NVPSIZ_Element is HAL.UInt4;

   --  SMAP_CIDR_NVPSIZ array
   type SMAP_CIDR_NVPSIZ_Field_Array is array (1 .. 2)
     of SMAP_CIDR_NVPSIZ_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for SMAP_CIDR_NVPSIZ
   type SMAP_CIDR_NVPSIZ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NVPSIZ as a value
            Val : HAL.UInt8;
         when True =>
            --  NVPSIZ as an array
            Arr : SMAP_CIDR_NVPSIZ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SMAP_CIDR_NVPSIZ_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype SMAP_CIDR_SRAMSIZ_Field is HAL.UInt5;
   subtype SMAP_CIDR_ARCH_Field is HAL.UInt7;
   subtype SMAP_CIDR_NVPTYP_Field is HAL.UInt3;

   --  Chip ID Register
   type SMAP_CIDR_Register is record
      --  Read-only. Version of the Device
      VERSION : SMAP_CIDR_VERSION_Field;
      --  Read-only. Embedded Processor
      EPROC   : SMAP_CIDR_EPROC_Field;
      --  Read-only. Nonvolatile Program Memory Size
      NVPSIZ  : SMAP_CIDR_NVPSIZ_Field;
      --  Read-only. Internal SRAM Size
      SRAMSIZ : SMAP_CIDR_SRAMSIZ_Field;
      --  Read-only. Architecture Identifier
      ARCH    : SMAP_CIDR_ARCH_Field;
      --  Read-only. Nonvolatile Program Memory Type
      NVPTYP  : SMAP_CIDR_NVPTYP_Field;
      --  Read-only. Extension Flag
      EXT     : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_CIDR_Register use record
      VERSION at 0 range 0 .. 4;
      EPROC   at 0 range 5 .. 7;
      NVPSIZ  at 0 range 8 .. 15;
      SRAMSIZ at 0 range 16 .. 20;
      ARCH    at 0 range 21 .. 27;
      NVPTYP  at 0 range 28 .. 30;
      EXT     at 0 range 31 .. 31;
   end record;

   subtype SMAP_IDR_APIDV_Field is HAL.UInt4;
   subtype SMAP_IDR_APID_Field is HAL.UInt4;
   subtype SMAP_IDR_IC_Field is HAL.UInt7;
   subtype SMAP_IDR_CC_Field is HAL.UInt4;
   subtype SMAP_IDR_REVISION_Field is HAL.UInt4;

   --  AP Identification register
   type SMAP_IDR_Register is record
      --  Read-only. AP Identification Variant
      APIDV         : SMAP_IDR_APIDV_Field;
      --  Read-only. AP Identification
      APID          : SMAP_IDR_APID_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
      --  Read-only. Class
      CLSS          : Boolean;
      --  Read-only. JEP-106 Identity Code
      IC            : SMAP_IDR_IC_Field;
      --  Read-only. JEP-106 Continuation Code
      CC            : SMAP_IDR_CC_Field;
      --  Read-only. Revision
      REVISION      : SMAP_IDR_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_IDR_Register use record
      APIDV         at 0 range 0 .. 3;
      APID          at 0 range 4 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      CLSS          at 0 range 16 .. 16;
      IC            at 0 range 17 .. 23;
      CC            at 0 range 24 .. 27;
      REVISION      at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Manager Access Port
   type SMAP_Peripheral is record
      --  Control Register
      CR      : aliased SMAP_CR_Register;
      --  Status Register
      SR      : aliased SMAP_SR_Register;
      --  Status Clear Register
      SCR     : aliased SMAP_SCR_Register;
      --  Address Register
      ADDR    : aliased SMAP_ADDR_Register;
      --  Length Register
      LENGTH  : aliased SMAP_LENGTH_Register;
      --  Data Register
      DATA    : aliased HAL.UInt32;
      --  VERSION register
      VERSION : aliased SMAP_VERSION_Register;
      --  Chip ID Register
      CIDR    : aliased SMAP_CIDR_Register;
      --  Chip ID Extension Register
      EXID    : aliased HAL.UInt32;
      --  AP Identification register
      IDR     : aliased SMAP_IDR_Register;
   end record
     with Volatile;

   for SMAP_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      SR      at 16#4# range 0 .. 31;
      SCR     at 16#8# range 0 .. 31;
      ADDR    at 16#C# range 0 .. 31;
      LENGTH  at 16#10# range 0 .. 31;
      DATA    at 16#14# range 0 .. 31;
      VERSION at 16#28# range 0 .. 31;
      CIDR    at 16#F0# range 0 .. 31;
      EXID    at 16#F4# range 0 .. 31;
      IDR     at 16#FC# range 0 .. 31;
   end record;

   --  System Manager Access Port
   SMAP_Periph : aliased SMAP_Peripheral
     with Import, Address => System'To_Address (16#400A3000#);

end SAM_SVD.SMAP;
