--  This spec has been automatically generated from ATSAM4C8C_0.svd

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
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX         : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX         : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN          : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS         : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN          : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS         : Boolean := False;
      --  Write-only. Reset Status
      RSTSTA        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RSTRX         at 0 range 2 .. 2;
      RSTTX         at 0 range 3 .. 3;
      RXEN          at 0 range 4 .. 4;
      RXDIS         at 0 range 5 .. 5;
      TXEN          at 0 range 6 .. 6;
      TXDIS         at 0 range 7 .. 7;
      RSTSTA        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  UART Optical Interface Enable
   type MR_OPT_EN_Field is
     (
      --  The UART transmitter data is not inverted before modulation.
      Disabled,
      --  The UART transmitter data is inverted before modulation.
      Enabled)
     with Size => 1;
   for MR_OPT_EN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  UART Receive Data Inverted
   type MR_OPT_RXINV_Field is
     (
      --  The comparator data output is not inverted before entering UART.
      Disabled,
      --  The comparator data output is inverted before entering UART.
      Enabled)
     with Size => 1;
   for MR_OPT_RXINV_Field use
     (Disabled => 0,
      Enabled => 1);

   --  UART Modulated Data Inverted
   type MR_OPT_MDINV_Field is
     (
      --  The output of the modulator is not inverted.
      Disabled,
      --  The output of the modulator is inverted.
      Enabled)
     with Size => 1;
   for MR_OPT_MDINV_Field use
     (Disabled => 0,
      Enabled => 1);

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

   subtype UART0_MR_OPT_CLKDIV_Field is HAL.UInt5;

   --  Optical Link Modulation Clock Duty Cycle
   type MR_OPT_DUTY_Field is
     (
      --  Modulation clock duty cycle Is 50%.
      Duty_50,
      --  Modulation clock duty cycle Is 43.75%.
      Duty_43P75,
      --  Modulation clock duty cycle Is 37.5%.
      Duty_37P5,
      --  Modulation clock duty cycle Is 31.75%.
      Duty_31P25,
      --  Modulation clock duty cycle Is 25%.
      Duty_25,
      --  Modulation clock duty cycle Is 18.75%.
      Duty_18P75,
      --  Modulation clock duty cycle Is 12.5%.
      Duty_12P5,
      --  Modulation clock duty cycle Is 6.25%.
      Duty_6P25)
     with Size => 3;
   for MR_OPT_DUTY_Field use
     (Duty_50 => 0,
      Duty_43P75 => 1,
      Duty_37P5 => 2,
      Duty_31P25 => 3,
      Duty_25 => 4,
      Duty_18P75 => 5,
      Duty_12P5 => 6,
      Duty_6P25 => 7);

   --  Receive Path Comparator Threshold
   type MR_OPT_CMPTH_Field is
     (
      --  Comparator threshold is VDDIO/2 volts.
      Vddio_Div2,
      --  Comparator threshold is VDDIO/2.5 volts.
      Vddio_Div2P5,
      --  Comparator threshold is VDDIO/3.3 volts.
      Vddio_Div3P3,
      --  Comparator threshold is VDDIO/5 volts.
      Vddio_Div5,
      --  Comparator threshold is VDDIO/10 volts.
      Vddio_Div10)
     with Size => 3;
   for MR_OPT_CMPTH_Field use
     (Vddio_Div2 => 0,
      Vddio_Div2P5 => 1,
      Vddio_Div3P3 => 2,
      Vddio_Div5 => 3,
      Vddio_Div10 => 4);

   --  Mode Register
   type UART0_MR_Register is record
      --  UART Optical Interface Enable
      OPT_EN         : MR_OPT_EN_Field := SAM_SVD.UART.Disabled;
      --  UART Receive Data Inverted
      OPT_RXINV      : MR_OPT_RXINV_Field := SAM_SVD.UART.Disabled;
      --  UART Modulated Data Inverted
      OPT_MDINV      : MR_OPT_MDINV_Field := SAM_SVD.UART.Disabled;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Receiver Digital Filter
      FILTER         : MR_FILTER_Field := SAM_SVD.UART.Disabled;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Parity Type
      PAR            : MR_PAR_Field := SAM_SVD.UART.Even;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := SAM_SVD.UART.Normal;
      --  Optical Link Clock Divider
      OPT_CLKDIV     : UART0_MR_OPT_CLKDIV_Field := 16#13#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Optical Link Modulation Clock Duty Cycle
      OPT_DUTY       : MR_OPT_DUTY_Field := SAM_SVD.UART.Duty_50;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Receive Path Comparator Threshold
      OPT_CMPTH      : MR_OPT_CMPTH_Field := SAM_SVD.UART.Vddio_Div2;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_MR_Register use record
      OPT_EN         at 0 range 0 .. 0;
      OPT_RXINV      at 0 range 1 .. 1;
      OPT_MDINV      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FILTER         at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      PAR            at 0 range 9 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      OPT_CLKDIV     at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      OPT_DUTY       at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      OPT_CMPTH      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Interrupt Enable Register
   type UART0_IER_Register is record
      --  Write-only. Enable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Enable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Enable End of Receive Transfer Interrupt
      ENDRX          : Boolean := False;
      --  Write-only. Enable End of Transmit Interrupt
      ENDTX          : Boolean := False;
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
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Enable Buffer Empty Interrupt
      TXBUFE         : Boolean := False;
      --  Write-only. Enable Buffer Full Interrupt
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Interrupt Disable Register
   type UART0_IDR_Register is record
      --  Write-only. Disable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Disable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Disable End of Receive Transfer Interrupt
      ENDRX          : Boolean := False;
      --  Write-only. Disable End of Transmit Interrupt
      ENDTX          : Boolean := False;
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
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Disable Buffer Empty Interrupt
      TXBUFE         : Boolean := False;
      --  Write-only. Disable Buffer Full Interrupt
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Interrupt Mask Register
   type UART0_IMR_Register is record
      --  Read-only. Mask RXRDY Interrupt
      RXRDY          : Boolean;
      --  Read-only. Disable TXRDY Interrupt
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Mask End of Receive Transfer Interrupt
      ENDRX          : Boolean;
      --  Read-only. Mask End of Transmit Interrupt
      ENDTX          : Boolean;
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
      Reserved_10_10 : HAL.Bit;
      --  Read-only. Mask TXBUFE Interrupt
      TXBUFE         : Boolean;
      --  Read-only. Mask RXBUFF Interrupt
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Status Register
   type UART0_SR_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. End of Receiver Transfer
      ENDRX          : Boolean;
      --  Read-only. End of Transmitter Transfer
      ENDTX          : Boolean;
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
      Reserved_10_10 : HAL.Bit;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : Boolean;
      --  Read-only. Receive Buffer Full
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
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

   subtype UART0_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type UART0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : UART0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type UART0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : UART0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type UART0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : UART0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type UART0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : UART0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type UART0_PTCR_Register is record
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
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type UART0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Asynchronous Receiver Transmitter 0
   type UART_Peripheral is record
      --  Control Register
      CR   : aliased UART0_CR_Register;
      --  Mode Register
      MR   : aliased UART0_MR_Register;
      --  Interrupt Enable Register
      IER  : aliased UART0_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased UART0_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased UART0_IMR_Register;
      --  Status Register
      SR   : aliased UART0_SR_Register;
      --  Receive Holding Register
      RHR  : aliased UART0_RHR_Register;
      --  Transmit Holding Register
      THR  : aliased UART0_THR_Register;
      --  Baud Rate Generator Register
      BRGR : aliased UART0_BRGR_Register;
      --  Receive Pointer Register
      RPR  : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR  : aliased UART0_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR  : aliased UART0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased UART0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased UART0_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased UART0_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased UART0_PTSR_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#8# range 0 .. 31;
      IDR  at 16#C# range 0 .. 31;
      IMR  at 16#10# range 0 .. 31;
      SR   at 16#14# range 0 .. 31;
      RHR  at 16#18# range 0 .. 31;
      THR  at 16#1C# range 0 .. 31;
      BRGR at 16#20# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Universal Asynchronous Receiver Transmitter 0
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#400E0600#);

   --  Universal Asynchronous Receiver Transmitter 1
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#48004000#);

end SAM_SVD.UART;
