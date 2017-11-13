--  This spec has been automatically generated from ATSAMS70J20.svd

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

   --  Control Register
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
      --  Write-only. Data Terminal Ready Enable
      DTREN          : Boolean := False;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : Boolean := False;
      --  Write-only. Request to Send Pin Control
      RTSEN          : Boolean := False;
      --  Write-only. Request to Send Pin Control
      RTSDIS         : Boolean := False;
      --  Write-only. Abort LIN Transmission
      LINABT         : Boolean := False;
      --  Write-only. Send LIN Wakeup Signal
      LINWKUP        : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Control Register
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
      --  RS485
      Rs485,
      --  Hardware Handshaking
      Hw_Handshaking,
      --  Modem
      Modem,
      --  IS07816 Protocol: T = 0
      Is07816_T_0,
      --  IS07816 Protocol: T = 1
      Is07816_T_1,
      --  IrDA
      Irda,
      --  LON
      Lon,
      --  SPI master
      Spi_Master,
      --  SPI Slave
      Spi_Slave)
     with Size => 4;
   for MR_USART_MODE_Field use
     (Normal => 0,
      Rs485 => 1,
      Hw_Handshaking => 2,
      Modem => 3,
      Is07816_T_0 => 4,
      Is07816_T_1 => 6,
      Irda => 8,
      Lon => 9,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type MR_USCLKS_Field is
     (
      --  Peripheral clock is selected
      Mck,
      --  Peripheral clock divided (DIV=DIV=8) is selected
      Div,
      --  PMC programmable clock (PCK) is selected. If the SCK pin is driven
      --  (CLKO = 1), the CD field must be greater than 1.
      Pck,
      --  Serial clock (SCK) is selected
      Sck)
     with Size => 2;
   for MR_USCLKS_Field use
     (Mck => 0,
      Div => 1,
      Pck => 2,
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
      --  1.5 stop bit (SYNC = 0) or reserved (SYNC = 1)
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

   --  Mode Register
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
      --  Variable Synchronization of Command/Data Sync Start Frame Delimiter
      VAR_SYNC       : Boolean := False;
      --  Inverted Data
      INVDATA        : Boolean := False;
      --  Maximum Number of Automatic Iteration
      MAX_ITERATION  : USART0_MR_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Receive Line Filter
      FILTER         : Boolean := False;
      --  Manchester Encoder/Decoder Enable
      MAN            : Boolean := False;
      --  Manchester Synchronization Mode
      MODSYNC        : Boolean := False;
      --  Start Frame Delimiter Selector
      ONEBIT         : Boolean := False;
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
      VAR_SYNC       at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      MAN            at 0 range 29 .. 29;
      MODSYNC        at 0 range 30 .. 30;
      ONEBIT         at 0 range 31 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_SPI_MODE_USART_MODE_Field is
     (
      --  Reset value for the field
      Mr_Spi_Mode_Usart_Mode_Field_Reset,
      --  SPI master
      Spi_Master,
      --  SPI Slave
      Spi_Slave)
     with Size => 4;
   for MR_SPI_MODE_USART_MODE_Field use
     (Mr_Spi_Mode_Usart_Mode_Field_Reset => 0,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type MR_SPI_MODE_USCLKS_Field is
     (
      --  Peripheral clock is selected
      Mck,
      --  Peripheral clock divided (DIV=DIV=8) is selected
      Div,
      --  Serial Clock SLK is selected
      Sck)
     with Size => 2;
   for MR_SPI_MODE_USCLKS_Field use
     (Mck => 0,
      Div => 1,
      Sck => 3);

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

   --  Mode Register
   type USART0_MR_SPI_MODE_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_SPI_MODE_USART_MODE_Field :=
                        Mr_Spi_Mode_Usart_Mode_Field_Reset;
      --  Clock Selection
      USCLKS         : MR_SPI_MODE_USCLKS_Field := SAM_SVD.USART.Mck;
      --  Character Length
      CHRL           : MR_SPI_MODE_CHRL_Field := Mr_Spi_Mode_Chrl_Field_Reset;
      --  SPI Clock Phase
      CPHA           : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  SPI Clock Polarity
      CPOL           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Clock Output Select
      CLKO           : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
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
      Reserved_17_17 at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      WRDBT          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART0_IER_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
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
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : Boolean := False;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : Boolean := False;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : Boolean := False;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Manchester Error Interrupt Enable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART0_IER_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. SPI Underrun Error Interrupt Enable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_11_18 : HAL.UInt8 := 16#0#;
      --  Write-only. NSS Line (Driving CTS Pin) Rising or Falling Edge Event
      --  Interrupt Enable
      NSSE           : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      NSSE           at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART0_IER_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
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
      Reserved_10_12 : HAL.UInt3 := 16#0#;
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
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
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

   --  Interrupt Enable Register
   type USART0_IER_LON_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. LON Short Frame Error Interrupt Enable
      LSFE           : Boolean := False;
      --  Write-only. LON CRC Error Interrupt Enable
      LCRCE          : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Enable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  Write-only. LON Transmission Done Interrupt Enable
      LTXD           : Boolean := False;
      --  Write-only. LON Collision Interrupt Enable
      LCOL           : Boolean := False;
      --  Write-only. LON Frame Early Termination Interrupt Enable
      LFET           : Boolean := False;
      --  Write-only. LON Reception Done Interrupt Enable
      LRXD           : Boolean := False;
      --  Write-only. LON Backlog Overflow Error Interrupt Enable
      LBLOVFE        : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_LON_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      LSFE           at 0 range 6 .. 6;
      LCRCE          at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      LTXD           at 0 range 24 .. 24;
      LCOL           at 0 range 25 .. 25;
      LFET           at 0 range 26 .. 26;
      LRXD           at 0 range 27 .. 27;
      LBLOVFE        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART0_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
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
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : Boolean := False;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : Boolean := False;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : Boolean := False;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Manchester Error Interrupt Disable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART0_IDR_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. SPI Underrun Error Interrupt Disable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_11_18 : HAL.UInt8 := 16#0#;
      --  Write-only. NSS Line (Driving CTS Pin) Rising or Falling Edge Event
      --  Interrupt Disable
      NSSE           : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      NSSE           at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART0_IDR_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
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
      Reserved_10_12 : HAL.UInt3 := 16#0#;
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
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
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

   --  Interrupt Disable Register
   type USART0_IDR_LON_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  Write-only. LON Short Frame Error Interrupt Disable
      LSFE           : Boolean := False;
      --  Write-only. LON CRC Error Interrupt Disable
      LCRCE          : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Disable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  Write-only. LON Transmission Done Interrupt Disable
      LTXD           : Boolean := False;
      --  Write-only. LON Collision Interrupt Disable
      LCOL           : Boolean := False;
      --  Write-only. LON Frame Early Termination Interrupt Disable
      LFET           : Boolean := False;
      --  Write-only. LON Reception Done Interrupt Disable
      LRXD           : Boolean := False;
      --  Write-only. LON Backlog Overflow Error Interrupt Disable
      LBLOVFE        : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_LON_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      LSFE           at 0 range 6 .. 6;
      LCRCE          at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      LTXD           at 0 range 24 .. 24;
      LCOL           at 0 range 25 .. 25;
      LFET           at 0 range 26 .. 26;
      LRXD           at 0 range 27 .. 27;
      LBLOVFE        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART0_IMR_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : Boolean;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
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
      --  unspecified
      Reserved_11_12 : HAL.UInt2;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : Boolean;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : Boolean;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : Boolean;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : Boolean;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. Manchester Error Interrupt Mask
      MANE           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART0_IMR_SPI_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  unspecified
      Reserved_6_8   : HAL.UInt3;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. SPI Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  unspecified
      Reserved_11_18 : HAL.UInt8;
      --  Read-only. NSS Line (Driving CTS Pin) Rising or Falling Edge Event
      --  Interrupt Mask
      NSSE           : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      NSSE           at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART0_IMR_LIN_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
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
      Reserved_10_12 : HAL.UInt3;
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
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
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

   --  Interrupt Mask Register
   type USART0_IMR_LON_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. LON Short Frame Error Interrupt Mask
      LSFE           : Boolean;
      --  Read-only. LON CRC Error Interrupt Mask
      LCRCE          : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  unspecified
      Reserved_11_23 : HAL.UInt13;
      --  Read-only. LON Transmission Done Interrupt Mask
      LTXD           : Boolean;
      --  Read-only. LON Collision Interrupt Mask
      LCOL           : Boolean;
      --  Read-only. LON Frame Early Termination Interrupt Mask
      LFET           : Boolean;
      --  Read-only. LON Reception Done Interrupt Mask
      LRXD           : Boolean;
      --  Read-only. LON Backlog Overflow Error Interrupt Mask
      LBLOVFE        : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_LON_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      LSFE           at 0 range 6 .. 6;
      LCRCE          at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      LTXD           at 0 range 24 .. 24;
      LCOL           at 0 range 25 .. 25;
      LFET           at 0 range 26 .. 26;
      LRXD           at 0 range 27 .. 27;
      LBLOVFE        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Channel Status Register
   type USART0_CSR_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  Read-only. Break Received/End of Break (cleared by writing a one to
      --  bit US_CR.RSTSTA)
      RXBRK          : Boolean;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  Read-only. Framing Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      FRAME          : Boolean;
      --  Read-only. Parity Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      PARE           : Boolean;
      --  Read-only. Receiver Time-out (cleared by writing a one to bit
      --  US_CR.STTTO)
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  Read-only. Max Number of Repetitions Reached (cleared by writing a
      --  one to bit US_CR.RSTIT)
      ITER           : Boolean;
      --  unspecified
      Reserved_11_12 : HAL.UInt2;
      --  Read-only. Non Acknowledge Interrupt (cleared by writing a one to bit
      --  US_CR.RSTNACK)
      NACK           : Boolean;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Ring Indicator Input Change Flag (cleared on read)
      RIIC           : Boolean;
      --  Read-only. Data Set Ready Input Change Flag (cleared on read)
      DSRIC          : Boolean;
      --  Read-only. Data Carrier Detect Input Change Flag (cleared on read)
      DCDIC          : Boolean;
      --  Read-only. Clear to Send Input Change Flag (cleared on read)
      CTSIC          : Boolean;
      --  Read-only. Image of RI Input
      RI             : Boolean;
      --  Read-only. Image of DSR Input
      DSR            : Boolean;
      --  Read-only. Image of DCD Input
      DCD            : Boolean;
      --  Read-only. Image of CTS Input
      CTS            : Boolean;
      --  Read-only. Manchester Error (cleared by writing a one to the bit
      --  US_CR.RSTSTA)
      MANERR         : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      MANERR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Channel Status Register
   type USART0_CSR_SPI_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  unspecified
      Reserved_6_8   : HAL.UInt3;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      UNRE           : Boolean;
      --  unspecified
      Reserved_11_18 : HAL.UInt8;
      --  Read-only. NSS Line (Driving CTS Pin) Rising or Falling Edge Event
      --  (cleared on read)
      NSSE           : Boolean;
      --  unspecified
      Reserved_20_22 : HAL.UInt3;
      --  Read-only. NSS Line (Driving CTS Pin) Rising or Falling Edge Event
      --  (cleared on read)
      NSS            : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      NSSE           at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      NSS            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Channel Status Register
   type USART0_CSR_LIN_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_THR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  Read-only. Framing Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      FRAME          : Boolean;
      --  Read-only. Parity Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      PARE           : Boolean;
      --  Read-only. Receiver Time-out (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_12 : HAL.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received (cleared by writing a
      --  one to bit US_CR.RSTSTA)
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received (cleared by
      --  writing a one to bit US_CR.RSTSTA)
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_22 : HAL.UInt7;
      --  Read-only. LIN Bus Line Status
      LINBLS         : Boolean;
      --  unspecified
      Reserved_24_24 : HAL.Bit;
      --  Read-only. LIN Bit Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error (cleared by writing a
      --  one to bit US_CR.RSTSTA)
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Error (cleared by writing a one to
      --  bit US_CR.RSTSTA)
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error (cleared by writing a one
      --  to bit US_CR.RSTSTA)
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LINSTE         : Boolean;
      --  Read-only. LIN Header Timeout Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LINHTE         : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
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

   --  Channel Status Register
   type USART0_CSR_LON_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      OVRE           : Boolean;
      --  Read-only. LON Short Frame Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LSFE           : Boolean;
      --  Read-only. LON CRC Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LCRCE          : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Transmitter Empty (cleared by writing US_THR)
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      UNRE           : Boolean;
      --  unspecified
      Reserved_11_23 : HAL.UInt13;
      --  Read-only. LON Transmission End Flag (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LTXD           : Boolean;
      --  Read-only. LON Collision Detected Flag (cleared by writing a one to
      --  bit US_CR.RSTSTA)
      LCOL           : Boolean;
      --  Read-only. LON Frame Early Termination (cleared by writing a one to
      --  bit US_CR.RSTSTA)
      LFET           : Boolean;
      --  Read-only. LON Reception End Flag (cleared by writing a one to bit
      --  US_CR.RSTSTA)
      LRXD           : Boolean;
      --  Read-only. LON Backlog Overflow Error (cleared by writing a one to
      --  bit US_CR.RSTSTA)
      LBLOVFE        : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_LON_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      LSFE           at 0 range 6 .. 6;
      LCRCE          at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      LTXD           at 0 range 24 .. 24;
      LCOL           at 0 range 25 .. 25;
      LFET           at 0 range 26 .. 26;
      LRXD           at 0 range 27 .. 27;
      LBLOVFE        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype USART0_RHR_RXCHR_Field is HAL.UInt9;

   --  Receive Holding Register
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

   --  Transmit Holding Register
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

   --  Baud Rate Generator Register
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

   --  Receiver Time-out Register
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

   --  Transmitter Timeguard Register
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

   subtype USART0_TTGR_LON_MODE_PCYCLE_Field is HAL.UInt24;

   --  Transmitter Timeguard Register
   type USART0_TTGR_LON_MODE_Register is record
      --  LON PCYCLE Length
      PCYCLE         : USART0_TTGR_LON_MODE_PCYCLE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TTGR_LON_MODE_Register use record
      PCYCLE         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_FIDI_FI_DI_RATIO_Field is HAL.UInt16;

   --  FI DI Ratio Register
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

   subtype USART0_FIDI_LON_MODE_BETA2_Field is HAL.UInt24;

   --  FI DI Ratio Register
   type USART0_FIDI_LON_MODE_Register is record
      --  LON BETA2 Length
      BETA2          : USART0_FIDI_LON_MODE_BETA2_Field := 16#174#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_FIDI_LON_MODE_Register use record
      BETA2          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_NER_NB_ERRORS_Field is HAL.UInt8;

   --  Number of Errors Register
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

   --  IrDA Filter Register
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

   subtype USART0_MAN_TX_PL_Field is HAL.UInt4;

   --  Transmitter Preamble Pattern
   type MAN_TX_PP_Field is
     (
      --  The preamble is composed of '1's
      All_One,
      --  The preamble is composed of '0's
      All_Zero,
      --  The preamble is composed of '01's
      Zero_One,
      --  The preamble is composed of '10's
      One_Zero)
     with Size => 2;
   for MAN_TX_PP_Field use
     (All_One => 0,
      All_Zero => 1,
      Zero_One => 2,
      One_Zero => 3);

   subtype USART0_MAN_RX_PL_Field is HAL.UInt4;

   --  Receiver Preamble Pattern detected
   type MAN_RX_PP_Field is
     (
      --  The preamble is composed of '1's
      All_One,
      --  The preamble is composed of '0's
      All_Zero,
      --  The preamble is composed of '01's
      Zero_One,
      --  The preamble is composed of '10's
      One_Zero)
     with Size => 2;
   for MAN_RX_PP_Field use
     (All_One => 0,
      All_Zero => 1,
      Zero_One => 2,
      One_Zero => 3);

   --  Manchester Configuration Register
   type USART0_MAN_Register is record
      --  Transmitter Preamble Length
      TX_PL          : USART0_MAN_TX_PL_Field := 16#4#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Transmitter Preamble Pattern
      TX_PP          : MAN_TX_PP_Field := SAM_SVD.USART.All_One;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Transmitter Manchester Polarity
      TX_MPOL        : Boolean := True;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Receiver Preamble Length
      RX_PL          : USART0_MAN_RX_PL_Field := 16#1#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Receiver Preamble Pattern detected
      RX_PP          : MAN_RX_PP_Field := SAM_SVD.USART.All_One;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Receiver Manchester Polarity
      RX_MPOL        : Boolean := True;
      --  Must Be Set to 1
      ONE            : Boolean := True;
      --  Drift Compensation
      DRIFT          : Boolean := False;
      RXIDLEV        : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MAN_Register use record
      TX_PL          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TX_PP          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TX_MPOL        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RX_PL          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RX_PP          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      RX_MPOL        at 0 range 28 .. 28;
      ONE            at 0 range 29 .. 29;
      DRIFT          at 0 range 30 .. 30;
      RXIDLEV        at 0 range 31 .. 31;
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

   --  LIN Mode Register
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
      --  DMAC Mode
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

   --  LIN Identifier Register
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

   --  LIN Baud Rate Register
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

   subtype USART0_LONMR_EOFS_Field is HAL.UInt8;

   --  LON Mode Register
   type USART0_LONMR_Register is record
      --  LON comm_type Parameter Value
      COMMT          : Boolean := False;
      --  LON Collision Detection Feature
      COLDET         : Boolean := False;
      --  Terminate Frame upon Collision Notification
      TCOL           : Boolean := False;
      --  LON Collision Detection on Frame Tail
      CDTAIL         : Boolean := False;
      --  LON DMA Mode
      DMAM           : Boolean := False;
      --  LON Collision Detection Source
      LCDS           : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  End of Frame Condition Size
      EOFS           : USART0_LONMR_EOFS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONMR_Register use record
      COMMT          at 0 range 0 .. 0;
      COLDET         at 0 range 1 .. 1;
      TCOL           at 0 range 2 .. 2;
      CDTAIL         at 0 range 3 .. 3;
      DMAM           at 0 range 4 .. 4;
      LCDS           at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      EOFS           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_LONPR_LONPL_Field is HAL.UInt14;

   --  LON Preamble Register
   type USART0_LONPR_Register is record
      --  LON Preamble Length
      LONPL          : USART0_LONPR_LONPL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONPR_Register use record
      LONPL          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype USART0_LONDL_LONDL_Field is HAL.UInt8;

   --  LON Data Length Register
   type USART0_LONDL_Register is record
      --  LON Data Length
      LONDL         : USART0_LONDL_LONDL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONDL_Register use record
      LONDL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_LONL2HDR_BLI_Field is HAL.UInt6;

   --  LON L2HDR Register
   type USART0_LONL2HDR_Register is record
      --  LON Backlog Increment
      BLI           : USART0_LONL2HDR_BLI_Field := 16#0#;
      --  LON Alternate Path Bit
      ALTP          : Boolean := False;
      --  LON Priority Bit
      PB            : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONL2HDR_Register use record
      BLI           at 0 range 0 .. 5;
      ALTP          at 0 range 6 .. 6;
      PB            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_LONBL_LONBL_Field is HAL.UInt6;

   --  LON Backlog Register
   type USART0_LONBL_Register is record
      --  Read-only. LON Node Backlog Value
      LONBL         : USART0_LONBL_LONBL_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONBL_Register use record
      LONBL         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype USART0_LONB1TX_BETA1TX_Field is HAL.UInt24;

   --  LON Beta1 Tx Register
   type USART0_LONB1TX_Register is record
      --  LON Beta1 Length after Transmission
      BETA1TX        : USART0_LONB1TX_BETA1TX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONB1TX_Register use record
      BETA1TX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_LONB1RX_BETA1RX_Field is HAL.UInt24;

   --  LON Beta1 Rx Register
   type USART0_LONB1RX_Register is record
      --  LON Beta1 Length after Reception
      BETA1RX        : USART0_LONB1RX_BETA1RX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONB1RX_Register use record
      BETA1RX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_LONPRIO_PSNB_Field is HAL.UInt7;
   subtype USART0_LONPRIO_NPS_Field is HAL.UInt7;

   --  LON Priority Register
   type USART0_LONPRIO_Register is record
      --  LON Priority Slot Number
      PSNB           : USART0_LONPRIO_PSNB_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  LON Node Priority Slot
      NPS            : USART0_LONPRIO_NPS_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LONPRIO_Register use record
      PSNB           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NPS            at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype USART0_IDTTX_IDTTX_Field is HAL.UInt24;

   --  LON IDT Tx Register
   type USART0_IDTTX_Register is record
      --  LON Indeterminate Time after Transmission (comm_type = 1 mode only)
      IDTTX          : USART0_IDTTX_IDTTX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDTTX_Register use record
      IDTTX          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_IDTRX_IDTRX_Field is HAL.UInt24;

   --  LON IDT Rx Register
   type USART0_IDTRX_Register is record
      --  LON Indeterminate Time after Reception (comm_type = 1 mode only)
      IDTRX          : USART0_IDTRX_IDTRX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDTRX_Register use record
      IDTRX          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_ICDIFF_ICDIFF_Field is HAL.UInt4;

   --  IC DIFF Register
   type USART0_ICDIFF_Register is record
      --  IC Differentiator Number
      ICDIFF        : USART0_ICDIFF_ICDIFF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_ICDIFF_Register use record
      ICDIFF        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
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

   --  Write Protection Mode Register
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

   --  Write Protection Status Register
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

   -----------------
   -- Peripherals --
   -----------------

   type USART0_Disc is
     (
      Default,
      Spi_Mode,
      Lin_Mode,
      Lon_Mode);

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   type USART_Peripheral
     (Discriminent : USART0_Disc := Default)
   is record
      --  Receive Holding Register
      RHR           : aliased USART0_RHR_Register;
      --  Transmit Holding Register
      THR           : aliased USART0_THR_Register;
      --  Baud Rate Generator Register
      BRGR          : aliased USART0_BRGR_Register;
      --  Receiver Time-out Register
      RTOR          : aliased USART0_RTOR_Register;
      --  Number of Errors Register
      NER           : aliased USART0_NER_Register;
      --  IrDA Filter Register
      IF_k          : aliased USART0_IF_Register;
      --  Manchester Configuration Register
      MAN           : aliased USART0_MAN_Register;
      --  LIN Mode Register
      LINMR         : aliased USART0_LINMR_Register;
      --  LIN Identifier Register
      LINIR         : aliased USART0_LINIR_Register;
      --  LIN Baud Rate Register
      LINBRR        : aliased USART0_LINBRR_Register;
      --  LON Mode Register
      LONMR         : aliased USART0_LONMR_Register;
      --  LON Preamble Register
      LONPR         : aliased USART0_LONPR_Register;
      --  LON Data Length Register
      LONDL         : aliased USART0_LONDL_Register;
      --  LON L2HDR Register
      LONL2HDR      : aliased USART0_LONL2HDR_Register;
      --  LON Backlog Register
      LONBL         : aliased USART0_LONBL_Register;
      --  LON Beta1 Tx Register
      LONB1TX       : aliased USART0_LONB1TX_Register;
      --  LON Beta1 Rx Register
      LONB1RX       : aliased USART0_LONB1RX_Register;
      --  LON Priority Register
      LONPRIO       : aliased USART0_LONPRIO_Register;
      --  LON IDT Tx Register
      IDTTX         : aliased USART0_IDTTX_Register;
      --  LON IDT Rx Register
      IDTRX         : aliased USART0_IDTRX_Register;
      --  IC DIFF Register
      ICDIFF        : aliased USART0_ICDIFF_Register;
      --  Write Protection Mode Register
      WPMR          : aliased USART0_WPMR_Register;
      --  Write Protection Status Register
      WPSR          : aliased USART0_WPSR_Register;
      case Discriminent is
         when Default =>
            --  Control Register
            CR : aliased USART0_CR_Register;
            --  Mode Register
            MR : aliased USART0_MR_Register;
            --  Interrupt Enable Register
            IER : aliased USART0_IER_Register;
            --  Interrupt Disable Register
            IDR : aliased USART0_IDR_Register;
            --  Interrupt Mask Register
            IMR : aliased USART0_IMR_Register;
            --  Channel Status Register
            CSR : aliased USART0_CSR_Register;
            --  Transmitter Timeguard Register
            TTGR : aliased USART0_TTGR_Register;
            --  FI DI Ratio Register
            FIDI : aliased USART0_FIDI_Register;
         when Spi_Mode =>
            --  Control Register
            CR_SPI_MODE : aliased USART0_CR_SPI_MODE_Register;
            --  Mode Register
            MR_SPI_MODE : aliased USART0_MR_SPI_MODE_Register;
            --  Interrupt Enable Register
            IER_SPI_MODE : aliased USART0_IER_SPI_MODE_Register;
            --  Interrupt Disable Register
            IDR_SPI_MODE : aliased USART0_IDR_SPI_MODE_Register;
            --  Interrupt Mask Register
            IMR_SPI_MODE : aliased USART0_IMR_SPI_MODE_Register;
            --  Channel Status Register
            CSR_SPI_MODE : aliased USART0_CSR_SPI_MODE_Register;
         when Lin_Mode =>
            --  Interrupt Enable Register
            IER_LIN_MODE : aliased USART0_IER_LIN_MODE_Register;
            --  Interrupt Disable Register
            IDR_LIN_MODE : aliased USART0_IDR_LIN_MODE_Register;
            --  Interrupt Mask Register
            IMR_LIN_MODE : aliased USART0_IMR_LIN_MODE_Register;
            --  Channel Status Register
            CSR_LIN_MODE : aliased USART0_CSR_LIN_MODE_Register;
         when Lon_Mode =>
            --  Interrupt Enable Register
            IER_LON_MODE : aliased USART0_IER_LON_MODE_Register;
            --  Interrupt Disable Register
            IDR_LON_MODE : aliased USART0_IDR_LON_MODE_Register;
            --  Interrupt Mask Register
            IMR_LON_MODE : aliased USART0_IMR_LON_MODE_Register;
            --  Channel Status Register
            CSR_LON_MODE : aliased USART0_CSR_LON_MODE_Register;
            --  Transmitter Timeguard Register
            TTGR_LON_MODE : aliased USART0_TTGR_LON_MODE_Register;
            --  FI DI Ratio Register
            FIDI_LON_MODE : aliased USART0_FIDI_LON_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR           at 16#18# range 0 .. 31;
      THR           at 16#1C# range 0 .. 31;
      BRGR          at 16#20# range 0 .. 31;
      RTOR          at 16#24# range 0 .. 31;
      NER           at 16#44# range 0 .. 31;
      IF_k          at 16#4C# range 0 .. 31;
      MAN           at 16#50# range 0 .. 31;
      LINMR         at 16#54# range 0 .. 31;
      LINIR         at 16#58# range 0 .. 31;
      LINBRR        at 16#5C# range 0 .. 31;
      LONMR         at 16#60# range 0 .. 31;
      LONPR         at 16#64# range 0 .. 31;
      LONDL         at 16#68# range 0 .. 31;
      LONL2HDR      at 16#6C# range 0 .. 31;
      LONBL         at 16#70# range 0 .. 31;
      LONB1TX       at 16#74# range 0 .. 31;
      LONB1RX       at 16#78# range 0 .. 31;
      LONPRIO       at 16#7C# range 0 .. 31;
      IDTTX         at 16#80# range 0 .. 31;
      IDTRX         at 16#84# range 0 .. 31;
      ICDIFF        at 16#88# range 0 .. 31;
      WPMR          at 16#E4# range 0 .. 31;
      WPSR          at 16#E8# range 0 .. 31;
      CR            at 16#0# range 0 .. 31;
      MR            at 16#4# range 0 .. 31;
      IER           at 16#8# range 0 .. 31;
      IDR           at 16#C# range 0 .. 31;
      IMR           at 16#10# range 0 .. 31;
      CSR           at 16#14# range 0 .. 31;
      TTGR          at 16#28# range 0 .. 31;
      FIDI          at 16#40# range 0 .. 31;
      CR_SPI_MODE   at 16#0# range 0 .. 31;
      MR_SPI_MODE   at 16#4# range 0 .. 31;
      IER_SPI_MODE  at 16#8# range 0 .. 31;
      IDR_SPI_MODE  at 16#C# range 0 .. 31;
      IMR_SPI_MODE  at 16#10# range 0 .. 31;
      CSR_SPI_MODE  at 16#14# range 0 .. 31;
      IER_LIN_MODE  at 16#8# range 0 .. 31;
      IDR_LIN_MODE  at 16#C# range 0 .. 31;
      IMR_LIN_MODE  at 16#10# range 0 .. 31;
      CSR_LIN_MODE  at 16#14# range 0 .. 31;
      IER_LON_MODE  at 16#8# range 0 .. 31;
      IDR_LON_MODE  at 16#C# range 0 .. 31;
      IMR_LON_MODE  at 16#10# range 0 .. 31;
      CSR_LON_MODE  at 16#14# range 0 .. 31;
      TTGR_LON_MODE at 16#28# range 0 .. 31;
      FIDI_LON_MODE at 16#40# range 0 .. 31;
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40024000#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 1
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

   --  Universal Synchronous Asynchronous Receiver Transmitter 2
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#4002C000#);

end SAM_SVD.USART;
