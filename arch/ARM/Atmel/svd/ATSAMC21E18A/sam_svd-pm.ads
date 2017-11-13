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

--  This spec has been automatically generated from ATSAMC21E18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Sleep Mode
   type SLEEPCFG_SLEEPMODESelect is
     (
      --  CPU clock is OFF
      Idle0,
      --  AHB clock is OFF
      Idle1,
      --  APB clock are OFF
      Idle2,
      --  All Clocks are OFF
      Standby)
     with Size => 3;
   for SLEEPCFG_SLEEPMODESelect use
     (Idle0 => 0,
      Idle1 => 1,
      Idle2 => 2,
      Standby => 4);

   --  Sleep Configuration
   type PM_SLEEPCFG_Register is record
      --  Sleep Mode
      SLEEPMODE    : SLEEPCFG_SLEEPMODESelect := SAM_SVD.PM.Idle0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_SLEEPCFG_Register use record
      SLEEPMODE    at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Voltage Regulator Standby mode
   type STDBYCFG_VREGSMODSelect is
     (
      --  Automatic mode
      Auto,
      --  Performance oriented
      Performance,
      --  Low Power oriented
      Lp)
     with Size => 2;
   for STDBYCFG_VREGSMODSelect use
     (Auto => 0,
      Performance => 1,
      Lp => 2);

   --  Standby Configuration
   type PM_STDBYCFG_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Voltage Regulator Standby mode
      VREGSMOD       : STDBYCFG_VREGSMODSelect := SAM_SVD.PM.Auto;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Back Bias for HMCRAMCHS
      BBIASHS        : Boolean := True;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PM_STDBYCFG_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      VREGSMOD       at 0 range 6 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      BBIASHS        at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Manager
   type PM_Peripheral is record
      --  Sleep Configuration
      SLEEPCFG : aliased PM_SLEEPCFG_Register;
      --  Standby Configuration
      STDBYCFG : aliased PM_STDBYCFG_Register;
   end record
     with Volatile;

   for PM_Peripheral use record
      SLEEPCFG at 16#1# range 0 .. 7;
      STDBYCFG at 16#8# range 0 .. 15;
   end record;

   --  Power Manager
   PM_Periph : aliased PM_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

end SAM_SVD.PM;
