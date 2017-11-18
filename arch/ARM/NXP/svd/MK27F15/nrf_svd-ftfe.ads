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

--  Flash Memory Interface
package NRF_SVD.FTFE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash Protection Violation Flag
   type FSTAT_FPVIOL_Field is
     (
      --  No protection violation detected
      FSTAT_FPVIOL_Field_0,
      --  Protection violation detected
      FSTAT_FPVIOL_Field_1)
     with Size => 1;
   for FSTAT_FPVIOL_Field use
     (FSTAT_FPVIOL_Field_0 => 0,
      FSTAT_FPVIOL_Field_1 => 1);

   --  Flash Access Error Flag
   type FSTAT_ACCERR_Field is
     (
      --  No access error detected
      FSTAT_ACCERR_Field_0,
      --  Access error detected
      FSTAT_ACCERR_Field_1)
     with Size => 1;
   for FSTAT_ACCERR_Field use
     (FSTAT_ACCERR_Field_0 => 0,
      FSTAT_ACCERR_Field_1 => 1);

   --  FTFE Read Collision Error Flag
   type FSTAT_RDCOLERR_Field is
     (
      --  No collision error detected
      FSTAT_RDCOLERR_Field_0,
      --  Collision error detected
      FSTAT_RDCOLERR_Field_1)
     with Size => 1;
   for FSTAT_RDCOLERR_Field use
     (FSTAT_RDCOLERR_Field_0 => 0,
      FSTAT_RDCOLERR_Field_1 => 1);

   --  Command Complete Interrupt Flag
   type FSTAT_CCIF_Field is
     (
      --  FTFE command in progress
      FSTAT_CCIF_Field_0,
      --  FTFE command has completed
      FSTAT_CCIF_Field_1)
     with Size => 1;
   for FSTAT_CCIF_Field use
     (FSTAT_CCIF_Field_0 => 0,
      FSTAT_CCIF_Field_1 => 1);

   --  Flash Status Register
   type FTFE_FSTAT_Register is record
      --  Read-only. Memory Controller Command Completion Status Flag
      MGSTAT0      : Boolean := False;
      --  unspecified
      Reserved_1_3 : HAL.UInt3 := 16#0#;
      --  Flash Protection Violation Flag
      FPVIOL       : FSTAT_FPVIOL_Field := NRF_SVD.FTFE.FSTAT_FPVIOL_Field_0;
      --  Flash Access Error Flag
      ACCERR       : FSTAT_ACCERR_Field := NRF_SVD.FTFE.FSTAT_ACCERR_Field_0;
      --  FTFE Read Collision Error Flag
      RDCOLERR     : FSTAT_RDCOLERR_Field :=
                      NRF_SVD.FTFE.FSTAT_RDCOLERR_Field_0;
      --  Command Complete Interrupt Flag
      CCIF         : FSTAT_CCIF_Field := NRF_SVD.FTFE.FSTAT_CCIF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTFE_FSTAT_Register use record
      MGSTAT0      at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      FPVIOL       at 0 range 4 .. 4;
      ACCERR       at 0 range 5 .. 5;
      RDCOLERR     at 0 range 6 .. 6;
      CCIF         at 0 range 7 .. 7;
   end record;

   --  This bit is reserved and always has the value 0.
   type FCNFG_EEERDY_Field is
     (
      --  See RAMRDY for availability of programming acceleration RAM
      FCNFG_EEERDY_Field_0)
     with Size => 1;
   for FCNFG_EEERDY_Field use
     (FCNFG_EEERDY_Field_0 => 0);

   --  RAM Ready
   type FCNFG_RAMRDY_Field is
     (
      --  Programming acceleration RAM is not available
      FCNFG_RAMRDY_Field_0,
      --  Programming acceleration RAM is available
      FCNFG_RAMRDY_Field_1)
     with Size => 1;
   for FCNFG_RAMRDY_Field use
     (FCNFG_RAMRDY_Field_0 => 0,
      FCNFG_RAMRDY_Field_1 => 1);

   --  Swap
   type FCNFG_SWAP_Field is
     (
      --  Program flash 0/1 blocks are located at relative address 0x0000
      FCNFG_SWAP_Field_0,
      --  Program flash 2/3 blocks are located at relative address 0x0000
      FCNFG_SWAP_Field_1)
     with Size => 1;
   for FCNFG_SWAP_Field use
     (FCNFG_SWAP_Field_0 => 0,
      FCNFG_SWAP_Field_1 => 1);

   --  Erase Suspend
   type FCNFG_ERSSUSP_Field is
     (
      --  No suspend requested
      FCNFG_ERSSUSP_Field_0,
      --  Suspend the current Erase Flash Sector command execution
      FCNFG_ERSSUSP_Field_1)
     with Size => 1;
   for FCNFG_ERSSUSP_Field use
     (FCNFG_ERSSUSP_Field_0 => 0,
      FCNFG_ERSSUSP_Field_1 => 1);

   --  Erase All Request
   type FCNFG_ERSAREQ_Field is
     (
      --  No request or request complete
      FCNFG_ERSAREQ_Field_0,
      --  Request to: run the Erase All Blocks command, verify the erased
      --  state, program the security byte in the Flash Configuration Field to
      --  the unsecure state, and release MCU security by setting the FSEC[SEC]
      --  field to the unsecure state
      FCNFG_ERSAREQ_Field_1)
     with Size => 1;
   for FCNFG_ERSAREQ_Field use
     (FCNFG_ERSAREQ_Field_0 => 0,
      FCNFG_ERSAREQ_Field_1 => 1);

   --  Read Collision Error Interrupt Enable
   type FCNFG_RDCOLLIE_Field is
     (
      --  Read collision error interrupt disabled
      FCNFG_RDCOLLIE_Field_0,
      --  Read collision error interrupt enabled. An interrupt request is
      --  generated whenever an FTFE read collision error is detected (see the
      --  description of FSTAT[RDCOLERR]).
      FCNFG_RDCOLLIE_Field_1)
     with Size => 1;
   for FCNFG_RDCOLLIE_Field use
     (FCNFG_RDCOLLIE_Field_0 => 0,
      FCNFG_RDCOLLIE_Field_1 => 1);

   --  Command Complete Interrupt Enable
   type FCNFG_CCIE_Field is
     (
      --  Command complete interrupt disabled
      FCNFG_CCIE_Field_0,
      --  Command complete interrupt enabled. An interrupt request is generated
      --  whenever the FSTAT[CCIF] flag is set.
      FCNFG_CCIE_Field_1)
     with Size => 1;
   for FCNFG_CCIE_Field use
     (FCNFG_CCIE_Field_0 => 0,
      FCNFG_CCIE_Field_1 => 1);

   --  Flash Configuration Register
   type FTFE_FCNFG_Register is record
      --  Read-only. This bit is reserved and always has the value 0.
      EEERDY   : FCNFG_EEERDY_Field := NRF_SVD.FTFE.FCNFG_EEERDY_Field_0;
      --  Read-only. RAM Ready
      RAMRDY   : FCNFG_RAMRDY_Field := NRF_SVD.FTFE.FCNFG_RAMRDY_Field_1;
      --  Read-only. This bit is reserved and always has the value 1.
      PFLSH    : Boolean := True;
      --  Read-only. Swap
      SWAP     : FCNFG_SWAP_Field := NRF_SVD.FTFE.FCNFG_SWAP_Field_0;
      --  Erase Suspend
      ERSSUSP  : FCNFG_ERSSUSP_Field := NRF_SVD.FTFE.FCNFG_ERSSUSP_Field_0;
      --  Read-only. Erase All Request
      ERSAREQ  : FCNFG_ERSAREQ_Field := NRF_SVD.FTFE.FCNFG_ERSAREQ_Field_0;
      --  Read Collision Error Interrupt Enable
      RDCOLLIE : FCNFG_RDCOLLIE_Field := NRF_SVD.FTFE.FCNFG_RDCOLLIE_Field_0;
      --  Command Complete Interrupt Enable
      CCIE     : FCNFG_CCIE_Field := NRF_SVD.FTFE.FCNFG_CCIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTFE_FCNFG_Register use record
      EEERDY   at 0 range 0 .. 0;
      RAMRDY   at 0 range 1 .. 1;
      PFLSH    at 0 range 2 .. 2;
      SWAP     at 0 range 3 .. 3;
      ERSSUSP  at 0 range 4 .. 4;
      ERSAREQ  at 0 range 5 .. 5;
      RDCOLLIE at 0 range 6 .. 6;
      CCIE     at 0 range 7 .. 7;
   end record;

   --  Flash Security
   type FSEC_SEC_Field is
     (
      --  MCU security status is secure
      FSEC_SEC_Field_00,
      --  MCU security status is secure
      FSEC_SEC_Field_01,
      --  MCU security status is unsecure (The standard shipping condition of
      --  the FTFE is unsecure.)
      FSEC_SEC_Field_10,
      --  MCU security status is secure
      FSEC_SEC_Field_11)
     with Size => 2;
   for FSEC_SEC_Field use
     (FSEC_SEC_Field_00 => 0,
      FSEC_SEC_Field_01 => 1,
      FSEC_SEC_Field_10 => 2,
      FSEC_SEC_Field_11 => 3);

   --  Factory Security Level Access Code
   type FSEC_FSLACC_Field is
     (
      --  Factory access granted
      FSEC_FSLACC_Field_00,
      --  Factory access denied
      FSEC_FSLACC_Field_01,
      --  Factory access denied
      FSEC_FSLACC_Field_10,
      --  Factory access granted
      FSEC_FSLACC_Field_11)
     with Size => 2;
   for FSEC_FSLACC_Field use
     (FSEC_FSLACC_Field_00 => 0,
      FSEC_FSLACC_Field_01 => 1,
      FSEC_FSLACC_Field_10 => 2,
      FSEC_FSLACC_Field_11 => 3);

   --  Mass Erase Enable Bits
   type FSEC_MEEN_Field is
     (
      --  Mass erase is enabled
      FSEC_MEEN_Field_00,
      --  Mass erase is enabled
      FSEC_MEEN_Field_01,
      --  Mass erase is disabled
      FSEC_MEEN_Field_10,
      --  Mass erase is enabled
      FSEC_MEEN_Field_11)
     with Size => 2;
   for FSEC_MEEN_Field use
     (FSEC_MEEN_Field_00 => 0,
      FSEC_MEEN_Field_01 => 1,
      FSEC_MEEN_Field_10 => 2,
      FSEC_MEEN_Field_11 => 3);

   --  Backdoor Key Security Enable
   type FSEC_KEYEN_Field is
     (
      --  Backdoor key access disabled
      FSEC_KEYEN_Field_00,
      --  Backdoor key access disabled (preferred KEYEN state to disable
      --  backdoor key access)
      FSEC_KEYEN_Field_01,
      --  Backdoor key access enabled
      FSEC_KEYEN_Field_10,
      --  Backdoor key access disabled
      FSEC_KEYEN_Field_11)
     with Size => 2;
   for FSEC_KEYEN_Field use
     (FSEC_KEYEN_Field_00 => 0,
      FSEC_KEYEN_Field_01 => 1,
      FSEC_KEYEN_Field_10 => 2,
      FSEC_KEYEN_Field_11 => 3);

   --  Flash Security Register
   type FTFE_FSEC_Register is record
      --  Read-only. Flash Security
      SEC    : FSEC_SEC_Field;
      --  Read-only. Factory Security Level Access Code
      FSLACC : FSEC_FSLACC_Field;
      --  Read-only. Mass Erase Enable Bits
      MEEN   : FSEC_MEEN_Field;
      --  Read-only. Backdoor Key Security Enable
      KEYEN  : FSEC_KEYEN_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTFE_FSEC_Register use record
      SEC    at 0 range 0 .. 1;
      FSLACC at 0 range 2 .. 3;
      MEEN   at 0 range 4 .. 5;
      KEYEN  at 0 range 6 .. 7;
   end record;

   --  Flash Common Command Object Registers

   --  Flash Common Command Object Registers
   type FTFE_FCCOB_Registers is array (0 .. 11) of HAL.UInt8
     with Volatile;

   --  Program Flash Protection Registers

   --  Program Flash Protection Registers
   type FTFE_FPROT_Registers is array (0 .. 3) of HAL.UInt8
     with Volatile;

   --  Execute-only Access Registers

   --  Execute-only Access Registers
   type FTFE_XACC_Registers is array (0 .. 7) of HAL.UInt8
     with Volatile;

   --  Supervisor-only Access Registers

   --  Supervisor-only Access Registers
   type FTFE_SACC_Registers is array (0 .. 7) of HAL.UInt8
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Memory Interface
   type FTFE_Peripheral is record
      --  Flash Status Register
      FSTAT : aliased FTFE_FSTAT_Register;
      --  Flash Configuration Register
      FCNFG : aliased FTFE_FCNFG_Register;
      --  Flash Security Register
      FSEC  : aliased FTFE_FSEC_Register;
      --  Flash Option Register
      FOPT  : aliased HAL.UInt8;
      --  Flash Common Command Object Registers
      FCCOB : aliased FTFE_FCCOB_Registers;
      --  Program Flash Protection Registers
      FPROT : aliased FTFE_FPROT_Registers;
      --  Execute-only Access Registers
      XACC  : aliased FTFE_XACC_Registers;
      --  Supervisor-only Access Registers
      SACC  : aliased FTFE_SACC_Registers;
      --  Flash Access Segment Size Register
      FACSS : aliased HAL.UInt8;
      --  Flash Access Segment Number Register
      FACSN : aliased HAL.UInt8;
   end record
     with Volatile;

   for FTFE_Peripheral use record
      FSTAT at 16#0# range 0 .. 7;
      FCNFG at 16#1# range 0 .. 7;
      FSEC  at 16#2# range 0 .. 7;
      FOPT  at 16#3# range 0 .. 7;
      FCCOB at 16#4# range 0 .. 95;
      FPROT at 16#10# range 0 .. 31;
      XACC  at 16#18# range 0 .. 63;
      SACC  at 16#20# range 0 .. 63;
      FACSS at 16#28# range 0 .. 7;
      FACSN at 16#2B# range 0 .. 7;
   end record;

   --  Flash Memory Interface
   FTFE_Periph : aliased FTFE_Peripheral
     with Import, Address => FTFE_Base;

end NRF_SVD.FTFE;
