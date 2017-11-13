--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Status of the UART transmitter. Each field can generate an interrupt if
   --  corresponding bit in the Tx interrupt mask register is set.
   type TRANSMIT_STATUS_Register is record
      --  Read-only. Active High indication when Tx FIFO can still accepts at
      --  least one more character. 0: TX FIFO Full. 1: TX FIFO not Full.
      TX_FIFO_NOT_FULL   : Boolean;
      --  Read-only. Active High indication when Tx FIFO is at least quarter
      --  empty. Reset when more.
      TX_FIFO_0P25_EMPTY : Boolean;
      --  Read-only. Active High indication when Tx FIFO is at least half
      --  empty. Reset when more.
      TX_FIFO_0P5_EMPTY  : Boolean;
      --  Read-only. Active High indication when Tx FIFO is at least three
      --  quarters empty. Reset when more.
      TX_FIFO_0P75_EMPTY : Boolean;
      --  Read-only. Active High indication when Tx FIFO is Empty and has no
      --  more character to transmit
      TX_FIFO_EMPTY      : Boolean;
      --  Read-only. Active High indication when flow control signal "cts" is
      --  active. Unaffected by cts enable bit in config register.
      CTS_ACTIVE         : Boolean;
      --  unspecified
      Reserved_6_7       : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TRANSMIT_STATUS_Register use record
      TX_FIFO_NOT_FULL   at 0 range 0 .. 0;
      TX_FIFO_0P25_EMPTY at 0 range 1 .. 1;
      TX_FIFO_0P5_EMPTY  at 0 range 2 .. 2;
      TX_FIFO_0P75_EMPTY at 0 range 3 .. 3;
      TX_FIFO_EMPTY      at 0 range 4 .. 4;
      CTS_ACTIVE         at 0 range 5 .. 5;
      Reserved_6_7       at 0 range 6 .. 7;
   end record;

   --  Enable or Disable the generation of interrupts by the tx_status
   --  register.
   type TX_INTERRUPT_MASK_Register is record
      --  Active High Enable of tx_fifo_not_full interrupt
      TX_FIFO_NOT_FULL_MASK   : Boolean := False;
      --  Active High Enable of tx_fifo_0p25_empty interrupt
      TX_FIFO_0P25_EMPTY_MASK : Boolean := False;
      --  Active High Enable of tx_fifo_0p5_empty interrupt
      TX_FIFO_0P5_EMPTY_MASK  : Boolean := False;
      --  Active High Enable of tx_fifo_0p75_empty interrupt
      TX_FIFO_0P75_EMPTY_MASK : Boolean := False;
      --  Active High Enable of tx_fifo_empty interrupt
      TX_FIFO_EMPTY_MASK      : Boolean := False;
      --  Active High Enable of cts_active interrupt
      CTS_ACTIVE_MASK         : Boolean := False;
      --  unspecified
      Reserved_6_7            : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TX_INTERRUPT_MASK_Register use record
      TX_FIFO_NOT_FULL_MASK   at 0 range 0 .. 0;
      TX_FIFO_0P25_EMPTY_MASK at 0 range 1 .. 1;
      TX_FIFO_0P5_EMPTY_MASK  at 0 range 2 .. 2;
      TX_FIFO_0P75_EMPTY_MASK at 0 range 3 .. 3;
      TX_FIFO_EMPTY_MASK      at 0 range 4 .. 4;
      CTS_ACTIVE_MASK         at 0 range 5 .. 5;
      Reserved_6_7            at 0 range 6 .. 7;
   end record;

   --  Status of the UART receiver. Each field can generate an interrupt if
   --  corresponding bit in the Rx interrupt mask register is set.
   type RECEIVE_STATUS_Register is record
      --  Read-only. Active High indication when data is available in Rx FIFO.
      --  0: RX FIFO Empty. 1: RX FIFO contains at least one byte of data.
      RX_FIFO_NOT_EMPTY : Boolean;
      --  Read-only. Active High indication when FIFO is at least quarter full.
      --  Reset when less.
      RX_FIFO_0P25_FULL : Boolean;
      --  Read-only. Active High indication when FIFO is at least half full.
      --  Reset when less.
      RX_FIFO_0P5_FULL  : Boolean;
      --  Read-only. Active High indication when FIFO is at least three
      --  quarters full. Reset when less.
      RX_FIFO_0P75_FULL : Boolean;
      --  Read-only. Active High indication when the timeout set in the
      --  rx_timeout register has elapsed since the last interaction with the
      --  receiver. Reset by reading the status register.
      TIMEOUT           : Boolean;
      --  Read-only. Active High indication when a receive parity error is
      --  detected. Reset by reading the status register.
      PARITY_ERROR      : Boolean;
      --  Read-only. Active High indication when character is received but FIFO
      --  is full. Reset by reading the status register.
      FIFO_OVERRUN      : Boolean;
      --  Read-only. Active High indication when no stop bit is detected. Reset
      --  by reading the status register.
      FRAMING_ERROR     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RECEIVE_STATUS_Register use record
      RX_FIFO_NOT_EMPTY at 0 range 0 .. 0;
      RX_FIFO_0P25_FULL at 0 range 1 .. 1;
      RX_FIFO_0P5_FULL  at 0 range 2 .. 2;
      RX_FIFO_0P75_FULL at 0 range 3 .. 3;
      TIMEOUT           at 0 range 4 .. 4;
      PARITY_ERROR      at 0 range 5 .. 5;
      FIFO_OVERRUN      at 0 range 6 .. 6;
      FRAMING_ERROR     at 0 range 7 .. 7;
   end record;

   --  Enable or Disable the generation of interrupts by the rx_status
   --  register.
   type RX_INTERRUPT_MASK_Register is record
      --  Active High Enable of rx_fifo_not_empty interrupt
      RX_FIFO_NOT_EMPTY_MASK : Boolean := False;
      --  Active High Enable of rx_fifo_0p25_full interrupt
      RX_FIFO_0P25_FULL_MASK : Boolean := False;
      --  Active High Enable of rx_fifo_0p5_full interrupt
      RX_FIFO_0P5_FULL_MASK  : Boolean := False;
      --  Active High Enable of rx_fifo_0p75_full interrupt
      RX_FIFO_0P75_FULL_MASK : Boolean := False;
      --  Active High Enable of timeout interrupt
      TIMEOUT_MASK           : Boolean := False;
      --  Active High Enable of parity error interrupt
      PARITY_ERROR_MASK      : Boolean := False;
      --  Active High Enable of FIFO overrun interrupt
      FIFO_OVERRUN_MASK      : Boolean := False;
      --  Active High Enable of framing error interrupt
      FRAMING_ERROR_MASK     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RX_INTERRUPT_MASK_Register use record
      RX_FIFO_NOT_EMPTY_MASK at 0 range 0 .. 0;
      RX_FIFO_0P25_FULL_MASK at 0 range 1 .. 1;
      RX_FIFO_0P5_FULL_MASK  at 0 range 2 .. 2;
      RX_FIFO_0P75_FULL_MASK at 0 range 3 .. 3;
      TIMEOUT_MASK           at 0 range 4 .. 4;
      PARITY_ERROR_MASK      at 0 range 5 .. 5;
      FIFO_OVERRUN_MASK      at 0 range 6 .. 6;
      FRAMING_ERROR_MASK     at 0 range 7 .. 7;
   end record;

   --  Number of bits per character, not including parity
   type UART_CONFIGURATION_NUMBER_OF_BITS_Field is
     (
      --  8 bits
      UART_CONFIGURATION_NUMBER_OF_BITS_Field_0,
      --  7 bits
      UART_CONFIGURATION_NUMBER_OF_BITS_Field_1)
     with Size => 1;
   for UART_CONFIGURATION_NUMBER_OF_BITS_Field use
     (UART_CONFIGURATION_NUMBER_OF_BITS_Field_0 => 0,
      UART_CONFIGURATION_NUMBER_OF_BITS_Field_1 => 1);

   --  Active High parity checking and generation enable
   type UART_CONFIGURATION_PARITY_ENABLE_Field is
     (
      --  Disable
      UART_CONFIGURATION_PARITY_ENABLE_Field_0,
      --  Enable
      UART_CONFIGURATION_PARITY_ENABLE_Field_1)
     with Size => 1;
   for UART_CONFIGURATION_PARITY_ENABLE_Field use
     (UART_CONFIGURATION_PARITY_ENABLE_Field_0 => 0,
      UART_CONFIGURATION_PARITY_ENABLE_Field_1 => 1);

   --  Parity Mode Select
   type UART_CONFIGURATION_PARITY_MODE_Field is
     (
      --  Even Parity
      UART_CONFIGURATION_PARITY_MODE_Field_0,
      --  Odd Parity
      UART_CONFIGURATION_PARITY_MODE_Field_1,
      --  Parity bit is space
      UART_CONFIGURATION_PARITY_MODE_Field_2,
      --  Parity bit is mark
      UART_CONFIGURATION_PARITY_MODE_Field_3)
     with Size => 2;
   for UART_CONFIGURATION_PARITY_MODE_Field use
     (UART_CONFIGURATION_PARITY_MODE_Field_0 => 0,
      UART_CONFIGURATION_PARITY_MODE_Field_1 => 1,
      UART_CONFIGURATION_PARITY_MODE_Field_2 => 2,
      UART_CONFIGURATION_PARITY_MODE_Field_3 => 3);

   --  Number of stop bits
   type UART_CONFIGURATION_STOP_BITS_Field is
     (
      --  One Bit
      UART_CONFIGURATION_STOP_BITS_Field_0,
      --  Two Bits
      UART_CONFIGURATION_STOP_BITS_Field_1)
     with Size => 1;
   for UART_CONFIGURATION_STOP_BITS_Field use
     (UART_CONFIGURATION_STOP_BITS_Field_0 => 0,
      UART_CONFIGURATION_STOP_BITS_Field_1 => 1);

   --  Active High Flow Control Enable. When enabled, transmission starts when
   --  cts signal is asserted
   type UART_CONFIGURATION_CTS_ENABLE_Field is
     (
      --  Disable-Transmission starts only when cts signal is asserted
      UART_CONFIGURATION_CTS_ENABLE_Field_0,
      --  Enable-Transmission starts regardless of cts signal
      UART_CONFIGURATION_CTS_ENABLE_Field_1)
     with Size => 1;
   for UART_CONFIGURATION_CTS_ENABLE_Field use
     (UART_CONFIGURATION_CTS_ENABLE_Field_0 => 0,
      UART_CONFIGURATION_CTS_ENABLE_Field_1 => 1);

   --  UART Operation Configuration Register, for both Rx and Tx.
   type UART_CONFIGURATION_Register is record
      --  Number of bits per character, not including parity
      NUMBER_OF_BITS : UART_CONFIGURATION_NUMBER_OF_BITS_Field :=
                        SAM_SVD.UART.UART_CONFIGURATION_NUMBER_OF_BITS_Field_0;
      --  Active High parity checking and generation enable
      PARITY_ENABLE  : UART_CONFIGURATION_PARITY_ENABLE_Field :=
                        SAM_SVD.UART.UART_CONFIGURATION_PARITY_ENABLE_Field_0;
      --  Parity Mode Select
      PARITY_MODE    : UART_CONFIGURATION_PARITY_MODE_Field :=
                        SAM_SVD.UART.UART_CONFIGURATION_PARITY_MODE_Field_0;
      --  Number of stop bits
      STOP_BITS      : UART_CONFIGURATION_STOP_BITS_Field :=
                        SAM_SVD.UART.UART_CONFIGURATION_STOP_BITS_Field_0;
      --  Active High Flow Control Enable. When enabled, transmission starts
      --  when cts signal is asserted
      CTS_ENABLE     : UART_CONFIGURATION_CTS_ENABLE_Field :=
                        SAM_SVD.UART.UART_CONFIGURATION_CTS_ENABLE_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART_CONFIGURATION_Register use record
      NUMBER_OF_BITS at 0 range 0 .. 0;
      PARITY_ENABLE  at 0 range 1 .. 1;
      PARITY_MODE    at 0 range 2 .. 3;
      STOP_BITS      at 0 range 4 .. 4;
      CTS_ENABLE     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
   end record;

   subtype UART_BAUD_RATE_FRACTIONAL_DIVISION_Field is HAL.UInt3;
   subtype UART_BAUD_RATE_INTEGER_DIVISION_Field is HAL.UInt13;

   --  Baud Rate Control Register. Bits 15:3 specify the integral division of
   --  the clock (divide by n), and bit 2:0 specify the fractional division.
   type UART_BAUD_RATE_Register is record
      --  Fractional Division Part. If non-zero, the integer part must be at
      --  least set to 3.
      FRACTIONAL_DIVISION : UART_BAUD_RATE_FRACTIONAL_DIVISION_Field := 16#0#;
      --  Integral Division Part. Must be at least set to 2.
      INTEGER_DIVISION    : UART_BAUD_RATE_INTEGER_DIVISION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for UART_BAUD_RATE_Register use record
      FRACTIONAL_DIVISION at 0 range 0 .. 2;
      INTEGER_DIVISION    at 0 range 3 .. 15;
   end record;

   --  Selects one of the four possible clock sources.
   type UART_CLOCK_SOURCE_CLOCK_SELECT_Field is
     (
      --  Clock input 0
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_0,
      --  Clock input 1
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_1,
      --  Clock input 2
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_2,
      --  Clock input 3
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_3)
     with Size => 2;
   for UART_CLOCK_SOURCE_CLOCK_SELECT_Field use
     (UART_CLOCK_SOURCE_CLOCK_SELECT_Field_0 => 0,
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_1 => 1,
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_2 => 2,
      UART_CLOCK_SOURCE_CLOCK_SELECT_Field_3 => 3);

   --  Selects Source of UART Clock
   type UART_CLOCK_SOURCE_Register is record
      --  Selects one of the four possible clock sources.
      CLOCK_SELECT : UART_CLOCK_SOURCE_CLOCK_SELECT_Field :=
                      SAM_SVD.UART.UART_CLOCK_SOURCE_CLOCK_SELECT_Field_0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for UART_CLOCK_SOURCE_Register use record
      CLOCK_SELECT at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  UART Controller
   type UART_Peripheral is record
      --  Writes one byte to UART Transmit Data FIFO.
      TRANSMIT_DATA      : aliased HAL.UInt8;
      --  Status of the UART transmitter. Each field can generate an interrupt
      --  if corresponding bit in the Tx interrupt mask register is set.
      TRANSMIT_STATUS    : aliased TRANSMIT_STATUS_Register;
      --  Enable or Disable the generation of interrupts by the tx_status
      --  register.
      TX_INTERRUPT_MASK  : aliased TX_INTERRUPT_MASK_Register;
      --  Read one byte from UART Receive Data FIFO.
      RECEIVE_DATA       : aliased HAL.UInt8;
      --  Status of the UART receiver. Each field can generate an interrupt if
      --  corresponding bit in the Rx interrupt mask register is set.
      RECEIVE_STATUS     : aliased RECEIVE_STATUS_Register;
      --  Enable or Disable the generation of interrupts by the rx_status
      --  register.
      RX_INTERRUPT_MASK  : aliased RX_INTERRUPT_MASK_Register;
      --  Timeout counter configuration.
      RECEIVE_TIMEOUT    : aliased HAL.UInt8;
      --  UART Operation Configuration Register, for both Rx and Tx.
      UART_CONFIGURATION : aliased UART_CONFIGURATION_Register;
      --  Baud Rate Control Register. Bits 15:3 specify the integral division
      --  of the clock (divide by n), and bit 2:0 specify the fractional
      --  division.
      UART_BAUD_RATE     : aliased UART_BAUD_RATE_Register;
      --  Selects Source of UART Clock
      UART_CLOCK_SOURCE  : aliased UART_CLOCK_SOURCE_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      TRANSMIT_DATA      at 16#0# range 0 .. 7;
      TRANSMIT_STATUS    at 16#4# range 0 .. 7;
      TX_INTERRUPT_MASK  at 16#8# range 0 .. 7;
      RECEIVE_DATA       at 16#10# range 0 .. 7;
      RECEIVE_STATUS     at 16#14# range 0 .. 7;
      RX_INTERRUPT_MASK  at 16#18# range 0 .. 7;
      RECEIVE_TIMEOUT    at 16#1C# range 0 .. 7;
      UART_CONFIGURATION at 16#20# range 0 .. 7;
      UART_BAUD_RATE     at 16#24# range 0 .. 15;
      UART_CLOCK_SOURCE  at 16#28# range 0 .. 7;
   end record;

   --  UART Controller
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  UART Controller
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

end SAM_SVD.UART;
