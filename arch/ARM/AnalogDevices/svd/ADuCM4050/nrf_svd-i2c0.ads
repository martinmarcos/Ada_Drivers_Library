--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.I2C0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Master Control
   type MCTL_Register is record
      --  Master Enable
      MASEN          : Boolean := False;
      --  Start Back-off Disable
      COMPLETE       : Boolean := False;
      --  Internal Loopback Enable
      LOOPBACK       : Boolean := False;
      --  Stretch SCL Enable
      STRETCHSCL     : Boolean := False;
      --  Receive Request Interrupt Enable
      IENMRX         : Boolean := False;
      --  Transmit Request Interrupt Enable
      IENMTX         : Boolean := False;
      --  Arbitration Lost Interrupt Enable
      IENALOST       : Boolean := False;
      --  ACK Not Received Interrupt Enable
      IENACK         : Boolean := False;
      --  Transaction Completed (or Stop Detected) Interrupt Enable
      IENCMP         : Boolean := False;
      --  Decrement Master Tx FIFO Status When a Byte Txed
      MXMITDEC       : Boolean := False;
      --  Write-only. Enable Master Rx DMA Request
      MRXDMA         : Boolean := False;
      --  Write-only. Enable Master Tx DMA Request
      MTXDMA         : Boolean := False;
      --  Bus-Clear Enable
      BUSCLR         : Boolean := False;
      --  Prestop Bus Clear
      STOPBUSCLR     : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCTL_Register use record
      MASEN          at 0 range 0 .. 0;
      COMPLETE       at 0 range 1 .. 1;
      LOOPBACK       at 0 range 2 .. 2;
      STRETCHSCL     at 0 range 3 .. 3;
      IENMRX         at 0 range 4 .. 4;
      IENMTX         at 0 range 5 .. 5;
      IENALOST       at 0 range 6 .. 6;
      IENACK         at 0 range 7 .. 7;
      IENCMP         at 0 range 8 .. 8;
      MXMITDEC       at 0 range 9 .. 9;
      MRXDMA         at 0 range 10 .. 10;
      MTXDMA         at 0 range 11 .. 11;
      BUSCLR         at 0 range 12 .. 12;
      STOPBUSCLR     at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Master Transmit FIFO Status
   type MSTAT_MTXF_Field is
     (
      --  FIFO Empty.
      Fifo_Empty,
      --  1 byte in FIFO.
      Fifo_1Byte,
      --  FIFO Full.
      Fifo_Full)
     with Size => 2;
   for MSTAT_MTXF_Field use
     (Fifo_Empty => 0,
      Fifo_1Byte => 2,
      Fifo_Full => 3);

   --  Master Status
   type MSTAT_Register is record
      --  Read-only. Master Transmit FIFO Status
      MTXF           : MSTAT_MTXF_Field := NRF_SVD.I2C0.Fifo_Empty;
      --  Master Transmit Request/Clear Master Transmit Interrupt
      MTXREQ         : Boolean := False;
      --  Read-only. Master Receive Request
      MRXREQ         : Boolean := False;
      --  Read-only. ACK Not Received in Response to an Address
      NACKADDR       : Boolean := False;
      --  Read-only. Arbitration Lost
      ALOST          : Boolean := False;
      --  Read-only. Master Busy
      MBUSY          : Boolean := False;
      --  Read-only. ACK Not Received in Response to Data Write
      NACKDATA       : Boolean := False;
      --  Read-only. Transaction Complete or Stop Detected
      TCOMP          : Boolean := False;
      --  Read-only. Master Receive FIFO Overflow
      MRXOVR         : Boolean := False;
      --  Read-only. Line is Busy
      LINEBUSY       : Boolean := False;
      --  Read-only. STOP Driven by This I2C Master
      MSTOP          : Boolean := False;
      --  Read-only. Master Transmit Underflow
      MTXUNDR        : Boolean := False;
      --  Read-only. State of SDA Line
      SDAFILT        : Boolean := True;
      --  Read-only. State of SCL Line
      SCLFILT        : Boolean := True;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MSTAT_Register use record
      MTXF           at 0 range 0 .. 1;
      MTXREQ         at 0 range 2 .. 2;
      MRXREQ         at 0 range 3 .. 3;
      NACKADDR       at 0 range 4 .. 4;
      ALOST          at 0 range 5 .. 5;
      MBUSY          at 0 range 6 .. 6;
      NACKDATA       at 0 range 7 .. 7;
      TCOMP          at 0 range 8 .. 8;
      MRXOVR         at 0 range 9 .. 9;
      LINEBUSY       at 0 range 10 .. 10;
      MSTOP          at 0 range 11 .. 11;
      MTXUNDR        at 0 range 12 .. 12;
      SDAFILT        at 0 range 13 .. 13;
      SCLFILT        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype MRX_VALUE_Field is HAL.UInt8;

   --  Master Receive Data
   type MRX_Register is record
      --  Read-only. Master Receive Register
      VALUE         : MRX_VALUE_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MRX_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype MTX_VALUE_Field is HAL.UInt8;

   --  Master Transmit Data
   type MTX_Register is record
      --  Master Transmit Register
      VALUE         : MTX_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MTX_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype MRXCNT_VALUE_Field is HAL.UInt8;

   --  Master Receive Data Count
   type MRXCNT_Register is record
      --  Receive Count
      VALUE         : MRXCNT_VALUE_Field := 16#0#;
      --  Extended Read
      EXTEND        : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MRXCNT_Register use record
      VALUE         at 0 range 0 .. 7;
      EXTEND        at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype MCRXCNT_VALUE_Field is HAL.UInt8;

   --  Master Current Receive Data Count
   type MCRXCNT_Register is record
      --  Read-only. Current Receive Count
      VALUE         : MCRXCNT_VALUE_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCRXCNT_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ADDR_VALUE_Field is HAL.UInt8;

   --  Master Address Byte 1
   type ADDR_Register is record
      --  Address Byte 1
      VALUE         : ADDR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADDR_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype BYT_SBYTE_Field is HAL.UInt8;

   --  Start Byte
   type BYT_Register is record
      --  Start Byte
      SBYTE         : BYT_SBYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for BYT_Register use record
      SBYTE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype DIV_LOW_Field is HAL.UInt8;
   subtype DIV_HIGH_Field is HAL.UInt8;

   --  Serial Clock Period Divisor
   type DIV_Register is record
      --  Serial Clock Low Time
      LOW  : DIV_LOW_Field := 16#1F#;
      --  Serial Clock High Time
      HIGH : DIV_HIGH_Field := 16#1F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DIV_Register use record
      LOW  at 0 range 0 .. 7;
      HIGH at 0 range 8 .. 15;
   end record;

   --  Slave Control
   type SCTL_Register is record
      --  Slave Enable
      SLVEN          : Boolean := False;
      --  Enabled 10-bit Addressing
      ADR10EN        : Boolean := False;
      --  General Call Enable
      GCEN           : Boolean := False;
      --  Hardware General Call Enable
      HGCEN          : Boolean := False;
      --  Write-only. General Call Status Bit Clear
      GCSBCLR        : Boolean := False;
      --  Early Transmit Request Mode
      EARLYTXR       : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  NACK Next Communication
      NACK           : Boolean := False;
      --  Stop Condition Detected Interrupt Enable
      IENSTOP        : Boolean := False;
      --  Slave Receive Request Interrupt Enable
      IENSRX         : Boolean := False;
      --  Slave Transmit Request Interrupt Enable
      IENSTX         : Boolean := False;
      --  Decrement Slave Tx FIFO Status When a Byte is Txed
      STXDEC         : Boolean := False;
      --  Repeated Start Interrupt Enable
      IENREPST       : Boolean := False;
      --  Enable Slave Rx DMA Request
      SRXDMA         : Boolean := False;
      --  Enable Slave Tx DMA Request
      STXDMA         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SCTL_Register use record
      SLVEN          at 0 range 0 .. 0;
      ADR10EN        at 0 range 1 .. 1;
      GCEN           at 0 range 2 .. 2;
      HGCEN          at 0 range 3 .. 3;
      GCSBCLR        at 0 range 4 .. 4;
      EARLYTXR       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      NACK           at 0 range 7 .. 7;
      IENSTOP        at 0 range 8 .. 8;
      IENSRX         at 0 range 9 .. 9;
      IENSTX         at 0 range 10 .. 10;
      STXDEC         at 0 range 11 .. 11;
      IENREPST       at 0 range 12 .. 12;
      SRXDMA         at 0 range 13 .. 13;
      STXDMA         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype SSTAT_GCID_Field is HAL.UInt2;
   subtype SSTAT_IDMAT_Field is HAL.UInt2;

   --  Slave I2C Status/Error/IRQ
   type SSTAT_Register is record
      --  Slave Tx FIFO Status or Early Request
      STXFSEREQ      : Boolean := True;
      --  Read-only. Slave Transmit FIFO Underflow
      STXUNDR        : Boolean := False;
      --  Read-only. Slave Transmit Request/Slave Transmit Interrupt
      STXREQ         : Boolean := False;
      --  Read-only. Slave Receive Request
      SRXREQ         : Boolean := False;
      --  Read-only. Slave Receive FIFO Overflow
      SRXOVR         : Boolean := False;
      --  Read-only. ACK Not Generated by the Slave
      NOACK          : Boolean := False;
      --  Read-only. Slave Busy
      SBUSY          : Boolean := False;
      --  Read-only. General Call Interrupt
      GCINT          : Boolean := False;
      --  Read-only. General ID
      GCID           : SSTAT_GCID_Field := 16#0#;
      --  Read-only. Stop After Start and Matching Address
      STOP           : Boolean := False;
      --  Read-only. Device ID Matched
      IDMAT          : SSTAT_IDMAT_Field := 16#0#;
      --  Read-only. Repeated Start and Matching Address
      REPSTART       : Boolean := False;
      --  Read-only. Start and Matching Address
      START          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SSTAT_Register use record
      STXFSEREQ      at 0 range 0 .. 0;
      STXUNDR        at 0 range 1 .. 1;
      STXREQ         at 0 range 2 .. 2;
      SRXREQ         at 0 range 3 .. 3;
      SRXOVR         at 0 range 4 .. 4;
      NOACK          at 0 range 5 .. 5;
      SBUSY          at 0 range 6 .. 6;
      GCINT          at 0 range 7 .. 7;
      GCID           at 0 range 8 .. 9;
      STOP           at 0 range 10 .. 10;
      IDMAT          at 0 range 11 .. 12;
      REPSTART       at 0 range 13 .. 13;
      START          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype SRX_VALUE_Field is HAL.UInt8;

   --  Slave Receive
   type SRX_Register is record
      --  Read-only. Slave Receive Register
      VALUE         : SRX_VALUE_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SRX_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype STX_VALUE_Field is HAL.UInt8;

   --  Slave Transmit
   type STX_Register is record
      --  Slave Transmit Register
      VALUE         : STX_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STX_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ALT_ID_Field is HAL.UInt8;

   --  Hardware General Call ID
   type ALT_Register is record
      --  Slave Alt
      ID            : ALT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ALT_Register use record
      ID            at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ID_VALUE_Field is HAL.UInt8;

   --  First Slave Address Device ID
   type ID_Register is record
      --  Slave Device ID 0
      VALUE         : ID_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype STAT_STXF_Field is HAL.UInt2;
   subtype STAT_SRXF_Field is HAL.UInt2;
   subtype STAT_MTXF_Field is HAL.UInt2;
   subtype STAT_MRXF_Field is HAL.UInt2;

   --  Master and Slave FIFO Status
   type STAT_Register is record
      --  Read-only. Slave Transmit FIFO Status
      STXF           : STAT_STXF_Field := 16#0#;
      --  Read-only. Slave Receive FIFO Status
      SRXF           : STAT_SRXF_Field := 16#0#;
      --  Read-only. Master Transmit FIFO Status
      MTXF           : STAT_MTXF_Field := 16#0#;
      --  Read-only. Master Receive FIFO Status
      MRXF           : STAT_MRXF_Field := 16#0#;
      --  Write-only. Flush the Slave Transmit FIFO
      SFLUSH         : Boolean := False;
      --  Write-only. Flush the Master Transmit FIFO
      MFLUSH         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      STXF           at 0 range 0 .. 1;
      SRXF           at 0 range 2 .. 3;
      MTXF           at 0 range 4 .. 5;
      MRXF           at 0 range 6 .. 7;
      SFLUSH         at 0 range 8 .. 8;
      MFLUSH         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Shared Control
   type SHCTL_Register is record
      --  Write-only. Reset START STOP Detect Circuit
      RST           : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SHCTL_Register use record
      RST           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype TCTL_THDATIN_Field is HAL.UInt5;

   --  Timing Control Register
   type TCTL_Register is record
      --  Data in Hold Start
      THDATIN       : TCTL_THDATIN_Field := 16#5#;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Input Filter Control
      FILTEROFF     : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCTL_Register use record
      THDATIN       at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      FILTEROFF     at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype ASTRETCH_SCL_MST_Field is HAL.UInt4;
   subtype ASTRETCH_SCL_SLV_Field is HAL.UInt4;

   --  Automatic Stretch SCL
   type ASTRETCH_SCL_Register is record
      --  Master Automatic Stretch Mode
      MST            : ASTRETCH_SCL_MST_Field := 16#0#;
      --  Slave Automatic Stretch Mode
      SLV            : ASTRETCH_SCL_SLV_Field := 16#0#;
      --  Read-only. Master Automatic Stretch Timeout
      MSTTMO         : Boolean := False;
      --  Read-only. Slave Automatic Stretch Timeout
      SLVTMO         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ASTRETCH_SCL_Register use record
      MST            at 0 range 0 .. 3;
      SLV            at 0 range 4 .. 7;
      MSTTMO         at 0 range 8 .. 8;
      SLVTMO         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C Master/Slave
   type I2C0_Peripheral is record
      --  Master Control
      MCTL         : aliased MCTL_Register;
      --  Master Status
      MSTAT        : aliased MSTAT_Register;
      --  Master Receive Data
      MRX          : aliased MRX_Register;
      --  Master Transmit Data
      MTX          : aliased MTX_Register;
      --  Master Receive Data Count
      MRXCNT       : aliased MRXCNT_Register;
      --  Master Current Receive Data Count
      MCRXCNT      : aliased MCRXCNT_Register;
      --  Master Address Byte 1
      ADDR1        : aliased ADDR_Register;
      --  Master Address Byte 2
      ADDR2        : aliased ADDR_Register;
      --  Start Byte
      BYT          : aliased BYT_Register;
      --  Serial Clock Period Divisor
      DIV          : aliased DIV_Register;
      --  Slave Control
      SCTL         : aliased SCTL_Register;
      --  Slave I2C Status/Error/IRQ
      SSTAT        : aliased SSTAT_Register;
      --  Slave Receive
      SRX          : aliased SRX_Register;
      --  Slave Transmit
      STX          : aliased STX_Register;
      --  Hardware General Call ID
      ALT          : aliased ALT_Register;
      --  First Slave Address Device ID
      ID0          : aliased ID_Register;
      --  Second Slave Address Device ID
      ID1          : aliased ID_Register;
      --  Third Slave Address Device ID
      ID2          : aliased ID_Register;
      --  Fourth Slave Address Device ID
      ID3          : aliased ID_Register;
      --  Master and Slave FIFO Status
      STAT         : aliased STAT_Register;
      --  Shared Control
      SHCTL        : aliased SHCTL_Register;
      --  Timing Control Register
      TCTL         : aliased TCTL_Register;
      --  Automatic Stretch SCL
      ASTRETCH_SCL : aliased ASTRETCH_SCL_Register;
   end record
     with Volatile;

   for I2C0_Peripheral use record
      MCTL         at 16#0# range 0 .. 15;
      MSTAT        at 16#4# range 0 .. 15;
      MRX          at 16#8# range 0 .. 15;
      MTX          at 16#C# range 0 .. 15;
      MRXCNT       at 16#10# range 0 .. 15;
      MCRXCNT      at 16#14# range 0 .. 15;
      ADDR1        at 16#18# range 0 .. 15;
      ADDR2        at 16#1C# range 0 .. 15;
      BYT          at 16#20# range 0 .. 15;
      DIV          at 16#24# range 0 .. 15;
      SCTL         at 16#28# range 0 .. 15;
      SSTAT        at 16#2C# range 0 .. 15;
      SRX          at 16#30# range 0 .. 15;
      STX          at 16#34# range 0 .. 15;
      ALT          at 16#38# range 0 .. 15;
      ID0          at 16#3C# range 0 .. 15;
      ID1          at 16#40# range 0 .. 15;
      ID2          at 16#44# range 0 .. 15;
      ID3          at 16#48# range 0 .. 15;
      STAT         at 16#4C# range 0 .. 15;
      SHCTL        at 16#50# range 0 .. 15;
      TCTL         at 16#54# range 0 .. 15;
      ASTRETCH_SCL at 16#58# range 0 .. 15;
   end record;

   --  I2C Master/Slave
   I2C0_Periph : aliased I2C0_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

end NRF_SVD.I2C0;
