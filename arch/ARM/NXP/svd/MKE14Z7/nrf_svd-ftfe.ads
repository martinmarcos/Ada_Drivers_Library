--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FTFE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash Protection Violation Flag
   type FSTAT_FPVIOL_Field is
     (
      --  No protection violation detected
      Fpviol_0,
      --  Protection violation detected
      Fpviol_1)
     with Size => 1;
   for FSTAT_FPVIOL_Field use
     (Fpviol_0 => 0,
      Fpviol_1 => 1);

   --  Flash Access Error Flag
   type FSTAT_ACCERR_Field is
     (
      --  No access error detected
      Accerr_0,
      --  Access error detected
      Accerr_1)
     with Size => 1;
   for FSTAT_ACCERR_Field use
     (Accerr_0 => 0,
      Accerr_1 => 1);

   --  FTFE Read Collision Error Flag
   type FSTAT_RDCOLERR_Field is
     (
      --  No collision error detected
      Rdcolerr_0,
      --  Collision error detected
      Rdcolerr_1)
     with Size => 1;
   for FSTAT_RDCOLERR_Field use
     (Rdcolerr_0 => 0,
      Rdcolerr_1 => 1);

   --  Command Complete Interrupt Flag
   type FSTAT_CCIF_Field is
     (
      --  FTFE command or EEPROM file system operation in progress
      Ccif_0,
      --  FTFE command or EEPROM file system operation has completed
      Ccif_1)
     with Size => 1;
   for FSTAT_CCIF_Field use
     (Ccif_0 => 0,
      Ccif_1 => 1);

   --  Flash Status Register
   type FTFE_FSTAT_Register is record
      --  Read-only. Memory Controller Command Completion Status Flag
      MGSTAT0      : Boolean := False;
      --  unspecified
      Reserved_1_3 : HAL.UInt3 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Flash Protection Violation Flag
      FPVIOL       : FSTAT_FPVIOL_Field := NRF_SVD.FTFE.Fpviol_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Flash Access Error Flag
      ACCERR       : FSTAT_ACCERR_Field := NRF_SVD.FTFE.Accerr_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FTFE Read Collision Error Flag
      RDCOLERR     : FSTAT_RDCOLERR_Field := NRF_SVD.FTFE.Rdcolerr_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Command Complete Interrupt Flag
      CCIF         : FSTAT_CCIF_Field := NRF_SVD.FTFE.Ccif_0;
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

   --  This flag indicates if the EEPROM backup data has been copied to the
   --  FlexRAM and is therefore available for read access
   type FCNFG_EEERDY_Field is
     (
      --  FlexRAM is not available for EEPROM operation
      Eeerdy_0,
      --  FlexRAM is available for EEPROM operations where: reads from the
      --  FlexRAM return data previously written to the FlexRAM in EEPROM mode
      --  and writes launch an EEPROM operation to store the written data in
      --  the FlexRAM and EEPROM backup
      Eeerdy_1)
     with Size => 1;
   for FCNFG_EEERDY_Field use
     (Eeerdy_0 => 0,
      Eeerdy_1 => 1);

   --  RAM Ready
   type FCNFG_RAMRDY_Field is
     (
      --  FlexRAM is not available for traditional RAM access
      Ramrdy_0,
      --  FlexRAM is available as traditional RAM only; writes to the FlexRAM
      --  do not trigger EEPROM operations
      Ramrdy_1)
     with Size => 1;
   for FCNFG_RAMRDY_Field use
     (Ramrdy_0 => 0,
      Ramrdy_1 => 1);

   --  FTFE configuration
   type FCNFG_PFLSH_Field is
     (
      --  FTFE configuration supports one program flash block and one FlexNVM
      --  block
      Pflsh_0)
     with Size => 1;
   for FCNFG_PFLSH_Field use
     (Pflsh_0 => 0);

   --  Erase Suspend
   type FCNFG_ERSSUSP_Field is
     (
      --  No suspend requested
      Erssusp_0,
      --  Suspend the current Erase Flash Sector command execution
      Erssusp_1)
     with Size => 1;
   for FCNFG_ERSSUSP_Field use
     (Erssusp_0 => 0,
      Erssusp_1 => 1);

   --  Erase All Request
   type FCNFG_ERSAREQ_Field is
     (
      --  No request or request complete
      Ersareq_0,
      --  Request to: run the Erase All Blocks command, verify the erased
      --  state, program the security byte in the Flash Configuration Field to
      --  the unsecure state, and release MCU security by setting the FSEC[SEC]
      --  field to the unsecure state
      Ersareq_1)
     with Size => 1;
   for FCNFG_ERSAREQ_Field use
     (Ersareq_0 => 0,
      Ersareq_1 => 1);

   --  Read Collision Error Interrupt Enable
   type FCNFG_RDCOLLIE_Field is
     (
      --  Read collision error interrupt disabled
      Rdcollie_0,
      --  Read collision error interrupt enabled. An interrupt request is
      --  generated whenever an FTFE read collision error is detected (see the
      --  description of FSTAT[RDCOLERR]).
      Rdcollie_1)
     with Size => 1;
   for FCNFG_RDCOLLIE_Field use
     (Rdcollie_0 => 0,
      Rdcollie_1 => 1);

   --  Command Complete Interrupt Enable
   type FCNFG_CCIE_Field is
     (
      --  Command complete interrupt disabled
      Ccie_0,
      --  Command complete interrupt enabled. An interrupt request is generated
      --  whenever the FSTAT[CCIF] flag is set.
      Ccie_1)
     with Size => 1;
   for FCNFG_CCIE_Field use
     (Ccie_0 => 0,
      Ccie_1 => 1);

   --  Flash Configuration Register
   type FTFE_FCNFG_Register is record
      --  Read-only. This flag indicates if the EEPROM backup data has been
      --  copied to the FlexRAM and is therefore available for read access
      EEERDY       : FCNFG_EEERDY_Field := NRF_SVD.FTFE.Eeerdy_0;
      --  Read-only. RAM Ready
      RAMRDY       : FCNFG_RAMRDY_Field := NRF_SVD.FTFE.Ramrdy_0;
      --  Read-only. FTFE configuration
      PFLSH        : FCNFG_PFLSH_Field := NRF_SVD.FTFE.Pflsh_0;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Erase Suspend
      ERSSUSP      : FCNFG_ERSSUSP_Field := NRF_SVD.FTFE.Erssusp_0;
      --  Read-only. Erase All Request
      ERSAREQ      : FCNFG_ERSAREQ_Field := NRF_SVD.FTFE.Ersareq_0;
      --  Read Collision Error Interrupt Enable
      RDCOLLIE     : FCNFG_RDCOLLIE_Field := NRF_SVD.FTFE.Rdcollie_0;
      --  Command Complete Interrupt Enable
      CCIE         : FCNFG_CCIE_Field := NRF_SVD.FTFE.Ccie_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FTFE_FCNFG_Register use record
      EEERDY       at 0 range 0 .. 0;
      RAMRDY       at 0 range 1 .. 1;
      PFLSH        at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      ERSSUSP      at 0 range 4 .. 4;
      ERSAREQ      at 0 range 5 .. 5;
      RDCOLLIE     at 0 range 6 .. 6;
      CCIE         at 0 range 7 .. 7;
   end record;

   --  Flash Security
   type FSEC_SEC_Field is
     (
      --  MCU security status is secure
      Sec_0,
      --  MCU security status is secure
      Sec_1,
      --  MCU security status is unsecure (The standard shipping condition of
      --  the FTFE is unsecure.)
      Sec_2,
      --  MCU security status is secure
      Sec_3)
     with Size => 2;
   for FSEC_SEC_Field use
     (Sec_0 => 0,
      Sec_1 => 1,
      Sec_2 => 2,
      Sec_3 => 3);

   --  Factory Security Level Access Code
   type FSEC_FSLACC_Field is
     (
      --  Factory access granted
      Fslacc_0,
      --  Factory access denied
      Fslacc_1,
      --  Factory access denied
      Fslacc_2,
      --  Factory access granted
      Fslacc_3)
     with Size => 2;
   for FSEC_FSLACC_Field use
     (Fslacc_0 => 0,
      Fslacc_1 => 1,
      Fslacc_2 => 2,
      Fslacc_3 => 3);

   --  Mass Erase Enable Bits
   type FSEC_MEEN_Field is
     (
      --  Mass erase is enabled
      Meen_0,
      --  Mass erase is enabled
      Meen_1,
      --  Mass erase is disabled
      Meen_2,
      --  Mass erase is enabled
      Meen_3)
     with Size => 2;
   for FSEC_MEEN_Field use
     (Meen_0 => 0,
      Meen_1 => 1,
      Meen_2 => 2,
      Meen_3 => 3);

   --  Backdoor Key Security Enable
   type FSEC_KEYEN_Field is
     (
      --  Backdoor key access disabled
      Keyen_0,
      --  Backdoor key access disabled (preferred KEYEN state to disable
      --  backdoor key access)
      Keyen_1,
      --  Backdoor key access enabled
      Keyen_2,
      --  Backdoor key access disabled
      Keyen_3)
     with Size => 2;
   for FSEC_KEYEN_Field use
     (Keyen_0 => 0,
      Keyen_1 => 1,
      Keyen_2 => 2,
      Keyen_3 => 3);

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
      FSTAT  : aliased FTFE_FSTAT_Register;
      --  Flash Configuration Register
      FCNFG  : aliased FTFE_FCNFG_Register;
      --  Flash Security Register
      FSEC   : aliased FTFE_FSEC_Register;
      --  Flash Option Register
      FOPT   : aliased HAL.UInt8;
      --  Flash Common Command Object Registers
      FCCOB  : aliased FTFE_FCCOB_Registers;
      --  Program Flash Protection Registers
      FPROT  : aliased FTFE_FPROT_Registers;
      --  EEPROM Protection Register
      FEPROT : aliased HAL.UInt8;
      --  Data Flash Protection Register
      FDPROT : aliased HAL.UInt8;
      --  Execute-only Access Registers
      XACC   : aliased FTFE_XACC_Registers;
      --  Supervisor-only Access Registers
      SACC   : aliased FTFE_SACC_Registers;
      --  Flash Access Segment Size Register
      FACSS  : aliased HAL.UInt8;
      --  Flash Access Segment Number Register
      FACSN  : aliased HAL.UInt8;
   end record
     with Volatile;

   for FTFE_Peripheral use record
      FSTAT  at 16#0# range 0 .. 7;
      FCNFG  at 16#1# range 0 .. 7;
      FSEC   at 16#2# range 0 .. 7;
      FOPT   at 16#3# range 0 .. 7;
      FCCOB  at 16#4# range 0 .. 95;
      FPROT  at 16#10# range 0 .. 31;
      FEPROT at 16#16# range 0 .. 7;
      FDPROT at 16#17# range 0 .. 7;
      XACC   at 16#18# range 0 .. 63;
      SACC   at 16#20# range 0 .. 63;
      FACSS  at 16#28# range 0 .. 7;
      FACSN  at 16#2B# range 0 .. 7;
   end record;

   --  Flash Memory Interface
   FTFE_Periph : aliased FTFE_Peripheral
     with Import, Address => System'To_Address (16#40020000#);

end NRF_SVD.FTFE;
