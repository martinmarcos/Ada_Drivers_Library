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

--  This spec has been automatically generated from MKV56F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Flash Memory Controller
package NRF_SVD.FMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Master 0 Access Protection
   type PFAPR_M0AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M0AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M0AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M0AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M0AP_Field_11)
     with Size => 2;
   for PFAPR_M0AP_Field use
     (PFAPR_M0AP_Field_00 => 0,
      PFAPR_M0AP_Field_01 => 1,
      PFAPR_M0AP_Field_10 => 2,
      PFAPR_M0AP_Field_11 => 3);

   --  Master 1 Access Protection
   type PFAPR_M1AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M1AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M1AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M1AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M1AP_Field_11)
     with Size => 2;
   for PFAPR_M1AP_Field use
     (PFAPR_M1AP_Field_00 => 0,
      PFAPR_M1AP_Field_01 => 1,
      PFAPR_M1AP_Field_10 => 2,
      PFAPR_M1AP_Field_11 => 3);

   --  Master 2 Access Protection
   type PFAPR_M2AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M2AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M2AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M2AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M2AP_Field_11)
     with Size => 2;
   for PFAPR_M2AP_Field use
     (PFAPR_M2AP_Field_00 => 0,
      PFAPR_M2AP_Field_01 => 1,
      PFAPR_M2AP_Field_10 => 2,
      PFAPR_M2AP_Field_11 => 3);

   --  Master 3 Access Protection
   type PFAPR_M3AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M3AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M3AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M3AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M3AP_Field_11)
     with Size => 2;
   for PFAPR_M3AP_Field use
     (PFAPR_M3AP_Field_00 => 0,
      PFAPR_M3AP_Field_01 => 1,
      PFAPR_M3AP_Field_10 => 2,
      PFAPR_M3AP_Field_11 => 3);

   --  Master 0 Prefetch Disable
   type PFAPR_M0PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M0PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M0PFD_Field_1)
     with Size => 1;
   for PFAPR_M0PFD_Field use
     (PFAPR_M0PFD_Field_0 => 0,
      PFAPR_M0PFD_Field_1 => 1);

   --  Master 1 Prefetch Disable
   type PFAPR_M1PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M1PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M1PFD_Field_1)
     with Size => 1;
   for PFAPR_M1PFD_Field use
     (PFAPR_M1PFD_Field_0 => 0,
      PFAPR_M1PFD_Field_1 => 1);

   --  Master 2 Prefetch Disable
   type PFAPR_M2PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M2PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M2PFD_Field_1)
     with Size => 1;
   for PFAPR_M2PFD_Field use
     (PFAPR_M2PFD_Field_0 => 0,
      PFAPR_M2PFD_Field_1 => 1);

   --  Master 3 Prefetch Disable
   type PFAPR_M3PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M3PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M3PFD_Field_1)
     with Size => 1;
   for PFAPR_M3PFD_Field use
     (PFAPR_M3PFD_Field_0 => 0,
      PFAPR_M3PFD_Field_1 => 1);

   --  Flash Access Protection Register
   type FMC_PFAPR_Register is record
      --  Master 0 Access Protection
      M0AP           : PFAPR_M0AP_Field := NRF_SVD.FMC.PFAPR_M0AP_Field_11;
      --  Master 1 Access Protection
      M1AP           : PFAPR_M1AP_Field := NRF_SVD.FMC.PFAPR_M1AP_Field_11;
      --  Master 2 Access Protection
      M2AP           : PFAPR_M2AP_Field := NRF_SVD.FMC.PFAPR_M2AP_Field_11;
      --  Master 3 Access Protection
      M3AP           : PFAPR_M3AP_Field := NRF_SVD.FMC.PFAPR_M3AP_Field_00;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Master 0 Prefetch Disable
      M0PFD          : PFAPR_M0PFD_Field := NRF_SVD.FMC.PFAPR_M0PFD_Field_0;
      --  Master 1 Prefetch Disable
      M1PFD          : PFAPR_M1PFD_Field := NRF_SVD.FMC.PFAPR_M1PFD_Field_0;
      --  Master 2 Prefetch Disable
      M2PFD          : PFAPR_M2PFD_Field := NRF_SVD.FMC.PFAPR_M2PFD_Field_0;
      --  Master 3 Prefetch Disable
      M3PFD          : PFAPR_M3PFD_Field := NRF_SVD.FMC.PFAPR_M3PFD_Field_1;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PFAPR_Register use record
      M0AP           at 0 range 0 .. 1;
      M1AP           at 0 range 2 .. 3;
      M2AP           at 0 range 4 .. 5;
      M3AP           at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      M0PFD          at 0 range 16 .. 16;
      M1PFD          at 0 range 17 .. 17;
      M2PFD          at 0 range 18 .. 18;
      M3PFD          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Bank 0 Instruction Prefetch Enable
   type PFB0CR_B0IPE_Field is
     (
      --  Do not prefetch in response to instruction fetches.
      PFB0CR_B0IPE_Field_0,
      --  Enable prefetches in response to instruction fetches.
      PFB0CR_B0IPE_Field_1)
     with Size => 1;
   for PFB0CR_B0IPE_Field use
     (PFB0CR_B0IPE_Field_0 => 0,
      PFB0CR_B0IPE_Field_1 => 1);

   --  Bank 0 Data Prefetch Enable
   type PFB0CR_B0DPE_Field is
     (
      --  Do not prefetch in response to data references.
      PFB0CR_B0DPE_Field_0,
      --  Enable prefetches in response to data references.
      PFB0CR_B0DPE_Field_1)
     with Size => 1;
   for PFB0CR_B0DPE_Field use
     (PFB0CR_B0DPE_Field_0 => 0,
      PFB0CR_B0DPE_Field_1 => 1);

   --  Bank 0 Memory Width
   type PFB0CR_B0MW_Field is
     (
      --  32 bits
      PFB0CR_B0MW_Field_00,
      --  64 bits
      PFB0CR_B0MW_Field_01,
      --  128 bits
      PFB0CR_B0MW_Field_10,
      --  256 bits
      PFB0CR_B0MW_Field_11)
     with Size => 2;
   for PFB0CR_B0MW_Field use
     (PFB0CR_B0MW_Field_00 => 0,
      PFB0CR_B0MW_Field_01 => 1,
      PFB0CR_B0MW_Field_10 => 2,
      PFB0CR_B0MW_Field_11 => 3);

   --  Invalidate Prefetch Speculation Buffer
   type PFB0CR_S_INV_Field is
     (
      --  Speculation buffer is not affected.
      PFB0CR_S_INV_Field_0,
      --  Invalidate (clear) the speculation buffer.
      PFB0CR_S_INV_Field_1)
     with Size => 1;
   for PFB0CR_S_INV_Field use
     (PFB0CR_S_INV_Field_0 => 0,
      PFB0CR_S_INV_Field_1 => 1);

   subtype FMC_PFB0CR_B0RWSC_Field is HAL.UInt4;

   --  Flash Bank 0 Control Register
   type FMC_PFB0CR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bank 0 Instruction Prefetch Enable
      B0IPE          : PFB0CR_B0IPE_Field := NRF_SVD.FMC.PFB0CR_B0IPE_Field_1;
      --  Bank 0 Data Prefetch Enable
      B0DPE          : PFB0CR_B0DPE_Field := NRF_SVD.FMC.PFB0CR_B0DPE_Field_1;
      --  unspecified
      Reserved_3_16  : HAL.UInt14 := 16#0#;
      --  Read-only. Bank 0 Memory Width
      B0MW           : PFB0CR_B0MW_Field := NRF_SVD.FMC.PFB0CR_B0MW_Field_11;
      --  Write-only. Invalidate Prefetch Speculation Buffer
      S_INV          : PFB0CR_S_INV_Field := NRF_SVD.FMC.PFB0CR_S_INV_Field_0;
      --  unspecified
      Reserved_20_27 : HAL.UInt8 := 16#0#;
      --  Read-only. Bank 0 Read Wait State Control
      B0RWSC         : FMC_PFB0CR_B0RWSC_Field := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PFB0CR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      B0IPE          at 0 range 1 .. 1;
      B0DPE          at 0 range 2 .. 2;
      Reserved_3_16  at 0 range 3 .. 16;
      B0MW           at 0 range 17 .. 18;
      S_INV          at 0 range 19 .. 19;
      Reserved_20_27 at 0 range 20 .. 27;
      B0RWSC         at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Memory Controller
   type FMC_Peripheral is record
      --  Flash Access Protection Register
      PFAPR  : aliased FMC_PFAPR_Register;
      --  Flash Bank 0 Control Register
      PFB0CR : aliased FMC_PFB0CR_Register;
   end record
     with Volatile;

   for FMC_Peripheral use record
      PFAPR  at 16#0# range 0 .. 31;
      PFB0CR at 16#4# range 0 .. 31;
   end record;

   --  Flash Memory Controller
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_Base;

end NRF_SVD.FMC;
