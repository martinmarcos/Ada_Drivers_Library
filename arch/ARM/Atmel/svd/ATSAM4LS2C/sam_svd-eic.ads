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

--  This spec has been automatically generated from ATSAM4LS2C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.EIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  External Interrupt 1
   type IER_INT1Select is
     (
      --  No effect
      IER_INT1Select_0,
      --  Enable Interrupt.
      IER_INT1Select_1)
     with Size => 1;
   for IER_INT1Select use
     (IER_INT1Select_0 => 0,
      IER_INT1Select_1 => 1);

   --  External Interrupt 2
   type IER_INT2Select is
     (
      --  No effect
      IER_INT2Select_0,
      --  Enable Interrupt.
      IER_INT2Select_1)
     with Size => 1;
   for IER_INT2Select use
     (IER_INT2Select_0 => 0,
      IER_INT2Select_1 => 1);

   --  External Interrupt 3
   type IER_INT3Select is
     (
      --  No effect
      IER_INT3Select_0,
      --  Enable Interrupt.
      IER_INT3Select_1)
     with Size => 1;
   for IER_INT3Select use
     (IER_INT3Select_0 => 0,
      IER_INT3Select_1 => 1);

   --  External Interrupt 4
   type IER_INT4Select is
     (
      --  No effect
      IER_INT4Select_0,
      --  Enable Interrupt.
      IER_INT4Select_1)
     with Size => 1;
   for IER_INT4Select use
     (IER_INT4Select_0 => 0,
      IER_INT4Select_1 => 1);

   --  EIC_IER_INT array
   type EIC_IER_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_IER_INT
   type EIC_IER_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_IER_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_IER_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Enable Register
   type EIC_IER_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  Write-only. External Interrupt 1
      INT1           : IER_INT1Select := SAM_SVD.EIC.IER_INT1Select_0;
      --  Write-only. External Interrupt 2
      INT2           : IER_INT2Select := SAM_SVD.EIC.IER_INT2Select_0;
      --  Write-only. External Interrupt 3
      INT3           : IER_INT3Select := SAM_SVD.EIC.IER_INT3Select_0;
      --  Write-only. External Interrupt 4
      INT4           : IER_INT4Select := SAM_SVD.EIC.IER_INT4Select_0;
      --  Write-only. External Interrupt 5
      INT            : EIC_IER_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_IER_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 1
   type IDR_INT1Select is
     (
      --  No effect
      IDR_INT1Select_0,
      --  Disable Interrupt.
      IDR_INT1Select_1)
     with Size => 1;
   for IDR_INT1Select use
     (IDR_INT1Select_0 => 0,
      IDR_INT1Select_1 => 1);

   --  External Interrupt 2
   type IDR_INT2Select is
     (
      --  No effect
      IDR_INT2Select_0,
      --  Disable Interrupt.
      IDR_INT2Select_1)
     with Size => 1;
   for IDR_INT2Select use
     (IDR_INT2Select_0 => 0,
      IDR_INT2Select_1 => 1);

   --  External Interrupt 3
   type IDR_INT3Select is
     (
      --  No effect
      IDR_INT3Select_0,
      --  Disable Interrupt.
      IDR_INT3Select_1)
     with Size => 1;
   for IDR_INT3Select use
     (IDR_INT3Select_0 => 0,
      IDR_INT3Select_1 => 1);

   --  External Interrupt 4
   type IDR_INT4Select is
     (
      --  No effect
      IDR_INT4Select_0,
      --  Disable Interrupt.
      IDR_INT4Select_1)
     with Size => 1;
   for IDR_INT4Select use
     (IDR_INT4Select_0 => 0,
      IDR_INT4Select_1 => 1);

   --  EIC_IDR_INT array
   type EIC_IDR_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_IDR_INT
   type EIC_IDR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_IDR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_IDR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Disable Register
   type EIC_IDR_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  Write-only. External Interrupt 1
      INT1           : IDR_INT1Select := SAM_SVD.EIC.IDR_INT1Select_0;
      --  Write-only. External Interrupt 2
      INT2           : IDR_INT2Select := SAM_SVD.EIC.IDR_INT2Select_0;
      --  Write-only. External Interrupt 3
      INT3           : IDR_INT3Select := SAM_SVD.EIC.IDR_INT3Select_0;
      --  Write-only. External Interrupt 4
      INT4           : IDR_INT4Select := SAM_SVD.EIC.IDR_INT4Select_0;
      --  Write-only. External Interrupt 5
      INT            : EIC_IDR_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_IDR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 1
   type IMR_INT1Select is
     (
      --  Interrupt is disabled
      IMR_INT1Select_0,
      --  Interrupt is enabled.
      IMR_INT1Select_1)
     with Size => 1;
   for IMR_INT1Select use
     (IMR_INT1Select_0 => 0,
      IMR_INT1Select_1 => 1);

   --  External Interrupt 2
   type IMR_INT2Select is
     (
      --  Interrupt is disabled
      IMR_INT2Select_0,
      --  Interrupt is enabled.
      IMR_INT2Select_1)
     with Size => 1;
   for IMR_INT2Select use
     (IMR_INT2Select_0 => 0,
      IMR_INT2Select_1 => 1);

   --  External Interrupt 3
   type IMR_INT3Select is
     (
      --  Interrupt is disabled
      IMR_INT3Select_0,
      --  Interrupt is enabled.
      IMR_INT3Select_1)
     with Size => 1;
   for IMR_INT3Select use
     (IMR_INT3Select_0 => 0,
      IMR_INT3Select_1 => 1);

   --  External Interrupt 4
   type IMR_INT4Select is
     (
      --  Interrupt is disabled
      IMR_INT4Select_0,
      --  Interrupt is enabled.
      IMR_INT4Select_1)
     with Size => 1;
   for IMR_INT4Select use
     (IMR_INT4Select_0 => 0,
      IMR_INT4Select_1 => 1);

   --  EIC_IMR_INT array
   type EIC_IMR_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_IMR_INT
   type EIC_IMR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_IMR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_IMR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Mask Register
   type EIC_IMR_Register is record
      --  Read-only. External Non Maskable CPU interrupt
      NMI            : Boolean;
      --  Read-only. External Interrupt 1
      INT1           : IMR_INT1Select;
      --  Read-only. External Interrupt 2
      INT2           : IMR_INT2Select;
      --  Read-only. External Interrupt 3
      INT3           : IMR_INT3Select;
      --  Read-only. External Interrupt 4
      INT4           : IMR_INT4Select;
      --  Read-only. External Interrupt 5
      INT            : EIC_IMR_INT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_IMR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 1
   type ISR_INT1Select is
     (
      --  An interrupt event has not occurred
      ISR_INT1Select_0,
      --  An interrupt event has occurred.
      ISR_INT1Select_1)
     with Size => 1;
   for ISR_INT1Select use
     (ISR_INT1Select_0 => 0,
      ISR_INT1Select_1 => 1);

   --  External Interrupt 2
   type ISR_INT2Select is
     (
      --  An interrupt event has not occurred
      ISR_INT2Select_0,
      --  An interrupt event has occurred.
      ISR_INT2Select_1)
     with Size => 1;
   for ISR_INT2Select use
     (ISR_INT2Select_0 => 0,
      ISR_INT2Select_1 => 1);

   --  External Interrupt 3
   type ISR_INT3Select is
     (
      --  An interrupt event has not occurred
      ISR_INT3Select_0,
      --  An interrupt event has occurred.
      ISR_INT3Select_1)
     with Size => 1;
   for ISR_INT3Select use
     (ISR_INT3Select_0 => 0,
      ISR_INT3Select_1 => 1);

   --  External Interrupt 4
   type ISR_INT4Select is
     (
      --  An interrupt event has not occurred
      ISR_INT4Select_0,
      --  An interrupt event has occurred.
      ISR_INT4Select_1)
     with Size => 1;
   for ISR_INT4Select use
     (ISR_INT4Select_0 => 0,
      ISR_INT4Select_1 => 1);

   --  EIC_ISR_INT array
   type EIC_ISR_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_ISR_INT
   type EIC_ISR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_ISR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_ISR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Status Register
   type EIC_ISR_Register is record
      --  Read-only. External Non Maskable CPU interrupt
      NMI            : Boolean;
      --  Read-only. External Interrupt 1
      INT1           : ISR_INT1Select;
      --  Read-only. External Interrupt 2
      INT2           : ISR_INT2Select;
      --  Read-only. External Interrupt 3
      INT3           : ISR_INT3Select;
      --  Read-only. External Interrupt 4
      INT4           : ISR_INT4Select;
      --  Read-only. External Interrupt 5
      INT            : EIC_ISR_INT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ISR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 1
   type ICR_INT1Select is
     (
      --  No effect
      ICR_INT1Select_0,
      --  Clear Interrupt.
      ICR_INT1Select_1)
     with Size => 1;
   for ICR_INT1Select use
     (ICR_INT1Select_0 => 0,
      ICR_INT1Select_1 => 1);

   --  External Interrupt 2
   type ICR_INT2Select is
     (
      --  No effect
      ICR_INT2Select_0,
      --  Clear Interrupt.
      ICR_INT2Select_1)
     with Size => 1;
   for ICR_INT2Select use
     (ICR_INT2Select_0 => 0,
      ICR_INT2Select_1 => 1);

   --  External Interrupt 3
   type ICR_INT3Select is
     (
      --  No effect
      ICR_INT3Select_0,
      --  Clear Interrupt.
      ICR_INT3Select_1)
     with Size => 1;
   for ICR_INT3Select use
     (ICR_INT3Select_0 => 0,
      ICR_INT3Select_1 => 1);

   --  External Interrupt 4
   type ICR_INT4Select is
     (
      --  No effect
      ICR_INT4Select_0,
      --  Clear Interrupt.
      ICR_INT4Select_1)
     with Size => 1;
   for ICR_INT4Select use
     (ICR_INT4Select_0 => 0,
      ICR_INT4Select_1 => 1);

   --  EIC_ICR_INT array
   type EIC_ICR_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_ICR_INT
   type EIC_ICR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_ICR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_ICR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Clear Register
   type EIC_ICR_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  Write-only. External Interrupt 1
      INT1           : ICR_INT1Select := SAM_SVD.EIC.ICR_INT1Select_0;
      --  Write-only. External Interrupt 2
      INT2           : ICR_INT2Select := SAM_SVD.EIC.ICR_INT2Select_0;
      --  Write-only. External Interrupt 3
      INT3           : ICR_INT3Select := SAM_SVD.EIC.ICR_INT3Select_0;
      --  Write-only. External Interrupt 4
      INT4           : ICR_INT4Select := SAM_SVD.EIC.ICR_INT4Select_0;
      --  Write-only. External Interrupt 5
      INT            : EIC_ICR_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ICR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 1
   type MODE_INT1Select is
     (
      --  Edge triggered interrupt
      MODE_INT1Select_0,
      --  Level triggered interrupt
      MODE_INT1Select_1)
     with Size => 1;
   for MODE_INT1Select use
     (MODE_INT1Select_0 => 0,
      MODE_INT1Select_1 => 1);

   --  External Interrupt 2
   type MODE_INT2Select is
     (
      --  Edge triggered interrupt
      MODE_INT2Select_0,
      --  Level triggered interrupt
      MODE_INT2Select_1)
     with Size => 1;
   for MODE_INT2Select use
     (MODE_INT2Select_0 => 0,
      MODE_INT2Select_1 => 1);

   --  External Interrupt 3
   type MODE_INT3Select is
     (
      --  Edge triggered interrupt
      MODE_INT3Select_0,
      --  Level triggered interrupt
      MODE_INT3Select_1)
     with Size => 1;
   for MODE_INT3Select use
     (MODE_INT3Select_0 => 0,
      MODE_INT3Select_1 => 1);

   --  External Interrupt 4
   type MODE_INT4Select is
     (
      --  Edge triggered interrupt
      MODE_INT4Select_0,
      --  Level triggered interrupt
      MODE_INT4Select_1)
     with Size => 1;
   for MODE_INT4Select use
     (MODE_INT4Select_0 => 0,
      MODE_INT4Select_1 => 1);

   --  EIC_MODE_INT array
   type EIC_MODE_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_MODE_INT
   type EIC_MODE_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_MODE_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_MODE_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Mode Register
   type EIC_MODE_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  External Interrupt 1
      INT1           : MODE_INT1Select := SAM_SVD.EIC.MODE_INT1Select_0;
      --  External Interrupt 2
      INT2           : MODE_INT2Select := SAM_SVD.EIC.MODE_INT2Select_0;
      --  External Interrupt 3
      INT3           : MODE_INT3Select := SAM_SVD.EIC.MODE_INT3Select_0;
      --  External Interrupt 4
      INT4           : MODE_INT4Select := SAM_SVD.EIC.MODE_INT4Select_0;
      --  External Interrupt 5
      INT            : EIC_MODE_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_MODE_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 1
   type EDGE_INT1Select is
     (
      --  Triggers on falling edge
      EDGE_INT1Select_0,
      --  Triggers on rising edge.
      EDGE_INT1Select_1)
     with Size => 1;
   for EDGE_INT1Select use
     (EDGE_INT1Select_0 => 0,
      EDGE_INT1Select_1 => 1);

   --  External Interrupt 2
   type EDGE_INT2Select is
     (
      --  Triggers on falling edge
      EDGE_INT2Select_0,
      --  Triggers on rising edge.
      EDGE_INT2Select_1)
     with Size => 1;
   for EDGE_INT2Select use
     (EDGE_INT2Select_0 => 0,
      EDGE_INT2Select_1 => 1);

   --  External Interrupt 3
   type EDGE_INT3Select is
     (
      --  Triggers on falling edge
      EDGE_INT3Select_0,
      --  Triggers on rising edge.
      EDGE_INT3Select_1)
     with Size => 1;
   for EDGE_INT3Select use
     (EDGE_INT3Select_0 => 0,
      EDGE_INT3Select_1 => 1);

   --  External Interrupt 4
   type EDGE_INT4Select is
     (
      --  Triggers on falling edge
      EDGE_INT4Select_0,
      --  Triggers on rising edge.
      EDGE_INT4Select_1)
     with Size => 1;
   for EDGE_INT4Select use
     (EDGE_INT4Select_0 => 0,
      EDGE_INT4Select_1 => 1);

   --  EIC_EDGE_INT array
   type EIC_EDGE_INT_Field_Array is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EIC_EDGE_INT
   type EIC_EDGE_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt11;
         when True =>
            --  INT as an array
            Arr : EIC_EDGE_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EIC_EDGE_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Edge Register
   type EIC_EDGE_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  External Interrupt 1
      INT1           : EDGE_INT1Select := SAM_SVD.EIC.EDGE_INT1Select_0;
      --  External Interrupt 2
      INT2           : EDGE_INT2Select := SAM_SVD.EIC.EDGE_INT2Select_0;
      --  External Interrupt 3
      INT3           : EDGE_INT3Select := SAM_SVD.EIC.EDGE_INT3Select_0;
      --  External Interrupt 4
      INT4           : EDGE_INT4Select := SAM_SVD.EIC.EDGE_INT4Select_0;
      --  External Interrupt 5
      INT            : EIC_EDGE_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_EDGE_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_LEVEL_INT array
   type EIC_LEVEL_INT_Field_Array is array (1 .. 15) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EIC_LEVEL_INT
   type EIC_LEVEL_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt15;
         when True =>
            --  INT as an array
            Arr : EIC_LEVEL_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EIC_LEVEL_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Level Register
   type EIC_LEVEL_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  External Interrupt 1
      INT            : EIC_LEVEL_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_LEVEL_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_FILTER_INT array
   type EIC_FILTER_INT_Field_Array is array (1 .. 15) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EIC_FILTER_INT
   type EIC_FILTER_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt15;
         when True =>
            --  INT as an array
            Arr : EIC_FILTER_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EIC_FILTER_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Filter Register
   type EIC_FILTER_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  External Interrupt 1
      INT            : EIC_FILTER_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_FILTER_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_ASYNC_INT array
   type EIC_ASYNC_INT_Field_Array is array (1 .. 15) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EIC_ASYNC_INT
   type EIC_ASYNC_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt15;
         when True =>
            --  INT as an array
            Arr : EIC_ASYNC_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EIC_ASYNC_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Asynchronous Register
   type EIC_ASYNC_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  External Interrupt 1
      INT            : EIC_ASYNC_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ASYNC_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_EN_INT array
   type EIC_EN_INT_Field_Array is array (1 .. 15) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EIC_EN_INT
   type EIC_EN_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt15;
         when True =>
            --  INT as an array
            Arr : EIC_EN_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EIC_EN_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Enable Register
   type EIC_EN_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  Write-only. External Interrupt 1
      INT            : EIC_EN_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_EN_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_DIS_INT array
   type EIC_DIS_INT_Field_Array is array (1 .. 15) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EIC_DIS_INT
   type EIC_DIS_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt15;
         when True =>
            --  INT as an array
            Arr : EIC_DIS_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EIC_DIS_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Disable Register
   type EIC_DIS_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : Boolean := False;
      --  Write-only. External Interrupt 1
      INT            : EIC_DIS_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_DIS_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_CTRL_INT array
   type EIC_CTRL_INT_Field_Array is array (1 .. 15) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EIC_CTRL_INT
   type EIC_CTRL_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt15;
         when True =>
            --  INT as an array
            Arr : EIC_CTRL_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EIC_CTRL_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Control Register
   type EIC_CTRL_Register is record
      --  Read-only. External Non Maskable CPU interrupt
      NMI            : Boolean;
      --  Read-only. External Interrupt 1
      INT            : EIC_CTRL_INT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_CTRL_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EIC_VERSION_VERSION_Field is HAL.UInt12;

   --  Version Register
   type EIC_VERSION_Register is record
      --  Read-only. Version bits
      VERSION        : EIC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External Interrupt Controller
   type EIC_Peripheral is record
      --  Interrupt Enable Register
      IER     : aliased EIC_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased EIC_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased EIC_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased EIC_ISR_Register;
      --  Interrupt Clear Register
      ICR     : aliased EIC_ICR_Register;
      --  Mode Register
      MODE    : aliased EIC_MODE_Register;
      --  Edge Register
      EDGE    : aliased EIC_EDGE_Register;
      --  Level Register
      LEVEL   : aliased EIC_LEVEL_Register;
      --  Filter Register
      FILTER  : aliased EIC_FILTER_Register;
      --  Asynchronous Register
      ASYNC   : aliased EIC_ASYNC_Register;
      --  Enable Register
      EN      : aliased EIC_EN_Register;
      --  Disable Register
      DIS     : aliased EIC_DIS_Register;
      --  Control Register
      CTRL    : aliased EIC_CTRL_Register;
      --  Version Register
      VERSION : aliased EIC_VERSION_Register;
   end record
     with Volatile;

   for EIC_Peripheral use record
      IER     at 16#0# range 0 .. 31;
      IDR     at 16#4# range 0 .. 31;
      IMR     at 16#8# range 0 .. 31;
      ISR     at 16#C# range 0 .. 31;
      ICR     at 16#10# range 0 .. 31;
      MODE    at 16#14# range 0 .. 31;
      EDGE    at 16#18# range 0 .. 31;
      LEVEL   at 16#1C# range 0 .. 31;
      FILTER  at 16#20# range 0 .. 31;
      ASYNC   at 16#28# range 0 .. 31;
      EN      at 16#30# range 0 .. 31;
      DIS     at 16#34# range 0 .. 31;
      CTRL    at 16#38# range 0 .. 31;
      VERSION at 16#3FC# range 0 .. 31;
   end record;

   --  External Interrupt Controller
   EIC_Periph : aliased EIC_Peripheral
     with Import, Address => System'To_Address (16#400F1000#);

end SAM_SVD.EIC;
