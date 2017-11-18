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

package NRF_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

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

   --  SPI Interrupt Enable: for SPRF and MODF
   type C1_SPIE_Field is
     (
      --  Interrupts from SPRF and MODF are inhibited-use polling
      C1_SPIE_Field_0,
      --  Request a hardware interrupt when SPRF or MODF is 1
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
      --  SPI Interrupt Enable: for SPRF and MODF
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
      SPC0         : C2_SPC0_Field := NRF_SVD.SPI.C2_SPC0_Field_0;
      --  SPI Stop in Wait Mode
      SPISWAI      : C2_SPISWAI_Field := NRF_SVD.SPI.C2_SPISWAI_Field_0;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Bidirectional Mode Output Enable
      BIDIROE      : C2_BIDIROE_Field := NRF_SVD.SPI.C2_BIDIROE_Field_0;
      --  Master Mode-Fault Function Enable
      MODFEN       : C2_MODFEN_Field := NRF_SVD.SPI.C2_MODFEN_Field_0;
      --  unspecified
      Reserved_5_6 : HAL.UInt2 := 16#0#;
      --  SPI Match Interrupt Enable
      SPMIE        : C2_SPMIE_Field := NRF_SVD.SPI.C2_SPMIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI0_C2_Register use record
      SPC0         at 0 range 0 .. 0;
      SPISWAI      at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      BIDIROE      at 0 range 3 .. 3;
      MODFEN       at 0 range 4 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      SPMIE        at 0 range 7 .. 7;
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

   --  SPI Transmit Buffer Empty Flag
   type S_SPTEF_Field is
     (
      --  SPI transmit buffer not empty
      S_SPTEF_Field_0,
      --  SPI transmit buffer empty
      S_SPTEF_Field_1)
     with Size => 1;
   for S_SPTEF_Field use
     (S_SPTEF_Field_0 => 0,
      S_SPTEF_Field_1 => 1);

   --  SPI Match Flag
   type S_SPMF_Field is
     (
      --  Value in the receive data buffer does not match the value in the M
      --  register
      S_SPMF_Field_0,
      --  Value in the receive data buffer matches the value in the M register
      S_SPMF_Field_1)
     with Size => 1;
   for S_SPMF_Field use
     (S_SPMF_Field_0 => 0,
      S_SPMF_Field_1 => 1);

   --  SPI Read Buffer Full Flag
   type S_SPRF_Field is
     (
      --  No data available in the receive data buffer
      S_SPRF_Field_0,
      --  Data available in the receive data buffer
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
      --  Read-only. SPI Transmit Buffer Empty Flag
      SPTEF        : S_SPTEF_Field := NRF_SVD.SPI.S_SPTEF_Field_1;
      --  SPI Match Flag
      SPMF         : S_SPMF_Field := NRF_SVD.SPI.S_SPMF_Field_0;
      --  Read-only. SPI Read Buffer Full Flag
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

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI_Peripheral is record
      --  SPI Control Register 1
      C1 : aliased SPI0_C1_Register;
      --  SPI Control Register 2
      C2 : aliased SPI0_C2_Register;
      --  SPI Baud Rate Register
      BR : aliased SPI0_BR_Register;
      --  SPI Status Register
      S  : aliased SPI0_S_Register;
      --  SPI Data Register
      D  : aliased HAL.UInt8;
      --  SPI Match Register
      M  : aliased HAL.UInt8;
   end record
     with Volatile;

   for SPI_Peripheral use record
      C1 at 16#0# range 0 .. 7;
      C2 at 16#1# range 0 .. 7;
      BR at 16#2# range 0 .. 7;
      S  at 16#3# range 0 .. 7;
      D  at 16#5# range 0 .. 7;
      M  at 16#7# range 0 .. 7;
   end record;

   --  Serial Peripheral Interface
   SPI0_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40076000#);

   --  Serial Peripheral Interface
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40077000#);

end NRF_SVD.SPI;
