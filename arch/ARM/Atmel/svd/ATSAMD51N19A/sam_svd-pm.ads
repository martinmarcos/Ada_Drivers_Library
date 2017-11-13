--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAMD51N19A.svd

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
      --  Backup domain is ON as well as some PDRAMs
      Hibernate,
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
      Hibernate => 5,
      Backup => 6,
      Off => 7);

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

   --  Interrupt Enable Clear
   type PM_INTENCLR_Register is record
      --  Write-only. Sleep Mode Entry Ready Enable
      SLEEPRDY     : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_INTENCLR_Register use record
      SLEEPRDY     at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Set
   type PM_INTENSET_Register is record
      --  Sleep Mode Entry Ready Enable
      SLEEPRDY     : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_INTENSET_Register use record
      SLEEPRDY     at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type PM_INTFLAG_Register is record
      --  Sleep Mode Entry Ready
      SLEEPRDY     : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_INTFLAG_Register use record
      SLEEPRDY     at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Ram Configuration
   type STDBYCFG_RAMCFGSelect is
     (
      --  All the RAMs are retained
      Ret,
      --  Only the first 32K bytes are retained
      Partial,
      --  All the RAMs are OFF
      Off)
     with Size => 2;
   for STDBYCFG_RAMCFGSelect use
     (Ret => 0,
      Partial => 1,
      Off => 2);

   subtype PM_STDBYCFG_FASTWKUP_Field is HAL.UInt2;

   --  Standby Configuration
   type PM_STDBYCFG_Register is record
      --  Ram Configuration
      RAMCFG       : STDBYCFG_RAMCFGSelect := SAM_SVD.PM.Ret;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Fast Wakeup
      FASTWKUP     : PM_STDBYCFG_FASTWKUP_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_STDBYCFG_Register use record
      RAMCFG       at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      FASTWKUP     at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   subtype PM_HIBCFG_RAMCFG_Field is HAL.UInt2;
   subtype PM_HIBCFG_BRAMCFG_Field is HAL.UInt2;

   --  Hibernate Configuration
   type PM_HIBCFG_Register is record
      --  Ram Configuration
      RAMCFG       : PM_HIBCFG_RAMCFG_Field := 16#0#;
      --  Backup Ram Configuration
      BRAMCFG      : PM_HIBCFG_BRAMCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_HIBCFG_Register use record
      RAMCFG       at 0 range 0 .. 1;
      BRAMCFG      at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype PM_BKUPCFG_BRAMCFG_Field is HAL.UInt2;

   --  Backup Configuration
   type PM_BKUPCFG_Register is record
      --  Ram Configuration
      BRAMCFG      : PM_BKUPCFG_BRAMCFG_Field := 16#0#;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_BKUPCFG_Register use record
      BRAMCFG      at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype PM_PWSAKDLY_DLYVAL_Field is HAL.UInt7;

   --  Power Switch Acknowledge Delay
   type PM_PWSAKDLY_Register is record
      --  Delay Value
      DLYVAL : PM_PWSAKDLY_DLYVAL_Field := 16#0#;
      --  Ignore Acknowledge
      IGNACK : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_PWSAKDLY_Register use record
      DLYVAL at 0 range 0 .. 6;
      IGNACK at 0 range 7 .. 7;
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
      --  Interrupt Enable Clear
      INTENCLR : aliased PM_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased PM_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased PM_INTFLAG_Register;
      --  Standby Configuration
      STDBYCFG : aliased PM_STDBYCFG_Register;
      --  Hibernate Configuration
      HIBCFG   : aliased PM_HIBCFG_Register;
      --  Backup Configuration
      BKUPCFG  : aliased PM_BKUPCFG_Register;
      --  Power Switch Acknowledge Delay
      PWSAKDLY : aliased PM_PWSAKDLY_Register;
   end record
     with Volatile;

   for PM_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      SLEEPCFG at 16#1# range 0 .. 7;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STDBYCFG at 16#8# range 0 .. 7;
      HIBCFG   at 16#9# range 0 .. 7;
      BKUPCFG  at 16#A# range 0 .. 7;
      PWSAKDLY at 16#12# range 0 .. 7;
   end record;

   --  Power Manager
   PM_Periph : aliased PM_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

end SAM_SVD.PM;
