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

--  This spec has been automatically generated from ATSAM4LC4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.IISC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Receive Enable
   type CR_RXENSelect is
     (
      --  No effect
      Off,
      --  Enables Data Receive if RXDIS is not set
      On)
     with Size => 1;
   for CR_RXENSelect use
     (Off => 0,
      On => 1);

   --  Receive Disable
   type CR_RXDISSelect is
     (
      --  No effect
      Off,
      --  Disables Data Receive
      On)
     with Size => 1;
   for CR_RXDISSelect use
     (Off => 0,
      On => 1);

   --  Clocks Enable
   type CR_CKENSelect is
     (
      --  No effect
      Off,
      --  Enables clocks if CKDIS is not set
      On)
     with Size => 1;
   for CR_CKENSelect use
     (Off => 0,
      On => 1);

   --  Clocks Disable
   type CR_CKDISSelect is
     (
      --  No effect
      Off,
      --  Disables clocks
      On)
     with Size => 1;
   for CR_CKDISSelect use
     (Off => 0,
      On => 1);

   --  Transmit Enable
   type CR_TXENSelect is
     (
      --  No effect
      Off,
      --  Enables Data Transmit if TXDIS is not set
      On)
     with Size => 1;
   for CR_TXENSelect use
     (Off => 0,
      On => 1);

   --  Transmit Disable
   type CR_TXDISSelect is
     (
      --  No effect
      Off,
      --  Disables Data Transmit
      On)
     with Size => 1;
   for CR_TXDISSelect use
     (Off => 0,
      On => 1);

   --  Software Reset
   type CR_SWRSTSelect is
     (
      --  No effect
      Off,
      --  Performs a software reset. Has priority on any other bit in CR
      On)
     with Size => 1;
   for CR_SWRSTSelect use
     (Off => 0,
      On => 1);

   --  Control Register
   type IISC_CR_Register is record
      --  Write-only. Receive Enable
      RXEN          : CR_RXENSelect := SAM_SVD.IISC.Off;
      --  Write-only. Receive Disable
      RXDIS         : CR_RXDISSelect := SAM_SVD.IISC.Off;
      --  Write-only. Clocks Enable
      CKEN          : CR_CKENSelect := SAM_SVD.IISC.Off;
      --  Write-only. Clocks Disable
      CKDIS         : CR_CKDISSelect := SAM_SVD.IISC.Off;
      --  Write-only. Transmit Enable
      TXEN          : CR_TXENSelect := SAM_SVD.IISC.Off;
      --  Write-only. Transmit Disable
      TXDIS         : CR_TXDISSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : CR_SWRSTSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_CR_Register use record
      RXEN          at 0 range 0 .. 0;
      RXDIS         at 0 range 1 .. 1;
      CKEN          at 0 range 2 .. 2;
      CKDIS         at 0 range 3 .. 3;
      TXEN          at 0 range 4 .. 4;
      TXDIS         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SWRST         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Master/Slave/Controller Mode
   type MR_MODESelect is
     (
      --  Slave mode (only serial data handled, clocks received from external
      --  master or controller)
      Slave,
      --  Master mode (clocks generated and output by IISC, serial data handled
      --  if CR.RXEN and/or CR.TXEN written to 1)
      Master)
     with Size => 1;
   for MR_MODESelect use
     (Slave => 0,
      Master => 1);

   --  Data Word Length
   type MR_DATALENGTHSelect is
     (
      --  32 bits
      MR_DATALENGTHSelect_32,
      --  24 bits
      MR_DATALENGTHSelect_24,
      --  20 bits
      MR_DATALENGTHSelect_20,
      --  18 bits
      MR_DATALENGTHSelect_18,
      --  16 bits
      MR_DATALENGTHSelect_16,
      --  16 bits compact stereo
      MR_DATALENGTHSelect_16C,
      --  8 bits
      MR_DATALENGTHSelect_8,
      --  8 bits compact stereo
      MR_DATALENGTHSelect_8C)
     with Size => 3;
   for MR_DATALENGTHSelect use
     (MR_DATALENGTHSelect_32 => 0,
      MR_DATALENGTHSelect_24 => 1,
      MR_DATALENGTHSelect_20 => 2,
      MR_DATALENGTHSelect_18 => 3,
      MR_DATALENGTHSelect_16 => 4,
      MR_DATALENGTHSelect_16C => 5,
      MR_DATALENGTHSelect_8 => 6,
      MR_DATALENGTHSelect_8C => 7);

   --  Receiver Mono
   type MR_RXMONOSelect is
     (
      --  Normal mode
      Stereo,
      --  Left channel data is duplicated to right channel
      Mono)
     with Size => 1;
   for MR_RXMONOSelect use
     (Stereo => 0,
      Mono => 1);

   --  Single or Multiple DMA Channels for Receiver
   type MR_RXDMASelect is
     (
      --  Single DMA channel
      Single,
      --  One DMA channel per data channel
      Multiple)
     with Size => 1;
   for MR_RXDMASelect use
     (Single => 0,
      Multiple => 1);

   --  Loop-back Test Mode
   type MR_RXLOOPSelect is
     (
      --  Normal mode
      Off,
      --  ISDO internally connected to ISDI
      On)
     with Size => 1;
   for MR_RXLOOPSelect use
     (Off => 0,
      On => 1);

   --  Transmitter Mono
   type MR_TXMONOSelect is
     (
      --  Normal mode
      Stereo,
      --  Left channel data is duplicated to right channel
      Mono)
     with Size => 1;
   for MR_TXMONOSelect use
     (Stereo => 0,
      Mono => 1);

   --  Single or Multiple DMA Channels for Transmitter
   type MR_TXDMASelect is
     (
      --  Single DMA channel
      Single,
      --  One DMA channel per data channel
      Multiple)
     with Size => 1;
   for MR_TXDMASelect use
     (Single => 0,
      Multiple => 1);

   --  Transmit Data when Underrun
   type MR_TXSAMESelect is
     (
      --  Zero data transmitted in case of underrun
      Zero,
      --  Last data transmitted in case of underrun
      Same)
     with Size => 1;
   for MR_TXSAMESelect use
     (Zero => 0,
      Same => 1);

   --  Master Clock to fs Ratio
   type MR_IMCKFSSelect is
     (
      --  16 fs
      MR_IMCKFSSelect_16,
      --  32 fs
      MR_IMCKFSSelect_32,
      --  64 fs
      MR_IMCKFSSelect_64,
      --  128 fs
      MR_IMCKFSSelect_128,
      --  256 fs
      MR_IMCKFSSelect_256,
      --  384 fs
      MR_IMCKFSSelect_384,
      --  512 fs
      MR_IMCKFSSelect_512,
      --  768 fs
      MR_IMCKFSSelect_768,
      --  1024 fs
      MR_IMCKFSSelect_1024)
     with Size => 6;
   for MR_IMCKFSSelect use
     (MR_IMCKFSSelect_16 => 0,
      MR_IMCKFSSelect_32 => 1,
      MR_IMCKFSSelect_64 => 3,
      MR_IMCKFSSelect_128 => 7,
      MR_IMCKFSSelect_256 => 15,
      MR_IMCKFSSelect_384 => 23,
      MR_IMCKFSSelect_512 => 31,
      MR_IMCKFSSelect_768 => 47,
      MR_IMCKFSSelect_1024 => 63);

   --  Master Clock Mode
   type MR_IMCKMODESelect is
     (
      --  No IMCK generated
      No_Imck,
      --  IMCK generated
      Imck)
     with Size => 1;
   for MR_IMCKMODESelect use
     (No_Imck => 0,
      Imck => 1);

   --  IWS Data Slot Width
   type MR_IWS24Select is
     (
      --  IWS Data Slot is 32-bit wide for DATALENGTH=18/20/24-bit
      MR_IWS24Select_32,
      --  IWS Data Slot is 24-bit wide for DATALENGTH=18/20/24-bit
      MR_IWS24Select_24)
     with Size => 1;
   for MR_IWS24Select use
     (MR_IWS24Select_32 => 0,
      MR_IWS24Select_24 => 1);

   --  Mode Register
   type IISC_MR_Register is record
      --  Master/Slave/Controller Mode
      MODE           : MR_MODESelect := SAM_SVD.IISC.Slave;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Data Word Length
      DATALENGTH     : MR_DATALENGTHSelect :=
                        SAM_SVD.IISC.MR_DATALENGTHSelect_32;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Receiver Mono
      RXMONO         : MR_RXMONOSelect := SAM_SVD.IISC.Stereo;
      --  Single or Multiple DMA Channels for Receiver
      RXDMA          : MR_RXDMASelect := SAM_SVD.IISC.Single;
      --  Loop-back Test Mode
      RXLOOP         : MR_RXLOOPSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Transmitter Mono
      TXMONO         : MR_TXMONOSelect := SAM_SVD.IISC.Stereo;
      --  Single or Multiple DMA Channels for Transmitter
      TXDMA          : MR_TXDMASelect := SAM_SVD.IISC.Single;
      --  Transmit Data when Underrun
      TXSAME         : MR_TXSAMESelect := SAM_SVD.IISC.Zero;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Master Clock to fs Ratio
      IMCKFS         : MR_IMCKFSSelect := SAM_SVD.IISC.MR_IMCKFSSelect_16;
      --  Master Clock Mode
      IMCKMODE       : MR_IMCKMODESelect := SAM_SVD.IISC.No_Imck;
      --  IWS Data Slot Width
      IWS24          : MR_IWS24Select := SAM_SVD.IISC.MR_IWS24Select_32;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_MR_Register use record
      MODE           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DATALENGTH     at 0 range 2 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RXMONO         at 0 range 8 .. 8;
      RXDMA          at 0 range 9 .. 9;
      RXLOOP         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TXMONO         at 0 range 12 .. 12;
      TXDMA          at 0 range 13 .. 13;
      TXSAME         at 0 range 14 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      IMCKFS         at 0 range 24 .. 29;
      IMCKMODE       at 0 range 30 .. 30;
      IWS24          at 0 range 31 .. 31;
   end record;

   --  Receive Enable
   type SR_RXENSelect is
     (
      --  Receiver is effectively disabled, following a CR.RXDIS or CR.SWRST
      --  request
      Off,
      --  Receiver is effectively enabled, following a CR.RXEN request
      On)
     with Size => 1;
   for SR_RXENSelect use
     (Off => 0,
      On => 1);

   --  Receive Ready
   type SR_RXRDYSelect is
     (
      --  The register RHR is empty and can't be read
      Empty,
      --  The register RHR is full and is ready to be read
      Full)
     with Size => 1;
   for SR_RXRDYSelect use
     (Empty => 0,
      Full => 1);

   --  Receive Overrun
   type SR_RXORSelect is
     (
      --  No overrun
      No,
      --  The previous received data has not been read. This data is lost
      Yes)
     with Size => 1;
   for SR_RXORSelect use
     (No => 0,
      Yes => 1);

   --  Transmit Enable
   type SR_TXENSelect is
     (
      --  Transmitter is effectively disabled, following a CR.TXDIS or CR.SWRST
      --  request
      Off,
      --  Transmitter is effectively enabled, following a CR.TXEN request
      On)
     with Size => 1;
   for SR_TXENSelect use
     (Off => 0,
      On => 1);

   --  Transmit Ready
   type SR_TXRDYSelect is
     (
      --  The register THR is full and can't be written
      Full,
      --  The register THR is empty and is ready to be written
      Empty)
     with Size => 1;
   for SR_TXRDYSelect use
     (Full => 0,
      Empty => 1);

   --  Transmit Underrun
   type SR_TXURSelect is
     (
      --  No underrun
      No,
      --  The last bit of the last data written to the register THR has been
      --  set. Until the next write to THR, data will be sent according to
      --  MR.TXSAME field
      Yes)
     with Size => 1;
   for SR_TXURSelect use
     (No => 0,
      Yes => 1);

   --  Receive Overrun Channels
   type SR_RXORCHSelect is
     (
      --  Overrun first occurred on left channel
      Left,
      --  Overrun first occurred on right channel
      Right)
     with Size => 2;
   for SR_RXORCHSelect use
     (Left => 0,
      Right => 1);

   --  Transmit Underrun Channels
   type SR_TXURCHSelect is
     (
      --  Underrun first occurred on left channel
      Left,
      --  Underrun first occurred on right channel
      Right)
     with Size => 2;
   for SR_TXURCHSelect use
     (Left => 0,
      Right => 1);

   --  Status Register
   type IISC_SR_Register is record
      --  Read-only. Receive Enable
      RXEN           : SR_RXENSelect;
      --  Read-only. Receive Ready
      RXRDY          : SR_RXRDYSelect;
      --  Read-only. Receive Overrun
      RXOR           : SR_RXORSelect;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Transmit Enable
      TXEN           : SR_TXENSelect;
      --  Read-only. Transmit Ready
      TXRDY          : SR_TXRDYSelect;
      --  Read-only. Transmit Underrun
      TXUR           : SR_TXURSelect;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Receive Overrun Channels
      RXORCH         : SR_RXORCHSelect;
      --  unspecified
      Reserved_10_19 : HAL.UInt10;
      --  Read-only. Transmit Underrun Channels
      TXURCH         : SR_TXURCHSelect;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_SR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TXEN           at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Receive Overrun
   type SCR_RXORSelect is
     (
      --  No effect
      No,
      --  Clears the corresponding SR bit
      Clear)
     with Size => 1;
   for SCR_RXORSelect use
     (No => 0,
      Clear => 1);

   --  Transmit Underrun
   type SCR_TXURSelect is
     (
      --  No effect
      No,
      --  Clears the corresponding SR bit
      Clear)
     with Size => 1;
   for SCR_TXURSelect use
     (No => 0,
      Clear => 1);

   subtype IISC_SCR_RXORCH_Field is HAL.UInt2;
   subtype IISC_SCR_TXURCH_Field is HAL.UInt2;

   --  Status Clear Register
   type IISC_SCR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      RXOR           : SCR_RXORSelect := SAM_SVD.IISC.No;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun
      TXUR           : SCR_TXURSelect := SAM_SVD.IISC.No;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Receive Overrun Channels
      RXORCH         : IISC_SCR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : HAL.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Channels
      TXURCH         : IISC_SCR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_SCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Receive Overrun
   type SSR_RXORSelect is
     (
      --  No effect
      No,
      --  Sets corresponding SR bit
      Set)
     with Size => 1;
   for SSR_RXORSelect use
     (No => 0,
      Set => 1);

   --  Transmit Underrun
   type SSR_TXURSelect is
     (
      --  No effect
      No,
      --  Sets corresponding SR bit
      Set)
     with Size => 1;
   for SSR_TXURSelect use
     (No => 0,
      Set => 1);

   subtype IISC_SSR_RXORCH_Field is HAL.UInt2;
   subtype IISC_SSR_TXURCH_Field is HAL.UInt2;

   --  Status Set Register
   type IISC_SSR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      RXOR           : SSR_RXORSelect := SAM_SVD.IISC.No;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun
      TXUR           : SSR_TXURSelect := SAM_SVD.IISC.No;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Receive Overrun Channels
      RXORCH         : IISC_SSR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : HAL.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Channels
      TXURCH         : IISC_SSR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_SSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Receiver Ready Interrupt Enable
   type IER_RXRDYSelect is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for IER_RXRDYSelect use
     (Off => 0,
      On => 1);

   --  Receive Overrun Interrupt Enable
   type IER_RXORSelect is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for IER_RXORSelect use
     (Off => 0,
      On => 1);

   --  Transmit Ready Interrupt Enable
   type IER_TXRDYSelect is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for IER_TXRDYSelect use
     (Off => 0,
      On => 1);

   --  Transmit Underrun Interrupt Enable
   type IER_TXURSelect is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for IER_TXURSelect use
     (Off => 0,
      On => 1);

   --  Interrupt Enable Register
   type IISC_IER_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY         : IER_RXRDYSelect := SAM_SVD.IISC.Off;
      --  Write-only. Receive Overrun Interrupt Enable
      RXOR          : IER_RXORSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : IER_TXRDYSelect := SAM_SVD.IISC.Off;
      --  Write-only. Transmit Underrun Interrupt Enable
      TXUR          : IER_TXURSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RXRDY         at 0 range 1 .. 1;
      RXOR          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TXRDY         at 0 range 5 .. 5;
      TXUR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Receive Ready Interrupt Disable
   type IDR_RXRDYSelect is
     (
      --  No effect
      Off,
      --  Disables the corresponding interrupt
      On)
     with Size => 1;
   for IDR_RXRDYSelect use
     (Off => 0,
      On => 1);

   --  Receive Overrun Interrupt Disable
   type IDR_RXORSelect is
     (
      --  No effect
      Off,
      --  Disables the corresponding interrupt
      On)
     with Size => 1;
   for IDR_RXORSelect use
     (Off => 0,
      On => 1);

   --  Transmit Ready Interrupt Disable
   type IDR_TXRDYSelect is
     (
      --  No effect
      Off,
      --  Disables the corresponding interrupt
      On)
     with Size => 1;
   for IDR_TXRDYSelect use
     (Off => 0,
      On => 1);

   --  Transmit Underrun Interrupt Disable
   type IDR_TXURSelect is
     (
      --  No effect
      Off,
      --  Disables the corresponding interrupt
      On)
     with Size => 1;
   for IDR_TXURSelect use
     (Off => 0,
      On => 1);

   --  Interrupt Disable Register
   type IISC_IDR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Receive Ready Interrupt Disable
      RXRDY         : IDR_RXRDYSelect := SAM_SVD.IISC.Off;
      --  Write-only. Receive Overrun Interrupt Disable
      RXOR          : IDR_RXORSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY         : IDR_TXRDYSelect := SAM_SVD.IISC.Off;
      --  Write-only. Transmit Underrun Interrupt Disable
      TXUR          : IDR_TXURSelect := SAM_SVD.IISC.Off;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_IDR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RXRDY         at 0 range 1 .. 1;
      RXOR          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TXRDY         at 0 range 5 .. 5;
      TXUR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Receive Ready Interrupt Mask
   type IMR_RXRDYSelect is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for IMR_RXRDYSelect use
     (Disabled => 0,
      Enabled => 1);

   --  Receive Overrun Interrupt Mask
   type IMR_RXORSelect is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for IMR_RXORSelect use
     (Disabled => 0,
      Enabled => 1);

   --  Transmit Ready Interrupt Mask
   type IMR_TXRDYSelect is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for IMR_TXRDYSelect use
     (Disabled => 0,
      Enabled => 1);

   --  Transmit Underrun Interrupt Mask
   type IMR_TXURSelect is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for IMR_TXURSelect use
     (Disabled => 0,
      Enabled => 1);

   --  Interrupt Mask Register
   type IISC_IMR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Receive Ready Interrupt Mask
      RXRDY         : IMR_RXRDYSelect;
      --  Read-only. Receive Overrun Interrupt Mask
      RXOR          : IMR_RXORSelect;
      --  unspecified
      Reserved_3_4  : HAL.UInt2;
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : IMR_TXRDYSelect;
      --  Read-only. Transmit Underrun Interrupt Mask
      TXUR          : IMR_TXURSelect;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_IMR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RXRDY         at 0 range 1 .. 1;
      RXOR          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TXRDY         at 0 range 5 .. 5;
      TXUR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype IISC_VERSION_VERSION_Field is HAL.UInt12;
   subtype IISC_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type IISC_VERSION_Register is record
      --  Read-only. Reserved. Value subject to change. No functionality
      --  associated. This is the Atmel internal version of the macrocell.
      VERSION        : IISC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Reserved. Value subject to change. No functionality
      --  associated.
      VARIANT        : IISC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Data protocol format
   type PARAMETER_FORMATSelect is
     (
      --  I2S format, stereo with IWS low for left channel
      I2S)
     with Size => 1;
   for PARAMETER_FORMATSelect use
     (I2S => 0);

   subtype IISC_PARAMETER_NBCHAN_Field is HAL.UInt5;

   --  Parameter Register
   type IISC_PARAMETER_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7;
      --  Read-only. Data protocol format
      FORMAT         : PARAMETER_FORMATSelect;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Maximum number of channels - 1
      NBCHAN         : IISC_PARAMETER_NBCHAN_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_PARAMETER_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      FORMAT         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      NBCHAN         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-IC Sound (I2S) Controller
   type IISC_Peripheral is record
      --  Control Register
      CR        : aliased IISC_CR_Register;
      --  Mode Register
      MR        : aliased IISC_MR_Register;
      --  Status Register
      SR        : aliased IISC_SR_Register;
      --  Status Clear Register
      SCR       : aliased IISC_SCR_Register;
      --  Status Set Register
      SSR       : aliased IISC_SSR_Register;
      --  Interrupt Enable Register
      IER       : aliased IISC_IER_Register;
      --  Interrupt Disable Register
      IDR       : aliased IISC_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased IISC_IMR_Register;
      --  Receive Holding Register
      RHR       : aliased HAL.UInt32;
      --  Transmit Holding Register
      THR       : aliased HAL.UInt32;
      --  Version Register
      VERSION   : aliased IISC_VERSION_Register;
      --  Parameter Register
      PARAMETER : aliased IISC_PARAMETER_Register;
   end record
     with Volatile;

   for IISC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      MR        at 16#4# range 0 .. 31;
      SR        at 16#8# range 0 .. 31;
      SCR       at 16#C# range 0 .. 31;
      SSR       at 16#10# range 0 .. 31;
      IER       at 16#14# range 0 .. 31;
      IDR       at 16#18# range 0 .. 31;
      IMR       at 16#1C# range 0 .. 31;
      RHR       at 16#20# range 0 .. 31;
      THR       at 16#24# range 0 .. 31;
      VERSION   at 16#28# range 0 .. 31;
      PARAMETER at 16#2C# range 0 .. 31;
   end record;

   --  Inter-IC Sound (I2S) Controller
   IISC_Periph : aliased IISC_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

end SAM_SVD.IISC;
