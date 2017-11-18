--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54101.xml

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

   --  SPI enable.
   type CFG_ENABLE_Field is
     (
      --  Disabled. The SPI is disabled and the internal state machine and
      --  counters are reset.
      Disabled,
      --  Enabled. The SPI is enabled for operation.
      Enabled)
     with Size => 1;
   for CFG_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Master mode select.
   type CFG_MASTER_Field is
     (
      --  Slave mode. The SPI will operate in slave mode. SCK, MOSI, and the
      --  SSEL signals are inputs, MISO is an output.
      Slave_Mode,
      --  Master mode. The SPI will operate in master mode. SCK, MOSI, and the
      --  SSEL signals are outputs, MISO is an input.
      Master_Mode)
     with Size => 1;
   for CFG_MASTER_Field use
     (Slave_Mode => 0,
      Master_Mode => 1);

   --  LSB First mode enable.
   type CFG_LSBF_Field is
     (
      --  Standard. Data is transmitted and received in standard MSB first
      --  order.
      Standard,
      --  Reverse. Data is transmitted and received in reverse order (LSB
      --  first).
      Reverse_k)
     with Size => 1;
   for CFG_LSBF_Field use
     (Standard => 0,
      Reverse_k => 1);

   --  Clock Phase select.
   type CFG_CPHA_Field is
     (
      --  Change. The SPI captures serial data on the first clock transition of
      --  the transfer (when the clock changes away from the rest state). Data
      --  is changed on the following edge.
      Change,
      --  Capture. The SPI changes serial data on the first clock transition of
      --  the transfer (when the clock changes away from the rest state). Data
      --  is captured on the following edge.
      Capture)
     with Size => 1;
   for CFG_CPHA_Field use
     (Change => 0,
      Capture => 1);

   --  Clock Polarity select.
   type CFG_CPOL_Field is
     (
      --  Low. The rest state of the clock (between transfers) is low.
      Low,
      --  High. The rest state of the clock (between transfers) is high.
      High)
     with Size => 1;
   for CFG_CPOL_Field use
     (Low => 0,
      High => 1);

   --  Loopback mode enable. Loopback mode applies only to Master mode, and
   --  connects transmit and receive data connected together to allow simple
   --  software testing.
   type CFG_LOOP_Field is
     (
      --  Disabled.
      Disabled,
      --  Enabled.
      Enabled)
     with Size => 1;
   for CFG_LOOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  SSEL0 Polarity select.
   type CFG_SPOL0_Field is
     (
      --  Low. The SSEL0 pin is active low. The value in the SSEL0 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL0 is not
      --  inverted relative to the pins.
      Low,
      --  High. The SSEL0 pin is active high. The value in the SSEL0 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL0 is inverted
      --  relative to the pins.
      High)
     with Size => 1;
   for CFG_SPOL0_Field use
     (Low => 0,
      High => 1);

   --  SSEL1 Polarity select.
   type CFG_SPOL1_Field is
     (
      --  Low. The SSEL1 pin is active low. The value in the SSEL1 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL1 is not
      --  inverted relative to the pins.
      Low,
      --  High. The SSEL1 pin is active high. The value in the SSEL1 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL1 is inverted
      --  relative to the pins.
      High)
     with Size => 1;
   for CFG_SPOL1_Field use
     (Low => 0,
      High => 1);

   --  SSEL2 Polarity select.
   type CFG_SPOL2_Field is
     (
      --  Low. The SSEL2 pin is active low. The value in the SSEL2 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL2 is not
      --  inverted relative to the pins.
      Low,
      --  High. The SSEL2 pin is active high. The value in the SSEL2 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL2 is inverted
      --  relative to the pins.
      High)
     with Size => 1;
   for CFG_SPOL2_Field use
     (Low => 0,
      High => 1);

   --  SSEL3 Polarity select.
   type CFG_SPOL3_Field is
     (
      --  Low. The SSEL3 pin is active low. The value in the SSEL3 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL3 is not
      --  inverted relative to the pins.
      Low,
      --  High. The SSEL3 pin is active high. The value in the SSEL3 fields of
      --  the RXDAT, TXDATCTL, and TXCTL registers related to SSEL3 is inverted
      --  relative to the pins.
      High)
     with Size => 1;
   for CFG_SPOL3_Field use
     (Low => 0,
      High => 1);

   --  SPI Configuration register
   type CFG_Register is record
      --  SPI enable.
      ENABLE         : CFG_ENABLE_Field := NRF_SVD.SPI.Disabled;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Master mode select.
      MASTER         : CFG_MASTER_Field := NRF_SVD.SPI.Slave_Mode;
      --  LSB First mode enable.
      LSBF           : CFG_LSBF_Field := NRF_SVD.SPI.Standard;
      --  Clock Phase select.
      CPHA           : CFG_CPHA_Field := NRF_SVD.SPI.Change;
      --  Clock Polarity select.
      CPOL           : CFG_CPOL_Field := NRF_SVD.SPI.Low;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Loopback mode enable. Loopback mode applies only to Master mode, and
      --  connects transmit and receive data connected together to allow simple
      --  software testing.
      LOOP_k         : CFG_LOOP_Field := NRF_SVD.SPI.Disabled;
      --  SSEL0 Polarity select.
      SPOL0          : CFG_SPOL0_Field := NRF_SVD.SPI.Low;
      --  SSEL1 Polarity select.
      SPOL1          : CFG_SPOL1_Field := NRF_SVD.SPI.Low;
      --  SSEL2 Polarity select.
      SPOL2          : CFG_SPOL2_Field := NRF_SVD.SPI.Low;
      --  SSEL3 Polarity select.
      SPOL3          : CFG_SPOL3_Field := NRF_SVD.SPI.Low;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      MASTER         at 0 range 2 .. 2;
      LSBF           at 0 range 3 .. 3;
      CPHA           at 0 range 4 .. 4;
      CPOL           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LOOP_k         at 0 range 7 .. 7;
      SPOL0          at 0 range 8 .. 8;
      SPOL1          at 0 range 9 .. 9;
      SPOL2          at 0 range 10 .. 10;
      SPOL3          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DLY_PRE_DELAY_Field is HAL.UInt4;
   subtype DLY_POST_DELAY_Field is HAL.UInt4;
   subtype DLY_FRAME_DELAY_Field is HAL.UInt4;
   subtype DLY_TRANSFER_DELAY_Field is HAL.UInt4;

   --  SPI Delay register
   type DLY_Register is record
      --  Controls the amount of time between SSEL assertion and the beginning
      --  of a data transfer. There is always one SPI clock time between SSEL
      --  assertion and the first clock edge. This is not considered part of
      --  the pre-delay. 0x0 = No additional time is inserted. 0x1 = 1 SPI
      --  clock time is inserted. 0x2 = 2 SPI clock times are inserted. ... 0xF
      --  = 15 SPI clock times are inserted.
      PRE_DELAY      : DLY_PRE_DELAY_Field := 16#0#;
      --  Controls the amount of time between the end of a data transfer and
      --  SSEL deassertion. 0x0 = No additional time is inserted. 0x1 = 1 SPI
      --  clock time is inserted. 0x2 = 2 SPI clock times are inserted. ... 0xF
      --  = 15 SPI clock times are inserted.
      POST_DELAY     : DLY_POST_DELAY_Field := 16#0#;
      --  If the EOF flag is set, controls the minimum amount of time between
      --  the current frame and the next frame (or SSEL deassertion if EOT).
      --  0x0 = No additional time is inserted. 0x1 = 1 SPI clock time is
      --  inserted. 0x2 = 2 SPI clock times are inserted. ... 0xF = 15 SPI
      --  clock times are inserted.
      FRAME_DELAY    : DLY_FRAME_DELAY_Field := 16#0#;
      --  Controls the minimum amount of time that the SSEL is deasserted
      --  between transfers. 0x0 = The minimum time that SSEL is deasserted is
      --  1 SPI clock time. (Zero added time.) 0x1 = The minimum time that SSEL
      --  is deasserted is 2 SPI clock times. 0x2 = The minimum time that SSEL
      --  is deasserted is 3 SPI clock times. ... 0xF = The minimum time that
      --  SSEL is deasserted is 16 SPI clock times.
      TRANSFER_DELAY : DLY_TRANSFER_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLY_Register use record
      PRE_DELAY      at 0 range 0 .. 3;
      POST_DELAY     at 0 range 4 .. 7;
      FRAME_DELAY    at 0 range 8 .. 11;
      TRANSFER_DELAY at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SPI Status. Some status flags can be cleared by writing a 1 to that bit
   --  position
   type STAT_Register is record
      --  Receiver Ready flag. When 1, indicates that data is available to be
      --  read from the receiver buffer. Cleared after a read of the RXDAT
      --  register.
      RXRDY         : Boolean := False;
      --  Transmitter Ready flag. When 1, this bit indicates that data may be
      --  written to the transmit buffer. Previous data may still be in the
      --  process of being transmitted. Cleared when data is written to TXDAT
      --  or TXDATCTL until the data is moved to the transmit shift register.
      TXRDY         : Boolean := True;
      --  Receiver Overrun interrupt flag. This flag applies only to slave mode
      --  (Master = 0). This flag is set when the beginning of a received
      --  character is detected while the receiver buffer is still in use. If
      --  this occurs, the receiver buffer contents are preserved, and the
      --  incoming data is lost. Data received by the SPI should be considered
      --  undefined if RxOv is set.
      RXOV          : Boolean := False;
      --  Transmitter Underrun interrupt flag. This flag applies only to slave
      --  mode (Master = 0). In this case, the transmitter must begin sending
      --  new data on the next input clock if the transmitter is idle. If that
      --  data is not available in the transmitter holding register at that
      --  point, there is no data to transmit and the TXUR flag is set. Data
      --  transmitted by the SPI should be considered undefined if TXUR is set.
      TXUR          : Boolean := False;
      --  Slave Select Assert. This flag is set whenever any slave select
      --  transitions from deasserted to asserted, in both master and slave
      --  modes. This allows determining when the SPI transmit/receive
      --  functions become busy, and allows waking up the device from reduced
      --  power modes when a slave mode access begins. This flag is cleared by
      --  software.
      SSA           : Boolean := False;
      --  Slave Select Deassert. This flag is set whenever any asserted slave
      --  selects transition to deasserted, in both master and slave modes.
      --  This allows determining when the SPI transmit/receive functions
      --  become idle. This flag is cleared by software.
      SSD           : Boolean := False;
      --  Stalled status flag. This indicates whether the SPI is currently in a
      --  stall condition.
      STALLED       : Boolean := False;
      --  End Transfer control bit. Software can set this bit to force an end
      --  to the current transfer when the transmitter finishes any activity
      --  already in progress, as if the EOT flag had been set prior to the
      --  last transmission. This capability is included to support cases where
      --  it is not known when transmit data is written that it will be the end
      --  of a transfer. The bit is cleared when the transmitter becomes idle
      --  as the transfer comes to an end. Forcing an end of transfer in this
      --  manner causes any specified FRAME_DELAY and TRANSFER_DELAY to be
      --  inserted.
      ENDTRANSFER   : Boolean := False;
      --  Master idle status flag. This bit is 1 whenever the SPI master
      --  function is fully idle. This means that the transmit holding register
      --  is empty and the transmitter is not in the process of sending data.
      MSTIDLE       : Boolean := True;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      RXRDY         at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      RXOV          at 0 range 2 .. 2;
      TXUR          at 0 range 3 .. 3;
      SSA           at 0 range 4 .. 4;
      SSD           at 0 range 5 .. 5;
      STALLED       at 0 range 6 .. 6;
      ENDTRANSFER   at 0 range 7 .. 7;
      MSTIDLE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RX ready interrupt enable. Determines whether an interrupt occurs when
   --  receiver data is available.
   type INTENSET_RXRDYEN_Field is
     (
      --  Disabled. No interrupt will be generated when receiver data is
      --  available.
      Disabled,
      --  Enabled. An interrupt will be generated when receiver data is
      --  available in the RXDAT register.
      Enabled)
     with Size => 1;
   for INTENSET_RXRDYEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  TX ready interrupt enable. Determines whether an interrupt occurs when
   --  the transmitter holding register is available.
   type INTENSET_TXRDYEN_Field is
     (
      --  Disabled. No interrupt will be generated when the transmitter holding
      --  register is available.
      Disabled,
      --  Enabled. An interrupt will be generated when data may be written to
      --  TXDAT.
      Enabled)
     with Size => 1;
   for INTENSET_TXRDYEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  RX overrun interrupt enable. Determines whether an interrupt occurs when
   --  a receiver overrun occurs. This happens in slave mode when there is a
   --  need for the receiver to move newly received data to the RXDAT register
   --  when it is already in use. The interface prevents receiver overrun in
   --  Master mode by not allowing a new transmission to begin when a receiver
   --  overrun would otherwise occur.
   type INTENSET_RXOVEN_Field is
     (
      --  Disabled. No interrupt will be generated when a receiver overrun
      --  occurs.
      Disabled,
      --  Enabled. An interrupt will be generated if a receiver overrun occurs.
      Enabled)
     with Size => 1;
   for INTENSET_RXOVEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  TX underrun interrupt enable. Determines whether an interrupt occurs
   --  when a transmitter underrun occurs. This happens in slave mode when
   --  there is a need to transmit data when none is available.
   type INTENSET_TXUREN_Field is
     (
      --  Disabled. No interrupt will be generated when the transmitter
      --  underruns.
      Disabled,
      --  Enabled. An interrupt will be generated if the transmitter underruns.
      Enabled)
     with Size => 1;
   for INTENSET_TXUREN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Slave select assert interrupt enable. Determines whether an interrupt
   --  occurs when the Slave Select is asserted.
   type INTENSET_SSAEN_Field is
     (
      --  Disabled. No interrupt will be generated when any Slave Select
      --  transitions from deasserted to asserted.
      Disabled,
      --  Enabled. An interrupt will be generated when any Slave Select
      --  transitions from deasserted to asserted.
      Enabled)
     with Size => 1;
   for INTENSET_SSAEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Slave select deassert interrupt enable. Determines whether an interrupt
   --  occurs when the Slave Select is deasserted.
   type INTENSET_SSDEN_Field is
     (
      --  Disabled. No interrupt will be generated when all asserted Slave
      --  Selects transition to deasserted.
      Disabled,
      --  Enabled. An interrupt will be generated when all asserted Slave
      --  Selects transition to deasserted.
      Enabled)
     with Size => 1;
   for INTENSET_SSDEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Master idle interrupt enable
   type INTENSET_MSTIDLEEN_Field is
     (
      --  Disabled. No interrupt will be generated when the SPI master function
      --  is idle.
      Disabled,
      --  Enabled. An interrupt will be generated when the SPI master function
      --  is idle.
      Enabled)
     with Size => 1;
   for INTENSET_MSTIDLEEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  SPI Interrupt Enable read and Set. A complete value may be read from
   --  this register. Writing a 1 to any implemented bit position causes that
   --  bit to be set.
   type INTENSET_Register is record
      --  RX ready interrupt enable. Determines whether an interrupt occurs
      --  when receiver data is available.
      RXRDYEN       : INTENSET_RXRDYEN_Field := NRF_SVD.SPI.Disabled;
      --  TX ready interrupt enable. Determines whether an interrupt occurs
      --  when the transmitter holding register is available.
      TXRDYEN       : INTENSET_TXRDYEN_Field := NRF_SVD.SPI.Disabled;
      --  RX overrun interrupt enable. Determines whether an interrupt occurs
      --  when a receiver overrun occurs. This happens in slave mode when there
      --  is a need for the receiver to move newly received data to the RXDAT
      --  register when it is already in use. The interface prevents receiver
      --  overrun in Master mode by not allowing a new transmission to begin
      --  when a receiver overrun would otherwise occur.
      RXOVEN        : INTENSET_RXOVEN_Field := NRF_SVD.SPI.Disabled;
      --  TX underrun interrupt enable. Determines whether an interrupt occurs
      --  when a transmitter underrun occurs. This happens in slave mode when
      --  there is a need to transmit data when none is available.
      TXUREN        : INTENSET_TXUREN_Field := NRF_SVD.SPI.Disabled;
      --  Slave select assert interrupt enable. Determines whether an interrupt
      --  occurs when the Slave Select is asserted.
      SSAEN         : INTENSET_SSAEN_Field := NRF_SVD.SPI.Disabled;
      --  Slave select deassert interrupt enable. Determines whether an
      --  interrupt occurs when the Slave Select is deasserted.
      SSDEN         : INTENSET_SSDEN_Field := NRF_SVD.SPI.Disabled;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Master idle interrupt enable
      MSTIDLEEN     : INTENSET_MSTIDLEEN_Field := NRF_SVD.SPI.Disabled;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      RXRDYEN       at 0 range 0 .. 0;
      TXRDYEN       at 0 range 1 .. 1;
      RXOVEN        at 0 range 2 .. 2;
      TXUREN        at 0 range 3 .. 3;
      SSAEN         at 0 range 4 .. 4;
      SSDEN         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      MSTIDLEEN     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SPI Interrupt Enable Clear. Writing a 1 to any implemented bit position
   --  causes the corresponding bit in INTENSET to be cleared.
   type INTENCLR_Register is record
      --  Writing 1 clears the corresponding bits in the INTENSET register.
      RXRDYEN       : Boolean := False;
      --  Writing 1 clears the corresponding bits in the INTENSET register.
      TXRDYEN       : Boolean := False;
      --  Writing 1 clears the corresponding bits in the INTENSET register.
      RXOVEN        : Boolean := False;
      --  Writing 1 clears the corresponding bits in the INTENSET register.
      TXUREN        : Boolean := False;
      --  Writing 1 clears the corresponding bits in the INTENSET register.
      SSAEN         : Boolean := False;
      --  Writing 1 clears the corresponding bits in the INTENSET register.
      SSDEN         : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Writing 1 clears the corresponding bits in the MSTIDLE register.
      MSTIDLE       : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      RXRDYEN       at 0 range 0 .. 0;
      TXRDYEN       at 0 range 1 .. 1;
      RXOVEN        at 0 range 2 .. 2;
      TXUREN        at 0 range 3 .. 3;
      SSAEN         at 0 range 4 .. 4;
      SSDEN         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      MSTIDLE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RXDAT_RXDAT_Field is HAL.UInt16;

   --  SPI Receive Data
   type RXDAT_Register is record
      --  Receiver Data. This contains the next piece of received data. The
      --  number of bits that are used depends on the LEN setting in TXCTL /
      --  TXDATCTL.
      RXDAT          : RXDAT_RXDAT_Field := 16#0#;
      --  Slave Select for receive. This field allows the state of the SSEL0
      --  pin to be saved along with received data. The value will reflect the
      --  SSEL0 pin for both master and slave operation. A zero indicates that
      --  a slave select is active. The actual polarity of each slave select
      --  pin is configured by the related SPOL bit in CFG.
      RXSSEL0_N      : Boolean := False;
      --  Slave Select for receive. This field allows the state of the SSEL1
      --  pin to be saved along with received data. The value will reflect the
      --  SSEL1 pin for both master and slave operation. A zero indicates that
      --  a slave select is active. The actual polarity of each slave select
      --  pin is configured by the related SPOL bit in CFG.
      RXSSEL1_N      : Boolean := False;
      --  Slave Select for receive. This field allows the state of the SSEL2
      --  pin to be saved along with received data. The value will reflect the
      --  SSEL2 pin for both master and slave operation. A zero indicates that
      --  a slave select is active. The actual polarity of each slave select
      --  pin is configured by the related SPOL bit in CFG.
      RXSSEL2_N      : Boolean := False;
      --  Slave Select for receive. This field allows the state of the SSEL3
      --  pin to be saved along with received data. The value will reflect the
      --  SSEL3 pin for both master and slave operation. A zero indicates that
      --  a slave select is active. The actual polarity of each slave select
      --  pin is configured by the related SPOL bit in CFG.
      RXSSEL3_N      : Boolean := False;
      --  Start of Transfer flag. This flag will be 1 if this is the first data
      --  after the SSELs went from deasserted to asserted (i.e., any previous
      --  transfer has ended). This information can be used to identify the
      --  first piece of data in cases where the transfer length is greater
      --  than 16 bit.
      SOT            : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDAT_Register use record
      RXDAT          at 0 range 0 .. 15;
      RXSSEL0_N      at 0 range 16 .. 16;
      RXSSEL1_N      at 0 range 17 .. 17;
      RXSSEL2_N      at 0 range 18 .. 18;
      RXSSEL3_N      at 0 range 19 .. 19;
      SOT            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype TXDATCTL_TXDAT_Field is HAL.UInt16;

   --  Transmit Slave Select. This field asserts SSEL0 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL0 pin is configured by bits in the CFG register.
   type TXDATCTL_TXSSEL0_N_Field is
     (
      --  SSEL0 asserted.
      Ssel0_Asserted,
      --  SSEL0 not asserted.
      Ssel0_Not_Asserted)
     with Size => 1;
   for TXDATCTL_TXSSEL0_N_Field use
     (Ssel0_Asserted => 0,
      Ssel0_Not_Asserted => 1);

   --  Transmit Slave Select. This field asserts SSEL1 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL1 pin is configured by bits in the CFG register.
   type TXDATCTL_TXSSEL1_N_Field is
     (
      --  SSEL1 asserted.
      Ssel1_Asserted,
      --  SSEL1 not asserted.
      Ssel1_Not_Asserted)
     with Size => 1;
   for TXDATCTL_TXSSEL1_N_Field use
     (Ssel1_Asserted => 0,
      Ssel1_Not_Asserted => 1);

   --  Transmit Slave Select. This field asserts SSEL2 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL2 pin is configured by bits in the CFG register.
   type TXDATCTL_TXSSEL2_N_Field is
     (
      --  SSEL2 asserted.
      Ssel2_Asserted,
      --  SSEL2 not asserted.
      Ssel2_Not_Asserted)
     with Size => 1;
   for TXDATCTL_TXSSEL2_N_Field use
     (Ssel2_Asserted => 0,
      Ssel2_Not_Asserted => 1);

   --  Transmit Slave Select. This field asserts SSEL3 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL3 pin is configured by bits in the CFG register.
   type TXDATCTL_TXSSEL3_N_Field is
     (
      --  SSEL3 asserted.
      Ssel3_Asserted,
      --  SSEL3 not asserted.
      Ssel3_Not_Asserted)
     with Size => 1;
   for TXDATCTL_TXSSEL3_N_Field use
     (Ssel3_Asserted => 0,
      Ssel3_Not_Asserted => 1);

   --  End of Transfer. The asserted SSEL will be deasserted at the end of a
   --  transfer, and remain so for at least the time specified by the
   --  Transfer_delay value in the DLY register.
   type TXDATCTL_EOT_Field is
     (
      --  SSEL not deasserted. This piece of data is not treated as the end of
      --  a transfer. SSEL will not be deasserted at the end of this data.
      Ssel_Not_Deasserted,
      --  SSEL deasserted. This piece of data is treated as the end of a
      --  transfer. SSEL will be deasserted at the end of this piece of data.
      Ssel_Deasserted)
     with Size => 1;
   for TXDATCTL_EOT_Field use
     (Ssel_Not_Deasserted => 0,
      Ssel_Deasserted => 1);

   --  End of Frame. Between frames, a delay may be inserted, as defined by the
   --  FRAME_DELAY value in the DLY register. The end of a frame may not be
   --  particularly meaningful if the FRAME_DELAY value = 0. This control can
   --  be used as part of the support for frame lengths greater than 16 bits.
   type TXDATCTL_EOF_Field is
     (
      --  Data not EOF. This piece of data transmitted is not treated as the
      --  end of a frame.
      Data_Not_Eof,
      --  Data EOF. This piece of data is treated as the end of a frame,
      --  causing the FRAME_DELAY time to be inserted before subsequent data is
      --  transmitted.
      Data_Eof)
     with Size => 1;
   for TXDATCTL_EOF_Field use
     (Data_Not_Eof => 0,
      Data_Eof => 1);

   --  Receive Ignore. This allows data to be transmitted using the SPI without
   --  the need to read unneeded data from the receiver.Setting this bit
   --  simplifies the transmit process and can be used with the DMA.
   type TXDATCTL_RXIGNORE_Field is
     (
      --  Read received data. Received data must be read in order to allow
      --  transmission to progress. In slave mode, an overrun error will occur
      --  if received data is not read before new data is received.
      Read_Received_Data,
      --  Ignore received data. Received data is ignored, allowing transmission
      --  without reading unneeded received data. No receiver flags are
      --  generated.
      Ignore_Received_Data)
     with Size => 1;
   for TXDATCTL_RXIGNORE_Field use
     (Read_Received_Data => 0,
      Ignore_Received_Data => 1);

   subtype TXDATCTL_LEN_Field is HAL.UInt4;

   --  SPI Transmit Data with Control
   type TXDATCTL_Register is record
      --  Transmit Data. This field provides from 1 to 16 bits of data to be
      --  transmitted.
      TXDAT          : TXDATCTL_TXDAT_Field := 16#0#;
      --  Transmit Slave Select. This field asserts SSEL0 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL0 pin is configured by bits in the CFG register.
      TXSSEL0_N      : TXDATCTL_TXSSEL0_N_Field := NRF_SVD.SPI.Ssel0_Asserted;
      --  Transmit Slave Select. This field asserts SSEL1 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL1 pin is configured by bits in the CFG register.
      TXSSEL1_N      : TXDATCTL_TXSSEL1_N_Field := NRF_SVD.SPI.Ssel1_Asserted;
      --  Transmit Slave Select. This field asserts SSEL2 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL2 pin is configured by bits in the CFG register.
      TXSSEL2_N      : TXDATCTL_TXSSEL2_N_Field := NRF_SVD.SPI.Ssel2_Asserted;
      --  Transmit Slave Select. This field asserts SSEL3 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL3 pin is configured by bits in the CFG register.
      TXSSEL3_N      : TXDATCTL_TXSSEL3_N_Field := NRF_SVD.SPI.Ssel3_Asserted;
      --  End of Transfer. The asserted SSEL will be deasserted at the end of a
      --  transfer, and remain so for at least the time specified by the
      --  Transfer_delay value in the DLY register.
      EOT            : TXDATCTL_EOT_Field := NRF_SVD.SPI.Ssel_Not_Deasserted;
      --  End of Frame. Between frames, a delay may be inserted, as defined by
      --  the FRAME_DELAY value in the DLY register. The end of a frame may not
      --  be particularly meaningful if the FRAME_DELAY value = 0. This control
      --  can be used as part of the support for frame lengths greater than 16
      --  bits.
      EOF            : TXDATCTL_EOF_Field := NRF_SVD.SPI.Data_Not_Eof;
      --  Receive Ignore. This allows data to be transmitted using the SPI
      --  without the need to read unneeded data from the receiver.Setting this
      --  bit simplifies the transmit process and can be used with the DMA.
      RXIGNORE       : TXDATCTL_RXIGNORE_Field :=
                        NRF_SVD.SPI.Read_Received_Data;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Data Length. Specifies the data length from 1 to 16 bits. Note that
      --  transfer lengths greater than 16 bits are supported by implementing
      --  multiple sequential transmits. 0x0 = Data transfer is 1 bit in
      --  length. 0x1 = Data transfer is 2 bits in length. 0x2 = Data transfer
      --  is 3 bits in length. ... 0xF = Data transfer is 16 bits in length.
      LEN            : TXDATCTL_LEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATCTL_Register use record
      TXDAT          at 0 range 0 .. 15;
      TXSSEL0_N      at 0 range 16 .. 16;
      TXSSEL1_N      at 0 range 17 .. 17;
      TXSSEL2_N      at 0 range 18 .. 18;
      TXSSEL3_N      at 0 range 19 .. 19;
      EOT            at 0 range 20 .. 20;
      EOF            at 0 range 21 .. 21;
      RXIGNORE       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LEN            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TXDAT_DATA_Field is HAL.UInt16;

   --  SPI Transmit Data
   type TXDAT_Register is record
      --  Transmit Data. This field provides from 4 to 16 bits of data to be
      --  transmitted.
      DATA           : TXDAT_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDAT_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXCTL_LEN_Field is HAL.UInt4;

   --  SPI Transmit Control
   type TXCTL_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Transmit Slave Select 0.
      TXSSEL0_N      : Boolean := False;
      --  Transmit Slave Select 1.
      TXSSEL1_N      : Boolean := False;
      --  Transmit Slave Select 2.
      TXSSEL2_N      : Boolean := False;
      --  Transmit Slave Select 3.
      TXSSEL3_n      : Boolean := False;
      --  End of Transfer.
      EOT            : Boolean := False;
      --  End of Frame.
      EOF            : Boolean := False;
      --  Receive Ignore.
      RXIGNORE       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Data transfer Length.
      LEN            : TXCTL_LEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCTL_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      TXSSEL0_N      at 0 range 16 .. 16;
      TXSSEL1_N      at 0 range 17 .. 17;
      TXSSEL2_N      at 0 range 18 .. 18;
      TXSSEL3_n      at 0 range 19 .. 19;
      EOT            at 0 range 20 .. 20;
      EOF            at 0 range 21 .. 21;
      RXIGNORE       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LEN            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DIV_DIVVAL_Field is HAL.UInt16;

   --  SPI clock Divider
   type DIV_Register is record
      --  Rate divider value. Specifies how the PCLK for the SPI is divided to
      --  produce the SPI clock rate in master mode. DIVVAL is -1 encoded such
      --  that the value 0 results in PCLK/1, the value 1 results in PCLK/2, up
      --  to the maximum possible divide value of 0xFFFF, which results in
      --  PCLK/65536.
      DIVVAL         : DIV_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_Register use record
      DIVVAL         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SPI Interrupt Status
   type INTSTAT_Register is record
      --  Receiver Ready flag.
      RXRDY         : Boolean := False;
      --  Transmitter Ready flag.
      TXRDY         : Boolean := False;
      --  Receiver Overrun interrupt flag.
      RXOV          : Boolean := False;
      --  Transmitter Underrun interrupt flag.
      TXUR          : Boolean := False;
      --  Slave Select Assert.
      SSA           : Boolean := False;
      --  Slave Select Deassert.
      SSD           : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Master Idle status flag.
      MSTIDLE       : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      RXRDY         at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      RXOV          at 0 range 2 .. 2;
      TXUR          at 0 range 3 .. 3;
      SSA           at 0 range 4 .. 4;
      SSD           at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      MSTIDLE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI
   type SPI_Peripheral is record
      --  SPI Configuration register
      CFG      : aliased CFG_Register;
      --  SPI Delay register
      DLY      : aliased DLY_Register;
      --  SPI Status. Some status flags can be cleared by writing a 1 to that
      --  bit position
      STAT     : aliased STAT_Register;
      --  SPI Interrupt Enable read and Set. A complete value may be read from
      --  this register. Writing a 1 to any implemented bit position causes
      --  that bit to be set.
      INTENSET : aliased INTENSET_Register;
      --  SPI Interrupt Enable Clear. Writing a 1 to any implemented bit
      --  position causes the corresponding bit in INTENSET to be cleared.
      INTENCLR : aliased INTENCLR_Register;
      --  SPI Receive Data
      RXDAT    : aliased RXDAT_Register;
      --  SPI Transmit Data with Control
      TXDATCTL : aliased TXDATCTL_Register;
      --  SPI Transmit Data
      TXDAT    : aliased TXDAT_Register;
      --  SPI Transmit Control
      TXCTL    : aliased TXCTL_Register;
      --  SPI clock Divider
      DIV      : aliased DIV_Register;
      --  SPI Interrupt Status
      INTSTAT  : aliased INTSTAT_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CFG      at 16#0# range 0 .. 31;
      DLY      at 16#4# range 0 .. 31;
      STAT     at 16#8# range 0 .. 31;
      INTENSET at 16#C# range 0 .. 31;
      INTENCLR at 16#10# range 0 .. 31;
      RXDAT    at 16#14# range 0 .. 31;
      TXDATCTL at 16#18# range 0 .. 31;
      TXDAT    at 16#1C# range 0 .. 31;
      TXCTL    at 16#20# range 0 .. 31;
      DIV      at 16#24# range 0 .. 31;
      INTSTAT  at 16#28# range 0 .. 31;
   end record;

   --  SPI
   SPI0_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#400A4000#);

   --  SPI
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#400A8000#);

end NRF_SVD.SPI;
