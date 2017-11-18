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

--  This spec has been automatically generated from MKE02Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Flash Memory
package NRF_SVD.FTMRH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FTMRH_FCLKDIV_FDIV_Field is HAL.UInt6;

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
   type FTMRH_FCLKDIV_Register is record
      --  Clock Divider Bits
      FDIV    : FTMRH_FCLKDIV_FDIV_Field := 16#0#;
      --  Clock Divider Locked
      FDIVLCK : FCLKDIV_FDIVLCK_Field :=
                 NRF_SVD.FTMRH.FCLKDIV_FDIVLCK_Field_0;
      --  Read-only. Clock Divider Loaded
      FDIVLD  : FCLKDIV_FDIVLD_Field := NRF_SVD.FTMRH.FCLKDIV_FDIVLD_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FCLKDIV_Register use record
      FDIV    at 0 range 0 .. 5;
      FDIVLCK at 0 range 6 .. 6;
      FDIVLD  at 0 range 7 .. 7;
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
   type FTMRH_FSEC_Register is record
      --  Read-only. Flash Security Bits
      SEC          : FSEC_SEC_Field;
      --  unspecified
      Reserved_2_5 : HAL.UInt4;
      --  Read-only. Backdoor Key Security Enable Bits
      KEYEN        : FSEC_KEYEN_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FSEC_Register use record
      SEC          at 0 range 0 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      KEYEN        at 0 range 6 .. 7;
   end record;

   subtype FTMRH_FCCOBIX_CCOBIX_Field is HAL.UInt3;

   --  Flash CCOB Index Register
   type FTMRH_FCCOBIX_Register is record
      --  Common Command Register Index
      CCOBIX       : FTMRH_FCCOBIX_CCOBIX_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FCCOBIX_Register use record
      CCOBIX       at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Force Single Bit Fault Detect
   type FCNFG_FSFD_Field is
     (
      --  Flash array read operations will set the SFDIF flag in the FERSTAT
      --  register only if a single bit fault is detected.
      FCNFG_FSFD_Field_0,
      --  Flash array read operation will force the SFDIF flag in the FERSTAT
      --  register to be set and an interrupt will be generated as long as
      --  FERCNFG[SFDIE] is set.
      FCNFG_FSFD_Field_1)
     with Size => 1;
   for FCNFG_FSFD_Field use
     (FCNFG_FSFD_Field_0 => 0,
      FCNFG_FSFD_Field_1 => 1);

   --  Force Double Bit Fault Detect
   type FCNFG_FDFD_Field is
     (
      --  Flash array read operations will set the FERSTAT[DFDIF] flag only if
      --  a double bit fault is detected.
      FCNFG_FDFD_Field_0,
      --  Any flash array read operation will force the FERSTAT[DFDIF] flag to
      --  be set and an interrupt will be generated as long as FERCNFG[DFDIE]
      --  is set.
      FCNFG_FDFD_Field_1)
     with Size => 1;
   for FCNFG_FDFD_Field use
     (FCNFG_FDFD_Field_0 => 0,
      FCNFG_FDFD_Field_1 => 1);

   --  Ignore Single Bit Fault
   type FCNFG_IGNSF_Field is
     (
      --  All single-bit faults detected during array reads are reported.
      FCNFG_IGNSF_Field_0,
      --  Single-bit faults detected during array reads are not reported and
      --  the single bit fault interrupt will not be generated.
      FCNFG_IGNSF_Field_1)
     with Size => 1;
   for FCNFG_IGNSF_Field use
     (FCNFG_IGNSF_Field_0 => 0,
      FCNFG_IGNSF_Field_1 => 1);

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
   type FTMRH_FCNFG_Register is record
      --  Force Single Bit Fault Detect
      FSFD         : FCNFG_FSFD_Field := NRF_SVD.FTMRH.FCNFG_FSFD_Field_0;
      --  Force Double Bit Fault Detect
      FDFD         : FCNFG_FDFD_Field := NRF_SVD.FTMRH.FCNFG_FDFD_Field_0;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Ignore Single Bit Fault
      IGNSF        : FCNFG_IGNSF_Field := NRF_SVD.FTMRH.FCNFG_IGNSF_Field_0;
      --  unspecified
      Reserved_5_6 : HAL.UInt2 := 16#0#;
      --  Command Complete Interrupt Enable
      CCIE         : FCNFG_CCIE_Field := NRF_SVD.FTMRH.FCNFG_CCIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FCNFG_Register use record
      FSFD         at 0 range 0 .. 0;
      FDFD         at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      IGNSF        at 0 range 4 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      CCIE         at 0 range 7 .. 7;
   end record;

   --  Single Bit Fault Detect Interrupt Enable
   type FERCNFG_SFDIE_Field is
     (
      --  SFDIF interrupt is disabled whenever the SFDIF flag is set.
      FERCNFG_SFDIE_Field_0,
      --  An interrupt will be requested whenever the SFDIF flag is set.
      FERCNFG_SFDIE_Field_1)
     with Size => 1;
   for FERCNFG_SFDIE_Field use
     (FERCNFG_SFDIE_Field_0 => 0,
      FERCNFG_SFDIE_Field_1 => 1);

   --  Double Bit Fault Detect Interrupt Enable
   type FERCNFG_DFDIE_Field is
     (
      --  DFDIF interrupt is disabled.
      FERCNFG_DFDIE_Field_0,
      --  An interrupt will be requested whenever the DFDIF flag is set.
      FERCNFG_DFDIE_Field_1)
     with Size => 1;
   for FERCNFG_DFDIE_Field use
     (FERCNFG_DFDIE_Field_0 => 0,
      FERCNFG_DFDIE_Field_1 => 1);

   --  Flash Error Configuration Register
   type FTMRH_FERCNFG_Register is record
      --  Single Bit Fault Detect Interrupt Enable
      SFDIE        : FERCNFG_SFDIE_Field :=
                      NRF_SVD.FTMRH.FERCNFG_SFDIE_Field_0;
      --  Double Bit Fault Detect Interrupt Enable
      DFDIE        : FERCNFG_DFDIE_Field :=
                      NRF_SVD.FTMRH.FERCNFG_DFDIE_Field_0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FERCNFG_Register use record
      SFDIE        at 0 range 0 .. 0;
      DFDIE        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype FTMRH_FSTAT_MGSTAT_Field is HAL.UInt2;

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
   type FTMRH_FSTAT_Register is record
      --  Read-only. Memory Controller Command Completion Status Flag
      MGSTAT       : FTMRH_FSTAT_MGSTAT_Field := 16#0#;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Read-only. Memory Controller Busy Flag
      MGBUSY       : FSTAT_MGBUSY_Field := NRF_SVD.FTMRH.FSTAT_MGBUSY_Field_0;
      --  Flash Protection Violation Flag
      FPVIOL       : FSTAT_FPVIOL_Field := NRF_SVD.FTMRH.FSTAT_FPVIOL_Field_0;
      --  Flash Access Error Flag
      ACCERR       : FSTAT_ACCERR_Field := NRF_SVD.FTMRH.FSTAT_ACCERR_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Command Complete Interrupt Flag
      CCIF         : FSTAT_CCIF_Field := NRF_SVD.FTMRH.FSTAT_CCIF_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FSTAT_Register use record
      MGSTAT       at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      MGBUSY       at 0 range 3 .. 3;
      FPVIOL       at 0 range 4 .. 4;
      ACCERR       at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      CCIF         at 0 range 7 .. 7;
   end record;

   --  Single Bit Fault Detect Interrupt Flag
   type FERSTAT_SFDIF_Field is
     (
      --  No single bit fault detected.
      FERSTAT_SFDIF_Field_0,
      --  Single bit fault detected and corrected or a flash array read
      --  operation returning invalid data was attempted while command running.
      FERSTAT_SFDIF_Field_1)
     with Size => 1;
   for FERSTAT_SFDIF_Field use
     (FERSTAT_SFDIF_Field_0 => 0,
      FERSTAT_SFDIF_Field_1 => 1);

   --  Double Bit Fault Detect Interrupt Flag
   type FERSTAT_DFDIF_Field is
     (
      --  No double bit fault detected.
      FERSTAT_DFDIF_Field_0,
      --  Double bit fault detected or a flash array read operation returning
      --  invalid data was attempted while command running.
      FERSTAT_DFDIF_Field_1)
     with Size => 1;
   for FERSTAT_DFDIF_Field use
     (FERSTAT_DFDIF_Field_0 => 0,
      FERSTAT_DFDIF_Field_1 => 1);

   --  Flash Error Status Register
   type FTMRH_FERSTAT_Register is record
      --  Single Bit Fault Detect Interrupt Flag
      SFDIF        : FERSTAT_SFDIF_Field :=
                      NRF_SVD.FTMRH.FERSTAT_SFDIF_Field_0;
      --  Double Bit Fault Detect Interrupt Flag
      DFDIF        : FERSTAT_DFDIF_Field :=
                      NRF_SVD.FTMRH.FERSTAT_DFDIF_Field_0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FERSTAT_Register use record
      SFDIF        at 0 range 0 .. 0;
      DFDIF        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype FTMRH_FPROT_FPLS_Field is HAL.UInt2;

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

   subtype FTMRH_FPROT_FPHS_Field is HAL.UInt2;

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
   type FTMRH_FPROT_Register is record
      --  Flash Protection Lower Address Size
      FPLS   : FTMRH_FPROT_FPLS_Field := 16#0#;
      --  Flash Protection Lower Address Range Disable
      FPLDIS : FPROT_FPLDIS_Field := NRF_SVD.FTMRH.FPROT_FPLDIS_Field_0;
      --  Flash Protection Higher Address Size
      FPHS   : FTMRH_FPROT_FPHS_Field := 16#0#;
      --  Flash Protection Higher Address Range Disable
      FPHDIS : FPROT_FPHDIS_Field := NRF_SVD.FTMRH.FPROT_FPHDIS_Field_0;
      --  Read-only. Reserved Nonvolatile Bit
      RNV6   : Boolean := False;
      --  Flash Protection Operation Enable
      FPOPEN : FPROT_FPOPEN_Field := NRF_SVD.FTMRH.FPROT_FPOPEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_FPROT_Register use record
      FPLS   at 0 range 0 .. 1;
      FPLDIS at 0 range 2 .. 2;
      FPHS   at 0 range 3 .. 4;
      FPHDIS at 0 range 5 .. 5;
      RNV6   at 0 range 6 .. 6;
      FPOPEN at 0 range 7 .. 7;
   end record;

   subtype FTMRH_EEPROT_DPS_Field is HAL.UInt3;

   --  EEPROM Protection Control
   type EEPROT_DPOPEN_Field is
     (
      --  Enables EEPROM memory protection from program and erase with
      --  protected address range defined by DPS bits.
      EEPROT_DPOPEN_Field_0,
      --  Disables EEPROM memory protection from program and erase.
      EEPROT_DPOPEN_Field_1)
     with Size => 1;
   for EEPROT_DPOPEN_Field use
     (EEPROT_DPOPEN_Field_0 => 0,
      EEPROT_DPOPEN_Field_1 => 1);

   --  EEPROM Protection Register
   type FTMRH_EEPROT_Register is record
      --  EEPROM Protection Size
      DPS          : FTMRH_EEPROT_DPS_Field := 16#0#;
      --  unspecified
      Reserved_3_6 : HAL.UInt4 := 16#0#;
      --  EEPROM Protection Control
      DPOPEN       : EEPROT_DPOPEN_Field :=
                      NRF_SVD.FTMRH.EEPROT_DPOPEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTMRH_EEPROT_Register use record
      DPS          at 0 range 0 .. 2;
      Reserved_3_6 at 0 range 3 .. 6;
      DPOPEN       at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Memory
   type FTMRH_Peripheral is record
      --  Flash Clock Divider Register
      FCLKDIV : aliased FTMRH_FCLKDIV_Register;
      --  Flash Security Register
      FSEC    : aliased FTMRH_FSEC_Register;
      --  Flash CCOB Index Register
      FCCOBIX : aliased FTMRH_FCCOBIX_Register;
      --  Flash Configuration Register
      FCNFG   : aliased FTMRH_FCNFG_Register;
      --  Flash Error Configuration Register
      FERCNFG : aliased FTMRH_FERCNFG_Register;
      --  Flash Status Register
      FSTAT   : aliased FTMRH_FSTAT_Register;
      --  Flash Error Status Register
      FERSTAT : aliased FTMRH_FERSTAT_Register;
      --  Flash Protection Register
      FPROT   : aliased FTMRH_FPROT_Register;
      --  EEPROM Protection Register
      EEPROT  : aliased FTMRH_EEPROT_Register;
      --  Flash Common Command Object Register:High
      FCCOBHI : aliased HAL.UInt8;
      --  Flash Common Command Object Register: Low
      FCCOBLO : aliased HAL.UInt8;
      --  Flash Option Register
      FOPT    : aliased HAL.UInt8;
   end record
     with Volatile;

   for FTMRH_Peripheral use record
      FCLKDIV at 16#0# range 0 .. 7;
      FSEC    at 16#1# range 0 .. 7;
      FCCOBIX at 16#2# range 0 .. 7;
      FCNFG   at 16#4# range 0 .. 7;
      FERCNFG at 16#5# range 0 .. 7;
      FSTAT   at 16#6# range 0 .. 7;
      FERSTAT at 16#7# range 0 .. 7;
      FPROT   at 16#8# range 0 .. 7;
      EEPROT  at 16#9# range 0 .. 7;
      FCCOBHI at 16#A# range 0 .. 7;
      FCCOBLO at 16#B# range 0 .. 7;
      FOPT    at 16#C# range 0 .. 7;
   end record;

   --  Flash Memory
   FTMRH_Periph : aliased FTMRH_Peripheral
     with Import, Address => FTMRH_Base;

end NRF_SVD.FTMRH;
