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

--  This spec has been automatically generated from ATSAML21G18A.svd

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
      --  Reset value for the field
      Sleepcfg_Sleepmodeselect_Reset,
      --  CPU, AHBx, and APBx clocks are OFF
      Idle,
      --  All Clocks are OFF
      Standby,
      --  Only Backup domain is powered ON
      Backup,
      --  All power domains are powered OFF
      Off)
     with Size => 3;
   for SLEEPCFG_SLEEPMODESelect use
     (Sleepcfg_Sleepmodeselect_Reset => 0,
      Idle => 2,
      Standby => 4,
      Backup => 5,
      Off => 6);

   --  Sleep Configuration
   type PM_SLEEPCFG_Register is record
      --  Sleep Mode
      SLEEPMODE    : SLEEPCFG_SLEEPMODESelect :=
                      Sleepcfg_Sleepmodeselect_Reset;
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
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PM_PLCFG_Register use record
      PLSEL        at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
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

   --  Power Domain Configuration
   type STDBYCFG_PDCFGSelect is
     (
      --  All power domains switching is handled by hardware.
      Default,
      --  PD0 is forced ACTIVE. PD1 and PD2 power domains switching is handled
      --  by hardware.
      Pd0,
      --  PD0 and PD1 are forced ACTIVE. PD2 power domain switching is handled
      --  by hardware.
      Pd01,
      --  All power domains are forced ACTIVE.
      Pd012)
     with Size => 2;
   for STDBYCFG_PDCFGSelect use
     (Default => 0,
      Pd0 => 1,
      Pd01 => 2,
      Pd012 => 3);

   --  PM_STDBYCFG_DPGPD array
   type PM_STDBYCFG_DPGPD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PM_STDBYCFG_DPGPD
   type PM_STDBYCFG_DPGPD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DPGPD as a value
            Val : HAL.UInt2;
         when True =>
            --  DPGPD as an array
            Arr : PM_STDBYCFG_DPGPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PM_STDBYCFG_DPGPD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Linked Power Domain
   type STDBYCFG_LINKPDSelect is
     (
      --  Power domains are not linked
      Default,
      --  PD0 and PD1 power domains are linked
      Pd01,
      --  PD1 and PD2 power domains are linked
      Pd12,
      --  All power domains are linked
      Pd012)
     with Size => 2;
   for STDBYCFG_LINKPDSelect use
     (Default => 0,
      Pd01 => 1,
      Pd12 => 2,
      Pd012 => 3);

   subtype PM_STDBYCFG_BBIASHS_Field is HAL.UInt2;
   subtype PM_STDBYCFG_BBIASLP_Field is HAL.UInt2;
   subtype PM_STDBYCFG_BBIASPP_Field is HAL.UInt2;

   --  Standby Configuration
   type PM_STDBYCFG_Register is record
      --  Power Domain Configuration
      PDCFG        : STDBYCFG_PDCFGSelect := SAM_SVD.PM.Default;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Dynamic Power Gating for PD0
      DPGPD        : PM_STDBYCFG_DPGPD_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Automatic VREG Switching Disable
      AVREGSD      : Boolean := False;
      --  Linked Power Domain
      LINKPD       : STDBYCFG_LINKPDSelect := SAM_SVD.PM.Default;
      --  Back Bias for HMCRAMCHS
      BBIASHS      : PM_STDBYCFG_BBIASHS_Field := 16#0#;
      --  Back Bias for HMCRAMCLP
      BBIASLP      : PM_STDBYCFG_BBIASLP_Field := 16#0#;
      --  Back Bias for PicoPram
      BBIASPP      : PM_STDBYCFG_BBIASPP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PM_STDBYCFG_Register use record
      PDCFG        at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      DPGPD        at 0 range 4 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      AVREGSD      at 0 range 7 .. 7;
      LINKPD       at 0 range 8 .. 9;
      BBIASHS      at 0 range 10 .. 11;
      BBIASLP      at 0 range 12 .. 13;
      BBIASPP      at 0 range 14 .. 15;
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
      --  Power Switch Acknowledge Delay
      PWSAKDLY : aliased PM_PWSAKDLY_Register;
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
      PWSAKDLY at 16#C# range 0 .. 7;
   end record;

   --  Power Manager
   PM_Periph : aliased PM_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end SAM_SVD.PM;
