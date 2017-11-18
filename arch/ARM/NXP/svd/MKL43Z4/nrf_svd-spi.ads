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

--  This spec has been automatically generated from MKL43Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Master Mode Fault Flag
   type S_MODF_Field is
     (
      --  No mode fault error
      S_MODF_Field_0,
      --  Mode fault error detected
      S_MODF_Field_1)
     with Size => 1;
   for S_MODF_Field use
     (S_MODF_Field_0 => 0,
      S_MODF_Field_1 => 1);

   --  SPI Transmit Buffer Empty Flag (when FIFO is not supported or not
   --  enabled) or SPI transmit FIFO empty flag (when FIFO is supported and
   --  enabled)
   type S_SPTEF_Field is
     (
      --  SPI transmit buffer not empty (when FIFOMODE is not present or is 0)
      --  or SPI FIFO not empty (when FIFOMODE is 1)
      S_SPTEF_Field_0,
      --  SPI transmit buffer empty (when FIFOMODE is not present or is 0) or
      --  SPI FIFO empty (when FIFOMODE is 1)
      S_SPTEF_Field_1)
     with Size => 1;
   for S_SPTEF_Field use
     (S_SPTEF_Field_0 => 0,
      S_SPTEF_Field_1 => 1);

   --  SPI Match Flag
   type S_SPMF_Field is
     (
      --  Value in the receive data buffer does not match the value in the
      --  MH:ML registers
      S_SPMF_Field_0,
      --  Value in the receive data buffer matches the value in the MH:ML
      --  registers
      S_SPMF_Field_1)
     with Size => 1;
   for S_SPMF_Field use
     (S_SPMF_Field_0 => 0,
      S_SPMF_Field_1 => 1);

   --  SPI Read Buffer Full Flag (when FIFO is not supported or not enabled) or
   --  SPI read FIFO FULL flag (when FIFO is supported and enabled)
   type S_SPRF_Field is
     (
      --  No data available in the receive data buffer (when FIFOMODE is not
      --  present or is 0) or Read FIFO is not full (when FIFOMODE is 1)
      S_SPRF_Field_0,
      --  Data available in the receive data buffer (when FIFOMODE is not
      --  present or is 0) or Read FIFO is full (when FIFOMODE is 1)
      S_SPRF_Field_1)
     with Size => 1;
   for S_SPRF_Field use
     (S_SPRF_Field_0 => 0,
      S_SPRF_Field_1 => 1);

   --  SPI Status Register
   type SPI0_S_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Read-only. Master Mode Fault Flag
      MODF         : S_MODF_Field := NRF_SVD.SPI.S_MODF_Field_0;
      --  Read-only. SPI Transmit Buffer Empty Flag (when FIFO is not supported
      --  or not enabled) or SPI transmit FIFO empty flag (when FIFO is
      --  supported and enabled)
      SPTEF        : S_SPTEF_Field := NRF_SVD.SPI.S_SPTEF_Field_1;
      --  SPI Match Flag
      SPMF         : S_SPMF_Field := NRF_SVD.SPI.S_SPMF_Field_0;
      --  Read-only. SPI Read Buffer Full Flag (when FIFO is not supported or
      --  not enabled) or SPI read FIFO FULL flag (when FIFO is supported and
      --  enabled)
      SPRF         : S_SPRF_Field := NRF_SVD.SPI.S_SPRF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI0_S_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      MODF         at 0 range 4 .. 4;
      SPTEF        at 0 range 5 .. 5;
      SPMF         at 0 range 6 .. 6;
      SPRF         at 0 range 7 .. 7;
   end record;

   --  SPI Baud Rate Divisor
   type BR_SPR_Field is
     (
      --  Baud rate divisor is 2.
      BR_SPR_Field_0000,
      --  Baud rate divisor is 4.
      BR_SPR_Field_0001,
      --  Baud rate divisor is 8.
      BR_SPR_Field_0010,
      --  Baud rate divisor is 16.
      BR_SPR_Field_0011,
      --  Baud rate divisor is 32.
      BR_SPR_Field_0100,
      --  Baud rate divisor is 64.
      BR_SPR_Field_0101,
      --  Baud rate divisor is 128.
      BR_SPR_Field_0110,
      --  Baud rate divisor is 256.
      BR_SPR_Field_0111,
      --  Baud rate divisor is 512.
      BR_SPR_Field_1000)
     with Size => 4;
   for BR_SPR_Field use
     (BR_SPR_Field_0000 => 0,
      BR_SPR_Field_0001 => 1,
      BR_SPR_Field_0010 => 2,
      BR_SPR_Field_0011 => 3,
      BR_SPR_Field_0100 => 4,
      BR_SPR_Field_0101 => 5,
      BR_SPR_Field_0110 => 6,
      BR_SPR_Field_0111 => 7,
      BR_SPR_Field_1000 => 8);

   --  SPI Baud Rate Prescale Divisor
   type BR_SPPR_Field is
     (
      --  Baud rate prescaler divisor is 1.
      BR_SPPR_Field_000,
      --  Baud rate prescaler divisor is 2.
      BR_SPPR_Field_001,
      --  Baud rate prescaler divisor is 3.
      BR_SPPR_Field_010,
      --  Baud rate prescaler divisor is 4.
      BR_SPPR_Field_011,
      --  Baud rate prescaler divisor is 5.
      BR_SPPR_Field_100,
      --  Baud rate prescaler divisor is 6.
      BR_SPPR_Field_101,
      --  Baud rate prescaler divisor is 7.
      BR_SPPR_Field_110,
      --  Baud rate prescaler divisor is 8.
      BR_SPPR_Field_111)
     with Size => 3;
   for BR_SPPR_Field use
     (BR_SPPR_Field_000 => 0,
      BR_SPPR_Field_001 => 1,
      BR_SPPR_Field_010 => 2,
      BR_SPPR_Field_011 => 3,
      BR_SPPR_Field_100 => 4,
      BR_SPPR_Field_101 => 5,
      BR_SPPR_Field_110 => 6,
      BR_SPPR_Field_111 => 7);

   --  SPI Baud Rate Register
   type SPI0_BR_Register is record
      --  SPI Baud Rate Divisor
      SPR          : BR_SPR_Field := NRF_SVD.SPI.BR_SPR_Field_0000;
      --  SPI Baud Rate Prescale Divisor
      SPPR         : BR_SPPR_Field := NRF_SVD.SPI.BR_SPPR_Field_000;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI0_BR_Register use record
      SPR          at 0 range 0 .. 3;
      SPPR         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  SPI Pin Control 0
   type C2_SPC0_Field is
     (
      --  SPI uses separate pins for data input and data output (pin mode is
      --  normal). In master mode of operation: MISO is master in and MOSI is
      --  master out. In slave mode of operation: MISO is slave out and MOSI is
      --  slave in.
      C2_SPC0_Field_0,
      --  SPI configured for single-wire bidirectional operation (pin mode is
      --  bidirectional). In master mode of operation: MISO is not used by SPI;
      --  MOSI is master in when BIDIROE is 0 or master I/O when BIDIROE is 1.
      --  In slave mode of operation: MISO is slave in when BIDIROE is 0 or
      --  slave I/O when BIDIROE is 1; MOSI is not used by SPI.
      C2_SPC0_Field_1)
     with Size => 1;
   for C2_SPC0_Field use
     (C2_SPC0_Field_0 => 0,
      C2_SPC0_Field_1 => 1);

   --  SPI Stop in Wait Mode
   type C2_SPISWAI_Field is
     (
      --  SPI clocks continue to operate in Wait mode.
      C2_SPISWAI_Field_0,
      --  SPI clocks stop when the MCU enters Wait mode.
      C2_SPISWAI_Field_1)
     with Size => 1;
   for C2_SPISWAI_Field use
     (C2_SPISWAI_Field_0 => 0,
      C2_SPISWAI_Field_1 => 1);

   --  Receive DMA enable
   type C2_RXDMAE_Field is
     (
      --  DMA request for receive is disabled and interrupt from SPRF is
      --  allowed
      C2_RXDMAE_Field_0,
      --  DMA request for receive is enabled and interrupt from SPRF is
      --  disabled
      C2_RXDMAE_Field_1)
     with Size => 1;
   for C2_RXDMAE_Field use
     (C2_RXDMAE_Field_0 => 0,
      C2_RXDMAE_Field_1 => 1);

   --  Bidirectional Mode Output Enable
   type C2_BIDIROE_Field is
     (
      --  Output driver disabled so SPI data I/O pin acts as an input
      C2_BIDIROE_Field_0,
      --  SPI I/O pin enabled as an output
      C2_BIDIROE_Field_1)
     with Size => 1;
   for C2_BIDIROE_Field use
     (C2_BIDIROE_Field_0 => 0,
      C2_BIDIROE_Field_1 => 1);

   --  Master Mode-Fault Function Enable
   type C2_MODFEN_Field is
     (
      --  Mode fault function disabled, master SS pin reverts to
      --  general-purpose I/O not controlled by SPI
      C2_MODFEN_Field_0,
      --  Mode fault function enabled, master SS pin acts as the mode fault
      --  input or the slave select output
      C2_MODFEN_Field_1)
     with Size => 1;
   for C2_MODFEN_Field use
     (C2_MODFEN_Field_0 => 0,
      C2_MODFEN_Field_1 => 1);

   --  Transmit DMA enable
   type C2_TXDMAE_Field is
     (
      --  DMA request for transmit is disabled and interrupt from SPTEF is
      --  allowed
      C2_TXDMAE_Field_0,
      --  DMA request for transmit is enabled and interrupt from SPTEF is
      --  disabled
      C2_TXDMAE_Field_1)
     with Size => 1;
   for C2_TXDMAE_Field use
     (C2_TXDMAE_Field_0 => 0,
      C2_TXDMAE_Field_1 => 1);

   --  SPI 8-bit or 16-bit mode
   type C2_SPIMODE_Field is
     (
      --  8-bit SPI shift register, match register, and buffers
      C2_SPIMODE_Field_0,
      --  16-bit SPI shift register, match register, and buffers
      C2_SPIMODE_Field_1)
     with Size => 1;
   for C2_SPIMODE_Field use
     (C2_SPIMODE_Field_0 => 0,
      C2_SPIMODE_Field_1 => 1);

   --  SPI Match Interrupt Enable
   type C2_SPMIE_Field is
     (
      --  Interrupts from SPMF inhibited (use polling)
      C2_SPMIE_Field_0,
      --  When SPMF is 1, requests a hardware interrupt
      C2_SPMIE_Field_1)
     with Size => 1;
   for C2_SPMIE_Field use
     (C2_SPMIE_Field_0 => 0,
      C2_SPMIE_Field_1 => 1);

   --  SPI Control Register 2
   type SPI0_C2_Register is record
      --  SPI Pin Control 0
      SPC0    : C2_SPC0_Field := NRF_SVD.SPI.C2_SPC0_Field_0;
      --  SPI Stop in Wait Mode
      SPISWAI : C2_SPISWAI_Field := NRF_SVD.SPI.C2_SPISWAI_Field_0;
      --  Receive DMA enable
      RXDMAE  : C2_RXDMAE_Field := NRF_SVD.SPI.C2_RXDMAE_Field_0;
      --  Bidirectional Mode Output Enable
      BIDIROE : C2_BIDIROE_Field := NRF_SVD.SPI.C2_BIDIROE_Field_0;
      --  Master Mode-Fault Function Enable
      MODFEN  : C2_MODFEN_Field := NRF_SVD.SPI.C2_MODFEN_Field_0;
      --  Transmit DMA enable
      TXDMAE  : C2_TXDMAE_Field := NRF_SVD.SPI.C2_TXDMAE_Field_0;
      --  SPI 8-bit or 16-bit mode
      SPIMODE : C2_SPIMODE_Field := NRF_SVD.SPI.C2_SPIMODE_Field_0;
      --  SPI Match Interrupt Enable
      SPMIE   : C2_SPMIE_Field := NRF_SVD.SPI.C2_SPMIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI0_C2_Register use record
      SPC0    at 0 range 0 .. 0;
      SPISWAI at 0 range 1 .. 1;
      RXDMAE  at 0 range 2 .. 2;
      BIDIROE at 0 range 3 .. 3;
      MODFEN  at 0 range 4 .. 4;
      TXDMAE  at 0 range 5 .. 5;
      SPIMODE at 0 range 6 .. 6;
      SPMIE   at 0 range 7 .. 7;
   end record;

   --  LSB First (shifter direction)
   type C1_LSBFE_Field is
     (
      --  SPI serial data transfers start with the most significant bit.
      C1_LSBFE_Field_0,
      --  SPI serial data transfers start with the least significant bit.
      C1_LSBFE_Field_1)
     with Size => 1;
   for C1_LSBFE_Field use
     (C1_LSBFE_Field_0 => 0,
      C1_LSBFE_Field_1 => 1);

   --  Slave Select Output Enable
   type C1_SSOE_Field is
     (
      --  When C2[MODFEN] is 0: In master mode, SS pin function is
      --  general-purpose I/O (not SPI). In slave mode, SS pin function is
      --  slave select input. When C2[MODFEN] is 1: In master mode, SS pin
      --  function is SS input for mode fault. In slave mode, SS pin function
      --  is slave select input.
      C1_SSOE_Field_0,
      --  When C2[MODFEN] is 0: In master mode, SS pin function is
      --  general-purpose I/O (not SPI). In slave mode, SS pin function is
      --  slave select input. When C2[MODFEN] is 1: In master mode, SS pin
      --  function is automatic SS output. In slave mode: SS pin function is
      --  slave select input.
      C1_SSOE_Field_1)
     with Size => 1;
   for C1_SSOE_Field use
     (C1_SSOE_Field_0 => 0,
      C1_SSOE_Field_1 => 1);

   --  Clock Phase
   type C1_CPHA_Field is
     (
      --  First edge on SPSCK occurs at the middle of the first cycle of a data
      --  transfer.
      C1_CPHA_Field_0,
      --  First edge on SPSCK occurs at the start of the first cycle of a data
      --  transfer.
      C1_CPHA_Field_1)
     with Size => 1;
   for C1_CPHA_Field use
     (C1_CPHA_Field_0 => 0,
      C1_CPHA_Field_1 => 1);

   --  Clock Polarity
   type C1_CPOL_Field is
     (
      --  Active-high SPI clock (idles low)
      C1_CPOL_Field_0,
      --  Active-low SPI clock (idles high)
      C1_CPOL_Field_1)
     with Size => 1;
   for C1_CPOL_Field use
     (C1_CPOL_Field_0 => 0,
      C1_CPOL_Field_1 => 1);

   --  Master/Slave Mode Select
   type C1_MSTR_Field is
     (
      --  SPI module configured as a slave SPI device
      C1_MSTR_Field_0,
      --  SPI module configured as a master SPI device
      C1_MSTR_Field_1)
     with Size => 1;
   for C1_MSTR_Field use
     (C1_MSTR_Field_0 => 0,
      C1_MSTR_Field_1 => 1);

   --  SPI Transmit Interrupt Enable
   type C1_SPTIE_Field is
     (
      --  Interrupts from SPTEF inhibited (use polling)
      C1_SPTIE_Field_0,
      --  When SPTEF is 1, hardware interrupt requested
      C1_SPTIE_Field_1)
     with Size => 1;
   for C1_SPTIE_Field use
     (C1_SPTIE_Field_0 => 0,
      C1_SPTIE_Field_1 => 1);

   --  SPI System Enable
   type C1_SPE_Field is
     (
      --  SPI system inactive
      C1_SPE_Field_0,
      --  SPI system enabled
      C1_SPE_Field_1)
     with Size => 1;
   for C1_SPE_Field use
     (C1_SPE_Field_0 => 0,
      C1_SPE_Field_1 => 1);

   --  SPI Interrupt Enable: for SPRF and MODF (when FIFO is not supported or
   --  not enabled) or for read FIFO (when FIFO is supported and enabled)
   type C1_SPIE_Field is
     (
      --  Interrupts from SPRF and MODF are inhibited-use polling (when
      --  FIFOMODE is not present or is 0) or Read FIFO Full Interrupts are
      --  disabled (when FIFOMODE is 1)
      C1_SPIE_Field_0,
      --  Request a hardware interrupt when SPRF or MODF is 1 (when FIFOMODE is
      --  not present or is 0) or Read FIFO Full Interrupts are enabled (when
      --  FIFOMODE is 1)
      C1_SPIE_Field_1)
     with Size => 1;
   for C1_SPIE_Field use
     (C1_SPIE_Field_0 => 0,
      C1_SPIE_Field_1 => 1);

   --  SPI Control Register 1
   type SPI0_C1_Register is record
      --  LSB First (shifter direction)
      LSBFE : C1_LSBFE_Field := NRF_SVD.SPI.C1_LSBFE_Field_0;
      --  Slave Select Output Enable
      SSOE  : C1_SSOE_Field := NRF_SVD.SPI.C1_SSOE_Field_0;
      --  Clock Phase
      CPHA  : C1_CPHA_Field := NRF_SVD.SPI.C1_CPHA_Field_1;
      --  Clock Polarity
      CPOL  : C1_CPOL_Field := NRF_SVD.SPI.C1_CPOL_Field_0;
      --  Master/Slave Mode Select
      MSTR  : C1_MSTR_Field := NRF_SVD.SPI.C1_MSTR_Field_0;
      --  SPI Transmit Interrupt Enable
      SPTIE : C1_SPTIE_Field := NRF_SVD.SPI.C1_SPTIE_Field_0;
      --  SPI System Enable
      SPE   : C1_SPE_Field := NRF_SVD.SPI.C1_SPE_Field_0;
      --  SPI Interrupt Enable: for SPRF and MODF (when FIFO is not supported
      --  or not enabled) or for read FIFO (when FIFO is supported and enabled)
      SPIE  : C1_SPIE_Field := NRF_SVD.SPI.C1_SPIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI0_C1_Register use record
      LSBFE at 0 range 0 .. 0;
      SSOE  at 0 range 1 .. 1;
      CPHA  at 0 range 2 .. 2;
      CPOL  at 0 range 3 .. 3;
      MSTR  at 0 range 4 .. 4;
      SPTIE at 0 range 5 .. 5;
      SPE   at 0 range 6 .. 6;
      SPIE  at 0 range 7 .. 7;
   end record;

   --  SPI read FIFO empty flag
   type S_RFIFOEF_Field is
     (
      --  Read FIFO has data. Reads of the DH:DL registers in 16-bit mode or
      --  the DL register in 8-bit mode will empty the read FIFO.
      S_RFIFOEF_Field_0,
      --  Read FIFO is empty.
      S_RFIFOEF_Field_1)
     with Size => 1;
   for S_RFIFOEF_Field use
     (S_RFIFOEF_Field_0 => 0,
      S_RFIFOEF_Field_1 => 1);

   --  Transmit FIFO full flag
   type S_TXFULLF_Field is
     (
      --  Transmit FIFO has less than 8 bytes
      S_TXFULLF_Field_0,
      --  Transmit FIFO has 8 bytes of data
      S_TXFULLF_Field_1)
     with Size => 1;
   for S_TXFULLF_Field use
     (S_TXFULLF_Field_0 => 0,
      S_TXFULLF_Field_1 => 1);

   --  Transmit FIFO nearly empty flag
   type S_TNEAREF_Field is
     (
      --  Transmit FIFO has more than 16 bits (when C3[TNEAREF_MARK] is 0) or
      --  more than 32 bits (when C3[TNEAREF_MARK] is 1) remaining to transmit
      S_TNEAREF_Field_0,
      --  Transmit FIFO has an amount of data equal to or less than 16 bits
      --  (when C3[TNEAREF_MARK] is 0) or 32 bits (when C3[TNEAREF_MARK] is 1)
      --  remaining to transmit
      S_TNEAREF_Field_1)
     with Size => 1;
   for S_TNEAREF_Field use
     (S_TNEAREF_Field_0 => 0,
      S_TNEAREF_Field_1 => 1);

   --  Receive FIFO nearly full flag
   type S_RNFULLF_Field is
     (
      --  Receive FIFO has received less than 48 bits (when C3[RNFULLF_MARK] is
      --  0) or less than 32 bits (when C3[RNFULLF_MARK] is 1)
      S_RNFULLF_Field_0,
      --  Receive FIFO has received data of an amount equal to or greater than
      --  48 bits (when C3[RNFULLF_MARK] is 0) or 32 bits (when
      --  C3[RNFULLF_MARK] is 1)
      S_RNFULLF_Field_1)
     with Size => 1;
   for S_RNFULLF_Field use
     (S_RNFULLF_Field_0 => 0,
      S_RNFULLF_Field_1 => 1);

   --  SPI Status Register
   type SPI1_S_Register is record
      --  Read-only. SPI read FIFO empty flag
      RFIFOEF : S_RFIFOEF_Field := NRF_SVD.SPI.S_RFIFOEF_Field_0;
      --  Read-only. Transmit FIFO full flag
      TXFULLF : S_TXFULLF_Field := NRF_SVD.SPI.S_TXFULLF_Field_0;
      --  Read-only. Transmit FIFO nearly empty flag
      TNEAREF : S_TNEAREF_Field := NRF_SVD.SPI.S_TNEAREF_Field_0;
      --  Read-only. Receive FIFO nearly full flag
      RNFULLF : S_RNFULLF_Field := NRF_SVD.SPI.S_RNFULLF_Field_0;
      --  Read-only. Master Mode Fault Flag
      MODF    : S_MODF_Field := NRF_SVD.SPI.S_MODF_Field_0;
      --  Read-only. SPI Transmit Buffer Empty Flag (when FIFO is not supported
      --  or not enabled) or SPI transmit FIFO empty flag (when FIFO is
      --  supported and enabled)
      SPTEF   : S_SPTEF_Field := NRF_SVD.SPI.S_SPTEF_Field_1;
      --  SPI Match Flag
      SPMF    : S_SPMF_Field := NRF_SVD.SPI.S_SPMF_Field_0;
      --  Read-only. SPI Read Buffer Full Flag (when FIFO is not supported or
      --  not enabled) or SPI read FIFO FULL flag (when FIFO is supported and
      --  enabled)
      SPRF    : S_SPRF_Field := NRF_SVD.SPI.S_SPRF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI1_S_Register use record
      RFIFOEF at 0 range 0 .. 0;
      TXFULLF at 0 range 1 .. 1;
      TNEAREF at 0 range 2 .. 2;
      RNFULLF at 0 range 3 .. 3;
      MODF    at 0 range 4 .. 4;
      SPTEF   at 0 range 5 .. 5;
      SPMF    at 0 range 6 .. 6;
      SPRF    at 0 range 7 .. 7;
   end record;

   --  Receive FIFO overflow flag
   type CI_RXFOF_Field is
     (
      --  Receive FIFO overflow condition has not occurred
      CI_RXFOF_Field_0,
      --  Receive FIFO overflow condition occurred
      CI_RXFOF_Field_1)
     with Size => 1;
   for CI_RXFOF_Field use
     (CI_RXFOF_Field_0 => 0,
      CI_RXFOF_Field_1 => 1);

   --  Transmit FIFO overflow flag
   type CI_TXFOF_Field is
     (
      --  Transmit FIFO overflow condition has not occurred
      CI_TXFOF_Field_0,
      --  Transmit FIFO overflow condition occurred
      CI_TXFOF_Field_1)
     with Size => 1;
   for CI_TXFOF_Field use
     (CI_TXFOF_Field_0 => 0,
      CI_TXFOF_Field_1 => 1);

   --  Receive FIFO error flag
   type CI_RXFERR_Field is
     (
      --  No receive FIFO error occurred
      CI_RXFERR_Field_0,
      --  A receive FIFO error occurred
      CI_RXFERR_Field_1)
     with Size => 1;
   for CI_RXFERR_Field use
     (CI_RXFERR_Field_0 => 0,
      CI_RXFERR_Field_1 => 1);

   --  Transmit FIFO error flag
   type CI_TXFERR_Field is
     (
      --  No transmit FIFO error occurred
      CI_TXFERR_Field_0,
      --  A transmit FIFO error occurred
      CI_TXFERR_Field_1)
     with Size => 1;
   for CI_TXFERR_Field use
     (CI_TXFERR_Field_0 => 0,
      CI_TXFERR_Field_1 => 1);

   --  SPI clear interrupt register
   type SPI1_CI_Register is record
      --  Write-only. Receive FIFO full flag clear interrupt
      SPRFCI    : Boolean := False;
      --  Write-only. Transmit FIFO empty flag clear interrupt
      SPTEFCI   : Boolean := False;
      --  Write-only. Receive FIFO nearly full flag clear interrupt
      RNFULLFCI : Boolean := False;
      --  Write-only. Transmit FIFO nearly empty flag clear interrupt
      TNEAREFCI : Boolean := False;
      --  Read-only. Receive FIFO overflow flag
      RXFOF     : CI_RXFOF_Field := NRF_SVD.SPI.CI_RXFOF_Field_0;
      --  Read-only. Transmit FIFO overflow flag
      TXFOF     : CI_TXFOF_Field := NRF_SVD.SPI.CI_TXFOF_Field_0;
      --  Read-only. Receive FIFO error flag
      RXFERR    : CI_RXFERR_Field := NRF_SVD.SPI.CI_RXFERR_Field_0;
      --  Read-only. Transmit FIFO error flag
      TXFERR    : CI_TXFERR_Field := NRF_SVD.SPI.CI_TXFERR_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI1_CI_Register use record
      SPRFCI    at 0 range 0 .. 0;
      SPTEFCI   at 0 range 1 .. 1;
      RNFULLFCI at 0 range 2 .. 2;
      TNEAREFCI at 0 range 3 .. 3;
      RXFOF     at 0 range 4 .. 4;
      TXFOF     at 0 range 5 .. 5;
      RXFERR    at 0 range 6 .. 6;
      TXFERR    at 0 range 7 .. 7;
   end record;

   --  FIFO mode enable
   type C3_FIFOMODE_Field is
     (
      --  Buffer mode disabled
      C3_FIFOMODE_Field_0,
      --  Data available in the receive data buffer
      C3_FIFOMODE_Field_1)
     with Size => 1;
   for C3_FIFOMODE_Field use
     (C3_FIFOMODE_Field_0 => 0,
      C3_FIFOMODE_Field_1 => 1);

   --  Receive FIFO nearly full interrupt enable
   type C3_RNFULLIEN_Field is
     (
      --  No interrupt upon RNFULLF being set
      C3_RNFULLIEN_Field_0,
      --  Enable interrupts upon RNFULLF being set
      C3_RNFULLIEN_Field_1)
     with Size => 1;
   for C3_RNFULLIEN_Field use
     (C3_RNFULLIEN_Field_0 => 0,
      C3_RNFULLIEN_Field_1 => 1);

   --  Transmit FIFO nearly empty interrupt enable
   type C3_TNEARIEN_Field is
     (
      --  No interrupt upon TNEAREF being set
      C3_TNEARIEN_Field_0,
      --  Enable interrupts upon TNEAREF being set
      C3_TNEARIEN_Field_1)
     with Size => 1;
   for C3_TNEARIEN_Field use
     (C3_TNEARIEN_Field_0 => 0,
      C3_TNEARIEN_Field_1 => 1);

   --  Interrupt clearing mechanism select
   type C3_INTCLR_Field is
     (
      --  These interrupts are cleared when the corresponding flags are cleared
      --  depending on the state of the FIFOs
      C3_INTCLR_Field_0,
      --  These interrupts are cleared by writing the corresponding bits in the
      --  CI register
      C3_INTCLR_Field_1)
     with Size => 1;
   for C3_INTCLR_Field use
     (C3_INTCLR_Field_0 => 0,
      C3_INTCLR_Field_1 => 1);

   --  Receive FIFO nearly full watermark
   type C3_RNFULLF_MARK_Field is
     (
      --  RNFULLF is set when the receive FIFO has 48 bits or more
      C3_RNFULLF_MARK_Field_0,
      --  RNFULLF is set when the receive FIFO has 32 bits or more
      C3_RNFULLF_MARK_Field_1)
     with Size => 1;
   for C3_RNFULLF_MARK_Field use
     (C3_RNFULLF_MARK_Field_0 => 0,
      C3_RNFULLF_MARK_Field_1 => 1);

   --  Transmit FIFO nearly empty watermark
   type C3_TNEAREF_MARK_Field is
     (
      --  TNEAREF is set when the transmit FIFO has 16 bits or less
      C3_TNEAREF_MARK_Field_0,
      --  TNEAREF is set when the transmit FIFO has 32 bits or less
      C3_TNEAREF_MARK_Field_1)
     with Size => 1;
   for C3_TNEAREF_MARK_Field use
     (C3_TNEAREF_MARK_Field_0 => 0,
      C3_TNEAREF_MARK_Field_1 => 1);

   --  SPI control register 3
   type SPI1_C3_Register is record
      --  FIFO mode enable
      FIFOMODE     : C3_FIFOMODE_Field := NRF_SVD.SPI.C3_FIFOMODE_Field_0;
      --  Receive FIFO nearly full interrupt enable
      RNFULLIEN    : C3_RNFULLIEN_Field := NRF_SVD.SPI.C3_RNFULLIEN_Field_0;
      --  Transmit FIFO nearly empty interrupt enable
      TNEARIEN     : C3_TNEARIEN_Field := NRF_SVD.SPI.C3_TNEARIEN_Field_0;
      --  Interrupt clearing mechanism select
      INTCLR       : C3_INTCLR_Field := NRF_SVD.SPI.C3_INTCLR_Field_0;
      --  Receive FIFO nearly full watermark
      RNFULLF_MARK : C3_RNFULLF_MARK_Field :=
                      NRF_SVD.SPI.C3_RNFULLF_MARK_Field_0;
      --  Transmit FIFO nearly empty watermark
      TNEAREF_MARK : C3_TNEAREF_MARK_Field :=
                      NRF_SVD.SPI.C3_TNEAREF_MARK_Field_0;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI1_C3_Register use record
      FIFOMODE     at 0 range 0 .. 0;
      RNFULLIEN    at 0 range 1 .. 1;
      TNEARIEN     at 0 range 2 .. 2;
      INTCLR       at 0 range 3 .. 3;
      RNFULLF_MARK at 0 range 4 .. 4;
      TNEAREF_MARK at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI0_Peripheral is record
      --  SPI Status Register
      S  : aliased SPI0_S_Register;
      --  SPI Baud Rate Register
      BR : aliased SPI0_BR_Register;
      --  SPI Control Register 2
      C2 : aliased SPI0_C2_Register;
      --  SPI Control Register 1
      C1 : aliased SPI0_C1_Register;
      --  SPI Match Register low
      ML : aliased HAL.UInt8;
      --  SPI match register high
      MH : aliased HAL.UInt8;
      --  SPI Data Register low
      DL : aliased HAL.UInt8;
      --  SPI data register high
      DH : aliased HAL.UInt8;
   end record
     with Volatile;

   for SPI0_Peripheral use record
      S  at 16#0# range 0 .. 7;
      BR at 16#1# range 0 .. 7;
      C2 at 16#2# range 0 .. 7;
      C1 at 16#3# range 0 .. 7;
      ML at 16#4# range 0 .. 7;
      MH at 16#5# range 0 .. 7;
      DL at 16#6# range 0 .. 7;
      DH at 16#7# range 0 .. 7;
   end record;

   --  Serial Peripheral Interface
   SPI0_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#40076000#);

   --  Serial Peripheral Interface
   type SPI1_Peripheral is record
      --  SPI Status Register
      S  : aliased SPI1_S_Register;
      --  SPI Baud Rate Register
      BR : aliased SPI0_BR_Register;
      --  SPI Control Register 2
      C2 : aliased SPI0_C2_Register;
      --  SPI Control Register 1
      C1 : aliased SPI0_C1_Register;
      --  SPI Match Register low
      ML : aliased HAL.UInt8;
      --  SPI match register high
      MH : aliased HAL.UInt8;
      --  SPI Data Register low
      DL : aliased HAL.UInt8;
      --  SPI data register high
      DH : aliased HAL.UInt8;
      --  SPI clear interrupt register
      CI : aliased SPI1_CI_Register;
      --  SPI control register 3
      C3 : aliased SPI1_C3_Register;
   end record
     with Volatile;

   for SPI1_Peripheral use record
      S  at 16#0# range 0 .. 7;
      BR at 16#1# range 0 .. 7;
      C2 at 16#2# range 0 .. 7;
      C1 at 16#3# range 0 .. 7;
      ML at 16#4# range 0 .. 7;
      MH at 16#5# range 0 .. 7;
      DL at 16#6# range 0 .. 7;
      DH at 16#7# range 0 .. 7;
      CI at 16#A# range 0 .. 7;
      C3 at 16#B# range 0 .. 7;
   end record;

   --  Serial Peripheral Interface
   SPI1_Periph : aliased SPI1_Peripheral
     with Import, Address => System'To_Address (16#40077000#);

end NRF_SVD.SPI;
