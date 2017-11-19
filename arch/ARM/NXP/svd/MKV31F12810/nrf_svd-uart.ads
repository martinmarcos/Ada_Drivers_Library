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

--  This spec has been automatically generated from MKV31F12810.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype UART0_BDH_SBR_Field is HAL.UInt5;

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

   --  LIN Break Detect Interrupt Enable
   type BDH_LBKDIE_Field is
     (
      --  LBKDIF interrupt requests disabled.
      BDH_LBKDIE_Field_0,
      --  LBKDIF interrupt requests enabled.
      BDH_LBKDIE_Field_1)
     with Size => 1;
   for BDH_LBKDIE_Field use
     (BDH_LBKDIE_Field_0 => 0,
      BDH_LBKDIE_Field_1 => 1);

   --  UART Baud Rate Registers: High
   type UART0_BDH_Register is record
      --  UART Baud Rate Bits
      SBR          : UART0_BDH_SBR_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  RxD Input Active Edge Interrupt Enable
      RXEDGIE      : BDH_RXEDGIE_Field := NRF_SVD.UART.BDH_RXEDGIE_Field_0;
      --  LIN Break Detect Interrupt Enable
      LBKDIE       : BDH_LBKDIE_Field := NRF_SVD.UART.BDH_LBKDIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_BDH_Register use record
      SBR          at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      RXEDGIE      at 0 range 6 .. 6;
      LBKDIE       at 0 range 7 .. 7;
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

   --  UART Stops in Wait Mode
   type C1_UARTSWAI_Field is
     (
      --  UART clock continues to run in Wait mode.
      C1_UARTSWAI_Field_0,
      --  UART clock freezes while CPU is in Wait mode.
      C1_UARTSWAI_Field_1)
     with Size => 1;
   for C1_UARTSWAI_Field use
     (C1_UARTSWAI_Field_0 => 0,
      C1_UARTSWAI_Field_1 => 1);

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
   type UART0_C1_Register is record
      --  Parity Type
      PT       : C1_PT_Field := NRF_SVD.UART.C1_PT_Field_0;
      --  Parity Enable
      PE       : C1_PE_Field := NRF_SVD.UART.C1_PE_Field_0;
      --  Idle Line Type Select
      ILT      : C1_ILT_Field := NRF_SVD.UART.C1_ILT_Field_0;
      --  Receiver Wakeup Method Select
      WAKE     : C1_WAKE_Field := NRF_SVD.UART.C1_WAKE_Field_0;
      --  9-bit or 8-bit Mode Select
      M        : C1_M_Field := NRF_SVD.UART.C1_M_Field_0;
      --  Receiver Source Select
      RSRC     : C1_RSRC_Field := NRF_SVD.UART.C1_RSRC_Field_0;
      --  UART Stops in Wait Mode
      UARTSWAI : C1_UARTSWAI_Field := NRF_SVD.UART.C1_UARTSWAI_Field_0;
      --  Loop Mode Select
      LOOPS    : C1_LOOPS_Field := NRF_SVD.UART.C1_LOOPS_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_C1_Register use record
      PT       at 0 range 0 .. 0;
      PE       at 0 range 1 .. 1;
      ILT      at 0 range 2 .. 2;
      WAKE     at 0 range 3 .. 3;
      M        at 0 range 4 .. 4;
      RSRC     at 0 range 5 .. 5;
      UARTSWAI at 0 range 6 .. 6;
      LOOPS    at 0 range 7 .. 7;
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
   type UART0_C2_Register is record
      --  Send Break
      SBK  : C2_SBK_Field := NRF_SVD.UART.C2_SBK_Field_0;
      --  Receiver Wakeup Control
      RWU  : C2_RWU_Field := NRF_SVD.UART.C2_RWU_Field_0;
      --  Receiver Enable
      RE   : C2_RE_Field := NRF_SVD.UART.C2_RE_Field_0;
      --  Transmitter Enable
      TE   : C2_TE_Field := NRF_SVD.UART.C2_TE_Field_0;
      --  Idle Line Interrupt Enable
      ILIE : C2_ILIE_Field := NRF_SVD.UART.C2_ILIE_Field_0;
      --  Receiver Full Interrupt or DMA Transfer Enable
      RIE  : C2_RIE_Field := NRF_SVD.UART.C2_RIE_Field_0;
      --  Transmission Complete Interrupt Enable
      TCIE : C2_TCIE_Field := NRF_SVD.UART.C2_TCIE_Field_0;
      --  Transmitter Interrupt or DMA Transfer Enable.
      TIE  : C2_TIE_Field := NRF_SVD.UART.C2_TIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_C2_Register use record
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
      --  No parity error detected since the last time this flag was cleared.
      --  If the receive buffer has a depth greater than 1, then there may be
      --  data in the receive buffer what was received with a parity error.
      S1_PF_Field_0,
      --  At least one dataword was received with a parity error since the last
      --  time this flag was cleared.
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
      --  No noise detected since the last time this flag was cleared. If the
      --  receive buffer has a depth greater than 1 then there may be data in
      --  the receiver buffer that was received with noise.
      S1_NF_Field_0,
      --  At least one dataword was received with noise detected since the last
      --  time the flag was cleared.
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
      --  The number of datawords in the receive buffer is less than the number
      --  indicated by RXWATER.
      S1_RDRF_Field_0,
      --  The number of datawords in the receive buffer is equal to or greater
      --  than the number indicated by RXWATER at some point in time since this
      --  flag was last cleared.
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
      --  The amount of data in the transmit buffer is greater than the value
      --  indicated by TWFIFO[TXWATER].
      S1_TDRE_Field_0,
      --  The amount of data in the transmit buffer is less than or equal to
      --  the value indicated by TWFIFO[TXWATER] at some point in time since
      --  the flag has been cleared.
      S1_TDRE_Field_1)
     with Size => 1;
   for S1_TDRE_Field use
     (S1_TDRE_Field_0 => 0,
      S1_TDRE_Field_1 => 1);

   --  UART Status Register 1
   type UART0_S1_Register is record
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

   for UART0_S1_Register use record
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

   --  LIN Break Detection Enable
   type S2_LBKDE_Field is
     (
      --  Break character detection is disabled.
      S2_LBKDE_Field_0,
      --  Break character is detected at length of 11 bit times if C1[M] = 0 or
      --  12 bits time if C1[M] = 1.
      S2_LBKDE_Field_1)
     with Size => 1;
   for S2_LBKDE_Field use
     (S2_LBKDE_Field_0 => 0,
      S2_LBKDE_Field_1 => 1);

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

   --  LIN Break Detect Interrupt Flag
   type S2_LBKDIF_Field is
     (
      --  No LIN break character detected.
      S2_LBKDIF_Field_0,
      --  LIN break character detected.
      S2_LBKDIF_Field_1)
     with Size => 1;
   for S2_LBKDIF_Field use
     (S2_LBKDIF_Field_0 => 0,
      S2_LBKDIF_Field_1 => 1);

   --  UART Status Register 2
   type UART0_S2_Register is record
      --  Read-only. Receiver Active Flag
      RAF     : S2_RAF_Field := NRF_SVD.UART.S2_RAF_Field_0;
      --  LIN Break Detection Enable
      LBKDE   : S2_LBKDE_Field := NRF_SVD.UART.S2_LBKDE_Field_0;
      --  Break Transmit Character Length
      BRK13   : S2_BRK13_Field := NRF_SVD.UART.S2_BRK13_Field_0;
      --  Receive Wakeup Idle Detect
      RWUID   : S2_RWUID_Field := NRF_SVD.UART.S2_RWUID_Field_0;
      --  Receive Data Inversion
      RXINV   : S2_RXINV_Field := NRF_SVD.UART.S2_RXINV_Field_0;
      --  Most Significant Bit First
      MSBF    : S2_MSBF_Field := NRF_SVD.UART.S2_MSBF_Field_0;
      --  RxD Pin Active Edge Interrupt Flag
      RXEDGIF : S2_RXEDGIF_Field := NRF_SVD.UART.S2_RXEDGIF_Field_0;
      --  LIN Break Detect Interrupt Flag
      LBKDIF  : S2_LBKDIF_Field := NRF_SVD.UART.S2_LBKDIF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_S2_Register use record
      RAF     at 0 range 0 .. 0;
      LBKDE   at 0 range 1 .. 1;
      BRK13   at 0 range 2 .. 2;
      RWUID   at 0 range 3 .. 3;
      RXINV   at 0 range 4 .. 4;
      MSBF    at 0 range 5 .. 5;
      RXEDGIF at 0 range 6 .. 6;
      LBKDIF  at 0 range 7 .. 7;
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
   type UART0_C3_Register is record
      --  Parity Error Interrupt Enable
      PEIE  : C3_PEIE_Field := NRF_SVD.UART.C3_PEIE_Field_0;
      --  Framing Error Interrupt Enable
      FEIE  : C3_FEIE_Field := NRF_SVD.UART.C3_FEIE_Field_0;
      --  Noise Error Interrupt Enable
      NEIE  : C3_NEIE_Field := NRF_SVD.UART.C3_NEIE_Field_0;
      --  Overrun Error Interrupt Enable
      ORIE  : C3_ORIE_Field := NRF_SVD.UART.C3_ORIE_Field_0;
      --  Transmit Data Inversion.
      TXINV : C3_TXINV_Field := NRF_SVD.UART.C3_TXINV_Field_0;
      --  Transmitter Pin Data Direction in Single-Wire mode
      TXDIR : C3_TXDIR_Field := NRF_SVD.UART.C3_TXDIR_Field_0;
      --  Transmit Bit 8
      T8    : Boolean := False;
      --  Read-only. Received Bit 8
      R8    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_C3_Register use record
      PEIE  at 0 range 0 .. 0;
      FEIE  at 0 range 1 .. 1;
      NEIE  at 0 range 2 .. 2;
      ORIE  at 0 range 3 .. 3;
      TXINV at 0 range 4 .. 4;
      TXDIR at 0 range 5 .. 5;
      T8    at 0 range 6 .. 6;
      R8    at 0 range 7 .. 7;
   end record;

   subtype UART0_C4_BRFA_Field is HAL.UInt5;

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
   type UART0_C4_Register is record
      --  Baud Rate Fine Adjust
      BRFA  : UART0_C4_BRFA_Field := 16#0#;
      --  10-bit Mode select
      M10   : C4_M10_Field := NRF_SVD.UART.C4_M10_Field_0;
      --  Match Address Mode Enable 2
      MAEN2 : C4_MAEN2_Field := NRF_SVD.UART.C4_MAEN2_Field_0;
      --  Match Address Mode Enable 1
      MAEN1 : C4_MAEN1_Field := NRF_SVD.UART.C4_MAEN1_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_C4_Register use record
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
   type UART0_C5_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Receiver Full DMA Select
      RDMAS        : C5_RDMAS_Field := NRF_SVD.UART.C5_RDMAS_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Transmitter DMA Select
      TDMAS        : C5_TDMAS_Field := NRF_SVD.UART.C5_TDMAS_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_C5_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      RDMAS        at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      TDMAS        at 0 range 7 .. 7;
   end record;

   --  The current received dataword contained in D and C3[R8] was received
   --  with a parity error.
   type ED_PARITYE_Field is
     (
      --  The dataword was received without a parity error.
      ED_PARITYE_Field_0,
      --  The dataword was received with a parity error.
      ED_PARITYE_Field_1)
     with Size => 1;
   for ED_PARITYE_Field use
     (ED_PARITYE_Field_0 => 0,
      ED_PARITYE_Field_1 => 1);

   --  The current received dataword contained in D and C3[R8] was received
   --  with noise.
   type ED_NOISY_Field is
     (
      --  The dataword was received without noise.
      ED_NOISY_Field_0,
      --  The data was received with noise.
      ED_NOISY_Field_1)
     with Size => 1;
   for ED_NOISY_Field use
     (ED_NOISY_Field_0 => 0,
      ED_NOISY_Field_1 => 1);

   --  UART Extended Data Register
   type UART0_ED_Register is record
      --  unspecified
      Reserved_0_5 : HAL.UInt6;
      --  Read-only. The current received dataword contained in D and C3[R8]
      --  was received with a parity error.
      PARITYE      : ED_PARITYE_Field;
      --  Read-only. The current received dataword contained in D and C3[R8]
      --  was received with noise.
      NOISY        : ED_NOISY_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_ED_Register use record
      Reserved_0_5 at 0 range 0 .. 5;
      PARITYE      at 0 range 6 .. 6;
      NOISY        at 0 range 7 .. 7;
   end record;

   --  Transmitter clear-to-send enable
   type MODEM_TXCTSE_Field is
     (
      --  CTS has no effect on the transmitter.
      MODEM_TXCTSE_Field_0,
      --  Enables clear-to-send operation. The transmitter checks the state of
      --  CTS each time it is ready to send a character. If CTS is asserted,
      --  the character is sent. If CTS is deasserted, the signal TXD remains
      --  in the mark state and transmission is delayed until CTS is asserted.
      --  Changes in CTS as a character is being sent do not affect its
      --  transmission.
      MODEM_TXCTSE_Field_1)
     with Size => 1;
   for MODEM_TXCTSE_Field use
     (MODEM_TXCTSE_Field_0 => 0,
      MODEM_TXCTSE_Field_1 => 1);

   --  Transmitter request-to-send enable
   type MODEM_TXRTSE_Field is
     (
      --  The transmitter has no effect on RTS.
      MODEM_TXRTSE_Field_0,
      --  When a character is placed into an empty transmitter data buffer ,
      --  RTS asserts one bit time before the start bit is transmitted. RTS
      --  deasserts one bit time after all characters in the transmitter data
      --  buffer and shift register are completely sent, including the last
      --  stop bit. (FIFO) (FIFO)
      MODEM_TXRTSE_Field_1)
     with Size => 1;
   for MODEM_TXRTSE_Field use
     (MODEM_TXRTSE_Field_0 => 0,
      MODEM_TXRTSE_Field_1 => 1);

   --  Transmitter request-to-send polarity
   type MODEM_TXRTSPOL_Field is
     (
      --  Transmitter RTS is active low.
      MODEM_TXRTSPOL_Field_0,
      --  Transmitter RTS is active high.
      MODEM_TXRTSPOL_Field_1)
     with Size => 1;
   for MODEM_TXRTSPOL_Field use
     (MODEM_TXRTSPOL_Field_0 => 0,
      MODEM_TXRTSPOL_Field_1 => 1);

   --  Receiver request-to-send enable
   type MODEM_RXRTSE_Field is
     (
      --  The receiver has no effect on RTS.
      MODEM_RXRTSE_Field_0,
      --  RTS is deasserted if the number of characters in the receiver data
      --  register (FIFO) is equal to or greater than RWFIFO[RXWATER]. RTS is
      --  asserted when the number of characters in the receiver data register
      --  (FIFO) is less than RWFIFO[RXWATER].
      MODEM_RXRTSE_Field_1)
     with Size => 1;
   for MODEM_RXRTSE_Field use
     (MODEM_RXRTSE_Field_0 => 0,
      MODEM_RXRTSE_Field_1 => 1);

   --  UART Modem Register
   type UART0_MODEM_Register is record
      --  Transmitter clear-to-send enable
      TXCTSE       : MODEM_TXCTSE_Field := NRF_SVD.UART.MODEM_TXCTSE_Field_0;
      --  Transmitter request-to-send enable
      TXRTSE       : MODEM_TXRTSE_Field := NRF_SVD.UART.MODEM_TXRTSE_Field_0;
      --  Transmitter request-to-send polarity
      TXRTSPOL     : MODEM_TXRTSPOL_Field :=
                      NRF_SVD.UART.MODEM_TXRTSPOL_Field_0;
      --  Receiver request-to-send enable
      RXRTSE       : MODEM_RXRTSE_Field := NRF_SVD.UART.MODEM_RXRTSE_Field_0;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_MODEM_Register use record
      TXCTSE       at 0 range 0 .. 0;
      TXRTSE       at 0 range 1 .. 1;
      TXRTSPOL     at 0 range 2 .. 2;
      RXRTSE       at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Transmitter narrow pulse
   type IR_TNP_Field is
     (
      --  3/16.
      IR_TNP_Field_00,
      --  1/16.
      IR_TNP_Field_01,
      --  1/32.
      IR_TNP_Field_10,
      --  1/4.
      IR_TNP_Field_11)
     with Size => 2;
   for IR_TNP_Field use
     (IR_TNP_Field_00 => 0,
      IR_TNP_Field_01 => 1,
      IR_TNP_Field_10 => 2,
      IR_TNP_Field_11 => 3);

   --  Infrared enable
   type IR_IREN_Field is
     (
      --  IR disabled.
      IR_IREN_Field_0,
      --  IR enabled.
      IR_IREN_Field_1)
     with Size => 1;
   for IR_IREN_Field use
     (IR_IREN_Field_0 => 0,
      IR_IREN_Field_1 => 1);

   --  UART Infrared Register
   type UART0_IR_Register is record
      --  Transmitter narrow pulse
      TNP          : IR_TNP_Field := NRF_SVD.UART.IR_TNP_Field_00;
      --  Infrared enable
      IREN         : IR_IREN_Field := NRF_SVD.UART.IR_IREN_Field_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_IR_Register use record
      TNP          at 0 range 0 .. 1;
      IREN         at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Receive FIFO. Buffer Depth
   type PFIFO_RXFIFOSIZE_Field is
     (
      --  Receive FIFO/Buffer depth = 1 dataword.
      PFIFO_RXFIFOSIZE_Field_000,
      --  Receive FIFO/Buffer depth = 4 datawords.
      PFIFO_RXFIFOSIZE_Field_001,
      --  Receive FIFO/Buffer depth = 8 datawords.
      PFIFO_RXFIFOSIZE_Field_010,
      --  Receive FIFO/Buffer depth = 16 datawords.
      PFIFO_RXFIFOSIZE_Field_011,
      --  Receive FIFO/Buffer depth = 32 datawords.
      PFIFO_RXFIFOSIZE_Field_100,
      --  Receive FIFO/Buffer depth = 64 datawords.
      PFIFO_RXFIFOSIZE_Field_101,
      --  Receive FIFO/Buffer depth = 128 datawords.
      PFIFO_RXFIFOSIZE_Field_110)
     with Size => 3;
   for PFIFO_RXFIFOSIZE_Field use
     (PFIFO_RXFIFOSIZE_Field_000 => 0,
      PFIFO_RXFIFOSIZE_Field_001 => 1,
      PFIFO_RXFIFOSIZE_Field_010 => 2,
      PFIFO_RXFIFOSIZE_Field_011 => 3,
      PFIFO_RXFIFOSIZE_Field_100 => 4,
      PFIFO_RXFIFOSIZE_Field_101 => 5,
      PFIFO_RXFIFOSIZE_Field_110 => 6);

   --  Receive FIFO Enable
   type PFIFO_RXFE_Field is
     (
      --  Receive FIFO is not enabled. Buffer is depth 1. (Legacy support)
      PFIFO_RXFE_Field_0,
      --  Receive FIFO is enabled. Buffer is depth indicted by RXFIFOSIZE.
      PFIFO_RXFE_Field_1)
     with Size => 1;
   for PFIFO_RXFE_Field use
     (PFIFO_RXFE_Field_0 => 0,
      PFIFO_RXFE_Field_1 => 1);

   --  Transmit FIFO. Buffer Depth
   type PFIFO_TXFIFOSIZE_Field is
     (
      --  Transmit FIFO/Buffer depth = 1 dataword.
      PFIFO_TXFIFOSIZE_Field_000,
      --  Transmit FIFO/Buffer depth = 4 datawords.
      PFIFO_TXFIFOSIZE_Field_001,
      --  Transmit FIFO/Buffer depth = 8 datawords.
      PFIFO_TXFIFOSIZE_Field_010,
      --  Transmit FIFO/Buffer depth = 16 datawords.
      PFIFO_TXFIFOSIZE_Field_011,
      --  Transmit FIFO/Buffer depth = 32 datawords.
      PFIFO_TXFIFOSIZE_Field_100,
      --  Transmit FIFO/Buffer depth = 64 datawords.
      PFIFO_TXFIFOSIZE_Field_101,
      --  Transmit FIFO/Buffer depth = 128 datawords.
      PFIFO_TXFIFOSIZE_Field_110)
     with Size => 3;
   for PFIFO_TXFIFOSIZE_Field use
     (PFIFO_TXFIFOSIZE_Field_000 => 0,
      PFIFO_TXFIFOSIZE_Field_001 => 1,
      PFIFO_TXFIFOSIZE_Field_010 => 2,
      PFIFO_TXFIFOSIZE_Field_011 => 3,
      PFIFO_TXFIFOSIZE_Field_100 => 4,
      PFIFO_TXFIFOSIZE_Field_101 => 5,
      PFIFO_TXFIFOSIZE_Field_110 => 6);

   --  Transmit FIFO Enable
   type PFIFO_TXFE_Field is
     (
      --  Transmit FIFO is not enabled. Buffer is depth 1. (Legacy support).
      PFIFO_TXFE_Field_0,
      --  Transmit FIFO is enabled. Buffer is depth indicated by TXFIFOSIZE.
      PFIFO_TXFE_Field_1)
     with Size => 1;
   for PFIFO_TXFE_Field use
     (PFIFO_TXFE_Field_0 => 0,
      PFIFO_TXFE_Field_1 => 1);

   --  UART FIFO Parameters
   type UART0_PFIFO_Register is record
      --  Read-only. Receive FIFO. Buffer Depth
      RXFIFOSIZE : PFIFO_RXFIFOSIZE_Field :=
                    NRF_SVD.UART.PFIFO_RXFIFOSIZE_Field_000;
      --  Receive FIFO Enable
      RXFE       : PFIFO_RXFE_Field := NRF_SVD.UART.PFIFO_RXFE_Field_0;
      --  Read-only. Transmit FIFO. Buffer Depth
      TXFIFOSIZE : PFIFO_TXFIFOSIZE_Field :=
                    NRF_SVD.UART.PFIFO_TXFIFOSIZE_Field_000;
      --  Transmit FIFO Enable
      TXFE       : PFIFO_TXFE_Field := NRF_SVD.UART.PFIFO_TXFE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_PFIFO_Register use record
      RXFIFOSIZE at 0 range 0 .. 2;
      RXFE       at 0 range 3 .. 3;
      TXFIFOSIZE at 0 range 4 .. 6;
      TXFE       at 0 range 7 .. 7;
   end record;

   --  Receive FIFO Underflow Interrupt Enable
   type CFIFO_RXUFE_Field is
     (
      --  RXUF flag does not generate an interrupt to the host.
      CFIFO_RXUFE_Field_0,
      --  RXUF flag generates an interrupt to the host.
      CFIFO_RXUFE_Field_1)
     with Size => 1;
   for CFIFO_RXUFE_Field use
     (CFIFO_RXUFE_Field_0 => 0,
      CFIFO_RXUFE_Field_1 => 1);

   --  Transmit FIFO Overflow Interrupt Enable
   type CFIFO_TXOFE_Field is
     (
      --  TXOF flag does not generate an interrupt to the host.
      CFIFO_TXOFE_Field_0,
      --  TXOF flag generates an interrupt to the host.
      CFIFO_TXOFE_Field_1)
     with Size => 1;
   for CFIFO_TXOFE_Field use
     (CFIFO_TXOFE_Field_0 => 0,
      CFIFO_TXOFE_Field_1 => 1);

   --  Receive FIFO Overflow Interrupt Enable
   type CFIFO_RXOFE_Field is
     (
      --  RXOF flag does not generate an interrupt to the host.
      CFIFO_RXOFE_Field_0,
      --  RXOF flag generates an interrupt to the host.
      CFIFO_RXOFE_Field_1)
     with Size => 1;
   for CFIFO_RXOFE_Field use
     (CFIFO_RXOFE_Field_0 => 0,
      CFIFO_RXOFE_Field_1 => 1);

   --  Receive FIFO/Buffer Flush
   type CFIFO_RXFLUSH_Field is
     (
      --  No flush operation occurs.
      CFIFO_RXFLUSH_Field_0,
      --  All data in the receive FIFO/buffer is cleared out.
      CFIFO_RXFLUSH_Field_1)
     with Size => 1;
   for CFIFO_RXFLUSH_Field use
     (CFIFO_RXFLUSH_Field_0 => 0,
      CFIFO_RXFLUSH_Field_1 => 1);

   --  Transmit FIFO/Buffer Flush
   type CFIFO_TXFLUSH_Field is
     (
      --  No flush operation occurs.
      CFIFO_TXFLUSH_Field_0,
      --  All data in the transmit FIFO/Buffer is cleared out.
      CFIFO_TXFLUSH_Field_1)
     with Size => 1;
   for CFIFO_TXFLUSH_Field use
     (CFIFO_TXFLUSH_Field_0 => 0,
      CFIFO_TXFLUSH_Field_1 => 1);

   --  UART FIFO Control Register
   type UART0_CFIFO_Register is record
      --  Receive FIFO Underflow Interrupt Enable
      RXUFE        : CFIFO_RXUFE_Field := NRF_SVD.UART.CFIFO_RXUFE_Field_0;
      --  Transmit FIFO Overflow Interrupt Enable
      TXOFE        : CFIFO_TXOFE_Field := NRF_SVD.UART.CFIFO_TXOFE_Field_0;
      --  Receive FIFO Overflow Interrupt Enable
      RXOFE        : CFIFO_RXOFE_Field := NRF_SVD.UART.CFIFO_RXOFE_Field_0;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Write-only. Receive FIFO/Buffer Flush
      RXFLUSH      : CFIFO_RXFLUSH_Field :=
                      NRF_SVD.UART.CFIFO_RXFLUSH_Field_0;
      --  Write-only. Transmit FIFO/Buffer Flush
      TXFLUSH      : CFIFO_TXFLUSH_Field :=
                      NRF_SVD.UART.CFIFO_TXFLUSH_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_CFIFO_Register use record
      RXUFE        at 0 range 0 .. 0;
      TXOFE        at 0 range 1 .. 1;
      RXOFE        at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      RXFLUSH      at 0 range 6 .. 6;
      TXFLUSH      at 0 range 7 .. 7;
   end record;

   --  Receiver Buffer Underflow Flag
   type SFIFO_RXUF_Field is
     (
      --  No receive buffer underflow has occurred since the last time the flag
      --  was cleared.
      SFIFO_RXUF_Field_0,
      --  At least one receive buffer underflow has occurred since the last
      --  time the flag was cleared.
      SFIFO_RXUF_Field_1)
     with Size => 1;
   for SFIFO_RXUF_Field use
     (SFIFO_RXUF_Field_0 => 0,
      SFIFO_RXUF_Field_1 => 1);

   --  Transmitter Buffer Overflow Flag
   type SFIFO_TXOF_Field is
     (
      --  No transmit buffer overflow has occurred since the last time the flag
      --  was cleared.
      SFIFO_TXOF_Field_0,
      --  At least one transmit buffer overflow has occurred since the last
      --  time the flag was cleared.
      SFIFO_TXOF_Field_1)
     with Size => 1;
   for SFIFO_TXOF_Field use
     (SFIFO_TXOF_Field_0 => 0,
      SFIFO_TXOF_Field_1 => 1);

   --  Receiver Buffer Overflow Flag
   type SFIFO_RXOF_Field is
     (
      --  No receive buffer overflow has occurred since the last time the flag
      --  was cleared.
      SFIFO_RXOF_Field_0,
      --  At least one receive buffer overflow has occurred since the last time
      --  the flag was cleared.
      SFIFO_RXOF_Field_1)
     with Size => 1;
   for SFIFO_RXOF_Field use
     (SFIFO_RXOF_Field_0 => 0,
      SFIFO_RXOF_Field_1 => 1);

   --  Receive Buffer/FIFO Empty
   type SFIFO_RXEMPT_Field is
     (
      --  Receive buffer is not empty.
      SFIFO_RXEMPT_Field_0,
      --  Receive buffer is empty.
      SFIFO_RXEMPT_Field_1)
     with Size => 1;
   for SFIFO_RXEMPT_Field use
     (SFIFO_RXEMPT_Field_0 => 0,
      SFIFO_RXEMPT_Field_1 => 1);

   --  Transmit Buffer/FIFO Empty
   type SFIFO_TXEMPT_Field is
     (
      --  Transmit buffer is not empty.
      SFIFO_TXEMPT_Field_0,
      --  Transmit buffer is empty.
      SFIFO_TXEMPT_Field_1)
     with Size => 1;
   for SFIFO_TXEMPT_Field use
     (SFIFO_TXEMPT_Field_0 => 0,
      SFIFO_TXEMPT_Field_1 => 1);

   --  UART FIFO Status Register
   type UART0_SFIFO_Register is record
      --  Receiver Buffer Underflow Flag
      RXUF         : SFIFO_RXUF_Field := NRF_SVD.UART.SFIFO_RXUF_Field_0;
      --  Transmitter Buffer Overflow Flag
      TXOF         : SFIFO_TXOF_Field := NRF_SVD.UART.SFIFO_TXOF_Field_0;
      --  Receiver Buffer Overflow Flag
      RXOF         : SFIFO_RXOF_Field := NRF_SVD.UART.SFIFO_RXOF_Field_0;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Read-only. Receive Buffer/FIFO Empty
      RXEMPT       : SFIFO_RXEMPT_Field := NRF_SVD.UART.SFIFO_RXEMPT_Field_1;
      --  Read-only. Transmit Buffer/FIFO Empty
      TXEMPT       : SFIFO_TXEMPT_Field := NRF_SVD.UART.SFIFO_TXEMPT_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_SFIFO_Register use record
      RXUF         at 0 range 0 .. 0;
      TXOF         at 0 range 1 .. 1;
      RXOF         at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      RXEMPT       at 0 range 6 .. 6;
      TXEMPT       at 0 range 7 .. 7;
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
   type UART0_C7816_Register is record
      --  ISO-7816 Functionality Enabled
      ISO_7816E    : C7816_ISO_7816E_Field :=
                      NRF_SVD.UART.C7816_ISO_7816E_Field_0;
      --  Transfer Type
      TTYPE        : C7816_TTYPE_Field := NRF_SVD.UART.C7816_TTYPE_Field_0;
      --  Detect Initial Character
      INIT         : C7816_INIT_Field := NRF_SVD.UART.C7816_INIT_Field_0;
      --  Generate NACK on Error
      ANACK        : C7816_ANACK_Field := NRF_SVD.UART.C7816_ANACK_Field_0;
      --  Generate NACK on Overflow
      ONACK        : C7816_ONACK_Field := NRF_SVD.UART.C7816_ONACK_Field_0;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_C7816_Register use record
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
   type UART0_IE7816_Register is record
      --  Receive Threshold Exceeded Interrupt Enable
      RXTE   : IE7816_RXTE_Field := NRF_SVD.UART.IE7816_RXTE_Field_0;
      --  Transmit Threshold Exceeded Interrupt Enable
      TXTE   : IE7816_TXTE_Field := NRF_SVD.UART.IE7816_TXTE_Field_0;
      --  Guard Timer Violated Interrupt Enable
      GTVE   : IE7816_GTVE_Field := NRF_SVD.UART.IE7816_GTVE_Field_0;
      --  ATR Duration Timer Interrupt Enable
      ADTE   : IE7816_ADTE_Field := NRF_SVD.UART.IE7816_ADTE_Field_0;
      --  Initial Character Detected Interrupt Enable
      INITDE : IE7816_INITDE_Field := NRF_SVD.UART.IE7816_INITDE_Field_0;
      --  Block Wait Timer Interrupt Enable
      BWTE   : IE7816_BWTE_Field := NRF_SVD.UART.IE7816_BWTE_Field_0;
      --  Character Wait Timer Interrupt Enable
      CWTE   : IE7816_CWTE_Field := NRF_SVD.UART.IE7816_CWTE_Field_0;
      --  Wait Timer Interrupt Enable
      WTE    : IE7816_WTE_Field := NRF_SVD.UART.IE7816_WTE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_IE7816_Register use record
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
   type UART0_IS7816_Register is record
      --  Receive Threshold Exceeded Interrupt
      RXT   : IS7816_RXT_Field := NRF_SVD.UART.IS7816_RXT_Field_0;
      --  Transmit Threshold Exceeded Interrupt
      TXT   : IS7816_TXT_Field := NRF_SVD.UART.IS7816_TXT_Field_0;
      --  Guard Timer Violated Interrupt
      GTV   : IS7816_GTV_Field := NRF_SVD.UART.IS7816_GTV_Field_0;
      --  ATR Duration Time Interrupt
      ADT   : IS7816_ADT_Field := NRF_SVD.UART.IS7816_ADT_Field_0;
      --  Initial Character Detected Interrupt
      INITD : IS7816_INITD_Field := NRF_SVD.UART.IS7816_INITD_Field_0;
      --  Block Wait Timer Interrupt
      BWT   : IS7816_BWT_Field := NRF_SVD.UART.IS7816_BWT_Field_0;
      --  Character Wait Timer Interrupt
      CWT   : IS7816_CWT_Field := NRF_SVD.UART.IS7816_CWT_Field_0;
      --  Wait Timer Interrupt
      WT    : IS7816_WT_Field := NRF_SVD.UART.IS7816_WT_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_IS7816_Register use record
      RXT   at 0 range 0 .. 0;
      TXT   at 0 range 1 .. 1;
      GTV   at 0 range 2 .. 2;
      ADT   at 0 range 3 .. 3;
      INITD at 0 range 4 .. 4;
      BWT   at 0 range 5 .. 5;
      CWT   at 0 range 6 .. 6;
      WT    at 0 range 7 .. 7;
   end record;

   subtype UART0_ET7816_RXTHRESHOLD_Field is HAL.UInt4;

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
   type UART0_ET7816_Register is record
      --  Receive NACK Threshold
      RXTHRESHOLD : UART0_ET7816_RXTHRESHOLD_Field := 16#0#;
      --  Transmit NACK Threshold
      TXTHRESHOLD : ET7816_TXTHRESHOLD_Field :=
                     NRF_SVD.UART.ET7816_TXTHRESHOLD_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_ET7816_Register use record
      RXTHRESHOLD at 0 range 0 .. 3;
      TXTHRESHOLD at 0 range 4 .. 7;
   end record;

   subtype UART0_WGP7816_T1_BGI_Field is HAL.UInt4;
   subtype UART0_WGP7816_T1_CWI1_Field is HAL.UInt4;

   --  UART 7816 Wait and Guard Parameter Register
   type UART0_WGP7816_T1_Register is record
      --  Block Guard Time Integer (C7816[TTYPE] = 1)
      BGI  : UART0_WGP7816_T1_BGI_Field := 16#6#;
      --  Character Wait Time Integer 1 (C7816[TTYPE] = 1)
      CWI1 : UART0_WGP7816_T1_CWI1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_WGP7816_T1_Register use record
      BGI  at 0 range 0 .. 3;
      CWI1 at 0 range 4 .. 7;
   end record;

   subtype UART0_WP7816C_T1_CWI2_Field is HAL.UInt5;

   --  UART 7816 Wait Parameter Register C
   type UART0_WP7816C_T1_Register is record
      --  Character Wait Time Integer 2 (C7816[TTYPE] = 1)
      CWI2         : UART0_WP7816C_T1_CWI2_Field := 16#B#;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART0_WP7816C_T1_Register use record
      CWI2         at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART0_Disc is
     (
      UART0_Disc_0,
      UART0_Disc_1);

   --  Serial Communication Interface
   type UART0_Peripheral
     (Discriminent : UART0_Disc := UART0_Disc_0)
   is record
      --  UART Baud Rate Registers: High
      BDH        : aliased UART0_BDH_Register;
      --  UART Baud Rate Registers: Low
      BDL        : aliased HAL.UInt8;
      --  UART Control Register 1
      C1         : aliased UART0_C1_Register;
      --  UART Control Register 2
      C2         : aliased UART0_C2_Register;
      --  UART Status Register 1
      S1         : aliased UART0_S1_Register;
      --  UART Status Register 2
      S2         : aliased UART0_S2_Register;
      --  UART Control Register 3
      C3         : aliased UART0_C3_Register;
      --  UART Data Register
      D          : aliased HAL.UInt8;
      --  UART Match Address Registers 1
      MA1        : aliased HAL.UInt8;
      --  UART Match Address Registers 2
      MA2        : aliased HAL.UInt8;
      --  UART Control Register 4
      C4         : aliased UART0_C4_Register;
      --  UART Control Register 5
      C5         : aliased UART0_C5_Register;
      --  UART Extended Data Register
      ED         : aliased UART0_ED_Register;
      --  UART Modem Register
      MODEM      : aliased UART0_MODEM_Register;
      --  UART Infrared Register
      IR         : aliased UART0_IR_Register;
      --  UART FIFO Parameters
      PFIFO      : aliased UART0_PFIFO_Register;
      --  UART FIFO Control Register
      CFIFO      : aliased UART0_CFIFO_Register;
      --  UART FIFO Status Register
      SFIFO      : aliased UART0_SFIFO_Register;
      --  UART FIFO Transmit Watermark
      TWFIFO     : aliased HAL.UInt8;
      --  UART FIFO Transmit Count
      TCFIFO     : aliased HAL.UInt8;
      --  UART FIFO Receive Watermark
      RWFIFO     : aliased HAL.UInt8;
      --  UART FIFO Receive Count
      RCFIFO     : aliased HAL.UInt8;
      --  UART 7816 Control Register
      C7816      : aliased UART0_C7816_Register;
      --  UART 7816 Interrupt Enable Register
      IE7816     : aliased UART0_IE7816_Register;
      --  UART 7816 Interrupt Status Register
      IS7816     : aliased UART0_IS7816_Register;
      --  UART 7816 Wait Parameter Register
      WP7816     : aliased HAL.UInt8;
      --  UART 7816 Wait N Register
      WN7816     : aliased HAL.UInt8;
      --  UART 7816 Wait FD Register
      WF7816     : aliased HAL.UInt8;
      --  UART 7816 Error Threshold Register
      ET7816     : aliased UART0_ET7816_Register;
      --  UART 7816 Transmit Length Register
      TL7816     : aliased HAL.UInt8;
      --  UART 7816 ATR Duration Timer Register A
      AP7816A_T0 : aliased HAL.UInt8;
      --  UART 7816 ATR Duration Timer Register B
      AP7816B_T0 : aliased HAL.UInt8;
      --  UART 7816 Wait and Guard Parameter Register
      WGP7816_T1 : aliased UART0_WGP7816_T1_Register;
      --  UART 7816 Wait Parameter Register C
      WP7816C_T1 : aliased UART0_WP7816C_T1_Register;
      case Discriminent is
         when UART0_Disc_0 =>
            --  UART 7816 Wait Parameter Register A
            WP7816A_T0 : aliased HAL.UInt8;
            --  UART 7816 Wait Parameter Register B
            WP7816B_T0 : aliased HAL.UInt8;
         when UART0_Disc_1 =>
            --  UART 7816 Wait Parameter Register A
            WP7816A_T1 : aliased HAL.UInt8;
            --  UART 7816 Wait Parameter Register B
            WP7816B_T1 : aliased HAL.UInt8;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART0_Peripheral use record
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
      ED         at 16#C# range 0 .. 7;
      MODEM      at 16#D# range 0 .. 7;
      IR         at 16#E# range 0 .. 7;
      PFIFO      at 16#10# range 0 .. 7;
      CFIFO      at 16#11# range 0 .. 7;
      SFIFO      at 16#12# range 0 .. 7;
      TWFIFO     at 16#13# range 0 .. 7;
      TCFIFO     at 16#14# range 0 .. 7;
      RWFIFO     at 16#15# range 0 .. 7;
      RCFIFO     at 16#16# range 0 .. 7;
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
   UART0_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#4006A000#);

   --  Serial Communication Interface
   type UART_Peripheral is record
      --  UART Baud Rate Registers: High
      BDH    : aliased UART0_BDH_Register;
      --  UART Baud Rate Registers: Low
      BDL    : aliased HAL.UInt8;
      --  UART Control Register 1
      C1     : aliased UART0_C1_Register;
      --  UART Control Register 2
      C2     : aliased UART0_C2_Register;
      --  UART Status Register 1
      S1     : aliased UART0_S1_Register;
      --  UART Status Register 2
      S2     : aliased UART0_S2_Register;
      --  UART Control Register 3
      C3     : aliased UART0_C3_Register;
      --  UART Data Register
      D      : aliased HAL.UInt8;
      --  UART Match Address Registers 1
      MA1    : aliased HAL.UInt8;
      --  UART Match Address Registers 2
      MA2    : aliased HAL.UInt8;
      --  UART Control Register 4
      C4     : aliased UART0_C4_Register;
      --  UART Control Register 5
      C5     : aliased UART0_C5_Register;
      --  UART Extended Data Register
      ED     : aliased UART0_ED_Register;
      --  UART Modem Register
      MODEM  : aliased UART0_MODEM_Register;
      --  UART Infrared Register
      IR     : aliased UART0_IR_Register;
      --  UART FIFO Parameters
      PFIFO  : aliased UART0_PFIFO_Register;
      --  UART FIFO Control Register
      CFIFO  : aliased UART0_CFIFO_Register;
      --  UART FIFO Status Register
      SFIFO  : aliased UART0_SFIFO_Register;
      --  UART FIFO Transmit Watermark
      TWFIFO : aliased HAL.UInt8;
      --  UART FIFO Transmit Count
      TCFIFO : aliased HAL.UInt8;
      --  UART FIFO Receive Watermark
      RWFIFO : aliased HAL.UInt8;
      --  UART FIFO Receive Count
      RCFIFO : aliased HAL.UInt8;
   end record
     with Volatile;

   for UART_Peripheral use record
      BDH    at 16#0# range 0 .. 7;
      BDL    at 16#1# range 0 .. 7;
      C1     at 16#2# range 0 .. 7;
      C2     at 16#3# range 0 .. 7;
      S1     at 16#4# range 0 .. 7;
      S2     at 16#5# range 0 .. 7;
      C3     at 16#6# range 0 .. 7;
      D      at 16#7# range 0 .. 7;
      MA1    at 16#8# range 0 .. 7;
      MA2    at 16#9# range 0 .. 7;
      C4     at 16#A# range 0 .. 7;
      C5     at 16#B# range 0 .. 7;
      ED     at 16#C# range 0 .. 7;
      MODEM  at 16#D# range 0 .. 7;
      IR     at 16#E# range 0 .. 7;
      PFIFO  at 16#10# range 0 .. 7;
      CFIFO  at 16#11# range 0 .. 7;
      SFIFO  at 16#12# range 0 .. 7;
      TWFIFO at 16#13# range 0 .. 7;
      TCFIFO at 16#14# range 0 .. 7;
      RWFIFO at 16#15# range 0 .. 7;
      RCFIFO at 16#16# range 0 .. 7;
   end record;

   --  Serial Communication Interface
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#4006B000#);

   --  Serial Communication Interface
   UART2_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#4006C000#);

end NRF_SVD.UART;