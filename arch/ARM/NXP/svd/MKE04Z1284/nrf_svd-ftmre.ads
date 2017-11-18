--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKE04Z1284.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Flash Memory
package NRF_SVD.FTMRE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FTMRE_FCCOBIX_CCOBIX_Field is HAL.UInt3;

   --  Flash CCOB Index Register
   type FTMRE_FCCOBIX_Register is record
      --  Common Command Register Index
      CCOBIX       : FTMRE_FCCOBIX_CCOBIX_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRE_FCCOBIX_Register use record
      CCOBIX       at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Flash Security Bits
   type FSEC_SEC_Field is
     (
      --  Secured
      FSEC_SEC_Field_00,
      --  Secured
      FSEC_SEC_Field_01,
      --  Unsecured
      FSEC_SEC_Field_10,
      --  Secured
      FSEC_SEC_Field_11)
     with Size => 2;
   for FSEC_SEC_Field use
     (FSEC_SEC_Field_00 => 0,
      FSEC_SEC_Field_01 => 1,
      FSEC_SEC_Field_10 => 2,
      FSEC_SEC_Field_11 => 3);

   --  Backdoor Key Security Enable Bits
   type FSEC_KEYEN_Field is
     (
      --  Disabled
      FSEC_KEYEN_Field_00,
      --  Disabled
      FSEC_KEYEN_Field_01,
      --  Enabled
      FSEC_KEYEN_Field_10,
      --  Disabled
      FSEC_KEYEN_Field_11)
     with Size => 2;
   for FSEC_KEYEN_Field use
     (FSEC_KEYEN_Field_00 => 0,
      FSEC_KEYEN_Field_01 => 1,
      FSEC_KEYEN_Field_10 => 2,
      FSEC_KEYEN_Field_11 => 3);

   --  Flash Security Register
   type FTMRE_FSEC_Register is record
      --  Read-only. Flash Security Bits
      SEC          : FSEC_SEC_Field;
      --  unspecified
      Reserved_2_5 : HAL.UInt4;
      --  Read-only. Backdoor Key Security Enable Bits
      KEYEN        : FSEC_KEYEN_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRE_FSEC_Register use record
      SEC          at 0 range 0 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      KEYEN        at 0 range 6 .. 7;
   end record;

   subtype FTMRE_FCLKDIV_FDIV_Field is HAL.UInt6;

   --  Clock Divider Locked
   type FCLKDIV_FDIVLCK_Field is
     (
      --  FDIV field is open for writing.
      FCLKDIV_FDIVLCK_Field_0,
      --  FDIV value is locked and cannot be changed. After the lock bit is set
      --  high, only reset can clear this bit and restore writability to the
      --  FDIV field in user mode.
      FCLKDIV_FDIVLCK_Field_1)
     with Size => 1;
   for FCLKDIV_FDIVLCK_Field use
     (FCLKDIV_FDIVLCK_Field_0 => 0,
      FCLKDIV_FDIVLCK_Field_1 => 1);

   --  Clock Divider Loaded
   type FCLKDIV_FDIVLD_Field is
     (
      --  FCLKDIV register has not been written since the last reset.
      FCLKDIV_FDIVLD_Field_0,
      --  FCLKDIV register has been written since the last reset.
      FCLKDIV_FDIVLD_Field_1)
     with Size => 1;
   for FCLKDIV_FDIVLD_Field use
     (FCLKDIV_FDIVLD_Field_0 => 0,
      FCLKDIV_FDIVLD_Field_1 => 1);

   --  Flash Clock Divider Register
   type FTMRE_FCLKDIV_Register is record
      --  Clock Divider Bits
      FDIV    : FTMRE_FCLKDIV_FDIV_Field := 16#0#;
      --  Clock Divider Locked
      FDIVLCK : FCLKDIV_FDIVLCK_Field :=
                 NRF_SVD.FTMRE.FCLKDIV_FDIVLCK_Field_0;
      --  Read-only. Clock Divider Loaded
      FDIVLD  : FCLKDIV_FDIVLD_Field := NRF_SVD.FTMRE.FCLKDIV_FDIVLD_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRE_FCLKDIV_Register use record
      FDIV    at 0 range 0 .. 5;
      FDIVLCK at 0 range 6 .. 6;
      FDIVLD  at 0 range 7 .. 7;
   end record;

   subtype FTMRE_FSTAT_MGSTAT_Field is HAL.UInt2;

   --  Memory Controller Busy Flag
   type FSTAT_MGBUSY_Field is
     (
      --  Memory controller is idle.
      FSTAT_MGBUSY_Field_0,
      --  Memory controller is busy executing a flash command (CCIF = 0).
      FSTAT_MGBUSY_Field_1)
     with Size => 1;
   for FSTAT_MGBUSY_Field use
     (FSTAT_MGBUSY_Field_0 => 0,
      FSTAT_MGBUSY_Field_1 => 1);

   --  Flash Protection Violation Flag
   type FSTAT_FPVIOL_Field is
     (
      --  No protection violation is detected.
      FSTAT_FPVIOL_Field_0,
      --  Protection violation is detected.
      FSTAT_FPVIOL_Field_1)
     with Size => 1;
   for FSTAT_FPVIOL_Field use
     (FSTAT_FPVIOL_Field_0 => 0,
      FSTAT_FPVIOL_Field_1 => 1);

   --  Flash Access Error Flag
   type FSTAT_ACCERR_Field is
     (
      --  No access error is detected.
      FSTAT_ACCERR_Field_0,
      --  Access error is detected.
      FSTAT_ACCERR_Field_1)
     with Size => 1;
   for FSTAT_ACCERR_Field use
     (FSTAT_ACCERR_Field_0 => 0,
      FSTAT_ACCERR_Field_1 => 1);

   --  Command Complete Interrupt Flag
   type FSTAT_CCIF_Field is
     (
      --  Flash command is in progress.
      FSTAT_CCIF_Field_0,
      --  Flash command has completed.
      FSTAT_CCIF_Field_1)
     with Size => 1;
   for FSTAT_CCIF_Field use
     (FSTAT_CCIF_Field_0 => 0,
      FSTAT_CCIF_Field_1 => 1);

   --  Flash Status Register
   type FTMRE_FSTAT_Register is record
      --  Read-only. Memory Controller Command Completion Status Flag
      MGSTAT       : FTMRE_FSTAT_MGSTAT_Field := 16#0#;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Read-only. Memory Controller Busy Flag
      MGBUSY       : FSTAT_MGBUSY_Field := NRF_SVD.FTMRE.FSTAT_MGBUSY_Field_0;
      --  Flash Protection Violation Flag
      FPVIOL       : FSTAT_FPVIOL_Field := NRF_SVD.FTMRE.FSTAT_FPVIOL_Field_0;
      --  Flash Access Error Flag
      ACCERR       : FSTAT_ACCERR_Field := NRF_SVD.FTMRE.FSTAT_ACCERR_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Command Complete Interrupt Flag
      CCIF         : FSTAT_CCIF_Field := NRF_SVD.FTMRE.FSTAT_CCIF_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRE_FSTAT_Register use record
      MGSTAT       at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      MGBUSY       at 0 range 3 .. 3;
      FPVIOL       at 0 range 4 .. 4;
      ACCERR       at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      CCIF         at 0 range 7 .. 7;
   end record;

   --  Debugger Mass Erase Request
   type FCNFG_ERSAREQ_Field is
     (
      --  No request or request complete
      FCNFG_ERSAREQ_Field_0,
      --  Request to run the Erase All Blocks command verify the erased state
      --  program the security byte in the Flash Configuration Field to the
      --  unsecure state release MCU security by setting FSEC[SEC] to the
      --  unsecure state
      FCNFG_ERSAREQ_Field_1)
     with Size => 1;
   for FCNFG_ERSAREQ_Field use
     (FCNFG_ERSAREQ_Field_0 => 0,
      FCNFG_ERSAREQ_Field_1 => 1);

   --  Command Complete Interrupt Enable
   type FCNFG_CCIE_Field is
     (
      --  Command complete interrupt is disabled.
      FCNFG_CCIE_Field_0,
      --  An interrupt will be requested whenever the CCIF flag in the FSTAT
      --  register is set.
      FCNFG_CCIE_Field_1)
     with Size => 1;
   for FCNFG_CCIE_Field use
     (FCNFG_CCIE_Field_0 => 0,
      FCNFG_CCIE_Field_1 => 1);

   --  Flash Configuration Register
   type FTMRE_FCNFG_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Read-only. Debugger Mass Erase Request
      ERSAREQ      : FCNFG_ERSAREQ_Field :=
                      NRF_SVD.FTMRE.FCNFG_ERSAREQ_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Command Complete Interrupt Enable
      CCIE         : FCNFG_CCIE_Field := NRF_SVD.FTMRE.FCNFG_CCIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRE_FCNFG_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      ERSAREQ      at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      CCIE         at 0 range 7 .. 7;
   end record;

   subtype FTMRE_FPROT_FPLS_Field is HAL.UInt2;

   --  Flash Protection Lower Address Range Disable
   type FPROT_FPLDIS_Field is
     (
      --  Protection/Unprotection enabled.
      FPROT_FPLDIS_Field_0,
      --  Protection/Unprotection disabled.
      FPROT_FPLDIS_Field_1)
     with Size => 1;
   for FPROT_FPLDIS_Field use
     (FPROT_FPLDIS_Field_0 => 0,
      FPROT_FPLDIS_Field_1 => 1);

   subtype FTMRE_FPROT_FPHS_Field is HAL.UInt2;

   --  Flash Protection Higher Address Range Disable
   type FPROT_FPHDIS_Field is
     (
      --  Protection/Unprotection enabled.
      FPROT_FPHDIS_Field_0,
      --  Protection/Unprotection disabled.
      FPROT_FPHDIS_Field_1)
     with Size => 1;
   for FPROT_FPHDIS_Field use
     (FPROT_FPHDIS_Field_0 => 0,
      FPROT_FPHDIS_Field_1 => 1);

   --  Flash Protection Operation Enable
   type FPROT_FPOPEN_Field is
     (
      --  When FPOPEN is clear, the FPHDIS and FPLDIS fields define unprotected
      --  address ranges as specified by the corresponding FPHS and FPLS
      --  fields.
      FPROT_FPOPEN_Field_0,
      --  When FPOPEN is set, the FPHDIS and FPLDIS fields enable protection
      --  for the address range specified by the corresponding FPHS and FPLS
      --  fields.
      FPROT_FPOPEN_Field_1)
     with Size => 1;
   for FPROT_FPOPEN_Field use
     (FPROT_FPOPEN_Field_0 => 0,
      FPROT_FPOPEN_Field_1 => 1);

   --  Flash Protection Register
   type FTMRE_FPROT_Register is record
      --  Flash Protection Lower Address Size
      FPLS   : FTMRE_FPROT_FPLS_Field := 16#0#;
      --  Flash Protection Lower Address Range Disable
      FPLDIS : FPROT_FPLDIS_Field := NRF_SVD.FTMRE.FPROT_FPLDIS_Field_0;
      --  Flash Protection Higher Address Size
      FPHS   : FTMRE_FPROT_FPHS_Field := 16#0#;
      --  Flash Protection Higher Address Range Disable
      FPHDIS : FPROT_FPHDIS_Field := NRF_SVD.FTMRE.FPROT_FPHDIS_Field_0;
      --  Read-only. Reserved Nonvolatile Bit
      RNV6   : Boolean := False;
      --  Flash Protection Operation Enable
      FPOPEN : FPROT_FPOPEN_Field := NRF_SVD.FTMRE.FPROT_FPOPEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRE_FPROT_Register use record
      FPLS   at 0 range 0 .. 1;
      FPLDIS at 0 range 2 .. 2;
      FPHS   at 0 range 3 .. 4;
      FPHDIS at 0 range 5 .. 5;
      RNV6   at 0 range 6 .. 6;
      FPOPEN at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Memory
   type FTMRE_Peripheral is record
      --  Flash CCOB Index Register
      FCCOBIX : aliased FTMRE_FCCOBIX_Register;
      --  Flash Security Register
      FSEC    : aliased FTMRE_FSEC_Register;
      --  Flash Clock Divider Register
      FCLKDIV : aliased FTMRE_FCLKDIV_Register;
      --  Flash Status Register
      FSTAT   : aliased FTMRE_FSTAT_Register;
      --  Flash Configuration Register
      FCNFG   : aliased FTMRE_FCNFG_Register;
      --  Flash Common Command Object Register: Low
      FCCOBLO : aliased HAL.UInt8;
      --  Flash Common Command Object Register:High
      FCCOBHI : aliased HAL.UInt8;
      --  Flash Protection Register
      FPROT   : aliased FTMRE_FPROT_Register;
      --  Flash Option Register
      FOPT    : aliased HAL.UInt8;
   end record
     with Volatile;

   for FTMRE_Peripheral use record
      FCCOBIX at 16#1# range 0 .. 7;
      FSEC    at 16#2# range 0 .. 7;
      FCLKDIV at 16#3# range 0 .. 7;
      FSTAT   at 16#5# range 0 .. 7;
      FCNFG   at 16#7# range 0 .. 7;
      FCCOBLO at 16#8# range 0 .. 7;
      FCCOBHI at 16#9# range 0 .. 7;
      FPROT   at 16#B# range 0 .. 7;
      FOPT    at 16#F# range 0 .. 7;
   end record;

   --  Flash Memory
   FTMRE_Periph : aliased FTMRE_Peripheral
     with Import, Address => FTMRE_Base;

end NRF_SVD.FTMRE;
