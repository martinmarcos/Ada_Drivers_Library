--

--  This spec has been automatically generated from CM41x_M0.svd

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

   --  Enable UART
   type CTL_EN_Field is
     (
      --  Disable
      Clk_Dis,
      --  Enable
      Clk_En)
     with Size => 1;
   for CTL_EN_Field use
     (Clk_Dis => 0,
      Clk_En => 1);

   --  Loopback Enable
   type CTL_LOOP_EN_Field is
     (
      --  Disable
      Loop_Dis,
      --  Enable
      Loop_En)
     with Size => 1;
   for CTL_LOOP_EN_Field use
     (Loop_Dis => 0,
      Loop_En => 1);

   --  Mode of Operation
   type CTL_MOD_Field is
     (
      --  UART mode
      Uart_Mode,
      --  MDB mode
      Mdb_Mode,
      --  IrDA SIR mode
      Irda_Mode)
     with Size => 2;
   for CTL_MOD_Field use
     (Uart_Mode => 0,
      Mdb_Mode => 1,
      Irda_Mode => 2);

   --  Word Length Select
   type CTL_WLS_Field is
     (
      --  5-bit word
      Wl5Bits,
      --  6-bit word
      Wl6Bits,
      --  7-bit word
      Wl7Bits,
      --  8-bit word
      Wl8Bits)
     with Size => 2;
   for CTL_WLS_Field use
     (Wl5Bits => 0,
      Wl6Bits => 1,
      Wl7Bits => 2,
      Wl8Bits => 3);

   --  Stop Bits
   type CTL_STB_Field is
     (
      --  1 stop bit
      No_Extra_Stb,
      --  2 stop bits
      One_Extra_Stb)
     with Size => 1;
   for CTL_STB_Field use
     (No_Extra_Stb => 0,
      One_Extra_Stb => 1);

   --  Stop Bits (Half Bit Time)
   type CTL_STBH_Field is
     (
      --  0 half-bit-time stop bit
      No_Extra_Stbh,
      --  1 half-bit-time stop bit
      One_Extra_Stbh)
     with Size => 1;
   for CTL_STBH_Field use
     (No_Extra_Stbh => 0,
      One_Extra_Stbh => 1);

   --  Parity Enable
   type CTL_PEN_Field is
     (
      --  Disable
      Parity_Dis,
      --  Enable parity transmit and check
      Parity_En)
     with Size => 1;
   for CTL_PEN_Field use
     (Parity_Dis => 0,
      Parity_En => 1);

   --  Even Parity Select
   type CTL_EPS_Field is
     (
      --  Odd parity
      Odd_Parity,
      --  Even parity
      Even_Parity)
     with Size => 1;
   for CTL_EPS_Field use
     (Odd_Parity => 0,
      Even_Parity => 1);

   --  Sticky Parity
   type CTL_STP_Field is
     (
      --  No forced parity
      Norm_Parity,
      --  Force (Stick) parity to defined value (if PEN=1)
      Sticky_Parity)
     with Size => 1;
   for CTL_STP_Field use
     (Norm_Parity => 0,
      Sticky_Parity => 1);

   --  Force Parity Error on Transmit
   type CTL_FPE_Field is
     (
      --  Normal operation
      Norm_Parity_Err,
      --  Force parity error
      Force_Parity_Err)
     with Size => 1;
   for CTL_FPE_Field use
     (Norm_Parity_Err => 0,
      Force_Parity_Err => 1);

   --  Force Framing Error on Transmit
   type CTL_FFE_Field is
     (
      --  Normal operation
      Norm_Frm_Err,
      --  Force error
      Force_Frm_Err)
     with Size => 1;
   for CTL_FFE_Field use
     (Norm_Frm_Err => 0,
      Force_Frm_Err => 1);

   --  Set Break
   type CTL_SB_Field is
     (
      --  No force
      Norm_Break,
      --  Force TX pin to 0
      Force_Break)
     with Size => 1;
   for CTL_SB_Field use
     (Norm_Break => 0,
      Force_Break => 1);

   --  Flow Control Pin Polarity
   type CTL_FCPOL_Field is
     (
      --  Active low CTS/RTS
      Fcpol_Lo,
      --  Active high CTS/RTS
      Fcpol_Hi)
     with Size => 1;
   for CTL_FCPOL_Field use
     (Fcpol_Lo => 0,
      Fcpol_Hi => 1);

   --  IrDA RX Polarity Change
   type CTL_RPOLC_Field is
     (
      --  Active-low RX polarity setting
      Rpolc_Lo,
      --  Active-high RX polarity setting
      Rpolc_Hi)
     with Size => 1;
   for CTL_RPOLC_Field use
     (Rpolc_Lo => 0,
      Rpolc_Hi => 1);

   --  IrDA TX Polarity Change
   type CTL_TPOLC_Field is
     (
      --  Active-low TX polarity setting
      Tpolc_Lo,
      --  Active-high TX polarity setting
      Tpolc_Hi)
     with Size => 1;
   for CTL_TPOLC_Field use
     (Tpolc_Lo => 0,
      Tpolc_Hi => 1);

   --  Manual Request to Send
   type CTL_MRTS_Field is
     (
      --  Deassert RTS pin when ARTS=0
      Rts_Deassert,
      --  Assert RTS pin when ARTS=0
      Rts_Assert)
     with Size => 1;
   for CTL_MRTS_Field use
     (Rts_Deassert => 0,
      Rts_Assert => 1);

   --  Transmitter off
   type CTL_XOFF_Field is
     (
      --  Transmission ON, if ACTS=0
      Tx_On,
      --  Transmission OFF, if ACTS=0
      Tx_Off)
     with Size => 1;
   for CTL_XOFF_Field use
     (Tx_On => 0,
      Tx_Off => 1);

   --  Automatic RTS
   type CTL_ARTS_Field is
     (
      --  Disable RX handshaking protocol.
      Rts_Man,
      --  Enable RX handshaking protocol.
      Rts_Auto)
     with Size => 1;
   for CTL_ARTS_Field use
     (Rts_Man => 0,
      Rts_Auto => 1);

   --  Automatic CTS
   type CTL_ACTS_Field is
     (
      --  Disable TX handshaking protocol
      Cts_Man,
      --  Enable TX handshaking protocol
      Cts_Auto)
     with Size => 1;
   for CTL_ACTS_Field use
     (Cts_Man => 0,
      Cts_Auto => 1);

   --  Receive FIFO IRQ Threshold
   type CTL_RFIT_Field is
     (
      --  Set RFCS=1 if RX FIFO count >= 4
      Rx_Irq_Th4,
      --  Set RFCS=1 if RX FIFO count >= 7
      Rx_Irq_Th7)
     with Size => 1;
   for CTL_RFIT_Field use
     (Rx_Irq_Th4 => 0,
      Rx_Irq_Th7 => 1);

   --  Receive FIFO RTS Threshold
   type CTL_RFRT_Field is
     (
      --  Deassert RTS if RX FIFO word count > 4; assert if <= 4
      Rx_Rts_Th4,
      --  Deassert RTS if RX FIFO word count > 7; assert if <= 7
      Rx_Rts_Th7)
     with Size => 1;
   for CTL_RFRT_Field use
     (Rx_Rts_Th4 => 0,
      Rx_Rts_Th7 => 1);

   --  Control Register
   type CTL_Register is record
      --  Enable UART
      EN             : CTL_EN_Field := NRF_SVD.UART0.Clk_Dis;
      --  Loopback Enable
      LOOP_EN        : CTL_LOOP_EN_Field := NRF_SVD.UART0.Loop_Dis;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Mode of Operation
      MOD_k          : CTL_MOD_Field := NRF_SVD.UART0.Uart_Mode;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Word Length Select
      WLS            : CTL_WLS_Field := NRF_SVD.UART0.Wl5Bits;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Stop Bits
      STB            : CTL_STB_Field := NRF_SVD.UART0.No_Extra_Stb;
      --  Stop Bits (Half Bit Time)
      STBH           : CTL_STBH_Field := NRF_SVD.UART0.No_Extra_Stbh;
      --  Parity Enable
      PEN            : CTL_PEN_Field := NRF_SVD.UART0.Parity_Dis;
      --  Even Parity Select
      EPS            : CTL_EPS_Field := NRF_SVD.UART0.Odd_Parity;
      --  Sticky Parity
      STP            : CTL_STP_Field := NRF_SVD.UART0.Norm_Parity;
      --  Force Parity Error on Transmit
      FPE            : CTL_FPE_Field := NRF_SVD.UART0.Norm_Parity_Err;
      --  Force Framing Error on Transmit
      FFE            : CTL_FFE_Field := NRF_SVD.UART0.Norm_Frm_Err;
      --  Set Break
      SB             : CTL_SB_Field := NRF_SVD.UART0.Norm_Break;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Flow Control Pin Polarity
      FCPOL          : CTL_FCPOL_Field := NRF_SVD.UART0.Fcpol_Lo;
      --  IrDA RX Polarity Change
      RPOLC          : CTL_RPOLC_Field := NRF_SVD.UART0.Rpolc_Lo;
      --  IrDA TX Polarity Change
      TPOLC          : CTL_TPOLC_Field := NRF_SVD.UART0.Tpolc_Lo;
      --  Manual Request to Send
      MRTS           : CTL_MRTS_Field := NRF_SVD.UART0.Rts_Deassert;
      --  Transmitter off
      XOFF           : CTL_XOFF_Field := NRF_SVD.UART0.Tx_On;
      --  Automatic RTS
      ARTS           : CTL_ARTS_Field := NRF_SVD.UART0.Rts_Man;
      --  Automatic CTS
      ACTS           : CTL_ACTS_Field := NRF_SVD.UART0.Cts_Man;
      --  Receive FIFO IRQ Threshold
      RFIT           : CTL_RFIT_Field := NRF_SVD.UART0.Rx_Irq_Th4;
      --  Receive FIFO RTS Threshold
      RFRT           : CTL_RFRT_Field := NRF_SVD.UART0.Rx_Rts_Th4;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN             at 0 range 0 .. 0;
      LOOP_EN        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      MOD_k          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WLS            at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      STB            at 0 range 12 .. 12;
      STBH           at 0 range 13 .. 13;
      PEN            at 0 range 14 .. 14;
      EPS            at 0 range 15 .. 15;
      STP            at 0 range 16 .. 16;
      FPE            at 0 range 17 .. 17;
      FFE            at 0 range 18 .. 18;
      SB             at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      FCPOL          at 0 range 22 .. 22;
      RPOLC          at 0 range 23 .. 23;
      TPOLC          at 0 range 24 .. 24;
      MRTS           at 0 range 25 .. 25;
      XOFF           at 0 range 26 .. 26;
      ARTS           at 0 range 27 .. 27;
      ACTS           at 0 range 28 .. 28;
      RFIT           at 0 range 29 .. 29;
      RFRT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Data Ready
   type STAT_DR_Field is
     (
      --  No new data
      No_Data,
      --  New data in RBR
      New_Data)
     with Size => 1;
   for STAT_DR_Field use
     (No_Data => 0,
      New_Data => 1);

   --  Overrun Error
   type STAT_OE_Field is
     (
      --  No overrun
      No_Ovr_Err,
      --  Overrun error
      Ovr_Err)
     with Size => 1;
   for STAT_OE_Field use
     (No_Ovr_Err => 0,
      Ovr_Err => 1);

   --  Parity Error
   type STAT_PE_Field is
     (
      --  No parity error
      No_Parity_Err,
      --  Parity error
      Parity_Err)
     with Size => 1;
   for STAT_PE_Field use
     (No_Parity_Err => 0,
      Parity_Err => 1);

   --  Framing Error
   type STAT_FE_Field is
     (
      --  No error
      No_Framing_Err,
      --  Invalid stop bit error
      Framing_Err)
     with Size => 1;
   for STAT_FE_Field use
     (No_Framing_Err => 0,
      Framing_Err => 1);

   --  Break Indicator
   type STAT_BI_Field is
     (
      --  No break interrupt
      No_Break_Int,
      --  Break interrupt
      Break_Int)
     with Size => 1;
   for STAT_BI_Field use
     (No_Break_Int => 0,
      Break_Int => 1);

   --  Transmit Hold Register Empty
   type STAT_THRE_Field is
     (
      --  Not empty THR/TAIP
      Thr_Not_Empty,
      --  Empty THR/TAIP
      Thr_Empty)
     with Size => 1;
   for STAT_THRE_Field use
     (Thr_Not_Empty => 0,
      Thr_Empty => 1);

   --  TSR and THR Empty
   type STAT_TEMT_Field is
     (
      --  Not empty TSR/THR
      Tx_Not_Empty,
      --  TSR/THR Empty
      Tx_Empty)
     with Size => 1;
   for STAT_TEMT_Field use
     (Tx_Not_Empty => 0,
      Tx_Empty => 1);

   --  Transmission Finished Indicator
   type STAT_TFI_Field is
     (
      --  TEMT did not transition from 0 to 1
      Tx_Not_Done,
      --  TEMT transition from 0 to 1
      Tx_Done)
     with Size => 1;
   for STAT_TFI_Field use
     (Tx_Not_Done => 0,
      Tx_Done => 1);

   --  Address Sticky
   type STAT_ASTKY_Field is
     (
      --  ADDR bit has not been set
      Addr_Lo_Stky,
      --  ADDR bit has been set
      Addr_Hi_Stky)
     with Size => 1;
   for STAT_ASTKY_Field use
     (Addr_Lo_Stky => 0,
      Addr_Hi_Stky => 1);

   --  Address Bit Status
   type STAT_ADDR_Field is
     (
      --  Address bit is low
      Addr_Lo,
      --  Address bit is high
      Addr_Hi)
     with Size => 1;
   for STAT_ADDR_Field use
     (Addr_Lo => 0,
      Addr_Hi => 1);

   --  Reception On-going
   type STAT_RO_Field is
     (
      --  No data reception in progress
      No_Rx_Progress,
      --  Data reception in progress
      Rx_Progress)
     with Size => 1;
   for STAT_RO_Field use
     (No_Rx_Progress => 0,
      Rx_Progress => 1);

   --  Sticky CTS
   type STAT_SCTS_Field is
     (
      --  CTS has not transitioned from low to high
      Cts_Lo_Stky,
      --  CTS has transitioned from low to high
      Cts_Hi_Stky)
     with Size => 1;
   for STAT_SCTS_Field use
     (Cts_Lo_Stky => 0,
      Cts_Hi_Stky => 1);

   --  Clear to Send
   type STAT_CTS_Field is
     (
      --  Not clear to send (External device not ready to receive)
      Cts_Lo,
      --  Clear to send (External device ready to receive)
      Cts_Hi)
     with Size => 1;
   for STAT_CTS_Field use
     (Cts_Lo => 0,
      Cts_Hi => 1);

   --  Receive FIFO Count Status
   type STAT_RFCS_Field is
     (
      --  RX FIFO has less than 4 (7) entries when RFIT=0 (1)
      Rfcs_Lo,
      --  RX FIFO has at least 4 (7) entries when RFIT=0 (1)
      Rfcs_Hi)
     with Size => 1;
   for STAT_RFCS_Field use
     (Rfcs_Lo => 0,
      Rfcs_Hi => 1);

   --  Status Register
   type STAT_Register is record
      --  Read-only. Data Ready
      DR             : STAT_DR_Field := NRF_SVD.UART0.No_Data;
      --  Overrun Error
      OE             : STAT_OE_Field := NRF_SVD.UART0.No_Ovr_Err;
      --  Parity Error
      PE             : STAT_PE_Field := NRF_SVD.UART0.No_Parity_Err;
      --  Framing Error
      FE             : STAT_FE_Field := NRF_SVD.UART0.No_Framing_Err;
      --  Break Indicator
      BI             : STAT_BI_Field := NRF_SVD.UART0.No_Break_Int;
      --  Read-only. Transmit Hold Register Empty
      THRE           : STAT_THRE_Field := NRF_SVD.UART0.Thr_Empty;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Read-only. TSR and THR Empty
      TEMT           : STAT_TEMT_Field := NRF_SVD.UART0.Tx_Empty;
      --  Transmission Finished Indicator
      TFI            : STAT_TFI_Field := NRF_SVD.UART0.Tx_Not_Done;
      --  Address Sticky
      ASTKY          : STAT_ASTKY_Field := NRF_SVD.UART0.Addr_Lo_Stky;
      --  Address Bit Status
      ADDR           : STAT_ADDR_Field := NRF_SVD.UART0.Addr_Lo;
      --  Read-only. Reception On-going
      RO             : STAT_RO_Field := NRF_SVD.UART0.No_Rx_Progress;
      --  Sticky CTS
      SCTS           : STAT_SCTS_Field := NRF_SVD.UART0.Cts_Lo_Stky;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Clear to Send
      CTS            : STAT_CTS_Field := NRF_SVD.UART0.Cts_Lo;
      --  Read-only. Receive FIFO Count Status
      RFCS           : STAT_RFCS_Field := NRF_SVD.UART0.Rfcs_Lo;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      DR             at 0 range 0 .. 0;
      OE             at 0 range 1 .. 1;
      PE             at 0 range 2 .. 2;
      FE             at 0 range 3 .. 3;
      BI             at 0 range 4 .. 4;
      THRE           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      TEMT           at 0 range 7 .. 7;
      TFI            at 0 range 8 .. 8;
      ASTKY          at 0 range 9 .. 9;
      ADDR           at 0 range 10 .. 10;
      RO             at 0 range 11 .. 11;
      SCTS           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CTS            at 0 range 16 .. 16;
      RFCS           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SCR_VALUE_Field is HAL.UInt8;

   --  Scratch Register
   type SCR_Register is record
      --  Stored 8-bit Data
      VALUE         : SCR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CLK_DIV_Field is HAL.UInt16;

   --  Enable Divide By One
   type CLK_EDBO_Field is
     (
      --  Bit clock prescaler = 16
      Dis_Div_By_One,
      --  Bit clock prescaler = 1
      En_Div_By_One)
     with Size => 1;
   for CLK_EDBO_Field use
     (Dis_Div_By_One => 0,
      En_Div_By_One => 1);

   --  Clock Rate Register
   type CLK_Register is record
      --  Divisor
      DIV            : CLK_DIV_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Enable Divide By One
      EDBO           : CLK_EDBO_Field := NRF_SVD.UART0.Dis_Div_By_One;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      DIV            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      EDBO           at 0 range 31 .. 31;
   end record;

   --  Enable Receive Buffer Full Interrupt Mask Status
   type IMSK_ERBFI_Field is
     (
      --  Interrupt is masked
      Erbfi_Lo,
      --  Interrupt is unmasked
      Erbfi_Hi)
     with Size => 1;
   for IMSK_ERBFI_Field use
     (Erbfi_Lo => 0,
      Erbfi_Hi => 1);

   --  Enable Transmit Buffer Empty Interrupt Mask Status
   type IMSK_ETBEI_Field is
     (
      --  Interrupt is masked
      Etbei_Lo,
      --  Interrupt is unmasked
      Etbei_Hi)
     with Size => 1;
   for IMSK_ETBEI_Field use
     (Etbei_Lo => 0,
      Etbei_Hi => 1);

   --  Enable Line Status Interrupt Mask Status
   type IMSK_ELSI_Field is
     (
      --  Interrupt is masked
      Elsi_Lo,
      --  Interrupt is unmasked
      Elsi_Hi)
     with Size => 1;
   for IMSK_ELSI_Field use
     (Elsi_Lo => 0,
      Elsi_Hi => 1);

   --  Enable Modem Status Interrupt Mask Status
   type IMSK_EDSSI_Field is
     (
      --  Interrupt is masked
      Edssi_Lo,
      --  Interrupt is unmasked
      Edssi_Hi)
     with Size => 1;
   for IMSK_EDSSI_Field use
     (Edssi_Lo => 0,
      Edssi_Hi => 1);

   --  Enable DMA TX Peripheral Triggered Interrupt Mask Status
   type IMSK_EDTPTI_Field is
     (
      --  Interrupt is masked
      Edtpti_Lo,
      --  Interrupt is unmasked
      Edtpti_Hi)
     with Size => 1;
   for IMSK_EDTPTI_Field use
     (Edtpti_Lo => 0,
      Edtpti_Hi => 1);

   --  Enable Transmission Finished Interrupt Mask Status
   type IMSK_ETFI_Field is
     (
      --  Interrupt is masked
      Etfi_Lo,
      --  Interrupt is unmasked
      Etfi_Hi)
     with Size => 1;
   for IMSK_ETFI_Field use
     (Etfi_Lo => 0,
      Etfi_Hi => 1);

   --  Enable Receive FIFO Count Interrupt Mask Status
   type IMSK_ERFCI_Field is
     (
      --  Interrupt is masked
      Erfci_Lo,
      --  Interrupt is unmasked
      Erfci_Hi)
     with Size => 1;
   for IMSK_ERFCI_Field use
     (Erfci_Lo => 0,
      Erfci_Hi => 1);

   --  Enable Address Word Interrupt Mask Status
   type IMSK_EAWI_Field is
     (
      --  Interrupt is masked
      Eawi_Lo,
      --  Interrupt is unmasked
      Eawi_Hi)
     with Size => 1;
   for IMSK_EAWI_Field use
     (Eawi_Lo => 0,
      Eawi_Hi => 1);

   --  Enable RX to Status Interrupt Mask Status
   type IMSK_ERXS_Field is
     (
      --  Interrupt is masked
      Erxs_Lo,
      --  Interrupt is unmasked
      Erxs_Hi)
     with Size => 1;
   for IMSK_ERXS_Field use
     (Erxs_Lo => 0,
      Erxs_Hi => 1);

   --  Enable TX to Status Interrupt Mask Status
   type IMSK_ETXS_Field is
     (
      --  Interrupt is masked
      Etxs_Lo,
      --  Interrupt is unmasked
      Etxs_Hi)
     with Size => 1;
   for IMSK_ETXS_Field use
     (Etxs_Lo => 0,
      Etxs_Hi => 1);

   --  Interrupt Mask Register
   type IMSK_Register is record
      --  Enable Receive Buffer Full Interrupt Mask Status
      ERBFI          : IMSK_ERBFI_Field := NRF_SVD.UART0.Erbfi_Lo;
      --  Enable Transmit Buffer Empty Interrupt Mask Status
      ETBEI          : IMSK_ETBEI_Field := NRF_SVD.UART0.Etbei_Lo;
      --  Enable Line Status Interrupt Mask Status
      ELSI           : IMSK_ELSI_Field := NRF_SVD.UART0.Elsi_Lo;
      --  Enable Modem Status Interrupt Mask Status
      EDSSI          : IMSK_EDSSI_Field := NRF_SVD.UART0.Edssi_Lo;
      --  Enable DMA TX Peripheral Triggered Interrupt Mask Status
      EDTPTI         : IMSK_EDTPTI_Field := NRF_SVD.UART0.Edtpti_Lo;
      --  Enable Transmission Finished Interrupt Mask Status
      ETFI           : IMSK_ETFI_Field := NRF_SVD.UART0.Etfi_Lo;
      --  Enable Receive FIFO Count Interrupt Mask Status
      ERFCI          : IMSK_ERFCI_Field := NRF_SVD.UART0.Erfci_Lo;
      --  Enable Address Word Interrupt Mask Status
      EAWI           : IMSK_EAWI_Field := NRF_SVD.UART0.Eawi_Lo;
      --  Enable RX to Status Interrupt Mask Status
      ERXS           : IMSK_ERXS_Field := NRF_SVD.UART0.Erxs_Lo;
      --  Enable TX to Status Interrupt Mask Status
      ETXS           : IMSK_ETXS_Field := NRF_SVD.UART0.Etxs_Lo;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      ERBFI          at 0 range 0 .. 0;
      ETBEI          at 0 range 1 .. 1;
      ELSI           at 0 range 2 .. 2;
      EDSSI          at 0 range 3 .. 3;
      EDTPTI         at 0 range 4 .. 4;
      ETFI           at 0 range 5 .. 5;
      ERFCI          at 0 range 6 .. 6;
      EAWI           at 0 range 7 .. 7;
      ERXS           at 0 range 8 .. 8;
      ETXS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Interrupt Mask Set Register
   type IMSK_SET_Register is record
      --  Enable Receive Buffer Full Interrupt Mask Set
      ERBFI          : Boolean := False;
      --  Enable Transmit Buffer Empty Interrupt Mask Set
      ETBEI          : Boolean := False;
      --  Enable Line Status Interrupt Mask Set
      ELSI           : Boolean := False;
      --  Enable Modem Status Interrupt Mask Set
      EDSSI          : Boolean := False;
      --  Enable DMA TX Peripheral Triggered Interrupt Mask Set
      EDTPTI         : Boolean := False;
      --  Enable Transmission Finished Interrupt Mask Set
      ETFI           : Boolean := False;
      --  Enable Receive FIFO Count Interrupt Mask Set
      ERFCI          : Boolean := False;
      --  Enable Address Word Interrupt Mask Set
      EAWI           : Boolean := False;
      --  Enable RX to Status Interrupt Mask Set
      ERXS           : Boolean := False;
      --  Enable TX to Status Interrupt Mask Set
      ETXS           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_SET_Register use record
      ERBFI          at 0 range 0 .. 0;
      ETBEI          at 0 range 1 .. 1;
      ELSI           at 0 range 2 .. 2;
      EDSSI          at 0 range 3 .. 3;
      EDTPTI         at 0 range 4 .. 4;
      ETFI           at 0 range 5 .. 5;
      ERFCI          at 0 range 6 .. 6;
      EAWI           at 0 range 7 .. 7;
      ERXS           at 0 range 8 .. 8;
      ETXS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Interrupt Mask Clear Register
   type IMSK_CLR_Register is record
      --  Enable Receive Buffer Full Interrupt Mask Clear
      ERBFI          : Boolean := False;
      --  Enable Transmit Buffer Empty Interrupt Mask Clear
      ETBEI          : Boolean := False;
      --  Enable Line Status Interrupt Mask Clear
      ELSI           : Boolean := False;
      --  Enable Modem Status Interrupt Mask Clear
      EDSSI          : Boolean := False;
      --  Enable DMA TX Peripheral Triggered Interrupt Mask Clear
      EDTPTI         : Boolean := False;
      --  Enable Transmission Finished Interrupt Mask Clear
      ETFI           : Boolean := False;
      --  Enable Receive FIFO Count Interrupt Mask Clear
      ERFCI          : Boolean := False;
      --  Enable Address Word Interrupt Mask Clear
      EAWI           : Boolean := False;
      --  Enable RX to Status Interrupt Mask Clear
      ERXS           : Boolean := False;
      --  Enable TX to Status Interrupt Mask Clear
      ETXS           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_CLR_Register use record
      ERBFI          at 0 range 0 .. 0;
      ETBEI          at 0 range 1 .. 1;
      ELSI           at 0 range 2 .. 2;
      EDSSI          at 0 range 3 .. 3;
      EDTPTI         at 0 range 4 .. 4;
      ETFI           at 0 range 5 .. 5;
      ERFCI          at 0 range 6 .. 6;
      EAWI           at 0 range 7 .. 7;
      ERXS           at 0 range 8 .. 8;
      ETXS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RBR_VALUE_Field is HAL.UInt8;

   --  Receive Buffer Register
   type RBR_Register is record
      --  Read-only. 8-bit data
      VALUE         : RBR_VALUE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBR_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype THR_VALUE_Field is HAL.UInt8;

   --  Transmit Hold Register
   type THR_Register is record
      --  8 bit data
      VALUE         : THR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TAIP_VALUE_Field is HAL.UInt8;

   --  Transmit Address/Insert Pulse Register
   type TAIP_Register is record
      --  8-bit data
      VALUE         : TAIP_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAIP_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TSR_VALUE_Field is HAL.UInt11;

   --  Transmit Shift Register
   type TSR_Register is record
      --  Read-only. Contents of TSR
      VALUE          : TSR_VALUE_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSR_Register use record
      VALUE          at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RSR_VALUE_Field is HAL.UInt10;

   --  Receive Shift Register
   type RSR_Register is record
      --  Read-only. Contents of RSR
      VALUE          : RSR_VALUE_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSR_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TXCNT_VALUE_Field is HAL.UInt16;

   --  Transmit Counter Register
   type TXCNT_Register is record
      --  Read-only. 16-bit Counter Value
      VALUE          : TXCNT_VALUE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCNT_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXCNT_VALUE_Field is HAL.UInt16;

   --  Receive Counter Register
   type RXCNT_Register is record
      --  Read-only. 16-bit Counter Value
      VALUE          : RXCNT_VALUE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCNT_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  UART
   type UART0_Peripheral is record
      --  Control Register
      CTL      : aliased CTL_Register;
      --  Status Register
      STAT     : aliased STAT_Register;
      --  Scratch Register
      SCR      : aliased SCR_Register;
      --  Clock Rate Register
      CLK      : aliased CLK_Register;
      --  Interrupt Mask Register
      IMSK     : aliased IMSK_Register;
      --  Interrupt Mask Set Register
      IMSK_SET : aliased IMSK_SET_Register;
      --  Interrupt Mask Clear Register
      IMSK_CLR : aliased IMSK_CLR_Register;
      --  Receive Buffer Register
      RBR      : aliased RBR_Register;
      --  Transmit Hold Register
      THR      : aliased THR_Register;
      --  Transmit Address/Insert Pulse Register
      TAIP     : aliased TAIP_Register;
      --  Transmit Shift Register
      TSR      : aliased TSR_Register;
      --  Receive Shift Register
      RSR      : aliased RSR_Register;
      --  Transmit Counter Register
      TXCNT    : aliased TXCNT_Register;
      --  Receive Counter Register
      RXCNT    : aliased RXCNT_Register;
   end record
     with Volatile;

   for UART0_Peripheral use record
      CTL      at 16#4# range 0 .. 31;
      STAT     at 16#8# range 0 .. 31;
      SCR      at 16#C# range 0 .. 31;
      CLK      at 16#10# range 0 .. 31;
      IMSK     at 16#14# range 0 .. 31;
      IMSK_SET at 16#18# range 0 .. 31;
      IMSK_CLR at 16#1C# range 0 .. 31;
      RBR      at 16#20# range 0 .. 31;
      THR      at 16#24# range 0 .. 31;
      TAIP     at 16#28# range 0 .. 31;
      TSR      at 16#2C# range 0 .. 31;
      RSR      at 16#30# range 0 .. 31;
      TXCNT    at 16#34# range 0 .. 31;
      RXCNT    at 16#38# range 0 .. 31;
   end record;

   --  UART
   UART0_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#4100A000#);

   --  UART
   UART1_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#40044000#);

   --  UART
   UART2_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#40045000#);

   --  UART
   UART3_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#40046000#);

   --  UART
   UART4_Periph : aliased UART0_Peripheral
     with Import, Address => System'To_Address (16#40047000#);

end NRF_SVD.UART0;
