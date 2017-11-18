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

--  This spec has been automatically generated from MKV42F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  AND/OR/INVERT module
package NRF_SVD.AOI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Product term 1, D input configuration
   type BFCRT010_PT1_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      BFCRT010_PT1_DC_Field_00,
      --  Pass the D input in this product term
      BFCRT010_PT1_DC_Field_01,
      --  Complement the D input in this product term
      BFCRT010_PT1_DC_Field_10,
      --  Force the D input in this product term to a logical one
      BFCRT010_PT1_DC_Field_11)
     with Size => 2;
   for BFCRT010_PT1_DC_Field use
     (BFCRT010_PT1_DC_Field_00 => 0,
      BFCRT010_PT1_DC_Field_01 => 1,
      BFCRT010_PT1_DC_Field_10 => 2,
      BFCRT010_PT1_DC_Field_11 => 3);

   --  Product term 1, C input configuration
   type BFCRT010_PT1_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      BFCRT010_PT1_CC_Field_00,
      --  Pass the C input in this product term
      BFCRT010_PT1_CC_Field_01,
      --  Complement the C input in this product term
      BFCRT010_PT1_CC_Field_10,
      --  Force the C input in this product term to a logical one
      BFCRT010_PT1_CC_Field_11)
     with Size => 2;
   for BFCRT010_PT1_CC_Field use
     (BFCRT010_PT1_CC_Field_00 => 0,
      BFCRT010_PT1_CC_Field_01 => 1,
      BFCRT010_PT1_CC_Field_10 => 2,
      BFCRT010_PT1_CC_Field_11 => 3);

   --  Product term 1, B input configuration
   type BFCRT010_PT1_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      BFCRT010_PT1_BC_Field_00,
      --  Pass the B input in this product term
      BFCRT010_PT1_BC_Field_01,
      --  Complement the B input in this product term
      BFCRT010_PT1_BC_Field_10,
      --  Force the B input in this product term to a logical one
      BFCRT010_PT1_BC_Field_11)
     with Size => 2;
   for BFCRT010_PT1_BC_Field use
     (BFCRT010_PT1_BC_Field_00 => 0,
      BFCRT010_PT1_BC_Field_01 => 1,
      BFCRT010_PT1_BC_Field_10 => 2,
      BFCRT010_PT1_BC_Field_11 => 3);

   --  Product term 1, A input configuration
   type BFCRT010_PT1_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      BFCRT010_PT1_AC_Field_00,
      --  Pass the A input in this product term
      BFCRT010_PT1_AC_Field_01,
      --  Complement the A input in this product term
      BFCRT010_PT1_AC_Field_10,
      --  Force the A input in this product term to a logical one
      BFCRT010_PT1_AC_Field_11)
     with Size => 2;
   for BFCRT010_PT1_AC_Field use
     (BFCRT010_PT1_AC_Field_00 => 0,
      BFCRT010_PT1_AC_Field_01 => 1,
      BFCRT010_PT1_AC_Field_10 => 2,
      BFCRT010_PT1_AC_Field_11 => 3);

   --  Product term 0, D input configuration
   type BFCRT010_PT0_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      BFCRT010_PT0_DC_Field_00,
      --  Pass the D input in this product term
      BFCRT010_PT0_DC_Field_01,
      --  Complement the D input in this product term
      BFCRT010_PT0_DC_Field_10,
      --  Force the D input in this product term to a logical one
      BFCRT010_PT0_DC_Field_11)
     with Size => 2;
   for BFCRT010_PT0_DC_Field use
     (BFCRT010_PT0_DC_Field_00 => 0,
      BFCRT010_PT0_DC_Field_01 => 1,
      BFCRT010_PT0_DC_Field_10 => 2,
      BFCRT010_PT0_DC_Field_11 => 3);

   --  Product term 0, C input configuration
   type BFCRT010_PT0_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      BFCRT010_PT0_CC_Field_00,
      --  Pass the C input in this product term
      BFCRT010_PT0_CC_Field_01,
      --  Complement the C input in this product term
      BFCRT010_PT0_CC_Field_10,
      --  Force the C input in this product term to a logical one
      BFCRT010_PT0_CC_Field_11)
     with Size => 2;
   for BFCRT010_PT0_CC_Field use
     (BFCRT010_PT0_CC_Field_00 => 0,
      BFCRT010_PT0_CC_Field_01 => 1,
      BFCRT010_PT0_CC_Field_10 => 2,
      BFCRT010_PT0_CC_Field_11 => 3);

   --  Product term 0, B input configuration
   type BFCRT010_PT0_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      BFCRT010_PT0_BC_Field_00,
      --  Pass the B input in this product term
      BFCRT010_PT0_BC_Field_01,
      --  Complement the B input in this product term
      BFCRT010_PT0_BC_Field_10,
      --  Force the B input in this product term to a logical one
      BFCRT010_PT0_BC_Field_11)
     with Size => 2;
   for BFCRT010_PT0_BC_Field use
     (BFCRT010_PT0_BC_Field_00 => 0,
      BFCRT010_PT0_BC_Field_01 => 1,
      BFCRT010_PT0_BC_Field_10 => 2,
      BFCRT010_PT0_BC_Field_11 => 3);

   --  Product term 0, A input configuration
   type BFCRT010_PT0_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      BFCRT010_PT0_AC_Field_00,
      --  Pass the A input in this product term
      BFCRT010_PT0_AC_Field_01,
      --  Complement the A input in this product term
      BFCRT010_PT0_AC_Field_10,
      --  Force the A input in this product term to a logical one
      BFCRT010_PT0_AC_Field_11)
     with Size => 2;
   for BFCRT010_PT0_AC_Field use
     (BFCRT010_PT0_AC_Field_00 => 0,
      BFCRT010_PT0_AC_Field_01 => 1,
      BFCRT010_PT0_AC_Field_10 => 2,
      BFCRT010_PT0_AC_Field_11 => 3);

   --  Boolean Function Term 0 and 1 Configuration Register for EVENTn
   type BFCRT_Register is record
      --  Product term 1, D input configuration
      PT1_DC : BFCRT010_PT1_DC_Field := NRF_SVD.AOI.BFCRT010_PT1_DC_Field_00;
      --  Product term 1, C input configuration
      PT1_CC : BFCRT010_PT1_CC_Field := NRF_SVD.AOI.BFCRT010_PT1_CC_Field_00;
      --  Product term 1, B input configuration
      PT1_BC : BFCRT010_PT1_BC_Field := NRF_SVD.AOI.BFCRT010_PT1_BC_Field_00;
      --  Product term 1, A input configuration
      PT1_AC : BFCRT010_PT1_AC_Field := NRF_SVD.AOI.BFCRT010_PT1_AC_Field_00;
      --  Product term 0, D input configuration
      PT0_DC : BFCRT010_PT0_DC_Field := NRF_SVD.AOI.BFCRT010_PT0_DC_Field_00;
      --  Product term 0, C input configuration
      PT0_CC : BFCRT010_PT0_CC_Field := NRF_SVD.AOI.BFCRT010_PT0_CC_Field_00;
      --  Product term 0, B input configuration
      PT0_BC : BFCRT010_PT0_BC_Field := NRF_SVD.AOI.BFCRT010_PT0_BC_Field_00;
      --  Product term 0, A input configuration
      PT0_AC : BFCRT010_PT0_AC_Field := NRF_SVD.AOI.BFCRT010_PT0_AC_Field_00;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for BFCRT_Register use record
      PT1_DC at 0 range 0 .. 1;
      PT1_CC at 0 range 2 .. 3;
      PT1_BC at 0 range 4 .. 5;
      PT1_AC at 0 range 6 .. 7;
      PT0_DC at 0 range 8 .. 9;
      PT0_CC at 0 range 10 .. 11;
      PT0_BC at 0 range 12 .. 13;
      PT0_AC at 0 range 14 .. 15;
   end record;

   --  Product term 3, D input configuration
   type BFCRT230_PT3_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      BFCRT230_PT3_DC_Field_00,
      --  Pass the D input in this product term
      BFCRT230_PT3_DC_Field_01,
      --  Complement the D input in this product term
      BFCRT230_PT3_DC_Field_10,
      --  Force the D input in this product term to a logical one
      BFCRT230_PT3_DC_Field_11)
     with Size => 2;
   for BFCRT230_PT3_DC_Field use
     (BFCRT230_PT3_DC_Field_00 => 0,
      BFCRT230_PT3_DC_Field_01 => 1,
      BFCRT230_PT3_DC_Field_10 => 2,
      BFCRT230_PT3_DC_Field_11 => 3);

   --  Product term 3, C input configuration
   type BFCRT230_PT3_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      BFCRT230_PT3_CC_Field_00,
      --  Pass the C input in this product term
      BFCRT230_PT3_CC_Field_01,
      --  Complement the C input in this product term
      BFCRT230_PT3_CC_Field_10,
      --  Force the C input in this product term to a logical one
      BFCRT230_PT3_CC_Field_11)
     with Size => 2;
   for BFCRT230_PT3_CC_Field use
     (BFCRT230_PT3_CC_Field_00 => 0,
      BFCRT230_PT3_CC_Field_01 => 1,
      BFCRT230_PT3_CC_Field_10 => 2,
      BFCRT230_PT3_CC_Field_11 => 3);

   --  Product term 3, B input configuration
   type BFCRT230_PT3_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      BFCRT230_PT3_BC_Field_00,
      --  Pass the B input in this product term
      BFCRT230_PT3_BC_Field_01,
      --  Complement the B input in this product term
      BFCRT230_PT3_BC_Field_10,
      --  Force the B input in this product term to a logical one
      BFCRT230_PT3_BC_Field_11)
     with Size => 2;
   for BFCRT230_PT3_BC_Field use
     (BFCRT230_PT3_BC_Field_00 => 0,
      BFCRT230_PT3_BC_Field_01 => 1,
      BFCRT230_PT3_BC_Field_10 => 2,
      BFCRT230_PT3_BC_Field_11 => 3);

   --  Product term 3, A input configuration
   type BFCRT230_PT3_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      BFCRT230_PT3_AC_Field_00,
      --  Pass the A input in this product term
      BFCRT230_PT3_AC_Field_01,
      --  Complement the A input in this product term
      BFCRT230_PT3_AC_Field_10,
      --  Force the A input in this product term to a logical one
      BFCRT230_PT3_AC_Field_11)
     with Size => 2;
   for BFCRT230_PT3_AC_Field use
     (BFCRT230_PT3_AC_Field_00 => 0,
      BFCRT230_PT3_AC_Field_01 => 1,
      BFCRT230_PT3_AC_Field_10 => 2,
      BFCRT230_PT3_AC_Field_11 => 3);

   --  Product term 2, D input configuration
   type BFCRT230_PT2_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      BFCRT230_PT2_DC_Field_00,
      --  Pass the D input in this product term
      BFCRT230_PT2_DC_Field_01,
      --  Complement the D input in this product term
      BFCRT230_PT2_DC_Field_10,
      --  Force the D input in this product term to a logical one
      BFCRT230_PT2_DC_Field_11)
     with Size => 2;
   for BFCRT230_PT2_DC_Field use
     (BFCRT230_PT2_DC_Field_00 => 0,
      BFCRT230_PT2_DC_Field_01 => 1,
      BFCRT230_PT2_DC_Field_10 => 2,
      BFCRT230_PT2_DC_Field_11 => 3);

   --  Product term 2, C input configuration
   type BFCRT230_PT2_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      BFCRT230_PT2_CC_Field_00,
      --  Pass the C input in this product term
      BFCRT230_PT2_CC_Field_01,
      --  Complement the C input in this product term
      BFCRT230_PT2_CC_Field_10,
      --  Force the C input in this product term to a logical one
      BFCRT230_PT2_CC_Field_11)
     with Size => 2;
   for BFCRT230_PT2_CC_Field use
     (BFCRT230_PT2_CC_Field_00 => 0,
      BFCRT230_PT2_CC_Field_01 => 1,
      BFCRT230_PT2_CC_Field_10 => 2,
      BFCRT230_PT2_CC_Field_11 => 3);

   --  Product term 2, B input configuration
   type BFCRT230_PT2_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      BFCRT230_PT2_BC_Field_00,
      --  Pass the B input in this product term
      BFCRT230_PT2_BC_Field_01,
      --  Complement the B input in this product term
      BFCRT230_PT2_BC_Field_10,
      --  Force the B input in this product term to a logical one
      BFCRT230_PT2_BC_Field_11)
     with Size => 2;
   for BFCRT230_PT2_BC_Field use
     (BFCRT230_PT2_BC_Field_00 => 0,
      BFCRT230_PT2_BC_Field_01 => 1,
      BFCRT230_PT2_BC_Field_10 => 2,
      BFCRT230_PT2_BC_Field_11 => 3);

   --  Product term 2, A input configuration
   type BFCRT230_PT2_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      BFCRT230_PT2_AC_Field_00,
      --  Pass the A input in this product term
      BFCRT230_PT2_AC_Field_01,
      --  Complement the A input in this product term
      BFCRT230_PT2_AC_Field_10,
      --  Force the A input in this product term to a logical one
      BFCRT230_PT2_AC_Field_11)
     with Size => 2;
   for BFCRT230_PT2_AC_Field use
     (BFCRT230_PT2_AC_Field_00 => 0,
      BFCRT230_PT2_AC_Field_01 => 1,
      BFCRT230_PT2_AC_Field_10 => 2,
      BFCRT230_PT2_AC_Field_11 => 3);

   --  Boolean Function Term 2 and 3 Configuration Register for EVENTn
   type BFCRT_Register_1 is record
      --  Product term 3, D input configuration
      PT3_DC : BFCRT230_PT3_DC_Field := NRF_SVD.AOI.BFCRT230_PT3_DC_Field_00;
      --  Product term 3, C input configuration
      PT3_CC : BFCRT230_PT3_CC_Field := NRF_SVD.AOI.BFCRT230_PT3_CC_Field_00;
      --  Product term 3, B input configuration
      PT3_BC : BFCRT230_PT3_BC_Field := NRF_SVD.AOI.BFCRT230_PT3_BC_Field_00;
      --  Product term 3, A input configuration
      PT3_AC : BFCRT230_PT3_AC_Field := NRF_SVD.AOI.BFCRT230_PT3_AC_Field_00;
      --  Product term 2, D input configuration
      PT2_DC : BFCRT230_PT2_DC_Field := NRF_SVD.AOI.BFCRT230_PT2_DC_Field_00;
      --  Product term 2, C input configuration
      PT2_CC : BFCRT230_PT2_CC_Field := NRF_SVD.AOI.BFCRT230_PT2_CC_Field_00;
      --  Product term 2, B input configuration
      PT2_BC : BFCRT230_PT2_BC_Field := NRF_SVD.AOI.BFCRT230_PT2_BC_Field_00;
      --  Product term 2, A input configuration
      PT2_AC : BFCRT230_PT2_AC_Field := NRF_SVD.AOI.BFCRT230_PT2_AC_Field_00;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for BFCRT_Register_1 use record
      PT3_DC at 0 range 0 .. 1;
      PT3_CC at 0 range 2 .. 3;
      PT3_BC at 0 range 4 .. 5;
      PT3_AC at 0 range 6 .. 7;
      PT2_DC at 0 range 8 .. 9;
      PT2_CC at 0 range 10 .. 11;
      PT2_BC at 0 range 12 .. 13;
      PT2_AC at 0 range 14 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AND/OR/INVERT module
   type AOI_Peripheral is record
      --  Boolean Function Term 0 and 1 Configuration Register for EVENTn
      BFCRT010 : aliased BFCRT_Register;
      --  Boolean Function Term 2 and 3 Configuration Register for EVENTn
      BFCRT230 : aliased BFCRT_Register_1;
      --  Boolean Function Term 0 and 1 Configuration Register for EVENTn
      BFCRT011 : aliased BFCRT_Register;
      --  Boolean Function Term 2 and 3 Configuration Register for EVENTn
      BFCRT231 : aliased BFCRT_Register_1;
      --  Boolean Function Term 0 and 1 Configuration Register for EVENTn
      BFCRT012 : aliased BFCRT_Register;
      --  Boolean Function Term 2 and 3 Configuration Register for EVENTn
      BFCRT232 : aliased BFCRT_Register_1;
      --  Boolean Function Term 0 and 1 Configuration Register for EVENTn
      BFCRT013 : aliased BFCRT_Register;
      --  Boolean Function Term 2 and 3 Configuration Register for EVENTn
      BFCRT233 : aliased BFCRT_Register_1;
   end record
     with Volatile;

   for AOI_Peripheral use record
      BFCRT010 at 16#0# range 0 .. 15;
      BFCRT230 at 16#2# range 0 .. 15;
      BFCRT011 at 16#4# range 0 .. 15;
      BFCRT231 at 16#6# range 0 .. 15;
      BFCRT012 at 16#8# range 0 .. 15;
      BFCRT232 at 16#A# range 0 .. 15;
      BFCRT013 at 16#C# range 0 .. 15;
      BFCRT233 at 16#E# range 0 .. 15;
   end record;

   --  AND/OR/INVERT module
   AOI_Periph : aliased AOI_Peripheral
     with Import, Address => AOI_Base;

end NRF_SVD.AOI;
