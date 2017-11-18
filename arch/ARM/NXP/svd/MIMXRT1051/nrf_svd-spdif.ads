--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPDIF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  no description available
   type SCR_USrc_Sel_Field is
     (
      --  No embedded U channel
      Usrc_Sel_0,
      --  U channel from SPDIF receive block (CD mode)
      Usrc_Sel_1,
      --  U channel from on chip transmitter
      Usrc_Sel_3)
     with Size => 2;
   for SCR_USrc_Sel_Field use
     (Usrc_Sel_0 => 0,
      Usrc_Sel_1 => 1,
      Usrc_Sel_3 => 3);

   --  no description available
   type SCR_TxSel_Field is
     (
      --  Off and output 0
      Txsel_0,
      --  Feed-through SPDIFIN
      Txsel_1,
      --  Tx Normal operation
      Txsel_5)
     with Size => 3;
   for SCR_TxSel_Field use
     (Txsel_0 => 0,
      Txsel_1 => 1,
      Txsel_5 => 5);

   --  no description available
   type SCR_ValCtrl_Field is
     (
      --  Outgoing Validity always set
      Valctrl_0,
      --  Outgoing Validity always clear
      Valctrl_1)
     with Size => 1;
   for SCR_ValCtrl_Field use
     (Valctrl_0 => 0,
      Valctrl_1 => 1);

   --  no description available
   type SCR_TxFIFO_Ctrl_Field is
     (
      --  Send out digital zero on SPDIF Tx
      Txfifo_Ctrl_0,
      --  Tx Normal operation
      Txfifo_Ctrl_1,
      --  Reset to 1 sample remaining
      Txfifo_Ctrl_2)
     with Size => 2;
   for SCR_TxFIFO_Ctrl_Field use
     (Txfifo_Ctrl_0 => 0,
      Txfifo_Ctrl_1 => 1,
      Txfifo_Ctrl_2 => 2);

   --  no description available
   type SCR_TxFIFOEmpty_Sel_Field is
     (
      --  Empty interrupt if 0 sample in Tx left and right FIFOs
      Txfifoempty_Sel_0,
      --  Empty interrupt if at most 4 sample in Tx left and right FIFOs
      Txfifoempty_Sel_1,
      --  Empty interrupt if at most 8 sample in Tx left and right FIFOs
      Txfifoempty_Sel_2,
      --  Empty interrupt if at most 12 sample in Tx left and right FIFOs
      Txfifoempty_Sel_3)
     with Size => 2;
   for SCR_TxFIFOEmpty_Sel_Field use
     (Txfifoempty_Sel_0 => 0,
      Txfifoempty_Sel_1 => 1,
      Txfifoempty_Sel_2 => 2,
      Txfifoempty_Sel_3 => 3);

   --  no description available
   type SCR_TxAutoSync_Field is
     (
      --  Tx FIFO auto sync off
      Txautosync_0,
      --  Tx FIFO auto sync on
      Txautosync_1)
     with Size => 1;
   for SCR_TxAutoSync_Field use
     (Txautosync_0 => 0,
      Txautosync_1 => 1);

   --  no description available
   type SCR_RxAutoSync_Field is
     (
      --  Rx FIFO auto sync off
      Rxautosync_0,
      --  RxFIFO auto sync on
      Rxautosync_1)
     with Size => 1;
   for SCR_RxAutoSync_Field use
     (Rxautosync_0 => 0,
      Rxautosync_1 => 1);

   --  no description available
   type SCR_RxFIFOFull_Sel_Field is
     (
      --  Full interrupt if at least 1 sample in Rx left and right FIFOs
      Rxfifofull_Sel_0,
      --  Full interrupt if at least 4 sample in Rx left and right FIFOs
      Rxfifofull_Sel_1,
      --  Full interrupt if at least 8 sample in Rx left and right FIFOs
      Rxfifofull_Sel_2,
      --  Full interrupt if at least 16 sample in Rx left and right FIFO
      Rxfifofull_Sel_3)
     with Size => 2;
   for SCR_RxFIFOFull_Sel_Field use
     (Rxfifofull_Sel_0 => 0,
      Rxfifofull_Sel_1 => 1,
      Rxfifofull_Sel_2 => 2,
      Rxfifofull_Sel_3 => 3);

   --  no description available
   type SCR_RxFIFO_Rst_Field is
     (
      --  Normal operation
      Rxfifo_Rst_0,
      --  Reset register to 1 sample remaining
      Rxfifo_Rst_1)
     with Size => 1;
   for SCR_RxFIFO_Rst_Field use
     (Rxfifo_Rst_0 => 0,
      Rxfifo_Rst_1 => 1);

   --  no description available
   type SCR_RxFIFO_Off_On_Field is
     (
      --  SPDIF Rx FIFO is on
      Rxfifo_Off_On_0,
      --  SPDIF Rx FIFO is off. Does not accept data from interface
      Rxfifo_Off_On_1)
     with Size => 1;
   for SCR_RxFIFO_Off_On_Field use
     (Rxfifo_Off_On_0 => 0,
      Rxfifo_Off_On_1 => 1);

   --  no description available
   type SCR_RxFIFO_Ctrl_Field is
     (
      --  Normal operation
      Rxfifo_Ctrl_0,
      --  Always read zero from Rx data register
      Rxfifo_Ctrl_1)
     with Size => 1;
   for SCR_RxFIFO_Ctrl_Field use
     (Rxfifo_Ctrl_0 => 0,
      Rxfifo_Ctrl_1 => 1);

   --  SPDIF Configuration Register
   type SPDIF_SCR_Register is record
      --  no description available
      USrc_Sel        : SCR_USrc_Sel_Field := NRF_SVD.SPDIF.Usrc_Sel_0;
      --  no description available
      TxSel           : SCR_TxSel_Field := NRF_SVD.SPDIF.Txsel_0;
      --  no description available
      ValCtrl         : SCR_ValCtrl_Field := NRF_SVD.SPDIF.Valctrl_0;
      --  unspecified
      Reserved_6_7    : HAL.UInt2 := 16#0#;
      --  DMA Transmit Request Enable (Tx FIFO empty)
      DMA_TX_En       : Boolean := False;
      --  DMA Receive Request Enable (RX FIFO full)
      DMA_Rx_En       : Boolean := False;
      --  no description available
      TxFIFO_Ctrl     : SCR_TxFIFO_Ctrl_Field := NRF_SVD.SPDIF.Txfifo_Ctrl_1;
      --  When write 1 to this bit, it will cause SPDIF software reset
      soft_reset      : Boolean := False;
      --  When write 1 to this bit, it will cause SPDIF enter low-power mode
      LOW_POWER       : Boolean := False;
      --  unspecified
      Reserved_14_14  : HAL.Bit := 16#0#;
      --  no description available
      TxFIFOEmpty_Sel : SCR_TxFIFOEmpty_Sel_Field :=
                         NRF_SVD.SPDIF.Txfifoempty_Sel_0;
      --  no description available
      TxAutoSync      : SCR_TxAutoSync_Field := NRF_SVD.SPDIF.Txautosync_0;
      --  no description available
      RxAutoSync      : SCR_RxAutoSync_Field := NRF_SVD.SPDIF.Rxautosync_0;
      --  no description available
      RxFIFOFull_Sel  : SCR_RxFIFOFull_Sel_Field :=
                         NRF_SVD.SPDIF.Rxfifofull_Sel_0;
      --  no description available
      RxFIFO_Rst      : SCR_RxFIFO_Rst_Field := NRF_SVD.SPDIF.Rxfifo_Rst_0;
      --  no description available
      RxFIFO_Off_On   : SCR_RxFIFO_Off_On_Field :=
                         NRF_SVD.SPDIF.Rxfifo_Off_On_0;
      --  no description available
      RxFIFO_Ctrl     : SCR_RxFIFO_Ctrl_Field := NRF_SVD.SPDIF.Rxfifo_Ctrl_0;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SCR_Register use record
      USrc_Sel        at 0 range 0 .. 1;
      TxSel           at 0 range 2 .. 4;
      ValCtrl         at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      DMA_TX_En       at 0 range 8 .. 8;
      DMA_Rx_En       at 0 range 9 .. 9;
      TxFIFO_Ctrl     at 0 range 10 .. 11;
      soft_reset      at 0 range 12 .. 12;
      LOW_POWER       at 0 range 13 .. 13;
      Reserved_14_14  at 0 range 14 .. 14;
      TxFIFOEmpty_Sel at 0 range 15 .. 16;
      TxAutoSync      at 0 range 17 .. 17;
      RxAutoSync      at 0 range 18 .. 18;
      RxFIFOFull_Sel  at 0 range 19 .. 20;
      RxFIFO_Rst      at 0 range 21 .. 21;
      RxFIFO_Off_On   at 0 range 22 .. 22;
      RxFIFO_Ctrl     at 0 range 23 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  no description available
   type SRCD_USyncMode_Field is
     (
      --  Non-CD data
      Usyncmode_0,
      --  CD user channel subcode
      Usyncmode_1)
     with Size => 1;
   for SRCD_USyncMode_Field use
     (Usyncmode_0 => 0,
      Usyncmode_1 => 1);

   --  CDText Control Register
   type SPDIF_SRCD_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  no description available
      USyncMode     : SRCD_USyncMode_Field := NRF_SVD.SPDIF.Usyncmode_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRCD_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      USyncMode     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Gain selection:
   type SRPC_GainSel_Field is
     (
      --  24*(2**10)
      Gainsel_0,
      --  16*(2**10)
      Gainsel_1,
      --  12*(2**10)
      Gainsel_2,
      --  8*(2**10)
      Gainsel_3,
      --  6*(2**10)
      Gainsel_4,
      --  4*(2**10)
      Gainsel_5,
      --  3*(2**10)
      Gainsel_6)
     with Size => 3;
   for SRPC_GainSel_Field use
     (Gainsel_0 => 0,
      Gainsel_1 => 1,
      Gainsel_2 => 2,
      Gainsel_3 => 3,
      Gainsel_4 => 4,
      Gainsel_5 => 5,
      Gainsel_6 => 6);

   --  Clock source selection, all other settings not shown are reserved:
   type SRPC_ClkSrc_Sel_Field is
     (
      --  if (DPLL Locked) SPDIF_RxClk else REF_CLK_32K (XTALOSC)
      Clksrc_Sel_0,
      --  if (DPLL Locked) SPDIF_RxClk else tx_clk (SPDIF0_CLK_ROOT)
      Clksrc_Sel_1,
      --  if (DPLL Locked) SPDIF_RxClk else SPDIF_EXT_CLK
      Clksrc_Sel_3,
      --  REF_CLK_32K (XTALOSC)
      Clksrc_Sel_5,
      --  tx_clk (SPDIF0_CLK_ROOT)
      Clksrc_Sel_6,
      --  SPDIF_EXT_CLK
      Clksrc_Sel_8)
     with Size => 4;
   for SRPC_ClkSrc_Sel_Field use
     (Clksrc_Sel_0 => 0,
      Clksrc_Sel_1 => 1,
      Clksrc_Sel_3 => 3,
      Clksrc_Sel_5 => 5,
      Clksrc_Sel_6 => 6,
      Clksrc_Sel_8 => 8);

   --  PhaseConfig Register
   type SPDIF_SRPC_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Gain selection:
      GainSel        : SRPC_GainSel_Field := NRF_SVD.SPDIF.Gainsel_0;
      --  Read-only. LOCK bit to show that the internal DPLL is locked, read
      --  only
      LOCK           : Boolean := False;
      --  Clock source selection, all other settings not shown are reserved:
      ClkSrc_Sel     : SRPC_ClkSrc_Sel_Field := NRF_SVD.SPDIF.Clksrc_Sel_0;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRPC_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      GainSel        at 0 range 3 .. 5;
      LOCK           at 0 range 6 .. 6;
      ClkSrc_Sel     at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  InterruptEn Register
   type SPDIF_SIE_Register is record
      --  SPDIF Rx FIFO full, can't be cleared with reg. IntClear. To clear it,
      --  read from Rx FIFO.
      RxFIFOFul      : Boolean := False;
      --  SPDIF Tx FIFO empty, can't be cleared with reg. IntClear. To clear
      --  it, write toTx FIFO.
      TxEm           : Boolean := False;
      --  SPDIF receiver loss of lock
      LockLoss       : Boolean := False;
      --  Rx FIFO resync
      RxFIFOResyn    : Boolean := False;
      --  Rx FIFO underrun/overrun
      RxFIFOUnOv     : Boolean := False;
      --  U/Q Channel framing error
      UQErr          : Boolean := False;
      --  U/Q Channel sync found
      UQSync         : Boolean := False;
      --  Q Channel receive register overrun
      QRxOv          : Boolean := False;
      --  Q Channel receive register full, can't be cleared with reg
      QRxFul         : Boolean := False;
      --  U Channel receive register overrun
      URxOv          : Boolean := False;
      --  U Channel receive register full, can't be cleared with reg
      URxFul         : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  SPDIF receiver found parity bit error
      BitErr         : Boolean := False;
      --  SPDIF receiver found illegal symbol
      SymErr         : Boolean := False;
      --  SPDIF validity flag no good
      ValNoGood      : Boolean := False;
      --  SPDIF receive change in value of control channel
      CNew           : Boolean := False;
      --  SPDIF Tx FIFO resync
      TxResyn        : Boolean := False;
      --  SPDIF Tx FIFO under/overrun
      TxUnOv         : Boolean := False;
      --  SPDIF receiver's DPLL is locked
      Lock           : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SIE_Register use record
      RxFIFOFul      at 0 range 0 .. 0;
      TxEm           at 0 range 1 .. 1;
      LockLoss       at 0 range 2 .. 2;
      RxFIFOResyn    at 0 range 3 .. 3;
      RxFIFOUnOv     at 0 range 4 .. 4;
      UQErr          at 0 range 5 .. 5;
      UQSync         at 0 range 6 .. 6;
      QRxOv          at 0 range 7 .. 7;
      QRxFul         at 0 range 8 .. 8;
      URxOv          at 0 range 9 .. 9;
      URxFul         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      BitErr         at 0 range 14 .. 14;
      SymErr         at 0 range 15 .. 15;
      ValNoGood      at 0 range 16 .. 16;
      CNew           at 0 range 17 .. 17;
      TxResyn        at 0 range 18 .. 18;
      TxUnOv         at 0 range 19 .. 19;
      Lock           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  InterruptClear Register
   type SPDIF_SIC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. SPDIF receiver loss of lock
      LockLoss       : Boolean := False;
      --  Write-only. Rx FIFO resync
      RxFIFOResyn    : Boolean := False;
      --  Write-only. Rx FIFO underrun/overrun
      RxFIFOUnOv     : Boolean := False;
      --  Write-only. U/Q Channel framing error
      UQErr          : Boolean := False;
      --  Write-only. U/Q Channel sync found
      UQSync         : Boolean := False;
      --  Write-only. Q Channel receive register overrun
      QRxOv          : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. U Channel receive register overrun
      URxOv          : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Write-only. SPDIF receiver found parity bit error
      BitErr         : Boolean := False;
      --  Write-only. SPDIF receiver found illegal symbol
      SymErr         : Boolean := False;
      --  Write-only. SPDIF validity flag no good
      ValNoGood      : Boolean := False;
      --  Write-only. SPDIF receive change in value of control channel
      CNew           : Boolean := False;
      --  Write-only. SPDIF Tx FIFO resync
      TxResyn        : Boolean := False;
      --  Write-only. SPDIF Tx FIFO under/overrun
      TxUnOv         : Boolean := False;
      --  Write-only. SPDIF receiver's DPLL is locked
      Lock           : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SIC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LockLoss       at 0 range 2 .. 2;
      RxFIFOResyn    at 0 range 3 .. 3;
      RxFIFOUnOv     at 0 range 4 .. 4;
      UQErr          at 0 range 5 .. 5;
      UQSync         at 0 range 6 .. 6;
      QRxOv          at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      URxOv          at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      BitErr         at 0 range 14 .. 14;
      SymErr         at 0 range 15 .. 15;
      ValNoGood      at 0 range 16 .. 16;
      CNew           at 0 range 17 .. 17;
      TxResyn        at 0 range 18 .. 18;
      TxUnOv         at 0 range 19 .. 19;
      Lock           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  InterruptStat Register
   type SPDIF_SIS_Register is record
      --  Read-only. SPDIF Rx FIFO full, can't be cleared with reg. IntClear.
      --  To clear it, read from Rx FIFO.
      RxFIFOFul      : Boolean;
      --  Read-only. SPDIF Tx FIFO empty, can't be cleared with reg. IntClear.
      --  To clear it, write toTx FIFO.
      TxEm           : Boolean;
      --  Read-only. SPDIF receiver loss of lock
      LockLoss       : Boolean;
      --  Read-only. Rx FIFO resync
      RxFIFOResyn    : Boolean;
      --  Read-only. Rx FIFO underrun/overrun
      RxFIFOUnOv     : Boolean;
      --  Read-only. U/Q Channel framing error
      UQErr          : Boolean;
      --  Read-only. U/Q Channel sync found
      UQSync         : Boolean;
      --  Read-only. Q Channel receive register overrun
      QRxOv          : Boolean;
      --  Read-only. Q Channel receive register full, can't be cleared with reg
      QRxFul         : Boolean;
      --  Read-only. U Channel receive register overrun
      URxOv          : Boolean;
      --  Read-only. U Channel receive register full, can't be cleared with reg
      URxFul         : Boolean;
      --  unspecified
      Reserved_11_13 : HAL.UInt3;
      --  Read-only. SPDIF receiver found parity bit error
      BitErr         : Boolean;
      --  Read-only. SPDIF receiver found illegal symbol
      SymErr         : Boolean;
      --  Read-only. SPDIF validity flag no good
      ValNoGood      : Boolean;
      --  Read-only. SPDIF receive change in value of control channel
      CNew           : Boolean;
      --  Read-only. SPDIF Tx FIFO resync
      TxResyn        : Boolean;
      --  Read-only. SPDIF Tx FIFO under/overrun
      TxUnOv         : Boolean;
      --  Read-only. SPDIF receiver's DPLL is locked
      Lock           : Boolean;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SIS_Register use record
      RxFIFOFul      at 0 range 0 .. 0;
      TxEm           at 0 range 1 .. 1;
      LockLoss       at 0 range 2 .. 2;
      RxFIFOResyn    at 0 range 3 .. 3;
      RxFIFOUnOv     at 0 range 4 .. 4;
      UQErr          at 0 range 5 .. 5;
      UQSync         at 0 range 6 .. 6;
      QRxOv          at 0 range 7 .. 7;
      QRxFul         at 0 range 8 .. 8;
      URxOv          at 0 range 9 .. 9;
      URxFul         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      BitErr         at 0 range 14 .. 14;
      SymErr         at 0 range 15 .. 15;
      ValNoGood      at 0 range 16 .. 16;
      CNew           at 0 range 17 .. 17;
      TxResyn        at 0 range 18 .. 18;
      TxUnOv         at 0 range 19 .. 19;
      Lock           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SPDIF_SRL_RxDataLeft_Field is HAL.UInt24;

   --  SPDIFRxLeft Register
   type SPDIF_SRL_Register is record
      --  Read-only. Processor receive SPDIF data left
      RxDataLeft     : SPDIF_SRL_RxDataLeft_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRL_Register use record
      RxDataLeft     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_SRR_RxDataRight_Field is HAL.UInt24;

   --  SPDIFRxRight Register
   type SPDIF_SRR_Register is record
      --  Read-only. Processor receive SPDIF data right
      RxDataRight    : SPDIF_SRR_RxDataRight_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRR_Register use record
      RxDataRight    at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_SRCSH_RxCChannel_h_Field is HAL.UInt24;

   --  SPDIFRxCChannel_h Register
   type SPDIF_SRCSH_Register is record
      --  Read-only. SPDIF receive C channel register, contains first 24 bits
      --  of C channel without interpretation
      RxCChannel_h   : SPDIF_SRCSH_RxCChannel_h_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRCSH_Register use record
      RxCChannel_h   at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_SRCSL_RxCChannel_l_Field is HAL.UInt24;

   --  SPDIFRxCChannel_l Register
   type SPDIF_SRCSL_Register is record
      --  Read-only. SPDIF receive C channel register, contains next 24 bits of
      --  C channel without interpretation
      RxCChannel_l   : SPDIF_SRCSL_RxCChannel_l_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRCSL_Register use record
      RxCChannel_l   at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_SRU_RxUChannel_Field is HAL.UInt24;

   --  UchannelRx Register
   type SPDIF_SRU_Register is record
      --  Read-only. SPDIF receive U channel register, contains next 3 U
      --  channel bytes
      RxUChannel     : SPDIF_SRU_RxUChannel_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRU_Register use record
      RxUChannel     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_SRQ_RxQChannel_Field is HAL.UInt24;

   --  QchannelRx Register
   type SPDIF_SRQ_Register is record
      --  Read-only. SPDIF receive Q channel register, contains next 3 Q
      --  channel bytes
      RxQChannel     : SPDIF_SRQ_RxQChannel_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRQ_Register use record
      RxQChannel     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_STL_TxDataLeft_Field is HAL.UInt24;

   --  SPDIFTxLeft Register
   type SPDIF_STL_Register is record
      --  Write-only. SPDIF transmit left channel data. It is write-only, and
      --  always returns zeros when read
      TxDataLeft     : SPDIF_STL_TxDataLeft_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_STL_Register use record
      TxDataLeft     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_STR_TxDataRight_Field is HAL.UInt24;

   --  SPDIFTxRight Register
   type SPDIF_STR_Register is record
      --  Write-only. SPDIF transmit right channel data. It is write-only, and
      --  always returns zeros when read
      TxDataRight    : SPDIF_STR_TxDataRight_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_STR_Register use record
      TxDataRight    at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPDIF_STCSCH_TxCChannelCons_h_Field is HAL.UInt24;

   --  SPDIFTxCChannelCons_h Register
   type SPDIF_STCSCH_Register is record
      --  SPDIF transmit Cons
      TxCChannelCons_h : SPDIF_STCSCH_TxCChannelCons_h_Field := 16#0#;
      --  unspecified
      Reserved_24_31   : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_STCSCH_Register use record
      TxCChannelCons_h at 0 range 0 .. 23;
      Reserved_24_31   at 0 range 24 .. 31;
   end record;

   subtype SPDIF_STCSCL_TxCChannelCons_l_Field is HAL.UInt24;

   --  SPDIFTxCChannelCons_l Register
   type SPDIF_STCSCL_Register is record
      --  SPDIF transmit Cons
      TxCChannelCons_l : SPDIF_STCSCL_TxCChannelCons_l_Field := 16#0#;
      --  unspecified
      Reserved_24_31   : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_STCSCL_Register use record
      TxCChannelCons_l at 0 range 0 .. 23;
      Reserved_24_31   at 0 range 24 .. 31;
   end record;

   subtype SPDIF_SRFM_FreqMeas_Field is HAL.UInt24;

   --  FreqMeas Register
   type SPDIF_SRFM_Register is record
      --  Read-only. Frequency measurement data
      FreqMeas       : SPDIF_SRFM_FreqMeas_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_SRFM_Register use record
      FreqMeas       at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Divider factor (1-128)
   type STC_TxClk_DF_Field is
     (
      --  divider factor is 1
      Txclk_Df_0,
      --  divider factor is 2
      Txclk_Df_1,
      --  divider factor is 128
      Txclk_Df_127)
     with Size => 7;
   for STC_TxClk_DF_Field use
     (Txclk_Df_0 => 0,
      Txclk_Df_1 => 1,
      Txclk_Df_127 => 127);

   --  Spdif transfer clock enable. When data is going to be transfered, this
   --  bit should be set to1.
   type STC_tx_all_clk_en_Field is
     (
      --  disable transfer clock.
      TX_ALL_CLK_EN_0,
      --  enable transfer clock.
      TX_ALL_CLK_EN_1)
     with Size => 1;
   for STC_tx_all_clk_en_Field use
     (TX_ALL_CLK_EN_0 => 0,
      TX_ALL_CLK_EN_1 => 1);

   --  no description available
   type STC_TxClk_Source_Field is
     (
      --  REF_CLK_32K input (XTALOSC 32 kHz clock)
      Txclk_Source_0,
      --  tx_clk input (from SPDIF0_CLK_ROOT. See CCM.)
      Txclk_Source_1,
      --  SPDIF_EXT_CLK, from pads
      Txclk_Source_3,
      --  ipg_clk input (frequency divided)
      Txclk_Source_5,
      --  Reset value for the field
      Stc_Txclk_Source_Field_Reset)
     with Size => 3;
   for STC_TxClk_Source_Field use
     (Txclk_Source_0 => 0,
      Txclk_Source_1 => 1,
      Txclk_Source_3 => 3,
      Txclk_Source_5 => 5,
      Stc_Txclk_Source_Field_Reset => 7);

   --  system clock divider factor, 2~512.
   type STC_SYSCLK_DF_Field is
     (
      --  no clock signal
      Sysclk_Df_0,
      --  divider factor is 2
      Sysclk_Df_1,
      --  Reset value for the field
      Stc_Sysclk_Df_Field_Reset,
      --  divider factor is 512
      Sysclk_Df_511)
     with Size => 9;
   for STC_SYSCLK_DF_Field use
     (Sysclk_Df_0 => 0,
      Sysclk_Df_1 => 1,
      Stc_Sysclk_Df_Field_Reset => 65,
      Sysclk_Df_511 => 511);

   --  SPDIFTxClk Register
   type SPDIF_STC_Register is record
      --  Divider factor (1-128)
      TxClk_DF       : STC_TxClk_DF_Field := NRF_SVD.SPDIF.Txclk_Df_0;
      --  Spdif transfer clock enable. When data is going to be transfered,
      --  this bit should be set to1.
      tx_all_clk_en  : STC_tx_all_clk_en_Field :=
                        NRF_SVD.SPDIF.TX_ALL_CLK_EN_0;
      --  no description available
      TxClk_Source   : STC_TxClk_Source_Field := Stc_Txclk_Source_Field_Reset;
      --  system clock divider factor, 2~512.
      SYSCLK_DF      : STC_SYSCLK_DF_Field := Stc_Sysclk_Df_Field_Reset;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIF_STC_Register use record
      TxClk_DF       at 0 range 0 .. 6;
      tx_all_clk_en  at 0 range 7 .. 7;
      TxClk_Source   at 0 range 8 .. 10;
      SYSCLK_DF      at 0 range 11 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SPDIF_Disc is
     (
      C,
      S);

   --  SPDIF
   type SPDIF_Peripheral
     (Discriminent : SPDIF_Disc := C)
   is record
      --  SPDIF Configuration Register
      SCR    : aliased SPDIF_SCR_Register;
      --  CDText Control Register
      SRCD   : aliased SPDIF_SRCD_Register;
      --  PhaseConfig Register
      SRPC   : aliased SPDIF_SRPC_Register;
      --  InterruptEn Register
      SIE    : aliased SPDIF_SIE_Register;
      --  SPDIFRxLeft Register
      SRL    : aliased SPDIF_SRL_Register;
      --  SPDIFRxRight Register
      SRR    : aliased SPDIF_SRR_Register;
      --  SPDIFRxCChannel_h Register
      SRCSH  : aliased SPDIF_SRCSH_Register;
      --  SPDIFRxCChannel_l Register
      SRCSL  : aliased SPDIF_SRCSL_Register;
      --  UchannelRx Register
      SRU    : aliased SPDIF_SRU_Register;
      --  QchannelRx Register
      SRQ    : aliased SPDIF_SRQ_Register;
      --  SPDIFTxLeft Register
      STL    : aliased SPDIF_STL_Register;
      --  SPDIFTxRight Register
      STR    : aliased SPDIF_STR_Register;
      --  SPDIFTxCChannelCons_h Register
      STCSCH : aliased SPDIF_STCSCH_Register;
      --  SPDIFTxCChannelCons_l Register
      STCSCL : aliased SPDIF_STCSCL_Register;
      --  FreqMeas Register
      SRFM   : aliased SPDIF_SRFM_Register;
      --  SPDIFTxClk Register
      STC    : aliased SPDIF_STC_Register;
      case Discriminent is
         when C =>
            --  InterruptClear Register
            SIC : aliased SPDIF_SIC_Register;
         when S =>
            --  InterruptStat Register
            SIS : aliased SPDIF_SIS_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SPDIF_Peripheral use record
      SCR    at 16#0# range 0 .. 31;
      SRCD   at 16#4# range 0 .. 31;
      SRPC   at 16#8# range 0 .. 31;
      SIE    at 16#C# range 0 .. 31;
      SRL    at 16#14# range 0 .. 31;
      SRR    at 16#18# range 0 .. 31;
      SRCSH  at 16#1C# range 0 .. 31;
      SRCSL  at 16#20# range 0 .. 31;
      SRU    at 16#24# range 0 .. 31;
      SRQ    at 16#28# range 0 .. 31;
      STL    at 16#2C# range 0 .. 31;
      STR    at 16#30# range 0 .. 31;
      STCSCH at 16#34# range 0 .. 31;
      STCSCL at 16#38# range 0 .. 31;
      SRFM   at 16#44# range 0 .. 31;
      STC    at 16#50# range 0 .. 31;
      SIC    at 16#10# range 0 .. 31;
      SIS    at 16#10# range 0 .. 31;
   end record;

   --  SPDIF
   SPDIF_Periph : aliased SPDIF_Peripheral
     with Import, Address => System'To_Address (16#40380000#);

end NRF_SVD.SPDIF;
