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

--  This spec has been automatically generated from MK22F51212.xml

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

   --  Master 4 Access Protection
   type PFAPR_M4AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M4AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M4AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M4AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M4AP_Field_11)
     with Size => 2;
   for PFAPR_M4AP_Field use
     (PFAPR_M4AP_Field_00 => 0,
      PFAPR_M4AP_Field_01 => 1,
      PFAPR_M4AP_Field_10 => 2,
      PFAPR_M4AP_Field_11 => 3);

   --  Master 5 Access Protection
   type PFAPR_M5AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M5AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M5AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M5AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M5AP_Field_11)
     with Size => 2;
   for PFAPR_M5AP_Field use
     (PFAPR_M5AP_Field_00 => 0,
      PFAPR_M5AP_Field_01 => 1,
      PFAPR_M5AP_Field_10 => 2,
      PFAPR_M5AP_Field_11 => 3);

   --  Master 6 Access Protection
   type PFAPR_M6AP_Field is
     (
      --  No access may be performed by this master
      PFAPR_M6AP_Field_00,
      --  Only read accesses may be performed by this master
      PFAPR_M6AP_Field_01,
      --  Only write accesses may be performed by this master
      PFAPR_M6AP_Field_10,
      --  Both read and write accesses may be performed by this master
      PFAPR_M6AP_Field_11)
     with Size => 2;
   for PFAPR_M6AP_Field use
     (PFAPR_M6AP_Field_00 => 0,
      PFAPR_M6AP_Field_01 => 1,
      PFAPR_M6AP_Field_10 => 2,
      PFAPR_M6AP_Field_11 => 3);

   --  Master 7 Access Protection
   type PFAPR_M7AP_Field is
     (
      --  No access may be performed by this master.
      PFAPR_M7AP_Field_00,
      --  Only read accesses may be performed by this master.
      PFAPR_M7AP_Field_01,
      --  Only write accesses may be performed by this master.
      PFAPR_M7AP_Field_10,
      --  Both read and write accesses may be performed by this master.
      PFAPR_M7AP_Field_11)
     with Size => 2;
   for PFAPR_M7AP_Field use
     (PFAPR_M7AP_Field_00 => 0,
      PFAPR_M7AP_Field_01 => 1,
      PFAPR_M7AP_Field_10 => 2,
      PFAPR_M7AP_Field_11 => 3);

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

   --  Master 4 Prefetch Disable
   type PFAPR_M4PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M4PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M4PFD_Field_1)
     with Size => 1;
   for PFAPR_M4PFD_Field use
     (PFAPR_M4PFD_Field_0 => 0,
      PFAPR_M4PFD_Field_1 => 1);

   --  Master 5 Prefetch Disable
   type PFAPR_M5PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M5PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M5PFD_Field_1)
     with Size => 1;
   for PFAPR_M5PFD_Field use
     (PFAPR_M5PFD_Field_0 => 0,
      PFAPR_M5PFD_Field_1 => 1);

   --  Master 6 Prefetch Disable
   type PFAPR_M6PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M6PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M6PFD_Field_1)
     with Size => 1;
   for PFAPR_M6PFD_Field use
     (PFAPR_M6PFD_Field_0 => 0,
      PFAPR_M6PFD_Field_1 => 1);

   --  Master 7 Prefetch Disable
   type PFAPR_M7PFD_Field is
     (
      --  Prefetching for this master is enabled.
      PFAPR_M7PFD_Field_0,
      --  Prefetching for this master is disabled.
      PFAPR_M7PFD_Field_1)
     with Size => 1;
   for PFAPR_M7PFD_Field use
     (PFAPR_M7PFD_Field_0 => 0,
      PFAPR_M7PFD_Field_1 => 1);

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
      --  Master 4 Access Protection
      M4AP           : PFAPR_M4AP_Field := NRF_SVD.FMC.PFAPR_M4AP_Field_00;
      --  Master 5 Access Protection
      M5AP           : PFAPR_M5AP_Field := NRF_SVD.FMC.PFAPR_M5AP_Field_00;
      --  Master 6 Access Protection
      M6AP           : PFAPR_M6AP_Field := NRF_SVD.FMC.PFAPR_M6AP_Field_00;
      --  Master 7 Access Protection
      M7AP           : PFAPR_M7AP_Field := NRF_SVD.FMC.PFAPR_M7AP_Field_00;
      --  Master 0 Prefetch Disable
      M0PFD          : PFAPR_M0PFD_Field := NRF_SVD.FMC.PFAPR_M0PFD_Field_0;
      --  Master 1 Prefetch Disable
      M1PFD          : PFAPR_M1PFD_Field := NRF_SVD.FMC.PFAPR_M1PFD_Field_0;
      --  Master 2 Prefetch Disable
      M2PFD          : PFAPR_M2PFD_Field := NRF_SVD.FMC.PFAPR_M2PFD_Field_0;
      --  Master 3 Prefetch Disable
      M3PFD          : PFAPR_M3PFD_Field := NRF_SVD.FMC.PFAPR_M3PFD_Field_1;
      --  Master 4 Prefetch Disable
      M4PFD          : PFAPR_M4PFD_Field := NRF_SVD.FMC.PFAPR_M4PFD_Field_1;
      --  Master 5 Prefetch Disable
      M5PFD          : PFAPR_M5PFD_Field := NRF_SVD.FMC.PFAPR_M5PFD_Field_1;
      --  Master 6 Prefetch Disable
      M6PFD          : PFAPR_M6PFD_Field := NRF_SVD.FMC.PFAPR_M6PFD_Field_1;
      --  Master 7 Prefetch Disable
      M7PFD          : PFAPR_M7PFD_Field := NRF_SVD.FMC.PFAPR_M7PFD_Field_1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PFAPR_Register use record
      M0AP           at 0 range 0 .. 1;
      M1AP           at 0 range 2 .. 3;
      M2AP           at 0 range 4 .. 5;
      M3AP           at 0 range 6 .. 7;
      M4AP           at 0 range 8 .. 9;
      M5AP           at 0 range 10 .. 11;
      M6AP           at 0 range 12 .. 13;
      M7AP           at 0 range 14 .. 15;
      M0PFD          at 0 range 16 .. 16;
      M1PFD          at 0 range 17 .. 17;
      M2PFD          at 0 range 18 .. 18;
      M3PFD          at 0 range 19 .. 19;
      M4PFD          at 0 range 20 .. 20;
      M5PFD          at 0 range 21 .. 21;
      M6PFD          at 0 range 22 .. 22;
      M7PFD          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Bank 0 Single Entry Buffer Enable
   type PFB0CR_B0SEBE_Field is
     (
      --  Single entry buffer is disabled.
      PFB0CR_B0SEBE_Field_0,
      --  Single entry buffer is enabled.
      PFB0CR_B0SEBE_Field_1)
     with Size => 1;
   for PFB0CR_B0SEBE_Field use
     (PFB0CR_B0SEBE_Field_0 => 0,
      PFB0CR_B0SEBE_Field_1 => 1);

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

   --  Bank 0 Instruction Cache Enable
   type PFB0CR_B0ICE_Field is
     (
      --  Do not cache instruction fetches.
      PFB0CR_B0ICE_Field_0,
      --  Cache instruction fetches.
      PFB0CR_B0ICE_Field_1)
     with Size => 1;
   for PFB0CR_B0ICE_Field use
     (PFB0CR_B0ICE_Field_0 => 0,
      PFB0CR_B0ICE_Field_1 => 1);

   --  Bank 0 Data Cache Enable
   type PFB0CR_B0DCE_Field is
     (
      --  Do not cache data references.
      PFB0CR_B0DCE_Field_0,
      --  Cache data references.
      PFB0CR_B0DCE_Field_1)
     with Size => 1;
   for PFB0CR_B0DCE_Field use
     (PFB0CR_B0DCE_Field_0 => 0,
      PFB0CR_B0DCE_Field_1 => 1);

   --  Cache Replacement Control
   type PFB0CR_CRC_Field is
     (
      --  LRU replacement algorithm per set across all four ways
      PFB0CR_CRC_Field_000,
      --  Independent LRU with ways [0-1] for ifetches, [2-3] for data
      PFB0CR_CRC_Field_010,
      --  Independent LRU with ways [0-2] for ifetches, [3] for data
      PFB0CR_CRC_Field_011)
     with Size => 3;
   for PFB0CR_CRC_Field use
     (PFB0CR_CRC_Field_000 => 0,
      PFB0CR_CRC_Field_010 => 2,
      PFB0CR_CRC_Field_011 => 3);

   --  Bank 0 Memory Width
   type PFB0CR_B0MW_Field is
     (
      --  32 bits
      PFB0CR_B0MW_Field_00,
      --  64 bits
      PFB0CR_B0MW_Field_01)
     with Size => 2;
   for PFB0CR_B0MW_Field use
     (PFB0CR_B0MW_Field_00 => 0,
      PFB0CR_B0MW_Field_01 => 1);

   --  Invalidate Prefetch Speculation Buffer
   type PFB0CR_S_B_INV_Field is
     (
      --  Speculation buffer and single entry buffer are not affected.
      PFB0CR_S_B_INV_Field_0,
      --  Invalidate (clear) speculation buffer and single entry buffer.
      PFB0CR_S_B_INV_Field_1)
     with Size => 1;
   for PFB0CR_S_B_INV_Field use
     (PFB0CR_S_B_INV_Field_0 => 0,
      PFB0CR_S_B_INV_Field_1 => 1);

   --  Cache Invalidate Way x
   type PFB0CR_CINV_WAY_Field is
     (
      --  No cache way invalidation for the corresponding cache
      PFB0CR_CINV_WAY_Field_0,
      --  Invalidate cache way for the corresponding cache: clear the tag,
      --  data, and vld bits of ways selected
      PFB0CR_CINV_WAY_Field_1)
     with Size => 4;
   for PFB0CR_CINV_WAY_Field use
     (PFB0CR_CINV_WAY_Field_0 => 0,
      PFB0CR_CINV_WAY_Field_1 => 1);

   --  Cache Lock Way x
   type PFB0CR_CLCK_WAY_Field is
     (
      --  Cache way is unlocked and may be displaced
      PFB0CR_CLCK_WAY_Field_0,
      --  Cache way is locked and its contents are not displaced
      PFB0CR_CLCK_WAY_Field_1)
     with Size => 4;
   for PFB0CR_CLCK_WAY_Field use
     (PFB0CR_CLCK_WAY_Field_0 => 0,
      PFB0CR_CLCK_WAY_Field_1 => 1);

   subtype FMC_PFB0CR_B0RWSC_Field is HAL.UInt4;

   --  Flash Bank 0 Control Register
   type FMC_PFB0CR_Register is record
      --  Bank 0 Single Entry Buffer Enable
      B0SEBE        : PFB0CR_B0SEBE_Field :=
                       NRF_SVD.FMC.PFB0CR_B0SEBE_Field_1;
      --  Bank 0 Instruction Prefetch Enable
      B0IPE         : PFB0CR_B0IPE_Field := NRF_SVD.FMC.PFB0CR_B0IPE_Field_1;
      --  Bank 0 Data Prefetch Enable
      B0DPE         : PFB0CR_B0DPE_Field := NRF_SVD.FMC.PFB0CR_B0DPE_Field_1;
      --  Bank 0 Instruction Cache Enable
      B0ICE         : PFB0CR_B0ICE_Field := NRF_SVD.FMC.PFB0CR_B0ICE_Field_1;
      --  Bank 0 Data Cache Enable
      B0DCE         : PFB0CR_B0DCE_Field := NRF_SVD.FMC.PFB0CR_B0DCE_Field_1;
      --  Cache Replacement Control
      CRC           : PFB0CR_CRC_Field := NRF_SVD.FMC.PFB0CR_CRC_Field_000;
      --  unspecified
      Reserved_8_16 : HAL.UInt9 := 16#0#;
      --  Read-only. Bank 0 Memory Width
      B0MW          : PFB0CR_B0MW_Field := NRF_SVD.FMC.PFB0CR_B0MW_Field_01;
      --  Write-only. Invalidate Prefetch Speculation Buffer
      S_B_INV       : PFB0CR_S_B_INV_Field :=
                       NRF_SVD.FMC.PFB0CR_S_B_INV_Field_0;
      --  Write-only. Cache Invalidate Way x
      CINV_WAY      : PFB0CR_CINV_WAY_Field :=
                       NRF_SVD.FMC.PFB0CR_CINV_WAY_Field_0;
      --  Cache Lock Way x
      CLCK_WAY      : PFB0CR_CLCK_WAY_Field :=
                       NRF_SVD.FMC.PFB0CR_CLCK_WAY_Field_0;
      --  Read-only. Bank 0 Read Wait State Control
      B0RWSC        : FMC_PFB0CR_B0RWSC_Field := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PFB0CR_Register use record
      B0SEBE        at 0 range 0 .. 0;
      B0IPE         at 0 range 1 .. 1;
      B0DPE         at 0 range 2 .. 2;
      B0ICE         at 0 range 3 .. 3;
      B0DCE         at 0 range 4 .. 4;
      CRC           at 0 range 5 .. 7;
      Reserved_8_16 at 0 range 8 .. 16;
      B0MW          at 0 range 17 .. 18;
      S_B_INV       at 0 range 19 .. 19;
      CINV_WAY      at 0 range 20 .. 23;
      CLCK_WAY      at 0 range 24 .. 27;
      B0RWSC        at 0 range 28 .. 31;
   end record;

   --  Bank 1 Single Entry Buffer Enable
   type PFB1CR_B1SEBE_Field is
     (
      --  Single entry buffer is disabled.
      PFB1CR_B1SEBE_Field_0,
      --  Single entry buffer is enabled.
      PFB1CR_B1SEBE_Field_1)
     with Size => 1;
   for PFB1CR_B1SEBE_Field use
     (PFB1CR_B1SEBE_Field_0 => 0,
      PFB1CR_B1SEBE_Field_1 => 1);

   --  Bank 1 Instruction Prefetch Enable
   type PFB1CR_B1IPE_Field is
     (
      --  Do not prefetch in response to instruction fetches.
      PFB1CR_B1IPE_Field_0,
      --  Enable prefetches in response to instruction fetches.
      PFB1CR_B1IPE_Field_1)
     with Size => 1;
   for PFB1CR_B1IPE_Field use
     (PFB1CR_B1IPE_Field_0 => 0,
      PFB1CR_B1IPE_Field_1 => 1);

   --  Bank 1 Data Prefetch Enable
   type PFB1CR_B1DPE_Field is
     (
      --  Do not prefetch in response to data references.
      PFB1CR_B1DPE_Field_0,
      --  Enable prefetches in response to data references.
      PFB1CR_B1DPE_Field_1)
     with Size => 1;
   for PFB1CR_B1DPE_Field use
     (PFB1CR_B1DPE_Field_0 => 0,
      PFB1CR_B1DPE_Field_1 => 1);

   --  Bank 1 Instruction Cache Enable
   type PFB1CR_B1ICE_Field is
     (
      --  Do not cache instruction fetches.
      PFB1CR_B1ICE_Field_0,
      --  Cache instruction fetches.
      PFB1CR_B1ICE_Field_1)
     with Size => 1;
   for PFB1CR_B1ICE_Field use
     (PFB1CR_B1ICE_Field_0 => 0,
      PFB1CR_B1ICE_Field_1 => 1);

   --  Bank 1 Data Cache Enable
   type PFB1CR_B1DCE_Field is
     (
      --  Do not cache data references.
      PFB1CR_B1DCE_Field_0,
      --  Cache data references.
      PFB1CR_B1DCE_Field_1)
     with Size => 1;
   for PFB1CR_B1DCE_Field use
     (PFB1CR_B1DCE_Field_0 => 0,
      PFB1CR_B1DCE_Field_1 => 1);

   --  Bank 1 Memory Width
   type PFB1CR_B1MW_Field is
     (
      --  32 bits
      PFB1CR_B1MW_Field_00,
      --  64 bits
      PFB1CR_B1MW_Field_01)
     with Size => 2;
   for PFB1CR_B1MW_Field use
     (PFB1CR_B1MW_Field_00 => 0,
      PFB1CR_B1MW_Field_01 => 1);

   subtype FMC_PFB1CR_B1RWSC_Field is HAL.UInt4;

   --  Flash Bank 1 Control Register
   type FMC_PFB1CR_Register is record
      --  Bank 1 Single Entry Buffer Enable
      B1SEBE         : PFB1CR_B1SEBE_Field :=
                        NRF_SVD.FMC.PFB1CR_B1SEBE_Field_1;
      --  Bank 1 Instruction Prefetch Enable
      B1IPE          : PFB1CR_B1IPE_Field := NRF_SVD.FMC.PFB1CR_B1IPE_Field_1;
      --  Bank 1 Data Prefetch Enable
      B1DPE          : PFB1CR_B1DPE_Field := NRF_SVD.FMC.PFB1CR_B1DPE_Field_1;
      --  Bank 1 Instruction Cache Enable
      B1ICE          : PFB1CR_B1ICE_Field := NRF_SVD.FMC.PFB1CR_B1ICE_Field_1;
      --  Bank 1 Data Cache Enable
      B1DCE          : PFB1CR_B1DCE_Field := NRF_SVD.FMC.PFB1CR_B1DCE_Field_1;
      --  unspecified
      Reserved_5_16  : HAL.UInt12 := 16#0#;
      --  Read-only. Bank 1 Memory Width
      B1MW           : PFB1CR_B1MW_Field := NRF_SVD.FMC.PFB1CR_B1MW_Field_01;
      --  unspecified
      Reserved_19_27 : HAL.UInt9 := 16#0#;
      --  Read-only. Bank 1 Read Wait State Control
      B1RWSC         : FMC_PFB1CR_B1RWSC_Field := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PFB1CR_Register use record
      B1SEBE         at 0 range 0 .. 0;
      B1IPE          at 0 range 1 .. 1;
      B1DPE          at 0 range 2 .. 2;
      B1ICE          at 0 range 3 .. 3;
      B1DCE          at 0 range 4 .. 4;
      Reserved_5_16  at 0 range 5 .. 16;
      B1MW           at 0 range 17 .. 18;
      Reserved_19_27 at 0 range 19 .. 27;
      B1RWSC         at 0 range 28 .. 31;
   end record;

   subtype FMC_TAGVDW0S_tag_Field is HAL.UInt14;

   --  Cache Tag Storage
   type FMC_TAGVDW0S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  14-bit tag for cache entry
      tag            : FMC_TAGVDW0S_tag_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW0S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      tag            at 0 range 5 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW0S_Registers is array (0 .. 7) of FMC_TAGVDW0S_Register
     with Volatile;

   subtype FMC_TAGVDW1S_tag_Field is HAL.UInt14;

   --  Cache Tag Storage
   type FMC_TAGVDW1S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  14-bit tag for cache entry
      tag            : FMC_TAGVDW1S_tag_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW1S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      tag            at 0 range 5 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW1S_Registers is array (0 .. 7) of FMC_TAGVDW1S_Register
     with Volatile;

   subtype FMC_TAGVDW2S_tag_Field is HAL.UInt14;

   --  Cache Tag Storage
   type FMC_TAGVDW2S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  14-bit tag for cache entry
      tag            : FMC_TAGVDW2S_tag_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW2S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      tag            at 0 range 5 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW2S_Registers is array (0 .. 7) of FMC_TAGVDW2S_Register
     with Volatile;

   subtype FMC_TAGVDW3S_tag_Field is HAL.UInt14;

   --  Cache Tag Storage
   type FMC_TAGVDW3S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  14-bit tag for cache entry
      tag            : FMC_TAGVDW3S_tag_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW3S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      tag            at 0 range 5 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW3S_Registers is array (0 .. 7) of FMC_TAGVDW3S_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Memory Controller
   type FMC_Peripheral is record
      --  Flash Access Protection Register
      PFAPR     : aliased FMC_PFAPR_Register;
      --  Flash Bank 0 Control Register
      PFB0CR    : aliased FMC_PFB0CR_Register;
      --  Flash Bank 1 Control Register
      PFB1CR    : aliased FMC_PFB1CR_Register;
      --  Cache Tag Storage
      TAGVDW0S  : aliased FMC_TAGVDW0S_Registers;
      --  Cache Tag Storage
      TAGVDW1S  : aliased FMC_TAGVDW1S_Registers;
      --  Cache Tag Storage
      TAGVDW2S  : aliased FMC_TAGVDW2S_Registers;
      --  Cache Tag Storage
      TAGVDW3S  : aliased FMC_TAGVDW3S_Registers;
      --  Cache Data Storage (upper word)
      DATAW0SU0 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL0 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU1 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL1 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU2 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL2 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU3 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL3 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU4 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL4 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU5 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL5 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU6 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL6 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW0SU7 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW0SL7 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU0 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL0 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU1 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL1 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU2 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL2 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU3 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL3 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU4 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL4 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU5 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL5 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU6 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL6 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW1SU7 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW1SL7 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU0 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL0 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU1 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL1 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU2 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL2 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU3 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL3 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU4 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL4 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU5 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL5 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU6 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL6 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW2SU7 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW2SL7 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU0 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL0 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU1 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL1 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU2 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL2 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU3 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL3 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU4 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL4 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU5 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL5 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU6 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL6 : aliased HAL.UInt32;
      --  Cache Data Storage (upper word)
      DATAW3SU7 : aliased HAL.UInt32;
      --  Cache Data Storage (lower word)
      DATAW3SL7 : aliased HAL.UInt32;
   end record
     with Volatile;

   for FMC_Peripheral use record
      PFAPR     at 16#0# range 0 .. 31;
      PFB0CR    at 16#4# range 0 .. 31;
      PFB1CR    at 16#8# range 0 .. 31;
      TAGVDW0S  at 16#100# range 0 .. 255;
      TAGVDW1S  at 16#120# range 0 .. 255;
      TAGVDW2S  at 16#140# range 0 .. 255;
      TAGVDW3S  at 16#160# range 0 .. 255;
      DATAW0SU0 at 16#200# range 0 .. 31;
      DATAW0SL0 at 16#204# range 0 .. 31;
      DATAW0SU1 at 16#208# range 0 .. 31;
      DATAW0SL1 at 16#20C# range 0 .. 31;
      DATAW0SU2 at 16#210# range 0 .. 31;
      DATAW0SL2 at 16#214# range 0 .. 31;
      DATAW0SU3 at 16#218# range 0 .. 31;
      DATAW0SL3 at 16#21C# range 0 .. 31;
      DATAW0SU4 at 16#220# range 0 .. 31;
      DATAW0SL4 at 16#224# range 0 .. 31;
      DATAW0SU5 at 16#228# range 0 .. 31;
      DATAW0SL5 at 16#22C# range 0 .. 31;
      DATAW0SU6 at 16#230# range 0 .. 31;
      DATAW0SL6 at 16#234# range 0 .. 31;
      DATAW0SU7 at 16#238# range 0 .. 31;
      DATAW0SL7 at 16#23C# range 0 .. 31;
      DATAW1SU0 at 16#240# range 0 .. 31;
      DATAW1SL0 at 16#244# range 0 .. 31;
      DATAW1SU1 at 16#248# range 0 .. 31;
      DATAW1SL1 at 16#24C# range 0 .. 31;
      DATAW1SU2 at 16#250# range 0 .. 31;
      DATAW1SL2 at 16#254# range 0 .. 31;
      DATAW1SU3 at 16#258# range 0 .. 31;
      DATAW1SL3 at 16#25C# range 0 .. 31;
      DATAW1SU4 at 16#260# range 0 .. 31;
      DATAW1SL4 at 16#264# range 0 .. 31;
      DATAW1SU5 at 16#268# range 0 .. 31;
      DATAW1SL5 at 16#26C# range 0 .. 31;
      DATAW1SU6 at 16#270# range 0 .. 31;
      DATAW1SL6 at 16#274# range 0 .. 31;
      DATAW1SU7 at 16#278# range 0 .. 31;
      DATAW1SL7 at 16#27C# range 0 .. 31;
      DATAW2SU0 at 16#280# range 0 .. 31;
      DATAW2SL0 at 16#284# range 0 .. 31;
      DATAW2SU1 at 16#288# range 0 .. 31;
      DATAW2SL1 at 16#28C# range 0 .. 31;
      DATAW2SU2 at 16#290# range 0 .. 31;
      DATAW2SL2 at 16#294# range 0 .. 31;
      DATAW2SU3 at 16#298# range 0 .. 31;
      DATAW2SL3 at 16#29C# range 0 .. 31;
      DATAW2SU4 at 16#2A0# range 0 .. 31;
      DATAW2SL4 at 16#2A4# range 0 .. 31;
      DATAW2SU5 at 16#2A8# range 0 .. 31;
      DATAW2SL5 at 16#2AC# range 0 .. 31;
      DATAW2SU6 at 16#2B0# range 0 .. 31;
      DATAW2SL6 at 16#2B4# range 0 .. 31;
      DATAW2SU7 at 16#2B8# range 0 .. 31;
      DATAW2SL7 at 16#2BC# range 0 .. 31;
      DATAW3SU0 at 16#2C0# range 0 .. 31;
      DATAW3SL0 at 16#2C4# range 0 .. 31;
      DATAW3SU1 at 16#2C8# range 0 .. 31;
      DATAW3SL1 at 16#2CC# range 0 .. 31;
      DATAW3SU2 at 16#2D0# range 0 .. 31;
      DATAW3SL2 at 16#2D4# range 0 .. 31;
      DATAW3SU3 at 16#2D8# range 0 .. 31;
      DATAW3SL3 at 16#2DC# range 0 .. 31;
      DATAW3SU4 at 16#2E0# range 0 .. 31;
      DATAW3SL4 at 16#2E4# range 0 .. 31;
      DATAW3SU5 at 16#2E8# range 0 .. 31;
      DATAW3SL5 at 16#2EC# range 0 .. 31;
      DATAW3SU6 at 16#2F0# range 0 .. 31;
      DATAW3SL6 at 16#2F4# range 0 .. 31;
      DATAW3SU7 at 16#2F8# range 0 .. 31;
      DATAW3SL7 at 16#2FC# range 0 .. 31;
   end record;

   --  Flash Memory Controller
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_Base;

end NRF_SVD.FMC;
