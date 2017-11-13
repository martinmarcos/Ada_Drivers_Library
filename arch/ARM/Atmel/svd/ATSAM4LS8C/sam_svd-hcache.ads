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

--  This spec has been automatically generated from ATSAM4LS8C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.HCACHE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Cache Enable
   type CTRL_CENSelect is
     (
      --  Disable Cache Controller
      No,
      --  Enable Cache Controller
      Yes)
     with Size => 1;
   for CTRL_CENSelect use
     (No => 0,
      Yes => 1);

   --  Control Register
   type HCACHE_CTRL_Register is record
      --  Write-only. Cache Enable
      CEN           : CTRL_CENSelect := SAM_SVD.HCACHE.No;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_CTRL_Register use record
      CEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Controller Status
   type SR_CSTSSelect is
     (
      --  Cache Controller Disabled
      Dis,
      --  Cache Controller Enabled
      En)
     with Size => 1;
   for SR_CSTSSelect use
     (Dis => 0,
      En => 1);

   --  Status Register
   type HCACHE_SR_Register is record
      --  Read-only. Cache Controller Status
      CSTS          : SR_CSTSSelect;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_SR_Register use record
      CSTS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Controller Invalidate All
   type MAINT0_INVALLSelect is
     (
      --  No effect
      No,
      --  Invalidate all cache entries
      Yes)
     with Size => 1;
   for MAINT0_INVALLSelect use
     (No => 0,
      Yes => 1);

   --  Maintenance Register 0
   type HCACHE_MAINT0_Register is record
      --  Write-only. Cache Controller Invalidate All
      INVALL        : MAINT0_INVALLSelect := SAM_SVD.HCACHE.No;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MAINT0_Register use record
      INVALL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HCACHE_MAINT1_INDEX_Field is HAL.UInt4;

   --  Maintenance Register 1
   type HCACHE_MAINT1_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Write-only. Invalidate Index
      INDEX         : HCACHE_MAINT1_INDEX_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MAINT1_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      INDEX         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Cache Controller Monitor Counter Mode
   type MCFG_MODESelect is
     (
      --  Cycle Counter
      Cycle,
      --  Instruction Hit Counter
      Ihit,
      --  Data Hit Counter
      Dhit)
     with Size => 2;
   for MCFG_MODESelect use
     (Cycle => 0,
      Ihit => 1,
      Dhit => 2);

   --  Monitor Configuration Register
   type HCACHE_MCFG_Register is record
      --  Cache Controller Monitor Counter Mode
      MODE          : MCFG_MODESelect := SAM_SVD.HCACHE.Cycle;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MCFG_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Monitor Enable
   type MEN_MENABLESelect is
     (
      --  Disable Monitor Counter
      Dis,
      --  Enable Monitor Counter
      En)
     with Size => 1;
   for MEN_MENABLESelect use
     (Dis => 0,
      En => 1);

   --  Monitor Enable Register
   type HCACHE_MEN_Register is record
      --  Write-only. Monitor Enable
      MENABLE       : MEN_MENABLESelect := SAM_SVD.HCACHE.Dis;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MEN_Register use record
      MENABLE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Monitor Software Reset
   type MCTRL_SWRSTSelect is
     (
      --  No effect
      No,
      --  Reset event counter register
      Yes)
     with Size => 1;
   for MCTRL_SWRSTSelect use
     (No => 0,
      Yes => 1);

   --  Monitor Control Register
   type HCACHE_MCTRL_Register is record
      --  Write-only. Monitor Software Reset
      SWRST         : MCTRL_SWRSTSelect := SAM_SVD.HCACHE.No;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MCTRL_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HCACHE_VERSION_VERSION_Field is HAL.UInt12;
   subtype HCACHE_VERSION_MFN_Field is HAL.UInt4;

   --  Version Register
   type HCACHE_VERSION_Register is record
      --  Read-only. VERSION
      VERSION        : HCACHE_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. MFN
      MFN            : HCACHE_VERSION_MFN_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex M I&D Cache Controller
   type HCACHE_Peripheral is record
      --  Control Register
      CTRL    : aliased HCACHE_CTRL_Register;
      --  Status Register
      SR      : aliased HCACHE_SR_Register;
      --  Maintenance Register 0
      MAINT0  : aliased HCACHE_MAINT0_Register;
      --  Maintenance Register 1
      MAINT1  : aliased HCACHE_MAINT1_Register;
      --  Monitor Configuration Register
      MCFG    : aliased HCACHE_MCFG_Register;
      --  Monitor Enable Register
      MEN     : aliased HCACHE_MEN_Register;
      --  Monitor Control Register
      MCTRL   : aliased HCACHE_MCTRL_Register;
      --  Monitor Status Register
      MSR     : aliased HAL.UInt32;
      --  Version Register
      VERSION : aliased HCACHE_VERSION_Register;
   end record
     with Volatile;

   for HCACHE_Peripheral use record
      CTRL    at 16#8# range 0 .. 31;
      SR      at 16#C# range 0 .. 31;
      MAINT0  at 16#20# range 0 .. 31;
      MAINT1  at 16#24# range 0 .. 31;
      MCFG    at 16#28# range 0 .. 31;
      MEN     at 16#2C# range 0 .. 31;
      MCTRL   at 16#30# range 0 .. 31;
      MSR     at 16#34# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  Cortex M I&D Cache Controller
   HCACHE_Periph : aliased HCACHE_Peripheral
     with Import, Address => System'To_Address (16#400A0400#);

end SAM_SVD.HCACHE;
