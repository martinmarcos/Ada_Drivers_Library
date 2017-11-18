--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Serial UART
package NRF_SVD.UART0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DR_DATA_Field is HAL.UInt8;

   --  This is the framing error indicator.
   type DR_FEDATA_Field is
     (
      --  No error on UART FEDATA, framing error indicator. value.
      Noerr,
      --  Error on UART FEDATA, framing error indicator. value.
      Err)
     with Size => 1;
   for DR_FEDATA_Field use
     (Noerr => 0,
      Err => 1);

   --  This is the parity error indicator.
   type DR_PEDATA_Field is
     (
      --  No error on UART PEDATA, parity error indicator. value.
      Noerr,
      --  Error on UART PEDATA, parity error indicator. value.
      Err)
     with Size => 1;
   for DR_PEDATA_Field use
     (Noerr => 0,
      Err => 1);

   --  This is the break error indicator.
   type DR_BEDATA_Field is
     (
      --  No error on UART BEDATA, break error indicator. value.
      Noerr,
      --  Error on UART BEDATA, break error indicator. value.
      Err)
     with Size => 1;
   for DR_BEDATA_Field use
     (Noerr => 0,
      Err => 1);

   --  This is the overrun error indicator.
   type DR_OEDATA_Field is
     (
      --  No error on UART OEDATA, overrun error indicator. value.
      Noerr,
      --  Error on UART OEDATA, overrun error indicator. value.
      Err)
     with Size => 1;
   for DR_OEDATA_Field use
     (Noerr => 0,
      Err => 1);

   --  UART Data Register
   type DR_Register is record
      --  This is the UART data port.
      DATA           : DR_DATA_Field := 16#0#;
      --  This is the framing error indicator.
      FEDATA         : DR_FEDATA_Field := NRF_SVD.UART0.Noerr;
      --  This is the parity error indicator.
      PEDATA         : DR_PEDATA_Field := NRF_SVD.UART0.Noerr;
      --  This is the break error indicator.
      BEDATA         : DR_BEDATA_Field := NRF_SVD.UART0.Noerr;
      --  This is the overrun error indicator.
      OEDATA         : DR_OEDATA_Field := NRF_SVD.UART0.Noerr;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DATA           at 0 range 0 .. 7;
      FEDATA         at 0 range 8 .. 8;
      PEDATA         at 0 range 9 .. 9;
      BEDATA         at 0 range 10 .. 10;
      OEDATA         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  This is the framing error indicator.
   type RSR_FESTAT_Field is
     (
      --  No error on UART FESTAT, framing error indicator. value.
      Noerr,
      --  Error on UART FESTAT, framing error indicator. value.
      Err)
     with Size => 1;
   for RSR_FESTAT_Field use
     (Noerr => 0,
      Err => 1);

   --  This is the parity error indicator.
   type RSR_PESTAT_Field is
     (
      --  No error on UART PESTAT, parity error indicator. value.
      Noerr,
      --  Error on UART PESTAT, parity error indicator. value.
      Err)
     with Size => 1;
   for RSR_PESTAT_Field use
     (Noerr => 0,
      Err => 1);

   --  This is the break error indicator.
   type RSR_BESTAT_Field is
     (
      --  No error on UART BESTAT, break error indicator. value.
      Noerr,
      --  Error on UART BESTAT, break error indicator. value.
      Err)
     with Size => 1;
   for RSR_BESTAT_Field use
     (Noerr => 0,
      Err => 1);

   --  This is the overrun error indicator.
   type RSR_OESTAT_Field is
     (
      --  No error on UART OESTAT, overrun error indicator. value.
      Noerr,
      --  Error on UART OESTAT, overrun error indicator. value.
      Err)
     with Size => 1;
   for RSR_OESTAT_Field use
     (Noerr => 0,
      Err => 1);

   --  UART Status Register
   type RSR_Register is record
      --  This is the framing error indicator.
      FESTAT        : RSR_FESTAT_Field := NRF_SVD.UART0.Noerr;
      --  This is the parity error indicator.
      PESTAT        : RSR_PESTAT_Field := NRF_SVD.UART0.Noerr;
      --  This is the break error indicator.
      BESTAT        : RSR_BESTAT_Field := NRF_SVD.UART0.Noerr;
      --  This is the overrun error indicator.
      OESTAT        : RSR_OESTAT_Field := NRF_SVD.UART0.Noerr;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSR_Register use record
      FESTAT        at 0 range 0 .. 0;
      PESTAT        at 0 range 1 .. 1;
      BESTAT        at 0 range 2 .. 2;
      OESTAT        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  This bit holds the clear to send indicator.
   type FR_CTS_Field is
     (
      --  Reset value for the field
      Fr_Cts_Field_Reset,
      --  Clear to send is indicated. value.
      Cleartosend)
     with Size => 1;
   for FR_CTS_Field use
     (Fr_Cts_Field_Reset => 0,
      Cleartosend => 1);

   --  This bit holds the data set ready indicator.
   type FR_DSR_Field is
     (
      --  Reset value for the field
      Fr_Dsr_Field_Reset,
      --  Data set ready. value.
      Ready)
     with Size => 1;
   for FR_DSR_Field use
     (Fr_Dsr_Field_Reset => 0,
      Ready => 1);

   --  This bit holds the data carrier detect indicator.
   type FR_DCD_Field is
     (
      --  Reset value for the field
      Fr_Dcd_Field_Reset,
      --  Data carrier detect detected. value.
      Detected)
     with Size => 1;
   for FR_DCD_Field use
     (Fr_Dcd_Field_Reset => 0,
      Detected => 1);

   --  This bit holds the busy indicator.
   type FR_BUSY_Field is
     (
      --  Reset value for the field
      Fr_Busy_Field_Reset,
      --  UART busy indicator. value.
      Busy)
     with Size => 1;
   for FR_BUSY_Field use
     (Fr_Busy_Field_Reset => 0,
      Busy => 1);

   --  This bit holds the receive FIFO empty indicator.
   type FR_RXFE_Field is
     (
      --  Reset value for the field
      Fr_Rxfe_Field_Reset,
      --  Receive fifo is empty. value.
      Rcvfifo_Empty)
     with Size => 1;
   for FR_RXFE_Field use
     (Fr_Rxfe_Field_Reset => 0,
      Rcvfifo_Empty => 1);

   --  This bit holds the transmit FIFO full indicator.
   type FR_TXFF_Field is
     (
      --  Reset value for the field
      Fr_Txff_Field_Reset,
      --  Transmit fifo is full. value.
      Xmtfifo_Full)
     with Size => 1;
   for FR_TXFF_Field use
     (Fr_Txff_Field_Reset => 0,
      Xmtfifo_Full => 1);

   --  This bit holds the receive FIFO full indicator.
   type FR_RXFF_Field is
     (
      --  Reset value for the field
      Fr_Rxff_Field_Reset,
      --  Receive fifo is full. value.
      Rcvfifo_Full)
     with Size => 1;
   for FR_RXFF_Field use
     (Fr_Rxff_Field_Reset => 0,
      Rcvfifo_Full => 1);

   --  This bit holds the transmit FIFO empty indicator.
   type FR_TXFE_Field is
     (
      --  Reset value for the field
      Fr_Txfe_Field_Reset,
      --  Transmit fifo is empty. value.
      Xmtfifo_Empty)
     with Size => 1;
   for FR_TXFE_Field use
     (Fr_Txfe_Field_Reset => 0,
      Xmtfifo_Empty => 1);

   --  Flag Register
   type FR_Register is record
      --  This bit holds the clear to send indicator.
      CTS           : FR_CTS_Field := Fr_Cts_Field_Reset;
      --  This bit holds the data set ready indicator.
      DSR           : FR_DSR_Field := Fr_Dsr_Field_Reset;
      --  This bit holds the data carrier detect indicator.
      DCD           : FR_DCD_Field := Fr_Dcd_Field_Reset;
      --  This bit holds the busy indicator.
      BUSY          : FR_BUSY_Field := Fr_Busy_Field_Reset;
      --  This bit holds the receive FIFO empty indicator.
      RXFE          : FR_RXFE_Field := Fr_Rxfe_Field_Reset;
      --  This bit holds the transmit FIFO full indicator.
      TXFF          : FR_TXFF_Field := Fr_Txff_Field_Reset;
      --  This bit holds the receive FIFO full indicator.
      RXFF          : FR_RXFF_Field := Fr_Rxff_Field_Reset;
      --  This bit holds the transmit FIFO empty indicator.
      TXFE          : FR_TXFE_Field := Fr_Txfe_Field_Reset;
      --  This bit holds the transmit BUSY indicator.
      TXBUSY        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FR_Register use record
      CTS           at 0 range 0 .. 0;
      DSR           at 0 range 1 .. 1;
      DCD           at 0 range 2 .. 2;
      BUSY          at 0 range 3 .. 3;
      RXFE          at 0 range 4 .. 4;
      TXFF          at 0 range 5 .. 5;
      RXFF          at 0 range 6 .. 6;
      TXFE          at 0 range 7 .. 7;
      TXBUSY        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ILPR_ILPDVSR_Field is HAL.UInt8;

   --  IrDA Counter
   type ILPR_Register is record
      --  These bits hold the IrDA counter divisor.
      ILPDVSR       : ILPR_ILPDVSR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILPR_Register use record
      ILPDVSR       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IBRD_DIVINT_Field is HAL.UInt16;

   --  Integer Baud Rate Divisor
   type IBRD_Register is record
      --  These bits hold the baud integer divisor.
      DIVINT         : IBRD_DIVINT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IBRD_Register use record
      DIVINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FBRD_DIVFRAC_Field is HAL.UInt6;

   --  Fractional Baud Rate Divisor
   type FBRD_Register is record
      --  These bits hold the baud fractional divisor.
      DIVFRAC       : FBRD_DIVFRAC_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FBRD_Register use record
      DIVFRAC       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype LCRH_WLEN_Field is HAL.UInt2;

   --  Line Control High
   type LCRH_Register is record
      --  This bit holds the break set.
      BRK           : Boolean := False;
      --  This bit holds the parity enable.
      PEN           : Boolean := False;
      --  This bit holds the even parity select.
      EPS           : Boolean := False;
      --  This bit holds the two stop bits select.
      STP2          : Boolean := False;
      --  This bit holds the FIFO enable.
      FEN           : Boolean := False;
      --  These bits hold the write length.
      WLEN          : LCRH_WLEN_Field := 16#0#;
      --  This bit holds the stick parity select.
      SPS           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCRH_Register use record
      BRK           at 0 range 0 .. 0;
      PEN           at 0 range 1 .. 1;
      EPS           at 0 range 2 .. 2;
      STP2          at 0 range 3 .. 3;
      FEN           at 0 range 4 .. 4;
      WLEN          at 0 range 5 .. 6;
      SPS           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  This bitfield is the UART clock select.
   type CR_CLKSEL_Field is
     (
      --  No UART clock. This is the low power default. value.
      Noclk,
      --  24 MHz clock. value.
      CR_CLKSEL_Field_24Mhz,
      --  12 MHz clock. value.
      CR_CLKSEL_Field_12Mhz,
      --  6 MHz clock. value.
      CR_CLKSEL_Field_6Mhz,
      --  3 MHz clock. value.
      CR_CLKSEL_Field_3Mhz)
     with Size => 3;
   for CR_CLKSEL_Field use
     (Noclk => 0,
      CR_CLKSEL_Field_24Mhz => 1,
      CR_CLKSEL_Field_12Mhz => 2,
      CR_CLKSEL_Field_6Mhz => 3,
      CR_CLKSEL_Field_3Mhz => 4);

   --  CR_OUT array
   type CR_OUT_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CR_OUT
   type CR_OUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUT as a value
            Val : HAL.UInt2;
         when True =>
            --  OUT as an array
            Arr : CR_OUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR_OUT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control Register
   type CR_Register is record
      --  This bit is the UART enable.
      UARTEN         : Boolean := False;
      --  This bit is the SIR ENDEC enable.
      SIREN          : Boolean := False;
      --  This bit is the SIR low power select.
      SIRLP          : Boolean := False;
      --  This bit is the UART clock enable.
      CLKEN          : Boolean := False;
      --  This bitfield is the UART clock select.
      CLKSEL         : CR_CLKSEL_Field := NRF_SVD.UART0.Noclk;
      --  This bit is the loopback enable.
      LBE            : Boolean := False;
      --  This bit is the transmit enable.
      TXE            : Boolean := True;
      --  This bit is the receive enable.
      RXE            : Boolean := True;
      --  This bit enables data transmit ready.
      DTR            : Boolean := False;
      --  This bit enables request to send.
      RTS            : Boolean := False;
      --  This bit holds modem Out1.
      OUT_k          : CR_OUT_Field := (As_Array => False, Val => 16#0#);
      --  This bit enables RTS hardware flow control.
      RTSEN          : Boolean := False;
      --  This bit enables CTS hardware flow control.
      CTSEN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      UARTEN         at 0 range 0 .. 0;
      SIREN          at 0 range 1 .. 1;
      SIRLP          at 0 range 2 .. 2;
      CLKEN          at 0 range 3 .. 3;
      CLKSEL         at 0 range 4 .. 6;
      LBE            at 0 range 7 .. 7;
      TXE            at 0 range 8 .. 8;
      RXE            at 0 range 9 .. 9;
      DTR            at 0 range 10 .. 10;
      RTS            at 0 range 11 .. 11;
      OUT_k          at 0 range 12 .. 13;
      RTSEN          at 0 range 14 .. 14;
      CTSEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IFLS_TXIFLSEL_Field is HAL.UInt3;
   subtype IFLS_RXIFLSEL_Field is HAL.UInt3;

   --  FIFO Interrupt Level Select
   type IFLS_Register is record
      --  These bits hold the transmit FIFO interrupt level.
      TXIFLSEL      : IFLS_TXIFLSEL_Field := 16#2#;
      --  These bits hold the receive FIFO interrupt level.
      RXIFLSEL      : IFLS_RXIFLSEL_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFLS_Register use record
      TXIFLSEL      at 0 range 0 .. 2;
      RXIFLSEL      at 0 range 3 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Enable
   type IER_Register is record
      --  This bit holds the modem TXCMP interrupt enable.
      TXCMPMIM       : Boolean := False;
      --  This bit holds the modem CTS interrupt enable.
      CTSMIM         : Boolean := False;
      --  This bit holds the modem DCD interrupt enable.
      DCDMIM         : Boolean := False;
      --  This bit holds the modem DSR interrupt enable.
      DSRMIM         : Boolean := False;
      --  This bit holds the receive interrupt enable.
      RXIM           : Boolean := False;
      --  This bit holds the transmit interrupt enable.
      TXIM           : Boolean := False;
      --  This bit holds the receive timeout interrupt enable.
      RTIM           : Boolean := False;
      --  This bit holds the framing error interrupt enable.
      FEIM           : Boolean := False;
      --  This bit holds the parity error interrupt enable.
      PEIM           : Boolean := False;
      --  This bit holds the break error interrupt enable.
      BEIM           : Boolean := False;
      --  This bit holds the overflow interrupt enable.
      OEIM           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      TXCMPMIM       at 0 range 0 .. 0;
      CTSMIM         at 0 range 1 .. 1;
      DCDMIM         at 0 range 2 .. 2;
      DSRMIM         at 0 range 3 .. 3;
      RXIM           at 0 range 4 .. 4;
      TXIM           at 0 range 5 .. 5;
      RTIM           at 0 range 6 .. 6;
      FEIM           at 0 range 7 .. 7;
      PEIM           at 0 range 8 .. 8;
      BEIM           at 0 range 9 .. 9;
      OEIM           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Status
   type IES_Register is record
      --  This bit holds the modem TXCMP interrupt status.
      TXCMPMRIS      : Boolean := False;
      --  This bit holds the modem CTS interrupt status.
      CTSMRIS        : Boolean := False;
      --  This bit holds the modem DCD interrupt status.
      DCDMRIS        : Boolean := False;
      --  This bit holds the modem DSR interrupt status.
      DSRMRIS        : Boolean := False;
      --  This bit holds the receive interrupt status.
      RXRIS          : Boolean := False;
      --  This bit holds the transmit interrupt status.
      TXRIS          : Boolean := False;
      --  This bit holds the receive timeout interrupt status.
      RTRIS          : Boolean := False;
      --  This bit holds the framing error interrupt status.
      FERIS          : Boolean := False;
      --  This bit holds the parity error interrupt status.
      PERIS          : Boolean := False;
      --  This bit holds the break error interrupt status.
      BERIS          : Boolean := False;
      --  This bit holds the overflow interrupt status.
      OERIS          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IES_Register use record
      TXCMPMRIS      at 0 range 0 .. 0;
      CTSMRIS        at 0 range 1 .. 1;
      DCDMRIS        at 0 range 2 .. 2;
      DSRMRIS        at 0 range 3 .. 3;
      RXRIS          at 0 range 4 .. 4;
      TXRIS          at 0 range 5 .. 5;
      RTRIS          at 0 range 6 .. 6;
      FERIS          at 0 range 7 .. 7;
      PERIS          at 0 range 8 .. 8;
      BERIS          at 0 range 9 .. 9;
      OERIS          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Masked Interrupt Status
   type MIS_Register is record
      --  This bit holds the modem TXCMP interrupt status masked.
      TXCMPMMIS      : Boolean := False;
      --  This bit holds the modem CTS interrupt status masked.
      CTSMMIS        : Boolean := False;
      --  This bit holds the modem DCD interrupt status masked.
      DCDMMIS        : Boolean := False;
      --  This bit holds the modem DSR interrupt status masked.
      DSRMMIS        : Boolean := False;
      --  This bit holds the receive interrupt status masked.
      RXMIS          : Boolean := False;
      --  This bit holds the transmit interrupt status masked.
      TXMIS          : Boolean := False;
      --  This bit holds the receive timeout interrupt status masked.
      RTMIS          : Boolean := False;
      --  This bit holds the framing error interrupt status masked.
      FEMIS          : Boolean := False;
      --  This bit holds the parity error interrupt status masked.
      PEMIS          : Boolean := False;
      --  This bit holds the break error interrupt status masked.
      BEMIS          : Boolean := False;
      --  This bit holds the overflow interrupt status masked.
      OEMIS          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIS_Register use record
      TXCMPMMIS      at 0 range 0 .. 0;
      CTSMMIS        at 0 range 1 .. 1;
      DCDMMIS        at 0 range 2 .. 2;
      DSRMMIS        at 0 range 3 .. 3;
      RXMIS          at 0 range 4 .. 4;
      TXMIS          at 0 range 5 .. 5;
      RTMIS          at 0 range 6 .. 6;
      FEMIS          at 0 range 7 .. 7;
      PEMIS          at 0 range 8 .. 8;
      BEMIS          at 0 range 9 .. 9;
      OEMIS          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Clear
   type IEC_Register is record
      --  This bit holds the modem TXCMP interrupt clear.
      TXCMPMIC       : Boolean := False;
      --  This bit holds the modem CTS interrupt clear.
      CTSMIC         : Boolean := False;
      --  This bit holds the modem DCD interrupt clear.
      DCDMIC         : Boolean := False;
      --  This bit holds the modem DSR interrupt clear.
      DSRMIC         : Boolean := False;
      --  This bit holds the receive interrupt clear.
      RXIC           : Boolean := False;
      --  This bit holds the transmit interrupt clear.
      TXIC           : Boolean := False;
      --  This bit holds the receive timeout interrupt clear.
      RTIC           : Boolean := False;
      --  This bit holds the framing error interrupt clear.
      FEIC           : Boolean := False;
      --  This bit holds the parity error interrupt clear.
      PEIC           : Boolean := False;
      --  This bit holds the break error interrupt clear.
      BEIC           : Boolean := False;
      --  This bit holds the overflow interrupt clear.
      OEIC           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEC_Register use record
      TXCMPMIC       at 0 range 0 .. 0;
      CTSMIC         at 0 range 1 .. 1;
      DCDMIC         at 0 range 2 .. 2;
      DSRMIC         at 0 range 3 .. 3;
      RXIC           at 0 range 4 .. 4;
      TXIC           at 0 range 5 .. 5;
      RTIC           at 0 range 6 .. 6;
      FEIC           at 0 range 7 .. 7;
      PEIC           at 0 range 8 .. 8;
      BEIC           at 0 range 9 .. 9;
      OEIC           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial UART
   type UART0_Peripheral is record
      --  UART Data Register
      DR   : aliased DR_Register;
      --  UART Status Register
      RSR  : aliased RSR_Register;
      --  Flag Register
      FR   : aliased FR_Register;
      --  IrDA Counter
      ILPR : aliased ILPR_Register;
      --  Integer Baud Rate Divisor
      IBRD : aliased IBRD_Register;
      --  Fractional Baud Rate Divisor
      FBRD : aliased FBRD_Register;
      --  Line Control High
      LCRH : aliased LCRH_Register;
      --  Control Register
      CR   : aliased CR_Register;
      --  FIFO Interrupt Level Select
      IFLS : aliased IFLS_Register;
      --  Interrupt Enable
      IER  : aliased IER_Register;
      --  Interrupt Status
      IES  : aliased IES_Register;
      --  Masked Interrupt Status
      MIS  : aliased MIS_Register;
      --  Interrupt Clear
      IEC  : aliased IEC_Register;
   end record
     with Volatile;

   for UART0_Peripheral use record
      DR   at 16#0# range 0 .. 31;
      RSR  at 16#4# range 0 .. 31;
      FR   at 16#18# range 0 .. 31;
      ILPR at 16#20# range 0 .. 31;
      IBRD at 16#24# range 0 .. 31;
      FBRD at 16#28# range 0 .. 31;
      LCRH at 16#2C# range 0 .. 31;
      CR   at 16#30# range 0 .. 31;
      IFLS at 16#34# range 0 .. 31;
      IER  at 16#38# range 0 .. 31;
      IES  at 16#3C# range 0 .. 31;
      MIS  at 16#40# range 0 .. 31;
      IEC  at 16#44# range 0 .. 31;
   end record;

   --  Serial UART
   UART0_Periph : aliased UART0_Peripheral
     with Import, Address => UART0_Base;

end NRF_SVD.UART0;
