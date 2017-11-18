--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.AOI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Product term 1, D input configuration
   type BFCRT010_PT1_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      Pt1_Dc_0,
      --  Pass the D input in this product term
      Pt1_Dc_1,
      --  Complement the D input in this product term
      Pt1_Dc_2,
      --  Force the D input in this product term to a logical one
      Pt1_Dc_3)
     with Size => 2;
   for BFCRT010_PT1_DC_Field use
     (Pt1_Dc_0 => 0,
      Pt1_Dc_1 => 1,
      Pt1_Dc_2 => 2,
      Pt1_Dc_3 => 3);

   --  Product term 1, C input configuration
   type BFCRT010_PT1_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      Pt1_Cc_0,
      --  Pass the C input in this product term
      Pt1_Cc_1,
      --  Complement the C input in this product term
      Pt1_Cc_2,
      --  Force the C input in this product term to a logical one
      Pt1_Cc_3)
     with Size => 2;
   for BFCRT010_PT1_CC_Field use
     (Pt1_Cc_0 => 0,
      Pt1_Cc_1 => 1,
      Pt1_Cc_2 => 2,
      Pt1_Cc_3 => 3);

   --  Product term 1, B input configuration
   type BFCRT010_PT1_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      Pt1_Bc_0,
      --  Pass the B input in this product term
      Pt1_Bc_1,
      --  Complement the B input in this product term
      Pt1_Bc_2,
      --  Force the B input in this product term to a logical one
      Pt1_Bc_3)
     with Size => 2;
   for BFCRT010_PT1_BC_Field use
     (Pt1_Bc_0 => 0,
      Pt1_Bc_1 => 1,
      Pt1_Bc_2 => 2,
      Pt1_Bc_3 => 3);

   --  Product term 1, A input configuration
   type BFCRT010_PT1_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      Pt1_Ac_0,
      --  Pass the A input in this product term
      Pt1_Ac_1,
      --  Complement the A input in this product term
      Pt1_Ac_2,
      --  Force the A input in this product term to a logical one
      Pt1_Ac_3)
     with Size => 2;
   for BFCRT010_PT1_AC_Field use
     (Pt1_Ac_0 => 0,
      Pt1_Ac_1 => 1,
      Pt1_Ac_2 => 2,
      Pt1_Ac_3 => 3);

   --  Product term 0, D input configuration
   type BFCRT010_PT0_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      Pt0_Dc_0,
      --  Pass the D input in this product term
      Pt0_Dc_1,
      --  Complement the D input in this product term
      Pt0_Dc_2,
      --  Force the D input in this product term to a logical one
      Pt0_Dc_3)
     with Size => 2;
   for BFCRT010_PT0_DC_Field use
     (Pt0_Dc_0 => 0,
      Pt0_Dc_1 => 1,
      Pt0_Dc_2 => 2,
      Pt0_Dc_3 => 3);

   --  Product term 0, C input configuration
   type BFCRT010_PT0_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      Pt0_Cc_0,
      --  Pass the C input in this product term
      Pt0_Cc_1,
      --  Complement the C input in this product term
      Pt0_Cc_2,
      --  Force the C input in this product term to a logical one
      Pt0_Cc_3)
     with Size => 2;
   for BFCRT010_PT0_CC_Field use
     (Pt0_Cc_0 => 0,
      Pt0_Cc_1 => 1,
      Pt0_Cc_2 => 2,
      Pt0_Cc_3 => 3);

   --  Product term 0, B input configuration
   type BFCRT010_PT0_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      Pt0_Bc_0,
      --  Pass the B input in this product term
      Pt0_Bc_1,
      --  Complement the B input in this product term
      Pt0_Bc_2,
      --  Force the B input in this product term to a logical one
      Pt0_Bc_3)
     with Size => 2;
   for BFCRT010_PT0_BC_Field use
     (Pt0_Bc_0 => 0,
      Pt0_Bc_1 => 1,
      Pt0_Bc_2 => 2,
      Pt0_Bc_3 => 3);

   --  Product term 0, A input configuration
   type BFCRT010_PT0_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      Pt0_Ac_0,
      --  Pass the A input in this product term
      Pt0_Ac_1,
      --  Complement the A input in this product term
      Pt0_Ac_2,
      --  Force the A input in this product term to a logical one
      Pt0_Ac_3)
     with Size => 2;
   for BFCRT010_PT0_AC_Field use
     (Pt0_Ac_0 => 0,
      Pt0_Ac_1 => 1,
      Pt0_Ac_2 => 2,
      Pt0_Ac_3 => 3);

   --  Boolean Function Term 0 and 1 Configuration Register for EVENTn
   type BFCRT_Register is record
      --  Product term 1, D input configuration
      PT1_DC : BFCRT010_PT1_DC_Field := NRF_SVD.AOI.Pt1_Dc_0;
      --  Product term 1, C input configuration
      PT1_CC : BFCRT010_PT1_CC_Field := NRF_SVD.AOI.Pt1_Cc_0;
      --  Product term 1, B input configuration
      PT1_BC : BFCRT010_PT1_BC_Field := NRF_SVD.AOI.Pt1_Bc_0;
      --  Product term 1, A input configuration
      PT1_AC : BFCRT010_PT1_AC_Field := NRF_SVD.AOI.Pt1_Ac_0;
      --  Product term 0, D input configuration
      PT0_DC : BFCRT010_PT0_DC_Field := NRF_SVD.AOI.Pt0_Dc_0;
      --  Product term 0, C input configuration
      PT0_CC : BFCRT010_PT0_CC_Field := NRF_SVD.AOI.Pt0_Cc_0;
      --  Product term 0, B input configuration
      PT0_BC : BFCRT010_PT0_BC_Field := NRF_SVD.AOI.Pt0_Bc_0;
      --  Product term 0, A input configuration
      PT0_AC : BFCRT010_PT0_AC_Field := NRF_SVD.AOI.Pt0_Ac_0;
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
      Pt3_Dc_0,
      --  Pass the D input in this product term
      Pt3_Dc_1,
      --  Complement the D input in this product term
      Pt3_Dc_2,
      --  Force the D input in this product term to a logical one
      Pt3_Dc_3)
     with Size => 2;
   for BFCRT230_PT3_DC_Field use
     (Pt3_Dc_0 => 0,
      Pt3_Dc_1 => 1,
      Pt3_Dc_2 => 2,
      Pt3_Dc_3 => 3);

   --  Product term 3, C input configuration
   type BFCRT230_PT3_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      Pt3_Cc_0,
      --  Pass the C input in this product term
      Pt3_Cc_1,
      --  Complement the C input in this product term
      Pt3_Cc_2,
      --  Force the C input in this product term to a logical one
      Pt3_Cc_3)
     with Size => 2;
   for BFCRT230_PT3_CC_Field use
     (Pt3_Cc_0 => 0,
      Pt3_Cc_1 => 1,
      Pt3_Cc_2 => 2,
      Pt3_Cc_3 => 3);

   --  Product term 3, B input configuration
   type BFCRT230_PT3_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      Pt3_Bc_0,
      --  Pass the B input in this product term
      Pt3_Bc_1,
      --  Complement the B input in this product term
      Pt3_Bc_2,
      --  Force the B input in this product term to a logical one
      Pt3_Bc_3)
     with Size => 2;
   for BFCRT230_PT3_BC_Field use
     (Pt3_Bc_0 => 0,
      Pt3_Bc_1 => 1,
      Pt3_Bc_2 => 2,
      Pt3_Bc_3 => 3);

   --  Product term 3, A input configuration
   type BFCRT230_PT3_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      Pt3_Ac_0,
      --  Pass the A input in this product term
      Pt3_Ac_1,
      --  Complement the A input in this product term
      Pt3_Ac_2,
      --  Force the A input in this product term to a logical one
      Pt3_Ac_3)
     with Size => 2;
   for BFCRT230_PT3_AC_Field use
     (Pt3_Ac_0 => 0,
      Pt3_Ac_1 => 1,
      Pt3_Ac_2 => 2,
      Pt3_Ac_3 => 3);

   --  Product term 2, D input configuration
   type BFCRT230_PT2_DC_Field is
     (
      --  Force the D input in this product term to a logical zero
      Pt2_Dc_0,
      --  Pass the D input in this product term
      Pt2_Dc_1,
      --  Complement the D input in this product term
      Pt2_Dc_2,
      --  Force the D input in this product term to a logical one
      Pt2_Dc_3)
     with Size => 2;
   for BFCRT230_PT2_DC_Field use
     (Pt2_Dc_0 => 0,
      Pt2_Dc_1 => 1,
      Pt2_Dc_2 => 2,
      Pt2_Dc_3 => 3);

   --  Product term 2, C input configuration
   type BFCRT230_PT2_CC_Field is
     (
      --  Force the C input in this product term to a logical zero
      Pt2_Cc_0,
      --  Pass the C input in this product term
      Pt2_Cc_1,
      --  Complement the C input in this product term
      Pt2_Cc_2,
      --  Force the C input in this product term to a logical one
      Pt2_Cc_3)
     with Size => 2;
   for BFCRT230_PT2_CC_Field use
     (Pt2_Cc_0 => 0,
      Pt2_Cc_1 => 1,
      Pt2_Cc_2 => 2,
      Pt2_Cc_3 => 3);

   --  Product term 2, B input configuration
   type BFCRT230_PT2_BC_Field is
     (
      --  Force the B input in this product term to a logical zero
      Pt2_Bc_0,
      --  Pass the B input in this product term
      Pt2_Bc_1,
      --  Complement the B input in this product term
      Pt2_Bc_2,
      --  Force the B input in this product term to a logical one
      Pt2_Bc_3)
     with Size => 2;
   for BFCRT230_PT2_BC_Field use
     (Pt2_Bc_0 => 0,
      Pt2_Bc_1 => 1,
      Pt2_Bc_2 => 2,
      Pt2_Bc_3 => 3);

   --  Product term 2, A input configuration
   type BFCRT230_PT2_AC_Field is
     (
      --  Force the A input in this product term to a logical zero
      Pt2_Ac_0,
      --  Pass the A input in this product term
      Pt2_Ac_1,
      --  Complement the A input in this product term
      Pt2_Ac_2,
      --  Force the A input in this product term to a logical one
      Pt2_Ac_3)
     with Size => 2;
   for BFCRT230_PT2_AC_Field use
     (Pt2_Ac_0 => 0,
      Pt2_Ac_1 => 1,
      Pt2_Ac_2 => 2,
      Pt2_Ac_3 => 3);

   --  Boolean Function Term 2 and 3 Configuration Register for EVENTn
   type BFCRT_Register_1 is record
      --  Product term 3, D input configuration
      PT3_DC : BFCRT230_PT3_DC_Field := NRF_SVD.AOI.Pt3_Dc_0;
      --  Product term 3, C input configuration
      PT3_CC : BFCRT230_PT3_CC_Field := NRF_SVD.AOI.Pt3_Cc_0;
      --  Product term 3, B input configuration
      PT3_BC : BFCRT230_PT3_BC_Field := NRF_SVD.AOI.Pt3_Bc_0;
      --  Product term 3, A input configuration
      PT3_AC : BFCRT230_PT3_AC_Field := NRF_SVD.AOI.Pt3_Ac_0;
      --  Product term 2, D input configuration
      PT2_DC : BFCRT230_PT2_DC_Field := NRF_SVD.AOI.Pt2_Dc_0;
      --  Product term 2, C input configuration
      PT2_CC : BFCRT230_PT2_CC_Field := NRF_SVD.AOI.Pt2_Cc_0;
      --  Product term 2, B input configuration
      PT2_BC : BFCRT230_PT2_BC_Field := NRF_SVD.AOI.Pt2_Bc_0;
      --  Product term 2, A input configuration
      PT2_AC : BFCRT230_PT2_AC_Field := NRF_SVD.AOI.Pt2_Ac_0;
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
   AOI1_Periph : aliased AOI_Peripheral
     with Import, Address => System'To_Address (16#403B4000#);

   --  AND/OR/INVERT module
   AOI2_Periph : aliased AOI_Peripheral
     with Import, Address => System'To_Address (16#403B8000#);

end NRF_SVD.AOI;
