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

--  This spec has been automatically generated from ATSAMD51N20A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.CMCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Number of Way
   type TYPE_WAYNUMSelect is
     (
      --  Direct Mapped Cache
      Dmapped,
      --  2-WAY set associative
      Arch2Way,
      --  4-WAY set associative
      Arch4Way)
     with Size => 2;
   for TYPE_WAYNUMSelect use
     (Dmapped => 0,
      Arch2Way => 1,
      Arch4Way => 2);

   --  Cache Size
   type TYPE_CSIZESelect is
     (
      --  Cache Size is 1 KB
      Csize_1Kb,
      --  Cache Size is 2 KB
      Csize_2Kb,
      --  Cache Size is 4 KB
      Csize_4Kb,
      --  Cache Size is 8 KB
      Csize_8Kb,
      --  Cache Size is 16 KB
      Csize_16Kb,
      --  Cache Size is 32 KB
      Csize_32Kb,
      --  Cache Size is 64 KB
      Csize_64Kb)
     with Size => 3;
   for TYPE_CSIZESelect use
     (Csize_1Kb => 0,
      Csize_2Kb => 1,
      Csize_4Kb => 2,
      Csize_8Kb => 3,
      Csize_16Kb => 4,
      Csize_32Kb => 5,
      Csize_64Kb => 6);

   --  Cache Line Size
   type TYPE_CLSIZESelect is
     (
      --  Cache Line Size is 4 bytes
      Clsize_4B,
      --  Cache Line Size is 8 bytes
      Clsize_8B,
      --  Cache Line Size is 16 bytes
      Clsize_16B,
      --  Cache Line Size is 32 bytes
      Clsize_32B,
      --  Cache Line Size is 64 bytes
      Clsize_64B,
      --  Cache Line Size is 128 bytes
      Clsize_128B)
     with Size => 3;
   for TYPE_CLSIZESelect use
     (Clsize_4B => 0,
      Clsize_8B => 1,
      Clsize_16B => 2,
      Clsize_32B => 3,
      Clsize_64B => 4,
      Clsize_128B => 5);

   --  Cache Type Register
   type CMCC_TYPE_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. dynamic Clock Gating supported
      GCLK           : Boolean;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Round Robin Policy supported
      RRP            : Boolean;
      --  Read-only. Number of Way
      WAYNUM         : TYPE_WAYNUMSelect;
      --  Read-only. Lock Down supported
      LCKDOWN        : Boolean;
      --  Read-only. Cache Size
      CSIZE          : TYPE_CSIZESelect;
      --  Read-only. Cache Line Size
      CLSIZE         : TYPE_CLSIZESelect;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_TYPE_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      GCLK           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RRP            at 0 range 4 .. 4;
      WAYNUM         at 0 range 5 .. 6;
      LCKDOWN        at 0 range 7 .. 7;
      CSIZE          at 0 range 8 .. 10;
      CLSIZE         at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Cache size configured by software
   type CFG_CSIZESWSelect is
     (
      --  the Cache Size is configured to 1KB
      Conf_Csize_1Kb,
      --  the Cache Size is configured to 2KB
      Conf_Csize_2Kb,
      --  the Cache Size is configured to 4KB
      Conf_Csize_4Kb,
      --  the Cache Size is configured to 8KB
      Conf_Csize_8Kb,
      --  the Cache Size is configured to 16KB
      Conf_Csize_16Kb,
      --  the Cache Size is configured to 32KB
      Conf_Csize_32Kb,
      --  the Cache Size is configured to 64KB
      Conf_Csize_64Kb)
     with Size => 3;
   for CFG_CSIZESWSelect use
     (Conf_Csize_1Kb => 0,
      Conf_Csize_2Kb => 1,
      Conf_Csize_4Kb => 2,
      Conf_Csize_8Kb => 3,
      Conf_Csize_16Kb => 4,
      Conf_Csize_32Kb => 5,
      Conf_Csize_64Kb => 6);

   --  Cache Configuration Register
   type CMCC_CFG_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Instruction Cache Disable
      ICDIS         : Boolean := False;
      --  Data Cache Disable
      DCDIS         : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Cache size configured by software
      CSIZESW       : CFG_CSIZESWSelect := SAM_SVD.CMCC.Conf_Csize_4Kb;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_CFG_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ICDIS         at 0 range 1 .. 1;
      DCDIS         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CSIZESW       at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Cache Control Register
   type CMCC_CTRL_Register is record
      --  Write-only. Cache Controller Enable
      CEN           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_CTRL_Register use record
      CEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Status Register
   type CMCC_SR_Register is record
      --  Read-only. Cache Controller Status
      CSTS          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_SR_Register use record
      CSTS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_LCKWAY_LCKWAY_Field is HAL.UInt4;

   --  Cache Lock per Way Register
   type CMCC_LCKWAY_Register is record
      --  Lockdown way Register
      LCKWAY        : CMCC_LCKWAY_LCKWAY_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_LCKWAY_Register use record
      LCKWAY        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Cache Maintenance Register 0
   type CMCC_MAINT0_Register is record
      --  Write-only. Cache Controller invalidate All
      INVALL        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MAINT0_Register use record
      INVALL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_MAINT1_INDEX_Field is HAL.UInt8;

   --  Invalidate Way
   type MAINT1_WAYSelect is
     (
      --  Way 0 is selection for index invalidation
      Way0,
      --  Way 1 is selection for index invalidation
      Way1,
      --  Way 2 is selection for index invalidation
      Way2,
      --  Way 3 is selection for index invalidation
      Way3)
     with Size => 4;
   for MAINT1_WAYSelect use
     (Way0 => 0,
      Way1 => 1,
      Way2 => 2,
      Way3 => 3);

   --  Cache Maintenance Register 1
   type CMCC_MAINT1_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Write-only. Invalidate Index
      INDEX          : CMCC_MAINT1_INDEX_Field := 16#0#;
      --  unspecified
      Reserved_12_27 : HAL.UInt16 := 16#0#;
      --  Write-only. Invalidate Way
      WAY            : MAINT1_WAYSelect := SAM_SVD.CMCC.Way0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MAINT1_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      INDEX          at 0 range 4 .. 11;
      Reserved_12_27 at 0 range 12 .. 27;
      WAY            at 0 range 28 .. 31;
   end record;

   --  Cache Controller Monitor Counter Mode
   type MCFG_MODESelect is
     (
      --  cycle counter
      Cycle_Count,
      --  instruction hit counter
      Ihit_Count,
      --  data hit counter
      Dhit_Count)
     with Size => 2;
   for MCFG_MODESelect use
     (Cycle_Count => 0,
      Ihit_Count => 1,
      Dhit_Count => 2);

   --  Cache Monitor Configuration Register
   type CMCC_MCFG_Register is record
      --  Cache Controller Monitor Counter Mode
      MODE          : MCFG_MODESelect := SAM_SVD.CMCC.Cycle_Count;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MCFG_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Cache Monitor Enable Register
   type CMCC_MEN_Register is record
      --  Cache Controller Monitor Enable
      MENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MEN_Register use record
      MENABLE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Monitor Control Register
   type CMCC_MCTRL_Register is record
      --  Write-only. Cache Controller Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MCTRL_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex M Cache Controller
   type CMCC_Peripheral is record
      --  Cache Type Register
      TYPE_k : aliased CMCC_TYPE_Register;
      --  Cache Configuration Register
      CFG    : aliased CMCC_CFG_Register;
      --  Cache Control Register
      CTRL   : aliased CMCC_CTRL_Register;
      --  Cache Status Register
      SR     : aliased CMCC_SR_Register;
      --  Cache Lock per Way Register
      LCKWAY : aliased CMCC_LCKWAY_Register;
      --  Cache Maintenance Register 0
      MAINT0 : aliased CMCC_MAINT0_Register;
      --  Cache Maintenance Register 1
      MAINT1 : aliased CMCC_MAINT1_Register;
      --  Cache Monitor Configuration Register
      MCFG   : aliased CMCC_MCFG_Register;
      --  Cache Monitor Enable Register
      MEN    : aliased CMCC_MEN_Register;
      --  Cache Monitor Control Register
      MCTRL  : aliased CMCC_MCTRL_Register;
      --  Cache Monitor Status Register
      MSR    : aliased HAL.UInt32;
   end record
     with Volatile;

   for CMCC_Peripheral use record
      TYPE_k at 16#0# range 0 .. 31;
      CFG    at 16#4# range 0 .. 31;
      CTRL   at 16#8# range 0 .. 31;
      SR     at 16#C# range 0 .. 31;
      LCKWAY at 16#10# range 0 .. 31;
      MAINT0 at 16#20# range 0 .. 31;
      MAINT1 at 16#24# range 0 .. 31;
      MCFG   at 16#28# range 0 .. 31;
      MEN    at 16#2C# range 0 .. 31;
      MCTRL  at 16#30# range 0 .. 31;
      MSR    at 16#34# range 0 .. 31;
   end record;

   --  Cortex M Cache Controller
   CMCC_Periph : aliased CMCC_Peripheral
     with Import, Address => System'To_Address (16#41006000#);

end SAM_SVD.CMCC;
