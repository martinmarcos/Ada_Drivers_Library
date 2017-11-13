--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAME51J20A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.CAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CAN_CREL_SUBSTEP_Field is HAL.UInt4;
   subtype CAN_CREL_STEP_Field is HAL.UInt4;
   subtype CAN_CREL_REL_Field is HAL.UInt4;

   --  Core Release
   type CAN_CREL_Register is record
      --  unspecified
      Reserved_0_19 : HAL.UInt20;
      --  Read-only. Sub-step of Core Release
      SUBSTEP       : CAN_CREL_SUBSTEP_Field;
      --  Read-only. Step of Core Release
      STEP          : CAN_CREL_STEP_Field;
      --  Read-only. Core Release
      REL           : CAN_CREL_REL_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_CREL_Register use record
      Reserved_0_19 at 0 range 0 .. 19;
      SUBSTEP       at 0 range 20 .. 23;
      STEP          at 0 range 24 .. 27;
      REL           at 0 range 28 .. 31;
   end record;

   --  Quality of Service
   type MRCFG_QOSSelect is
     (
      --  Background (no sensitive operation)
      Disable,
      --  Sensitive Bandwidth
      Low,
      --  Sensitive Latency
      Medium,
      --  Critical Latency
      High)
     with Size => 2;
   for MRCFG_QOSSelect use
     (Disable => 0,
      Low => 1,
      Medium => 2,
      High => 3);

   --  Message RAM Configuration
   type CAN_MRCFG_Register is record
      --  Quality of Service
      QOS           : MRCFG_QOSSelect := SAM_SVD.CAN.Medium;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_MRCFG_Register use record
      QOS           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CAN_DBTP_DSJW_Field is HAL.UInt4;
   subtype CAN_DBTP_DTSEG2_Field is HAL.UInt4;
   subtype CAN_DBTP_DTSEG1_Field is HAL.UInt5;
   subtype CAN_DBTP_DBRP_Field is HAL.UInt5;

   --  Fast Bit Timing and Prescaler
   type CAN_DBTP_Register is record
      --  Data (Re)Synchronization Jump Width
      DSJW           : CAN_DBTP_DSJW_Field := 16#3#;
      --  Data time segment after sample point
      DTSEG2         : CAN_DBTP_DTSEG2_Field := 16#3#;
      --  Data time segment before sample point
      DTSEG1         : CAN_DBTP_DTSEG1_Field := 16#A#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Data Baud Rate Prescaler
      DBRP           : CAN_DBTP_DBRP_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Tranceiver Delay Compensation
      TDC            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_DBTP_Register use record
      DSJW           at 0 range 0 .. 3;
      DTSEG2         at 0 range 4 .. 7;
      DTSEG1         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBRP           at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      TDC            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Control of Transmit Pin
   type TEST_TXSelect is
     (
      --  TX controlled by CAN core
      Core,
      --  TX monitoring sample point
      Sample,
      --  Dominant (0) level at pin CAN_TX
      Dominant,
      --  Recessive (1) level at pin CAN_TX
      Recessive)
     with Size => 2;
   for TEST_TXSelect use
     (Core => 0,
      Sample => 1,
      Dominant => 2,
      Recessive => 3);

   --  Test
   type CAN_TEST_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Loop Back Mode
      LBCK          : Boolean := False;
      --  Control of Transmit Pin
      TX            : TEST_TXSelect := SAM_SVD.CAN.Core;
      --  Read-only. Receive Pin
      RX            : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TEST_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      LBCK          at 0 range 4 .. 4;
      TX            at 0 range 5 .. 6;
      RX            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CAN_RWD_WDC_Field is HAL.UInt8;
   subtype CAN_RWD_WDV_Field is HAL.UInt8;

   --  RAM Watchdog
   type CAN_RWD_Register is record
      --  Read-only. Watchdog Configuration
      WDC            : CAN_RWD_WDC_Field;
      --  Read-only. Watchdog Value
      WDV            : CAN_RWD_WDV_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RWD_Register use record
      WDC            at 0 range 0 .. 7;
      WDV            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CC Control
   type CAN_CCCR_Register is record
      --  Initialization
      INIT           : Boolean := True;
      --  Configuration Change Enable
      CCE            : Boolean := False;
      --  ASM Restricted Operation Mode
      ASM            : Boolean := False;
      --  Read-only. Clock Stop Acknowledge
      CSA            : Boolean := False;
      --  Clock Stop Request
      CSR            : Boolean := False;
      --  Bus Monitoring Mode
      MON            : Boolean := False;
      --  Disable Automatic Retransmission
      DAR            : Boolean := False;
      --  Test Mode Enable
      TEST           : Boolean := False;
      --  FD Operation Enable
      FDOE           : Boolean := False;
      --  Bit Rate Switch Enable
      BRSE           : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Protocol Exception Handling Disable
      PXHD           : Boolean := False;
      --  Edge Filtering during Bus Integration
      EFBI           : Boolean := False;
      --  Transmit Pause
      TXP            : Boolean := False;
      --  Non ISO Operation
      NISO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_CCCR_Register use record
      INIT           at 0 range 0 .. 0;
      CCE            at 0 range 1 .. 1;
      ASM            at 0 range 2 .. 2;
      CSA            at 0 range 3 .. 3;
      CSR            at 0 range 4 .. 4;
      MON            at 0 range 5 .. 5;
      DAR            at 0 range 6 .. 6;
      TEST           at 0 range 7 .. 7;
      FDOE           at 0 range 8 .. 8;
      BRSE           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PXHD           at 0 range 12 .. 12;
      EFBI           at 0 range 13 .. 13;
      TXP            at 0 range 14 .. 14;
      NISO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN_NBTP_NTSEG2_Field is HAL.UInt7;
   subtype CAN_NBTP_NTSEG1_Field is HAL.UInt8;
   subtype CAN_NBTP_NBRP_Field is HAL.UInt9;
   subtype CAN_NBTP_NSJW_Field is HAL.UInt7;

   --  Nominal Bit Timing and Prescaler
   type CAN_NBTP_Register is record
      --  Nominal Time segment after sample point
      NTSEG2       : CAN_NBTP_NTSEG2_Field := 16#3#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
      --  Nominal Time segment before sample point
      NTSEG1       : CAN_NBTP_NTSEG1_Field := 16#A#;
      --  Nominal Baud Rate Prescaler
      NBRP         : CAN_NBTP_NBRP_Field := 16#0#;
      --  Nominal (Re)Synchronization Jump Width
      NSJW         : CAN_NBTP_NSJW_Field := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_NBTP_Register use record
      NTSEG2       at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      NTSEG1       at 0 range 8 .. 15;
      NBRP         at 0 range 16 .. 24;
      NSJW         at 0 range 25 .. 31;
   end record;

   --  Timestamp Select
   type TSCC_TSSSelect is
     (
      --  Timestamp counter value always 0x0000
      Zero,
      --  Timestamp counter value incremented by TCP
      Inc,
      --  External timestamp counter value used
      Ext)
     with Size => 2;
   for TSCC_TSSSelect use
     (Zero => 0,
      Inc => 1,
      Ext => 2);

   subtype CAN_TSCC_TCP_Field is HAL.UInt4;

   --  Timestamp Counter Configuration
   type CAN_TSCC_Register is record
      --  Timestamp Select
      TSS            : TSCC_TSSSelect := SAM_SVD.CAN.Zero;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Timestamp Counter Prescaler
      TCP            : CAN_TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CAN_TSCV_TSC_Field is HAL.UInt16;

   --  Timestamp Counter Value
   type CAN_TSCV_Register is record
      --  Read-only. Timestamp Counter
      TSC            : CAN_TSCV_TSC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timeout Select
   type TOCC_TOSSelect is
     (
      --  Continuout operation
      Cont,
      --  Timeout controlled by TX Event FIFO
      Txef,
      --  Timeout controlled by Rx FIFO 0
      Rxf0,
      --  Timeout controlled by Rx FIFO 1
      Rxf1)
     with Size => 2;
   for TOCC_TOSSelect use
     (Cont => 0,
      Txef => 1,
      Rxf0 => 2,
      Rxf1 => 3);

   subtype CAN_TOCC_TOP_Field is HAL.UInt16;

   --  Timeout Counter Configuration
   type CAN_TOCC_Register is record
      --  Enable Timeout Counter
      ETOC          : Boolean := False;
      --  Timeout Select
      TOS           : TOCC_TOSSelect := SAM_SVD.CAN.Cont;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
      --  Timeout Period
      TOP           : CAN_TOCC_TOP_Field := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TOCC_Register use record
      ETOC          at 0 range 0 .. 0;
      TOS           at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      TOP           at 0 range 16 .. 31;
   end record;

   subtype CAN_TOCV_TOC_Field is HAL.UInt16;

   --  Timeout Counter Value
   type CAN_TOCV_Register is record
      --  Timeout Counter
      TOC            : CAN_TOCV_TOC_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN_ECR_TEC_Field is HAL.UInt8;
   subtype CAN_ECR_REC_Field is HAL.UInt7;
   subtype CAN_ECR_CEL_Field is HAL.UInt8;

   --  Error Counter
   type CAN_ECR_Register is record
      --  Read-only. Transmit Error Counter
      TEC            : CAN_ECR_TEC_Field;
      --  Read-only. Receive Error Counter
      REC            : CAN_ECR_REC_Field;
      --  Read-only. Receive Error Passive
      RP             : Boolean;
      --  Read-only. CAN Error Logging
      CEL            : CAN_ECR_CEL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_ECR_Register use record
      TEC            at 0 range 0 .. 7;
      REC            at 0 range 8 .. 14;
      RP             at 0 range 15 .. 15;
      CEL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Last Error Code
   type PSR_LECSelect is
     (
      --  No Error
      None,
      --  Stuff Error
      Stuff,
      --  Form Error
      Form,
      --  Ack Error
      Ack,
      --  Bit1 Error
      Bit1,
      --  Bit0 Error
      Bit0,
      --  CRC Error
      Crc,
      --  No Change
      Nc)
     with Size => 3;
   for PSR_LECSelect use
     (None => 0,
      Stuff => 1,
      Form => 2,
      Ack => 3,
      Bit1 => 4,
      Bit0 => 5,
      Crc => 6,
      Nc => 7);

   --  Activity
   type PSR_ACTSelect is
     (
      --  Node is synchronizing on CAN communication
      Sync,
      --  Node is neither receiver nor transmitter
      Idle,
      --  Node is operating as receiver
      Rx,
      --  Node is operating as transmitter
      Tx)
     with Size => 2;
   for PSR_ACTSelect use
     (Sync => 0,
      Idle => 1,
      Rx => 2,
      Tx => 3);

   --  Data Phase Last Error Code
   type PSR_DLECSelect is
     (
      --  No Error
      None,
      --  Stuff Error
      Stuff,
      --  Form Error
      Form,
      --  Ack Error
      Ack,
      --  Bit1 Error
      Bit1,
      --  Bit0 Error
      Bit0,
      --  CRC Error
      Crc,
      --  No Change
      Nc)
     with Size => 3;
   for PSR_DLECSelect use
     (None => 0,
      Stuff => 1,
      Form => 2,
      Ack => 3,
      Bit1 => 4,
      Bit0 => 5,
      Crc => 6,
      Nc => 7);

   subtype CAN_PSR_TDCV_Field is HAL.UInt7;

   --  Protocol Status
   type CAN_PSR_Register is record
      --  Read-only. Last Error Code
      LEC            : PSR_LECSelect;
      --  Read-only. Activity
      ACT            : PSR_ACTSelect;
      --  Read-only. Error Passive
      EP             : Boolean;
      --  Read-only. Warning Status
      EW             : Boolean;
      --  Read-only. Bus_Off Status
      BO             : Boolean;
      --  Read-only. Data Phase Last Error Code
      DLEC           : PSR_DLECSelect;
      --  Read-only. ESI flag of last received CAN FD Message
      RESI           : Boolean;
      --  Read-only. BRS flag of last received CAN FD Message
      RBRS           : Boolean;
      --  Read-only. Received a CAN FD Message
      RFDF           : Boolean;
      --  Read-only. Protocol Exception Event
      PXE            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Transmitter Delay Compensation Value
      TDCV           : CAN_PSR_TDCV_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_PSR_Register use record
      LEC            at 0 range 0 .. 2;
      ACT            at 0 range 3 .. 4;
      EP             at 0 range 5 .. 5;
      EW             at 0 range 6 .. 6;
      BO             at 0 range 7 .. 7;
      DLEC           at 0 range 8 .. 10;
      RESI           at 0 range 11 .. 11;
      RBRS           at 0 range 12 .. 12;
      RFDF           at 0 range 13 .. 13;
      PXE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDCV           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CAN_TDCR_TDCF_Field is HAL.UInt7;
   subtype CAN_TDCR_TDCO_Field is HAL.UInt7;

   --  Extended ID Filter Configuration
   type CAN_TDCR_Register is record
      --  Read-only. Transmitter Delay Compensation Filter Length
      TDCF           : CAN_TDCR_TDCF_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Transmitter Delay Compensation Offset
      TDCO           : CAN_TDCR_TDCO_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TDCR_Register use record
      TDCF           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TDCO           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Interrupt
   type CAN_IR_Register is record
      --  Rx FIFO 0 New Message
      RF0N           : Boolean := False;
      --  Rx FIFO 0 Watermark Reached
      RF0W           : Boolean := False;
      --  Rx FIFO 0 Full
      RF0F           : Boolean := False;
      --  Rx FIFO 0 Message Lost
      RF0L           : Boolean := False;
      --  Rx FIFO 1 New Message
      RF1N           : Boolean := False;
      --  Rx FIFO 1 Watermark Reached
      RF1W           : Boolean := False;
      --  Rx FIFO 1 FIFO Full
      RF1F           : Boolean := False;
      --  Rx FIFO 1 Message Lost
      RF1L           : Boolean := False;
      --  High Priority Message
      HPM            : Boolean := False;
      --  Timestamp Completed
      TC             : Boolean := False;
      --  Transmission Cancellation Finished
      TCF            : Boolean := False;
      --  Tx FIFO Empty
      TFE            : Boolean := False;
      --  Tx Event FIFO New Entry
      TEFN           : Boolean := False;
      --  Tx Event FIFO Watermark Reached
      TEFW           : Boolean := False;
      --  Tx Event FIFO Full
      TEFF           : Boolean := False;
      --  Tx Event FIFO Element Lost
      TEFL           : Boolean := False;
      --  Timestamp Wraparound
      TSW            : Boolean := False;
      --  Message RAM Access Failure
      MRAF           : Boolean := False;
      --  Timeout Occurred
      TOO            : Boolean := False;
      --  Message stored to Dedicated Rx Buffer
      DRX            : Boolean := False;
      --  Bit Error Corrected
      BEC            : Boolean := False;
      --  Bit Error Uncorrected
      BEU            : Boolean := False;
      --  Error Logging Overflow
      ELO            : Boolean := False;
      --  Error Passive
      EP             : Boolean := False;
      --  Warning Status
      EW             : Boolean := False;
      --  Bus_Off Status
      BO             : Boolean := False;
      --  Watchdog Interrupt
      WDI            : Boolean := False;
      --  Protocol Error in Arbitration Phase
      PEA            : Boolean := False;
      --  Protocol Error in Data Phase
      PED            : Boolean := False;
      --  Access to Reserved Address
      ARA            : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_IR_Register use record
      RF0N           at 0 range 0 .. 0;
      RF0W           at 0 range 1 .. 1;
      RF0F           at 0 range 2 .. 2;
      RF0L           at 0 range 3 .. 3;
      RF1N           at 0 range 4 .. 4;
      RF1W           at 0 range 5 .. 5;
      RF1F           at 0 range 6 .. 6;
      RF1L           at 0 range 7 .. 7;
      HPM            at 0 range 8 .. 8;
      TC             at 0 range 9 .. 9;
      TCF            at 0 range 10 .. 10;
      TFE            at 0 range 11 .. 11;
      TEFN           at 0 range 12 .. 12;
      TEFW           at 0 range 13 .. 13;
      TEFF           at 0 range 14 .. 14;
      TEFL           at 0 range 15 .. 15;
      TSW            at 0 range 16 .. 16;
      MRAF           at 0 range 17 .. 17;
      TOO            at 0 range 18 .. 18;
      DRX            at 0 range 19 .. 19;
      BEC            at 0 range 20 .. 20;
      BEU            at 0 range 21 .. 21;
      ELO            at 0 range 22 .. 22;
      EP             at 0 range 23 .. 23;
      EW             at 0 range 24 .. 24;
      BO             at 0 range 25 .. 25;
      WDI            at 0 range 26 .. 26;
      PEA            at 0 range 27 .. 27;
      PED            at 0 range 28 .. 28;
      ARA            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Enable
   type CAN_IE_Register is record
      --  Rx FIFO 0 New Message Interrupt Enable
      RF0NE          : Boolean := False;
      --  Rx FIFO 0 Watermark Reached Interrupt Enable
      RF0WE          : Boolean := False;
      --  Rx FIFO 0 Full Interrupt Enable
      RF0FE          : Boolean := False;
      --  Rx FIFO 0 Message Lost Interrupt Enable
      RF0LE          : Boolean := False;
      --  Rx FIFO 1 New Message Interrupt Enable
      RF1NE          : Boolean := False;
      --  Rx FIFO 1 Watermark Reached Interrupt Enable
      RF1WE          : Boolean := False;
      --  Rx FIFO 1 FIFO Full Interrupt Enable
      RF1FE          : Boolean := False;
      --  Rx FIFO 1 Message Lost Interrupt Enable
      RF1LE          : Boolean := False;
      --  High Priority Message Interrupt Enable
      HPME           : Boolean := False;
      --  Timestamp Completed Interrupt Enable
      TCE            : Boolean := False;
      --  Transmission Cancellation Finished Interrupt Enable
      TCFE           : Boolean := False;
      --  Tx FIFO Empty Interrupt Enable
      TFEE           : Boolean := False;
      --  Tx Event FIFO New Entry Interrupt Enable
      TEFNE          : Boolean := False;
      --  Tx Event FIFO Watermark Reached Interrupt Enable
      TEFWE          : Boolean := False;
      --  Tx Event FIFO Full Interrupt Enable
      TEFFE          : Boolean := False;
      --  Tx Event FIFO Element Lost Interrupt Enable
      TEFLE          : Boolean := False;
      --  Timestamp Wraparound Interrupt Enable
      TSWE           : Boolean := False;
      --  Message RAM Access Failure Interrupt Enable
      MRAFE          : Boolean := False;
      --  Timeout Occurred Interrupt Enable
      TOOE           : Boolean := False;
      --  Message stored to Dedicated Rx Buffer Interrupt Enable
      DRXE           : Boolean := False;
      --  Bit Error Corrected Interrupt Enable
      BECE           : Boolean := False;
      --  Bit Error Uncorrected Interrupt Enable
      BEUE           : Boolean := False;
      --  Error Logging Overflow Interrupt Enable
      ELOE           : Boolean := False;
      --  Error Passive Interrupt Enable
      EPE            : Boolean := False;
      --  Warning Status Interrupt Enable
      EWE            : Boolean := False;
      --  Bus_Off Status Interrupt Enable
      BOE            : Boolean := False;
      --  Watchdog Interrupt Interrupt Enable
      WDIE           : Boolean := False;
      --  Protocol Error in Arbitration Phase Enable
      PEAE           : Boolean := False;
      --  Protocol Error in Data Phase Enable
      PEDE           : Boolean := False;
      --  Access to Reserved Address Enable
      ARAE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_IE_Register use record
      RF0NE          at 0 range 0 .. 0;
      RF0WE          at 0 range 1 .. 1;
      RF0FE          at 0 range 2 .. 2;
      RF0LE          at 0 range 3 .. 3;
      RF1NE          at 0 range 4 .. 4;
      RF1WE          at 0 range 5 .. 5;
      RF1FE          at 0 range 6 .. 6;
      RF1LE          at 0 range 7 .. 7;
      HPME           at 0 range 8 .. 8;
      TCE            at 0 range 9 .. 9;
      TCFE           at 0 range 10 .. 10;
      TFEE           at 0 range 11 .. 11;
      TEFNE          at 0 range 12 .. 12;
      TEFWE          at 0 range 13 .. 13;
      TEFFE          at 0 range 14 .. 14;
      TEFLE          at 0 range 15 .. 15;
      TSWE           at 0 range 16 .. 16;
      MRAFE          at 0 range 17 .. 17;
      TOOE           at 0 range 18 .. 18;
      DRXE           at 0 range 19 .. 19;
      BECE           at 0 range 20 .. 20;
      BEUE           at 0 range 21 .. 21;
      ELOE           at 0 range 22 .. 22;
      EPE            at 0 range 23 .. 23;
      EWE            at 0 range 24 .. 24;
      BOE            at 0 range 25 .. 25;
      WDIE           at 0 range 26 .. 26;
      PEAE           at 0 range 27 .. 27;
      PEDE           at 0 range 28 .. 28;
      ARAE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Line Select
   type CAN_ILS_Register is record
      --  Rx FIFO 0 New Message Interrupt Line
      RF0NL          : Boolean := False;
      --  Rx FIFO 0 Watermark Reached Interrupt Line
      RF0WL          : Boolean := False;
      --  Rx FIFO 0 Full Interrupt Line
      RF0FL          : Boolean := False;
      --  Rx FIFO 0 Message Lost Interrupt Line
      RF0LL          : Boolean := False;
      --  Rx FIFO 1 New Message Interrupt Line
      RF1NL          : Boolean := False;
      --  Rx FIFO 1 Watermark Reached Interrupt Line
      RF1WL          : Boolean := False;
      --  Rx FIFO 1 FIFO Full Interrupt Line
      RF1FL          : Boolean := False;
      --  Rx FIFO 1 Message Lost Interrupt Line
      RF1LL          : Boolean := False;
      --  High Priority Message Interrupt Line
      HPML           : Boolean := False;
      --  Timestamp Completed Interrupt Line
      TCL            : Boolean := False;
      --  Transmission Cancellation Finished Interrupt Line
      TCFL           : Boolean := False;
      --  Tx FIFO Empty Interrupt Line
      TFEL           : Boolean := False;
      --  Tx Event FIFO New Entry Interrupt Line
      TEFNL          : Boolean := False;
      --  Tx Event FIFO Watermark Reached Interrupt Line
      TEFWL          : Boolean := False;
      --  Tx Event FIFO Full Interrupt Line
      TEFFL          : Boolean := False;
      --  Tx Event FIFO Element Lost Interrupt Line
      TEFLL          : Boolean := False;
      --  Timestamp Wraparound Interrupt Line
      TSWL           : Boolean := False;
      --  Message RAM Access Failure Interrupt Line
      MRAFL          : Boolean := False;
      --  Timeout Occurred Interrupt Line
      TOOL           : Boolean := False;
      --  Message stored to Dedicated Rx Buffer Interrupt Line
      DRXL           : Boolean := False;
      --  Bit Error Corrected Interrupt Line
      BECL           : Boolean := False;
      --  Bit Error Uncorrected Interrupt Line
      BEUL           : Boolean := False;
      --  Error Logging Overflow Interrupt Line
      ELOL           : Boolean := False;
      --  Error Passive Interrupt Line
      EPL            : Boolean := False;
      --  Warning Status Interrupt Line
      EWL            : Boolean := False;
      --  Bus_Off Status Interrupt Line
      BOL            : Boolean := False;
      --  Watchdog Interrupt Interrupt Line
      WDIL           : Boolean := False;
      --  Protocol Error in Arbitration Phase Line
      PEAL           : Boolean := False;
      --  Protocol Error in Data Phase Line
      PEDL           : Boolean := False;
      --  Access to Reserved Address Line
      ARAL           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_ILS_Register use record
      RF0NL          at 0 range 0 .. 0;
      RF0WL          at 0 range 1 .. 1;
      RF0FL          at 0 range 2 .. 2;
      RF0LL          at 0 range 3 .. 3;
      RF1NL          at 0 range 4 .. 4;
      RF1WL          at 0 range 5 .. 5;
      RF1FL          at 0 range 6 .. 6;
      RF1LL          at 0 range 7 .. 7;
      HPML           at 0 range 8 .. 8;
      TCL            at 0 range 9 .. 9;
      TCFL           at 0 range 10 .. 10;
      TFEL           at 0 range 11 .. 11;
      TEFNL          at 0 range 12 .. 12;
      TEFWL          at 0 range 13 .. 13;
      TEFFL          at 0 range 14 .. 14;
      TEFLL          at 0 range 15 .. 15;
      TSWL           at 0 range 16 .. 16;
      MRAFL          at 0 range 17 .. 17;
      TOOL           at 0 range 18 .. 18;
      DRXL           at 0 range 19 .. 19;
      BECL           at 0 range 20 .. 20;
      BEUL           at 0 range 21 .. 21;
      ELOL           at 0 range 22 .. 22;
      EPL            at 0 range 23 .. 23;
      EWL            at 0 range 24 .. 24;
      BOL            at 0 range 25 .. 25;
      WDIL           at 0 range 26 .. 26;
      PEAL           at 0 range 27 .. 27;
      PEDL           at 0 range 28 .. 28;
      ARAL           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  CAN_ILE_EINT array
   type CAN_ILE_EINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CAN_ILE_EINT
   type CAN_ILE_EINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EINT as a value
            Val : HAL.UInt2;
         when True =>
            --  EINT as an array
            Arr : CAN_ILE_EINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CAN_ILE_EINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Line Enable
   type CAN_ILE_Register is record
      --  Enable Interrupt Line 0
      EINT          : CAN_ILE_EINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Accept Non-matching Frames Extended
   type GFC_ANFESelect is
     (
      --  Accept in Rx FIFO 0
      Rxf0,
      --  Accept in Rx FIFO 1
      Rxf1,
      --  Reject
      Reject)
     with Size => 2;
   for GFC_ANFESelect use
     (Rxf0 => 0,
      Rxf1 => 1,
      Reject => 2);

   --  Accept Non-matching Frames Standard
   type GFC_ANFSSelect is
     (
      --  Accept in Rx FIFO 0
      Rxf0,
      --  Accept in Rx FIFO 1
      Rxf1,
      --  Reject
      Reject)
     with Size => 2;
   for GFC_ANFSSelect use
     (Rxf0 => 0,
      Rxf1 => 1,
      Reject => 2);

   --  Global Filter Configuration
   type CAN_GFC_Register is record
      --  Reject Remote Frames Extended
      RRFE          : Boolean := False;
      --  Reject Remote Frames Standard
      RRFS          : Boolean := False;
      --  Accept Non-matching Frames Extended
      ANFE          : GFC_ANFESelect := SAM_SVD.CAN.Rxf0;
      --  Accept Non-matching Frames Standard
      ANFS          : GFC_ANFSSelect := SAM_SVD.CAN.Rxf0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_GFC_Register use record
      RRFE          at 0 range 0 .. 0;
      RRFS          at 0 range 1 .. 1;
      ANFE          at 0 range 2 .. 3;
      ANFS          at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype CAN_SIDFC_FLSSA_Field is HAL.UInt16;
   subtype CAN_SIDFC_LSS_Field is HAL.UInt8;

   --  Standard ID Filter Configuration
   type CAN_SIDFC_Register is record
      --  Filter List Standard Start Address
      FLSSA          : CAN_SIDFC_FLSSA_Field := 16#0#;
      --  List Size Standard
      LSS            : CAN_SIDFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_SIDFC_Register use record
      FLSSA          at 0 range 0 .. 15;
      LSS            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CAN_XIDFC_FLESA_Field is HAL.UInt16;
   subtype CAN_XIDFC_LSE_Field is HAL.UInt7;

   --  Extended ID Filter Configuration
   type CAN_XIDFC_Register is record
      --  Filter List Extended Start Address
      FLESA          : CAN_XIDFC_FLESA_Field := 16#0#;
      --  List Size Extended
      LSE            : CAN_XIDFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_XIDFC_Register use record
      FLESA          at 0 range 0 .. 15;
      LSE            at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CAN_XIDAM_EIDM_Field is HAL.UInt29;

   --  Extended ID AND Mask
   type CAN_XIDAM_Register is record
      --  Extended ID Mask
      EIDM           : CAN_XIDAM_EIDM_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_XIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CAN_HPMS_BIDX_Field is HAL.UInt6;

   --  Message Storage Indicator
   type HPMS_MSISelect is
     (
      --  No FIFO selected
      None,
      --  FIFO message lost
      Lost,
      --  Message stored in FIFO 0
      Fifo0,
      --  Message stored in FIFO 1
      Fifo1)
     with Size => 2;
   for HPMS_MSISelect use
     (None => 0,
      Lost => 1,
      Fifo0 => 2,
      Fifo1 => 3);

   subtype CAN_HPMS_FIDX_Field is HAL.UInt7;

   --  High Priority Message Status
   type CAN_HPMS_Register is record
      --  Read-only. Buffer Index
      BIDX           : CAN_HPMS_BIDX_Field;
      --  Read-only. Message Storage Indicator
      MSI            : HPMS_MSISelect;
      --  Read-only. Filter Index
      FIDX           : CAN_HPMS_FIDX_Field;
      --  Read-only. Filter List
      FLST           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_HPMS_Register use record
      BIDX           at 0 range 0 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDX           at 0 range 8 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CAN_NDAT1_ND array
   type CAN_NDAT1_ND_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  New Data 1
   type CAN_NDAT1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : HAL.UInt32;
         when True =>
            --  ND as an array
            Arr : CAN_NDAT1_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_NDAT1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_NDAT2_ND array
   type CAN_NDAT2_ND_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  New Data 2
   type CAN_NDAT2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : HAL.UInt32;
         when True =>
            --  ND as an array
            Arr : CAN_NDAT2_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_NDAT2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype CAN_RXF0C_F0SA_Field is HAL.UInt16;
   subtype CAN_RXF0C_F0S_Field is HAL.UInt7;
   subtype CAN_RXF0C_F0WM_Field is HAL.UInt7;

   --  Rx FIFO 0 Configuration
   type CAN_RXF0C_Register is record
      --  Rx FIFO 0 Start Address
      F0SA           : CAN_RXF0C_F0SA_Field := 16#0#;
      --  Rx FIFO 0 Size
      F0S            : CAN_RXF0C_F0S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Rx FIFO 0 Watermark
      F0WM           : CAN_RXF0C_F0WM_Field := 16#0#;
      --  FIFO 0 Operation Mode
      F0OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXF0C_Register use record
      F0SA           at 0 range 0 .. 15;
      F0S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F0WM           at 0 range 24 .. 30;
      F0OM           at 0 range 31 .. 31;
   end record;

   subtype CAN_RXF0S_F0FL_Field is HAL.UInt7;
   subtype CAN_RXF0S_F0GI_Field is HAL.UInt6;
   subtype CAN_RXF0S_F0PI_Field is HAL.UInt6;

   --  Rx FIFO 0 Status
   type CAN_RXF0S_Register is record
      --  Read-only. Rx FIFO 0 Fill Level
      F0FL           : CAN_RXF0S_F0FL_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Rx FIFO 0 Get Index
      F0GI           : CAN_RXF0S_F0GI_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Rx FIFO 0 Put Index
      F0PI           : CAN_RXF0S_F0PI_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Rx FIFO 0 Full
      F0F            : Boolean;
      --  Read-only. Rx FIFO 0 Message Lost
      RF0L           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXF0S_Register use record
      F0FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F0GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F0PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CAN_RXF0A_F0AI_Field is HAL.UInt6;

   --  Rx FIFO 0 Acknowledge
   type CAN_RXF0A_Register is record
      --  Rx FIFO 0 Acknowledge Index
      F0AI          : CAN_RXF0A_F0AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXF0A_Register use record
      F0AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype CAN_RXBC_RBSA_Field is HAL.UInt16;

   --  Rx Buffer Configuration
   type CAN_RXBC_Register is record
      --  Rx Buffer Start Address
      RBSA           : CAN_RXBC_RBSA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXBC_Register use record
      RBSA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN_RXF1C_F1SA_Field is HAL.UInt16;
   subtype CAN_RXF1C_F1S_Field is HAL.UInt7;
   subtype CAN_RXF1C_F1WM_Field is HAL.UInt7;

   --  Rx FIFO 1 Configuration
   type CAN_RXF1C_Register is record
      --  Rx FIFO 1 Start Address
      F1SA           : CAN_RXF1C_F1SA_Field := 16#0#;
      --  Rx FIFO 1 Size
      F1S            : CAN_RXF1C_F1S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Rx FIFO 1 Watermark
      F1WM           : CAN_RXF1C_F1WM_Field := 16#0#;
      --  FIFO 1 Operation Mode
      F1OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXF1C_Register use record
      F1SA           at 0 range 0 .. 15;
      F1S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1WM           at 0 range 24 .. 30;
      F1OM           at 0 range 31 .. 31;
   end record;

   subtype CAN_RXF1S_F1FL_Field is HAL.UInt7;
   subtype CAN_RXF1S_F1GI_Field is HAL.UInt6;
   subtype CAN_RXF1S_F1PI_Field is HAL.UInt6;

   --  Debug Message Status
   type RXF1S_DMSSelect is
     (
      --  Idle state
      Idle,
      --  Debug message A received
      Dbga,
      --  Debug message A/B received
      Dbgb,
      --  Debug message A/B/C received, DMA request set
      Dbgc)
     with Size => 2;
   for RXF1S_DMSSelect use
     (Idle => 0,
      Dbga => 1,
      Dbgb => 2,
      Dbgc => 3);

   --  Rx FIFO 1 Status
   type CAN_RXF1S_Register is record
      --  Read-only. Rx FIFO 1 Fill Level
      F1FL           : CAN_RXF1S_F1FL_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Rx FIFO 1 Get Index
      F1GI           : CAN_RXF1S_F1GI_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Rx FIFO 1 Put Index
      F1PI           : CAN_RXF1S_F1PI_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Rx FIFO 1 Full
      F1F            : Boolean;
      --  Read-only. Rx FIFO 1 Message Lost
      RF1L           : Boolean;
      --  unspecified
      Reserved_26_29 : HAL.UInt4;
      --  Read-only. Debug Message Status
      DMS            : RXF1S_DMSSelect;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXF1S_Register use record
      F1FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F1GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F1PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DMS            at 0 range 30 .. 31;
   end record;

   subtype CAN_RXF1A_F1AI_Field is HAL.UInt6;

   --  Rx FIFO 1 Acknowledge
   type CAN_RXF1A_Register is record
      --  Rx FIFO 1 Acknowledge Index
      F1AI          : CAN_RXF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXF1A_Register use record
      F1AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Rx FIFO 0 Data Field Size
   type RXESC_F0DSSelect is
     (
      --  8 byte data field
      Data8,
      --  12 byte data field
      Data12,
      --  16 byte data field
      Data16,
      --  20 byte data field
      Data20,
      --  24 byte data field
      Data24,
      --  32 byte data field
      Data32,
      --  48 byte data field
      Data48,
      --  64 byte data field
      Data64)
     with Size => 3;
   for RXESC_F0DSSelect use
     (Data8 => 0,
      Data12 => 1,
      Data16 => 2,
      Data20 => 3,
      Data24 => 4,
      Data32 => 5,
      Data48 => 6,
      Data64 => 7);

   --  Rx FIFO 1 Data Field Size
   type RXESC_F1DSSelect is
     (
      --  8 byte data field
      Data8,
      --  12 byte data field
      Data12,
      --  16 byte data field
      Data16,
      --  20 byte data field
      Data20,
      --  24 byte data field
      Data24,
      --  32 byte data field
      Data32,
      --  48 byte data field
      Data48,
      --  64 byte data field
      Data64)
     with Size => 3;
   for RXESC_F1DSSelect use
     (Data8 => 0,
      Data12 => 1,
      Data16 => 2,
      Data20 => 3,
      Data24 => 4,
      Data32 => 5,
      Data48 => 6,
      Data64 => 7);

   --  Rx Buffer Data Field Size
   type RXESC_RBDSSelect is
     (
      --  8 byte data field
      Data8,
      --  12 byte data field
      Data12,
      --  16 byte data field
      Data16,
      --  20 byte data field
      Data20,
      --  24 byte data field
      Data24,
      --  32 byte data field
      Data32,
      --  48 byte data field
      Data48,
      --  64 byte data field
      Data64)
     with Size => 3;
   for RXESC_RBDSSelect use
     (Data8 => 0,
      Data12 => 1,
      Data16 => 2,
      Data20 => 3,
      Data24 => 4,
      Data32 => 5,
      Data48 => 6,
      Data64 => 7);

   --  Rx Buffer / FIFO Element Size Configuration
   type CAN_RXESC_Register is record
      --  Rx FIFO 0 Data Field Size
      F0DS           : RXESC_F0DSSelect := SAM_SVD.CAN.Data8;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Rx FIFO 1 Data Field Size
      F1DS           : RXESC_F1DSSelect := SAM_SVD.CAN.Data8;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Rx Buffer Data Field Size
      RBDS           : RXESC_RBDSSelect := SAM_SVD.CAN.Data8;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_RXESC_Register use record
      F0DS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      F1DS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RBDS           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CAN_TXBC_TBSA_Field is HAL.UInt16;
   subtype CAN_TXBC_NDTB_Field is HAL.UInt6;
   subtype CAN_TXBC_TFQS_Field is HAL.UInt6;

   --  Tx Buffer Configuration
   type CAN_TXBC_Register is record
      --  Tx Buffers Start Address
      TBSA           : CAN_TXBC_TBSA_Field := 16#0#;
      --  Number of Dedicated Transmit Buffers
      NDTB           : CAN_TXBC_NDTB_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Transmit FIFO/Queue Size
      TFQS           : CAN_TXBC_TFQS_Field := 16#0#;
      --  Tx FIFO/Queue Mode
      TFQM           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBC_Register use record
      TBSA           at 0 range 0 .. 15;
      NDTB           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFQS           at 0 range 24 .. 29;
      TFQM           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CAN_TXFQS_TFFL_Field is HAL.UInt6;
   subtype CAN_TXFQS_TFGI_Field is HAL.UInt5;
   subtype CAN_TXFQS_TFQPI_Field is HAL.UInt5;

   --  Tx FIFO / Queue Status
   type CAN_TXFQS_Register is record
      --  Read-only. Tx FIFO Free Level
      TFFL           : CAN_TXFQS_TFFL_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Tx FIFO Get Index
      TFGI           : CAN_TXFQS_TFGI_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Tx FIFO/Queue Put Index
      TFQPI          : CAN_TXFQS_TFQPI_Field;
      --  Read-only. Tx FIFO/Queue Full
      TFQF           : Boolean;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TXFQS_Register use record
      TFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TFQPI          at 0 range 16 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Tx Buffer Data Field Size
   type TXESC_TBDSSelect is
     (
      --  8 byte data field
      Data8,
      --  12 byte data field
      Data12,
      --  16 byte data field
      Data16,
      --  20 byte data field
      Data20,
      --  24 byte data field
      Data24,
      --  32 byte data field
      Data32,
      --  48 byte data field
      Data48,
      --  64 byte data field
      Data64)
     with Size => 3;
   for TXESC_TBDSSelect use
     (Data8 => 0,
      Data12 => 1,
      Data16 => 2,
      Data20 => 3,
      Data24 => 4,
      Data32 => 5,
      Data48 => 6,
      Data64 => 7);

   --  Tx Buffer Element Size Configuration
   type CAN_TXESC_Register is record
      --  Tx Buffer Data Field Size
      TBDS          : TXESC_TBDSSelect := SAM_SVD.CAN.Data8;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TXESC_Register use record
      TBDS          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  CAN_TXBRP_TRP array
   type CAN_TXBRP_TRP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Request Pending
   type CAN_TXBRP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRP as a value
            Val : HAL.UInt32;
         when True =>
            --  TRP as an array
            Arr : CAN_TXBRP_TRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBRP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_TXBAR_AR array
   type CAN_TXBAR_AR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Add Request
   type CAN_TXBAR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AR as a value
            Val : HAL.UInt32;
         when True =>
            --  AR as an array
            Arr : CAN_TXBAR_AR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBAR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_TXBCR_CR array
   type CAN_TXBCR_CR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Cancellation Request
   type CAN_TXBCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CR as a value
            Val : HAL.UInt32;
         when True =>
            --  CR as an array
            Arr : CAN_TXBCR_CR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_TXBTO_TO array
   type CAN_TXBTO_TO_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Transmission Occurred
   type CAN_TXBTO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TO as a value
            Val : HAL.UInt32;
         when True =>
            --  TO as an array
            Arr : CAN_TXBTO_TO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBTO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_TXBCF_CF array
   type CAN_TXBCF_CF_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Cancellation Finished
   type CAN_TXBCF_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CF as a value
            Val : HAL.UInt32;
         when True =>
            --  CF as an array
            Arr : CAN_TXBCF_CF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBCF_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_TXBTIE_TIE array
   type CAN_TXBTIE_TIE_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Transmission Interrupt Enable
   type CAN_TXBTIE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIE as a value
            Val : HAL.UInt32;
         when True =>
            --  TIE as an array
            Arr : CAN_TXBTIE_TIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBTIE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CAN_TXBCIE_CFIE array
   type CAN_TXBCIE_CFIE_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Cancellation Finished Interrupt Enable
   type CAN_TXBCIE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFIE as a value
            Val : HAL.UInt32;
         when True =>
            --  CFIE as an array
            Arr : CAN_TXBCIE_CFIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CAN_TXBCIE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype CAN_TXEFC_EFSA_Field is HAL.UInt16;
   subtype CAN_TXEFC_EFS_Field is HAL.UInt6;
   subtype CAN_TXEFC_EFWM_Field is HAL.UInt6;

   --  Tx Event FIFO Configuration
   type CAN_TXEFC_Register is record
      --  Event FIFO Start Address
      EFSA           : CAN_TXEFC_EFSA_Field := 16#0#;
      --  Event FIFO Size
      EFS            : CAN_TXEFC_EFS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Event FIFO Watermark
      EFWM           : CAN_TXEFC_EFWM_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TXEFC_Register use record
      EFSA           at 0 range 0 .. 15;
      EFS            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFWM           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CAN_TXEFS_EFFL_Field is HAL.UInt6;
   subtype CAN_TXEFS_EFGI_Field is HAL.UInt5;
   subtype CAN_TXEFS_EFPI_Field is HAL.UInt5;

   --  Tx Event FIFO Status
   type CAN_TXEFS_Register is record
      --  Read-only. Event FIFO Fill Level
      EFFL           : CAN_TXEFS_EFFL_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Event FIFO Get Index
      EFGI           : CAN_TXEFS_EFGI_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Event FIFO Put Index
      EFPI           : CAN_TXEFS_EFPI_Field;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. Event FIFO Full
      EFF            : Boolean;
      --  Read-only. Tx Event FIFO Element Lost
      TEFL           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TXEFS_Register use record
      EFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EFPI           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CAN_TXEFA_EFAI_Field is HAL.UInt5;

   --  Tx Event FIFO Acknowledge
   type CAN_TXEFA_Register is record
      --  Event FIFO Acknowledge Index
      EFAI          : CAN_TXEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TXEFA_Register use record
      EFAI          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Control Area Network 0
   type CAN_Peripheral is record
      --  Core Release
      CREL   : aliased CAN_CREL_Register;
      --  Endian
      ENDN   : aliased HAL.UInt32;
      --  Message RAM Configuration
      MRCFG  : aliased CAN_MRCFG_Register;
      --  Fast Bit Timing and Prescaler
      DBTP   : aliased CAN_DBTP_Register;
      --  Test
      TEST   : aliased CAN_TEST_Register;
      --  RAM Watchdog
      RWD    : aliased CAN_RWD_Register;
      --  CC Control
      CCCR   : aliased CAN_CCCR_Register;
      --  Nominal Bit Timing and Prescaler
      NBTP   : aliased CAN_NBTP_Register;
      --  Timestamp Counter Configuration
      TSCC   : aliased CAN_TSCC_Register;
      --  Timestamp Counter Value
      TSCV   : aliased CAN_TSCV_Register;
      --  Timeout Counter Configuration
      TOCC   : aliased CAN_TOCC_Register;
      --  Timeout Counter Value
      TOCV   : aliased CAN_TOCV_Register;
      --  Error Counter
      ECR    : aliased CAN_ECR_Register;
      --  Protocol Status
      PSR    : aliased CAN_PSR_Register;
      --  Extended ID Filter Configuration
      TDCR   : aliased CAN_TDCR_Register;
      --  Interrupt
      IR     : aliased CAN_IR_Register;
      --  Interrupt Enable
      IE     : aliased CAN_IE_Register;
      --  Interrupt Line Select
      ILS    : aliased CAN_ILS_Register;
      --  Interrupt Line Enable
      ILE    : aliased CAN_ILE_Register;
      --  Global Filter Configuration
      GFC    : aliased CAN_GFC_Register;
      --  Standard ID Filter Configuration
      SIDFC  : aliased CAN_SIDFC_Register;
      --  Extended ID Filter Configuration
      XIDFC  : aliased CAN_XIDFC_Register;
      --  Extended ID AND Mask
      XIDAM  : aliased CAN_XIDAM_Register;
      --  High Priority Message Status
      HPMS   : aliased CAN_HPMS_Register;
      --  New Data 1
      NDAT1  : aliased CAN_NDAT1_Register;
      --  New Data 2
      NDAT2  : aliased CAN_NDAT2_Register;
      --  Rx FIFO 0 Configuration
      RXF0C  : aliased CAN_RXF0C_Register;
      --  Rx FIFO 0 Status
      RXF0S  : aliased CAN_RXF0S_Register;
      --  Rx FIFO 0 Acknowledge
      RXF0A  : aliased CAN_RXF0A_Register;
      --  Rx Buffer Configuration
      RXBC   : aliased CAN_RXBC_Register;
      --  Rx FIFO 1 Configuration
      RXF1C  : aliased CAN_RXF1C_Register;
      --  Rx FIFO 1 Status
      RXF1S  : aliased CAN_RXF1S_Register;
      --  Rx FIFO 1 Acknowledge
      RXF1A  : aliased CAN_RXF1A_Register;
      --  Rx Buffer / FIFO Element Size Configuration
      RXESC  : aliased CAN_RXESC_Register;
      --  Tx Buffer Configuration
      TXBC   : aliased CAN_TXBC_Register;
      --  Tx FIFO / Queue Status
      TXFQS  : aliased CAN_TXFQS_Register;
      --  Tx Buffer Element Size Configuration
      TXESC  : aliased CAN_TXESC_Register;
      --  Tx Buffer Request Pending
      TXBRP  : aliased CAN_TXBRP_Register;
      --  Tx Buffer Add Request
      TXBAR  : aliased CAN_TXBAR_Register;
      --  Tx Buffer Cancellation Request
      TXBCR  : aliased CAN_TXBCR_Register;
      --  Tx Buffer Transmission Occurred
      TXBTO  : aliased CAN_TXBTO_Register;
      --  Tx Buffer Cancellation Finished
      TXBCF  : aliased CAN_TXBCF_Register;
      --  Tx Buffer Transmission Interrupt Enable
      TXBTIE : aliased CAN_TXBTIE_Register;
      --  Tx Buffer Cancellation Finished Interrupt Enable
      TXBCIE : aliased CAN_TXBCIE_Register;
      --  Tx Event FIFO Configuration
      TXEFC  : aliased CAN_TXEFC_Register;
      --  Tx Event FIFO Status
      TXEFS  : aliased CAN_TXEFS_Register;
      --  Tx Event FIFO Acknowledge
      TXEFA  : aliased CAN_TXEFA_Register;
   end record
     with Volatile;

   for CAN_Peripheral use record
      CREL   at 16#0# range 0 .. 31;
      ENDN   at 16#4# range 0 .. 31;
      MRCFG  at 16#8# range 0 .. 31;
      DBTP   at 16#C# range 0 .. 31;
      TEST   at 16#10# range 0 .. 31;
      RWD    at 16#14# range 0 .. 31;
      CCCR   at 16#18# range 0 .. 31;
      NBTP   at 16#1C# range 0 .. 31;
      TSCC   at 16#20# range 0 .. 31;
      TSCV   at 16#24# range 0 .. 31;
      TOCC   at 16#28# range 0 .. 31;
      TOCV   at 16#2C# range 0 .. 31;
      ECR    at 16#40# range 0 .. 31;
      PSR    at 16#44# range 0 .. 31;
      TDCR   at 16#48# range 0 .. 31;
      IR     at 16#50# range 0 .. 31;
      IE     at 16#54# range 0 .. 31;
      ILS    at 16#58# range 0 .. 31;
      ILE    at 16#5C# range 0 .. 31;
      GFC    at 16#80# range 0 .. 31;
      SIDFC  at 16#84# range 0 .. 31;
      XIDFC  at 16#88# range 0 .. 31;
      XIDAM  at 16#90# range 0 .. 31;
      HPMS   at 16#94# range 0 .. 31;
      NDAT1  at 16#98# range 0 .. 31;
      NDAT2  at 16#9C# range 0 .. 31;
      RXF0C  at 16#A0# range 0 .. 31;
      RXF0S  at 16#A4# range 0 .. 31;
      RXF0A  at 16#A8# range 0 .. 31;
      RXBC   at 16#AC# range 0 .. 31;
      RXF1C  at 16#B0# range 0 .. 31;
      RXF1S  at 16#B4# range 0 .. 31;
      RXF1A  at 16#B8# range 0 .. 31;
      RXESC  at 16#BC# range 0 .. 31;
      TXBC   at 16#C0# range 0 .. 31;
      TXFQS  at 16#C4# range 0 .. 31;
      TXESC  at 16#C8# range 0 .. 31;
      TXBRP  at 16#CC# range 0 .. 31;
      TXBAR  at 16#D0# range 0 .. 31;
      TXBCR  at 16#D4# range 0 .. 31;
      TXBTO  at 16#D8# range 0 .. 31;
      TXBCF  at 16#DC# range 0 .. 31;
      TXBTIE at 16#E0# range 0 .. 31;
      TXBCIE at 16#E4# range 0 .. 31;
      TXEFC  at 16#F0# range 0 .. 31;
      TXEFS  at 16#F4# range 0 .. 31;
      TXEFA  at 16#F8# range 0 .. 31;
   end record;

   --  Control Area Network 0
   CAN0_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#42000000#);

   --  Control Area Network 1
   CAN1_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#42000400#);

end SAM_SVD.CAN;
