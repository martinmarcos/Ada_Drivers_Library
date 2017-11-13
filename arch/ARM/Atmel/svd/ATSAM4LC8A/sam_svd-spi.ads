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

--  This spec has been automatically generated from ATSAM4LC8A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SPI Enable
   type CR_SPIENSelect is
     (
      --  No effect.
      CR_SPIENSelect_0,
      --  Enables the SPI to transfer and receive data.
      CR_SPIENSelect_1)
     with Size => 1;
   for CR_SPIENSelect use
     (CR_SPIENSelect_0 => 0,
      CR_SPIENSelect_1 => 1);

   --  SPI Disable
   type CR_SPIDISSelect is
     (
      --  No effect.
      CR_SPIDISSelect_0,
      --  Disables the SPI.All pins are set in input mode and no data is
      --  received or transmitted.If a transfer is in progress, the transfer is
      --  finished before the SPI is disabled.If both SPIEN and SPIDIS are
      --  equal to one when the control register is written, the SPI is
      --  disabled.
      CR_SPIDISSelect_1)
     with Size => 1;
   for CR_SPIDISSelect use
     (CR_SPIDISSelect_0 => 0,
      CR_SPIDISSelect_1 => 1);

   --  SPI Software Reset
   type CR_SWRSTSelect is
     (
      --  No effect.
      CR_SWRSTSelect_0,
      --  Reset the SPI. A software-triggered hardware reset of the SPI
      --  interface is performed.
      CR_SWRSTSelect_1)
     with Size => 1;
   for CR_SWRSTSelect use
     (CR_SWRSTSelect_0 => 0,
      CR_SWRSTSelect_1 => 1);

   --  Last Transfer
   type CR_LASTXFERSelect is
     (
      --  No effect.
      CR_LASTXFERSelect_0,
      --  The current NPCS will be deasserted after the character written in TD
      --  has been transferred. When CSAAT is set, thisallows to close the
      --  communication with the current serial peripheral by raising the
      --  corresponding NPCS line as soon as TDtransfer has completed.
      CR_LASTXFERSelect_1)
     with Size => 1;
   for CR_LASTXFERSelect use
     (CR_LASTXFERSelect_0 => 0,
      CR_LASTXFERSelect_1 => 1);

   --  Control Register
   type SPI_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : CR_SPIENSelect := SAM_SVD.SPI.CR_SPIENSelect_0;
      --  Write-only. SPI Disable
      SPIDIS         : CR_SPIDISSelect := SAM_SVD.SPI.CR_SPIDISSelect_0;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : CR_SWRSTSelect := SAM_SVD.SPI.CR_SWRSTSelect_0;
      --  Write-only. Flush FIFO command
      FLUSHFIFO      : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : CR_LASTXFERSelect := SAM_SVD.SPI.CR_LASTXFERSelect_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CR_Register use record
      SPIEN          at 0 range 0 .. 0;
      SPIDIS         at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      FLUSHFIFO      at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Master/Slave Mode
   type MR_MSTRSelect is
     (
      --  SPI is in Slave mode.
      MR_MSTRSelect_0,
      --  SPI is in Master mode.
      MR_MSTRSelect_1)
     with Size => 1;
   for MR_MSTRSelect use
     (MR_MSTRSelect_0 => 0,
      MR_MSTRSelect_1 => 1);

   --  Peripheral Select
   type MR_PSSelect is
     (
      --  Fixed Peripheral Select.
      MR_PSSelect_0,
      --  Variable Peripheral Select.
      MR_PSSelect_1)
     with Size => 1;
   for MR_PSSelect use
     (MR_PSSelect_0 => 0,
      MR_PSSelect_1 => 1);

   --  Chip Select Decode
   type MR_PCSDECSelect is
     (
      --  The chip selects are directly connected to a peripheral device.
      MR_PCSDECSelect_0,
      --  The four chip select lines are connected to a 4- to 16-bit
      --  decoder.When PCSDEC equals one, up to 15 Chip Select signals can be
      --  generated with the four lines using an external 4- to 16-bitdecoder.
      --  The Chip Select Registers define the characteristics of the 16 chip
      --  selects according to the following rules:CSR0 defines peripheral chip
      --  select signals 0 to 3.CSR1 defines peripheral chip select signals 4
      --  to 7.CSR2 defines peripheral chip select signals 8 to 11.CSR3 defines
      --  peripheral chip select signals 12 to 15.
      MR_PCSDECSelect_1)
     with Size => 1;
   for MR_PCSDECSelect use
     (MR_PCSDECSelect_0 => 0,
      MR_PCSDECSelect_1 => 1);

   --  Mode Fault Detection
   type MR_MODFDISSelect is
     (
      --  Mode fault detection is enabled.
      MR_MODFDISSelect_0,
      --  Mode fault detection is disabled.
      MR_MODFDISSelect_1)
     with Size => 1;
   for MR_MODFDISSelect use
     (MR_MODFDISSelect_0 => 0,
      MR_MODFDISSelect_1 => 1);

   --  Local Loopback Enable
   type MR_LLBSelect is
     (
      --  Local loopback path disabled.
      MR_LLBSelect_0,
      --  Local loopback path enabled.LLB controls the local loopback on the
      --  data serializer for testing in Master Mode only.
      MR_LLBSelect_1)
     with Size => 1;
   for MR_LLBSelect use
     (MR_LLBSelect_0 => 0,
      MR_LLBSelect_1 => 1);

   subtype SPI_MR_PCS_Field is HAL.UInt4;
   subtype SPI_MR_DLYBCS_Field is HAL.UInt8;

   --  Mode Register
   type SPI_MR_Register is record
      --  Master/Slave Mode
      MSTR           : MR_MSTRSelect := SAM_SVD.SPI.MR_MSTRSelect_0;
      --  Peripheral Select
      PS             : MR_PSSelect := SAM_SVD.SPI.MR_PSSelect_0;
      --  Chip Select Decode
      PCSDEC         : MR_PCSDECSelect := SAM_SVD.SPI.MR_PCSDECSelect_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Mode Fault Detection
      MODFDIS        : MR_MODFDISSelect := SAM_SVD.SPI.MR_MODFDISSelect_0;
      --  wait data read before transfer
      WDRBT          : Boolean := False;
      --  FIFO in Reception Enable
      RXFIFOEN       : Boolean := False;
      --  Local Loopback Enable
      LLB            : MR_LLBSelect := SAM_SVD.SPI.MR_LLBSelect_0;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Peripheral Chip Select
      PCS            : SPI_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : SPI_MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      RXFIFOEN       at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   subtype SPI_RDR_RD_Field is HAL.UInt16;
   subtype SPI_RDR_PCS_Field is HAL.UInt4;

   --  Receive Data Register
   type SPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : SPI_RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : SPI_RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SPI_TDR_TD_Field is HAL.UInt16;
   subtype SPI_TDR_PCS_Field is HAL.UInt4;

   --  Last Transfer
   type TDR_LASTXFERSelect is
     (
      --  No effect.
      TDR_LASTXFERSelect_0,
      --  The current NPCS will be deasserted after the character written in TD
      --  has been transferred. When CSAAT is set, thisallows to close the
      --  communication with the current serial peripheral by raising the
      --  corresponding NPCS line as soon as TDtransfer has completed.
      TDR_LASTXFERSelect_1)
     with Size => 1;
   for TDR_LASTXFERSelect use
     (TDR_LASTXFERSelect_0 => 0,
      TDR_LASTXFERSelect_1 => 1);

   --  Transmit Data Register
   type SPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : SPI_TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : SPI_TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : TDR_LASTXFERSelect := SAM_SVD.SPI.TDR_LASTXFERSelect_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_TDR_Register use record
      TD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Receive Data Register Full
   type SR_RDRFSelect is
     (
      --  No data has been received since the last read of RDR
      SR_RDRFSelect_0,
      --  Data has been received and the received data has been transferred
      --  from the serializer to RDR since the last readof RDR.
      SR_RDRFSelect_1)
     with Size => 1;
   for SR_RDRFSelect use
     (SR_RDRFSelect_0 => 0,
      SR_RDRFSelect_1 => 1);

   --  Transmit Data Register Empty
   type SR_TDRESelect is
     (
      --  Data has been written to TDR and not yet transferred to the
      --  serializer.
      SR_TDRESelect_0,
      --  The last data written in the Transmit Data Register has been
      --  transferred to the serializer.TDRE equals zero when the SPI is
      --  disabled or at reset. The SPI enable command sets this bit to one.
      SR_TDRESelect_1)
     with Size => 1;
   for SR_TDRESelect use
     (SR_TDRESelect_0 => 0,
      SR_TDRESelect_1 => 1);

   --  Mode Fault Error
   type SR_MODFSelect is
     (
      --  No Mode Fault has been detected since the last read of SR.
      SR_MODFSelect_0,
      --  A Mode Fault occurred since the last read of the SR.
      SR_MODFSelect_1)
     with Size => 1;
   for SR_MODFSelect use
     (SR_MODFSelect_0 => 0,
      SR_MODFSelect_1 => 1);

   --  Overrun Error Status
   type SR_OVRESSelect is
     (
      --  No overrun has been detected since the last read of SR.
      SR_OVRESSelect_0,
      --  An overrun has occurred since the last read of SR.
      SR_OVRESSelect_1)
     with Size => 1;
   for SR_OVRESSelect use
     (SR_OVRESSelect_0 => 0,
      SR_OVRESSelect_1 => 1);

   --  End of RX buffer
   type SR_ENDRXSelect is
     (
      --  The Receive Counter Register has not reached 0 since the last write
      --  in RCR or RNCR.
      SR_ENDRXSelect_0,
      --  The Receive Counter Register has reached 0 since the last write in
      --  RCR or RNCR.
      SR_ENDRXSelect_1)
     with Size => 1;
   for SR_ENDRXSelect use
     (SR_ENDRXSelect_0 => 0,
      SR_ENDRXSelect_1 => 1);

   --  End of TX buffer
   type SR_ENDTXSelect is
     (
      --  The Transmit Counter Register has not reached 0 since the last write
      --  in TCR or TNCR.
      SR_ENDTXSelect_0,
      --  The Transmit Counter Register has reached 0 since the last write in
      --  TCR or TNCR.
      SR_ENDTXSelect_1)
     with Size => 1;
   for SR_ENDTXSelect use
     (SR_ENDTXSelect_0 => 0,
      SR_ENDTXSelect_1 => 1);

   --  RX Buffer Full
   type SR_RXBUFFSelect is
     (
      --  RCR or RNCR has a value other than 0.
      SR_RXBUFFSelect_0,
      --  Both RCR and RNCR has a value of 0.
      SR_RXBUFFSelect_1)
     with Size => 1;
   for SR_RXBUFFSelect use
     (SR_RXBUFFSelect_0 => 0,
      SR_RXBUFFSelect_1 => 1);

   --  TX Buffer Empty
   type SR_TXBUFESelect is
     (
      --  TCR or TNCR has a value other than 0.
      SR_TXBUFESelect_0,
      --  Both TCR and TNCR has a value of 0.
      SR_TXBUFESelect_1)
     with Size => 1;
   for SR_TXBUFESelect use
     (SR_TXBUFESelect_0 => 0,
      SR_TXBUFESelect_1 => 1);

   --  NSS Rising
   type SR_NSSRSelect is
     (
      --  No rising edge detected on NSS pin since last read.
      SR_NSSRSelect_0,
      --  A rising edge occurred on NSS pin since last read.
      SR_NSSRSelect_1)
     with Size => 1;
   for SR_NSSRSelect use
     (SR_NSSRSelect_0 => 0,
      SR_NSSRSelect_1 => 1);

   --  Transmission Registers Empty
   type SR_TXEMPTYSelect is
     (
      --  As soon as data is written in TDR.
      SR_TXEMPTYSelect_0,
      --  TDR and internal shifter are empty. If a transfer delay has been
      --  defined, TXEMPTY is set after the completion ofsuch delay.
      SR_TXEMPTYSelect_1)
     with Size => 1;
   for SR_TXEMPTYSelect use
     (SR_TXEMPTYSelect_0 => 0,
      SR_TXEMPTYSelect_1 => 1);

   --  SPI Enable Status
   type SR_SPIENSSelect is
     (
      --  SPI is disabled.
      SR_SPIENSSelect_0,
      --  SPI is enabled.
      SR_SPIENSSelect_1)
     with Size => 1;
   for SR_SPIENSSelect use
     (SR_SPIENSSelect_0 => 0,
      SR_SPIENSSelect_1 => 1);

   --  Status Register
   type SPI_SR_Register is record
      --  Read-only. Receive Data Register Full
      RDRF           : SR_RDRFSelect;
      --  Read-only. Transmit Data Register Empty
      TDRE           : SR_TDRESelect;
      --  Read-only. Mode Fault Error
      MODF           : SR_MODFSelect;
      --  Read-only. Overrun Error Status
      OVRES          : SR_OVRESSelect;
      --  Read-only. End of RX buffer
      ENDRX          : SR_ENDRXSelect;
      --  Read-only. End of TX buffer
      ENDTX          : SR_ENDTXSelect;
      --  Read-only. RX Buffer Full
      RXBUFF         : SR_RXBUFFSelect;
      --  Read-only. TX Buffer Empty
      TXBUFE         : SR_TXBUFESelect;
      --  Read-only. NSS Rising
      NSSR           : SR_NSSRSelect;
      --  Read-only. Transmission Registers Empty
      TXEMPTY        : SR_TXEMPTYSelect;
      --  Read-only. Underrun Error Status (Slave Mode Only)
      UNDES          : Boolean;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. SPI Enable Status
      SPIENS         : SR_SPIENSSelect;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Receive Data Register Full Interrupt Enable
   type IER_RDRFSelect is
     (
      --  No effect.
      IER_RDRFSelect_0,
      --  Enables the corresponding interrupt.
      IER_RDRFSelect_1)
     with Size => 1;
   for IER_RDRFSelect use
     (IER_RDRFSelect_0 => 0,
      IER_RDRFSelect_1 => 1);

   --  Transmit Data Register Empty Interrupt Enable
   type IER_TDRESelect is
     (
      --  No effect.
      IER_TDRESelect_0,
      --  Enables the corresponding interrupt.
      IER_TDRESelect_1)
     with Size => 1;
   for IER_TDRESelect use
     (IER_TDRESelect_0 => 0,
      IER_TDRESelect_1 => 1);

   --  Mode Fault Error Interrupt Enable
   type IER_MODFSelect is
     (
      --  No effect.
      IER_MODFSelect_0,
      --  Enables the corresponding interrupt.
      IER_MODFSelect_1)
     with Size => 1;
   for IER_MODFSelect use
     (IER_MODFSelect_0 => 0,
      IER_MODFSelect_1 => 1);

   --  Overrun Error Interrupt Enable
   type IER_OVRESSelect is
     (
      --  No effect.
      IER_OVRESSelect_0,
      --  Enables the corresponding interrupt.
      IER_OVRESSelect_1)
     with Size => 1;
   for IER_OVRESSelect use
     (IER_OVRESSelect_0 => 0,
      IER_OVRESSelect_1 => 1);

   --  End of Receive Buffer Interrupt Enable
   type IER_ENDRXSelect is
     (
      --  No effect.
      IER_ENDRXSelect_0,
      --  Enables the corresponding interrupt.
      IER_ENDRXSelect_1)
     with Size => 1;
   for IER_ENDRXSelect use
     (IER_ENDRXSelect_0 => 0,
      IER_ENDRXSelect_1 => 1);

   --  End of Transmit Buffer Interrupt Enable
   type IER_ENDTXSelect is
     (
      --  No effect.
      IER_ENDTXSelect_0,
      --  Enables the corresponding interrupt.
      IER_ENDTXSelect_1)
     with Size => 1;
   for IER_ENDTXSelect use
     (IER_ENDTXSelect_0 => 0,
      IER_ENDTXSelect_1 => 1);

   --  Receive Buffer Full Interrupt Enable
   type IER_RXBUFFSelect is
     (
      --  No effect.
      IER_RXBUFFSelect_0,
      --  Enables the corresponding interrupt.
      IER_RXBUFFSelect_1)
     with Size => 1;
   for IER_RXBUFFSelect use
     (IER_RXBUFFSelect_0 => 0,
      IER_RXBUFFSelect_1 => 1);

   --  Transmit Buffer Empty Interrupt Enable
   type IER_TXBUFESelect is
     (
      --  No effect.
      IER_TXBUFESelect_0,
      --  Enables the corresponding interrupt.
      IER_TXBUFESelect_1)
     with Size => 1;
   for IER_TXBUFESelect use
     (IER_TXBUFESelect_0 => 0,
      IER_TXBUFESelect_1 => 1);

   --  NSS Rising Interrupt Enable
   type IER_NSSRSelect is
     (
      --  No effect.
      IER_NSSRSelect_0,
      --  Enables the corresponding interrupt.
      IER_NSSRSelect_1)
     with Size => 1;
   for IER_NSSRSelect use
     (IER_NSSRSelect_0 => 0,
      IER_NSSRSelect_1 => 1);

   --  Transmission Registers Empty Enable
   type IER_TXEMPTYSelect is
     (
      --  No effect.
      IER_TXEMPTYSelect_0,
      --  Enables the corresponding interrupt.
      IER_TXEMPTYSelect_1)
     with Size => 1;
   for IER_TXEMPTYSelect use
     (IER_TXEMPTYSelect_0 => 0,
      IER_TXEMPTYSelect_1 => 1);

   --  Interrupt Enable Register
   type SPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : IER_RDRFSelect := SAM_SVD.SPI.IER_RDRFSelect_0;
      --  Write-only. Transmit Data Register Empty Interrupt Enable
      TDRE           : IER_TDRESelect := SAM_SVD.SPI.IER_TDRESelect_0;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : IER_MODFSelect := SAM_SVD.SPI.IER_MODFSelect_0;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : IER_OVRESSelect := SAM_SVD.SPI.IER_OVRESSelect_0;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : IER_ENDRXSelect := SAM_SVD.SPI.IER_ENDRXSelect_0;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : IER_ENDTXSelect := SAM_SVD.SPI.IER_ENDTXSelect_0;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : IER_RXBUFFSelect := SAM_SVD.SPI.IER_RXBUFFSelect_0;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : IER_TXBUFESelect := SAM_SVD.SPI.IER_TXBUFESelect_0;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : IER_NSSRSelect := SAM_SVD.SPI.IER_NSSRSelect_0;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : IER_TXEMPTYSelect := SAM_SVD.SPI.IER_TXEMPTYSelect_0;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Receive Data Register Full Interrupt Disable
   type IDR_RDRFSelect is
     (
      --  No effect.
      IDR_RDRFSelect_0,
      --  Disables the corresponding interrupt.
      IDR_RDRFSelect_1)
     with Size => 1;
   for IDR_RDRFSelect use
     (IDR_RDRFSelect_0 => 0,
      IDR_RDRFSelect_1 => 1);

   --  Transmit Data Register Empty Interrupt Disable
   type IDR_TDRESelect is
     (
      --  No effect.
      IDR_TDRESelect_0,
      --  Disables the corresponding interrupt.
      IDR_TDRESelect_1)
     with Size => 1;
   for IDR_TDRESelect use
     (IDR_TDRESelect_0 => 0,
      IDR_TDRESelect_1 => 1);

   --  Mode Fault Error Interrupt Disable
   type IDR_MODFSelect is
     (
      --  No effect.
      IDR_MODFSelect_0,
      --  Disables the corresponding interrupt.
      IDR_MODFSelect_1)
     with Size => 1;
   for IDR_MODFSelect use
     (IDR_MODFSelect_0 => 0,
      IDR_MODFSelect_1 => 1);

   --  Overrun Error Interrupt Disable
   type IDR_OVRESSelect is
     (
      --  No effect.
      IDR_OVRESSelect_0,
      --  Disables the corresponding interrupt.
      IDR_OVRESSelect_1)
     with Size => 1;
   for IDR_OVRESSelect use
     (IDR_OVRESSelect_0 => 0,
      IDR_OVRESSelect_1 => 1);

   --  End of Receive Buffer Interrupt Disable
   type IDR_ENDRXSelect is
     (
      --  No effect.
      IDR_ENDRXSelect_0,
      --  Disables the corresponding interrupt.
      IDR_ENDRXSelect_1)
     with Size => 1;
   for IDR_ENDRXSelect use
     (IDR_ENDRXSelect_0 => 0,
      IDR_ENDRXSelect_1 => 1);

   --  End of Transmit Buffer Interrupt Disable
   type IDR_ENDTXSelect is
     (
      --  No effect.
      IDR_ENDTXSelect_0,
      --  Disables the corresponding interrupt.
      IDR_ENDTXSelect_1)
     with Size => 1;
   for IDR_ENDTXSelect use
     (IDR_ENDTXSelect_0 => 0,
      IDR_ENDTXSelect_1 => 1);

   --  Receive Buffer Full Interrupt Disable
   type IDR_RXBUFFSelect is
     (
      --  No effect.
      IDR_RXBUFFSelect_0,
      --  Disables the corresponding interrupt.
      IDR_RXBUFFSelect_1)
     with Size => 1;
   for IDR_RXBUFFSelect use
     (IDR_RXBUFFSelect_0 => 0,
      IDR_RXBUFFSelect_1 => 1);

   --  Transmit Buffer Empty Interrupt Disable
   type IDR_TXBUFESelect is
     (
      --  No effect.
      IDR_TXBUFESelect_0,
      --  Disables the corresponding interrupt.
      IDR_TXBUFESelect_1)
     with Size => 1;
   for IDR_TXBUFESelect use
     (IDR_TXBUFESelect_0 => 0,
      IDR_TXBUFESelect_1 => 1);

   --  NSS Rising Interrupt Disable
   type IDR_NSSRSelect is
     (
      --  No effect.
      IDR_NSSRSelect_0,
      --  Disables the corresponding interrupt.
      IDR_NSSRSelect_1)
     with Size => 1;
   for IDR_NSSRSelect use
     (IDR_NSSRSelect_0 => 0,
      IDR_NSSRSelect_1 => 1);

   --  Transmission Registers Empty Disable
   type IDR_TXEMPTYSelect is
     (
      --  No effect.
      IDR_TXEMPTYSelect_0,
      --  Disables the corresponding interrupt.
      IDR_TXEMPTYSelect_1)
     with Size => 1;
   for IDR_TXEMPTYSelect use
     (IDR_TXEMPTYSelect_0 => 0,
      IDR_TXEMPTYSelect_1 => 1);

   --  Interrupt Disable Register
   type SPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : IDR_RDRFSelect := SAM_SVD.SPI.IDR_RDRFSelect_0;
      --  Write-only. Transmit Data Register Empty Interrupt Disable
      TDRE           : IDR_TDRESelect := SAM_SVD.SPI.IDR_TDRESelect_0;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : IDR_MODFSelect := SAM_SVD.SPI.IDR_MODFSelect_0;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : IDR_OVRESSelect := SAM_SVD.SPI.IDR_OVRESSelect_0;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : IDR_ENDRXSelect := SAM_SVD.SPI.IDR_ENDRXSelect_0;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : IDR_ENDTXSelect := SAM_SVD.SPI.IDR_ENDTXSelect_0;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : IDR_RXBUFFSelect := SAM_SVD.SPI.IDR_RXBUFFSelect_0;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : IDR_TXBUFESelect := SAM_SVD.SPI.IDR_TXBUFESelect_0;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : IDR_NSSRSelect := SAM_SVD.SPI.IDR_NSSRSelect_0;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : IDR_TXEMPTYSelect := SAM_SVD.SPI.IDR_TXEMPTYSelect_0;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Receive Data Register Full Interrupt Mask
   type IMR_RDRFSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_RDRFSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_RDRFSelect_1)
     with Size => 1;
   for IMR_RDRFSelect use
     (IMR_RDRFSelect_0 => 0,
      IMR_RDRFSelect_1 => 1);

   --  Transmit Data Register Empty Interrupt Mask
   type IMR_TDRESelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_TDRESelect_0,
      --  The corresponding interrupt is enabled.
      IMR_TDRESelect_1)
     with Size => 1;
   for IMR_TDRESelect use
     (IMR_TDRESelect_0 => 0,
      IMR_TDRESelect_1 => 1);

   --  Mode Fault Error Interrupt Mask
   type IMR_MODFSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_MODFSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_MODFSelect_1)
     with Size => 1;
   for IMR_MODFSelect use
     (IMR_MODFSelect_0 => 0,
      IMR_MODFSelect_1 => 1);

   --  Overrun Error Interrupt Mask
   type IMR_OVRESSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_OVRESSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_OVRESSelect_1)
     with Size => 1;
   for IMR_OVRESSelect use
     (IMR_OVRESSelect_0 => 0,
      IMR_OVRESSelect_1 => 1);

   --  End of Receive Buffer Interrupt Mask
   type IMR_ENDRXSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_ENDRXSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_ENDRXSelect_1)
     with Size => 1;
   for IMR_ENDRXSelect use
     (IMR_ENDRXSelect_0 => 0,
      IMR_ENDRXSelect_1 => 1);

   --  End of Transmit Buffer Interrupt Mask
   type IMR_ENDTXSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_ENDTXSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_ENDTXSelect_1)
     with Size => 1;
   for IMR_ENDTXSelect use
     (IMR_ENDTXSelect_0 => 0,
      IMR_ENDTXSelect_1 => 1);

   --  Receive Buffer Full Interrupt Mask
   type IMR_RXBUFFSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_RXBUFFSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_RXBUFFSelect_1)
     with Size => 1;
   for IMR_RXBUFFSelect use
     (IMR_RXBUFFSelect_0 => 0,
      IMR_RXBUFFSelect_1 => 1);

   --  Transmit Buffer Empty Interrupt Mask
   type IMR_TXBUFESelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_TXBUFESelect_0,
      --  The corresponding interrupt is enabled.
      IMR_TXBUFESelect_1)
     with Size => 1;
   for IMR_TXBUFESelect use
     (IMR_TXBUFESelect_0 => 0,
      IMR_TXBUFESelect_1 => 1);

   --  NSS Rising Interrupt Mask
   type IMR_NSSRSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_NSSRSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_NSSRSelect_1)
     with Size => 1;
   for IMR_NSSRSelect use
     (IMR_NSSRSelect_0 => 0,
      IMR_NSSRSelect_1 => 1);

   --  Transmission Registers Empty Mask
   type IMR_TXEMPTYSelect is
     (
      --  The corresponding interrupt is not enabled.
      IMR_TXEMPTYSelect_0,
      --  The corresponding interrupt is enabled.
      IMR_TXEMPTYSelect_1)
     with Size => 1;
   for IMR_TXEMPTYSelect use
     (IMR_TXEMPTYSelect_0 => 0,
      IMR_TXEMPTYSelect_1 => 1);

   --  Interrupt Mask Register
   type SPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : IMR_RDRFSelect;
      --  Read-only. Transmit Data Register Empty Interrupt Mask
      TDRE           : IMR_TDRESelect;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : IMR_MODFSelect;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : IMR_OVRESSelect;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : IMR_ENDRXSelect;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : IMR_ENDTXSelect;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : IMR_RXBUFFSelect;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : IMR_TXBUFESelect;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : IMR_NSSRSelect;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : IMR_TXEMPTYSelect;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : Boolean;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clock Polarity
   type CSR_CPOLSelect is
     (
      --  The inactive state value of SPCK is logic level zero.
      CSR_CPOLSelect_0,
      --  The inactive state value of SPCK is logic level one.CPOL is used to
      --  determine the inactive state value of the serial clock (SPCK). It is
      --  used with NCPHA to produce therequired clock/data relationship
      --  between master and slave devices.
      CSR_CPOLSelect_1)
     with Size => 1;
   for CSR_CPOLSelect use
     (CSR_CPOLSelect_0 => 0,
      CSR_CPOLSelect_1 => 1);

   --  Clock Phase
   type CSR_NCPHASelect is
     (
      --  Data is changed on the leading edge of SPCK and captured on the
      --  following edge of SPCK.
      CSR_NCPHASelect_0,
      --  Data is captured on the leading edge of SPCK and changed on the
      --  following edge of SPCK.NCPHA determines which edge of SPCK causes
      --  data to change and which edge causes data to be captured. NCPHA
      --  isused with CPOL to produce the required clock/data relationship
      --  between master and slave devices.
      CSR_NCPHASelect_1)
     with Size => 1;
   for CSR_NCPHASelect use
     (CSR_NCPHASelect_0 => 0,
      CSR_NCPHASelect_1 => 1);

   --  Chip Select Active After Transfer
   type CSR_CSAATSelect is
     (
      --  The Peripheral Chip Select Line rises as soon as the last transfer is
      --  achieved.
      CSR_CSAATSelect_0,
      --  The Peripheral Chip Select does not rise after the last transfer is
      --  achieved. It remains active until a new transfer isrequested on a
      --  different chip select.
      CSR_CSAATSelect_1)
     with Size => 1;
   for CSR_CSAATSelect use
     (CSR_CSAATSelect_0 => 0,
      CSR_CSAATSelect_1 => 1);

   --  Bits Per Transfer
   type CSR_BITSSelect is
     (
      --  8 bits per transfer
      CSR_BITSSelect_8_Bpt,
      --  9 bits per transfer
      CSR_BITSSelect_9_Bpt,
      --  10 bits per transfer
      CSR_BITSSelect_10_Bpt,
      --  11 bits per transfer
      CSR_BITSSelect_11_Bpt,
      --  12 bits per transfer
      CSR_BITSSelect_12_Bpt,
      --  13 bits per transfer
      CSR_BITSSelect_13_Bpt,
      --  14 bits per transfer
      CSR_BITSSelect_14_Bpt,
      --  15 bits per transfer
      CSR_BITSSelect_15_Bpt,
      --  16 bits per transfer
      CSR_BITSSelect_16_Bpt)
     with Size => 4;
   for CSR_BITSSelect use
     (CSR_BITSSelect_8_Bpt => 0,
      CSR_BITSSelect_9_Bpt => 1,
      CSR_BITSSelect_10_Bpt => 2,
      CSR_BITSSelect_11_Bpt => 3,
      CSR_BITSSelect_12_Bpt => 4,
      CSR_BITSSelect_13_Bpt => 5,
      CSR_BITSSelect_14_Bpt => 6,
      CSR_BITSSelect_15_Bpt => 7,
      CSR_BITSSelect_16_Bpt => 8);

   subtype SPI_CSR_SCBR_Field is HAL.UInt8;
   subtype SPI_CSR_DLYBS_Field is HAL.UInt8;
   subtype SPI_CSR_DLYBCT_Field is HAL.UInt8;

   --  Chip Select Register
   type SPI_CSR_Register is record
      --  Clock Polarity
      CPOL   : CSR_CPOLSelect := SAM_SVD.SPI.CSR_CPOLSelect_0;
      --  Clock Phase
      NCPHA  : CSR_NCPHASelect := SAM_SVD.SPI.CSR_NCPHASelect_0;
      --  Chip Select Not Active After Transfer
      CSNAAT : Boolean := False;
      --  Chip Select Active After Transfer
      CSAAT  : CSR_CSAATSelect := SAM_SVD.SPI.CSR_CSAATSelect_0;
      --  Bits Per Transfer
      BITS   : CSR_BITSSelect := SAM_SVD.SPI.CSR_BITSSelect_8_Bpt;
      --  Serial Clock Baud Rate
      SCBR   : SPI_CSR_SCBR_Field := 16#0#;
      --  Delay Before SPCK
      DLYBS  : SPI_CSR_DLYBS_Field := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT : SPI_CSR_DLYBCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CSR_Register use record
      CPOL   at 0 range 0 .. 0;
      NCPHA  at 0 range 1 .. 1;
      CSNAAT at 0 range 2 .. 2;
      CSAAT  at 0 range 3 .. 3;
      BITS   at 0 range 4 .. 7;
      SCBR   at 0 range 8 .. 15;
      DLYBS  at 0 range 16 .. 23;
      DLYBCT at 0 range 24 .. 31;
   end record;

   --  Chip Select Register
   type SPI_CSR_Registers is array (0 .. 3) of SPI_CSR_Register
     with Volatile;

   --  Write Protection Key Password
   type WPCR_WPKEYSelect is
     (
      --  Reset value for the field
      Wpcr_Wpkeyselect_Reset,
      --  SPI Write Protection Key Password
      Value)
     with Size => 24;
   for WPCR_WPKEYSelect use
     (Wpcr_Wpkeyselect_Reset => 0,
      Value => 5460041);

   --  Write Protection control Register
   type SPI_WPCR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key Password
      WPKEY        : WPCR_WPKEYSelect := Wpcr_Wpkeyselect_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_WPCR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   --  Write Protection Violation Status
   type WPSR_WPVSSelect is
     (
      --  The Write Protection has blocked a Write access to a protected
      --  register (since the last read).
      Write_With_Wp,
      --  Software Reset has been performed while Write Protection was enabled
      --  (since the last read or since the last write access on MR, IER, IDR
      --  or CSRx).
      Swrst_With_Wp,
      --  Write accesses have been detected on MR (while a chip select was
      --  active) or on CSRi (while the Chip Select "i" was active) since the
      --  last read.
      Unexpected_Write)
     with Size => 3;
   for WPSR_WPVSSelect use
     (Write_With_Wp => 1,
      Swrst_With_Wp => 2,
      Unexpected_Write => 4);

   subtype SPI_WPSR_WPVSRC_Field is HAL.UInt8;

   --  Write Protection status Register
   type SPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : WPSR_WPVSSelect;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SPI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_FEATURES_NCS_Field is HAL.UInt4;
   subtype SPI_FEATURES_LENNCONF_Field is HAL.UInt7;

   --  Features Register
   type SPI_FEATURES_Register is record
      --  Read-only. Number of Chip Selects
      NCS            : SPI_FEATURES_NCS_Field;
      --  Read-only. Polarity is Configurable
      PCONF          : Boolean;
      --  Read-only. Polarity is Positive if Polarity is not Configurable
      PPNCONF        : Boolean;
      --  Read-only. Phase is Configurable
      PHCONF         : Boolean;
      --  Read-only. Phase is Zero if Phase is not Configurable
      PHZNCONF       : Boolean;
      --  Read-only. Character Length is Configurable
      LENCONF        : Boolean;
      --  Read-only. Character Length if not Configurable
      LENNCONF       : SPI_FEATURES_LENNCONF_Field;
      --  Read-only. External Decoder is True
      EXTDEC         : Boolean;
      --  Read-only. CSNAAT Features are Implemented
      CSNAATIMPL     : Boolean;
      --  Read-only. Bridge Type is PB to HSB
      BRPBHSB        : Boolean;
      --  Read-only. FIFO in Reception is Implemented
      FIFORIMPL      : Boolean;
      --  Read-only. Spurious Write Protection is Implemented
      SWPIMPL        : Boolean;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_FEATURES_Register use record
      NCS            at 0 range 0 .. 3;
      PCONF          at 0 range 4 .. 4;
      PPNCONF        at 0 range 5 .. 5;
      PHCONF         at 0 range 6 .. 6;
      PHZNCONF       at 0 range 7 .. 7;
      LENCONF        at 0 range 8 .. 8;
      LENNCONF       at 0 range 9 .. 15;
      EXTDEC         at 0 range 16 .. 16;
      CSNAATIMPL     at 0 range 17 .. 17;
      BRPBHSB        at 0 range 18 .. 18;
      FIFORIMPL      at 0 range 19 .. 19;
      SWPIMPL        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SPI_VERSION_VERSION_Field is HAL.UInt12;
   subtype SPI_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type SPI_VERSION_Register is record
      --  Read-only. Version
      VERSION        : SPI_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. mfn
      MFN            : SPI_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI_Peripheral is record
      --  Control Register
      CR       : aliased SPI_CR_Register;
      --  Mode Register
      MR       : aliased SPI_MR_Register;
      --  Receive Data Register
      RDR      : aliased SPI_RDR_Register;
      --  Transmit Data Register
      TDR      : aliased SPI_TDR_Register;
      --  Status Register
      SR       : aliased SPI_SR_Register;
      --  Interrupt Enable Register
      IER      : aliased SPI_IER_Register;
      --  Interrupt Disable Register
      IDR      : aliased SPI_IDR_Register;
      --  Interrupt Mask Register
      IMR      : aliased SPI_IMR_Register;
      --  Chip Select Register
      CSR      : aliased SPI_CSR_Registers;
      --  Write Protection control Register
      WPCR     : aliased SPI_WPCR_Register;
      --  Write Protection status Register
      WPSR     : aliased SPI_WPSR_Register;
      --  Features Register
      FEATURES : aliased SPI_FEATURES_Register;
      --  Version Register
      VERSION  : aliased SPI_VERSION_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR       at 16#0# range 0 .. 31;
      MR       at 16#4# range 0 .. 31;
      RDR      at 16#8# range 0 .. 31;
      TDR      at 16#C# range 0 .. 31;
      SR       at 16#10# range 0 .. 31;
      IER      at 16#14# range 0 .. 31;
      IDR      at 16#18# range 0 .. 31;
      IMR      at 16#1C# range 0 .. 31;
      CSR      at 16#30# range 0 .. 127;
      WPCR     at 16#E4# range 0 .. 31;
      WPSR     at 16#E8# range 0 .. 31;
      FEATURES at 16#F8# range 0 .. 31;
      VERSION  at 16#FC# range 0 .. 31;
   end record;

   --  Serial Peripheral Interface
   SPI_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40008000#);

end SAM_SVD.SPI;
