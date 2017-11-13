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

--  This spec has been automatically generated from ATSAM4LS2C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.USART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Reset Receiver
   type CR_LIN_MODE_RSTRXSelect is
     (
      --  No effect
      CR_LIN_MODE_RSTRXSelect_0,
      --  Resets the receiver
      CR_LIN_MODE_RSTRXSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RSTRXSelect use
     (CR_LIN_MODE_RSTRXSelect_0 => 0,
      CR_LIN_MODE_RSTRXSelect_1 => 1);

   --  Reset Transmitter
   type CR_LIN_MODE_RSTTXSelect is
     (
      --  No effect
      CR_LIN_MODE_RSTTXSelect_0,
      --  Resets the transmitter
      CR_LIN_MODE_RSTTXSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RSTTXSelect use
     (CR_LIN_MODE_RSTTXSelect_0 => 0,
      CR_LIN_MODE_RSTTXSelect_1 => 1);

   --  Receiver Enable
   type CR_LIN_MODE_RXENSelect is
     (
      --  No effect
      CR_LIN_MODE_RXENSelect_0,
      --  Enables the receiver, if RXDIS is 0
      CR_LIN_MODE_RXENSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RXENSelect use
     (CR_LIN_MODE_RXENSelect_0 => 0,
      CR_LIN_MODE_RXENSelect_1 => 1);

   --  Receiver Disable
   type CR_LIN_MODE_RXDISSelect is
     (
      --  No effect
      CR_LIN_MODE_RXDISSelect_0,
      --  Disables the receiver
      CR_LIN_MODE_RXDISSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RXDISSelect use
     (CR_LIN_MODE_RXDISSelect_0 => 0,
      CR_LIN_MODE_RXDISSelect_1 => 1);

   --  Transmitter Enable
   type CR_LIN_MODE_TXENSelect is
     (
      --  No effect
      CR_LIN_MODE_TXENSelect_0,
      --  Enables the transmitter if TXDIS is 0
      CR_LIN_MODE_TXENSelect_1)
     with Size => 1;
   for CR_LIN_MODE_TXENSelect use
     (CR_LIN_MODE_TXENSelect_0 => 0,
      CR_LIN_MODE_TXENSelect_1 => 1);

   --  Transmitter Disable
   type CR_LIN_MODE_TXDISSelect is
     (
      --  No effect
      CR_LIN_MODE_TXDISSelect_0,
      --  Disables the transmitter
      CR_LIN_MODE_TXDISSelect_1)
     with Size => 1;
   for CR_LIN_MODE_TXDISSelect use
     (CR_LIN_MODE_TXDISSelect_0 => 0,
      CR_LIN_MODE_TXDISSelect_1 => 1);

   --  Reset Status Bits
   type CR_LIN_MODE_RSTSTASelect is
     (
      --  No effect
      CR_LIN_MODE_RSTSTASelect_0,
      --  Resets the status bits PARE, FRAME, OVRE and RXBRK in the CSR
      CR_LIN_MODE_RSTSTASelect_1)
     with Size => 1;
   for CR_LIN_MODE_RSTSTASelect use
     (CR_LIN_MODE_RSTSTASelect_0 => 0,
      CR_LIN_MODE_RSTSTASelect_1 => 1);

   --  Start Break
   type CR_LIN_MODE_STTBRKSelect is
     (
      --  No effect
      CR_LIN_MODE_STTBRKSelect_0,
      --  Starts transmission of a break after the characters present in THR
      --  and the Transmit Shift Register have been transmitted. No effect if a
      --  break is already being transmitted
      CR_LIN_MODE_STTBRKSelect_1)
     with Size => 1;
   for CR_LIN_MODE_STTBRKSelect use
     (CR_LIN_MODE_STTBRKSelect_0 => 0,
      CR_LIN_MODE_STTBRKSelect_1 => 1);

   --  Stop Break
   type CR_LIN_MODE_STPBRKSelect is
     (
      --  No effect
      CR_LIN_MODE_STPBRKSelect_0,
      --  Stops transmission of the break after a minimum of one character
      --  length and transmits a high level during 12-bit periods.No effect if
      --  no break is being transmitted
      CR_LIN_MODE_STPBRKSelect_1)
     with Size => 1;
   for CR_LIN_MODE_STPBRKSelect use
     (CR_LIN_MODE_STPBRKSelect_0 => 0,
      CR_LIN_MODE_STPBRKSelect_1 => 1);

   --  Start Time-out
   type CR_LIN_MODE_STTTOSelect is
     (
      --  No effect
      CR_LIN_MODE_STTTOSelect_0,
      --  Starts waiting for a character before clocking the time-out counter
      CR_LIN_MODE_STTTOSelect_1)
     with Size => 1;
   for CR_LIN_MODE_STTTOSelect use
     (CR_LIN_MODE_STTTOSelect_0 => 0,
      CR_LIN_MODE_STTTOSelect_1 => 1);

   --  Send Address
   type CR_LIN_MODE_SENDASelect is
     (
      --  No effect
      CR_LIN_MODE_SENDASelect_0,
      --  In Multi-drop Mode only, the next character written to the THR is
      --  sent with the address bit set
      CR_LIN_MODE_SENDASelect_1)
     with Size => 1;
   for CR_LIN_MODE_SENDASelect use
     (CR_LIN_MODE_SENDASelect_0 => 0,
      CR_LIN_MODE_SENDASelect_1 => 1);

   --  Reset Iterations
   type CR_LIN_MODE_RSTITSelect is
     (
      --  No effect
      CR_LIN_MODE_RSTITSelect_0,
      --  Resets ITERATION in CSR. No effect if the ISO7816 is not enabled
      CR_LIN_MODE_RSTITSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RSTITSelect use
     (CR_LIN_MODE_RSTITSelect_0 => 0,
      CR_LIN_MODE_RSTITSelect_1 => 1);

   --  Reset Non Acknowledge
   type CR_LIN_MODE_RSTNACKSelect is
     (
      --  No effect
      CR_LIN_MODE_RSTNACKSelect_0,
      --  Resets NACK in CSR
      CR_LIN_MODE_RSTNACKSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RSTNACKSelect use
     (CR_LIN_MODE_RSTNACKSelect_0 => 0,
      CR_LIN_MODE_RSTNACKSelect_1 => 1);

   --  Rearm Time-out
   type CR_LIN_MODE_RETTOSelect is
     (
      --  No effect
      CR_LIN_MODE_RETTOSelect_0,
      --  Restart Time-out
      CR_LIN_MODE_RETTOSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RETTOSelect use
     (CR_LIN_MODE_RETTOSelect_0 => 0,
      CR_LIN_MODE_RETTOSelect_1 => 1);

   --  Data Terminal Ready Enable
   type CR_LIN_MODE_DTRENSelect is
     (
      --  No effect
      CR_LIN_MODE_DTRENSelect_0,
      --  Drives the pin DTR at 0
      CR_LIN_MODE_DTRENSelect_1)
     with Size => 1;
   for CR_LIN_MODE_DTRENSelect use
     (CR_LIN_MODE_DTRENSelect_0 => 0,
      CR_LIN_MODE_DTRENSelect_1 => 1);

   --  Data Terminal Ready Disable
   type CR_LIN_MODE_DTRDISSelect is
     (
      --  No effect
      CR_LIN_MODE_DTRDISSelect_0,
      --  Drives the pin DTR to 1
      CR_LIN_MODE_DTRDISSelect_1)
     with Size => 1;
   for CR_LIN_MODE_DTRDISSelect use
     (CR_LIN_MODE_DTRDISSelect_0 => 0,
      CR_LIN_MODE_DTRDISSelect_1 => 1);

   --  Request to Send Enable
   type CR_LIN_MODE_RTSENSelect is
     (
      --  No effect
      CR_LIN_MODE_RTSENSelect_0,
      --  Drives the pin RTS to 0
      CR_LIN_MODE_RTSENSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RTSENSelect use
     (CR_LIN_MODE_RTSENSelect_0 => 0,
      CR_LIN_MODE_RTSENSelect_1 => 1);

   --  Request to Send Disable
   type CR_LIN_MODE_RTSDISSelect is
     (
      --  No effect
      CR_LIN_MODE_RTSDISSelect_0,
      --  Drives the pin RTS to 1
      CR_LIN_MODE_RTSDISSelect_1)
     with Size => 1;
   for CR_LIN_MODE_RTSDISSelect use
     (CR_LIN_MODE_RTSDISSelect_0 => 0,
      CR_LIN_MODE_RTSDISSelect_1 => 1);

   --  Control Register
   type USART_CR_LIN_MODE_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : CR_LIN_MODE_RSTRXSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RSTRXSelect_0;
      --  Write-only. Reset Transmitter
      RSTTX          : CR_LIN_MODE_RSTTXSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RSTTXSelect_0;
      --  Write-only. Receiver Enable
      RXEN           : CR_LIN_MODE_RXENSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RXENSelect_0;
      --  Write-only. Receiver Disable
      RXDIS          : CR_LIN_MODE_RXDISSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RXDISSelect_0;
      --  Write-only. Transmitter Enable
      TXEN           : CR_LIN_MODE_TXENSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_TXENSelect_0;
      --  Write-only. Transmitter Disable
      TXDIS          : CR_LIN_MODE_TXDISSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_TXDISSelect_0;
      --  Write-only. Reset Status Bits
      RSTSTA         : CR_LIN_MODE_RSTSTASelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RSTSTASelect_0;
      --  Write-only. Start Break
      STTBRK         : CR_LIN_MODE_STTBRKSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_STTBRKSelect_0;
      --  Write-only. Stop Break
      STPBRK         : CR_LIN_MODE_STPBRKSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_STPBRKSelect_0;
      --  Write-only. Start Time-out
      STTTO          : CR_LIN_MODE_STTTOSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_STTTOSelect_0;
      --  Write-only. Send Address
      SENDA          : CR_LIN_MODE_SENDASelect :=
                        SAM_SVD.USART.CR_LIN_MODE_SENDASelect_0;
      --  Write-only. Reset Iterations
      RSTIT          : CR_LIN_MODE_RSTITSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RSTITSelect_0;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : CR_LIN_MODE_RSTNACKSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RSTNACKSelect_0;
      --  Write-only. Rearm Time-out
      RETTO          : CR_LIN_MODE_RETTOSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RETTOSelect_0;
      --  Write-only. Data Terminal Ready Enable
      DTREN          : CR_LIN_MODE_DTRENSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_DTRENSelect_0;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : CR_LIN_MODE_DTRDISSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_DTRDISSelect_0;
      --  Write-only. Request to Send Enable
      RTSEN          : CR_LIN_MODE_RTSENSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RTSENSelect_0;
      --  Write-only. Request to Send Disable
      RTSDIS         : CR_LIN_MODE_RTSDISSelect :=
                        SAM_SVD.USART.CR_LIN_MODE_RTSDISSelect_0;
      --  Write-only. Abort the current LIN transmission
      LINABT         : Boolean := False;
      --  Write-only. Sends a wakeup signal on the LIN bus
      LINWKUP        : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_LIN_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Reset Receiver
   type CR_SPI_MASTER_MODE_RSTRXSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RSTRXSelect_0,
      --  Resets the receiver
      CR_SPI_MASTER_MODE_RSTRXSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RSTRXSelect use
     (CR_SPI_MASTER_MODE_RSTRXSelect_0 => 0,
      CR_SPI_MASTER_MODE_RSTRXSelect_1 => 1);

   --  Reset Transmitter
   type CR_SPI_MASTER_MODE_RSTTXSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RSTTXSelect_0,
      --  Resets the transmitter
      CR_SPI_MASTER_MODE_RSTTXSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RSTTXSelect use
     (CR_SPI_MASTER_MODE_RSTTXSelect_0 => 0,
      CR_SPI_MASTER_MODE_RSTTXSelect_1 => 1);

   --  Receiver Enable
   type CR_SPI_MASTER_MODE_RXENSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RXENSelect_0,
      --  Enables the receiver, if RXDIS is 0
      CR_SPI_MASTER_MODE_RXENSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RXENSelect use
     (CR_SPI_MASTER_MODE_RXENSelect_0 => 0,
      CR_SPI_MASTER_MODE_RXENSelect_1 => 1);

   --  Receiver Disable
   type CR_SPI_MASTER_MODE_RXDISSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RXDISSelect_0,
      --  Disables the receiver
      CR_SPI_MASTER_MODE_RXDISSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RXDISSelect use
     (CR_SPI_MASTER_MODE_RXDISSelect_0 => 0,
      CR_SPI_MASTER_MODE_RXDISSelect_1 => 1);

   --  Transmitter Enable
   type CR_SPI_MASTER_MODE_TXENSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_TXENSelect_0,
      --  Enables the transmitter if TXDIS is 0
      CR_SPI_MASTER_MODE_TXENSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_TXENSelect use
     (CR_SPI_MASTER_MODE_TXENSelect_0 => 0,
      CR_SPI_MASTER_MODE_TXENSelect_1 => 1);

   --  Transmitter Disable
   type CR_SPI_MASTER_MODE_TXDISSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_TXDISSelect_0,
      --  Disables the transmitter
      CR_SPI_MASTER_MODE_TXDISSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_TXDISSelect use
     (CR_SPI_MASTER_MODE_TXDISSelect_0 => 0,
      CR_SPI_MASTER_MODE_TXDISSelect_1 => 1);

   --  Reset Status Bits
   type CR_SPI_MASTER_MODE_RSTSTASelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RSTSTASelect_0,
      --  Resets the status bits PARE, FRAME, OVRE and RXBRK in the CSR
      CR_SPI_MASTER_MODE_RSTSTASelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RSTSTASelect use
     (CR_SPI_MASTER_MODE_RSTSTASelect_0 => 0,
      CR_SPI_MASTER_MODE_RSTSTASelect_1 => 1);

   --  Start Break
   type CR_SPI_MASTER_MODE_STTBRKSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_STTBRKSelect_0,
      --  Starts transmission of a break after the characters present in THR
      --  and the Transmit Shift Register have been transmitted. No effect if a
      --  break is already being transmitted
      CR_SPI_MASTER_MODE_STTBRKSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_STTBRKSelect use
     (CR_SPI_MASTER_MODE_STTBRKSelect_0 => 0,
      CR_SPI_MASTER_MODE_STTBRKSelect_1 => 1);

   --  Stop Break
   type CR_SPI_MASTER_MODE_STPBRKSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_STPBRKSelect_0,
      --  Stops transmission of the break after a minimum of one character
      --  length and transmits a high level during 12-bit periods.No effect if
      --  no break is being transmitted
      CR_SPI_MASTER_MODE_STPBRKSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_STPBRKSelect use
     (CR_SPI_MASTER_MODE_STPBRKSelect_0 => 0,
      CR_SPI_MASTER_MODE_STPBRKSelect_1 => 1);

   --  Start Time-out
   type CR_SPI_MASTER_MODE_STTTOSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_STTTOSelect_0,
      --  Starts waiting for a character before clocking the time-out counter
      CR_SPI_MASTER_MODE_STTTOSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_STTTOSelect use
     (CR_SPI_MASTER_MODE_STTTOSelect_0 => 0,
      CR_SPI_MASTER_MODE_STTTOSelect_1 => 1);

   --  Send Address
   type CR_SPI_MASTER_MODE_SENDASelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_SENDASelect_0,
      --  In Multi-drop Mode only, the next character written to the THR is
      --  sent with the address bit set
      CR_SPI_MASTER_MODE_SENDASelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_SENDASelect use
     (CR_SPI_MASTER_MODE_SENDASelect_0 => 0,
      CR_SPI_MASTER_MODE_SENDASelect_1 => 1);

   --  Reset Iterations
   type CR_SPI_MASTER_MODE_RSTITSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RSTITSelect_0,
      --  Resets ITERATION in CSR. No effect if the ISO7816 is not enabled
      CR_SPI_MASTER_MODE_RSTITSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RSTITSelect use
     (CR_SPI_MASTER_MODE_RSTITSelect_0 => 0,
      CR_SPI_MASTER_MODE_RSTITSelect_1 => 1);

   --  Reset Non Acknowledge
   type CR_SPI_MASTER_MODE_RSTNACKSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RSTNACKSelect_0,
      --  Resets NACK in CSR
      CR_SPI_MASTER_MODE_RSTNACKSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RSTNACKSelect use
     (CR_SPI_MASTER_MODE_RSTNACKSelect_0 => 0,
      CR_SPI_MASTER_MODE_RSTNACKSelect_1 => 1);

   --  Rearm Time-out
   type CR_SPI_MASTER_MODE_RETTOSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RETTOSelect_0,
      --  Restart Time-out
      CR_SPI_MASTER_MODE_RETTOSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RETTOSelect use
     (CR_SPI_MASTER_MODE_RETTOSelect_0 => 0,
      CR_SPI_MASTER_MODE_RETTOSelect_1 => 1);

   --  Data Terminal Ready Enable
   type CR_SPI_MASTER_MODE_DTRENSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_DTRENSelect_0,
      --  Drives the pin DTR at 0
      CR_SPI_MASTER_MODE_DTRENSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_DTRENSelect use
     (CR_SPI_MASTER_MODE_DTRENSelect_0 => 0,
      CR_SPI_MASTER_MODE_DTRENSelect_1 => 1);

   --  Data Terminal Ready Disable
   type CR_SPI_MASTER_MODE_DTRDISSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_DTRDISSelect_0,
      --  Drives the pin DTR to 1
      CR_SPI_MASTER_MODE_DTRDISSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_DTRDISSelect use
     (CR_SPI_MASTER_MODE_DTRDISSelect_0 => 0,
      CR_SPI_MASTER_MODE_DTRDISSelect_1 => 1);

   --  Force SPI Chip Select
   type CR_SPI_MASTER_MODE_FCSSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_FCSSelect_0,
      --  Forces the Slave Select Line NSS (RTS pin) to 0, even if USART is no
      --  transmitting, in order to address SPI slave devices supporting the
      --  CSAAT Mode (Chip Select Active After Transfer)
      CR_SPI_MASTER_MODE_FCSSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_FCSSelect use
     (CR_SPI_MASTER_MODE_FCSSelect_0 => 0,
      CR_SPI_MASTER_MODE_FCSSelect_1 => 1);

   --  Release SPI Chip Select
   type CR_SPI_MASTER_MODE_RCSSelect is
     (
      --  No effect
      CR_SPI_MASTER_MODE_RCSSelect_0,
      --  Releases the Slave Select Line NSS (RTS pin)
      CR_SPI_MASTER_MODE_RCSSelect_1)
     with Size => 1;
   for CR_SPI_MASTER_MODE_RCSSelect use
     (CR_SPI_MASTER_MODE_RCSSelect_0 => 0,
      CR_SPI_MASTER_MODE_RCSSelect_1 => 1);

   --  Control Register
   type USART_CR_SPI_MASTER_MODE_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : CR_SPI_MASTER_MODE_RSTRXSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RSTRXSelect_0;
      --  Write-only. Reset Transmitter
      RSTTX          : CR_SPI_MASTER_MODE_RSTTXSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RSTTXSelect_0;
      --  Write-only. Receiver Enable
      RXEN           : CR_SPI_MASTER_MODE_RXENSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RXENSelect_0;
      --  Write-only. Receiver Disable
      RXDIS          : CR_SPI_MASTER_MODE_RXDISSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RXDISSelect_0;
      --  Write-only. Transmitter Enable
      TXEN           : CR_SPI_MASTER_MODE_TXENSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_TXENSelect_0;
      --  Write-only. Transmitter Disable
      TXDIS          : CR_SPI_MASTER_MODE_TXDISSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_TXDISSelect_0;
      --  Write-only. Reset Status Bits
      RSTSTA         : CR_SPI_MASTER_MODE_RSTSTASelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RSTSTASelect_0;
      --  Write-only. Start Break
      STTBRK         : CR_SPI_MASTER_MODE_STTBRKSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_STTBRKSelect_0;
      --  Write-only. Stop Break
      STPBRK         : CR_SPI_MASTER_MODE_STPBRKSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_STPBRKSelect_0;
      --  Write-only. Start Time-out
      STTTO          : CR_SPI_MASTER_MODE_STTTOSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_STTTOSelect_0;
      --  Write-only. Send Address
      SENDA          : CR_SPI_MASTER_MODE_SENDASelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_SENDASelect_0;
      --  Write-only. Reset Iterations
      RSTIT          : CR_SPI_MASTER_MODE_RSTITSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RSTITSelect_0;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : CR_SPI_MASTER_MODE_RSTNACKSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RSTNACKSelect_0;
      --  Write-only. Rearm Time-out
      RETTO          : CR_SPI_MASTER_MODE_RETTOSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RETTOSelect_0;
      --  Write-only. Data Terminal Ready Enable
      DTREN          : CR_SPI_MASTER_MODE_DTRENSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_DTRENSelect_0;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : CR_SPI_MASTER_MODE_DTRDISSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_DTRDISSelect_0;
      --  Write-only. Force SPI Chip Select
      FCS            : CR_SPI_MASTER_MODE_FCSSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_FCSSelect_0;
      --  Write-only. Release SPI Chip Select
      RCS            : CR_SPI_MASTER_MODE_RCSSelect :=
                        SAM_SVD.USART.CR_SPI_MASTER_MODE_RCSSelect_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_SPI_MASTER_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      FCS            at 0 range 18 .. 18;
      RCS            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Reset Receiver
   type CR_USART_MODE_RSTRXSelect is
     (
      --  No effect
      CR_USART_MODE_RSTRXSelect_0,
      --  Resets the receiver
      CR_USART_MODE_RSTRXSelect_1)
     with Size => 1;
   for CR_USART_MODE_RSTRXSelect use
     (CR_USART_MODE_RSTRXSelect_0 => 0,
      CR_USART_MODE_RSTRXSelect_1 => 1);

   --  Reset Transmitter
   type CR_USART_MODE_RSTTXSelect is
     (
      --  No effect
      CR_USART_MODE_RSTTXSelect_0,
      --  Resets the transmitter
      CR_USART_MODE_RSTTXSelect_1)
     with Size => 1;
   for CR_USART_MODE_RSTTXSelect use
     (CR_USART_MODE_RSTTXSelect_0 => 0,
      CR_USART_MODE_RSTTXSelect_1 => 1);

   --  Receiver Enable
   type CR_USART_MODE_RXENSelect is
     (
      --  No effect
      CR_USART_MODE_RXENSelect_0,
      --  Enables the receiver, if RXDIS is 0
      CR_USART_MODE_RXENSelect_1)
     with Size => 1;
   for CR_USART_MODE_RXENSelect use
     (CR_USART_MODE_RXENSelect_0 => 0,
      CR_USART_MODE_RXENSelect_1 => 1);

   --  Receiver Disable
   type CR_USART_MODE_RXDISSelect is
     (
      --  No effect
      CR_USART_MODE_RXDISSelect_0,
      --  Disables the receiver
      CR_USART_MODE_RXDISSelect_1)
     with Size => 1;
   for CR_USART_MODE_RXDISSelect use
     (CR_USART_MODE_RXDISSelect_0 => 0,
      CR_USART_MODE_RXDISSelect_1 => 1);

   --  Transmitter Enable
   type CR_USART_MODE_TXENSelect is
     (
      --  No effect
      CR_USART_MODE_TXENSelect_0,
      --  Enables the transmitter if TXDIS is 0
      CR_USART_MODE_TXENSelect_1)
     with Size => 1;
   for CR_USART_MODE_TXENSelect use
     (CR_USART_MODE_TXENSelect_0 => 0,
      CR_USART_MODE_TXENSelect_1 => 1);

   --  Transmitter Disable
   type CR_USART_MODE_TXDISSelect is
     (
      --  No effect
      CR_USART_MODE_TXDISSelect_0,
      --  Disables the transmitter
      CR_USART_MODE_TXDISSelect_1)
     with Size => 1;
   for CR_USART_MODE_TXDISSelect use
     (CR_USART_MODE_TXDISSelect_0 => 0,
      CR_USART_MODE_TXDISSelect_1 => 1);

   --  Reset Status Bits
   type CR_USART_MODE_RSTSTASelect is
     (
      --  No effect
      CR_USART_MODE_RSTSTASelect_0,
      --  Resets the status bits PARE, FRAME, OVRE and RXBRK in the CSR
      CR_USART_MODE_RSTSTASelect_1)
     with Size => 1;
   for CR_USART_MODE_RSTSTASelect use
     (CR_USART_MODE_RSTSTASelect_0 => 0,
      CR_USART_MODE_RSTSTASelect_1 => 1);

   --  Start Break
   type CR_USART_MODE_STTBRKSelect is
     (
      --  No effect
      CR_USART_MODE_STTBRKSelect_0,
      --  Starts transmission of a break after the characters present in THR
      --  and the Transmit Shift Register have been transmitted. No effect if a
      --  break is already being transmitted
      CR_USART_MODE_STTBRKSelect_1)
     with Size => 1;
   for CR_USART_MODE_STTBRKSelect use
     (CR_USART_MODE_STTBRKSelect_0 => 0,
      CR_USART_MODE_STTBRKSelect_1 => 1);

   --  Stop Break
   type CR_USART_MODE_STPBRKSelect is
     (
      --  No effect
      CR_USART_MODE_STPBRKSelect_0,
      --  Stops transmission of the break after a minimum of one character
      --  length and transmits a high level during 12-bit periods.No effect if
      --  no break is being transmitted
      CR_USART_MODE_STPBRKSelect_1)
     with Size => 1;
   for CR_USART_MODE_STPBRKSelect use
     (CR_USART_MODE_STPBRKSelect_0 => 0,
      CR_USART_MODE_STPBRKSelect_1 => 1);

   --  Start Time-out
   type CR_USART_MODE_STTTOSelect is
     (
      --  No effect
      CR_USART_MODE_STTTOSelect_0,
      --  Starts waiting for a character before clocking the time-out counter
      CR_USART_MODE_STTTOSelect_1)
     with Size => 1;
   for CR_USART_MODE_STTTOSelect use
     (CR_USART_MODE_STTTOSelect_0 => 0,
      CR_USART_MODE_STTTOSelect_1 => 1);

   --  Send Address
   type CR_USART_MODE_SENDASelect is
     (
      --  No effect
      CR_USART_MODE_SENDASelect_0,
      --  In Multi-drop Mode only, the next character written to the THR is
      --  sent with the address bit set
      CR_USART_MODE_SENDASelect_1)
     with Size => 1;
   for CR_USART_MODE_SENDASelect use
     (CR_USART_MODE_SENDASelect_0 => 0,
      CR_USART_MODE_SENDASelect_1 => 1);

   --  Reset Iterations
   type CR_USART_MODE_RSTITSelect is
     (
      --  No effect
      CR_USART_MODE_RSTITSelect_0,
      --  Resets ITERATION in CSR. No effect if the ISO7816 is not enabled
      CR_USART_MODE_RSTITSelect_1)
     with Size => 1;
   for CR_USART_MODE_RSTITSelect use
     (CR_USART_MODE_RSTITSelect_0 => 0,
      CR_USART_MODE_RSTITSelect_1 => 1);

   --  Reset Non Acknowledge
   type CR_USART_MODE_RSTNACKSelect is
     (
      --  No effect
      CR_USART_MODE_RSTNACKSelect_0,
      --  Resets NACK in CSR
      CR_USART_MODE_RSTNACKSelect_1)
     with Size => 1;
   for CR_USART_MODE_RSTNACKSelect use
     (CR_USART_MODE_RSTNACKSelect_0 => 0,
      CR_USART_MODE_RSTNACKSelect_1 => 1);

   --  Rearm Time-out
   type CR_USART_MODE_RETTOSelect is
     (
      --  No effect
      CR_USART_MODE_RETTOSelect_0,
      --  Restart Time-out
      CR_USART_MODE_RETTOSelect_1)
     with Size => 1;
   for CR_USART_MODE_RETTOSelect use
     (CR_USART_MODE_RETTOSelect_0 => 0,
      CR_USART_MODE_RETTOSelect_1 => 1);

   --  Data Terminal Ready Enable
   type CR_USART_MODE_DTRENSelect is
     (
      --  No effect
      CR_USART_MODE_DTRENSelect_0,
      --  Drives the pin DTR at 0
      CR_USART_MODE_DTRENSelect_1)
     with Size => 1;
   for CR_USART_MODE_DTRENSelect use
     (CR_USART_MODE_DTRENSelect_0 => 0,
      CR_USART_MODE_DTRENSelect_1 => 1);

   --  Data Terminal Ready Disable
   type CR_USART_MODE_DTRDISSelect is
     (
      --  No effect
      CR_USART_MODE_DTRDISSelect_0,
      --  Drives the pin DTR to 1
      CR_USART_MODE_DTRDISSelect_1)
     with Size => 1;
   for CR_USART_MODE_DTRDISSelect use
     (CR_USART_MODE_DTRDISSelect_0 => 0,
      CR_USART_MODE_DTRDISSelect_1 => 1);

   --  Request to Send Enable
   type CR_USART_MODE_RTSENSelect is
     (
      --  No effect
      CR_USART_MODE_RTSENSelect_0,
      --  Drives the pin RTS to 0
      CR_USART_MODE_RTSENSelect_1)
     with Size => 1;
   for CR_USART_MODE_RTSENSelect use
     (CR_USART_MODE_RTSENSelect_0 => 0,
      CR_USART_MODE_RTSENSelect_1 => 1);

   --  Request to Send Disable
   type CR_USART_MODE_RTSDISSelect is
     (
      --  No effect
      CR_USART_MODE_RTSDISSelect_0,
      --  Drives the pin RTS to 1
      CR_USART_MODE_RTSDISSelect_1)
     with Size => 1;
   for CR_USART_MODE_RTSDISSelect use
     (CR_USART_MODE_RTSDISSelect_0 => 0,
      CR_USART_MODE_RTSDISSelect_1 => 1);

   --  Control Register
   type USART_CR_USART_MODE_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : CR_USART_MODE_RSTRXSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RSTRXSelect_0;
      --  Write-only. Reset Transmitter
      RSTTX          : CR_USART_MODE_RSTTXSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RSTTXSelect_0;
      --  Write-only. Receiver Enable
      RXEN           : CR_USART_MODE_RXENSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RXENSelect_0;
      --  Write-only. Receiver Disable
      RXDIS          : CR_USART_MODE_RXDISSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RXDISSelect_0;
      --  Write-only. Transmitter Enable
      TXEN           : CR_USART_MODE_TXENSelect :=
                        SAM_SVD.USART.CR_USART_MODE_TXENSelect_0;
      --  Write-only. Transmitter Disable
      TXDIS          : CR_USART_MODE_TXDISSelect :=
                        SAM_SVD.USART.CR_USART_MODE_TXDISSelect_0;
      --  Write-only. Reset Status Bits
      RSTSTA         : CR_USART_MODE_RSTSTASelect :=
                        SAM_SVD.USART.CR_USART_MODE_RSTSTASelect_0;
      --  Write-only. Start Break
      STTBRK         : CR_USART_MODE_STTBRKSelect :=
                        SAM_SVD.USART.CR_USART_MODE_STTBRKSelect_0;
      --  Write-only. Stop Break
      STPBRK         : CR_USART_MODE_STPBRKSelect :=
                        SAM_SVD.USART.CR_USART_MODE_STPBRKSelect_0;
      --  Write-only. Start Time-out
      STTTO          : CR_USART_MODE_STTTOSelect :=
                        SAM_SVD.USART.CR_USART_MODE_STTTOSelect_0;
      --  Write-only. Send Address
      SENDA          : CR_USART_MODE_SENDASelect :=
                        SAM_SVD.USART.CR_USART_MODE_SENDASelect_0;
      --  Write-only. Reset Iterations
      RSTIT          : CR_USART_MODE_RSTITSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RSTITSelect_0;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : CR_USART_MODE_RSTNACKSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RSTNACKSelect_0;
      --  Write-only. Rearm Time-out
      RETTO          : CR_USART_MODE_RETTOSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RETTOSelect_0;
      --  Write-only. Data Terminal Ready Enable
      DTREN          : CR_USART_MODE_DTRENSelect :=
                        SAM_SVD.USART.CR_USART_MODE_DTRENSelect_0;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : CR_USART_MODE_DTRDISSelect :=
                        SAM_SVD.USART.CR_USART_MODE_DTRDISSelect_0;
      --  Write-only. Request to Send Enable
      RTSEN          : CR_USART_MODE_RTSENSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RTSENSelect_0;
      --  Write-only. Request to Send Disable
      RTSDIS         : CR_USART_MODE_RTSDISSelect :=
                        SAM_SVD.USART.CR_USART_MODE_RTSDISSelect_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_USART_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Usart Mode
   type MR_SPI_MODE_MODESelect is
     (
      --  Normal
      Normal,
      --  RS485
      Rs485,
      --  Hardware Handshaking
      Hardware,
      --  Modem
      Modem,
      --  IS07816 Protocol: T = 0
      Iso7816_T0,
      --  IS07816 Protocol: T = 1
      Iso7816_T1,
      --  IrDA
      Irda,
      --  LIN Master
      Lin_Master,
      --  LIN Slave
      Lin_Slave,
      --  SPI Master
      Spi_Master,
      --  SPI Slave
      Spi_Slave)
     with Size => 4;
   for MR_SPI_MODE_MODESelect use
     (Normal => 0,
      Rs485 => 1,
      Hardware => 2,
      Modem => 3,
      Iso7816_T0 => 4,
      Iso7816_T1 => 6,
      Irda => 8,
      Lin_Master => 10,
      Lin_Slave => 11,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type MR_SPI_MODE_USCLKSSelect is
     (
      --  MCK
      Mck,
      --  MCK / DIV
      Mck_Div,
      --  SCK
      Sck)
     with Size => 2;
   for MR_SPI_MODE_USCLKSSelect use
     (Mck => 0,
      Mck_Div => 1,
      Sck => 3);

   --  Character Length.
   type MR_SPI_MODE_CHRLSelect is
     (
      --  5 bits
      MR_SPI_MODE_CHRLSelect_5,
      --  6 bits
      MR_SPI_MODE_CHRLSelect_6,
      --  7 bits
      MR_SPI_MODE_CHRLSelect_7,
      --  8 bits
      MR_SPI_MODE_CHRLSelect_8)
     with Size => 2;
   for MR_SPI_MODE_CHRLSelect use
     (MR_SPI_MODE_CHRLSelect_5 => 0,
      MR_SPI_MODE_CHRLSelect_6 => 1,
      MR_SPI_MODE_CHRLSelect_7 => 2,
      MR_SPI_MODE_CHRLSelect_8 => 3);

   --  SPI CLock Phase
   type MR_SPI_MODE_CPHASelect is
     (
      --  Data is changed on the leading edge of SPCK and captured on the
      --  following edge of SPCK
      MR_SPI_MODE_CPHASelect_0,
      --  Data is captured on the leading edge of SPCK and changed on the
      --  following edge of SPCK
      MR_SPI_MODE_CPHASelect_1)
     with Size => 1;
   for MR_SPI_MODE_CPHASelect use
     (MR_SPI_MODE_CPHASelect_0 => 0,
      MR_SPI_MODE_CPHASelect_1 => 1);

   --  Parity Type
   type MR_SPI_MODE_PARSelect is
     (
      --  Even parity
      Even,
      --  Odd parity
      Odd,
      --  Parity forced to 0 (Space)
      Space,
      --  Parity forced to 1 (Mark)
      Mark,
      --  No Parity
      None,
      --  No Parity
      MR_SPI_MODE_PARSelect_5,
      --  Multi-drop mode
      Multi,
      --  Multi-drop mode
      MR_SPI_MODE_PARSelect_7)
     with Size => 3;
   for MR_SPI_MODE_PARSelect use
     (Even => 0,
      Odd => 1,
      Space => 2,
      Mark => 3,
      None => 4,
      MR_SPI_MODE_PARSelect_5 => 5,
      Multi => 6,
      MR_SPI_MODE_PARSelect_7 => 7);

   --  Number of Stop Bits
   type MR_SPI_MODE_NBSTOPSelect is
     (
      --  1 stop bit
      MR_SPI_MODE_NBSTOPSelect_1,
      --  1.5 stop bits (Only valid if SYNC=0)
      MR_SPI_MODE_NBSTOPSelect_1_5,
      --  2 stop bits
      MR_SPI_MODE_NBSTOPSelect_2)
     with Size => 2;
   for MR_SPI_MODE_NBSTOPSelect use
     (MR_SPI_MODE_NBSTOPSelect_1 => 0,
      MR_SPI_MODE_NBSTOPSelect_1_5 => 1,
      MR_SPI_MODE_NBSTOPSelect_2 => 2);

   --  Channel Mode
   type MR_SPI_MODE_CHMODESelect is
     (
      --  Normal Mode
      Normal,
      --  Automatic Echo. Receiver input is connected to the TXD pin
      Echo,
      --  Local Loopback. Transmitter output is connected to the Receiver Input
      Local_Loop,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin
      Remote_Loop)
     with Size => 2;
   for MR_SPI_MODE_CHMODESelect use
     (Normal => 0,
      Echo => 1,
      Local_Loop => 2,
      Remote_Loop => 3);

   --  SPI Clock Polarity
   type MR_SPI_MODE_CPOLSelect is
     (
      --  The inactive state value of SPCK is logic level zero
      Zero,
      --  The inactive state value of SPCK is logic level one
      One)
     with Size => 1;
   for MR_SPI_MODE_CPOLSelect use
     (Zero => 0,
      One => 1);

   --  9-bit Character Length
   type MR_SPI_MODE_MODE9Select is
     (
      --  CHRL defines character length
      MR_SPI_MODE_MODE9Select_0,
      --  9-bit character length
      MR_SPI_MODE_MODE9Select_1)
     with Size => 1;
   for MR_SPI_MODE_MODE9Select use
     (MR_SPI_MODE_MODE9Select_0 => 0,
      MR_SPI_MODE_MODE9Select_1 => 1);

   --  Clock Output Select
   type MR_SPI_MODE_CLKOSelect is
     (
      --  The USART does not drive the SCK pin
      MR_SPI_MODE_CLKOSelect_0,
      --  The USART drives the SCK pin if USCLKS does not select the external
      --  clock SCK
      MR_SPI_MODE_CLKOSelect_1)
     with Size => 1;
   for MR_SPI_MODE_CLKOSelect use
     (MR_SPI_MODE_CLKOSelect_0 => 0,
      MR_SPI_MODE_CLKOSelect_1 => 1);

   --  Oversampling Mode
   type MR_SPI_MODE_OVERSelect is
     (
      --  16x Oversampling
      X16,
      --  8x Oversampling
      X8)
     with Size => 1;
   for MR_SPI_MODE_OVERSelect use
     (X16 => 0,
      X8 => 1);

   --  Inhibit Non Acknowledge
   type MR_SPI_MODE_INACKSelect is
     (
      --  The NACK is generated
      MR_SPI_MODE_INACKSelect_0,
      --  The NACK is not generated
      MR_SPI_MODE_INACKSelect_1)
     with Size => 1;
   for MR_SPI_MODE_INACKSelect use
     (MR_SPI_MODE_INACKSelect_0 => 0,
      MR_SPI_MODE_INACKSelect_1 => 1);

   --  Disable Successive NACK
   type MR_SPI_MODE_DSNACKSelect is
     (
      --  NACK is sent on the ISO line as soon as a parity error occurs in the
      --  received character (unless INACK is set)
      MR_SPI_MODE_DSNACKSelect_0,
      --  Successive parity errors are counted up to the value specified in the
      --  MAX_ITERATION field. These parity errors generatea NACK on the ISO
      --  line. As soon as this value is reached, no additional NACK is sent on
      --  the ISO line. The flag ITERATION is asserted
      MR_SPI_MODE_DSNACKSelect_1)
     with Size => 1;
   for MR_SPI_MODE_DSNACKSelect use
     (MR_SPI_MODE_DSNACKSelect_0 => 0,
      MR_SPI_MODE_DSNACKSelect_1 => 1);

   subtype USART_MR_SPI_MODE_MAX_ITERATION_Field is HAL.UInt3;

   --  Infrared Receive Line Filter
   type MR_SPI_MODE_FILTERSelect is
     (
      --  The USART does not filter the receive line
      MR_SPI_MODE_FILTERSelect_0,
      --  The USART filters the receive line using a three-sample filter
      --  (1/16-bit clock) (2 over 3 majority)
      MR_SPI_MODE_FILTERSelect_1)
     with Size => 1;
   for MR_SPI_MODE_FILTERSelect use
     (MR_SPI_MODE_FILTERSelect_0 => 0,
      MR_SPI_MODE_FILTERSelect_1 => 1);

   --  Mode Register
   type USART_MR_SPI_MODE_Register is record
      --  Usart Mode
      MODE           : MR_SPI_MODE_MODESelect := SAM_SVD.USART.Normal;
      --  Clock Selection
      USCLKS         : MR_SPI_MODE_USCLKSSelect := SAM_SVD.USART.Mck;
      --  Character Length.
      CHRL           : MR_SPI_MODE_CHRLSelect :=
                        SAM_SVD.USART.MR_SPI_MODE_CHRLSelect_5;
      --  SPI CLock Phase
      CPHA           : MR_SPI_MODE_CPHASelect :=
                        SAM_SVD.USART.MR_SPI_MODE_CPHASelect_0;
      --  Parity Type
      PAR            : MR_SPI_MODE_PARSelect := SAM_SVD.USART.Even;
      --  Number of Stop Bits
      NBSTOP         : MR_SPI_MODE_NBSTOPSelect :=
                        SAM_SVD.USART.MR_SPI_MODE_NBSTOPSelect_1;
      --  Channel Mode
      CHMODE         : MR_SPI_MODE_CHMODESelect := SAM_SVD.USART.Normal;
      --  SPI Clock Polarity
      CPOL           : MR_SPI_MODE_CPOLSelect := SAM_SVD.USART.Zero;
      --  9-bit Character Length
      MODE9          : MR_SPI_MODE_MODE9Select :=
                        SAM_SVD.USART.MR_SPI_MODE_MODE9Select_0;
      --  Clock Output Select
      CLKO           : MR_SPI_MODE_CLKOSelect :=
                        SAM_SVD.USART.MR_SPI_MODE_CLKOSelect_0;
      --  Oversampling Mode
      OVER           : MR_SPI_MODE_OVERSelect := SAM_SVD.USART.X16;
      --  Inhibit Non Acknowledge
      INACK          : MR_SPI_MODE_INACKSelect :=
                        SAM_SVD.USART.MR_SPI_MODE_INACKSelect_0;
      --  Disable Successive NACK
      DSNACK         : MR_SPI_MODE_DSNACKSelect :=
                        SAM_SVD.USART.MR_SPI_MODE_DSNACKSelect_0;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Inverted data
      INVDATA        : Boolean := False;
      --  Max interation
      MAX_ITERATION  : USART_MR_SPI_MODE_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Infrared Receive Line Filter
      FILTER         : MR_SPI_MODE_FILTERSelect :=
                        SAM_SVD.USART.MR_SPI_MODE_FILTERSelect_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MR_SPI_MODE_Register use record
      MODE           at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      CPHA           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      CPOL           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Usart Mode
   type MR_USART_MODE_MODESelect is
     (
      --  Normal
      Normal,
      --  RS485
      Rs485,
      --  Hardware Handshaking
      Hardware,
      --  Modem
      Modem,
      --  IS07816 Protocol: T = 0
      Iso7816_T0,
      --  IS07816 Protocol: T = 1
      Iso7816_T1,
      --  IrDA
      Irda,
      --  LIN Master
      Lin_Master,
      --  LIN Slave
      Lin_Slave,
      --  SPI Master
      Spi_Master,
      --  SPI Slave
      Spi_Slave)
     with Size => 4;
   for MR_USART_MODE_MODESelect use
     (Normal => 0,
      Rs485 => 1,
      Hardware => 2,
      Modem => 3,
      Iso7816_T0 => 4,
      Iso7816_T1 => 6,
      Irda => 8,
      Lin_Master => 10,
      Lin_Slave => 11,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type MR_USART_MODE_USCLKSSelect is
     (
      --  MCK
      Mck,
      --  MCK / DIV
      Mck_Div,
      --  SCK
      Sck)
     with Size => 2;
   for MR_USART_MODE_USCLKSSelect use
     (Mck => 0,
      Mck_Div => 1,
      Sck => 3);

   --  Character Length.
   type MR_USART_MODE_CHRLSelect is
     (
      --  5 bits
      MR_USART_MODE_CHRLSelect_5,
      --  6 bits
      MR_USART_MODE_CHRLSelect_6,
      --  7 bits
      MR_USART_MODE_CHRLSelect_7,
      --  8 bits
      MR_USART_MODE_CHRLSelect_8)
     with Size => 2;
   for MR_USART_MODE_CHRLSelect use
     (MR_USART_MODE_CHRLSelect_5 => 0,
      MR_USART_MODE_CHRLSelect_6 => 1,
      MR_USART_MODE_CHRLSelect_7 => 2,
      MR_USART_MODE_CHRLSelect_8 => 3);

   --  Synchronous Mode Select
   type MR_USART_MODE_SYNCSelect is
     (
      --  USART operates in Synchronous Mode
      MR_USART_MODE_SYNCSelect_0,
      --  USART operates in Asynchronous Mode
      MR_USART_MODE_SYNCSelect_1)
     with Size => 1;
   for MR_USART_MODE_SYNCSelect use
     (MR_USART_MODE_SYNCSelect_0 => 0,
      MR_USART_MODE_SYNCSelect_1 => 1);

   --  Parity Type
   type MR_USART_MODE_PARSelect is
     (
      --  Even parity
      Even,
      --  Odd parity
      Odd,
      --  Parity forced to 0 (Space)
      Space,
      --  Parity forced to 1 (Mark)
      Mark,
      --  No Parity
      None,
      --  No Parity
      MR_USART_MODE_PARSelect_5,
      --  Multi-drop mode
      Multi,
      --  Multi-drop mode
      MR_USART_MODE_PARSelect_7)
     with Size => 3;
   for MR_USART_MODE_PARSelect use
     (Even => 0,
      Odd => 1,
      Space => 2,
      Mark => 3,
      None => 4,
      MR_USART_MODE_PARSelect_5 => 5,
      Multi => 6,
      MR_USART_MODE_PARSelect_7 => 7);

   --  Number of Stop Bits
   type MR_USART_MODE_NBSTOPSelect is
     (
      --  1 stop bit
      MR_USART_MODE_NBSTOPSelect_1,
      --  1.5 stop bits (Only valid if SYNC=0)
      MR_USART_MODE_NBSTOPSelect_1_5,
      --  2 stop bits
      MR_USART_MODE_NBSTOPSelect_2)
     with Size => 2;
   for MR_USART_MODE_NBSTOPSelect use
     (MR_USART_MODE_NBSTOPSelect_1 => 0,
      MR_USART_MODE_NBSTOPSelect_1_5 => 1,
      MR_USART_MODE_NBSTOPSelect_2 => 2);

   --  Channel Mode
   type MR_USART_MODE_CHMODESelect is
     (
      --  Normal Mode
      Normal,
      --  Automatic Echo. Receiver input is connected to the TXD pin
      Echo,
      --  Local Loopback. Transmitter output is connected to the Receiver Input
      Local_Loop,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin
      Remote_Loop)
     with Size => 2;
   for MR_USART_MODE_CHMODESelect use
     (Normal => 0,
      Echo => 1,
      Local_Loop => 2,
      Remote_Loop => 3);

   --  Bit Order
   type MR_USART_MODE_MSBFSelect is
     (
      --  Least Significant Bit first
      Lsbf,
      --  Most Significant Bit first
      Msbf)
     with Size => 1;
   for MR_USART_MODE_MSBFSelect use
     (Lsbf => 0,
      Msbf => 1);

   --  9-bit Character Length
   type MR_USART_MODE_MODE9Select is
     (
      --  CHRL defines character length
      MR_USART_MODE_MODE9Select_0,
      --  9-bit character length
      MR_USART_MODE_MODE9Select_1)
     with Size => 1;
   for MR_USART_MODE_MODE9Select use
     (MR_USART_MODE_MODE9Select_0 => 0,
      MR_USART_MODE_MODE9Select_1 => 1);

   --  Clock Output Select
   type MR_USART_MODE_CLKOSelect is
     (
      --  The USART does not drive the SCK pin
      MR_USART_MODE_CLKOSelect_0,
      --  The USART drives the SCK pin if USCLKS does not select the external
      --  clock SCK
      MR_USART_MODE_CLKOSelect_1)
     with Size => 1;
   for MR_USART_MODE_CLKOSelect use
     (MR_USART_MODE_CLKOSelect_0 => 0,
      MR_USART_MODE_CLKOSelect_1 => 1);

   --  Oversampling Mode
   type MR_USART_MODE_OVERSelect is
     (
      --  16x Oversampling
      X16,
      --  8x Oversampling
      X8)
     with Size => 1;
   for MR_USART_MODE_OVERSelect use
     (X16 => 0,
      X8 => 1);

   --  Inhibit Non Acknowledge
   type MR_USART_MODE_INACKSelect is
     (
      --  The NACK is generated
      MR_USART_MODE_INACKSelect_0,
      --  The NACK is not generated
      MR_USART_MODE_INACKSelect_1)
     with Size => 1;
   for MR_USART_MODE_INACKSelect use
     (MR_USART_MODE_INACKSelect_0 => 0,
      MR_USART_MODE_INACKSelect_1 => 1);

   --  Disable Successive NACK
   type MR_USART_MODE_DSNACKSelect is
     (
      --  NACK is sent on the ISO line as soon as a parity error occurs in the
      --  received character (unless INACK is set)
      MR_USART_MODE_DSNACKSelect_0,
      --  Successive parity errors are counted up to the value specified in the
      --  MAX_ITERATION field. These parity errors generatea NACK on the ISO
      --  line. As soon as this value is reached, no additional NACK is sent on
      --  the ISO line. The flag ITERATION is asserted
      MR_USART_MODE_DSNACKSelect_1)
     with Size => 1;
   for MR_USART_MODE_DSNACKSelect use
     (MR_USART_MODE_DSNACKSelect_0 => 0,
      MR_USART_MODE_DSNACKSelect_1 => 1);

   --  Variable synchronization of command/data sync Start Frame Delimiter
   type MR_USART_MODE_VAR_SYNCSelect is
     (
      --  User defined configuration of command or data sync field depending on
      --  SYNC value
      MR_USART_MODE_VAR_SYNCSelect_0,
      --  The sync field is updated when a character is written into THR
      --  register
      MR_USART_MODE_VAR_SYNCSelect_1)
     with Size => 1;
   for MR_USART_MODE_VAR_SYNCSelect use
     (MR_USART_MODE_VAR_SYNCSelect_0 => 0,
      MR_USART_MODE_VAR_SYNCSelect_1 => 1);

   subtype USART_MR_USART_MODE_MAX_ITERATION_Field is HAL.UInt3;

   --  Infrared Receive Line Filter
   type MR_USART_MODE_FILTERSelect is
     (
      --  The USART does not filter the receive line
      MR_USART_MODE_FILTERSelect_0,
      --  The USART filters the receive line using a three-sample filter
      --  (1/16-bit clock) (2 over 3 majority)
      MR_USART_MODE_FILTERSelect_1)
     with Size => 1;
   for MR_USART_MODE_FILTERSelect use
     (MR_USART_MODE_FILTERSelect_0 => 0,
      MR_USART_MODE_FILTERSelect_1 => 1);

   --  Manchester Encoder/Decoder Enable
   type MR_USART_MODE_MANSelect is
     (
      --  Manchester Encoder/Decoder is disabled
      MR_USART_MODE_MANSelect_0,
      --  Manchester Encoder/Decoder is enabled
      MR_USART_MODE_MANSelect_1)
     with Size => 1;
   for MR_USART_MODE_MANSelect use
     (MR_USART_MODE_MANSelect_0 => 0,
      MR_USART_MODE_MANSelect_1 => 1);

   --  Manchester Synchronization Mode
   type MR_USART_MODE_MODSYNCSelect is
     (
      --  The Manchester Start bit is a 0 to 1 transition
      MR_USART_MODE_MODSYNCSelect_0,
      --  The Manchester Start bit is a 1 to 0 transition
      MR_USART_MODE_MODSYNCSelect_1)
     with Size => 1;
   for MR_USART_MODE_MODSYNCSelect use
     (MR_USART_MODE_MODSYNCSelect_0 => 0,
      MR_USART_MODE_MODSYNCSelect_1 => 1);

   --  Start Frame Delimiter selector
   type MR_USART_MODE_ONEBITSelect is
     (
      --  Start Frame delimiter is COMMAND or DATA SYNC
      MR_USART_MODE_ONEBITSelect_0,
      --  Start Frame delimiter is One Bit
      MR_USART_MODE_ONEBITSelect_1)
     with Size => 1;
   for MR_USART_MODE_ONEBITSelect use
     (MR_USART_MODE_ONEBITSelect_0 => 0,
      MR_USART_MODE_ONEBITSelect_1 => 1);

   --  Mode Register
   type USART_MR_USART_MODE_Register is record
      --  Usart Mode
      MODE           : MR_USART_MODE_MODESelect := SAM_SVD.USART.Normal;
      --  Clock Selection
      USCLKS         : MR_USART_MODE_USCLKSSelect := SAM_SVD.USART.Mck;
      --  Character Length.
      CHRL           : MR_USART_MODE_CHRLSelect :=
                        SAM_SVD.USART.MR_USART_MODE_CHRLSelect_5;
      --  Synchronous Mode Select
      SYNC           : MR_USART_MODE_SYNCSelect :=
                        SAM_SVD.USART.MR_USART_MODE_SYNCSelect_0;
      --  Parity Type
      PAR            : MR_USART_MODE_PARSelect := SAM_SVD.USART.Even;
      --  Number of Stop Bits
      NBSTOP         : MR_USART_MODE_NBSTOPSelect :=
                        SAM_SVD.USART.MR_USART_MODE_NBSTOPSelect_1;
      --  Channel Mode
      CHMODE         : MR_USART_MODE_CHMODESelect := SAM_SVD.USART.Normal;
      --  Bit Order
      MSBF           : MR_USART_MODE_MSBFSelect := SAM_SVD.USART.Lsbf;
      --  9-bit Character Length
      MODE9          : MR_USART_MODE_MODE9Select :=
                        SAM_SVD.USART.MR_USART_MODE_MODE9Select_0;
      --  Clock Output Select
      CLKO           : MR_USART_MODE_CLKOSelect :=
                        SAM_SVD.USART.MR_USART_MODE_CLKOSelect_0;
      --  Oversampling Mode
      OVER           : MR_USART_MODE_OVERSelect := SAM_SVD.USART.X16;
      --  Inhibit Non Acknowledge
      INACK          : MR_USART_MODE_INACKSelect :=
                        SAM_SVD.USART.MR_USART_MODE_INACKSelect_0;
      --  Disable Successive NACK
      DSNACK         : MR_USART_MODE_DSNACKSelect :=
                        SAM_SVD.USART.MR_USART_MODE_DSNACKSelect_0;
      --  Variable synchronization of command/data sync Start Frame Delimiter
      VAR_SYNC       : MR_USART_MODE_VAR_SYNCSelect :=
                        SAM_SVD.USART.MR_USART_MODE_VAR_SYNCSelect_0;
      --  Inverted data
      INVDATA        : Boolean := False;
      --  Max interation
      MAX_ITERATION  : USART_MR_USART_MODE_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Infrared Receive Line Filter
      FILTER         : MR_USART_MODE_FILTERSelect :=
                        SAM_SVD.USART.MR_USART_MODE_FILTERSelect_0;
      --  Manchester Encoder/Decoder Enable
      MAN            : MR_USART_MODE_MANSelect :=
                        SAM_SVD.USART.MR_USART_MODE_MANSelect_0;
      --  Manchester Synchronization Mode
      MODSYNC        : MR_USART_MODE_MODSYNCSelect :=
                        SAM_SVD.USART.MR_USART_MODE_MODSYNCSelect_0;
      --  Start Frame Delimiter selector
      ONEBIT         : MR_USART_MODE_ONEBITSelect :=
                        SAM_SVD.USART.MR_USART_MODE_ONEBITSelect_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MR_USART_MODE_Register use record
      MODE           at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      MSBF           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      VAR_SYNC       at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      MAN            at 0 range 29 .. 29;
      MODSYNC        at 0 range 30 .. 30;
      ONEBIT         at 0 range 31 .. 31;
   end record;

   --  Receiver Ready Interrupt Enable
   type IER_LIN_MODE_RXRDYSelect is
     (
      --  No Effect
      IER_LIN_MODE_RXRDYSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_RXRDYSelect_1)
     with Size => 1;
   for IER_LIN_MODE_RXRDYSelect use
     (IER_LIN_MODE_RXRDYSelect_0 => 0,
      IER_LIN_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Enable
   type IER_LIN_MODE_TXRDYSelect is
     (
      --  No Effect
      IER_LIN_MODE_TXRDYSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_TXRDYSelect_1)
     with Size => 1;
   for IER_LIN_MODE_TXRDYSelect use
     (IER_LIN_MODE_TXRDYSelect_0 => 0,
      IER_LIN_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Enable
   type IER_LIN_MODE_RXBRKSelect is
     (
      --  No Effect
      IER_LIN_MODE_RXBRKSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_RXBRKSelect_1)
     with Size => 1;
   for IER_LIN_MODE_RXBRKSelect use
     (IER_LIN_MODE_RXBRKSelect_0 => 0,
      IER_LIN_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Enable
   type IER_LIN_MODE_OVRESelect is
     (
      --  No Effect
      IER_LIN_MODE_OVRESelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_OVRESelect_1)
     with Size => 1;
   for IER_LIN_MODE_OVRESelect use
     (IER_LIN_MODE_OVRESelect_0 => 0,
      IER_LIN_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Enable
   type IER_LIN_MODE_FRAMESelect is
     (
      --  No Effect
      IER_LIN_MODE_FRAMESelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_FRAMESelect_1)
     with Size => 1;
   for IER_LIN_MODE_FRAMESelect use
     (IER_LIN_MODE_FRAMESelect_0 => 0,
      IER_LIN_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Enable
   type IER_LIN_MODE_PARESelect is
     (
      --  No Effect
      IER_LIN_MODE_PARESelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_PARESelect_1)
     with Size => 1;
   for IER_LIN_MODE_PARESelect use
     (IER_LIN_MODE_PARESelect_0 => 0,
      IER_LIN_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Enable
   type IER_LIN_MODE_TIMEOUTSelect is
     (
      --  No Effect
      IER_LIN_MODE_TIMEOUTSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IER_LIN_MODE_TIMEOUTSelect use
     (IER_LIN_MODE_TIMEOUTSelect_0 => 0,
      IER_LIN_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Enable
   type IER_LIN_MODE_TXEMPTYSelect is
     (
      --  No Effect
      IER_LIN_MODE_TXEMPTYSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IER_LIN_MODE_TXEMPTYSelect use
     (IER_LIN_MODE_TXEMPTYSelect_0 => 0,
      IER_LIN_MODE_TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Enable
   type IER_LIN_MODE_ITERSelect is
     (
      --  No Effect
      IER_LIN_MODE_ITERSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_ITERSelect_1)
     with Size => 1;
   for IER_LIN_MODE_ITERSelect use
     (IER_LIN_MODE_ITERSelect_0 => 0,
      IER_LIN_MODE_ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Enable
   type IER_LIN_MODE_TXBUFESelect is
     (
      --  No Effect
      IER_LIN_MODE_TXBUFESelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_TXBUFESelect_1)
     with Size => 1;
   for IER_LIN_MODE_TXBUFESelect use
     (IER_LIN_MODE_TXBUFESelect_0 => 0,
      IER_LIN_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Enable
   type IER_LIN_MODE_RXBUFFSelect is
     (
      --  No Effect
      IER_LIN_MODE_RXBUFFSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IER_LIN_MODE_RXBUFFSelect use
     (IER_LIN_MODE_RXBUFFSelect_0 => 0,
      IER_LIN_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge or LIN Break Sent or LIN Break Received Interrupt Enable
   type IER_LIN_MODE_NACKSelect is
     (
      --  No Effect
      IER_LIN_MODE_NACKSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_NACKSelect_1)
     with Size => 1;
   for IER_LIN_MODE_NACKSelect use
     (IER_LIN_MODE_NACKSelect_0 => 0,
      IER_LIN_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Enable
   type IER_LIN_MODE_RIICSelect is
     (
      --  No Effect
      IER_LIN_MODE_RIICSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_RIICSelect_1)
     with Size => 1;
   for IER_LIN_MODE_RIICSelect use
     (IER_LIN_MODE_RIICSelect_0 => 0,
      IER_LIN_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Enable
   type IER_LIN_MODE_DSRICSelect is
     (
      --  No Effect
      IER_LIN_MODE_DSRICSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_DSRICSelect_1)
     with Size => 1;
   for IER_LIN_MODE_DSRICSelect use
     (IER_LIN_MODE_DSRICSelect_0 => 0,
      IER_LIN_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Enable
   type IER_LIN_MODE_DCDICSelect is
     (
      --  No Effect
      IER_LIN_MODE_DCDICSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_DCDICSelect_1)
     with Size => 1;
   for IER_LIN_MODE_DCDICSelect use
     (IER_LIN_MODE_DCDICSelect_0 => 0,
      IER_LIN_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Enable
   type IER_LIN_MODE_CTSICSelect is
     (
      --  No Effect
      IER_LIN_MODE_CTSICSelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_CTSICSelect_1)
     with Size => 1;
   for IER_LIN_MODE_CTSICSelect use
     (IER_LIN_MODE_CTSICSelect_0 => 0,
      IER_LIN_MODE_CTSICSelect_1 => 1);

   --  LIN Synch Tolerance Error Interrupt Enable
   type IER_LIN_MODE_LINSTESelect is
     (
      --  No Effect
      IER_LIN_MODE_LINSTESelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_LINSTESelect_1)
     with Size => 1;
   for IER_LIN_MODE_LINSTESelect use
     (IER_LIN_MODE_LINSTESelect_0 => 0,
      IER_LIN_MODE_LINSTESelect_1 => 1);

   --  LIN Header Timeout Error Interrupt Enable
   type IER_LIN_MODE_LINHTESelect is
     (
      --  No Effect
      IER_LIN_MODE_LINHTESelect_0,
      --  Enables the interrupt
      IER_LIN_MODE_LINHTESelect_1)
     with Size => 1;
   for IER_LIN_MODE_LINHTESelect use
     (IER_LIN_MODE_LINHTESelect_0 => 0,
      IER_LIN_MODE_LINHTESelect_1 => 1);

   --  Interrupt Enable Register
   type USART_IER_LIN_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : IER_LIN_MODE_RXRDYSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Enable
      TXRDY          : IER_LIN_MODE_TXRDYSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : IER_LIN_MODE_RXBRKSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : IER_LIN_MODE_OVRESelect :=
                        SAM_SVD.USART.IER_LIN_MODE_OVRESelect_0;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : IER_LIN_MODE_FRAMESelect :=
                        SAM_SVD.USART.IER_LIN_MODE_FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : IER_LIN_MODE_PARESelect :=
                        SAM_SVD.USART.IER_LIN_MODE_PARESelect_0;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : IER_LIN_MODE_TIMEOUTSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Enable
      TXEMPTY        : IER_LIN_MODE_TXEMPTYSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Enable
      ITER           : IER_LIN_MODE_ITERSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE         : IER_LIN_MODE_TXBUFESelect :=
                        SAM_SVD.USART.IER_LIN_MODE_TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF         : IER_LIN_MODE_RXBUFFSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_RXBUFFSelect_0;
      --  Write-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      --  Interrupt Enable
      NACK           : IER_LIN_MODE_NACKSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_NACKSelect_0;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Conpleted Interrupt Enable
      LINTC          : Boolean := False;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : IER_LIN_MODE_RIICSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : IER_LIN_MODE_DSRICSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : IER_LIN_MODE_DCDICSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : IER_LIN_MODE_CTSICSelect :=
                        SAM_SVD.USART.IER_LIN_MODE_CTSICSelect_0;
      --  unspecified
      Reserved_20_24 : HAL.UInt5 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : Boolean := False;
      --  Write-only. LIN Synch Tolerance Error Interrupt Enable
      LINSTE         : IER_LIN_MODE_LINSTESelect :=
                        SAM_SVD.USART.IER_LIN_MODE_LINSTESelect_0;
      --  Write-only. LIN Header Timeout Error Interrupt Enable
      LINHTE         : IER_LIN_MODE_LINHTESelect :=
                        SAM_SVD.USART.IER_LIN_MODE_LINHTESelect_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  Receiver Ready Interrupt Enable
   type IER_SPI_SLAVE_MODE_RXRDYSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_RXRDYSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_RXRDYSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_RXRDYSelect use
     (IER_SPI_SLAVE_MODE_RXRDYSelect_0 => 0,
      IER_SPI_SLAVE_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Enable
   type IER_SPI_SLAVE_MODE_TXRDYSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_TXRDYSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_TXRDYSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_TXRDYSelect use
     (IER_SPI_SLAVE_MODE_TXRDYSelect_0 => 0,
      IER_SPI_SLAVE_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Enable
   type IER_SPI_SLAVE_MODE_RXBRKSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_RXBRKSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_RXBRKSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_RXBRKSelect use
     (IER_SPI_SLAVE_MODE_RXBRKSelect_0 => 0,
      IER_SPI_SLAVE_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Enable
   type IER_SPI_SLAVE_MODE_OVRESelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_OVRESelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_OVRESelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_OVRESelect use
     (IER_SPI_SLAVE_MODE_OVRESelect_0 => 0,
      IER_SPI_SLAVE_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Enable
   type IER_SPI_SLAVE_MODE_FRAMESelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_FRAMESelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_FRAMESelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_FRAMESelect use
     (IER_SPI_SLAVE_MODE_FRAMESelect_0 => 0,
      IER_SPI_SLAVE_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Enable
   type IER_SPI_SLAVE_MODE_PARESelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_PARESelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_PARESelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_PARESelect use
     (IER_SPI_SLAVE_MODE_PARESelect_0 => 0,
      IER_SPI_SLAVE_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Enable
   type IER_SPI_SLAVE_MODE_TIMEOUTSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_TIMEOUTSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_TIMEOUTSelect use
     (IER_SPI_SLAVE_MODE_TIMEOUTSelect_0 => 0,
      IER_SPI_SLAVE_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Enable
   type IER_SPI_SLAVE_MODE_TXEMPTYSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_TXEMPTYSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_TXEMPTYSelect use
     (IER_SPI_SLAVE_MODE_TXEMPTYSelect_0 => 0,
      IER_SPI_SLAVE_MODE_TXEMPTYSelect_1 => 1);

   --  SPI Underrun Error Interrupt Enable
   type IER_SPI_SLAVE_MODE_UNRESelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_UNRESelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_UNRESelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_UNRESelect use
     (IER_SPI_SLAVE_MODE_UNRESelect_0 => 0,
      IER_SPI_SLAVE_MODE_UNRESelect_1 => 1);

   --  Buffer Empty Interrupt Enable
   type IER_SPI_SLAVE_MODE_TXBUFESelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_TXBUFESelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_TXBUFESelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_TXBUFESelect use
     (IER_SPI_SLAVE_MODE_TXBUFESelect_0 => 0,
      IER_SPI_SLAVE_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Enable
   type IER_SPI_SLAVE_MODE_RXBUFFSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_RXBUFFSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_RXBUFFSelect use
     (IER_SPI_SLAVE_MODE_RXBUFFSelect_0 => 0,
      IER_SPI_SLAVE_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge Interrupt Enable
   type IER_SPI_SLAVE_MODE_NACKSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_NACKSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_NACKSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_NACKSelect use
     (IER_SPI_SLAVE_MODE_NACKSelect_0 => 0,
      IER_SPI_SLAVE_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Enable
   type IER_SPI_SLAVE_MODE_RIICSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_RIICSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_RIICSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_RIICSelect use
     (IER_SPI_SLAVE_MODE_RIICSelect_0 => 0,
      IER_SPI_SLAVE_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Enable
   type IER_SPI_SLAVE_MODE_DSRICSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_DSRICSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_DSRICSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_DSRICSelect use
     (IER_SPI_SLAVE_MODE_DSRICSelect_0 => 0,
      IER_SPI_SLAVE_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Enable
   type IER_SPI_SLAVE_MODE_DCDICSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_DCDICSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_DCDICSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_DCDICSelect use
     (IER_SPI_SLAVE_MODE_DCDICSelect_0 => 0,
      IER_SPI_SLAVE_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Enable
   type IER_SPI_SLAVE_MODE_CTSICSelect is
     (
      --  No Effect
      IER_SPI_SLAVE_MODE_CTSICSelect_0,
      --  Enables the interrupt
      IER_SPI_SLAVE_MODE_CTSICSelect_1)
     with Size => 1;
   for IER_SPI_SLAVE_MODE_CTSICSelect use
     (IER_SPI_SLAVE_MODE_CTSICSelect_0 => 0,
      IER_SPI_SLAVE_MODE_CTSICSelect_1 => 1);

   --  Interrupt Enable Register
   type USART_IER_SPI_SLAVE_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : IER_SPI_SLAVE_MODE_RXRDYSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Enable
      TXRDY          : IER_SPI_SLAVE_MODE_TXRDYSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : IER_SPI_SLAVE_MODE_RXBRKSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : IER_SPI_SLAVE_MODE_OVRESelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_OVRESelect_0;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : IER_SPI_SLAVE_MODE_FRAMESelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : IER_SPI_SLAVE_MODE_PARESelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_PARESelect_0;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : IER_SPI_SLAVE_MODE_TIMEOUTSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Enable
      TXEMPTY        : IER_SPI_SLAVE_MODE_TXEMPTYSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_TXEMPTYSelect_0;
      --  Write-only. SPI Underrun Error Interrupt Enable
      UNRE           : IER_SPI_SLAVE_MODE_UNRESelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_UNRESelect_0;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE         : IER_SPI_SLAVE_MODE_TXBUFESelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF         : IER_SPI_SLAVE_MODE_RXBUFFSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : IER_SPI_SLAVE_MODE_NACKSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_NACKSelect_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : IER_SPI_SLAVE_MODE_RIICSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : IER_SPI_SLAVE_MODE_DSRICSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : IER_SPI_SLAVE_MODE_DCDICSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : IER_SPI_SLAVE_MODE_CTSICSelect :=
                        SAM_SVD.USART.IER_SPI_SLAVE_MODE_CTSICSelect_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Receiver Ready Interrupt Enable
   type IER_USART_MODE_RXRDYSelect is
     (
      --  No Effect
      IER_USART_MODE_RXRDYSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_RXRDYSelect_1)
     with Size => 1;
   for IER_USART_MODE_RXRDYSelect use
     (IER_USART_MODE_RXRDYSelect_0 => 0,
      IER_USART_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Enable
   type IER_USART_MODE_TXRDYSelect is
     (
      --  No Effect
      IER_USART_MODE_TXRDYSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_TXRDYSelect_1)
     with Size => 1;
   for IER_USART_MODE_TXRDYSelect use
     (IER_USART_MODE_TXRDYSelect_0 => 0,
      IER_USART_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Enable
   type IER_USART_MODE_RXBRKSelect is
     (
      --  No Effect
      IER_USART_MODE_RXBRKSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_RXBRKSelect_1)
     with Size => 1;
   for IER_USART_MODE_RXBRKSelect use
     (IER_USART_MODE_RXBRKSelect_0 => 0,
      IER_USART_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Enable
   type IER_USART_MODE_OVRESelect is
     (
      --  No Effect
      IER_USART_MODE_OVRESelect_0,
      --  Enables the interrupt
      IER_USART_MODE_OVRESelect_1)
     with Size => 1;
   for IER_USART_MODE_OVRESelect use
     (IER_USART_MODE_OVRESelect_0 => 0,
      IER_USART_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Enable
   type IER_USART_MODE_FRAMESelect is
     (
      --  No Effect
      IER_USART_MODE_FRAMESelect_0,
      --  Enables the interrupt
      IER_USART_MODE_FRAMESelect_1)
     with Size => 1;
   for IER_USART_MODE_FRAMESelect use
     (IER_USART_MODE_FRAMESelect_0 => 0,
      IER_USART_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Enable
   type IER_USART_MODE_PARESelect is
     (
      --  No Effect
      IER_USART_MODE_PARESelect_0,
      --  Enables the interrupt
      IER_USART_MODE_PARESelect_1)
     with Size => 1;
   for IER_USART_MODE_PARESelect use
     (IER_USART_MODE_PARESelect_0 => 0,
      IER_USART_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Enable
   type IER_USART_MODE_TIMEOUTSelect is
     (
      --  No Effect
      IER_USART_MODE_TIMEOUTSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IER_USART_MODE_TIMEOUTSelect use
     (IER_USART_MODE_TIMEOUTSelect_0 => 0,
      IER_USART_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Enable
   type IER_USART_MODE_TXEMPTYSelect is
     (
      --  No Effect
      IER_USART_MODE_TXEMPTYSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IER_USART_MODE_TXEMPTYSelect use
     (IER_USART_MODE_TXEMPTYSelect_0 => 0,
      IER_USART_MODE_TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Enable
   type IER_USART_MODE_ITERSelect is
     (
      --  No Effect
      IER_USART_MODE_ITERSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_ITERSelect_1)
     with Size => 1;
   for IER_USART_MODE_ITERSelect use
     (IER_USART_MODE_ITERSelect_0 => 0,
      IER_USART_MODE_ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Enable
   type IER_USART_MODE_TXBUFESelect is
     (
      --  No Effect
      IER_USART_MODE_TXBUFESelect_0,
      --  Enables the interrupt
      IER_USART_MODE_TXBUFESelect_1)
     with Size => 1;
   for IER_USART_MODE_TXBUFESelect use
     (IER_USART_MODE_TXBUFESelect_0 => 0,
      IER_USART_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Enable
   type IER_USART_MODE_RXBUFFSelect is
     (
      --  No Effect
      IER_USART_MODE_RXBUFFSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IER_USART_MODE_RXBUFFSelect use
     (IER_USART_MODE_RXBUFFSelect_0 => 0,
      IER_USART_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge Interrupt Enable
   type IER_USART_MODE_NACKSelect is
     (
      --  No Effect
      IER_USART_MODE_NACKSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_NACKSelect_1)
     with Size => 1;
   for IER_USART_MODE_NACKSelect use
     (IER_USART_MODE_NACKSelect_0 => 0,
      IER_USART_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Enable
   type IER_USART_MODE_RIICSelect is
     (
      --  No Effect
      IER_USART_MODE_RIICSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_RIICSelect_1)
     with Size => 1;
   for IER_USART_MODE_RIICSelect use
     (IER_USART_MODE_RIICSelect_0 => 0,
      IER_USART_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Enable
   type IER_USART_MODE_DSRICSelect is
     (
      --  No Effect
      IER_USART_MODE_DSRICSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_DSRICSelect_1)
     with Size => 1;
   for IER_USART_MODE_DSRICSelect use
     (IER_USART_MODE_DSRICSelect_0 => 0,
      IER_USART_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Enable
   type IER_USART_MODE_DCDICSelect is
     (
      --  No Effect
      IER_USART_MODE_DCDICSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_DCDICSelect_1)
     with Size => 1;
   for IER_USART_MODE_DCDICSelect use
     (IER_USART_MODE_DCDICSelect_0 => 0,
      IER_USART_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Enable
   type IER_USART_MODE_CTSICSelect is
     (
      --  No Effect
      IER_USART_MODE_CTSICSelect_0,
      --  Enables the interrupt
      IER_USART_MODE_CTSICSelect_1)
     with Size => 1;
   for IER_USART_MODE_CTSICSelect use
     (IER_USART_MODE_CTSICSelect_0 => 0,
      IER_USART_MODE_CTSICSelect_1 => 1);

   --  Manchester Error Interrupt Enable
   type IER_USART_MODE_MANEASelect is
     (
      --  No effect
      IER_USART_MODE_MANEASelect_0,
      --  Enables the interrupt
      IER_USART_MODE_MANEASelect_1)
     with Size => 1;
   for IER_USART_MODE_MANEASelect use
     (IER_USART_MODE_MANEASelect_0 => 0,
      IER_USART_MODE_MANEASelect_1 => 1);

   --  Interrupt Enable Register
   type USART_IER_USART_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : IER_USART_MODE_RXRDYSelect :=
                        SAM_SVD.USART.IER_USART_MODE_RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Enable
      TXRDY          : IER_USART_MODE_TXRDYSelect :=
                        SAM_SVD.USART.IER_USART_MODE_TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : IER_USART_MODE_RXBRKSelect :=
                        SAM_SVD.USART.IER_USART_MODE_RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : IER_USART_MODE_OVRESelect :=
                        SAM_SVD.USART.IER_USART_MODE_OVRESelect_0;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : IER_USART_MODE_FRAMESelect :=
                        SAM_SVD.USART.IER_USART_MODE_FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : IER_USART_MODE_PARESelect :=
                        SAM_SVD.USART.IER_USART_MODE_PARESelect_0;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : IER_USART_MODE_TIMEOUTSelect :=
                        SAM_SVD.USART.IER_USART_MODE_TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Enable
      TXEMPTY        : IER_USART_MODE_TXEMPTYSelect :=
                        SAM_SVD.USART.IER_USART_MODE_TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Enable
      ITER           : IER_USART_MODE_ITERSelect :=
                        SAM_SVD.USART.IER_USART_MODE_ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE         : IER_USART_MODE_TXBUFESelect :=
                        SAM_SVD.USART.IER_USART_MODE_TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF         : IER_USART_MODE_RXBUFFSelect :=
                        SAM_SVD.USART.IER_USART_MODE_RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : IER_USART_MODE_NACKSelect :=
                        SAM_SVD.USART.IER_USART_MODE_NACKSelect_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : IER_USART_MODE_RIICSelect :=
                        SAM_SVD.USART.IER_USART_MODE_RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : IER_USART_MODE_DSRICSelect :=
                        SAM_SVD.USART.IER_USART_MODE_DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : IER_USART_MODE_DCDICSelect :=
                        SAM_SVD.USART.IER_USART_MODE_DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : IER_USART_MODE_CTSICSelect :=
                        SAM_SVD.USART.IER_USART_MODE_CTSICSelect_0;
      --  Write-only. Manchester Error Interrupt Enable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Write-only. Manchester Error Interrupt Enable
      MANEA          : IER_USART_MODE_MANEASelect :=
                        SAM_SVD.USART.IER_USART_MODE_MANEASelect_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      MANE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MANEA          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Receiver Ready Interrupt Disable
   type IDR_LIN_MODE_RXRDYSelect is
     (
      --  No Effect
      IDR_LIN_MODE_RXRDYSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_RXRDYSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_RXRDYSelect use
     (IDR_LIN_MODE_RXRDYSelect_0 => 0,
      IDR_LIN_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Disable
   type IDR_LIN_MODE_TXRDYSelect is
     (
      --  No Effect
      IDR_LIN_MODE_TXRDYSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_TXRDYSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_TXRDYSelect use
     (IDR_LIN_MODE_TXRDYSelect_0 => 0,
      IDR_LIN_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Disable
   type IDR_LIN_MODE_RXBRKSelect is
     (
      --  No Effect
      IDR_LIN_MODE_RXBRKSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_RXBRKSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_RXBRKSelect use
     (IDR_LIN_MODE_RXBRKSelect_0 => 0,
      IDR_LIN_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Disable
   type IDR_LIN_MODE_OVRESelect is
     (
      --  No Effect
      IDR_LIN_MODE_OVRESelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_OVRESelect_1)
     with Size => 1;
   for IDR_LIN_MODE_OVRESelect use
     (IDR_LIN_MODE_OVRESelect_0 => 0,
      IDR_LIN_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Disable
   type IDR_LIN_MODE_FRAMESelect is
     (
      --  No Effect
      IDR_LIN_MODE_FRAMESelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_FRAMESelect_1)
     with Size => 1;
   for IDR_LIN_MODE_FRAMESelect use
     (IDR_LIN_MODE_FRAMESelect_0 => 0,
      IDR_LIN_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Disable
   type IDR_LIN_MODE_PARESelect is
     (
      --  No Effect
      IDR_LIN_MODE_PARESelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_PARESelect_1)
     with Size => 1;
   for IDR_LIN_MODE_PARESelect use
     (IDR_LIN_MODE_PARESelect_0 => 0,
      IDR_LIN_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Disable
   type IDR_LIN_MODE_TIMEOUTSelect is
     (
      --  No Effect
      IDR_LIN_MODE_TIMEOUTSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_TIMEOUTSelect use
     (IDR_LIN_MODE_TIMEOUTSelect_0 => 0,
      IDR_LIN_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Disable
   type IDR_LIN_MODE_TXEMPTYSelect is
     (
      --  No Effect
      IDR_LIN_MODE_TXEMPTYSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_TXEMPTYSelect use
     (IDR_LIN_MODE_TXEMPTYSelect_0 => 0,
      IDR_LIN_MODE_TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Disable
   type IDR_LIN_MODE_ITERSelect is
     (
      --  No Effect
      IDR_LIN_MODE_ITERSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_ITERSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_ITERSelect use
     (IDR_LIN_MODE_ITERSelect_0 => 0,
      IDR_LIN_MODE_ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Disable
   type IDR_LIN_MODE_TXBUFESelect is
     (
      --  No Effect
      IDR_LIN_MODE_TXBUFESelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_TXBUFESelect_1)
     with Size => 1;
   for IDR_LIN_MODE_TXBUFESelect use
     (IDR_LIN_MODE_TXBUFESelect_0 => 0,
      IDR_LIN_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Disable
   type IDR_LIN_MODE_RXBUFFSelect is
     (
      --  No Effect
      IDR_LIN_MODE_RXBUFFSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_RXBUFFSelect use
     (IDR_LIN_MODE_RXBUFFSelect_0 => 0,
      IDR_LIN_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge or LIN Break Sent or LIN Break Received Interrupt
   --  Disable
   type IDR_LIN_MODE_NACKSelect is
     (
      --  No Effect
      IDR_LIN_MODE_NACKSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_NACKSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_NACKSelect use
     (IDR_LIN_MODE_NACKSelect_0 => 0,
      IDR_LIN_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Disable
   type IDR_LIN_MODE_RIICSelect is
     (
      --  No Effect
      IDR_LIN_MODE_RIICSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_RIICSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_RIICSelect use
     (IDR_LIN_MODE_RIICSelect_0 => 0,
      IDR_LIN_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Disable
   type IDR_LIN_MODE_DSRICSelect is
     (
      --  No Effect
      IDR_LIN_MODE_DSRICSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_DSRICSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_DSRICSelect use
     (IDR_LIN_MODE_DSRICSelect_0 => 0,
      IDR_LIN_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Disable
   type IDR_LIN_MODE_DCDICSelect is
     (
      --  No Effect
      IDR_LIN_MODE_DCDICSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_DCDICSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_DCDICSelect use
     (IDR_LIN_MODE_DCDICSelect_0 => 0,
      IDR_LIN_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Disable
   type IDR_LIN_MODE_CTSICSelect is
     (
      --  No Effect
      IDR_LIN_MODE_CTSICSelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_CTSICSelect_1)
     with Size => 1;
   for IDR_LIN_MODE_CTSICSelect use
     (IDR_LIN_MODE_CTSICSelect_0 => 0,
      IDR_LIN_MODE_CTSICSelect_1 => 1);

   --  LIN Synch Tolerance Error Interrupt Disable
   type IDR_LIN_MODE_LINSTESelect is
     (
      --  No Effect
      IDR_LIN_MODE_LINSTESelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_LINSTESelect_1)
     with Size => 1;
   for IDR_LIN_MODE_LINSTESelect use
     (IDR_LIN_MODE_LINSTESelect_0 => 0,
      IDR_LIN_MODE_LINSTESelect_1 => 1);

   --  LIN Header Timeout Error Interrupt Disable
   type IDR_LIN_MODE_LINHTESelect is
     (
      --  No Effect
      IDR_LIN_MODE_LINHTESelect_0,
      --  Disables the interrupt
      IDR_LIN_MODE_LINHTESelect_1)
     with Size => 1;
   for IDR_LIN_MODE_LINHTESelect use
     (IDR_LIN_MODE_LINHTESelect_0 => 0,
      IDR_LIN_MODE_LINHTESelect_1 => 1);

   --  Interrupt Disable Register
   type USART_IDR_LIN_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : IDR_LIN_MODE_RXRDYSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Disable
      TXRDY          : IDR_LIN_MODE_TXRDYSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : IDR_LIN_MODE_RXBRKSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : IDR_LIN_MODE_OVRESelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_OVRESelect_0;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : IDR_LIN_MODE_FRAMESelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : IDR_LIN_MODE_PARESelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_PARESelect_0;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : IDR_LIN_MODE_TIMEOUTSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Disable
      TXEMPTY        : IDR_LIN_MODE_TXEMPTYSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Disable
      ITER           : IDR_LIN_MODE_ITERSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE         : IDR_LIN_MODE_TXBUFESelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF         : IDR_LIN_MODE_RXBUFFSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_RXBUFFSelect_0;
      --  Write-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      --  Interrupt Disable
      NACK           : IDR_LIN_MODE_NACKSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_NACKSelect_0;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Conpleted Interrupt Disable
      LINTC          : Boolean := False;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : IDR_LIN_MODE_RIICSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : IDR_LIN_MODE_DSRICSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : IDR_LIN_MODE_DCDICSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : IDR_LIN_MODE_CTSICSelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_CTSICSelect_0;
      --  unspecified
      Reserved_20_24 : HAL.UInt5 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : Boolean := False;
      --  Write-only. LIN Synch Tolerance Error Interrupt Disable
      LINSTE         : IDR_LIN_MODE_LINSTESelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_LINSTESelect_0;
      --  Write-only. LIN Header Timeout Error Interrupt Disable
      LINHTE         : IDR_LIN_MODE_LINHTESelect :=
                        SAM_SVD.USART.IDR_LIN_MODE_LINHTESelect_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  Receiver Ready Interrupt Disable
   type IDR_SPI_SLAVE_MODE_RXRDYSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_RXRDYSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_RXRDYSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_RXRDYSelect use
     (IDR_SPI_SLAVE_MODE_RXRDYSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Disable
   type IDR_SPI_SLAVE_MODE_TXRDYSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_TXRDYSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_TXRDYSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_TXRDYSelect use
     (IDR_SPI_SLAVE_MODE_TXRDYSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Disable
   type IDR_SPI_SLAVE_MODE_RXBRKSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_RXBRKSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_RXBRKSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_RXBRKSelect use
     (IDR_SPI_SLAVE_MODE_RXBRKSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Disable
   type IDR_SPI_SLAVE_MODE_OVRESelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_OVRESelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_OVRESelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_OVRESelect use
     (IDR_SPI_SLAVE_MODE_OVRESelect_0 => 0,
      IDR_SPI_SLAVE_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Disable
   type IDR_SPI_SLAVE_MODE_FRAMESelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_FRAMESelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_FRAMESelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_FRAMESelect use
     (IDR_SPI_SLAVE_MODE_FRAMESelect_0 => 0,
      IDR_SPI_SLAVE_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Disable
   type IDR_SPI_SLAVE_MODE_PARESelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_PARESelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_PARESelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_PARESelect use
     (IDR_SPI_SLAVE_MODE_PARESelect_0 => 0,
      IDR_SPI_SLAVE_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Disable
   type IDR_SPI_SLAVE_MODE_TIMEOUTSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_TIMEOUTSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_TIMEOUTSelect use
     (IDR_SPI_SLAVE_MODE_TIMEOUTSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Disable
   type IDR_SPI_SLAVE_MODE_TXEMPTYSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_TXEMPTYSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_TXEMPTYSelect use
     (IDR_SPI_SLAVE_MODE_TXEMPTYSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_TXEMPTYSelect_1 => 1);

   --  SPI Underrun Error Interrupt Disable
   type IDR_SPI_SLAVE_MODE_UNRESelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_UNRESelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_UNRESelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_UNRESelect use
     (IDR_SPI_SLAVE_MODE_UNRESelect_0 => 0,
      IDR_SPI_SLAVE_MODE_UNRESelect_1 => 1);

   --  Buffer Empty Interrupt Disable
   type IDR_SPI_SLAVE_MODE_TXBUFESelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_TXBUFESelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_TXBUFESelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_TXBUFESelect use
     (IDR_SPI_SLAVE_MODE_TXBUFESelect_0 => 0,
      IDR_SPI_SLAVE_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Disable
   type IDR_SPI_SLAVE_MODE_RXBUFFSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_RXBUFFSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_RXBUFFSelect use
     (IDR_SPI_SLAVE_MODE_RXBUFFSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge Interrupt Disable
   type IDR_SPI_SLAVE_MODE_NACKSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_NACKSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_NACKSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_NACKSelect use
     (IDR_SPI_SLAVE_MODE_NACKSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Disable
   type IDR_SPI_SLAVE_MODE_RIICSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_RIICSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_RIICSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_RIICSelect use
     (IDR_SPI_SLAVE_MODE_RIICSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Disable
   type IDR_SPI_SLAVE_MODE_DSRICSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_DSRICSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_DSRICSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_DSRICSelect use
     (IDR_SPI_SLAVE_MODE_DSRICSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Disable
   type IDR_SPI_SLAVE_MODE_DCDICSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_DCDICSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_DCDICSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_DCDICSelect use
     (IDR_SPI_SLAVE_MODE_DCDICSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Disable
   type IDR_SPI_SLAVE_MODE_CTSICSelect is
     (
      --  No Effect
      IDR_SPI_SLAVE_MODE_CTSICSelect_0,
      --  Disables the interrupt
      IDR_SPI_SLAVE_MODE_CTSICSelect_1)
     with Size => 1;
   for IDR_SPI_SLAVE_MODE_CTSICSelect use
     (IDR_SPI_SLAVE_MODE_CTSICSelect_0 => 0,
      IDR_SPI_SLAVE_MODE_CTSICSelect_1 => 1);

   --  Interrupt Disable Register
   type USART_IDR_SPI_SLAVE_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : IDR_SPI_SLAVE_MODE_RXRDYSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Disable
      TXRDY          : IDR_SPI_SLAVE_MODE_TXRDYSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : IDR_SPI_SLAVE_MODE_RXBRKSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : IDR_SPI_SLAVE_MODE_OVRESelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_OVRESelect_0;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : IDR_SPI_SLAVE_MODE_FRAMESelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : IDR_SPI_SLAVE_MODE_PARESelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_PARESelect_0;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : IDR_SPI_SLAVE_MODE_TIMEOUTSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Disable
      TXEMPTY        : IDR_SPI_SLAVE_MODE_TXEMPTYSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_TXEMPTYSelect_0;
      --  Write-only. SPI Underrun Error Interrupt Disable
      UNRE           : IDR_SPI_SLAVE_MODE_UNRESelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_UNRESelect_0;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE         : IDR_SPI_SLAVE_MODE_TXBUFESelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF         : IDR_SPI_SLAVE_MODE_RXBUFFSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : IDR_SPI_SLAVE_MODE_NACKSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_NACKSelect_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : IDR_SPI_SLAVE_MODE_RIICSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : IDR_SPI_SLAVE_MODE_DSRICSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : IDR_SPI_SLAVE_MODE_DCDICSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : IDR_SPI_SLAVE_MODE_CTSICSelect :=
                        SAM_SVD.USART.IDR_SPI_SLAVE_MODE_CTSICSelect_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Receiver Ready Interrupt Disable
   type IDR_USART_MODE_RXRDYSelect is
     (
      --  No Effect
      IDR_USART_MODE_RXRDYSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_RXRDYSelect_1)
     with Size => 1;
   for IDR_USART_MODE_RXRDYSelect use
     (IDR_USART_MODE_RXRDYSelect_0 => 0,
      IDR_USART_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Disable
   type IDR_USART_MODE_TXRDYSelect is
     (
      --  No Effect
      IDR_USART_MODE_TXRDYSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_TXRDYSelect_1)
     with Size => 1;
   for IDR_USART_MODE_TXRDYSelect use
     (IDR_USART_MODE_TXRDYSelect_0 => 0,
      IDR_USART_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Disable
   type IDR_USART_MODE_RXBRKSelect is
     (
      --  No Effect
      IDR_USART_MODE_RXBRKSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_RXBRKSelect_1)
     with Size => 1;
   for IDR_USART_MODE_RXBRKSelect use
     (IDR_USART_MODE_RXBRKSelect_0 => 0,
      IDR_USART_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Disable
   type IDR_USART_MODE_OVRESelect is
     (
      --  No Effect
      IDR_USART_MODE_OVRESelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_OVRESelect_1)
     with Size => 1;
   for IDR_USART_MODE_OVRESelect use
     (IDR_USART_MODE_OVRESelect_0 => 0,
      IDR_USART_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Disable
   type IDR_USART_MODE_FRAMESelect is
     (
      --  No Effect
      IDR_USART_MODE_FRAMESelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_FRAMESelect_1)
     with Size => 1;
   for IDR_USART_MODE_FRAMESelect use
     (IDR_USART_MODE_FRAMESelect_0 => 0,
      IDR_USART_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Disable
   type IDR_USART_MODE_PARESelect is
     (
      --  No Effect
      IDR_USART_MODE_PARESelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_PARESelect_1)
     with Size => 1;
   for IDR_USART_MODE_PARESelect use
     (IDR_USART_MODE_PARESelect_0 => 0,
      IDR_USART_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Disable
   type IDR_USART_MODE_TIMEOUTSelect is
     (
      --  No Effect
      IDR_USART_MODE_TIMEOUTSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IDR_USART_MODE_TIMEOUTSelect use
     (IDR_USART_MODE_TIMEOUTSelect_0 => 0,
      IDR_USART_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Disable
   type IDR_USART_MODE_TXEMPTYSelect is
     (
      --  No Effect
      IDR_USART_MODE_TXEMPTYSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IDR_USART_MODE_TXEMPTYSelect use
     (IDR_USART_MODE_TXEMPTYSelect_0 => 0,
      IDR_USART_MODE_TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Disable
   type IDR_USART_MODE_ITERSelect is
     (
      --  No Effect
      IDR_USART_MODE_ITERSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_ITERSelect_1)
     with Size => 1;
   for IDR_USART_MODE_ITERSelect use
     (IDR_USART_MODE_ITERSelect_0 => 0,
      IDR_USART_MODE_ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Disable
   type IDR_USART_MODE_TXBUFESelect is
     (
      --  No Effect
      IDR_USART_MODE_TXBUFESelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_TXBUFESelect_1)
     with Size => 1;
   for IDR_USART_MODE_TXBUFESelect use
     (IDR_USART_MODE_TXBUFESelect_0 => 0,
      IDR_USART_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Disable
   type IDR_USART_MODE_RXBUFFSelect is
     (
      --  No Effect
      IDR_USART_MODE_RXBUFFSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IDR_USART_MODE_RXBUFFSelect use
     (IDR_USART_MODE_RXBUFFSelect_0 => 0,
      IDR_USART_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge Interrupt Disable
   type IDR_USART_MODE_NACKSelect is
     (
      --  No Effect
      IDR_USART_MODE_NACKSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_NACKSelect_1)
     with Size => 1;
   for IDR_USART_MODE_NACKSelect use
     (IDR_USART_MODE_NACKSelect_0 => 0,
      IDR_USART_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Disable
   type IDR_USART_MODE_RIICSelect is
     (
      --  No Effect
      IDR_USART_MODE_RIICSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_RIICSelect_1)
     with Size => 1;
   for IDR_USART_MODE_RIICSelect use
     (IDR_USART_MODE_RIICSelect_0 => 0,
      IDR_USART_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Disable
   type IDR_USART_MODE_DSRICSelect is
     (
      --  No Effect
      IDR_USART_MODE_DSRICSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_DSRICSelect_1)
     with Size => 1;
   for IDR_USART_MODE_DSRICSelect use
     (IDR_USART_MODE_DSRICSelect_0 => 0,
      IDR_USART_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Disable
   type IDR_USART_MODE_DCDICSelect is
     (
      --  No Effect
      IDR_USART_MODE_DCDICSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_DCDICSelect_1)
     with Size => 1;
   for IDR_USART_MODE_DCDICSelect use
     (IDR_USART_MODE_DCDICSelect_0 => 0,
      IDR_USART_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Disable
   type IDR_USART_MODE_CTSICSelect is
     (
      --  No Effect
      IDR_USART_MODE_CTSICSelect_0,
      --  Disables the interrupt
      IDR_USART_MODE_CTSICSelect_1)
     with Size => 1;
   for IDR_USART_MODE_CTSICSelect use
     (IDR_USART_MODE_CTSICSelect_0 => 0,
      IDR_USART_MODE_CTSICSelect_1 => 1);

   --  Manchester Error Interrupt Disable
   type IDR_USART_MODE_MANEASelect is
     (
      --  No effect
      IDR_USART_MODE_MANEASelect_0,
      --  Disables the corresponding interrupt
      IDR_USART_MODE_MANEASelect_1)
     with Size => 1;
   for IDR_USART_MODE_MANEASelect use
     (IDR_USART_MODE_MANEASelect_0 => 0,
      IDR_USART_MODE_MANEASelect_1 => 1);

   --  Interrupt Disable Register
   type USART_IDR_USART_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : IDR_USART_MODE_RXRDYSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Disable
      TXRDY          : IDR_USART_MODE_TXRDYSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : IDR_USART_MODE_RXBRKSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : IDR_USART_MODE_OVRESelect :=
                        SAM_SVD.USART.IDR_USART_MODE_OVRESelect_0;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : IDR_USART_MODE_FRAMESelect :=
                        SAM_SVD.USART.IDR_USART_MODE_FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : IDR_USART_MODE_PARESelect :=
                        SAM_SVD.USART.IDR_USART_MODE_PARESelect_0;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : IDR_USART_MODE_TIMEOUTSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Disable
      TXEMPTY        : IDR_USART_MODE_TXEMPTYSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Disable
      ITER           : IDR_USART_MODE_ITERSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE         : IDR_USART_MODE_TXBUFESelect :=
                        SAM_SVD.USART.IDR_USART_MODE_TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF         : IDR_USART_MODE_RXBUFFSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : IDR_USART_MODE_NACKSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_NACKSelect_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : IDR_USART_MODE_RIICSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : IDR_USART_MODE_DSRICSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : IDR_USART_MODE_DCDICSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : IDR_USART_MODE_CTSICSelect :=
                        SAM_SVD.USART.IDR_USART_MODE_CTSICSelect_0;
      --  Write-only. Manchester Error Interrupt Disable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Write-only. Manchester Error Interrupt Disable
      MANEA          : IDR_USART_MODE_MANEASelect :=
                        SAM_SVD.USART.IDR_USART_MODE_MANEASelect_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      MANE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MANEA          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RXRDY Interrupt Mask
   type IMR_LIN_MODE_RXRDYSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_RXRDYSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_RXRDYSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_RXRDYSelect use
     (IMR_LIN_MODE_RXRDYSelect_0 => 0,
      IMR_LIN_MODE_RXRDYSelect_1 => 1);

   --  TXRDY Interrupt Mask
   type IMR_LIN_MODE_TXRDYSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_TXRDYSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_TXRDYSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_TXRDYSelect use
     (IMR_LIN_MODE_TXRDYSelect_0 => 0,
      IMR_LIN_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Mask
   type IMR_LIN_MODE_RXBRKSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_RXBRKSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_RXBRKSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_RXBRKSelect use
     (IMR_LIN_MODE_RXBRKSelect_0 => 0,
      IMR_LIN_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Mask
   type IMR_LIN_MODE_OVRESelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_OVRESelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_OVRESelect_1)
     with Size => 1;
   for IMR_LIN_MODE_OVRESelect use
     (IMR_LIN_MODE_OVRESelect_0 => 0,
      IMR_LIN_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Mask
   type IMR_LIN_MODE_FRAMESelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_FRAMESelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_FRAMESelect_1)
     with Size => 1;
   for IMR_LIN_MODE_FRAMESelect use
     (IMR_LIN_MODE_FRAMESelect_0 => 0,
      IMR_LIN_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Mask
   type IMR_LIN_MODE_PARESelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_PARESelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_PARESelect_1)
     with Size => 1;
   for IMR_LIN_MODE_PARESelect use
     (IMR_LIN_MODE_PARESelect_0 => 0,
      IMR_LIN_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Mask
   type IMR_LIN_MODE_TIMEOUTSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_TIMEOUTSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_TIMEOUTSelect use
     (IMR_LIN_MODE_TIMEOUTSelect_0 => 0,
      IMR_LIN_MODE_TIMEOUTSelect_1 => 1);

   --  TXEMPTY Interrupt Mask
   type IMR_LIN_MODE_TXEMPTYSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_TXEMPTYSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_TXEMPTYSelect use
     (IMR_LIN_MODE_TXEMPTYSelect_0 => 0,
      IMR_LIN_MODE_TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Mask
   type IMR_LIN_MODE_ITERSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_ITERSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_ITERSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_ITERSelect use
     (IMR_LIN_MODE_ITERSelect_0 => 0,
      IMR_LIN_MODE_ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Mask
   type IMR_LIN_MODE_TXBUFESelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_TXBUFESelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_TXBUFESelect_1)
     with Size => 1;
   for IMR_LIN_MODE_TXBUFESelect use
     (IMR_LIN_MODE_TXBUFESelect_0 => 0,
      IMR_LIN_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Mask
   type IMR_LIN_MODE_RXBUFFSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_RXBUFFSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_RXBUFFSelect use
     (IMR_LIN_MODE_RXBUFFSelect_0 => 0,
      IMR_LIN_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge or LIN Break Sent or LIN Break Received Interrupt Mask
   type IMR_LIN_MODE_NACKSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_NACKSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_NACKSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_NACKSelect use
     (IMR_LIN_MODE_NACKSelect_0 => 0,
      IMR_LIN_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Mask
   type IMR_LIN_MODE_RIICSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_RIICSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_RIICSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_RIICSelect use
     (IMR_LIN_MODE_RIICSelect_0 => 0,
      IMR_LIN_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Mask
   type IMR_LIN_MODE_DSRICSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_DSRICSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_DSRICSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_DSRICSelect use
     (IMR_LIN_MODE_DSRICSelect_0 => 0,
      IMR_LIN_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Mask
   type IMR_LIN_MODE_DCDICSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_DCDICSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_DCDICSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_DCDICSelect use
     (IMR_LIN_MODE_DCDICSelect_0 => 0,
      IMR_LIN_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Mask
   type IMR_LIN_MODE_CTSICSelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_CTSICSelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_CTSICSelect_1)
     with Size => 1;
   for IMR_LIN_MODE_CTSICSelect use
     (IMR_LIN_MODE_CTSICSelect_0 => 0,
      IMR_LIN_MODE_CTSICSelect_1 => 1);

   --  LIN Synch Tolerance Error Interrupt Mask
   type IMR_LIN_MODE_LINSTESelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_LINSTESelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_LINSTESelect_1)
     with Size => 1;
   for IMR_LIN_MODE_LINSTESelect use
     (IMR_LIN_MODE_LINSTESelect_0 => 0,
      IMR_LIN_MODE_LINSTESelect_1 => 1);

   --  LIN Header Timeout Error Interrupt Mask
   type IMR_LIN_MODE_LINHTESelect is
     (
      --  The interrupt is disabled
      IMR_LIN_MODE_LINHTESelect_0,
      --  The interrupt is enabled
      IMR_LIN_MODE_LINHTESelect_1)
     with Size => 1;
   for IMR_LIN_MODE_LINHTESelect use
     (IMR_LIN_MODE_LINHTESelect_0 => 0,
      IMR_LIN_MODE_LINHTESelect_1 => 1);

   --  Interrupt Mask Register
   type USART_IMR_LIN_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : IMR_LIN_MODE_RXRDYSelect;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : IMR_LIN_MODE_TXRDYSelect;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : IMR_LIN_MODE_RXBRKSelect;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : IMR_LIN_MODE_OVRESelect;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : IMR_LIN_MODE_FRAMESelect;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : IMR_LIN_MODE_PARESelect;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : IMR_LIN_MODE_TIMEOUTSelect;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : IMR_LIN_MODE_TXEMPTYSelect;
      --  Read-only. Iteration Interrupt Mask
      ITER           : IMR_LIN_MODE_ITERSelect;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE         : IMR_LIN_MODE_TXBUFESelect;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF         : IMR_LIN_MODE_RXBUFFSelect;
      --  Read-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      --  Interrupt Mask
      NACK           : IMR_LIN_MODE_NACKSelect;
      --  Read-only. LIN Identifier Sent or LIN Received Interrupt Mask
      LINID          : Boolean;
      --  Read-only. LIN Transfer Conpleted Interrupt Mask
      LINTC          : Boolean;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : IMR_LIN_MODE_RIICSelect;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : IMR_LIN_MODE_DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : IMR_LIN_MODE_DCDICSelect;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : IMR_LIN_MODE_CTSICSelect;
      --  unspecified
      Reserved_20_24 : HAL.UInt5;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error Interrupt Mask
      LINSTE         : IMR_LIN_MODE_LINSTESelect;
      --  Read-only. LIN Header Timeout Error Interrupt Mask
      LINHTE         : IMR_LIN_MODE_LINHTESelect;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  RXRDY Interrupt Mask
   type IMR_SPI_SLAVE_MODE_RXRDYSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_RXRDYSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_RXRDYSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_RXRDYSelect use
     (IMR_SPI_SLAVE_MODE_RXRDYSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_RXRDYSelect_1 => 1);

   --  TXRDY Interrupt Mask
   type IMR_SPI_SLAVE_MODE_TXRDYSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_TXRDYSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_TXRDYSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_TXRDYSelect use
     (IMR_SPI_SLAVE_MODE_TXRDYSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Mask
   type IMR_SPI_SLAVE_MODE_RXBRKSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_RXBRKSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_RXBRKSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_RXBRKSelect use
     (IMR_SPI_SLAVE_MODE_RXBRKSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Mask
   type IMR_SPI_SLAVE_MODE_OVRESelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_OVRESelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_OVRESelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_OVRESelect use
     (IMR_SPI_SLAVE_MODE_OVRESelect_0 => 0,
      IMR_SPI_SLAVE_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Mask
   type IMR_SPI_SLAVE_MODE_FRAMESelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_FRAMESelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_FRAMESelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_FRAMESelect use
     (IMR_SPI_SLAVE_MODE_FRAMESelect_0 => 0,
      IMR_SPI_SLAVE_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Mask
   type IMR_SPI_SLAVE_MODE_PARESelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_PARESelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_PARESelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_PARESelect use
     (IMR_SPI_SLAVE_MODE_PARESelect_0 => 0,
      IMR_SPI_SLAVE_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Mask
   type IMR_SPI_SLAVE_MODE_TIMEOUTSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_TIMEOUTSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_TIMEOUTSelect use
     (IMR_SPI_SLAVE_MODE_TIMEOUTSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_TIMEOUTSelect_1 => 1);

   --  TXEMPTY Interrupt Mask
   type IMR_SPI_SLAVE_MODE_TXEMPTYSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_TXEMPTYSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_TXEMPTYSelect use
     (IMR_SPI_SLAVE_MODE_TXEMPTYSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_TXEMPTYSelect_1 => 1);

   --  SPI Underrun Error Interrupt Mask
   type IMR_SPI_SLAVE_MODE_UNRESelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_UNRESelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_UNRESelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_UNRESelect use
     (IMR_SPI_SLAVE_MODE_UNRESelect_0 => 0,
      IMR_SPI_SLAVE_MODE_UNRESelect_1 => 1);

   --  Buffer Empty Interrupt Mask
   type IMR_SPI_SLAVE_MODE_TXBUFESelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_TXBUFESelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_TXBUFESelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_TXBUFESelect use
     (IMR_SPI_SLAVE_MODE_TXBUFESelect_0 => 0,
      IMR_SPI_SLAVE_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Mask
   type IMR_SPI_SLAVE_MODE_RXBUFFSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_RXBUFFSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_RXBUFFSelect use
     (IMR_SPI_SLAVE_MODE_RXBUFFSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge Interrupt Mask
   type IMR_SPI_SLAVE_MODE_NACKSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_NACKSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_NACKSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_NACKSelect use
     (IMR_SPI_SLAVE_MODE_NACKSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Mask
   type IMR_SPI_SLAVE_MODE_RIICSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_RIICSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_RIICSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_RIICSelect use
     (IMR_SPI_SLAVE_MODE_RIICSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Mask
   type IMR_SPI_SLAVE_MODE_DSRICSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_DSRICSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_DSRICSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_DSRICSelect use
     (IMR_SPI_SLAVE_MODE_DSRICSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Mask
   type IMR_SPI_SLAVE_MODE_DCDICSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_DCDICSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_DCDICSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_DCDICSelect use
     (IMR_SPI_SLAVE_MODE_DCDICSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Mask
   type IMR_SPI_SLAVE_MODE_CTSICSelect is
     (
      --  The interrupt is disabled
      IMR_SPI_SLAVE_MODE_CTSICSelect_0,
      --  The interrupt is enabled
      IMR_SPI_SLAVE_MODE_CTSICSelect_1)
     with Size => 1;
   for IMR_SPI_SLAVE_MODE_CTSICSelect use
     (IMR_SPI_SLAVE_MODE_CTSICSelect_0 => 0,
      IMR_SPI_SLAVE_MODE_CTSICSelect_1 => 1);

   --  Interrupt Mask Register
   type USART_IMR_SPI_SLAVE_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : IMR_SPI_SLAVE_MODE_RXRDYSelect;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : IMR_SPI_SLAVE_MODE_TXRDYSelect;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : IMR_SPI_SLAVE_MODE_RXBRKSelect;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : IMR_SPI_SLAVE_MODE_OVRESelect;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : IMR_SPI_SLAVE_MODE_FRAMESelect;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : IMR_SPI_SLAVE_MODE_PARESelect;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : IMR_SPI_SLAVE_MODE_TIMEOUTSelect;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : IMR_SPI_SLAVE_MODE_TXEMPTYSelect;
      --  Read-only. SPI Underrun Error Interrupt Mask
      UNRE           : IMR_SPI_SLAVE_MODE_UNRESelect;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE         : IMR_SPI_SLAVE_MODE_TXBUFESelect;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF         : IMR_SPI_SLAVE_MODE_RXBUFFSelect;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : IMR_SPI_SLAVE_MODE_NACKSelect;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : IMR_SPI_SLAVE_MODE_RIICSelect;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : IMR_SPI_SLAVE_MODE_DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : IMR_SPI_SLAVE_MODE_DCDICSelect;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : IMR_SPI_SLAVE_MODE_CTSICSelect;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RXRDY Interrupt Mask
   type IMR_USART_MODE_RXRDYSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_RXRDYSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_RXRDYSelect_1)
     with Size => 1;
   for IMR_USART_MODE_RXRDYSelect use
     (IMR_USART_MODE_RXRDYSelect_0 => 0,
      IMR_USART_MODE_RXRDYSelect_1 => 1);

   --  TXRDY Interrupt Mask
   type IMR_USART_MODE_TXRDYSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_TXRDYSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_TXRDYSelect_1)
     with Size => 1;
   for IMR_USART_MODE_TXRDYSelect use
     (IMR_USART_MODE_TXRDYSelect_0 => 0,
      IMR_USART_MODE_TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Mask
   type IMR_USART_MODE_RXBRKSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_RXBRKSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_RXBRKSelect_1)
     with Size => 1;
   for IMR_USART_MODE_RXBRKSelect use
     (IMR_USART_MODE_RXBRKSelect_0 => 0,
      IMR_USART_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Mask
   type IMR_USART_MODE_OVRESelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_OVRESelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_OVRESelect_1)
     with Size => 1;
   for IMR_USART_MODE_OVRESelect use
     (IMR_USART_MODE_OVRESelect_0 => 0,
      IMR_USART_MODE_OVRESelect_1 => 1);

   --  Framing Error Interrupt Mask
   type IMR_USART_MODE_FRAMESelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_FRAMESelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_FRAMESelect_1)
     with Size => 1;
   for IMR_USART_MODE_FRAMESelect use
     (IMR_USART_MODE_FRAMESelect_0 => 0,
      IMR_USART_MODE_FRAMESelect_1 => 1);

   --  Parity Error Interrupt Mask
   type IMR_USART_MODE_PARESelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_PARESelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_PARESelect_1)
     with Size => 1;
   for IMR_USART_MODE_PARESelect use
     (IMR_USART_MODE_PARESelect_0 => 0,
      IMR_USART_MODE_PARESelect_1 => 1);

   --  Time-out Interrupt Mask
   type IMR_USART_MODE_TIMEOUTSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_TIMEOUTSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for IMR_USART_MODE_TIMEOUTSelect use
     (IMR_USART_MODE_TIMEOUTSelect_0 => 0,
      IMR_USART_MODE_TIMEOUTSelect_1 => 1);

   --  TXEMPTY Interrupt Mask
   type IMR_USART_MODE_TXEMPTYSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_TXEMPTYSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for IMR_USART_MODE_TXEMPTYSelect use
     (IMR_USART_MODE_TXEMPTYSelect_0 => 0,
      IMR_USART_MODE_TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Mask
   type IMR_USART_MODE_ITERSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_ITERSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_ITERSelect_1)
     with Size => 1;
   for IMR_USART_MODE_ITERSelect use
     (IMR_USART_MODE_ITERSelect_0 => 0,
      IMR_USART_MODE_ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Mask
   type IMR_USART_MODE_TXBUFESelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_TXBUFESelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_TXBUFESelect_1)
     with Size => 1;
   for IMR_USART_MODE_TXBUFESelect use
     (IMR_USART_MODE_TXBUFESelect_0 => 0,
      IMR_USART_MODE_TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Mask
   type IMR_USART_MODE_RXBUFFSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_RXBUFFSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_RXBUFFSelect_1)
     with Size => 1;
   for IMR_USART_MODE_RXBUFFSelect use
     (IMR_USART_MODE_RXBUFFSelect_0 => 0,
      IMR_USART_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge Interrupt Mask
   type IMR_USART_MODE_NACKSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_NACKSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_NACKSelect_1)
     with Size => 1;
   for IMR_USART_MODE_NACKSelect use
     (IMR_USART_MODE_NACKSelect_0 => 0,
      IMR_USART_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Mask
   type IMR_USART_MODE_RIICSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_RIICSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_RIICSelect_1)
     with Size => 1;
   for IMR_USART_MODE_RIICSelect use
     (IMR_USART_MODE_RIICSelect_0 => 0,
      IMR_USART_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Mask
   type IMR_USART_MODE_DSRICSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_DSRICSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_DSRICSelect_1)
     with Size => 1;
   for IMR_USART_MODE_DSRICSelect use
     (IMR_USART_MODE_DSRICSelect_0 => 0,
      IMR_USART_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Mask
   type IMR_USART_MODE_DCDICSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_DCDICSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_DCDICSelect_1)
     with Size => 1;
   for IMR_USART_MODE_DCDICSelect use
     (IMR_USART_MODE_DCDICSelect_0 => 0,
      IMR_USART_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Mask
   type IMR_USART_MODE_CTSICSelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_CTSICSelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_CTSICSelect_1)
     with Size => 1;
   for IMR_USART_MODE_CTSICSelect use
     (IMR_USART_MODE_CTSICSelect_0 => 0,
      IMR_USART_MODE_CTSICSelect_1 => 1);

   --  Manchester Error Interrupt Mask
   type IMR_USART_MODE_MANEASelect is
     (
      --  The interrupt is disabled
      IMR_USART_MODE_MANEASelect_0,
      --  The interrupt is enabled
      IMR_USART_MODE_MANEASelect_1)
     with Size => 1;
   for IMR_USART_MODE_MANEASelect use
     (IMR_USART_MODE_MANEASelect_0 => 0,
      IMR_USART_MODE_MANEASelect_1 => 1);

   --  Interrupt Mask Register
   type USART_IMR_USART_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : IMR_USART_MODE_RXRDYSelect;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : IMR_USART_MODE_TXRDYSelect;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : IMR_USART_MODE_RXBRKSelect;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : IMR_USART_MODE_OVRESelect;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : IMR_USART_MODE_FRAMESelect;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : IMR_USART_MODE_PARESelect;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : IMR_USART_MODE_TIMEOUTSelect;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : IMR_USART_MODE_TXEMPTYSelect;
      --  Read-only. Iteration Interrupt Mask
      ITER           : IMR_USART_MODE_ITERSelect;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE         : IMR_USART_MODE_TXBUFESelect;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF         : IMR_USART_MODE_RXBUFFSelect;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : IMR_USART_MODE_NACKSelect;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : IMR_USART_MODE_RIICSelect;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : IMR_USART_MODE_DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : IMR_USART_MODE_DCDICSelect;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : IMR_USART_MODE_CTSICSelect;
      --  Read-only. Manchester Error Interrupt Mask
      MANE           : Boolean;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. Manchester Error Interrupt Mask
      MANEA          : IMR_USART_MODE_MANEASelect;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      MANE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MANEA          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Receiver Ready
   type CSR_LIN_MODE_RXRDYSelect is
     (
      --  No complete character has been received since the last read of RHR or
      --  the receiver is disabled. If characters werebeing received when the
      --  receiver was disabled, RXRDY changes to 1 when the receiver is
      --  enabled
      CSR_LIN_MODE_RXRDYSelect_0,
      --  At least one complete character has been received and RHR has not yet
      --  been read
      CSR_LIN_MODE_RXRDYSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_RXRDYSelect use
     (CSR_LIN_MODE_RXRDYSelect_0 => 0,
      CSR_LIN_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready
   type CSR_LIN_MODE_TXRDYSelect is
     (
      --  A character is in the THR waiting to be transferred to the Transmit
      --  Shift Register, or an STTBRK command has been requested, or the
      --  transmitter is disabled. As soon as the transmitter is enabled, TXRDY
      --  becomes 1
      CSR_LIN_MODE_TXRDYSelect_0,
      --  There is no character in the THR
      CSR_LIN_MODE_TXRDYSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_TXRDYSelect use
     (CSR_LIN_MODE_TXRDYSelect_0 => 0,
      CSR_LIN_MODE_TXRDYSelect_1 => 1);

   --  Break Received/End of Break
   type CSR_LIN_MODE_RXBRKSelect is
     (
      --  No Break received or End of Break detected since the last RSTSTA
      CSR_LIN_MODE_RXBRKSelect_0,
      --  Break Received or End of Break detected since the last RSTSTA
      CSR_LIN_MODE_RXBRKSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_RXBRKSelect use
     (CSR_LIN_MODE_RXBRKSelect_0 => 0,
      CSR_LIN_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error
   type CSR_LIN_MODE_OVRESelect is
     (
      --  No overrun error has occurred since since the last RSTSTA
      CSR_LIN_MODE_OVRESelect_0,
      --  At least one overrun error has occurred since the last RSTSTA
      CSR_LIN_MODE_OVRESelect_1)
     with Size => 1;
   for CSR_LIN_MODE_OVRESelect use
     (CSR_LIN_MODE_OVRESelect_0 => 0,
      CSR_LIN_MODE_OVRESelect_1 => 1);

   --  Framing Error
   type CSR_LIN_MODE_FRAMESelect is
     (
      --  No stop bit has been detected low since the last RSTSTA
      CSR_LIN_MODE_FRAMESelect_0,
      --  At least one stop bit has been detected low since the last RSTSTA
      CSR_LIN_MODE_FRAMESelect_1)
     with Size => 1;
   for CSR_LIN_MODE_FRAMESelect use
     (CSR_LIN_MODE_FRAMESelect_0 => 0,
      CSR_LIN_MODE_FRAMESelect_1 => 1);

   --  Parity Error
   type CSR_LIN_MODE_PARESelect is
     (
      --  No parity error has been detected since the last RSTSTA
      CSR_LIN_MODE_PARESelect_0,
      --  At least one parity error has been detected since the last RSTSTA
      CSR_LIN_MODE_PARESelect_1)
     with Size => 1;
   for CSR_LIN_MODE_PARESelect use
     (CSR_LIN_MODE_PARESelect_0 => 0,
      CSR_LIN_MODE_PARESelect_1 => 1);

   --  Receiver Time-out
   type CSR_LIN_MODE_TIMEOUTSelect is
     (
      --  There has not been a time-out since the last Start Time-out command
      --  or the Time-out Register is 0
      CSR_LIN_MODE_TIMEOUTSelect_0,
      --  There has been a time-out since the last Start Time-out command
      CSR_LIN_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_TIMEOUTSelect use
     (CSR_LIN_MODE_TIMEOUTSelect_0 => 0,
      CSR_LIN_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty
   type CSR_LIN_MODE_TXEMPTYSelect is
     (
      --  There are characters in either THR or the Transmit Shift Register, or
      --  the transmitter is disabled
      CSR_LIN_MODE_TXEMPTYSelect_0,
      --  There is at least one character in either THR or the Transmit Shift
      --  Register
      CSR_LIN_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_TXEMPTYSelect use
     (CSR_LIN_MODE_TXEMPTYSelect_0 => 0,
      CSR_LIN_MODE_TXEMPTYSelect_1 => 1);

   --  Max number of Repetitions Reached
   type CSR_LIN_MODE_ITERSelect is
     (
      --  Maximum number of repetitions has not been reached since the last
      --  RSIT
      CSR_LIN_MODE_ITERSelect_0,
      --  Maximum number of repetitions has been reached since the last RSIT
      CSR_LIN_MODE_ITERSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_ITERSelect use
     (CSR_LIN_MODE_ITERSelect_0 => 0,
      CSR_LIN_MODE_ITERSelect_1 => 1);

   --  Transmission Buffer Empty
   type CSR_LIN_MODE_TXBUFESelect is
     (
      --  The signal Buffer Empty from the Transmit PDC channel is inactive
      CSR_LIN_MODE_TXBUFESelect_0,
      --  The signal Buffer Empty from the Transmit PDC channel is active
      CSR_LIN_MODE_TXBUFESelect_1)
     with Size => 1;
   for CSR_LIN_MODE_TXBUFESelect use
     (CSR_LIN_MODE_TXBUFESelect_0 => 0,
      CSR_LIN_MODE_TXBUFESelect_1 => 1);

   --  Reception Buffer Full
   type CSR_LIN_MODE_RXBUFFSelect is
     (
      --  The signal Buffer Full from the Receive PDC channel is inactive
      CSR_LIN_MODE_RXBUFFSelect_0,
      --  The signal Buffer Full from the Receive PDC channel is active
      CSR_LIN_MODE_RXBUFFSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_RXBUFFSelect use
     (CSR_LIN_MODE_RXBUFFSelect_0 => 0,
      CSR_LIN_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge or LIN Break Sent or LIN Break Received
   type CSR_LIN_MODE_NACKSelect is
     (
      --  No Non Acknowledge has not been detected since the last RSTNACK
      CSR_LIN_MODE_NACKSelect_0,
      --  At least one Non Acknowledge has been detected since the last RSTNACK
      CSR_LIN_MODE_NACKSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_NACKSelect use
     (CSR_LIN_MODE_NACKSelect_0 => 0,
      CSR_LIN_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Flag
   type CSR_LIN_MODE_RIICSelect is
     (
      --  No input change has been detected on the RI pin since the last read
      --  of CSR
      CSR_LIN_MODE_RIICSelect_0,
      --  At least one input change has been detected on the RI pin since the
      --  last read of CSR
      CSR_LIN_MODE_RIICSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_RIICSelect use
     (CSR_LIN_MODE_RIICSelect_0 => 0,
      CSR_LIN_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Flag
   type CSR_LIN_MODE_DSRICSelect is
     (
      --  No input change has been detected on the DSR pin since the last read
      --  of CSR
      CSR_LIN_MODE_DSRICSelect_0,
      --  At least one input change has been detected on the DSR pin since the
      --  last read of CSR
      CSR_LIN_MODE_DSRICSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_DSRICSelect use
     (CSR_LIN_MODE_DSRICSelect_0 => 0,
      CSR_LIN_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Flag
   type CSR_LIN_MODE_DCDICSelect is
     (
      --  No input change has been detected on the DCD pin since the last read
      --  of CSR
      CSR_LIN_MODE_DCDICSelect_0,
      --  At least one input change has been detected on the DCD pin since the
      --  last read of CSR
      CSR_LIN_MODE_DCDICSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_DCDICSelect use
     (CSR_LIN_MODE_DCDICSelect_0 => 0,
      CSR_LIN_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Flag
   type CSR_LIN_MODE_CTSICSelect is
     (
      --  No input change has been detected on the CTS pin since the last read
      --  of CSR
      CSR_LIN_MODE_CTSICSelect_0,
      --  At least one input change has been detected on the CTS pin since the
      --  last read of CSR
      CSR_LIN_MODE_CTSICSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_CTSICSelect use
     (CSR_LIN_MODE_CTSICSelect_0 => 0,
      CSR_LIN_MODE_CTSICSelect_1 => 1);

   --  Image of RI Input
   type CSR_LIN_MODE_RISelect is
     (
      --  RI is at 0
      CSR_LIN_MODE_RISelect_0,
      --  RI is at 1
      CSR_LIN_MODE_RISelect_1)
     with Size => 1;
   for CSR_LIN_MODE_RISelect use
     (CSR_LIN_MODE_RISelect_0 => 0,
      CSR_LIN_MODE_RISelect_1 => 1);

   --  Image of DSR Input
   type CSR_LIN_MODE_DSRSelect is
     (
      --  DSR is at 0
      CSR_LIN_MODE_DSRSelect_0,
      --  DSR is at 1
      CSR_LIN_MODE_DSRSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_DSRSelect use
     (CSR_LIN_MODE_DSRSelect_0 => 0,
      CSR_LIN_MODE_DSRSelect_1 => 1);

   --  Image of DCD Input
   type CSR_LIN_MODE_DCDSelect is
     (
      --  DCD is at 0
      CSR_LIN_MODE_DCDSelect_0,
      --  DCD is at 1
      CSR_LIN_MODE_DCDSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_DCDSelect use
     (CSR_LIN_MODE_DCDSelect_0 => 0,
      CSR_LIN_MODE_DCDSelect_1 => 1);

   --  LIN Bus Line Status
   type CSR_LIN_MODE_LINBLSSelect is
     (
      --  CTS is at 0
      CSR_LIN_MODE_LINBLSSelect_0,
      --  CTS is at 1
      CSR_LIN_MODE_LINBLSSelect_1)
     with Size => 1;
   for CSR_LIN_MODE_LINBLSSelect use
     (CSR_LIN_MODE_LINBLSSelect_0 => 0,
      CSR_LIN_MODE_LINBLSSelect_1 => 1);

   --  LIN Synch Tolerance Error
   type CSR_LIN_MODE_LINSTESelect is
     (
      --  COMM_TX is at 0
      CSR_LIN_MODE_LINSTESelect_0,
      --  COMM_TX is at 1
      CSR_LIN_MODE_LINSTESelect_1)
     with Size => 1;
   for CSR_LIN_MODE_LINSTESelect use
     (CSR_LIN_MODE_LINSTESelect_0 => 0,
      CSR_LIN_MODE_LINSTESelect_1 => 1);

   --  LIN Header Timeout Error
   type CSR_LIN_MODE_LINHTESelect is
     (
      --  COMM_RX is at 0
      CSR_LIN_MODE_LINHTESelect_0,
      --  COMM_RX is at 1
      CSR_LIN_MODE_LINHTESelect_1)
     with Size => 1;
   for CSR_LIN_MODE_LINHTESelect use
     (CSR_LIN_MODE_LINHTESelect_0 => 0,
      CSR_LIN_MODE_LINHTESelect_1 => 1);

   --  Channel Status Register
   type USART_CSR_LIN_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : CSR_LIN_MODE_RXRDYSelect;
      --  Read-only. Transmitter Ready
      TXRDY          : CSR_LIN_MODE_TXRDYSelect;
      --  Read-only. Break Received/End of Break
      RXBRK          : CSR_LIN_MODE_RXBRKSelect;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error
      OVRE           : CSR_LIN_MODE_OVRESelect;
      --  Read-only. Framing Error
      FRAME          : CSR_LIN_MODE_FRAMESelect;
      --  Read-only. Parity Error
      PARE           : CSR_LIN_MODE_PARESelect;
      --  Read-only. Receiver Time-out
      TIMEOUT        : CSR_LIN_MODE_TIMEOUTSelect;
      --  Read-only. Transmitter Empty
      TXEMPTY        : CSR_LIN_MODE_TXEMPTYSelect;
      --  Read-only. Max number of Repetitions Reached
      ITER           : CSR_LIN_MODE_ITERSelect;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : CSR_LIN_MODE_TXBUFESelect;
      --  Read-only. Reception Buffer Full
      RXBUFF         : CSR_LIN_MODE_RXBUFFSelect;
      --  Read-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      NACK           : CSR_LIN_MODE_NACKSelect;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received
      LINID          : Boolean;
      --  Read-only. LIN Transfer Conpleted
      LINTC          : Boolean;
      --  Read-only. Ring Indicator Input Change Flag
      RIIC           : CSR_LIN_MODE_RIICSelect;
      --  Read-only. Data Set Ready Input Change Flag
      DSRIC          : CSR_LIN_MODE_DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Flag
      DCDIC          : CSR_LIN_MODE_DCDICSelect;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : CSR_LIN_MODE_CTSICSelect;
      --  Read-only. Image of RI Input
      RI             : CSR_LIN_MODE_RISelect;
      --  Read-only. Image of DSR Input
      DSR            : CSR_LIN_MODE_DSRSelect;
      --  Read-only. Image of DCD Input
      DCD            : CSR_LIN_MODE_DCDSelect;
      --  Read-only. LIN Bus Line Status
      LINBLS         : CSR_LIN_MODE_LINBLSSelect;
      --  unspecified
      Reserved_24_24 : HAL.Bit;
      --  Read-only. LIN Bit Error
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Error
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error
      LINSTE         : CSR_LIN_MODE_LINSTESelect;
      --  Read-only. LIN Header Timeout Error
      LINHTE         : CSR_LIN_MODE_LINHTESelect;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      LINBLS         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  Receiver Ready
   type CSR_SPI_SLAVE_MODE_RXRDYSelect is
     (
      --  No complete character has been received since the last read of RHR or
      --  the receiver is disabled. If characters werebeing received when the
      --  receiver was disabled, RXRDY changes to 1 when the receiver is
      --  enabled
      CSR_SPI_SLAVE_MODE_RXRDYSelect_0,
      --  At least one complete character has been received and RHR has not yet
      --  been read
      CSR_SPI_SLAVE_MODE_RXRDYSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_RXRDYSelect use
     (CSR_SPI_SLAVE_MODE_RXRDYSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready
   type CSR_SPI_SLAVE_MODE_TXRDYSelect is
     (
      --  A character is in the THR waiting to be transferred to the Transmit
      --  Shift Register, or an STTBRK command has been requested, or the
      --  transmitter is disabled. As soon as the transmitter is enabled, TXRDY
      --  becomes 1
      CSR_SPI_SLAVE_MODE_TXRDYSelect_0,
      --  There is no character in the THR
      CSR_SPI_SLAVE_MODE_TXRDYSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_TXRDYSelect use
     (CSR_SPI_SLAVE_MODE_TXRDYSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_TXRDYSelect_1 => 1);

   --  Break Received/End of Break
   type CSR_SPI_SLAVE_MODE_RXBRKSelect is
     (
      --  No Break received or End of Break detected since the last RSTSTA
      CSR_SPI_SLAVE_MODE_RXBRKSelect_0,
      --  Break Received or End of Break detected since the last RSTSTA
      CSR_SPI_SLAVE_MODE_RXBRKSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_RXBRKSelect use
     (CSR_SPI_SLAVE_MODE_RXBRKSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error
   type CSR_SPI_SLAVE_MODE_OVRESelect is
     (
      --  No overrun error has occurred since since the last RSTSTA
      CSR_SPI_SLAVE_MODE_OVRESelect_0,
      --  At least one overrun error has occurred since the last RSTSTA
      CSR_SPI_SLAVE_MODE_OVRESelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_OVRESelect use
     (CSR_SPI_SLAVE_MODE_OVRESelect_0 => 0,
      CSR_SPI_SLAVE_MODE_OVRESelect_1 => 1);

   --  Framing Error
   type CSR_SPI_SLAVE_MODE_FRAMESelect is
     (
      --  No stop bit has been detected low since the last RSTSTA
      CSR_SPI_SLAVE_MODE_FRAMESelect_0,
      --  At least one stop bit has been detected low since the last RSTSTA
      CSR_SPI_SLAVE_MODE_FRAMESelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_FRAMESelect use
     (CSR_SPI_SLAVE_MODE_FRAMESelect_0 => 0,
      CSR_SPI_SLAVE_MODE_FRAMESelect_1 => 1);

   --  Parity Error
   type CSR_SPI_SLAVE_MODE_PARESelect is
     (
      --  No parity error has been detected since the last RSTSTA
      CSR_SPI_SLAVE_MODE_PARESelect_0,
      --  At least one parity error has been detected since the last RSTSTA
      CSR_SPI_SLAVE_MODE_PARESelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_PARESelect use
     (CSR_SPI_SLAVE_MODE_PARESelect_0 => 0,
      CSR_SPI_SLAVE_MODE_PARESelect_1 => 1);

   --  Receiver Time-out
   type CSR_SPI_SLAVE_MODE_TIMEOUTSelect is
     (
      --  There has not been a time-out since the last Start Time-out command
      --  or the Time-out Register is 0
      CSR_SPI_SLAVE_MODE_TIMEOUTSelect_0,
      --  There has been a time-out since the last Start Time-out command
      CSR_SPI_SLAVE_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_TIMEOUTSelect use
     (CSR_SPI_SLAVE_MODE_TIMEOUTSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty
   type CSR_SPI_SLAVE_MODE_TXEMPTYSelect is
     (
      --  There are characters in either THR or the Transmit Shift Register, or
      --  the transmitter is disabled
      CSR_SPI_SLAVE_MODE_TXEMPTYSelect_0,
      --  There is at least one character in either THR or the Transmit Shift
      --  Register
      CSR_SPI_SLAVE_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_TXEMPTYSelect use
     (CSR_SPI_SLAVE_MODE_TXEMPTYSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_TXEMPTYSelect_1 => 1);

   --  SPI Underrun Error
   type CSR_SPI_SLAVE_MODE_UNRESelect is
     (
      --  No SPI underrun error has occurred since the last RSTSTA
      CSR_SPI_SLAVE_MODE_UNRESelect_0,
      --  At least one SPI underrun error has occurred since the last RSTSTA
      CSR_SPI_SLAVE_MODE_UNRESelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_UNRESelect use
     (CSR_SPI_SLAVE_MODE_UNRESelect_0 => 0,
      CSR_SPI_SLAVE_MODE_UNRESelect_1 => 1);

   --  Transmission Buffer Empty
   type CSR_SPI_SLAVE_MODE_TXBUFESelect is
     (
      --  The signal Buffer Empty from the Transmit PDC channel is inactive
      CSR_SPI_SLAVE_MODE_TXBUFESelect_0,
      --  The signal Buffer Empty from the Transmit PDC channel is active
      CSR_SPI_SLAVE_MODE_TXBUFESelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_TXBUFESelect use
     (CSR_SPI_SLAVE_MODE_TXBUFESelect_0 => 0,
      CSR_SPI_SLAVE_MODE_TXBUFESelect_1 => 1);

   --  Reception Buffer Full
   type CSR_SPI_SLAVE_MODE_RXBUFFSelect is
     (
      --  The signal Buffer Full from the Receive PDC channel is inactive
      CSR_SPI_SLAVE_MODE_RXBUFFSelect_0,
      --  The signal Buffer Full from the Receive PDC channel is active
      CSR_SPI_SLAVE_MODE_RXBUFFSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_RXBUFFSelect use
     (CSR_SPI_SLAVE_MODE_RXBUFFSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge
   type CSR_SPI_SLAVE_MODE_NACKSelect is
     (
      --  No Non Acknowledge has not been detected since the last RSTNACK
      CSR_SPI_SLAVE_MODE_NACKSelect_0,
      --  At least one Non Acknowledge has been detected since the last RSTNACK
      CSR_SPI_SLAVE_MODE_NACKSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_NACKSelect use
     (CSR_SPI_SLAVE_MODE_NACKSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Flag
   type CSR_SPI_SLAVE_MODE_RIICSelect is
     (
      --  No input change has been detected on the RI pin since the last read
      --  of CSR
      CSR_SPI_SLAVE_MODE_RIICSelect_0,
      --  At least one input change has been detected on the RI pin since the
      --  last read of CSR
      CSR_SPI_SLAVE_MODE_RIICSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_RIICSelect use
     (CSR_SPI_SLAVE_MODE_RIICSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Flag
   type CSR_SPI_SLAVE_MODE_DSRICSelect is
     (
      --  No input change has been detected on the DSR pin since the last read
      --  of CSR
      CSR_SPI_SLAVE_MODE_DSRICSelect_0,
      --  At least one input change has been detected on the DSR pin since the
      --  last read of CSR
      CSR_SPI_SLAVE_MODE_DSRICSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_DSRICSelect use
     (CSR_SPI_SLAVE_MODE_DSRICSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Flag
   type CSR_SPI_SLAVE_MODE_DCDICSelect is
     (
      --  No input change has been detected on the DCD pin since the last read
      --  of CSR
      CSR_SPI_SLAVE_MODE_DCDICSelect_0,
      --  At least one input change has been detected on the DCD pin since the
      --  last read of CSR
      CSR_SPI_SLAVE_MODE_DCDICSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_DCDICSelect use
     (CSR_SPI_SLAVE_MODE_DCDICSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Flag
   type CSR_SPI_SLAVE_MODE_CTSICSelect is
     (
      --  No input change has been detected on the CTS pin since the last read
      --  of CSR
      CSR_SPI_SLAVE_MODE_CTSICSelect_0,
      --  At least one input change has been detected on the CTS pin since the
      --  last read of CSR
      CSR_SPI_SLAVE_MODE_CTSICSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_CTSICSelect use
     (CSR_SPI_SLAVE_MODE_CTSICSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_CTSICSelect_1 => 1);

   --  Image of RI Input
   type CSR_SPI_SLAVE_MODE_RISelect is
     (
      --  RI is at 0
      CSR_SPI_SLAVE_MODE_RISelect_0,
      --  RI is at 1
      CSR_SPI_SLAVE_MODE_RISelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_RISelect use
     (CSR_SPI_SLAVE_MODE_RISelect_0 => 0,
      CSR_SPI_SLAVE_MODE_RISelect_1 => 1);

   --  Image of DSR Input
   type CSR_SPI_SLAVE_MODE_DSRSelect is
     (
      --  DSR is at 0
      CSR_SPI_SLAVE_MODE_DSRSelect_0,
      --  DSR is at 1
      CSR_SPI_SLAVE_MODE_DSRSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_DSRSelect use
     (CSR_SPI_SLAVE_MODE_DSRSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_DSRSelect_1 => 1);

   --  Image of DCD Input
   type CSR_SPI_SLAVE_MODE_DCDSelect is
     (
      --  DCD is at 0
      CSR_SPI_SLAVE_MODE_DCDSelect_0,
      --  DCD is at 1
      CSR_SPI_SLAVE_MODE_DCDSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_DCDSelect use
     (CSR_SPI_SLAVE_MODE_DCDSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_DCDSelect_1 => 1);

   --  Image of CTS Input
   type CSR_SPI_SLAVE_MODE_CTSSelect is
     (
      --  CTS is at 0
      CSR_SPI_SLAVE_MODE_CTSSelect_0,
      --  CTS is at 1
      CSR_SPI_SLAVE_MODE_CTSSelect_1)
     with Size => 1;
   for CSR_SPI_SLAVE_MODE_CTSSelect use
     (CSR_SPI_SLAVE_MODE_CTSSelect_0 => 0,
      CSR_SPI_SLAVE_MODE_CTSSelect_1 => 1);

   --  Channel Status Register
   type USART_CSR_SPI_SLAVE_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : CSR_SPI_SLAVE_MODE_RXRDYSelect;
      --  Read-only. Transmitter Ready
      TXRDY          : CSR_SPI_SLAVE_MODE_TXRDYSelect;
      --  Read-only. Break Received/End of Break
      RXBRK          : CSR_SPI_SLAVE_MODE_RXBRKSelect;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error
      OVRE           : CSR_SPI_SLAVE_MODE_OVRESelect;
      --  Read-only. Framing Error
      FRAME          : CSR_SPI_SLAVE_MODE_FRAMESelect;
      --  Read-only. Parity Error
      PARE           : CSR_SPI_SLAVE_MODE_PARESelect;
      --  Read-only. Receiver Time-out
      TIMEOUT        : CSR_SPI_SLAVE_MODE_TIMEOUTSelect;
      --  Read-only. Transmitter Empty
      TXEMPTY        : CSR_SPI_SLAVE_MODE_TXEMPTYSelect;
      --  Read-only. SPI Underrun Error
      UNRE           : CSR_SPI_SLAVE_MODE_UNRESelect;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : CSR_SPI_SLAVE_MODE_TXBUFESelect;
      --  Read-only. Reception Buffer Full
      RXBUFF         : CSR_SPI_SLAVE_MODE_RXBUFFSelect;
      --  Read-only. Non Acknowledge
      NACK           : CSR_SPI_SLAVE_MODE_NACKSelect;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Ring Indicator Input Change Flag
      RIIC           : CSR_SPI_SLAVE_MODE_RIICSelect;
      --  Read-only. Data Set Ready Input Change Flag
      DSRIC          : CSR_SPI_SLAVE_MODE_DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Flag
      DCDIC          : CSR_SPI_SLAVE_MODE_DCDICSelect;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : CSR_SPI_SLAVE_MODE_CTSICSelect;
      --  Read-only. Image of RI Input
      RI             : CSR_SPI_SLAVE_MODE_RISelect;
      --  Read-only. Image of DSR Input
      DSR            : CSR_SPI_SLAVE_MODE_DSRSelect;
      --  Read-only. Image of DCD Input
      DCD            : CSR_SPI_SLAVE_MODE_DCDSelect;
      --  Read-only. Image of CTS Input
      CTS            : CSR_SPI_SLAVE_MODE_CTSSelect;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Receiver Ready
   type CSR_USART_MODE_RXRDYSelect is
     (
      --  No complete character has been received since the last read of RHR or
      --  the receiver is disabled. If characters werebeing received when the
      --  receiver was disabled, RXRDY changes to 1 when the receiver is
      --  enabled
      CSR_USART_MODE_RXRDYSelect_0,
      --  At least one complete character has been received and RHR has not yet
      --  been read
      CSR_USART_MODE_RXRDYSelect_1)
     with Size => 1;
   for CSR_USART_MODE_RXRDYSelect use
     (CSR_USART_MODE_RXRDYSelect_0 => 0,
      CSR_USART_MODE_RXRDYSelect_1 => 1);

   --  Transmitter Ready
   type CSR_USART_MODE_TXRDYSelect is
     (
      --  A character is in the THR waiting to be transferred to the Transmit
      --  Shift Register, or an STTBRK command has been requested, or the
      --  transmitter is disabled. As soon as the transmitter is enabled, TXRDY
      --  becomes 1
      CSR_USART_MODE_TXRDYSelect_0,
      --  There is no character in the THR
      CSR_USART_MODE_TXRDYSelect_1)
     with Size => 1;
   for CSR_USART_MODE_TXRDYSelect use
     (CSR_USART_MODE_TXRDYSelect_0 => 0,
      CSR_USART_MODE_TXRDYSelect_1 => 1);

   --  Break Received/End of Break
   type CSR_USART_MODE_RXBRKSelect is
     (
      --  No Break received or End of Break detected since the last RSTSTA
      CSR_USART_MODE_RXBRKSelect_0,
      --  Break Received or End of Break detected since the last RSTSTA
      CSR_USART_MODE_RXBRKSelect_1)
     with Size => 1;
   for CSR_USART_MODE_RXBRKSelect use
     (CSR_USART_MODE_RXBRKSelect_0 => 0,
      CSR_USART_MODE_RXBRKSelect_1 => 1);

   --  Overrun Error
   type CSR_USART_MODE_OVRESelect is
     (
      --  No overrun error has occurred since since the last RSTSTA
      CSR_USART_MODE_OVRESelect_0,
      --  At least one overrun error has occurred since the last RSTSTA
      CSR_USART_MODE_OVRESelect_1)
     with Size => 1;
   for CSR_USART_MODE_OVRESelect use
     (CSR_USART_MODE_OVRESelect_0 => 0,
      CSR_USART_MODE_OVRESelect_1 => 1);

   --  Framing Error
   type CSR_USART_MODE_FRAMESelect is
     (
      --  No stop bit has been detected low since the last RSTSTA
      CSR_USART_MODE_FRAMESelect_0,
      --  At least one stop bit has been detected low since the last RSTSTA
      CSR_USART_MODE_FRAMESelect_1)
     with Size => 1;
   for CSR_USART_MODE_FRAMESelect use
     (CSR_USART_MODE_FRAMESelect_0 => 0,
      CSR_USART_MODE_FRAMESelect_1 => 1);

   --  Parity Error
   type CSR_USART_MODE_PARESelect is
     (
      --  No parity error has been detected since the last RSTSTA
      CSR_USART_MODE_PARESelect_0,
      --  At least one parity error has been detected since the last RSTSTA
      CSR_USART_MODE_PARESelect_1)
     with Size => 1;
   for CSR_USART_MODE_PARESelect use
     (CSR_USART_MODE_PARESelect_0 => 0,
      CSR_USART_MODE_PARESelect_1 => 1);

   --  Receiver Time-out
   type CSR_USART_MODE_TIMEOUTSelect is
     (
      --  There has not been a time-out since the last Start Time-out command
      --  or the Time-out Register is 0
      CSR_USART_MODE_TIMEOUTSelect_0,
      --  There has been a time-out since the last Start Time-out command
      CSR_USART_MODE_TIMEOUTSelect_1)
     with Size => 1;
   for CSR_USART_MODE_TIMEOUTSelect use
     (CSR_USART_MODE_TIMEOUTSelect_0 => 0,
      CSR_USART_MODE_TIMEOUTSelect_1 => 1);

   --  Transmitter Empty
   type CSR_USART_MODE_TXEMPTYSelect is
     (
      --  There are characters in either THR or the Transmit Shift Register, or
      --  the transmitter is disabled
      CSR_USART_MODE_TXEMPTYSelect_0,
      --  There is at least one character in either THR or the Transmit Shift
      --  Register
      CSR_USART_MODE_TXEMPTYSelect_1)
     with Size => 1;
   for CSR_USART_MODE_TXEMPTYSelect use
     (CSR_USART_MODE_TXEMPTYSelect_0 => 0,
      CSR_USART_MODE_TXEMPTYSelect_1 => 1);

   --  Max number of Repetitions Reached
   type CSR_USART_MODE_ITERSelect is
     (
      --  Maximum number of repetitions has not been reached since the last
      --  RSIT
      CSR_USART_MODE_ITERSelect_0,
      --  Maximum number of repetitions has been reached since the last RSIT
      CSR_USART_MODE_ITERSelect_1)
     with Size => 1;
   for CSR_USART_MODE_ITERSelect use
     (CSR_USART_MODE_ITERSelect_0 => 0,
      CSR_USART_MODE_ITERSelect_1 => 1);

   --  Transmission Buffer Empty
   type CSR_USART_MODE_TXBUFESelect is
     (
      --  The signal Buffer Empty from the Transmit PDC channel is inactive
      CSR_USART_MODE_TXBUFESelect_0,
      --  The signal Buffer Empty from the Transmit PDC channel is active
      CSR_USART_MODE_TXBUFESelect_1)
     with Size => 1;
   for CSR_USART_MODE_TXBUFESelect use
     (CSR_USART_MODE_TXBUFESelect_0 => 0,
      CSR_USART_MODE_TXBUFESelect_1 => 1);

   --  Reception Buffer Full
   type CSR_USART_MODE_RXBUFFSelect is
     (
      --  The signal Buffer Full from the Receive PDC channel is inactive
      CSR_USART_MODE_RXBUFFSelect_0,
      --  The signal Buffer Full from the Receive PDC channel is active
      CSR_USART_MODE_RXBUFFSelect_1)
     with Size => 1;
   for CSR_USART_MODE_RXBUFFSelect use
     (CSR_USART_MODE_RXBUFFSelect_0 => 0,
      CSR_USART_MODE_RXBUFFSelect_1 => 1);

   --  Non Acknowledge
   type CSR_USART_MODE_NACKSelect is
     (
      --  No Non Acknowledge has not been detected since the last RSTNACK
      CSR_USART_MODE_NACKSelect_0,
      --  At least one Non Acknowledge has been detected since the last RSTNACK
      CSR_USART_MODE_NACKSelect_1)
     with Size => 1;
   for CSR_USART_MODE_NACKSelect use
     (CSR_USART_MODE_NACKSelect_0 => 0,
      CSR_USART_MODE_NACKSelect_1 => 1);

   --  Ring Indicator Input Change Flag
   type CSR_USART_MODE_RIICSelect is
     (
      --  No input change has been detected on the RI pin since the last read
      --  of CSR
      CSR_USART_MODE_RIICSelect_0,
      --  At least one input change has been detected on the RI pin since the
      --  last read of CSR
      CSR_USART_MODE_RIICSelect_1)
     with Size => 1;
   for CSR_USART_MODE_RIICSelect use
     (CSR_USART_MODE_RIICSelect_0 => 0,
      CSR_USART_MODE_RIICSelect_1 => 1);

   --  Data Set Ready Input Change Flag
   type CSR_USART_MODE_DSRICSelect is
     (
      --  No input change has been detected on the DSR pin since the last read
      --  of CSR
      CSR_USART_MODE_DSRICSelect_0,
      --  At least one input change has been detected on the DSR pin since the
      --  last read of CSR
      CSR_USART_MODE_DSRICSelect_1)
     with Size => 1;
   for CSR_USART_MODE_DSRICSelect use
     (CSR_USART_MODE_DSRICSelect_0 => 0,
      CSR_USART_MODE_DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Flag
   type CSR_USART_MODE_DCDICSelect is
     (
      --  No input change has been detected on the DCD pin since the last read
      --  of CSR
      CSR_USART_MODE_DCDICSelect_0,
      --  At least one input change has been detected on the DCD pin since the
      --  last read of CSR
      CSR_USART_MODE_DCDICSelect_1)
     with Size => 1;
   for CSR_USART_MODE_DCDICSelect use
     (CSR_USART_MODE_DCDICSelect_0 => 0,
      CSR_USART_MODE_DCDICSelect_1 => 1);

   --  Clear to Send Input Change Flag
   type CSR_USART_MODE_CTSICSelect is
     (
      --  No input change has been detected on the CTS pin since the last read
      --  of CSR
      CSR_USART_MODE_CTSICSelect_0,
      --  At least one input change has been detected on the CTS pin since the
      --  last read of CSR
      CSR_USART_MODE_CTSICSelect_1)
     with Size => 1;
   for CSR_USART_MODE_CTSICSelect use
     (CSR_USART_MODE_CTSICSelect_0 => 0,
      CSR_USART_MODE_CTSICSelect_1 => 1);

   --  Image of RI Input
   type CSR_USART_MODE_RISelect is
     (
      --  RI is at 0
      CSR_USART_MODE_RISelect_0,
      --  RI is at 1
      CSR_USART_MODE_RISelect_1)
     with Size => 1;
   for CSR_USART_MODE_RISelect use
     (CSR_USART_MODE_RISelect_0 => 0,
      CSR_USART_MODE_RISelect_1 => 1);

   --  Image of DSR Input
   type CSR_USART_MODE_DSRSelect is
     (
      --  DSR is at 0
      CSR_USART_MODE_DSRSelect_0,
      --  DSR is at 1
      CSR_USART_MODE_DSRSelect_1)
     with Size => 1;
   for CSR_USART_MODE_DSRSelect use
     (CSR_USART_MODE_DSRSelect_0 => 0,
      CSR_USART_MODE_DSRSelect_1 => 1);

   --  Image of DCD Input
   type CSR_USART_MODE_DCDSelect is
     (
      --  DCD is at 0
      CSR_USART_MODE_DCDSelect_0,
      --  DCD is at 1
      CSR_USART_MODE_DCDSelect_1)
     with Size => 1;
   for CSR_USART_MODE_DCDSelect use
     (CSR_USART_MODE_DCDSelect_0 => 0,
      CSR_USART_MODE_DCDSelect_1 => 1);

   --  Image of CTS Input
   type CSR_USART_MODE_CTSSelect is
     (
      --  CTS is at 0
      CSR_USART_MODE_CTSSelect_0,
      --  CTS is at 1
      CSR_USART_MODE_CTSSelect_1)
     with Size => 1;
   for CSR_USART_MODE_CTSSelect use
     (CSR_USART_MODE_CTSSelect_0 => 0,
      CSR_USART_MODE_CTSSelect_1 => 1);

   --  Manchester Error
   type CSR_USART_MODE_MANERRSelect is
     (
      --  No Manchester error has been detected since the last RSTSTA
      CSR_USART_MODE_MANERRSelect_0,
      --  At least one Manchester error has been detected since the last RSTSTA
      CSR_USART_MODE_MANERRSelect_1)
     with Size => 1;
   for CSR_USART_MODE_MANERRSelect use
     (CSR_USART_MODE_MANERRSelect_0 => 0,
      CSR_USART_MODE_MANERRSelect_1 => 1);

   --  Channel Status Register
   type USART_CSR_USART_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : CSR_USART_MODE_RXRDYSelect;
      --  Read-only. Transmitter Ready
      TXRDY          : CSR_USART_MODE_TXRDYSelect;
      --  Read-only. Break Received/End of Break
      RXBRK          : CSR_USART_MODE_RXBRKSelect;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error
      OVRE           : CSR_USART_MODE_OVRESelect;
      --  Read-only. Framing Error
      FRAME          : CSR_USART_MODE_FRAMESelect;
      --  Read-only. Parity Error
      PARE           : CSR_USART_MODE_PARESelect;
      --  Read-only. Receiver Time-out
      TIMEOUT        : CSR_USART_MODE_TIMEOUTSelect;
      --  Read-only. Transmitter Empty
      TXEMPTY        : CSR_USART_MODE_TXEMPTYSelect;
      --  Read-only. Max number of Repetitions Reached
      ITER           : CSR_USART_MODE_ITERSelect;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : CSR_USART_MODE_TXBUFESelect;
      --  Read-only. Reception Buffer Full
      RXBUFF         : CSR_USART_MODE_RXBUFFSelect;
      --  Read-only. Non Acknowledge
      NACK           : CSR_USART_MODE_NACKSelect;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Ring Indicator Input Change Flag
      RIIC           : CSR_USART_MODE_RIICSelect;
      --  Read-only. Data Set Ready Input Change Flag
      DSRIC          : CSR_USART_MODE_DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Flag
      DCDIC          : CSR_USART_MODE_DCDICSelect;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : CSR_USART_MODE_CTSICSelect;
      --  Read-only. Image of RI Input
      RI             : CSR_USART_MODE_RISelect;
      --  Read-only. Image of DSR Input
      DSR            : CSR_USART_MODE_DSRSelect;
      --  Read-only. Image of DCD Input
      DCD            : CSR_USART_MODE_DCDSelect;
      --  Read-only. Image of CTS Input
      CTS            : CSR_USART_MODE_CTSSelect;
      --  Read-only. Manchester Error
      MANERR         : CSR_USART_MODE_MANERRSelect;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      MANERR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype USART_RHR_RXCHR_Field is HAL.UInt9;

   --  Received Sync
   type RHR_RXSYNHSelect is
     (
      --  Last character received is a Data
      RHR_RXSYNHSelect_0,
      --  Last character received is a Command
      RHR_RXSYNHSelect_1)
     with Size => 1;
   for RHR_RXSYNHSelect use
     (RHR_RXSYNHSelect_0 => 0,
      RHR_RXSYNHSelect_1 => 1);

   --  Receiver Holding Register
   type USART_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : USART_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : HAL.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : RHR_RXSYNHSelect;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_THR_TXCHR_Field is HAL.UInt9;

   --  Sync Field to be transmitted
   type THR_TXSYNHSelect is
     (
      --  The next character sent is encoded as a data. Start Frame Delimiter
      --  is DATA SYNC
      THR_TXSYNHSelect_0,
      --  The next character sent is encoded as a command. Start Frame
      --  Delimiter is COMMAND SYNC
      THR_TXSYNHSelect_1)
     with Size => 1;
   for THR_TXSYNHSelect use
     (THR_TXSYNHSelect_0 => 0,
      THR_TXSYNHSelect_1 => 1);

   --  Transmitter Holding Register
   type USART_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : USART_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  Write-only. Sync Field to be transmitted
      TXSYNH         : THR_TXSYNHSelect := SAM_SVD.USART.THR_TXSYNHSelect_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Clock Divisor
   type BRGR_CDSelect is
     (
      --  Disables the clock
      Disable,
      --  Clock Divisor Bypass
      Bypass,
      --  Baud Rate (Asynchronous Mode) = Selected Clock/(16 x CD) or (8 x CD);
      --  Baud Rate (Synchronous Mode) = Selected Clock/CD;
      BRGR_CDSelect_2)
     with Size => 16;
   for BRGR_CDSelect use
     (Disable => 0,
      Bypass => 1,
      BRGR_CDSelect_2 => 2);

   --  Fractional Part
   type BRGR_FPSelect is
     (
      --  Fractional divider is disabled
      BRGR_FPSelect_0)
     with Size => 3;
   for BRGR_FPSelect use
     (BRGR_FPSelect_0 => 0);

   --  Baud Rate Generator Register
   type USART_BRGR_Register is record
      --  Clock Divisor
      CD             : BRGR_CDSelect := SAM_SVD.USART.Disable;
      --  Fractional Part
      FP             : BRGR_FPSelect := SAM_SVD.USART.BRGR_FPSelect_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Time-out Value
   type RTOR_TOSelect is
     (
      --  Disables the RX Time-out function
      Disable)
     with Size => 17;
   for RTOR_TOSelect use
     (Disable => 0);

   --  Receiver Time-out Register
   type USART_RTOR_Register is record
      --  Time-out Value
      TO             : RTOR_TOSelect := SAM_SVD.USART.Disable;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Timeguard Value
   type TTGR_TGSelect is
     (
      --  Disables the TX Timeguard function.
      Disable)
     with Size => 8;
   for TTGR_TGSelect use
     (Disable => 0);

   --  Transmitter Timeguard Register
   type USART_TTGR_Register is record
      --  Timeguard Value
      TG            : TTGR_TGSelect := SAM_SVD.USART.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FI Over DI Ratio Value
   type FIDI_FI_DI_RATIOSelect is
     (
      --  Baud Rate = 0
      Disable,
      --  Reset value for the field
      Fidi_Fi_Di_Ratioselect_Reset)
     with Size => 11;
   for FIDI_FI_DI_RATIOSelect use
     (Disable => 0,
      Fidi_Fi_Di_Ratioselect_Reset => 372);

   --  FI DI Ratio Register
   type USART_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : FIDI_FI_DI_RATIOSelect := Fidi_Fi_Di_Ratioselect_Reset;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype USART_NER_NB_ERRORS_Field is HAL.UInt8;

   --  Number of Errors Register
   type USART_NER_Register is record
      --  Read-only. Error number during ISO7816 transfers
      NB_ERRORS     : USART_NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART_IFR_IRDA_FILTER_Field is HAL.UInt8;

   --  IrDA Filter Register
   type USART_IFR_Register is record
      --  Irda filter
      IRDA_FILTER   : USART_IFR_IRDA_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IFR_Register use record
      IRDA_FILTER   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Transmitter Preamble Length
   type MAN_TX_PLSelect is
     (
      --  The Transmitter Preamble pattern generation is disabled
      MAN_TX_PLSelect_0,
      --  Reset value for the field
      Man_Tx_Plselect_Reset)
     with Size => 4;
   for MAN_TX_PLSelect use
     (MAN_TX_PLSelect_0 => 0,
      Man_Tx_Plselect_Reset => 4);

   --  Transmitter Preamble Pattern
   type MAN_TX_PPSelect is
     (
      --  ALL_ONE
      MAN_TX_PPSelect_0,
      --  ALL_ZERO
      MAN_TX_PPSelect_1,
      --  ZERO_ONE
      MAN_TX_PPSelect_2,
      --  ONE_ZERO
      MAN_TX_PPSelect_3)
     with Size => 2;
   for MAN_TX_PPSelect use
     (MAN_TX_PPSelect_0 => 0,
      MAN_TX_PPSelect_1 => 1,
      MAN_TX_PPSelect_2 => 2,
      MAN_TX_PPSelect_3 => 3);

   --  Transmitter Manchester Polarity
   type MAN_TX_MPOLSelect is
     (
      --  Logic Zero is coded as a zero-to-one transition, Logic One is coded
      --  as a one-to-zero transition
      MAN_TX_MPOLSelect_0,
      --  Logic Zero is coded as a one-to-zero transition, Logic One is coded
      --  as a zero-to-one transition
      MAN_TX_MPOLSelect_1)
     with Size => 1;
   for MAN_TX_MPOLSelect use
     (MAN_TX_MPOLSelect_0 => 0,
      MAN_TX_MPOLSelect_1 => 1);

   --  Receiver Preamble Length
   type MAN_RX_PLSelect is
     (
      --  The receiver preamble pattern detection is disabled
      MAN_RX_PLSelect_0,
      --  Reset value for the field
      Man_Rx_Plselect_Reset)
     with Size => 4;
   for MAN_RX_PLSelect use
     (MAN_RX_PLSelect_0 => 0,
      Man_Rx_Plselect_Reset => 1);

   --  Receiver Preamble Pattern detected
   type MAN_RX_PPSelect is
     (
      --  ALL_ONE
      MAN_RX_PPSelect_0,
      --  ALL_ZERO
      MAN_RX_PPSelect_1,
      --  ZERO_ONE
      MAN_RX_PPSelect_2,
      --  ONE_ZERO
      MAN_RX_PPSelect_3)
     with Size => 2;
   for MAN_RX_PPSelect use
     (MAN_RX_PPSelect_0 => 0,
      MAN_RX_PPSelect_1 => 1,
      MAN_RX_PPSelect_2 => 2,
      MAN_RX_PPSelect_3 => 3);

   --  Receiver Manchester Polarity
   type MAN_RX_MPOLSelect is
     (
      --  Logic Zero is coded as a zero-to-one transition, Logic One is coded
      --  as a one-to-zero transition
      MAN_RX_MPOLSelect_0,
      --  Logic Zero is coded as a one-to-zero transition, Logic One is coded
      --  as a zero-to-one transition
      MAN_RX_MPOLSelect_1)
     with Size => 1;
   for MAN_RX_MPOLSelect use
     (MAN_RX_MPOLSelect_0 => 0,
      MAN_RX_MPOLSelect_1 => 1);

   --  Drift compensation
   type MAN_DRIFTSelect is
     (
      --  The USART can not recover from an important clock drift
      MAN_DRIFTSelect_0,
      --  The USART can recover from clock drift. The 16X clock mode must be
      --  enabled
      MAN_DRIFTSelect_1)
     with Size => 1;
   for MAN_DRIFTSelect use
     (MAN_DRIFTSelect_0 => 0,
      MAN_DRIFTSelect_1 => 1);

   --  Manchester Configuration Register
   type USART_MAN_Register is record
      --  Transmitter Preamble Length
      TX_PL          : MAN_TX_PLSelect := Man_Tx_Plselect_Reset;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Transmitter Preamble Pattern
      TX_PP          : MAN_TX_PPSelect := SAM_SVD.USART.MAN_TX_PPSelect_0;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Transmitter Manchester Polarity
      TX_MPOL        : MAN_TX_MPOLSelect := SAM_SVD.USART.MAN_TX_MPOLSelect_1;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Receiver Preamble Length
      RX_PL          : MAN_RX_PLSelect := Man_Rx_Plselect_Reset;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Receiver Preamble Pattern detected
      RX_PP          : MAN_RX_PPSelect := SAM_SVD.USART.MAN_RX_PPSelect_0;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Receiver Manchester Polarity
      RX_MPOL        : MAN_RX_MPOLSelect := SAM_SVD.USART.MAN_RX_MPOLSelect_1;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#1#;
      --  Drift compensation
      DRIFT          : MAN_DRIFTSelect := SAM_SVD.USART.MAN_DRIFTSelect_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MAN_Register use record
      TX_PL          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TX_PP          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TX_MPOL        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RX_PL          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RX_PP          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      RX_MPOL        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DRIFT          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  LIN Node Action
   type LINMR_NACTSelect is
     (
      --  The LIN Controller transmits the response
      Publish,
      --  The LIN Controller receives the response
      Subscribe,
      --  The LIN Controller doesn't transmit and doesn't receive the response
      Ignore)
     with Size => 2;
   for LINMR_NACTSelect use
     (Publish => 0,
      Subscribe => 1,
      Ignore => 2);

   subtype USART_LINMR_DLC_Field is HAL.UInt8;

   --  LIN Mode Register
   type USART_LINMR_Register is record
      --  LIN Node Action
      NACT           : LINMR_NACTSelect := SAM_SVD.USART.Publish;
      --  Parity Disable
      PARDIS         : Boolean := False;
      --  Checksum Disable
      CHKDIS         : Boolean := False;
      --  Checksum Type
      CHKTYP         : Boolean := False;
      --  Data Length Mode
      DLM            : Boolean := False;
      --  Frame Slot Mode Disable
      FSDIS          : Boolean := False;
      --  Wakeup Signal Type
      WKUPTYP        : Boolean := False;
      --  Data Length Control
      DLC            : USART_LINMR_DLC_Field := 16#0#;
      --  PDC Mode
      PDCM           : Boolean := False;
      --  Synchronization Disable
      SYNCDIS        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_LINMR_Register use record
      NACT           at 0 range 0 .. 1;
      PARDIS         at 0 range 2 .. 2;
      CHKDIS         at 0 range 3 .. 3;
      CHKTYP         at 0 range 4 .. 4;
      DLM            at 0 range 5 .. 5;
      FSDIS          at 0 range 6 .. 6;
      WKUPTYP        at 0 range 7 .. 7;
      DLC            at 0 range 8 .. 15;
      PDCM           at 0 range 16 .. 16;
      SYNCDIS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype USART_LINIR_IDCHR_Field is HAL.UInt8;

   --  LIN Identifier Register
   type USART_LINIR_Register is record
      --  Identifier Character
      IDCHR         : USART_LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART_LINBRR_LINCD_Field is HAL.UInt16;
   subtype USART_LINBRR_LINFP_Field is HAL.UInt3;

   --  LIN Baud Rate Register
   type USART_LINBRR_Register is record
      --  Read-only. Clock Divider after Synchronization
      LINCD          : USART_LINBRR_LINCD_Field;
      --  Read-only. Fractional Part after Synchronization
      LINFP          : USART_LINBRR_LINFP_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_LINBRR_Register use record
      LINCD          at 0 range 0 .. 15;
      LINFP          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Write Protect Enable
   type WPMR_WPENSelect is
     (
      --  Disables the Write Protect if WPKEY corresponds to 0x858365 ("USA" in
      --  ACII)
      WPMR_WPENSelect_0,
      --  Enables the Write Protect if WPKEY corresponds to 0x858365 ("USA" in
      --  ACII)
      WPMR_WPENSelect_1)
     with Size => 1;
   for WPMR_WPENSelect use
     (WPMR_WPENSelect_0 => 0,
      WPMR_WPENSelect_1 => 1);

   subtype USART_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type USART_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : WPMR_WPENSelect := SAM_SVD.USART.WPMR_WPENSelect_0;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : USART_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   --  Write Protect Violation Status
   type WPSR_WPVSelect is
     (
      --  No Write Protect Violation has occurred since the last read of the
      --  WPSR register
      WPSR_WPVSelect_0,
      --  A Write Protect Violation has occurred since the last read of the
      --  WPSR register. If this violation is an unauthorized attempt to write
      --  a protected register, the associated violation is reported into field
      --  WPVSRC
      WPSR_WPVSelect_1)
     with Size => 1;
   for WPSR_WPVSelect use
     (WPSR_WPVSelect_0 => 0,
      WPSR_WPVSelect_1 => 1);

   subtype USART_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protect Status Register
   type USART_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPV            : WPSR_WPVSelect;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : USART_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_WPSR_Register use record
      WPV            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART_VERSION_VERSION_Field is HAL.UInt12;
   subtype USART_VERSION_MFN_Field is HAL.UInt4;

   --  Version Register
   type USART_VERSION_Register is record
      --  Read-only. Version
      VERSION        : USART_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. MFN
      MFN            : USART_VERSION_MFN_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USART0_Disc is
     (
      Lin_Mode,
      Spi_Master_Mode,
      Usart_Mode,
      Spi_Mode,
      Spi_Slave_Mode);

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   type USART_Peripheral
     (Discriminent : USART0_Disc := Lin_Mode)
   is record
      --  Receiver Holding Register
      RHR                : aliased USART_RHR_Register;
      --  Transmitter Holding Register
      THR                : aliased USART_THR_Register;
      --  Baud Rate Generator Register
      BRGR               : aliased USART_BRGR_Register;
      --  Receiver Time-out Register
      RTOR               : aliased USART_RTOR_Register;
      --  Transmitter Timeguard Register
      TTGR               : aliased USART_TTGR_Register;
      --  FI DI Ratio Register
      FIDI               : aliased USART_FIDI_Register;
      --  Number of Errors Register
      NER                : aliased USART_NER_Register;
      --  IrDA Filter Register
      IFR                : aliased USART_IFR_Register;
      --  Manchester Configuration Register
      MAN                : aliased USART_MAN_Register;
      --  LIN Mode Register
      LINMR              : aliased USART_LINMR_Register;
      --  LIN Identifier Register
      LINIR              : aliased USART_LINIR_Register;
      --  LIN Baud Rate Register
      LINBRR             : aliased USART_LINBRR_Register;
      --  Write Protect Mode Register
      WPMR               : aliased USART_WPMR_Register;
      --  Write Protect Status Register
      WPSR               : aliased USART_WPSR_Register;
      --  Version Register
      VERSION            : aliased USART_VERSION_Register;
      case Discriminent is
         when Lin_Mode =>
            --  Control Register
            CR_LIN_MODE : aliased USART_CR_LIN_MODE_Register;
            --  Interrupt Enable Register
            IER_LIN_MODE : aliased USART_IER_LIN_MODE_Register;
            --  Interrupt Disable Register
            IDR_LIN_MODE : aliased USART_IDR_LIN_MODE_Register;
            --  Interrupt Mask Register
            IMR_LIN_MODE : aliased USART_IMR_LIN_MODE_Register;
            --  Channel Status Register
            CSR_LIN_MODE : aliased USART_CSR_LIN_MODE_Register;
         when Spi_Master_Mode =>
            --  Control Register
            CR_SPI_MASTER_MODE : aliased USART_CR_SPI_MASTER_MODE_Register;
         when Usart_Mode =>
            --  Control Register
            CR_USART_MODE : aliased USART_CR_USART_MODE_Register;
            --  Mode Register
            MR_USART_MODE : aliased USART_MR_USART_MODE_Register;
            --  Interrupt Enable Register
            IER_USART_MODE : aliased USART_IER_USART_MODE_Register;
            --  Interrupt Disable Register
            IDR_USART_MODE : aliased USART_IDR_USART_MODE_Register;
            --  Interrupt Mask Register
            IMR_USART_MODE : aliased USART_IMR_USART_MODE_Register;
            --  Channel Status Register
            CSR_USART_MODE : aliased USART_CSR_USART_MODE_Register;
         when Spi_Mode =>
            --  Mode Register
            MR_SPI_MODE : aliased USART_MR_SPI_MODE_Register;
         when Spi_Slave_Mode =>
            --  Interrupt Enable Register
            IER_SPI_SLAVE_MODE : aliased USART_IER_SPI_SLAVE_MODE_Register;
            --  Interrupt Disable Register
            IDR_SPI_SLAVE_MODE : aliased USART_IDR_SPI_SLAVE_MODE_Register;
            --  Interrupt Mask Register
            IMR_SPI_SLAVE_MODE : aliased USART_IMR_SPI_SLAVE_MODE_Register;
            --  Channel Status Register
            CSR_SPI_SLAVE_MODE : aliased USART_CSR_SPI_SLAVE_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR                at 16#18# range 0 .. 31;
      THR                at 16#1C# range 0 .. 31;
      BRGR               at 16#20# range 0 .. 31;
      RTOR               at 16#24# range 0 .. 31;
      TTGR               at 16#28# range 0 .. 31;
      FIDI               at 16#40# range 0 .. 31;
      NER                at 16#44# range 0 .. 31;
      IFR                at 16#4C# range 0 .. 31;
      MAN                at 16#50# range 0 .. 31;
      LINMR              at 16#54# range 0 .. 31;
      LINIR              at 16#58# range 0 .. 31;
      LINBRR             at 16#5C# range 0 .. 31;
      WPMR               at 16#E4# range 0 .. 31;
      WPSR               at 16#E8# range 0 .. 31;
      VERSION            at 16#FC# range 0 .. 31;
      CR_LIN_MODE        at 16#0# range 0 .. 31;
      IER_LIN_MODE       at 16#8# range 0 .. 31;
      IDR_LIN_MODE       at 16#C# range 0 .. 31;
      IMR_LIN_MODE       at 16#10# range 0 .. 31;
      CSR_LIN_MODE       at 16#14# range 0 .. 31;
      CR_SPI_MASTER_MODE at 16#0# range 0 .. 31;
      CR_USART_MODE      at 16#0# range 0 .. 31;
      MR_USART_MODE      at 16#4# range 0 .. 31;
      IER_USART_MODE     at 16#8# range 0 .. 31;
      IDR_USART_MODE     at 16#C# range 0 .. 31;
      IMR_USART_MODE     at 16#10# range 0 .. 31;
      CSR_USART_MODE     at 16#14# range 0 .. 31;
      MR_SPI_MODE        at 16#4# range 0 .. 31;
      IER_SPI_SLAVE_MODE at 16#8# range 0 .. 31;
      IDR_SPI_SLAVE_MODE at 16#C# range 0 .. 31;
      IMR_SPI_SLAVE_MODE at 16#10# range 0 .. 31;
      CSR_SPI_SLAVE_MODE at 16#14# range 0 .. 31;
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40024000#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 1
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 2
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#4002C000#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 3
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40030000#);

end SAM_SVD.USART;
