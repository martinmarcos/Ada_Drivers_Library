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

--  This spec has been automatically generated from ATSAMD10D14AU.svd

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

   --  Special Function

   --  Special Function
   type HMATRIXB_SFR_Registers is array (0 .. 15) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  HSB Matrix
   type HMATRIX_Peripheral is record
      --  Priority A for Slave
      PRAS0  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS0  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS1  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS1  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS2  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS2  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS3  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS3  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS4  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS4  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS5  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS5  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS6  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS6  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS7  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS7  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS8  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS8  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS9  : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS9  : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS10 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS10 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS11 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS11 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS12 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS12 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS13 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS13 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS14 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS14 : aliased PRBS_Register;
      --  Priority A for Slave
      PRAS15 : aliased PRAS_Register;
      --  Priority B for Slave
      PRBS15 : aliased PRBS_Register;
      --  Special Function
      SFR    : aliased HMATRIXB_SFR_Registers;
   end record
     with Volatile;

   for HMATRIX_Peripheral use record
      PRAS0  at 16#80# range 0 .. 31;
      PRBS0  at 16#84# range 0 .. 31;
      PRAS1  at 16#88# range 0 .. 31;
      PRBS1  at 16#8C# range 0 .. 31;
      PRAS2  at 16#90# range 0 .. 31;
      PRBS2  at 16#94# range 0 .. 31;
      PRAS3  at 16#98# range 0 .. 31;
      PRBS3  at 16#9C# range 0 .. 31;
      PRAS4  at 16#A0# range 0 .. 31;
      PRBS4  at 16#A4# range 0 .. 31;
      PRAS5  at 16#A8# range 0 .. 31;
      PRBS5  at 16#AC# range 0 .. 31;
      PRAS6  at 16#B0# range 0 .. 31;
      PRBS6  at 16#B4# range 0 .. 31;
      PRAS7  at 16#B8# range 0 .. 31;
      PRBS7  at 16#BC# range 0 .. 31;
      PRAS8  at 16#C0# range 0 .. 31;
      PRBS8  at 16#C4# range 0 .. 31;
      PRAS9  at 16#C8# range 0 .. 31;
      PRBS9  at 16#CC# range 0 .. 31;
      PRAS10 at 16#D0# range 0 .. 31;
      PRBS10 at 16#D4# range 0 .. 31;
      PRAS11 at 16#D8# range 0 .. 31;
      PRBS11 at 16#DC# range 0 .. 31;
      PRAS12 at 16#E0# range 0 .. 31;
      PRBS12 at 16#E4# range 0 .. 31;
      PRAS13 at 16#E8# range 0 .. 31;
      PRBS13 at 16#EC# range 0 .. 31;
      PRAS14 at 16#F0# range 0 .. 31;
      PRBS14 at 16#F4# range 0 .. 31;
      PRAS15 at 16#F8# range 0 .. 31;
      PRBS15 at 16#FC# range 0 .. 31;
      SFR    at 16#110# range 0 .. 511;
   end record;

   --  HSB Matrix
   HMATRIX_Periph : aliased HMATRIX_Peripheral
     with Import, Address => System'To_Address (16#41007000#);

end SAM_SVD.HMATRIXB;
