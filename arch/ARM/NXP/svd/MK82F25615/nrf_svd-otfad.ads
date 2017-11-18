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

--  OTFAD
package NRF_SVD.OTFAD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Force Security Violation Mode
   type CR_FSVM_Field is
     (
      --  No effect on the operating mode.
      CR_FSVM_Field_0,
      --  Force entry into SVM after a write with this data bit set and the
      --  data bit associated with FLDM cleared. SR[MODE] signals the operating
      --  mode.
      CR_FSVM_Field_1)
     with Size => 1;
   for CR_FSVM_Field use
     (CR_FSVM_Field_0 => 0,
      CR_FSVM_Field_1 => 1);

   --  Force Logically Disabled Mode
   type CR_FLDM_Field is
     (
      --  No effect on the operating mode.
      CR_FLDM_Field_0,
      --  Force entry into LDM after a write with this data bit set. SR[MODE]
      --  signals the operating mode.
      CR_FLDM_Field_1)
     with Size => 1;
   for CR_FLDM_Field use
     (CR_FLDM_Field_0 => 0,
      CR_FLDM_Field_1 => 1);

   --  Restricted Register Access Enable
   type CR_RRAE_Field is
     (
      --  Register access is fully enabled. The OTFAD programming model
      --  registers can be accessed "normally".
      CR_RRAE_Field_0,
      --  Register access is restricted and only the CR, SR and CRC can be
      --  accessed; others are treated as RAZ/WI.
      CR_RRAE_Field_1)
     with Size => 1;
   for CR_RRAE_Field use
     (CR_RRAE_Field_0 => 0,
      CR_RRAE_Field_1 => 1);

   --  CRC Context
   type CR_CCTX_Field is
     (
      --  Enable CTX0 CRC check.
      CR_CCTX_Field_00,
      --  Enable CTX1 CRC check.
      CR_CCTX_Field_01,
      --  Enable CTX2 CRC check.
      CR_CCTX_Field_10,
      --  Enable CTX3 CRC check.
      CR_CCTX_Field_11)
     with Size => 2;
   for CR_CCTX_Field use
     (CR_CCTX_Field_00 => 0,
      CR_CCTX_Field_01 => 1,
      CR_CCTX_Field_10 => 2,
      CR_CCTX_Field_11 => 3);

   --  CRC Enable
   type CR_CRCE_Field is
     (
      --  CRC-32 is disabled.
      CR_CRCE_Field_0,
      --  CRC-32 for the context defined by CR[CCTRX] is enabled.
      CR_CRCE_Field_1)
     with Size => 1;
   for CR_CRCE_Field use
     (CR_CRCE_Field_0 => 0,
      CR_CRCE_Field_1 => 1);

   --  CRC Initialization
   type CR_CRCI_Field is
     (
      --  CRC data register is unaffected.
      CR_CRCI_Field_0,
      --  CRC data register is immediately initialized after a write with this
      --  data bit set.
      CR_CRCI_Field_1)
     with Size => 1;
   for CR_CRCI_Field use
     (CR_CRCI_Field_0 => 0,
      CR_CRCI_Field_1 => 1);

   --  Global OTFAD Enable
   type CR_GE_Field is
     (
      --  OTFAD has decryption disabled, and bypasses all data fetched by the
      --  QuadSPI.
      CR_GE_Field_0,
      --  OTFAD has decryption enabled, and processes fetched data as defined
      --  by the hardware configuration.
      CR_GE_Field_1)
     with Size => 1;
   for CR_GE_Field use
     (CR_GE_Field_0 => 0,
      CR_GE_Field_1 => 1);

   --  Control Register
   type OTFAD_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Force Security Violation Mode
      FSVM           : CR_FSVM_Field := NRF_SVD.OTFAD.CR_FSVM_Field_0;
      --  Force Logically Disabled Mode
      FLDM           : CR_FLDM_Field := NRF_SVD.OTFAD.CR_FLDM_Field_0;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Restricted Register Access Enable
      RRAE           : CR_RRAE_Field := NRF_SVD.OTFAD.CR_RRAE_Field_0;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  CRC Context
      CCTX           : CR_CCTX_Field := NRF_SVD.OTFAD.CR_CCTX_Field_00;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  CRC Enable
      CRCE           : CR_CRCE_Field := NRF_SVD.OTFAD.CR_CRCE_Field_0;
      --  Write-only. CRC Initialization
      CRCI           : CR_CRCI_Field := NRF_SVD.OTFAD.CR_CRCI_Field_0;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Global OTFAD Enable
      GE             : CR_GE_Field := NRF_SVD.OTFAD.CR_GE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFAD_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FSVM           at 0 range 2 .. 2;
      FLDM           at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      RRAE           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CCTX           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CRCE           at 0 range 20 .. 20;
      CRCI           at 0 range 21 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      GE             at 0 range 31 .. 31;
   end record;

   --  Operating Mode
   type SR_MODE_Field is
     (
      --  Operating in Normal mode (NRM)
      SR_MODE_Field_00,
      --  Unused (reserved)
      SR_MODE_Field_01,
      --  Operating in Security Violation Mode (SVM)
      SR_MODE_Field_10,
      --  Operating in Logically Disabled Mode (LDM)
      SR_MODE_Field_11)
     with Size => 2;
   for SR_MODE_Field use
     (SR_MODE_Field_00 => 0,
      SR_MODE_Field_01 => 1,
      SR_MODE_Field_10 => 2,
      SR_MODE_Field_11 => 3);

   subtype OTFAD_SR_NCTX_Field is HAL.UInt4;
   subtype OTFAD_SR_HRL_Field is HAL.UInt4;

   --  Restricted Register Access Mode
   type SR_RRAM_Field is
     (
      --  Register access is fully enabled. The OTFAD programming model
      --  registers can be accessed "normally".
      SR_RRAM_Field_0,
      --  Register access is restricted and only the CR, SR and CRC can be
      --  accessed; others are treated as RAZ/WI.
      SR_RRAM_Field_1)
     with Size => 1;
   for SR_RRAM_Field use
     (SR_RRAM_Field_0 => 0,
      SR_RRAM_Field_1 => 1);

   --  Global Enable Mode
   type SR_GEM_Field is
     (
      --  OTFAD is disabled, and bypasses all data fetched by the QuadSPI.
      SR_GEM_Field_0,
      --  OTFAD is enabled, and processes data fetched by the QuadSPI as
      --  defined by the hardware configuration.
      SR_GEM_Field_1)
     with Size => 1;
   for SR_GEM_Field use
     (SR_GEM_Field_0 => 0,
      SR_GEM_Field_1 => 1);

   --  Status Register
   type OTFAD_SR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. MDPC Present
      MDPCP          : Boolean;
      --  Read-only. Operating Mode
      MODE           : SR_MODE_Field;
      --  Read-only. Number of Contexts
      NCTX           : OTFAD_SR_NCTX_Field;
      --  unspecified
      Reserved_8_23  : HAL.UInt16;
      --  Read-only. Hardware Revision Level
      HRL            : OTFAD_SR_HRL_Field;
      --  Read-only. Restricted Register Access Mode
      RRAM           : SR_RRAM_Field;
      --  Read-only. Global Enable Mode
      GEM            : SR_GEM_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFAD_SR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      MDPCP          at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 3;
      NCTX           at 0 range 4 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      HRL            at 0 range 24 .. 27;
      RRAM           at 0 range 28 .. 28;
      GEM            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CTX_RGD_W_SRTADDR_Field is HAL.UInt22;

   --  AES Region Descriptor Word0
   type CTX_RGD_W_Register is record
      --  unspecified
      Reserved_0_9 : HAL.UInt10 := 16#0#;
      --  Start Address
      SRTADDR      : CTX_RGD_W_SRTADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTX_RGD_W_Register use record
      Reserved_0_9 at 0 range 0 .. 9;
      SRTADDR      at 0 range 10 .. 31;
   end record;

   --  Valid
   type CTX_RGD_W10_VLD_Field is
     (
      --  Context is invalid.
      CTX_RGD_W10_VLD_Field_0,
      --  Context is valid.
      CTX_RGD_W10_VLD_Field_1)
     with Size => 1;
   for CTX_RGD_W10_VLD_Field use
     (CTX_RGD_W10_VLD_Field_0 => 0,
      CTX_RGD_W10_VLD_Field_1 => 1);

   --  Aes Decryption Enable.
   type CTX_RGD_W10_ADE_Field is
     (
      --  Bypass the fetched data.
      CTX_RGD_W10_ADE_Field_0,
      --  Perform the CTR-AES128 mode decryption on the fetched data.
      CTX_RGD_W10_ADE_Field_1)
     with Size => 1;
   for CTX_RGD_W10_ADE_Field use
     (CTX_RGD_W10_ADE_Field_0 => 0,
      CTX_RGD_W10_ADE_Field_1 => 1);

   --  Read-Only
   type CTX_RGD_W10_RO_Field is
     (
      --  The context registers can be accessed normally (as defined by
      --  SR[RRAM]).
      CTX_RGD_W10_RO_Field_0,
      --  The context registers are read-only and accesses may be further
      --  restricted based on SR[RRAM].
      CTX_RGD_W10_RO_Field_1)
     with Size => 1;
   for CTX_RGD_W10_RO_Field use
     (CTX_RGD_W10_RO_Field_0 => 0,
      CTX_RGD_W10_RO_Field_1 => 1);

   subtype CTX_RGD_W_ENDADDR_Field is HAL.UInt22;

   --  AES Region Descriptor Word1
   type CTX_RGD_W_Register_1 is record
      --  Valid
      VLD          : CTX_RGD_W10_VLD_Field :=
                      NRF_SVD.OTFAD.CTX_RGD_W10_VLD_Field_0;
      --  Aes Decryption Enable.
      ADE          : CTX_RGD_W10_ADE_Field :=
                      NRF_SVD.OTFAD.CTX_RGD_W10_ADE_Field_0;
      --  Read-Only
      RO           : CTX_RGD_W10_RO_Field :=
                      NRF_SVD.OTFAD.CTX_RGD_W10_RO_Field_0;
      --  unspecified
      Reserved_3_9 : HAL.UInt7 := 16#7F#;
      --  End Address
      ENDADDR      : CTX_RGD_W_ENDADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTX_RGD_W_Register_1 use record
      VLD          at 0 range 0 .. 0;
      ADE          at 0 range 1 .. 1;
      RO           at 0 range 2 .. 2;
      Reserved_3_9 at 0 range 3 .. 9;
      ENDADDR      at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OTFAD
   type OTFAD_Peripheral is record
      --  Control Register
      CR          : aliased OTFAD_CR_Register;
      --  Status Register
      SR          : aliased OTFAD_SR_Register;
      --  Cyclic Redundancy Check Register
      CRC         : aliased HAL.UInt32;
      --  AES Key Word0
      CTX_KEY_W00 : aliased HAL.UInt32;
      --  AES Key Word1
      CTX_KEY_W10 : aliased HAL.UInt32;
      --  AES Key Word2
      CTX_KEY_W20 : aliased HAL.UInt32;
      --  AES Key Word3
      CTX_KEY_W30 : aliased HAL.UInt32;
      --  AES Counter Word0
      CTX_CTR_W00 : aliased HAL.UInt32;
      --  AES Counter Word1
      CTX_CTR_W10 : aliased HAL.UInt32;
      --  AES Region Descriptor Word0
      CTX_RGD_W00 : aliased CTX_RGD_W_Register;
      --  AES Region Descriptor Word1
      CTX_RGD_W10 : aliased CTX_RGD_W_Register_1;
      --  AES Key Word0
      CTX_KEY_W01 : aliased HAL.UInt32;
      --  AES Key Word1
      CTX_KEY_W11 : aliased HAL.UInt32;
      --  AES Key Word2
      CTX_KEY_W21 : aliased HAL.UInt32;
      --  AES Key Word3
      CTX_KEY_W31 : aliased HAL.UInt32;
      --  AES Counter Word0
      CTX_CTR_W01 : aliased HAL.UInt32;
      --  AES Counter Word1
      CTX_CTR_W11 : aliased HAL.UInt32;
      --  AES Region Descriptor Word0
      CTX_RGD_W01 : aliased CTX_RGD_W_Register;
      --  AES Region Descriptor Word1
      CTX_RGD_W11 : aliased CTX_RGD_W_Register_1;
      --  AES Key Word0
      CTX_KEY_W02 : aliased HAL.UInt32;
      --  AES Key Word1
      CTX_KEY_W12 : aliased HAL.UInt32;
      --  AES Key Word2
      CTX_KEY_W22 : aliased HAL.UInt32;
      --  AES Key Word3
      CTX_KEY_W32 : aliased HAL.UInt32;
      --  AES Counter Word0
      CTX_CTR_W02 : aliased HAL.UInt32;
      --  AES Counter Word1
      CTX_CTR_W12 : aliased HAL.UInt32;
      --  AES Region Descriptor Word0
      CTX_RGD_W02 : aliased CTX_RGD_W_Register;
      --  AES Region Descriptor Word1
      CTX_RGD_W12 : aliased CTX_RGD_W_Register_1;
      --  AES Key Word0
      CTX_KEY_W03 : aliased HAL.UInt32;
      --  AES Key Word1
      CTX_KEY_W13 : aliased HAL.UInt32;
      --  AES Key Word2
      CTX_KEY_W23 : aliased HAL.UInt32;
      --  AES Key Word3
      CTX_KEY_W33 : aliased HAL.UInt32;
      --  AES Counter Word0
      CTX_CTR_W03 : aliased HAL.UInt32;
      --  AES Counter Word1
      CTX_CTR_W13 : aliased HAL.UInt32;
      --  AES Region Descriptor Word0
      CTX_RGD_W03 : aliased CTX_RGD_W_Register;
      --  AES Region Descriptor Word1
      CTX_RGD_W13 : aliased CTX_RGD_W_Register_1;
   end record
     with Volatile;

   for OTFAD_Peripheral use record
      CR          at 16#0# range 0 .. 31;
      SR          at 16#4# range 0 .. 31;
      CRC         at 16#8# range 0 .. 31;
      CTX_KEY_W00 at 16#100# range 0 .. 31;
      CTX_KEY_W10 at 16#104# range 0 .. 31;
      CTX_KEY_W20 at 16#108# range 0 .. 31;
      CTX_KEY_W30 at 16#10C# range 0 .. 31;
      CTX_CTR_W00 at 16#110# range 0 .. 31;
      CTX_CTR_W10 at 16#114# range 0 .. 31;
      CTX_RGD_W00 at 16#118# range 0 .. 31;
      CTX_RGD_W10 at 16#11C# range 0 .. 31;
      CTX_KEY_W01 at 16#140# range 0 .. 31;
      CTX_KEY_W11 at 16#144# range 0 .. 31;
      CTX_KEY_W21 at 16#148# range 0 .. 31;
      CTX_KEY_W31 at 16#14C# range 0 .. 31;
      CTX_CTR_W01 at 16#150# range 0 .. 31;
      CTX_CTR_W11 at 16#154# range 0 .. 31;
      CTX_RGD_W01 at 16#158# range 0 .. 31;
      CTX_RGD_W11 at 16#15C# range 0 .. 31;
      CTX_KEY_W02 at 16#180# range 0 .. 31;
      CTX_KEY_W12 at 16#184# range 0 .. 31;
      CTX_KEY_W22 at 16#188# range 0 .. 31;
      CTX_KEY_W32 at 16#18C# range 0 .. 31;
      CTX_CTR_W02 at 16#190# range 0 .. 31;
      CTX_CTR_W12 at 16#194# range 0 .. 31;
      CTX_RGD_W02 at 16#198# range 0 .. 31;
      CTX_RGD_W12 at 16#19C# range 0 .. 31;
      CTX_KEY_W03 at 16#1C0# range 0 .. 31;
      CTX_KEY_W13 at 16#1C4# range 0 .. 31;
      CTX_KEY_W23 at 16#1C8# range 0 .. 31;
      CTX_KEY_W33 at 16#1CC# range 0 .. 31;
      CTX_CTR_W03 at 16#1D0# range 0 .. 31;
      CTX_CTR_W13 at 16#1D4# range 0 .. 31;
      CTX_RGD_W03 at 16#1D8# range 0 .. 31;
      CTX_RGD_W13 at 16#1DC# range 0 .. 31;
   end record;

   --  OTFAD
   OTFAD_Periph : aliased OTFAD_Peripheral
     with Import, Address => OTFAD_Base;

end NRF_SVD.OTFAD;
