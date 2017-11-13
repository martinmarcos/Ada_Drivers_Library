--  This spec has been automatically generated from ATSAMV70Q20B.svd

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

   --  Control Register
   type UART0_CR_Register is record
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
      --  Write-only. Reset Status
      RSTSTA         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. Request Clear
      REQCLR         : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Write-only. Debug Enable
      DBGE           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      REQCLR         at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      DBGE           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Receiver Digital Filter
   type MR_FILTER_Field is
     (
      --  UART does not filter the receive line.
      Disabled,
      --  UART filters the receive line using a three-sample filter (16x-bit
      --  clock) (2 over 3 majority).
      Enabled)
     with Size => 1;
   for MR_FILTER_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Parity Type
   type MR_PAR_Field is
     (
      --  Even Parity
      Even,
      --  Odd Parity
      Odd,
      --  Space: parity forced to 0
      Space,
      --  Mark: parity forced to 1
      Mark,
      --  No parity
      No)
     with Size => 3;
   for MR_PAR_Field use
     (Even => 0,
      Odd => 1,
      Space => 2,
      Mark => 3,
      No => 4);

   --  Baud Rate Source Clock
   type MR_BRSRCCK_Field is
     (
      --  The baud rate is driven by the peripheral clock
      Periph_Clk,
      --  The baud rate is driven by a PMC-programmable clock PCK (see section
      --  Power Management Controller (PMC)).
      Pmc_Pck)
     with Size => 1;
   for MR_BRSRCCK_Field use
     (Periph_Clk => 0,
      Pmc_Pck => 1);

   --  Channel Mode
   type MR_CHMODE_Field is
     (
      --  Normal mode
      Normal,
      --  Automatic echo
      Automatic,
      --  Local loopback
      Local_Loopback,
      --  Remote loopback
      Remote_Loopback)
     with Size => 2;
   for MR_CHMODE_Field use
     (Normal => 0,
      Automatic => 1,
      Local_Loopback => 2,
      Remote_Loopback => 3);

   --  Mode Register
   type UART0_MR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Receiver Digital Filter
      FILTER         : MR_FILTER_Field := SAM_SVD.UART.Disabled;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Parity Type
      PAR            : MR_PAR_Field := SAM_SVD.UART.Even;
      --  Baud Rate Source Clock
      BRSRCCK        : MR_BRSRCCK_Field := SAM_SVD.UART.Periph_Clk;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := SAM_SVD.UART.Normal;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_MR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      FILTER         at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      PAR            at 0 range 9 .. 11;
      BRSRCCK        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHMODE         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Enable Register
   type UART0_IER_Register is record
      --  Write-only. Enable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Enable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Enable Overrun Error Interrupt
      OVRE           : Boolean := False;
      --  Write-only. Enable Framing Error Interrupt
      FRAME          : Boolean := False;
      --  Write-only. Enable Parity Error Interrupt
      PARE           : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. Enable TXEMPTY Interrupt
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. Enable Comparison Interrupt
      CMP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Disable Register
   type UART0_IDR_Register is record
      --  Write-only. Disable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Disable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Disable Overrun Error Interrupt
      OVRE           : Boolean := False;
      --  Write-only. Disable Framing Error Interrupt
      FRAME          : Boolean := False;
      --  Write-only. Disable Parity Error Interrupt
      PARE           : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. Disable TXEMPTY Interrupt
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. Disable Comparison Interrupt
      CMP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Mask Register
   type UART0_IMR_Register is record
      --  Read-only. Mask RXRDY Interrupt
      RXRDY          : Boolean;
      --  Read-only. Disable TXRDY Interrupt
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Mask Overrun Error Interrupt
      OVRE           : Boolean;
      --  Read-only. Mask Framing Error Interrupt
      FRAME          : Boolean;
      --  Read-only. Mask Parity Error Interrupt
      PARE           : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Mask TXEMPTY Interrupt
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_14 : HAL.UInt5;
      --  Read-only. Mask Comparison Interrupt
      CMP            : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Status Register
   type UART0_SR_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Transmitter Empty
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_14 : HAL.UInt5;
      --  Read-only. Comparison Match
      CMP            : Boolean;
      --  unspecified
      Reserved_16_20 : HAL.UInt5;
      --  Read-only. SleepWalking Enable Status
      SWES           : Boolean;
      --  Read-only. Clock Request
      CLKREQ         : Boolean;
      --  Read-only. Wake-Up Request
      WKUPREQ        : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_20 at 0 range 16 .. 20;
      SWES           at 0 range 21 .. 21;
      CLKREQ         at 0 range 22 .. 22;
      WKUPREQ        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype UART0_RHR_RXCHR_Field is HAL.UInt8;

   --  Receive Holding Register
   type UART0_RHR_Register is record
      --  Read-only. Received Character
      RXCHR         : UART0_RHR_RXCHR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RHR_Register use record
      RXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART0_THR_TXCHR_Field is HAL.UInt8;

   --  Transmit Holding Register
   type UART0_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR         : UART0_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_THR_Register use record
      TXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART0_BRGR_CD_Field is HAL.UInt16;

   --  Baud Rate Generator Register
   type UART0_BRGR_Register is record
      --  Clock Divisor
      CD             : UART0_BRGR_CD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_CMPR_VAL1_Field is HAL.UInt8;

   --  Comparison Mode
   type CMPR_CMPMODE_Field is
     (
      --  Any character is received and comparison function drives CMP flag.
      Flag_Only,
      --  Comparison condition must be met to start reception.
      Start_Condition)
     with Size => 1;
   for CMPR_CMPMODE_Field use
     (Flag_Only => 0,
      Start_Condition => 1);

   subtype UART0_CMPR_VAL2_Field is HAL.UInt8;

   --  Comparison Register
   type UART0_CMPR_Register is record
      --  First Comparison Value for Received Character
      VAL1           : UART0_CMPR_VAL1_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Comparison Mode
      CMPMODE        : CMPR_CMPMODE_Field := SAM_SVD.UART.Flag_Only;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Parity
      CMPPAR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Second Comparison Value for Received Character
      VAL2           : UART0_CMPR_VAL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CMPR_Register use record
      VAL1           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMPPAR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      VAL2           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write
      --  operation.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5587282);

   --  Write Protection Mode Register
   type UART0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype UART0_VERSION_VERSION_Field is HAL.UInt12;
   subtype UART0_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type UART0_VERSION_Register is record
      --  Read-only. Hardware Module Version
      VERSION        : UART0_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : UART0_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Asynchronous Receiver Transmitter 0
   type UART_Peripheral is record
      --  Control Register
      CR      : aliased UART0_CR_Register;
      --  Mode Register
      MR      : aliased UART0_MR_Register;
      --  Interrupt Enable Register
      IER     : aliased UART0_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased UART0_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased UART0_IMR_Register;
      --  Status Register
      SR      : aliased UART0_SR_Register;
      --  Receive Holding Register
      RHR     : aliased UART0_RHR_Register;
      --  Transmit Holding Register
      THR     : aliased UART0_THR_Register;
      --  Baud Rate Generator Register
      BRGR    : aliased UART0_BRGR_Register;
      --  Comparison Register
      CMPR    : aliased UART0_CMPR_Register;
      --  Write Protection Mode Register
      WPMR    : aliased UART0_WPMR_Register;
      --  Version Register
      VERSION : aliased UART0_VERSION_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      MR      at 16#4# range 0 .. 31;
      IER     at 16#8# range 0 .. 31;
      IDR     at 16#C# range 0 .. 31;
      IMR     at 16#10# range 0 .. 31;
      SR      at 16#14# range 0 .. 31;
      RHR     at 16#18# range 0 .. 31;
      THR     at 16#1C# range 0 .. 31;
      BRGR    at 16#20# range 0 .. 31;
      CMPR    at 16#24# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  Universal Asynchronous Receiver Transmitter 0
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#400E0800#);

   --  Universal Asynchronous Receiver Transmitter 1
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#400E0A00#);

   --  Universal Asynchronous Receiver Transmitter 2
   UART2_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#400E1A00#);

   --  Universal Asynchronous Receiver Transmitter 3
   UART3_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#400E1C00#);

   --  Universal Asynchronous Receiver Transmitter 4
   UART4_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#400E1E00#);

end SAM_SVD.UART;
