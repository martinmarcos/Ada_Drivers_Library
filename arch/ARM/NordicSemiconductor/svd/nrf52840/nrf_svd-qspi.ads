--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52840.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.QSPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable or disable interrupt for READY event
   type INTEN_READY_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for READY event
      READY         : INTEN_READY_Field := NRF_SVD.QSPI.Disabled;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      READY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to Enable interrupt for READY event
   type INTENSET_READY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for READY event
   type INTENSET_READY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Ready_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_READY_Field_1 use
     (Intenset_Ready_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for READY event
      READY         : INTENSET_READY_Field_1 := Intenset_Ready_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      READY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to Disable interrupt for READY event
   type INTENCLR_READY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for READY event
   type INTENCLR_READY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Ready_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_READY_Field_1 use
     (Intenclr_Ready_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for READY event
      READY         : INTENCLR_READY_Field_1 := Intenclr_Ready_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      READY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable QSPI
   type ENABLE_ENABLE_Field is
     (
      --  Disable QSPI
      Disabled,
      --  Enable QSPI
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable QSPI peripheral and acquire the pins selected in PSELn registers
   type ENABLE_Register is record
      --  Enable or disable QSPI
      ENABLE        : ENABLE_ENABLE_Field := NRF_SVD.QSPI.Disabled;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------------
   -- READ cluster's Registers --
   ------------------------------

   subtype CNT_READ_CNT_Field is HAL.UInt21;

   --  Read transfer length
   type CNT_READ_Register is record
      --  Read transfer length in number of bytes. The length must be a
      --  multiple of 4 bytes.
      CNT            : CNT_READ_CNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_READ_Register use record
      CNT            at 0 range 0 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Unspecified
   type READ_Cluster is record
      --  Flash memory source address
      SRC : aliased HAL.UInt32;
      --  RAM destination address
      DST : aliased HAL.UInt32;
      --  Read transfer length
      CNT : aliased CNT_READ_Register;
   end record
     with Volatile, Size => 96;

   for READ_Cluster use record
      SRC at 16#0# range 0 .. 31;
      DST at 16#4# range 0 .. 31;
      CNT at 16#8# range 0 .. 31;
   end record;

   -------------------------------
   -- WRITE cluster's Registers --
   -------------------------------

   subtype CNT_WRITE_CNT_Field is HAL.UInt21;

   --  Write transfer length
   type CNT_WRITE_Register is record
      --  Write transfer length in number of bytes. The length must be a
      --  multiple of 4 bytes.
      CNT            : CNT_WRITE_CNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_WRITE_Register use record
      CNT            at 0 range 0 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Unspecified
   type WRITE_Cluster is record
      --  Flash destination address
      DST : aliased HAL.UInt32;
      --  RAM source address
      SRC : aliased HAL.UInt32;
      --  Write transfer length
      CNT : aliased CNT_WRITE_Register;
   end record
     with Volatile, Size => 96;

   for WRITE_Cluster use record
      DST at 16#0# range 0 .. 31;
      SRC at 16#4# range 0 .. 31;
      CNT at 16#8# range 0 .. 31;
   end record;

   -------------------------------
   -- ERASE cluster's Registers --
   -------------------------------

   --  LEN
   type LEN_LEN_Field is
     (
      --  Erase 4 kB block (flash command 0x20)
      LEN_LEN_Field_4Kb,
      --  Erase 64 kB block (flash command 0xD8)
      LEN_LEN_Field_64Kb,
      --  Erase all (flash command 0xC7)
      All_k)
     with Size => 2;
   for LEN_LEN_Field use
     (LEN_LEN_Field_4Kb => 0,
      LEN_LEN_Field_64Kb => 1,
      All_k => 2);

   --  Size of block to be erased.
   type LEN_ERASE_Register is record
      --  LEN
      LEN           : LEN_LEN_Field := NRF_SVD.QSPI.LEN_LEN_Field_4Kb;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEN_ERASE_Register use record
      LEN           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Unspecified
   type ERASE_Cluster is record
      --  Start address of flash block to be erased
      PTR : aliased HAL.UInt32;
      --  Size of block to be erased.
      LEN : aliased LEN_ERASE_Register;
   end record
     with Volatile, Size => 64;

   for ERASE_Cluster use record
      PTR at 16#0# range 0 .. 31;
      LEN at 16#4# range 0 .. 31;
   end record;

   ------------------------------
   -- PSEL cluster's Registers --
   ------------------------------

   subtype SCK_PSEL_PIN_Field is HAL.UInt5;

   --  Connection
   type SCK_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SCK_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for serial clock SCK
   type SCK_PSEL_Register is record
      --  Pin number
      PIN           : SCK_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : Boolean := True;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SCK_CONNECT_Field := NRF_SVD.QSPI.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCK_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype CSN_PSEL_PIN_Field is HAL.UInt5;

   --  Connection
   type CSN_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CSN_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for chip select signal CSN.
   type CSN_PSEL_Register is record
      --  Pin number
      PIN           : CSN_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : Boolean := True;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CSN_CONNECT_Field := NRF_SVD.QSPI.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSN_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype IO_PIN_Field is HAL.UInt5;

   --  Connection
   type IO0_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for IO0_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for serial data MOSI/IO0.
   type IO_Register is record
      --  Pin number
      PIN           : IO_PIN_Field := 16#1F#;
      --  Port number
      PORT          : Boolean := True;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : IO0_CONNECT_Field := NRF_SVD.QSPI.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IO_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type PSEL_Cluster is record
      --  Pin select for serial clock SCK
      SCK : aliased SCK_PSEL_Register;
      --  Pin select for chip select signal CSN.
      CSN : aliased CSN_PSEL_Register;
      --  Pin select for serial data MOSI/IO0.
      IO0 : aliased IO_Register;
      --  Pin select for serial data MISO/IO1.
      IO1 : aliased IO_Register;
      --  Pin select for serial data IO2.
      IO2 : aliased IO_Register;
      --  Pin select for serial data IO3.
      IO3 : aliased IO_Register;
   end record
     with Volatile, Size => 224;

   for PSEL_Cluster use record
      SCK at 16#0# range 0 .. 31;
      CSN at 16#4# range 0 .. 31;
      IO0 at 16#C# range 0 .. 31;
      IO1 at 16#10# range 0 .. 31;
      IO2 at 16#14# range 0 .. 31;
      IO3 at 16#18# range 0 .. 31;
   end record;

   --  Configure number of data lines and opcode used for reading.
   type IFCONFIG0_READOC_Field is
     (
      --  Single data line SPI. FAST_READ (opcode 0x0B).
      Fastread,
      --  Dual data line SPI. READ2O (opcode 0x3B).
      Read2O,
      --  Dual data line SPI. READ2IO (opcode 0xBB).
      Read2Io,
      --  Quad data line SPI. READ4O (opcode 0x6B).
      Read4O,
      --  Quad data line SPI. READ4IO (opcode 0xEB).
      Read4Io)
     with Size => 3;
   for IFCONFIG0_READOC_Field use
     (Fastread => 0,
      Read2O => 1,
      Read2Io => 2,
      Read4O => 3,
      Read4Io => 4);

   --  Configure number of data lines and opcode used for writing.
   type IFCONFIG0_WRITEOC_Field is
     (
      --  Single data line SPI. PP (opcode 0x02).
      Pp,
      --  Dual data line SPI. PP2O (opcode 0xA2).
      Pp2O,
      --  Quad data line SPI. PP4O (opcode 0x32).
      Pp4O,
      --  Quad data line SPI. PP4IO (opcode 0x38).
      Pp4Io)
     with Size => 3;
   for IFCONFIG0_WRITEOC_Field use
     (Pp => 0,
      Pp2O => 1,
      Pp4O => 2,
      Pp4Io => 3);

   --  Addressing mode.
   type IFCONFIG0_ADDRMODE_Field is
     (
      --  24-bit addressing.
      IFCONFIG0_ADDRMODE_Field_24Bit,
      --  32-bit addressing.
      IFCONFIG0_ADDRMODE_Field_32Bit)
     with Size => 1;
   for IFCONFIG0_ADDRMODE_Field use
     (IFCONFIG0_ADDRMODE_Field_24Bit => 0,
      IFCONFIG0_ADDRMODE_Field_32Bit => 1);

   --  Enable deep power-down mode (DPM) feature.
   type IFCONFIG0_DPMENABLE_Field is
     (
      --  Disable DPM feature.
      Disable,
      --  Enable DPM feature.
      Enable)
     with Size => 1;
   for IFCONFIG0_DPMENABLE_Field use
     (Disable => 0,
      Enable => 1);

   --  Page size for commands PP, PP2O, PP4O and PP4IO.
   type IFCONFIG0_PPSIZE_Field is
     (
      --  256 bytes.
      IFCONFIG0_PPSIZE_Field_256Bytes,
      --  512 bytes.
      IFCONFIG0_PPSIZE_Field_512Bytes)
     with Size => 1;
   for IFCONFIG0_PPSIZE_Field use
     (IFCONFIG0_PPSIZE_Field_256Bytes => 0,
      IFCONFIG0_PPSIZE_Field_512Bytes => 1);

   --  Interface configuration.
   type IFCONFIG0_Register is record
      --  Configure number of data lines and opcode used for reading.
      READOC         : IFCONFIG0_READOC_Field := NRF_SVD.QSPI.Fastread;
      --  Configure number of data lines and opcode used for writing.
      WRITEOC        : IFCONFIG0_WRITEOC_Field := NRF_SVD.QSPI.Pp;
      --  Addressing mode.
      ADDRMODE       : IFCONFIG0_ADDRMODE_Field :=
                        NRF_SVD.QSPI.IFCONFIG0_ADDRMODE_Field_24Bit;
      --  Enable deep power-down mode (DPM) feature.
      DPMENABLE      : IFCONFIG0_DPMENABLE_Field := NRF_SVD.QSPI.Disable;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Page size for commands PP, PP2O, PP4O and PP4IO.
      PPSIZE         : IFCONFIG0_PPSIZE_Field :=
                        NRF_SVD.QSPI.IFCONFIG0_PPSIZE_Field_256Bytes;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFCONFIG0_Register use record
      READOC         at 0 range 0 .. 2;
      WRITEOC        at 0 range 3 .. 5;
      ADDRMODE       at 0 range 6 .. 6;
      DPMENABLE      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      PPSIZE         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype IFCONFIG1_SCKDELAY_Field is HAL.UInt8;

   --  Enter/exit deep power-down mode (DPM) for external flash memory.
   type IFCONFIG1_DPMEN_Field is
     (
      --  Exit DPM.
      Exit_k,
      --  Enter DPM.
      Enter)
     with Size => 1;
   for IFCONFIG1_DPMEN_Field use
     (Exit_k => 0,
      Enter => 1);

   --  Select SPI mode.
   type IFCONFIG1_SPIMODE_Field is
     (
      --  Mode 0: Data are captured on the clock rising edge and data is output
      --  on a falling edge. Base level of clock is 0 (CPOL=0, CPHA=0).
      Mode0,
      --  Mode 3: Data are captured on the clock falling edge and data is
      --  output on a rising edge. Base level of clock is 1 (CPOL=1, CPHA=1).
      Mode3)
     with Size => 1;
   for IFCONFIG1_SPIMODE_Field use
     (Mode0 => 0,
      Mode3 => 1);

   subtype IFCONFIG1_SCKFREQ_Field is HAL.UInt4;

   --  Interface configuration.
   type IFCONFIG1_Register is record
      --  Minimum amount of time that the CSN pin must stay high before it can
      --  go low again. Value is specified in number of 16 MHz periods (62.5
      --  ns).
      SCKDELAY       : IFCONFIG1_SCKDELAY_Field := 16#80#;
      --  unspecified
      Reserved_8_23  : HAL.UInt16 := 16#404#;
      --  Enter/exit deep power-down mode (DPM) for external flash memory.
      DPMEN          : IFCONFIG1_DPMEN_Field := NRF_SVD.QSPI.Exit_k;
      --  Select SPI mode.
      SPIMODE        : IFCONFIG1_SPIMODE_Field := NRF_SVD.QSPI.Mode0;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  SCK frequency is given as 32 MHz / (SCKFREQ + 1).
      SCKFREQ        : IFCONFIG1_SCKFREQ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFCONFIG1_Register use record
      SCKDELAY       at 0 range 0 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      DPMEN          at 0 range 24 .. 24;
      SPIMODE        at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      SCKFREQ        at 0 range 28 .. 31;
   end record;

   --  Deep power-down mode (DPM) status of external flash.
   type STATUS_DPM_Field is
     (
      --  External flash is not in DPM.
      Disabled,
      --  External flash is in DPM.
      Enabled)
     with Size => 1;
   for STATUS_DPM_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Ready status.
   type STATUS_READY_Field is
     (
      --  QSPI peripheral is busy. It is not allowed to trigger any new tasks,
      --  writing custom instructions or enter/exit DPM.
      Busy,
      --  QSPI peripheral is ready. It is allowed to trigger new tasks, writing
      --  custom instructions or enter/exit DPM.
      Ready)
     with Size => 1;
   for STATUS_READY_Field use
     (Busy => 0,
      Ready => 1);

   subtype STATUS_SREG_Field is HAL.UInt8;

   --  Status register.
   type STATUS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. Deep power-down mode (DPM) status of external flash.
      DPM           : STATUS_DPM_Field;
      --  Read-only. Ready status.
      READY         : STATUS_READY_Field;
      --  unspecified
      Reserved_4_23 : HAL.UInt20;
      --  Read-only. Value of external flash device Status Register. When the
      --  external flash has two bytes status register this field includes the
      --  value of the low byte.
      SREG          : STATUS_SREG_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DPM           at 0 range 2 .. 2;
      READY         at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      SREG          at 0 range 24 .. 31;
   end record;

   subtype DPMDUR_ENTER_Field is HAL.UInt16;
   subtype DPMDUR_EXIT_Field is HAL.UInt16;

   --  Set the duration required to enter/exit deep power-down mode (DPM).
   type DPMDUR_Register is record
      --  Duration needed by external flash to enter DPM. Duration is given as
      --  ENTER * 256 * 62.5 ns.
      ENTER  : DPMDUR_ENTER_Field := 16#FFFF#;
      --  Duration needed by external flash to exit DPM. Duration is given as
      --  EXIT * 256 * 62.5 ns.
      EXIT_k : DPMDUR_EXIT_Field := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DPMDUR_Register use record
      ENTER  at 0 range 0 .. 15;
      EXIT_k at 0 range 16 .. 31;
   end record;

   subtype ADDRCONF_OPCODE_Field is HAL.UInt8;
   --  ADDRCONF_BYTE array element
   subtype ADDRCONF_BYTE_Element is HAL.UInt8;

   --  ADDRCONF_BYTE array
   type ADDRCONF_BYTE_Field_Array is array (0 .. 1) of ADDRCONF_BYTE_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ADDRCONF_BYTE
   type ADDRCONF_BYTE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : HAL.UInt16;
         when True =>
            --  BYTE as an array
            Arr : ADDRCONF_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADDRCONF_BYTE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Extended addressing mode.
   type ADDRCONF_MODE_Field is
     (
      --  Do not send any instruction.
      Noinstr,
      --  Send opcode.
      Opcode,
      --  Send opcode, byte0.
      Opbyte0,
      --  Send opcode, byte0, byte1.
      All_k)
     with Size => 2;
   for ADDRCONF_MODE_Field use
     (Noinstr => 0,
      Opcode => 1,
      Opbyte0 => 2,
      All_k => 3);

   --  Wait for write complete before sending command.
   type ADDRCONF_WIPWAIT_Field is
     (
      --  No wait.
      Disable,
      --  Wait.
      Enable)
     with Size => 1;
   for ADDRCONF_WIPWAIT_Field use
     (Disable => 0,
      Enable => 1);

   --  Send WREN (write enable opcode 0x06) before instruction.
   type ADDRCONF_WREN_Field is
     (
      --  Do not send WREN.
      Disable,
      --  Send WREN.
      Enable)
     with Size => 1;
   for ADDRCONF_WREN_Field use
     (Disable => 0,
      Enable => 1);

   --  Extended address configuration.
   type ADDRCONF_Register is record
      --  Opcode that enters the 32-bit addressing mode.
      OPCODE         : ADDRCONF_OPCODE_Field := 16#B7#;
      --  Byte 0 following opcode.
      BYTE           : ADDRCONF_BYTE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Extended addressing mode.
      MODE           : ADDRCONF_MODE_Field := NRF_SVD.QSPI.Noinstr;
      --  Wait for write complete before sending command.
      WIPWAIT        : ADDRCONF_WIPWAIT_Field := NRF_SVD.QSPI.Disable;
      --  Send WREN (write enable opcode 0x06) before instruction.
      WREN           : ADDRCONF_WREN_Field := NRF_SVD.QSPI.Disable;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDRCONF_Register use record
      OPCODE         at 0 range 0 .. 7;
      BYTE           at 0 range 8 .. 23;
      MODE           at 0 range 24 .. 25;
      WIPWAIT        at 0 range 26 .. 26;
      WREN           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CINSTRCONF_OPCODE_Field is HAL.UInt8;

   --  Length of custom instruction in number of bytes.
   type CINSTRCONF_LENGTH_Field is
     (
      --  Reset value for the field
      Cinstrconf_Length_Field_Reset,
      --  Send opcode only.
      CINSTRCONF_LENGTH_Field_1B,
      --  Send opcode, CINSTRDAT0.BYTE0.
      CINSTRCONF_LENGTH_Field_2B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT0.BYTE1.
      CINSTRCONF_LENGTH_Field_3B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT0.BYTE2.
      CINSTRCONF_LENGTH_Field_4B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT0.BYTE3.
      CINSTRCONF_LENGTH_Field_5B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT1.BYTE4.
      CINSTRCONF_LENGTH_Field_6B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT1.BYTE5.
      CINSTRCONF_LENGTH_Field_7B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT1.BYTE6.
      CINSTRCONF_LENGTH_Field_8B,
      --  Send opcode, CINSTRDAT0.BYTE0 -&gt; CINSTRDAT1.BYTE7.
      CINSTRCONF_LENGTH_Field_9B)
     with Size => 4;
   for CINSTRCONF_LENGTH_Field use
     (Cinstrconf_Length_Field_Reset => 0,
      CINSTRCONF_LENGTH_Field_1B => 1,
      CINSTRCONF_LENGTH_Field_2B => 2,
      CINSTRCONF_LENGTH_Field_3B => 3,
      CINSTRCONF_LENGTH_Field_4B => 4,
      CINSTRCONF_LENGTH_Field_5B => 5,
      CINSTRCONF_LENGTH_Field_6B => 6,
      CINSTRCONF_LENGTH_Field_7B => 7,
      CINSTRCONF_LENGTH_Field_8B => 8,
      CINSTRCONF_LENGTH_Field_9B => 9);

   --  CINSTRCONF_LIO array
   type CINSTRCONF_LIO_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CINSTRCONF_LIO
   type CINSTRCONF_LIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LIO as a value
            Val : HAL.UInt2;
         when True =>
            --  LIO as an array
            Arr : CINSTRCONF_LIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CINSTRCONF_LIO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Wait for write complete before sending command.
   type CINSTRCONF_WIPWAIT_Field is
     (
      --  No wait.
      Disable,
      --  Wait.
      Enable)
     with Size => 1;
   for CINSTRCONF_WIPWAIT_Field use
     (Disable => 0,
      Enable => 1);

   --  Send WREN (write enable opcode 0x06) before instruction.
   type CINSTRCONF_WREN_Field is
     (
      --  Do not send WREN.
      Disable,
      --  Send WREN.
      Enable)
     with Size => 1;
   for CINSTRCONF_WREN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable long frame mode. When enabled, a custom instruction transaction
   --  has to be ended by writing the LFSTOP field.
   type CINSTRCONF_LFEN_Field is
     (
      --  Long frame mode disabled
      Disable,
      --  Long frame mode enabled
      Enable)
     with Size => 1;
   for CINSTRCONF_LFEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop (finalize) long frame transaction
   type CINSTRCONF_LFSTOP_Field is
     (
      --  Reset value for the field
      Cinstrconf_Lfstop_Field_Reset,
      --  Stop
      Stop)
     with Size => 1;
   for CINSTRCONF_LFSTOP_Field use
     (Cinstrconf_Lfstop_Field_Reset => 0,
      Stop => 1);

   --  Custom instruction configuration register.
   type CINSTRCONF_Register is record
      --  Opcode of Custom instruction.
      OPCODE         : CINSTRCONF_OPCODE_Field := 16#0#;
      --  Length of custom instruction in number of bytes.
      LENGTH         : CINSTRCONF_LENGTH_Field :=
                        Cinstrconf_Length_Field_Reset;
      --  Level of the IO2 pin (if connected) during transmission of custom
      --  instruction.
      LIO            : CINSTRCONF_LIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Wait for write complete before sending command.
      WIPWAIT        : CINSTRCONF_WIPWAIT_Field := NRF_SVD.QSPI.Disable;
      --  Send WREN (write enable opcode 0x06) before instruction.
      WREN           : CINSTRCONF_WREN_Field := NRF_SVD.QSPI.Disable;
      --  Enable long frame mode. When enabled, a custom instruction
      --  transaction has to be ended by writing the LFSTOP field.
      LFEN           : CINSTRCONF_LFEN_Field := NRF_SVD.QSPI.Disable;
      --  Stop (finalize) long frame transaction
      LFSTOP         : CINSTRCONF_LFSTOP_Field :=
                        Cinstrconf_Lfstop_Field_Reset;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CINSTRCONF_Register use record
      OPCODE         at 0 range 0 .. 7;
      LENGTH         at 0 range 8 .. 11;
      LIO            at 0 range 12 .. 13;
      WIPWAIT        at 0 range 14 .. 14;
      WREN           at 0 range 15 .. 15;
      LFEN           at 0 range 16 .. 16;
      LFSTOP         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  CINSTRDAT0_BYTE array element
   subtype CINSTRDAT0_BYTE_Element is HAL.UInt8;

   --  CINSTRDAT0_BYTE array
   type CINSTRDAT0_BYTE_Field_Array is array (0 .. 3)
     of CINSTRDAT0_BYTE_Element
     with Component_Size => 8, Size => 32;

   --  Custom instruction data register 0.
   type CINSTRDAT0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : HAL.UInt32;
         when True =>
            --  BYTE as an array
            Arr : CINSTRDAT0_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CINSTRDAT0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CINSTRDAT1_BYTE array element
   subtype CINSTRDAT1_BYTE_Element is HAL.UInt8;

   --  CINSTRDAT1_BYTE array
   type CINSTRDAT1_BYTE_Field_Array is array (4 .. 7)
     of CINSTRDAT1_BYTE_Element
     with Component_Size => 8, Size => 32;

   --  Custom instruction data register 1.
   type CINSTRDAT1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : HAL.UInt32;
         when True =>
            --  BYTE as an array
            Arr : CINSTRDAT1_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CINSTRDAT1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype IFTIMING_RXDELAY_Field is HAL.UInt3;

   --  SPI interface timing.
   type IFTIMING_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Timing related to sampling of the input serial data. The value of
      --  RXDELAY specifies the number of 64 MHz cycles (15.625 ns) delay from
      --  the the rising edge of the SPI Clock (SCK) until the input serial
      --  data is sampled. As en example, if set to 0 the input serial data is
      --  sampled on the rising edge of SCK.
      RXDELAY        : IFTIMING_RXDELAY_Field := 16#2#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFTIMING_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RXDELAY        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External flash interface
   type QSPI_Peripheral is record
      --  Activate QSPI interface
      TASKS_ACTIVATE   : aliased HAL.UInt32;
      --  Start transfer from external flash memory to internal RAM
      TASKS_READSTART  : aliased HAL.UInt32;
      --  Start transfer from internal RAM to external flash memory
      TASKS_WRITESTART : aliased HAL.UInt32;
      --  Start external flash memory erase operation
      TASKS_ERASESTART : aliased HAL.UInt32;
      --  Deactivate QSPI interface
      TASKS_DEACTIVATE : aliased HAL.UInt32;
      --  QSPI peripheral is ready. This event will be generated as a response
      --  to any QSPI task.
      EVENTS_READY     : aliased HAL.UInt32;
      --  Enable or disable interrupt
      INTEN            : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET         : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR         : aliased INTENCLR_Register;
      --  Enable QSPI peripheral and acquire the pins selected in PSELn
      --  registers
      ENABLE           : aliased ENABLE_Register;
      --  Unspecified
      READ             : aliased READ_Cluster;
      --  Unspecified
      WRITE            : aliased WRITE_Cluster;
      --  Unspecified
      ERASE            : aliased ERASE_Cluster;
      --  Unspecified
      PSEL             : aliased PSEL_Cluster;
      --  Address offset into the external memory for Execute in Place
      --  operation.
      XIPOFFSET        : aliased HAL.UInt32;
      --  Interface configuration.
      IFCONFIG0        : aliased IFCONFIG0_Register;
      --  Interface configuration.
      IFCONFIG1        : aliased IFCONFIG1_Register;
      --  Status register.
      STATUS           : aliased STATUS_Register;
      --  Set the duration required to enter/exit deep power-down mode (DPM).
      DPMDUR           : aliased DPMDUR_Register;
      --  Extended address configuration.
      ADDRCONF         : aliased ADDRCONF_Register;
      --  Custom instruction configuration register.
      CINSTRCONF       : aliased CINSTRCONF_Register;
      --  Custom instruction data register 0.
      CINSTRDAT0       : aliased CINSTRDAT0_Register;
      --  Custom instruction data register 1.
      CINSTRDAT1       : aliased CINSTRDAT1_Register;
      --  SPI interface timing.
      IFTIMING         : aliased IFTIMING_Register;
   end record
     with Volatile;

   for QSPI_Peripheral use record
      TASKS_ACTIVATE   at 16#0# range 0 .. 31;
      TASKS_READSTART  at 16#4# range 0 .. 31;
      TASKS_WRITESTART at 16#8# range 0 .. 31;
      TASKS_ERASESTART at 16#C# range 0 .. 31;
      TASKS_DEACTIVATE at 16#10# range 0 .. 31;
      EVENTS_READY     at 16#100# range 0 .. 31;
      INTEN            at 16#300# range 0 .. 31;
      INTENSET         at 16#304# range 0 .. 31;
      INTENCLR         at 16#308# range 0 .. 31;
      ENABLE           at 16#500# range 0 .. 31;
      READ             at 16#504# range 0 .. 95;
      WRITE            at 16#510# range 0 .. 95;
      ERASE            at 16#51C# range 0 .. 63;
      PSEL             at 16#524# range 0 .. 223;
      XIPOFFSET        at 16#540# range 0 .. 31;
      IFCONFIG0        at 16#544# range 0 .. 31;
      IFCONFIG1        at 16#600# range 0 .. 31;
      STATUS           at 16#604# range 0 .. 31;
      DPMDUR           at 16#614# range 0 .. 31;
      ADDRCONF         at 16#624# range 0 .. 31;
      CINSTRCONF       at 16#634# range 0 .. 31;
      CINSTRDAT0       at 16#638# range 0 .. 31;
      CINSTRDAT1       at 16#63C# range 0 .. 31;
      IFTIMING         at 16#640# range 0 .. 31;
   end record;

   --  External flash interface
   QSPI_Periph : aliased QSPI_Peripheral
     with Import, Address => System'To_Address (16#40029000#);

end NRF_SVD.QSPI;
