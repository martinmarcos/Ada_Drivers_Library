--  This spec has been automatically generated from ATSAM3X8E.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  High Speed MultiMedia Card Interface
package SAM_SVD.HSMCI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type HSMCI_CR_Register is record
      --  Write-only. Multi-Media Interface Enable
      MCIEN         : Boolean := False;
      --  Write-only. Multi-Media Interface Disable
      MCIDIS        : Boolean := False;
      --  Write-only. Power Save Mode Enable
      PWSEN         : Boolean := False;
      --  Write-only. Power Save Mode Disable
      PWSDIS        : Boolean := False;
      --  unspecified
      Reserved_4_6  : HAL.UInt3 := 16#0#;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_CR_Register use record
      MCIEN         at 0 range 0 .. 0;
      MCIDIS        at 0 range 1 .. 1;
      PWSEN         at 0 range 2 .. 2;
      PWSDIS        at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      SWRST         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HSMCI_MR_CLKDIV_Field is HAL.UInt8;
   subtype HSMCI_MR_PWSDIV_Field is HAL.UInt3;

   --  Mode Register
   type HSMCI_MR_Register is record
      --  Clock Divider
      CLKDIV         : HSMCI_MR_CLKDIV_Field := 16#0#;
      --  Power Saving Divider
      PWSDIV         : HSMCI_MR_PWSDIV_Field := 16#0#;
      --  Read Proof Enable
      RDPROOF        : Boolean := False;
      --  Write Proof Enable
      WRPROOF        : Boolean := False;
      --  Force Byte Transfer
      FBYTE          : Boolean := False;
      --  Padding Value
      PADV           : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_MR_Register use record
      CLKDIV         at 0 range 0 .. 7;
      PWSDIV         at 0 range 8 .. 10;
      RDPROOF        at 0 range 11 .. 11;
      WRPROOF        at 0 range 12 .. 12;
      FBYTE          at 0 range 13 .. 13;
      PADV           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HSMCI_DTOR_DTOCYC_Field is HAL.UInt4;

   --  Data Timeout Multiplier
   type DTOR_DTOMUL_Field is
     (
      --  DTOCYC
      DTOR_DTOMUL_Field_1,
      --  DTOCYC x 16
      DTOR_DTOMUL_Field_16,
      --  DTOCYC x 128
      DTOR_DTOMUL_Field_128,
      --  DTOCYC x 256
      DTOR_DTOMUL_Field_256,
      --  DTOCYC x 1024
      DTOR_DTOMUL_Field_1024,
      --  DTOCYC x 4096
      DTOR_DTOMUL_Field_4096,
      --  DTOCYC x 65536
      DTOR_DTOMUL_Field_65536,
      --  DTOCYC x 1048576
      DTOR_DTOMUL_Field_1048576)
     with Size => 3;
   for DTOR_DTOMUL_Field use
     (DTOR_DTOMUL_Field_1 => 0,
      DTOR_DTOMUL_Field_16 => 1,
      DTOR_DTOMUL_Field_128 => 2,
      DTOR_DTOMUL_Field_256 => 3,
      DTOR_DTOMUL_Field_1024 => 4,
      DTOR_DTOMUL_Field_4096 => 5,
      DTOR_DTOMUL_Field_65536 => 6,
      DTOR_DTOMUL_Field_1048576 => 7);

   --  Data Timeout Register
   type HSMCI_DTOR_Register is record
      --  Data Timeout Cycle Number
      DTOCYC        : HSMCI_DTOR_DTOCYC_Field := 16#0#;
      --  Data Timeout Multiplier
      DTOMUL        : DTOR_DTOMUL_Field := SAM_SVD.HSMCI.DTOR_DTOMUL_Field_1;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_DTOR_Register use record
      DTOCYC        at 0 range 0 .. 3;
      DTOMUL        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  SDCard/SDIO Slot
   type SDCR_SDCSEL_Field is
     (
      --  Slot A is selected.
      Slota,
      --  SDCARD/SDIO Slot B selected
      Slotb,
      --  -
      Slotc,
      --  -
      Slotd)
     with Size => 2;
   for SDCR_SDCSEL_Field use
     (Slota => 0,
      Slotb => 1,
      Slotc => 2,
      Slotd => 3);

   --  SDCard/SDIO Bus Width
   type SDCR_SDCBUS_Field is
     (
      --  1 bit
      SDCR_SDCBUS_Field_1,
      --  4 bits
      SDCR_SDCBUS_Field_4,
      --  8 bits
      SDCR_SDCBUS_Field_8)
     with Size => 2;
   for SDCR_SDCBUS_Field use
     (SDCR_SDCBUS_Field_1 => 0,
      SDCR_SDCBUS_Field_4 => 2,
      SDCR_SDCBUS_Field_8 => 3);

   --  SD/SDIO Card Register
   type HSMCI_SDCR_Register is record
      --  SDCard/SDIO Slot
      SDCSEL        : SDCR_SDCSEL_Field := SAM_SVD.HSMCI.Slota;
      --  unspecified
      Reserved_2_5  : HAL.UInt4 := 16#0#;
      --  SDCard/SDIO Bus Width
      SDCBUS        : SDCR_SDCBUS_Field := SAM_SVD.HSMCI.SDCR_SDCBUS_Field_1;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_SDCR_Register use record
      SDCSEL        at 0 range 0 .. 1;
      Reserved_2_5  at 0 range 2 .. 5;
      SDCBUS        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HSMCI_CMDR_CMDNB_Field is HAL.UInt6;

   --  Response Type
   type CMDR_RSPTYP_Field is
     (
      --  No response
      Noresp,
      --  48-bit response
      CMDR_RSPTYP_Field_48_Bit,
      --  136-bit response
      CMDR_RSPTYP_Field_136_Bit,
      --  R1b response type
      R1B)
     with Size => 2;
   for CMDR_RSPTYP_Field use
     (Noresp => 0,
      CMDR_RSPTYP_Field_48_Bit => 1,
      CMDR_RSPTYP_Field_136_Bit => 2,
      R1B => 3);

   --  Special Command
   type CMDR_SPCMD_Field is
     (
      --  Not a special CMD.
      Std,
      --  Initialization CMD: 74 clock cycles for initialization sequence.
      Init,
      --  Synchronized CMD: Wait for the end of the current data block transfer
      --  before sending the pending command.
      Sync,
      --  CE-ATA Completion Signal disable Command. The host cancels the
      --  ability for the device to return a command completion signal on the
      --  command line.
      Ce_Ata,
      --  Interrupt command: Corresponds to the Interrupt Mode (CMD40).
      It_Cmd,
      --  Interrupt response: Corresponds to the Interrupt Mode (CMD40).
      It_Resp,
      --  Boot Operation Request. Start a boot operation mode, the host
      --  processor can read boot data from the MMC device directly.
      Bor,
      --  End Boot Operation. This command allows the host processor to
      --  terminate the boot operation mode.
      Ebo)
     with Size => 3;
   for CMDR_SPCMD_Field use
     (Std => 0,
      Init => 1,
      Sync => 2,
      Ce_Ata => 3,
      It_Cmd => 4,
      It_Resp => 5,
      Bor => 6,
      Ebo => 7);

   --  Open Drain Command
   type CMDR_OPDCMD_Field is
     (
      --  Push pull command.
      Pushpull,
      --  Open drain command.
      Opendrain)
     with Size => 1;
   for CMDR_OPDCMD_Field use
     (Pushpull => 0,
      Opendrain => 1);

   --  Max Latency for Command to Response
   type CMDR_MAXLAT_Field is
     (
      --  5-cycle max latency.
      CMDR_MAXLAT_Field_5,
      --  64-cycle max latency.
      CMDR_MAXLAT_Field_64)
     with Size => 1;
   for CMDR_MAXLAT_Field use
     (CMDR_MAXLAT_Field_5 => 0,
      CMDR_MAXLAT_Field_64 => 1);

   --  Transfer Command
   type CMDR_TRCMD_Field is
     (
      --  No data transfer
      No_Data,
      --  Start data transfer
      Start_Data,
      --  Stop data transfer
      Stop_Data)
     with Size => 2;
   for CMDR_TRCMD_Field use
     (No_Data => 0,
      Start_Data => 1,
      Stop_Data => 2);

   --  Transfer Direction
   type CMDR_TRDIR_Field is
     (
      --  Write.
      Write,
      --  Read.
      Read)
     with Size => 1;
   for CMDR_TRDIR_Field use
     (Write => 0,
      Read => 1);

   --  Transfer Type
   type CMDR_TRTYP_Field is
     (
      --  MMC/SD Card Single Block
      Single,
      --  MMC/SD Card Multiple Block
      Multiple,
      --  MMC Stream
      Stream,
      --  SDIO Byte
      Byte,
      --  SDIO Block
      Block)
     with Size => 3;
   for CMDR_TRTYP_Field use
     (Single => 0,
      Multiple => 1,
      Stream => 2,
      Byte => 4,
      Block => 5);

   --  SDIO Special Command
   type CMDR_IOSPCMD_Field is
     (
      --  Not an SDIO Special Command
      Std,
      --  SDIO Suspend Command
      Suspend,
      --  SDIO Resume Command
      Resume)
     with Size => 2;
   for CMDR_IOSPCMD_Field use
     (Std => 0,
      Suspend => 1,
      Resume => 2);

   --  ATA with Command Completion Signal
   type CMDR_ATACS_Field is
     (
      --  Normal operation mode.
      Normal,
      --  This bit indicates that a completion signal is expected within a
      --  programmed amount of time (HSMCI_CSTOR).
      Completion)
     with Size => 1;
   for CMDR_ATACS_Field use
     (Normal => 0,
      Completion => 1);

   --  Command Register
   type HSMCI_CMDR_Register is record
      --  Write-only. Command Number
      CMDNB          : HSMCI_CMDR_CMDNB_Field := 16#0#;
      --  Write-only. Response Type
      RSPTYP         : CMDR_RSPTYP_Field := SAM_SVD.HSMCI.Noresp;
      --  Write-only. Special Command
      SPCMD          : CMDR_SPCMD_Field := SAM_SVD.HSMCI.Std;
      --  Write-only. Open Drain Command
      OPDCMD         : CMDR_OPDCMD_Field := SAM_SVD.HSMCI.Pushpull;
      --  Write-only. Max Latency for Command to Response
      MAXLAT         : CMDR_MAXLAT_Field := SAM_SVD.HSMCI.CMDR_MAXLAT_Field_5;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. Transfer Command
      TRCMD          : CMDR_TRCMD_Field := SAM_SVD.HSMCI.No_Data;
      --  Write-only. Transfer Direction
      TRDIR          : CMDR_TRDIR_Field := SAM_SVD.HSMCI.Write;
      --  Write-only. Transfer Type
      TRTYP          : CMDR_TRTYP_Field := SAM_SVD.HSMCI.Single;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Write-only. SDIO Special Command
      IOSPCMD        : CMDR_IOSPCMD_Field := SAM_SVD.HSMCI.Std;
      --  Write-only. ATA with Command Completion Signal
      ATACS          : CMDR_ATACS_Field := SAM_SVD.HSMCI.Normal;
      --  Write-only. Boot Operation Acknowledge
      BOOT_ACK       : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_CMDR_Register use record
      CMDNB          at 0 range 0 .. 5;
      RSPTYP         at 0 range 6 .. 7;
      SPCMD          at 0 range 8 .. 10;
      OPDCMD         at 0 range 11 .. 11;
      MAXLAT         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TRCMD          at 0 range 16 .. 17;
      TRDIR          at 0 range 18 .. 18;
      TRTYP          at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      IOSPCMD        at 0 range 24 .. 25;
      ATACS          at 0 range 26 .. 26;
      BOOT_ACK       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype HSMCI_BLKR_BCNT_Field is HAL.UInt16;
   subtype HSMCI_BLKR_BLKLEN_Field is HAL.UInt16;

   --  Block Register
   type HSMCI_BLKR_Register is record
      --  MMC/SDIO Block Count - SDIO Byte Count
      BCNT   : HSMCI_BLKR_BCNT_Field := 16#0#;
      --  Data Block Length
      BLKLEN : HSMCI_BLKR_BLKLEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_BLKR_Register use record
      BCNT   at 0 range 0 .. 15;
      BLKLEN at 0 range 16 .. 31;
   end record;

   subtype HSMCI_CSTOR_CSTOCYC_Field is HAL.UInt4;

   --  Completion Signal Timeout Multiplier
   type CSTOR_CSTOMUL_Field is
     (
      --  CSTOCYC x 1
      CSTOR_CSTOMUL_Field_1,
      --  CSTOCYC x 16
      CSTOR_CSTOMUL_Field_16,
      --  CSTOCYC x 128
      CSTOR_CSTOMUL_Field_128,
      --  CSTOCYC x 256
      CSTOR_CSTOMUL_Field_256,
      --  CSTOCYC x 1024
      CSTOR_CSTOMUL_Field_1024,
      --  CSTOCYC x 4096
      CSTOR_CSTOMUL_Field_4096,
      --  CSTOCYC x 65536
      CSTOR_CSTOMUL_Field_65536,
      --  CSTOCYC x 1048576
      CSTOR_CSTOMUL_Field_1048576)
     with Size => 3;
   for CSTOR_CSTOMUL_Field use
     (CSTOR_CSTOMUL_Field_1 => 0,
      CSTOR_CSTOMUL_Field_16 => 1,
      CSTOR_CSTOMUL_Field_128 => 2,
      CSTOR_CSTOMUL_Field_256 => 3,
      CSTOR_CSTOMUL_Field_1024 => 4,
      CSTOR_CSTOMUL_Field_4096 => 5,
      CSTOR_CSTOMUL_Field_65536 => 6,
      CSTOR_CSTOMUL_Field_1048576 => 7);

   --  Completion Signal Timeout Register
   type HSMCI_CSTOR_Register is record
      --  Completion Signal Timeout Cycle Number
      CSTOCYC       : HSMCI_CSTOR_CSTOCYC_Field := 16#0#;
      --  Completion Signal Timeout Multiplier
      CSTOMUL       : CSTOR_CSTOMUL_Field :=
                       SAM_SVD.HSMCI.CSTOR_CSTOMUL_Field_1;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_CSTOR_Register use record
      CSTOCYC       at 0 range 0 .. 3;
      CSTOMUL       at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Response Register

   --  Response Register
   type HSMCI_RSPR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Status Register
   type HSMCI_SR_Register is record
      --  Read-only. Command Ready
      CMDRDY          : Boolean;
      --  Read-only. Receiver Ready
      RXRDY           : Boolean;
      --  Read-only. Transmit Ready
      TXRDY           : Boolean;
      --  Read-only. Data Block Ended
      BLKE            : Boolean;
      --  Read-only. Data Transfer in Progress
      DTIP            : Boolean;
      --  Read-only. HSMCI Not Busy
      NOTBUSY         : Boolean;
      --  unspecified
      Reserved_6_7    : HAL.UInt2;
      --  Read-only.
      SDIOIRQforSlotA : Boolean;
      --  Read-only.
      SDIOIRQforSlotB : Boolean;
      --  unspecified
      Reserved_10_11  : HAL.UInt2;
      --  Read-only. SDIO Read Wait Operation Status
      SDIOWAIT        : Boolean;
      --  Read-only. CE-ATA Completion Signal Received
      CSRCV           : Boolean;
      --  unspecified
      Reserved_14_15  : HAL.UInt2;
      --  Read-only. Response Index Error
      RINDE           : Boolean;
      --  Read-only. Response Direction Error
      RDIRE           : Boolean;
      --  Read-only. Response CRC Error
      RCRCE           : Boolean;
      --  Read-only. Response End Bit Error
      RENDE           : Boolean;
      --  Read-only. Response Time-out Error
      RTOE            : Boolean;
      --  Read-only. Data CRC Error
      DCRCE           : Boolean;
      --  Read-only. Data Time-out Error
      DTOE            : Boolean;
      --  Read-only. Completion Signal Time-out Error
      CSTOE           : Boolean;
      --  Read-only. DMA Block Overrun Error
      BLKOVRE         : Boolean;
      --  Read-only. DMA Transfer done
      DMADONE         : Boolean;
      --  Read-only. FIFO empty flag
      FIFOEMPTY       : Boolean;
      --  Read-only. Transfer Done flag
      XFRDONE         : Boolean;
      --  Read-only. Boot Operation Acknowledge Received
      ACKRCV          : Boolean;
      --  Read-only. Boot Operation Acknowledge Error
      ACKRCVE         : Boolean;
      --  Read-only. Overrun
      OVRE            : Boolean;
      --  Read-only. Underrun
      UNRE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_SR_Register use record
      CMDRDY          at 0 range 0 .. 0;
      RXRDY           at 0 range 1 .. 1;
      TXRDY           at 0 range 2 .. 2;
      BLKE            at 0 range 3 .. 3;
      DTIP            at 0 range 4 .. 4;
      NOTBUSY         at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      SDIOIRQforSlotA at 0 range 8 .. 8;
      SDIOIRQforSlotB at 0 range 9 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      SDIOWAIT        at 0 range 12 .. 12;
      CSRCV           at 0 range 13 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      RINDE           at 0 range 16 .. 16;
      RDIRE           at 0 range 17 .. 17;
      RCRCE           at 0 range 18 .. 18;
      RENDE           at 0 range 19 .. 19;
      RTOE            at 0 range 20 .. 20;
      DCRCE           at 0 range 21 .. 21;
      DTOE            at 0 range 22 .. 22;
      CSTOE           at 0 range 23 .. 23;
      BLKOVRE         at 0 range 24 .. 24;
      DMADONE         at 0 range 25 .. 25;
      FIFOEMPTY       at 0 range 26 .. 26;
      XFRDONE         at 0 range 27 .. 27;
      ACKRCV          at 0 range 28 .. 28;
      ACKRCVE         at 0 range 29 .. 29;
      OVRE            at 0 range 30 .. 30;
      UNRE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Enable Register
   type HSMCI_IER_Register is record
      --  Write-only. Command Ready Interrupt Enable
      CMDRDY          : Boolean := False;
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY           : Boolean := False;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY           : Boolean := False;
      --  Write-only. Data Block Ended Interrupt Enable
      BLKE            : Boolean := False;
      --  Write-only. Data Transfer in Progress Interrupt Enable
      DTIP            : Boolean := False;
      --  Write-only. Data Not Busy Interrupt Enable
      NOTBUSY         : Boolean := False;
      --  unspecified
      Reserved_6_7    : HAL.UInt2 := 16#0#;
      --  Write-only.
      SDIOIRQforSlotA : Boolean := False;
      --  Write-only.
      SDIOIRQforSlotB : Boolean := False;
      --  unspecified
      Reserved_10_11  : HAL.UInt2 := 16#0#;
      --  Write-only. SDIO Read Wait Operation Status Interrupt Enable
      SDIOWAIT        : Boolean := False;
      --  Write-only. Completion Signal Received Interrupt Enable
      CSRCV           : Boolean := False;
      --  unspecified
      Reserved_14_15  : HAL.UInt2 := 16#0#;
      --  Write-only. Response Index Error Interrupt Enable
      RINDE           : Boolean := False;
      --  Write-only. Response Direction Error Interrupt Enable
      RDIRE           : Boolean := False;
      --  Write-only. Response CRC Error Interrupt Enable
      RCRCE           : Boolean := False;
      --  Write-only. Response End Bit Error Interrupt Enable
      RENDE           : Boolean := False;
      --  Write-only. Response Time-out Error Interrupt Enable
      RTOE            : Boolean := False;
      --  Write-only. Data CRC Error Interrupt Enable
      DCRCE           : Boolean := False;
      --  Write-only. Data Time-out Error Interrupt Enable
      DTOE            : Boolean := False;
      --  Write-only. Completion Signal Timeout Error Interrupt Enable
      CSTOE           : Boolean := False;
      --  Write-only. DMA Block Overrun Error Interrupt Enable
      BLKOVRE         : Boolean := False;
      --  Write-only. DMA Transfer completed Interrupt Enable
      DMADONE         : Boolean := False;
      --  Write-only. FIFO empty Interrupt enable
      FIFOEMPTY       : Boolean := False;
      --  Write-only. Transfer Done Interrupt enable
      XFRDONE         : Boolean := False;
      --  Write-only. Boot Acknowledge Interrupt Enable
      ACKRCV          : Boolean := False;
      --  Write-only. Boot Acknowledge Error Interrupt Enable
      ACKRCVE         : Boolean := False;
      --  Write-only. Overrun Interrupt Enable
      OVRE            : Boolean := False;
      --  Write-only. Underrun Interrupt Enable
      UNRE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_IER_Register use record
      CMDRDY          at 0 range 0 .. 0;
      RXRDY           at 0 range 1 .. 1;
      TXRDY           at 0 range 2 .. 2;
      BLKE            at 0 range 3 .. 3;
      DTIP            at 0 range 4 .. 4;
      NOTBUSY         at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      SDIOIRQforSlotA at 0 range 8 .. 8;
      SDIOIRQforSlotB at 0 range 9 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      SDIOWAIT        at 0 range 12 .. 12;
      CSRCV           at 0 range 13 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      RINDE           at 0 range 16 .. 16;
      RDIRE           at 0 range 17 .. 17;
      RCRCE           at 0 range 18 .. 18;
      RENDE           at 0 range 19 .. 19;
      RTOE            at 0 range 20 .. 20;
      DCRCE           at 0 range 21 .. 21;
      DTOE            at 0 range 22 .. 22;
      CSTOE           at 0 range 23 .. 23;
      BLKOVRE         at 0 range 24 .. 24;
      DMADONE         at 0 range 25 .. 25;
      FIFOEMPTY       at 0 range 26 .. 26;
      XFRDONE         at 0 range 27 .. 27;
      ACKRCV          at 0 range 28 .. 28;
      ACKRCVE         at 0 range 29 .. 29;
      OVRE            at 0 range 30 .. 30;
      UNRE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Disable Register
   type HSMCI_IDR_Register is record
      --  Write-only. Command Ready Interrupt Disable
      CMDRDY          : Boolean := False;
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY           : Boolean := False;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY           : Boolean := False;
      --  Write-only. Data Block Ended Interrupt Disable
      BLKE            : Boolean := False;
      --  Write-only. Data Transfer in Progress Interrupt Disable
      DTIP            : Boolean := False;
      --  Write-only. Data Not Busy Interrupt Disable
      NOTBUSY         : Boolean := False;
      --  unspecified
      Reserved_6_7    : HAL.UInt2 := 16#0#;
      --  Write-only.
      SDIOIRQforSlotA : Boolean := False;
      --  Write-only.
      SDIOIRQforSlotB : Boolean := False;
      --  unspecified
      Reserved_10_11  : HAL.UInt2 := 16#0#;
      --  Write-only. SDIO Read Wait Operation Status Interrupt Disable
      SDIOWAIT        : Boolean := False;
      --  Write-only. Completion Signal received interrupt Disable
      CSRCV           : Boolean := False;
      --  unspecified
      Reserved_14_15  : HAL.UInt2 := 16#0#;
      --  Write-only. Response Index Error Interrupt Disable
      RINDE           : Boolean := False;
      --  Write-only. Response Direction Error Interrupt Disable
      RDIRE           : Boolean := False;
      --  Write-only. Response CRC Error Interrupt Disable
      RCRCE           : Boolean := False;
      --  Write-only. Response End Bit Error Interrupt Disable
      RENDE           : Boolean := False;
      --  Write-only. Response Time-out Error Interrupt Disable
      RTOE            : Boolean := False;
      --  Write-only. Data CRC Error Interrupt Disable
      DCRCE           : Boolean := False;
      --  Write-only. Data Time-out Error Interrupt Disable
      DTOE            : Boolean := False;
      --  Write-only. Completion Signal Time out Error Interrupt Disable
      CSTOE           : Boolean := False;
      --  Write-only. DMA Block Overrun Error Interrupt Disable
      BLKOVRE         : Boolean := False;
      --  Write-only. DMA Transfer completed Interrupt Disable
      DMADONE         : Boolean := False;
      --  Write-only. FIFO empty Interrupt Disable
      FIFOEMPTY       : Boolean := False;
      --  Write-only. Transfer Done Interrupt Disable
      XFRDONE         : Boolean := False;
      --  Write-only. Boot Acknowledge Interrupt Disable
      ACKRCV          : Boolean := False;
      --  Write-only. Boot Acknowledge Error Interrupt Disable
      ACKRCVE         : Boolean := False;
      --  Write-only. Overrun Interrupt Disable
      OVRE            : Boolean := False;
      --  Write-only. Underrun Interrupt Disable
      UNRE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_IDR_Register use record
      CMDRDY          at 0 range 0 .. 0;
      RXRDY           at 0 range 1 .. 1;
      TXRDY           at 0 range 2 .. 2;
      BLKE            at 0 range 3 .. 3;
      DTIP            at 0 range 4 .. 4;
      NOTBUSY         at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      SDIOIRQforSlotA at 0 range 8 .. 8;
      SDIOIRQforSlotB at 0 range 9 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      SDIOWAIT        at 0 range 12 .. 12;
      CSRCV           at 0 range 13 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      RINDE           at 0 range 16 .. 16;
      RDIRE           at 0 range 17 .. 17;
      RCRCE           at 0 range 18 .. 18;
      RENDE           at 0 range 19 .. 19;
      RTOE            at 0 range 20 .. 20;
      DCRCE           at 0 range 21 .. 21;
      DTOE            at 0 range 22 .. 22;
      CSTOE           at 0 range 23 .. 23;
      BLKOVRE         at 0 range 24 .. 24;
      DMADONE         at 0 range 25 .. 25;
      FIFOEMPTY       at 0 range 26 .. 26;
      XFRDONE         at 0 range 27 .. 27;
      ACKRCV          at 0 range 28 .. 28;
      ACKRCVE         at 0 range 29 .. 29;
      OVRE            at 0 range 30 .. 30;
      UNRE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Mask Register
   type HSMCI_IMR_Register is record
      --  Read-only. Command Ready Interrupt Mask
      CMDRDY          : Boolean;
      --  Read-only. Receiver Ready Interrupt Mask
      RXRDY           : Boolean;
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY           : Boolean;
      --  Read-only. Data Block Ended Interrupt Mask
      BLKE            : Boolean;
      --  Read-only. Data Transfer in Progress Interrupt Mask
      DTIP            : Boolean;
      --  Read-only. Data Not Busy Interrupt Mask
      NOTBUSY         : Boolean;
      --  unspecified
      Reserved_6_7    : HAL.UInt2;
      --  Read-only.
      SDIOIRQforSlotA : Boolean;
      --  Read-only.
      SDIOIRQforSlotB : Boolean;
      --  unspecified
      Reserved_10_11  : HAL.UInt2;
      --  Read-only. SDIO Read Wait Operation Status Interrupt Mask
      SDIOWAIT        : Boolean;
      --  Read-only. Completion Signal Received Interrupt Mask
      CSRCV           : Boolean;
      --  unspecified
      Reserved_14_15  : HAL.UInt2;
      --  Read-only. Response Index Error Interrupt Mask
      RINDE           : Boolean;
      --  Read-only. Response Direction Error Interrupt Mask
      RDIRE           : Boolean;
      --  Read-only. Response CRC Error Interrupt Mask
      RCRCE           : Boolean;
      --  Read-only. Response End Bit Error Interrupt Mask
      RENDE           : Boolean;
      --  Read-only. Response Time-out Error Interrupt Mask
      RTOE            : Boolean;
      --  Read-only. Data CRC Error Interrupt Mask
      DCRCE           : Boolean;
      --  Read-only. Data Time-out Error Interrupt Mask
      DTOE            : Boolean;
      --  Read-only. Completion Signal Time-out Error Interrupt Mask
      CSTOE           : Boolean;
      --  Read-only. DMA Block Overrun Error Interrupt Mask
      BLKOVRE         : Boolean;
      --  Read-only. DMA Transfer Completed Interrupt Mask
      DMADONE         : Boolean;
      --  Read-only. FIFO Empty Interrupt Mask
      FIFOEMPTY       : Boolean;
      --  Read-only. Transfer Done Interrupt Mask
      XFRDONE         : Boolean;
      --  Read-only. Boot Operation Acknowledge Received Interrupt Mask
      ACKRCV          : Boolean;
      --  Read-only. Boot Operation Acknowledge Error Interrupt Mask
      ACKRCVE         : Boolean;
      --  Read-only. Overrun Interrupt Mask
      OVRE            : Boolean;
      --  Read-only. Underrun Interrupt Mask
      UNRE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_IMR_Register use record
      CMDRDY          at 0 range 0 .. 0;
      RXRDY           at 0 range 1 .. 1;
      TXRDY           at 0 range 2 .. 2;
      BLKE            at 0 range 3 .. 3;
      DTIP            at 0 range 4 .. 4;
      NOTBUSY         at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      SDIOIRQforSlotA at 0 range 8 .. 8;
      SDIOIRQforSlotB at 0 range 9 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      SDIOWAIT        at 0 range 12 .. 12;
      CSRCV           at 0 range 13 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      RINDE           at 0 range 16 .. 16;
      RDIRE           at 0 range 17 .. 17;
      RCRCE           at 0 range 18 .. 18;
      RENDE           at 0 range 19 .. 19;
      RTOE            at 0 range 20 .. 20;
      DCRCE           at 0 range 21 .. 21;
      DTOE            at 0 range 22 .. 22;
      CSTOE           at 0 range 23 .. 23;
      BLKOVRE         at 0 range 24 .. 24;
      DMADONE         at 0 range 25 .. 25;
      FIFOEMPTY       at 0 range 26 .. 26;
      XFRDONE         at 0 range 27 .. 27;
      ACKRCV          at 0 range 28 .. 28;
      ACKRCVE         at 0 range 29 .. 29;
      OVRE            at 0 range 30 .. 30;
      UNRE            at 0 range 31 .. 31;
   end record;

   subtype HSMCI_DMA_OFFSET_Field is HAL.UInt2;

   --  DMA Channel Read and Write Chunk Size
   type DMA_CHKSIZE_Field is
     (
      --  1 data available
      DMA_CHKSIZE_Field_1,
      --  4 data available
      DMA_CHKSIZE_Field_4)
     with Size => 1;
   for DMA_CHKSIZE_Field use
     (DMA_CHKSIZE_Field_1 => 0,
      DMA_CHKSIZE_Field_4 => 1);

   --  DMA Configuration Register
   type HSMCI_DMA_Register is record
      --  DMA Write Buffer Offset
      OFFSET         : HSMCI_DMA_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  DMA Channel Read and Write Chunk Size
      CHKSIZE        : DMA_CHKSIZE_Field := SAM_SVD.HSMCI.DMA_CHKSIZE_Field_1;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA Hardware Handshaking Enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Read Optimization with padding
      ROPT           : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_DMA_Register use record
      OFFSET         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CHKSIZE        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DMAEN          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      ROPT           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Configuration Register
   type HSMCI_CFG_Register is record
      --  HSMCI Internal FIFO control mode
      FIFOMODE       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Flow Error flag reset control mode
      FERRCTRL       : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  High Speed Mode
      HSMODE         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Synchronize on the last block
      LSYNC          : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_CFG_Register use record
      FIFOMODE       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      FERRCTRL       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      HSMODE         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      LSYNC          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Write Protect Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5063497);

   --  Write Protection Mode Register
   type HSMCI_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype HSMCI_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type HSMCI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : HSMCI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMCI_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  FIFO Memory Aperture0

   --  FIFO Memory Aperture0
   type HSMCI_FIFO_Registers is array (0 .. 255) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  High Speed MultiMedia Card Interface
   type HSMCI_Peripheral is record
      --  Control Register
      CR    : aliased HSMCI_CR_Register;
      --  Mode Register
      MR    : aliased HSMCI_MR_Register;
      --  Data Timeout Register
      DTOR  : aliased HSMCI_DTOR_Register;
      --  SD/SDIO Card Register
      SDCR  : aliased HSMCI_SDCR_Register;
      --  Argument Register
      ARGR  : aliased HAL.UInt32;
      --  Command Register
      CMDR  : aliased HSMCI_CMDR_Register;
      --  Block Register
      BLKR  : aliased HSMCI_BLKR_Register;
      --  Completion Signal Timeout Register
      CSTOR : aliased HSMCI_CSTOR_Register;
      --  Response Register
      RSPR  : aliased HSMCI_RSPR_Registers;
      --  Receive Data Register
      RDR   : aliased HAL.UInt32;
      --  Transmit Data Register
      TDR   : aliased HAL.UInt32;
      --  Status Register
      SR    : aliased HSMCI_SR_Register;
      --  Interrupt Enable Register
      IER   : aliased HSMCI_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased HSMCI_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased HSMCI_IMR_Register;
      --  DMA Configuration Register
      DMA   : aliased HSMCI_DMA_Register;
      --  Configuration Register
      CFG   : aliased HSMCI_CFG_Register;
      --  Write Protection Mode Register
      WPMR  : aliased HSMCI_WPMR_Register;
      --  Write Protection Status Register
      WPSR  : aliased HSMCI_WPSR_Register;
      --  FIFO Memory Aperture0
      FIFO  : aliased HSMCI_FIFO_Registers;
   end record
     with Volatile;

   for HSMCI_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      MR    at 16#4# range 0 .. 31;
      DTOR  at 16#8# range 0 .. 31;
      SDCR  at 16#C# range 0 .. 31;
      ARGR  at 16#10# range 0 .. 31;
      CMDR  at 16#14# range 0 .. 31;
      BLKR  at 16#18# range 0 .. 31;
      CSTOR at 16#1C# range 0 .. 31;
      RSPR  at 16#20# range 0 .. 127;
      RDR   at 16#30# range 0 .. 31;
      TDR   at 16#34# range 0 .. 31;
      SR    at 16#40# range 0 .. 31;
      IER   at 16#44# range 0 .. 31;
      IDR   at 16#48# range 0 .. 31;
      IMR   at 16#4C# range 0 .. 31;
      DMA   at 16#50# range 0 .. 31;
      CFG   at 16#54# range 0 .. 31;
      WPMR  at 16#E4# range 0 .. 31;
      WPSR  at 16#E8# range 0 .. 31;
      FIFO  at 16#200# range 0 .. 8191;
   end record;

   --  High Speed MultiMedia Card Interface
   HSMCI_Periph : aliased HSMCI_Peripheral
     with Import, Address => HSMCI_Base;

end SAM_SVD.HSMCI;
