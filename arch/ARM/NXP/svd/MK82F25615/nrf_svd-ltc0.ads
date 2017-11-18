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

--  This spec has been automatically generated from MK82F25615.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  LTC
package NRF_SVD.LTC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Encrypt/Decrypt. This bit selects encryption or decryption.
   type LTC0_MD_ENC_Field is
     (
      --  Decrypt.
      LTC0_MD_ENC_Field_0,
      --  Encrypt.
      LTC0_MD_ENC_Field_1)
     with Size => 1;
   for LTC0_MD_ENC_Field use
     (LTC0_MD_ENC_Field_0 => 0,
      LTC0_MD_ENC_Field_1 => 1);

   --  Algorithm State
   type LTC0_MD_AS_Field is
     (
      --  Update
      LTC0_MD_AS_Field_00,
      --  Initialize
      LTC0_MD_AS_Field_01,
      --  Finalize
      LTC0_MD_AS_Field_10,
      --  Initialize/Finalize
      LTC0_MD_AS_Field_11)
     with Size => 2;
   for LTC0_MD_AS_Field use
     (LTC0_MD_AS_Field_00 => 0,
      LTC0_MD_AS_Field_01 => 1,
      LTC0_MD_AS_Field_10 => 2,
      LTC0_MD_AS_Field_11 => 3);

   subtype LTC0_MD_AAI_Field is HAL.UInt9;

   --  Algorithm. This field specifies which algorithm is being selected.
   type LTC0_MD_ALG_Field is
     (
      --  Reset value for the field
      Ltc0_Md_Alg_Field_Reset,
      --  AES
      LTC0_MD_ALG_Field_00010000,
      --  DES
      LTC0_MD_ALG_Field_00100000,
      --  3DES
      LTC0_MD_ALG_Field_00100001)
     with Size => 8;
   for LTC0_MD_ALG_Field use
     (Ltc0_Md_Alg_Field_Reset => 0,
      LTC0_MD_ALG_Field_00010000 => 16,
      LTC0_MD_ALG_Field_00100000 => 32,
      LTC0_MD_ALG_Field_00100001 => 33);

   --  LTC Mode Register (non-PKHA/non-RNG use)
   type LTC0_MD_Register is record
      --  Encrypt/Decrypt. This bit selects encryption or decryption.
      ENC            : LTC0_MD_ENC_Field := NRF_SVD.LTC0.LTC0_MD_ENC_Field_0;
      --  ICV Checking / Test AES fault detection
      ICV_TEST       : Boolean := False;
      --  Algorithm State
      AS             : LTC0_MD_AS_Field := NRF_SVD.LTC0.LTC0_MD_AS_Field_00;
      --  Additional Algorithm information
      AAI            : LTC0_MD_AAI_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Algorithm. This field specifies which algorithm is being selected.
      ALG            : LTC0_MD_ALG_Field := Ltc0_Md_Alg_Field_Reset;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_MD_Register use record
      ENC            at 0 range 0 .. 0;
      ICV_TEST       at 0 range 1 .. 1;
      AS             at 0 range 2 .. 3;
      AAI            at 0 range 4 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ALG            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTC0_MDPK_PKHA_MODE_LS_Field is HAL.UInt12;
   subtype LTC0_MDPK_PKHA_MODE_MS_Field is HAL.UInt4;

   --  Algorithm. This field specifies which algorithm is being selected.
   type LTC0_MDPK_ALG_Field is
     (
      --  Reset value for the field
      Ltc0_Mdpk_Alg_Field_Reset,
      --  PKHA
      LTC0_MDPK_ALG_Field_1000)
     with Size => 4;
   for LTC0_MDPK_ALG_Field use
     (Ltc0_Mdpk_Alg_Field_Reset => 0,
      LTC0_MDPK_ALG_Field_1000 => 8);

   --  LTC Mode Register (PublicKey)
   type LTC0_MDPK_Register is record
      --  PKHA_MODE least significant 12 bits
      PKHA_MODE_LS   : LTC0_MDPK_PKHA_MODE_LS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  PKHA_MODE most-significant 4 bits
      PKHA_MODE_MS   : LTC0_MDPK_PKHA_MODE_MS_Field := 16#0#;
      --  Algorithm. This field specifies which algorithm is being selected.
      ALG            : LTC0_MDPK_ALG_Field := Ltc0_Mdpk_Alg_Field_Reset;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_MDPK_Register use record
      PKHA_MODE_LS   at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PKHA_MODE_MS   at 0 range 16 .. 19;
      ALG            at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTC0_KS_KS_Field is HAL.UInt6;

   --  LTC Key Size Register
   type LTC0_KS_Register is record
      --  Key Size. This is the size of a Key measured in bytes
      KS            : LTC0_KS_KS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_KS_Register use record
      KS            at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype LTC0_DS_DS_Field is HAL.UInt12;

   --  LTC Data Size Register
   type LTC0_DS_Register is record
      --  Data Size
      DS             : LTC0_DS_DS_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_DS_Register use record
      DS             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTC0_ICVS_ICVS_Field is HAL.UInt5;

   --  LTC ICV Size Register
   type LTC0_ICVS_Register is record
      --  ICV Size, in Bytes.
      ICVS          : LTC0_ICVS_ICVS_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_ICVS_Register use record
      ICVS          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Reset All Internal Logic
   type LTC0_COM_ALL_Field is
     (
      --  Do Not Reset
      LTC0_COM_ALL_Field_0,
      --  Reset all CHAs in use by this CCB.
      LTC0_COM_ALL_Field_1)
     with Size => 1;
   for LTC0_COM_ALL_Field use
     (LTC0_COM_ALL_Field_0 => 0,
      LTC0_COM_ALL_Field_1 => 1);

   --  Reset AESA. Writing a 1 to this bit resets the AES Accelerator core
   --  engine.
   type LTC0_COM_AES_Field is
     (
      --  Do Not Reset
      LTC0_COM_AES_Field_0,
      --  Reset AES Accelerator
      LTC0_COM_AES_Field_1)
     with Size => 1;
   for LTC0_COM_AES_Field use
     (LTC0_COM_AES_Field_0 => 0,
      LTC0_COM_AES_Field_1 => 1);

   --  Reset DESA. Writing a 1 to this bit resets the DES Accelerator.
   type LTC0_COM_DES_Field is
     (
      --  Do Not Reset
      LTC0_COM_DES_Field_0,
      --  Reset DES Accelerator
      LTC0_COM_DES_Field_1)
     with Size => 1;
   for LTC0_COM_DES_Field use
     (LTC0_COM_DES_Field_0 => 0,
      LTC0_COM_DES_Field_1 => 1);

   --  Reset PKHA. Writing a 1 to this bit resets the Public Key Hardware
   --  Accelerator.
   type LTC0_COM_PK_Field is
     (
      --  Do Not Reset
      LTC0_COM_PK_Field_0,
      --  Reset Public Key Hardware Accelerator
      LTC0_COM_PK_Field_1)
     with Size => 1;
   for LTC0_COM_PK_Field use
     (LTC0_COM_PK_Field_0 => 0,
      LTC0_COM_PK_Field_1 => 1);

   --  LTC Command Register
   type LTC0_COM_Register is record
      --  Write-only. Reset All Internal Logic
      ALL_k         : LTC0_COM_ALL_Field := NRF_SVD.LTC0.LTC0_COM_ALL_Field_0;
      --  Write-only. Reset AESA. Writing a 1 to this bit resets the AES
      --  Accelerator core engine.
      AES           : LTC0_COM_AES_Field := NRF_SVD.LTC0.LTC0_COM_AES_Field_0;
      --  Write-only. Reset DESA. Writing a 1 to this bit resets the DES
      --  Accelerator.
      DES           : LTC0_COM_DES_Field := NRF_SVD.LTC0.LTC0_COM_DES_Field_0;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Write-only. Reset PKHA. Writing a 1 to this bit resets the Public Key
      --  Hardware Accelerator.
      PK            : LTC0_COM_PK_Field := NRF_SVD.LTC0.LTC0_COM_PK_Field_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_COM_Register use record
      ALL_k         at 0 range 0 .. 0;
      AES           at 0 range 1 .. 1;
      DES           at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      PK            at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Interrupt Mask. Once this bit is set, it can only be cleared by hard
   --  reset.
   type LTC0_CTL_IM_Field is
     (
      --  Interrupt not masked.
      LTC0_CTL_IM_Field_0,
      --  Interrupt masked
      LTC0_CTL_IM_Field_1)
     with Size => 1;
   for LTC0_CTL_IM_Field use
     (LTC0_CTL_IM_Field_0 => 0,
      LTC0_CTL_IM_Field_1 => 1);

   --  PKHA Register DMA Enable.
   type LTC0_CTL_PDE_Field is
     (
      --  DMA Request and Done signals disabled for the PKHA Registers.
      LTC0_CTL_PDE_Field_0,
      --  DMA Request and Done signals enabled for the PKHA Registers.
      LTC0_CTL_PDE_Field_1)
     with Size => 1;
   for LTC0_CTL_PDE_Field use
     (LTC0_CTL_PDE_Field_0 => 0,
      LTC0_CTL_PDE_Field_1 => 1);

   --  Input FIFO DMA Enable.
   type LTC0_CTL_IFE_Field is
     (
      --  DMA Request and Done signals disabled for the Input FIFO.
      LTC0_CTL_IFE_Field_0,
      --  DMA Request and Done signals enabled for the Input FIFO.
      LTC0_CTL_IFE_Field_1)
     with Size => 1;
   for LTC0_CTL_IFE_Field use
     (LTC0_CTL_IFE_Field_0 => 0,
      LTC0_CTL_IFE_Field_1 => 1);

   --  Input FIFO DMA Request Size
   type LTC0_CTL_IFR_Field is
     (
      --  DMA request size is 1 entry.
      LTC0_CTL_IFR_Field_0,
      --  DMA request size is 4 entries.
      LTC0_CTL_IFR_Field_1)
     with Size => 1;
   for LTC0_CTL_IFR_Field use
     (LTC0_CTL_IFR_Field_0 => 0,
      LTC0_CTL_IFR_Field_1 => 1);

   --  Output FIFO DMA Enable.
   type LTC0_CTL_OFE_Field is
     (
      --  DMA Request and Done signals disabled for the Output FIFO.
      LTC0_CTL_OFE_Field_0,
      --  DMA Request and Done signals enabled for the Output FIFO.
      LTC0_CTL_OFE_Field_1)
     with Size => 1;
   for LTC0_CTL_OFE_Field use
     (LTC0_CTL_OFE_Field_0 => 0,
      LTC0_CTL_OFE_Field_1 => 1);

   --  Output FIFO DMA Request Size
   type LTC0_CTL_OFR_Field is
     (
      --  DMA request size is 1 entry.
      LTC0_CTL_OFR_Field_0,
      --  DMA request size is 4 entries.
      LTC0_CTL_OFR_Field_1)
     with Size => 1;
   for LTC0_CTL_OFR_Field use
     (LTC0_CTL_OFR_Field_0 => 0,
      LTC0_CTL_OFR_Field_1 => 1);

   --  Input FIFO Byte Swap. Byte swap all data that is written to the Input
   --  FIFO.
   type LTC0_CTL_IFS_Field is
     (
      --  Do Not Byte Swap Data.
      LTC0_CTL_IFS_Field_0,
      --  Byte Swap Data.
      LTC0_CTL_IFS_Field_1)
     with Size => 1;
   for LTC0_CTL_IFS_Field use
     (LTC0_CTL_IFS_Field_0 => 0,
      LTC0_CTL_IFS_Field_1 => 1);

   --  Output FIFO Byte Swap. Byte swap all data that is read from the Onput
   --  FIFO.
   type LTC0_CTL_OFS_Field is
     (
      --  Do Not Byte Swap Data.
      LTC0_CTL_OFS_Field_0,
      --  Byte Swap Data.
      LTC0_CTL_OFS_Field_1)
     with Size => 1;
   for LTC0_CTL_OFS_Field use
     (LTC0_CTL_OFS_Field_0 => 0,
      LTC0_CTL_OFS_Field_1 => 1);

   --  Key Register Input Byte Swap
   type LTC0_CTL_KIS_Field is
     (
      --  Do Not Byte Swap Data.
      LTC0_CTL_KIS_Field_0,
      --  Byte Swap Data.
      LTC0_CTL_KIS_Field_1)
     with Size => 1;
   for LTC0_CTL_KIS_Field use
     (LTC0_CTL_KIS_Field_0 => 0,
      LTC0_CTL_KIS_Field_1 => 1);

   --  Key Register Output Byte Swap
   type LTC0_CTL_KOS_Field is
     (
      --  Do Not Byte Swap Data.
      LTC0_CTL_KOS_Field_0,
      --  Byte Swap Data.
      LTC0_CTL_KOS_Field_1)
     with Size => 1;
   for LTC0_CTL_KOS_Field use
     (LTC0_CTL_KOS_Field_0 => 0,
      LTC0_CTL_KOS_Field_1 => 1);

   --  Context Register Input Byte Swap
   type LTC0_CTL_CIS_Field is
     (
      --  Do Not Byte Swap Data.
      LTC0_CTL_CIS_Field_0,
      --  Byte Swap Data.
      LTC0_CTL_CIS_Field_1)
     with Size => 1;
   for LTC0_CTL_CIS_Field use
     (LTC0_CTL_CIS_Field_0 => 0,
      LTC0_CTL_CIS_Field_1 => 1);

   --  Context Register Output Byte Swap
   type LTC0_CTL_COS_Field is
     (
      --  Do Not Byte Swap Data.
      LTC0_CTL_COS_Field_0,
      --  Byte Swap Data.
      LTC0_CTL_COS_Field_1)
     with Size => 1;
   for LTC0_CTL_COS_Field use
     (LTC0_CTL_COS_Field_0 => 0,
      LTC0_CTL_COS_Field_1 => 1);

   --  Key Register Access Lock
   type LTC0_CTL_KAL_Field is
     (
      --  Key Register is readable.
      LTC0_CTL_KAL_Field_0,
      --  Key Register is not readable.
      LTC0_CTL_KAL_Field_1)
     with Size => 1;
   for LTC0_CTL_KAL_Field use
     (LTC0_CTL_KAL_Field_0 => 0,
      LTC0_CTL_KAL_Field_1 => 1);

   --  LTC Control Register
   type LTC0_CTL_Register is record
      --  Interrupt Mask. Once this bit is set, it can only be cleared by hard
      --  reset.
      IM             : LTC0_CTL_IM_Field := NRF_SVD.LTC0.LTC0_CTL_IM_Field_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  PKHA Register DMA Enable.
      PDE            : LTC0_CTL_PDE_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_PDE_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input FIFO DMA Enable.
      IFE            : LTC0_CTL_IFE_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_IFE_Field_0;
      --  Input FIFO DMA Request Size
      IFR            : LTC0_CTL_IFR_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_IFR_Field_0;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Output FIFO DMA Enable.
      OFE            : LTC0_CTL_OFE_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_OFE_Field_0;
      --  Output FIFO DMA Request Size
      OFR            : LTC0_CTL_OFR_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_OFR_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Input FIFO Byte Swap. Byte swap all data that is written to the Input
      --  FIFO.
      IFS            : LTC0_CTL_IFS_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_IFS_Field_0;
      --  Output FIFO Byte Swap. Byte swap all data that is read from the Onput
      --  FIFO.
      OFS            : LTC0_CTL_OFS_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_OFS_Field_0;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Key Register Input Byte Swap
      KIS            : LTC0_CTL_KIS_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_KIS_Field_0;
      --  Key Register Output Byte Swap
      KOS            : LTC0_CTL_KOS_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_KOS_Field_0;
      --  Context Register Input Byte Swap
      CIS            : LTC0_CTL_CIS_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_CIS_Field_0;
      --  Context Register Output Byte Swap
      COS            : LTC0_CTL_COS_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_COS_Field_0;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  Key Register Access Lock
      KAL            : LTC0_CTL_KAL_Field :=
                        NRF_SVD.LTC0.LTC0_CTL_KAL_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_CTL_Register use record
      IM             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PDE            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      IFE            at 0 range 8 .. 8;
      IFR            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OFE            at 0 range 12 .. 12;
      OFR            at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      IFS            at 0 range 16 .. 16;
      OFS            at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      KIS            at 0 range 20 .. 20;
      KOS            at 0 range 21 .. 21;
      CIS            at 0 range 22 .. 22;
      COS            at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      KAL            at 0 range 31 .. 31;
   end record;

   --  LTC Clear Written Register
   type LTC0_CW_Register is record
      --  Write-only. Clear the Mode Register. Writing a one to this bit causes
      --  the Mode Register to be cleared.
      CM             : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Write-only. Clear the Data Size Register
      CDS            : Boolean := False;
      --  Write-only. Clear the ICV Size Register. Writing a one to this bit
      --  causes the ICV Size Register to be cleared.
      CICV           : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Write-only. Clear the Context Register. Writing a one to this bit
      --  causes the Context Register to be cleared.
      CCR            : Boolean := False;
      --  Write-only. Clear the Key Register
      CKR            : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Write-only. Clear the PKHA A Size Register
      CPKA           : Boolean := False;
      --  Write-only. Clear the PKHA B Size Register
      CPKB           : Boolean := False;
      --  Write-only. Clear the PKHA N Size Register
      CPKN           : Boolean := False;
      --  Write-only. Clear the PKHA E Size Register
      CPKE           : Boolean := False;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  Write-only. Clear Output FIFO. Writing a 1 to this bit causes the
      --  Output FIFO to be cleared.
      COF            : Boolean := False;
      --  Write-only. Clear Input FIFO. Writing a 1 to this bit causes the
      --  Input Data FIFO.
      CIF            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_CW_Register use record
      CM             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CDS            at 0 range 2 .. 2;
      CICV           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CCR            at 0 range 5 .. 5;
      CKR            at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      CPKA           at 0 range 12 .. 12;
      CPKB           at 0 range 13 .. 13;
      CPKN           at 0 range 14 .. 14;
      CPKE           at 0 range 15 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      COF            at 0 range 30 .. 30;
      CIF            at 0 range 31 .. 31;
   end record;

   --  AESA Busy
   type LTC0_STA_AB_Field is
     (
      --  AESA Idle
      LTC0_STA_AB_Field_0,
      --  AESA Busy.
      LTC0_STA_AB_Field_1)
     with Size => 1;
   for LTC0_STA_AB_Field use
     (LTC0_STA_AB_Field_0 => 0,
      LTC0_STA_AB_Field_1 => 1);

   --  DESA Busy
   type LTC0_STA_DB_Field is
     (
      --  DESA Idle
      LTC0_STA_DB_Field_0,
      --  DESA Busy.
      LTC0_STA_DB_Field_1)
     with Size => 1;
   for LTC0_STA_DB_Field use
     (LTC0_STA_DB_Field_0 => 0,
      LTC0_STA_DB_Field_1 => 1);

   --  PKHA Busy
   type LTC0_STA_PB_Field is
     (
      --  PKHA Idle
      LTC0_STA_PB_Field_0,
      --  PKHA Busy.
      LTC0_STA_PB_Field_1)
     with Size => 1;
   for LTC0_STA_PB_Field use
     (LTC0_STA_PB_Field_0 => 0,
      LTC0_STA_PB_Field_1 => 1);

   --  Error Interrupt
   type LTC0_STA_EI_Field is
     (
      --  Not Error.
      LTC0_STA_EI_Field_0,
      --  Error Interrupt.
      LTC0_STA_EI_Field_1)
     with Size => 1;
   for LTC0_STA_EI_Field use
     (LTC0_STA_EI_Field_0 => 0,
      LTC0_STA_EI_Field_1 => 1);

   --  LTC Status Register
   type LTC0_STA_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Read-only. AESA Busy
      AB             : LTC0_STA_AB_Field := NRF_SVD.LTC0.LTC0_STA_AB_Field_0;
      --  Read-only. DESA Busy
      DB             : LTC0_STA_DB_Field := NRF_SVD.LTC0.LTC0_STA_DB_Field_0;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Read-only. PKHA Busy
      PB             : LTC0_STA_PB_Field := NRF_SVD.LTC0.LTC0_STA_PB_Field_0;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Done Interrupt
      DI             : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Read-only. Error Interrupt
      EI             : LTC0_STA_EI_Field := NRF_SVD.LTC0.LTC0_STA_EI_Field_0;
      --  unspecified
      Reserved_21_27 : HAL.UInt7 := 16#0#;
      --  Read-only. Public Key is Prime
      PKP            : Boolean := False;
      --  Read-only. Public Key Operation is One
      PKO            : Boolean := False;
      --  Read-only. Public Key Operation is Zero
      PKZ            : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_STA_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      AB             at 0 range 1 .. 1;
      DB             at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PB             at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      DI             at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      EI             at 0 range 20 .. 20;
      Reserved_21_27 at 0 range 21 .. 27;
      PKP            at 0 range 28 .. 28;
      PKO            at 0 range 29 .. 29;
      PKZ            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Error ID 1
   type LTC0_ESTA_ERRID1_Field is
     (
      --  Mode Error
      LTC0_ESTA_ERRID1_Field_0001,
      --  Data Size Error, including PKHA N Register Size Error
      LTC0_ESTA_ERRID1_Field_0010,
      --  Key Size Error, including PKHA E Register Size Error
      LTC0_ESTA_ERRID1_Field_0011,
      --  PKHA A Register Size Error
      LTC0_ESTA_ERRID1_Field_0100,
      --  PKHA B Register Size Error
      LTC0_ESTA_ERRID1_Field_0101,
      --  Data Arrived out of Sequence Error
      LTC0_ESTA_ERRID1_Field_0110,
      --  PKHA Divide by Zero Error
      LTC0_ESTA_ERRID1_Field_0111,
      --  PKHA Modulus Even Error
      LTC0_ESTA_ERRID1_Field_1000,
      --  DES Key Parity Error
      LTC0_ESTA_ERRID1_Field_1001,
      --  ICV Check Failed
      LTC0_ESTA_ERRID1_Field_1010,
      --  Internal Hardware Failure
      LTC0_ESTA_ERRID1_Field_1011,
      --  CCM AAD Size Error (either 1. AAD flag in B0 =1 and no AAD type
      --  provided, 2. AAD flag in B0 = 0 and AAD povided, or 3. AAD flag in B0
      --  =1 and not enough AAD provided - expecting more based on AAD size.)
      LTC0_ESTA_ERRID1_Field_1100,
      --  Invalid Crypto Engine Selected
      LTC0_ESTA_ERRID1_Field_1111)
     with Size => 4;
   for LTC0_ESTA_ERRID1_Field use
     (LTC0_ESTA_ERRID1_Field_0001 => 1,
      LTC0_ESTA_ERRID1_Field_0010 => 2,
      LTC0_ESTA_ERRID1_Field_0011 => 3,
      LTC0_ESTA_ERRID1_Field_0100 => 4,
      LTC0_ESTA_ERRID1_Field_0101 => 5,
      LTC0_ESTA_ERRID1_Field_0110 => 6,
      LTC0_ESTA_ERRID1_Field_0111 => 7,
      LTC0_ESTA_ERRID1_Field_1000 => 8,
      LTC0_ESTA_ERRID1_Field_1001 => 9,
      LTC0_ESTA_ERRID1_Field_1010 => 10,
      LTC0_ESTA_ERRID1_Field_1011 => 11,
      LTC0_ESTA_ERRID1_Field_1100 => 12,
      LTC0_ESTA_ERRID1_Field_1111 => 15);

   --  algorithms. The algorithms field indicates which algorithm is asserting
   --  an error. Others reserved
   type LTC0_ESTA_CL1_Field is
     (
      --  LTC General Error
      LTC0_ESTA_CL1_Field_0000,
      --  AES
      LTC0_ESTA_CL1_Field_0001,
      --  DES
      LTC0_ESTA_CL1_Field_0010,
      --  Public Key
      LTC0_ESTA_CL1_Field_1000)
     with Size => 4;
   for LTC0_ESTA_CL1_Field use
     (LTC0_ESTA_CL1_Field_0000 => 0,
      LTC0_ESTA_CL1_Field_0001 => 1,
      LTC0_ESTA_CL1_Field_0010 => 2,
      LTC0_ESTA_CL1_Field_1000 => 8);

   --  LTC Error Status Register
   type LTC0_ESTA_Register is record
      --  Read-only. Error ID 1
      ERRID1         : LTC0_ESTA_ERRID1_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. algorithms. The algorithms field indicates which algorithm
      --  is asserting an error. Others reserved
      CL1            : LTC0_ESTA_CL1_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_ESTA_Register use record
      ERRID1         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CL1            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTC0_AADSZ_AADSZ_Field is HAL.UInt4;

   --  LTC AAD Size Register
   type LTC0_AADSZ_Register is record
      --  AAD size in Bytes, mod 16.
      AADSZ         : LTC0_AADSZ_AADSZ_Field := 16#0#;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  AAD Last. Only AAD data will be written into the Input FIFO.
      AL            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_AADSZ_Register use record
      AADSZ         at 0 range 0 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      AL            at 0 range 31 .. 31;
   end record;

   subtype LTC0_IVSZ_IVSZ_Field is HAL.UInt4;

   --  LTC IV Size Register
   type LTC0_IVSZ_Register is record
      --  IV size in Bytes, mod 16.
      IVSZ          : LTC0_IVSZ_IVSZ_Field := 16#0#;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  IV Last. Only IV data will be written into the Input FIFO.
      IL            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_IVSZ_Register use record
      IVSZ          at 0 range 0 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      IL            at 0 range 31 .. 31;
   end record;

   subtype LTC0_PKASZ_PKASZ_Field is HAL.UInt9;

   --  LTC PKHA A Size Register
   type LTC0_PKASZ_Register is record
      --  PKHA A Size. This is the size of the numeric value, in bytes,
      --  contained within the PKHA A Register.
      PKASZ         : LTC0_PKASZ_PKASZ_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_PKASZ_Register use record
      PKASZ         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LTC0_PKBSZ_PKBSZ_Field is HAL.UInt9;

   --  LTC PKHA B Size Register
   type LTC0_PKBSZ_Register is record
      --  PKHA B Size. This is the size of the numeric value, in bytes,
      --  contained within the PKHA B Register.
      PKBSZ         : LTC0_PKBSZ_PKBSZ_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_PKBSZ_Register use record
      PKBSZ         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LTC0_PKNSZ_PKNSZ_Field is HAL.UInt9;

   --  LTC PKHA N Size Register
   type LTC0_PKNSZ_Register is record
      --  PKHA N Size. This is the size of the numeric value, in bytes,
      --  contained within the PKHA N Register.
      PKNSZ         : LTC0_PKNSZ_PKNSZ_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_PKNSZ_Register use record
      PKNSZ         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LTC0_PKESZ_PKESZ_Field is HAL.UInt9;

   --  LTC PKHA E Size Register
   type LTC0_PKESZ_Register is record
      --  PKHA E Size. This is the size of the numeric value, in bytes,
      --  contained within the PKHA E Register.
      PKESZ         : LTC0_PKESZ_PKESZ_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_PKESZ_Register use record
      PKESZ         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LTC0_VID1_MIN_REV_Field is HAL.UInt8;
   subtype LTC0_VID1_MAJ_REV_Field is HAL.UInt8;
   subtype LTC0_VID1_IP_ID_Field is HAL.UInt16;

   --  LTC Version ID Register
   type LTC0_VID1_Register is record
      --  Read-only. Minor revision number.
      MIN_REV : LTC0_VID1_MIN_REV_Field;
      --  Read-only. Major revision number.
      MAJ_REV : LTC0_VID1_MAJ_REV_Field;
      --  Read-only. ID(0x0038).
      IP_ID   : LTC0_VID1_IP_ID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_VID1_Register use record
      MIN_REV at 0 range 0 .. 7;
      MAJ_REV at 0 range 8 .. 15;
      IP_ID   at 0 range 16 .. 31;
   end record;

   subtype LTC0_CHAVID_AESREV_Field is HAL.UInt4;
   subtype LTC0_CHAVID_AESVID_Field is HAL.UInt4;
   subtype LTC0_CHAVID_DESREV_Field is HAL.UInt4;
   subtype LTC0_CHAVID_DESVID_Field is HAL.UInt4;
   subtype LTC0_CHAVID_PKHAREV_Field is HAL.UInt4;
   subtype LTC0_CHAVID_PKHAVID_Field is HAL.UInt4;

   --  LTC CHA Version ID Register
   type LTC0_CHAVID_Register is record
      --  Read-only. AES Revision Number
      AESREV         : LTC0_CHAVID_AESREV_Field;
      --  Read-only. AES Version ID
      AESVID         : LTC0_CHAVID_AESVID_Field;
      --  Read-only. DES Revision Number
      DESREV         : LTC0_CHAVID_DESREV_Field;
      --  Read-only. DES Version ID(0x0). 0000 - High-performance DESA 0001 -
      --  Low-performance DESA
      DESVID         : LTC0_CHAVID_DESVID_Field;
      --  Read-only. PK Revision Number
      PKHAREV        : LTC0_CHAVID_PKHAREV_Field;
      --  Read-only. PK Version ID 0001 - 32-bit PKHA-SD 0010 - 64-bit PKHA-SD
      --  0011 - 128-bit PKHA-SD 0100 - 16-bit PKHA-SD
      PKHAVID        : LTC0_CHAVID_PKHAVID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_CHAVID_Register use record
      AESREV         at 0 range 0 .. 3;
      AESVID         at 0 range 4 .. 7;
      DESREV         at 0 range 8 .. 11;
      DESVID         at 0 range 12 .. 15;
      PKHAREV        at 0 range 16 .. 19;
      PKHAVID        at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LTC0_FIFOSTA_IFL_Field is HAL.UInt7;
   subtype LTC0_FIFOSTA_OFL_Field is HAL.UInt7;

   --  LTC FIFO Status Register
   type LTC0_FIFOSTA_Register is record
      --  Read-only. Input FIFO Level. These bits indicate the current number
      --  of entries in the Input FIFO.
      IFL            : LTC0_FIFOSTA_IFL_Field;
      --  unspecified
      Reserved_7_14  : HAL.UInt8;
      --  Read-only. Input FIFO Full. The Input FIFO is full and should not be
      --  written to.
      IFF            : Boolean;
      --  Read-only. Output FIFO Level. These bits indicate the current number
      --  of entries in the Output FIFO.
      OFL            : LTC0_FIFOSTA_OFL_Field;
      --  unspecified
      Reserved_23_30 : HAL.UInt8;
      --  Read-only. Output FIFO Full. The Output FIFO is full and should not
      --  be written to.
      OFF            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTC0_FIFOSTA_Register use record
      IFL            at 0 range 0 .. 6;
      Reserved_7_14  at 0 range 7 .. 14;
      IFF            at 0 range 15 .. 15;
      OFL            at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      OFF            at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LTC0_Disc is
     (
      Default,
      Pk,
      LTC0_Disc_0_0,
      LTC0_Disc_0,
      LTC0_Disc_0_1,
      LTC0_Disc_1,
      LTC0_Disc_0_2,
      LTC0_Disc_2,
      LTC0_Disc_0_3,
      LTC0_Disc_3,
      LTC0_Disc_0_4,
      LTC0_Disc_4,
      LTC0_Disc_0_5,
      LTC0_Disc_5,
      LTC0_Disc_0_6,
      LTC0_Disc_6,
      LTC0_Disc_0_7,
      LTC0_Disc_7,
      LTC0_Disc_0_8,
      LTC0_Disc_8,
      LTC0_Disc_0_9,
      LTC0_Disc_9,
      LTC0_Disc_0_10,
      LTC0_Disc_10,
      LTC0_Disc_0_11,
      LTC0_Disc_11,
      LTC0_Disc_0_12,
      LTC0_Disc_12,
      LTC0_Disc_0_13,
      LTC0_Disc_13,
      LTC0_Disc_0_14,
      LTC0_Disc_14,
      LTC0_Disc_0_15,
      LTC0_Disc_15,
      LTC0_Disc_1_0,
      LTC0_Disc_16,
      LTC0_Disc_1_1,
      LTC0_Disc_17,
      LTC0_Disc_1_2,
      LTC0_Disc_18,
      LTC0_Disc_1_3,
      LTC0_Disc_19,
      LTC0_Disc_1_4,
      LTC0_Disc_20,
      LTC0_Disc_1_5,
      LTC0_Disc_21,
      LTC0_Disc_1_6,
      LTC0_Disc_22,
      LTC0_Disc_1_7,
      LTC0_Disc_23,
      LTC0_Disc_1_8,
      LTC0_Disc_24,
      LTC0_Disc_1_9,
      LTC0_Disc_25,
      LTC0_Disc_1_10,
      LTC0_Disc_26,
      LTC0_Disc_1_11,
      LTC0_Disc_27,
      LTC0_Disc_1_12,
      LTC0_Disc_28,
      LTC0_Disc_1_13,
      LTC0_Disc_29,
      LTC0_Disc_1_14,
      LTC0_Disc_30,
      LTC0_Disc_1_15,
      LTC0_Disc_31,
      LTC0_Disc_2_0,
      LTC0_Disc_32,
      LTC0_Disc_2_1,
      LTC0_Disc_33,
      LTC0_Disc_2_2,
      LTC0_Disc_34,
      LTC0_Disc_2_3,
      LTC0_Disc_35,
      LTC0_Disc_2_4,
      LTC0_Disc_36,
      LTC0_Disc_2_5,
      LTC0_Disc_37,
      LTC0_Disc_2_6,
      LTC0_Disc_38,
      LTC0_Disc_2_7,
      LTC0_Disc_39,
      LTC0_Disc_2_8,
      LTC0_Disc_40,
      LTC0_Disc_2_9,
      LTC0_Disc_41,
      LTC0_Disc_2_10,
      LTC0_Disc_42,
      LTC0_Disc_2_11,
      LTC0_Disc_43,
      LTC0_Disc_2_12,
      LTC0_Disc_44,
      LTC0_Disc_2_13,
      LTC0_Disc_45,
      LTC0_Disc_2_14,
      LTC0_Disc_46,
      LTC0_Disc_2_15,
      LTC0_Disc_47,
      LTC0_Disc_3_0,
      LTC0_Disc_48,
      LTC0_Disc_3_1,
      LTC0_Disc_49,
      LTC0_Disc_3_2,
      LTC0_Disc_50,
      LTC0_Disc_3_3,
      LTC0_Disc_51,
      LTC0_Disc_3_4,
      LTC0_Disc_52,
      LTC0_Disc_3_5,
      LTC0_Disc_53,
      LTC0_Disc_3_6,
      LTC0_Disc_54,
      LTC0_Disc_3_7,
      LTC0_Disc_55,
      LTC0_Disc_3_8,
      LTC0_Disc_56,
      LTC0_Disc_3_9,
      LTC0_Disc_57,
      LTC0_Disc_3_10,
      LTC0_Disc_58,
      LTC0_Disc_3_11,
      LTC0_Disc_59,
      LTC0_Disc_3_12,
      LTC0_Disc_60,
      LTC0_Disc_3_13,
      LTC0_Disc_61,
      LTC0_Disc_3_14,
      LTC0_Disc_62,
      LTC0_Disc_3_15,
      LTC0_Disc_63);

   --  LTC
   type LTC0_Peripheral
     (Discriminent : LTC0_Disc := Default)
   is record
      --  LTC Key Size Register
      LTC0_KS      : aliased LTC0_KS_Register;
      --  LTC Data Size Register
      LTC0_DS      : aliased LTC0_DS_Register;
      --  LTC ICV Size Register
      LTC0_ICVS    : aliased LTC0_ICVS_Register;
      --  LTC Command Register
      LTC0_COM     : aliased LTC0_COM_Register;
      --  LTC Control Register
      LTC0_CTL     : aliased LTC0_CTL_Register;
      --  LTC Clear Written Register
      LTC0_CW      : aliased LTC0_CW_Register;
      --  LTC Status Register
      LTC0_STA     : aliased LTC0_STA_Register;
      --  LTC Error Status Register
      LTC0_ESTA    : aliased LTC0_ESTA_Register;
      --  LTC AAD Size Register
      LTC0_AADSZ   : aliased LTC0_AADSZ_Register;
      --  LTC IV Size Register
      LTC0_IVSZ    : aliased LTC0_IVSZ_Register;
      --  LTC DPA Mask Seed Register
      LTC0_DPAMS   : aliased HAL.UInt32;
      --  LTC PKHA A Size Register
      LTC0_PKASZ   : aliased LTC0_PKASZ_Register;
      --  LTC PKHA B Size Register
      LTC0_PKBSZ   : aliased LTC0_PKBSZ_Register;
      --  LTC PKHA N Size Register
      LTC0_PKNSZ   : aliased LTC0_PKNSZ_Register;
      --  LTC PKHA E Size Register
      LTC0_PKESZ   : aliased LTC0_PKESZ_Register;
      --  LTC Context Register
      LTC0_CTX_0   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_1   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_2   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_3   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_4   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_5   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_6   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_7   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_8   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_9   : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_10  : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_11  : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_12  : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_13  : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_14  : aliased HAL.UInt32;
      --  LTC Context Register
      LTC0_CTX_15  : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_0   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_1   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_2   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_3   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_4   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_5   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_6   : aliased HAL.UInt32;
      --  LTC Key Registers
      LTC0_KEY_7   : aliased HAL.UInt32;
      --  LTC Version ID Register
      LTC0_VID1    : aliased LTC0_VID1_Register;
      --  LTC CHA Version ID Register
      LTC0_CHAVID  : aliased LTC0_CHAVID_Register;
      --  LTC FIFO Status Register
      LTC0_FIFOSTA : aliased LTC0_FIFOSTA_Register;
      --  LTC Input Data FIFO
      LTC0_IFIFO   : aliased HAL.UInt32;
      --  LTC Output Data FIFO
      LTC0_OFIFO   : aliased HAL.UInt32;
      case Discriminent is
         when Default =>
            --  LTC Mode Register (non-PKHA/non-RNG use)
            LTC0_MD : aliased LTC0_MD_Register;
         when Pk =>
            --  LTC Mode Register (PublicKey)
            LTC0_MDPK : aliased LTC0_MDPK_Register;
         when LTC0_Disc_0_0 =>
            --  LTC PKHA A0 0 Register
            LTC0_PKA0_0 : aliased HAL.UInt32;
            --  LTC PKHA B0 0 Register
            LTC0_PKB0_0 : aliased HAL.UInt32;
            --  LTC PKHA N0 0 Register
            LTC0_PKN0_0 : aliased HAL.UInt32;
            --  LTC PKHA E0 0 Register
            LTC0_PKE0_0 : aliased HAL.UInt32;
         when LTC0_Disc_0 =>
            --  LTC PKHA A 0 Register
            LTC0_PKA_0 : aliased HAL.UInt32;
            --  LTC PKHA B 0 Register
            LTC0_PKB_0 : aliased HAL.UInt32;
            --  LTC PKHA N 0 Register
            LTC0_PKN_0 : aliased HAL.UInt32;
            --  LTC PKHA E 0 Register
            LTC0_PKE_0 : aliased HAL.UInt32;
         when LTC0_Disc_0_1 =>
            --  LTC PKHA A0 1 Register
            LTC0_PKA0_1 : aliased HAL.UInt32;
            --  LTC PKHA B0 1 Register
            LTC0_PKB0_1 : aliased HAL.UInt32;
            --  LTC PKHA N0 1 Register
            LTC0_PKN0_1 : aliased HAL.UInt32;
            --  LTC PKHA E0 1 Register
            LTC0_PKE0_1 : aliased HAL.UInt32;
         when LTC0_Disc_1 =>
            --  LTC PKHA A 1 Register
            LTC0_PKA_1 : aliased HAL.UInt32;
            --  LTC PKHA B 1 Register
            LTC0_PKB_1 : aliased HAL.UInt32;
            --  LTC PKHA N 1 Register
            LTC0_PKN_1 : aliased HAL.UInt32;
            --  LTC PKHA E 1 Register
            LTC0_PKE_1 : aliased HAL.UInt32;
         when LTC0_Disc_0_2 =>
            --  LTC PKHA A0 2 Register
            LTC0_PKA0_2 : aliased HAL.UInt32;
            --  LTC PKHA B0 2 Register
            LTC0_PKB0_2 : aliased HAL.UInt32;
            --  LTC PKHA N0 2 Register
            LTC0_PKN0_2 : aliased HAL.UInt32;
            --  LTC PKHA E0 2 Register
            LTC0_PKE0_2 : aliased HAL.UInt32;
         when LTC0_Disc_2 =>
            --  LTC PKHA A 2 Register
            LTC0_PKA_2 : aliased HAL.UInt32;
            --  LTC PKHA B 2 Register
            LTC0_PKB_2 : aliased HAL.UInt32;
            --  LTC PKHA N 2 Register
            LTC0_PKN_2 : aliased HAL.UInt32;
            --  LTC PKHA E 2 Register
            LTC0_PKE_2 : aliased HAL.UInt32;
         when LTC0_Disc_0_3 =>
            --  LTC PKHA A0 3 Register
            LTC0_PKA0_3 : aliased HAL.UInt32;
            --  LTC PKHA B0 3 Register
            LTC0_PKB0_3 : aliased HAL.UInt32;
            --  LTC PKHA N0 3 Register
            LTC0_PKN0_3 : aliased HAL.UInt32;
            --  LTC PKHA E0 3 Register
            LTC0_PKE0_3 : aliased HAL.UInt32;
         when LTC0_Disc_3 =>
            --  LTC PKHA A 3 Register
            LTC0_PKA_3 : aliased HAL.UInt32;
            --  LTC PKHA B 3 Register
            LTC0_PKB_3 : aliased HAL.UInt32;
            --  LTC PKHA N 3 Register
            LTC0_PKN_3 : aliased HAL.UInt32;
            --  LTC PKHA E 3 Register
            LTC0_PKE_3 : aliased HAL.UInt32;
         when LTC0_Disc_0_4 =>
            --  LTC PKHA A0 4 Register
            LTC0_PKA0_4 : aliased HAL.UInt32;
            --  LTC PKHA B0 4 Register
            LTC0_PKB0_4 : aliased HAL.UInt32;
            --  LTC PKHA N0 4 Register
            LTC0_PKN0_4 : aliased HAL.UInt32;
            --  LTC PKHA E0 4 Register
            LTC0_PKE0_4 : aliased HAL.UInt32;
         when LTC0_Disc_4 =>
            --  LTC PKHA A 4 Register
            LTC0_PKA_4 : aliased HAL.UInt32;
            --  LTC PKHA B 4 Register
            LTC0_PKB_4 : aliased HAL.UInt32;
            --  LTC PKHA N 4 Register
            LTC0_PKN_4 : aliased HAL.UInt32;
            --  LTC PKHA E 4 Register
            LTC0_PKE_4 : aliased HAL.UInt32;
         when LTC0_Disc_0_5 =>
            --  LTC PKHA A0 5 Register
            LTC0_PKA0_5 : aliased HAL.UInt32;
            --  LTC PKHA B0 5 Register
            LTC0_PKB0_5 : aliased HAL.UInt32;
            --  LTC PKHA N0 5 Register
            LTC0_PKN0_5 : aliased HAL.UInt32;
            --  LTC PKHA E0 5 Register
            LTC0_PKE0_5 : aliased HAL.UInt32;
         when LTC0_Disc_5 =>
            --  LTC PKHA A 5 Register
            LTC0_PKA_5 : aliased HAL.UInt32;
            --  LTC PKHA B 5 Register
            LTC0_PKB_5 : aliased HAL.UInt32;
            --  LTC PKHA N 5 Register
            LTC0_PKN_5 : aliased HAL.UInt32;
            --  LTC PKHA E 5 Register
            LTC0_PKE_5 : aliased HAL.UInt32;
         when LTC0_Disc_0_6 =>
            --  LTC PKHA A0 6 Register
            LTC0_PKA0_6 : aliased HAL.UInt32;
            --  LTC PKHA B0 6 Register
            LTC0_PKB0_6 : aliased HAL.UInt32;
            --  LTC PKHA N0 6 Register
            LTC0_PKN0_6 : aliased HAL.UInt32;
            --  LTC PKHA E0 6 Register
            LTC0_PKE0_6 : aliased HAL.UInt32;
         when LTC0_Disc_6 =>
            --  LTC PKHA A 6 Register
            LTC0_PKA_6 : aliased HAL.UInt32;
            --  LTC PKHA B 6 Register
            LTC0_PKB_6 : aliased HAL.UInt32;
            --  LTC PKHA N 6 Register
            LTC0_PKN_6 : aliased HAL.UInt32;
            --  LTC PKHA E 6 Register
            LTC0_PKE_6 : aliased HAL.UInt32;
         when LTC0_Disc_0_7 =>
            --  LTC PKHA A0 7 Register
            LTC0_PKA0_7 : aliased HAL.UInt32;
            --  LTC PKHA B0 7 Register
            LTC0_PKB0_7 : aliased HAL.UInt32;
            --  LTC PKHA N0 7 Register
            LTC0_PKN0_7 : aliased HAL.UInt32;
            --  LTC PKHA E0 7 Register
            LTC0_PKE0_7 : aliased HAL.UInt32;
         when LTC0_Disc_7 =>
            --  LTC PKHA A 7 Register
            LTC0_PKA_7 : aliased HAL.UInt32;
            --  LTC PKHA B 7 Register
            LTC0_PKB_7 : aliased HAL.UInt32;
            --  LTC PKHA N 7 Register
            LTC0_PKN_7 : aliased HAL.UInt32;
            --  LTC PKHA E 7 Register
            LTC0_PKE_7 : aliased HAL.UInt32;
         when LTC0_Disc_0_8 =>
            --  LTC PKHA A0 8 Register
            LTC0_PKA0_8 : aliased HAL.UInt32;
            --  LTC PKHA B0 8 Register
            LTC0_PKB0_8 : aliased HAL.UInt32;
            --  LTC PKHA N0 8 Register
            LTC0_PKN0_8 : aliased HAL.UInt32;
            --  LTC PKHA E0 8 Register
            LTC0_PKE0_8 : aliased HAL.UInt32;
         when LTC0_Disc_8 =>
            --  LTC PKHA A 8 Register
            LTC0_PKA_8 : aliased HAL.UInt32;
            --  LTC PKHA B 8 Register
            LTC0_PKB_8 : aliased HAL.UInt32;
            --  LTC PKHA N 8 Register
            LTC0_PKN_8 : aliased HAL.UInt32;
            --  LTC PKHA E 8 Register
            LTC0_PKE_8 : aliased HAL.UInt32;
         when LTC0_Disc_0_9 =>
            --  LTC PKHA A0 9 Register
            LTC0_PKA0_9 : aliased HAL.UInt32;
            --  LTC PKHA B0 9 Register
            LTC0_PKB0_9 : aliased HAL.UInt32;
            --  LTC PKHA N0 9 Register
            LTC0_PKN0_9 : aliased HAL.UInt32;
            --  LTC PKHA E0 9 Register
            LTC0_PKE0_9 : aliased HAL.UInt32;
         when LTC0_Disc_9 =>
            --  LTC PKHA A 9 Register
            LTC0_PKA_9 : aliased HAL.UInt32;
            --  LTC PKHA B 9 Register
            LTC0_PKB_9 : aliased HAL.UInt32;
            --  LTC PKHA N 9 Register
            LTC0_PKN_9 : aliased HAL.UInt32;
            --  LTC PKHA E 9 Register
            LTC0_PKE_9 : aliased HAL.UInt32;
         when LTC0_Disc_0_10 =>
            --  LTC PKHA A0 10 Register
            LTC0_PKA0_10 : aliased HAL.UInt32;
            --  LTC PKHA B0 10 Register
            LTC0_PKB0_10 : aliased HAL.UInt32;
            --  LTC PKHA N0 10 Register
            LTC0_PKN0_10 : aliased HAL.UInt32;
            --  LTC PKHA E0 10 Register
            LTC0_PKE0_10 : aliased HAL.UInt32;
         when LTC0_Disc_10 =>
            --  LTC PKHA A 10 Register
            LTC0_PKA_10 : aliased HAL.UInt32;
            --  LTC PKHA B 10 Register
            LTC0_PKB_10 : aliased HAL.UInt32;
            --  LTC PKHA N 10 Register
            LTC0_PKN_10 : aliased HAL.UInt32;
            --  LTC PKHA E 10 Register
            LTC0_PKE_10 : aliased HAL.UInt32;
         when LTC0_Disc_0_11 =>
            --  LTC PKHA A0 11 Register
            LTC0_PKA0_11 : aliased HAL.UInt32;
            --  LTC PKHA B0 11 Register
            LTC0_PKB0_11 : aliased HAL.UInt32;
            --  LTC PKHA N0 11 Register
            LTC0_PKN0_11 : aliased HAL.UInt32;
            --  LTC PKHA E0 11 Register
            LTC0_PKE0_11 : aliased HAL.UInt32;
         when LTC0_Disc_11 =>
            --  LTC PKHA A 11 Register
            LTC0_PKA_11 : aliased HAL.UInt32;
            --  LTC PKHA B 11 Register
            LTC0_PKB_11 : aliased HAL.UInt32;
            --  LTC PKHA N 11 Register
            LTC0_PKN_11 : aliased HAL.UInt32;
            --  LTC PKHA E 11 Register
            LTC0_PKE_11 : aliased HAL.UInt32;
         when LTC0_Disc_0_12 =>
            --  LTC PKHA A0 12 Register
            LTC0_PKA0_12 : aliased HAL.UInt32;
            --  LTC PKHA B0 12 Register
            LTC0_PKB0_12 : aliased HAL.UInt32;
            --  LTC PKHA N0 12 Register
            LTC0_PKN0_12 : aliased HAL.UInt32;
            --  LTC PKHA E0 12 Register
            LTC0_PKE0_12 : aliased HAL.UInt32;
         when LTC0_Disc_12 =>
            --  LTC PKHA A 12 Register
            LTC0_PKA_12 : aliased HAL.UInt32;
            --  LTC PKHA B 12 Register
            LTC0_PKB_12 : aliased HAL.UInt32;
            --  LTC PKHA N 12 Register
            LTC0_PKN_12 : aliased HAL.UInt32;
            --  LTC PKHA E 12 Register
            LTC0_PKE_12 : aliased HAL.UInt32;
         when LTC0_Disc_0_13 =>
            --  LTC PKHA A0 13 Register
            LTC0_PKA0_13 : aliased HAL.UInt32;
            --  LTC PKHA B0 13 Register
            LTC0_PKB0_13 : aliased HAL.UInt32;
            --  LTC PKHA N0 13 Register
            LTC0_PKN0_13 : aliased HAL.UInt32;
            --  LTC PKHA E0 13 Register
            LTC0_PKE0_13 : aliased HAL.UInt32;
         when LTC0_Disc_13 =>
            --  LTC PKHA A 13 Register
            LTC0_PKA_13 : aliased HAL.UInt32;
            --  LTC PKHA B 13 Register
            LTC0_PKB_13 : aliased HAL.UInt32;
            --  LTC PKHA N 13 Register
            LTC0_PKN_13 : aliased HAL.UInt32;
            --  LTC PKHA E 13 Register
            LTC0_PKE_13 : aliased HAL.UInt32;
         when LTC0_Disc_0_14 =>
            --  LTC PKHA A0 14 Register
            LTC0_PKA0_14 : aliased HAL.UInt32;
            --  LTC PKHA B0 14 Register
            LTC0_PKB0_14 : aliased HAL.UInt32;
            --  LTC PKHA N0 14 Register
            LTC0_PKN0_14 : aliased HAL.UInt32;
            --  LTC PKHA E0 14 Register
            LTC0_PKE0_14 : aliased HAL.UInt32;
         when LTC0_Disc_14 =>
            --  LTC PKHA A 14 Register
            LTC0_PKA_14 : aliased HAL.UInt32;
            --  LTC PKHA B 14 Register
            LTC0_PKB_14 : aliased HAL.UInt32;
            --  LTC PKHA N 14 Register
            LTC0_PKN_14 : aliased HAL.UInt32;
            --  LTC PKHA E 14 Register
            LTC0_PKE_14 : aliased HAL.UInt32;
         when LTC0_Disc_0_15 =>
            --  LTC PKHA A0 15 Register
            LTC0_PKA0_15 : aliased HAL.UInt32;
            --  LTC PKHA B0 15 Register
            LTC0_PKB0_15 : aliased HAL.UInt32;
            --  LTC PKHA N0 15 Register
            LTC0_PKN0_15 : aliased HAL.UInt32;
            --  LTC PKHA E0 15 Register
            LTC0_PKE0_15 : aliased HAL.UInt32;
         when LTC0_Disc_15 =>
            --  LTC PKHA A 15 Register
            LTC0_PKA_15 : aliased HAL.UInt32;
            --  LTC PKHA B 15 Register
            LTC0_PKB_15 : aliased HAL.UInt32;
            --  LTC PKHA N 15 Register
            LTC0_PKN_15 : aliased HAL.UInt32;
            --  LTC PKHA E 15 Register
            LTC0_PKE_15 : aliased HAL.UInt32;
         when LTC0_Disc_1_0 =>
            --  LTC PKHA A1 0 Register
            LTC0_PKA1_0 : aliased HAL.UInt32;
            --  LTC PKHA B1 0 Register
            LTC0_PKB1_0 : aliased HAL.UInt32;
            --  LTC PKHA N1 0 Register
            LTC0_PKN1_0 : aliased HAL.UInt32;
            --  LTC PKHA E1 0 Register
            LTC0_PKE1_0 : aliased HAL.UInt32;
         when LTC0_Disc_16 =>
            --  LTC PKHA A 16 Register
            LTC0_PKA_16 : aliased HAL.UInt32;
            --  LTC PKHA B 16 Register
            LTC0_PKB_16 : aliased HAL.UInt32;
            --  LTC PKHA N 16 Register
            LTC0_PKN_16 : aliased HAL.UInt32;
            --  LTC PKHA E 16 Register
            LTC0_PKE_16 : aliased HAL.UInt32;
         when LTC0_Disc_1_1 =>
            --  LTC PKHA A1 1 Register
            LTC0_PKA1_1 : aliased HAL.UInt32;
            --  LTC PKHA B1 1 Register
            LTC0_PKB1_1 : aliased HAL.UInt32;
            --  LTC PKHA N1 1 Register
            LTC0_PKN1_1 : aliased HAL.UInt32;
            --  LTC PKHA E1 1 Register
            LTC0_PKE1_1 : aliased HAL.UInt32;
         when LTC0_Disc_17 =>
            --  LTC PKHA A 17 Register
            LTC0_PKA_17 : aliased HAL.UInt32;
            --  LTC PKHA B 17 Register
            LTC0_PKB_17 : aliased HAL.UInt32;
            --  LTC PKHA N 17 Register
            LTC0_PKN_17 : aliased HAL.UInt32;
            --  LTC PKHA E 17 Register
            LTC0_PKE_17 : aliased HAL.UInt32;
         when LTC0_Disc_1_2 =>
            --  LTC PKHA A1 2 Register
            LTC0_PKA1_2 : aliased HAL.UInt32;
            --  LTC PKHA B1 2 Register
            LTC0_PKB1_2 : aliased HAL.UInt32;
            --  LTC PKHA N1 2 Register
            LTC0_PKN1_2 : aliased HAL.UInt32;
            --  LTC PKHA E1 2 Register
            LTC0_PKE1_2 : aliased HAL.UInt32;
         when LTC0_Disc_18 =>
            --  LTC PKHA A 18 Register
            LTC0_PKA_18 : aliased HAL.UInt32;
            --  LTC PKHA B 18 Register
            LTC0_PKB_18 : aliased HAL.UInt32;
            --  LTC PKHA N 18 Register
            LTC0_PKN_18 : aliased HAL.UInt32;
            --  LTC PKHA E 18 Register
            LTC0_PKE_18 : aliased HAL.UInt32;
         when LTC0_Disc_1_3 =>
            --  LTC PKHA A1 3 Register
            LTC0_PKA1_3 : aliased HAL.UInt32;
            --  LTC PKHA B1 3 Register
            LTC0_PKB1_3 : aliased HAL.UInt32;
            --  LTC PKHA N1 3 Register
            LTC0_PKN1_3 : aliased HAL.UInt32;
            --  LTC PKHA E1 3 Register
            LTC0_PKE1_3 : aliased HAL.UInt32;
         when LTC0_Disc_19 =>
            --  LTC PKHA A 19 Register
            LTC0_PKA_19 : aliased HAL.UInt32;
            --  LTC PKHA B 19 Register
            LTC0_PKB_19 : aliased HAL.UInt32;
            --  LTC PKHA N 19 Register
            LTC0_PKN_19 : aliased HAL.UInt32;
            --  LTC PKHA E 19 Register
            LTC0_PKE_19 : aliased HAL.UInt32;
         when LTC0_Disc_1_4 =>
            --  LTC PKHA A1 4 Register
            LTC0_PKA1_4 : aliased HAL.UInt32;
            --  LTC PKHA B1 4 Register
            LTC0_PKB1_4 : aliased HAL.UInt32;
            --  LTC PKHA N1 4 Register
            LTC0_PKN1_4 : aliased HAL.UInt32;
            --  LTC PKHA E1 4 Register
            LTC0_PKE1_4 : aliased HAL.UInt32;
         when LTC0_Disc_20 =>
            --  LTC PKHA A 20 Register
            LTC0_PKA_20 : aliased HAL.UInt32;
            --  LTC PKHA B 20 Register
            LTC0_PKB_20 : aliased HAL.UInt32;
            --  LTC PKHA N 20 Register
            LTC0_PKN_20 : aliased HAL.UInt32;
            --  LTC PKHA E 20 Register
            LTC0_PKE_20 : aliased HAL.UInt32;
         when LTC0_Disc_1_5 =>
            --  LTC PKHA A1 5 Register
            LTC0_PKA1_5 : aliased HAL.UInt32;
            --  LTC PKHA B1 5 Register
            LTC0_PKB1_5 : aliased HAL.UInt32;
            --  LTC PKHA N1 5 Register
            LTC0_PKN1_5 : aliased HAL.UInt32;
            --  LTC PKHA E1 5 Register
            LTC0_PKE1_5 : aliased HAL.UInt32;
         when LTC0_Disc_21 =>
            --  LTC PKHA A 21 Register
            LTC0_PKA_21 : aliased HAL.UInt32;
            --  LTC PKHA B 21 Register
            LTC0_PKB_21 : aliased HAL.UInt32;
            --  LTC PKHA N 21 Register
            LTC0_PKN_21 : aliased HAL.UInt32;
            --  LTC PKHA E 21 Register
            LTC0_PKE_21 : aliased HAL.UInt32;
         when LTC0_Disc_1_6 =>
            --  LTC PKHA A1 6 Register
            LTC0_PKA1_6 : aliased HAL.UInt32;
            --  LTC PKHA B1 6 Register
            LTC0_PKB1_6 : aliased HAL.UInt32;
            --  LTC PKHA N1 6 Register
            LTC0_PKN1_6 : aliased HAL.UInt32;
            --  LTC PKHA E1 6 Register
            LTC0_PKE1_6 : aliased HAL.UInt32;
         when LTC0_Disc_22 =>
            --  LTC PKHA A 22 Register
            LTC0_PKA_22 : aliased HAL.UInt32;
            --  LTC PKHA B 22 Register
            LTC0_PKB_22 : aliased HAL.UInt32;
            --  LTC PKHA N 22 Register
            LTC0_PKN_22 : aliased HAL.UInt32;
            --  LTC PKHA E 22 Register
            LTC0_PKE_22 : aliased HAL.UInt32;
         when LTC0_Disc_1_7 =>
            --  LTC PKHA A1 7 Register
            LTC0_PKA1_7 : aliased HAL.UInt32;
            --  LTC PKHA B1 7 Register
            LTC0_PKB1_7 : aliased HAL.UInt32;
            --  LTC PKHA N1 7 Register
            LTC0_PKN1_7 : aliased HAL.UInt32;
            --  LTC PKHA E1 7 Register
            LTC0_PKE1_7 : aliased HAL.UInt32;
         when LTC0_Disc_23 =>
            --  LTC PKHA A 23 Register
            LTC0_PKA_23 : aliased HAL.UInt32;
            --  LTC PKHA B 23 Register
            LTC0_PKB_23 : aliased HAL.UInt32;
            --  LTC PKHA N 23 Register
            LTC0_PKN_23 : aliased HAL.UInt32;
            --  LTC PKHA E 23 Register
            LTC0_PKE_23 : aliased HAL.UInt32;
         when LTC0_Disc_1_8 =>
            --  LTC PKHA A1 8 Register
            LTC0_PKA1_8 : aliased HAL.UInt32;
            --  LTC PKHA B1 8 Register
            LTC0_PKB1_8 : aliased HAL.UInt32;
            --  LTC PKHA N1 8 Register
            LTC0_PKN1_8 : aliased HAL.UInt32;
            --  LTC PKHA E1 8 Register
            LTC0_PKE1_8 : aliased HAL.UInt32;
         when LTC0_Disc_24 =>
            --  LTC PKHA A 24 Register
            LTC0_PKA_24 : aliased HAL.UInt32;
            --  LTC PKHA B 24 Register
            LTC0_PKB_24 : aliased HAL.UInt32;
            --  LTC PKHA N 24 Register
            LTC0_PKN_24 : aliased HAL.UInt32;
            --  LTC PKHA E 24 Register
            LTC0_PKE_24 : aliased HAL.UInt32;
         when LTC0_Disc_1_9 =>
            --  LTC PKHA A1 9 Register
            LTC0_PKA1_9 : aliased HAL.UInt32;
            --  LTC PKHA B1 9 Register
            LTC0_PKB1_9 : aliased HAL.UInt32;
            --  LTC PKHA N1 9 Register
            LTC0_PKN1_9 : aliased HAL.UInt32;
            --  LTC PKHA E1 9 Register
            LTC0_PKE1_9 : aliased HAL.UInt32;
         when LTC0_Disc_25 =>
            --  LTC PKHA A 25 Register
            LTC0_PKA_25 : aliased HAL.UInt32;
            --  LTC PKHA B 25 Register
            LTC0_PKB_25 : aliased HAL.UInt32;
            --  LTC PKHA N 25 Register
            LTC0_PKN_25 : aliased HAL.UInt32;
            --  LTC PKHA E 25 Register
            LTC0_PKE_25 : aliased HAL.UInt32;
         when LTC0_Disc_1_10 =>
            --  LTC PKHA A1 10 Register
            LTC0_PKA1_10 : aliased HAL.UInt32;
            --  LTC PKHA B1 10 Register
            LTC0_PKB1_10 : aliased HAL.UInt32;
            --  LTC PKHA N1 10 Register
            LTC0_PKN1_10 : aliased HAL.UInt32;
            --  LTC PKHA E1 10 Register
            LTC0_PKE1_10 : aliased HAL.UInt32;
         when LTC0_Disc_26 =>
            --  LTC PKHA A 26 Register
            LTC0_PKA_26 : aliased HAL.UInt32;
            --  LTC PKHA B 26 Register
            LTC0_PKB_26 : aliased HAL.UInt32;
            --  LTC PKHA N 26 Register
            LTC0_PKN_26 : aliased HAL.UInt32;
            --  LTC PKHA E 26 Register
            LTC0_PKE_26 : aliased HAL.UInt32;
         when LTC0_Disc_1_11 =>
            --  LTC PKHA A1 11 Register
            LTC0_PKA1_11 : aliased HAL.UInt32;
            --  LTC PKHA B1 11 Register
            LTC0_PKB1_11 : aliased HAL.UInt32;
            --  LTC PKHA N1 11 Register
            LTC0_PKN1_11 : aliased HAL.UInt32;
            --  LTC PKHA E1 11 Register
            LTC0_PKE1_11 : aliased HAL.UInt32;
         when LTC0_Disc_27 =>
            --  LTC PKHA A 27 Register
            LTC0_PKA_27 : aliased HAL.UInt32;
            --  LTC PKHA B 27 Register
            LTC0_PKB_27 : aliased HAL.UInt32;
            --  LTC PKHA N 27 Register
            LTC0_PKN_27 : aliased HAL.UInt32;
            --  LTC PKHA E 27 Register
            LTC0_PKE_27 : aliased HAL.UInt32;
         when LTC0_Disc_1_12 =>
            --  LTC PKHA A1 12 Register
            LTC0_PKA1_12 : aliased HAL.UInt32;
            --  LTC PKHA B1 12 Register
            LTC0_PKB1_12 : aliased HAL.UInt32;
            --  LTC PKHA N1 12 Register
            LTC0_PKN1_12 : aliased HAL.UInt32;
            --  LTC PKHA E1 12 Register
            LTC0_PKE1_12 : aliased HAL.UInt32;
         when LTC0_Disc_28 =>
            --  LTC PKHA A 28 Register
            LTC0_PKA_28 : aliased HAL.UInt32;
            --  LTC PKHA B 28 Register
            LTC0_PKB_28 : aliased HAL.UInt32;
            --  LTC PKHA N 28 Register
            LTC0_PKN_28 : aliased HAL.UInt32;
            --  LTC PKHA E 28 Register
            LTC0_PKE_28 : aliased HAL.UInt32;
         when LTC0_Disc_1_13 =>
            --  LTC PKHA A1 13 Register
            LTC0_PKA1_13 : aliased HAL.UInt32;
            --  LTC PKHA B1 13 Register
            LTC0_PKB1_13 : aliased HAL.UInt32;
            --  LTC PKHA N1 13 Register
            LTC0_PKN1_13 : aliased HAL.UInt32;
            --  LTC PKHA E1 13 Register
            LTC0_PKE1_13 : aliased HAL.UInt32;
         when LTC0_Disc_29 =>
            --  LTC PKHA A 29 Register
            LTC0_PKA_29 : aliased HAL.UInt32;
            --  LTC PKHA B 29 Register
            LTC0_PKB_29 : aliased HAL.UInt32;
            --  LTC PKHA N 29 Register
            LTC0_PKN_29 : aliased HAL.UInt32;
            --  LTC PKHA E 29 Register
            LTC0_PKE_29 : aliased HAL.UInt32;
         when LTC0_Disc_1_14 =>
            --  LTC PKHA A1 14 Register
            LTC0_PKA1_14 : aliased HAL.UInt32;
            --  LTC PKHA B1 14 Register
            LTC0_PKB1_14 : aliased HAL.UInt32;
            --  LTC PKHA N1 14 Register
            LTC0_PKN1_14 : aliased HAL.UInt32;
            --  LTC PKHA E1 14 Register
            LTC0_PKE1_14 : aliased HAL.UInt32;
         when LTC0_Disc_30 =>
            --  LTC PKHA A 30 Register
            LTC0_PKA_30 : aliased HAL.UInt32;
            --  LTC PKHA B 30 Register
            LTC0_PKB_30 : aliased HAL.UInt32;
            --  LTC PKHA N 30 Register
            LTC0_PKN_30 : aliased HAL.UInt32;
            --  LTC PKHA E 30 Register
            LTC0_PKE_30 : aliased HAL.UInt32;
         when LTC0_Disc_1_15 =>
            --  LTC PKHA A1 15 Register
            LTC0_PKA1_15 : aliased HAL.UInt32;
            --  LTC PKHA B1 15 Register
            LTC0_PKB1_15 : aliased HAL.UInt32;
            --  LTC PKHA N1 15 Register
            LTC0_PKN1_15 : aliased HAL.UInt32;
            --  LTC PKHA E1 15 Register
            LTC0_PKE1_15 : aliased HAL.UInt32;
         when LTC0_Disc_31 =>
            --  LTC PKHA A 31 Register
            LTC0_PKA_31 : aliased HAL.UInt32;
            --  LTC PKHA B 31 Register
            LTC0_PKB_31 : aliased HAL.UInt32;
            --  LTC PKHA N 31 Register
            LTC0_PKN_31 : aliased HAL.UInt32;
            --  LTC PKHA E 31 Register
            LTC0_PKE_31 : aliased HAL.UInt32;
         when LTC0_Disc_2_0 =>
            --  LTC PKHA A2 0 Register
            LTC0_PKA2_0 : aliased HAL.UInt32;
            --  LTC PKHA B2 0 Register
            LTC0_PKB2_0 : aliased HAL.UInt32;
            --  LTC PKHA N2 0 Register
            LTC0_PKN2_0 : aliased HAL.UInt32;
            --  LTC PKHA E2 0 Register
            LTC0_PKE2_0 : aliased HAL.UInt32;
         when LTC0_Disc_32 =>
            --  LTC PKHA A 32 Register
            LTC0_PKA_32 : aliased HAL.UInt32;
            --  LTC PKHA B 32 Register
            LTC0_PKB_32 : aliased HAL.UInt32;
            --  LTC PKHA N 32 Register
            LTC0_PKN_32 : aliased HAL.UInt32;
            --  LTC PKHA E 32 Register
            LTC0_PKE_32 : aliased HAL.UInt32;
         when LTC0_Disc_2_1 =>
            --  LTC PKHA A2 1 Register
            LTC0_PKA2_1 : aliased HAL.UInt32;
            --  LTC PKHA B2 1 Register
            LTC0_PKB2_1 : aliased HAL.UInt32;
            --  LTC PKHA N2 1 Register
            LTC0_PKN2_1 : aliased HAL.UInt32;
            --  LTC PKHA E2 1 Register
            LTC0_PKE2_1 : aliased HAL.UInt32;
         when LTC0_Disc_33 =>
            --  LTC PKHA A 33 Register
            LTC0_PKA_33 : aliased HAL.UInt32;
            --  LTC PKHA B 33 Register
            LTC0_PKB_33 : aliased HAL.UInt32;
            --  LTC PKHA N 33 Register
            LTC0_PKN_33 : aliased HAL.UInt32;
            --  LTC PKHA E 33 Register
            LTC0_PKE_33 : aliased HAL.UInt32;
         when LTC0_Disc_2_2 =>
            --  LTC PKHA A2 2 Register
            LTC0_PKA2_2 : aliased HAL.UInt32;
            --  LTC PKHA B2 2 Register
            LTC0_PKB2_2 : aliased HAL.UInt32;
            --  LTC PKHA N2 2 Register
            LTC0_PKN2_2 : aliased HAL.UInt32;
            --  LTC PKHA E2 2 Register
            LTC0_PKE2_2 : aliased HAL.UInt32;
         when LTC0_Disc_34 =>
            --  LTC PKHA A 34 Register
            LTC0_PKA_34 : aliased HAL.UInt32;
            --  LTC PKHA B 34 Register
            LTC0_PKB_34 : aliased HAL.UInt32;
            --  LTC PKHA N 34 Register
            LTC0_PKN_34 : aliased HAL.UInt32;
            --  LTC PKHA E 34 Register
            LTC0_PKE_34 : aliased HAL.UInt32;
         when LTC0_Disc_2_3 =>
            --  LTC PKHA A2 3 Register
            LTC0_PKA2_3 : aliased HAL.UInt32;
            --  LTC PKHA B2 3 Register
            LTC0_PKB2_3 : aliased HAL.UInt32;
            --  LTC PKHA N2 3 Register
            LTC0_PKN2_3 : aliased HAL.UInt32;
            --  LTC PKHA E2 3 Register
            LTC0_PKE2_3 : aliased HAL.UInt32;
         when LTC0_Disc_35 =>
            --  LTC PKHA A 35 Register
            LTC0_PKA_35 : aliased HAL.UInt32;
            --  LTC PKHA B 35 Register
            LTC0_PKB_35 : aliased HAL.UInt32;
            --  LTC PKHA N 35 Register
            LTC0_PKN_35 : aliased HAL.UInt32;
            --  LTC PKHA E 35 Register
            LTC0_PKE_35 : aliased HAL.UInt32;
         when LTC0_Disc_2_4 =>
            --  LTC PKHA A2 4 Register
            LTC0_PKA2_4 : aliased HAL.UInt32;
            --  LTC PKHA B2 4 Register
            LTC0_PKB2_4 : aliased HAL.UInt32;
            --  LTC PKHA N2 4 Register
            LTC0_PKN2_4 : aliased HAL.UInt32;
            --  LTC PKHA E2 4 Register
            LTC0_PKE2_4 : aliased HAL.UInt32;
         when LTC0_Disc_36 =>
            --  LTC PKHA A 36 Register
            LTC0_PKA_36 : aliased HAL.UInt32;
            --  LTC PKHA B 36 Register
            LTC0_PKB_36 : aliased HAL.UInt32;
            --  LTC PKHA N 36 Register
            LTC0_PKN_36 : aliased HAL.UInt32;
            --  LTC PKHA E 36 Register
            LTC0_PKE_36 : aliased HAL.UInt32;
         when LTC0_Disc_2_5 =>
            --  LTC PKHA A2 5 Register
            LTC0_PKA2_5 : aliased HAL.UInt32;
            --  LTC PKHA B2 5 Register
            LTC0_PKB2_5 : aliased HAL.UInt32;
            --  LTC PKHA N2 5 Register
            LTC0_PKN2_5 : aliased HAL.UInt32;
            --  LTC PKHA E2 5 Register
            LTC0_PKE2_5 : aliased HAL.UInt32;
         when LTC0_Disc_37 =>
            --  LTC PKHA A 37 Register
            LTC0_PKA_37 : aliased HAL.UInt32;
            --  LTC PKHA B 37 Register
            LTC0_PKB_37 : aliased HAL.UInt32;
            --  LTC PKHA N 37 Register
            LTC0_PKN_37 : aliased HAL.UInt32;
            --  LTC PKHA E 37 Register
            LTC0_PKE_37 : aliased HAL.UInt32;
         when LTC0_Disc_2_6 =>
            --  LTC PKHA A2 6 Register
            LTC0_PKA2_6 : aliased HAL.UInt32;
            --  LTC PKHA B2 6 Register
            LTC0_PKB2_6 : aliased HAL.UInt32;
            --  LTC PKHA N2 6 Register
            LTC0_PKN2_6 : aliased HAL.UInt32;
            --  LTC PKHA E2 6 Register
            LTC0_PKE2_6 : aliased HAL.UInt32;
         when LTC0_Disc_38 =>
            --  LTC PKHA A 38 Register
            LTC0_PKA_38 : aliased HAL.UInt32;
            --  LTC PKHA B 38 Register
            LTC0_PKB_38 : aliased HAL.UInt32;
            --  LTC PKHA N 38 Register
            LTC0_PKN_38 : aliased HAL.UInt32;
            --  LTC PKHA E 38 Register
            LTC0_PKE_38 : aliased HAL.UInt32;
         when LTC0_Disc_2_7 =>
            --  LTC PKHA A2 7 Register
            LTC0_PKA2_7 : aliased HAL.UInt32;
            --  LTC PKHA B2 7 Register
            LTC0_PKB2_7 : aliased HAL.UInt32;
            --  LTC PKHA N2 7 Register
            LTC0_PKN2_7 : aliased HAL.UInt32;
            --  LTC PKHA E2 7 Register
            LTC0_PKE2_7 : aliased HAL.UInt32;
         when LTC0_Disc_39 =>
            --  LTC PKHA A 39 Register
            LTC0_PKA_39 : aliased HAL.UInt32;
            --  LTC PKHA B 39 Register
            LTC0_PKB_39 : aliased HAL.UInt32;
            --  LTC PKHA N 39 Register
            LTC0_PKN_39 : aliased HAL.UInt32;
            --  LTC PKHA E 39 Register
            LTC0_PKE_39 : aliased HAL.UInt32;
         when LTC0_Disc_2_8 =>
            --  LTC PKHA A2 8 Register
            LTC0_PKA2_8 : aliased HAL.UInt32;
            --  LTC PKHA B2 8 Register
            LTC0_PKB2_8 : aliased HAL.UInt32;
            --  LTC PKHA N2 8 Register
            LTC0_PKN2_8 : aliased HAL.UInt32;
            --  LTC PKHA E2 8 Register
            LTC0_PKE2_8 : aliased HAL.UInt32;
         when LTC0_Disc_40 =>
            --  LTC PKHA A 40 Register
            LTC0_PKA_40 : aliased HAL.UInt32;
            --  LTC PKHA B 40 Register
            LTC0_PKB_40 : aliased HAL.UInt32;
            --  LTC PKHA N 40 Register
            LTC0_PKN_40 : aliased HAL.UInt32;
            --  LTC PKHA E 40 Register
            LTC0_PKE_40 : aliased HAL.UInt32;
         when LTC0_Disc_2_9 =>
            --  LTC PKHA A2 9 Register
            LTC0_PKA2_9 : aliased HAL.UInt32;
            --  LTC PKHA B2 9 Register
            LTC0_PKB2_9 : aliased HAL.UInt32;
            --  LTC PKHA N2 9 Register
            LTC0_PKN2_9 : aliased HAL.UInt32;
            --  LTC PKHA E2 9 Register
            LTC0_PKE2_9 : aliased HAL.UInt32;
         when LTC0_Disc_41 =>
            --  LTC PKHA A 41 Register
            LTC0_PKA_41 : aliased HAL.UInt32;
            --  LTC PKHA B 41 Register
            LTC0_PKB_41 : aliased HAL.UInt32;
            --  LTC PKHA N 41 Register
            LTC0_PKN_41 : aliased HAL.UInt32;
            --  LTC PKHA E 41 Register
            LTC0_PKE_41 : aliased HAL.UInt32;
         when LTC0_Disc_2_10 =>
            --  LTC PKHA A2 10 Register
            LTC0_PKA2_10 : aliased HAL.UInt32;
            --  LTC PKHA B2 10 Register
            LTC0_PKB2_10 : aliased HAL.UInt32;
            --  LTC PKHA N2 10 Register
            LTC0_PKN2_10 : aliased HAL.UInt32;
            --  LTC PKHA E2 10 Register
            LTC0_PKE2_10 : aliased HAL.UInt32;
         when LTC0_Disc_42 =>
            --  LTC PKHA A 42 Register
            LTC0_PKA_42 : aliased HAL.UInt32;
            --  LTC PKHA B 42 Register
            LTC0_PKB_42 : aliased HAL.UInt32;
            --  LTC PKHA N 42 Register
            LTC0_PKN_42 : aliased HAL.UInt32;
            --  LTC PKHA E 42 Register
            LTC0_PKE_42 : aliased HAL.UInt32;
         when LTC0_Disc_2_11 =>
            --  LTC PKHA A2 11 Register
            LTC0_PKA2_11 : aliased HAL.UInt32;
            --  LTC PKHA B2 11 Register
            LTC0_PKB2_11 : aliased HAL.UInt32;
            --  LTC PKHA N2 11 Register
            LTC0_PKN2_11 : aliased HAL.UInt32;
            --  LTC PKHA E2 11 Register
            LTC0_PKE2_11 : aliased HAL.UInt32;
         when LTC0_Disc_43 =>
            --  LTC PKHA A 43 Register
            LTC0_PKA_43 : aliased HAL.UInt32;
            --  LTC PKHA B 43 Register
            LTC0_PKB_43 : aliased HAL.UInt32;
            --  LTC PKHA N 43 Register
            LTC0_PKN_43 : aliased HAL.UInt32;
            --  LTC PKHA E 43 Register
            LTC0_PKE_43 : aliased HAL.UInt32;
         when LTC0_Disc_2_12 =>
            --  LTC PKHA A2 12 Register
            LTC0_PKA2_12 : aliased HAL.UInt32;
            --  LTC PKHA B2 12 Register
            LTC0_PKB2_12 : aliased HAL.UInt32;
            --  LTC PKHA N2 12 Register
            LTC0_PKN2_12 : aliased HAL.UInt32;
            --  LTC PKHA E2 12 Register
            LTC0_PKE2_12 : aliased HAL.UInt32;
         when LTC0_Disc_44 =>
            --  LTC PKHA A 44 Register
            LTC0_PKA_44 : aliased HAL.UInt32;
            --  LTC PKHA B 44 Register
            LTC0_PKB_44 : aliased HAL.UInt32;
            --  LTC PKHA N 44 Register
            LTC0_PKN_44 : aliased HAL.UInt32;
            --  LTC PKHA E 44 Register
            LTC0_PKE_44 : aliased HAL.UInt32;
         when LTC0_Disc_2_13 =>
            --  LTC PKHA A2 13 Register
            LTC0_PKA2_13 : aliased HAL.UInt32;
            --  LTC PKHA B2 13 Register
            LTC0_PKB2_13 : aliased HAL.UInt32;
            --  LTC PKHA N2 13 Register
            LTC0_PKN2_13 : aliased HAL.UInt32;
            --  LTC PKHA E2 13 Register
            LTC0_PKE2_13 : aliased HAL.UInt32;
         when LTC0_Disc_45 =>
            --  LTC PKHA A 45 Register
            LTC0_PKA_45 : aliased HAL.UInt32;
            --  LTC PKHA B 45 Register
            LTC0_PKB_45 : aliased HAL.UInt32;
            --  LTC PKHA N 45 Register
            LTC0_PKN_45 : aliased HAL.UInt32;
            --  LTC PKHA E 45 Register
            LTC0_PKE_45 : aliased HAL.UInt32;
         when LTC0_Disc_2_14 =>
            --  LTC PKHA A2 14 Register
            LTC0_PKA2_14 : aliased HAL.UInt32;
            --  LTC PKHA B2 14 Register
            LTC0_PKB2_14 : aliased HAL.UInt32;
            --  LTC PKHA N2 14 Register
            LTC0_PKN2_14 : aliased HAL.UInt32;
            --  LTC PKHA E2 14 Register
            LTC0_PKE2_14 : aliased HAL.UInt32;
         when LTC0_Disc_46 =>
            --  LTC PKHA A 46 Register
            LTC0_PKA_46 : aliased HAL.UInt32;
            --  LTC PKHA B 46 Register
            LTC0_PKB_46 : aliased HAL.UInt32;
            --  LTC PKHA N 46 Register
            LTC0_PKN_46 : aliased HAL.UInt32;
            --  LTC PKHA E 46 Register
            LTC0_PKE_46 : aliased HAL.UInt32;
         when LTC0_Disc_2_15 =>
            --  LTC PKHA A2 15 Register
            LTC0_PKA2_15 : aliased HAL.UInt32;
            --  LTC PKHA B2 15 Register
            LTC0_PKB2_15 : aliased HAL.UInt32;
            --  LTC PKHA N2 15 Register
            LTC0_PKN2_15 : aliased HAL.UInt32;
            --  LTC PKHA E2 15 Register
            LTC0_PKE2_15 : aliased HAL.UInt32;
         when LTC0_Disc_47 =>
            --  LTC PKHA A 47 Register
            LTC0_PKA_47 : aliased HAL.UInt32;
            --  LTC PKHA B 47 Register
            LTC0_PKB_47 : aliased HAL.UInt32;
            --  LTC PKHA N 47 Register
            LTC0_PKN_47 : aliased HAL.UInt32;
            --  LTC PKHA E 47 Register
            LTC0_PKE_47 : aliased HAL.UInt32;
         when LTC0_Disc_3_0 =>
            --  LTC PKHA A3 0 Register
            LTC0_PKA3_0 : aliased HAL.UInt32;
            --  LTC PKHA B3 0 Register
            LTC0_PKB3_0 : aliased HAL.UInt32;
            --  LTC PKHA N3 0 Register
            LTC0_PKN3_0 : aliased HAL.UInt32;
            --  LTC PKHA E3 0 Register
            LTC0_PKE3_0 : aliased HAL.UInt32;
         when LTC0_Disc_48 =>
            --  LTC PKHA A 48 Register
            LTC0_PKA_48 : aliased HAL.UInt32;
            --  LTC PKHA B 48 Register
            LTC0_PKB_48 : aliased HAL.UInt32;
            --  LTC PKHA N 48 Register
            LTC0_PKN_48 : aliased HAL.UInt32;
            --  LTC PKHA E 48 Register
            LTC0_PKE_48 : aliased HAL.UInt32;
         when LTC0_Disc_3_1 =>
            --  LTC PKHA A3 1 Register
            LTC0_PKA3_1 : aliased HAL.UInt32;
            --  LTC PKHA B3 1 Register
            LTC0_PKB3_1 : aliased HAL.UInt32;
            --  LTC PKHA N3 1 Register
            LTC0_PKN3_1 : aliased HAL.UInt32;
            --  LTC PKHA E3 1 Register
            LTC0_PKE3_1 : aliased HAL.UInt32;
         when LTC0_Disc_49 =>
            --  LTC PKHA A 49 Register
            LTC0_PKA_49 : aliased HAL.UInt32;
            --  LTC PKHA B 49 Register
            LTC0_PKB_49 : aliased HAL.UInt32;
            --  LTC PKHA N 49 Register
            LTC0_PKN_49 : aliased HAL.UInt32;
            --  LTC PKHA E 49 Register
            LTC0_PKE_49 : aliased HAL.UInt32;
         when LTC0_Disc_3_2 =>
            --  LTC PKHA A3 2 Register
            LTC0_PKA3_2 : aliased HAL.UInt32;
            --  LTC PKHA B3 2 Register
            LTC0_PKB3_2 : aliased HAL.UInt32;
            --  LTC PKHA N3 2 Register
            LTC0_PKN3_2 : aliased HAL.UInt32;
            --  LTC PKHA E3 2 Register
            LTC0_PKE3_2 : aliased HAL.UInt32;
         when LTC0_Disc_50 =>
            --  LTC PKHA A 50 Register
            LTC0_PKA_50 : aliased HAL.UInt32;
            --  LTC PKHA B 50 Register
            LTC0_PKB_50 : aliased HAL.UInt32;
            --  LTC PKHA N 50 Register
            LTC0_PKN_50 : aliased HAL.UInt32;
            --  LTC PKHA E 50 Register
            LTC0_PKE_50 : aliased HAL.UInt32;
         when LTC0_Disc_3_3 =>
            --  LTC PKHA A3 3 Register
            LTC0_PKA3_3 : aliased HAL.UInt32;
            --  LTC PKHA B3 3 Register
            LTC0_PKB3_3 : aliased HAL.UInt32;
            --  LTC PKHA N3 3 Register
            LTC0_PKN3_3 : aliased HAL.UInt32;
            --  LTC PKHA E3 3 Register
            LTC0_PKE3_3 : aliased HAL.UInt32;
         when LTC0_Disc_51 =>
            --  LTC PKHA A 51 Register
            LTC0_PKA_51 : aliased HAL.UInt32;
            --  LTC PKHA B 51 Register
            LTC0_PKB_51 : aliased HAL.UInt32;
            --  LTC PKHA N 51 Register
            LTC0_PKN_51 : aliased HAL.UInt32;
            --  LTC PKHA E 51 Register
            LTC0_PKE_51 : aliased HAL.UInt32;
         when LTC0_Disc_3_4 =>
            --  LTC PKHA A3 4 Register
            LTC0_PKA3_4 : aliased HAL.UInt32;
            --  LTC PKHA B3 4 Register
            LTC0_PKB3_4 : aliased HAL.UInt32;
            --  LTC PKHA N3 4 Register
            LTC0_PKN3_4 : aliased HAL.UInt32;
            --  LTC PKHA E3 4 Register
            LTC0_PKE3_4 : aliased HAL.UInt32;
         when LTC0_Disc_52 =>
            --  LTC PKHA A 52 Register
            LTC0_PKA_52 : aliased HAL.UInt32;
            --  LTC PKHA B 52 Register
            LTC0_PKB_52 : aliased HAL.UInt32;
            --  LTC PKHA N 52 Register
            LTC0_PKN_52 : aliased HAL.UInt32;
            --  LTC PKHA E 52 Register
            LTC0_PKE_52 : aliased HAL.UInt32;
         when LTC0_Disc_3_5 =>
            --  LTC PKHA A3 5 Register
            LTC0_PKA3_5 : aliased HAL.UInt32;
            --  LTC PKHA B3 5 Register
            LTC0_PKB3_5 : aliased HAL.UInt32;
            --  LTC PKHA N3 5 Register
            LTC0_PKN3_5 : aliased HAL.UInt32;
            --  LTC PKHA E3 5 Register
            LTC0_PKE3_5 : aliased HAL.UInt32;
         when LTC0_Disc_53 =>
            --  LTC PKHA A 53 Register
            LTC0_PKA_53 : aliased HAL.UInt32;
            --  LTC PKHA B 53 Register
            LTC0_PKB_53 : aliased HAL.UInt32;
            --  LTC PKHA N 53 Register
            LTC0_PKN_53 : aliased HAL.UInt32;
            --  LTC PKHA E 53 Register
            LTC0_PKE_53 : aliased HAL.UInt32;
         when LTC0_Disc_3_6 =>
            --  LTC PKHA A3 6 Register
            LTC0_PKA3_6 : aliased HAL.UInt32;
            --  LTC PKHA B3 6 Register
            LTC0_PKB3_6 : aliased HAL.UInt32;
            --  LTC PKHA N3 6 Register
            LTC0_PKN3_6 : aliased HAL.UInt32;
            --  LTC PKHA E3 6 Register
            LTC0_PKE3_6 : aliased HAL.UInt32;
         when LTC0_Disc_54 =>
            --  LTC PKHA A 54 Register
            LTC0_PKA_54 : aliased HAL.UInt32;
            --  LTC PKHA B 54 Register
            LTC0_PKB_54 : aliased HAL.UInt32;
            --  LTC PKHA N 54 Register
            LTC0_PKN_54 : aliased HAL.UInt32;
            --  LTC PKHA E 54 Register
            LTC0_PKE_54 : aliased HAL.UInt32;
         when LTC0_Disc_3_7 =>
            --  LTC PKHA A3 7 Register
            LTC0_PKA3_7 : aliased HAL.UInt32;
            --  LTC PKHA B3 7 Register
            LTC0_PKB3_7 : aliased HAL.UInt32;
            --  LTC PKHA N3 7 Register
            LTC0_PKN3_7 : aliased HAL.UInt32;
            --  LTC PKHA E3 7 Register
            LTC0_PKE3_7 : aliased HAL.UInt32;
         when LTC0_Disc_55 =>
            --  LTC PKHA A 55 Register
            LTC0_PKA_55 : aliased HAL.UInt32;
            --  LTC PKHA B 55 Register
            LTC0_PKB_55 : aliased HAL.UInt32;
            --  LTC PKHA N 55 Register
            LTC0_PKN_55 : aliased HAL.UInt32;
            --  LTC PKHA E 55 Register
            LTC0_PKE_55 : aliased HAL.UInt32;
         when LTC0_Disc_3_8 =>
            --  LTC PKHA A3 8 Register
            LTC0_PKA3_8 : aliased HAL.UInt32;
            --  LTC PKHA B3 8 Register
            LTC0_PKB3_8 : aliased HAL.UInt32;
            --  LTC PKHA N3 8 Register
            LTC0_PKN3_8 : aliased HAL.UInt32;
            --  LTC PKHA E3 8 Register
            LTC0_PKE3_8 : aliased HAL.UInt32;
         when LTC0_Disc_56 =>
            --  LTC PKHA A 56 Register
            LTC0_PKA_56 : aliased HAL.UInt32;
            --  LTC PKHA B 56 Register
            LTC0_PKB_56 : aliased HAL.UInt32;
            --  LTC PKHA N 56 Register
            LTC0_PKN_56 : aliased HAL.UInt32;
            --  LTC PKHA E 56 Register
            LTC0_PKE_56 : aliased HAL.UInt32;
         when LTC0_Disc_3_9 =>
            --  LTC PKHA A3 9 Register
            LTC0_PKA3_9 : aliased HAL.UInt32;
            --  LTC PKHA B3 9 Register
            LTC0_PKB3_9 : aliased HAL.UInt32;
            --  LTC PKHA N3 9 Register
            LTC0_PKN3_9 : aliased HAL.UInt32;
            --  LTC PKHA E3 9 Register
            LTC0_PKE3_9 : aliased HAL.UInt32;
         when LTC0_Disc_57 =>
            --  LTC PKHA A 57 Register
            LTC0_PKA_57 : aliased HAL.UInt32;
            --  LTC PKHA B 57 Register
            LTC0_PKB_57 : aliased HAL.UInt32;
            --  LTC PKHA N 57 Register
            LTC0_PKN_57 : aliased HAL.UInt32;
            --  LTC PKHA E 57 Register
            LTC0_PKE_57 : aliased HAL.UInt32;
         when LTC0_Disc_3_10 =>
            --  LTC PKHA A3 10 Register
            LTC0_PKA3_10 : aliased HAL.UInt32;
            --  LTC PKHA B3 10 Register
            LTC0_PKB3_10 : aliased HAL.UInt32;
            --  LTC PKHA N3 10 Register
            LTC0_PKN3_10 : aliased HAL.UInt32;
            --  LTC PKHA E3 10 Register
            LTC0_PKE3_10 : aliased HAL.UInt32;
         when LTC0_Disc_58 =>
            --  LTC PKHA A 58 Register
            LTC0_PKA_58 : aliased HAL.UInt32;
            --  LTC PKHA B 58 Register
            LTC0_PKB_58 : aliased HAL.UInt32;
            --  LTC PKHA N 58 Register
            LTC0_PKN_58 : aliased HAL.UInt32;
            --  LTC PKHA E 58 Register
            LTC0_PKE_58 : aliased HAL.UInt32;
         when LTC0_Disc_3_11 =>
            --  LTC PKHA A3 11 Register
            LTC0_PKA3_11 : aliased HAL.UInt32;
            --  LTC PKHA B3 11 Register
            LTC0_PKB3_11 : aliased HAL.UInt32;
            --  LTC PKHA N3 11 Register
            LTC0_PKN3_11 : aliased HAL.UInt32;
            --  LTC PKHA E3 11 Register
            LTC0_PKE3_11 : aliased HAL.UInt32;
         when LTC0_Disc_59 =>
            --  LTC PKHA A 59 Register
            LTC0_PKA_59 : aliased HAL.UInt32;
            --  LTC PKHA B 59 Register
            LTC0_PKB_59 : aliased HAL.UInt32;
            --  LTC PKHA N 59 Register
            LTC0_PKN_59 : aliased HAL.UInt32;
            --  LTC PKHA E 59 Register
            LTC0_PKE_59 : aliased HAL.UInt32;
         when LTC0_Disc_3_12 =>
            --  LTC PKHA A3 12 Register
            LTC0_PKA3_12 : aliased HAL.UInt32;
            --  LTC PKHA B3 12 Register
            LTC0_PKB3_12 : aliased HAL.UInt32;
            --  LTC PKHA N3 12 Register
            LTC0_PKN3_12 : aliased HAL.UInt32;
            --  LTC PKHA E3 12 Register
            LTC0_PKE3_12 : aliased HAL.UInt32;
         when LTC0_Disc_60 =>
            --  LTC PKHA A 60 Register
            LTC0_PKA_60 : aliased HAL.UInt32;
            --  LTC PKHA B 60 Register
            LTC0_PKB_60 : aliased HAL.UInt32;
            --  LTC PKHA N 60 Register
            LTC0_PKN_60 : aliased HAL.UInt32;
            --  LTC PKHA E 60 Register
            LTC0_PKE_60 : aliased HAL.UInt32;
         when LTC0_Disc_3_13 =>
            --  LTC PKHA A3 13 Register
            LTC0_PKA3_13 : aliased HAL.UInt32;
            --  LTC PKHA B3 13 Register
            LTC0_PKB3_13 : aliased HAL.UInt32;
            --  LTC PKHA N3 13 Register
            LTC0_PKN3_13 : aliased HAL.UInt32;
            --  LTC PKHA E3 13 Register
            LTC0_PKE3_13 : aliased HAL.UInt32;
         when LTC0_Disc_61 =>
            --  LTC PKHA A 61 Register
            LTC0_PKA_61 : aliased HAL.UInt32;
            --  LTC PKHA B 61 Register
            LTC0_PKB_61 : aliased HAL.UInt32;
            --  LTC PKHA N 61 Register
            LTC0_PKN_61 : aliased HAL.UInt32;
            --  LTC PKHA E 61 Register
            LTC0_PKE_61 : aliased HAL.UInt32;
         when LTC0_Disc_3_14 =>
            --  LTC PKHA A3 14 Register
            LTC0_PKA3_14 : aliased HAL.UInt32;
            --  LTC PKHA B3 14 Register
            LTC0_PKB3_14 : aliased HAL.UInt32;
            --  LTC PKHA N3 14 Register
            LTC0_PKN3_14 : aliased HAL.UInt32;
            --  LTC PKHA E3 14 Register
            LTC0_PKE3_14 : aliased HAL.UInt32;
         when LTC0_Disc_62 =>
            --  LTC PKHA A 62 Register
            LTC0_PKA_62 : aliased HAL.UInt32;
            --  LTC PKHA B 62 Register
            LTC0_PKB_62 : aliased HAL.UInt32;
            --  LTC PKHA N 62 Register
            LTC0_PKN_62 : aliased HAL.UInt32;
            --  LTC PKHA E 62 Register
            LTC0_PKE_62 : aliased HAL.UInt32;
         when LTC0_Disc_3_15 =>
            --  LTC PKHA A3 15 Register
            LTC0_PKA3_15 : aliased HAL.UInt32;
            --  LTC PKHA B3 15 Register
            LTC0_PKB3_15 : aliased HAL.UInt32;
            --  LTC PKHA N3 15 Register
            LTC0_PKN3_15 : aliased HAL.UInt32;
            --  LTC PKHA E3 15 Register
            LTC0_PKE3_15 : aliased HAL.UInt32;
         when LTC0_Disc_63 =>
            --  LTC PKHA A 63 Register
            LTC0_PKA_63 : aliased HAL.UInt32;
            --  LTC PKHA B 63 Register
            LTC0_PKB_63 : aliased HAL.UInt32;
            --  LTC PKHA N 63 Register
            LTC0_PKN_63 : aliased HAL.UInt32;
            --  LTC PKHA E 63 Register
            LTC0_PKE_63 : aliased HAL.UInt32;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LTC0_Peripheral use record
      LTC0_KS      at 16#8# range 0 .. 31;
      LTC0_DS      at 16#10# range 0 .. 31;
      LTC0_ICVS    at 16#18# range 0 .. 31;
      LTC0_COM     at 16#30# range 0 .. 31;
      LTC0_CTL     at 16#34# range 0 .. 31;
      LTC0_CW      at 16#40# range 0 .. 31;
      LTC0_STA     at 16#48# range 0 .. 31;
      LTC0_ESTA    at 16#4C# range 0 .. 31;
      LTC0_AADSZ   at 16#58# range 0 .. 31;
      LTC0_IVSZ    at 16#60# range 0 .. 31;
      LTC0_DPAMS   at 16#68# range 0 .. 31;
      LTC0_PKASZ   at 16#80# range 0 .. 31;
      LTC0_PKBSZ   at 16#88# range 0 .. 31;
      LTC0_PKNSZ   at 16#90# range 0 .. 31;
      LTC0_PKESZ   at 16#98# range 0 .. 31;
      LTC0_CTX_0   at 16#100# range 0 .. 31;
      LTC0_CTX_1   at 16#104# range 0 .. 31;
      LTC0_CTX_2   at 16#108# range 0 .. 31;
      LTC0_CTX_3   at 16#10C# range 0 .. 31;
      LTC0_CTX_4   at 16#110# range 0 .. 31;
      LTC0_CTX_5   at 16#114# range 0 .. 31;
      LTC0_CTX_6   at 16#118# range 0 .. 31;
      LTC0_CTX_7   at 16#11C# range 0 .. 31;
      LTC0_CTX_8   at 16#120# range 0 .. 31;
      LTC0_CTX_9   at 16#124# range 0 .. 31;
      LTC0_CTX_10  at 16#128# range 0 .. 31;
      LTC0_CTX_11  at 16#12C# range 0 .. 31;
      LTC0_CTX_12  at 16#130# range 0 .. 31;
      LTC0_CTX_13  at 16#134# range 0 .. 31;
      LTC0_CTX_14  at 16#138# range 0 .. 31;
      LTC0_CTX_15  at 16#13C# range 0 .. 31;
      LTC0_KEY_0   at 16#200# range 0 .. 31;
      LTC0_KEY_1   at 16#204# range 0 .. 31;
      LTC0_KEY_2   at 16#208# range 0 .. 31;
      LTC0_KEY_3   at 16#20C# range 0 .. 31;
      LTC0_KEY_4   at 16#210# range 0 .. 31;
      LTC0_KEY_5   at 16#214# range 0 .. 31;
      LTC0_KEY_6   at 16#218# range 0 .. 31;
      LTC0_KEY_7   at 16#21C# range 0 .. 31;
      LTC0_VID1    at 16#4F0# range 0 .. 31;
      LTC0_CHAVID  at 16#4F8# range 0 .. 31;
      LTC0_FIFOSTA at 16#7C0# range 0 .. 31;
      LTC0_IFIFO   at 16#7E0# range 0 .. 31;
      LTC0_OFIFO   at 16#7F0# range 0 .. 31;
      LTC0_MD      at 16#0# range 0 .. 31;
      LTC0_MDPK    at 16#0# range 0 .. 31;
      LTC0_PKA0_0  at 16#800# range 0 .. 31;
      LTC0_PKB0_0  at 16#A00# range 0 .. 31;
      LTC0_PKN0_0  at 16#C00# range 0 .. 31;
      LTC0_PKE0_0  at 16#E00# range 0 .. 31;
      LTC0_PKA_0   at 16#800# range 0 .. 31;
      LTC0_PKB_0   at 16#A00# range 0 .. 31;
      LTC0_PKN_0   at 16#C00# range 0 .. 31;
      LTC0_PKE_0   at 16#E00# range 0 .. 31;
      LTC0_PKA0_1  at 16#804# range 0 .. 31;
      LTC0_PKB0_1  at 16#A04# range 0 .. 31;
      LTC0_PKN0_1  at 16#C04# range 0 .. 31;
      LTC0_PKE0_1  at 16#E04# range 0 .. 31;
      LTC0_PKA_1   at 16#804# range 0 .. 31;
      LTC0_PKB_1   at 16#A04# range 0 .. 31;
      LTC0_PKN_1   at 16#C04# range 0 .. 31;
      LTC0_PKE_1   at 16#E04# range 0 .. 31;
      LTC0_PKA0_2  at 16#808# range 0 .. 31;
      LTC0_PKB0_2  at 16#A08# range 0 .. 31;
      LTC0_PKN0_2  at 16#C08# range 0 .. 31;
      LTC0_PKE0_2  at 16#E08# range 0 .. 31;
      LTC0_PKA_2   at 16#808# range 0 .. 31;
      LTC0_PKB_2   at 16#A08# range 0 .. 31;
      LTC0_PKN_2   at 16#C08# range 0 .. 31;
      LTC0_PKE_2   at 16#E08# range 0 .. 31;
      LTC0_PKA0_3  at 16#80C# range 0 .. 31;
      LTC0_PKB0_3  at 16#A0C# range 0 .. 31;
      LTC0_PKN0_3  at 16#C0C# range 0 .. 31;
      LTC0_PKE0_3  at 16#E0C# range 0 .. 31;
      LTC0_PKA_3   at 16#80C# range 0 .. 31;
      LTC0_PKB_3   at 16#A0C# range 0 .. 31;
      LTC0_PKN_3   at 16#C0C# range 0 .. 31;
      LTC0_PKE_3   at 16#E0C# range 0 .. 31;
      LTC0_PKA0_4  at 16#810# range 0 .. 31;
      LTC0_PKB0_4  at 16#A10# range 0 .. 31;
      LTC0_PKN0_4  at 16#C10# range 0 .. 31;
      LTC0_PKE0_4  at 16#E10# range 0 .. 31;
      LTC0_PKA_4   at 16#810# range 0 .. 31;
      LTC0_PKB_4   at 16#A10# range 0 .. 31;
      LTC0_PKN_4   at 16#C10# range 0 .. 31;
      LTC0_PKE_4   at 16#E10# range 0 .. 31;
      LTC0_PKA0_5  at 16#814# range 0 .. 31;
      LTC0_PKB0_5  at 16#A14# range 0 .. 31;
      LTC0_PKN0_5  at 16#C14# range 0 .. 31;
      LTC0_PKE0_5  at 16#E14# range 0 .. 31;
      LTC0_PKA_5   at 16#814# range 0 .. 31;
      LTC0_PKB_5   at 16#A14# range 0 .. 31;
      LTC0_PKN_5   at 16#C14# range 0 .. 31;
      LTC0_PKE_5   at 16#E14# range 0 .. 31;
      LTC0_PKA0_6  at 16#818# range 0 .. 31;
      LTC0_PKB0_6  at 16#A18# range 0 .. 31;
      LTC0_PKN0_6  at 16#C18# range 0 .. 31;
      LTC0_PKE0_6  at 16#E18# range 0 .. 31;
      LTC0_PKA_6   at 16#818# range 0 .. 31;
      LTC0_PKB_6   at 16#A18# range 0 .. 31;
      LTC0_PKN_6   at 16#C18# range 0 .. 31;
      LTC0_PKE_6   at 16#E18# range 0 .. 31;
      LTC0_PKA0_7  at 16#81C# range 0 .. 31;
      LTC0_PKB0_7  at 16#A1C# range 0 .. 31;
      LTC0_PKN0_7  at 16#C1C# range 0 .. 31;
      LTC0_PKE0_7  at 16#E1C# range 0 .. 31;
      LTC0_PKA_7   at 16#81C# range 0 .. 31;
      LTC0_PKB_7   at 16#A1C# range 0 .. 31;
      LTC0_PKN_7   at 16#C1C# range 0 .. 31;
      LTC0_PKE_7   at 16#E1C# range 0 .. 31;
      LTC0_PKA0_8  at 16#820# range 0 .. 31;
      LTC0_PKB0_8  at 16#A20# range 0 .. 31;
      LTC0_PKN0_8  at 16#C20# range 0 .. 31;
      LTC0_PKE0_8  at 16#E20# range 0 .. 31;
      LTC0_PKA_8   at 16#820# range 0 .. 31;
      LTC0_PKB_8   at 16#A20# range 0 .. 31;
      LTC0_PKN_8   at 16#C20# range 0 .. 31;
      LTC0_PKE_8   at 16#E20# range 0 .. 31;
      LTC0_PKA0_9  at 16#824# range 0 .. 31;
      LTC0_PKB0_9  at 16#A24# range 0 .. 31;
      LTC0_PKN0_9  at 16#C24# range 0 .. 31;
      LTC0_PKE0_9  at 16#E24# range 0 .. 31;
      LTC0_PKA_9   at 16#824# range 0 .. 31;
      LTC0_PKB_9   at 16#A24# range 0 .. 31;
      LTC0_PKN_9   at 16#C24# range 0 .. 31;
      LTC0_PKE_9   at 16#E24# range 0 .. 31;
      LTC0_PKA0_10 at 16#828# range 0 .. 31;
      LTC0_PKB0_10 at 16#A28# range 0 .. 31;
      LTC0_PKN0_10 at 16#C28# range 0 .. 31;
      LTC0_PKE0_10 at 16#E28# range 0 .. 31;
      LTC0_PKA_10  at 16#828# range 0 .. 31;
      LTC0_PKB_10  at 16#A28# range 0 .. 31;
      LTC0_PKN_10  at 16#C28# range 0 .. 31;
      LTC0_PKE_10  at 16#E28# range 0 .. 31;
      LTC0_PKA0_11 at 16#82C# range 0 .. 31;
      LTC0_PKB0_11 at 16#A2C# range 0 .. 31;
      LTC0_PKN0_11 at 16#C2C# range 0 .. 31;
      LTC0_PKE0_11 at 16#E2C# range 0 .. 31;
      LTC0_PKA_11  at 16#82C# range 0 .. 31;
      LTC0_PKB_11  at 16#A2C# range 0 .. 31;
      LTC0_PKN_11  at 16#C2C# range 0 .. 31;
      LTC0_PKE_11  at 16#E2C# range 0 .. 31;
      LTC0_PKA0_12 at 16#830# range 0 .. 31;
      LTC0_PKB0_12 at 16#A30# range 0 .. 31;
      LTC0_PKN0_12 at 16#C30# range 0 .. 31;
      LTC0_PKE0_12 at 16#E30# range 0 .. 31;
      LTC0_PKA_12  at 16#830# range 0 .. 31;
      LTC0_PKB_12  at 16#A30# range 0 .. 31;
      LTC0_PKN_12  at 16#C30# range 0 .. 31;
      LTC0_PKE_12  at 16#E30# range 0 .. 31;
      LTC0_PKA0_13 at 16#834# range 0 .. 31;
      LTC0_PKB0_13 at 16#A34# range 0 .. 31;
      LTC0_PKN0_13 at 16#C34# range 0 .. 31;
      LTC0_PKE0_13 at 16#E34# range 0 .. 31;
      LTC0_PKA_13  at 16#834# range 0 .. 31;
      LTC0_PKB_13  at 16#A34# range 0 .. 31;
      LTC0_PKN_13  at 16#C34# range 0 .. 31;
      LTC0_PKE_13  at 16#E34# range 0 .. 31;
      LTC0_PKA0_14 at 16#838# range 0 .. 31;
      LTC0_PKB0_14 at 16#A38# range 0 .. 31;
      LTC0_PKN0_14 at 16#C38# range 0 .. 31;
      LTC0_PKE0_14 at 16#E38# range 0 .. 31;
      LTC0_PKA_14  at 16#838# range 0 .. 31;
      LTC0_PKB_14  at 16#A38# range 0 .. 31;
      LTC0_PKN_14  at 16#C38# range 0 .. 31;
      LTC0_PKE_14  at 16#E38# range 0 .. 31;
      LTC0_PKA0_15 at 16#83C# range 0 .. 31;
      LTC0_PKB0_15 at 16#A3C# range 0 .. 31;
      LTC0_PKN0_15 at 16#C3C# range 0 .. 31;
      LTC0_PKE0_15 at 16#E3C# range 0 .. 31;
      LTC0_PKA_15  at 16#83C# range 0 .. 31;
      LTC0_PKB_15  at 16#A3C# range 0 .. 31;
      LTC0_PKN_15  at 16#C3C# range 0 .. 31;
      LTC0_PKE_15  at 16#E3C# range 0 .. 31;
      LTC0_PKA1_0  at 16#840# range 0 .. 31;
      LTC0_PKB1_0  at 16#A40# range 0 .. 31;
      LTC0_PKN1_0  at 16#C40# range 0 .. 31;
      LTC0_PKE1_0  at 16#E40# range 0 .. 31;
      LTC0_PKA_16  at 16#840# range 0 .. 31;
      LTC0_PKB_16  at 16#A40# range 0 .. 31;
      LTC0_PKN_16  at 16#C40# range 0 .. 31;
      LTC0_PKE_16  at 16#E40# range 0 .. 31;
      LTC0_PKA1_1  at 16#844# range 0 .. 31;
      LTC0_PKB1_1  at 16#A44# range 0 .. 31;
      LTC0_PKN1_1  at 16#C44# range 0 .. 31;
      LTC0_PKE1_1  at 16#E44# range 0 .. 31;
      LTC0_PKA_17  at 16#844# range 0 .. 31;
      LTC0_PKB_17  at 16#A44# range 0 .. 31;
      LTC0_PKN_17  at 16#C44# range 0 .. 31;
      LTC0_PKE_17  at 16#E44# range 0 .. 31;
      LTC0_PKA1_2  at 16#848# range 0 .. 31;
      LTC0_PKB1_2  at 16#A48# range 0 .. 31;
      LTC0_PKN1_2  at 16#C48# range 0 .. 31;
      LTC0_PKE1_2  at 16#E48# range 0 .. 31;
      LTC0_PKA_18  at 16#848# range 0 .. 31;
      LTC0_PKB_18  at 16#A48# range 0 .. 31;
      LTC0_PKN_18  at 16#C48# range 0 .. 31;
      LTC0_PKE_18  at 16#E48# range 0 .. 31;
      LTC0_PKA1_3  at 16#84C# range 0 .. 31;
      LTC0_PKB1_3  at 16#A4C# range 0 .. 31;
      LTC0_PKN1_3  at 16#C4C# range 0 .. 31;
      LTC0_PKE1_3  at 16#E4C# range 0 .. 31;
      LTC0_PKA_19  at 16#84C# range 0 .. 31;
      LTC0_PKB_19  at 16#A4C# range 0 .. 31;
      LTC0_PKN_19  at 16#C4C# range 0 .. 31;
      LTC0_PKE_19  at 16#E4C# range 0 .. 31;
      LTC0_PKA1_4  at 16#850# range 0 .. 31;
      LTC0_PKB1_4  at 16#A50# range 0 .. 31;
      LTC0_PKN1_4  at 16#C50# range 0 .. 31;
      LTC0_PKE1_4  at 16#E50# range 0 .. 31;
      LTC0_PKA_20  at 16#850# range 0 .. 31;
      LTC0_PKB_20  at 16#A50# range 0 .. 31;
      LTC0_PKN_20  at 16#C50# range 0 .. 31;
      LTC0_PKE_20  at 16#E50# range 0 .. 31;
      LTC0_PKA1_5  at 16#854# range 0 .. 31;
      LTC0_PKB1_5  at 16#A54# range 0 .. 31;
      LTC0_PKN1_5  at 16#C54# range 0 .. 31;
      LTC0_PKE1_5  at 16#E54# range 0 .. 31;
      LTC0_PKA_21  at 16#854# range 0 .. 31;
      LTC0_PKB_21  at 16#A54# range 0 .. 31;
      LTC0_PKN_21  at 16#C54# range 0 .. 31;
      LTC0_PKE_21  at 16#E54# range 0 .. 31;
      LTC0_PKA1_6  at 16#858# range 0 .. 31;
      LTC0_PKB1_6  at 16#A58# range 0 .. 31;
      LTC0_PKN1_6  at 16#C58# range 0 .. 31;
      LTC0_PKE1_6  at 16#E58# range 0 .. 31;
      LTC0_PKA_22  at 16#858# range 0 .. 31;
      LTC0_PKB_22  at 16#A58# range 0 .. 31;
      LTC0_PKN_22  at 16#C58# range 0 .. 31;
      LTC0_PKE_22  at 16#E58# range 0 .. 31;
      LTC0_PKA1_7  at 16#85C# range 0 .. 31;
      LTC0_PKB1_7  at 16#A5C# range 0 .. 31;
      LTC0_PKN1_7  at 16#C5C# range 0 .. 31;
      LTC0_PKE1_7  at 16#E5C# range 0 .. 31;
      LTC0_PKA_23  at 16#85C# range 0 .. 31;
      LTC0_PKB_23  at 16#A5C# range 0 .. 31;
      LTC0_PKN_23  at 16#C5C# range 0 .. 31;
      LTC0_PKE_23  at 16#E5C# range 0 .. 31;
      LTC0_PKA1_8  at 16#860# range 0 .. 31;
      LTC0_PKB1_8  at 16#A60# range 0 .. 31;
      LTC0_PKN1_8  at 16#C60# range 0 .. 31;
      LTC0_PKE1_8  at 16#E60# range 0 .. 31;
      LTC0_PKA_24  at 16#860# range 0 .. 31;
      LTC0_PKB_24  at 16#A60# range 0 .. 31;
      LTC0_PKN_24  at 16#C60# range 0 .. 31;
      LTC0_PKE_24  at 16#E60# range 0 .. 31;
      LTC0_PKA1_9  at 16#864# range 0 .. 31;
      LTC0_PKB1_9  at 16#A64# range 0 .. 31;
      LTC0_PKN1_9  at 16#C64# range 0 .. 31;
      LTC0_PKE1_9  at 16#E64# range 0 .. 31;
      LTC0_PKA_25  at 16#864# range 0 .. 31;
      LTC0_PKB_25  at 16#A64# range 0 .. 31;
      LTC0_PKN_25  at 16#C64# range 0 .. 31;
      LTC0_PKE_25  at 16#E64# range 0 .. 31;
      LTC0_PKA1_10 at 16#868# range 0 .. 31;
      LTC0_PKB1_10 at 16#A68# range 0 .. 31;
      LTC0_PKN1_10 at 16#C68# range 0 .. 31;
      LTC0_PKE1_10 at 16#E68# range 0 .. 31;
      LTC0_PKA_26  at 16#868# range 0 .. 31;
      LTC0_PKB_26  at 16#A68# range 0 .. 31;
      LTC0_PKN_26  at 16#C68# range 0 .. 31;
      LTC0_PKE_26  at 16#E68# range 0 .. 31;
      LTC0_PKA1_11 at 16#86C# range 0 .. 31;
      LTC0_PKB1_11 at 16#A6C# range 0 .. 31;
      LTC0_PKN1_11 at 16#C6C# range 0 .. 31;
      LTC0_PKE1_11 at 16#E6C# range 0 .. 31;
      LTC0_PKA_27  at 16#86C# range 0 .. 31;
      LTC0_PKB_27  at 16#A6C# range 0 .. 31;
      LTC0_PKN_27  at 16#C6C# range 0 .. 31;
      LTC0_PKE_27  at 16#E6C# range 0 .. 31;
      LTC0_PKA1_12 at 16#870# range 0 .. 31;
      LTC0_PKB1_12 at 16#A70# range 0 .. 31;
      LTC0_PKN1_12 at 16#C70# range 0 .. 31;
      LTC0_PKE1_12 at 16#E70# range 0 .. 31;
      LTC0_PKA_28  at 16#870# range 0 .. 31;
      LTC0_PKB_28  at 16#A70# range 0 .. 31;
      LTC0_PKN_28  at 16#C70# range 0 .. 31;
      LTC0_PKE_28  at 16#E70# range 0 .. 31;
      LTC0_PKA1_13 at 16#874# range 0 .. 31;
      LTC0_PKB1_13 at 16#A74# range 0 .. 31;
      LTC0_PKN1_13 at 16#C74# range 0 .. 31;
      LTC0_PKE1_13 at 16#E74# range 0 .. 31;
      LTC0_PKA_29  at 16#874# range 0 .. 31;
      LTC0_PKB_29  at 16#A74# range 0 .. 31;
      LTC0_PKN_29  at 16#C74# range 0 .. 31;
      LTC0_PKE_29  at 16#E74# range 0 .. 31;
      LTC0_PKA1_14 at 16#878# range 0 .. 31;
      LTC0_PKB1_14 at 16#A78# range 0 .. 31;
      LTC0_PKN1_14 at 16#C78# range 0 .. 31;
      LTC0_PKE1_14 at 16#E78# range 0 .. 31;
      LTC0_PKA_30  at 16#878# range 0 .. 31;
      LTC0_PKB_30  at 16#A78# range 0 .. 31;
      LTC0_PKN_30  at 16#C78# range 0 .. 31;
      LTC0_PKE_30  at 16#E78# range 0 .. 31;
      LTC0_PKA1_15 at 16#87C# range 0 .. 31;
      LTC0_PKB1_15 at 16#A7C# range 0 .. 31;
      LTC0_PKN1_15 at 16#C7C# range 0 .. 31;
      LTC0_PKE1_15 at 16#E7C# range 0 .. 31;
      LTC0_PKA_31  at 16#87C# range 0 .. 31;
      LTC0_PKB_31  at 16#A7C# range 0 .. 31;
      LTC0_PKN_31  at 16#C7C# range 0 .. 31;
      LTC0_PKE_31  at 16#E7C# range 0 .. 31;
      LTC0_PKA2_0  at 16#880# range 0 .. 31;
      LTC0_PKB2_0  at 16#A80# range 0 .. 31;
      LTC0_PKN2_0  at 16#C80# range 0 .. 31;
      LTC0_PKE2_0  at 16#E80# range 0 .. 31;
      LTC0_PKA_32  at 16#880# range 0 .. 31;
      LTC0_PKB_32  at 16#A80# range 0 .. 31;
      LTC0_PKN_32  at 16#C80# range 0 .. 31;
      LTC0_PKE_32  at 16#E80# range 0 .. 31;
      LTC0_PKA2_1  at 16#884# range 0 .. 31;
      LTC0_PKB2_1  at 16#A84# range 0 .. 31;
      LTC0_PKN2_1  at 16#C84# range 0 .. 31;
      LTC0_PKE2_1  at 16#E84# range 0 .. 31;
      LTC0_PKA_33  at 16#884# range 0 .. 31;
      LTC0_PKB_33  at 16#A84# range 0 .. 31;
      LTC0_PKN_33  at 16#C84# range 0 .. 31;
      LTC0_PKE_33  at 16#E84# range 0 .. 31;
      LTC0_PKA2_2  at 16#888# range 0 .. 31;
      LTC0_PKB2_2  at 16#A88# range 0 .. 31;
      LTC0_PKN2_2  at 16#C88# range 0 .. 31;
      LTC0_PKE2_2  at 16#E88# range 0 .. 31;
      LTC0_PKA_34  at 16#888# range 0 .. 31;
      LTC0_PKB_34  at 16#A88# range 0 .. 31;
      LTC0_PKN_34  at 16#C88# range 0 .. 31;
      LTC0_PKE_34  at 16#E88# range 0 .. 31;
      LTC0_PKA2_3  at 16#88C# range 0 .. 31;
      LTC0_PKB2_3  at 16#A8C# range 0 .. 31;
      LTC0_PKN2_3  at 16#C8C# range 0 .. 31;
      LTC0_PKE2_3  at 16#E8C# range 0 .. 31;
      LTC0_PKA_35  at 16#88C# range 0 .. 31;
      LTC0_PKB_35  at 16#A8C# range 0 .. 31;
      LTC0_PKN_35  at 16#C8C# range 0 .. 31;
      LTC0_PKE_35  at 16#E8C# range 0 .. 31;
      LTC0_PKA2_4  at 16#890# range 0 .. 31;
      LTC0_PKB2_4  at 16#A90# range 0 .. 31;
      LTC0_PKN2_4  at 16#C90# range 0 .. 31;
      LTC0_PKE2_4  at 16#E90# range 0 .. 31;
      LTC0_PKA_36  at 16#890# range 0 .. 31;
      LTC0_PKB_36  at 16#A90# range 0 .. 31;
      LTC0_PKN_36  at 16#C90# range 0 .. 31;
      LTC0_PKE_36  at 16#E90# range 0 .. 31;
      LTC0_PKA2_5  at 16#894# range 0 .. 31;
      LTC0_PKB2_5  at 16#A94# range 0 .. 31;
      LTC0_PKN2_5  at 16#C94# range 0 .. 31;
      LTC0_PKE2_5  at 16#E94# range 0 .. 31;
      LTC0_PKA_37  at 16#894# range 0 .. 31;
      LTC0_PKB_37  at 16#A94# range 0 .. 31;
      LTC0_PKN_37  at 16#C94# range 0 .. 31;
      LTC0_PKE_37  at 16#E94# range 0 .. 31;
      LTC0_PKA2_6  at 16#898# range 0 .. 31;
      LTC0_PKB2_6  at 16#A98# range 0 .. 31;
      LTC0_PKN2_6  at 16#C98# range 0 .. 31;
      LTC0_PKE2_6  at 16#E98# range 0 .. 31;
      LTC0_PKA_38  at 16#898# range 0 .. 31;
      LTC0_PKB_38  at 16#A98# range 0 .. 31;
      LTC0_PKN_38  at 16#C98# range 0 .. 31;
      LTC0_PKE_38  at 16#E98# range 0 .. 31;
      LTC0_PKA2_7  at 16#89C# range 0 .. 31;
      LTC0_PKB2_7  at 16#A9C# range 0 .. 31;
      LTC0_PKN2_7  at 16#C9C# range 0 .. 31;
      LTC0_PKE2_7  at 16#E9C# range 0 .. 31;
      LTC0_PKA_39  at 16#89C# range 0 .. 31;
      LTC0_PKB_39  at 16#A9C# range 0 .. 31;
      LTC0_PKN_39  at 16#C9C# range 0 .. 31;
      LTC0_PKE_39  at 16#E9C# range 0 .. 31;
      LTC0_PKA2_8  at 16#8A0# range 0 .. 31;
      LTC0_PKB2_8  at 16#AA0# range 0 .. 31;
      LTC0_PKN2_8  at 16#CA0# range 0 .. 31;
      LTC0_PKE2_8  at 16#EA0# range 0 .. 31;
      LTC0_PKA_40  at 16#8A0# range 0 .. 31;
      LTC0_PKB_40  at 16#AA0# range 0 .. 31;
      LTC0_PKN_40  at 16#CA0# range 0 .. 31;
      LTC0_PKE_40  at 16#EA0# range 0 .. 31;
      LTC0_PKA2_9  at 16#8A4# range 0 .. 31;
      LTC0_PKB2_9  at 16#AA4# range 0 .. 31;
      LTC0_PKN2_9  at 16#CA4# range 0 .. 31;
      LTC0_PKE2_9  at 16#EA4# range 0 .. 31;
      LTC0_PKA_41  at 16#8A4# range 0 .. 31;
      LTC0_PKB_41  at 16#AA4# range 0 .. 31;
      LTC0_PKN_41  at 16#CA4# range 0 .. 31;
      LTC0_PKE_41  at 16#EA4# range 0 .. 31;
      LTC0_PKA2_10 at 16#8A8# range 0 .. 31;
      LTC0_PKB2_10 at 16#AA8# range 0 .. 31;
      LTC0_PKN2_10 at 16#CA8# range 0 .. 31;
      LTC0_PKE2_10 at 16#EA8# range 0 .. 31;
      LTC0_PKA_42  at 16#8A8# range 0 .. 31;
      LTC0_PKB_42  at 16#AA8# range 0 .. 31;
      LTC0_PKN_42  at 16#CA8# range 0 .. 31;
      LTC0_PKE_42  at 16#EA8# range 0 .. 31;
      LTC0_PKA2_11 at 16#8AC# range 0 .. 31;
      LTC0_PKB2_11 at 16#AAC# range 0 .. 31;
      LTC0_PKN2_11 at 16#CAC# range 0 .. 31;
      LTC0_PKE2_11 at 16#EAC# range 0 .. 31;
      LTC0_PKA_43  at 16#8AC# range 0 .. 31;
      LTC0_PKB_43  at 16#AAC# range 0 .. 31;
      LTC0_PKN_43  at 16#CAC# range 0 .. 31;
      LTC0_PKE_43  at 16#EAC# range 0 .. 31;
      LTC0_PKA2_12 at 16#8B0# range 0 .. 31;
      LTC0_PKB2_12 at 16#AB0# range 0 .. 31;
      LTC0_PKN2_12 at 16#CB0# range 0 .. 31;
      LTC0_PKE2_12 at 16#EB0# range 0 .. 31;
      LTC0_PKA_44  at 16#8B0# range 0 .. 31;
      LTC0_PKB_44  at 16#AB0# range 0 .. 31;
      LTC0_PKN_44  at 16#CB0# range 0 .. 31;
      LTC0_PKE_44  at 16#EB0# range 0 .. 31;
      LTC0_PKA2_13 at 16#8B4# range 0 .. 31;
      LTC0_PKB2_13 at 16#AB4# range 0 .. 31;
      LTC0_PKN2_13 at 16#CB4# range 0 .. 31;
      LTC0_PKE2_13 at 16#EB4# range 0 .. 31;
      LTC0_PKA_45  at 16#8B4# range 0 .. 31;
      LTC0_PKB_45  at 16#AB4# range 0 .. 31;
      LTC0_PKN_45  at 16#CB4# range 0 .. 31;
      LTC0_PKE_45  at 16#EB4# range 0 .. 31;
      LTC0_PKA2_14 at 16#8B8# range 0 .. 31;
      LTC0_PKB2_14 at 16#AB8# range 0 .. 31;
      LTC0_PKN2_14 at 16#CB8# range 0 .. 31;
      LTC0_PKE2_14 at 16#EB8# range 0 .. 31;
      LTC0_PKA_46  at 16#8B8# range 0 .. 31;
      LTC0_PKB_46  at 16#AB8# range 0 .. 31;
      LTC0_PKN_46  at 16#CB8# range 0 .. 31;
      LTC0_PKE_46  at 16#EB8# range 0 .. 31;
      LTC0_PKA2_15 at 16#8BC# range 0 .. 31;
      LTC0_PKB2_15 at 16#ABC# range 0 .. 31;
      LTC0_PKN2_15 at 16#CBC# range 0 .. 31;
      LTC0_PKE2_15 at 16#EBC# range 0 .. 31;
      LTC0_PKA_47  at 16#8BC# range 0 .. 31;
      LTC0_PKB_47  at 16#ABC# range 0 .. 31;
      LTC0_PKN_47  at 16#CBC# range 0 .. 31;
      LTC0_PKE_47  at 16#EBC# range 0 .. 31;
      LTC0_PKA3_0  at 16#8C0# range 0 .. 31;
      LTC0_PKB3_0  at 16#AC0# range 0 .. 31;
      LTC0_PKN3_0  at 16#CC0# range 0 .. 31;
      LTC0_PKE3_0  at 16#EC0# range 0 .. 31;
      LTC0_PKA_48  at 16#8C0# range 0 .. 31;
      LTC0_PKB_48  at 16#AC0# range 0 .. 31;
      LTC0_PKN_48  at 16#CC0# range 0 .. 31;
      LTC0_PKE_48  at 16#EC0# range 0 .. 31;
      LTC0_PKA3_1  at 16#8C4# range 0 .. 31;
      LTC0_PKB3_1  at 16#AC4# range 0 .. 31;
      LTC0_PKN3_1  at 16#CC4# range 0 .. 31;
      LTC0_PKE3_1  at 16#EC4# range 0 .. 31;
      LTC0_PKA_49  at 16#8C4# range 0 .. 31;
      LTC0_PKB_49  at 16#AC4# range 0 .. 31;
      LTC0_PKN_49  at 16#CC4# range 0 .. 31;
      LTC0_PKE_49  at 16#EC4# range 0 .. 31;
      LTC0_PKA3_2  at 16#8C8# range 0 .. 31;
      LTC0_PKB3_2  at 16#AC8# range 0 .. 31;
      LTC0_PKN3_2  at 16#CC8# range 0 .. 31;
      LTC0_PKE3_2  at 16#EC8# range 0 .. 31;
      LTC0_PKA_50  at 16#8C8# range 0 .. 31;
      LTC0_PKB_50  at 16#AC8# range 0 .. 31;
      LTC0_PKN_50  at 16#CC8# range 0 .. 31;
      LTC0_PKE_50  at 16#EC8# range 0 .. 31;
      LTC0_PKA3_3  at 16#8CC# range 0 .. 31;
      LTC0_PKB3_3  at 16#ACC# range 0 .. 31;
      LTC0_PKN3_3  at 16#CCC# range 0 .. 31;
      LTC0_PKE3_3  at 16#ECC# range 0 .. 31;
      LTC0_PKA_51  at 16#8CC# range 0 .. 31;
      LTC0_PKB_51  at 16#ACC# range 0 .. 31;
      LTC0_PKN_51  at 16#CCC# range 0 .. 31;
      LTC0_PKE_51  at 16#ECC# range 0 .. 31;
      LTC0_PKA3_4  at 16#8D0# range 0 .. 31;
      LTC0_PKB3_4  at 16#AD0# range 0 .. 31;
      LTC0_PKN3_4  at 16#CD0# range 0 .. 31;
      LTC0_PKE3_4  at 16#ED0# range 0 .. 31;
      LTC0_PKA_52  at 16#8D0# range 0 .. 31;
      LTC0_PKB_52  at 16#AD0# range 0 .. 31;
      LTC0_PKN_52  at 16#CD0# range 0 .. 31;
      LTC0_PKE_52  at 16#ED0# range 0 .. 31;
      LTC0_PKA3_5  at 16#8D4# range 0 .. 31;
      LTC0_PKB3_5  at 16#AD4# range 0 .. 31;
      LTC0_PKN3_5  at 16#CD4# range 0 .. 31;
      LTC0_PKE3_5  at 16#ED4# range 0 .. 31;
      LTC0_PKA_53  at 16#8D4# range 0 .. 31;
      LTC0_PKB_53  at 16#AD4# range 0 .. 31;
      LTC0_PKN_53  at 16#CD4# range 0 .. 31;
      LTC0_PKE_53  at 16#ED4# range 0 .. 31;
      LTC0_PKA3_6  at 16#8D8# range 0 .. 31;
      LTC0_PKB3_6  at 16#AD8# range 0 .. 31;
      LTC0_PKN3_6  at 16#CD8# range 0 .. 31;
      LTC0_PKE3_6  at 16#ED8# range 0 .. 31;
      LTC0_PKA_54  at 16#8D8# range 0 .. 31;
      LTC0_PKB_54  at 16#AD8# range 0 .. 31;
      LTC0_PKN_54  at 16#CD8# range 0 .. 31;
      LTC0_PKE_54  at 16#ED8# range 0 .. 31;
      LTC0_PKA3_7  at 16#8DC# range 0 .. 31;
      LTC0_PKB3_7  at 16#ADC# range 0 .. 31;
      LTC0_PKN3_7  at 16#CDC# range 0 .. 31;
      LTC0_PKE3_7  at 16#EDC# range 0 .. 31;
      LTC0_PKA_55  at 16#8DC# range 0 .. 31;
      LTC0_PKB_55  at 16#ADC# range 0 .. 31;
      LTC0_PKN_55  at 16#CDC# range 0 .. 31;
      LTC0_PKE_55  at 16#EDC# range 0 .. 31;
      LTC0_PKA3_8  at 16#8E0# range 0 .. 31;
      LTC0_PKB3_8  at 16#AE0# range 0 .. 31;
      LTC0_PKN3_8  at 16#CE0# range 0 .. 31;
      LTC0_PKE3_8  at 16#EE0# range 0 .. 31;
      LTC0_PKA_56  at 16#8E0# range 0 .. 31;
      LTC0_PKB_56  at 16#AE0# range 0 .. 31;
      LTC0_PKN_56  at 16#CE0# range 0 .. 31;
      LTC0_PKE_56  at 16#EE0# range 0 .. 31;
      LTC0_PKA3_9  at 16#8E4# range 0 .. 31;
      LTC0_PKB3_9  at 16#AE4# range 0 .. 31;
      LTC0_PKN3_9  at 16#CE4# range 0 .. 31;
      LTC0_PKE3_9  at 16#EE4# range 0 .. 31;
      LTC0_PKA_57  at 16#8E4# range 0 .. 31;
      LTC0_PKB_57  at 16#AE4# range 0 .. 31;
      LTC0_PKN_57  at 16#CE4# range 0 .. 31;
      LTC0_PKE_57  at 16#EE4# range 0 .. 31;
      LTC0_PKA3_10 at 16#8E8# range 0 .. 31;
      LTC0_PKB3_10 at 16#AE8# range 0 .. 31;
      LTC0_PKN3_10 at 16#CE8# range 0 .. 31;
      LTC0_PKE3_10 at 16#EE8# range 0 .. 31;
      LTC0_PKA_58  at 16#8E8# range 0 .. 31;
      LTC0_PKB_58  at 16#AE8# range 0 .. 31;
      LTC0_PKN_58  at 16#CE8# range 0 .. 31;
      LTC0_PKE_58  at 16#EE8# range 0 .. 31;
      LTC0_PKA3_11 at 16#8EC# range 0 .. 31;
      LTC0_PKB3_11 at 16#AEC# range 0 .. 31;
      LTC0_PKN3_11 at 16#CEC# range 0 .. 31;
      LTC0_PKE3_11 at 16#EEC# range 0 .. 31;
      LTC0_PKA_59  at 16#8EC# range 0 .. 31;
      LTC0_PKB_59  at 16#AEC# range 0 .. 31;
      LTC0_PKN_59  at 16#CEC# range 0 .. 31;
      LTC0_PKE_59  at 16#EEC# range 0 .. 31;
      LTC0_PKA3_12 at 16#8F0# range 0 .. 31;
      LTC0_PKB3_12 at 16#AF0# range 0 .. 31;
      LTC0_PKN3_12 at 16#CF0# range 0 .. 31;
      LTC0_PKE3_12 at 16#EF0# range 0 .. 31;
      LTC0_PKA_60  at 16#8F0# range 0 .. 31;
      LTC0_PKB_60  at 16#AF0# range 0 .. 31;
      LTC0_PKN_60  at 16#CF0# range 0 .. 31;
      LTC0_PKE_60  at 16#EF0# range 0 .. 31;
      LTC0_PKA3_13 at 16#8F4# range 0 .. 31;
      LTC0_PKB3_13 at 16#AF4# range 0 .. 31;
      LTC0_PKN3_13 at 16#CF4# range 0 .. 31;
      LTC0_PKE3_13 at 16#EF4# range 0 .. 31;
      LTC0_PKA_61  at 16#8F4# range 0 .. 31;
      LTC0_PKB_61  at 16#AF4# range 0 .. 31;
      LTC0_PKN_61  at 16#CF4# range 0 .. 31;
      LTC0_PKE_61  at 16#EF4# range 0 .. 31;
      LTC0_PKA3_14 at 16#8F8# range 0 .. 31;
      LTC0_PKB3_14 at 16#AF8# range 0 .. 31;
      LTC0_PKN3_14 at 16#CF8# range 0 .. 31;
      LTC0_PKE3_14 at 16#EF8# range 0 .. 31;
      LTC0_PKA_62  at 16#8F8# range 0 .. 31;
      LTC0_PKB_62  at 16#AF8# range 0 .. 31;
      LTC0_PKN_62  at 16#CF8# range 0 .. 31;
      LTC0_PKE_62  at 16#EF8# range 0 .. 31;
      LTC0_PKA3_15 at 16#8FC# range 0 .. 31;
      LTC0_PKB3_15 at 16#AFC# range 0 .. 31;
      LTC0_PKN3_15 at 16#CFC# range 0 .. 31;
      LTC0_PKE3_15 at 16#EFC# range 0 .. 31;
      LTC0_PKA_63  at 16#8FC# range 0 .. 31;
      LTC0_PKB_63  at 16#AFC# range 0 .. 31;
      LTC0_PKN_63  at 16#CFC# range 0 .. 31;
      LTC0_PKE_63  at 16#EFC# range 0 .. 31;
   end record;

   --  LTC
   LTC0_Periph : aliased LTC0_Peripheral
     with Import, Address => LTC0_Base;

end NRF_SVD.LTC0;
