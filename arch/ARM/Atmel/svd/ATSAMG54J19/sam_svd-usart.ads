--  This spec has been automatically generated from ATSAMG54J19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Universal Synchronous Asynchronous Receiver Transmitter
package SAM_SVD.USART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type USART_CR_Register is record
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
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Write-only. Start Time-out Immediately
      RETTO          : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. Request to Send Pin Control
      RTSEN          : Boolean := False;
      --  Write-only. Request to Send Pin Control
      RTSDIS         : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_Register use record
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
      Reserved_13_14 at 0 range 13 .. 14;
      RETTO          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Control Register
   type USART_CR_SPI_MODE_Register is record
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

   for USART_CR_SPI_MODE_Register use record
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
      --  SPI master
      Spi_Master,
      --  SPI Slave
      Spi_Slave)
     with Size => 4;
   for MR_USART_MODE_Field use
     (Normal => 0,
      Rs485 => 1,
      Hw_Handshaking => 2,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type MR_USCLKS_Field is
     (
      --  Peripheral clock is selected
      Mck,
      --  Peripheral clock divided (DIV=8) is selected
      Div,
      --  Serial clock (SCK) is selected
      Sck)
     with Size => 2;
   for MR_USCLKS_Field use
     (Mck => 0,
      Div => 1,
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

   --  Mode Register
   type USART_MR_Register is record
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
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  9-bit Character Length
      MODE9          : Boolean := False;
      --  Clock Output Select
      CLKO           : Boolean := False;
      --  Oversampling Mode
      OVER           : Boolean := False;
      --  unspecified
      Reserved_20_27 : HAL.UInt8 := 16#0#;
      --  Receive Line Filter
      FILTER         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MR_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      Reserved_20_27 at 0 range 20 .. 27;
      FILTER         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
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
      --  Peripheral clock divided (DIV=8) is selected
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
   type USART_MR_SPI_MODE_Register is record
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

   for USART_MR_SPI_MODE_Register use record
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
   type USART_IER_Register is record
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
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable (available in all
      --  USART modes of operation)
      TXBUFE         : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable (available in all
      --  USART modes of operation)
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_18 : HAL.UInt6 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_Register use record
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
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_18 at 0 range 13 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART_IER_SPI_MODE_Register is record
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
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_SPI_MODE_Register use record
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
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : Boolean := False;
      --  Write-only. End of Receive Buffer Transfer Interrupt Disable
      --  (available in all USART modes of operation)
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
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable (available in all
      --  USART modes of operation)
      TXBUFE         : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Disable (available in all
      --  USART modes of operation)
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_18 : HAL.UInt6 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_Register use record
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
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_18 at 0 range 13 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART_IDR_SPI_MODE_Register is record
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
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_SPI_MODE_Register use record
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
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART_IMR_Register is record
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
      --  unspecified
      Reserved_10_10 : HAL.Bit;
      --  Read-only. Transmit Buffer Empty Interrupt Mask (available in all
      --  USART modes of operation)
      TXBUFE         : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask (available in all USART
      --  modes of operation)
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_18 : HAL.UInt6;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_Register use record
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
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_18 at 0 range 13 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART_IMR_SPI_MODE_Register is record
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
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_SPI_MODE_Register use record
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
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Channel Status Register
   type USART_CSR_Register is record
      --  Read-only. Receiver Ready (cleared by reading US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing US_THR)
      TXRDY          : Boolean;
      --  Read-only. Break Received/End of Break (cleared by writing a one to
      --  bit US_CR.RSTSTA)
      RXBRK          : Boolean;
      --  Read-only. End of RX Buffer (cleared by writing US_RCR or US_RNCR)
      ENDRX          : Boolean;
      --  Read-only. End of TX Buffer (cleared by writing US_TCR or US_TNCR)
      ENDTX          : Boolean;
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
      --  unspecified
      Reserved_10_10 : HAL.Bit;
      --  Read-only. TX Buffer Empty (cleared by writing US_TCR or US_TNCR)
      TXBUFE         : Boolean;
      --  Read-only. RX Buffer Full (cleared by writing US_RCR or US_RNCR)
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_18 : HAL.UInt6;
      --  Read-only. Clear to Send Input Change Flag (cleared on read)
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_22 : HAL.UInt3;
      --  Read-only. Image of CTS Input
      CTS            : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_Register use record
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
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_18 at 0 range 13 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      CTS            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Channel Status Register
   type USART_CSR_SPI_MODE_Register is record
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
      --  Read-only.
      TXBUFE         : Boolean;
      --  Read-only.
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_SPI_MODE_Register use record
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
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype USART_RHR_RXCHR_Field is HAL.UInt9;

   --  Receive Holding Register
   type USART_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : USART_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : HAL.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_THR_TXCHR_Field is HAL.UInt9;

   --  Transmit Holding Register
   type USART_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : USART_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  Write-only. Sync Field to be Transmitted
      TXSYNH         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_BRGR_CD_Field is HAL.UInt16;
   subtype USART_BRGR_FP_Field is HAL.UInt3;

   --  Baud Rate Generator Register
   type USART_BRGR_Register is record
      --  Clock Divider
      CD             : USART_BRGR_CD_Field := 16#0#;
      --  Fractional Part
      FP             : USART_BRGR_FP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USART_RTOR_TO_Field is HAL.UInt16;

   --  Receiver Time-out Register
   type USART_RTOR_Register is record
      --  Time-out Value
      TO             : USART_RTOR_TO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RTOR_Register use record
      TO             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_TTGR_TG_Field is HAL.UInt8;

   --  Transmitter Timeguard Register
   type USART_TTGR_Register is record
      --  Timeguard Value
      TG            : USART_TTGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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
   type USART_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype USART_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type USART_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : USART_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type USART_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : USART_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type USART_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : USART_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type USART_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : USART_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type USART_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : USART_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type USART_PTCR_Register is record
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

   for USART_PTCR_Register use record
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
   type USART_PTSR_Register is record
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

   for USART_PTSR_Register use record
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

   type USART_Disc is
     (
      Default,
      Spi_Mode);

   --  Universal Synchronous Asynchronous Receiver Transmitter
   type USART_Peripheral
     (Discriminent : USART_Disc := Default)
   is record
      --  Receive Holding Register
      RHR          : aliased USART_RHR_Register;
      --  Transmit Holding Register
      THR          : aliased USART_THR_Register;
      --  Baud Rate Generator Register
      BRGR         : aliased USART_BRGR_Register;
      --  Receiver Time-out Register
      RTOR         : aliased USART_RTOR_Register;
      --  Transmitter Timeguard Register
      TTGR         : aliased USART_TTGR_Register;
      --  Number of Errors Register
      NER          : aliased HAL.UInt32;
      --  Write Protection Mode Register
      WPMR         : aliased USART_WPMR_Register;
      --  Write Protection Status Register
      WPSR         : aliased USART_WPSR_Register;
      --  Receive Pointer Register
      RPR          : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR          : aliased USART_RCR_Register;
      --  Transmit Pointer Register
      TPR          : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR          : aliased USART_TCR_Register;
      --  Receive Next Pointer Register
      RNPR         : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR         : aliased USART_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR         : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR         : aliased USART_TNCR_Register;
      --  Transfer Control Register
      PTCR         : aliased USART_PTCR_Register;
      --  Transfer Status Register
      PTSR         : aliased USART_PTSR_Register;
      case Discriminent is
         when Default =>
            --  Control Register
            CR : aliased USART_CR_Register;
            --  Mode Register
            MR : aliased USART_MR_Register;
            --  Interrupt Enable Register
            IER : aliased USART_IER_Register;
            --  Interrupt Disable Register
            IDR : aliased USART_IDR_Register;
            --  Interrupt Mask Register
            IMR : aliased USART_IMR_Register;
            --  Channel Status Register
            CSR : aliased USART_CSR_Register;
         when Spi_Mode =>
            --  Control Register
            CR_SPI_MODE : aliased USART_CR_SPI_MODE_Register;
            --  Mode Register
            MR_SPI_MODE : aliased USART_MR_SPI_MODE_Register;
            --  Interrupt Enable Register
            IER_SPI_MODE : aliased USART_IER_SPI_MODE_Register;
            --  Interrupt Disable Register
            IDR_SPI_MODE : aliased USART_IDR_SPI_MODE_Register;
            --  Interrupt Mask Register
            IMR_SPI_MODE : aliased USART_IMR_SPI_MODE_Register;
            --  Channel Status Register
            CSR_SPI_MODE : aliased USART_CSR_SPI_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR          at 16#18# range 0 .. 31;
      THR          at 16#1C# range 0 .. 31;
      BRGR         at 16#20# range 0 .. 31;
      RTOR         at 16#24# range 0 .. 31;
      TTGR         at 16#28# range 0 .. 31;
      NER          at 16#44# range 0 .. 31;
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
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter
   USART_Periph : aliased USART_Peripheral
     with Import, Address => USART_Base;

end SAM_SVD.USART;
