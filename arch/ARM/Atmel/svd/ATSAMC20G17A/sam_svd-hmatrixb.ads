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

--  This spec has been automatically generated from ATSAMC20G17A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.HMATRIXB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Undefined Length Burst Type
   type MCFG_ULBTSelect is
     (
      --  Infinite Length
      Infinite,
      --  Single Access
      Single,
      --  Four Beat Burst
      Four_Beat,
      --  Eight Beat Burst
      Eight_Beat,
      --  Sixteen Beat Burst
      Sixteen_Beat)
     with Size => 3;
   for MCFG_ULBTSelect use
     (Infinite => 0,
      Single => 1,
      Four_Beat => 2,
      Eight_Beat => 3,
      Sixteen_Beat => 4);

   --  Master Configuration
   type HMATRIXB_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MCFG_ULBTSelect := SAM_SVD.HMATRIXB.Four_Beat;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMATRIXB_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration
   type HMATRIXB_MCFG_Registers is array (0 .. 15) of HMATRIXB_MCFG_Register
     with Volatile;

   subtype HMATRIXB_SCFG_SLOT_CYCLE_Field is HAL.UInt8;

   --  Default Master Type
   type SCFG_DEFMSTR_TYPESelect is
     (
      --  No Default Master. At the end of current slave access, if no other
      --  master request is pending, the slave is deconnected from all masters.
      --  This resusts in having a one cycle latency for the first transfer of
      --  a burst.
      No_Default,
      --  Last Default Master At the end of current slave access, if no other
      --  master request is pending, the slave stay connected with the last
      --  master havingaccessed it.This resusts in not having the one cycle
      --  latency when the last master re-trying access on the slave.
      Last_Default,
      --  Fixed Default Master At the end of current slave access, if no other
      --  master request is pending, the slave connects with fixed master which
      --  numberis in FIXED_DEFMSTR register.This resusts in not having the one
      --  cycle latency when the fixed master re-trying access on the slave.
      Fixed_Default)
     with Size => 2;
   for SCFG_DEFMSTR_TYPESelect use
     (No_Default => 0,
      Last_Default => 1,
      Fixed_Default => 2);

   subtype HMATRIXB_SCFG_FIXED_DEFMSTR_Field is HAL.UInt4;

   --  Arbitration Type
   type SCFG_ARBTSelect is
     (
      --  Round-Robin Arbitration
      Round_Robin,
      --  Fixed Priority Arbitration
      Fixed_Priority)
     with Size => 1;
   for SCFG_ARBTSelect use
     (Round_Robin => 0,
      Fixed_Priority => 1);

   --  Slave Configuration
   type HMATRIXB_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : HMATRIXB_SCFG_SLOT_CYCLE_Field := 16#10#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : SCFG_DEFMSTR_TYPESelect := SAM_SVD.HMATRIXB.No_Default;
      --  Fixed Index of Default Master
      FIXED_DEFMSTR  : HMATRIXB_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Arbitration Type
      ARBT           : SCFG_ARBTSelect := SAM_SVD.HMATRIXB.Round_Robin;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMATRIXB_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ARBT           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Slave Configuration
   type HMATRIXB_SCFG_Registers is array (0 .. 15) of HMATRIXB_SCFG_Register
     with Volatile;

   subtype PRAS_M0PR_Field is HAL.UInt4;
   subtype PRAS_M1PR_Field is HAL.UInt4;
   subtype PRAS_M2PR_Field is HAL.UInt4;
   subtype PRAS_M3PR_Field is HAL.UInt4;
   subtype PRAS_M4PR_Field is HAL.UInt4;
   subtype PRAS_M5PR_Field is HAL.UInt4;
   subtype PRAS_M6PR_Field is HAL.UInt4;
   subtype PRAS_M7PR_Field is HAL.UInt4;

   --  Priority A for Slave
   type PRAS_Register is record
      --  Master 0 Priority
      M0PR : PRAS_M0PR_Field := 16#0#;
      --  Master 1 Priority
      M1PR : PRAS_M1PR_Field := 16#0#;
      --  Master 2 Priority
      M2PR : PRAS_M2PR_Field := 16#0#;
      --  Master 3 Priority
      M3PR : PRAS_M3PR_Field := 16#0#;
      --  Master 4 Priority
      M4PR : PRAS_M4PR_Field := 16#0#;
      --  Master 5 Priority
      M5PR : PRAS_M5PR_Field := 16#0#;
      --  Master 6 Priority
      M6PR : PRAS_M6PR_Field := 16#0#;
      --  Master 7 Priority
      M7PR : PRAS_M7PR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRAS_Register use record
      M0PR at 0 range 0 .. 3;
      M1PR at 0 range 4 .. 7;
      M2PR at 0 range 8 .. 11;
      M3PR at 0 range 12 .. 15;
      M4PR at 0 range 16 .. 19;
      M5PR at 0 range 20 .. 23;
      M6PR at 0 range 24 .. 27;
      M7PR at 0 range 28 .. 31;
   end record;

   subtype PRBS_M8PR_Field is HAL.UInt4;
   subtype PRBS_M9PR_Field is HAL.UInt4;
   subtype PRBS_M10PR_Field is HAL.UInt4;
   subtype PRBS_M11PR_Field is HAL.UInt4;
   subtype PRBS_M12PR_Field is HAL.UInt4;
   subtype PRBS_M13PR_Field is HAL.UInt4;
   subtype PRBS_M14PR_Field is HAL.UInt4;
   subtype PRBS_M15PR_Field is HAL.UInt4;

   --  Priority B for Slave
   type PRBS_Register is record
      --  Master 8 Priority
      M8PR  : PRBS_M8PR_Field := 16#0#;
      --  Master 9 Priority
      M9PR  : PRBS_M9PR_Field := 16#0#;
      --  Master 10 Priority
      M10PR : PRBS_M10PR_Field := 16#0#;
      --  Master 11 Priority
      M11PR : PRBS_M11PR_Field := 16#0#;
      --  Master 12 Priority
      M12PR : PRBS_M12PR_Field := 16#0#;
      --  Master 13 Priority
      M13PR : PRBS_M13PR_Field := 16#0#;
      --  Master 14 Priority
      M14PR : PRBS_M14PR_Field := 16#0#;
      --  Master 15 Priority
      M15PR : PRBS_M15PR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRBS_Register use record
      M8PR  at 0 range 0 .. 3;
      M9PR  at 0 range 4 .. 7;
      M10PR at 0 range 8 .. 11;
      M11PR at 0 range 12 .. 15;
      M12PR at 0 range 16 .. 19;
      M13PR at 0 range 20 .. 23;
      M14PR at 0 range 24 .. 27;
      M15PR at 0 range 28 .. 31;
   end record;

   --  Remap Command Bit for Master 0
   type MRCR_RCB0Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB0Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 1
   type MRCR_RCB1Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB1Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 2
   type MRCR_RCB2Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB2Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 3
   type MRCR_RCB3Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB3Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 4
   type MRCR_RCB4Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB4Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 5
   type MRCR_RCB5Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB5Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 6
   type MRCR_RCB6Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB6Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 7
   type MRCR_RCB7Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB7Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 8
   type MRCR_RCB8Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB8Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 9
   type MRCR_RCB9Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB9Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 10
   type MRCR_RCB10Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB10Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 11
   type MRCR_RCB11Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB11Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 12
   type MRCR_RCB12Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB12Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 13
   type MRCR_RCB13Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB13Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 14
   type MRCR_RCB14Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB14Select use
     (Dis => 0,
      Ena => 1);

   --  Remap Command Bit for Master 15
   type MRCR_RCB15Select is
     (
      --  Disable remapped address decoding for master
      Dis,
      --  Enable remapped address decoding for master
      Ena)
     with Size => 1;
   for MRCR_RCB15Select use
     (Dis => 0,
      Ena => 1);

   --  Master Remap Control
   type HMATRIXB_MRCR_Register is record
      --  Remap Command Bit for Master 0
      RCB0           : MRCR_RCB0Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 1
      RCB1           : MRCR_RCB1Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 2
      RCB2           : MRCR_RCB2Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 3
      RCB3           : MRCR_RCB3Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 4
      RCB4           : MRCR_RCB4Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 5
      RCB5           : MRCR_RCB5Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 6
      RCB6           : MRCR_RCB6Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 7
      RCB7           : MRCR_RCB7Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 8
      RCB8           : MRCR_RCB8Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 9
      RCB9           : MRCR_RCB9Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 10
      RCB10          : MRCR_RCB10Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 11
      RCB11          : MRCR_RCB11Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 12
      RCB12          : MRCR_RCB12Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 13
      RCB13          : MRCR_RCB13Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 14
      RCB14          : MRCR_RCB14Select := SAM_SVD.HMATRIXB.Dis;
      --  Remap Command Bit for Master 15
      RCB15          : MRCR_RCB15Select := SAM_SVD.HMATRIXB.Dis;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMATRIXB_MRCR_Register use record
      RCB0           at 0 range 0 .. 0;
      RCB1           at 0 range 1 .. 1;
      RCB2           at 0 range 2 .. 2;
      RCB3           at 0 range 3 .. 3;
      RCB4           at 0 range 4 .. 4;
      RCB5           at 0 range 5 .. 5;
      RCB6           at 0 range 6 .. 6;
      RCB7           at 0 range 7 .. 7;
      RCB8           at 0 range 8 .. 8;
      RCB9           at 0 range 9 .. 9;
      RCB10          at 0 range 10 .. 10;
      RCB11          at 0 range 11 .. 11;
      RCB12          at 0 range 12 .. 12;
      RCB13          at 0 range 13 .. 13;
      RCB14          at 0 range 14 .. 14;
      RCB15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Special Function

   --  Special Function
   type HMATRIXB_SFR_Registers is array (0 .. 15) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  HSB Matrix
   type HMATRIXHS_Peripheral is record
      --  Master Configuration
      MCFG  : aliased HMATRIXB_MCFG_Registers;
      --  Slave Configuration
      SCFG  : aliased HMATRIXB_SCFG_Registers;
      --  Priority A for Slave
      PRAS0 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS0 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS1 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS1 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS2 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS2 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS3 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS3 : aliased PRBS_Register;
      --  Master Remap Control
      MRCR  : aliased HMATRIXB_MRCR_Register;
      --  Special Function
      SFR   : aliased HMATRIXB_SFR_Registers;
   end record
     with Volatile;

   for HMATRIXHS_Peripheral use record
      MCFG  at 16#0# range 0 .. 511;
      SCFG  at 16#40# range 0 .. 511;
      PRAS0 at 16#80# range 0 .. 31;
      PRBS0 at 16#84# range 0 .. 31;
      PRAS1 at 16#88# range 0 .. 31;
      PRBS1 at 16#8C# range 0 .. 31;
      PRAS2 at 16#90# range 0 .. 31;
      PRBS2 at 16#94# range 0 .. 31;
      PRAS3 at 16#98# range 0 .. 31;
      PRBS3 at 16#9C# range 0 .. 31;
      MRCR  at 16#100# range 0 .. 31;
      SFR   at 16#110# range 0 .. 511;
   end record;

   --  HSB Matrix
   HMATRIXHS_Periph : aliased HMATRIXHS_Peripheral
     with Import, Address => System'To_Address (16#4100A000#);

end SAM_SVD.HMATRIXB;
