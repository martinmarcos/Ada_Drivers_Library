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

--  This spec has been automatically generated from ATSAMHA1G16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.LINCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LINCTRL_CTRL_WOCFG_Field is HAL.UInt2;

   --  control register
   type LINCTRL_CTRL_Register is record
      --  wkout observation select
      WOCFG         : LINCTRL_CTRL_WOCFG_Field := 16#0#;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LINCTRL_CTRL_Register use record
      WOCFG         at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LIN control module
   type LINCTRL_Peripheral is record
      --  control register
      CTRL : aliased LINCTRL_CTRL_Register;
   end record
     with Volatile;

   for LINCTRL_Peripheral use record
      CTRL at 0 range 0 .. 15;
   end record;

   --  LIN control module
   LINCTRL_Periph : aliased LINCTRL_Peripheral
     with Import, Address => System'To_Address (16#42005800#);

end SAM_SVD.LINCTRL;
