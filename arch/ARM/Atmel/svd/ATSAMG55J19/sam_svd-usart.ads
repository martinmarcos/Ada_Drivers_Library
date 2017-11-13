--  This spec has been automatically generated from ATSAMG55J19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.USART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  USART Control Register
   type USART0_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX          : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN           : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS          : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS          : Boolean := False;
      --  Write-only. Reset Status Bits
      RSTSTA         : Boolean := False;
      --  Write-only. Start Break
      STTBRK         : Boolean := False;
      --  Write-only. Stop Break
      STPBRK         : Boolean := False;
      --  Write-only. Clear TIMEOUT Flag and Start Time-out After Next
      --  Character Received
      STTTO          : Boolean := False;
      --  Write-only. Send Address
      SENDA          : Boolean := False;
      --  Write-only. Reset Iterations
      RSTIT          : Boolean := False;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : Boolean := False;
      --  Write-only. Start Time-out Immediately
      RETTO          : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. Request to Send Enable
      RTSEN          : Boolean := False;
      --  Write-only. Request to Send Disable
      RTSDIS         : Boolean := False;
      --  Write-only. Abort LIN Transmission
      LINABT         : Boolean := False;
      --  Write-only. Send LIN Wakeup Signal
      LINWKUP        : Boolean := False;
      --  unspecified
      Reserved_22_27 : HAL.UInt6 := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      REQCLR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  USART Control Register
   type USART0_CR_SPI_MODE_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX          : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN           : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS          : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS          : Boolean := False;
      --  Write-only. Reset Status Bits
      RSTSTA         : Boolean := False;
      --  unspecified
      Reserved_9_17  : HAL.UInt9 := 16#0#;
      --  Write-only. Force SPI Chip Select
      FCS            : Boolean := False;
      --  Write-only. Release SPI Chip Select
      RCS            : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CR_SPI_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      FCS            at 0 range 18 .. 18;
      RCS            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_USART_MODE_Field is
     (
      --  Normal mode
      Normal,
      --  RS485 mode
      Rs485,
      --  Hardware Handshaking
      Hw_Handshaking,
      --  IS07816 Protocol: T = 0
      Is07816_T_0,
      --  IS07816 Protocol: T = 1
      Is07816_T_1,
      --  IrDA mode
      Irda,
      --  LIN master mode
      Lin_Master,
      --  LIN Slave mode
      Lin_Slave,
      --  SPI master mode
      Spi_Master,
      --  SPI Slave mode
      Spi_Slave)
     with Size => 4;
   for MR_USART_MODE_Field use
     (Normal => 0,
      Rs485 => 1,
      Hw_Handshaking => 2,
      Is07816_T_0 => 4,
      Is07816_T_1 => 6,
      Irda => 8,
      Lin_Master => 10,
      Lin_Slave => 11,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type MR_USCLKS_Field is
     (
      --  Peripheral clock is selected
      Mck,
      --  Peripheral clock Divided (DIV=8) is selected
      Div,
      --  PMC programmable clock (PCK) is selected.If the SCK pin is driven
      --  (CLKO=1), the CD field must be greater than 1.
      Pmc_Pck,
      --  External pin (SCK) is selected
      Sck)
     with Size => 2;
   for MR_USCLKS_Field use
     (Mck => 0,
      Div => 1,
      Pmc_Pck => 2,
      Sck => 3);

   --  Character Length
   type MR_CHRL_Field is
     (
      --  Character length is 5 bits
      MR_CHRL_Field_5_Bit,
      --  Character length is 6 bits
      MR_CHRL_Field_6_Bit,
      --  Character length is 7 bits
      MR_CHRL_Field_7_Bit,
      --  Character length is 8 bits
      MR_CHRL_Field_8_Bit)
     with Size => 2;
   for MR_CHRL_Field use
     (MR_CHRL_Field_5_Bit => 0,
      MR_CHRL_Field_6_Bit => 1,
      MR_CHRL_Field_7_Bit => 2,
      MR_CHRL_Field_8_Bit => 3);

   --  Parity Type
   type MR_PAR_Field is
     (
      --  Even parity
      Even,
      --  Odd parity
      Odd,
      --  Parity forced to 0 (Space)
      Space,
      --  Parity forced to 1 (Mark)
      Mark,
      --  No parity
      No,
      --  Multidrop mode
      Multidrop)
     with Size => 3;
   for MR_PAR_Field use
     (Even => 0,
      Odd => 1,
      Space => 2,
      Mark => 3,
      No => 4,
      Multidrop => 6);

   --  Number of Stop Bits
   type MR_NBSTOP_Field is
     (
      --  1 stop bit
      MR_NBSTOP_Field_1_Bit,
      --  1.5 stop bits (SYNC = 0) or reserved (SYNC = 1)
      MR_NBSTOP_Field_1_5_Bit,
      --  2 stop bits
      MR_NBSTOP_Field_2_Bit)
     with Size => 2;
   for MR_NBSTOP_Field use
     (MR_NBSTOP_Field_1_Bit => 0,
      MR_NBSTOP_Field_1_5_Bit => 1,
      MR_NBSTOP_Field_2_Bit => 2);

   --  Channel Mode
   type MR_CHMODE_Field is
     (
      --  Normal mode
      Normal,
      --  Automatic Echo. Receiver input is connected to the TXD pin.
      Automatic,
      --  Local Loopback. Transmitter output is connected to the Receiver
      --  Input.
      Local_Loopback,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin.
      Remote_Loopback)
     with Size => 2;
   for MR_CHMODE_Field use
     (Normal => 0,
      Automatic => 1,
      Local_Loopback => 2,
      Remote_Loopback => 3);

   subtype USART0_MR_MAX_ITERATION_Field is HAL.UInt3;

   --  USART Mode Register
   type USART0_MR_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_USART_MODE_Field := SAM_SVD.USART.Normal;
      --  Clock Selection
      USCLKS         : MR_USCLKS_Field := SAM_SVD.USART.Mck;
      --  Character Length
      CHRL           : MR_CHRL_Field := SAM_SVD.USART.MR_CHRL_Field_5_Bit;
      --  Synchronous Mode Select
      SYNC           : Boolean := False;
      --  Parity Type
      PAR            : MR_PAR_Field := SAM_SVD.USART.Even;
      --  Number of Stop Bits
      NBSTOP         : MR_NBSTOP_Field := SAM_SVD.USART.MR_NBSTOP_Field_1_Bit;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := SAM_SVD.USART.Normal;
      --  Bit Order
      MSBF           : Boolean := False;
      --  9-bit Character Length
      MODE9          : Boolean := False;
      --  Clock Output Select
      CLKO           : Boolean := False;
      --  Oversampling Mode
      OVER           : Boolean := False;
      --  Inhibit Non Acknowledge
      INACK          : Boolean := False;
      --  Disable Successive NACK
      DSNACK         : Boolean := False;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Inverted Data
      INVDATA        : Boolean := False;
      --  Maximum Number of Automatic Iteration
      MAX_ITERATION  : USART0_MR_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Receive Line Filter
      FILTER         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MR_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      MSBF           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_SPI_MODE_USART_MODE_Field is
     (
      --  Reset value for the field
      Mr_Spi_Mode_Usart_Mode_Field_Reset,
      --  SPI master mode
      Spi_Master,
      --  SPI Slave mode
      Spi_Slave)
     with Size => 4;
   for MR_SPI_MODE_USART_MODE_Field use
     (Mr_Spi_Mode_Usart_Mode_Field_Reset => 0,
      Spi_Master => 14,
      Spi_Slave => 15);

   subtype USART0_MR_SPI_MODE_USCLKS_Field is HAL.UInt2;

   --  Character Length
   type MR_SPI_MODE_CHRL_Field is
     (
      --  Reset value for the field
      Mr_Spi_Mode_Chrl_Field_Reset,
      --  Character length is 8 bits
      MR_SPI_MODE_CHRL_Field_8_Bit)
     with Size => 2;
   for MR_SPI_MODE_CHRL_Field use
     (Mr_Spi_Mode_Chrl_Field_Reset => 0,
      MR_SPI_MODE_CHRL_Field_8_Bit => 3);

   --  USART Mode Register
   type USART0_MR_SPI_MODE_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_SPI_MODE_USART_MODE_Field :=
                        Mr_Spi_Mode_Usart_Mode_Field_Reset;
      --  Clock Selection
      USCLKS         : USART0_MR_SPI_MODE_USCLKS_Field := 16#0#;
      --  Character Length
      CHRL           : MR_SPI_MODE_CHRL_Field := Mr_Spi_Mode_Chrl_Field_Reset;
      --  SPI Clock Phase
      CPHA           : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  SPI Clock Polarity
      CPOL           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Wait Read Data Before Transfer
      WRDBT          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MR_SPI_MODE_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      CPHA           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CPOL           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WRDBT          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  USART Interrupt Enable Register
   type USART0_IER_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable (available in all
      --  USART modes of operation)
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Enable (available in all
      --  USART modes of operation)
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Max number of Repetitions Reached Interrupt Enable
      ITER           : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable (available in all
      --  USART modes of operation)
      TXBUFE         : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable (available in all
      --  USART modes of operation)
      RXBUFF         : Boolean := False;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_18 : HAL.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Interrupt Enable Register
   type USART0_IER_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only.
      ENDRX          : Boolean := False;
      --  Write-only.
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. SPI Underrun Error Interrupt Enable
      UNRE           : Boolean := False;
      --  Write-only.
      TXBUFE         : Boolean := False;
      --  Write-only.
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_21 : HAL.UInt9 := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Interrupt Enable Register
   type USART0_IER_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only.
      ENDRX          : Boolean := False;
      --  Write-only.
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Enable
      LINBK          : Boolean := False;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Completed Interrupt Enable
      LINTC          : Boolean := False;
      --  unspecified
      Reserved_16_24 : HAL.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : Boolean := False;
      --  Write-only. LIN Synch Tolerance Error Interrupt Enable
      LINSTE         : Boolean := False;
      --  Write-only. LIN Header Timeout Error Interrupt Enable
      LINHTE         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  USART Interrupt Disable Register
   type USART0_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable (available in all
      --  USART modes of operation)
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Disable (available in
      --  all USART modes of operation)
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Max Number of Repetitions Reached Interrupt Disable
      ITER           : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable (available in all
      --  USART modes of operation)
      TXBUFE         : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable (available in all
      --  USART modes of operation)
      RXBUFF         : Boolean := False;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_18 : HAL.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Interrupt Disable Register
   type USART0_IDR_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only.
      ENDRX          : Boolean := False;
      --  Write-only.
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. SPI Underrun Error Interrupt Disable
      UNRE           : Boolean := False;
      --  Write-only.
      TXBUFE         : Boolean := False;
      --  Write-only.
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_21 : HAL.UInt9 := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Interrupt Disable Register
   type USART0_IDR_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only.
      ENDRX          : Boolean := False;
      --  Write-only.
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only.
      TXBUFE         : Boolean := False;
      --  Write-only.
      RXBUFF         : Boolean := False;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Disable
      LINBK          : Boolean := False;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Completed Interrupt Disable
      LINTC          : Boolean := False;
      --  unspecified
      Reserved_16_24 : HAL.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : Boolean := False;
      --  Write-only. LIN Synch Tolerance Error Interrupt Disable
      LINSTE         : Boolean := False;
      --  Write-only. LIN Header Timeout Error Interrupt Disable
      LINHTE         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  USART Interrupt Mask Register
   type USART0_IMR_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : Boolean;
      --  Read-only. End of Receive Buffer Interrupt Mask (available in all
      --  USART modes of operation)
      ENDRX          : Boolean;
      --  Read-only. End of Transmit Buffer Interrupt Mask (available in all
      --  USART modes of operation)
      ENDTX          : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : Boolean;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : Boolean;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : Boolean;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. Max Number of Repetitions Reached Interrupt Mask
      ITER           : Boolean;
      --  Read-only. Transmit Buffer Empty Interrupt Mask (available in all
      --  USART modes of operation)
      TXBUFE         : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask (available in all USART
      --  modes of operation)
      RXBUFF         : Boolean;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : Boolean;
      --  unspecified
      Reserved_14_18 : HAL.UInt5;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_21 : HAL.UInt2;
      --  Read-only. Comparison Interrupt Mask
      CMP            : Boolean;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Interrupt Mask Register
   type USART0_IMR_SPI_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only.
      ENDRX          : Boolean;
      --  Read-only.
      ENDTX          : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  unspecified
      Reserved_6_8   : HAL.UInt3;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. SPI Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  Read-only.
      TXBUFE         : Boolean;
      --  Read-only.
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_21 : HAL.UInt9;
      --  Read-only. Comparison Interrupt Mask
      CMP            : Boolean;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Interrupt Mask Register
   type USART0_IMR_LIN_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only.
      ENDRX          : Boolean;
      --  Read-only.
      ENDTX          : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : Boolean;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : Boolean;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : Boolean;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_10 : HAL.Bit;
      --  Read-only.
      TXBUFE         : Boolean;
      --  Read-only.
      RXBUFF         : Boolean;
      --  Read-only. LIN Break Sent or LIN Break Received Interrupt Mask
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Mask
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed Interrupt Mask
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_24 : HAL.UInt9;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error Interrupt Mask
      LINSTE         : Boolean;
      --  Read-only. LIN Header Timeout Error Interrupt Mask
      LINHTE         : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  USART Channel Status Register
   type USART0_CSR_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  Read-only. Break Received/End of Break (cleared by writing a one to
      --  the bit US_CR.RSTSTA)
      RXBRK          : Boolean;
      --  Read-only. End of RX Buffer (cleared by writing US_RCR or US_RNCR)
      ENDRX          : Boolean;
      --  Read-only. End of TX Buffer (cleared by writing US_TCR or US_TNCR)
      ENDTX          : Boolean;
      --  Read-only. Overrun Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  Read-only. Framing Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      FRAME          : Boolean;
      --  Read-only. Parity Error (cleared by writing a one to the
      --  US_CR.RSTSTA)
      PARE           : Boolean;
      --  Read-only. Receiver Time-out (cleared by writing a one to the bit
      --  US_CR.STTTO)
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  Read-only. Max Number of Repetitions Reached (cleared by writing a
      --  one to the bit US_CR.RSTIT)
      ITER           : Boolean;
      --  Read-only. TX Buffer Empty (cleared by writing US_TCR or US_TNCR)
      TXBUFE         : Boolean;
      --  Read-only. RX Buffer Full (cleared by writing US_RCR or US_RNCR)
      RXBUFF         : Boolean;
      --  Read-only. Non Acknowledge Interrupt (cleared by writing a one to the
      --  bit US_CR.RSTNACK)
      NACK           : Boolean;
      --  unspecified
      Reserved_14_18 : HAL.UInt5;
      --  Read-only. Clear to Send Input Change Flag (cleared on read)
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_21 : HAL.UInt2;
      --  Read-only. Comparison Status (cleared by writing a one to the bit
      --  US_CR.RSTSTA command)
      CMP            : Boolean;
      --  Read-only. Image of CTS Input
      CTS            : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  USART Channel Status Register
   type USART0_CSR_SPI_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only.
      ENDRX          : Boolean;
      --  Read-only.
      ENDTX          : Boolean;
      --  Read-only. Overrun Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  unspecified
      Reserved_6_8   : HAL.UInt3;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      UNRE           : Boolean;
      --  Read-only.
      TXBUFE         : Boolean;
      --  Read-only.
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_21 : HAL.UInt9;
      --  Read-only. Comparison Match (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      CMP            : Boolean;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART Channel Status Register
   type USART0_CSR_LIN_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only.
      ENDRX          : Boolean;
      --  Read-only.
      ENDTX          : Boolean;
      --  Read-only. Overrun Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  Read-only. Framing Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      FRAME          : Boolean;
      --  Read-only. Parity Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      PARE           : Boolean;
      --  Read-only. Receiver Time-out (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_10 : HAL.Bit;
      --  Read-only.
      TXBUFE         : Boolean;
      --  Read-only.
      RXBUFF         : Boolean;
      --  Read-only. LIN Break Sent or LIN Break Received (cleared by writing a
      --  one to the bit US_CR.RSTSTA)
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received (cleared by
      --  writing a one to the bit US_CR.RSTSTA)
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed (cleared by writing a one to the
      --  bit US_CR.RSTSTA)
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_22 : HAL.UInt7;
      --  Read-only. LIN Bus Line Status
      LINBLS         : Boolean;
      --  unspecified
      Reserved_24_24 : HAL.Bit;
      --  Read-only. LIN Bit Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error (cleared by writing a
      --  one to the bit US_CR.RSTSTA)
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Error (cleared by writing a one to
      --  the bit US_CR.RSTSTA)
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error (cleared by writing a one
      --  to the bit US_CR.RSTSTA)
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error (cleared by writing a one to the
      --  bit US_CR.RSTSTA)
      LINSTE         : Boolean;
      --  Read-only. LIN Header Timeout Error (cleared by writing a one to the
      --  bit US_CR.RSTSTA)
      LINHTE         : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      LINBLS         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   subtype USART0_RHR_RXCHR_Field is HAL.UInt9;

   --  USART Receive Holding Register
   type USART0_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : USART0_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : HAL.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_THR_TXCHR_Field is HAL.UInt9;

   --  USART Transmit Holding Register
   type USART0_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : USART0_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  Write-only. Sync Field to be Transmitted
      TXSYNH         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_BRGR_CD_Field is HAL.UInt16;
   subtype USART0_BRGR_FP_Field is HAL.UInt3;

   --  USART Baud Rate Generator Register
   type USART0_BRGR_Register is record
      --  Clock Divider
      CD             : USART0_BRGR_CD_Field := 16#0#;
      --  Fractional Part
      FP             : USART0_BRGR_FP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USART0_RTOR_TO_Field is HAL.UInt17;

   --  USART Receiver Time-out Register
   type USART0_RTOR_Register is record
      --  Time-out Value
      TO             : USART0_RTOR_TO_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype USART0_TTGR_TG_Field is HAL.UInt8;

   --  USART Transmitter Timeguard Register
   type USART0_TTGR_Register is record
      --  Timeguard Value
      TG            : USART0_TTGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_FIDI_FI_DI_RATIO_Field is HAL.UInt16;

   --  USART FI DI Ratio Register
   type USART0_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : USART0_FIDI_FI_DI_RATIO_Field := 16#174#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_NER_NB_ERRORS_Field is HAL.UInt8;

   --  USART Number of Errors Register
   type USART0_NER_Register is record
      --  Read-only. Number of Errors
      NB_ERRORS     : USART0_NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_IF_IRDA_FILTER_Field is HAL.UInt8;

   --  USART IrDA Filter Register
   type USART0_IF_Register is record
      --  IrDA Filter
      IRDA_FILTER   : USART0_IF_IRDA_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IF_Register use record
      IRDA_FILTER   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LIN Node Action
   type LINMR_NACT_Field is
     (
      --  The USART transmits the response.
      Publish,
      --  The USART receives the response.
      Subscribe,
      --  The USART does not transmit and does not receive the response.
      Ignore)
     with Size => 2;
   for LINMR_NACT_Field use
     (Publish => 0,
      Subscribe => 1,
      Ignore => 2);

   subtype USART0_LINMR_DLC_Field is HAL.UInt8;

   --  USART LIN Mode Register
   type USART0_LINMR_Register is record
      --  LIN Node Action
      NACT           : LINMR_NACT_Field := SAM_SVD.USART.Publish;
      --  Parity Disable
      PARDIS         : Boolean := False;
      --  Checksum Disable
      CHKDIS         : Boolean := False;
      --  Checksum Type
      CHKTYP         : Boolean := False;
      --  Data Length Mode
      DLM            : Boolean := False;
      --  Frame Slot Mode Disable
      FSDIS          : Boolean := False;
      --  Wakeup Signal Type
      WKUPTYP        : Boolean := False;
      --  Data Length Control
      DLC            : USART0_LINMR_DLC_Field := 16#0#;
      --  PDC Mode
      PDCM           : Boolean := False;
      --  Synchronization Disable
      SYNCDIS        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINMR_Register use record
      NACT           at 0 range 0 .. 1;
      PARDIS         at 0 range 2 .. 2;
      CHKDIS         at 0 range 3 .. 3;
      CHKTYP         at 0 range 4 .. 4;
      DLM            at 0 range 5 .. 5;
      FSDIS          at 0 range 6 .. 6;
      WKUPTYP        at 0 range 7 .. 7;
      DLC            at 0 range 8 .. 15;
      PDCM           at 0 range 16 .. 16;
      SYNCDIS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype USART0_LINIR_IDCHR_Field is HAL.UInt8;

   --  USART LIN Identifier Register
   type USART0_LINIR_Register is record
      --  Identifier Character
      IDCHR         : USART0_LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_LINBRR_LINCD_Field is HAL.UInt16;
   subtype USART0_LINBRR_LINFP_Field is HAL.UInt3;

   --  USART LIN Baud Rate Register
   type USART0_LINBRR_Register is record
      --  Read-only. Clock Divider after Synchronization
      LINCD          : USART0_LINBRR_LINCD_Field;
      --  Read-only. Fractional Part after Synchronization
      LINFP          : USART0_LINBRR_LINFP_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINBRR_Register use record
      LINCD          at 0 range 0 .. 15;
      LINFP          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USART0_CMPR_VAL1_Field is HAL.UInt9;

   --  Comparison Mode
   type CMPR_CMPMODE_Field is
     (
      --  Any character is received and comparison function drives CMP flag.
      Flag_Only,
      --  Comparison condition must be met to start reception of all incoming
      --  charactersuntil REQCLR is set.
      Start_Condition)
     with Size => 1;
   for CMPR_CMPMODE_Field use
     (Flag_Only => 0,
      Start_Condition => 1);

   subtype USART0_CMPR_VAL2_Field is HAL.UInt9;

   --  USART Comparison Register
   type USART0_CMPR_Register is record
      --  First Comparison Value for Received Character
      VAL1           : USART0_CMPR_VAL1_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Comparison Mode
      CMPMODE        : CMPR_CMPMODE_Field := SAM_SVD.USART.Flag_Only;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Parity
      CMPPAR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Second Comparison Value for Received Character
      VAL2           : USART0_CMPR_VAL2_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CMPR_Register use record
      VAL1           at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMPPAR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      VAL2           at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit. Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5591873);

   --  USART Write Protection Mode Register
   type USART0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype USART0_WPSR_WPVSRC_Field is HAL.UInt16;

   --  USART Write Protection Status Register
   type USART0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : USART0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type USART0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : USART0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type USART0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : USART0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type USART0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : USART0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type USART0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : USART0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type USART0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean := False;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      RXCBDIS        at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      TXCBDIS        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ERRCLR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transfer Status Register
   type USART0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean;
      --  unspecified
      Reserved_19_23 : HAL.UInt5;
      --  Read-only. Transfer Bus Error
      ERR            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_PTSR_Register use record
      RXTEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TXTEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ERR            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USART0_Disc is
     (
      Default,
      Spi_Mode,
      Lin_Mode);

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   type USART_Peripheral
     (Discriminent : USART0_Disc := Default)
   is record
      --  USART Receive Holding Register
      RHR          : aliased USART0_RHR_Register;
      --  USART Transmit Holding Register
      THR          : aliased USART0_THR_Register;
      --  USART Baud Rate Generator Register
      BRGR         : aliased USART0_BRGR_Register;
      --  USART Receiver Time-out Register
      RTOR         : aliased USART0_RTOR_Register;
      --  USART Transmitter Timeguard Register
      TTGR         : aliased USART0_TTGR_Register;
      --  USART FI DI Ratio Register
      FIDI         : aliased USART0_FIDI_Register;
      --  USART Number of Errors Register
      NER          : aliased USART0_NER_Register;
      --  USART IrDA Filter Register
      IF_k         : aliased USART0_IF_Register;
      --  USART LIN Mode Register
      LINMR        : aliased USART0_LINMR_Register;
      --  USART LIN Identifier Register
      LINIR        : aliased USART0_LINIR_Register;
      --  USART LIN Baud Rate Register
      LINBRR       : aliased USART0_LINBRR_Register;
      --  USART Comparison Register
      CMPR         : aliased USART0_CMPR_Register;
      --  USART Write Protection Mode Register
      WPMR         : aliased USART0_WPMR_Register;
      --  USART Write Protection Status Register
      WPSR         : aliased USART0_WPSR_Register;
      --  Receive Pointer Register
      RPR          : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR          : aliased USART0_RCR_Register;
      --  Transmit Pointer Register
      TPR          : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR          : aliased USART0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR         : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR         : aliased USART0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR         : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR         : aliased USART0_TNCR_Register;
      --  Transfer Control Register
      PTCR         : aliased USART0_PTCR_Register;
      --  Transfer Status Register
      PTSR         : aliased USART0_PTSR_Register;
      case Discriminent is
         when Default =>
            --  USART Control Register
            CR : aliased USART0_CR_Register;
            --  USART Mode Register
            MR : aliased USART0_MR_Register;
            --  USART Interrupt Enable Register
            IER : aliased USART0_IER_Register;
            --  USART Interrupt Disable Register
            IDR : aliased USART0_IDR_Register;
            --  USART Interrupt Mask Register
            IMR : aliased USART0_IMR_Register;
            --  USART Channel Status Register
            CSR : aliased USART0_CSR_Register;
         when Spi_Mode =>
            --  USART Control Register
            CR_SPI_MODE : aliased USART0_CR_SPI_MODE_Register;
            --  USART Mode Register
            MR_SPI_MODE : aliased USART0_MR_SPI_MODE_Register;
            --  USART Interrupt Enable Register
            IER_SPI_MODE : aliased USART0_IER_SPI_MODE_Register;
            --  USART Interrupt Disable Register
            IDR_SPI_MODE : aliased USART0_IDR_SPI_MODE_Register;
            --  USART Interrupt Mask Register
            IMR_SPI_MODE : aliased USART0_IMR_SPI_MODE_Register;
            --  USART Channel Status Register
            CSR_SPI_MODE : aliased USART0_CSR_SPI_MODE_Register;
         when Lin_Mode =>
            --  USART Interrupt Enable Register
            IER_LIN_MODE : aliased USART0_IER_LIN_MODE_Register;
            --  USART Interrupt Disable Register
            IDR_LIN_MODE : aliased USART0_IDR_LIN_MODE_Register;
            --  USART Interrupt Mask Register
            IMR_LIN_MODE : aliased USART0_IMR_LIN_MODE_Register;
            --  USART Channel Status Register
            CSR_LIN_MODE : aliased USART0_CSR_LIN_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR          at 16#18# range 0 .. 31;
      THR          at 16#1C# range 0 .. 31;
      BRGR         at 16#20# range 0 .. 31;
      RTOR         at 16#24# range 0 .. 31;
      TTGR         at 16#28# range 0 .. 31;
      FIDI         at 16#40# range 0 .. 31;
      NER          at 16#44# range 0 .. 31;
      IF_k         at 16#4C# range 0 .. 31;
      LINMR        at 16#54# range 0 .. 31;
      LINIR        at 16#58# range 0 .. 31;
      LINBRR       at 16#5C# range 0 .. 31;
      CMPR         at 16#90# range 0 .. 31;
      WPMR         at 16#E4# range 0 .. 31;
      WPSR         at 16#E8# range 0 .. 31;
      RPR          at 16#100# range 0 .. 31;
      RCR          at 16#104# range 0 .. 31;
      TPR          at 16#108# range 0 .. 31;
      TCR          at 16#10C# range 0 .. 31;
      RNPR         at 16#110# range 0 .. 31;
      RNCR         at 16#114# range 0 .. 31;
      TNPR         at 16#118# range 0 .. 31;
      TNCR         at 16#11C# range 0 .. 31;
      PTCR         at 16#120# range 0 .. 31;
      PTSR         at 16#124# range 0 .. 31;
      CR           at 16#0# range 0 .. 31;
      MR           at 16#4# range 0 .. 31;
      IER          at 16#8# range 0 .. 31;
      IDR          at 16#C# range 0 .. 31;
      IMR          at 16#10# range 0 .. 31;
      CSR          at 16#14# range 0 .. 31;
      CR_SPI_MODE  at 16#0# range 0 .. 31;
      MR_SPI_MODE  at 16#4# range 0 .. 31;
      IER_SPI_MODE at 16#8# range 0 .. 31;
      IDR_SPI_MODE at 16#C# range 0 .. 31;
      IMR_SPI_MODE at 16#10# range 0 .. 31;
      CSR_SPI_MODE at 16#14# range 0 .. 31;
      IER_LIN_MODE at 16#8# range 0 .. 31;
      IDR_LIN_MODE at 16#C# range 0 .. 31;
      IMR_LIN_MODE at 16#10# range 0 .. 31;
      CSR_LIN_MODE at 16#14# range 0 .. 31;
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#4000C200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 1
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40020200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 2
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40024200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 3
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40018200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 4
   USART4_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#4001C200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 5
   USART5_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40008200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 6
   USART6_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40040200#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 7
   USART7_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40034200#);

end SAM_SVD.USART;
