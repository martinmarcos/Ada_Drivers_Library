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

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ACIFC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ACIFC_CTRL_Register is record
      --  ACIFC Enable
      EN            : Boolean := False;
      --  Peripheral Event Trigger Enable
      EVENTEN       : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  User Start Single Comparison
      USTART        : Boolean := False;
      --  Peripheral Event Start Single Comparison
      ESTART        : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Analog Comparator Test Mode
      ACTEST        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_CTRL_Register use record
      EN            at 0 range 0 .. 0;
      EVENTEN       at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      USTART        at 0 range 4 .. 4;
      ESTART        at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      ACTEST        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ACIFC_SR_WFCS array
   type ACIFC_SR_WFCS_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_SR_WFCS
   type ACIFC_SR_WFCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFCS as a value
            Val : HAL.UInt4;
         when True =>
            --  WFCS as an array
            Arr : ACIFC_SR_WFCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_SR_WFCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Status Register
   type ACIFC_SR_Register is record
      --  Read-only. AC0 Current Comparison Status
      ACCS0          : Boolean;
      --  Read-only. AC0 Ready
      ACRDY0         : Boolean;
      --  Read-only. AC1 Current Comparison Status
      ACCS1          : Boolean;
      --  Read-only. AC1 Ready
      ACRDY1         : Boolean;
      --  Read-only. AC2 Current Comparison Status
      ACCS2          : Boolean;
      --  Read-only. AC2 Ready
      ACRDY2         : Boolean;
      --  Read-only. AC3 Current Comparison Status
      ACCS3          : Boolean;
      --  Read-only. AC3 Ready
      ACRDY3         : Boolean;
      --  Read-only. AC4 Current Comparison Status
      ACCS4          : Boolean;
      --  Read-only. AC4 Ready
      ACRDY4         : Boolean;
      --  Read-only. AC5 Current Comparison Status
      ACCS5          : Boolean;
      --  Read-only. AC5 Ready
      ACRDY5         : Boolean;
      --  Read-only. AC6 Current Comparison Status
      ACCS6          : Boolean;
      --  Read-only. AC6 Ready
      ACRDY6         : Boolean;
      --  Read-only. AC7 Current Comparison Status
      ACCS7          : Boolean;
      --  Read-only. AC7 Ready
      ACRDY7         : Boolean;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Window0 Mode Current Status
      WFCS           : ACIFC_SR_WFCS_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_SR_Register use record
      ACCS0          at 0 range 0 .. 0;
      ACRDY0         at 0 range 1 .. 1;
      ACCS1          at 0 range 2 .. 2;
      ACRDY1         at 0 range 3 .. 3;
      ACCS2          at 0 range 4 .. 4;
      ACRDY2         at 0 range 5 .. 5;
      ACCS3          at 0 range 6 .. 6;
      ACRDY3         at 0 range 7 .. 7;
      ACCS4          at 0 range 8 .. 8;
      ACRDY4         at 0 range 9 .. 9;
      ACCS5          at 0 range 10 .. 10;
      ACRDY5         at 0 range 11 .. 11;
      ACCS6          at 0 range 12 .. 12;
      ACRDY6         at 0 range 13 .. 13;
      ACCS7          at 0 range 14 .. 14;
      ACRDY7         at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFCS           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ACIFC_IER_WFINT array
   type ACIFC_IER_WFINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_IER_WFINT
   type ACIFC_IER_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : HAL.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ACIFC_IER_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_IER_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Enable Register
   type ACIFC_IER_Register is record
      --  Write-only. AC0 Interrupt Enable
      ACINT0         : Boolean := False;
      --  Write-only. AC0 Startup Time Interrupt Enable
      SUTINT0        : Boolean := False;
      --  Write-only. AC1 Interrupt Enable
      ACINT1         : Boolean := False;
      --  Write-only. AC1 Startup Time Interrupt Enable
      SUTINT1        : Boolean := False;
      --  Write-only. AC2 Interrupt Enable
      ACINT2         : Boolean := False;
      --  Write-only. AC2 Startup Time Interrupt Enable
      SUTINT2        : Boolean := False;
      --  Write-only. AC3 Interrupt Enable
      ACINT3         : Boolean := False;
      --  Write-only. AC3 Startup Time Interrupt Enable
      SUTINT3        : Boolean := False;
      --  Write-only. AC4 Interrupt Enable
      ACINT4         : Boolean := False;
      --  Write-only. AC4 Startup Time Interrupt Enable
      SUTINT4        : Boolean := False;
      --  Write-only. AC5 Interrupt Enable
      ACINT5         : Boolean := False;
      --  Write-only. AC5 Startup Time Interrupt Enable
      SUTINT5        : Boolean := False;
      --  Write-only. AC6 Interrupt Enable
      ACINT6         : Boolean := False;
      --  Write-only. AC6 Startup Time Interrupt Enable
      SUTINT6        : Boolean := False;
      --  Write-only. AC7 Interrupt Enable
      ACINT7         : Boolean := False;
      --  Write-only. AC7 Startup Time Interrupt Enable
      SUTINT7        : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write-only. Window0 Mode Interrupt Enable
      WFINT          : ACIFC_IER_WFINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_IER_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ACIFC_IDR_WFINT array
   type ACIFC_IDR_WFINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_IDR_WFINT
   type ACIFC_IDR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : HAL.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ACIFC_IDR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_IDR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Disable Register
   type ACIFC_IDR_Register is record
      --  Write-only. AC0 Interrupt Disable
      ACINT0         : Boolean := False;
      --  Write-only. AC0 Startup Time Interrupt Disable
      SUTINT0        : Boolean := False;
      --  Write-only. AC1 Interrupt Disable
      ACINT1         : Boolean := False;
      --  Write-only. AC1 Startup Time Interrupt Disable
      SUTINT1        : Boolean := False;
      --  Write-only. AC2 Interrupt Disable
      ACINT2         : Boolean := False;
      --  Write-only. AC2 Startup Time Interrupt Disable
      SUTINT2        : Boolean := False;
      --  Write-only. AC3 Interrupt Disable
      ACINT3         : Boolean := False;
      --  Write-only. AC3 Startup Time Interrupt Disable
      SUTINT3        : Boolean := False;
      --  Write-only. AC4 Interrupt Disable
      ACINT4         : Boolean := False;
      --  Write-only. AC4 Startup Time Interrupt Disable
      SUTINT4        : Boolean := False;
      --  Write-only. AC5 Interrupt Disable
      ACINT5         : Boolean := False;
      --  Write-only. AC5 Startup Time Interrupt Disable
      SUTINT5        : Boolean := False;
      --  Write-only. AC6 Interrupt Disable
      ACINT6         : Boolean := False;
      --  Write-only. AC6 Startup Time Interrupt Disable
      SUTINT6        : Boolean := False;
      --  Write-only. AC7 Interrupt Disable
      ACINT7         : Boolean := False;
      --  Write-only. AC7 Startup Time Interrupt Disable
      SUTINT7        : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write-only. Window0 Mode Interrupt Disable
      WFINT          : ACIFC_IDR_WFINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_IDR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ACIFC_IMR_WFINT array
   type ACIFC_IMR_WFINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_IMR_WFINT
   type ACIFC_IMR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : HAL.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ACIFC_IMR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_IMR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Mask Register
   type ACIFC_IMR_Register is record
      --  Read-only. AC0 Interrupt Mask
      ACINT0         : Boolean;
      --  Read-only. AC0 Startup Time Interrupt Mask
      SUTINT0        : Boolean;
      --  Read-only. AC1 Interrupt Mask
      ACINT1         : Boolean;
      --  Read-only. AC1 Startup Time Interrupt Mask
      SUTINT1        : Boolean;
      --  Read-only. AC2 Interrupt Mask
      ACINT2         : Boolean;
      --  Read-only. AC2 Startup Time Interrupt Mask
      SUTINT2        : Boolean;
      --  Read-only. AC3 Interrupt Mask
      ACINT3         : Boolean;
      --  Read-only. AC3 Startup Time Interrupt Mask
      SUTINT3        : Boolean;
      --  Read-only. AC4 Interrupt Mask
      ACINT4         : Boolean;
      --  Read-only. AC4 Startup Time Interrupt Mask
      SUTINT4        : Boolean;
      --  Read-only. AC5 Interrupt Mask
      ACINT5         : Boolean;
      --  Read-only. AC5 Startup Time Interrupt Mask
      SUTINT5        : Boolean;
      --  Read-only. AC6 Interrupt Mask
      ACINT6         : Boolean;
      --  Read-only. AC6 Startup Time Interrupt Mask
      SUTINT6        : Boolean;
      --  Read-only. AC7 Interrupt Mask
      ACINT7         : Boolean;
      --  Read-only. AC7 Startup Time Interrupt Mask
      SUTINT7        : Boolean;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Window0 Mode Interrupt Mask
      WFINT          : ACIFC_IMR_WFINT_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_IMR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ACIFC_ISR_WFINT array
   type ACIFC_ISR_WFINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_ISR_WFINT
   type ACIFC_ISR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : HAL.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ACIFC_ISR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_ISR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Status Register
   type ACIFC_ISR_Register is record
      --  Read-only. AC0 Interrupt Status
      ACINT0         : Boolean;
      --  Read-only. AC0 Startup Time Interrupt Status
      SUTINT0        : Boolean;
      --  Read-only. AC1 Interrupt Status
      ACINT1         : Boolean;
      --  Read-only. AC1 Startup Time Interrupt Status
      SUTINT1        : Boolean;
      --  Read-only. AC2 Interrupt Status
      ACINT2         : Boolean;
      --  Read-only. AC2 Startup Time Interrupt Status
      SUTINT2        : Boolean;
      --  Read-only. AC3 Interrupt Status
      ACINT3         : Boolean;
      --  Read-only. AC3 Startup Time Interrupt Status
      SUTINT3        : Boolean;
      --  Read-only. AC4 Interrupt Status
      ACINT4         : Boolean;
      --  Read-only. AC4 Startup Time Interrupt Status
      SUTINT4        : Boolean;
      --  Read-only. AC5 Interrupt Status
      ACINT5         : Boolean;
      --  Read-only. AC5 Startup Time Interrupt Status
      SUTINT5        : Boolean;
      --  Read-only. AC6 Interrupt Status
      ACINT6         : Boolean;
      --  Read-only. AC6 Startup Time Interrupt Status
      SUTINT6        : Boolean;
      --  Read-only. AC7 Interrupt Status
      ACINT7         : Boolean;
      --  Read-only. AC7 Startup Time Interrupt Status
      SUTINT7        : Boolean;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Window0 Mode Interrupt Status
      WFINT          : ACIFC_ISR_WFINT_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_ISR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ACIFC_ICR_WFINT array
   type ACIFC_ICR_WFINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_ICR_WFINT
   type ACIFC_ICR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : HAL.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ACIFC_ICR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_ICR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Status Clear Register
   type ACIFC_ICR_Register is record
      --  Write-only. AC0 Interrupt Status Clear
      ACINT0         : Boolean := False;
      --  Write-only. AC0 Startup Time Interrupt Status Clear
      SUTINT0        : Boolean := False;
      --  Write-only. AC1 Interrupt Status Clear
      ACINT1         : Boolean := False;
      --  Write-only. AC1 Startup Time Interrupt Status Clear
      SUTINT1        : Boolean := False;
      --  Write-only. AC2 Interrupt Status Clear
      ACINT2         : Boolean := False;
      --  Write-only. AC2 Startup Time Interrupt Status Clear
      SUTINT2        : Boolean := False;
      --  Write-only. AC3 Interrupt Status Clear
      ACINT3         : Boolean := False;
      --  Write-only. AC3 Startup Time Interrupt Status Clear
      SUTINT3        : Boolean := False;
      --  Write-only. AC4 Interrupt Status Clear
      ACINT4         : Boolean := False;
      --  Write-only. AC4 Startup Time Interrupt Status Clear
      SUTINT4        : Boolean := False;
      --  Write-only. AC5 Interrupt Status Clear
      ACINT5         : Boolean := False;
      --  Write-only. AC5 Startup Time Interrupt Status Clear
      SUTINT5        : Boolean := False;
      --  Write-only. AC6 Interrupt Status Clear
      ACINT6         : Boolean := False;
      --  Write-only. AC6 Startup Time Interrupt Status Clear
      SUTINT6        : Boolean := False;
      --  Write-only. AC7 Interrupt Status Clear
      ACINT7         : Boolean := False;
      --  Write-only. AC7 Startup Time Interrupt Status Clear
      SUTINT7        : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write-only. Window0 Mode Interrupt Status Clear
      WFINT          : ACIFC_ICR_WFINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_ICR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ACIFC_TR_ACTEST array
   type ACIFC_TR_ACTEST_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ACIFC_TR_ACTEST
   type ACIFC_TR_ACTEST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ACTEST as a value
            Val : HAL.UInt8;
         when True =>
            --  ACTEST as an array
            Arr : ACIFC_TR_ACTEST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ACIFC_TR_ACTEST_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Test Register
   type ACIFC_TR_Register is record
      --  AC0 Output Override Value
      ACTEST        : ACIFC_TR_ACTEST_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_TR_Register use record
      ACTEST        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ACIFC_PARAMETER_ACIMPL array
   type ACIFC_PARAMETER_ACIMPL_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ACIFC_PARAMETER_ACIMPL
   type ACIFC_PARAMETER_ACIMPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ACIMPL as a value
            Val : HAL.UInt8;
         when True =>
            --  ACIMPL as an array
            Arr : ACIFC_PARAMETER_ACIMPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ACIFC_PARAMETER_ACIMPL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ACIFC_PARAMETER_WIMPL array
   type ACIFC_PARAMETER_WIMPL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ACIFC_PARAMETER_WIMPL
   type ACIFC_PARAMETER_WIMPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WIMPL as a value
            Val : HAL.UInt4;
         when True =>
            --  WIMPL as an array
            Arr : ACIFC_PARAMETER_WIMPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ACIFC_PARAMETER_WIMPL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Parameter Register
   type ACIFC_PARAMETER_Register is record
      --  Read-only. Analog Comparator 0 Implemented
      ACIMPL         : ACIFC_PARAMETER_ACIMPL_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Window0 Mode Implemented
      WIMPL          : ACIFC_PARAMETER_WIMPL_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_PARAMETER_Register use record
      ACIMPL         at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WIMPL          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ACIFC_VERSION_VERSION_Field is HAL.UInt12;
   subtype ACIFC_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type ACIFC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : ACIFC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : ACIFC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ACIFC_CONFW_WIS_Field is HAL.UInt3;
   subtype ACIFC_CONFW_WEVSRC_Field is HAL.UInt3;

   --  Window configuration Register
   type ACIFC_CONFW_Register is record
      --  Window Mode Interrupt Settings
      WIS            : ACIFC_CONFW_WIS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Peripheral Event Sourse Selection for Window Mode
      WEVSRC         : ACIFC_CONFW_WEVSRC_Field := 16#0#;
      --  Window Peripheral Event Enable
      WEVEN          : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window Mode Enable
      WFEN           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_CONFW_Register use record
      WIS            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WEVSRC         at 0 range 8 .. 10;
      WEVEN          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WFEN           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Window configuration Register
   type ACIFC_CONFW_Registers is array (0 .. 3) of ACIFC_CONFW_Register
     with Volatile;

   subtype ACIFC_CONF_IS_Field is HAL.UInt2;
   subtype ACIFC_CONF_MODE_Field is HAL.UInt2;
   subtype ACIFC_CONF_INSELN_Field is HAL.UInt2;
   subtype ACIFC_CONF_HYS_Field is HAL.UInt2;

   --  AC Configuration Register
   type ACIFC_CONF_Register is record
      --  Interupt Settings
      IS_k           : ACIFC_CONF_IS_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Analog Comparator Mode
      MODE           : ACIFC_CONF_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Negative Input Select
      INSELN         : ACIFC_CONF_INSELN_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Peripheral Event Enable Negative
      EVENN          : Boolean := False;
      --  Peripheral Event Enable Positive
      EVENP          : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Hysteresis Voltage Value
      HYS            : ACIFC_CONF_HYS_Field := 16#0#;
      --  Fast Mode Enable
      FAST           : Boolean := False;
      --  Always On
      ALWAYSON       : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_CONF_Register use record
      IS_k           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      INSELN         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EVENN          at 0 range 16 .. 16;
      EVENP          at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      HYS            at 0 range 24 .. 25;
      FAST           at 0 range 26 .. 26;
      ALWAYSON       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AC Configuration Register
   type ACIFC_CONF_Registers is array (0 .. 7) of ACIFC_CONF_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Comparator Interface
   type ACIFC_Peripheral is record
      --  Control Register
      CTRL      : aliased ACIFC_CTRL_Register;
      --  Status Register
      SR        : aliased ACIFC_SR_Register;
      --  Interrupt Enable Register
      IER       : aliased ACIFC_IER_Register;
      --  Interrupt Disable Register
      IDR       : aliased ACIFC_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased ACIFC_IMR_Register;
      --  Interrupt Status Register
      ISR       : aliased ACIFC_ISR_Register;
      --  Interrupt Status Clear Register
      ICR       : aliased ACIFC_ICR_Register;
      --  Test Register
      TR        : aliased ACIFC_TR_Register;
      --  Parameter Register
      PARAMETER : aliased ACIFC_PARAMETER_Register;
      --  Version Register
      VERSION   : aliased ACIFC_VERSION_Register;
      --  Window configuration Register
      CONFW     : aliased ACIFC_CONFW_Registers;
      --  AC Configuration Register
      CONF      : aliased ACIFC_CONF_Registers;
   end record
     with Volatile;

   for ACIFC_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      SR        at 16#4# range 0 .. 31;
      IER       at 16#10# range 0 .. 31;
      IDR       at 16#14# range 0 .. 31;
      IMR       at 16#18# range 0 .. 31;
      ISR       at 16#1C# range 0 .. 31;
      ICR       at 16#20# range 0 .. 31;
      TR        at 16#24# range 0 .. 31;
      PARAMETER at 16#30# range 0 .. 31;
      VERSION   at 16#34# range 0 .. 31;
      CONFW     at 16#80# range 0 .. 127;
      CONF      at 16#D0# range 0 .. 255;
   end record;

   --  Analog Comparator Interface
   ACIFC_Periph : aliased ACIFC_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

end SAM_SVD.ACIFC;
