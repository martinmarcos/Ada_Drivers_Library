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

--  This spec has been automatically generated from ATSAML22G16A.svd

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

   --  Control A
   type PM_CTRLA_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  I/O Retention
      IORET        : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_CTRLA_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      IORET        at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

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
      Standby,
      --  Only Backup domain is powered ON
      Backup,
      --  All power domains are powered OFF
      Off)
     with Size => 3;
   for SLEEPCFG_SLEEPMODESelect use
     (Idle0 => 0,
      Idle1 => 1,
      Idle2 => 2,
      Standby => 4,
      Backup => 5,
      Off => 6);

   --  Sleep Configuration
   type PM_SLEEPCFG_Register is record
      --  Sleep Mode
      SLEEPMODE    : SLEEPCFG_SLEEPMODESelect := SAM_SVD.PM.Idle2;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_SLEEPCFG_Register use record
      SLEEPMODE    at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Performance Level Select
   type PLCFG_PLSELSelect is
     (
      --  Performance Level 0
      Pl0,
      --  Performance Level 1
      Pl1,
      --  Performance Level 2
      Pl2)
     with Size => 2;
   for PLCFG_PLSELSelect use
     (Pl0 => 0,
      Pl1 => 1,
      Pl2 => 2);

   --  Performance Level Configuration
   type PM_PLCFG_Register is record
      --  Performance Level Select
      PLSEL        : PLCFG_PLSELSelect := SAM_SVD.PM.Pl0;
      --  unspecified
      Reserved_2_6 : HAL.UInt5 := 16#0#;
      --  Performance Level Disable
      PLDIS        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_PLCFG_Register use record
      PLSEL        at 0 range 0 .. 1;
      Reserved_2_6 at 0 range 2 .. 6;
      PLDIS        at 0 range 7 .. 7;
   end record;

   --  Interrupt Enable Clear
   type PM_INTENCLR_Register is record
      --  Write-only. Performance Level Interrupt Enable
      PLRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_INTENCLR_Register use record
      PLRDY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Set
   type PM_INTENSET_Register is record
      --  Performance Level Ready interrupt Enable
      PLRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_INTENSET_Register use record
      PLRDY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type PM_INTFLAG_Register is record
      --  Performance Level Ready
      PLRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_INTFLAG_Register use record
      PLRDY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
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

   subtype PM_STDBYCFG_BBIASHS_Field is HAL.UInt2;

   --  Standby Configuration
   type PM_STDBYCFG_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Voltage Regulator Standby mode
      VREGSMOD       : STDBYCFG_VREGSMODSelect := SAM_SVD.PM.Auto;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Back Bias for HMCRAMCHS
      BBIASHS        : PM_STDBYCFG_BBIASHS_Field := 16#1#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PM_STDBYCFG_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      VREGSMOD       at 0 range 6 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      BBIASHS        at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Manager
   type PM_Peripheral is record
      --  Control A
      CTRLA    : aliased PM_CTRLA_Register;
      --  Sleep Configuration
      SLEEPCFG : aliased PM_SLEEPCFG_Register;
      --  Performance Level Configuration
      PLCFG    : aliased PM_PLCFG_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased PM_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased PM_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased PM_INTFLAG_Register;
      --  Standby Configuration
      STDBYCFG : aliased PM_STDBYCFG_Register;
   end record
     with Volatile;

   for PM_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      SLEEPCFG at 16#1# range 0 .. 7;
      PLCFG    at 16#2# range 0 .. 7;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STDBYCFG at 16#8# range 0 .. 15;
   end record;

   --  Power Manager
   PM_Periph : aliased PM_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

end SAM_SVD.PM;
