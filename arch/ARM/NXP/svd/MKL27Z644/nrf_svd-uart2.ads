--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKL27Z644.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Serial Communication Interface
package NRF_SVD.UART2 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype UART2_BDH_SBR_Field is HAL.UInt5;

   --  RxD Input Active Edge Interrupt Enable
   type BDH_RXEDGIE_Field is
     (
      --  Hardware interrupts from RXEDGIF disabled using polling.
      BDH_RXEDGIE_Field_0,
      --  RXEDGIF interrupt request enabled.
      BDH_RXEDGIE_Field_1)
     with Size => 1;
   for BDH_RXEDGIE_Field use
     (BDH_RXEDGIE_Field_0 => 0,
      BDH_RXEDGIE_Field_1 => 1);

   --  UART Baud Rate Registers: High
   type UART2_BDH_Register is record
      --  UART Baud Rate Bits
      SBR          : UART2_BDH_SBR_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  RxD Input Active Edge Interrupt Enable
      RXEDGIE      : BDH_RXEDGIE_Field := NRF_SVD.UART2.BDH_RXEDGIE_Field_0;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_BDH_Register use record
      SBR          at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      RXEDGIE      at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Parity Type
   type C1_PT_Field is
     (
      --  Even parity.
      C1_PT_Field_0,
      --  Odd parity.
      C1_PT_Field_1)
     with Size => 1;
   for C1_PT_Field use
     (C1_PT_Field_0 => 0,
      C1_PT_Field_1 => 1);

   --  Parity Enable
   type C1_PE_Field is
     (
      --  Parity function disabled.
      C1_PE_Field_0,
      --  Parity function enabled.
      C1_PE_Field_1)
     with Size => 1;
   for C1_PE_Field use
     (C1_PE_Field_0 => 0,
      C1_PE_Field_1 => 1);

   --  Idle Line Type Select
   type C1_ILT_Field is
     (
      --  Idle character bit count starts after start bit.
      C1_ILT_Field_0,
      --  Idle character bit count starts after stop bit.
      C1_ILT_Field_1)
     with Size => 1;
   for C1_ILT_Field use
     (C1_ILT_Field_0 => 0,
      C1_ILT_Field_1 => 1);

   --  Receiver Wakeup Method Select
   type C1_WAKE_Field is
     (
      --  Idle line wakeup.
      C1_WAKE_Field_0,
      --  Address mark wakeup.
      C1_WAKE_Field_1)
     with Size => 1;
   for C1_WAKE_Field use
     (C1_WAKE_Field_0 => 0,
      C1_WAKE_Field_1 => 1);

   --  9-bit or 8-bit Mode Select
   type C1_M_Field is
     (
      --  Normal-start + 8 data bits (MSB/LSB first as determined by MSBF) +
      --  stop.
      C1_M_Field_0,
      --  Use-start + 9 data bits (MSB/LSB first as determined by MSBF) + stop.
      C1_M_Field_1)
     with Size => 1;
   for C1_M_Field use
     (C1_M_Field_0 => 0,
      C1_M_Field_1 => 1);

   --  Receiver Source Select
   type C1_RSRC_Field is
     (
      --  Selects internal loop back mode. The receiver input is internally
      --  connected to transmitter output.
      C1_RSRC_Field_0,
      --  Single wire UART mode where the receiver input is connected to the
      --  transmit pin input signal.
      C1_RSRC_Field_1)
     with Size => 1;
   for C1_RSRC_Field use
     (C1_RSRC_Field_0 => 0,
      C1_RSRC_Field_1 => 1);

   --  Loop Mode Select
   type C1_LOOPS_Field is
     (
      --  Normal operation.
      C1_LOOPS_Field_0,
      --  Loop mode where transmitter output is internally connected to
      --  receiver input. The receiver input is determined by RSRC.
      C1_LOOPS_Field_1)
     with Size => 1;
   for C1_LOOPS_Field use
     (C1_LOOPS_Field_0 => 0,
      C1_LOOPS_Field_1 => 1);

   --  UART Control Register 1
   type UART2_C1_Register is record
      --  Parity Type
      PT           : C1_PT_Field := NRF_SVD.UART2.C1_PT_Field_0;
      --  Parity Enable
      PE           : C1_PE_Field := NRF_SVD.UART2.C1_PE_Field_0;
      --  Idle Line Type Select
      ILT          : C1_ILT_Field := NRF_SVD.UART2.C1_ILT_Field_0;
      --  Receiver Wakeup Method Select
      WAKE         : C1_WAKE_Field := NRF_SVD.UART2.C1_WAKE_Field_0;
      --  9-bit or 8-bit Mode Select
      M            : C1_M_Field := NRF_SVD.UART2.C1_M_Field_0;
      --  Receiver Source Select
      RSRC         : C1_RSRC_Field := NRF_SVD.UART2.C1_RSRC_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Loop Mode Select
      LOOPS        : C1_LOOPS_Field := NRF_SVD.UART2.C1_LOOPS_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_C1_Register use record
      PT           at 0 range 0 .. 0;
      PE           at 0 range 1 .. 1;
      ILT          at 0 range 2 .. 2;
      WAKE         at 0 range 3 .. 3;
      M            at 0 range 4 .. 4;
      RSRC         at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      LOOPS        at 0 range 7 .. 7;
   end record;

   --  Send Break
   type C2_SBK_Field is
     (
      --  Normal transmitter operation.
      C2_SBK_Field_0,
      --  Queue break characters to be sent.
      C2_SBK_Field_1)
     with Size => 1;
   for C2_SBK_Field use
     (C2_SBK_Field_0 => 0,
      C2_SBK_Field_1 => 1);

   --  Receiver Wakeup Control
   type C2_RWU_Field is
     (
      --  Normal operation.
      C2_RWU_Field_0,
      --  RWU enables the wakeup function and inhibits further receiver
      --  interrupt requests. Normally, hardware wakes the receiver by
      --  automatically clearing RWU.
      C2_RWU_Field_1)
     with Size => 1;
   for C2_RWU_Field use
     (C2_RWU_Field_0 => 0,
      C2_RWU_Field_1 => 1);

   --  Receiver Enable
   type C2_RE_Field is
     (
      --  Receiver off.
      C2_RE_Field_0,
      --  Receiver on.
      C2_RE_Field_1)
     with Size => 1;
   for C2_RE_Field use
     (C2_RE_Field_0 => 0,
      C2_RE_Field_1 => 1);

   --  Transmitter Enable
   type C2_TE_Field is
     (
      --  Transmitter off.
      C2_TE_Field_0,
      --  Transmitter on.
      C2_TE_Field_1)
     with Size => 1;
   for C2_TE_Field use
     (C2_TE_Field_0 => 0,
      C2_TE_Field_1 => 1);

   --  Idle Line Interrupt Enable
   type C2_ILIE_Field is
     (
      --  IDLE interrupt requests disabled.
      C2_ILIE_Field_0,
      --  IDLE interrupt requests enabled.
      C2_ILIE_Field_1)
     with Size => 1;
   for C2_ILIE_Field use
     (C2_ILIE_Field_0 => 0,
      C2_ILIE_Field_1 => 1);

   --  Receiver Full Interrupt or DMA Transfer Enable
   type C2_RIE_Field is
     (
      --  RDRF interrupt and DMA transfer requests disabled.
      C2_RIE_Field_0,
      --  RDRF interrupt or DMA transfer requests enabled.
      C2_RIE_Field_1)
     with Size => 1;
   for C2_RIE_Field use
     (C2_RIE_Field_0 => 0,
      C2_RIE_Field_1 => 1);

   --  Transmission Complete Interrupt Enable
   type C2_TCIE_Field is
     (
      --  TC interrupt requests disabled.
      C2_TCIE_Field_0,
      --  TC interrupt requests enabled.
      C2_TCIE_Field_1)
     with Size => 1;
   for C2_TCIE_Field use
     (C2_TCIE_Field_0 => 0,
      C2_TCIE_Field_1 => 1);

   --  Transmitter Interrupt or DMA Transfer Enable.
   type C2_TIE_Field is
     (
      --  TDRE interrupt and DMA transfer requests disabled.
      C2_TIE_Field_0,
      --  TDRE interrupt or DMA transfer requests enabled.
      C2_TIE_Field_1)
     with Size => 1;
   for C2_TIE_Field use
     (C2_TIE_Field_0 => 0,
      C2_TIE_Field_1 => 1);

   --  UART Control Register 2
   type UART2_C2_Register is record
      --  Send Break
      SBK  : C2_SBK_Field := NRF_SVD.UART2.C2_SBK_Field_0;
      --  Receiver Wakeup Control
      RWU  : C2_RWU_Field := NRF_SVD.UART2.C2_RWU_Field_0;
      --  Receiver Enable
      RE   : C2_RE_Field := NRF_SVD.UART2.C2_RE_Field_0;
      --  Transmitter Enable
      TE   : C2_TE_Field := NRF_SVD.UART2.C2_TE_Field_0;
      --  Idle Line Interrupt Enable
      ILIE : C2_ILIE_Field := NRF_SVD.UART2.C2_ILIE_Field_0;
      --  Receiver Full Interrupt or DMA Transfer Enable
      RIE  : C2_RIE_Field := NRF_SVD.UART2.C2_RIE_Field_0;
      --  Transmission Complete Interrupt Enable
      TCIE : C2_TCIE_Field := NRF_SVD.UART2.C2_TCIE_Field_0;
      --  Transmitter Interrupt or DMA Transfer Enable.
      TIE  : C2_TIE_Field := NRF_SVD.UART2.C2_TIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_C2_Register use record
      SBK  at 0 range 0 .. 0;
      RWU  at 0 range 1 .. 1;
      RE   at 0 range 2 .. 2;
      TE   at 0 range 3 .. 3;
      ILIE at 0 range 4 .. 4;
      RIE  at 0 range 5 .. 5;
      TCIE at 0 range 6 .. 6;
      TIE  at 0 range 7 .. 7;
   end record;

   --  Parity Error Flag
   type S1_PF_Field is
     (
      --  No parity error detected.
      S1_PF_Field_0,
      --  Parity error.
      S1_PF_Field_1)
     with Size => 1;
   for S1_PF_Field use
     (S1_PF_Field_0 => 0,
      S1_PF_Field_1 => 1);

   --  Framing Error Flag
   type S1_FE_Field is
     (
      --  No framing error detected.
      S1_FE_Field_0,
      --  Framing error.
      S1_FE_Field_1)
     with Size => 1;
   for S1_FE_Field use
     (S1_FE_Field_0 => 0,
      S1_FE_Field_1 => 1);

   --  Noise Flag
   type S1_NF_Field is
     (
      --  No noise detected.
      S1_NF_Field_0,
      --  Noise detected in the received character in D.
      S1_NF_Field_1)
     with Size => 1;
   for S1_NF_Field use
     (S1_NF_Field_0 => 0,
      S1_NF_Field_1 => 1);

   --  Receiver Overrun Flag
   type S1_OR_Field is
     (
      --  No overrun has occurred since the last time the flag was cleared.
      S1_OR_Field_0,
      --  Overrun has occurred or the overrun flag has not been cleared since
      --  the last overrun occured.
      S1_OR_Field_1)
     with Size => 1;
   for S1_OR_Field use
     (S1_OR_Field_0 => 0,
      S1_OR_Field_1 => 1);

   --  Idle Line Flag
   type S1_IDLE_Field is
     (
      --  Receiver input is either active now or has never become active since
      --  the IDLE flag was last cleared.
      S1_IDLE_Field_0,
      --  Receiver input has become idle or the flag has not been cleared since
      --  it last asserted.
      S1_IDLE_Field_1)
     with Size => 1;
   for S1_IDLE_Field use
     (S1_IDLE_Field_0 => 0,
      S1_IDLE_Field_1 => 1);

   --  Receive Data Register Full Flag
   type S1_RDRF_Field is
     (
      --  Receive data buffer is empty.
      S1_RDRF_Field_0,
      --  Receive data buffer is full.
      S1_RDRF_Field_1)
     with Size => 1;
   for S1_RDRF_Field use
     (S1_RDRF_Field_0 => 0,
      S1_RDRF_Field_1 => 1);

   --  Transmit Complete Flag
   type S1_TC_Field is
     (
      --  Transmitter active (sending data, a preamble, or a break).
      S1_TC_Field_0,
      --  Transmitter idle (transmission activity complete).
      S1_TC_Field_1)
     with Size => 1;
   for S1_TC_Field use
     (S1_TC_Field_0 => 0,
      S1_TC_Field_1 => 1);

   --  Transmit Data Register Empty Flag
   type S1_TDRE_Field is
     (
      --  Transmit data buffer is full.
      S1_TDRE_Field_0,
      --  Transmit data buffer is empty.
      S1_TDRE_Field_1)
     with Size => 1;
   for S1_TDRE_Field use
     (S1_TDRE_Field_0 => 0,
      S1_TDRE_Field_1 => 1);

   --  UART Status Register 1
   type UART2_S1_Register is record
      --  Read-only. Parity Error Flag
      PF   : S1_PF_Field;
      --  Read-only. Framing Error Flag
      FE   : S1_FE_Field;
      --  Read-only. Noise Flag
      NF   : S1_NF_Field;
      --  Read-only. Receiver Overrun Flag
      OR_k : S1_OR_Field;
      --  Read-only. Idle Line Flag
      IDLE : S1_IDLE_Field;
      --  Read-only. Receive Data Register Full Flag
      RDRF : S1_RDRF_Field;
      --  Read-only. Transmit Complete Flag
      TC   : S1_TC_Field;
      --  Read-only. Transmit Data Register Empty Flag
      TDRE : S1_TDRE_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_S1_Register use record
      PF   at 0 range 0 .. 0;
      FE   at 0 range 1 .. 1;
      NF   at 0 range 2 .. 2;
      OR_k at 0 range 3 .. 3;
      IDLE at 0 range 4 .. 4;
      RDRF at 0 range 5 .. 5;
      TC   at 0 range 6 .. 6;
      TDRE at 0 range 7 .. 7;
   end record;

   --  Receiver Active Flag
   type S2_RAF_Field is
     (
      --  UART receiver idle/inactive waiting for a start bit.
      S2_RAF_Field_0,
      --  UART receiver active, RxD input not idle.
      S2_RAF_Field_1)
     with Size => 1;
   for S2_RAF_Field use
     (S2_RAF_Field_0 => 0,
      S2_RAF_Field_1 => 1);

   --  Break Transmit Character Length
   type S2_BRK13_Field is
     (
      --  Break character is 10, 11, or 12 bits long.
      S2_BRK13_Field_0,
      --  Break character is 13 or 14 bits long.
      S2_BRK13_Field_1)
     with Size => 1;
   for S2_BRK13_Field use
     (S2_BRK13_Field_0 => 0,
      S2_BRK13_Field_1 => 1);

   --  Receive Wakeup Idle Detect
   type S2_RWUID_Field is
     (
      --  S1[IDLE] is not set upon detection of an idle character.
      S2_RWUID_Field_0,
      --  S1[IDLE] is set upon detection of an idle character.
      S2_RWUID_Field_1)
     with Size => 1;
   for S2_RWUID_Field use
     (S2_RWUID_Field_0 => 0,
      S2_RWUID_Field_1 => 1);

   --  Receive Data Inversion
   type S2_RXINV_Field is
     (
      --  Receive data is not inverted.
      S2_RXINV_Field_0,
      --  Receive data is inverted.
      S2_RXINV_Field_1)
     with Size => 1;
   for S2_RXINV_Field use
     (S2_RXINV_Field_0 => 0,
      S2_RXINV_Field_1 => 1);

   --  Most Significant Bit First
   type S2_MSBF_Field is
     (
      --  LSB (bit0) is the first bit that is transmitted following the start
      --  bit. Further, the first bit received after the start bit is
      --  identified as bit0.
      S2_MSBF_Field_0,
      --  MSB (bit8, bit7 or bit6) is the first bit that is transmitted
      --  following the start bit, depending on the setting of C1[M] and
      --  C1[PE]. Further, the first bit received after the start bit is
      --  identified as bit8, bit7, or bit6, depending on the setting of C1[M]
      --  and C1[PE].
      S2_MSBF_Field_1)
     with Size => 1;
   for S2_MSBF_Field use
     (S2_MSBF_Field_0 => 0,
      S2_MSBF_Field_1 => 1);

   --  RxD Pin Active Edge Interrupt Flag
   type S2_RXEDGIF_Field is
     (
      --  No active edge on the receive pin has occurred.
      S2_RXEDGIF_Field_0,
      --  An active edge on the receive pin has occurred.
      S2_RXEDGIF_Field_1)
     with Size => 1;
   for S2_RXEDGIF_Field use
     (S2_RXEDGIF_Field_0 => 0,
      S2_RXEDGIF_Field_1 => 1);

   --  UART Status Register 2
   type UART2_S2_Register is record
      --  Read-only. Receiver Active Flag
      RAF          : S2_RAF_Field := NRF_SVD.UART2.S2_RAF_Field_0;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Break Transmit Character Length
      BRK13        : S2_BRK13_Field := NRF_SVD.UART2.S2_BRK13_Field_0;
      --  Receive Wakeup Idle Detect
      RWUID        : S2_RWUID_Field := NRF_SVD.UART2.S2_RWUID_Field_0;
      --  Receive Data Inversion
      RXINV        : S2_RXINV_Field := NRF_SVD.UART2.S2_RXINV_Field_0;
      --  Most Significant Bit First
      MSBF         : S2_MSBF_Field := NRF_SVD.UART2.S2_MSBF_Field_0;
      --  RxD Pin Active Edge Interrupt Flag
      RXEDGIF      : S2_RXEDGIF_Field := NRF_SVD.UART2.S2_RXEDGIF_Field_0;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_S2_Register use record
      RAF          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      BRK13        at 0 range 2 .. 2;
      RWUID        at 0 range 3 .. 3;
      RXINV        at 0 range 4 .. 4;
      MSBF         at 0 range 5 .. 5;
      RXEDGIF      at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Parity Error Interrupt Enable
   type C3_PEIE_Field is
     (
      --  PF interrupt requests are disabled.
      C3_PEIE_Field_0,
      --  PF interrupt requests are enabled.
      C3_PEIE_Field_1)
     with Size => 1;
   for C3_PEIE_Field use
     (C3_PEIE_Field_0 => 0,
      C3_PEIE_Field_1 => 1);

   --  Framing Error Interrupt Enable
   type C3_FEIE_Field is
     (
      --  FE interrupt requests are disabled.
      C3_FEIE_Field_0,
      --  FE interrupt requests are enabled.
      C3_FEIE_Field_1)
     with Size => 1;
   for C3_FEIE_Field use
     (C3_FEIE_Field_0 => 0,
      C3_FEIE_Field_1 => 1);

   --  Noise Error Interrupt Enable
   type C3_NEIE_Field is
     (
      --  NF interrupt requests are disabled.
      C3_NEIE_Field_0,
      --  NF interrupt requests are enabled.
      C3_NEIE_Field_1)
     with Size => 1;
   for C3_NEIE_Field use
     (C3_NEIE_Field_0 => 0,
      C3_NEIE_Field_1 => 1);

   --  Overrun Error Interrupt Enable
   type C3_ORIE_Field is
     (
      --  OR interrupts are disabled.
      C3_ORIE_Field_0,
      --  OR interrupt requests are enabled.
      C3_ORIE_Field_1)
     with Size => 1;
   for C3_ORIE_Field use
     (C3_ORIE_Field_0 => 0,
      C3_ORIE_Field_1 => 1);

   --  Transmit Data Inversion.
   type C3_TXINV_Field is
     (
      --  Transmit data is not inverted.
      C3_TXINV_Field_0,
      --  Transmit data is inverted.
      C3_TXINV_Field_1)
     with Size => 1;
   for C3_TXINV_Field use
     (C3_TXINV_Field_0 => 0,
      C3_TXINV_Field_1 => 1);

   --  Transmitter Pin Data Direction in Single-Wire mode
   type C3_TXDIR_Field is
     (
      --  TXD pin is an input in single wire mode.
      C3_TXDIR_Field_0,
      --  TXD pin is an output in single wire mode.
      C3_TXDIR_Field_1)
     with Size => 1;
   for C3_TXDIR_Field use
     (C3_TXDIR_Field_0 => 0,
      C3_TXDIR_Field_1 => 1);

   --  UART Control Register 3
   type UART2_C3_Register is record
      --  Parity Error Interrupt Enable
      PEIE  : C3_PEIE_Field := NRF_SVD.UART2.C3_PEIE_Field_0;
      --  Framing Error Interrupt Enable
      FEIE  : C3_FEIE_Field := NRF_SVD.UART2.C3_FEIE_Field_0;
      --  Noise Error Interrupt Enable
      NEIE  : C3_NEIE_Field := NRF_SVD.UART2.C3_NEIE_Field_0;
      --  Overrun Error Interrupt Enable
      ORIE  : C3_ORIE_Field := NRF_SVD.UART2.C3_ORIE_Field_0;
      --  Transmit Data Inversion.
      TXINV : C3_TXINV_Field := NRF_SVD.UART2.C3_TXINV_Field_0;
      --  Transmitter Pin Data Direction in Single-Wire mode
      TXDIR : C3_TXDIR_Field := NRF_SVD.UART2.C3_TXDIR_Field_0;
      --  Transmit Bit 8
      T8    : Boolean := False;
      --  Read-only. Received Bit 8
      R8    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_C3_Register use record
      PEIE  at 0 range 0 .. 0;
      FEIE  at 0 range 1 .. 1;
      NEIE  at 0 range 2 .. 2;
      ORIE  at 0 range 3 .. 3;
      TXINV at 0 range 4 .. 4;
      TXDIR at 0 range 5 .. 5;
      T8    at 0 range 6 .. 6;
      R8    at 0 range 7 .. 7;
   end record;

   subtype UART2_C4_BRFA_Field is HAL.UInt5;

   --  10-bit Mode select
   type C4_M10_Field is
     (
      --  The parity bit is the ninth bit in the serial transmission.
      C4_M10_Field_0,
      --  The parity bit is the tenth bit in the serial transmission.
      C4_M10_Field_1)
     with Size => 1;
   for C4_M10_Field use
     (C4_M10_Field_0 => 0,
      C4_M10_Field_1 => 1);

   --  Match Address Mode Enable 2
   type C4_MAEN2_Field is
     (
      --  All data received is transferred to the data buffer if MAEN1 is
      --  cleared.
      C4_MAEN2_Field_0,
      --  All data received with the most significant bit cleared, is
      --  discarded. All data received with the most significant bit set, is
      --  compared with contents of MA2 register. If no match occurs, the data
      --  is discarded. If a match occurs, data is transferred to the data
      --  buffer. This field must be cleared when C7816[ISO7816E] is
      --  set/enabled.
      C4_MAEN2_Field_1)
     with Size => 1;
   for C4_MAEN2_Field use
     (C4_MAEN2_Field_0 => 0,
      C4_MAEN2_Field_1 => 1);

   --  Match Address Mode Enable 1
   type C4_MAEN1_Field is
     (
      --  All data received is transferred to the data buffer if MAEN2 is
      --  cleared.
      C4_MAEN1_Field_0,
      --  All data received with the most significant bit cleared, is
      --  discarded. All data received with the most significant bit set, is
      --  compared with contents of MA1 register. If no match occurs, the data
      --  is discarded. If match occurs, data is transferred to the data
      --  buffer. This field must be cleared when C7816[ISO7816E] is
      --  set/enabled.
      C4_MAEN1_Field_1)
     with Size => 1;
   for C4_MAEN1_Field use
     (C4_MAEN1_Field_0 => 0,
      C4_MAEN1_Field_1 => 1);

   --  UART Control Register 4
   type UART2_C4_Register is record
      --  Baud Rate Fine Adjust
      BRFA  : UART2_C4_BRFA_Field := 16#0#;
      --  10-bit Mode select
      M10   : C4_M10_Field := NRF_SVD.UART2.C4_M10_Field_0;
      --  Match Address Mode Enable 2
      MAEN2 : C4_MAEN2_Field := NRF_SVD.UART2.C4_MAEN2_Field_0;
      --  Match Address Mode Enable 1
      MAEN1 : C4_MAEN1_Field := NRF_SVD.UART2.C4_MAEN1_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_C4_Register use record
      BRFA  at 0 range 0 .. 4;
      M10   at 0 range 5 .. 5;
      MAEN2 at 0 range 6 .. 6;
      MAEN1 at 0 range 7 .. 7;
   end record;

   --  Receiver Full DMA Select
   type C5_RDMAS_Field is
     (
      --  If C2[RIE] and S1[RDRF] are set, the RDFR interrupt request signal is
      --  asserted to request an interrupt service.
      C5_RDMAS_Field_0,
      --  If C2[RIE] and S1[RDRF] are set, the RDRF DMA request signal is
      --  asserted to request a DMA transfer.
      C5_RDMAS_Field_1)
     with Size => 1;
   for C5_RDMAS_Field use
     (C5_RDMAS_Field_0 => 0,
      C5_RDMAS_Field_1 => 1);

   --  Transmitter DMA Select
   type C5_TDMAS_Field is
     (
      --  If C2[TIE] is set and the S1[TDRE] flag is set, the TDRE interrupt
      --  request signal is asserted to request interrupt service.
      C5_TDMAS_Field_0,
      --  If C2[TIE] is set and the S1[TDRE] flag is set, the TDRE DMA request
      --  signal is asserted to request a DMA transfer.
      C5_TDMAS_Field_1)
     with Size => 1;
   for C5_TDMAS_Field use
     (C5_TDMAS_Field_0 => 0,
      C5_TDMAS_Field_1 => 1);

   --  UART Control Register 5
   type UART2_C5_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Receiver Full DMA Select
      RDMAS        : C5_RDMAS_Field := NRF_SVD.UART2.C5_RDMAS_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Transmitter DMA Select
      TDMAS        : C5_TDMAS_Field := NRF_SVD.UART2.C5_TDMAS_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_C5_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      RDMAS        at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      TDMAS        at 0 range 7 .. 7;
   end record;

   --  ISO-7816 Functionality Enabled
   type C7816_ISO_7816E_Field is
     (
      --  ISO-7816 functionality is turned off/not enabled.
      C7816_ISO_7816E_Field_0,
      --  ISO-7816 functionality is turned on/enabled.
      C7816_ISO_7816E_Field_1)
     with Size => 1;
   for C7816_ISO_7816E_Field use
     (C7816_ISO_7816E_Field_0 => 0,
      C7816_ISO_7816E_Field_1 => 1);

   --  Transfer Type
   type C7816_TTYPE_Field is
     (
      --  T = 0 per the ISO-7816 specification.
      C7816_TTYPE_Field_0,
      --  T = 1 per the ISO-7816 specification.
      C7816_TTYPE_Field_1)
     with Size => 1;
   for C7816_TTYPE_Field use
     (C7816_TTYPE_Field_0 => 0,
      C7816_TTYPE_Field_1 => 1);

   --  Detect Initial Character
   type C7816_INIT_Field is
     (
      --  Normal operating mode. Receiver does not seek to identify initial
      --  character.
      C7816_INIT_Field_0,
      --  Receiver searches for initial character.
      C7816_INIT_Field_1)
     with Size => 1;
   for C7816_INIT_Field use
     (C7816_INIT_Field_0 => 0,
      C7816_INIT_Field_1 => 1);

   --  Generate NACK on Error
   type C7816_ANACK_Field is
     (
      --  No NACK is automatically generated.
      C7816_ANACK_Field_0,
      --  A NACK is automatically generated if a parity error is detected or if
      --  an invalid initial character is detected.
      C7816_ANACK_Field_1)
     with Size => 1;
   for C7816_ANACK_Field use
     (C7816_ANACK_Field_0 => 0,
      C7816_ANACK_Field_1 => 1);

   --  Generate NACK on Overflow
   type C7816_ONACK_Field is
     (
      --  The received data does not generate a NACK when the receipt of the
      --  data results in an overflow event.
      C7816_ONACK_Field_0,
      --  If the receiver buffer overflows, a NACK is automatically sent on a
      --  received character.
      C7816_ONACK_Field_1)
     with Size => 1;
   for C7816_ONACK_Field use
     (C7816_ONACK_Field_0 => 0,
      C7816_ONACK_Field_1 => 1);

   --  UART 7816 Control Register
   type UART2_C7816_Register is record
      --  ISO-7816 Functionality Enabled
      ISO_7816E    : C7816_ISO_7816E_Field :=
                      NRF_SVD.UART2.C7816_ISO_7816E_Field_0;
      --  Transfer Type
      TTYPE        : C7816_TTYPE_Field := NRF_SVD.UART2.C7816_TTYPE_Field_0;
      --  Detect Initial Character
      INIT         : C7816_INIT_Field := NRF_SVD.UART2.C7816_INIT_Field_0;
      --  Generate NACK on Error
      ANACK        : C7816_ANACK_Field := NRF_SVD.UART2.C7816_ANACK_Field_0;
      --  Generate NACK on Overflow
      ONACK        : C7816_ONACK_Field := NRF_SVD.UART2.C7816_ONACK_Field_0;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_C7816_Register use record
      ISO_7816E    at 0 range 0 .. 0;
      TTYPE        at 0 range 1 .. 1;
      INIT         at 0 range 2 .. 2;
      ANACK        at 0 range 3 .. 3;
      ONACK        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Receive Threshold Exceeded Interrupt Enable
   type IE7816_RXTE_Field is
     (
      --  The assertion of IS7816[RXT] does not result in the generation of an
      --  interrupt.
      IE7816_RXTE_Field_0,
      --  The assertion of IS7816[RXT] results in the generation of an
      --  interrupt.
      IE7816_RXTE_Field_1)
     with Size => 1;
   for IE7816_RXTE_Field use
     (IE7816_RXTE_Field_0 => 0,
      IE7816_RXTE_Field_1 => 1);

   --  Transmit Threshold Exceeded Interrupt Enable
   type IE7816_TXTE_Field is
     (
      --  The assertion of IS7816[TXT] does not result in the generation of an
      --  interrupt.
      IE7816_TXTE_Field_0,
      --  The assertion of IS7816[TXT] results in the generation of an
      --  interrupt.
      IE7816_TXTE_Field_1)
     with Size => 1;
   for IE7816_TXTE_Field use
     (IE7816_TXTE_Field_0 => 0,
      IE7816_TXTE_Field_1 => 1);

   --  Guard Timer Violated Interrupt Enable
   type IE7816_GTVE_Field is
     (
      --  The assertion of IS7816[GTV] does not result in the generation of an
      --  interrupt.
      IE7816_GTVE_Field_0,
      --  The assertion of IS7816[GTV] results in the generation of an
      --  interrupt.
      IE7816_GTVE_Field_1)
     with Size => 1;
   for IE7816_GTVE_Field use
     (IE7816_GTVE_Field_0 => 0,
      IE7816_GTVE_Field_1 => 1);

   --  ATR Duration Timer Interrupt Enable
   type IE7816_ADTE_Field is
     (
      --  The assertion of IS7816[ADT] does not result in the generation of an
      --  interrupt.
      IE7816_ADTE_Field_0,
      --  The assertion of IS7816[ADT] results in the generation of an
      --  interrupt.
      IE7816_ADTE_Field_1)
     with Size => 1;
   for IE7816_ADTE_Field use
     (IE7816_ADTE_Field_0 => 0,
      IE7816_ADTE_Field_1 => 1);

   --  Initial Character Detected Interrupt Enable
   type IE7816_INITDE_Field is
     (
      --  The assertion of IS7816[INITD] does not result in the generation of
      --  an interrupt.
      IE7816_INITDE_Field_0,
      --  The assertion of IS7816[INITD] results in the generation of an
      --  interrupt.
      IE7816_INITDE_Field_1)
     with Size => 1;
   for IE7816_INITDE_Field use
     (IE7816_INITDE_Field_0 => 0,
      IE7816_INITDE_Field_1 => 1);

   --  Block Wait Timer Interrupt Enable
   type IE7816_BWTE_Field is
     (
      --  The assertion of IS7816[BWT] does not result in the generation of an
      --  interrupt.
      IE7816_BWTE_Field_0,
      --  The assertion of IS7816[BWT] results in the generation of an
      --  interrupt.
      IE7816_BWTE_Field_1)
     with Size => 1;
   for IE7816_BWTE_Field use
     (IE7816_BWTE_Field_0 => 0,
      IE7816_BWTE_Field_1 => 1);

   --  Character Wait Timer Interrupt Enable
   type IE7816_CWTE_Field is
     (
      --  The assertion of IS7816[CWT] does not result in the generation of an
      --  interrupt.
      IE7816_CWTE_Field_0,
      --  The assertion of IS7816[CWT] results in the generation of an
      --  interrupt.
      IE7816_CWTE_Field_1)
     with Size => 1;
   for IE7816_CWTE_Field use
     (IE7816_CWTE_Field_0 => 0,
      IE7816_CWTE_Field_1 => 1);

   --  Wait Timer Interrupt Enable
   type IE7816_WTE_Field is
     (
      --  The assertion of IS7816[WT] does not result in the generation of an
      --  interrupt.
      IE7816_WTE_Field_0,
      --  The assertion of IS7816[WT] results in the generation of an
      --  interrupt.
      IE7816_WTE_Field_1)
     with Size => 1;
   for IE7816_WTE_Field use
     (IE7816_WTE_Field_0 => 0,
      IE7816_WTE_Field_1 => 1);

   --  UART 7816 Interrupt Enable Register
   type UART2_IE7816_Register is record
      --  Receive Threshold Exceeded Interrupt Enable
      RXTE   : IE7816_RXTE_Field := NRF_SVD.UART2.IE7816_RXTE_Field_0;
      --  Transmit Threshold Exceeded Interrupt Enable
      TXTE   : IE7816_TXTE_Field := NRF_SVD.UART2.IE7816_TXTE_Field_0;
      --  Guard Timer Violated Interrupt Enable
      GTVE   : IE7816_GTVE_Field := NRF_SVD.UART2.IE7816_GTVE_Field_0;
      --  ATR Duration Timer Interrupt Enable
      ADTE   : IE7816_ADTE_Field := NRF_SVD.UART2.IE7816_ADTE_Field_0;
      --  Initial Character Detected Interrupt Enable
      INITDE : IE7816_INITDE_Field := NRF_SVD.UART2.IE7816_INITDE_Field_0;
      --  Block Wait Timer Interrupt Enable
      BWTE   : IE7816_BWTE_Field := NRF_SVD.UART2.IE7816_BWTE_Field_0;
      --  Character Wait Timer Interrupt Enable
      CWTE   : IE7816_CWTE_Field := NRF_SVD.UART2.IE7816_CWTE_Field_0;
      --  Wait Timer Interrupt Enable
      WTE    : IE7816_WTE_Field := NRF_SVD.UART2.IE7816_WTE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_IE7816_Register use record
      RXTE   at 0 range 0 .. 0;
      TXTE   at 0 range 1 .. 1;
      GTVE   at 0 range 2 .. 2;
      ADTE   at 0 range 3 .. 3;
      INITDE at 0 range 4 .. 4;
      BWTE   at 0 range 5 .. 5;
      CWTE   at 0 range 6 .. 6;
      WTE    at 0 range 7 .. 7;
   end record;

   --  Receive Threshold Exceeded Interrupt
   type IS7816_RXT_Field is
     (
      --  The number of consecutive NACKS generated as a result of parity
      --  errors and buffer overruns is less than or equal to the value in
      --  ET7816[RXTHRESHOLD].
      IS7816_RXT_Field_0,
      --  The number of consecutive NACKS generated as a result of parity
      --  errors and buffer overruns is greater than the value in
      --  ET7816[RXTHRESHOLD].
      IS7816_RXT_Field_1)
     with Size => 1;
   for IS7816_RXT_Field use
     (IS7816_RXT_Field_0 => 0,
      IS7816_RXT_Field_1 => 1);

   --  Transmit Threshold Exceeded Interrupt
   type IS7816_TXT_Field is
     (
      --  The number of retries and corresponding NACKS does not exceed the
      --  value in ET7816[TXTHRESHOLD].
      IS7816_TXT_Field_0,
      --  The number of retries and corresponding NACKS exceeds the value in
      --  ET7816[TXTHRESHOLD].
      IS7816_TXT_Field_1)
     with Size => 1;
   for IS7816_TXT_Field use
     (IS7816_TXT_Field_0 => 0,
      IS7816_TXT_Field_1 => 1);

   --  Guard Timer Violated Interrupt
   type IS7816_GTV_Field is
     (
      --  A guard time (GT, CGT, or BGT) has not been violated.
      IS7816_GTV_Field_0,
      --  A guard time (GT, CGT, or BGT) has been violated.
      IS7816_GTV_Field_1)
     with Size => 1;
   for IS7816_GTV_Field use
     (IS7816_GTV_Field_0 => 0,
      IS7816_GTV_Field_1 => 1);

   --  ATR Duration Time Interrupt
   type IS7816_ADT_Field is
     (
      --  ATR Duration time (ADT) has not been violated.
      IS7816_ADT_Field_0,
      --  ATR Duration time (ADT) has been violated.
      IS7816_ADT_Field_1)
     with Size => 1;
   for IS7816_ADT_Field use
     (IS7816_ADT_Field_0 => 0,
      IS7816_ADT_Field_1 => 1);

   --  Initial Character Detected Interrupt
   type IS7816_INITD_Field is
     (
      --  A valid initial character has not been received.
      IS7816_INITD_Field_0,
      --  A valid initial character has been received.
      IS7816_INITD_Field_1)
     with Size => 1;
   for IS7816_INITD_Field use
     (IS7816_INITD_Field_0 => 0,
      IS7816_INITD_Field_1 => 1);

   --  Block Wait Timer Interrupt
   type IS7816_BWT_Field is
     (
      --  Block wait time (BWT) has not been violated.
      IS7816_BWT_Field_0,
      --  Block wait time (BWT) has been violated.
      IS7816_BWT_Field_1)
     with Size => 1;
   for IS7816_BWT_Field use
     (IS7816_BWT_Field_0 => 0,
      IS7816_BWT_Field_1 => 1);

   --  Character Wait Timer Interrupt
   type IS7816_CWT_Field is
     (
      --  Character wait time (CWT) has not been violated.
      IS7816_CWT_Field_0,
      --  Character wait time (CWT) has been violated.
      IS7816_CWT_Field_1)
     with Size => 1;
   for IS7816_CWT_Field use
     (IS7816_CWT_Field_0 => 0,
      IS7816_CWT_Field_1 => 1);

   --  Wait Timer Interrupt
   type IS7816_WT_Field is
     (
      --  Wait time (WT) has not been violated.
      IS7816_WT_Field_0,
      --  Wait time (WT) has been violated.
      IS7816_WT_Field_1)
     with Size => 1;
   for IS7816_WT_Field use
     (IS7816_WT_Field_0 => 0,
      IS7816_WT_Field_1 => 1);

   --  UART 7816 Interrupt Status Register
   type UART2_IS7816_Register is record
      --  Receive Threshold Exceeded Interrupt
      RXT   : IS7816_RXT_Field := NRF_SVD.UART2.IS7816_RXT_Field_0;
      --  Transmit Threshold Exceeded Interrupt
      TXT   : IS7816_TXT_Field := NRF_SVD.UART2.IS7816_TXT_Field_0;
      --  Guard Timer Violated Interrupt
      GTV   : IS7816_GTV_Field := NRF_SVD.UART2.IS7816_GTV_Field_0;
      --  ATR Duration Time Interrupt
      ADT   : IS7816_ADT_Field := NRF_SVD.UART2.IS7816_ADT_Field_0;
      --  Initial Character Detected Interrupt
      INITD : IS7816_INITD_Field := NRF_SVD.UART2.IS7816_INITD_Field_0;
      --  Block Wait Timer Interrupt
      BWT   : IS7816_BWT_Field := NRF_SVD.UART2.IS7816_BWT_Field_0;
      --  Character Wait Timer Interrupt
      CWT   : IS7816_CWT_Field := NRF_SVD.UART2.IS7816_CWT_Field_0;
      --  Wait Timer Interrupt
      WT    : IS7816_WT_Field := NRF_SVD.UART2.IS7816_WT_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_IS7816_Register use record
      RXT   at 0 range 0 .. 0;
      TXT   at 0 range 1 .. 1;
      GTV   at 0 range 2 .. 2;
      ADT   at 0 range 3 .. 3;
      INITD at 0 range 4 .. 4;
      BWT   at 0 range 5 .. 5;
      CWT   at 0 range 6 .. 6;
      WT    at 0 range 7 .. 7;
   end record;

   subtype UART2_ET7816_RXTHRESHOLD_Field is HAL.UInt4;

   --  Transmit NACK Threshold
   type ET7816_TXTHRESHOLD_Field is
     (
      --  TXT asserts on the first NACK that is received.
      ET7816_TXTHRESHOLD_Field_0,
      --  TXT asserts on the second NACK that is received.
      ET7816_TXTHRESHOLD_Field_1)
     with Size => 4;
   for ET7816_TXTHRESHOLD_Field use
     (ET7816_TXTHRESHOLD_Field_0 => 0,
      ET7816_TXTHRESHOLD_Field_1 => 1);

   --  UART 7816 Error Threshold Register
   type UART2_ET7816_Register is record
      --  Receive NACK Threshold
      RXTHRESHOLD : UART2_ET7816_RXTHRESHOLD_Field := 16#0#;
      --  Transmit NACK Threshold
      TXTHRESHOLD : ET7816_TXTHRESHOLD_Field :=
                     NRF_SVD.UART2.ET7816_TXTHRESHOLD_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_ET7816_Register use record
      RXTHRESHOLD at 0 range 0 .. 3;
      TXTHRESHOLD at 0 range 4 .. 7;
   end record;

   subtype UART2_WGP7816_T1_BGI_Field is HAL.UInt4;
   subtype UART2_WGP7816_T1_CWI1_Field is HAL.UInt4;

   --  UART 7816 Wait and Guard Parameter Register
   type UART2_WGP7816_T1_Register is record
      --  Block Guard Time Integer (C7816[TTYPE] = 1)
      BGI  : UART2_WGP7816_T1_BGI_Field := 16#6#;
      --  Character Wait Time Integer 1 (C7816[TTYPE] = 1)
      CWI1 : UART2_WGP7816_T1_CWI1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_WGP7816_T1_Register use record
      BGI  at 0 range 0 .. 3;
      CWI1 at 0 range 4 .. 7;
   end record;

   subtype UART2_WP7816C_T1_CWI2_Field is HAL.UInt5;

   --  UART 7816 Wait Parameter Register C
   type UART2_WP7816C_T1_Register is record
      --  Character Wait Time Integer 2 (C7816[TTYPE] = 1)
      CWI2         : UART2_WP7816C_T1_CWI2_Field := 16#B#;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART2_WP7816C_T1_Register use record
      CWI2         at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART2_Disc is
     (
      UART2_Disc_0,
      UART2_Disc_1);

   --  Serial Communication Interface
   type UART2_Peripheral
     (Discriminent : UART2_Disc := UART2_Disc_0)
   is record
      --  UART Baud Rate Registers: High
      BDH        : aliased UART2_BDH_Register;
      --  UART Baud Rate Registers: Low
      BDL        : aliased HAL.UInt8;
      --  UART Control Register 1
      C1         : aliased UART2_C1_Register;
      --  UART Control Register 2
      C2         : aliased UART2_C2_Register;
      --  UART Status Register 1
      S1         : aliased UART2_S1_Register;
      --  UART Status Register 2
      S2         : aliased UART2_S2_Register;
      --  UART Control Register 3
      C3         : aliased UART2_C3_Register;
      --  UART Data Register
      D          : aliased HAL.UInt8;
      --  UART Match Address Registers 1
      MA1        : aliased HAL.UInt8;
      --  UART Match Address Registers 2
      MA2        : aliased HAL.UInt8;
      --  UART Control Register 4
      C4         : aliased UART2_C4_Register;
      --  UART Control Register 5
      C5         : aliased UART2_C5_Register;
      --  UART 7816 Control Register
      C7816      : aliased UART2_C7816_Register;
      --  UART 7816 Interrupt Enable Register
      IE7816     : aliased UART2_IE7816_Register;
      --  UART 7816 Interrupt Status Register
      IS7816     : aliased UART2_IS7816_Register;
      --  UART 7816 Wait Parameter Register
      WP7816     : aliased HAL.UInt8;
      --  UART 7816 Wait N Register
      WN7816     : aliased HAL.UInt8;
      --  UART 7816 Wait FD Register
      WF7816     : aliased HAL.UInt8;
      --  UART 7816 Error Threshold Register
      ET7816     : aliased UART2_ET7816_Register;
      --  UART 7816 Transmit Length Register
      TL7816     : aliased HAL.UInt8;
      --  UART 7816 ATR Duration Timer Register A
      AP7816A_T0 : aliased HAL.UInt8;
      --  UART 7816 ATR Duration Timer Register B
      AP7816B_T0 : aliased HAL.UInt8;
      --  UART 7816 Wait and Guard Parameter Register
      WGP7816_T1 : aliased UART2_WGP7816_T1_Register;
      --  UART 7816 Wait Parameter Register C
      WP7816C_T1 : aliased UART2_WP7816C_T1_Register;
      case Discriminent is
         when UART2_Disc_0 =>
            --  UART 7816 Wait Parameter Register A
            WP7816A_T0 : aliased HAL.UInt8;
            --  UART 7816 Wait Parameter Register B
            WP7816B_T0 : aliased HAL.UInt8;
         when UART2_Disc_1 =>
            --  UART 7816 Wait Parameter Register A
            WP7816A_T1 : aliased HAL.UInt8;
            --  UART 7816 Wait Parameter Register B
            WP7816B_T1 : aliased HAL.UInt8;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART2_Peripheral use record
      BDH        at 16#0# range 0 .. 7;
      BDL        at 16#1# range 0 .. 7;
      C1         at 16#2# range 0 .. 7;
      C2         at 16#3# range 0 .. 7;
      S1         at 16#4# range 0 .. 7;
      S2         at 16#5# range 0 .. 7;
      C3         at 16#6# range 0 .. 7;
      D          at 16#7# range 0 .. 7;
      MA1        at 16#8# range 0 .. 7;
      MA2        at 16#9# range 0 .. 7;
      C4         at 16#A# range 0 .. 7;
      C5         at 16#B# range 0 .. 7;
      C7816      at 16#18# range 0 .. 7;
      IE7816     at 16#19# range 0 .. 7;
      IS7816     at 16#1A# range 0 .. 7;
      WP7816     at 16#1B# range 0 .. 7;
      WN7816     at 16#1C# range 0 .. 7;
      WF7816     at 16#1D# range 0 .. 7;
      ET7816     at 16#1E# range 0 .. 7;
      TL7816     at 16#1F# range 0 .. 7;
      AP7816A_T0 at 16#3A# range 0 .. 7;
      AP7816B_T0 at 16#3B# range 0 .. 7;
      WGP7816_T1 at 16#3E# range 0 .. 7;
      WP7816C_T1 at 16#3F# range 0 .. 7;
      WP7816A_T0 at 16#3C# range 0 .. 7;
      WP7816B_T0 at 16#3D# range 0 .. 7;
      WP7816A_T1 at 16#3C# range 0 .. 7;
      WP7816B_T1 at 16#3D# range 0 .. 7;
   end record;

   --  Serial Communication Interface
   UART2_Periph : aliased UART2_Peripheral
     with Import, Address => UART2_Base;

end NRF_SVD.UART2;