--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKV46F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Low leakage wakeup unit
package NRF_SVD.LLWU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Wakeup Pin Enable For LLWU_P0
   type PE1_WUPE0_Field is
     (
      --  External input pin disabled as wakeup input
      PE1_WUPE0_Field_00,
      --  External input pin enabled with rising edge detection
      PE1_WUPE0_Field_01,
      --  External input pin enabled with falling edge detection
      PE1_WUPE0_Field_10,
      --  External input pin enabled with any change detection
      PE1_WUPE0_Field_11)
     with Size => 2;
   for PE1_WUPE0_Field use
     (PE1_WUPE0_Field_00 => 0,
      PE1_WUPE0_Field_01 => 1,
      PE1_WUPE0_Field_10 => 2,
      PE1_WUPE0_Field_11 => 3);

   --  LLWU_PE1_WUPE array
   type LLWU_PE1_WUPE_Field_Array is array (0 .. 3) of PE1_WUPE0_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 1 register
   type LLWU_PE1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE1_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE1_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P4
   type PE2_WUPE4_Field is
     (
      --  External input pin disabled as wakeup input
      PE2_WUPE4_Field_00,
      --  External input pin enabled with rising edge detection
      PE2_WUPE4_Field_01,
      --  External input pin enabled with falling edge detection
      PE2_WUPE4_Field_10,
      --  External input pin enabled with any change detection
      PE2_WUPE4_Field_11)
     with Size => 2;
   for PE2_WUPE4_Field use
     (PE2_WUPE4_Field_00 => 0,
      PE2_WUPE4_Field_01 => 1,
      PE2_WUPE4_Field_10 => 2,
      PE2_WUPE4_Field_11 => 3);

   --  LLWU_PE2_WUPE array
   type LLWU_PE2_WUPE_Field_Array is array (4 .. 7) of PE2_WUPE4_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 2 register
   type LLWU_PE2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE2_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE2_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P8
   type PE3_WUPE8_Field is
     (
      --  External input pin disabled as wakeup input
      PE3_WUPE8_Field_00,
      --  External input pin enabled with rising edge detection
      PE3_WUPE8_Field_01,
      --  External input pin enabled with falling edge detection
      PE3_WUPE8_Field_10,
      --  External input pin enabled with any change detection
      PE3_WUPE8_Field_11)
     with Size => 2;
   for PE3_WUPE8_Field use
     (PE3_WUPE8_Field_00 => 0,
      PE3_WUPE8_Field_01 => 1,
      PE3_WUPE8_Field_10 => 2,
      PE3_WUPE8_Field_11 => 3);

   --  LLWU_PE3_WUPE array
   type LLWU_PE3_WUPE_Field_Array is array (8 .. 11) of PE3_WUPE8_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 3 register
   type LLWU_PE3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE3_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE3_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P12
   type PE4_WUPE12_Field is
     (
      --  External input pin disabled as wakeup input
      PE4_WUPE12_Field_00,
      --  External input pin enabled with rising edge detection
      PE4_WUPE12_Field_01,
      --  External input pin enabled with falling edge detection
      PE4_WUPE12_Field_10,
      --  External input pin enabled with any change detection
      PE4_WUPE12_Field_11)
     with Size => 2;
   for PE4_WUPE12_Field use
     (PE4_WUPE12_Field_00 => 0,
      PE4_WUPE12_Field_01 => 1,
      PE4_WUPE12_Field_10 => 2,
      PE4_WUPE12_Field_11 => 3);

   --  LLWU_PE4_WUPE array
   type LLWU_PE4_WUPE_Field_Array is array (12 .. 15) of PE4_WUPE12_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 4 register
   type LLWU_PE4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE4_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE4_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P16
   type PE5_WUPE16_Field is
     (
      --  External input pin disabled as wakeup input
      PE5_WUPE16_Field_00,
      --  External input pin enabled with rising edge detection
      PE5_WUPE16_Field_01,
      --  External input pin enabled with falling edge detection
      PE5_WUPE16_Field_10,
      --  External input pin enabled with any change detection
      PE5_WUPE16_Field_11)
     with Size => 2;
   for PE5_WUPE16_Field use
     (PE5_WUPE16_Field_00 => 0,
      PE5_WUPE16_Field_01 => 1,
      PE5_WUPE16_Field_10 => 2,
      PE5_WUPE16_Field_11 => 3);

   --  LLWU_PE5_WUPE array
   type LLWU_PE5_WUPE_Field_Array is array (16 .. 19) of PE5_WUPE16_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 5 register
   type LLWU_PE5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE5_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE5_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P20
   type PE6_WUPE20_Field is
     (
      --  External input pin disabled as wakeup input
      PE6_WUPE20_Field_00,
      --  External input pin enabled with rising edge detection
      PE6_WUPE20_Field_01,
      --  External input pin enabled with falling edge detection
      PE6_WUPE20_Field_10,
      --  External input pin enabled with any change detection
      PE6_WUPE20_Field_11)
     with Size => 2;
   for PE6_WUPE20_Field use
     (PE6_WUPE20_Field_00 => 0,
      PE6_WUPE20_Field_01 => 1,
      PE6_WUPE20_Field_10 => 2,
      PE6_WUPE20_Field_11 => 3);

   --  LLWU_PE6_WUPE array
   type LLWU_PE6_WUPE_Field_Array is array (20 .. 23) of PE6_WUPE20_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 6 register
   type LLWU_PE6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE6_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE6_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P24
   type PE7_WUPE24_Field is
     (
      --  External input pin disabled as wakeup input
      PE7_WUPE24_Field_00,
      --  External input pin enabled with rising edge detection
      PE7_WUPE24_Field_01,
      --  External input pin enabled with falling edge detection
      PE7_WUPE24_Field_10,
      --  External input pin enabled with any change detection
      PE7_WUPE24_Field_11)
     with Size => 2;
   for PE7_WUPE24_Field use
     (PE7_WUPE24_Field_00 => 0,
      PE7_WUPE24_Field_01 => 1,
      PE7_WUPE24_Field_10 => 2,
      PE7_WUPE24_Field_11 => 3);

   --  LLWU_PE7_WUPE array
   type LLWU_PE7_WUPE_Field_Array is array (24 .. 27) of PE7_WUPE24_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 7 register
   type LLWU_PE7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE7_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE7_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Pin Enable For LLWU_P28
   type PE8_WUPE28_Field is
     (
      --  External input pin disabled as wakeup input
      PE8_WUPE28_Field_00,
      --  External input pin enabled with rising edge detection
      PE8_WUPE28_Field_01,
      --  External input pin enabled with falling edge detection
      PE8_WUPE28_Field_10,
      --  External input pin enabled with any change detection
      PE8_WUPE28_Field_11)
     with Size => 2;
   for PE8_WUPE28_Field use
     (PE8_WUPE28_Field_00 => 0,
      PE8_WUPE28_Field_01 => 1,
      PE8_WUPE28_Field_10 => 2,
      PE8_WUPE28_Field_11 => 3);

   --  LLWU_PE8_WUPE array
   type LLWU_PE8_WUPE_Field_Array is array (28 .. 31) of PE8_WUPE28_Field
     with Component_Size => 2, Size => 8;

   --  LLWU Pin Enable 8 register
   type LLWU_PE8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPE as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPE as an array
            Arr : LLWU_PE8_WUPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_PE8_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Module Enable For Module 0
   type ME_WUME0_Field is
     (
      --  Internal module flag not used as wakeup source
      ME_WUME0_Field_0,
      --  Internal module flag used as wakeup source
      ME_WUME0_Field_1)
     with Size => 1;
   for ME_WUME0_Field use
     (ME_WUME0_Field_0 => 0,
      ME_WUME0_Field_1 => 1);

   --  LLWU_ME_WUME array
   type LLWU_ME_WUME_Field_Array is array (0 .. 7) of ME_WUME0_Field
     with Component_Size => 1, Size => 8;

   --  LLWU Module Enable register
   type LLWU_ME_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUME as a value
            Val : HAL.UInt8;
         when True =>
            --  WUME as an array
            Arr : LLWU_ME_WUME_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LLWU_ME_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Wakeup Flag For LLWU_P0
   type PF1_WUF0_Field is
     (
      --  LLWU_P0 input was not a wakeup source
      PF1_WUF0_Field_0,
      --  LLWU_P0 input was a wakeup source
      PF1_WUF0_Field_1)
     with Size => 1;
   for PF1_WUF0_Field use
     (PF1_WUF0_Field_0 => 0,
      PF1_WUF0_Field_1 => 1);

   --  Wakeup Flag For LLWU_P1
   type PF1_WUF1_Field is
     (
      --  LLWU_P1 input was not a wakeup source
      PF1_WUF1_Field_0,
      --  LLWU_P1 input was a wakeup source
      PF1_WUF1_Field_1)
     with Size => 1;
   for PF1_WUF1_Field use
     (PF1_WUF1_Field_0 => 0,
      PF1_WUF1_Field_1 => 1);

   --  Wakeup Flag For LLWU_P2
   type PF1_WUF2_Field is
     (
      --  LLWU_P2 input was not a wakeup source
      PF1_WUF2_Field_0,
      --  LLWU_P2 input was a wakeup source
      PF1_WUF2_Field_1)
     with Size => 1;
   for PF1_WUF2_Field use
     (PF1_WUF2_Field_0 => 0,
      PF1_WUF2_Field_1 => 1);

   --  Wakeup Flag For LLWU_P3
   type PF1_WUF3_Field is
     (
      --  LLWU_P3 input was not a wakeup source
      PF1_WUF3_Field_0,
      --  LLWU_P3 input was a wakeup source
      PF1_WUF3_Field_1)
     with Size => 1;
   for PF1_WUF3_Field use
     (PF1_WUF3_Field_0 => 0,
      PF1_WUF3_Field_1 => 1);

   --  Wakeup Flag For LLWU_P4
   type PF1_WUF4_Field is
     (
      --  LLWU_P4 input was not a wakeup source
      PF1_WUF4_Field_0,
      --  LLWU_P4 input was a wakeup source
      PF1_WUF4_Field_1)
     with Size => 1;
   for PF1_WUF4_Field use
     (PF1_WUF4_Field_0 => 0,
      PF1_WUF4_Field_1 => 1);

   --  Wakeup Flag For LLWU_P5
   type PF1_WUF5_Field is
     (
      --  LLWU_P5 input was not a wakeup source
      PF1_WUF5_Field_0,
      --  LLWU_P5 input was a wakeup source
      PF1_WUF5_Field_1)
     with Size => 1;
   for PF1_WUF5_Field use
     (PF1_WUF5_Field_0 => 0,
      PF1_WUF5_Field_1 => 1);

   --  Wakeup Flag For LLWU_P6
   type PF1_WUF6_Field is
     (
      --  LLWU_P6 input was not a wakeup source
      PF1_WUF6_Field_0,
      --  LLWU_P6 input was a wakeup source
      PF1_WUF6_Field_1)
     with Size => 1;
   for PF1_WUF6_Field use
     (PF1_WUF6_Field_0 => 0,
      PF1_WUF6_Field_1 => 1);

   --  Wakeup Flag For LLWU_P7
   type PF1_WUF7_Field is
     (
      --  LLWU_P7 input was not a wakeup source
      PF1_WUF7_Field_0,
      --  LLWU_P7 input was a wakeup source
      PF1_WUF7_Field_1)
     with Size => 1;
   for PF1_WUF7_Field use
     (PF1_WUF7_Field_0 => 0,
      PF1_WUF7_Field_1 => 1);

   --  LLWU Pin Flag 1 register
   type LLWU_PF1_Register is record
      --  Wakeup Flag For LLWU_P0
      WUF0 : PF1_WUF0_Field := NRF_SVD.LLWU.PF1_WUF0_Field_0;
      --  Wakeup Flag For LLWU_P1
      WUF1 : PF1_WUF1_Field := NRF_SVD.LLWU.PF1_WUF1_Field_0;
      --  Wakeup Flag For LLWU_P2
      WUF2 : PF1_WUF2_Field := NRF_SVD.LLWU.PF1_WUF2_Field_0;
      --  Wakeup Flag For LLWU_P3
      WUF3 : PF1_WUF3_Field := NRF_SVD.LLWU.PF1_WUF3_Field_0;
      --  Wakeup Flag For LLWU_P4
      WUF4 : PF1_WUF4_Field := NRF_SVD.LLWU.PF1_WUF4_Field_0;
      --  Wakeup Flag For LLWU_P5
      WUF5 : PF1_WUF5_Field := NRF_SVD.LLWU.PF1_WUF5_Field_0;
      --  Wakeup Flag For LLWU_P6
      WUF6 : PF1_WUF6_Field := NRF_SVD.LLWU.PF1_WUF6_Field_0;
      --  Wakeup Flag For LLWU_P7
      WUF7 : PF1_WUF7_Field := NRF_SVD.LLWU.PF1_WUF7_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LLWU_PF1_Register use record
      WUF0 at 0 range 0 .. 0;
      WUF1 at 0 range 1 .. 1;
      WUF2 at 0 range 2 .. 2;
      WUF3 at 0 range 3 .. 3;
      WUF4 at 0 range 4 .. 4;
      WUF5 at 0 range 5 .. 5;
      WUF6 at 0 range 6 .. 6;
      WUF7 at 0 range 7 .. 7;
   end record;

   --  Wakeup Flag For LLWU_P8
   type PF2_WUF8_Field is
     (
      --  LLWU_P8 input was not a wakeup source
      PF2_WUF8_Field_0,
      --  LLWU_P8 input was a wakeup source
      PF2_WUF8_Field_1)
     with Size => 1;
   for PF2_WUF8_Field use
     (PF2_WUF8_Field_0 => 0,
      PF2_WUF8_Field_1 => 1);

   --  Wakeup Flag For LLWU_P9
   type PF2_WUF9_Field is
     (
      --  LLWU_P9 input was not a wakeup source
      PF2_WUF9_Field_0,
      --  LLWU_P9 input was a wakeup source
      PF2_WUF9_Field_1)
     with Size => 1;
   for PF2_WUF9_Field use
     (PF2_WUF9_Field_0 => 0,
      PF2_WUF9_Field_1 => 1);

   --  Wakeup Flag For LLWU_P10
   type PF2_WUF10_Field is
     (
      --  LLWU_P10 input was not a wakeup source
      PF2_WUF10_Field_0,
      --  LLWU_P10 input was a wakeup source
      PF2_WUF10_Field_1)
     with Size => 1;
   for PF2_WUF10_Field use
     (PF2_WUF10_Field_0 => 0,
      PF2_WUF10_Field_1 => 1);

   --  Wakeup Flag For LLWU_P11
   type PF2_WUF11_Field is
     (
      --  LLWU_P11 input was not a wakeup source
      PF2_WUF11_Field_0,
      --  LLWU_P11 input was a wakeup source
      PF2_WUF11_Field_1)
     with Size => 1;
   for PF2_WUF11_Field use
     (PF2_WUF11_Field_0 => 0,
      PF2_WUF11_Field_1 => 1);

   --  Wakeup Flag For LLWU_P12
   type PF2_WUF12_Field is
     (
      --  LLWU_P12 input was not a wakeup source
      PF2_WUF12_Field_0,
      --  LLWU_P12 input was a wakeup source
      PF2_WUF12_Field_1)
     with Size => 1;
   for PF2_WUF12_Field use
     (PF2_WUF12_Field_0 => 0,
      PF2_WUF12_Field_1 => 1);

   --  Wakeup Flag For LLWU_P13
   type PF2_WUF13_Field is
     (
      --  LLWU_P13 input was not a wakeup source
      PF2_WUF13_Field_0,
      --  LLWU_P13 input was a wakeup source
      PF2_WUF13_Field_1)
     with Size => 1;
   for PF2_WUF13_Field use
     (PF2_WUF13_Field_0 => 0,
      PF2_WUF13_Field_1 => 1);

   --  Wakeup Flag For LLWU_P14
   type PF2_WUF14_Field is
     (
      --  LLWU_P14 input was not a wakeup source
      PF2_WUF14_Field_0,
      --  LLWU_P14 input was a wakeup source
      PF2_WUF14_Field_1)
     with Size => 1;
   for PF2_WUF14_Field use
     (PF2_WUF14_Field_0 => 0,
      PF2_WUF14_Field_1 => 1);

   --  Wakeup Flag For LLWU_P15
   type PF2_WUF15_Field is
     (
      --  LLWU_P15 input was not a wakeup source
      PF2_WUF15_Field_0,
      --  LLWU_P15 input was a wakeup source
      PF2_WUF15_Field_1)
     with Size => 1;
   for PF2_WUF15_Field use
     (PF2_WUF15_Field_0 => 0,
      PF2_WUF15_Field_1 => 1);

   --  LLWU Pin Flag 2 register
   type LLWU_PF2_Register is record
      --  Wakeup Flag For LLWU_P8
      WUF8  : PF2_WUF8_Field := NRF_SVD.LLWU.PF2_WUF8_Field_0;
      --  Wakeup Flag For LLWU_P9
      WUF9  : PF2_WUF9_Field := NRF_SVD.LLWU.PF2_WUF9_Field_0;
      --  Wakeup Flag For LLWU_P10
      WUF10 : PF2_WUF10_Field := NRF_SVD.LLWU.PF2_WUF10_Field_0;
      --  Wakeup Flag For LLWU_P11
      WUF11 : PF2_WUF11_Field := NRF_SVD.LLWU.PF2_WUF11_Field_0;
      --  Wakeup Flag For LLWU_P12
      WUF12 : PF2_WUF12_Field := NRF_SVD.LLWU.PF2_WUF12_Field_0;
      --  Wakeup Flag For LLWU_P13
      WUF13 : PF2_WUF13_Field := NRF_SVD.LLWU.PF2_WUF13_Field_0;
      --  Wakeup Flag For LLWU_P14
      WUF14 : PF2_WUF14_Field := NRF_SVD.LLWU.PF2_WUF14_Field_0;
      --  Wakeup Flag For LLWU_P15
      WUF15 : PF2_WUF15_Field := NRF_SVD.LLWU.PF2_WUF15_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LLWU_PF2_Register use record
      WUF8  at 0 range 0 .. 0;
      WUF9  at 0 range 1 .. 1;
      WUF10 at 0 range 2 .. 2;
      WUF11 at 0 range 3 .. 3;
      WUF12 at 0 range 4 .. 4;
      WUF13 at 0 range 5 .. 5;
      WUF14 at 0 range 6 .. 6;
      WUF15 at 0 range 7 .. 7;
   end record;

   --  Wakeup Flag For LLWU_P16
   type PF3_WUF16_Field is
     (
      --  LLWU_P16 input was not a wakeup source
      PF3_WUF16_Field_0,
      --  LLWU_P16 input was a wakeup source
      PF3_WUF16_Field_1)
     with Size => 1;
   for PF3_WUF16_Field use
     (PF3_WUF16_Field_0 => 0,
      PF3_WUF16_Field_1 => 1);

   --  Wakeup Flag For LLWU_P17
   type PF3_WUF17_Field is
     (
      --  LLWU_P17 input was not a wakeup source
      PF3_WUF17_Field_0,
      --  LLWU_P17 input was a wakeup source
      PF3_WUF17_Field_1)
     with Size => 1;
   for PF3_WUF17_Field use
     (PF3_WUF17_Field_0 => 0,
      PF3_WUF17_Field_1 => 1);

   --  Wakeup Flag For LLWU_P18
   type PF3_WUF18_Field is
     (
      --  LLWU_P18 input was not a wakeup source
      PF3_WUF18_Field_0,
      --  LLWU_P18 input was a wakeup source
      PF3_WUF18_Field_1)
     with Size => 1;
   for PF3_WUF18_Field use
     (PF3_WUF18_Field_0 => 0,
      PF3_WUF18_Field_1 => 1);

   --  Wakeup Flag For LLWU_P19
   type PF3_WUF19_Field is
     (
      --  LLWU_P19 input was not a wakeup source
      PF3_WUF19_Field_0,
      --  LLWU_P19 input was a wakeup source
      PF3_WUF19_Field_1)
     with Size => 1;
   for PF3_WUF19_Field use
     (PF3_WUF19_Field_0 => 0,
      PF3_WUF19_Field_1 => 1);

   --  Wakeup Flag For LLWU_P20
   type PF3_WUF20_Field is
     (
      --  LLWU_P20 input was not a wakeup source
      PF3_WUF20_Field_0,
      --  LLWU_P20 input was a wakeup source
      PF3_WUF20_Field_1)
     with Size => 1;
   for PF3_WUF20_Field use
     (PF3_WUF20_Field_0 => 0,
      PF3_WUF20_Field_1 => 1);

   --  Wakeup Flag For LLWU_P21
   type PF3_WUF21_Field is
     (
      --  LLWU_P21 input was not a wakeup source
      PF3_WUF21_Field_0,
      --  LLWU_P21 input was a wakeup source
      PF3_WUF21_Field_1)
     with Size => 1;
   for PF3_WUF21_Field use
     (PF3_WUF21_Field_0 => 0,
      PF3_WUF21_Field_1 => 1);

   --  Wakeup Flag For LLWU_P22
   type PF3_WUF22_Field is
     (
      --  LLWU_P22 input was not a wakeup source
      PF3_WUF22_Field_0,
      --  LLWU_P22 input was a wakeup source
      PF3_WUF22_Field_1)
     with Size => 1;
   for PF3_WUF22_Field use
     (PF3_WUF22_Field_0 => 0,
      PF3_WUF22_Field_1 => 1);

   --  Wakeup Flag For LLWU_P23
   type PF3_WUF23_Field is
     (
      --  LLWU_P23 input was not a wakeup source
      PF3_WUF23_Field_0,
      --  LLWU_P23 input was a wakeup source
      PF3_WUF23_Field_1)
     with Size => 1;
   for PF3_WUF23_Field use
     (PF3_WUF23_Field_0 => 0,
      PF3_WUF23_Field_1 => 1);

   --  LLWU Pin Flag 3 register
   type LLWU_PF3_Register is record
      --  Wakeup Flag For LLWU_P16
      WUF16 : PF3_WUF16_Field := NRF_SVD.LLWU.PF3_WUF16_Field_0;
      --  Wakeup Flag For LLWU_P17
      WUF17 : PF3_WUF17_Field := NRF_SVD.LLWU.PF3_WUF17_Field_0;
      --  Wakeup Flag For LLWU_P18
      WUF18 : PF3_WUF18_Field := NRF_SVD.LLWU.PF3_WUF18_Field_0;
      --  Wakeup Flag For LLWU_P19
      WUF19 : PF3_WUF19_Field := NRF_SVD.LLWU.PF3_WUF19_Field_0;
      --  Wakeup Flag For LLWU_P20
      WUF20 : PF3_WUF20_Field := NRF_SVD.LLWU.PF3_WUF20_Field_0;
      --  Wakeup Flag For LLWU_P21
      WUF21 : PF3_WUF21_Field := NRF_SVD.LLWU.PF3_WUF21_Field_0;
      --  Wakeup Flag For LLWU_P22
      WUF22 : PF3_WUF22_Field := NRF_SVD.LLWU.PF3_WUF22_Field_0;
      --  Wakeup Flag For LLWU_P23
      WUF23 : PF3_WUF23_Field := NRF_SVD.LLWU.PF3_WUF23_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LLWU_PF3_Register use record
      WUF16 at 0 range 0 .. 0;
      WUF17 at 0 range 1 .. 1;
      WUF18 at 0 range 2 .. 2;
      WUF19 at 0 range 3 .. 3;
      WUF20 at 0 range 4 .. 4;
      WUF21 at 0 range 5 .. 5;
      WUF22 at 0 range 6 .. 6;
      WUF23 at 0 range 7 .. 7;
   end record;

   --  Wakeup Flag For LLWU_P24
   type PF4_WUF24_Field is
     (
      --  LLWU_P24 input was not a wakeup source
      PF4_WUF24_Field_0,
      --  LLWU_P24 input was a wakeup source
      PF4_WUF24_Field_1)
     with Size => 1;
   for PF4_WUF24_Field use
     (PF4_WUF24_Field_0 => 0,
      PF4_WUF24_Field_1 => 1);

   --  Wakeup Flag For LLWU_P25
   type PF4_WUF25_Field is
     (
      --  LLWU_P25 input was not a wakeup source
      PF4_WUF25_Field_0,
      --  LLWU_P25 input was a wakeup source
      PF4_WUF25_Field_1)
     with Size => 1;
   for PF4_WUF25_Field use
     (PF4_WUF25_Field_0 => 0,
      PF4_WUF25_Field_1 => 1);

   --  Wakeup Flag For LLWU_P26
   type PF4_WUF26_Field is
     (
      --  LLWU_P26 input was not a wakeup source
      PF4_WUF26_Field_0,
      --  LLWU_P26 input was a wakeup source
      PF4_WUF26_Field_1)
     with Size => 1;
   for PF4_WUF26_Field use
     (PF4_WUF26_Field_0 => 0,
      PF4_WUF26_Field_1 => 1);

   --  Wakeup Flag For LLWU_P27
   type PF4_WUF27_Field is
     (
      --  LLWU_P27 input was not a wakeup source
      PF4_WUF27_Field_0,
      --  LLWU_P27 input was a wakeup source
      PF4_WUF27_Field_1)
     with Size => 1;
   for PF4_WUF27_Field use
     (PF4_WUF27_Field_0 => 0,
      PF4_WUF27_Field_1 => 1);

   --  Wakeup Flag For LLWU_P28
   type PF4_WUF28_Field is
     (
      --  LLWU_P28 input was not a wakeup source
      PF4_WUF28_Field_0,
      --  LLWU_P28 input was a wakeup source
      PF4_WUF28_Field_1)
     with Size => 1;
   for PF4_WUF28_Field use
     (PF4_WUF28_Field_0 => 0,
      PF4_WUF28_Field_1 => 1);

   --  Wakeup Flag For LLWU_P29
   type PF4_WUF29_Field is
     (
      --  LLWU_P29 input was not a wakeup source
      PF4_WUF29_Field_0,
      --  LLWU_P29 input was a wakeup source
      PF4_WUF29_Field_1)
     with Size => 1;
   for PF4_WUF29_Field use
     (PF4_WUF29_Field_0 => 0,
      PF4_WUF29_Field_1 => 1);

   --  Wakeup Flag For LLWU_P30
   type PF4_WUF30_Field is
     (
      --  LLWU_P30 input was not a wakeup source
      PF4_WUF30_Field_0,
      --  LLWU_P30 input was a wakeup source
      PF4_WUF30_Field_1)
     with Size => 1;
   for PF4_WUF30_Field use
     (PF4_WUF30_Field_0 => 0,
      PF4_WUF30_Field_1 => 1);

   --  Wakeup Flag For LLWU_P31
   type PF4_WUF31_Field is
     (
      --  LLWU_P31 input was not a wakeup source
      PF4_WUF31_Field_0,
      --  LLWU_P31 input was a wakeup source
      PF4_WUF31_Field_1)
     with Size => 1;
   for PF4_WUF31_Field use
     (PF4_WUF31_Field_0 => 0,
      PF4_WUF31_Field_1 => 1);

   --  LLWU Pin Flag 4 register
   type LLWU_PF4_Register is record
      --  Wakeup Flag For LLWU_P24
      WUF24 : PF4_WUF24_Field := NRF_SVD.LLWU.PF4_WUF24_Field_0;
      --  Wakeup Flag For LLWU_P25
      WUF25 : PF4_WUF25_Field := NRF_SVD.LLWU.PF4_WUF25_Field_0;
      --  Wakeup Flag For LLWU_P26
      WUF26 : PF4_WUF26_Field := NRF_SVD.LLWU.PF4_WUF26_Field_0;
      --  Wakeup Flag For LLWU_P27
      WUF27 : PF4_WUF27_Field := NRF_SVD.LLWU.PF4_WUF27_Field_0;
      --  Wakeup Flag For LLWU_P28
      WUF28 : PF4_WUF28_Field := NRF_SVD.LLWU.PF4_WUF28_Field_0;
      --  Wakeup Flag For LLWU_P29
      WUF29 : PF4_WUF29_Field := NRF_SVD.LLWU.PF4_WUF29_Field_0;
      --  Wakeup Flag For LLWU_P30
      WUF30 : PF4_WUF30_Field := NRF_SVD.LLWU.PF4_WUF30_Field_0;
      --  Wakeup Flag For LLWU_P31
      WUF31 : PF4_WUF31_Field := NRF_SVD.LLWU.PF4_WUF31_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LLWU_PF4_Register use record
      WUF24 at 0 range 0 .. 0;
      WUF25 at 0 range 1 .. 1;
      WUF26 at 0 range 2 .. 2;
      WUF27 at 0 range 3 .. 3;
      WUF28 at 0 range 4 .. 4;
      WUF29 at 0 range 5 .. 5;
      WUF30 at 0 range 6 .. 6;
      WUF31 at 0 range 7 .. 7;
   end record;

   --  Wakeup flag For module 0
   type MF5_MWUF0_Field is
     (
      --  Module 0 input was not a wakeup source
      MF5_MWUF0_Field_0,
      --  Module 0 input was a wakeup source
      MF5_MWUF0_Field_1)
     with Size => 1;
   for MF5_MWUF0_Field use
     (MF5_MWUF0_Field_0 => 0,
      MF5_MWUF0_Field_1 => 1);

   --  Wakeup flag For module 1
   type MF5_MWUF1_Field is
     (
      --  Module 1 input was not a wakeup source
      MF5_MWUF1_Field_0,
      --  Module 1 input was a wakeup source
      MF5_MWUF1_Field_1)
     with Size => 1;
   for MF5_MWUF1_Field use
     (MF5_MWUF1_Field_0 => 0,
      MF5_MWUF1_Field_1 => 1);

   --  Wakeup flag For module 2
   type MF5_MWUF2_Field is
     (
      --  Module 2 input was not a wakeup source
      MF5_MWUF2_Field_0,
      --  Module 2 input was a wakeup source
      MF5_MWUF2_Field_1)
     with Size => 1;
   for MF5_MWUF2_Field use
     (MF5_MWUF2_Field_0 => 0,
      MF5_MWUF2_Field_1 => 1);

   --  Wakeup flag For module 3
   type MF5_MWUF3_Field is
     (
      --  Module 3 input was not a wakeup source
      MF5_MWUF3_Field_0,
      --  Module 3 input was a wakeup source
      MF5_MWUF3_Field_1)
     with Size => 1;
   for MF5_MWUF3_Field use
     (MF5_MWUF3_Field_0 => 0,
      MF5_MWUF3_Field_1 => 1);

   --  Wakeup flag For module 4
   type MF5_MWUF4_Field is
     (
      --  Module 4 input was not a wakeup source
      MF5_MWUF4_Field_0,
      --  Module 4 input was a wakeup source
      MF5_MWUF4_Field_1)
     with Size => 1;
   for MF5_MWUF4_Field use
     (MF5_MWUF4_Field_0 => 0,
      MF5_MWUF4_Field_1 => 1);

   --  Wakeup flag For module 5
   type MF5_MWUF5_Field is
     (
      --  Module 5 input was not a wakeup source
      MF5_MWUF5_Field_0,
      --  Module 5 input was a wakeup source
      MF5_MWUF5_Field_1)
     with Size => 1;
   for MF5_MWUF5_Field use
     (MF5_MWUF5_Field_0 => 0,
      MF5_MWUF5_Field_1 => 1);

   --  Wakeup flag For module 6
   type MF5_MWUF6_Field is
     (
      --  Module 6 input was not a wakeup source
      MF5_MWUF6_Field_0,
      --  Module 6 input was a wakeup source
      MF5_MWUF6_Field_1)
     with Size => 1;
   for MF5_MWUF6_Field use
     (MF5_MWUF6_Field_0 => 0,
      MF5_MWUF6_Field_1 => 1);

   --  Wakeup flag For module 7
   type MF5_MWUF7_Field is
     (
      --  Module 7 input was not a wakeup source
      MF5_MWUF7_Field_0,
      --  Module 7 input was a wakeup source
      MF5_MWUF7_Field_1)
     with Size => 1;
   for MF5_MWUF7_Field use
     (MF5_MWUF7_Field_0 => 0,
      MF5_MWUF7_Field_1 => 1);

   --  LLWU Module Flag 5 register
   type LLWU_MF5_Register is record
      --  Read-only. Wakeup flag For module 0
      MWUF0 : MF5_MWUF0_Field;
      --  Read-only. Wakeup flag For module 1
      MWUF1 : MF5_MWUF1_Field;
      --  Read-only. Wakeup flag For module 2
      MWUF2 : MF5_MWUF2_Field;
      --  Read-only. Wakeup flag For module 3
      MWUF3 : MF5_MWUF3_Field;
      --  Read-only. Wakeup flag For module 4
      MWUF4 : MF5_MWUF4_Field;
      --  Read-only. Wakeup flag For module 5
      MWUF5 : MF5_MWUF5_Field;
      --  Read-only. Wakeup flag For module 6
      MWUF6 : MF5_MWUF6_Field;
      --  Read-only. Wakeup flag For module 7
      MWUF7 : MF5_MWUF7_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LLWU_MF5_Register use record
      MWUF0 at 0 range 0 .. 0;
      MWUF1 at 0 range 1 .. 1;
      MWUF2 at 0 range 2 .. 2;
      MWUF3 at 0 range 3 .. 3;
      MWUF4 at 0 range 4 .. 4;
      MWUF5 at 0 range 5 .. 5;
      MWUF6 at 0 range 6 .. 6;
      MWUF7 at 0 range 7 .. 7;
   end record;

   --  Filter Pin Select
   type FILT1_FILTSEL_Field is
     (
      --  Select LLWU_P0 for filter
      FILT1_FILTSEL_Field_00000,
      --  Select LLWU_P31 for filter
      FILT1_FILTSEL_Field_11111)
     with Size => 5;
   for FILT1_FILTSEL_Field use
     (FILT1_FILTSEL_Field_00000 => 0,
      FILT1_FILTSEL_Field_11111 => 31);

   --  Digital Filter On External Pin
   type FILT1_FILTE_Field is
     (
      --  Filter disabled
      FILT1_FILTE_Field_00,
      --  Filter posedge detect enabled
      FILT1_FILTE_Field_01,
      --  Filter negedge detect enabled
      FILT1_FILTE_Field_10,
      --  Filter any edge detect enabled
      FILT1_FILTE_Field_11)
     with Size => 2;
   for FILT1_FILTE_Field use
     (FILT1_FILTE_Field_00 => 0,
      FILT1_FILTE_Field_01 => 1,
      FILT1_FILTE_Field_10 => 2,
      FILT1_FILTE_Field_11 => 3);

   --  Filter Detect Flag
   type FILT1_FILTF_Field is
     (
      --  Pin Filter 1 was not a wakeup source
      FILT1_FILTF_Field_0,
      --  Pin Filter 1 was a wakeup source
      FILT1_FILTF_Field_1)
     with Size => 1;
   for FILT1_FILTF_Field use
     (FILT1_FILTF_Field_0 => 0,
      FILT1_FILTF_Field_1 => 1);

   --  LLWU Pin Filter 1 register
   type FILT_Register is record
      --  Filter Pin Select
      FILTSEL : FILT1_FILTSEL_Field := NRF_SVD.LLWU.FILT1_FILTSEL_Field_00000;
      --  Digital Filter On External Pin
      FILTE   : FILT1_FILTE_Field := NRF_SVD.LLWU.FILT1_FILTE_Field_00;
      --  Filter Detect Flag
      FILTF   : FILT1_FILTF_Field := NRF_SVD.LLWU.FILT1_FILTF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FILT_Register use record
      FILTSEL at 0 range 0 .. 4;
      FILTE   at 0 range 5 .. 6;
      FILTF   at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low leakage wakeup unit
   type LLWU_Peripheral is record
      --  LLWU Pin Enable 1 register
      PE1   : aliased LLWU_PE1_Register;
      --  LLWU Pin Enable 2 register
      PE2   : aliased LLWU_PE2_Register;
      --  LLWU Pin Enable 3 register
      PE3   : aliased LLWU_PE3_Register;
      --  LLWU Pin Enable 4 register
      PE4   : aliased LLWU_PE4_Register;
      --  LLWU Pin Enable 5 register
      PE5   : aliased LLWU_PE5_Register;
      --  LLWU Pin Enable 6 register
      PE6   : aliased LLWU_PE6_Register;
      --  LLWU Pin Enable 7 register
      PE7   : aliased LLWU_PE7_Register;
      --  LLWU Pin Enable 8 register
      PE8   : aliased LLWU_PE8_Register;
      --  LLWU Module Enable register
      ME    : aliased LLWU_ME_Register;
      --  LLWU Pin Flag 1 register
      PF1   : aliased LLWU_PF1_Register;
      --  LLWU Pin Flag 2 register
      PF2   : aliased LLWU_PF2_Register;
      --  LLWU Pin Flag 3 register
      PF3   : aliased LLWU_PF3_Register;
      --  LLWU Pin Flag 4 register
      PF4   : aliased LLWU_PF4_Register;
      --  LLWU Module Flag 5 register
      MF5   : aliased LLWU_MF5_Register;
      --  LLWU Pin Filter 1 register
      FILT1 : aliased FILT_Register;
      --  LLWU Pin Filter 2 register
      FILT2 : aliased FILT_Register;
   end record
     with Volatile;

   for LLWU_Peripheral use record
      PE1   at 16#0# range 0 .. 7;
      PE2   at 16#1# range 0 .. 7;
      PE3   at 16#2# range 0 .. 7;
      PE4   at 16#3# range 0 .. 7;
      PE5   at 16#4# range 0 .. 7;
      PE6   at 16#5# range 0 .. 7;
      PE7   at 16#6# range 0 .. 7;
      PE8   at 16#7# range 0 .. 7;
      ME    at 16#8# range 0 .. 7;
      PF1   at 16#9# range 0 .. 7;
      PF2   at 16#A# range 0 .. 7;
      PF3   at 16#B# range 0 .. 7;
      PF4   at 16#C# range 0 .. 7;
      MF5   at 16#D# range 0 .. 7;
      FILT1 at 16#E# range 0 .. 7;
      FILT2 at 16#F# range 0 .. 7;
   end record;

   --  Low leakage wakeup unit
   LLWU_Periph : aliased LLWU_Peripheral
     with Import, Address => LLWU_Base;

end NRF_SVD.LLWU;
