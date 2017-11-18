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

--  This spec has been automatically generated from MK27F15.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Memory Mapped Cryptographic Acceleration Unit (MMCAU)
package NRF_SVD.CAU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  no description available
   type CAU_LDR_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_LDR_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_LDR_CASR_IC_Field_1)
     with Size => 1;
   for CAU_LDR_CASR_IC_Field use
     (CAU_LDR_CASR_IC_Field_0 => 0,
      CAU_LDR_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_LDR_CASR_DPE_Field is
     (
      --  No error detected
      CAU_LDR_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_LDR_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_LDR_CASR_DPE_Field use
     (CAU_LDR_CASR_DPE_Field_0 => 0,
      CAU_LDR_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_LDR_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_LDR_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_LDR_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_LDR_CASR_VER_Field use
     (CAU_LDR_CASR_VER_Field_0001 => 1,
      CAU_LDR_CASR_VER_Field_0010 => 2);

   --  Status register - Load Register command
   type CAU_LDR_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_LDR_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_LDR_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_LDR_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_LDR_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_LDR_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_LDR_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_LDR_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_STR_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_STR_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_STR_CASR_IC_Field_1)
     with Size => 1;
   for CAU_STR_CASR_IC_Field use
     (CAU_STR_CASR_IC_Field_0 => 0,
      CAU_STR_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_STR_CASR_DPE_Field is
     (
      --  No error detected
      CAU_STR_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_STR_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_STR_CASR_DPE_Field use
     (CAU_STR_CASR_DPE_Field_0 => 0,
      CAU_STR_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_STR_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_STR_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_STR_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_STR_CASR_VER_Field use
     (CAU_STR_CASR_VER_Field_0001 => 1,
      CAU_STR_CASR_VER_Field_0010 => 2);

   --  Status register - Store Register command
   type CAU_STR_CASR_Register is record
      --  Read-only. no description available
      IC            : CAU_STR_CASR_IC_Field;
      --  Read-only. no description available
      DPE           : CAU_STR_CASR_DPE_Field;
      --  unspecified
      Reserved_2_27 : HAL.UInt26;
      --  Read-only. CAU version
      VER           : CAU_STR_CASR_VER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_STR_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_ADR_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_ADR_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_ADR_CASR_IC_Field_1)
     with Size => 1;
   for CAU_ADR_CASR_IC_Field use
     (CAU_ADR_CASR_IC_Field_0 => 0,
      CAU_ADR_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_ADR_CASR_DPE_Field is
     (
      --  No error detected
      CAU_ADR_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_ADR_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_ADR_CASR_DPE_Field use
     (CAU_ADR_CASR_DPE_Field_0 => 0,
      CAU_ADR_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_ADR_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_ADR_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_ADR_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_ADR_CASR_VER_Field use
     (CAU_ADR_CASR_VER_Field_0001 => 1,
      CAU_ADR_CASR_VER_Field_0010 => 2);

   --  Status register - Add Register command
   type CAU_ADR_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_ADR_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_ADR_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_ADR_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_ADR_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_ADR_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_ADR_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_ADR_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_RADR_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_RADR_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_RADR_CASR_IC_Field_1)
     with Size => 1;
   for CAU_RADR_CASR_IC_Field use
     (CAU_RADR_CASR_IC_Field_0 => 0,
      CAU_RADR_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_RADR_CASR_DPE_Field is
     (
      --  No error detected
      CAU_RADR_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_RADR_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_RADR_CASR_DPE_Field use
     (CAU_RADR_CASR_DPE_Field_0 => 0,
      CAU_RADR_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_RADR_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_RADR_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_RADR_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_RADR_CASR_VER_Field use
     (CAU_RADR_CASR_VER_Field_0001 => 1,
      CAU_RADR_CASR_VER_Field_0010 => 2);

   --  Status register - Reverse and Add to Register command
   type CAU_RADR_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_RADR_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_RADR_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_RADR_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_RADR_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_RADR_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_RADR_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_RADR_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_XOR_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_XOR_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_XOR_CASR_IC_Field_1)
     with Size => 1;
   for CAU_XOR_CASR_IC_Field use
     (CAU_XOR_CASR_IC_Field_0 => 0,
      CAU_XOR_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_XOR_CASR_DPE_Field is
     (
      --  No error detected
      CAU_XOR_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_XOR_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_XOR_CASR_DPE_Field use
     (CAU_XOR_CASR_DPE_Field_0 => 0,
      CAU_XOR_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_XOR_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_XOR_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_XOR_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_XOR_CASR_VER_Field use
     (CAU_XOR_CASR_VER_Field_0001 => 1,
      CAU_XOR_CASR_VER_Field_0010 => 2);

   --  Status register - Exclusive Or command
   type CAU_XOR_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_XOR_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_XOR_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_XOR_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_XOR_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_XOR_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_XOR_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_XOR_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_ROTL_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_ROTL_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_ROTL_CASR_IC_Field_1)
     with Size => 1;
   for CAU_ROTL_CASR_IC_Field use
     (CAU_ROTL_CASR_IC_Field_0 => 0,
      CAU_ROTL_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_ROTL_CASR_DPE_Field is
     (
      --  No error detected
      CAU_ROTL_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_ROTL_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_ROTL_CASR_DPE_Field use
     (CAU_ROTL_CASR_DPE_Field_0 => 0,
      CAU_ROTL_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_ROTL_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_ROTL_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_ROTL_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_ROTL_CASR_VER_Field use
     (CAU_ROTL_CASR_VER_Field_0001 => 1,
      CAU_ROTL_CASR_VER_Field_0010 => 2);

   --  Status register - Rotate Left command
   type CAU_ROTL_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_ROTL_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_ROTL_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_ROTL_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_ROTL_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_ROTL_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_ROTL_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_ROTL_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_AESC_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_AESC_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_AESC_CASR_IC_Field_1)
     with Size => 1;
   for CAU_AESC_CASR_IC_Field use
     (CAU_AESC_CASR_IC_Field_0 => 0,
      CAU_AESC_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_AESC_CASR_DPE_Field is
     (
      --  No error detected
      CAU_AESC_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_AESC_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_AESC_CASR_DPE_Field use
     (CAU_AESC_CASR_DPE_Field_0 => 0,
      CAU_AESC_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_AESC_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_AESC_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_AESC_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_AESC_CASR_VER_Field use
     (CAU_AESC_CASR_VER_Field_0001 => 1,
      CAU_AESC_CASR_VER_Field_0010 => 2);

   --  Status register - AES Column Operation command
   type CAU_AESC_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_AESC_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_AESC_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_AESC_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_AESC_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_AESC_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_AESC_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_AESC_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   --  no description available
   type CAU_AESIC_CASR_IC_Field is
     (
      --  No illegal commands issued
      CAU_AESIC_CASR_IC_Field_0,
      --  Illegal command issued
      CAU_AESIC_CASR_IC_Field_1)
     with Size => 1;
   for CAU_AESIC_CASR_IC_Field use
     (CAU_AESIC_CASR_IC_Field_0 => 0,
      CAU_AESIC_CASR_IC_Field_1 => 1);

   --  no description available
   type CAU_AESIC_CASR_DPE_Field is
     (
      --  No error detected
      CAU_AESIC_CASR_DPE_Field_0,
      --  DES key parity error detected
      CAU_AESIC_CASR_DPE_Field_1)
     with Size => 1;
   for CAU_AESIC_CASR_DPE_Field use
     (CAU_AESIC_CASR_DPE_Field_0 => 0,
      CAU_AESIC_CASR_DPE_Field_1 => 1);

   --  CAU version
   type CAU_AESIC_CASR_VER_Field is
     (
      --  Initial CAU version
      CAU_AESIC_CASR_VER_Field_0001,
      --  Second version, added support for SHA-256 algorithm.(This is the
      --  value on this device)
      CAU_AESIC_CASR_VER_Field_0010)
     with Size => 4;
   for CAU_AESIC_CASR_VER_Field use
     (CAU_AESIC_CASR_VER_Field_0001 => 1,
      CAU_AESIC_CASR_VER_Field_0010 => 2);

   --  Status register - AES Inverse Column Operation command
   type CAU_AESIC_CASR_Register is record
      --  Write-only. no description available
      IC            : CAU_AESIC_CASR_IC_Field :=
                       NRF_SVD.CAU.CAU_AESIC_CASR_IC_Field_0;
      --  Write-only. no description available
      DPE           : CAU_AESIC_CASR_DPE_Field :=
                       NRF_SVD.CAU.CAU_AESIC_CASR_DPE_Field_0;
      --  unspecified
      Reserved_2_27 : HAL.UInt26 := 16#0#;
      --  Write-only. CAU version
      VER           : CAU_AESIC_CASR_VER_Field :=
                       NRF_SVD.CAU.CAU_AESIC_CASR_VER_Field_0010;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAU_AESIC_CASR_Register use record
      IC            at 0 range 0 .. 0;
      DPE           at 0 range 1 .. 1;
      Reserved_2_27 at 0 range 2 .. 27;
      VER           at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory Mapped Cryptographic Acceleration Unit (MMCAU)
   type CAU_Peripheral is record
      --  Direct access register 0
      CAU_DIRECT0    : aliased HAL.UInt32;
      --  Direct access register 1
      CAU_DIRECT1    : aliased HAL.UInt32;
      --  Direct access register 2
      CAU_DIRECT2    : aliased HAL.UInt32;
      --  Direct access register 3
      CAU_DIRECT3    : aliased HAL.UInt32;
      --  Direct access register 4
      CAU_DIRECT4    : aliased HAL.UInt32;
      --  Direct access register 5
      CAU_DIRECT5    : aliased HAL.UInt32;
      --  Direct access register 6
      CAU_DIRECT6    : aliased HAL.UInt32;
      --  Direct access register 7
      CAU_DIRECT7    : aliased HAL.UInt32;
      --  Direct access register 8
      CAU_DIRECT8    : aliased HAL.UInt32;
      --  Direct access register 9
      CAU_DIRECT9    : aliased HAL.UInt32;
      --  Direct access register 10
      CAU_DIRECT10   : aliased HAL.UInt32;
      --  Direct access register 11
      CAU_DIRECT11   : aliased HAL.UInt32;
      --  Direct access register 12
      CAU_DIRECT12   : aliased HAL.UInt32;
      --  Direct access register 13
      CAU_DIRECT13   : aliased HAL.UInt32;
      --  Direct access register 14
      CAU_DIRECT14   : aliased HAL.UInt32;
      --  Direct access register 15
      CAU_DIRECT15   : aliased HAL.UInt32;
      --  Status register - Load Register command
      CAU_LDR_CASR   : aliased CAU_LDR_CASR_Register;
      --  Accumulator register - Load Register command
      CAU_LDR_CAA    : aliased HAL.UInt32;
      --  General Purpose Register 0 - Load Register command
      CAU_LDR_CA0    : aliased HAL.UInt32;
      --  General Purpose Register 1 - Load Register command
      CAU_LDR_CA1    : aliased HAL.UInt32;
      --  General Purpose Register 2 - Load Register command
      CAU_LDR_CA2    : aliased HAL.UInt32;
      --  General Purpose Register 3 - Load Register command
      CAU_LDR_CA3    : aliased HAL.UInt32;
      --  General Purpose Register 4 - Load Register command
      CAU_LDR_CA4    : aliased HAL.UInt32;
      --  General Purpose Register 5 - Load Register command
      CAU_LDR_CA5    : aliased HAL.UInt32;
      --  General Purpose Register 6 - Load Register command
      CAU_LDR_CA6    : aliased HAL.UInt32;
      --  General Purpose Register 7 - Load Register command
      CAU_LDR_CA7    : aliased HAL.UInt32;
      --  General Purpose Register 8 - Load Register command
      CAU_LDR_CA8    : aliased HAL.UInt32;
      --  Status register - Store Register command
      CAU_STR_CASR   : aliased CAU_STR_CASR_Register;
      --  Accumulator register - Store Register command
      CAU_STR_CAA    : aliased HAL.UInt32;
      --  General Purpose Register 0 - Store Register command
      CAU_STR_CA0    : aliased HAL.UInt32;
      --  General Purpose Register 1 - Store Register command
      CAU_STR_CA1    : aliased HAL.UInt32;
      --  General Purpose Register 2 - Store Register command
      CAU_STR_CA2    : aliased HAL.UInt32;
      --  General Purpose Register 3 - Store Register command
      CAU_STR_CA3    : aliased HAL.UInt32;
      --  General Purpose Register 4 - Store Register command
      CAU_STR_CA4    : aliased HAL.UInt32;
      --  General Purpose Register 5 - Store Register command
      CAU_STR_CA5    : aliased HAL.UInt32;
      --  General Purpose Register 6 - Store Register command
      CAU_STR_CA6    : aliased HAL.UInt32;
      --  General Purpose Register 7 - Store Register command
      CAU_STR_CA7    : aliased HAL.UInt32;
      --  General Purpose Register 8 - Store Register command
      CAU_STR_CA8    : aliased HAL.UInt32;
      --  Status register - Add Register command
      CAU_ADR_CASR   : aliased CAU_ADR_CASR_Register;
      --  Accumulator register - Add to register command
      CAU_ADR_CAA    : aliased HAL.UInt32;
      --  General Purpose Register 0 - Add to register command
      CAU_ADR_CA0    : aliased HAL.UInt32;
      --  General Purpose Register 1 - Add to register command
      CAU_ADR_CA1    : aliased HAL.UInt32;
      --  General Purpose Register 2 - Add to register command
      CAU_ADR_CA2    : aliased HAL.UInt32;
      --  General Purpose Register 3 - Add to register command
      CAU_ADR_CA3    : aliased HAL.UInt32;
      --  General Purpose Register 4 - Add to register command
      CAU_ADR_CA4    : aliased HAL.UInt32;
      --  General Purpose Register 5 - Add to register command
      CAU_ADR_CA5    : aliased HAL.UInt32;
      --  General Purpose Register 6 - Add to register command
      CAU_ADR_CA6    : aliased HAL.UInt32;
      --  General Purpose Register 7 - Add to register command
      CAU_ADR_CA7    : aliased HAL.UInt32;
      --  General Purpose Register 8 - Add to register command
      CAU_ADR_CA8    : aliased HAL.UInt32;
      --  Status register - Reverse and Add to Register command
      CAU_RADR_CASR  : aliased CAU_RADR_CASR_Register;
      --  Accumulator register - Reverse and Add to Register command
      CAU_RADR_CAA   : aliased HAL.UInt32;
      --  General Purpose Register 0 - Reverse and Add to Register command
      CAU_RADR_CA0   : aliased HAL.UInt32;
      --  General Purpose Register 1 - Reverse and Add to Register command
      CAU_RADR_CA1   : aliased HAL.UInt32;
      --  General Purpose Register 2 - Reverse and Add to Register command
      CAU_RADR_CA2   : aliased HAL.UInt32;
      --  General Purpose Register 3 - Reverse and Add to Register command
      CAU_RADR_CA3   : aliased HAL.UInt32;
      --  General Purpose Register 4 - Reverse and Add to Register command
      CAU_RADR_CA4   : aliased HAL.UInt32;
      --  General Purpose Register 5 - Reverse and Add to Register command
      CAU_RADR_CA5   : aliased HAL.UInt32;
      --  General Purpose Register 6 - Reverse and Add to Register command
      CAU_RADR_CA6   : aliased HAL.UInt32;
      --  General Purpose Register 7 - Reverse and Add to Register command
      CAU_RADR_CA7   : aliased HAL.UInt32;
      --  General Purpose Register 8 - Reverse and Add to Register command
      CAU_RADR_CA8   : aliased HAL.UInt32;
      --  Status register - Exclusive Or command
      CAU_XOR_CASR   : aliased CAU_XOR_CASR_Register;
      --  Accumulator register - Exclusive Or command
      CAU_XOR_CAA    : aliased HAL.UInt32;
      --  General Purpose Register 0 - Exclusive Or command
      CAU_XOR_CA0    : aliased HAL.UInt32;
      --  General Purpose Register 1 - Exclusive Or command
      CAU_XOR_CA1    : aliased HAL.UInt32;
      --  General Purpose Register 2 - Exclusive Or command
      CAU_XOR_CA2    : aliased HAL.UInt32;
      --  General Purpose Register 3 - Exclusive Or command
      CAU_XOR_CA3    : aliased HAL.UInt32;
      --  General Purpose Register 4 - Exclusive Or command
      CAU_XOR_CA4    : aliased HAL.UInt32;
      --  General Purpose Register 5 - Exclusive Or command
      CAU_XOR_CA5    : aliased HAL.UInt32;
      --  General Purpose Register 6 - Exclusive Or command
      CAU_XOR_CA6    : aliased HAL.UInt32;
      --  General Purpose Register 7 - Exclusive Or command
      CAU_XOR_CA7    : aliased HAL.UInt32;
      --  General Purpose Register 8 - Exclusive Or command
      CAU_XOR_CA8    : aliased HAL.UInt32;
      --  Status register - Rotate Left command
      CAU_ROTL_CASR  : aliased CAU_ROTL_CASR_Register;
      --  Accumulator register - Rotate Left command
      CAU_ROTL_CAA   : aliased HAL.UInt32;
      --  General Purpose Register 0 - Rotate Left command
      CAU_ROTL_CA0   : aliased HAL.UInt32;
      --  General Purpose Register 1 - Rotate Left command
      CAU_ROTL_CA1   : aliased HAL.UInt32;
      --  General Purpose Register 2 - Rotate Left command
      CAU_ROTL_CA2   : aliased HAL.UInt32;
      --  General Purpose Register 3 - Rotate Left command
      CAU_ROTL_CA3   : aliased HAL.UInt32;
      --  General Purpose Register 4 - Rotate Left command
      CAU_ROTL_CA4   : aliased HAL.UInt32;
      --  General Purpose Register 5 - Rotate Left command
      CAU_ROTL_CA5   : aliased HAL.UInt32;
      --  General Purpose Register 6 - Rotate Left command
      CAU_ROTL_CA6   : aliased HAL.UInt32;
      --  General Purpose Register 7 - Rotate Left command
      CAU_ROTL_CA7   : aliased HAL.UInt32;
      --  General Purpose Register 8 - Rotate Left command
      CAU_ROTL_CA8   : aliased HAL.UInt32;
      --  Status register - AES Column Operation command
      CAU_AESC_CASR  : aliased CAU_AESC_CASR_Register;
      --  Accumulator register - AES Column Operation command
      CAU_AESC_CAA   : aliased HAL.UInt32;
      --  General Purpose Register 0 - AES Column Operation command
      CAU_AESC_CA0   : aliased HAL.UInt32;
      --  General Purpose Register 1 - AES Column Operation command
      CAU_AESC_CA1   : aliased HAL.UInt32;
      --  General Purpose Register 2 - AES Column Operation command
      CAU_AESC_CA2   : aliased HAL.UInt32;
      --  General Purpose Register 3 - AES Column Operation command
      CAU_AESC_CA3   : aliased HAL.UInt32;
      --  General Purpose Register 4 - AES Column Operation command
      CAU_AESC_CA4   : aliased HAL.UInt32;
      --  General Purpose Register 5 - AES Column Operation command
      CAU_AESC_CA5   : aliased HAL.UInt32;
      --  General Purpose Register 6 - AES Column Operation command
      CAU_AESC_CA6   : aliased HAL.UInt32;
      --  General Purpose Register 7 - AES Column Operation command
      CAU_AESC_CA7   : aliased HAL.UInt32;
      --  General Purpose Register 8 - AES Column Operation command
      CAU_AESC_CA8   : aliased HAL.UInt32;
      --  Status register - AES Inverse Column Operation command
      CAU_AESIC_CASR : aliased CAU_AESIC_CASR_Register;
      --  Accumulator register - AES Inverse Column Operation command
      CAU_AESIC_CAA  : aliased HAL.UInt32;
      --  General Purpose Register 0 - AES Inverse Column Operation command
      CAU_AESIC_CA0  : aliased HAL.UInt32;
      --  General Purpose Register 1 - AES Inverse Column Operation command
      CAU_AESIC_CA1  : aliased HAL.UInt32;
      --  General Purpose Register 2 - AES Inverse Column Operation command
      CAU_AESIC_CA2  : aliased HAL.UInt32;
      --  General Purpose Register 3 - AES Inverse Column Operation command
      CAU_AESIC_CA3  : aliased HAL.UInt32;
      --  General Purpose Register 4 - AES Inverse Column Operation command
      CAU_AESIC_CA4  : aliased HAL.UInt32;
      --  General Purpose Register 5 - AES Inverse Column Operation command
      CAU_AESIC_CA5  : aliased HAL.UInt32;
      --  General Purpose Register 6 - AES Inverse Column Operation command
      CAU_AESIC_CA6  : aliased HAL.UInt32;
      --  General Purpose Register 7 - AES Inverse Column Operation command
      CAU_AESIC_CA7  : aliased HAL.UInt32;
      --  General Purpose Register 8 - AES Inverse Column Operation command
      CAU_AESIC_CA8  : aliased HAL.UInt32;
   end record
     with Volatile;

   for CAU_Peripheral use record
      CAU_DIRECT0    at 16#0# range 0 .. 31;
      CAU_DIRECT1    at 16#4# range 0 .. 31;
      CAU_DIRECT2    at 16#8# range 0 .. 31;
      CAU_DIRECT3    at 16#C# range 0 .. 31;
      CAU_DIRECT4    at 16#10# range 0 .. 31;
      CAU_DIRECT5    at 16#14# range 0 .. 31;
      CAU_DIRECT6    at 16#18# range 0 .. 31;
      CAU_DIRECT7    at 16#1C# range 0 .. 31;
      CAU_DIRECT8    at 16#20# range 0 .. 31;
      CAU_DIRECT9    at 16#24# range 0 .. 31;
      CAU_DIRECT10   at 16#28# range 0 .. 31;
      CAU_DIRECT11   at 16#2C# range 0 .. 31;
      CAU_DIRECT12   at 16#30# range 0 .. 31;
      CAU_DIRECT13   at 16#34# range 0 .. 31;
      CAU_DIRECT14   at 16#38# range 0 .. 31;
      CAU_DIRECT15   at 16#3C# range 0 .. 31;
      CAU_LDR_CASR   at 16#840# range 0 .. 31;
      CAU_LDR_CAA    at 16#844# range 0 .. 31;
      CAU_LDR_CA0    at 16#848# range 0 .. 31;
      CAU_LDR_CA1    at 16#84C# range 0 .. 31;
      CAU_LDR_CA2    at 16#850# range 0 .. 31;
      CAU_LDR_CA3    at 16#854# range 0 .. 31;
      CAU_LDR_CA4    at 16#858# range 0 .. 31;
      CAU_LDR_CA5    at 16#85C# range 0 .. 31;
      CAU_LDR_CA6    at 16#860# range 0 .. 31;
      CAU_LDR_CA7    at 16#864# range 0 .. 31;
      CAU_LDR_CA8    at 16#868# range 0 .. 31;
      CAU_STR_CASR   at 16#880# range 0 .. 31;
      CAU_STR_CAA    at 16#884# range 0 .. 31;
      CAU_STR_CA0    at 16#888# range 0 .. 31;
      CAU_STR_CA1    at 16#88C# range 0 .. 31;
      CAU_STR_CA2    at 16#890# range 0 .. 31;
      CAU_STR_CA3    at 16#894# range 0 .. 31;
      CAU_STR_CA4    at 16#898# range 0 .. 31;
      CAU_STR_CA5    at 16#89C# range 0 .. 31;
      CAU_STR_CA6    at 16#8A0# range 0 .. 31;
      CAU_STR_CA7    at 16#8A4# range 0 .. 31;
      CAU_STR_CA8    at 16#8A8# range 0 .. 31;
      CAU_ADR_CASR   at 16#8C0# range 0 .. 31;
      CAU_ADR_CAA    at 16#8C4# range 0 .. 31;
      CAU_ADR_CA0    at 16#8C8# range 0 .. 31;
      CAU_ADR_CA1    at 16#8CC# range 0 .. 31;
      CAU_ADR_CA2    at 16#8D0# range 0 .. 31;
      CAU_ADR_CA3    at 16#8D4# range 0 .. 31;
      CAU_ADR_CA4    at 16#8D8# range 0 .. 31;
      CAU_ADR_CA5    at 16#8DC# range 0 .. 31;
      CAU_ADR_CA6    at 16#8E0# range 0 .. 31;
      CAU_ADR_CA7    at 16#8E4# range 0 .. 31;
      CAU_ADR_CA8    at 16#8E8# range 0 .. 31;
      CAU_RADR_CASR  at 16#900# range 0 .. 31;
      CAU_RADR_CAA   at 16#904# range 0 .. 31;
      CAU_RADR_CA0   at 16#908# range 0 .. 31;
      CAU_RADR_CA1   at 16#90C# range 0 .. 31;
      CAU_RADR_CA2   at 16#910# range 0 .. 31;
      CAU_RADR_CA3   at 16#914# range 0 .. 31;
      CAU_RADR_CA4   at 16#918# range 0 .. 31;
      CAU_RADR_CA5   at 16#91C# range 0 .. 31;
      CAU_RADR_CA6   at 16#920# range 0 .. 31;
      CAU_RADR_CA7   at 16#924# range 0 .. 31;
      CAU_RADR_CA8   at 16#928# range 0 .. 31;
      CAU_XOR_CASR   at 16#980# range 0 .. 31;
      CAU_XOR_CAA    at 16#984# range 0 .. 31;
      CAU_XOR_CA0    at 16#988# range 0 .. 31;
      CAU_XOR_CA1    at 16#98C# range 0 .. 31;
      CAU_XOR_CA2    at 16#990# range 0 .. 31;
      CAU_XOR_CA3    at 16#994# range 0 .. 31;
      CAU_XOR_CA4    at 16#998# range 0 .. 31;
      CAU_XOR_CA5    at 16#99C# range 0 .. 31;
      CAU_XOR_CA6    at 16#9A0# range 0 .. 31;
      CAU_XOR_CA7    at 16#9A4# range 0 .. 31;
      CAU_XOR_CA8    at 16#9A8# range 0 .. 31;
      CAU_ROTL_CASR  at 16#9C0# range 0 .. 31;
      CAU_ROTL_CAA   at 16#9C4# range 0 .. 31;
      CAU_ROTL_CA0   at 16#9C8# range 0 .. 31;
      CAU_ROTL_CA1   at 16#9CC# range 0 .. 31;
      CAU_ROTL_CA2   at 16#9D0# range 0 .. 31;
      CAU_ROTL_CA3   at 16#9D4# range 0 .. 31;
      CAU_ROTL_CA4   at 16#9D8# range 0 .. 31;
      CAU_ROTL_CA5   at 16#9DC# range 0 .. 31;
      CAU_ROTL_CA6   at 16#9E0# range 0 .. 31;
      CAU_ROTL_CA7   at 16#9E4# range 0 .. 31;
      CAU_ROTL_CA8   at 16#9E8# range 0 .. 31;
      CAU_AESC_CASR  at 16#B00# range 0 .. 31;
      CAU_AESC_CAA   at 16#B04# range 0 .. 31;
      CAU_AESC_CA0   at 16#B08# range 0 .. 31;
      CAU_AESC_CA1   at 16#B0C# range 0 .. 31;
      CAU_AESC_CA2   at 16#B10# range 0 .. 31;
      CAU_AESC_CA3   at 16#B14# range 0 .. 31;
      CAU_AESC_CA4   at 16#B18# range 0 .. 31;
      CAU_AESC_CA5   at 16#B1C# range 0 .. 31;
      CAU_AESC_CA6   at 16#B20# range 0 .. 31;
      CAU_AESC_CA7   at 16#B24# range 0 .. 31;
      CAU_AESC_CA8   at 16#B28# range 0 .. 31;
      CAU_AESIC_CASR at 16#B40# range 0 .. 31;
      CAU_AESIC_CAA  at 16#B44# range 0 .. 31;
      CAU_AESIC_CA0  at 16#B48# range 0 .. 31;
      CAU_AESIC_CA1  at 16#B4C# range 0 .. 31;
      CAU_AESIC_CA2  at 16#B50# range 0 .. 31;
      CAU_AESIC_CA3  at 16#B54# range 0 .. 31;
      CAU_AESIC_CA4  at 16#B58# range 0 .. 31;
      CAU_AESIC_CA5  at 16#B5C# range 0 .. 31;
      CAU_AESIC_CA6  at 16#B60# range 0 .. 31;
      CAU_AESIC_CA7  at 16#B64# range 0 .. 31;
      CAU_AESIC_CA8  at 16#B68# range 0 .. 31;
   end record;

   --  Memory Mapped Cryptographic Acceleration Unit (MMCAU)
   CAU_Periph : aliased CAU_Peripheral
     with Import, Address => CAU_Base;

end NRF_SVD.CAU;
