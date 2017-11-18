--

--  This spec has been automatically generated from SN32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RB_RB_Field is HAL.UInt8;

   --  Offset:0x00 UARTn Receiver Buffer Register
   type RB_Register is record
      --  Read-only. The oldest received byte in UART RX FIFO
      RB            : RB_RB_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RB_Register use record
      RB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TH_TH_Field is HAL.UInt8;

   --  Offset:0x00 UARTn Transmit Holding Register
   type TH_Register is record
      --  Write-only. The oldest byte to be transmitted in UART TX FIFO when
      --  transmitter is available
      TH            : TH_TH_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TH_Register use record
      TH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DLL_DLL_Field is HAL.UInt8;

   --  Offset:0x00 UARTn Divisor Latch LSB Register
   type DLL_Register is record
      --  DLL and DLM register determines the baud rate of UARTn
      DLL           : DLL_DLL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLL_Register use record
      DLL           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DLM_DLM_Field is HAL.UInt8;

   --  Offset:0x04 UARTn Divisor Latch MSB Register
   type DLM_Register is record
      --  DLL and DLM register determines the baud rate of UARTn
      DLM           : DLM_DLM_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLM_Register use record
      DLM           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RDA interrupt enable
   type IE_RDAIE_Field is
     (
      --  Disable RDA interrupt
      Disable,
      --  Enable RDA interrupt
      Enable)
     with Size => 1;
   for IE_RDAIE_Field use
     (Disable => 0,
      Enable => 1);

   --  THRE interrupt enable
   type IE_THREIE_Field is
     (
      --  Disable THRE interrupt
      Disable,
      --  Enable THRE interrupt
      Enable)
     with Size => 1;
   for IE_THREIE_Field use
     (Disable => 0,
      Enable => 1);

   --  RLS interrupt enable
   type IE_RLSIE_Field is
     (
      --  Disable RLS interrupt
      Disable,
      --  Enable RLS interrupt
      Enable)
     with Size => 1;
   for IE_RLSIE_Field use
     (Disable => 0,
      Enable => 1);

   --  TEMT interrupt enable
   type IE_TEMTIE_Field is
     (
      --  Disable TEMT interrupt
      Disable,
      --  Enable TEMT interrupt
      Enable)
     with Size => 1;
   for IE_TEMTIE_Field use
     (Disable => 0,
      Enable => 1);

   --  ABE0 interrupt enable
   type IE_ABEOIE_Field is
     (
      --  Disable ABEO interrupt
      Disable,
      --  Enable ABEO interrupt
      Enable)
     with Size => 1;
   for IE_ABEOIE_Field use
     (Disable => 0,
      Enable => 1);

   --  ABT0 interrupt enable
   type IE_ABTOIE_Field is
     (
      --  Disable ABTO interrupt
      Disable,
      --  Enable ABTO interrupt
      Enable)
     with Size => 1;
   for IE_ABTOIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x04 UARTn Interrupt Enable Register
   type IE_Register is record
      --  RDA interrupt enable
      RDAIE          : IE_RDAIE_Field := NRF_SVD.UART.Disable;
      --  THRE interrupt enable
      THREIE         : IE_THREIE_Field := NRF_SVD.UART.Disable;
      --  RLS interrupt enable
      RLSIE          : IE_RLSIE_Field := NRF_SVD.UART.Disable;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TEMT interrupt enable
      TEMTIE         : IE_TEMTIE_Field := NRF_SVD.UART.Disable;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  ABE0 interrupt enable
      ABEOIE         : IE_ABEOIE_Field := NRF_SVD.UART.Disable;
      --  ABT0 interrupt enable
      ABTOIE         : IE_ABTOIE_Field := NRF_SVD.UART.Disable;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      RDAIE          at 0 range 0 .. 0;
      THREIE         at 0 range 1 .. 1;
      RLSIE          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TEMTIE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ABEOIE         at 0 range 8 .. 8;
      ABTOIE         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Interrupt status
   type II_INTSTATUS_Field is
     (
      --  As least 1 interrupt is pending
      Pending,
      No INTERRUPT)
     with Size => 1;
   for II_INTSTATUS_Field use
     (Pending => 0,
      No INTERRUPT => 1);

   --  Interrupt ID of RX FIFO
   type II_INTID_Field is
     (
      --  THRE interrupt
      II_INTID_Field_3A,
      --  RDA (Receive Data Available)
      II_INTID_Field_2A,
      --  RLS (Receive Line Status)
      II_INTID_Field_1,
      --  CTI (Character Time-out Indicator)
      II_INTID_Field_2B,
      --  TEMT interrupt
      II_INTID_Field_3B)
     with Size => 3;
   for II_INTID_Field use
     (II_INTID_Field_3A => 1,
      II_INTID_Field_2A => 2,
      II_INTID_Field_1 => 3,
      II_INTID_Field_2B => 6,
      II_INTID_Field_3B => 7);

   subtype II_FIFOEN_Field is HAL.UInt2;

   --  ABEO interrupt flag
   type II_ABEOIF_Field is
     (
      --  Auto-baud has not finished
      Not END,
      --  Auto-baud has finished and interrupt is enabled
      End_k)
     with Size => 1;
   for II_ABEOIF_Field use
     (Not END => 0,
      End_k => 1);

   --  ABTO interrupt flag
   type II_ABTOIF_Field is
     (
      --  Auto-baud has not timed out
      Not Time-OUT,
      --  Auto-baud has timed out and interrupt is enabled
      Time-OUT)
     with Size => 1;
   for II_ABTOIF_Field use
     (Not Time-OUT => 0,
      Time-OUT => 1);

   --  Offset:0x08 UARTn Interrupt Identification Register
   type II_Register is record
      --  Read-only. Interrupt status
      INTSTATUS      : II_INTSTATUS_Field;
      --  Read-only. Interrupt ID of RX FIFO
      INTID          : II_INTID_Field;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. Equal to FIFOEN bits in UARTn_FIFOCTRL register
      FIFOEN         : II_FIFOEN_Field;
      --  Read-only. ABEO interrupt flag
      ABEOIF         : II_ABEOIF_Field;
      --  Read-only. ABTO interrupt flag
      ABTOIF         : II_ABTOIF_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for II_Register use record
      INTSTATUS      at 0 range 0 .. 0;
      INTID          at 0 range 1 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      FIFOEN         at 0 range 6 .. 7;
      ABEOIF         at 0 range 8 .. 8;
      ABTOIF         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  FIFO enable
   type FIFOCTRL_FIFOEN_Field is
     (
      No EFFECT,
      Enable)
     with Size => 1;
   for FIFOCTRL_FIFOEN_Field use
     (No EFFECT => 0,
      Enable => 1);

   --  RX FIFO reset
   type FIFOCTRL_RXFIFORST_Field is
     (
      No IMPACT,
      --  Reset the pointer logic in RX FIFO
      Reset)
     with Size => 1;
   for FIFOCTRL_RXFIFORST_Field use
     (No IMPACT => 0,
      Reset => 1);

   --  TX FIFO reset
   type FIFOCTRL_TXFIFORST_Field is
     (
      No IMPACT,
      --  Reset the pointer logic in TX FIFO
      Reset)
     with Size => 1;
   for FIFOCTRL_TXFIFORST_Field use
     (No IMPACT => 0,
      Reset => 1);

   --  RX trigger level
   type FIFOCTRL_RXTL_Field is
     (
      --  1 character
      Trigger LEVEL 0,
      --  4 character
      Trigger LEVEL 1,
      --  8 character
      Trigger LEVEL 2,
      --  14 character
      Trigger LEVEL 3)
     with Size => 2;
   for FIFOCTRL_RXTL_Field use
     (Trigger LEVEL 0 => 0,
      Trigger LEVEL 1 => 1,
      Trigger LEVEL 2 => 2,
      Trigger LEVEL 3 => 3);

   --  Offset:0x08 UARTn FIFO Control Register
   type FIFOCTRL_Register is record
      --  Write-only. FIFO enable
      FIFOEN        : FIFOCTRL_FIFOEN_Field := NRF_SVD.UART.Enable;
      --  Write-only. RX FIFO reset
      RXFIFORST     : FIFOCTRL_RXFIFORST_Field := NRF_SVD.UART.No IMPACT;
      --  Write-only. TX FIFO reset
      TXFIFORST     : FIFOCTRL_TXFIFORST_Field := NRF_SVD.UART.No IMPACT;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Write-only. RX trigger level
      RXTL          : FIFOCTRL_RXTL_Field := NRF_SVD.UART.Trigger LEVEL 0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCTRL_Register use record
      FIFOEN        at 0 range 0 .. 0;
      RXFIFORST     at 0 range 1 .. 1;
      TXFIFORST     at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      RXTL          at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Word length selection
   type LC_WLS_Field is
     (
      LC_WLS_Field_5-BIT CHARACTER,
      LC_WLS_Field_6-BIT CHARACTER,
      LC_WLS_Field_7-BIT CHARACTER,
      LC_WLS_Field_8-BIT CHARACTER)
     with Size => 2;
   for LC_WLS_Field use
     (LC_WLS_Field_5-BIT CHARACTER => 0,
      LC_WLS_Field_6-BIT CHARACTER => 1,
      LC_WLS_Field_7-BIT CHARACTER => 2,
      LC_WLS_Field_8-BIT CHARACTER => 3);

   --  Stop bit selection
   type LC_SBS_Field is
     (
      LC_SBS_Field_1 STOP BIT,
      --  (1.5 stop bit if WLS=0)
      LC_SBS_Field_2 STOP BIT)
     with Size => 1;
   for LC_SBS_Field use
     (LC_SBS_Field_1 STOP BIT => 0,
      LC_SBS_Field_2 STOP BIT => 1);

   --  Parity enable
   type LC_PE_Field is
     (
      --  Disable parity generation and checking
      Disable,
      --  Enable parity generation and checking
      Enable)
     with Size => 1;
   for LC_PE_Field use
     (Disable => 0,
      Enable => 1);

   --  Parity selection
   type LC_PS_Field is
     (
      Odd PARITY,
      Even PARITY,
      Forced 1 STICKY PARITY,
      Forced 0 STICKY PARITY)
     with Size => 2;
   for LC_PS_Field use
     (Odd PARITY => 0,
      Even PARITY => 1,
      Forced 1 STICKY PARITY => 2,
      Forced 0 STICKY PARITY => 3);

   --  Break control
   type LC_BC_Field is
     (
      --  Disable break transmission
      Disable,
      --  Enable break transmission
      Enable)
     with Size => 1;
   for LC_BC_Field use
     (Disable => 0,
      Enable => 1);

   --  Divisor Latch access
   type LC_DLAB_Field is
     (
      --  Disable access to Divisor Latches
      Disable,
      --  Enable access to Divisor Latches
      Enable)
     with Size => 1;
   for LC_DLAB_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x0C UARTn Line Control Register
   type LC_Register is record
      --  Word length selection
      WLS           : LC_WLS_Field :=
                       NRF_SVD.UART.LC_WLS_Field_5-BIT CHARACTER;
      --  Stop bit selection
      SBS           : LC_SBS_Field := NRF_SVD.UART.LC_SBS_Field_1 STOP BIT;
      --  Parity enable
      PE            : LC_PE_Field := NRF_SVD.UART.Disable;
      --  Parity selection
      PS            : LC_PS_Field := NRF_SVD.UART.Odd PARITY;
      --  Break control
      BC            : LC_BC_Field := NRF_SVD.UART.Disable;
      --  Divisor Latch access
      DLAB          : LC_DLAB_Field := NRF_SVD.UART.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LC_Register use record
      WLS           at 0 range 0 .. 1;
      SBS           at 0 range 2 .. 2;
      PE            at 0 range 3 .. 3;
      PS            at 0 range 4 .. 5;
      BC            at 0 range 6 .. 6;
      DLAB          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Receiver data ready flag
   type LS_RDR_Field is
     (
      --  UARTn_RB FIFO is empty
      Not READY,
      --  UARTn_RB FIFO contains valid data
      Ready)
     with Size => 1;
   for LS_RDR_Field use
     (Not READY => 0,
      Ready => 1);

   --  Overrun error flag
   type LS_OE_Field is
     (
      No OVERRUN ERROR,
      --  Overrun error status is active
      Overrun ERROR)
     with Size => 1;
   for LS_OE_Field use
     (No OVERRUN ERROR => 0,
      Overrun ERROR => 1);

   --  Parity error flag
   type LS_PE_Field is
     (
      No PARITY ERROR,
      --  Parity error status is active
      Parity ERROR)
     with Size => 1;
   for LS_PE_Field use
     (No PARITY ERROR => 0,
      Parity ERROR => 1);

   --  Framing error flag
   type LS_FE_Field is
     (
      No FRAMING ERROR,
      --  Framing error status is active
      Framing ERROR)
     with Size => 1;
   for LS_FE_Field use
     (No FRAMING ERROR => 0,
      Framing ERROR => 1);

   --  Break interrupt flag
   type LS_BI_Field is
     (
      No BREAK INTERRUPT,
      --  Break interrupt status is active
      Break INTERRUPT)
     with Size => 1;
   for LS_BI_Field use
     (No BREAK INTERRUPT => 0,
      Break INTERRUPT => 1);

   --  THR empty flag
   type LS_THRE_Field is
     (
      --  THR contains valid data
      Not EMPTY,
      --  THR (TX FIFO) is empty
      Empty)
     with Size => 1;
   for LS_THRE_Field use
     (Not EMPTY => 0,
      Empty => 1);

   --  Transmitter empty flag
   type LS_TEMT_Field is
     (
      --  THR and/or TSR contains valid data
      Not EMPTY,
      --  THR and TSR are both empty
      Empty)
     with Size => 1;
   for LS_TEMT_Field use
     (Not EMPTY => 0,
      Empty => 1);

   --  Receiver FIFO error flag
   type LS_RXFE_Field is
     (
      --  UARTn_RB contains no UART RX errors
      No Rx Fifo ERROR,
      --  UARTn_RB contains at least 1 UART RX error
      Rx Fifo ERROR)
     with Size => 1;
   for LS_RXFE_Field use
     (No Rx Fifo ERROR => 0,
      Rx Fifo ERROR => 1);

   --  Offset:0x14 UARTn Line Status Register
   type LS_Register is record
      --  Read-only. Receiver data ready flag
      RDR           : LS_RDR_Field;
      --  Read-only. Overrun error flag
      OE            : LS_OE_Field;
      --  Read-only. Parity error flag
      PE            : LS_PE_Field;
      --  Read-only. Framing error flag
      FE            : LS_FE_Field;
      --  Read-only. Break interrupt flag
      BI            : LS_BI_Field;
      --  Read-only. THR empty flag
      THRE          : LS_THRE_Field;
      --  Read-only. Transmitter empty flag
      TEMT          : LS_TEMT_Field;
      --  Read-only. Receiver FIFO error flag
      RXFE          : LS_RXFE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LS_Register use record
      RDR           at 0 range 0 .. 0;
      OE            at 0 range 1 .. 1;
      PE            at 0 range 2 .. 2;
      FE            at 0 range 3 .. 3;
      BI            at 0 range 4 .. 4;
      THRE          at 0 range 5 .. 5;
      TEMT          at 0 range 6 .. 6;
      RXFE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SP_PAD_Field is HAL.UInt8;

   --  Offset:0x1C UARTn Scratch Pad Register
   type SP_Register is record
      --  Pad informaton
      PAD           : SP_PAD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SP_Register use record
      PAD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Auto-baud run bit
   type ABCTRL_START_Field is
     (
      --  Auto-baud is not running
      Stop,
      --  Auto-baud ids running
      Start)
     with Size => 1;
   for ABCTRL_START_Field use
     (Stop => 0,
      Start => 1);

   --  Auto-baud mode selection
   type ABCTRL_MODE_Field is
     (
      Mode 0,
      Mode 1)
     with Size => 1;
   for ABCTRL_MODE_Field use
     (Mode 0 => 0,
      Mode 1 => 1);

   --  Restart mode selection
   type ABCTRL_AUTORESTART_Field is
     (
      No RESTART,
      --  Auto restart in case of timeout
      Restart)
     with Size => 1;
   for ABCTRL_AUTORESTART_Field use
     (No RESTART => 0,
      Restart => 1);

   --  Clear ABEOIF flag
   type ABCTRL_ABEOIFC_Field is
     (
      No EFFECT,
      --  Clear ABEOIF bit
      Clear)
     with Size => 1;
   for ABCTRL_ABEOIFC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear ABTOIF flag
   type ABCTRL_ABTOIFC_Field is
     (
      No EFFECT,
      --  Clear ABTOIF bit
      Clear)
     with Size => 1;
   for ABCTRL_ABTOIFC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x20 UARTn Auto-baud Control Register
   type ABCTRL_Register is record
      --  Auto-baud run bit
      START          : ABCTRL_START_Field := NRF_SVD.UART.Stop;
      --  Auto-baud mode selection
      MODE           : ABCTRL_MODE_Field := NRF_SVD.UART.Mode 0;
      --  Restart mode selection
      AUTORESTART    : ABCTRL_AUTORESTART_Field := NRF_SVD.UART.No RESTART;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Write-only. Clear ABEOIF flag
      ABEOIFC        : ABCTRL_ABEOIFC_Field := NRF_SVD.UART.No EFFECT;
      --  Write-only. Clear ABTOIF flag
      ABTOIFC        : ABCTRL_ABTOIFC_Field := NRF_SVD.UART.No EFFECT;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABCTRL_Register use record
      START          at 0 range 0 .. 0;
      MODE           at 0 range 1 .. 1;
      AUTORESTART    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      ABEOIFC        at 0 range 8 .. 8;
      ABTOIFC        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype FD_DIVADDVAL_Field is HAL.UInt4;

   --  Baud rate generation prescaler multiplier value
   type FD_MULVAL_Field is
     (
      --  Baud rate prescaler multiplier value is 1
      FD_MULVAL_Field_0000,
      --  Baud rate prescaler multiplier value is 2
      FD_MULVAL_Field_0001,
      --  Baud rate prescaler multiplier value is 3
      FD_MULVAL_Field_0010,
      --  Baud rate prescaler multiplier value is 4
      FD_MULVAL_Field_0011,
      --  Baud rate prescaler multiplier value is 5
      FD_MULVAL_Field_0100,
      --  Baud rate prescaler multiplier value is 6
      FD_MULVAL_Field_0101,
      --  Baud rate prescaler multiplier value is 7
      FD_MULVAL_Field_0110,
      --  Baud rate prescaler multiplier value is 8
      FD_MULVAL_Field_0111,
      --  Baud rate prescaler multiplier value is 9
      FD_MULVAL_Field_1000,
      --  Baud rate prescaler multiplier value is 10
      FD_MULVAL_Field_1001,
      --  Baud rate prescaler multiplier value is 11
      FD_MULVAL_Field_1010,
      --  Baud rate prescaler multiplier value is 12
      FD_MULVAL_Field_1011,
      --  Baud rate prescaler multiplier value is 13
      FD_MULVAL_Field_1100,
      --  Baud rate prescaler multiplier value is 14
      FD_MULVAL_Field_1101,
      --  Baud rate prescaler multiplier value is 15
      FD_MULVAL_Field_1110,
      --  Baud rate prescaler multiplier value is 16
      FD_MULVAL_Field_1111)
     with Size => 4;
   for FD_MULVAL_Field use
     (FD_MULVAL_Field_0000 => 0,
      FD_MULVAL_Field_0001 => 1,
      FD_MULVAL_Field_0010 => 2,
      FD_MULVAL_Field_0011 => 3,
      FD_MULVAL_Field_0100 => 4,
      FD_MULVAL_Field_0101 => 5,
      FD_MULVAL_Field_0110 => 6,
      FD_MULVAL_Field_0111 => 7,
      FD_MULVAL_Field_1000 => 8,
      FD_MULVAL_Field_1001 => 9,
      FD_MULVAL_Field_1010 => 10,
      FD_MULVAL_Field_1011 => 11,
      FD_MULVAL_Field_1100 => 12,
      FD_MULVAL_Field_1101 => 13,
      FD_MULVAL_Field_1110 => 14,
      FD_MULVAL_Field_1111 => 15);

   --  Oversampling value
   type FD_OVER8_Field is
     (
      --  Oversampling by 16
      FD_OVER8_Field_16,
      --  Oversampling by 8
      FD_OVER8_Field_8)
     with Size => 1;
   for FD_OVER8_Field use
     (FD_OVER8_Field_16 => 0,
      FD_OVER8_Field_8 => 1);

   --  Offset:0x28 UARTn Fractional Divider Register
   type FD_Register is record
      --  Baud rate generation prescaler divisor value
      DIVADDVAL     : FD_DIVADDVAL_Field := 16#0#;
      --  Baud rate generation prescaler multiplier value
      MULVAL        : FD_MULVAL_Field := NRF_SVD.UART.FD_MULVAL_Field_0000;
      --  Oversampling value
      OVER8         : FD_OVER8_Field := NRF_SVD.UART.FD_OVER8_Field_16;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FD_Register use record
      DIVADDVAL     at 0 range 0 .. 3;
      MULVAL        at 0 range 4 .. 7;
      OVER8         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  UART enable
   type CTRL_UARTEN_Field is
     (
      --  Disable UART
      Disable,
      --  Enable UART
      Enable)
     with Size => 1;
   for CTRL_UARTEN_Field use
     (Disable => 0,
      Enable => 1);

   --  RX enable
   type CTRL_RXEN_Field is
     (
      --  Disable RX
      Disable,
      --  Enable RX
      Enable)
     with Size => 1;
   for CTRL_RXEN_Field use
     (Disable => 0,
      Enable => 1);

   --  TX enable
   type CTRL_TXEN_Field is
     (
      --  Disable TX
      Disable,
      --  Enable TX
      Enable)
     with Size => 1;
   for CTRL_TXEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x30 UARTn Control Register
   type CTRL_Register is record
      --  UART enable
      UARTEN        : CTRL_UARTEN_Field := NRF_SVD.UART.Disable;
      --  unspecified
      Reserved_1_5  : HAL.UInt5 := 16#0#;
      --  RX enable
      RXEN          : CTRL_RXEN_Field := NRF_SVD.UART.Enable;
      --  TX enable
      TXEN          : CTRL_TXEN_Field := NRF_SVD.UART.Enable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      UARTEN        at 0 range 0 .. 0;
      Reserved_1_5  at 0 range 1 .. 5;
      RXEN          at 0 range 6 .. 6;
      TXEN          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Half-duplex mode enable
   type HDEN_HDEN_Field is
     (
      --  Disable half-duplex mode
      Disable,
      --  Enable UART
      Enable)
     with Size => 1;
   for HDEN_HDEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x34 UARTn Control Register
   type HDEN_Register is record
      --  Half-duplex mode enable
      HDEN          : HDEN_HDEN_Field := NRF_SVD.UART.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDEN_Register use record
      HDEN          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SN_UART0_Disc is
     (
      Mode_1,
      Mode_2,
      Mode_3);

   --  UART0
   type UART_Peripheral
     (Discriminent : SN_UART0_Disc := Mode_1)
   is record
      --  Offset:0x0C UARTn Line Control Register
      LC       : aliased LC_Register;
      --  Offset:0x14 UARTn Line Status Register
      LS       : aliased LS_Register;
      --  Offset:0x1C UARTn Scratch Pad Register
      SP       : aliased SP_Register;
      --  Offset:0x20 UARTn Auto-baud Control Register
      ABCTRL   : aliased ABCTRL_Register;
      --  Offset:0x28 UARTn Fractional Divider Register
      FD       : aliased FD_Register;
      --  Offset:0x30 UARTn Control Register
      CTRL     : aliased CTRL_Register;
      --  Offset:0x34 UARTn Control Register
      HDEN     : aliased HDEN_Register;
      case Discriminent is
         when Mode_1 =>
            --  Offset:0x00 UARTn Receiver Buffer Register
            RB : aliased RB_Register;
            --  Offset:0x04 UARTn Divisor Latch MSB Register
            DLM : aliased DLM_Register;
            --  Offset:0x08 UARTn Interrupt Identification Register
            II : aliased II_Register;
         when Mode_2 =>
            --  Offset:0x00 UARTn Transmit Holding Register
            TH : aliased TH_Register;
            --  Offset:0x04 UARTn Interrupt Enable Register
            IE : aliased IE_Register;
            --  Offset:0x08 UARTn FIFO Control Register
            FIFOCTRL : aliased FIFOCTRL_Register;
         when Mode_3 =>
            --  Offset:0x00 UARTn Divisor Latch LSB Register
            DLL : aliased DLL_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART_Peripheral use record
      LC       at 16#C# range 0 .. 31;
      LS       at 16#14# range 0 .. 31;
      SP       at 16#1C# range 0 .. 31;
      ABCTRL   at 16#20# range 0 .. 31;
      FD       at 16#28# range 0 .. 31;
      CTRL     at 16#30# range 0 .. 31;
      HDEN     at 16#34# range 0 .. 31;
      RB       at 16#0# range 0 .. 31;
      DLM      at 16#4# range 0 .. 31;
      II       at 16#8# range 0 .. 31;
      TH       at 16#0# range 0 .. 31;
      IE       at 16#4# range 0 .. 31;
      FIFOCTRL at 16#8# range 0 .. 31;
      DLL      at 16#0# range 0 .. 31;
   end record;

   --  UART0
   SN_UART0_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40016000#);

   --  UART0
   SN_UART1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40056000#);

end NRF_SVD.UART;
