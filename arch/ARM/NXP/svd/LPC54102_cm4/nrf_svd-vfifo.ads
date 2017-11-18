--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.VFIFO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FIFOCTLUSART_RXFIFOTOTAL_Field is HAL.UInt8;
   subtype FIFOCTLUSART_TXFIFOTOTAL_Field is HAL.UInt8;

   --  USART FIFO global control register. These registers are byte, halfword,
   --  and word addressable.The upper 16 bits of these registers provide
   --  information about the System FIFO configuration, and are specific to
   --  each device type.
   type FIFOCTLUSART_Register is record
      --  Pause all USARTs receive FIFO operations. This can be used to prepare
      --  the System FIFO to reconfigure FIFO allocations among the USART
      --  receivers.
      RXPAUSE        : Boolean := True;
      --  All USART receive FIFOs are paused.
      RXPAUSED       : Boolean := True;
      --  All USART receive FIFOs are empty.
      RXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Pause all USARTs transmit FIFO operations. This can be used to
      --  prepare the System FIFO to reconfigure FIFO allocations among the
      --  USART transmitters.
      TXPAUSE        : Boolean := True;
      --  All USART transmit FIFOs are paused.
      TXPAUSED       : Boolean := True;
      --  All USART transmit FIFOs are empty.
      TXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Reports the receive FIFO space available for USARTs on this FIFO. The
      --  reset value is device specific.
      RXFIFOTOTAL    : FIFOCTLUSART_RXFIFOTOTAL_Field := 16#0#;
      --  Reports the transmit FIFO space available for USARTs on this FIFO.
      --  The reset value is device specific.
      TXFIFOTOTAL    : FIFOCTLUSART_TXFIFOTOTAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCTLUSART_Register use record
      RXPAUSE        at 0 range 0 .. 0;
      RXPAUSED       at 0 range 1 .. 1;
      RXEMPTY        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TXPAUSE        at 0 range 8 .. 8;
      TXPAUSED       at 0 range 9 .. 9;
      TXEMPTY        at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RXFIFOTOTAL    at 0 range 16 .. 23;
      TXFIFOTOTAL    at 0 range 24 .. 31;
   end record;

   --  USART FIFO global update register
   type FIFOUPDATEUSART_Register is record
      --  Writing 1 updates USART0 Rx FIFO size to match the USART0 RXSIZE.
      --  Must be done for all USARTs when any USART RXSIZE is changed.
      USART0RXUPDATESIZE : Boolean := False;
      --  Writing 1 updates USART1 Rx FIFO size to match the USART1 RXSIZE.
      --  Must be done for all USARTs when any USART RXSIZE is changed.
      USART1RXUPDATESIZE : Boolean := False;
      --  Writing 1 updates USART2 Rx FIFO size to match the USART2 RXSIZE.
      --  Must be done for all USARTs when any USART RXSIZE is changed.
      USART2RXUPDATESIZE : Boolean := False;
      --  Writing 1 updates USART3 Rx FIFO size to match the USART3 RXSIZE.
      --  Must be done for all USARTs when any USART RXSIZE is changed.
      USART3RXUPDATESIZE : Boolean := False;
      --  unspecified
      Reserved_4_15      : HAL.UInt12 := 16#0#;
      --  Writing 1 updates USART0 Tx FIFO size to match the USART0 TXSIZE.
      --  Must be done for all USARTs when any USART TXSIZE is changed.
      USART0TXUPDATESIZE : Boolean := False;
      --  Writing 1 updates USART1 Tx FIFO size to match the USART1 TXSIZE.
      --  Must be done for all USARTs when any USART TXSIZE is changed.
      USART1TXUPDATESIZE : Boolean := False;
      --  Writing 1 updates USART2 Tx FIFO size to match the USART2 TXSIZE.
      --  Must be done for all USARTs when any USART TXSIZE is changed.
      USART2TXUPDATESIZE : Boolean := False;
      --  Writing 1 updates USART3 Tx FIFO size to match the USART3 TXSIZE.
      --  Must be done for all USARTs when any USART TXSIZE is changed.
      USART3TXUPDATESIZE : Boolean := False;
      --  unspecified
      Reserved_20_31     : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOUPDATEUSART_Register use record
      USART0RXUPDATESIZE at 0 range 0 .. 0;
      USART1RXUPDATESIZE at 0 range 1 .. 1;
      USART2RXUPDATESIZE at 0 range 2 .. 2;
      USART3RXUPDATESIZE at 0 range 3 .. 3;
      Reserved_4_15      at 0 range 4 .. 15;
      USART0TXUPDATESIZE at 0 range 16 .. 16;
      USART1TXUPDATESIZE at 0 range 17 .. 17;
      USART2TXUPDATESIZE at 0 range 18 .. 18;
      USART3TXUPDATESIZE at 0 range 19 .. 19;
      Reserved_20_31     at 0 range 20 .. 31;
   end record;

   subtype FIFOCFGUSART_RXSIZE_Field is HAL.UInt8;
   subtype FIFOCFGUSART_TXSIZE_Field is HAL.UInt8;

   --  FIFO configuration register for USART0
   type FIFOCFGUSART_Register is record
      --  Configures the USART receive FIFO size. A zero values provides no
      --  System FIFO service for the related USART receiver.
      RXSIZE         : FIFOCFGUSART_RXSIZE_Field := 16#0#;
      --  Configures the USART transmit FIFO size. A zero values provides no
      --  System FIFO service for the related USART transmitter.
      TXSIZE         : FIFOCFGUSART_TXSIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCFGUSART_Register use record
      RXSIZE         at 0 range 0 .. 7;
      TXSIZE         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FIFO configuration register for USART0
   type FIFOCFGUSART_Registers is array (0 .. 3) of FIFOCFGUSART_Register
     with Volatile;

   subtype FIFOCTLSPI_RXFIFOTOTAL_Field is HAL.UInt8;
   subtype FIFOCTLSPI_TXFIFOTOTAL_Field is HAL.UInt8;

   --  SPI FIFO global control register. These registers are byte, halfword,
   --  and word addressable. The upper 16 bits of these registers provide
   --  information about the System FIFO configuration, and are specific to
   --  each device type.
   type FIFOCTLSPI_Register is record
      --  Pause all SPIs receive FIFO operations. This can be used to prepare
      --  the System FIFO to reconfigure FIFO allocations among the SPI
      --  receivers.
      RXPAUSE        : Boolean := True;
      --  All SPI receive FIFOs are paused.
      RXPAUSED       : Boolean := True;
      --  All SPI receive FIFOs are empty.
      RXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Pause all SPIs transmit FIFO operations. This can be used to prepare
      --  the System FIFO to reconfigure FIFO allocations among the SPI
      --  transmitters.
      TXPAUSE        : Boolean := True;
      --  All SPI transmit FIFOs are paused.
      TXPAUSED       : Boolean := True;
      --  All SPI transmit FIFOs are empty.
      TXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Reports the receive FIFO space available for SPIs on the System FIFO.
      --  The reset value is device specific.
      RXFIFOTOTAL    : FIFOCTLSPI_RXFIFOTOTAL_Field := 16#0#;
      --  Reports the transmit FIFO space available for SPIs on the System
      --  FIFO. The reset value is device specific.
      TXFIFOTOTAL    : FIFOCTLSPI_TXFIFOTOTAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCTLSPI_Register use record
      RXPAUSE        at 0 range 0 .. 0;
      RXPAUSED       at 0 range 1 .. 1;
      RXEMPTY        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TXPAUSE        at 0 range 8 .. 8;
      TXPAUSED       at 0 range 9 .. 9;
      TXEMPTY        at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RXFIFOTOTAL    at 0 range 16 .. 23;
      TXFIFOTOTAL    at 0 range 24 .. 31;
   end record;

   --  SPI FIFO global update register
   type FIFOUPDATESPI_Register is record
      --  Writing 1 updates SPI0 Rx FIFO size to match the SPI0 RXSIZE. Must be
      --  done for all SPIs when any SPI RXSIZE is changed.
      SPI0RXUPDATESIZE : Boolean := False;
      --  Writing 1 updates SPI1 Rx FIFO size to match the SPI1 RXSIZE. Must be
      --  done for all SPIs when any SPI RXSIZE is changed.
      SPI1RXUPDATESIZE : Boolean := False;
      --  unspecified
      Reserved_2_15    : HAL.UInt14 := 16#0#;
      --  Writing 1 updates SPI0 Tx FIFO size to match the SPI0 TXSIZE. Must be
      --  done for all SPIs when any SPI TXSIZE is changed.
      SPI0TXUPDATESIZE : Boolean := False;
      --  Writing 1 updates SPI1 Tx FIFO size to match the SPI1 TXSIZE. Must be
      --  done for all SPIs when any SPI TXSIZE is changed.
      SPI1TXUPDATESIZE : Boolean := False;
      --  unspecified
      Reserved_18_31   : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOUPDATESPI_Register use record
      SPI0RXUPDATESIZE at 0 range 0 .. 0;
      SPI1RXUPDATESIZE at 0 range 1 .. 1;
      Reserved_2_15    at 0 range 2 .. 15;
      SPI0TXUPDATESIZE at 0 range 16 .. 16;
      SPI1TXUPDATESIZE at 0 range 17 .. 17;
      Reserved_18_31   at 0 range 18 .. 31;
   end record;

   subtype FIFOCFGSPI_RXSIZE_Field is HAL.UInt8;
   subtype FIFOCFGSPI_TXSIZE_Field is HAL.UInt8;

   --  FIFO configuration register for SPI0
   type FIFOCFGSPI_Register is record
      --  Configures the SPI receive FIFO size. A zero values provides no
      --  System FIFO service for the related SPI receiver.
      RXSIZE         : FIFOCFGSPI_RXSIZE_Field := 16#0#;
      --  Configures the SPI transmit FIFO size. A zero values provides no
      --  System FIFO service for the related SPI transmitter.
      TXSIZE         : FIFOCFGSPI_TXSIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCFGSPI_Register use record
      RXSIZE         at 0 range 0 .. 7;
      TXSIZE         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FIFO configuration register for SPI0
   type FIFOCFGSPI_Registers is array (0 .. 1) of FIFOCFGSPI_Register
     with Volatile;

   -------------------------------
   -- USART cluster's Registers --
   -------------------------------

   subtype CFGUSART_USART_TIMEOUTBASE_Field is HAL.UInt4;
   subtype CFGUSART_USART_TIMEOUTVALUE_Field is HAL.UInt4;
   subtype CFGUSART_USART_RXTHRESHOLD_Field is HAL.UInt8;
   subtype CFGUSART_USART_TXTHRESHOLD_Field is HAL.UInt8;

   --  USART0 configuration
   type CFGUSART_USART_Register is record
      --  unspecified
      Reserved_0_3       : HAL.UInt4 := 16#0#;
      --  Timeout Continue On Write. When 0, the timeout for the related
      --  peripheral is reset every time data is transferred from the
      --  peripheral into the receive FIFO. When 1, the timeout for the related
      --  peripheral is not reset every time data is transferred into the
      --  receive FIFO. This allows the timeout to be applied to accumulated
      --  data, perhaps related to the FIFO threshold.
      TIMEOUTCONTONWRITE : Boolean := False;
      --  Timeout Continue On Empty. When 0, the timeout for the related
      --  peripheral is reset when the receive FIFO becomes empty. When 1, the
      --  timeout for the related peripheral is not reset when the receive FIFO
      --  becomes empty. This allows the timeout to be used to flag idle
      --  peripherals, and could potentially be used to indicate the end of a
      --  transmission of indeterminate length.
      TIMEOUTCONTONEMPTY : Boolean := False;
      --  unspecified
      Reserved_6_7       : HAL.UInt2 := 16#0#;
      --  Specifies the least significant timer bit to compare to TimeoutValue.
      --  See Section 24.5.7.1 below. Value can be 0 through 15.
      TIMEOUTBASE        : CFGUSART_USART_TIMEOUTBASE_Field := 16#0#;
      --  Specifies the maximum time value for timeout at the timer position
      --  identified by TimeoutBase. Minimum time TimeoutValue - 1. is See
      --  Section 24.5.7.1 below. TimeoutValue should not be 0 or 1 when
      --  timeout is enabled.
      TIMEOUTVALUE       : CFGUSART_USART_TIMEOUTVALUE_Field := 16#0#;
      --  Receive FIFO Threshold. The System FIFO indicates that the threshold
      --  has been reached when the number of entries in the receive FIFO is
      --  greater than this value. For example, when RxThreshold = 0, the
      --  threshold is exceeded when there is at least one entry in the receive
      --  FIFO. An interrupt can be generated when the RxThreshold has been
      --  reached (see Section 24.5.10), but has no effect on DMA requests,
      --  which are generated whenever the receiver FIFO is not empty.
      RXTHRESHOLD        : CFGUSART_USART_RXTHRESHOLD_Field := 16#0#;
      --  Transmit FIFO Threshold. The System FIFO indicates that the threshold
      --  has been reached when the number of free entries in the transmit FIFO
      --  is less than or equal to this value. For example, when TxThreshold =
      --  0, the threshold is exceeded when there is at least one free entry in
      --  the transmit FIFO. An interrupt can be generated when the TxThreshold
      --  has been reached (see Section 24.5.10), but has no effect on DMA
      --  requests, which are generated whenever the transmit FIFO has any free
      --  entries.
      TXTHRESHOLD        : CFGUSART_USART_TXTHRESHOLD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGUSART_USART_Register use record
      Reserved_0_3       at 0 range 0 .. 3;
      TIMEOUTCONTONWRITE at 0 range 4 .. 4;
      TIMEOUTCONTONEMPTY at 0 range 5 .. 5;
      Reserved_6_7       at 0 range 6 .. 7;
      TIMEOUTBASE        at 0 range 8 .. 11;
      TIMEOUTVALUE       at 0 range 12 .. 15;
      RXTHRESHOLD        at 0 range 16 .. 23;
      TXTHRESHOLD        at 0 range 24 .. 31;
   end record;

   subtype STATUSART_USART_RXCOUNT_Field is HAL.UInt8;
   subtype STATUSART_USART_TXCOUNT_Field is HAL.UInt8;

   --  USART0 status
   type STATUSART_USART_Register is record
      --  Receive FIFO Threshold. When 1, the receive FIFO threshold has been
      --  reached. This is a read-only bit.
      RXTH           : Boolean := False;
      --  Transmit FIFO Threshold. When 1, the transmit FIFO threshold has been
      --  reached. This is a read-only bit.
      TXTH           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive FIFO Timeout. When 1, the receive FIFO has timed out, based
      --  on the timeout configuration in the CFGUSART register. The timeout
      --  condition can be cleared by writing a 1 to this bit, by enabling or
      --  disabling the timeout interrupt, or by writing a 1 to the timeout
      --  interrupt enable.
      RXTIMEOUT      : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Bus Error. When 1, a bus error has occurred while processing data for
      --  USARTn. The bus error flag can be cleared by writing a 1 to this bit.
      BUSERR         : Boolean := False;
      --  Receive FIFO Empty. When 1, the receive FIFO is currently empty. This
      --  is a read-only bit.
      RXEMPTY        : Boolean := True;
      --  Transmit FIFO Empty. When 1, the transmit FIFO is currently empty.
      --  This is a read-only bit.
      TXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Receive FIFO Count. Indicates how many entries may be read from the
      --  receive FIFO. 0 = FIFO empty. This is a read-only field.
      RXCOUNT        : STATUSART_USART_RXCOUNT_Field := 16#0#;
      --  Transmit FIFO Count. Indicates how many entries may be written to the
      --  transmit FIFO. 0 = FIFO full. This is a read-only field that is valid
      --  only when the TxFIFO is fully configured and enabled.
      TXCOUNT        : STATUSART_USART_TXCOUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUSART_USART_Register use record
      RXTH           at 0 range 0 .. 0;
      TXTH           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXTIMEOUT      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      BUSERR         at 0 range 7 .. 7;
      RXEMPTY        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCOUNT        at 0 range 16 .. 23;
      TXCOUNT        at 0 range 24 .. 31;
   end record;

   subtype INTSTATUSART_USART_RXCOUNT_Field is HAL.UInt8;
   subtype INTSTATUSART_USART_TXCOUNT_Field is HAL.UInt8;

   --  USART0 interrupt status
   type INTSTATUSART_USART_Register is record
      --  Receive FIFO Threshold. When 1, the receive FIFO threshold has been
      --  reached, and the related interrupt is enabled.
      RXTH           : Boolean := False;
      --  Transmit FIFO Threshold. When 1, the transmit FIFO threshold has been
      --  reached, and the related interrupt is enabled.
      TXTH           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive Timeout. When 1, the receive FIFO has timed out, based on the
      --  timeout configuration in the CFGUSART register, and the related
      --  interrupt is enabled.
      RXTIMEOUT      : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Bus Error. This is simply a copy of the same bit in the STATUSART
      --  register. The bus error interrupt is always enabled.
      BUSERR         : Boolean := False;
      --  Receive FIFO Empty. This is simply a copy of the same bit in the
      --  STATUSART register.
      RXEMPTY        : Boolean := True;
      --  Transmit FIFO Empty. This is simply a copy of the same bit in the
      --  STATUSART register.
      TXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Receive FIFO Count. This is simply a copy of the same field in the
      --  STATUSART register, included here so an ISR can read all needed
      --  status information in one read.
      RXCOUNT        : INTSTATUSART_USART_RXCOUNT_Field := 16#0#;
      --  Transmit FIFO Available. This is simply a copy of the same field in
      --  the STATUSART register, included here so an ISR can read all needed
      --  status information in one read.
      TXCOUNT        : INTSTATUSART_USART_TXCOUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTATUSART_USART_Register use record
      RXTH           at 0 range 0 .. 0;
      TXTH           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXTIMEOUT      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      BUSERR         at 0 range 7 .. 7;
      RXEMPTY        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCOUNT        at 0 range 16 .. 23;
      TXCOUNT        at 0 range 24 .. 31;
   end record;

   --  USART0 control read and set register. A complete value may be read from
   --  this register. Writing a 1 to any implemented bit position causes that
   --  bit to be set.
   type CTLSETUSART_USART_Register is record
      --  Receive FIFO Threshold Interrupt Enable.
      RXTHINTEN      : Boolean := False;
      --  Transmit FIFO Threshold Interrupt Enable.
      TXTHINTEN      : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive FIFO Timeout Interrupt Enable. When enabled, this also
      --  enables the timeout for this USART. Writing a 1 to this bit resets
      --  the USART timeout logic.
      RXTIMEOUTINTEN : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Receive FIFO flush. Writing a 1 to this bit forces the receive FIFO
      --  to be empty.
      RXFLUSH        : Boolean := False;
      --  Transmit FIFO flush. Writing a 1 to this bit forces the transmit FIFO
      --  to be empty.
      TXFLUSH        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLSETUSART_USART_Register use record
      RXTHINTEN      at 0 range 0 .. 0;
      TXTHINTEN      at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXTIMEOUTINTEN at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RXFLUSH        at 0 range 8 .. 8;
      TXFLUSH        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  USART0 control clear register. Writing a 1 to any implemented bit
   --  position causes the corresponding bit in the related CTLSET register to
   --  be cleared.
   type CTLCLRUSART_USART_Register is record
      --  Receive FIFO Threshold Interrupt clear.
      RXTHINTCLR      : Boolean := False;
      --  Transmit FIFO Threshold Interrupt clear.
      TXTHINTCLR      : Boolean := False;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  Receive FIFO Time-out Interrupt clear.
      RXTIMEOUTINTCLR : Boolean := False;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Receive FIFO flush clear.
      RXFLUSHCLR      : Boolean := False;
      --  Transmit FIFO flush clear.
      TXFLUSHCLR      : Boolean := False;
      --  unspecified
      Reserved_10_31  : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLCLRUSART_USART_Register use record
      RXTHINTCLR      at 0 range 0 .. 0;
      TXTHINTCLR      at 0 range 1 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      RXTIMEOUTINTCLR at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      RXFLUSHCLR      at 0 range 8 .. 8;
      TXFLUSHCLR      at 0 range 9 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   subtype RXDATUSART_USART_RXDAT_Field is HAL.UInt9;

   --  USART0 received data
   type RXDATUSART_USART_Register is record
      --  The UART Receiver Data register contains the next received character.
      --  The number of bits that are relevant depends on the UART
      --  configuration settings.
      RXDAT         : RXDATUSART_USART_RXDAT_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATUSART_USART_Register use record
      RXDAT         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RXDATSTATUSART_USART_RXDAT_Field is HAL.UInt9;

   --  USART0 received data with status
   type RXDATSTATUSART_USART_Register is record
      --  The UART Receiver Data register contains the next received character.
      --  The number of bits that are relevant depends on the UART
      --  configuration settings.
      RXDAT          : RXDATSTATUSART_USART_RXDAT_Field := 16#0#;
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
      --  Received Noise flag.
      RXNOISE        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATSTATUSART_USART_Register use record
      RXDAT          at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      FRAMERR        at 0 range 13 .. 13;
      PARITYERR      at 0 range 14 .. 14;
      RXNOISE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXDATUSART_USART_TXDAT_Field is HAL.UInt9;

   --  USART0 transmit data
   type TXDATUSART_USART_Register is record
      --  Writing to the UART Transmit Data Register causes the data to be
      --  transmitted as soon as the transmit shift register is available and
      --  the condition for transmitting data is met: TXDIS bit = 0.
      TXDAT         : TXDATUSART_USART_TXDAT_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATUSART_USART_Register use record
      TXDAT         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  no description available
   type USART_Cluster is record
      --  USART0 configuration
      CFGUSART       : aliased CFGUSART_USART_Register;
      --  USART0 status
      STATUSART      : aliased STATUSART_USART_Register;
      --  USART0 interrupt status
      INTSTATUSART   : aliased INTSTATUSART_USART_Register;
      --  USART0 control read and set register. A complete value may be read
      --  from this register. Writing a 1 to any implemented bit position
      --  causes that bit to be set.
      CTLSETUSART    : aliased CTLSETUSART_USART_Register;
      --  USART0 control clear register. Writing a 1 to any implemented bit
      --  position causes the corresponding bit in the related CTLSET register
      --  to be cleared.
      CTLCLRUSART    : aliased CTLCLRUSART_USART_Register;
      --  USART0 received data
      RXDATUSART     : aliased RXDATUSART_USART_Register;
      --  USART0 received data with status
      RXDATSTATUSART : aliased RXDATSTATUSART_USART_Register;
      --  USART0 transmit data
      TXDATUSART     : aliased TXDATUSART_USART_Register;
   end record
     with Volatile, Size => 2048;

   for USART_Cluster use record
      CFGUSART       at 16#0# range 0 .. 31;
      STATUSART      at 16#4# range 0 .. 31;
      INTSTATUSART   at 16#8# range 0 .. 31;
      CTLSETUSART    at 16#C# range 0 .. 31;
      CTLCLRUSART    at 16#10# range 0 .. 31;
      RXDATUSART     at 16#14# range 0 .. 31;
      RXDATSTATUSART at 16#18# range 0 .. 31;
      TXDATUSART     at 16#1C# range 0 .. 31;
   end record;

   --  no description available
   type USART_Clusters is array (0 .. 3) of USART_Cluster;

   -----------------------------
   -- SPI cluster's Registers --
   -----------------------------

   subtype CFGSPI_SPI_TIMEOUTBASE_Field is HAL.UInt4;
   subtype CFGSPI_SPI_TIMEOUTVALUE_Field is HAL.UInt4;
   subtype CFGSPI_SPI_RXTHRESHOLD_Field is HAL.UInt8;
   subtype CFGSPI_SPI_TXTHRESHOLD_Field is HAL.UInt8;

   --  SPI0 configuration
   type CFGSPI_SPI_Register is record
      --  unspecified
      Reserved_0_3       : HAL.UInt4 := 16#0#;
      --  Timeout Continue On Write. When 0, the timeout for the related
      --  peripheral is reset every time data is transferred from the
      --  peripheral into the receive FIFO. When 1, the timeout for the related
      --  peripheral is not reset every time data is transferred into the
      --  receive FIFO. This allows the timeout to be applied to accumulated
      --  data, perhaps related to the FIFO threshold.
      TIMEOUTCONTONWRITE : Boolean := False;
      --  Timeout Continue On Empty. When 0, the timeout for the related
      --  peripheral is reset when the receive FIFO becomes empty. When 1, the
      --  timeout for the related peripheral is not reset when the receive FIFO
      --  becomes empty. This allows the timeout to be used to flag idle
      --  peripherals, and could potentially be used to indicate the end of a
      --  transmission of indeterminate length.
      TIMEOUTCONTONEMPTY : Boolean := False;
      --  unspecified
      Reserved_6_7       : HAL.UInt2 := 16#0#;
      --  Specifies the least significant timer bit to compare to TimeoutValue.
      --  Value can be 0 through 15.
      TIMEOUTBASE        : CFGSPI_SPI_TIMEOUTBASE_Field := 16#0#;
      --  Specifies the maximum time value for timeout at the timer position
      --  identified by TimeoutBase. Minimum time TimeoutValue - 1.
      --  TimeoutValue should not be 0 or 1 when timeout is enabled.
      TIMEOUTVALUE       : CFGSPI_SPI_TIMEOUTVALUE_Field := 16#0#;
      --  Receive FIFO Threshold. The System FIFO indicates that the threshold
      --  has been reached when the number of entries in the receive FIFO is
      --  greater than this value. For example, when RxThreshold = 0, the
      --  threshold is exceeded when there is at least one entry in the receive
      --  FIFO. An interrupt can be generated when the RxThreshold has been
      --  reached, but has no effect on DMA requests, which are generated
      --  whenever the receiver FIFO is not empty.
      RXTHRESHOLD        : CFGSPI_SPI_RXTHRESHOLD_Field := 16#0#;
      --  Transmit FIFO Threshold. The System FIFO indicates that the threshold
      --  has been reached when the number of free entries in the transmit FIFO
      --  is less than or equal to this value. For example, when TxThreshold =
      --  0, the threshold is exceeded when there is at least one free entry in
      --  the transmit FIFO. An interrupt can be generated when the TxThreshold
      --  has been reached, but has no effect on DMA requests, which are
      --  generated whenever the transmit FIFO has any free entries.
      TXTHRESHOLD        : CFGSPI_SPI_TXTHRESHOLD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGSPI_SPI_Register use record
      Reserved_0_3       at 0 range 0 .. 3;
      TIMEOUTCONTONWRITE at 0 range 4 .. 4;
      TIMEOUTCONTONEMPTY at 0 range 5 .. 5;
      Reserved_6_7       at 0 range 6 .. 7;
      TIMEOUTBASE        at 0 range 8 .. 11;
      TIMEOUTVALUE       at 0 range 12 .. 15;
      RXTHRESHOLD        at 0 range 16 .. 23;
      TXTHRESHOLD        at 0 range 24 .. 31;
   end record;

   subtype STATSPI_SPI_RXCOUNT_Field is HAL.UInt8;
   subtype STATSPI_SPI_TXCOUNT_Field is HAL.UInt8;

   --  SPI0 status
   type STATSPI_SPI_Register is record
      --  Receive FIFO Threshold. When 1, the receive FIFO threshold has been
      --  reached. This is a read-only bit.
      RXTH           : Boolean := False;
      --  Transmit FIFO Threshold. When 1, the transmit FIFO threshold has been
      --  reached. This is a read-only bit.
      TXTH           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive FIFO Timeout. When 1, the receive FIFO has timed out, based
      --  on the timeout configuration in the CFGSPI register. The timeout
      --  condition can be cleared by writing a 1 to this bit, by enabling or
      --  disabling the timeout interrupt, or by writing a 1 to the timeout
      --  interrupt enable.
      RXTIMEOUT      : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Bus Error. When 1, a bus error has occurred while processing data for
      --  SPI. The bus error flag can be cleared by writing a 1 to this bit.
      BUSERR         : Boolean := False;
      --  Receive FIFO Empty. When 1, the receive FIFO is currently empty. This
      --  is a read-only bit.
      RXEMPTY        : Boolean := True;
      --  Transmit FIFO Empty. When 1, the transmit FIFO is currently empty.
      --  This is a read-only bit.
      TXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Receive FIFO Count. Indicates how many entries may be read from the
      --  receive FIFO. 0 = FIFO empty. This is a read-only field.
      RXCOUNT        : STATSPI_SPI_RXCOUNT_Field := 16#0#;
      --  Transmit FIFO Count. Indicates how many entries may be written to the
      --  transmit FIFO. 0 = FIFO full. This is a read-only field that is valid
      --  only when the TxFIFO is fully configured and enabled.
      TXCOUNT        : STATSPI_SPI_TXCOUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATSPI_SPI_Register use record
      RXTH           at 0 range 0 .. 0;
      TXTH           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXTIMEOUT      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      BUSERR         at 0 range 7 .. 7;
      RXEMPTY        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCOUNT        at 0 range 16 .. 23;
      TXCOUNT        at 0 range 24 .. 31;
   end record;

   subtype INTSTATSPI_SPI_RXCOUNT_Field is HAL.UInt8;
   subtype INTSTATSPI_SPI_TXCOUNT_Field is HAL.UInt8;

   --  SPI0 interrupt status
   type INTSTATSPI_SPI_Register is record
      --  Receive FIFO Threshold. When 1, the receive FIFO threshold has been
      --  reached, and the related interrupt is enabled.
      RXTH           : Boolean := False;
      --  Transmit FIFO Threshold. When 1, the transmit FIFO threshold has been
      --  reached, and the related interrupt is enabled.
      TXTH           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive Timeout. When 1, the receive FIFO has timed out, based on the
      --  timeout configuration in the CFGSPI register, and the related
      --  interrupt is enabled.
      RXTIMEOUT      : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Bus Error. This is simply a copy of the same bit in the STATSPI
      --  register. The bus error interrupt is always enabled.
      BUSERR         : Boolean := False;
      --  Receive FIFO Empty. This is simply a copy of the same bit in the
      --  STATSPI register.
      RXEMPTY        : Boolean := True;
      --  Transmit FIFO Empty. This is simply a copy of the same bit in the
      --  STATSPI register.
      TXEMPTY        : Boolean := True;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Receive FIFO Count. This is simply a copy of the same field in the
      --  STATSPI register, included here so an ISR can read all needed status
      --  information in one read.
      RXCOUNT        : INTSTATSPI_SPI_RXCOUNT_Field := 16#0#;
      --  Transmit FIFO Available. This is simply a copy of the same field in
      --  the STATSPI register, included here so an ISR can read all needed
      --  status information in one read.
      TXCOUNT        : INTSTATSPI_SPI_TXCOUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTATSPI_SPI_Register use record
      RXTH           at 0 range 0 .. 0;
      TXTH           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXTIMEOUT      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      BUSERR         at 0 range 7 .. 7;
      RXEMPTY        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCOUNT        at 0 range 16 .. 23;
      TXCOUNT        at 0 range 24 .. 31;
   end record;

   --  SPI0 control read and set register. A complete value may be read from
   --  this register. Writing a 1 to any implemented bit position causes that
   --  bit to be set.
   type CTLSETSPI_SPI_Register is record
      --  Receive FIFO Threshold Interrupt Enable.
      RXTHINTEN      : Boolean := False;
      --  Transmit FIFO Threshold Interrupt Enable.
      TXTHINTEN      : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive FIFO Timeout Interrupt Enable. When enabled, this also
      --  enables the timeout for this SPI. Writing a 1 to this bit resets the
      --  SPI timeout logic.
      RXTIMEOUTINTEN : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Receive FIFO flush. Writing a 1 to this bit forces the receive FIFO
      --  to be empty.
      RXFLUSH        : Boolean := False;
      --  Transmit FIFO flush. Writing a 1 to this bit forces the transmit FIFO
      --  to be empty.
      TXFLUSH        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLSETSPI_SPI_Register use record
      RXTHINTEN      at 0 range 0 .. 0;
      TXTHINTEN      at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXTIMEOUTINTEN at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RXFLUSH        at 0 range 8 .. 8;
      TXFLUSH        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SPI0 control clear register. Writing a 1 to any implemented bit position
   --  causes the corresponding bit in the related CTLSET register to be
   --  cleared.
   type CTLCLRSPI_SPI_Register is record
      --  Receive FIFO Threshold Interrupt clear.
      RXTHINTCLR      : Boolean := False;
      --  Transmit FIFO Threshold Interrupt clear.
      TXTHINTCLR      : Boolean := False;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  Receive FIFO Timeout Interrupt clear.
      RXTIMEOUTINTCLR : Boolean := False;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Receive FIFO flush clear. do the clear bits 8 and 9 do anything?
      RXFLUSHCLR      : Boolean := False;
      --  Transmit FIFO flush clear.
      TXFLUSHCLR      : Boolean := False;
      --  unspecified
      Reserved_10_31  : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLCLRSPI_SPI_Register use record
      RXTHINTCLR      at 0 range 0 .. 0;
      TXTHINTCLR      at 0 range 1 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      RXTIMEOUTINTCLR at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      RXFLUSHCLR      at 0 range 8 .. 8;
      TXFLUSHCLR      at 0 range 9 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   subtype RXDATSPI_SPI_RXDAT_Field is HAL.UInt16;

   --  SPI0 received data. These registers are half word addressable.
   type RXDATSPI_SPI_Register is record
      --  Receiver Data. This contains the next piece of received data. The
      --  number of bits that are used depends on the LEN setting in TXCTL /
      --  TXDATCTL.
      RXDAT          : RXDATSPI_SPI_RXDAT_Field := 16#0#;
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

   for RXDATSPI_SPI_Register use record
      RXDAT          at 0 range 0 .. 15;
      RXSSEL0_N      at 0 range 16 .. 16;
      RXSSEL1_N      at 0 range 17 .. 17;
      RXSSEL2_N      at 0 range 18 .. 18;
      RXSSEL3_N      at 0 range 19 .. 19;
      SOT            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype TXDATSPI_SPI_TXDAT_Field is HAL.UInt16;

   --  Transmit Slave Select. This field asserts SSEL0 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL0 pin is configured by bits in the CFG register.
   type TXDATSPI_TXSSEL0_N_Field is
     (
      --  Asserted. SSEL0 asserted.
      Asserted,
      --  Not asserted. SSEL0 not asserted.
      Not_Asserted)
     with Size => 1;
   for TXDATSPI_TXSSEL0_N_Field use
     (Asserted => 0,
      Not_Asserted => 1);

   --  Transmit Slave Select. This field asserts SSEL1 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL1 pin is configured by bits in the CFG register.
   type TXDATSPI_TXSSEL1_N_Field is
     (
      --  Asserted. SSEL1 asserted.
      Asserted,
      --  Not asserted. SSEL1 not asserted.
      Not_Asserted)
     with Size => 1;
   for TXDATSPI_TXSSEL1_N_Field use
     (Asserted => 0,
      Not_Asserted => 1);

   --  Transmit Slave Select. This field asserts SSEL2 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL2 pin is configured by bits in the CFG register.
   type TXDATSPI_TXSSEL2_N_Field is
     (
      --  Asserted. SSEL2 asserted.
      Asserted,
      --  Not asserted. SSEL2 not asserted.
      Not_Asserted)
     with Size => 1;
   for TXDATSPI_TXSSEL2_N_Field use
     (Asserted => 0,
      Not_Asserted => 1);

   --  Transmit Slave Select. This field asserts SSEL3 in master mode. The
   --  output on the pin is active LOW by default. The active state of the
   --  SSEL3 pin is configured by bits in the CFG register.
   type TXDATSPI_TXSSEL3_N_Field is
     (
      --  Asserted. SSEL3 asserted.
      Asserted,
      --  Not asserted. SSEL3 not asserted.
      Not_Asserted)
     with Size => 1;
   for TXDATSPI_TXSSEL3_N_Field use
     (Asserted => 0,
      Not_Asserted => 1);

   --  End of Transfer. The asserted SSEL will be deasserted at the end of a
   --  transfer, and remain so for at least the time specified by the
   --  Transfer_delay value in the DLY register.
   type TXDATSPI_EOT_Field is
     (
      --  Not deasserted. SSEL not deasserted. This piece of data is not
      --  treated as the end of a transfer. SSEL will not be deasserted at the
      --  end of this data.
      Not_Deasserted,
      --  Deasserted. SSEL deasserted. This piece of data is treated as the end
      --  of a transfer. SSEL will be deasserted at the end of this piece of
      --  data.
      Deasserted)
     with Size => 1;
   for TXDATSPI_EOT_Field use
     (Not_Deasserted => 0,
      Deasserted => 1);

   --  End of Frame. Between frames, a delay may be inserted, as defined by the
   --  FRAME_DELAY value in the DLY register. The end of a frame may not be
   --  particularly meaningful if the FRAME_DELAY value = 0. This control can
   --  be used as part of the support for frame lengths greater than 16 bits.
   type TXDATSPI_EOF_Field is
     (
      --  Data not EOF. This piece of data transmitted is not treated as the
      --  end of a frame.
      Data_Not_Eof,
      --  Data EOF. This piece of data is treated as the end of a frame,
      --  causing the FRAME_DELAY time to be inserted before subsequent data is
      --  transmitted.
      Data_Eof)
     with Size => 1;
   for TXDATSPI_EOF_Field use
     (Data_Not_Eof => 0,
      Data_Eof => 1);

   --  Receive Ignore. This allows data to be transmitted using the SPI without
   --  the need to read unneeded data from the receiver to simplify the
   --  transmit process and can be used with the DMA.
   type TXDATSPI_RXIGNORE_Field is
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
   for TXDATSPI_RXIGNORE_Field use
     (Read_Received_Data => 0,
      Ignore_Received_Data => 1);

   subtype TXDATSPI_SPI_LEN_Field is HAL.UInt4;

   --  SPI0 transmit data. These registers are half word addressable.
   type TXDATSPI_SPI_Register is record
      --  Transmit Data. This field provides from 1 to 16 bits of data to be
      --  transmitted.
      TXDAT          : TXDATSPI_SPI_TXDAT_Field := 16#0#;
      --  Transmit Slave Select. This field asserts SSEL0 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL0 pin is configured by bits in the CFG register.
      TXSSEL0_N      : TXDATSPI_TXSSEL0_N_Field := NRF_SVD.VFIFO.Asserted;
      --  Transmit Slave Select. This field asserts SSEL1 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL1 pin is configured by bits in the CFG register.
      TXSSEL1_N      : TXDATSPI_TXSSEL1_N_Field := NRF_SVD.VFIFO.Asserted;
      --  Transmit Slave Select. This field asserts SSEL2 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL2 pin is configured by bits in the CFG register.
      TXSSEL2_N      : TXDATSPI_TXSSEL2_N_Field := NRF_SVD.VFIFO.Asserted;
      --  Transmit Slave Select. This field asserts SSEL3 in master mode. The
      --  output on the pin is active LOW by default. The active state of the
      --  SSEL3 pin is configured by bits in the CFG register.
      TXSSEL3_N      : TXDATSPI_TXSSEL3_N_Field := NRF_SVD.VFIFO.Asserted;
      --  End of Transfer. The asserted SSEL will be deasserted at the end of a
      --  transfer, and remain so for at least the time specified by the
      --  Transfer_delay value in the DLY register.
      EOT            : TXDATSPI_EOT_Field := NRF_SVD.VFIFO.Not_Deasserted;
      --  End of Frame. Between frames, a delay may be inserted, as defined by
      --  the FRAME_DELAY value in the DLY register. The end of a frame may not
      --  be particularly meaningful if the FRAME_DELAY value = 0. This control
      --  can be used as part of the support for frame lengths greater than 16
      --  bits.
      EOF            : TXDATSPI_EOF_Field := NRF_SVD.VFIFO.Data_Not_Eof;
      --  Receive Ignore. This allows data to be transmitted using the SPI
      --  without the need to read unneeded data from the receiver to simplify
      --  the transmit process and can be used with the DMA.
      RXIGNORE       : TXDATSPI_RXIGNORE_Field :=
                        NRF_SVD.VFIFO.Read_Received_Data;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Data Length. Specifies the data length from 1 to 16 bits. Note that
      --  transfer lengths greater than 16 bits are supported by implementing
      --  multiple sequential data transmits. 0x0 = Data transfer is 1 bit in
      --  length. 0x1 = Data transfer is 2 bits in length. 0x2 = Data transfer
      --  is 3 bits in length. ... 0xF = Data transfer is 16 bits in length.
      LEN            : TXDATSPI_SPI_LEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATSPI_SPI_Register use record
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

   --  no description available
   type SPI_Cluster is record
      --  SPI0 configuration
      CFGSPI     : aliased CFGSPI_SPI_Register;
      --  SPI0 status
      STATSPI    : aliased STATSPI_SPI_Register;
      --  SPI0 interrupt status
      INTSTATSPI : aliased INTSTATSPI_SPI_Register;
      --  SPI0 control read and set register. A complete value may be read from
      --  this register. Writing a 1 to any implemented bit position causes
      --  that bit to be set.
      CTLSETSPI  : aliased CTLSETSPI_SPI_Register;
      --  SPI0 control clear register. Writing a 1 to any implemented bit
      --  position causes the corresponding bit in the related CTLSET register
      --  to be cleared.
      CTLCLRSPI  : aliased CTLCLRSPI_SPI_Register;
      --  SPI0 received data. These registers are half word addressable.
      RXDATSPI   : aliased RXDATSPI_SPI_Register;
      --  SPI0 transmit data. These registers are half word addressable.
      TXDATSPI   : aliased TXDATSPI_SPI_Register;
   end record
     with Volatile, Size => 2048;

   for SPI_Cluster use record
      CFGSPI     at 16#0# range 0 .. 31;
      STATSPI    at 16#4# range 0 .. 31;
      INTSTATSPI at 16#8# range 0 .. 31;
      CTLSETSPI  at 16#C# range 0 .. 31;
      CTLCLRSPI  at 16#10# range 0 .. 31;
      RXDATSPI   at 16#14# range 0 .. 31;
      TXDATSPI   at 16#18# range 0 .. 31;
   end record;

   --  no description available
   type SPI_Clusters is array (0 .. 1) of SPI_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  System FIFO for Serial Peripherals
   type VFIFO_Peripheral is record
      --  USART FIFO global control register. These registers are byte,
      --  halfword, and word addressable.The upper 16 bits of these registers
      --  provide information about the System FIFO configuration, and are
      --  specific to each device type.
      FIFOCTLUSART    : aliased FIFOCTLUSART_Register;
      --  USART FIFO global update register
      FIFOUPDATEUSART : aliased FIFOUPDATEUSART_Register;
      --  FIFO configuration register for USART0
      FIFOCFGUSART    : aliased FIFOCFGUSART_Registers;
      --  SPI FIFO global control register. These registers are byte, halfword,
      --  and word addressable. The upper 16 bits of these registers provide
      --  information about the System FIFO configuration, and are specific to
      --  each device type.
      FIFOCTLSPI      : aliased FIFOCTLSPI_Register;
      --  SPI FIFO global update register
      FIFOUPDATESPI   : aliased FIFOUPDATESPI_Register;
      --  FIFO configuration register for SPI0
      FIFOCFGSPI      : aliased FIFOCFGSPI_Registers;
      --  no description available
      USART           : aliased USART_Clusters;
      --  no description available
      SPI             : aliased SPI_Clusters;
   end record
     with Volatile;

   for VFIFO_Peripheral use record
      FIFOCTLUSART    at 16#100# range 0 .. 31;
      FIFOUPDATEUSART at 16#104# range 0 .. 31;
      FIFOCFGUSART    at 16#110# range 0 .. 127;
      FIFOCTLSPI      at 16#200# range 0 .. 31;
      FIFOUPDATESPI   at 16#204# range 0 .. 31;
      FIFOCFGSPI      at 16#210# range 0 .. 63;
      USART           at 16#1000# range 0 .. 8191;
      SPI             at 16#2000# range 0 .. 4095;
   end record;

   --  System FIFO for Serial Peripherals
   VFIFO_Periph : aliased VFIFO_Peripheral
     with Import, Address => System'To_Address (16#1C038000#);

end NRF_SVD.VFIFO;
