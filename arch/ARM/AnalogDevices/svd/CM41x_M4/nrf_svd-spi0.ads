--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPI0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable
   type CTL_EN_Field is
     (
      --  Disable SPI module
      Dis,
      --  Enable
      En)
     with Size => 1;
   for CTL_EN_Field use
     (Dis => 0,
      En => 1);

   --  Master/Slave
   type CTL_MSTR_Field is
     (
      --  Slave
      Slave,
      --  Master
      Master)
     with Size => 1;
   for CTL_MSTR_Field use
     (Slave => 0,
      Master => 1);

   --  Protected Slave Select Enable
   type CTL_PSSE_Field is
     (
      --  Disable
      Psse_Dis,
      --  Enable
      Psse_En)
     with Size => 1;
   for CTL_PSSE_Field use
     (Psse_Dis => 0,
      Psse_En => 1);

   --  Open Drain Mode
   type CTL_ODM_Field is
     (
      --  Disable
      Odm_Dis,
      --  Enable
      Odm_En)
     with Size => 1;
   for CTL_ODM_Field use
     (Odm_Dis => 0,
      Odm_En => 1);

   --  Clock Phase
   type CTL_CPHA_Field is
     (
      --  SPI CLK toggles from middle
      Sckmid,
      --  SPI CLK toggles from start
      Sckbeg)
     with Size => 1;
   for CTL_CPHA_Field use
     (Sckmid => 0,
      Sckbeg => 1);

   --  Clock Polarity
   type CTL_CPOL_Field is
     (
      --  Active-high SPI CLK
      Sckhi,
      --  Active-low SPI CLK
      Scklo)
     with Size => 1;
   for CTL_CPOL_Field use
     (Sckhi => 0,
      Scklo => 1);

   --  Slave Select Pin Control
   type CTL_ASSEL_Field is
     (
      --  Software Slave Select Control
      Sw_Ssel,
      --  Hardware Slave Select Control
      Hw_Ssel)
     with Size => 1;
   for CTL_ASSEL_Field use
     (Sw_Ssel => 0,
      Hw_Ssel => 1);

   --  Slave Select Polarity Between Transfers
   type CTL_SELST_Field is
     (
      --  De-assert slave select (high)
      Deassrt_Ssel,
      --  Assert slave select (low)
      Assrt_Ssel)
     with Size => 1;
   for CTL_SELST_Field use
     (Deassrt_Ssel => 0,
      Assrt_Ssel => 1);

   --  Enable MISO
   type CTL_EMISO_Field is
     (
      --  Disable
      Miso_Dis,
      --  Enable
      Miso_En)
     with Size => 1;
   for CTL_EMISO_Field use
     (Miso_Dis => 0,
      Miso_En => 1);

   --  Word Transfer Size
   type CTL_SIZE_Field is
     (
      --  8-bit word
      Size08,
      --  16-bit word
      Size16,
      --  32-bit word
      Size32)
     with Size => 2;
   for CTL_SIZE_Field use
     (Size08 => 0,
      Size16 => 1,
      Size32 => 2);

   --  Least Significant Bit First
   type CTL_LSBF_Field is
     (
      --  MSB sent/received first (big endian)
      Msb_First,
      --  LSB sent/received first (little endian)
      Lsb_First)
     with Size => 1;
   for CTL_LSBF_Field use
     (Msb_First => 0,
      Lsb_First => 1);

   --  Flow Control Enable
   type CTL_FCEN_Field is
     (
      --  Disable
      Flow_Dis,
      --  Enable
      Flow_En)
     with Size => 1;
   for CTL_FCEN_Field use
     (Flow_Dis => 0,
      Flow_En => 1);

   --  Flow Control Channel Selection
   type CTL_FCCH_Field is
     (
      --  Flow control on RX buffer
      Flow_Rx,
      --  Flow control on TX buffer
      Flow_Tx)
     with Size => 1;
   for CTL_FCCH_Field use
     (Flow_Rx => 0,
      Flow_Tx => 1);

   --  Flow Control Polarity
   type CTL_FCPL_Field is
     (
      --  Active-low RDY
      Flow_Lo,
      --  Active-high RDY
      Flow_Hi)
     with Size => 1;
   for CTL_FCPL_Field use
     (Flow_Lo => 0,
      Flow_Hi => 1);

   --  Flow Control Watermark
   type CTL_FCWM_Field is
     (
      --  TFIFO empty or RFIFO full
      Fifo0,
      --  TFIFO 75 percent or more empty, or RFIFO 75 percent or more full
      Fifo1,
      --  TFIFO 50 percent or more empty, or RFIFO 50 percent or more full
      Fifo2)
     with Size => 2;
   for CTL_FCWM_Field use
     (Fifo0 => 0,
      Fifo1 => 1,
      Fifo2 => 2);

   --  Fast-Mode Enable
   type CTL_FMODE_Field is
     (
      --  Disable
      Fast_Dis,
      --  Enable
      Fast_En)
     with Size => 1;
   for CTL_FMODE_Field use
     (Fast_Dis => 0,
      Fast_En => 1);

   --  Multiple I/O Mode
   type CTL_MIOM_Field is
     (
      --  No MIOM (disabled)
      Mio_Dis,
      --  DIOM operation
      Mio_Dual,
      --  QIOM operation
      Mio_Quad)
     with Size => 2;
   for CTL_MIOM_Field use
     (Mio_Dis => 0,
      Mio_Dual => 1,
      Mio_Quad => 2);

   --  Start on MOSI
   type CTL_SOSI_Field is
     (
      --  Start on MISO (DIOM) or start on SPI_D3
      Stmiso,
      --  Start on MOSI
      Stmosi)
     with Size => 1;
   for CTL_SOSI_Field use
     (Stmiso => 0,
      Stmosi => 1);

   --  Control Register
   type CTL_Register is record
      --  Enable
      EN             : CTL_EN_Field := NRF_SVD.SPI0.Dis;
      --  Master/Slave
      MSTR           : CTL_MSTR_Field := NRF_SVD.SPI0.Slave;
      --  Protected Slave Select Enable
      PSSE           : CTL_PSSE_Field := NRF_SVD.SPI0.Psse_Dis;
      --  Open Drain Mode
      ODM            : CTL_ODM_Field := NRF_SVD.SPI0.Odm_Dis;
      --  Clock Phase
      CPHA           : CTL_CPHA_Field := NRF_SVD.SPI0.Sckbeg;
      --  Clock Polarity
      CPOL           : CTL_CPOL_Field := NRF_SVD.SPI0.Sckhi;
      --  Slave Select Pin Control
      ASSEL          : CTL_ASSEL_Field := NRF_SVD.SPI0.Hw_Ssel;
      --  Slave Select Polarity Between Transfers
      SELST          : CTL_SELST_Field := NRF_SVD.SPI0.Deassrt_Ssel;
      --  Enable MISO
      EMISO          : CTL_EMISO_Field := NRF_SVD.SPI0.Miso_Dis;
      --  Word Transfer Size
      SIZE           : CTL_SIZE_Field := NRF_SVD.SPI0.Size08;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Least Significant Bit First
      LSBF           : CTL_LSBF_Field := NRF_SVD.SPI0.Msb_First;
      --  Flow Control Enable
      FCEN           : CTL_FCEN_Field := NRF_SVD.SPI0.Flow_Dis;
      --  Flow Control Channel Selection
      FCCH           : CTL_FCCH_Field := NRF_SVD.SPI0.Flow_Rx;
      --  Flow Control Polarity
      FCPL           : CTL_FCPL_Field := NRF_SVD.SPI0.Flow_Lo;
      --  Flow Control Watermark
      FCWM           : CTL_FCWM_Field := NRF_SVD.SPI0.Fifo0;
      --  Fast-Mode Enable
      FMODE          : CTL_FMODE_Field := NRF_SVD.SPI0.Fast_Dis;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Multiple I/O Mode
      MIOM           : CTL_MIOM_Field := NRF_SVD.SPI0.Mio_Dis;
      --  Start on MOSI
      SOSI           : CTL_SOSI_Field := NRF_SVD.SPI0.Stmiso;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN             at 0 range 0 .. 0;
      MSTR           at 0 range 1 .. 1;
      PSSE           at 0 range 2 .. 2;
      ODM            at 0 range 3 .. 3;
      CPHA           at 0 range 4 .. 4;
      CPOL           at 0 range 5 .. 5;
      ASSEL          at 0 range 6 .. 6;
      SELST          at 0 range 7 .. 7;
      EMISO          at 0 range 8 .. 8;
      SIZE           at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LSBF           at 0 range 12 .. 12;
      FCEN           at 0 range 13 .. 13;
      FCCH           at 0 range 14 .. 14;
      FCPL           at 0 range 15 .. 15;
      FCWM           at 0 range 16 .. 17;
      FMODE          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MIOM           at 0 range 20 .. 21;
      SOSI           at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Receive Enable
   type RXCTL_REN_Field is
     (
      --  Disable
      Rx_Dis,
      --  Enable
      Rx_En)
     with Size => 1;
   for RXCTL_REN_Field use
     (Rx_Dis => 0,
      Rx_En => 1);

   --  Receive Transfer Initiate
   type RXCTL_RTI_Field is
     (
      --  Disable
      Rti_Dis,
      --  Enable
      Rti_En)
     with Size => 1;
   for RXCTL_RTI_Field use
     (Rti_Dis => 0,
      Rti_En => 1);

   --  Receive Word Counter Enable
   type RXCTL_RWCEN_Field is
     (
      --  Disable
      Rwc_Dis,
      --  Enable
      Rwc_En)
     with Size => 1;
   for RXCTL_RWCEN_Field use
     (Rwc_Dis => 0,
      Rwc_En => 1);

   --  Receive Data Request
   type RXCTL_RDR_Field is
     (
      --  Disabled
      Rdr_Dis,
      --  Not empty RFIFO
      Rdr_Ne,
      --  25 percent full RFIFO
      Rdr_25,
      --  50 percent full RFIFO
      Rdr_50,
      --  75 percent full RFIFO
      Rdr_75,
      --  Full RFIFO
      Rdr_Full)
     with Size => 3;
   for RXCTL_RDR_Field use
     (Rdr_Dis => 0,
      Rdr_Ne => 1,
      Rdr_25 => 2,
      Rdr_50 => 3,
      Rdr_75 => 4,
      Rdr_Full => 5);

   --  Receive Data Overrun
   type RXCTL_RDO_Field is
     (
      --  Discard incoming data if SPI_RFIFO is full
      Discard,
      --  Overwrite old data if SPI_RFIFO is full
      Overwrite)
     with Size => 1;
   for RXCTL_RDO_Field use
     (Discard => 0,
      Overwrite => 1);

   --  Receive FIFO Regular Watermark
   type RXCTL_RRWM_Field is
     (
      --  Empty RFIFO
      Rwm_0,
      --  RFIFO less than 25 percent full
      Rwm_25,
      --  RFIFO less than 50 percent full
      Rwm_50,
      --  RFIFO less than 75 percent full
      Rwm_75)
     with Size => 2;
   for RXCTL_RRWM_Field use
     (Rwm_0 => 0,
      Rwm_25 => 1,
      Rwm_50 => 2,
      Rwm_75 => 3);

   --  Receive FIFO Urgent Watermark
   type RXCTL_RUWM_Field is
     (
      --  Disabled
      Uwm_Dis,
      --  25 percent full RFIFO
      Uwm_25,
      --  50 percent full RFIFO
      Uwm_50,
      --  75 percent full RFIFO
      Uwm_75,
      --  Full RFIFO
      Uwm_Full)
     with Size => 3;
   for RXCTL_RUWM_Field use
     (Uwm_Dis => 0,
      Uwm_25 => 1,
      Uwm_50 => 2,
      Uwm_75 => 3,
      Uwm_Full => 4);

   --  Receive Control Register
   type RXCTL_Register is record
      --  Receive Enable
      REN            : RXCTL_REN_Field := NRF_SVD.SPI0.Rx_Dis;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Receive Transfer Initiate
      RTI            : RXCTL_RTI_Field := NRF_SVD.SPI0.Rti_Dis;
      --  Receive Word Counter Enable
      RWCEN          : RXCTL_RWCEN_Field := NRF_SVD.SPI0.Rwc_Dis;
      --  Receive Data Request
      RDR            : RXCTL_RDR_Field := NRF_SVD.SPI0.Rdr_Dis;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Receive Data Overrun
      RDO            : RXCTL_RDO_Field := NRF_SVD.SPI0.Discard;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Receive FIFO Regular Watermark
      RRWM           : RXCTL_RRWM_Field := NRF_SVD.SPI0.Rwm_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Receive FIFO Urgent Watermark
      RUWM           : RXCTL_RUWM_Field := NRF_SVD.SPI0.Uwm_Dis;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCTL_Register use record
      REN            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RTI            at 0 range 2 .. 2;
      RWCEN          at 0 range 3 .. 3;
      RDR            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RDO            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RRWM           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RUWM           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Transmit Enable
   type TXCTL_TEN_Field is
     (
      --  Disable
      Tx_Dis,
      --  Enable
      Tx_En)
     with Size => 1;
   for TXCTL_TEN_Field use
     (Tx_Dis => 0,
      Tx_En => 1);

   --  Transmit Transfer Initiate
   type TXCTL_TTI_Field is
     (
      --  Disable
      Tti_Dis,
      --  Enable
      Tti_En)
     with Size => 1;
   for TXCTL_TTI_Field use
     (Tti_Dis => 0,
      Tti_En => 1);

   --  Transmit Word Counter Enable
   type TXCTL_TWCEN_Field is
     (
      --  Disable
      Twc_Dis,
      --  Enable
      Twc_En)
     with Size => 1;
   for TXCTL_TWCEN_Field use
     (Twc_Dis => 0,
      Twc_En => 1);

   --  Transmit Data Request
   type TXCTL_TDR_Field is
     (
      --  Disabled
      Tdr_Dis,
      --  Not full TFIFO
      Tdr_Nf,
      --  25 percent empty TFIFO
      Tdr_25,
      --  50 percent empty TFIFO
      Tdr_50,
      --  75 percent empty TFIFO
      Tdr_75,
      --  Empty TFIFO
      Tdr_Empty)
     with Size => 3;
   for TXCTL_TDR_Field use
     (Tdr_Dis => 0,
      Tdr_Nf => 1,
      Tdr_25 => 2,
      Tdr_50 => 3,
      Tdr_75 => 4,
      Tdr_Empty => 5);

   --  Transmit Data Under-run
   type TXCTL_TDU_Field is
     (
      --  Send last word when SPI_TFIFO is empty
      Lastwd,
      --  Send zeros when SPI_TFIFO is empty
      Zero)
     with Size => 1;
   for TXCTL_TDU_Field use
     (Lastwd => 0,
      Zero => 1);

   --  FIFO Regular Watermark
   type TXCTL_TRWM_Field is
     (
      --  Full TFIFO
      Rwm_Full,
      --  TFIFO less than 25 percent empty
      Rwm_25,
      --  TFIFO less than 50 percent empty
      Rwm_50,
      --  TFIFO less than 75 percent empty
      Rwm_75)
     with Size => 2;
   for TXCTL_TRWM_Field use
     (Rwm_Full => 0,
      Rwm_25 => 1,
      Rwm_50 => 2,
      Rwm_75 => 3);

   --  FIFO Urgent Watermark
   type TXCTL_TUWM_Field is
     (
      --  Disabled
      Uwm_Dis,
      --  25 percent empty TFIFO
      Uwm_25,
      --  50 percent empty TFIFO
      Uwm_50,
      --  75 percent empty TFIFO
      Uwm_75,
      --  Empty TFIFO
      Uwm_Empty)
     with Size => 3;
   for TXCTL_TUWM_Field use
     (Uwm_Dis => 0,
      Uwm_25 => 1,
      Uwm_50 => 2,
      Uwm_75 => 3,
      Uwm_Empty => 4);

   --  Transmit Control Register
   type TXCTL_Register is record
      --  Transmit Enable
      TEN            : TXCTL_TEN_Field := NRF_SVD.SPI0.Tx_Dis;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Transmit Transfer Initiate
      TTI            : TXCTL_TTI_Field := NRF_SVD.SPI0.Tti_Dis;
      --  Transmit Word Counter Enable
      TWCEN          : TXCTL_TWCEN_Field := NRF_SVD.SPI0.Twc_Dis;
      --  Transmit Data Request
      TDR            : TXCTL_TDR_Field := NRF_SVD.SPI0.Tdr_Dis;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Transmit Data Under-run
      TDU            : TXCTL_TDU_Field := NRF_SVD.SPI0.Lastwd;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  FIFO Regular Watermark
      TRWM           : TXCTL_TRWM_Field := NRF_SVD.SPI0.Rwm_Full;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  FIFO Urgent Watermark
      TUWM           : TXCTL_TUWM_Field := NRF_SVD.SPI0.Uwm_Dis;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCTL_Register use record
      TEN            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TTI            at 0 range 2 .. 2;
      TWCEN          at 0 range 3 .. 3;
      TDR            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TDU            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRWM           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TUWM           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CLK_BAUD_Field is HAL.UInt16;

   --  Clock Rate Register
   type CLK_Register is record
      --  Baud Rate
      BAUD           : CLK_BAUD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      BAUD           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DLY_STOP_Field is HAL.UInt8;

   --  Delay Register
   type DLY_Register is record
      --  Transfer Delay Time in Multiples of SPI Clock Period
      STOP           : DLY_STOP_Field := 16#1#;
      --  Extended SPI Clock Lead Control
      LEADX          : Boolean := True;
      --  Extended SPI Clock Lag Control
      LAGX           : Boolean := True;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLY_Register use record
      STOP           at 0 range 0 .. 7;
      LEADX          at 0 range 8 .. 8;
      LAGX           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Slave Select 1 Enable
   type SLVSEL_SSE1_Field is
     (
      --  Disable
      Ssel1_Dis,
      --  Enable
      Ssel1_En)
     with Size => 1;
   for SLVSEL_SSE1_Field use
     (Ssel1_Dis => 0,
      Ssel1_En => 1);

   --  Slave Select 2 Enable
   type SLVSEL_SSE2_Field is
     (
      --  Disable
      Ssel2_Dis,
      --  Enable
      Ssel2_En)
     with Size => 1;
   for SLVSEL_SSE2_Field use
     (Ssel2_Dis => 0,
      Ssel2_En => 1);

   --  Slave Select 3 Enable
   type SLVSEL_SSE3_Field is
     (
      --  Disable
      Ssel3_Dis,
      --  Enable
      Ssel3_En)
     with Size => 1;
   for SLVSEL_SSE3_Field use
     (Ssel3_Dis => 0,
      Ssel3_En => 1);

   --  Slave Select 4 Enable
   type SLVSEL_SSE4_Field is
     (
      --  Disable
      Ssel4_Dis,
      --  Enable
      Ssel4_En)
     with Size => 1;
   for SLVSEL_SSE4_Field use
     (Ssel4_Dis => 0,
      Ssel4_En => 1);

   --  Slave Select 5 Enable
   type SLVSEL_SSE5_Field is
     (
      --  Disable
      Ssel5_Dis,
      --  Enable
      Ssel5_En)
     with Size => 1;
   for SLVSEL_SSE5_Field use
     (Ssel5_Dis => 0,
      Ssel5_En => 1);

   --  Slave Select 6 Enable
   type SLVSEL_SSE6_Field is
     (
      --  Disable
      Ssel6_Dis,
      --  Enable
      Ssel6_En)
     with Size => 1;
   for SLVSEL_SSE6_Field use
     (Ssel6_Dis => 0,
      Ssel6_En => 1);

   --  Slave Select 7 Enable
   type SLVSEL_SSE7_Field is
     (
      --  Disable
      Ssel7_Dis,
      --  Enable
      Ssel7_En)
     with Size => 1;
   for SLVSEL_SSE7_Field use
     (Ssel7_Dis => 0,
      Ssel7_En => 1);

   --  Slave Select 1 Output
   type SLVSEL_SSEL1_Field is
     (
      --  Low
      Ssel1_Lo,
      --  High
      Ssel1_Hi)
     with Size => 1;
   for SLVSEL_SSEL1_Field use
     (Ssel1_Lo => 0,
      Ssel1_Hi => 1);

   --  Slave Select 2 Output
   type SLVSEL_SSEL2_Field is
     (
      --  Low
      Ssel2_Lo,
      --  High
      Ssel2_Hi)
     with Size => 1;
   for SLVSEL_SSEL2_Field use
     (Ssel2_Lo => 0,
      Ssel2_Hi => 1);

   --  Slave Select 3 Output
   type SLVSEL_SSEL3_Field is
     (
      --  Low
      Ssel3_Lo,
      --  High
      Ssel3_Hi)
     with Size => 1;
   for SLVSEL_SSEL3_Field use
     (Ssel3_Lo => 0,
      Ssel3_Hi => 1);

   --  Slave Select 4 Output
   type SLVSEL_SSEL4_Field is
     (
      --  Low
      Ssel4_Lo,
      --  High
      Ssel4_Hi)
     with Size => 1;
   for SLVSEL_SSEL4_Field use
     (Ssel4_Lo => 0,
      Ssel4_Hi => 1);

   --  Slave Select 5 Output
   type SLVSEL_SSEL5_Field is
     (
      --  Low
      Ssel5_Lo,
      --  High
      Ssel5_Hi)
     with Size => 1;
   for SLVSEL_SSEL5_Field use
     (Ssel5_Lo => 0,
      Ssel5_Hi => 1);

   --  Slave Select 6 Output
   type SLVSEL_SSEL6_Field is
     (
      --  Low
      Ssel6_Lo,
      --  High
      Ssel6_Hi)
     with Size => 1;
   for SLVSEL_SSEL6_Field use
     (Ssel6_Lo => 0,
      Ssel6_Hi => 1);

   --  Slave Select 7 Output
   type SLVSEL_SSEL7_Field is
     (
      --  Low
      Ssel7_Lo,
      --  High
      Ssel7_Hi)
     with Size => 1;
   for SLVSEL_SSEL7_Field use
     (Ssel7_Lo => 0,
      Ssel7_Hi => 1);

   --  Slave Select Register
   type SLVSEL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Slave Select 1 Enable
      SSE1           : SLVSEL_SSE1_Field := NRF_SVD.SPI0.Ssel1_Dis;
      --  Slave Select 2 Enable
      SSE2           : SLVSEL_SSE2_Field := NRF_SVD.SPI0.Ssel2_Dis;
      --  Slave Select 3 Enable
      SSE3           : SLVSEL_SSE3_Field := NRF_SVD.SPI0.Ssel3_Dis;
      --  Slave Select 4 Enable
      SSE4           : SLVSEL_SSE4_Field := NRF_SVD.SPI0.Ssel4_Dis;
      --  Slave Select 5 Enable
      SSE5           : SLVSEL_SSE5_Field := NRF_SVD.SPI0.Ssel5_Dis;
      --  Slave Select 6 Enable
      SSE6           : SLVSEL_SSE6_Field := NRF_SVD.SPI0.Ssel6_Dis;
      --  Slave Select 7 Enable
      SSE7           : SLVSEL_SSE7_Field := NRF_SVD.SPI0.Ssel7_Dis;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Slave Select 1 Output
      SSEL1          : SLVSEL_SSEL1_Field := NRF_SVD.SPI0.Ssel1_Hi;
      --  Slave Select 2 Output
      SSEL2          : SLVSEL_SSEL2_Field := NRF_SVD.SPI0.Ssel2_Hi;
      --  Slave Select 3 Output
      SSEL3          : SLVSEL_SSEL3_Field := NRF_SVD.SPI0.Ssel3_Hi;
      --  Slave Select 4 Output
      SSEL4          : SLVSEL_SSEL4_Field := NRF_SVD.SPI0.Ssel4_Hi;
      --  Slave Select 5 Output
      SSEL5          : SLVSEL_SSEL5_Field := NRF_SVD.SPI0.Ssel5_Hi;
      --  Slave Select 6 Output
      SSEL6          : SLVSEL_SSEL6_Field := NRF_SVD.SPI0.Ssel6_Hi;
      --  Slave Select 7 Output
      SSEL7          : SLVSEL_SSEL7_Field := NRF_SVD.SPI0.Ssel7_Hi;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLVSEL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SSE1           at 0 range 1 .. 1;
      SSE2           at 0 range 2 .. 2;
      SSE3           at 0 range 3 .. 3;
      SSE4           at 0 range 4 .. 4;
      SSE5           at 0 range 5 .. 5;
      SSE6           at 0 range 6 .. 6;
      SSE7           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SSEL1          at 0 range 9 .. 9;
      SSEL2          at 0 range 10 .. 10;
      SSEL3          at 0 range 11 .. 11;
      SSEL4          at 0 range 12 .. 12;
      SSEL5          at 0 range 13 .. 13;
      SSEL6          at 0 range 14 .. 14;
      SSEL7          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RWC_VALUE_Field is HAL.UInt16;

   --  Received Word Count Register
   type RWC_Register is record
      --  Received Word Count
      VALUE          : RWC_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RWC_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RWCR_VALUE_Field is HAL.UInt16;

   --  Received Word Count Reload Register
   type RWCR_Register is record
      --  Received Word Count Reload
      VALUE          : RWCR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RWCR_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWC_VALUE_Field is HAL.UInt16;

   --  Transmitted Word Count Register
   type TWC_Register is record
      --  Transmitted Word Count
      VALUE          : TWC_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWC_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWCR_VALUE_Field is HAL.UInt16;

   --  Transmitted Word Count Reload Register
   type TWCR_Register is record
      --  Transmitted Word Count Reload
      VALUE          : TWCR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWCR_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Receive Urgent Watermark
   type IMSK_RUWM_Field is
     (
      --  Disable (mask) interrupt
      Ruwm_Lo,
      --  Enable (unmask) interrupt
      Ruwm_Hi)
     with Size => 1;
   for IMSK_RUWM_Field use
     (Ruwm_Lo => 0,
      Ruwm_Hi => 1);

   --  Transmit Urgent Watermark
   type IMSK_TUWM_Field is
     (
      --  Disable (mask) interrupt
      Tuwm_Lo,
      --  Enable (unmask) interrupt
      Tuwm_Hi)
     with Size => 1;
   for IMSK_TUWM_Field use
     (Tuwm_Lo => 0,
      Tuwm_Hi => 1);

   --  Receive Overrun
   type IMSK_ROR_Field is
     (
      --  Disable (mask) interrupt
      Ror_Lo,
      --  Enable (unmask) interrupt
      Ror_Hi)
     with Size => 1;
   for IMSK_ROR_Field use
     (Ror_Lo => 0,
      Ror_Hi => 1);

   --  Transmit Underrun
   type IMSK_TUR_Field is
     (
      --  Disable (mask) interrupt
      Tur_Lo,
      --  Enable (unmask) interrupt
      Tur_Hi)
     with Size => 1;
   for IMSK_TUR_Field use
     (Tur_Lo => 0,
      Tur_Hi => 1);

   --  Transmit Collision
   type IMSK_TC_Field is
     (
      --  Disable (mask) interrupt
      Tc_Lo,
      --  Enable (unmask) interrupt
      Tc_Hi)
     with Size => 1;
   for IMSK_TC_Field use
     (Tc_Lo => 0,
      Tc_Hi => 1);

   --  Mode Fault
   type IMSK_MF_Field is
     (
      --  Disable (mask) interrupt
      Mf_Lo,
      --  Enable (unmask) interrupt
      Mf_Hi)
     with Size => 1;
   for IMSK_MF_Field use
     (Mf_Lo => 0,
      Mf_Hi => 1);

   --  Receive Start
   type IMSK_RS_Field is
     (
      --  Disable (mask) interrupt
      Rs_Lo,
      --  Enable (unmask) interrupt
      Rs_Hi)
     with Size => 1;
   for IMSK_RS_Field use
     (Rs_Lo => 0,
      Rs_Hi => 1);

   --  Transmit Start
   type IMSK_TS_Field is
     (
      --  Disable (mask) interrupt
      Ts_Lo,
      --  Enable (unmask) interrupt
      Ts_Hi)
     with Size => 1;
   for IMSK_TS_Field use
     (Ts_Lo => 0,
      Ts_Hi => 1);

   --  Receive Finish
   type IMSK_RF_Field is
     (
      --  Disable (mask) interrupt
      Rf_Lo,
      --  Enable (unmask) interrupt
      Rf_Hi)
     with Size => 1;
   for IMSK_RF_Field use
     (Rf_Lo => 0,
      Rf_Hi => 1);

   --  Transmit Finish
   type IMSK_TF_Field is
     (
      --  Disable (mask) interrupt
      Tf_Lo,
      --  Enable (unmask) interrupt
      Tf_Hi)
     with Size => 1;
   for IMSK_TF_Field use
     (Tf_Lo => 0,
      Tf_Hi => 1);

   --  Interrupt Mask Register
   type IMSK_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Receive Urgent Watermark
      RUWM           : IMSK_RUWM_Field;
      --  Read-only. Transmit Urgent Watermark
      TUWM           : IMSK_TUWM_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Receive Overrun
      ROR            : IMSK_ROR_Field;
      --  Read-only. Transmit Underrun
      TUR            : IMSK_TUR_Field;
      --  Read-only. Transmit Collision
      TC             : IMSK_TC_Field;
      --  Read-only. Mode Fault
      MF             : IMSK_MF_Field;
      --  Read-only. Receive Start
      RS             : IMSK_RS_Field;
      --  Read-only. Transmit Start
      TS             : IMSK_TS_Field;
      --  Read-only. Receive Finish
      RF             : IMSK_RF_Field;
      --  Read-only. Transmit Finish
      TF             : IMSK_TF_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RUWM           at 0 range 1 .. 1;
      TUWM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ROR            at 0 range 4 .. 4;
      TUR            at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      MF             at 0 range 7 .. 7;
      RS             at 0 range 8 .. 8;
      TS             at 0 range 9 .. 9;
      RF             at 0 range 10 .. 10;
      TF             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Mask Clear Register
   type IMSK_CLR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Clear Receive Urgent Watermark
      RUWM           : Boolean := False;
      --  Clear Transmit Urgent Watermark
      TUWM           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Clear Receive Overrun
      ROR            : Boolean := False;
      --  Clear Transmit Under-run
      TUR            : Boolean := False;
      --  Clear Transmit Collision
      TC             : Boolean := False;
      --  Clear Mode Fault
      MF             : Boolean := False;
      --  Clear Receive Start
      RS             : Boolean := False;
      --  Clear Transmit Start
      TS             : Boolean := False;
      --  Clear Receive Finish
      RF             : Boolean := False;
      --  Clear Transmit Finish
      TF             : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_CLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RUWM           at 0 range 1 .. 1;
      TUWM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ROR            at 0 range 4 .. 4;
      TUR            at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      MF             at 0 range 7 .. 7;
      RS             at 0 range 8 .. 8;
      TS             at 0 range 9 .. 9;
      RF             at 0 range 10 .. 10;
      TF             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Mask Set Register
   type IMSK_SET_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Set Receive Urgent Watermark
      RUWM           : Boolean := False;
      --  Set Transmit Urgent Watermark
      TUWM           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Set Receive Overrun
      ROR            : Boolean := False;
      --  Set Transmit Underrun
      TUR            : Boolean := False;
      --  Set Transmit Collision
      TC             : Boolean := False;
      --  Set Mode Fault
      MF             : Boolean := False;
      --  Set Receive Start
      RS             : Boolean := False;
      --  Set Transmit Start
      TS             : Boolean := False;
      --  Set Receive Finish
      RF             : Boolean := False;
      --  Set Transmit Finish
      TF             : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_SET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RUWM           at 0 range 1 .. 1;
      TUWM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ROR            at 0 range 4 .. 4;
      TUR            at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      MF             at 0 range 7 .. 7;
      RS             at 0 range 8 .. 8;
      TS             at 0 range 9 .. 9;
      RF             at 0 range 10 .. 10;
      TF             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SPI Finished
   type STAT_SPIF_Field is
     (
      --  No status
      Spif_Lo,
      --  Completed single-word transfer
      Spif_Hi)
     with Size => 1;
   for STAT_SPIF_Field use
     (Spif_Lo => 0,
      Spif_Hi => 1);

   --  Receive Urgent Watermark Breached
   type STAT_RUWM_Field is
     (
      --  RX Regular Watermark reached
      Ruwm_Lo,
      --  RX Urgent Watermark breached
      Ruwm_Hi)
     with Size => 1;
   for STAT_RUWM_Field use
     (Ruwm_Lo => 0,
      Ruwm_Hi => 1);

   --  Transmit Urgent Watermark Breached
   type STAT_TUWM_Field is
     (
      --  TX Regular Watermark reached
      Tuwm_Lo,
      --  TX Urgent Watermark breached
      Tuwm_Hi)
     with Size => 1;
   for STAT_TUWM_Field use
     (Tuwm_Lo => 0,
      Tuwm_Hi => 1);

   --  Receive Overrun Indication
   type STAT_ROR_Field is
     (
      --  No status
      Ror_Lo,
      --  Receive overrun occurred
      Ror_Hi)
     with Size => 1;
   for STAT_ROR_Field use
     (Ror_Lo => 0,
      Ror_Hi => 1);

   --  Transmit Underrun Indication
   type STAT_TUR_Field is
     (
      --  No status
      Tur_Lo,
      --  Transmit underrun occurred
      Tur_Hi)
     with Size => 1;
   for STAT_TUR_Field use
     (Tur_Lo => 0,
      Tur_Hi => 1);

   --  Transmit Collision Indication
   type STAT_TC_Field is
     (
      --  No status
      Tc_Lo,
      --  Transmit collision occurred
      Tc_Hi)
     with Size => 1;
   for STAT_TC_Field use
     (Tc_Lo => 0,
      Tc_Hi => 1);

   --  Mode Fault Indication
   type STAT_MF_Field is
     (
      --  No status
      Mf_Lo,
      --  Mode fault occurred
      Mf_Hi)
     with Size => 1;
   for STAT_MF_Field use
     (Mf_Lo => 0,
      Mf_Hi => 1);

   --  Receive Start
   type STAT_RS_Field is
     (
      --  No status
      Rs_Lo,
      --  Receive start detected
      Rs_Hi)
     with Size => 1;
   for STAT_RS_Field use
     (Rs_Lo => 0,
      Rs_Hi => 1);

   --  Transmit Start
   type STAT_TS_Field is
     (
      --  No status
      Ts_Lo,
      --  Transmit start detected
      Ts_Hi)
     with Size => 1;
   for STAT_TS_Field use
     (Ts_Lo => 0,
      Ts_Hi => 1);

   --  Receive Finish Indication
   type STAT_RF_Field is
     (
      --  No status
      Rf_Lo,
      --  Receive finish detected
      Rf_Hi)
     with Size => 1;
   for STAT_RF_Field use
     (Rf_Lo => 0,
      Rf_Hi => 1);

   --  Transmit Finish Indication
   type STAT_TF_Field is
     (
      --  No status
      Tf_Lo,
      --  Transmit finish detected
      Tf_Hi)
     with Size => 1;
   for STAT_TF_Field use
     (Tf_Lo => 0,
      Tf_Hi => 1);

   --  SPI_RFIFO Status
   type STAT_RFS_Field is
     (
      --  Empty RFIFO
      Rfifo_Empty,
      --  25 percent full RFIFO
      Rfifo_25,
      --  50 percent full RFIFO
      Rfifo_50,
      --  75 percent full RFIFO
      Rfifo_75,
      --  Full RFIFO
      Rfifo_Full)
     with Size => 3;
   for STAT_RFS_Field use
     (Rfifo_Empty => 0,
      Rfifo_25 => 1,
      Rfifo_50 => 2,
      Rfifo_75 => 3,
      Rfifo_Full => 4);

   --  SPI_TFIFO Status
   type STAT_TFS_Field is
     (
      --  Full TFIFO
      Tfifo_Full,
      --  25 percent empty TFIFO
      Tfifo_25,
      --  50 percent empty TFIFO
      Tfifo_50,
      --  75 percent empty TFIFO
      Tfifo_75,
      --  Empty TFIFO
      Tfifo_Empty)
     with Size => 3;
   for STAT_TFS_Field use
     (Tfifo_Full => 0,
      Tfifo_25 => 1,
      Tfifo_50 => 2,
      Tfifo_75 => 3,
      Tfifo_Empty => 4);

   --  Flow Control Stall Indication
   type STAT_FCS_Field is
     (
      --  No Stall (RDY pin asserted)
      Stall,
      --  Stall (RDY pin de-asserted)
      Nostall)
     with Size => 1;
   for STAT_FCS_Field use
     (Stall => 0,
      Nostall => 1);

   --  SPI_RFIFO Empty
   type STAT_RFE_Field is
     (
      --  RX FIFO not empty
      Rfifo_Ne,
      --  RX FIFO empty
      Rfifo_E)
     with Size => 1;
   for STAT_RFE_Field use
     (Rfifo_Ne => 0,
      Rfifo_E => 1);

   --  SPI_TFIFO Full
   type STAT_TFF_Field is
     (
      --  Not full Tx FIFO
      Tfifo_Nf,
      --  Full Tx FIFO
      Tfifo_F)
     with Size => 1;
   for STAT_TFF_Field use
     (Tfifo_Nf => 0,
      Tfifo_F => 1);

   --  Status Register
   type STAT_Register is record
      --  Read-only. SPI Finished
      SPIF           : STAT_SPIF_Field := NRF_SVD.SPI0.Spif_Hi;
      --  Read-only. Receive Urgent Watermark Breached
      RUWM           : STAT_RUWM_Field := NRF_SVD.SPI0.Ruwm_Lo;
      --  Read-only. Transmit Urgent Watermark Breached
      TUWM           : STAT_TUWM_Field := NRF_SVD.SPI0.Tuwm_Lo;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Receive Overrun Indication
      ROR            : STAT_ROR_Field := NRF_SVD.SPI0.Ror_Lo;
      --  Transmit Underrun Indication
      TUR            : STAT_TUR_Field := NRF_SVD.SPI0.Tur_Lo;
      --  Transmit Collision Indication
      TC             : STAT_TC_Field := NRF_SVD.SPI0.Tc_Lo;
      --  Mode Fault Indication
      MF             : STAT_MF_Field := NRF_SVD.SPI0.Mf_Lo;
      --  Receive Start
      RS             : STAT_RS_Field := NRF_SVD.SPI0.Rs_Lo;
      --  Transmit Start
      TS             : STAT_TS_Field := NRF_SVD.SPI0.Ts_Lo;
      --  Receive Finish Indication
      RF             : STAT_RF_Field := NRF_SVD.SPI0.Rf_Lo;
      --  Transmit Finish Indication
      TF             : STAT_TF_Field := NRF_SVD.SPI0.Tf_Lo;
      --  Read-only. SPI_RFIFO Status
      RFS            : STAT_RFS_Field := NRF_SVD.SPI0.Rfifo_Empty;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. SPI_TFIFO Status
      TFS            : STAT_TFS_Field := NRF_SVD.SPI0.Tfifo_Empty;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read-only. Flow Control Stall Indication
      FCS            : STAT_FCS_Field := NRF_SVD.SPI0.Stall;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Read-only. SPI_RFIFO Empty
      RFE            : STAT_RFE_Field := NRF_SVD.SPI0.Rfifo_E;
      --  Read-only. SPI_TFIFO Full
      TFF            : STAT_TFF_Field := NRF_SVD.SPI0.Tfifo_Nf;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      SPIF           at 0 range 0 .. 0;
      RUWM           at 0 range 1 .. 1;
      TUWM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ROR            at 0 range 4 .. 4;
      TUR            at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      MF             at 0 range 7 .. 7;
      RS             at 0 range 8 .. 8;
      TS             at 0 range 9 .. 9;
      RF             at 0 range 10 .. 10;
      TF             at 0 range 11 .. 11;
      RFS            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TFS            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FCS            at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      RFE            at 0 range 22 .. 22;
      TFF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Receive Urgent Watermark Interrupt Latch
   type ILAT_RUWM_Field is
     (
      --  No interrupt
      Ruwm_Lo,
      --  Latched interrupt
      Ruwm_Hi)
     with Size => 1;
   for ILAT_RUWM_Field use
     (Ruwm_Lo => 0,
      Ruwm_Hi => 1);

   --  Transmit Urgent Watermark Interrupt Latch
   type ILAT_TUWM_Field is
     (
      --  No interrupt
      Tuwm_Lo,
      --  Latched interrupt
      Tuwm_Hi)
     with Size => 1;
   for ILAT_TUWM_Field use
     (Tuwm_Lo => 0,
      Tuwm_Hi => 1);

   --  Receive Overrun Interrupt Latch
   type ILAT_ROR_Field is
     (
      --  No interrupt
      Ror_Lo,
      --  Latched interrupt
      Ror_Hi)
     with Size => 1;
   for ILAT_ROR_Field use
     (Ror_Lo => 0,
      Ror_Hi => 1);

   --  Transmit Underrun Interrupt Latch
   type ILAT_TUR_Field is
     (
      --  No interrupt
      Tur_Lo,
      --  Latched interrupt
      Tur_Hi)
     with Size => 1;
   for ILAT_TUR_Field use
     (Tur_Lo => 0,
      Tur_Hi => 1);

   --  Transmit Collision Interrupt Latch
   type ILAT_TC_Field is
     (
      --  No interrupt
      Tc_Lo,
      --  Latched interrupt
      Tc_Hi)
     with Size => 1;
   for ILAT_TC_Field use
     (Tc_Lo => 0,
      Tc_Hi => 1);

   --  Mode Fault Interrupt Latch
   type ILAT_MF_Field is
     (
      --  No interrupt
      Mf_Lo,
      --  Latched interrupt
      Mf_Hi)
     with Size => 1;
   for ILAT_MF_Field use
     (Mf_Lo => 0,
      Mf_Hi => 1);

   --  Receive Start Interrupt Latch
   type ILAT_RS_Field is
     (
      --  No interrupt
      Rs_Lo,
      --  Latched interrupt
      Rs_Hi)
     with Size => 1;
   for ILAT_RS_Field use
     (Rs_Lo => 0,
      Rs_Hi => 1);

   --  Transmit Start Interrupt Latch
   type ILAT_TS_Field is
     (
      --  No interrupt
      Ts_Lo,
      --  Latched interrupt
      Ts_Hi)
     with Size => 1;
   for ILAT_TS_Field use
     (Ts_Lo => 0,
      Ts_Hi => 1);

   --  Receive Finish Interrupt Latch
   type ILAT_RF_Field is
     (
      --  No interrupt
      Rf_Lo,
      --  Latched interrupt
      Rf_Hi)
     with Size => 1;
   for ILAT_RF_Field use
     (Rf_Lo => 0,
      Rf_Hi => 1);

   --  Transmit Finish Interrupt Latch
   type ILAT_TF_Field is
     (
      --  No interrupt
      Tf_Lo,
      --  Latched interrupt
      Tf_Hi)
     with Size => 1;
   for ILAT_TF_Field use
     (Tf_Lo => 0,
      Tf_Hi => 1);

   --  Masked Interrupt Condition Register
   type ILAT_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Receive Urgent Watermark Interrupt Latch
      RUWM           : ILAT_RUWM_Field;
      --  Read-only. Transmit Urgent Watermark Interrupt Latch
      TUWM           : ILAT_TUWM_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Receive Overrun Interrupt Latch
      ROR            : ILAT_ROR_Field;
      --  Read-only. Transmit Underrun Interrupt Latch
      TUR            : ILAT_TUR_Field;
      --  Read-only. Transmit Collision Interrupt Latch
      TC             : ILAT_TC_Field;
      --  Read-only. Mode Fault Interrupt Latch
      MF             : ILAT_MF_Field;
      --  Read-only. Receive Start Interrupt Latch
      RS             : ILAT_RS_Field;
      --  Read-only. Transmit Start Interrupt Latch
      TS             : ILAT_TS_Field;
      --  Read-only. Receive Finish Interrupt Latch
      RF             : ILAT_RF_Field;
      --  Read-only. Transmit Finish Interrupt Latch
      TF             : ILAT_TF_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILAT_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RUWM           at 0 range 1 .. 1;
      TUWM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ROR            at 0 range 4 .. 4;
      TUR            at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      MF             at 0 range 7 .. 7;
      RS             at 0 range 8 .. 8;
      TS             at 0 range 9 .. 9;
      RF             at 0 range 10 .. 10;
      TF             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Masked Interrupt Clear Register
   type ILAT_CLR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Read-only. Clear Receive Urgent Watermark
      RUWM           : Boolean := False;
      --  Read-only. Clear Transmit Urgent Watermark
      TUWM           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Clear Receive Overrun
      ROR            : Boolean := False;
      --  Clear Transmit Under-run
      TUR            : Boolean := False;
      --  Clear Transmit Collision
      TC             : Boolean := False;
      --  Clear Mode Fault
      MF             : Boolean := False;
      --  Clear Receive Start
      RS             : Boolean := False;
      --  Clear Transmit Start
      TS             : Boolean := False;
      --  Clear Receive Finish
      RF             : Boolean := False;
      --  Clear Transmit Finish
      TF             : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILAT_CLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RUWM           at 0 range 1 .. 1;
      TUWM           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ROR            at 0 range 4 .. 4;
      TUR            at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      MF             at 0 range 7 .. 7;
      RS             at 0 range 8 .. 8;
      TS             at 0 range 9 .. 9;
      RF             at 0 range 10 .. 10;
      TF             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI0_Peripheral is record
      --  Control Register
      CTL      : aliased CTL_Register;
      --  Receive Control Register
      RXCTL    : aliased RXCTL_Register;
      --  Transmit Control Register
      TXCTL    : aliased TXCTL_Register;
      --  Clock Rate Register
      CLK      : aliased CLK_Register;
      --  Delay Register
      DLY      : aliased DLY_Register;
      --  Slave Select Register
      SLVSEL   : aliased SLVSEL_Register;
      --  Received Word Count Register
      RWC      : aliased RWC_Register;
      --  Received Word Count Reload Register
      RWCR     : aliased RWCR_Register;
      --  Transmitted Word Count Register
      TWC      : aliased TWC_Register;
      --  Transmitted Word Count Reload Register
      TWCR     : aliased TWCR_Register;
      --  Interrupt Mask Register
      IMSK     : aliased IMSK_Register;
      --  Interrupt Mask Clear Register
      IMSK_CLR : aliased IMSK_CLR_Register;
      --  Interrupt Mask Set Register
      IMSK_SET : aliased IMSK_SET_Register;
      --  Status Register
      STAT     : aliased STAT_Register;
      --  Masked Interrupt Condition Register
      ILAT     : aliased ILAT_Register;
      --  Masked Interrupt Clear Register
      ILAT_CLR : aliased ILAT_CLR_Register;
      --  Receive FIFO Data Register
      RFIFO    : aliased HAL.UInt32;
      --  Transmit FIFO Data Register
      TFIFO    : aliased HAL.UInt32;
   end record
     with Volatile;

   for SPI0_Peripheral use record
      CTL      at 16#4# range 0 .. 31;
      RXCTL    at 16#8# range 0 .. 31;
      TXCTL    at 16#C# range 0 .. 31;
      CLK      at 16#10# range 0 .. 31;
      DLY      at 16#14# range 0 .. 31;
      SLVSEL   at 16#18# range 0 .. 31;
      RWC      at 16#1C# range 0 .. 31;
      RWCR     at 16#20# range 0 .. 31;
      TWC      at 16#24# range 0 .. 31;
      TWCR     at 16#28# range 0 .. 31;
      IMSK     at 16#30# range 0 .. 31;
      IMSK_CLR at 16#34# range 0 .. 31;
      IMSK_SET at 16#38# range 0 .. 31;
      STAT     at 16#40# range 0 .. 31;
      ILAT     at 16#44# range 0 .. 31;
      ILAT_CLR at 16#48# range 0 .. 31;
      RFIFO    at 16#50# range 0 .. 31;
      TFIFO    at 16#58# range 0 .. 31;
   end record;

   --  Serial Peripheral Interface
   SPI0_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#41009000#);

   --  Serial Peripheral Interface
   SPI1_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

end NRF_SVD.SPI0;
