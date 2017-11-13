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

--  This spec has been automatically generated from ATSAM4LS8B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.CHIPID is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Chip ID Registers
   type CHIPID_Peripheral is record
      --  Chip ID Register
      CIDR : aliased HAL.UInt32;
      --  Chip ID Extension Register
      EXID : aliased HAL.UInt32;
   end record
     with Volatile;

   for CHIPID_Peripheral use record
      CIDR at 16#340# range 0 .. 31;
      EXID at 16#344# range 0 .. 31;
   end record;

   --  Chip ID Registers
   CHIPID_Periph : aliased CHIPID_Peripheral
     with Import, Address => System'To_Address (16#400E0400#);

end SAM_SVD.CHIPID;
