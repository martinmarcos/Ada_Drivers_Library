--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  USART Enable.
   type CFG_ENABLE_Field is
     (
      --  Disabled. The USART is disabled and the internal state machine and
      --  counters are reset. While Enable = 0, all USART interrupts and DMA
      --  transfers are disabled. When Enable is set again, CFG and most other
      --  control bits remain unchanged. For instance, when re-enabled, the
      --  USART will immediately generate a TxRdy interrupt (if enabled in the
      --  INTENSET register) or a DMA transfer request because the transmitter
      --  has been reset and is therefore available.
      Disabled,
      --  Enabled. The USART is enabled for operation.
      Enabled)
     with Size => 1;
   for CFG_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Selects the data size for the USART.
   type CFG_DATALEN_Field is
     (
      --  7 bit Data length.
      Datalen_7_Bit_Data_Length,
      --  8 bit Data length.
      Datalen_8_Bit_Data_Length,
      --  9 bit data length. The 9th bit is commonly used for addressing in
      --  multidrop mode. See the ADDRDET bit in the CTL register.
      Datalen_9_Bit_Data_Length)
     with Size => 2;
   for CFG_DATALEN_Field use
     (Datalen_7_Bit_Data_Length => 0,
      Datalen_8_Bit_Data_Length => 1,
      Datalen_9_Bit_Data_Length => 2);

   --  Selects what type of parity is used by the USART.
   type CFG_PARITYSEL_Field is
     (
      --  No parity.
      No_Parity,
      --  Even parity. Adds a bit to each character such that the number of 1s
      --  in a transmitted character is even, and the number of 1s in a
      --  received character is expected to be even.
      Even_Parity,
      --  Odd parity. Adds a bit to each character such that the number of 1s
      --  in a transmitted character is odd, and the number of 1s in a received
      --  character is expected to be odd.
      Odd_Parity)
     with Size => 2;
   for CFG_PARITYSEL_Field use
     (No_Parity => 0,
      Even_Parity => 2,
      Odd_Parity => 3);

   --  Number of stop bits appended to transmitted data. Only a single stop bit
   --  is required for received data.
   type CFG_STOPLEN_Field is
     (
      --  1 stop bit.
      Stoplen_1_Stop_Bit,
      --  2 stop bits. This setting should only be used for asynchronous
      --  communication.
      Stoplen_2_Stop_Bits)
     with Size => 1;
   for CFG_STOPLEN_Field use
     (Stoplen_1_Stop_Bit => 0,
      Stoplen_2_Stop_Bits => 1);

   --  Selects standard or 32 kHz clocking mode.
   type CFG_MODE32K_Field is
     (
      --  Disabled. USART uses standard clocking.
      Disabled,
      --  Enabled. USART uses the 32 kHz clock from the RTC oscillator as the
      --  clock source to the BRG, and uses a special bit clocking scheme.
      Enabled)
     with Size => 1;
   for CFG_MODE32K_Field use
     (Disabled => 0,
      Enabled => 1);

   --  LIN break mode enable.
   type CFG_LINMODE_Field is
     (
      --  Disabled. Break detect and generate is configured for normal
      --  operation.
      Disabled,
      --  Enabled. Break detect and generate is configured for LIN bus
      --  operation.
      Enabled)
     with Size => 1;
   for CFG_LINMODE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CTS Enable. Determines whether CTS is used for flow control. CTS can be
   --  from the input pin, or from the USART's own RTS if loopback mode is
   --  enabled.
   type CFG_CTSEN_Field is
     (
      --  No flow control. The transmitter does not receive any automatic flow
      --  control signal.
      No_Flow_Control,
      --  Flow control enabled. The transmitter uses the CTS input (or RTS
      --  output in loopback mode) for flow control purposes.
      Flow_Control_Enabled)
     with Size => 1;
   for CFG_CTSEN_Field use
     (No_Flow_Control => 0,
      Flow_Control_Enabled => 1);

   --  Selects synchronous or asynchronous operation.
   type CFG_SYNCEN_Field is
     (
      --  Asynchronous mode.
      Asynchronous_Mode,
      --  Synchronous mode.
      Synchronous_Mode)
     with Size => 1;
   for CFG_SYNCEN_Field use
     (Asynchronous_Mode => 0,
      Synchronous_Mode => 1);

   --  Selects the clock polarity and sampling edge of received data in
   --  synchronous mode.
   type CFG_CLKPOL_Field is
     (
      --  Falling edge. Un_RXD is sampled on the falling edge of SCLK.
      Falling_Edge,
      --  Rising edge. Un_RXD is sampled on the rising edge of SCLK.
      Rising_Edge)
     with Size => 1;
   for CFG_CLKPOL_Field use
     (Falling_Edge => 0,
      Rising_Edge => 1);

   --  Synchronous mode Master select.
   type CFG_SYNCMST_Field is
     (
      --  Slave. When synchronous mode is enabled, the USART is a slave.
      Slave,
      --  Master. When synchronous mode is enabled, the USART is a master.
      Master)
     with Size => 1;
   for CFG_SYNCMST_Field use
     (Slave => 0,
      Master => 1);

   --  Selects data loopback mode.
   type CFG_LOOP_Field is
     (
      --  Normal operation.
      Normal_Operation,
      --  Loopback mode. This provides a mechanism to perform diagnostic
      --  loopback testing for USART data. Serial data from the transmitter
      --  (Un_TXD) is connected internally to serial input of the receive
      --  (Un_RXD). Un_TXD and Un_RTS activity will also appear on external
      --  pins if these functions are configured to appear on device pins. The
      --  receiver RTS signal is also looped back to CTS and performs flow
      --  control if enabled by CTSEN.
      Loopback_Mode)
     with Size => 1;
   for CFG_LOOP_Field use
     (Normal_Operation => 0,
      Loopback_Mode => 1);

   --  Output Enable Turnaround time enable for RS-485 operation.
   type CFG_OETA_Field is
     (
      --  Disabled. If selected by OESEL, the Output Enable signal deasserted
      --  at the end of the last stop bit of a transmission.
      Disabled,
      --  Enabled. If selected by OESEL, the Output Enable signal remains
      --  asserted for one character time after the end of the last stop bit of
      --  a transmission. OE will also remain asserted if another transmit
      --  begins before it is deasserted.
      Enabled)
     with Size => 1;
   for CFG_OETA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Automatic Address matching enable.
   type CFG_AUTOADDR_Field is
     (
      --  Disabled. When addressing is enabled by ADDRDET, address matching is
      --  done by software. This provides the possibility of versatile
      --  addressing (e.g. respond to more than one address).
      Disabled,
      --  Enabled. When addressing is enabled by ADDRDET, address matching is
      --  done by hardware, using the value in the ADDR register as the address
      --  to match.
      Enabled)
     with Size => 1;
   for CFG_AUTOADDR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Output Enable Select.
   type CFG_OESEL_Field is
     (
      --  Standard. The RTS signal is used as the standard flow control
      --  function.
      Standard,
      --  RS-485. The RTS signal configured to provide an output enable signal
      --  to control an RS-485 transceiver.
      Rs_485)
     with Size => 1;
   for CFG_OESEL_Field use
     (Standard => 0,
      Rs_485 => 1);

   --  Output Enable Polarity.
   type CFG_OEPOL_Field is
     (
      --  Low. If selected by OESEL, the output enable is active low.
      Low,
      --  High. If selected by OESEL, the output enable is active high.
      High)
     with Size => 1;
   for CFG_OEPOL_Field use
     (Low => 0,
      High => 1);

   --  Receive data polarity.
   type CFG_RXPOL_Field is
     (
      --  Standard. The RX signal is used as it arrives from the pin. This
      --  means that the RX rest value is 1, start bit is 0, data is not
      --  inverted, and the stop bit is 1.
      Standard,
      --  Inverted. The RX signal is inverted before being used by the USART.
      --  This means that the RX rest value is 0, start bit is 1, data is
      --  inverted, and the stop bit is 0.
      Inverted)
     with Size => 1;
   for CFG_RXPOL_Field use
     (Standard => 0,
      Inverted => 1);

   --  Transmit data polarity.
   type CFG_TXPOL_Field is
     (
      --  Standard. The TX signal is sent out without change. This means that
      --  the TX rest value is 1, start bit is 0, data is not inverted, and the
      --  stop bit is 1.
      Standard,
      --  Inverted. The TX signal is inverted by the USART before being sent
      --  out. This means that the TX rest value is 0, start bit is 1, data is
      --  inverted, and the stop bit is 0.
      Inverted)
     with Size => 1;
   for CFG_TXPOL_Field use
     (Standard => 0,
      Inverted => 1);

   --  USART Configuration register. Basic USART configuration settings that
   --  typically are not changed during operation.
   type CFG_Register is record
      --  USART Enable.
      ENABLE         : CFG_ENABLE_Field := NRF_SVD.USART.Disabled;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Selects the data size for the USART.
      DATALEN        : CFG_DATALEN_Field :=
                        NRF_SVD.USART.Datalen_7_Bit_Data_Length;
      --  Selects what type of parity is used by the USART.
      PARITYSEL      : CFG_PARITYSEL_Field := NRF_SVD.USART.No_Parity;
      --  Number of stop bits appended to transmitted data. Only a single stop
      --  bit is required for received data.
      STOPLEN        : CFG_STOPLEN_Field := NRF_SVD.USART.Stoplen_1_Stop_Bit;
      --  Selects standard or 32 kHz clocking mode.
      MODE32K        : CFG_MODE32K_Field := NRF_SVD.USART.Disabled;
      --  LIN break mode enable.
      LINMODE        : CFG_LINMODE_Field := NRF_SVD.USART.Disabled;
      --  CTS Enable. Determines whether CTS is used for flow control. CTS can
      --  be from the input pin, or from the USART's own RTS if loopback mode
      --  is enabled.
      CTSEN          : CFG_CTSEN_Field := NRF_SVD.USART.No_Flow_Control;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Selects synchronous or asynchronous operation.
      SYNCEN         : CFG_SYNCEN_Field := NRF_SVD.USART.Asynchronous_Mode;
      --  Selects the clock polarity and sampling edge of received data in
      --  synchronous mode.
      CLKPOL         : CFG_CLKPOL_Field := NRF_SVD.USART.Falling_Edge;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Synchronous mode Master select.
      SYNCMST        : CFG_SYNCMST_Field := NRF_SVD.USART.Slave;
      --  Selects data loopback mode.
      LOOP_k         : CFG_LOOP_Field := NRF_SVD.USART.Normal_Operation;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Output Enable Turnaround time enable for RS-485 operation.
      OETA           : CFG_OETA_Field := NRF_SVD.USART.Disabled;
      --  Automatic Address matching enable.
      AUTOADDR       : CFG_AUTOADDR_Field := NRF_SVD.USART.Disabled;
      --  Output Enable Select.
      OESEL          : CFG_OESEL_Field := NRF_SVD.USART.Standard;
      --  Output Enable Polarity.
      OEPOL          : CFG_OEPOL_Field := NRF_SVD.USART.Low;
      --  Receive data polarity.
      RXPOL          : CFG_RXPOL_Field := NRF_SVD.USART.Standard;
      --  Transmit data polarity.
      TXPOL          : CFG_TXPOL_Field := NRF_SVD.USART.Standard;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DATALEN        at 0 range 2 .. 3;
      PARITYSEL      at 0 range 4 .. 5;
      STOPLEN        at 0 range 6 .. 6;
      MODE32K        at 0 range 7 .. 7;
      LINMODE        at 0 range 8 .. 8;
      CTSEN          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SYNCEN         at 0 range 11 .. 11;
      CLKPOL         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYNCMST        at 0 range 14 .. 14;
      LOOP_k         at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      OETA           at 0 range 18 .. 18;
      AUTOADDR       at 0 range 19 .. 19;
      OESEL          at 0 range 20 .. 20;
      OEPOL          at 0 range 21 .. 21;
      RXPOL          at 0 range 22 .. 22;
      TXPOL          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Break Enable.
   type CTL_TXBRKEN_Field is
     (
      --  Normal operation.
      Normal_Operation,
      --  Continuous break. Continuous break is sent immediately when this bit
      --  is set, and remains until this bit is cleared. A break may be sent
      --  without danger of corrupting any currently transmitting character if
      --  the transmitter is first disabled (TXDIS in CTL is set) and then
      --  waiting for the transmitter to be disabled (TXDISINT in STAT = 1)
      --  before writing 1 to TXBRKEN.
      Continuous_Break)
     with Size => 1;
   for CTL_TXBRKEN_Field use
     (Normal_Operation => 0,
      Continuous_Break => 1);

   --  Enable address detect mode.
   type CTL_ADDRDET_Field is
     (
      --  Disabled. The USART presents all incoming data.
      Disabled,
      --  Enabled. The USART receiver ignores incoming data that does not have
      --  the most significant bit of the data (typically the 9th bit) = 1.
      --  When the data MSB bit = 1, the receiver treats the incoming data
      --  normally, generating a received data interrupt. Software can then
      --  check the data to see if this is an address that should be handled.
      --  If it is, the ADDRDET bit is cleared by software and further incoming
      --  data is handled normally.
      Enabled)
     with Size => 1;
   for CTL_ADDRDET_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Transmit Disable.
   type CTL_TXDIS_Field is
     (
      --  Not disabled. USART transmitter is not disabled.
      Not_Disabled,
      --  Disabled. USART transmitter is disabled after any character currently
      --  being transmitted is complete. This feature can be used to facilitate
      --  software flow control.
      Disabled)
     with Size => 1;
   for CTL_TXDIS_Field use
     (Not_Disabled => 0,
      Disabled => 1);

   --  Continuous Clock generation. By default, SCLK is only output while data
   --  is being transmitted in synchronous mode.
   type CTL_CC_Field is
     (
      --  Clock on character. In synchronous mode, SCLK cycles only when
      --  characters are being sent on Un_TXD or to complete a character that
      --  is being received.
      Clock_On_Character,
      --  Continuous clock. SCLK runs continuously in synchronous mode,
      --  allowing characters to be received on Un_RxD independently from
      --  transmission on Un_TXD).
      Continuous_Clock)
     with Size => 1;
   for CTL_CC_Field use
     (Clock_On_Character => 0,
      Continuous_Clock => 1);

   --  Clear Continuous Clock.
   type CTL_CLRCCONRX_Field is
     (
      --  No effect. No effect on the CC bit.
      No_Effect,
      --  Auto-clear. The CC bit is automatically cleared when a complete
      --  character has been received. This bit is cleared at the same time.
      Auto_Clear)
     with Size => 1;
   for CTL_CLRCCONRX_Field use
     (No_Effect => 0,
      Auto_Clear => 1);

   --  Autobaud enable.
   type CTL_AUTOBAUD_Field is
     (
      --  Disabled. USART is in normal operating mode.
      Disabled,
      --  Enabled. USART is in autobaud mode. This bit should only be set when
      --  the USART receiver is idle. The first start bit of RX is measured and
      --  used the update the BRG register to match the received data rate.
      --  AUTOBAUD is cleared once this process is complete, or if there is an
      --  AERR.
      Enabled)
     with Size => 1;
   for CTL_AUTOBAUD_Field use
     (Disabled => 0,
      Enabled => 1);

   --  USART Control register. USART control settings that are more likely to
   --  change during operation.
   type CTL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Break Enable.
      TXBRKEN        : CTL_TXBRKEN_Field := NRF_SVD.USART.Normal_Operation;
      --  Enable address detect mode.
      ADDRDET        : CTL_ADDRDET_Field := NRF_SVD.USART.Disabled;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Transmit Disable.
      TXDIS          : CTL_TXDIS_Field := NRF_SVD.USART.Not_Disabled;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Continuous Clock generation. By default, SCLK is only output while
      --  data is being transmitted in synchronous mode.
      CC             : CTL_CC_Field := NRF_SVD.USART.Clock_On_Character;
      --  Clear Continuous Clock.
      CLRCCONRX      : CTL_CLRCCONRX_Field := NRF_SVD.USART.No_Effect;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Autobaud enable.
      AUTOBAUD       : CTL_AUTOBAUD_Field := NRF_SVD.USART.Disabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TXBRKEN        at 0 range 1 .. 1;
      ADDRDET        at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXDIS          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CC             at 0 range 8 .. 8;
      CLRCCONRX      at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      AUTOBAUD       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  USART Status register. The complete status value can be read here.
   --  Writing ones clears some bits in the register. Some bits can be cleared
   --  by writing a 1 to them.
   type STAT_Register is record
      --  Receiver Ready flag. When 1, indicates that data is available to be
      --  read from the receiver buffer. Cleared after a read of the RXDAT or
      --  RXDATSTAT registers.
      RXRDY          : Boolean := False;
      --  Receiver Idle. When 0, indicates that the receiver is currently in
      --  the process of receiving data. When 1, indicates that the receiver is
      --  not currently in the process of receiving data.
      RXIDLE         : Boolean := True;
      --  Transmitter Ready flag. When 1, this bit indicates that data may be
      --  written to the transmit buffer. Previous data may still be in the
      --  process of being transmitted. Cleared when data is written to TXDAT.
      --  Set when the data is moved from the transmit buffer to the transmit
      --  shift register.
      TXRDY          : Boolean := True;
      --  Transmitter Idle. When 0, indicates that the transmitter is currently
      --  in the process of sending data.When 1, indicate that the transmitter
      --  is not currently in the process of sending data.
      TXIDLE         : Boolean := True;
      --  This bit reflects the current state of the CTS signal, regardless of
      --  the setting of the CTSEN bit in the CFG register. This will be the
      --  value of the CTS input pin unless loopback mode is enabled.
      CTS            : Boolean := False;
      --  This bit is set when a change in the state is detected for the CTS
      --  flag above. This bit is cleared by software.
      DELTACTS       : Boolean := False;
      --  Transmitter Disabled Status flag. When 1, this bit indicates that the
      --  USART transmitter is fully idle after being disabled via the TXDIS
      --  bit in the CFG register (TXDIS = 1).
      TXDISSTAT      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Overrun Error interrupt flag. This flag is set when a new character
      --  is received while the receiver buffer is still in use. If this
      --  occurs, the newly received character in the shift register is lost.
      OVERRUNINT     : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Received Break. This bit reflects the current state of the receiver
      --  break detection logic. It is set when the Un_RXD pin remains low for
      --  16 bit times. Note that FRAMERRINT will also be set when this
      --  condition occurs because the stop bit(s) for the character would be
      --  missing. RXBRK is cleared when the Un_RXD pin goes high.
      RXBRK          : Boolean := False;
      --  This bit is set when a change in the state of receiver break
      --  detection occurs. Cleared by software.
      DELTARXBRK     : Boolean := False;
      --  This bit is set when a start is detected on the receiver input. Its
      --  purpose is primarily to allow wake-up from Deep-sleep or Power-down
      --  mode immediately when a start is detected. Cleared by software.
      START          : Boolean := False;
      --  Framing Error interrupt flag. This flag is set when a character is
      --  received with a missing stop bit at the expected location. This could
      --  be an indication of a baud rate or configuration mismatch with the
      --  transmitting source.
      FRAMERRINT     : Boolean := False;
      --  Parity Error interrupt flag. This flag is set when a parity error is
      --  detected in a received character..
      PARITYERRINT   : Boolean := False;
      --  Received Noise interrupt flag. Three samples of received data are
      --  taken in order to determine the value of each received data bit,
      --  except in synchronous mode. This acts as a noise filter if one sample
      --  disagrees. This flag is set when a received data bit contains one
      --  disagreeing sample. This could indicate line noise, a baud rate or
      --  character format mismatch, or loss of synchronization during data
      --  reception.
      RXNOISEINT     : Boolean := False;
      --  Auto baud Error. An auto baud error can occur if the BRG counts to
      --  its limit before the end of the start bit that is being measured,
      --  essentially an auto baud time-out.
      ABERR          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      RXRDY          at 0 range 0 .. 0;
      RXIDLE         at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      TXIDLE         at 0 range 3 .. 3;
      CTS            at 0 range 4 .. 4;
      DELTACTS       at 0 range 5 .. 5;
      TXDISSTAT      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OVERRUNINT     at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      RXBRK          at 0 range 10 .. 10;
      DELTARXBRK     at 0 range 11 .. 11;
      START          at 0 range 12 .. 12;
      FRAMERRINT     at 0 range 13 .. 13;
      PARITYERRINT   at 0 range 14 .. 14;
      RXNOISEINT     at 0 range 15 .. 15;
      ABERR          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Enable read and Set register. Contains an individual interrupt
   --  enable bit for each potential USART interrupt. A complete value may be
   --  read from this register. Writing a 1 to any implemented bit position
   --  causes that bit to be set.
   type INTENSET_Register is record
      --  When 1, enables an interrupt when there is a received character
      --  available to be read from the RXDAT register.
      RXRDYEN        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  When 1, enables an interrupt when the TXDAT register is available to
      --  take another character to transmit.
      TXRDYEN        : Boolean := False;
      --  When 1, enables an interrupt when the transmitter becomes idle
      --  (TXIDLE = 1).
      TXIDLEEN       : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  When 1, enables an interrupt when there is a change in the state of
      --  the CTS input.
      DELTACTSEN     : Boolean := False;
      --  When 1, enables an interrupt when the transmitter is fully disabled
      --  as indicated by the TXDISINT flag in STAT. See description of the
      --  TXDISINT bit for details.
      TXDISEN        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  When 1, enables an interrupt when an overrun error occurred.
      OVERRUNEN      : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  When 1, enables an interrupt when a change of state has occurred in
      --  the detection of a received break condition (break condition asserted
      --  or deasserted).
      DELTARXBRKEN   : Boolean := False;
      --  When 1, enables an interrupt when a received start bit has been
      --  detected.
      STARTEN        : Boolean := False;
      --  When 1, enables an interrupt when a framing error has been detected.
      FRAMERREN      : Boolean := False;
      --  When 1, enables an interrupt when a parity error has been detected.
      PARITYERREN    : Boolean := False;
      --  When 1, enables an interrupt when noise is detected. See description
      --  of the RXNOISEINT bit in Table 311.
      RXNOISEEN      : Boolean := False;
      --  When 1, enables an interrupt when an auto baud error occurs.
      ABERREN        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      RXRDYEN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TXRDYEN        at 0 range 2 .. 2;
      TXIDLEEN       at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DELTACTSEN     at 0 range 5 .. 5;
      TXDISEN        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OVERRUNEN      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      DELTARXBRKEN   at 0 range 11 .. 11;
      STARTEN        at 0 range 12 .. 12;
      FRAMERREN      at 0 range 13 .. 13;
      PARITYERREN    at 0 range 14 .. 14;
      RXNOISEEN      at 0 range 15 .. 15;
      ABERREN        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Enable Clear register. Allows clearing any combination of bits
   --  in the INTENSET register. Writing a 1 to any implemented bit position
   --  causes the corresponding bit to be cleared.
   type INTENCLR_Register is record
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      RXRDYCLR       : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      TXRDYCLR       : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      TXIDLECLR      : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      DELTACTSCLR    : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      TXDISCLR       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      OVERRUNCLR     : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      DELTARXBRKCLR  : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      STARTCLR       : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      FRAMERRCLR     : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      PARITYERRCLR   : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      RXNOISECLR     : Boolean := False;
      --  Writing 1 clears the corresponding bit in the INTENSET register.
      ABERRCLR       : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      RXRDYCLR       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TXRDYCLR       at 0 range 2 .. 2;
      TXIDLECLR      at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DELTACTSCLR    at 0 range 5 .. 5;
      TXDISCLR       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OVERRUNCLR     at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      DELTARXBRKCLR  at 0 range 11 .. 11;
      STARTCLR       at 0 range 12 .. 12;
      FRAMERRCLR     at 0 range 13 .. 13;
      PARITYERRCLR   at 0 range 14 .. 14;
      RXNOISECLR     at 0 range 15 .. 15;
      ABERRCLR       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype RXDAT_DATA_Field is HAL.UInt9;

   --  Receiver Data register. Contains the last character received.
   type RXDAT_Register is record
      --  The USART Receiver Data register contains the next received
      --  character. The number of bits that are relevant depends on the USART
      --  configuration settings.
      DATA          : RXDAT_DATA_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDAT_Register use record
      DATA          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RXDATSTAT_RXDATA_Field is HAL.UInt9;

   --  Receiver Data with Status register. Combines the last character received
   --  with the current USART receive status. Allows DMA or software to recover
   --  incoming data and status together.
   type RXDATSTAT_Register is record
      --  The USART Receiver Data register contains the next received
      --  character. The number of bits that are relevant depends on the USART
      --  configuration settings.
      RXDATA         : RXDATSTAT_RXDATA_Field := 16#0#;
      --  unspecified
      Reserved_9_12  : HAL.UInt4 := 16#0#;
      --  Framing Error status flag. This bit is valid when there is a
      --  character to be read in the RXDAT register and reflects the status of
      --  that character. This bit will set when the character in RXDAT was
      --  received with a missing stop bit at the expected location. This could
      --  be an indication of a baud rate or configuration mismatch with the
      --  transmitting source.
      FRAMERR        : Boolean := False;
      --  Parity Error status flag. This bit is valid when there is a character
      --  to be read in the RXDAT register and reflects the status of that
      --  character. This bit will be set when a parity error is detected in a
      --  received character.
      PARITYERR      : Boolean := False;
      --  Received Noise flag. See description of the RxNoiseInt bit in Table
      --  311.
      RXNOISE        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATSTAT_Register use record
      RXDATA         at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      FRAMERR        at 0 range 13 .. 13;
      PARITYERR      at 0 range 14 .. 14;
      RXNOISE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXDAT_TXDATA_Field is HAL.UInt9;

   --  Transmit Data register. Data to be transmitted is written here.
   type TXDAT_Register is record
      --  Writing to the USART Transmit Data Register causes the data to be
      --  transmitted as soon as the transmit shift register is available and
      --  any conditions for transmitting data are met: CTS low (if CTSEN bit =
      --  1), TXDIS bit = 0.
      TXDATA        : TXDAT_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDAT_Register use record
      TXDATA        at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype BRG_BRGVAL_Field is HAL.UInt16;

   --  Baud Rate Generator register. 16-bit integer baud rate divisor value.
   type BRG_Register is record
      --  This value is used to divide the USART input clock to determine the
      --  baud rate, based on the input clock from the FRG. 0 = The FRG clock
      --  is used directly by the USART function. 1 = The FRG clock is divided
      --  by 2 before use by the USART function. 2 = The FRG clock is divided
      --  by 3 before use by the USART function. ... 0xFFFF = The FRG clock is
      --  divided by 65,536 before use by the USART function.
      BRGVAL         : BRG_BRGVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRG_Register use record
      BRGVAL         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt status register. Reflects interrupts that are currently
   --  enabled.
   type INTSTAT_Register is record
      --  Receiver Ready flag.
      RXRDY          : Boolean := True;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Transmitter Ready flag.
      TXRDY          : Boolean := True;
      --  Transmitter Idle status.
      TXIDLE         : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  This bit is set when a change in the state of the CTS input is
      --  detected.
      DELTACTS       : Boolean := False;
      --  Transmitter Disabled Interrupt flag.
      TXDISINT       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Overrun Error interrupt flag.
      OVERRUNINT     : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  This bit is set when a change in the state of receiver break
      --  detection occurs.
      DELTARXBRK     : Boolean := False;
      --  This bit is set when a start is detected on the receiver input.
      START          : Boolean := False;
      --  Framing Error interrupt flag.
      FRAMERRINT     : Boolean := False;
      --  Parity Error interrupt flag.
      PARITYERRINT   : Boolean := False;
      --  Received Noise interrupt flag.
      RXNOISEINT     : Boolean := False;
      --  Auto baud Error Interrupt flag.
      ABERRINT       : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      RXRDY          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      TXIDLE         at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DELTACTS       at 0 range 5 .. 5;
      TXDISINT       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OVERRUNINT     at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      DELTARXBRK     at 0 range 11 .. 11;
      START          at 0 range 12 .. 12;
      FRAMERRINT     at 0 range 13 .. 13;
      PARITYERRINT   at 0 range 14 .. 14;
      RXNOISEINT     at 0 range 15 .. 15;
      ABERRINT       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype OSR_OSRVAL_Field is HAL.UInt4;

   --  Oversample selection register for asynchronous communication.
   type OSR_Register is record
      --  Oversample Selection Value. 0 to 3 = not supported 0x4 = 5 peripheral
      --  clocks are used to transmit and receive each data bit. 0x5 = 6
      --  peripheral clocks are used to transmit and receive each data bit. ...
      --  0xF= 16 peripheral clocks are used to transmit and receive each data
      --  bit.
      OSRVAL        : OSR_OSRVAL_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSR_Register use record
      OSRVAL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADDR_ADDRESS_Field is HAL.UInt8;

   --  Address register for automatic address matching.
   type ADDR_Register is record
      --  8-bit address used with automatic address matching. Used when address
      --  detection is enabled (ADDRDET in CTL = 1) and automatic address
      --  matching is enabled (AUTOADDR in CFG = 1).
      ADDRESS       : ADDR_ADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDR_Register use record
      ADDRESS       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USART
   type USART_Peripheral is record
      --  USART Configuration register. Basic USART configuration settings that
      --  typically are not changed during operation.
      CFG       : aliased CFG_Register;
      --  USART Control register. USART control settings that are more likely
      --  to change during operation.
      CTL       : aliased CTL_Register;
      --  USART Status register. The complete status value can be read here.
      --  Writing ones clears some bits in the register. Some bits can be
      --  cleared by writing a 1 to them.
      STAT      : aliased STAT_Register;
      --  Interrupt Enable read and Set register. Contains an individual
      --  interrupt enable bit for each potential USART interrupt. A complete
      --  value may be read from this register. Writing a 1 to any implemented
      --  bit position causes that bit to be set.
      INTENSET  : aliased INTENSET_Register;
      --  Interrupt Enable Clear register. Allows clearing any combination of
      --  bits in the INTENSET register. Writing a 1 to any implemented bit
      --  position causes the corresponding bit to be cleared.
      INTENCLR  : aliased INTENCLR_Register;
      --  Receiver Data register. Contains the last character received.
      RXDAT     : aliased RXDAT_Register;
      --  Receiver Data with Status register. Combines the last character
      --  received with the current USART receive status. Allows DMA or
      --  software to recover incoming data and status together.
      RXDATSTAT : aliased RXDATSTAT_Register;
      --  Transmit Data register. Data to be transmitted is written here.
      TXDAT     : aliased TXDAT_Register;
      --  Baud Rate Generator register. 16-bit integer baud rate divisor value.
      BRG       : aliased BRG_Register;
      --  Interrupt status register. Reflects interrupts that are currently
      --  enabled.
      INTSTAT   : aliased INTSTAT_Register;
      --  Oversample selection register for asynchronous communication.
      OSR       : aliased OSR_Register;
      --  Address register for automatic address matching.
      ADDR      : aliased ADDR_Register;
   end record
     with Volatile;

   for USART_Peripheral use record
      CFG       at 16#0# range 0 .. 31;
      CTL       at 16#4# range 0 .. 31;
      STAT      at 16#8# range 0 .. 31;
      INTENSET  at 16#C# range 0 .. 31;
      INTENCLR  at 16#10# range 0 .. 31;
      RXDAT     at 16#14# range 0 .. 31;
      RXDATSTAT at 16#18# range 0 .. 31;
      TXDAT     at 16#1C# range 0 .. 31;
      BRG       at 16#20# range 0 .. 31;
      INTSTAT   at 16#24# range 0 .. 31;
      OSR       at 16#28# range 0 .. 31;
      ADDR      at 16#2C# range 0 .. 31;
   end record;

   --  USART
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40084000#);

   --  USART
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40088000#);

   --  USART
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#4008C000#);

   --  USART
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40090000#);

end NRF_SVD.USART;
