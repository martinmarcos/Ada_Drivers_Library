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

--  This spec has been automatically generated from ATSAMR21E19A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.RFCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RFCTRL_FECFG_F0CFG_Field is HAL.UInt2;
   subtype RFCTRL_FECFG_F1CFG_Field is HAL.UInt2;
   subtype RFCTRL_FECFG_F2CFG_Field is HAL.UInt2;
   subtype RFCTRL_FECFG_F3CFG_Field is HAL.UInt2;
   subtype RFCTRL_FECFG_F4CFG_Field is HAL.UInt2;
   subtype RFCTRL_FECFG_F5CFG_Field is HAL.UInt2;

   --  Front-end control bus configuration
   type RFCTRL_FECFG_Register is record
      --  Front-end control signal 0 configuration
      F0CFG          : RFCTRL_FECFG_F0CFG_Field := 16#0#;
      --  Front-end control signal 1 configuration
      F1CFG          : RFCTRL_FECFG_F1CFG_Field := 16#0#;
      --  Front-end control signal 2 configuration
      F2CFG          : RFCTRL_FECFG_F2CFG_Field := 16#0#;
      --  Front-end control signal 3 configuration
      F3CFG          : RFCTRL_FECFG_F3CFG_Field := 16#0#;
      --  Front-end control signal 4 configuration
      F4CFG          : RFCTRL_FECFG_F4CFG_Field := 16#0#;
      --  Front-end control signal 5 configuration
      F5CFG          : RFCTRL_FECFG_F5CFG_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RFCTRL_FECFG_Register use record
      F0CFG          at 0 range 0 .. 1;
      F1CFG          at 0 range 2 .. 3;
      F2CFG          at 0 range 4 .. 5;
      F3CFG          at 0 range 6 .. 7;
      F4CFG          at 0 range 8 .. 9;
      F5CFG          at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RF233 control module
   type RFCTRL_Peripheral is record
      --  Front-end control bus configuration
      FECFG : aliased RFCTRL_FECFG_Register;
   end record
     with Volatile;

   for RFCTRL_Peripheral use record
      FECFG at 0 range 0 .. 15;
   end record;

   --  RF233 control module
   RFCTRL_Periph : aliased RFCTRL_Peripheral
     with Import, Address => System'To_Address (16#42005400#);

end SAM_SVD.RFCTRL;
