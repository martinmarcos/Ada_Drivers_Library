--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKE06Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Freescale's Scalable Controller Area Network
package NRF_SVD.MSCAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Initialization Mode Request
   type CANCTL0_INITRQ_Field is
     (
      --  Normal operation.
      CANCTL0_INITRQ_Field_0,
      --  MSCAN in initialization mode.
      CANCTL0_INITRQ_Field_1)
     with Size => 1;
   for CANCTL0_INITRQ_Field use
     (CANCTL0_INITRQ_Field_0 => 0,
      CANCTL0_INITRQ_Field_1 => 1);

   --  Sleep Mode Request
   type CANCTL0_SLPRQ_Field is
     (
      --  Running - The MSCAN functions normally.
      CANCTL0_SLPRQ_Field_0,
      --  Sleep mode request - The MSCAN enters sleep mode when CAN bus idle.
      CANCTL0_SLPRQ_Field_1)
     with Size => 1;
   for CANCTL0_SLPRQ_Field use
     (CANCTL0_SLPRQ_Field_0 => 0,
      CANCTL0_SLPRQ_Field_1 => 1);

   --  WakeUp Enable
   type CANCTL0_WUPE_Field is
     (
      --  Wakeup disabled - The MSCAN ignores traffic on CAN.
      CANCTL0_WUPE_Field_0,
      --  Wakeup enabled - The MSCAN is able to restart.
      CANCTL0_WUPE_Field_1)
     with Size => 1;
   for CANCTL0_WUPE_Field use
     (CANCTL0_WUPE_Field_0 => 0,
      CANCTL0_WUPE_Field_1 => 1);

   --  Timer Enable
   type CANCTL0_TIME_Field is
     (
      --  Disable internal MSCAN timer.
      CANCTL0_TIME_Field_0,
      --  Enable internal MSCAN timer.
      CANCTL0_TIME_Field_1)
     with Size => 1;
   for CANCTL0_TIME_Field use
     (CANCTL0_TIME_Field_0 => 0,
      CANCTL0_TIME_Field_1 => 1);

   --  Synchronized Status
   type CANCTL0_SYNCH_Field is
     (
      --  MSCAN is not synchronized to the CAN bus.
      CANCTL0_SYNCH_Field_0,
      --  MSCAN is synchronized to the CAN bus.
      CANCTL0_SYNCH_Field_1)
     with Size => 1;
   for CANCTL0_SYNCH_Field use
     (CANCTL0_SYNCH_Field_0 => 0,
      CANCTL0_SYNCH_Field_1 => 1);

   --  CAN Stops in Wait Mode
   type CANCTL0_CSWAI_Field is
     (
      --  The module is not affected during wait mode.
      CANCTL0_CSWAI_Field_0,
      --  The module ceases to be clocked during wait mode.
      CANCTL0_CSWAI_Field_1)
     with Size => 1;
   for CANCTL0_CSWAI_Field use
     (CANCTL0_CSWAI_Field_0 => 0,
      CANCTL0_CSWAI_Field_1 => 1);

   --  Receiver Active Status
   type CANCTL0_RXACT_Field is
     (
      --  MSCAN is transmitting or idle.
      CANCTL0_RXACT_Field_0,
      --  MSCAN is receiving a message, including when arbitration is lost.
      CANCTL0_RXACT_Field_1)
     with Size => 1;
   for CANCTL0_RXACT_Field use
     (CANCTL0_RXACT_Field_0 => 0,
      CANCTL0_RXACT_Field_1 => 1);

   --  Received Frame Flag
   type CANCTL0_RXFRM_Field is
     (
      --  No valid message was received since last clearing this flag.
      CANCTL0_RXFRM_Field_0,
      --  A valid message was received since last clearing of this flag.
      CANCTL0_RXFRM_Field_1)
     with Size => 1;
   for CANCTL0_RXFRM_Field use
     (CANCTL0_RXFRM_Field_0 => 0,
      CANCTL0_RXFRM_Field_1 => 1);

   --  MSCAN Control Register 0
   type MSCAN_CANCTL0_Register is record
      --  Initialization Mode Request
      INITRQ : CANCTL0_INITRQ_Field := NRF_SVD.MSCAN.CANCTL0_INITRQ_Field_1;
      --  Sleep Mode Request
      SLPRQ  : CANCTL0_SLPRQ_Field := NRF_SVD.MSCAN.CANCTL0_SLPRQ_Field_0;
      --  WakeUp Enable
      WUPE   : CANCTL0_WUPE_Field := NRF_SVD.MSCAN.CANCTL0_WUPE_Field_0;
      --  Timer Enable
      TIME   : CANCTL0_TIME_Field := NRF_SVD.MSCAN.CANCTL0_TIME_Field_0;
      --  Read-only. Synchronized Status
      SYNCH  : CANCTL0_SYNCH_Field := NRF_SVD.MSCAN.CANCTL0_SYNCH_Field_0;
      --  CAN Stops in Wait Mode
      CSWAI  : CANCTL0_CSWAI_Field := NRF_SVD.MSCAN.CANCTL0_CSWAI_Field_0;
      --  Read-only. Receiver Active Status
      RXACT  : CANCTL0_RXACT_Field := NRF_SVD.MSCAN.CANCTL0_RXACT_Field_0;
      --  Received Frame Flag
      RXFRM  : CANCTL0_RXFRM_Field := NRF_SVD.MSCAN.CANCTL0_RXFRM_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANCTL0_Register use record
      INITRQ at 0 range 0 .. 0;
      SLPRQ  at 0 range 1 .. 1;
      WUPE   at 0 range 2 .. 2;
      TIME   at 0 range 3 .. 3;
      SYNCH  at 0 range 4 .. 4;
      CSWAI  at 0 range 5 .. 5;
      RXACT  at 0 range 6 .. 6;
      RXFRM  at 0 range 7 .. 7;
   end record;

   --  Initialization Mode Acknowledge
   type CANCTL1_INITAK_Field is
     (
      --  Running - The MSCAN operates normally.
      CANCTL1_INITAK_Field_0,
      --  Initialization mode active - The MSCAN has entered initialization
      --  mode.
      CANCTL1_INITAK_Field_1)
     with Size => 1;
   for CANCTL1_INITAK_Field use
     (CANCTL1_INITAK_Field_0 => 0,
      CANCTL1_INITAK_Field_1 => 1);

   --  Sleep Mode Acknowledge
   type CANCTL1_SLPAK_Field is
     (
      --  Running - The MSCAN operates normally.
      CANCTL1_SLPAK_Field_0,
      --  Sleep mode active - The MSCAN has entered sleep mode.
      CANCTL1_SLPAK_Field_1)
     with Size => 1;
   for CANCTL1_SLPAK_Field use
     (CANCTL1_SLPAK_Field_0 => 0,
      CANCTL1_SLPAK_Field_1 => 1);

   --  WakeUp Mode
   type CANCTL1_WUPM_Field is
     (
      --  MSCAN wakes on any dominant level on the CAN bus.
      CANCTL1_WUPM_Field_0,
      --  MSCAN wakes only in case of a dominant pulse on the CAN bus that has
      --  a length of Twup.
      CANCTL1_WUPM_Field_1)
     with Size => 1;
   for CANCTL1_WUPM_Field use
     (CANCTL1_WUPM_Field_0 => 0,
      CANCTL1_WUPM_Field_1 => 1);

   --  Bus-Off Recovery Mode
   type CANCTL1_BORM_Field is
     (
      --  Automatic bus-off recovery (see Bosch CAN 2.0A/B protocol
      --  specification).
      CANCTL1_BORM_Field_0,
      --  Bus-off recovery upon user request.
      CANCTL1_BORM_Field_1)
     with Size => 1;
   for CANCTL1_BORM_Field use
     (CANCTL1_BORM_Field_0 => 0,
      CANCTL1_BORM_Field_1 => 1);

   --  Listen Only Mode
   type CANCTL1_LISTEN_Field is
     (
      --  Normal operation.
      CANCTL1_LISTEN_Field_0,
      --  Listen only mode activated.
      CANCTL1_LISTEN_Field_1)
     with Size => 1;
   for CANCTL1_LISTEN_Field use
     (CANCTL1_LISTEN_Field_0 => 0,
      CANCTL1_LISTEN_Field_1 => 1);

   --  Loopback Self Test Mode
   type CANCTL1_LOOPB_Field is
     (
      --  Loopback self test disabled.
      CANCTL1_LOOPB_Field_0,
      --  Loopback self test enabled.
      CANCTL1_LOOPB_Field_1)
     with Size => 1;
   for CANCTL1_LOOPB_Field use
     (CANCTL1_LOOPB_Field_0 => 0,
      CANCTL1_LOOPB_Field_1 => 1);

   --  MSCAN Clock Source
   type CANCTL1_CLKSRC_Field is
     (
      --  MSCAN clock source is the oscillator clock.
      CANCTL1_CLKSRC_Field_0,
      --  MSCAN clock source is the bus clock.
      CANCTL1_CLKSRC_Field_1)
     with Size => 1;
   for CANCTL1_CLKSRC_Field use
     (CANCTL1_CLKSRC_Field_0 => 0,
      CANCTL1_CLKSRC_Field_1 => 1);

   --  MSCAN Enable
   type CANCTL1_CANE_Field is
     (
      --  MSCAN module is disabled.
      CANCTL1_CANE_Field_0,
      --  MSCAN module is enabled.
      CANCTL1_CANE_Field_1)
     with Size => 1;
   for CANCTL1_CANE_Field use
     (CANCTL1_CANE_Field_0 => 0,
      CANCTL1_CANE_Field_1 => 1);

   --  MSCAN Control Register 1
   type MSCAN_CANCTL1_Register is record
      --  Read-only. Initialization Mode Acknowledge
      INITAK : CANCTL1_INITAK_Field := NRF_SVD.MSCAN.CANCTL1_INITAK_Field_1;
      --  Read-only. Sleep Mode Acknowledge
      SLPAK  : CANCTL1_SLPAK_Field := NRF_SVD.MSCAN.CANCTL1_SLPAK_Field_0;
      --  WakeUp Mode
      WUPM   : CANCTL1_WUPM_Field := NRF_SVD.MSCAN.CANCTL1_WUPM_Field_0;
      --  Bus-Off Recovery Mode
      BORM   : CANCTL1_BORM_Field := NRF_SVD.MSCAN.CANCTL1_BORM_Field_0;
      --  Listen Only Mode
      LISTEN : CANCTL1_LISTEN_Field := NRF_SVD.MSCAN.CANCTL1_LISTEN_Field_1;
      --  Loopback Self Test Mode
      LOOPB  : CANCTL1_LOOPB_Field := NRF_SVD.MSCAN.CANCTL1_LOOPB_Field_0;
      --  MSCAN Clock Source
      CLKSRC : CANCTL1_CLKSRC_Field := NRF_SVD.MSCAN.CANCTL1_CLKSRC_Field_0;
      --  MSCAN Enable
      CANE   : CANCTL1_CANE_Field := NRF_SVD.MSCAN.CANCTL1_CANE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANCTL1_Register use record
      INITAK at 0 range 0 .. 0;
      SLPAK  at 0 range 1 .. 1;
      WUPM   at 0 range 2 .. 2;
      BORM   at 0 range 3 .. 3;
      LISTEN at 0 range 4 .. 4;
      LOOPB  at 0 range 5 .. 5;
      CLKSRC at 0 range 6 .. 6;
      CANE   at 0 range 7 .. 7;
   end record;

   --  Baud Rate Prescaler
   type CANBTR0_BRP_Field is
     (
      --  1
      CANBTR0_BRP_Field_000000,
      --  2
      CANBTR0_BRP_Field_000001,
      --  ......
      CANBTR0_BRP_Field_000010,
      --  ......
      CANBTR0_BRP_Field_000011,
      --  63
      CANBTR0_BRP_Field_111110,
      --  64
      CANBTR0_BRP_Field_111111)
     with Size => 6;
   for CANBTR0_BRP_Field use
     (CANBTR0_BRP_Field_000000 => 0,
      CANBTR0_BRP_Field_000001 => 1,
      CANBTR0_BRP_Field_000010 => 2,
      CANBTR0_BRP_Field_000011 => 3,
      CANBTR0_BRP_Field_111110 => 62,
      CANBTR0_BRP_Field_111111 => 63);

   --  Synchronization Jump Width
   type CANBTR0_SJW_Field is
     (
      --  1 Tq clock cycle.
      CANBTR0_SJW_Field_00,
      --  2 Tq clock cycles.
      CANBTR0_SJW_Field_01,
      --  3 Tq clock cycle.
      CANBTR0_SJW_Field_10,
      --  4 Tq clock cycles.
      CANBTR0_SJW_Field_11)
     with Size => 2;
   for CANBTR0_SJW_Field use
     (CANBTR0_SJW_Field_00 => 0,
      CANBTR0_SJW_Field_01 => 1,
      CANBTR0_SJW_Field_10 => 2,
      CANBTR0_SJW_Field_11 => 3);

   --  MSCAN Bus Timing Register 0
   type MSCAN_CANBTR0_Register is record
      --  Baud Rate Prescaler
      BRP : CANBTR0_BRP_Field := NRF_SVD.MSCAN.CANBTR0_BRP_Field_000000;
      --  Synchronization Jump Width
      SJW : CANBTR0_SJW_Field := NRF_SVD.MSCAN.CANBTR0_SJW_Field_00;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANBTR0_Register use record
      BRP at 0 range 0 .. 5;
      SJW at 0 range 6 .. 7;
   end record;

   --  Time Segment 1
   type CANBTR1_TSEG1_Field is
     (
      --  1 Tq clock cycle (not valid)
      CANBTR1_TSEG1_Field_0000,
      --  2 Tq clock cycles (not valid)
      CANBTR1_TSEG1_Field_0001,
      --  3 Tq clock cycles (not valid)
      CANBTR1_TSEG1_Field_0010,
      --  4 Tq clock cycles
      CANBTR1_TSEG1_Field_0011,
      --  15 Tq clock cycles
      CANBTR1_TSEG1_Field_1110,
      --  16 Tq clock cycles
      CANBTR1_TSEG1_Field_1111)
     with Size => 4;
   for CANBTR1_TSEG1_Field use
     (CANBTR1_TSEG1_Field_0000 => 0,
      CANBTR1_TSEG1_Field_0001 => 1,
      CANBTR1_TSEG1_Field_0010 => 2,
      CANBTR1_TSEG1_Field_0011 => 3,
      CANBTR1_TSEG1_Field_1110 => 14,
      CANBTR1_TSEG1_Field_1111 => 15);

   --  Time Segment 2
   type CANBTR1_TSEG2_Field is
     (
      --  1 Tq clock cycle (not valid)
      CANBTR1_TSEG2_Field_000,
      --  2 Tq clock cycles
      CANBTR1_TSEG2_Field_001,
      --  3 Tq clock cycles
      CANBTR1_TSEG2_Field_010,
      --  4 Tq clock cycles
      CANBTR1_TSEG2_Field_011,
      --  5 Tq clock cycles
      CANBTR1_TSEG2_Field_100,
      --  6 Tq clock cycles
      CANBTR1_TSEG2_Field_101,
      --  7 Tq clock cycles
      CANBTR1_TSEG2_Field_110,
      --  8 Tq clock cycles
      CANBTR1_TSEG2_Field_111)
     with Size => 3;
   for CANBTR1_TSEG2_Field use
     (CANBTR1_TSEG2_Field_000 => 0,
      CANBTR1_TSEG2_Field_001 => 1,
      CANBTR1_TSEG2_Field_010 => 2,
      CANBTR1_TSEG2_Field_011 => 3,
      CANBTR1_TSEG2_Field_100 => 4,
      CANBTR1_TSEG2_Field_101 => 5,
      CANBTR1_TSEG2_Field_110 => 6,
      CANBTR1_TSEG2_Field_111 => 7);

   --  Sampling
   type CANBTR1_SAMP_Field is
     (
      --  One sample per bit.
      CANBTR1_SAMP_Field_0,
      --  Three samples per bit. In this case, PHASE_SEG1 must be at least 2
      --  time quanta (Tq).
      CANBTR1_SAMP_Field_1)
     with Size => 1;
   for CANBTR1_SAMP_Field use
     (CANBTR1_SAMP_Field_0 => 0,
      CANBTR1_SAMP_Field_1 => 1);

   --  MSCAN Bus Timing Register 1
   type MSCAN_CANBTR1_Register is record
      --  Time Segment 1
      TSEG1 : CANBTR1_TSEG1_Field := NRF_SVD.MSCAN.CANBTR1_TSEG1_Field_0000;
      --  Time Segment 2
      TSEG2 : CANBTR1_TSEG2_Field := NRF_SVD.MSCAN.CANBTR1_TSEG2_Field_000;
      --  Sampling
      SAMP  : CANBTR1_SAMP_Field := NRF_SVD.MSCAN.CANBTR1_SAMP_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANBTR1_Register use record
      TSEG1 at 0 range 0 .. 3;
      TSEG2 at 0 range 4 .. 6;
      SAMP  at 0 range 7 .. 7;
   end record;

   --  Receive Buffer Full Flag
   type CANRFLG_RXF_Field is
     (
      --  No new message available within the RxFG.
      CANRFLG_RXF_Field_0,
      --  The receiver FIFO is not empty. A new message is available in the
      --  RxFG.
      CANRFLG_RXF_Field_1)
     with Size => 1;
   for CANRFLG_RXF_Field use
     (CANRFLG_RXF_Field_0 => 0,
      CANRFLG_RXF_Field_1 => 1);

   --  Overrun Interrupt Flag
   type CANRFLG_OVRIF_Field is
     (
      --  No data overrun condition.
      CANRFLG_OVRIF_Field_0,
      --  A data overrun detected.
      CANRFLG_OVRIF_Field_1)
     with Size => 1;
   for CANRFLG_OVRIF_Field use
     (CANRFLG_OVRIF_Field_0 => 0,
      CANRFLG_OVRIF_Field_1 => 1);

   --  Transmitter Status
   type CANRFLG_TSTAT_Field is
     (
      --  TxOK: 0<=transmit error counter<96
      CANRFLG_TSTAT_Field_00,
      --  TxWRN: 96<=transmit error counter<128
      CANRFLG_TSTAT_Field_01,
      --  TxERR: 128<=transmit error counter<256
      CANRFLG_TSTAT_Field_10,
      --  Bus-off: 256<=transmit error counter
      CANRFLG_TSTAT_Field_11)
     with Size => 2;
   for CANRFLG_TSTAT_Field use
     (CANRFLG_TSTAT_Field_00 => 0,
      CANRFLG_TSTAT_Field_01 => 1,
      CANRFLG_TSTAT_Field_10 => 2,
      CANRFLG_TSTAT_Field_11 => 3);

   --  Receiver Status
   type CANRFLG_RSTAT_Field is
     (
      --  RxOK: 0<=receive error counter<96
      CANRFLG_RSTAT_Field_00,
      --  RxWRN: 96<=receive error counter<128
      CANRFLG_RSTAT_Field_01,
      --  RxERR: 128<=receive error counter
      CANRFLG_RSTAT_Field_10,
      --  Bus-off: 256<=transmit error counter (Redundant Information for the
      --  most critical CAN bus status which is "bus-off". This only occurs if
      --  the Tx error counter exceeds a number of 255 errors. Bus-off affects
      --  the receiver state. As soon as the transmitter leaves its bus-off
      --  state the receiver state skips to RxOK too. Refer also to TSTAT[1:0]
      --  coding in this register. )
      CANRFLG_RSTAT_Field_11)
     with Size => 2;
   for CANRFLG_RSTAT_Field use
     (CANRFLG_RSTAT_Field_00 => 0,
      CANRFLG_RSTAT_Field_01 => 1,
      CANRFLG_RSTAT_Field_10 => 2,
      CANRFLG_RSTAT_Field_11 => 3);

   --  CAN Status Change Interrupt Flag
   type CANRFLG_CSCIF_Field is
     (
      --  No change in CAN bus status occurred since last interrupt.
      CANRFLG_CSCIF_Field_0,
      --  MSCAN changed current CAN bus status.
      CANRFLG_CSCIF_Field_1)
     with Size => 1;
   for CANRFLG_CSCIF_Field use
     (CANRFLG_CSCIF_Field_0 => 0,
      CANRFLG_CSCIF_Field_1 => 1);

   --  Wake-Up Interrupt Flag
   type CANRFLG_WUPIF_Field is
     (
      --  No wakeup activity observed while in sleep mode.
      CANRFLG_WUPIF_Field_0,
      --  MSCAN detected activity on the CAN bus and requested wakeup.
      CANRFLG_WUPIF_Field_1)
     with Size => 1;
   for CANRFLG_WUPIF_Field use
     (CANRFLG_WUPIF_Field_0 => 0,
      CANRFLG_WUPIF_Field_1 => 1);

   --  MSCAN Receiver Flag Register
   type MSCAN_CANRFLG_Register is record
      --  Receive Buffer Full Flag
      RXF   : CANRFLG_RXF_Field := NRF_SVD.MSCAN.CANRFLG_RXF_Field_0;
      --  Overrun Interrupt Flag
      OVRIF : CANRFLG_OVRIF_Field := NRF_SVD.MSCAN.CANRFLG_OVRIF_Field_0;
      --  Read-only. Transmitter Status
      TSTAT : CANRFLG_TSTAT_Field := NRF_SVD.MSCAN.CANRFLG_TSTAT_Field_00;
      --  Read-only. Receiver Status
      RSTAT : CANRFLG_RSTAT_Field := NRF_SVD.MSCAN.CANRFLG_RSTAT_Field_00;
      --  CAN Status Change Interrupt Flag
      CSCIF : CANRFLG_CSCIF_Field := NRF_SVD.MSCAN.CANRFLG_CSCIF_Field_0;
      --  Wake-Up Interrupt Flag
      WUPIF : CANRFLG_WUPIF_Field := NRF_SVD.MSCAN.CANRFLG_WUPIF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANRFLG_Register use record
      RXF   at 0 range 0 .. 0;
      OVRIF at 0 range 1 .. 1;
      TSTAT at 0 range 2 .. 3;
      RSTAT at 0 range 4 .. 5;
      CSCIF at 0 range 6 .. 6;
      WUPIF at 0 range 7 .. 7;
   end record;

   --  Receiver Full Interrupt Enable
   type CANRIER_RXFIE_Field is
     (
      --  No interrupt request is generated from this event.
      CANRIER_RXFIE_Field_0,
      --  A receive buffer full (successful message reception) event causes a
      --  receiver interrupt request.
      CANRIER_RXFIE_Field_1)
     with Size => 1;
   for CANRIER_RXFIE_Field use
     (CANRIER_RXFIE_Field_0 => 0,
      CANRIER_RXFIE_Field_1 => 1);

   --  Overrun Interrupt Enable
   type CANRIER_OVRIE_Field is
     (
      --  No interrupt request is generated from this event.
      CANRIER_OVRIE_Field_0,
      --  An overrun event causes an error interrupt request.
      CANRIER_OVRIE_Field_1)
     with Size => 1;
   for CANRIER_OVRIE_Field use
     (CANRIER_OVRIE_Field_0 => 0,
      CANRIER_OVRIE_Field_1 => 1);

   --  Transmitter Status Change Enable
   type CANRIER_TSTATE_Field is
     (
      --  Do not generate any CSCIF interrupt caused by transmitter state
      --  changes.
      CANRIER_TSTATE_Field_00,
      --  Generate CSCIF interrupt only if the transmitter enters or leaves
      --  "bus-off" state. Discard other transmitter state changes for
      --  generating CSCIF interrupt.
      CANRIER_TSTATE_Field_01,
      --  Generate CSCIF interrupt only if the transmitter enters or leaves
      --  "TxErr" or "bus-off" state. Discard other transmitter state changes
      --  for generating CSCIF interrupt.
      CANRIER_TSTATE_Field_10,
      --  Generate CSCIF interrupt on all state changes.
      CANRIER_TSTATE_Field_11)
     with Size => 2;
   for CANRIER_TSTATE_Field use
     (CANRIER_TSTATE_Field_00 => 0,
      CANRIER_TSTATE_Field_01 => 1,
      CANRIER_TSTATE_Field_10 => 2,
      CANRIER_TSTATE_Field_11 => 3);

   --  Receiver Status Change Enable
   type CANRIER_RSTATE_Field is
     (
      --  Do not generate any CSCIF interrupt caused by receiver state changes.
      CANRIER_RSTATE_Field_00,
      --  Generate CSCIF interrupt only if the receiver enters or leaves
      --  "bus-off" state. Discard other receiver state changes for generating
      --  CSCIF interrupt.
      CANRIER_RSTATE_Field_01,
      --  Generate CSCIF interrupt only if the receiver enters or leaves
      --  "RxErr" or "bus-off"Bus-off state is only defined for transmitters by
      --  the CAN standard (see Bosch CAN 2.0A/B protocol specification).
      --  Because the only possible state change for the transmitter from
      --  bus-off to TxOK also forces the receiver to skip its current state to
      --  RxOK, the coding of the RXSTAT[1:0] flags define an additional
      --  bus-off state for the receiver state. Discard other receiver state
      --  changes for generating CSCIF interrupt.
      CANRIER_RSTATE_Field_10,
      --  Generate CSCIF interrupt on all state changes.
      CANRIER_RSTATE_Field_11)
     with Size => 2;
   for CANRIER_RSTATE_Field use
     (CANRIER_RSTATE_Field_00 => 0,
      CANRIER_RSTATE_Field_01 => 1,
      CANRIER_RSTATE_Field_10 => 2,
      CANRIER_RSTATE_Field_11 => 3);

   --  CAN Status Change Interrupt Enable
   type CANRIER_CSCIE_Field is
     (
      --  No interrupt request is generated from this event.
      CANRIER_CSCIE_Field_0,
      --  A CAN Status Change event causes an error interrupt request.
      CANRIER_CSCIE_Field_1)
     with Size => 1;
   for CANRIER_CSCIE_Field use
     (CANRIER_CSCIE_Field_0 => 0,
      CANRIER_CSCIE_Field_1 => 1);

   --  WakeUp Interrupt Enable
   type CANRIER_WUPIE_Field is
     (
      --  No interrupt request is generated from this event.
      CANRIER_WUPIE_Field_0,
      --  A wake-up event causes a Wake-Up interrupt request.
      CANRIER_WUPIE_Field_1)
     with Size => 1;
   for CANRIER_WUPIE_Field use
     (CANRIER_WUPIE_Field_0 => 0,
      CANRIER_WUPIE_Field_1 => 1);

   --  MSCAN Receiver Interrupt Enable Register
   type MSCAN_CANRIER_Register is record
      --  Receiver Full Interrupt Enable
      RXFIE  : CANRIER_RXFIE_Field := NRF_SVD.MSCAN.CANRIER_RXFIE_Field_0;
      --  Overrun Interrupt Enable
      OVRIE  : CANRIER_OVRIE_Field := NRF_SVD.MSCAN.CANRIER_OVRIE_Field_0;
      --  Transmitter Status Change Enable
      TSTATE : CANRIER_TSTATE_Field := NRF_SVD.MSCAN.CANRIER_TSTATE_Field_00;
      --  Receiver Status Change Enable
      RSTATE : CANRIER_RSTATE_Field := NRF_SVD.MSCAN.CANRIER_RSTATE_Field_00;
      --  CAN Status Change Interrupt Enable
      CSCIE  : CANRIER_CSCIE_Field := NRF_SVD.MSCAN.CANRIER_CSCIE_Field_0;
      --  WakeUp Interrupt Enable
      WUPIE  : CANRIER_WUPIE_Field := NRF_SVD.MSCAN.CANRIER_WUPIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANRIER_Register use record
      RXFIE  at 0 range 0 .. 0;
      OVRIE  at 0 range 1 .. 1;
      TSTATE at 0 range 2 .. 3;
      RSTATE at 0 range 4 .. 5;
      CSCIE  at 0 range 6 .. 6;
      WUPIE  at 0 range 7 .. 7;
   end record;

   --  Transmitter Buffer Empty
   type CANTFLG_TXE_Field is
     (
      --  The associated message buffer is full (loaded with a message due for
      --  transmission).
      CANTFLG_TXE_Field_0,
      --  The associated message buffer is empty (not scheduled).
      CANTFLG_TXE_Field_1,
      --  Reset value for the field
      Cantflg_Txe_Field_Reset)
     with Size => 3;
   for CANTFLG_TXE_Field use
     (CANTFLG_TXE_Field_0 => 0,
      CANTFLG_TXE_Field_1 => 1,
      Cantflg_Txe_Field_Reset => 7);

   --  MSCAN Transmitter Flag Register
   type MSCAN_CANTFLG_Register is record
      --  Transmitter Buffer Empty
      TXE          : CANTFLG_TXE_Field := Cantflg_Txe_Field_Reset;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANTFLG_Register use record
      TXE          at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Transmitter Empty Interrupt Enable
   type CANTIER_TXEIE_Field is
     (
      --  No interrupt request is generated from this event.
      CANTIER_TXEIE_Field_0,
      --  A transmitter empty (transmit buffer available for transmission)
      --  event causes a transmitter empty interrupt request.
      CANTIER_TXEIE_Field_1)
     with Size => 3;
   for CANTIER_TXEIE_Field use
     (CANTIER_TXEIE_Field_0 => 0,
      CANTIER_TXEIE_Field_1 => 1);

   --  MSCAN Transmitter Interrupt Enable Register
   type MSCAN_CANTIER_Register is record
      --  Transmitter Empty Interrupt Enable
      TXEIE        : CANTIER_TXEIE_Field :=
                      NRF_SVD.MSCAN.CANTIER_TXEIE_Field_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANTIER_Register use record
      TXEIE        at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Abort Request
   type CANTARQ_ABTRQ_Field is
     (
      --  No abort request.
      CANTARQ_ABTRQ_Field_0,
      --  Abort request pending.
      CANTARQ_ABTRQ_Field_1)
     with Size => 3;
   for CANTARQ_ABTRQ_Field use
     (CANTARQ_ABTRQ_Field_0 => 0,
      CANTARQ_ABTRQ_Field_1 => 1);

   --  MSCAN Transmitter Message Abort Request Register
   type MSCAN_CANTARQ_Register is record
      --  Abort Request
      ABTRQ        : CANTARQ_ABTRQ_Field :=
                      NRF_SVD.MSCAN.CANTARQ_ABTRQ_Field_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANTARQ_Register use record
      ABTRQ        at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Abort Acknowledge
   type CANTAAK_ABTAK_Field is
     (
      --  The message was not aborted.
      CANTAAK_ABTAK_Field_0,
      --  The message was aborted.
      CANTAAK_ABTAK_Field_1)
     with Size => 3;
   for CANTAAK_ABTAK_Field use
     (CANTAAK_ABTAK_Field_0 => 0,
      CANTAAK_ABTAK_Field_1 => 1);

   --  MSCAN Transmitter Message Abort Acknowledge Register
   type MSCAN_CANTAAK_Register is record
      --  Read-only. Abort Acknowledge
      ABTAK        : CANTAAK_ABTAK_Field;
      --  unspecified
      Reserved_3_7 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANTAAK_Register use record
      ABTAK        at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Transmit Buffer Select
   type CANTBSEL_TX_Field is
     (
      --  The associated message buffer is deselected.
      CANTBSEL_TX_Field_0,
      --  The associated message buffer is selected, if lowest numbered bit.
      CANTBSEL_TX_Field_1)
     with Size => 3;
   for CANTBSEL_TX_Field use
     (CANTBSEL_TX_Field_0 => 0,
      CANTBSEL_TX_Field_1 => 1);

   --  MSCAN Transmit Buffer Selection Register
   type MSCAN_CANTBSEL_Register is record
      --  Transmit Buffer Select
      TX           : CANTBSEL_TX_Field := NRF_SVD.MSCAN.CANTBSEL_TX_Field_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANTBSEL_Register use record
      TX           at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Identifier Acceptance Hit Indicator
   type CANIDAC_IDHIT_Field is
     (
      --  Filter 0 hit.
      CANIDAC_IDHIT_Field_000,
      --  Filter 1 hit.
      CANIDAC_IDHIT_Field_001,
      --  Filter 2 hit.
      CANIDAC_IDHIT_Field_010,
      --  Filter 3 hit.
      CANIDAC_IDHIT_Field_011,
      --  Filter 4 hit.
      CANIDAC_IDHIT_Field_100,
      --  Filter 5 hit.
      CANIDAC_IDHIT_Field_101,
      --  Filter 6 hit.
      CANIDAC_IDHIT_Field_110,
      --  Filter 7 hit.
      CANIDAC_IDHIT_Field_111)
     with Size => 3;
   for CANIDAC_IDHIT_Field use
     (CANIDAC_IDHIT_Field_000 => 0,
      CANIDAC_IDHIT_Field_001 => 1,
      CANIDAC_IDHIT_Field_010 => 2,
      CANIDAC_IDHIT_Field_011 => 3,
      CANIDAC_IDHIT_Field_100 => 4,
      CANIDAC_IDHIT_Field_101 => 5,
      CANIDAC_IDHIT_Field_110 => 6,
      CANIDAC_IDHIT_Field_111 => 7);

   --  Identifier Acceptance Mode
   type CANIDAC_IDAM_Field is
     (
      --  Two 32-bit acceptance filters.
      CANIDAC_IDAM_Field_00,
      --  Four 16-bit acceptance filters.
      CANIDAC_IDAM_Field_01,
      --  Eight 8-bit acceptance filters.
      CANIDAC_IDAM_Field_10,
      --  Filter closed.
      CANIDAC_IDAM_Field_11)
     with Size => 2;
   for CANIDAC_IDAM_Field use
     (CANIDAC_IDAM_Field_00 => 0,
      CANIDAC_IDAM_Field_01 => 1,
      CANIDAC_IDAM_Field_10 => 2,
      CANIDAC_IDAM_Field_11 => 3);

   --  MSCAN Identifier Acceptance Control Register
   type MSCAN_CANIDAC_Register is record
      --  Read-only. Identifier Acceptance Hit Indicator
      IDHIT        : CANIDAC_IDHIT_Field :=
                      NRF_SVD.MSCAN.CANIDAC_IDHIT_Field_000;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Identifier Acceptance Mode
      IDAM         : CANIDAC_IDAM_Field :=
                      NRF_SVD.MSCAN.CANIDAC_IDAM_Field_00;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANIDAC_Register use record
      IDHIT        at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      IDAM         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Bus-off State Hold Until User Request
   type CANMISC_BOHOLD_Field is
     (
      --  Module is not bus-off or recovery has been requested by user in
      --  bus-off state.
      CANMISC_BOHOLD_Field_0,
      --  Module is bus-off and holds this state until user request.
      CANMISC_BOHOLD_Field_1)
     with Size => 1;
   for CANMISC_BOHOLD_Field use
     (CANMISC_BOHOLD_Field_0 => 0,
      CANMISC_BOHOLD_Field_1 => 1);

   --  MSCAN Miscellaneous Register
   type MSCAN_CANMISC_Register is record
      --  Bus-off State Hold Until User Request
      BOHOLD       : CANMISC_BOHOLD_Field :=
                      NRF_SVD.MSCAN.CANMISC_BOHOLD_Field_0;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_CANMISC_Register use record
      BOHOLD       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   subtype MSCAN_REIDR1_REID17_REID15_Field is HAL.UInt3;

   --  ID Extended
   type REIDR1_REIDE_Field is
     (
      --  Standard format (11 bit).
      REIDR1_REIDE_Field_0,
      --  Extended format (29 bit).
      REIDR1_REIDE_Field_1)
     with Size => 1;
   for REIDR1_REIDE_Field use
     (REIDR1_REIDE_Field_0 => 0,
      REIDR1_REIDE_Field_1 => 1);

   subtype MSCAN_REIDR1_REID20_REID18_Field is HAL.UInt3;

   --  Receive Extended Identifier Register 1
   type MSCAN_REIDR1_Register is record
      --  Read-only. Extended Format Identifier 17-15
      REID17_REID15 : MSCAN_REIDR1_REID17_REID15_Field;
      --  Read-only. ID Extended
      REIDE         : REIDR1_REIDE_Field;
      --  Read-only. Substitute Remote Request
      RSRR          : Boolean;
      --  Read-only. Extended Format Identifier 20-18
      REID20_REID18 : MSCAN_REIDR1_REID20_REID18_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_REIDR1_Register use record
      REID17_REID15 at 0 range 0 .. 2;
      REIDE         at 0 range 3 .. 3;
      RSRR          at 0 range 4 .. 4;
      REID20_REID18 at 0 range 5 .. 7;
   end record;

   --  ID Extended
   type RSIDR1_RSIDE_Field is
     (
      --  Standard format (11 bit).
      RSIDR1_RSIDE_Field_0,
      --  Extended format (29 bit).
      RSIDR1_RSIDE_Field_1)
     with Size => 1;
   for RSIDR1_RSIDE_Field use
     (RSIDR1_RSIDE_Field_0 => 0,
      RSIDR1_RSIDE_Field_1 => 1);

   --  Remote Transmission Request
   type RSIDR1_RSRTR_Field is
     (
      --  Data frame.
      RSIDR1_RSRTR_Field_0,
      --  Remote frame.
      RSIDR1_RSRTR_Field_1)
     with Size => 1;
   for RSIDR1_RSRTR_Field use
     (RSIDR1_RSRTR_Field_0 => 0,
      RSIDR1_RSRTR_Field_1 => 1);

   subtype MSCAN_RSIDR1_RSID2_RSID0_Field is HAL.UInt3;

   --  Receive Standard Identifier Register 1
   type MSCAN_RSIDR1_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3;
      --  Read-only. ID Extended
      RSIDE        : RSIDR1_RSIDE_Field;
      --  Read-only. Remote Transmission Request
      RSRTR        : RSIDR1_RSRTR_Field;
      --  Read-only. Standard Format Identifier 2-0
      RSID2_RSID0  : MSCAN_RSIDR1_RSID2_RSID0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_RSIDR1_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      RSIDE        at 0 range 3 .. 3;
      RSRTR        at 0 range 4 .. 4;
      RSID2_RSID0  at 0 range 5 .. 7;
   end record;

   --  Remote Transmission Request
   type REIDR3_RERTR_Field is
     (
      --  Data frame.
      REIDR3_RERTR_Field_0,
      --  Remote frame.
      REIDR3_RERTR_Field_1)
     with Size => 1;
   for REIDR3_RERTR_Field use
     (REIDR3_RERTR_Field_0 => 0,
      REIDR3_RERTR_Field_1 => 1);

   subtype MSCAN_REIDR3_REID6_REID0_Field is HAL.UInt7;

   --  Receive Extended Identifier Register 3
   type MSCAN_REIDR3_Register is record
      --  Read-only. Remote Transmission Request
      RERTR       : REIDR3_RERTR_Field;
      --  Read-only. Extended Format Identifier 6-0
      REID6_REID0 : MSCAN_REIDR3_REID6_REID0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_REIDR3_Register use record
      RERTR       at 0 range 0 .. 0;
      REID6_REID0 at 0 range 1 .. 7;
   end record;

   --  Receive Extended Data Segment Register N

   --  Receive Extended Data Segment Register N
   type MSCAN_REDSR_Registers is array (0 .. 7) of HAL.UInt8
     with Volatile;

   --  Data Length Code Bits
   type RDLR_RDLC_Field is
     (
      --  0
      RDLR_RDLC_Field_0000,
      --  1
      RDLR_RDLC_Field_0001,
      --  2
      RDLR_RDLC_Field_0010,
      --  3
      RDLR_RDLC_Field_0011,
      --  4
      RDLR_RDLC_Field_0100,
      --  5
      RDLR_RDLC_Field_0101,
      --  6
      RDLR_RDLC_Field_0110,
      --  7
      RDLR_RDLC_Field_0111,
      --  8
      RDLR_RDLC_Field_1000)
     with Size => 4;
   for RDLR_RDLC_Field use
     (RDLR_RDLC_Field_0000 => 0,
      RDLR_RDLC_Field_0001 => 1,
      RDLR_RDLC_Field_0010 => 2,
      RDLR_RDLC_Field_0011 => 3,
      RDLR_RDLC_Field_0100 => 4,
      RDLR_RDLC_Field_0101 => 5,
      RDLR_RDLC_Field_0110 => 6,
      RDLR_RDLC_Field_0111 => 7,
      RDLR_RDLC_Field_1000 => 8);

   --  Receive Data Length Register
   type MSCAN_RDLR_Register is record
      --  Read-only. Data Length Code Bits
      RDLC         : RDLR_RDLC_Field;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_RDLR_Register use record
      RDLC         at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype MSCAN_TEIDR1_TEID17_TEID15_Field is HAL.UInt3;

   --  ID Extended
   type TEIDR1_TEIDE_Field is
     (
      --  Standard format (11 bit).
      TEIDR1_TEIDE_Field_0,
      --  Extended format (29 bit).
      TEIDR1_TEIDE_Field_1)
     with Size => 1;
   for TEIDR1_TEIDE_Field use
     (TEIDR1_TEIDE_Field_0 => 0,
      TEIDR1_TEIDE_Field_1 => 1);

   subtype MSCAN_TEIDR1_TEID20_TEID18_Field is HAL.UInt3;

   --  Transmit Extended Identifier Register 1
   type MSCAN_TEIDR1_Register is record
      --  Extended Format Identifier 17-15
      TEID17_TEID15 : MSCAN_TEIDR1_TEID17_TEID15_Field := 16#0#;
      --  ID Extended
      TEIDE         : TEIDR1_TEIDE_Field :=
                       NRF_SVD.MSCAN.TEIDR1_TEIDE_Field_0;
      --  Substitute Remote Request
      TSRR          : Boolean := False;
      --  Extended Format Identifier 20-18
      TEID20_TEID18 : MSCAN_TEIDR1_TEID20_TEID18_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_TEIDR1_Register use record
      TEID17_TEID15 at 0 range 0 .. 2;
      TEIDE         at 0 range 3 .. 3;
      TSRR          at 0 range 4 .. 4;
      TEID20_TEID18 at 0 range 5 .. 7;
   end record;

   --  ID Extended
   type TSIDR1_TSIDE_Field is
     (
      --  Standard format (11 bit).
      TSIDR1_TSIDE_Field_0,
      --  Extended format (29 bit).
      TSIDR1_TSIDE_Field_1)
     with Size => 1;
   for TSIDR1_TSIDE_Field use
     (TSIDR1_TSIDE_Field_0 => 0,
      TSIDR1_TSIDE_Field_1 => 1);

   --  Remote Transmission Request
   type TSIDR1_TSRTR_Field is
     (
      --  Data frame.
      TSIDR1_TSRTR_Field_0,
      --  Remote frame.
      TSIDR1_TSRTR_Field_1)
     with Size => 1;
   for TSIDR1_TSRTR_Field use
     (TSIDR1_TSRTR_Field_0 => 0,
      TSIDR1_TSRTR_Field_1 => 1);

   subtype MSCAN_TSIDR1_TSID2_TSID0_Field is HAL.UInt3;

   --  Transmit Standard Identifier Register 1
   type MSCAN_TSIDR1_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  ID Extended
      TSIDE        : TSIDR1_TSIDE_Field := NRF_SVD.MSCAN.TSIDR1_TSIDE_Field_0;
      --  Remote Transmission Request
      TSRTR        : TSIDR1_TSRTR_Field := NRF_SVD.MSCAN.TSIDR1_TSRTR_Field_0;
      --  Standard Format Identifier 2-0
      TSID2_TSID0  : MSCAN_TSIDR1_TSID2_TSID0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_TSIDR1_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      TSIDE        at 0 range 3 .. 3;
      TSRTR        at 0 range 4 .. 4;
      TSID2_TSID0  at 0 range 5 .. 7;
   end record;

   --  Remote Transmission Request
   type TEIDR3_TERTR_Field is
     (
      --  Data frame.
      TEIDR3_TERTR_Field_0,
      --  Remote frame.
      TEIDR3_TERTR_Field_1)
     with Size => 1;
   for TEIDR3_TERTR_Field use
     (TEIDR3_TERTR_Field_0 => 0,
      TEIDR3_TERTR_Field_1 => 1);

   subtype MSCAN_TEIDR3_TEID6_TEID0_Field is HAL.UInt7;

   --  Transmit Extended Identifier Register 3
   type MSCAN_TEIDR3_Register is record
      --  Remote Transmission Request
      TERTR       : TEIDR3_TERTR_Field := NRF_SVD.MSCAN.TEIDR3_TERTR_Field_0;
      --  Extended Format Identifier 6-0
      TEID6_TEID0 : MSCAN_TEIDR3_TEID6_TEID0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_TEIDR3_Register use record
      TERTR       at 0 range 0 .. 0;
      TEID6_TEID0 at 0 range 1 .. 7;
   end record;

   --  Transmit Extended Data Segment Register N

   --  Transmit Extended Data Segment Register N
   type MSCAN_TEDSR_Registers is array (0 .. 7) of HAL.UInt8
     with Volatile;

   --  Data Length Code Bits
   type TDLR_TDLC_Field is
     (
      --  0
      TDLR_TDLC_Field_0000,
      --  1
      TDLR_TDLC_Field_0001,
      --  2
      TDLR_TDLC_Field_0010,
      --  3
      TDLR_TDLC_Field_0011,
      --  4
      TDLR_TDLC_Field_0100,
      --  5
      TDLR_TDLC_Field_0101,
      --  6
      TDLR_TDLC_Field_0110,
      --  7
      TDLR_TDLC_Field_0111,
      --  8
      TDLR_TDLC_Field_1000)
     with Size => 4;
   for TDLR_TDLC_Field use
     (TDLR_TDLC_Field_0000 => 0,
      TDLR_TDLC_Field_0001 => 1,
      TDLR_TDLC_Field_0010 => 2,
      TDLR_TDLC_Field_0011 => 3,
      TDLR_TDLC_Field_0100 => 4,
      TDLR_TDLC_Field_0101 => 5,
      TDLR_TDLC_Field_0110 => 6,
      TDLR_TDLC_Field_0111 => 7,
      TDLR_TDLC_Field_1000 => 8);

   --  Transmit Data Length Register
   type MSCAN_TDLR_Register is record
      --  Data Length Code Bits
      TDLC         : TDLR_TDLC_Field := NRF_SVD.MSCAN.TDLR_TDLC_Field_0000;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MSCAN_TDLR_Register use record
      TDLC         at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type MSCAN_Disc is
     (
      Eidr0,
      Sidr0,
      Eidr1,
      Sidr1);

   --  Freescale's Scalable Controller Area Network
   type MSCAN_Peripheral
     (Discriminent : MSCAN_Disc := Eidr0)
   is record
      --  MSCAN Control Register 0
      CANCTL0  : aliased MSCAN_CANCTL0_Register;
      --  MSCAN Control Register 1
      CANCTL1  : aliased MSCAN_CANCTL1_Register;
      --  MSCAN Bus Timing Register 0
      CANBTR0  : aliased MSCAN_CANBTR0_Register;
      --  MSCAN Bus Timing Register 1
      CANBTR1  : aliased MSCAN_CANBTR1_Register;
      --  MSCAN Receiver Flag Register
      CANRFLG  : aliased MSCAN_CANRFLG_Register;
      --  MSCAN Receiver Interrupt Enable Register
      CANRIER  : aliased MSCAN_CANRIER_Register;
      --  MSCAN Transmitter Flag Register
      CANTFLG  : aliased MSCAN_CANTFLG_Register;
      --  MSCAN Transmitter Interrupt Enable Register
      CANTIER  : aliased MSCAN_CANTIER_Register;
      --  MSCAN Transmitter Message Abort Request Register
      CANTARQ  : aliased MSCAN_CANTARQ_Register;
      --  MSCAN Transmitter Message Abort Acknowledge Register
      CANTAAK  : aliased MSCAN_CANTAAK_Register;
      --  MSCAN Transmit Buffer Selection Register
      CANTBSEL : aliased MSCAN_CANTBSEL_Register;
      --  MSCAN Identifier Acceptance Control Register
      CANIDAC  : aliased MSCAN_CANIDAC_Register;
      --  MSCAN Miscellaneous Register
      CANMISC  : aliased MSCAN_CANMISC_Register;
      --  MSCAN Receive Error Counter
      CANRXERR : aliased HAL.UInt8;
      --  MSCAN Transmit Error Counter
      CANTXERR : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of First Bank
      CANIDAR0 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of First Bank
      CANIDAR1 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of First Bank
      CANIDAR2 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of First Bank
      CANIDAR3 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of First Bank
      CANIDMR0 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of First Bank
      CANIDMR1 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of First Bank
      CANIDMR2 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of First Bank
      CANIDMR3 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of Second Bank
      CANIDAR4 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of Second Bank
      CANIDAR5 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of Second Bank
      CANIDAR6 : aliased HAL.UInt8;
      --  MSCAN Identifier Acceptance Register n of Second Bank
      CANIDAR7 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of Second Bank
      CANIDMR4 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of Second Bank
      CANIDMR5 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of Second Bank
      CANIDMR6 : aliased HAL.UInt8;
      --  MSCAN Identifier Mask Register n of Second Bank
      CANIDMR7 : aliased HAL.UInt8;
      --  Receive Extended Identifier Register 2
      REIDR2   : aliased HAL.UInt8;
      --  Receive Extended Identifier Register 3
      REIDR3   : aliased MSCAN_REIDR3_Register;
      --  Receive Extended Data Segment Register N
      REDSR    : aliased MSCAN_REDSR_Registers;
      --  Receive Data Length Register
      RDLR     : aliased MSCAN_RDLR_Register;
      --  Receive Time Stamp Register High
      RTSRH    : aliased HAL.UInt8;
      --  Receive Time Stamp Register Low
      RTSRL    : aliased HAL.UInt8;
      --  Transmit Extended Identifier Register 2
      TEIDR2   : aliased HAL.UInt8;
      --  Transmit Extended Identifier Register 3
      TEIDR3   : aliased MSCAN_TEIDR3_Register;
      --  Transmit Extended Data Segment Register N
      TEDSR    : aliased MSCAN_TEDSR_Registers;
      --  Transmit Data Length Register
      TDLR     : aliased MSCAN_TDLR_Register;
      --  Transmit Buffer Priority Register
      TBPR     : aliased HAL.UInt8;
      --  Transmit Time Stamp Register High
      TTSRH    : aliased HAL.UInt8;
      --  Transmit Time Stamp Register Low
      TTSRL    : aliased HAL.UInt8;
      case Discriminent is
         when Eidr0 =>
            --  Receive Extended Identifier Register 0
            REIDR0 : aliased HAL.UInt8;
            --  Transmit Extended Identifier Register 0
            TEIDR0 : aliased HAL.UInt8;
         when Sidr0 =>
            --  Receive Standard Identifier Register 0
            RSIDR0 : aliased HAL.UInt8;
            --  Transmit Standard Identifier Register 0
            TSIDR0 : aliased HAL.UInt8;
         when Eidr1 =>
            --  Receive Extended Identifier Register 1
            REIDR1 : aliased MSCAN_REIDR1_Register;
            --  Transmit Extended Identifier Register 1
            TEIDR1 : aliased MSCAN_TEIDR1_Register;
         when Sidr1 =>
            --  Receive Standard Identifier Register 1
            RSIDR1 : aliased MSCAN_RSIDR1_Register;
            --  Transmit Standard Identifier Register 1
            TSIDR1 : aliased MSCAN_TSIDR1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for MSCAN_Peripheral use record
      CANCTL0  at 16#0# range 0 .. 7;
      CANCTL1  at 16#1# range 0 .. 7;
      CANBTR0  at 16#2# range 0 .. 7;
      CANBTR1  at 16#3# range 0 .. 7;
      CANRFLG  at 16#4# range 0 .. 7;
      CANRIER  at 16#5# range 0 .. 7;
      CANTFLG  at 16#6# range 0 .. 7;
      CANTIER  at 16#7# range 0 .. 7;
      CANTARQ  at 16#8# range 0 .. 7;
      CANTAAK  at 16#9# range 0 .. 7;
      CANTBSEL at 16#A# range 0 .. 7;
      CANIDAC  at 16#B# range 0 .. 7;
      CANMISC  at 16#D# range 0 .. 7;
      CANRXERR at 16#E# range 0 .. 7;
      CANTXERR at 16#F# range 0 .. 7;
      CANIDAR0 at 16#10# range 0 .. 7;
      CANIDAR1 at 16#11# range 0 .. 7;
      CANIDAR2 at 16#12# range 0 .. 7;
      CANIDAR3 at 16#13# range 0 .. 7;
      CANIDMR0 at 16#14# range 0 .. 7;
      CANIDMR1 at 16#15# range 0 .. 7;
      CANIDMR2 at 16#16# range 0 .. 7;
      CANIDMR3 at 16#17# range 0 .. 7;
      CANIDAR4 at 16#18# range 0 .. 7;
      CANIDAR5 at 16#19# range 0 .. 7;
      CANIDAR6 at 16#1A# range 0 .. 7;
      CANIDAR7 at 16#1B# range 0 .. 7;
      CANIDMR4 at 16#1C# range 0 .. 7;
      CANIDMR5 at 16#1D# range 0 .. 7;
      CANIDMR6 at 16#1E# range 0 .. 7;
      CANIDMR7 at 16#1F# range 0 .. 7;
      REIDR2   at 16#22# range 0 .. 7;
      REIDR3   at 16#23# range 0 .. 7;
      REDSR    at 16#24# range 0 .. 63;
      RDLR     at 16#2C# range 0 .. 7;
      RTSRH    at 16#2E# range 0 .. 7;
      RTSRL    at 16#2F# range 0 .. 7;
      TEIDR2   at 16#32# range 0 .. 7;
      TEIDR3   at 16#33# range 0 .. 7;
      TEDSR    at 16#34# range 0 .. 63;
      TDLR     at 16#3C# range 0 .. 7;
      TBPR     at 16#3D# range 0 .. 7;
      TTSRH    at 16#3E# range 0 .. 7;
      TTSRL    at 16#3F# range 0 .. 7;
      REIDR0   at 16#20# range 0 .. 7;
      TEIDR0   at 16#30# range 0 .. 7;
      RSIDR0   at 16#20# range 0 .. 7;
      TSIDR0   at 16#30# range 0 .. 7;
      REIDR1   at 16#21# range 0 .. 7;
      TEIDR1   at 16#31# range 0 .. 7;
      RSIDR1   at 16#21# range 0 .. 7;
      TSIDR1   at 16#31# range 0 .. 7;
   end record;

   --  Freescale's Scalable Controller Area Network
   MSCAN_Periph : aliased MSCAN_Peripheral
     with Import, Address => MSCAN_Base;

end NRF_SVD.MSCAN;
