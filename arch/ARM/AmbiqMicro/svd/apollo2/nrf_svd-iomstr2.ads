--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  I2C/SPI Master
package NRF_SVD.IOMSTR2 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FIFOPTR_FIFOSIZ_Field is HAL.UInt8;
   subtype FIFOPTR_FIFOREM_Field is HAL.UInt8;

   --  Current FIFO Pointers
   type FIFOPTR_Register is record
      --  The number of bytes currently in the FIFO.
      FIFOSIZ        : FIFOPTR_FIFOSIZ_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  The number of bytes remaining in the FIFO (i.e. 128-FIFOSIZ if
      --  FULLDUP = 0 or 64-FIFOSIZ if FULLDUP = 1)).
      FIFOREM        : FIFOPTR_FIFOREM_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOPTR_Register use record
      FIFOSIZ        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FIFOREM        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TLNGTH_TLNGTH_Field is HAL.UInt12;

   --  Transfer Length
   type TLNGTH_Register is record
      --  Remaining transfer length.
      TLNGTH         : TLNGTH_TLNGTH_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TLNGTH_Register use record
      TLNGTH         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype FIFOTHR_FIFORTHR_Field is HAL.UInt7;
   subtype FIFOTHR_FIFOWTHR_Field is HAL.UInt7;

   --  FIFO Threshold Configuration
   type FIFOTHR_Register is record
      --  FIFO read threshold.
      FIFORTHR       : FIFOTHR_FIFORTHR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  FIFO write threshold.
      FIFOWTHR       : FIFOTHR_FIFOWTHR_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOTHR_Register use record
      FIFORTHR       at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FIFOWTHR       at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Select the input clock frequency.
   type CLKCFG_FSEL_Field is
     (
      --  Selects the minimum power clock. This setting should be used whenever
      --  the IOMSTR is not active. value.
      Min_Pwr,
      --  Selects the HFRC as the input clock. value.
      Hfrc,
      --  Selects the HFRC / 2 as the input clock. value.
      Hfrc_Div2,
      --  Selects the HFRC / 4 as the input clock. value.
      Hfrc_Div4,
      --  Selects the HFRC / 8 as the input clock. value.
      Hfrc_Div8,
      --  Selects the HFRC / 16 as the input clock. value.
      Hfrc_Div16,
      --  Selects the HFRC / 32 as the input clock. value.
      Hfrc_Div32,
      --  Selects the HFRC / 64 as the input clock. value.
      Hfrc_Div64)
     with Size => 3;
   for CLKCFG_FSEL_Field use
     (Min_Pwr => 0,
      Hfrc => 1,
      Hfrc_Div2 => 2,
      Hfrc_Div4 => 3,
      Hfrc_Div8 => 4,
      Hfrc_Div16 => 5,
      Hfrc_Div32 => 6,
      Hfrc_Div64 => 7);

   --  Enable divide by 3.
   type CLKCFG_DIV3_Field is
     (
      --  Select divide by 1. value.
      Dis,
      --  Select divide by 3. value.
      En)
     with Size => 1;
   for CLKCFG_DIV3_Field use
     (Dis => 0,
      En => 1);

   --  Enable clock division by TOTPER.
   type CLKCFG_DIVEN_Field is
     (
      --  Disable TOTPER division. value.
      Dis,
      --  Enable TOTPER division. value.
      En)
     with Size => 1;
   for CLKCFG_DIVEN_Field use
     (Dis => 0,
      En => 1);

   subtype CLKCFG_LOWPER_Field is HAL.UInt8;
   subtype CLKCFG_TOTPER_Field is HAL.UInt8;

   --  I/O Clock Configuration
   type CLKCFG_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Select the input clock frequency.
      FSEL           : CLKCFG_FSEL_Field := NRF_SVD.IOMSTR2.Min_Pwr;
      --  Enable divide by 3.
      DIV3           : CLKCFG_DIV3_Field := NRF_SVD.IOMSTR2.Dis;
      --  Enable clock division by TOTPER.
      DIVEN          : CLKCFG_DIVEN_Field := NRF_SVD.IOMSTR2.Dis;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Clock low count minus 1.
      LOWPER         : CLKCFG_LOWPER_Field := 16#0#;
      --  Clock total count minus 1.
      TOTPER         : CLKCFG_TOTPER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKCFG_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      FSEL           at 0 range 8 .. 10;
      DIV3           at 0 range 11 .. 11;
      DIVEN          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LOWPER         at 0 range 16 .. 23;
      TOTPER         at 0 range 24 .. 31;
   end record;

   subtype CMDRPT_CMDRPT_Field is HAL.UInt5;

   --  Command Repeat Register
   type CMDRPT_Register is record
      --  These bits hold the Command repeat count.
      CMDRPT        : CMDRPT_CMDRPT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMDRPT_Register use record
      CMDRPT        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  This bit indicates if an error interrupt has occurred.
   type STATUS_ERR_Field is
     (
      --  Reset value for the field
      Status_Err_Field_Reset,
      --  An error has been indicated by the IOM. value.
      Error)
     with Size => 1;
   for STATUS_ERR_Field use
     (Status_Err_Field_Reset => 0,
      Error => 1);

   --  This bit indicates if the I/O Command is active.
   type STATUS_CMDACT_Field is
     (
      --  Reset value for the field
      Status_Cmdact_Field_Reset,
      --  An I/O command is active. value.
      Active)
     with Size => 1;
   for STATUS_CMDACT_Field use
     (Status_Cmdact_Field_Reset => 0,
      Active => 1);

   --  This bit indicates if the I/O state machine is IDLE.
   type STATUS_IDLEST_Field is
     (
      --  Reset value for the field
      Status_Idlest_Field_Reset,
      --  The I/O state machine is in the idle state. value.
      Idle)
     with Size => 1;
   for STATUS_IDLEST_Field use
     (Status_Idlest_Field_Reset => 0,
      Idle => 1);

   --  Status Register
   type STATUS_Register is record
      --  This bit indicates if an error interrupt has occurred.
      ERR           : STATUS_ERR_Field := Status_Err_Field_Reset;
      --  This bit indicates if the I/O Command is active.
      CMDACT        : STATUS_CMDACT_Field := Status_Cmdact_Field_Reset;
      --  This bit indicates if the I/O state machine is IDLE.
      IDLEST        : STATUS_IDLEST_Field := Status_Idlest_Field_Reset;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      ERR           at 0 range 0 .. 0;
      CMDACT        at 0 range 1 .. 1;
      IDLEST        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  This bit selects the I/O interface.
   type CFG_IFCSEL_Field is
     (
      --  Selects I2C interface for the I/O Master. value.
      I2C,
      --  Selects SPI interface for the I/O Master. value.
      Spi)
     with Size => 1;
   for CFG_IFCSEL_Field use
     (I2C => 0,
      Spi => 1);

   --  This bit selects SPI polarity.
   type CFG_SPOL_Field is
     (
      --  The base value of the clock is 0. value.
      Clk_Base_0,
      --  The base value of the clock is 1. value.
      Clk_Base_1)
     with Size => 1;
   for CFG_SPOL_Field use
     (Clk_Base_0 => 0,
      Clk_Base_1 => 1);

   --  This bit selects SPI phase.
   type CFG_SPHA_Field is
     (
      --  Sample on the leading (first) clock edge. value.
      Sample_Leading_Edge,
      --  Sample on the trailing (second) clock edge. value.
      Sample_Trailing_Edge)
     with Size => 1;
   for CFG_SPHA_Field use
     (Sample_Leading_Edge => 0,
      Sample_Trailing_Edge => 1);

   --  This bit selects full duplex mode.
   type CFG_FULLDUP_Field is
     (
      --  128 byte FIFO in half duplex mode. value.
      Normal,
      --  64 byte FIFO in full duplex mode. value.
      Fulldup)
     with Size => 1;
   for CFG_FULLDUP_Field use
     (Normal => 0,
      Fulldup => 1);

   --  This bit selects the preread timing.
   type CFG_STARTRD_Field is
     (
      --  0 read delay cycles. value.
      Prerd0,
      --  1 read delay cycles. value.
      Prerd1,
      --  2 read delay cycles. value.
      Prerd2,
      --  3 read delay cycles. value.
      Prerd3)
     with Size => 2;
   for CFG_STARTRD_Field use
     (Prerd0 => 0,
      Prerd1 => 1,
      Prerd2 => 2,
      Prerd3 => 3);

   --  This bit enables write mode flow control.
   type CFG_WTFC_Field is
     (
      --  Write mode flow control disabled. value.
      Dis,
      --  Write mode flow control enabled. value.
      En)
     with Size => 1;
   for CFG_WTFC_Field use
     (Dis => 0,
      En => 1);

   --  This bit enables read mode flow control.
   type CFG_RDFC_Field is
     (
      --  Read mode flow control disabled. value.
      Dis,
      --  Read mode flow control enabled. value.
      En)
     with Size => 1;
   for CFG_RDFC_Field use
     (Dis => 0,
      En => 1);

   --  This bit invewrts MOSI when flow control is enabled.
   type CFG_MOSIINV_Field is
     (
      --  MOSI is set to 0 in read mode and 1 in write mode. value.
      Normal,
      --  MOSI is set to 1 in read mode and 0 in write mode. value.
      Invert)
     with Size => 1;
   for CFG_MOSIINV_Field use
     (Normal => 0,
      Invert => 1);

   --  This bit selects the write mode flow control signal.
   type CFG_WTFCIRQ_Field is
     (
      --  MISO is used as the write mode flow control signal. value.
      Miso,
      --  IRQ is used as the write mode flow control signal. value.
      Irq)
     with Size => 1;
   for CFG_WTFCIRQ_Field use
     (Miso => 0,
      Irq => 1);

   --  This bit selects the write flow control signal polarity.
   type CFG_WTFCPOL_Field is
     (
      --  Flow control signal high creates flow control. value.
      High,
      --  Flow control signal low creates flow control. value.
      Low)
     with Size => 1;
   for CFG_WTFCPOL_Field use
     (High => 0,
      Low => 1);

   --  This bit selects the read flow control signal polarity.
   type CFG_RDFCPOL_Field is
     (
      --  Flow control signal high creates flow control. value.
      High,
      --  Flow control signal low creates flow control. value.
      Low)
     with Size => 1;
   for CFG_RDFCPOL_Field use
     (High => 0,
      Low => 1);

   --  This bit enables the IO Master.
   type CFG_IFCEN_Field is
     (
      --  Disable the IO Master. value.
      Dis,
      --  Enable the IO Master. value.
      En)
     with Size => 1;
   for CFG_IFCEN_Field use
     (Dis => 0,
      En => 1);

   --  I/O Master Configuration
   type CFG_Register is record
      --  This bit selects the I/O interface.
      IFCSEL         : CFG_IFCSEL_Field := NRF_SVD.IOMSTR2.I2C;
      --  This bit selects SPI polarity.
      SPOL           : CFG_SPOL_Field := NRF_SVD.IOMSTR2.Clk_Base_0;
      --  This bit selects SPI phase.
      SPHA           : CFG_SPHA_Field := NRF_SVD.IOMSTR2.Sample_Leading_Edge;
      --  This bit selects full duplex mode.
      FULLDUP        : CFG_FULLDUP_Field := NRF_SVD.IOMSTR2.Normal;
      --  This bit selects the preread timing.
      STARTRD        : CFG_STARTRD_Field := NRF_SVD.IOMSTR2.Prerd0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  This bit enables write mode flow control.
      WTFC           : CFG_WTFC_Field := NRF_SVD.IOMSTR2.Dis;
      --  This bit enables read mode flow control.
      RDFC           : CFG_RDFC_Field := NRF_SVD.IOMSTR2.Dis;
      --  This bit invewrts MOSI when flow control is enabled.
      MOSIINV        : CFG_MOSIINV_Field := NRF_SVD.IOMSTR2.Normal;
      --  This bit must be left at the default value of 0.
      FCDEL          : Boolean := False;
      --  This bit selects the write mode flow control signal.
      WTFCIRQ        : CFG_WTFCIRQ_Field := NRF_SVD.IOMSTR2.Miso;
      --  This bit selects the write flow control signal polarity.
      WTFCPOL        : CFG_WTFCPOL_Field := NRF_SVD.IOMSTR2.Low;
      --  This bit selects the read flow control signal polarity.
      RDFCPOL        : CFG_RDFCPOL_Field := NRF_SVD.IOMSTR2.High;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  This bit enables the IO Master.
      IFCEN          : CFG_IFCEN_Field := NRF_SVD.IOMSTR2.Dis;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      IFCSEL         at 0 range 0 .. 0;
      SPOL           at 0 range 1 .. 1;
      SPHA           at 0 range 2 .. 2;
      FULLDUP        at 0 range 3 .. 3;
      STARTRD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WTFC           at 0 range 8 .. 8;
      RDFC           at 0 range 9 .. 9;
      MOSIINV        at 0 range 10 .. 10;
      FCDEL          at 0 range 11 .. 11;
      WTFCIRQ        at 0 range 12 .. 12;
      WTFCPOL        at 0 range 13 .. 13;
      RDFCPOL        at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      IFCEN          at 0 range 31 .. 31;
   end record;

   --  IO Master Interrupts: Enable
   type INTEN_Register is record
      --  This is the Command Complete interrupt.
      CMDCMP         : Boolean := False;
      --  This is the FIFO Threshold interrupt.
      THR            : Boolean := False;
      --  This is the Read FIFO Underflow interrupt. An attempt was made to
      --  read FIFO when empty (i.e. while FIFOSIZ less than 4).
      FUNDFL         : Boolean := False;
      --  This is the Write FIFO Overflow interrupt. An attempt was made to
      --  write the FIFO while it was full (i.e. while FIFOSIZ > 124).
      FOVFL          : Boolean := False;
      --  This is the I2C NAK interrupt. The expected ACK from the slave was
      --  not received by the IOM.
      NAK            : Boolean := False;
      --  This is the WTLEN interrupt.
      WTLEN          : Boolean := False;
      --  This is the illegal FIFO access interrupt. An attempt was made to
      --  read the FIFO during a write CMD. Or an attempt was made to write the
      --  FIFO on a read CMD.
      IACC           : Boolean := False;
      --  This is the illegal command interrupt. Software attempted to issue a
      --  CMD while another CMD was already in progress. Or an attempt was made
      --  to issue a non-zero-length write CMD with an empty FIFO.
      ICMD           : Boolean := False;
      --  This is the START command interrupt. A START from another master was
      --  detected. Software must wait for a STOP before proceeding.
      START          : Boolean := False;
      --  This is the STOP command interrupt. A STOP bit was detected by the
      --  IOM.
      STOP           : Boolean := False;
      --  This is the arbitration loss interrupt. This error occurs if another
      --  master collides with an IO Master transfer. Generally, the IOM
      --  started an operation but found SDA already low.
      ARB            : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      CMDCMP         at 0 range 0 .. 0;
      THR            at 0 range 1 .. 1;
      FUNDFL         at 0 range 2 .. 2;
      FOVFL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      WTLEN          at 0 range 5 .. 5;
      IACC           at 0 range 6 .. 6;
      ICMD           at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ARB            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  IO Master Interrupts: Status
   type INTSTAT_Register is record
      --  This is the Command Complete interrupt.
      CMDCMP         : Boolean := False;
      --  This is the FIFO Threshold interrupt.
      THR            : Boolean := False;
      --  This is the Read FIFO Underflow interrupt. An attempt was made to
      --  read FIFO when empty (i.e. while FIFOSIZ less than 4).
      FUNDFL         : Boolean := False;
      --  This is the Write FIFO Overflow interrupt. An attempt was made to
      --  write the FIFO while it was full (i.e. while FIFOSIZ > 124).
      FOVFL          : Boolean := False;
      --  This is the I2C NAK interrupt. The expected ACK from the slave was
      --  not received by the IOM.
      NAK            : Boolean := False;
      --  This is the WTLEN interrupt.
      WTLEN          : Boolean := False;
      --  This is the illegal FIFO access interrupt. An attempt was made to
      --  read the FIFO during a write CMD. Or an attempt was made to write the
      --  FIFO on a read CMD.
      IACC           : Boolean := False;
      --  This is the illegal command interrupt. Software attempted to issue a
      --  CMD while another CMD was already in progress. Or an attempt was made
      --  to issue a non-zero-length write CMD with an empty FIFO.
      ICMD           : Boolean := False;
      --  This is the START command interrupt. A START from another master was
      --  detected. Software must wait for a STOP before proceeding.
      START          : Boolean := False;
      --  This is the STOP command interrupt. A STOP bit was detected by the
      --  IOM.
      STOP           : Boolean := False;
      --  This is the arbitration loss interrupt. This error occurs if another
      --  master collides with an IO Master transfer. Generally, the IOM
      --  started an operation but found SDA already low.
      ARB            : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      CMDCMP         at 0 range 0 .. 0;
      THR            at 0 range 1 .. 1;
      FUNDFL         at 0 range 2 .. 2;
      FOVFL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      WTLEN          at 0 range 5 .. 5;
      IACC           at 0 range 6 .. 6;
      ICMD           at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ARB            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  IO Master Interrupts: Clear
   type INTCLR_Register is record
      --  This is the Command Complete interrupt.
      CMDCMP         : Boolean := False;
      --  This is the FIFO Threshold interrupt.
      THR            : Boolean := False;
      --  This is the Read FIFO Underflow interrupt. An attempt was made to
      --  read FIFO when empty (i.e. while FIFOSIZ less than 4).
      FUNDFL         : Boolean := False;
      --  This is the Write FIFO Overflow interrupt. An attempt was made to
      --  write the FIFO while it was full (i.e. while FIFOSIZ > 124).
      FOVFL          : Boolean := False;
      --  This is the I2C NAK interrupt. The expected ACK from the slave was
      --  not received by the IOM.
      NAK            : Boolean := False;
      --  This is the WTLEN interrupt.
      WTLEN          : Boolean := False;
      --  This is the illegal FIFO access interrupt. An attempt was made to
      --  read the FIFO during a write CMD. Or an attempt was made to write the
      --  FIFO on a read CMD.
      IACC           : Boolean := False;
      --  This is the illegal command interrupt. Software attempted to issue a
      --  CMD while another CMD was already in progress. Or an attempt was made
      --  to issue a non-zero-length write CMD with an empty FIFO.
      ICMD           : Boolean := False;
      --  This is the START command interrupt. A START from another master was
      --  detected. Software must wait for a STOP before proceeding.
      START          : Boolean := False;
      --  This is the STOP command interrupt. A STOP bit was detected by the
      --  IOM.
      STOP           : Boolean := False;
      --  This is the arbitration loss interrupt. This error occurs if another
      --  master collides with an IO Master transfer. Generally, the IOM
      --  started an operation but found SDA already low.
      ARB            : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      CMDCMP         at 0 range 0 .. 0;
      THR            at 0 range 1 .. 1;
      FUNDFL         at 0 range 2 .. 2;
      FOVFL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      WTLEN          at 0 range 5 .. 5;
      IACC           at 0 range 6 .. 6;
      ICMD           at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ARB            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  IO Master Interrupts: Set
   type INTSET_Register is record
      --  This is the Command Complete interrupt.
      CMDCMP         : Boolean := False;
      --  This is the FIFO Threshold interrupt.
      THR            : Boolean := False;
      --  This is the Read FIFO Underflow interrupt. An attempt was made to
      --  read FIFO when empty (i.e. while FIFOSIZ less than 4).
      FUNDFL         : Boolean := False;
      --  This is the Write FIFO Overflow interrupt. An attempt was made to
      --  write the FIFO while it was full (i.e. while FIFOSIZ > 124).
      FOVFL          : Boolean := False;
      --  This is the I2C NAK interrupt. The expected ACK from the slave was
      --  not received by the IOM.
      NAK            : Boolean := False;
      --  This is the WTLEN interrupt.
      WTLEN          : Boolean := False;
      --  This is the illegal FIFO access interrupt. An attempt was made to
      --  read the FIFO during a write CMD. Or an attempt was made to write the
      --  FIFO on a read CMD.
      IACC           : Boolean := False;
      --  This is the illegal command interrupt. Software attempted to issue a
      --  CMD while another CMD was already in progress. Or an attempt was made
      --  to issue a non-zero-length write CMD with an empty FIFO.
      ICMD           : Boolean := False;
      --  This is the START command interrupt. A START from another master was
      --  detected. Software must wait for a STOP before proceeding.
      START          : Boolean := False;
      --  This is the STOP command interrupt. A STOP bit was detected by the
      --  IOM.
      STOP           : Boolean := False;
      --  This is the arbitration loss interrupt. This error occurs if another
      --  master collides with an IO Master transfer. Generally, the IOM
      --  started an operation but found SDA already low.
      ARB            : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      CMDCMP         at 0 range 0 .. 0;
      THR            at 0 range 1 .. 1;
      FUNDFL         at 0 range 2 .. 2;
      FOVFL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      WTLEN          at 0 range 5 .. 5;
      IACC           at 0 range 6 .. 6;
      ICMD           at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ARB            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C/SPI Master
   type IOMSTR2_Peripheral is record
      --  FIFO Access Port
      FIFO    : aliased HAL.UInt32;
      --  Current FIFO Pointers
      FIFOPTR : aliased FIFOPTR_Register;
      --  Transfer Length
      TLNGTH  : aliased TLNGTH_Register;
      --  FIFO Threshold Configuration
      FIFOTHR : aliased FIFOTHR_Register;
      --  I/O Clock Configuration
      CLKCFG  : aliased CLKCFG_Register;
      --  Command Register
      CMD     : aliased HAL.UInt32;
      --  Command Repeat Register
      CMDRPT  : aliased CMDRPT_Register;
      --  Status Register
      STATUS  : aliased STATUS_Register;
      --  I/O Master Configuration
      CFG     : aliased CFG_Register;
      --  IO Master Interrupts: Enable
      INTEN   : aliased INTEN_Register;
      --  IO Master Interrupts: Status
      INTSTAT : aliased INTSTAT_Register;
      --  IO Master Interrupts: Clear
      INTCLR  : aliased INTCLR_Register;
      --  IO Master Interrupts: Set
      INTSET  : aliased INTSET_Register;
   end record
     with Volatile;

   for IOMSTR2_Peripheral use record
      FIFO    at 16#0# range 0 .. 31;
      FIFOPTR at 16#100# range 0 .. 31;
      TLNGTH  at 16#104# range 0 .. 31;
      FIFOTHR at 16#108# range 0 .. 31;
      CLKCFG  at 16#10C# range 0 .. 31;
      CMD     at 16#110# range 0 .. 31;
      CMDRPT  at 16#114# range 0 .. 31;
      STATUS  at 16#118# range 0 .. 31;
      CFG     at 16#11C# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  I2C/SPI Master
   IOMSTR2_Periph : aliased IOMSTR2_Peripheral
     with Import, Address => IOMSTR2_Base;

end NRF_SVD.IOMSTR2;
