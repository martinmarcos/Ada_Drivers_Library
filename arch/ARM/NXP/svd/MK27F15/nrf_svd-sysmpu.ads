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

--  Memory protection unit
package NRF_SVD.SYSMPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Valid
   type CESR_VLD_Field is
     (
      --  MPU is disabled. All accesses from all bus masters are allowed.
      CESR_VLD_Field_0,
      --  MPU is enabled
      CESR_VLD_Field_1)
     with Size => 1;
   for CESR_VLD_Field use
     (CESR_VLD_Field_0 => 0,
      CESR_VLD_Field_1 => 1);

   --  Number Of Region Descriptors
   type CESR_NRGD_Field is
     (
      --  8 region descriptors
      CESR_NRGD_Field_0000,
      --  12 region descriptors
      CESR_NRGD_Field_0001,
      --  16 region descriptors
      CESR_NRGD_Field_0010)
     with Size => 4;
   for CESR_NRGD_Field use
     (CESR_NRGD_Field_0000 => 0,
      CESR_NRGD_Field_0001 => 1,
      CESR_NRGD_Field_0010 => 2);

   subtype MPU_CESR_NSP_Field is HAL.UInt4;
   subtype MPU_CESR_HRL_Field is HAL.UInt4;

   --  Slave Port n Error
   type CESR_SPERR_Field is
     (
      --  No error has occurred for slave port n.
      CESR_SPERR_Field_0,
      --  An error has occurred for slave port n.
      CESR_SPERR_Field_1)
     with Size => 7;
   for CESR_SPERR_Field use
     (CESR_SPERR_Field_0 => 0,
      CESR_SPERR_Field_1 => 1);

   --  Control/Error Status Register
   type MPU_CESR_Register is record
      --  Valid
      VLD            : CESR_VLD_Field := NRF_SVD.SYSMPU.CESR_VLD_Field_1;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Read-only. Number Of Region Descriptors
      NRGD           : CESR_NRGD_Field := NRF_SVD.SYSMPU.CESR_NRGD_Field_0001;
      --  Read-only. Number Of Slave Ports
      NSP            : MPU_CESR_NSP_Field := 16#5#;
      --  Read-only. Hardware Revision Level
      HRL            : MPU_CESR_HRL_Field := 16#1#;
      --  unspecified
      Reserved_20_24 : HAL.UInt5 := 16#8#;
      --  Slave Port n Error
      SPERR          : CESR_SPERR_Field := NRF_SVD.SYSMPU.CESR_SPERR_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_CESR_Register use record
      VLD            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      NRGD           at 0 range 8 .. 11;
      NSP            at 0 range 12 .. 15;
      HRL            at 0 range 16 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      SPERR          at 0 range 25 .. 31;
   end record;

   --  Error Read/Write
   type EDR0_ERW_Field is
     (
      --  Read
      EDR0_ERW_Field_0,
      --  Write
      EDR0_ERW_Field_1)
     with Size => 1;
   for EDR0_ERW_Field use
     (EDR0_ERW_Field_0 => 0,
      EDR0_ERW_Field_1 => 1);

   --  Error Attributes
   type EDR0_EATTR_Field is
     (
      --  User mode, instruction access
      EDR0_EATTR_Field_000,
      --  User mode, data access
      EDR0_EATTR_Field_001,
      --  Supervisor mode, instruction access
      EDR0_EATTR_Field_010,
      --  Supervisor mode, data access
      EDR0_EATTR_Field_011)
     with Size => 3;
   for EDR0_EATTR_Field use
     (EDR0_EATTR_Field_000 => 0,
      EDR0_EATTR_Field_001 => 1,
      EDR0_EATTR_Field_010 => 2,
      EDR0_EATTR_Field_011 => 3);

   subtype EDR_EMN_Field is HAL.UInt4;
   subtype EDR_EPID_Field is HAL.UInt8;
   subtype EDR_EACD_Field is HAL.UInt16;

   --  Error Detail Register, slave port n
   type EDR_Register is record
      --  Read-only. Error Read/Write
      ERW   : EDR0_ERW_Field;
      --  Read-only. Error Attributes
      EATTR : EDR0_EATTR_Field;
      --  Read-only. Error Master Number
      EMN   : EDR_EMN_Field;
      --  Read-only. Error Process Identification
      EPID  : EDR_EPID_Field;
      --  Read-only. Error Access Control Detail
      EACD  : EDR_EACD_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EDR_Register use record
      ERW   at 0 range 0 .. 0;
      EATTR at 0 range 1 .. 3;
      EMN   at 0 range 4 .. 7;
      EPID  at 0 range 8 .. 15;
      EACD  at 0 range 16 .. 31;
   end record;

   subtype RGD_WORD_SRTADDR_Field is HAL.UInt27;

   --  Region Descriptor n, Word 0
   type RGD_WORD_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Start Address
      SRTADDR      : RGD_WORD_SRTADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      SRTADDR      at 0 range 5 .. 31;
   end record;

   subtype RGD_WORD_ENDADDR_Field is HAL.UInt27;

   --  Region Descriptor n, Word 1
   type RGD_WORD_Register_1 is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#1F#;
      --  End Address
      ENDADDR      : RGD_WORD_ENDADDR_Field := 16#7FFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register_1 use record
      Reserved_0_4 at 0 range 0 .. 4;
      ENDADDR      at 0 range 5 .. 31;
   end record;

   subtype RGD_WORD_M0UM_Field is HAL.UInt3;
   subtype RGD_WORD_M0SM_Field is HAL.UInt2;
   subtype RGD_WORD_M1UM_Field is HAL.UInt3;
   subtype RGD_WORD_M1SM_Field is HAL.UInt2;
   subtype RGD_WORD_M2UM_Field is HAL.UInt3;
   subtype RGD_WORD_M2SM_Field is HAL.UInt2;

   --  Bus Master 3 User Mode Access Control
   type RGD_WORD20_M3UM_Field is
     (
      --  An attempted access of that mode may be terminated with an access
      --  error (if not allowed by another descriptor) and the access not
      --  performed.
      RGD_WORD20_M3UM_Field_0,
      --  Allows the given access type to occur
      RGD_WORD20_M3UM_Field_1)
     with Size => 3;
   for RGD_WORD20_M3UM_Field use
     (RGD_WORD20_M3UM_Field_0 => 0,
      RGD_WORD20_M3UM_Field_1 => 1);

   --  Bus Master 3 Supervisor Mode Access Control
   type RGD_WORD20_M3SM_Field is
     (
      --  r/w/x; read, write and execute allowed
      RGD_WORD20_M3SM_Field_00,
      --  r/x; read and execute allowed, but no write
      RGD_WORD20_M3SM_Field_01,
      --  r/w; read and write allowed, but no execute
      RGD_WORD20_M3SM_Field_10,
      --  Same as User mode defined in M3UM
      RGD_WORD20_M3SM_Field_11)
     with Size => 2;
   for RGD_WORD20_M3SM_Field use
     (RGD_WORD20_M3SM_Field_00 => 0,
      RGD_WORD20_M3SM_Field_01 => 1,
      RGD_WORD20_M3SM_Field_10 => 2,
      RGD_WORD20_M3SM_Field_11 => 3);

   --  Bus Master 3 Process Identifier Enable
   type RGD_WORD20_M3PE_Field is
     (
      --  Do not include the process identifier in the evaluation
      RGD_WORD20_M3PE_Field_0,
      --  Include the process identifier and mask (RGDn_WORD3) in the region
      --  hit evaluation
      RGD_WORD20_M3PE_Field_1)
     with Size => 1;
   for RGD_WORD20_M3PE_Field use
     (RGD_WORD20_M3PE_Field_0 => 0,
      RGD_WORD20_M3PE_Field_1 => 1);

   --  Bus Master 4 Write Enable
   type RGD_WORD20_M4WE_Field is
     (
      --  Bus master 4 writes terminate with an access error and the write is
      --  not performed
      RGD_WORD20_M4WE_Field_0,
      --  Bus master 4 writes allowed
      RGD_WORD20_M4WE_Field_1)
     with Size => 1;
   for RGD_WORD20_M4WE_Field use
     (RGD_WORD20_M4WE_Field_0 => 0,
      RGD_WORD20_M4WE_Field_1 => 1);

   --  Bus Master 4 Read Enable
   type RGD_WORD20_M4RE_Field is
     (
      --  Bus master 4 reads terminate with an access error and the read is not
      --  performed
      RGD_WORD20_M4RE_Field_0,
      --  Bus master 4 reads allowed
      RGD_WORD20_M4RE_Field_1)
     with Size => 1;
   for RGD_WORD20_M4RE_Field use
     (RGD_WORD20_M4RE_Field_0 => 0,
      RGD_WORD20_M4RE_Field_1 => 1);

   --  Bus Master 5 Write Enable
   type RGD_WORD20_M5WE_Field is
     (
      --  Bus master 5 writes terminate with an access error and the write is
      --  not performed
      RGD_WORD20_M5WE_Field_0,
      --  Bus master 5 writes allowed
      RGD_WORD20_M5WE_Field_1)
     with Size => 1;
   for RGD_WORD20_M5WE_Field use
     (RGD_WORD20_M5WE_Field_0 => 0,
      RGD_WORD20_M5WE_Field_1 => 1);

   --  Bus Master 5 Read Enable
   type RGD_WORD20_M5RE_Field is
     (
      --  Bus master 5 reads terminate with an access error and the read is not
      --  performed
      RGD_WORD20_M5RE_Field_0,
      --  Bus master 5 reads allowed
      RGD_WORD20_M5RE_Field_1)
     with Size => 1;
   for RGD_WORD20_M5RE_Field use
     (RGD_WORD20_M5RE_Field_0 => 0,
      RGD_WORD20_M5RE_Field_1 => 1);

   --  Bus Master 6 Write Enable
   type RGD_WORD20_M6WE_Field is
     (
      --  Bus master 6 writes terminate with an access error and the write is
      --  not performed
      RGD_WORD20_M6WE_Field_0,
      --  Bus master 6 writes allowed
      RGD_WORD20_M6WE_Field_1)
     with Size => 1;
   for RGD_WORD20_M6WE_Field use
     (RGD_WORD20_M6WE_Field_0 => 0,
      RGD_WORD20_M6WE_Field_1 => 1);

   --  Bus Master 6 Read Enable
   type RGD_WORD20_M6RE_Field is
     (
      --  Bus master 6 reads terminate with an access error and the read is not
      --  performed
      RGD_WORD20_M6RE_Field_0,
      --  Bus master 6 reads allowed
      RGD_WORD20_M6RE_Field_1)
     with Size => 1;
   for RGD_WORD20_M6RE_Field use
     (RGD_WORD20_M6RE_Field_0 => 0,
      RGD_WORD20_M6RE_Field_1 => 1);

   --  Bus Master 7 Write Enable
   type RGD_WORD20_M7WE_Field is
     (
      --  Bus master 7 writes terminate with an access error and the write is
      --  not performed
      RGD_WORD20_M7WE_Field_0,
      --  Bus master 7 writes allowed
      RGD_WORD20_M7WE_Field_1)
     with Size => 1;
   for RGD_WORD20_M7WE_Field use
     (RGD_WORD20_M7WE_Field_0 => 0,
      RGD_WORD20_M7WE_Field_1 => 1);

   --  Bus Master 7 Read Enable
   type RGD_WORD20_M7RE_Field is
     (
      --  Bus master 7 reads terminate with an access error and the read is not
      --  performed
      RGD_WORD20_M7RE_Field_0,
      --  Bus master 7 reads allowed
      RGD_WORD20_M7RE_Field_1)
     with Size => 1;
   for RGD_WORD20_M7RE_Field use
     (RGD_WORD20_M7RE_Field_0 => 0,
      RGD_WORD20_M7RE_Field_1 => 1);

   --  Region Descriptor n, Word 2
   type RGD_WORD_Register_2 is record
      --  Bus Master 0 User Mode Access Control
      M0UM : RGD_WORD_M0UM_Field := 16#7#;
      --  Bus Master 0 Supervisor Mode Access Control
      M0SM : RGD_WORD_M0SM_Field := 16#3#;
      --  Bus Master 0 Process Identifier enable
      M0PE : Boolean := False;
      --  Bus Master 1 User Mode Access Control
      M1UM : RGD_WORD_M1UM_Field := 16#7#;
      --  Bus Master 1 Supervisor Mode Access Control
      M1SM : RGD_WORD_M1SM_Field := 16#3#;
      --  Bus Master 1 Process Identifier enable
      M1PE : Boolean := False;
      --  Bus Master 2 User Mode Access control
      M2UM : RGD_WORD_M2UM_Field := 16#7#;
      --  Bus Master 2 Supervisor Mode Access Control
      M2SM : RGD_WORD_M2SM_Field := 16#3#;
      --  Bus Master 2 Process Identifier Enable
      M2PE : Boolean := False;
      --  Bus Master 3 User Mode Access Control
      M3UM : RGD_WORD20_M3UM_Field := NRF_SVD.SYSMPU.RGD_WORD20_M3UM_Field_0;
      --  Bus Master 3 Supervisor Mode Access Control
      M3SM : RGD_WORD20_M3SM_Field := NRF_SVD.SYSMPU.RGD_WORD20_M3SM_Field_11;
      --  Bus Master 3 Process Identifier Enable
      M3PE : RGD_WORD20_M3PE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M3PE_Field_0;
      --  Bus Master 4 Write Enable
      M4WE : RGD_WORD20_M4WE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M4WE_Field_0;
      --  Bus Master 4 Read Enable
      M4RE : RGD_WORD20_M4RE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M4RE_Field_0;
      --  Bus Master 5 Write Enable
      M5WE : RGD_WORD20_M5WE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M5WE_Field_0;
      --  Bus Master 5 Read Enable
      M5RE : RGD_WORD20_M5RE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M5RE_Field_0;
      --  Bus Master 6 Write Enable
      M6WE : RGD_WORD20_M6WE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M6WE_Field_0;
      --  Bus Master 6 Read Enable
      M6RE : RGD_WORD20_M6RE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M6RE_Field_0;
      --  Bus Master 7 Write Enable
      M7WE : RGD_WORD20_M7WE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M7WE_Field_0;
      --  Bus Master 7 Read Enable
      M7RE : RGD_WORD20_M7RE_Field := NRF_SVD.SYSMPU.RGD_WORD20_M7RE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register_2 use record
      M0UM at 0 range 0 .. 2;
      M0SM at 0 range 3 .. 4;
      M0PE at 0 range 5 .. 5;
      M1UM at 0 range 6 .. 8;
      M1SM at 0 range 9 .. 10;
      M1PE at 0 range 11 .. 11;
      M2UM at 0 range 12 .. 14;
      M2SM at 0 range 15 .. 16;
      M2PE at 0 range 17 .. 17;
      M3UM at 0 range 18 .. 20;
      M3SM at 0 range 21 .. 22;
      M3PE at 0 range 23 .. 23;
      M4WE at 0 range 24 .. 24;
      M4RE at 0 range 25 .. 25;
      M5WE at 0 range 26 .. 26;
      M5RE at 0 range 27 .. 27;
      M6WE at 0 range 28 .. 28;
      M6RE at 0 range 29 .. 29;
      M7WE at 0 range 30 .. 30;
      M7RE at 0 range 31 .. 31;
   end record;

   --  Valid
   type RGD_WORD30_VLD_Field is
     (
      --  Region descriptor is invalid
      RGD_WORD30_VLD_Field_0,
      --  Region descriptor is valid
      RGD_WORD30_VLD_Field_1)
     with Size => 1;
   for RGD_WORD30_VLD_Field use
     (RGD_WORD30_VLD_Field_0 => 0,
      RGD_WORD30_VLD_Field_1 => 1);

   subtype RGD_WORD_PIDMASK_Field is HAL.UInt8;
   subtype RGD_WORD_PID_Field is HAL.UInt8;

   --  Region Descriptor n, Word 3
   type RGD_WORD_Register_3 is record
      --  Valid
      VLD           : RGD_WORD30_VLD_Field :=
                       NRF_SVD.SYSMPU.RGD_WORD30_VLD_Field_1;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
      --  Process Identifier Mask
      PIDMASK       : RGD_WORD_PIDMASK_Field := 16#0#;
      --  Process Identifier
      PID           : RGD_WORD_PID_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register_3 use record
      VLD           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
      PIDMASK       at 0 range 16 .. 23;
      PID           at 0 range 24 .. 31;
   end record;

   subtype MPU_RGDAAC_M0UM_Field is HAL.UInt3;
   subtype MPU_RGDAAC_M0SM_Field is HAL.UInt2;
   subtype MPU_RGDAAC_M1UM_Field is HAL.UInt3;
   subtype MPU_RGDAAC_M1SM_Field is HAL.UInt2;
   subtype MPU_RGDAAC_M2UM_Field is HAL.UInt3;
   subtype MPU_RGDAAC_M2SM_Field is HAL.UInt2;

   --  Bus Master 3 User Mode Access Control
   type RGDAAC_M3UM_Field is
     (
      --  An attempted access of that mode may be terminated with an access
      --  error (if not allowed by another descriptor) and the access not
      --  performed.
      RGDAAC_M3UM_Field_0,
      --  Allows the given access type to occur
      RGDAAC_M3UM_Field_1)
     with Size => 3;
   for RGDAAC_M3UM_Field use
     (RGDAAC_M3UM_Field_0 => 0,
      RGDAAC_M3UM_Field_1 => 1);

   --  Bus Master 3 Supervisor Mode Access Control
   type RGDAAC_M3SM_Field is
     (
      --  r/w/x; read, write and execute allowed
      RGDAAC_M3SM_Field_00,
      --  r/x; read and execute allowed, but no write
      RGDAAC_M3SM_Field_01,
      --  r/w; read and write allowed, but no execute
      RGDAAC_M3SM_Field_10,
      --  Same as User mode defined in M3UM
      RGDAAC_M3SM_Field_11)
     with Size => 2;
   for RGDAAC_M3SM_Field use
     (RGDAAC_M3SM_Field_00 => 0,
      RGDAAC_M3SM_Field_01 => 1,
      RGDAAC_M3SM_Field_10 => 2,
      RGDAAC_M3SM_Field_11 => 3);

   --  Bus Master 3 Process Identifier Enable
   type RGDAAC_M3PE_Field is
     (
      --  Do not include the process identifier in the evaluation
      RGDAAC_M3PE_Field_0,
      --  Include the process identifier and mask (RGDn.RGDAAC) in the region
      --  hit evaluation
      RGDAAC_M3PE_Field_1)
     with Size => 1;
   for RGDAAC_M3PE_Field use
     (RGDAAC_M3PE_Field_0 => 0,
      RGDAAC_M3PE_Field_1 => 1);

   --  Bus Master 4 Write Enable
   type RGDAAC_M4WE_Field is
     (
      --  Bus master 4 writes terminate with an access error and the write is
      --  not performed
      RGDAAC_M4WE_Field_0,
      --  Bus master 4 writes allowed
      RGDAAC_M4WE_Field_1)
     with Size => 1;
   for RGDAAC_M4WE_Field use
     (RGDAAC_M4WE_Field_0 => 0,
      RGDAAC_M4WE_Field_1 => 1);

   --  Bus Master 4 Read Enable
   type RGDAAC_M4RE_Field is
     (
      --  Bus master 4 reads terminate with an access error and the read is not
      --  performed
      RGDAAC_M4RE_Field_0,
      --  Bus master 4 reads allowed
      RGDAAC_M4RE_Field_1)
     with Size => 1;
   for RGDAAC_M4RE_Field use
     (RGDAAC_M4RE_Field_0 => 0,
      RGDAAC_M4RE_Field_1 => 1);

   --  Bus Master 5 Write Enable
   type RGDAAC_M5WE_Field is
     (
      --  Bus master 5 writes terminate with an access error and the write is
      --  not performed
      RGDAAC_M5WE_Field_0,
      --  Bus master 5 writes allowed
      RGDAAC_M5WE_Field_1)
     with Size => 1;
   for RGDAAC_M5WE_Field use
     (RGDAAC_M5WE_Field_0 => 0,
      RGDAAC_M5WE_Field_1 => 1);

   --  Bus Master 5 Read Enable
   type RGDAAC_M5RE_Field is
     (
      --  Bus master 5 reads terminate with an access error and the read is not
      --  performed
      RGDAAC_M5RE_Field_0,
      --  Bus master 5 reads allowed
      RGDAAC_M5RE_Field_1)
     with Size => 1;
   for RGDAAC_M5RE_Field use
     (RGDAAC_M5RE_Field_0 => 0,
      RGDAAC_M5RE_Field_1 => 1);

   --  Bus Master 6 Write Enable
   type RGDAAC_M6WE_Field is
     (
      --  Bus master 6 writes terminate with an access error and the write is
      --  not performed
      RGDAAC_M6WE_Field_0,
      --  Bus master 6 writes allowed
      RGDAAC_M6WE_Field_1)
     with Size => 1;
   for RGDAAC_M6WE_Field use
     (RGDAAC_M6WE_Field_0 => 0,
      RGDAAC_M6WE_Field_1 => 1);

   --  Bus Master 6 Read Enable
   type RGDAAC_M6RE_Field is
     (
      --  Bus master 6 reads terminate with an access error and the read is not
      --  performed
      RGDAAC_M6RE_Field_0,
      --  Bus master 6 reads allowed
      RGDAAC_M6RE_Field_1)
     with Size => 1;
   for RGDAAC_M6RE_Field use
     (RGDAAC_M6RE_Field_0 => 0,
      RGDAAC_M6RE_Field_1 => 1);

   --  Bus Master 7 Write Enable
   type RGDAAC_M7WE_Field is
     (
      --  Bus master 7 writes terminate with an access error and the write is
      --  not performed
      RGDAAC_M7WE_Field_0,
      --  Bus master 7 writes allowed
      RGDAAC_M7WE_Field_1)
     with Size => 1;
   for RGDAAC_M7WE_Field use
     (RGDAAC_M7WE_Field_0 => 0,
      RGDAAC_M7WE_Field_1 => 1);

   --  Bus Master 7 Read Enable
   type RGDAAC_M7RE_Field is
     (
      --  Bus master 7 reads terminate with an access error and the read is not
      --  performed
      RGDAAC_M7RE_Field_0,
      --  Bus master 7 reads allowed
      RGDAAC_M7RE_Field_1)
     with Size => 1;
   for RGDAAC_M7RE_Field use
     (RGDAAC_M7RE_Field_0 => 0,
      RGDAAC_M7RE_Field_1 => 1);

   --  Region Descriptor Alternate Access Control n
   type MPU_RGDAAC_Register is record
      --  Bus Master 0 User Mode Access Control
      M0UM : MPU_RGDAAC_M0UM_Field := 16#7#;
      --  Bus Master 0 Supervisor Mode Access Control
      M0SM : MPU_RGDAAC_M0SM_Field := 16#3#;
      --  Bus Master 0 Process Identifier Enable
      M0PE : Boolean := False;
      --  Bus Master 1 User Mode Access Control
      M1UM : MPU_RGDAAC_M1UM_Field := 16#7#;
      --  Bus Master 1 Supervisor Mode Access Control
      M1SM : MPU_RGDAAC_M1SM_Field := 16#3#;
      --  Bus Master 1 Process Identifier Enable
      M1PE : Boolean := False;
      --  Bus Master 2 User Mode Access Control
      M2UM : MPU_RGDAAC_M2UM_Field := 16#7#;
      --  Bus Master 2 Supervisor Mode Access Control
      M2SM : MPU_RGDAAC_M2SM_Field := 16#3#;
      --  Bus Master 2 Process Identifier Enable
      M2PE : Boolean := False;
      --  Bus Master 3 User Mode Access Control
      M3UM : RGDAAC_M3UM_Field := NRF_SVD.SYSMPU.RGDAAC_M3UM_Field_0;
      --  Bus Master 3 Supervisor Mode Access Control
      M3SM : RGDAAC_M3SM_Field := NRF_SVD.SYSMPU.RGDAAC_M3SM_Field_11;
      --  Bus Master 3 Process Identifier Enable
      M3PE : RGDAAC_M3PE_Field := NRF_SVD.SYSMPU.RGDAAC_M3PE_Field_0;
      --  Bus Master 4 Write Enable
      M4WE : RGDAAC_M4WE_Field := NRF_SVD.SYSMPU.RGDAAC_M4WE_Field_0;
      --  Bus Master 4 Read Enable
      M4RE : RGDAAC_M4RE_Field := NRF_SVD.SYSMPU.RGDAAC_M4RE_Field_0;
      --  Bus Master 5 Write Enable
      M5WE : RGDAAC_M5WE_Field := NRF_SVD.SYSMPU.RGDAAC_M5WE_Field_0;
      --  Bus Master 5 Read Enable
      M5RE : RGDAAC_M5RE_Field := NRF_SVD.SYSMPU.RGDAAC_M5RE_Field_0;
      --  Bus Master 6 Write Enable
      M6WE : RGDAAC_M6WE_Field := NRF_SVD.SYSMPU.RGDAAC_M6WE_Field_0;
      --  Bus Master 6 Read Enable
      M6RE : RGDAAC_M6RE_Field := NRF_SVD.SYSMPU.RGDAAC_M6RE_Field_0;
      --  Bus Master 7 Write Enable
      M7WE : RGDAAC_M7WE_Field := NRF_SVD.SYSMPU.RGDAAC_M7WE_Field_0;
      --  Bus Master 7 Read Enable
      M7RE : RGDAAC_M7RE_Field := NRF_SVD.SYSMPU.RGDAAC_M7RE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RGDAAC_Register use record
      M0UM at 0 range 0 .. 2;
      M0SM at 0 range 3 .. 4;
      M0PE at 0 range 5 .. 5;
      M1UM at 0 range 6 .. 8;
      M1SM at 0 range 9 .. 10;
      M1PE at 0 range 11 .. 11;
      M2UM at 0 range 12 .. 14;
      M2SM at 0 range 15 .. 16;
      M2PE at 0 range 17 .. 17;
      M3UM at 0 range 18 .. 20;
      M3SM at 0 range 21 .. 22;
      M3PE at 0 range 23 .. 23;
      M4WE at 0 range 24 .. 24;
      M4RE at 0 range 25 .. 25;
      M5WE at 0 range 26 .. 26;
      M5RE at 0 range 27 .. 27;
      M6WE at 0 range 28 .. 28;
      M6RE at 0 range 29 .. 29;
      M7WE at 0 range 30 .. 30;
      M7RE at 0 range 31 .. 31;
   end record;

   --  Region Descriptor Alternate Access Control n
   type MPU_RGDAAC_Registers is array (0 .. 11) of MPU_RGDAAC_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory protection unit
   type SYSMPU_Peripheral is record
      --  Control/Error Status Register
      CESR        : aliased MPU_CESR_Register;
      --  Error Address Register, slave port n
      EAR0        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR0        : aliased EDR_Register;
      --  Error Address Register, slave port n
      EAR1        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR1        : aliased EDR_Register;
      --  Error Address Register, slave port n
      EAR2        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR2        : aliased EDR_Register;
      --  Error Address Register, slave port n
      EAR3        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR3        : aliased EDR_Register;
      --  Error Address Register, slave port n
      EAR4        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR4        : aliased EDR_Register;
      --  Error Address Register, slave port n
      EAR5        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR5        : aliased EDR_Register;
      --  Error Address Register, slave port n
      EAR6        : aliased HAL.UInt32;
      --  Error Detail Register, slave port n
      EDR6        : aliased EDR_Register;
      --  Region Descriptor n, Word 0
      RGD_WORD00  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD10  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD20  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD30  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD01  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD11  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD21  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD31  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD02  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD12  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD22  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD32  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD03  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD13  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD23  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD33  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD04  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD14  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD24  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD34  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD05  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD15  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD25  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD35  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD06  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD16  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD26  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD36  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD07  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD17  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD27  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD37  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD08  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD18  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD28  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD38  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD09  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD19  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD29  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD39  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD010 : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD110 : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD210 : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD310 : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD011 : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD111 : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD211 : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD311 : aliased RGD_WORD_Register_3;
      --  Region Descriptor Alternate Access Control n
      RGDAAC      : aliased MPU_RGDAAC_Registers;
   end record
     with Volatile;

   for SYSMPU_Peripheral use record
      CESR        at 16#0# range 0 .. 31;
      EAR0        at 16#10# range 0 .. 31;
      EDR0        at 16#14# range 0 .. 31;
      EAR1        at 16#18# range 0 .. 31;
      EDR1        at 16#1C# range 0 .. 31;
      EAR2        at 16#20# range 0 .. 31;
      EDR2        at 16#24# range 0 .. 31;
      EAR3        at 16#28# range 0 .. 31;
      EDR3        at 16#2C# range 0 .. 31;
      EAR4        at 16#30# range 0 .. 31;
      EDR4        at 16#34# range 0 .. 31;
      EAR5        at 16#38# range 0 .. 31;
      EDR5        at 16#3C# range 0 .. 31;
      EAR6        at 16#40# range 0 .. 31;
      EDR6        at 16#44# range 0 .. 31;
      RGD_WORD00  at 16#400# range 0 .. 31;
      RGD_WORD10  at 16#404# range 0 .. 31;
      RGD_WORD20  at 16#408# range 0 .. 31;
      RGD_WORD30  at 16#40C# range 0 .. 31;
      RGD_WORD01  at 16#410# range 0 .. 31;
      RGD_WORD11  at 16#414# range 0 .. 31;
      RGD_WORD21  at 16#418# range 0 .. 31;
      RGD_WORD31  at 16#41C# range 0 .. 31;
      RGD_WORD02  at 16#420# range 0 .. 31;
      RGD_WORD12  at 16#424# range 0 .. 31;
      RGD_WORD22  at 16#428# range 0 .. 31;
      RGD_WORD32  at 16#42C# range 0 .. 31;
      RGD_WORD03  at 16#430# range 0 .. 31;
      RGD_WORD13  at 16#434# range 0 .. 31;
      RGD_WORD23  at 16#438# range 0 .. 31;
      RGD_WORD33  at 16#43C# range 0 .. 31;
      RGD_WORD04  at 16#440# range 0 .. 31;
      RGD_WORD14  at 16#444# range 0 .. 31;
      RGD_WORD24  at 16#448# range 0 .. 31;
      RGD_WORD34  at 16#44C# range 0 .. 31;
      RGD_WORD05  at 16#450# range 0 .. 31;
      RGD_WORD15  at 16#454# range 0 .. 31;
      RGD_WORD25  at 16#458# range 0 .. 31;
      RGD_WORD35  at 16#45C# range 0 .. 31;
      RGD_WORD06  at 16#460# range 0 .. 31;
      RGD_WORD16  at 16#464# range 0 .. 31;
      RGD_WORD26  at 16#468# range 0 .. 31;
      RGD_WORD36  at 16#46C# range 0 .. 31;
      RGD_WORD07  at 16#470# range 0 .. 31;
      RGD_WORD17  at 16#474# range 0 .. 31;
      RGD_WORD27  at 16#478# range 0 .. 31;
      RGD_WORD37  at 16#47C# range 0 .. 31;
      RGD_WORD08  at 16#480# range 0 .. 31;
      RGD_WORD18  at 16#484# range 0 .. 31;
      RGD_WORD28  at 16#488# range 0 .. 31;
      RGD_WORD38  at 16#48C# range 0 .. 31;
      RGD_WORD09  at 16#490# range 0 .. 31;
      RGD_WORD19  at 16#494# range 0 .. 31;
      RGD_WORD29  at 16#498# range 0 .. 31;
      RGD_WORD39  at 16#49C# range 0 .. 31;
      RGD_WORD010 at 16#4A0# range 0 .. 31;
      RGD_WORD110 at 16#4A4# range 0 .. 31;
      RGD_WORD210 at 16#4A8# range 0 .. 31;
      RGD_WORD310 at 16#4AC# range 0 .. 31;
      RGD_WORD011 at 16#4B0# range 0 .. 31;
      RGD_WORD111 at 16#4B4# range 0 .. 31;
      RGD_WORD211 at 16#4B8# range 0 .. 31;
      RGD_WORD311 at 16#4BC# range 0 .. 31;
      RGDAAC      at 16#800# range 0 .. 383;
   end record;

   --  Memory protection unit
   SYSMPU_Periph : aliased SYSMPU_Peripheral
     with Import, Address => SYSMPU_Base;

end NRF_SVD.SYSMPU;
