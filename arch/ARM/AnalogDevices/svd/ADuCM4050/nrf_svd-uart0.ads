--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.UART0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RX_RBR_Field is HAL.UInt8;

   --  Receive Buffer Register
   type RX_Register is record
      --  Read-only. Receive Buffer Register
      RBR           : RX_RBR_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RX_Register use record
      RBR           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TX_THR_Field is HAL.UInt8;

   --  Transmit Holding Register
   type TX_Register is record
      --  Write-only. Transmit Holding Register
      THR           : TX_THR_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TX_Register use record
      THR           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Interrupt Enable
   type IEN_Register is record
      --  Receive Buffer Full Interrupt
      ERBFI         : Boolean := False;
      --  Transmit Buffer Empty Interrupt
      ETBEI         : Boolean := False;
      --  Rx Status Interrupt
      ELSI          : Boolean := False;
      --  Modem Status Interrupt
      EDSSI         : Boolean := False;
      --  DMA Requests in Transmit Mode
      EDMAT         : Boolean := False;
      --  DMA Requests in Receive Mode
      EDMAR         : Boolean := False;
      --  unspecified
      Reserved_6_15 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      ERBFI         at 0 range 0 .. 0;
      ETBEI         at 0 range 1 .. 1;
      ELSI          at 0 range 2 .. 2;
      EDSSI         at 0 range 3 .. 3;
      EDMAT         at 0 range 4 .. 4;
      EDMAR         at 0 range 5 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   --  Interrupt Status
   type IIR_STAT_Field is
     (
      --  Modem status interrupt (Read MSR register to clear)
      Stat_Edssi,
      --  Transmit buffer empty interrupt (Write to Tx register or read IIR
      --  register to clear)
      Stat_Etbei,
      --  Receive buffer full interrupt (Read Rx register to clear)
      Stat_Erbfi,
      --  Receive line status interrupt (Read LSR register to clear)
      Stat_Rlsi,
      --  Receive FIFO time-out interrupt (Read Rx register to clear)
      Stat_Rftoi)
     with Size => 3;
   for IIR_STAT_Field use
     (Stat_Edssi => 0,
      Stat_Etbei => 1,
      Stat_Erbfi => 2,
      Stat_Rlsi => 3,
      Stat_Rftoi => 6);

   subtype IIR_FEND_Field is HAL.UInt2;

   --  Interrupt ID
   type IIR_Register is record
      --  Read-only. Interrupt Flag
      NIRQ          : Boolean;
      --  Read-only. Interrupt Status
      STAT          : IIR_STAT_Field;
      --  unspecified
      Reserved_4_5  : HAL.UInt2;
      --  Read-only. FIFO Enabled
      FEND          : IIR_FEND_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for IIR_Register use record
      NIRQ          at 0 range 0 .. 0;
      STAT          at 0 range 1 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FEND          at 0 range 6 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype LCR_WLS_Field is HAL.UInt2;

   --  Stick Parity
   type LCR_SP_Field is
     (
      --  Parity will not be forced based on Parity Select and Parity Enable
      --  bits.
      Par_Notforced,
      --  Parity forced based on Parity Select and Parity Enable bits.
      Par_Forced)
     with Size => 1;
   for LCR_SP_Field use
     (Par_Notforced => 0,
      Par_Forced => 1);

   --  Line Control
   type LCR_Register is record
      --  Word Length Select
      WLS           : LCR_WLS_Field := 16#0#;
      --  Stop Bit
      STOP          : Boolean := False;
      --  Parity Enable
      PEN           : Boolean := False;
      --  Parity Select
      EPS           : Boolean := False;
      --  Stick Parity
      SP            : LCR_SP_Field := NRF_SVD.UART0.Par_Notforced;
      --  Set Break
      BRK           : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LCR_Register use record
      WLS           at 0 range 0 .. 1;
      STOP          at 0 range 2 .. 2;
      PEN           at 0 range 3 .. 3;
      EPS           at 0 range 4 .. 4;
      SP            at 0 range 5 .. 5;
      BRK           at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   --  MCR_OUT array
   type MCR_OUT_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MCR_OUT
   type MCR_OUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUT as a value
            Val : HAL.UInt2;
         when True =>
            --  OUT as an array
            Arr : MCR_OUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MCR_OUT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Modem Control
   type MCR_Register is record
      --  Data Terminal Ready
      DTR           : Boolean := False;
      --  Request to Send
      RTS           : Boolean := False;
      --  Output 1
      OUT_k         : MCR_OUT_Field := (As_Array => False, Val => 16#0#);
      --  Loopback Mode
      LOOPBACK      : Boolean := False;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      DTR           at 0 range 0 .. 0;
      RTS           at 0 range 1 .. 1;
      OUT_k         at 0 range 2 .. 3;
      LOOPBACK      at 0 range 4 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   --  Line Status
   type LSR_Register is record
      --  Read-only. Data Ready
      DR            : Boolean;
      --  Read-only. Overrun Error
      OE            : Boolean;
      --  Read-only. Parity Error
      PE            : Boolean;
      --  Read-only. Framing Error
      FE            : Boolean;
      --  Read-only. Break Indicator
      BI            : Boolean;
      --  Read-only. Transmit Register Empty
      THRE          : Boolean;
      --  Read-only. Transmit and Shift Register Empty Status
      TEMT          : Boolean;
      --  Read-only. Rx FIFO Parity Error/Frame Error/Break Indication
      FIFOERR       : Boolean;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LSR_Register use record
      DR            at 0 range 0 .. 0;
      OE            at 0 range 1 .. 1;
      PE            at 0 range 2 .. 2;
      FE            at 0 range 3 .. 3;
      BI            at 0 range 4 .. 4;
      THRE          at 0 range 5 .. 5;
      TEMT          at 0 range 6 .. 6;
      FIFOERR       at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Modem Status
   type MSR_Register is record
      --  Read-only. Delta CTS
      DCTS          : Boolean;
      --  Read-only. Delta DSR
      DDSR          : Boolean;
      --  Read-only. Trailing Edge RI
      TERI          : Boolean;
      --  Read-only. Delta DCD
      DDCD          : Boolean;
      --  Read-only. Clear to Send
      CTS           : Boolean;
      --  Read-only. Data Set Ready
      DSR           : Boolean;
      --  Read-only. Ring Indicator
      RI            : Boolean;
      --  Read-only. Data Carrier Detect
      DCD           : Boolean;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MSR_Register use record
      DCTS          at 0 range 0 .. 0;
      DDSR          at 0 range 1 .. 1;
      TERI          at 0 range 2 .. 2;
      DDCD          at 0 range 3 .. 3;
      CTS           at 0 range 4 .. 4;
      DSR           at 0 range 5 .. 5;
      RI            at 0 range 6 .. 6;
      DCD           at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype SCR_SCR_Field is HAL.UInt8;

   --  Scratch Buffer
   type SCR_Register is record
      --  Scratch
      SCR           : SCR_SCR_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      SCR           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  FIFO DMA Mode
   type FCR_FDMAMD_Field is
     (
      --  In DMA mode 0, RX DMA request will be asserted whenever there's data
      --  in RBR or RX FIFO and de-assert whenever RBR or RX FIFO is empty; TX
      --  DMA request will be asserted whenever THR or TX FIFO is empty and
      --  de-assert whenever data written to.
      Mode0,
      --  in DMA mode 1, RX DMA request will be asserted whenever RX FIFO trig
      --  level or time out reached and de-assert thereafter when RX FIFO is
      --  empty; TX DMA request will be asserted whenever TX FIFO is empty and
      --  de-assert thereafter when TX FIFO is completely filled up full.
      Mode1)
     with Size => 1;
   for FCR_FDMAMD_Field use
     (Mode0 => 0,
      Mode1 => 1);

   subtype FCR_RFTRIG_Field is HAL.UInt2;

   --  FIFO Control
   type FCR_Register is record
      --  FIFO Enable as to Work in 16550 Mode
      FIFOEN        : Boolean := False;
      --  Write-only. Clear Rx FIFO
      RFCLR         : Boolean := False;
      --  Write-only. Clear Tx FIFO
      TFCLR         : Boolean := False;
      --  FIFO DMA Mode
      FDMAMD        : FCR_FDMAMD_Field := NRF_SVD.UART0.Mode0;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Rx FIFO Trigger Level
      RFTRIG        : FCR_RFTRIG_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      FIFOEN        at 0 range 0 .. 0;
      RFCLR         at 0 range 1 .. 1;
      TFCLR         at 0 range 2 .. 2;
      FDMAMD        at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      RFTRIG        at 0 range 6 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype FBR_DIVN_Field is HAL.UInt11;
   subtype FBR_DIVM_Field is HAL.UInt2;

   --  Fractional Baud Rate
   type FBR_Register is record
      --  Fractional Baud Rate N Divide Bits 0 to 2047
      DIVN           : FBR_DIVN_Field := 16#0#;
      --  Fractional Baud Rate M Divide Bits 1 to 3
      DIVM           : FBR_DIVM_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Fractional Baud Rate Generator Enable
      FBEN           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FBR_Register use record
      DIVN           at 0 range 0 .. 10;
      DIVM           at 0 range 11 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FBEN           at 0 range 15 .. 15;
   end record;

   subtype LCR2_OSR_Field is HAL.UInt2;

   --  Second Line Control
   type LCR2_Register is record
      --  Over Sample Rate
      OSR           : LCR2_OSR_Field := 16#2#;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LCR2_Register use record
      OSR           at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  Invert Receiver Line
   type CTL_RXINV_Field is
     (
      --  Don't invert receiver line (idling high).
      Notinv_Rx,
      --  Invert receiver line (idling low).
      Inv_Rx)
     with Size => 1;
   for CTL_RXINV_Field use
     (Notinv_Rx => 0,
      Inv_Rx => 1);

   subtype CTL_REV_Field is HAL.UInt8;

   --  UART Control Register
   type CTL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Force UCLK on
      FORCECLK     : Boolean := False;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Invert Receiver Line
      RXINV        : CTL_RXINV_Field := NRF_SVD.UART0.Notinv_Rx;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
      --  Read-only. UART Revision ID
      REV          : CTL_REV_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      FORCECLK     at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      RXINV        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
      REV          at 0 range 8 .. 15;
   end record;

   subtype RFC_RFC_Field is HAL.UInt5;

   --  RX FIFO Byte Count
   type RFC_Register is record
      --  Read-only. Current Rx FIFO Data Bytes
      RFC           : RFC_RFC_Field;
      --  unspecified
      Reserved_5_15 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RFC_Register use record
      RFC           at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype TFC_TFC_Field is HAL.UInt5;

   --  TX FIFO Byte Count
   type TFC_Register is record
      --  Read-only. Current Tx FIFO Data Bytes
      TFC           : TFC_TFC_Field;
      --  unspecified
      Reserved_5_15 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TFC_Register use record
      TFC           at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   --  RS485 Half-duplex Control
   type RSC_Register is record
      --  SOUT_EN Polarity
      OENP          : Boolean := False;
      --  SOUT_EN De-assert Before Full Stop Bit(s)
      OENSP         : Boolean := False;
      --  Disable Rx When Transmitting
      DISRX         : Boolean := False;
      --  Hold off Tx When Receiving
      DISTX         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RSC_Register use record
      OENP          at 0 range 0 .. 0;
      OENSP         at 0 range 1 .. 1;
      DISRX         at 0 range 2 .. 2;
      DISTX         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  Auto Baud Enable
   type ACR_ABE_Field is
     (
      --  Disable auto baudrate
      Dis_Autobaud,
      --  Enable auto baudrate
      En_Autobaud)
     with Size => 1;
   for ACR_ABE_Field use
     (Dis_Autobaud => 0,
      En_Autobaud => 1);

   --  Enable Done Interrupt
   type ACR_DNIEN_Field is
     (
      --  Disable done interrupt
      Dis_Doneint,
      --  Enable done interrupt
      En_Doneint)
     with Size => 1;
   for ACR_DNIEN_Field use
     (Dis_Doneint => 0,
      En_Doneint => 1);

   --  Enable Time-out Interrupt
   type ACR_TOIEN_Field is
     (
      --  Disable timeout interrupt
      Dis_Timeoutint,
      --  Enable timeout interrupt
      En_Timeoutint)
     with Size => 1;
   for ACR_TOIEN_Field use
     (Dis_Timeoutint => 0,
      En_Timeoutint => 1);

   --  Starting Edge Count
   type ACR_SEC_Field is
     (
      --  First edge
      Sec_Edge1,
      --  Second edge
      Sec_Edge2,
      --  Third edge
      Sec_Edge3,
      --  Fourth edge
      Sec_Edge4,
      --  Fifth edge
      Sec_Edge5,
      --  Sixth edge
      Sec_Edge6,
      --  Seventh edge
      Sec_Edge7,
      --  Eighth edge
      Sec_Edge8)
     with Size => 3;
   for ACR_SEC_Field use
     (Sec_Edge1 => 0,
      Sec_Edge2 => 1,
      Sec_Edge3 => 2,
      Sec_Edge4 => 3,
      Sec_Edge5 => 4,
      Sec_Edge6 => 5,
      Sec_Edge7 => 6,
      Sec_Edge8 => 7);

   --  Ending Edge Count
   type ACR_EEC_Field is
     (
      --  First edge
      Eec_Edge1,
      --  Second edge
      Eec_Edge2,
      --  Third edge
      Eec_Edge3,
      --  Fourth edge
      Eec_Edge4,
      --  Fifth edge
      Eec_Edge5,
      --  Sixth edge
      Eec_Edge6,
      --  Seventh edge
      Eec_Edge7,
      --  Eighth edge
      Eec_Edge8,
      --  Ninth edge
      Eec_Edge9)
     with Size => 4;
   for ACR_EEC_Field use
     (Eec_Edge1 => 0,
      Eec_Edge2 => 1,
      Eec_Edge3 => 2,
      Eec_Edge4 => 3,
      Eec_Edge5 => 4,
      Eec_Edge6 => 5,
      Eec_Edge7 => 6,
      Eec_Edge8 => 7,
      Eec_Edge9 => 8);

   --  Auto Baud Control
   type ACR_Register is record
      --  Auto Baud Enable
      ABE            : ACR_ABE_Field := NRF_SVD.UART0.Dis_Autobaud;
      --  Enable Done Interrupt
      DNIEN          : ACR_DNIEN_Field := NRF_SVD.UART0.Dis_Doneint;
      --  Enable Time-out Interrupt
      TOIEN          : ACR_TOIEN_Field := NRF_SVD.UART0.Dis_Timeoutint;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Starting Edge Count
      SEC            : ACR_SEC_Field := NRF_SVD.UART0.Sec_Edge1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Ending Edge Count
      EEC            : ACR_EEC_Field := NRF_SVD.UART0.Eec_Edge1;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      ABE            at 0 range 0 .. 0;
      DNIEN          at 0 range 1 .. 1;
      TOIEN          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SEC            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EEC            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ASRL_CNT_Field is HAL.UInt12;

   --  Auto Baud Status (Low)
   type ASRL_Register is record
      --  Read-only. Auto Baud Done Successfully
      DONE  : Boolean;
      --  Read-only. Timed Out Due to Long Time Break Condition
      BRKTO : Boolean;
      --  Read-only. Timed Out Due to No Valid Start Edge Found
      NSETO : Boolean;
      --  Read-only. Timed Out Due to No Valid Ending Edge Found
      NEETO : Boolean;
      --  Read-only. CNT[11:0] Auto Baud Counter Value
      CNT   : ASRL_CNT_Field;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ASRL_Register use record
      DONE  at 0 range 0 .. 0;
      BRKTO at 0 range 1 .. 1;
      NSETO at 0 range 2 .. 2;
      NEETO at 0 range 3 .. 3;
      CNT   at 0 range 4 .. 15;
   end record;

   subtype ASRH_CNT_Field is HAL.UInt8;

   --  Auto Baud Status (High)
   type ASRH_Register is record
      --  Read-only. CNT[19:12] Auto Baud Counter Value
      CNT           : ASRH_CNT_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ASRH_Register use record
      CNT           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART0_Disc is
     (
      Mode_1,
      Mode_2);

   --  Universal Asynchronous Receiver/Transmitter
   type UART0_Peripheral
     (Discriminent : UART0_Disc := Mode_1)
   is record
      --  Interrupt Enable
      IEN  : aliased IEN_Register;
      --  Interrupt ID
      IIR  : aliased IIR_Register;
      --  Line Control
      LCR  : aliased LCR_Register;
      --  Modem Control
      MCR  : aliased MCR_Register;
      --  Line Status
      LSR  : aliased LSR_Register;
      --  Modem Status
      MSR  : aliased MSR_Register;
      --  Scratch Buffer
      SCR  : aliased SCR_Register;
      --  FIFO Control
      FCR  : aliased FCR_Register;
      --  Fractional Baud Rate
      FBR  : aliased FBR_Register;
      --  Baud Rate Divider
      DIV  : aliased HAL.UInt16;
      --  Second Line Control
      LCR2 : aliased LCR2_Register;
      --  UART Control Register
      CTL  : aliased CTL_Register;
      --  RX FIFO Byte Count
      RFC  : aliased RFC_Register;
      --  TX FIFO Byte Count
      TFC  : aliased TFC_Register;
      --  RS485 Half-duplex Control
      RSC  : aliased RSC_Register;
      --  Auto Baud Control
      ACR  : aliased ACR_Register;
      --  Auto Baud Status (Low)
      ASRL : aliased ASRL_Register;
      --  Auto Baud Status (High)
      ASRH : aliased ASRH_Register;
      case Discriminent is
         when Mode_1 =>
            --  Receive Buffer Register
            RX : aliased RX_Register;
         when Mode_2 =>
            --  Transmit Holding Register
            TX : aliased TX_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART0_Peripheral use record
      IEN  at 16#4# range 0 .. 15;
      IIR  at 16#8# range 0 .. 15;
      LCR  at 16#C# range 0 .. 15;
      MCR  at 16#10# range 0 .. 15;
      LSR  at 16#14# range 0 .. 15;
      MSR  at 16#18# range 0 .. 15;
      SCR  at 16#1C# range 0 .. 15;
      FCR  at 16#20# range 0 .. 15;
      FBR  at 16#24# range 0 .. 15;
      DIV  at 16#28# range 0 .. 15;
      LCR2 at 16#2C# range 0 .. 15;
      CTL  at 16#30# range 0 .. 15;
      RFC  at 16#34# range 0 .. 15;
      TFC  at 16#38# range 0 .. 15;
      RSC  at 16#3C# range 0 .. 15;
      ACR  at 16#40# range 0 .. 15;
      ASRL at 16#44# range 0 .. 15;
      ASRH at 16#48# range 0 .. 15;
      RX   at 16#0# range 0 .. 15;
      TX   at 16#0# range 0 .. 15;
   end record;

   --  Universal Asynchronous Receiver/Transmitter
   UART0_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

   --  Universal Asynchronous Receiver/Transmitter
   UART1_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#40005400#);

end NRF_SVD.UART0;
