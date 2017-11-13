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

--  This spec has been automatically generated from ATSAMC20E15A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.RSTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Reset Cause
   type RSTC_RCAUSE_Register is record
      --  Read-only. Power On Reset
      POR          : Boolean;
      --  Read-only. Brown Out CORE Detector Reset
      BODCORE      : Boolean;
      --  Read-only. Brown Out VDD Detector Reset
      BODVDD       : Boolean;
      --  unspecified
      Reserved_3_3 : HAL.Bit;
      --  Read-only. External Reset
      EXT          : Boolean;
      --  Read-only. Watchdog Reset
      WDT          : Boolean;
      --  Read-only. System Reset Request
      SYST         : Boolean;
      --  unspecified
      Reserved_7_7 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RSTC_RCAUSE_Register use record
      POR          at 0 range 0 .. 0;
      BODCORE      at 0 range 1 .. 1;
      BODVDD       at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      EXT          at 0 range 4 .. 4;
      WDT          at 0 range 5 .. 5;
      SYST         at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Controller
   type RSTC_Peripheral is record
      --  Reset Cause
      RCAUSE : aliased RSTC_RCAUSE_Register;
   end record
     with Volatile;

   for RSTC_Peripheral use record
      RCAUSE at 0 range 0 .. 7;
   end record;

   --  Reset Controller
   RSTC_Periph : aliased RSTC_Peripheral
     with Import, Address => System'To_Address (16#40000C00#);

end SAM_SVD.RSTC;
