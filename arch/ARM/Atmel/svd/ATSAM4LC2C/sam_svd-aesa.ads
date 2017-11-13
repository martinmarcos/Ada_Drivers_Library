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

package SAM_SVD.AESA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type AESA_CTRL_Register is record
      --  Enable Module
      ENABLE        : Boolean := False;
      --  Write-only. Decryption Key Generate
      DKEYGEN       : Boolean := False;
      --  Write-only. New Message
      NEWMSG        : Boolean := False;
      --  unspecified
      Reserved_3_7  : HAL.UInt5 := 16#0#;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      DKEYGEN       at 0 range 1 .. 1;
      NEWMSG        at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      SWRST         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype AESA_MODE_KEYSIZE_Field is HAL.UInt2;
   subtype AESA_MODE_OPMODE_Field is HAL.UInt3;
   subtype AESA_MODE_CFBS_Field is HAL.UInt3;
   subtype AESA_MODE_CTYPE_Field is HAL.UInt4;

   --  Mode Register
   type AESA_MODE_Register is record
      --  Encryption
      ENCRYPT        : Boolean := False;
      --  Key Size
      KEYSIZE        : AESA_MODE_KEYSIZE_Field := 16#0#;
      --  DMA Mode
      DMA            : Boolean := False;
      --  Confidentiality Mode of Operation
      OPMODE         : AESA_MODE_OPMODE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Cipher Feedback Data Segment Size
      CFBS           : AESA_MODE_CFBS_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Countermeasure Type
      CTYPE          : AESA_MODE_CTYPE_Field := 16#F#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_MODE_Register use record
      ENCRYPT        at 0 range 0 .. 0;
      KEYSIZE        at 0 range 1 .. 2;
      DMA            at 0 range 3 .. 3;
      OPMODE         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CFBS           at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CTYPE          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype AESA_DATABUFPTR_IDATAW_Field is HAL.UInt2;
   subtype AESA_DATABUFPTR_ODATAW_Field is HAL.UInt2;

   --  Data Buffer Pointer Register
   type AESA_DATABUFPTR_Register is record
      --  Input Data Word
      IDATAW        : AESA_DATABUFPTR_IDATAW_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Output Data Word
      ODATAW        : AESA_DATABUFPTR_ODATAW_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_DATABUFPTR_Register use record
      IDATAW        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      ODATAW        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Status Register
   type AESA_SR_Register is record
      --  Read-only. Output Data Ready
      ODATARDY       : Boolean;
      --  unspecified
      Reserved_1_15  : HAL.UInt15;
      --  Read-only. Input Buffer Ready
      IBUFRDY        : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_SR_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Enable Register
   type AESA_IER_Register is record
      --  Write-only. Output Data Ready Interrupt Enable
      ODATARDY       : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Write-only. Input Buffer Ready Interrupt Enable
      IBUFRDY        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_IER_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Disable Register
   type AESA_IDR_Register is record
      --  Write-only. Output Data Ready Interrupt Disable
      ODATARDY       : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Write-only. Input Buffer Ready Interrupt Disable
      IBUFRDY        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_IDR_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Mask Register
   type AESA_IMR_Register is record
      --  Read-only. Output Data Ready Interrupt Mask
      ODATARDY       : Boolean;
      --  unspecified
      Reserved_1_15  : HAL.UInt15;
      --  Read-only. Input Buffer Ready Interrupt Mask
      IBUFRDY        : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_IMR_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Key Register

   --  Key Register
   type AESA_KEY_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  Initialization Vector Register

   --  Initialization Vector Register
   type AESA_INITVECT_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   subtype AESA_PARAMETER_KEYSIZE_Field is HAL.UInt2;
   subtype AESA_PARAMETER_OPMODE_Field is HAL.UInt3;

   --  Parameter Register
   type AESA_PARAMETER_Register is record
      --  Read-only. Maximum Key Size
      KEYSIZE       : AESA_PARAMETER_KEYSIZE_Field;
      --  Read-only. Maximum Number of Confidentiality Modes of Operation
      OPMODE        : AESA_PARAMETER_OPMODE_Field;
      --  unspecified
      Reserved_5_7  : HAL.UInt3;
      --  Read-only. Countermeasures
      CTRMEAS       : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_PARAMETER_Register use record
      KEYSIZE       at 0 range 0 .. 1;
      OPMODE        at 0 range 2 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      CTRMEAS       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype AESA_VERSION_VERSION_Field is HAL.UInt12;
   subtype AESA_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type AESA_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : AESA_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : AESA_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced Encryption Standard
   type AESA_Peripheral is record
      --  Control Register
      CTRL       : aliased AESA_CTRL_Register;
      --  Mode Register
      MODE       : aliased AESA_MODE_Register;
      --  Data Buffer Pointer Register
      DATABUFPTR : aliased AESA_DATABUFPTR_Register;
      --  Status Register
      SR         : aliased AESA_SR_Register;
      --  Interrupt Enable Register
      IER        : aliased AESA_IER_Register;
      --  Interrupt Disable Register
      IDR        : aliased AESA_IDR_Register;
      --  Interrupt Mask Register
      IMR        : aliased AESA_IMR_Register;
      --  Key Register
      KEY        : aliased AESA_KEY_Registers;
      --  Initialization Vector Register
      INITVECT   : aliased AESA_INITVECT_Registers;
      --  Input Data Register
      IDATA      : aliased HAL.UInt32;
      --  Output Data Register
      ODATA      : aliased HAL.UInt32;
      --  DRNG Seed Register
      DRNGSEED   : aliased HAL.UInt32;
      --  Parameter Register
      PARAMETER  : aliased AESA_PARAMETER_Register;
      --  Version Register
      VERSION    : aliased AESA_VERSION_Register;
   end record
     with Volatile;

   for AESA_Peripheral use record
      CTRL       at 16#0# range 0 .. 31;
      MODE       at 16#4# range 0 .. 31;
      DATABUFPTR at 16#8# range 0 .. 31;
      SR         at 16#C# range 0 .. 31;
      IER        at 16#10# range 0 .. 31;
      IDR        at 16#14# range 0 .. 31;
      IMR        at 16#18# range 0 .. 31;
      KEY        at 16#20# range 0 .. 255;
      INITVECT   at 16#40# range 0 .. 127;
      IDATA      at 16#50# range 0 .. 31;
      ODATA      at 16#60# range 0 .. 31;
      DRNGSEED   at 16#70# range 0 .. 31;
      PARAMETER  at 16#F8# range 0 .. 31;
      VERSION    at 16#FC# range 0 .. 31;
   end record;

   --  Advanced Encryption Standard
   AESA_Periph : aliased AESA_Peripheral
     with Import, Address => System'To_Address (16#400B0000#);

end SAM_SVD.AESA;
