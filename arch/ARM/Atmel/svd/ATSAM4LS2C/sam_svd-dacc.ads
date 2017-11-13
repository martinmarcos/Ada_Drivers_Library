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

--  This spec has been automatically generated from ATSAM4LS2C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DACC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type DACC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DACC_MR_TRGSEL_Field is HAL.UInt3;
   subtype DACC_MR_STARTUP_Field is HAL.UInt8;
   subtype DACC_MR_CLKDIV_Field is HAL.UInt16;

   --  Mode Register
   type DACC_MR_Register is record
      --  Trigger Enable
      TRGEN        : Boolean := False;
      --  Trigger Selection
      TRGSEL       : DACC_MR_TRGSEL_Field := 16#0#;
      --  DAC Enable
      DACEN        : Boolean := False;
      --  Word Transfer
      WORD         : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Startup Time Selection
      STARTUP      : DACC_MR_STARTUP_Field := 16#0#;
      --  Clock Divider for Internal Trigger
      CLKDIV       : DACC_MR_CLKDIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_MR_Register use record
      TRGEN        at 0 range 0 .. 0;
      TRGSEL       at 0 range 1 .. 3;
      DACEN        at 0 range 4 .. 4;
      WORD         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      STARTUP      at 0 range 8 .. 15;
      CLKDIV       at 0 range 16 .. 31;
   end record;

   --  Interrupt Enable Register
   type DACC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IER_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type DACC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IDR_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type DACC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IMR_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type DACC_ISR_Register is record
      --  Read-only. Transmit Ready Interrupt Status
      TXRDY         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ISR_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DACC_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type DACC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : DACC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype DACC_WPSR_WPROTADDR_Field is HAL.UInt8;

   --  Write Protect Status Register
   type DACC_WPSR_Register is record
      --  Read-only. Write Protection Error
      WPROTERR       : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Error Address
      WPROTADDR      : DACC_WPSR_WPROTADDR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPSR_Register use record
      WPROTERR       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPROTADDR      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_VERSION_VERSION_Field is HAL.UInt12;
   subtype DACC_VERSION_VARIANT_Field is HAL.UInt3;

   --  Version Register
   type DACC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : DACC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : DACC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DAC Controller
   type DACC_Peripheral is record
      --  Control Register
      CR      : aliased DACC_CR_Register;
      --  Mode Register
      MR      : aliased DACC_MR_Register;
      --  Conversion Data Register
      CDR     : aliased HAL.UInt32;
      --  Interrupt Enable Register
      IER     : aliased DACC_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased DACC_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased DACC_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased DACC_ISR_Register;
      --  Write Protect Mode Register
      WPMR    : aliased DACC_WPMR_Register;
      --  Write Protect Status Register
      WPSR    : aliased DACC_WPSR_Register;
      --  Version Register
      VERSION : aliased DACC_VERSION_Register;
   end record
     with Volatile;

   for DACC_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      MR      at 16#4# range 0 .. 31;
      CDR     at 16#8# range 0 .. 31;
      IER     at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      IMR     at 16#14# range 0 .. 31;
      ISR     at 16#18# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  DAC Controller
   DACC_Periph : aliased DACC_Peripheral
     with Import, Address => System'To_Address (16#4003C000#);

end SAM_SVD.DACC;
