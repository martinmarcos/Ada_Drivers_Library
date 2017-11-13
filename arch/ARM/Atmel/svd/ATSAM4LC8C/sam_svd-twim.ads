--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAM4LC8C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TWIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type TWIM_CR_Register is record
      --  Write-only. Master Enable
      MEN           : Boolean := False;
      --  Write-only. Master Disable
      MDIS          : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Write-only. SMBus Enable
      SMEN          : Boolean := False;
      --  Write-only. SMBus Disable
      SMDIS         : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  Write-only. Stop the current transfer
      STOP          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_CR_Register use record
      MEN           at 0 range 0 .. 0;
      MDIS          at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SMEN          at 0 range 4 .. 4;
      SMDIS         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SWRST         at 0 range 7 .. 7;
      STOP          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TWIM_CWGR_LOW_Field is HAL.UInt8;
   subtype TWIM_CWGR_HIGH_Field is HAL.UInt8;
   subtype TWIM_CWGR_STASTO_Field is HAL.UInt8;
   subtype TWIM_CWGR_DATA_Field is HAL.UInt4;
   subtype TWIM_CWGR_EXP_Field is HAL.UInt3;

   --  Clock Waveform Generator Register
   type TWIM_CWGR_Register is record
      --  Clock Low Cycles
      LOW            : TWIM_CWGR_LOW_Field := 16#0#;
      --  Clock High Cycles
      HIGH           : TWIM_CWGR_HIGH_Field := 16#0#;
      --  START and STOP Cycles
      STASTO         : TWIM_CWGR_STASTO_Field := 16#0#;
      --  Data Setup and Hold Cycles
      DATA           : TWIM_CWGR_DATA_Field := 16#0#;
      --  Clock Prescaler
      EXP            : TWIM_CWGR_EXP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_CWGR_Register use record
      LOW            at 0 range 0 .. 7;
      HIGH           at 0 range 8 .. 15;
      STASTO         at 0 range 16 .. 23;
      DATA           at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TWIM_SMBTR_TLOWS_Field is HAL.UInt8;
   subtype TWIM_SMBTR_TLOWM_Field is HAL.UInt8;
   subtype TWIM_SMBTR_THMAX_Field is HAL.UInt8;
   subtype TWIM_SMBTR_EXP_Field is HAL.UInt4;

   --  SMBus Timing Register
   type TWIM_SMBTR_Register is record
      --  Slave Clock stretch maximum cycles
      TLOWS          : TWIM_SMBTR_TLOWS_Field := 16#0#;
      --  Master Clock stretch maximum cycles
      TLOWM          : TWIM_SMBTR_TLOWM_Field := 16#0#;
      --  Clock High maximum cycles
      THMAX          : TWIM_SMBTR_THMAX_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  SMBus Timeout Clock prescaler
      EXP            : TWIM_SMBTR_EXP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SMBTR_Register use record
      TLOWS          at 0 range 0 .. 7;
      TLOWM          at 0 range 8 .. 15;
      THMAX          at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 31;
   end record;

   subtype TWIM_CMDR_SADR_Field is HAL.UInt10;
   subtype TWIM_CMDR_NBYTES_Field is HAL.UInt8;
   subtype TWIM_CMDR_HSMCODE_Field is HAL.UInt3;

   --  Command Register
   type TWIM_CMDR_Register is record
      --  Transfer Direction
      READ           : Boolean := False;
      --  Slave Address
      SADR           : TWIM_CMDR_SADR_Field := 16#0#;
      --  Ten Bit Addressing Mode
      TENBIT         : Boolean := False;
      --  Transfer is to same address as previous address
      REPSAME        : Boolean := False;
      --  Send START condition
      START          : Boolean := False;
      --  Send STOP condition
      STOP           : Boolean := False;
      --  CMDR Valid
      VALID          : Boolean := False;
      --  Number of data bytes in transfer
      NBYTES         : TWIM_CMDR_NBYTES_Field := 16#0#;
      --  Packet Error Checking Enable
      PECEN          : Boolean := False;
      --  ACK Last Master RX Byte
      ACKLAST        : Boolean := False;
      --  HS-mode
      HS             : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  HS-mode Master Code
      HSMCODE        : TWIM_CMDR_HSMCODE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_CMDR_Register use record
      READ           at 0 range 0 .. 0;
      SADR           at 0 range 1 .. 10;
      TENBIT         at 0 range 11 .. 11;
      REPSAME        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      VALID          at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      PECEN          at 0 range 24 .. 24;
      ACKLAST        at 0 range 25 .. 25;
      HS             at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      HSMCODE        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TWIM_NCMDR_SADR_Field is HAL.UInt10;
   subtype TWIM_NCMDR_NBYTES_Field is HAL.UInt8;
   subtype TWIM_NCMDR_HSMCODE_Field is HAL.UInt3;

   --  Next Command Register
   type TWIM_NCMDR_Register is record
      --  Transfer Direction
      READ           : Boolean := False;
      --  Slave Address
      SADR           : TWIM_NCMDR_SADR_Field := 16#0#;
      --  Ten Bit Addressing Mode
      TENBIT         : Boolean := False;
      --  Transfer is to same address as previous address
      REPSAME        : Boolean := False;
      --  Send START condition
      START          : Boolean := False;
      --  Send STOP condition
      STOP           : Boolean := False;
      --  CMDR Valid
      VALID          : Boolean := False;
      --  Number of data bytes in transfer
      NBYTES         : TWIM_NCMDR_NBYTES_Field := 16#0#;
      --  Packet Error Checking Enable
      PECEN          : Boolean := False;
      --  ACK Last Master RX Byte
      ACKLAST        : Boolean := False;
      --  HS-mode
      HS             : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  HS-mode Master Code
      HSMCODE        : TWIM_NCMDR_HSMCODE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_NCMDR_Register use record
      READ           at 0 range 0 .. 0;
      SADR           at 0 range 1 .. 10;
      TENBIT         at 0 range 11 .. 11;
      REPSAME        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      VALID          at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      PECEN          at 0 range 24 .. 24;
      ACKLAST        at 0 range 25 .. 25;
      HS             at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      HSMCODE        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TWIM_RHR_RXDATA_Field is HAL.UInt8;

   --  Receive Holding Register
   type TWIM_RHR_Register is record
      --  Read-only. Received Data
      RXDATA        : TWIM_RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWIM_THR_TXDATA_Field is HAL.UInt8;

   --  Transmit Holding Register
   type TWIM_THR_Register is record
      --  Write-only. Data to Transmit
      TXDATA        : TWIM_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Status Register
   type TWIM_SR_Register is record
      --  Read-only. RHR Data Ready
      RXRDY          : Boolean;
      --  Read-only. THR Data Ready
      TXRDY          : Boolean;
      --  Read-only. Ready for More Commands
      CRDY           : Boolean;
      --  Read-only. Command Complete
      CCOMP          : Boolean;
      --  Read-only. Master Interface is Idle
      IDLE           : Boolean;
      --  Read-only. Two-wire Bus is Free
      BUSFREE        : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. NAK in Address Phase Received
      ANAK           : Boolean;
      --  Read-only. NAK in Data Phase Received
      DNAK           : Boolean;
      --  Read-only. Arbitration Lost
      ARBLST         : Boolean;
      --  Read-only. SMBus Alert
      SMBALERT       : Boolean;
      --  Read-only. Timeout
      TOUT           : Boolean;
      --  Read-only. PEC Error
      PECERR         : Boolean;
      --  Read-only. Stop Request Accepted
      STOP           : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Master Interface Enable
      MENB           : Boolean;
      --  Read-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MENB           at 0 range 16 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Interrupt Enable Register
   type TWIM_IER_Register is record
      --  Write-only. RHR Data Ready
      RXRDY          : Boolean := False;
      --  Write-only. THR Data Ready
      TXRDY          : Boolean := False;
      --  Write-only. Ready for More Commands
      CRDY           : Boolean := False;
      --  Write-only. Command Complete
      CCOMP          : Boolean := False;
      --  Write-only. Master Interface is Idle
      IDLE           : Boolean := False;
      --  Write-only. Two-wire Bus is Free
      BUSFREE        : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. NAK in Address Phase Received
      ANAK           : Boolean := False;
      --  Write-only. NAK in Data Phase Received
      DNAK           : Boolean := False;
      --  Write-only. Arbitration Lost
      ARBLST         : Boolean := False;
      --  Write-only. SMBus Alert
      SMBALERT       : Boolean := False;
      --  Write-only. Timeout
      TOUT           : Boolean := False;
      --  Write-only. PEC Error
      PECERR         : Boolean := False;
      --  Write-only. Stop Request Accepted
      STOP           : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Interrupt Disable Register
   type TWIM_IDR_Register is record
      --  Write-only. RHR Data Ready
      RXRDY          : Boolean := False;
      --  Write-only. THR Data Ready
      TXRDY          : Boolean := False;
      --  Write-only. Ready for More Commands
      CRDY           : Boolean := False;
      --  Write-only. Command Complete
      CCOMP          : Boolean := False;
      --  Write-only. Master Interface is Idle
      IDLE           : Boolean := False;
      --  Write-only. Two-wire Bus is Free
      BUSFREE        : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. NAK in Address Phase Received
      ANAK           : Boolean := False;
      --  Write-only. NAK in Data Phase Received
      DNAK           : Boolean := False;
      --  Write-only. Arbitration Lost
      ARBLST         : Boolean := False;
      --  Write-only. SMBus Alert
      SMBALERT       : Boolean := False;
      --  Write-only. Timeout
      TOUT           : Boolean := False;
      --  Write-only. PEC Error
      PECERR         : Boolean := False;
      --  Write-only. Stop Request Accepted
      STOP           : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Interrupt Mask Register
   type TWIM_IMR_Register is record
      --  Read-only. RHR Data Ready
      RXRDY          : Boolean;
      --  Read-only. THR Data Ready
      TXRDY          : Boolean;
      --  Read-only. Ready for More Commands
      CRDY           : Boolean;
      --  Read-only. Command Complete
      CCOMP          : Boolean;
      --  Read-only. Master Interface is Idle
      IDLE           : Boolean;
      --  Read-only. Two-wire Bus is Free
      BUSFREE        : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. NAK in Address Phase Received
      ANAK           : Boolean;
      --  Read-only. NAK in Data Phase Received
      DNAK           : Boolean;
      --  Read-only. Arbitration Lost
      ARBLST         : Boolean;
      --  Read-only. SMBus Alert
      SMBALERT       : Boolean;
      --  Read-only. Timeout
      TOUT           : Boolean;
      --  Read-only. PEC Error
      PECERR         : Boolean;
      --  Read-only. Stop Request Accepted
      STOP           : Boolean;
      --  unspecified
      Reserved_15_16 : HAL.UInt2;
      --  Read-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Status Clear Register
   type TWIM_SCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Write-only. Command Complete
      CCOMP          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. NAK in Address Phase Received
      ANAK           : Boolean := False;
      --  Write-only. NAK in Data Phase Received
      DNAK           : Boolean := False;
      --  Write-only. Arbitration Lost
      ARBLST         : Boolean := False;
      --  Write-only. SMBus Alert
      SMBALERT       : Boolean := False;
      --  Write-only. Timeout
      TOUT           : Boolean := False;
      --  Write-only. PEC Error
      PECERR         : Boolean := False;
      --  Write-only. Stop Request Accepted
      STOP           : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CCOMP          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Parameter Register
   type TWIM_PR_Register is record
      --  Read-only. HS-mode
      HS            : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_PR_Register use record
      HS            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TWIM_VR_VERSION_Field is HAL.UInt12;
   subtype TWIM_VR_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type TWIM_VR_Register is record
      --  Read-only. Version number
      VERSION        : TWIM_VR_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : TWIM_VR_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_VR_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TWIM_HSCWGR_LOW_Field is HAL.UInt8;
   subtype TWIM_HSCWGR_HIGH_Field is HAL.UInt8;
   subtype TWIM_HSCWGR_STASTO_Field is HAL.UInt8;
   subtype TWIM_HSCWGR_DATA_Field is HAL.UInt4;
   subtype TWIM_HSCWGR_EXP_Field is HAL.UInt3;

   --  HS-mode Clock Waveform Generator
   type TWIM_HSCWGR_Register is record
      --  Clock Low Cycles
      LOW            : TWIM_HSCWGR_LOW_Field := 16#0#;
      --  Clock High Cycles
      HIGH           : TWIM_HSCWGR_HIGH_Field := 16#0#;
      --  START and STOP Cycles
      STASTO         : TWIM_HSCWGR_STASTO_Field := 16#0#;
      --  Data Setup and Hold Cycles
      DATA           : TWIM_HSCWGR_DATA_Field := 16#0#;
      --  Clock Prescaler
      EXP            : TWIM_HSCWGR_EXP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_HSCWGR_Register use record
      LOW            at 0 range 0 .. 7;
      HIGH           at 0 range 8 .. 15;
      STASTO         at 0 range 16 .. 23;
      DATA           at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TWIM_SRR_DADRIVEL_Field is HAL.UInt3;
   subtype TWIM_SRR_DASLEW_Field is HAL.UInt2;
   subtype TWIM_SRR_CLDRIVEL_Field is HAL.UInt3;
   subtype TWIM_SRR_CLSLEW_Field is HAL.UInt2;
   subtype TWIM_SRR_FILTER_Field is HAL.UInt2;

   --  Slew Rate Register
   type TWIM_SRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : TWIM_SRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : TWIM_SRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Clock Drive Strength LOW
      CLDRIVEL       : TWIM_SRR_CLDRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Clock Slew Limit
      CLSLEW         : TWIM_SRR_CLSLEW_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : TWIM_SRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CLDRIVEL       at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      CLSLEW         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TWIM_HSSRR_DADRIVEL_Field is HAL.UInt3;
   subtype TWIM_HSSRR_DASLEW_Field is HAL.UInt2;
   subtype TWIM_HSSRR_CLDRIVEL_Field is HAL.UInt3;
   subtype TWIM_HSSRR_CLDRIVEH_Field is HAL.UInt2;
   subtype TWIM_HSSRR_CLSLEW_Field is HAL.UInt2;
   subtype TWIM_HSSRR_FILTER_Field is HAL.UInt2;

   --  HS-mode Slew Rate Register
   type TWIM_HSSRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : TWIM_HSSRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : TWIM_HSSRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Clock Drive Strength LOW
      CLDRIVEL       : TWIM_HSSRR_CLDRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Clock Drive Strength HIGH
      CLDRIVEH       : TWIM_HSSRR_CLDRIVEH_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Clock Slew Limit
      CLSLEW         : TWIM_HSSRR_CLSLEW_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : TWIM_HSSRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_HSSRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CLDRIVEL       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CLDRIVEH       at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CLSLEW         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-wire Master Interface 0
   type TWIM_Peripheral is record
      --  Control Register
      CR     : aliased TWIM_CR_Register;
      --  Clock Waveform Generator Register
      CWGR   : aliased TWIM_CWGR_Register;
      --  SMBus Timing Register
      SMBTR  : aliased TWIM_SMBTR_Register;
      --  Command Register
      CMDR   : aliased TWIM_CMDR_Register;
      --  Next Command Register
      NCMDR  : aliased TWIM_NCMDR_Register;
      --  Receive Holding Register
      RHR    : aliased TWIM_RHR_Register;
      --  Transmit Holding Register
      THR    : aliased TWIM_THR_Register;
      --  Status Register
      SR     : aliased TWIM_SR_Register;
      --  Interrupt Enable Register
      IER    : aliased TWIM_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased TWIM_IDR_Register;
      --  Interrupt Mask Register
      IMR    : aliased TWIM_IMR_Register;
      --  Status Clear Register
      SCR    : aliased TWIM_SCR_Register;
      --  Parameter Register
      PR     : aliased TWIM_PR_Register;
      --  Version Register
      VR     : aliased TWIM_VR_Register;
      --  HS-mode Clock Waveform Generator
      HSCWGR : aliased TWIM_HSCWGR_Register;
      --  Slew Rate Register
      SRR    : aliased TWIM_SRR_Register;
      --  HS-mode Slew Rate Register
      HSSRR  : aliased TWIM_HSSRR_Register;
   end record
     with Volatile;

   for TWIM_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      CWGR   at 16#4# range 0 .. 31;
      SMBTR  at 16#8# range 0 .. 31;
      CMDR   at 16#C# range 0 .. 31;
      NCMDR  at 16#10# range 0 .. 31;
      RHR    at 16#14# range 0 .. 31;
      THR    at 16#18# range 0 .. 31;
      SR     at 16#1C# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      SCR    at 16#2C# range 0 .. 31;
      PR     at 16#30# range 0 .. 31;
      VR     at 16#34# range 0 .. 31;
      HSCWGR at 16#38# range 0 .. 31;
      SRR    at 16#3C# range 0 .. 31;
      HSSRR  at 16#40# range 0 .. 31;
   end record;

   --  Two-wire Master Interface 0
   TWIM0_Periph : aliased TWIM_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

   --  Two-wire Master Interface 1
   TWIM1_Periph : aliased TWIM_Peripheral
     with Import, Address => System'To_Address (16#4001C000#);

   --  Two-wire Master Interface 2
   TWIM2_Periph : aliased TWIM_Peripheral
     with Import, Address => System'To_Address (16#40078000#);

   --  Two-wire Master Interface 3
   TWIM3_Periph : aliased TWIM_Peripheral
     with Import, Address => System'To_Address (16#4007C000#);

end SAM_SVD.TWIM;
