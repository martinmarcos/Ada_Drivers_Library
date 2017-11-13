--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2017 Atmel Corporation,
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

--  This spec has been automatically generated from ATSAMC21J18AU.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DIVAS_IOBUS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control
   type DIVAS_CTRLA_Register is record
      --  Signed
      SIGNED       : Boolean := False;
      --  Disable Leading Zero Optimization
      DLZ          : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DIVAS_CTRLA_Register use record
      SIGNED       at 0 range 0 .. 0;
      DLZ          at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Status
   type DIVAS_STATUS_Register is record
      --  Read-only. DIVAS Accelerator Busy
      BUSY         : Boolean := False;
      --  Writing a one to this bit clears DBZ to zero
      DBZ          : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DIVAS_STATUS_Register use record
      BUSY         at 0 range 0 .. 0;
      DBZ          at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Divide and Square Root Accelerator (IOBUS)
   type DIVAS_IOBUS_Peripheral is record
      --  Control
      CTRLA    : aliased DIVAS_CTRLA_Register;
      --  Status
      STATUS   : aliased DIVAS_STATUS_Register;
      --  Dividend
      DIVIDEND : aliased HAL.UInt32;
      --  Divisor
      DIVISOR  : aliased HAL.UInt32;
      --  Result
      RESULT   : aliased HAL.UInt32;
      --  Remainder
      REM_k    : aliased HAL.UInt32;
      --  Square Root Input
      SQRNUM   : aliased HAL.UInt32;
   end record
     with Volatile;

   for DIVAS_IOBUS_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      STATUS   at 16#4# range 0 .. 7;
      DIVIDEND at 16#8# range 0 .. 31;
      DIVISOR  at 16#C# range 0 .. 31;
      RESULT   at 16#10# range 0 .. 31;
      REM_k    at 16#14# range 0 .. 31;
      SQRNUM   at 16#18# range 0 .. 31;
   end record;

   --  Divide and Square Root Accelerator (IOBUS)
   DIVAS_IOBUS_Periph : aliased DIVAS_IOBUS_Peripheral
     with Import, Address => System'To_Address (16#60000200#);

end SAM_SVD.DIVAS_IOBUS;
