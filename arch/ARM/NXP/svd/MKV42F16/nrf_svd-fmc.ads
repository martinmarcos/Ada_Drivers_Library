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

   --  Flash Access Protection Register
   type FMC_PFAPR_Register is record
      --  Master 0 Access Protection
      M0AP           : PFAPR_M0AP_Field := NRF_SVD.FMC.PFAPR_M0AP_Field_11;
      --  Master 1 Access Protection
      M1AP           : PFAPR_M1AP_Field := NRF_SVD.FMC.PFAPR_M1AP_Field_11;
      --  Master 2 Access Protection
      M2AP           : PFAPR_M2AP_Field := NRF_SVD.FMC.PFAPR_M2AP_Field_11;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Master 0 Prefetch Disable
      M0PFD          : PFAPR_M0PFD_Field := NRF_SVD.FMC.PFAPR_M0PFD_Field_0;
      --  Master 1 Prefetch Disable
      M1PFD          : PFAPR_M1PFD_Field := NRF_SVD.FMC.PFAPR_M1PFD_Field_0;
      --  Master 2 Prefetch Disable
      M2PFD          : PFAPR_M2PFD_Field := NRF_SVD.FMC.PFAPR_M2PFD_Field_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#1F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PFAPR_Register use record
      M0AP           at 0 range 0 .. 1;
      M1AP           at 0 range 2 .. 3;
      M2AP           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      M0PFD          at 0 range 16 .. 16;
      M1PFD          at 0 range 17 .. 17;
      M2PFD          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
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
      PFB0CR_B0MW_Field_01,
      --  128 bits
      PFB0CR_B0MW_Field_10)
     with Size => 2;
   for PFB0CR_B0MW_Field use
     (PFB0CR_B0MW_Field_00 => 0,
      PFB0CR_B0MW_Field_01 => 1,
      PFB0CR_B0MW_Field_10 => 2);

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
      B0MW          : PFB0CR_B0MW_Field := NRF_SVD.FMC.PFB0CR_B0MW_Field_10;
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

   subtype FMC_TAGVDW0S_cache_tag_Field is HAL.UInt15;

   --  Cache Tag Storage
   type FMC_TAGVDW0S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  the tag for cache entry
      cache_tag      : FMC_TAGVDW0S_cache_tag_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW0S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      cache_tag      at 0 range 5 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW0S_Registers is array (0 .. 1) of FMC_TAGVDW0S_Register
     with Volatile;

   subtype FMC_TAGVDW1S_cache_tag_Field is HAL.UInt15;

   --  Cache Tag Storage
   type FMC_TAGVDW1S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  the tag for cache entry
      cache_tag      : FMC_TAGVDW1S_cache_tag_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW1S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      cache_tag      at 0 range 5 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW1S_Registers is array (0 .. 1) of FMC_TAGVDW1S_Register
     with Volatile;

   subtype FMC_TAGVDW2S_cache_tag_Field is HAL.UInt15;

   --  Cache Tag Storage
   type FMC_TAGVDW2S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  the tag for cache entry
      cache_tag      : FMC_TAGVDW2S_cache_tag_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW2S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      cache_tag      at 0 range 5 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW2S_Registers is array (0 .. 1) of FMC_TAGVDW2S_Register
     with Volatile;

   subtype FMC_TAGVDW3S_cache_tag_Field is HAL.UInt15;

   --  Cache Tag Storage
   type FMC_TAGVDW3S_Register is record
      --  1-bit valid for cache entry
      valid          : Boolean := False;
      --  unspecified
      Reserved_1_4   : HAL.UInt4 := 16#0#;
      --  the tag for cache entry
      cache_tag      : FMC_TAGVDW3S_cache_tag_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_TAGVDW3S_Register use record
      valid          at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      cache_tag      at 0 range 5 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Cache Tag Storage
   type FMC_TAGVDW3S_Registers is array (0 .. 1) of FMC_TAGVDW3S_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Memory Controller
   type FMC_Peripheral is record
      --  Flash Access Protection Register
      PFAPR      : aliased FMC_PFAPR_Register;
      --  Flash Bank 0 Control Register
      PFB0CR     : aliased FMC_PFB0CR_Register;
      --  Cache Tag Storage
      TAGVDW0S   : aliased FMC_TAGVDW0S_Registers;
      --  Cache Tag Storage
      TAGVDW1S   : aliased FMC_TAGVDW1S_Registers;
      --  Cache Tag Storage
      TAGVDW2S   : aliased FMC_TAGVDW2S_Registers;
      --  Cache Tag Storage
      TAGVDW3S   : aliased FMC_TAGVDW3S_Registers;
      --  Cache Data Storage (uppermost word)
      DATAW0SUM0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW0SMU0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW0SML0 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW0SLM0 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW0SUM1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW0SMU1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW0SML1 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW0SLM1 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW1SUM0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW1SMU0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW1SML0 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW1SLM0 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW1SUM1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW1SMU1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW1SML1 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW1SLM1 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW2SUM0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW2SMU0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW2SML0 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW2SLM0 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW2SUM1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW2SMU1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW2SML1 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW2SLM1 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW3SUM0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW3SMU0 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW3SML0 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW3SLM0 : aliased HAL.UInt32;
      --  Cache Data Storage (uppermost word)
      DATAW3SUM1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-upper word)
      DATAW3SMU1 : aliased HAL.UInt32;
      --  Cache Data Storage (mid-lower word)
      DATAW3SML1 : aliased HAL.UInt32;
      --  Cache Data Storage (lowermost word)
      DATAW3SLM1 : aliased HAL.UInt32;
   end record
     with Volatile;

   for FMC_Peripheral use record
      PFAPR      at 16#0# range 0 .. 31;
      PFB0CR     at 16#4# range 0 .. 31;
      TAGVDW0S   at 16#100# range 0 .. 63;
      TAGVDW1S   at 16#108# range 0 .. 63;
      TAGVDW2S   at 16#110# range 0 .. 63;
      TAGVDW3S   at 16#118# range 0 .. 63;
      DATAW0SUM0 at 16#200# range 0 .. 31;
      DATAW0SMU0 at 16#204# range 0 .. 31;
      DATAW0SML0 at 16#208# range 0 .. 31;
      DATAW0SLM0 at 16#20C# range 0 .. 31;
      DATAW0SUM1 at 16#210# range 0 .. 31;
      DATAW0SMU1 at 16#214# range 0 .. 31;
      DATAW0SML1 at 16#218# range 0 .. 31;
      DATAW0SLM1 at 16#21C# range 0 .. 31;
      DATAW1SUM0 at 16#220# range 0 .. 31;
      DATAW1SMU0 at 16#224# range 0 .. 31;
      DATAW1SML0 at 16#228# range 0 .. 31;
      DATAW1SLM0 at 16#22C# range 0 .. 31;
      DATAW1SUM1 at 16#230# range 0 .. 31;
      DATAW1SMU1 at 16#234# range 0 .. 31;
      DATAW1SML1 at 16#238# range 0 .. 31;
      DATAW1SLM1 at 16#23C# range 0 .. 31;
      DATAW2SUM0 at 16#240# range 0 .. 31;
      DATAW2SMU0 at 16#244# range 0 .. 31;
      DATAW2SML0 at 16#248# range 0 .. 31;
      DATAW2SLM0 at 16#24C# range 0 .. 31;
      DATAW2SUM1 at 16#250# range 0 .. 31;
      DATAW2SMU1 at 16#254# range 0 .. 31;
      DATAW2SML1 at 16#258# range 0 .. 31;
      DATAW2SLM1 at 16#25C# range 0 .. 31;
      DATAW3SUM0 at 16#260# range 0 .. 31;
      DATAW3SMU0 at 16#264# range 0 .. 31;
      DATAW3SML0 at 16#268# range 0 .. 31;
      DATAW3SLM0 at 16#26C# range 0 .. 31;
      DATAW3SUM1 at 16#270# range 0 .. 31;
      DATAW3SMU1 at 16#274# range 0 .. 31;
      DATAW3SML1 at 16#278# range 0 .. 31;
      DATAW3SLM1 at 16#27C# range 0 .. 31;
   end record;

   --  Flash Memory Controller
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_Base;

end NRF_SVD.FMC;
