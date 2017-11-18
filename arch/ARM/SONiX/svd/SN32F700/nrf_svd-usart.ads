--

--  This spec has been automatically generated from SN32F700.svd

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

   subtype RB_RB_Field is HAL.UInt8;

   --  Offset:0x00 USARTn Receiver Buffer Register
   type RB_Register is record
      --  Read-only. The oldest received byte in USART RX FIFO
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

   --  Offset:0x00 USARTn Transmit Holding Register
   type TH_Register is record
      --  Write-only. The oldest byte to be transmitted in USART TX FIFO when
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

   --  Offset:0x00 USARTn Divisor Latch LSB Register
   type DLL_Register is record
      --  DLL and DLM register determines the baud rate of USARTn
      DLL           : DLL_DLL_Field := 16#1#;
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

   --  Offset:0x04 USARTn Divisor Latch MSB Register
   type DLM_Register is record
      --  DLL and DLM register determines the baud rate of USARTn
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

   --  MS interrupt enable
   type IE_MSIE_Field is
     (
      --  Disable MS interrupt
      Disable,
      --  Enable MS interrupt
      Enable)
     with Size => 1;
   for IE_MSIE_Field use
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

   --  TXERR interrupt enable
   type IE_TXERRIE_Field is
     (
      --  Disable TXERR interrupt
      Disable,
      --  Enable TXERR interrupt
      Enable)
     with Size => 1;
   for IE_TXERRIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x04 USARTn Interrupt Enable Register
   type IE_Register is record
      --  RDA interrupt enable
      RDAIE          : IE_RDAIE_Field := NRF_SVD.USART.Disable;
      --  THRE interrupt enable
      THREIE         : IE_THREIE_Field := NRF_SVD.USART.Disable;
      --  RLS interrupt enable
      RLSIE          : IE_RLSIE_Field := NRF_SVD.USART.Disable;
      --  MS interrupt enable
      MSIE           : IE_MSIE_Field := NRF_SVD.USART.Disable;
      --  TEMT interrupt enable
      TEMTIE         : IE_TEMTIE_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  ABE0 interrupt enable
      ABEOIE         : IE_ABEOIE_Field := NRF_SVD.USART.Disable;
      --  ABT0 interrupt enable
      ABTOIE         : IE_ABTOIE_Field := NRF_SVD.USART.Disable;
      --  TXERR interrupt enable
      TXERRIE        : IE_TXERRIE_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      RDAIE          at 0 range 0 .. 0;
      THREIE         at 0 range 1 .. 1;
      RLSIE          at 0 range 2 .. 2;
      MSIE           at 0 range 3 .. 3;
      TEMTIE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ABEOIE         at 0 range 8 .. 8;
      ABTOIE         at 0 range 9 .. 9;
      TXERRIE        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt status
   type II_INTSTATUS_Field is
     (
      --  As least 1 interrupt is pending
      Pending,
      --  No interrupt
      No INTERRUPT)
     with Size => 1;
   for II_INTSTATUS_Field use
     (Pending => 0,
      No INTERRUPT => 1);

   --  Interrupt ID of RX FIFO
   type II_INTID_Field is
     (
      --  Modem status
      II_INTID_Field_4,
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
     (II_INTID_Field_4 => 0,
      II_INTID_Field_3A => 1,
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

   --  TXERR interrupt flag
   type II_TXERRIF_Field is
     (
      --  TXERR has not occurred
      No ERROR,
      --  TXERR has occurred and interrupt is enabled
      Tx ERROR)
     with Size => 1;
   for II_TXERRIF_Field use
     (No ERROR => 0,
      Tx ERROR => 1);

   --  Offset:0x08 USARTn Interrupt Identification Register
   type II_Register is record
      --  Read-only. Interrupt status
      INTSTATUS      : II_INTSTATUS_Field;
      --  Read-only. Interrupt ID of RX FIFO
      INTID          : II_INTID_Field;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. Equal to FIFOEN bits in USARTn_FIFOCTRL register
      FIFOEN         : II_FIFOEN_Field;
      --  Read-only. ABEO interrupt flag
      ABEOIF         : II_ABEOIF_Field;
      --  Read-only. ABTO interrupt flag
      ABTOIF         : II_ABTOIF_Field;
      --  Read-only. TXERR interrupt flag
      TXERRIF        : II_TXERRIF_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
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
      TXERRIF        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  FIFO enable
   type FIFOCTRL_FIFOEN_Field is
     (
      --  No effect
      No EFFECT,
      --  Enable FIFO
      Enable)
     with Size => 1;
   for FIFOCTRL_FIFOEN_Field use
     (No EFFECT => 0,
      Enable => 1);

   --  RX FIFO reset
   type FIFOCTRL_RXFIFORST_Field is
     (
      --  No impact
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
      --  No impact
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

   --  Offset:0x08 USARTn FIFO Control Register
   type FIFOCTRL_Register is record
      --  Write-only. FIFO enable
      FIFOEN        : FIFOCTRL_FIFOEN_Field := NRF_SVD.USART.Enable;
      --  Write-only. RX FIFO reset
      RXFIFORST     : FIFOCTRL_RXFIFORST_Field := NRF_SVD.USART.No IMPACT;
      --  Write-only. TX FIFO reset
      TXFIFORST     : FIFOCTRL_TXFIFORST_Field := NRF_SVD.USART.No IMPACT;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Write-only. RX trigger level
      RXTL          : FIFOCTRL_RXTL_Field := NRF_SVD.USART.Trigger LEVEL 0;
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
      --  5-bit character
      LC_WLS_Field_5-BIT,
      --  6-bit character
      LC_WLS_Field_6-BIT,
      --  7-bit character
      LC_WLS_Field_7-BIT,
      --  8-bit character
      LC_WLS_Field_8-BIT)
     with Size => 2;
   for LC_WLS_Field use
     (LC_WLS_Field_5-BIT => 0,
      LC_WLS_Field_6-BIT => 1,
      LC_WLS_Field_7-BIT => 2,
      LC_WLS_Field_8-BIT => 3);

   --  Stop bit selection
   type LC_SBS_Field is
     (
      --  1 stop bit
      LC_SBS_Field_1 STOP BIT,
      --  2 stop bit (1.5 stop bit if WLS=0)
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
      --  Odd parity
      LC_PS_Field_0,
      --  Even parity
      LC_PS_Field_1,
      --  Forced 1 sticky parity
      LC_PS_Field_2,
      --  Forced 0 sticky parity
      LC_PS_Field_3)
     with Size => 2;
   for LC_PS_Field use
     (LC_PS_Field_0 => 0,
      LC_PS_Field_1 => 1,
      LC_PS_Field_2 => 2,
      LC_PS_Field_3 => 3);

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
      --  Disable access to Divisor Latch
      Disable,
      --  Enable access to Divisor Latch
      Enable)
     with Size => 1;
   for LC_DLAB_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x0C USARTn Line Control Register
   type LC_Register is record
      --  Word length selection
      WLS           : LC_WLS_Field := NRF_SVD.USART.LC_WLS_Field_5-BIT;
      --  Stop bit selection
      SBS           : LC_SBS_Field := NRF_SVD.USART.LC_SBS_Field_1 STOP BIT;
      --  Parity enable
      PE            : LC_PE_Field := NRF_SVD.USART.Disable;
      --  Parity selection
      PS            : LC_PS_Field := NRF_SVD.USART.LC_PS_Field_0;
      --  Break control
      BC            : LC_BC_Field := NRF_SVD.USART.Disable;
      --  Divisor Latch access
      DLAB          : LC_DLAB_Field := NRF_SVD.USART.Disable;
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

   --  MC_OUT array
   type MC_OUT_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MC_OUT
   type MC_OUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUT as a value
            Val : HAL.UInt2;
         when True =>
            --  OUT as an array
            Arr : MC_OUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MC_OUT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Modem loopback mode enable
   type MC_LMS_Field is
     (
      --  Disable loopback mode
      Disable,
      --  Enable loopback mode
      Enable)
     with Size => 1;
   for MC_LMS_Field use
     (Disable => 0,
      Enable => 1);

   --  RTS enable
   type MC_RTSEN_Field is
     (
      --  Disable auto-RTS flow control
      Disable,
      --  Enable auto-RTS flow control
      Enable)
     with Size => 1;
   for MC_RTSEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CTS enable
   type MC_CTSEN_Field is
     (
      --  Disable auto-CTS flow control
      Disable,
      --  Enable auto-CTS flow control
      Enable)
     with Size => 1;
   for MC_CTSEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x10 USARTn Modem Control Register
   type MC_Register is record
      --  Source from modem output (DTR) pin
      DTRCTRL       : Boolean := False;
      --  Source from modem output (RTS) pin
      RTSCTRL       : Boolean := False;
      --  Control OUT1 internal signal in loopback mode.
      OUT_k         : MC_OUT_Field := (As_Array => False, Val => 16#0#);
      --  Modem loopback mode enable
      LMS           : MC_LMS_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  RTS enable
      RTSEN         : MC_RTSEN_Field := NRF_SVD.USART.Disable;
      --  CTS enable
      CTSEN         : MC_CTSEN_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MC_Register use record
      DTRCTRL       at 0 range 0 .. 0;
      RTSCTRL       at 0 range 1 .. 1;
      OUT_k         at 0 range 2 .. 3;
      LMS           at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      RTSEN         at 0 range 6 .. 6;
      CTSEN         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Receiver data ready flag
   type LS_RDR_Field is
     (
      --  USARTn_RB FIFO is empty
      Not READY,
      --  USARTn_RB FIFO contains valid data
      Ready)
     with Size => 1;
   for LS_RDR_Field use
     (Not READY => 0,
      Ready => 1);

   --  Overrun error flag
   type LS_OE_Field is
     (
      --  No overrun error
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
      --  No parity error
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
      --  No framing error
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
      --  No break interrupt
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
      --  USARTn_RB contains no USART RX errors
      No Rx Fifo ERROR,
      --  USARTn_RB contains at least 1 USART RX error
      Rx Fifo ERROR)
     with Size => 1;
   for LS_RXFE_Field use
     (No Rx Fifo ERROR => 0,
      Rx Fifo ERROR => 1);

   --  TX error flag
   type LS_TXERR_Field is
     (
      --  USARTn_RB contains no USART RX errors
      No Tx ERROR,
      --  Smart card has NACKed a transmitted character
      Tx Fifo ERROR)
     with Size => 1;
   for LS_TXERR_Field use
     (No Tx ERROR => 0,
      Tx Fifo ERROR => 1);

   --  Offset:0x14 USARTn Line Status Register
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
      --  Read-only. TX error flag
      TXERR         : LS_TXERR_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
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
      TXERR         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Delta CTS
   type MS_DCTS_Field is
     (
      --  No change detected on modem input CTS pin
      No CHANGE,
      --  State changes detected on modem input CTS pin
      State CHANGES)
     with Size => 1;
   for MS_DCTS_Field use
     (No CHANGE => 0,
      State CHANGES => 1);

   --  Delta DSR
   type MS_DDSR_Field is
     (
      --  No change detected on DSR pin
      No CHANGE,
      --  State changes detected on DSR pin
      State CHANGES)
     with Size => 1;
   for MS_DDSR_Field use
     (No CHANGE => 0,
      State CHANGES => 1);

   --  Trailing edge RI
   type MS_TERI_Field is
     (
      --  No change detected on RI pin
      No CHANGE,
      --  Low-to-high transition detected on RI pin
      State CHANGES)
     with Size => 1;
   for MS_TERI_Field use
     (No CHANGE => 0,
      State CHANGES => 1);

   --  Delta DCD
   type MS_DDCD_Field is
     (
      --  No change detected on DCD pin
      No CHANGE,
      --  State changes detected on DCD pin
      State CHANGES)
     with Size => 1;
   for MS_DDCD_Field use
     (No CHANGE => 0,
      State CHANGES => 1);

   --  Offset:0x18 USARTn Modem Status Register
   type MS_Register is record
      --  Read-only. Delta CTS
      DCTS          : MS_DCTS_Field;
      --  Read-only. Delta DSR
      DDSR          : MS_DDSR_Field;
      --  Read-only. Trailing edge RI
      TERI          : MS_TERI_Field;
      --  Read-only. Delta DCD
      DDCD          : MS_DDCD_Field;
      --  Read-only. Complement of CTS pin input signal
      CTS           : Boolean;
      --  Read-only. Complement of DSR pin input signal
      DSR           : Boolean;
      --  Read-only. Complement of RI pin input signal
      RI            : Boolean;
      --  Read-only. Complement of DCD pin input signal
      DCD           : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MS_Register use record
      DCTS          at 0 range 0 .. 0;
      DDSR          at 0 range 1 .. 1;
      TERI          at 0 range 2 .. 2;
      DDCD          at 0 range 3 .. 3;
      CTS           at 0 range 4 .. 4;
      DSR           at 0 range 5 .. 5;
      RI            at 0 range 6 .. 6;
      DCD           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SP_PAD_Field is HAL.UInt8;

   --  Offset:0x1C USARTn Scratch Pad Register
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
      --  Auto-baud mode 0
      Mode 0,
      --  Auto-baud mode 1
      Mode 1)
     with Size => 1;
   for ABCTRL_MODE_Field use
     (Mode 0 => 0,
      Mode 1 => 1);

   --  Restart mode selection
   type ABCTRL_AUTORESTART_Field is
     (
      --  No restart
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
      --  No effect
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
      --  No effect
      No EFFECT,
      --  Clear ABTOIF bit
      Clear)
     with Size => 1;
   for ABCTRL_ABTOIFC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x20 USARTn Auto-baud Control Register
   type ABCTRL_Register is record
      --  Auto-baud run bit
      START          : ABCTRL_START_Field := NRF_SVD.USART.Stop;
      --  Auto-baud mode selection
      MODE           : ABCTRL_MODE_Field := NRF_SVD.USART.Mode 0;
      --  Restart mode selection
      AUTORESTART    : ABCTRL_AUTORESTART_Field := NRF_SVD.USART.No RESTART;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Write-only. Clear ABEOIF flag
      ABEOIFC        : ABCTRL_ABEOIFC_Field := NRF_SVD.USART.No EFFECT;
      --  Write-only. Clear ABTOIF flag
      ABTOIFC        : ABCTRL_ABTOIFC_Field := NRF_SVD.USART.No EFFECT;
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

   --  IrDA serial input inverter
   type IRDACTRL_IRDAINV_Field is
     (
      --  IrDA serial input is not inverted
      No INVERTED,
      --  IrDA serial input is inverted
      Inverted)
     with Size => 1;
   for IRDACTRL_IRDAINV_Field use
     (No INVERTED => 0,
      Inverted => 1);

   --  IrDA fix pulse width mode enable
   type IRDACTRL_FIXPULSEEN_Field is
     (
      --  Pulse width = 3 / (Oversampling * Baud rate)
      Disable,
      --  Pulse width is set by PULSEDIV bits
      Enable)
     with Size => 1;
   for IRDACTRL_FIXPULSEEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Pulse width selection
   type IRDACTRL_PULSEDIV_Field is
     (
      --  2 * TPCLK
      IRDACTRL_PULSEDIV_Field_000B,
      --  4 * TPCLK
      IRDACTRL_PULSEDIV_Field_001B,
      --  8 * TPCLK
      IRDACTRL_PULSEDIV_Field_010B,
      --  16 * TPCLK
      IRDACTRL_PULSEDIV_Field_011B,
      --  32 * TPCLK
      IRDACTRL_PULSEDIV_Field_100B,
      --  64 * TPCLK
      IRDACTRL_PULSEDIV_Field_101B,
      --  128 * TPCLK
      IRDACTRL_PULSEDIV_Field_110B,
      --  256 * TPCLK
      IRDACTRL_PULSEDIV_Field_111B)
     with Size => 3;
   for IRDACTRL_PULSEDIV_Field use
     (IRDACTRL_PULSEDIV_Field_000B => 0,
      IRDACTRL_PULSEDIV_Field_001B => 1,
      IRDACTRL_PULSEDIV_Field_010B => 2,
      IRDACTRL_PULSEDIV_Field_011B => 3,
      IRDACTRL_PULSEDIV_Field_100B => 4,
      IRDACTRL_PULSEDIV_Field_101B => 5,
      IRDACTRL_PULSEDIV_Field_110B => 6,
      IRDACTRL_PULSEDIV_Field_111B => 7);

   --  Offset:0x24 USARTn IrDA Control Register
   type IRDACTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  IrDA serial input inverter
      IRDAINV       : IRDACTRL_IRDAINV_Field := NRF_SVD.USART.No INVERTED;
      --  IrDA fix pulse width mode enable
      FIXPULSEEN    : IRDACTRL_FIXPULSEEN_Field := NRF_SVD.USART.Disable;
      --  Pulse width selection
      PULSEDIV      : IRDACTRL_PULSEDIV_Field :=
                       NRF_SVD.USART.IRDACTRL_PULSEDIV_Field_000B;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRDACTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IRDAINV       at 0 range 1 .. 1;
      FIXPULSEEN    at 0 range 2 .. 2;
      PULSEDIV      at 0 range 3 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FD_DIVADDVAL_Field is HAL.UInt4;

   --  Baud rate generation prescaler multiplier value
   type FD_MULVAL_Field is
     (
      --  Baud rate prescaler multiplier value is 1
      FD_MULVAL_Field_0000B,
      --  Baud rate prescaler multiplier value is 2
      FD_MULVAL_Field_0001B,
      --  Baud rate prescaler multiplier value is 3
      FD_MULVAL_Field_0010B,
      --  Baud rate prescaler multiplier value is 4
      FD_MULVAL_Field_0011B,
      --  Baud rate prescaler multiplier value is 5
      FD_MULVAL_Field_0100B,
      --  Baud rate prescaler multiplier value is 6
      FD_MULVAL_Field_0101B,
      --  Baud rate prescaler multiplier value is 7
      FD_MULVAL_Field_0110B,
      --  Baud rate prescaler multiplier value is 8
      FD_MULVAL_Field_0111B,
      --  Baud rate prescaler multiplier value is 9
      FD_MULVAL_Field_1000B,
      --  Baud rate prescaler multiplier value is 10
      FD_MULVAL_Field_1001B,
      --  Baud rate prescaler multiplier value is 11
      FD_MULVAL_Field_1010B,
      --  Baud rate prescaler multiplier value is 12
      FD_MULVAL_Field_1011B,
      --  Baud rate prescaler multiplier value is 13
      FD_MULVAL_Field_1100B,
      --  Baud rate prescaler multiplier value is 14
      FD_MULVAL_Field_1101B,
      --  Baud rate prescaler multiplier value is 15
      FD_MULVAL_Field_1110B,
      --  Baud rate prescaler multiplier value is 16
      FD_MULVAL_Field_1111B)
     with Size => 4;
   for FD_MULVAL_Field use
     (FD_MULVAL_Field_0000B => 0,
      FD_MULVAL_Field_0001B => 1,
      FD_MULVAL_Field_0010B => 2,
      FD_MULVAL_Field_0011B => 3,
      FD_MULVAL_Field_0100B => 4,
      FD_MULVAL_Field_0101B => 5,
      FD_MULVAL_Field_0110B => 6,
      FD_MULVAL_Field_0111B => 7,
      FD_MULVAL_Field_1000B => 8,
      FD_MULVAL_Field_1001B => 9,
      FD_MULVAL_Field_1010B => 10,
      FD_MULVAL_Field_1011B => 11,
      FD_MULVAL_Field_1100B => 12,
      FD_MULVAL_Field_1101B => 13,
      FD_MULVAL_Field_1110B => 14,
      FD_MULVAL_Field_1111B => 15);

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

   --  Offset:0x28 USARTn Fractional Divider Register
   type FD_Register is record
      --  Baud rate generation prescaler divisor value
      DIVADDVAL     : FD_DIVADDVAL_Field := 16#0#;
      --  Baud rate generation prescaler multiplier value
      MULVAL        : FD_MULVAL_Field := NRF_SVD.USART.FD_MULVAL_Field_0000B;
      --  Oversampling value
      OVER8         : FD_OVER8_Field := NRF_SVD.USART.FD_OVER8_Field_16;
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

   --  USART enable
   type CTRL_USARTEN_Field is
     (
      --  Disable USART
      Disable,
      --  Enable USART
      Enable)
     with Size => 1;
   for CTRL_USARTEN_Field use
     (Disable => 0,
      Enable => 1);

   --  USART mode
   type CTRL_MODE_Field is
     (
      --  UART mode
      Uart,
      --  Modem control mode
      Modem,
      --  IrDA mode
      Irda,
      --  Smart card mode
      Smart CARD,
      --  Synchronous mode
      Synchronous,
      --  RS-485 mode
      Rs-485)
     with Size => 3;
   for CTRL_MODE_Field use
     (Uart => 0,
      Modem => 1,
      Irda => 2,
      Smart CARD => 3,
      Synchronous => 4,
      Rs-485 => 5);

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

   --  Offset:0x30 USARTn Control Register
   type CTRL_Register is record
      --  USART enable
      USARTEN       : CTRL_USARTEN_Field := NRF_SVD.USART.Disable;
      --  USART mode
      MODE          : CTRL_MODE_Field := NRF_SVD.USART.Uart;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  RX enable
      RXEN          : CTRL_RXEN_Field := NRF_SVD.USART.Enable;
      --  TX enable
      TXEN          : CTRL_TXEN_Field := NRF_SVD.USART.Enable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      USARTEN       at 0 range 0 .. 0;
      MODE          at 0 range 1 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      RXEN          at 0 range 6 .. 6;
      TXEN          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Half-duplex mode enable
   type HDEN_HDEN_Field is
     (
      --  Disable half-duplex mode
      Disable,
      --  Enable half-duplex mode
      Enable)
     with Size => 1;
   for HDEN_HDEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x34 USARTn Control Register
   type HDEN_Register is record
      --  Half-duplex mode enable
      HDEN          : HDEN_HDEN_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDEN_Register use record
      HDEN          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  NACK response disable
   type SCICTRL_NACKDIS_Field is
     (
      --  Disable NACK response
      Disable,
      --  Enable NACK response
      Enable)
     with Size => 1;
   for SCICTRL_NACKDIS_Field use
     (Disable => 0,
      Enable => 1);

   --  ISO7816-3 protocol selection
   type SCICTRL_PROTSEL_Field is
     (
      --  T=0
      SCICTRL_PROTSEL_Field_0,
      --  T=1
      SCICTRL_PROTSEL_Field_1)
     with Size => 1;
   for SCICTRL_PROTSEL_Field use
     (SCICTRL_PROTSEL_Field_0 => 0,
      SCICTRL_PROTSEL_Field_1 => 1);

   --  SCLK enable
   type SCICTRL_SCLKEN_Field is
     (
      --  Disable SCLK
      Disable,
      --  Enable SCLK
      Enable)
     with Size => 1;
   for SCICTRL_SCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   subtype SCICTRL_TXRETRY_Field is HAL.UInt3;
   subtype SCICTRL_XTRAGUARD_Field is HAL.UInt8;
   subtype SCICTRL_TC_Field is HAL.UInt8;

   --  Offset:0x38 USARTn Smartcard Interface Control Register
   type SCICTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  NACK response disable
      NACKDIS        : SCICTRL_NACKDIS_Field := NRF_SVD.USART.Disable;
      --  ISO7816-3 protocol selection
      PROTSEL        : SCICTRL_PROTSEL_Field :=
                        NRF_SVD.USART.SCICTRL_PROTSEL_Field_0;
      --  SCLK enable
      SCLKEN         : SCICTRL_SCLKEN_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Maximal number of retransmissions that USART will attempt
      TXRETRY        : SCICTRL_TXRETRY_Field := 16#0#;
      --  Extra guard time
      XTRAGUARD      : SCICTRL_XTRAGUARD_Field := 16#0#;
      --  Count for SCLK clock cycle
      TC             : SCICTRL_TC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCICTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      NACKDIS        at 0 range 1 .. 1;
      PROTSEL        at 0 range 2 .. 2;
      SCLKEN         at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRETRY        at 0 range 5 .. 7;
      XTRAGUARD      at 0 range 8 .. 15;
      TC             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RS-485 normal multidrop mode enable
   type RS485CTRL_NMMEN_Field is
     (
      --  Disable NMM
      Disable,
      --  Enable NMM
      Enable)
     with Size => 1;
   for RS485CTRL_NMMEN_Field use
     (Disable => 0,
      Enable => 1);

   --  RS-485 receiver enable
   type RS485CTRL_RXEN_Field is
     (
      --  Disable RS-485 receiver
      Disable,
      --  Enable RS-485 receiver
      Enable)
     with Size => 1;
   for RS485CTRL_RXEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Auto address detect enable
   type RS485CTRL_AADEN_Field is
     (
      --  Disable AAD
      Disable,
      --  Enable AAD
      Enable)
     with Size => 1;
   for RS485CTRL_AADEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Auto direction control enable
   type RS485CTRL_ADCEN_Field is
     (
      --  Disable ADC
      Disable,
      --  Enable ADC
      Enable)
     with Size => 1;
   for RS485CTRL_ADCEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Polarity control
   type RS485CTRL_OINV_Field is
     (
      --  The direction control pin will be driven to logic 0 when the
      --  transmitter has data to be sent, and be driven to logic 1 after the
      --  last bit of data has been transmitted
      Disable,
      --  The direction control pin will be driven to logic 1 when the
      --  transmitter has data to be sent, and be driven to logic 0 after the
      --  last bit of data has been transmitted
      Enable)
     with Size => 1;
   for RS485CTRL_OINV_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x3C USARTn RS485 Control Register
   type RS485CTRL_Register is record
      --  RS-485 normal multidrop mode enable
      NMMEN         : RS485CTRL_NMMEN_Field := NRF_SVD.USART.Disable;
      --  RS-485 receiver enable
      RXEN          : RS485CTRL_RXEN_Field := NRF_SVD.USART.Disable;
      --  Auto address detect enable
      AADEN         : RS485CTRL_AADEN_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Auto direction control enable
      ADCEN         : RS485CTRL_ADCEN_Field := NRF_SVD.USART.Disable;
      --  Polarity control
      OINV          : RS485CTRL_OINV_Field := NRF_SVD.USART.Disable;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485CTRL_Register use record
      NMMEN         at 0 range 0 .. 0;
      RXEN          at 0 range 1 .. 1;
      AADEN         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      ADCEN         at 0 range 4 .. 4;
      OINV          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RS485ADRMATCH_MATCH_Field is HAL.UInt8;

   --  Offset:0x40 USARTn RS485 Address Match Register
   type RS485ADRMATCH_Register is record
      --  RS-485 address value to be matched
      MATCH         : RS485ADRMATCH_MATCH_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485ADRMATCH_Register use record
      MATCH         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RS485DLYV_DLY_Field is HAL.UInt8;

   --  Offset:0x44 USARTn RS485 Delay Value Register
   type RS485DLYV_Register is record
      --  RTS delay value
      DLY           : RS485DLYV_DLY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485DLYV_Register use record
      DLY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clock polarity selection
   type SYNCCTRL_CPOL_Field is
     (
      --  SCLK idles at low level
      Low,
      --  SCLK idles at high level
      High)
     with Size => 1;
   for SYNCCTRL_CPOL_Field use
     (Low => 0,
      High => 1);

   --  Clock phase for edge sampling
   type SYNCCTRL_CPHA_Field is
     (
      --  Sample on the rising edge of SCLK
      Rising,
      --  Sample on the falling edge of SCLK
      Falling)
     with Size => 1;
   for SYNCCTRL_CPHA_Field use
     (Rising => 0,
      Falling => 1);

   --  Offset:0x48 USARTn Synchronous Mode Control Register
   type SYNCCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Clock polarity selection
      CPOL          : SYNCCTRL_CPOL_Field := NRF_SVD.USART.Low;
      --  Clock phase for edge sampling
      CPHA          : SYNCCTRL_CPHA_Field := NRF_SVD.USART.Rising;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCCTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CPOL          at 0 range 1 .. 1;
      CPHA          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SN_USART0_Disc is
     (
      Mode_1,
      Mode_2,
      Mode_3);

   --  USART0
   type USART_Peripheral
     (Discriminent : SN_USART0_Disc := Mode_1)
   is record
      --  Offset:0x0C USARTn Line Control Register
      LC            : aliased LC_Register;
      --  Offset:0x10 USARTn Modem Control Register
      MC            : aliased MC_Register;
      --  Offset:0x14 USARTn Line Status Register
      LS            : aliased LS_Register;
      --  Offset:0x18 USARTn Modem Status Register
      MS            : aliased MS_Register;
      --  Offset:0x1C USARTn Scratch Pad Register
      SP            : aliased SP_Register;
      --  Offset:0x20 USARTn Auto-baud Control Register
      ABCTRL        : aliased ABCTRL_Register;
      --  Offset:0x24 USARTn IrDA Control Register
      IRDACTRL      : aliased IRDACTRL_Register;
      --  Offset:0x28 USARTn Fractional Divider Register
      FD            : aliased FD_Register;
      --  Offset:0x30 USARTn Control Register
      CTRL          : aliased CTRL_Register;
      --  Offset:0x34 USARTn Control Register
      HDEN          : aliased HDEN_Register;
      --  Offset:0x38 USARTn Smartcard Interface Control Register
      SCICTRL       : aliased SCICTRL_Register;
      --  Offset:0x3C USARTn RS485 Control Register
      RS485CTRL     : aliased RS485CTRL_Register;
      --  Offset:0x40 USARTn RS485 Address Match Register
      RS485ADRMATCH : aliased RS485ADRMATCH_Register;
      --  Offset:0x44 USARTn RS485 Delay Value Register
      RS485DLYV     : aliased RS485DLYV_Register;
      --  Offset:0x48 USARTn Synchronous Mode Control Register
      SYNCCTRL      : aliased SYNCCTRL_Register;
      case Discriminent is
         when Mode_1 =>
            --  Offset:0x00 USARTn Receiver Buffer Register
            RB : aliased RB_Register;
            --  Offset:0x04 USARTn Divisor Latch MSB Register
            DLM : aliased DLM_Register;
            --  Offset:0x08 USARTn Interrupt Identification Register
            II : aliased II_Register;
         when Mode_2 =>
            --  Offset:0x00 USARTn Transmit Holding Register
            TH : aliased TH_Register;
            --  Offset:0x04 USARTn Interrupt Enable Register
            IE : aliased IE_Register;
            --  Offset:0x08 USARTn FIFO Control Register
            FIFOCTRL : aliased FIFOCTRL_Register;
         when Mode_3 =>
            --  Offset:0x00 USARTn Divisor Latch LSB Register
            DLL : aliased DLL_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      LC            at 16#C# range 0 .. 31;
      MC            at 16#10# range 0 .. 31;
      LS            at 16#14# range 0 .. 31;
      MS            at 16#18# range 0 .. 31;
      SP            at 16#1C# range 0 .. 31;
      ABCTRL        at 16#20# range 0 .. 31;
      IRDACTRL      at 16#24# range 0 .. 31;
      FD            at 16#28# range 0 .. 31;
      CTRL          at 16#30# range 0 .. 31;
      HDEN          at 16#34# range 0 .. 31;
      SCICTRL       at 16#38# range 0 .. 31;
      RS485CTRL     at 16#3C# range 0 .. 31;
      RS485ADRMATCH at 16#40# range 0 .. 31;
      RS485DLYV     at 16#44# range 0 .. 31;
      SYNCCTRL      at 16#48# range 0 .. 31;
      RB            at 16#0# range 0 .. 31;
      DLM           at 16#4# range 0 .. 31;
      II            at 16#8# range 0 .. 31;
      TH            at 16#0# range 0 .. 31;
      IE            at 16#4# range 0 .. 31;
      FIFOCTRL      at 16#8# range 0 .. 31;
      DLL           at 16#0# range 0 .. 31;
   end record;

   --  USART0
   SN_USART0_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40016000#);

   --  USART0
   SN_USART1_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40056000#);

end NRF_SVD.USART;
