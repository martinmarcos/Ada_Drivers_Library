--

--  This spec has been automatically generated from SN32F760B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  NACK assert flag
   type CTRL_NACK_Field is
     (
      --  No action
      No ACTION,
      --  Assert NACK during the acknowledge clock pulse on SCLn
      Assert)
     with Size => 1;
   for CTRL_NACK_Field use
     (No ACTION => 0,
      Assert => 1);

   --  ACK assert flag
   type CTRL_ACK_Field is
     (
      --  Master: No action/Slave: Assert NACK after receiving
      No,
      --  Assert ACK during the acknowledge clock pulse on SCLn
      Assert)
     with Size => 1;
   for CTRL_ACK_Field use
     (No => 0,
      Assert => 1);

   --  STOP assert flag
   type CTRL_STO_Field is
     (
      --  STOP condition idle
      Idle,
      --  Transmit a STOP condition in master mode, or recover from an error
      --  condition in slave mode
      Assert)
     with Size => 1;
   for CTRL_STO_Field use
     (Idle => 0,
      Assert => 1);

   --  START assert flag
   type CTRL_STA_Field is
     (
      --  No START condition or Repeated START condition will be generated
      No ACTION,
      --  Enter master mode and transmit a START or Repeated START condition
      Assert)
     with Size => 1;
   for CTRL_STA_Field use
     (No ACTION => 0,
      Assert => 1);

   --  I2C mode
   type CTRL_I2CMODE_Field is
     (
      --  Standard/Fast mode
      Standard/Fast MODE)
     with Size => 1;
   for CTRL_I2CMODE_Field use
     (Standard/Fast MODE => 0);

   --  I2Cn interface enable
   type CTRL_I2CEN_Field is
     (
      --  Disable I2C
      Disable,
      --  Enable I2C
      Enable)
     with Size => 1;
   for CTRL_I2CEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 I2Cn Control Register
   type CTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  NACK assert flag
      NACK          : CTRL_NACK_Field := NRF_SVD.I2C.No ACTION;
      --  ACK assert flag
      ACK           : CTRL_ACK_Field := NRF_SVD.I2C.No;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  STOP assert flag
      STO           : CTRL_STO_Field := NRF_SVD.I2C.Idle;
      --  START assert flag
      STA           : CTRL_STA_Field := NRF_SVD.I2C.No ACTION;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  I2C mode
      I2CMODE       : CTRL_I2CMODE_Field := NRF_SVD.I2C.Standard/Fast MODE;
      --  I2Cn interface enable
      I2CEN         : CTRL_I2CEN_Field := NRF_SVD.I2C.Disable;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      NACK          at 0 range 1 .. 1;
      ACK           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      STO           at 0 range 4 .. 4;
      STA           at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      I2CMODE       at 0 range 7 .. 7;
      I2CEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RX done status
   type STAT_RX_DN_Field is
     (
      --  No RX with ACK/NACK transfer
      Not DONE,
      --  8-bit RX with ACK/NACK transfer
      Done)
     with Size => 1;
   for STAT_RX_DN_Field use
     (Not DONE => 0,
      Done => 1);

   --  ACK done status
   type STAT_ACK_STAT_Field is
     (
      --  No ACK received
      No,
      --  Receive an ACK
      Done)
     with Size => 1;
   for STAT_ACK_STAT_Field use
     (No => 0,
      Done => 1);

   --  NACK done status
   type STAT_NACK_STAT_Field is
     (
      --  No NACK received
      No,
      --  Receive a NACK
      Done)
     with Size => 1;
   for STAT_NACK_STAT_Field use
     (No => 0,
      Done => 1);

   --  STOP done status
   type STAT_STOP_DN_Field is
     (
      --  No STOP condition
      No,
      --  Transmit or receive a STOP condition
      Done)
     with Size => 1;
   for STAT_STOP_DN_Field use
     (No => 0,
      Done => 1);

   --  START done status
   type STAT_START_DN_Field is
     (
      --  No START condition
      No,
      --  Transmit or receive a START condition
      Assert)
     with Size => 1;
   for STAT_START_DN_Field use
     (No => 0,
      Assert => 1);

   --  I2C master/slave status
   type STAT_MST_Field is
     (
      --  Act as Slave
      Slave,
      --  Act as Master
      Master)
     with Size => 1;
   for STAT_MST_Field use
     (Slave => 0,
      Master => 1);

   --  Slave RX address hit flag
   type STAT_SLV_RX_HIT_Field is
     (
      --  No matched slave address
      STAT_SLV_RX_HIT_Field_0,
      --  Slave address hit, and is called for RX
      STAT_SLV_RX_HIT_Field_1)
     with Size => 1;
   for STAT_SLV_RX_HIT_Field use
     (STAT_SLV_RX_HIT_Field_0 => 0,
      STAT_SLV_RX_HIT_Field_1 => 1);

   --  Slave TX address hit flag
   type STAT_SLV_TX_HIT_Field is
     (
      --  No matched slave address
      STAT_SLV_TX_HIT_Field_0,
      --  Slave address hit, and is called for TX
      STAT_SLV_TX_HIT_Field_1)
     with Size => 1;
   for STAT_SLV_TX_HIT_Field use
     (STAT_SLV_TX_HIT_Field_0 => 0,
      STAT_SLV_TX_HIT_Field_1 => 1);

   --  Lost arbitration status
   type STAT_LOST_ARB_Field is
     (
      --  Not lost arbitration
      STAT_LOST_ARB_Field_0,
      --  Lost arbitration
      STAT_LOST_ARB_Field_1)
     with Size => 1;
   for STAT_LOST_ARB_Field use
     (STAT_LOST_ARB_Field_0 => 0,
      STAT_LOST_ARB_Field_1 => 1);

   --  Time-out status
   type STAT_TIMEOUT_Field is
     (
      --  No timeout
      STAT_TIMEOUT_Field_0,
      --  Timeout
      STAT_TIMEOUT_Field_1)
     with Size => 1;
   for STAT_TIMEOUT_Field use
     (STAT_TIMEOUT_Field_0 => 0,
      STAT_TIMEOUT_Field_1 => 1);

   --  I2C interrupt flag
   type STAT_I2CIF_Field is
     (
      --  I2C status doesn't change
      STAT_I2CIF_Field_0,
      --  I2C status changes
      STAT_I2CIF_Field_1)
     with Size => 1;
   for STAT_I2CIF_Field use
     (STAT_I2CIF_Field_0 => 0,
      STAT_I2CIF_Field_1 => 1);

   --  Offset:0x04 I2Cn Status Register
   type STAT_Register is record
      --  Read-only. RX done status
      RX_DN          : STAT_RX_DN_Field := NRF_SVD.I2C.Not DONE;
      --  Read-only. ACK done status
      ACK_STAT       : STAT_ACK_STAT_Field := NRF_SVD.I2C.No;
      --  Read-only. NACK done status
      NACK_STAT      : STAT_NACK_STAT_Field := NRF_SVD.I2C.No;
      --  Read-only. STOP done status
      STOP_DN        : STAT_STOP_DN_Field := NRF_SVD.I2C.No;
      --  Read-only. START done status
      START_DN       : STAT_START_DN_Field := NRF_SVD.I2C.No;
      --  Read-only. I2C master/slave status
      MST            : STAT_MST_Field := NRF_SVD.I2C.Slave;
      --  Read-only. Slave RX address hit flag
      SLV_RX_HIT     : STAT_SLV_RX_HIT_Field :=
                        NRF_SVD.I2C.STAT_SLV_RX_HIT_Field_0;
      --  Read-only. Slave TX address hit flag
      SLV_TX_HIT     : STAT_SLV_TX_HIT_Field :=
                        NRF_SVD.I2C.STAT_SLV_TX_HIT_Field_0;
      --  Read-only. Lost arbitration status
      LOST_ARB       : STAT_LOST_ARB_Field :=
                        NRF_SVD.I2C.STAT_LOST_ARB_Field_0;
      --  Read-only. Time-out status
      TIMEOUT        : STAT_TIMEOUT_Field := NRF_SVD.I2C.STAT_TIMEOUT_Field_0;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  I2C interrupt flag
      I2CIF          : STAT_I2CIF_Field := NRF_SVD.I2C.STAT_I2CIF_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      RX_DN          at 0 range 0 .. 0;
      ACK_STAT       at 0 range 1 .. 1;
      NACK_STAT      at 0 range 2 .. 2;
      STOP_DN        at 0 range 3 .. 3;
      START_DN       at 0 range 4 .. 4;
      MST            at 0 range 5 .. 5;
      SLV_RX_HIT     at 0 range 6 .. 6;
      SLV_TX_HIT     at 0 range 7 .. 7;
      LOST_ARB       at 0 range 8 .. 8;
      TIMEOUT        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      I2CIF          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXDATA_Data_Field is HAL.UInt8;

   --  Offset:0x08 I2Cn TX Data Register
   type TXDATA_Register is record
      --  TX Data
      Data          : TXDATA_Data_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATA_Register use record
      Data          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDATA_Data_Field is HAL.UInt8;

   --  Offset:0x0C I2Cn RX Data Register
   type RXDATA_Register is record
      --  Read-only. RX Data received when RX_DN=1
      Data          : RXDATA_Data_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATA_Register use record
      Data          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SLVADDR0_ADDR_Field is HAL.UInt10;

   --  General call address enable
   type SLVADDR0_GCEN_Field is
     (
      --  Disable general call address
      Disable,
      --  Enable general call address (0x0)
      Enable)
     with Size => 1;
   for SLVADDR0_GCEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Slave address mode
   type SLVADDR0_ADD_MODE_Field is
     (
      --  7-bit slave address mode
      SLVADDR0_ADD_MODE_Field_0,
      --  10-bit slave address mode
      SLVADDR0_ADD_MODE_Field_1)
     with Size => 1;
   for SLVADDR0_ADD_MODE_Field use
     (SLVADDR0_ADD_MODE_Field_0 => 0,
      SLVADDR0_ADD_MODE_Field_1 => 1);

   --  Offset:0x10 I2Cn Slave Address 0 Register
   type SLVADDR0_Register is record
      --  I2Cn slave address 0
      ADDR           : SLVADDR0_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_29 : HAL.UInt20 := 16#0#;
      --  General call address enable
      GCEN           : SLVADDR0_GCEN_Field := NRF_SVD.I2C.Disable;
      --  Slave address mode
      ADD_MODE       : SLVADDR0_ADD_MODE_Field :=
                        NRF_SVD.I2C.SLVADDR0_ADD_MODE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLVADDR0_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_29 at 0 range 10 .. 29;
      GCEN           at 0 range 30 .. 30;
      ADD_MODE       at 0 range 31 .. 31;
   end record;

   subtype SLVADDR_ADDR_Field is HAL.UInt10;

   --  Offset:0x14 I2Cn Slave Address 1 Register
   type SLVADDR_Register is record
      --  I2Cn slave address 1
      ADDR           : SLVADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLVADDR_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SCLHT_SCLH_Field is HAL.UInt8;

   --  Offset:0x20 I2Cn SCL High Time Register
   type SCLHT_Register is record
      --  SCLn High period time=(SCLHT+1)*I2Cn_PCLK cycle
      SCLH          : SCLHT_SCLH_Field := 16#4#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCLHT_Register use record
      SCLH          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SCLLT_SCLL_Field is HAL.UInt8;

   --  Offset:0x24 I2Cn SCL Low Time Register
   type SCLLT_Register is record
      --  SCLn Low period time=(SCLLT+1)*I2Cn_PCLK cycle
      SCLL          : SCLLT_SCLL_Field := 16#4#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCLLT_Register use record
      SCLL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TOCTRL_TO_Field is HAL.UInt16;

   --  Offset:0x2C I2Cn Timeout Control Register
   type TOCTRL_Register is record
      --  Timeout period time = TO*I2Cn_PCLK cycle
      TO             : TOCTRL_TO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOCTRL_Register use record
      TO             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C0
   type SN_I2C0_Peripheral is record
      --  Offset:0x00 I2Cn Control Register
      CTRL     : aliased CTRL_Register;
      --  Offset:0x04 I2Cn Status Register
      STAT     : aliased STAT_Register;
      --  Offset:0x08 I2Cn TX Data Register
      TXDATA   : aliased TXDATA_Register;
      --  Offset:0x0C I2Cn RX Data Register
      RXDATA   : aliased RXDATA_Register;
      --  Offset:0x10 I2Cn Slave Address 0 Register
      SLVADDR0 : aliased SLVADDR0_Register;
      --  Offset:0x14 I2Cn Slave Address 1 Register
      SLVADDR1 : aliased SLVADDR_Register;
      --  Offset:0x18 I2Cn Slave Address 2 Register
      SLVADDR2 : aliased SLVADDR_Register;
      --  Offset:0x1C I2Cn Slave Address 3 Register
      SLVADDR3 : aliased SLVADDR_Register;
      --  Offset:0x20 I2Cn SCL High Time Register
      SCLHT    : aliased SCLHT_Register;
      --  Offset:0x24 I2Cn SCL Low Time Register
      SCLLT    : aliased SCLLT_Register;
      --  Offset:0x2C I2Cn Timeout Control Register
      TOCTRL   : aliased TOCTRL_Register;
   end record
     with Volatile;

   for SN_I2C0_Peripheral use record
      CTRL     at 16#0# range 0 .. 31;
      STAT     at 16#4# range 0 .. 31;
      TXDATA   at 16#8# range 0 .. 31;
      RXDATA   at 16#C# range 0 .. 31;
      SLVADDR0 at 16#10# range 0 .. 31;
      SLVADDR1 at 16#14# range 0 .. 31;
      SLVADDR2 at 16#18# range 0 .. 31;
      SLVADDR3 at 16#1C# range 0 .. 31;
      SCLHT    at 16#20# range 0 .. 31;
      SCLLT    at 16#24# range 0 .. 31;
      TOCTRL   at 16#2C# range 0 .. 31;
   end record;

   --  I2C0
   SN_I2C0_Periph : aliased SN_I2C0_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

end NRF_SVD.I2C;
