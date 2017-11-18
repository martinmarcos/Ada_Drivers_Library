--

--  This spec has been automatically generated from SN32F760.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SSP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SSP enable
   type CTRL0_SSPEN_Field is
     (
      --  Disable SSP
      Disable,
      --  Enable SSP
      Enable)
     with Size => 1;
   for CTRL0_SSPEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Loopback mode enable
   type CTRL0_LOOPBACK_Field is
     (
      --  Disable loopback mode
      Disable,
      --  Enable loopback mode
      Enable)
     with Size => 1;
   for CTRL0_LOOPBACK_Field use
     (Disable => 0,
      Enable => 1);

   --  Slave data out disable
   type CTRL0_SDODIS_Field is
     (
      --  Enable slave data out
      Enable,
      --  Diable slave data out (MISO=0)
      Disble)
     with Size => 1;
   for CTRL0_SDODIS_Field use
     (Enable => 0,
      Disble => 1);

   --  Master/Slave selection
   type CTRL0_MS_Field is
     (
      --  Act as Master
      Master,
      --  Act as Slave
      Slave)
     with Size => 1;
   for CTRL0_MS_Field use
     (Master => 0,
      Slave => 1);

   --  Interface format
   type CTRL0_FORMAT_Field is
     (
      --  SPI
      Spi,
      --  SSI
      Ssi)
     with Size => 1;
   for CTRL0_FORMAT_Field use
     (Spi => 0,
      Ssi => 1);

   --  SSP FSM and FIFO Reset
   type CTRL0_FRESET_Field is
     (
      --  No effect
      CTRL0_FRESET_Field_00B,
      --  Reset FSM and FIFO
      CTRL0_FRESET_Field_11B)
     with Size => 2;
   for CTRL0_FRESET_Field use
     (CTRL0_FRESET_Field_00B => 0,
      CTRL0_FRESET_Field_11B => 3);

   --  Data length = DL[3:0]+1
   type CTRL0_DL_Field is
     (
      --  Data length=3
      CTRL0_DL_Field_0010B,
      --  Data length=4
      CTRL0_DL_Field_0011B,
      --  Data length=5
      CTRL0_DL_Field_0100B,
      --  Data length=6
      CTRL0_DL_Field_0101B,
      --  Data length=7
      CTRL0_DL_Field_0110B,
      --  Data length=8
      CTRL0_DL_Field_0111B,
      --  Data length=9
      CTRL0_DL_Field_1000B,
      --  Data length=10
      CTRL0_DL_Field_1001B,
      --  Data length=11
      CTRL0_DL_Field_1010B,
      --  Data length=12
      CTRL0_DL_Field_1011B,
      --  Data length=13
      CTRL0_DL_Field_1100B,
      --  Data length=14
      CTRL0_DL_Field_1101B,
      --  Data length=15
      CTRL0_DL_Field_1110B,
      --  Data length=16
      CTRL0_DL_Field_1111B)
     with Size => 4;
   for CTRL0_DL_Field use
     (CTRL0_DL_Field_0010B => 2,
      CTRL0_DL_Field_0011B => 3,
      CTRL0_DL_Field_0100B => 4,
      CTRL0_DL_Field_0101B => 5,
      CTRL0_DL_Field_0110B => 6,
      CTRL0_DL_Field_0111B => 7,
      CTRL0_DL_Field_1000B => 8,
      CTRL0_DL_Field_1001B => 9,
      CTRL0_DL_Field_1010B => 10,
      CTRL0_DL_Field_1011B => 11,
      CTRL0_DL_Field_1100B => 12,
      CTRL0_DL_Field_1101B => 13,
      CTRL0_DL_Field_1110B => 14,
      CTRL0_DL_Field_1111B => 15);

   --  TX FIFO Threshold level
   type CTRL0_TXFIFOTH_Field is
     (
      --  TX FIFO threshold level is 0
      CTRL0_TXFIFOTH_Field_0,
      --  TX FIFO threshold level is 1
      CTRL0_TXFIFOTH_Field_1,
      --  TX FIFO threshold level is 2
      CTRL0_TXFIFOTH_Field_2,
      --  TX FIFO threshold level is 3
      CTRL0_TXFIFOTH_Field_3,
      --  TX FIFO threshold level is 4
      CTRL0_TXFIFOTH_Field_4,
      --  TX FIFO threshold level is 5
      CTRL0_TXFIFOTH_Field_5,
      --  TX FIFO threshold level is 6
      CTRL0_TXFIFOTH_Field_6,
      --  TX FIFO threshold level is 7
      CTRL0_TXFIFOTH_Field_7)
     with Size => 3;
   for CTRL0_TXFIFOTH_Field use
     (CTRL0_TXFIFOTH_Field_0 => 0,
      CTRL0_TXFIFOTH_Field_1 => 1,
      CTRL0_TXFIFOTH_Field_2 => 2,
      CTRL0_TXFIFOTH_Field_3 => 3,
      CTRL0_TXFIFOTH_Field_4 => 4,
      CTRL0_TXFIFOTH_Field_5 => 5,
      CTRL0_TXFIFOTH_Field_6 => 6,
      CTRL0_TXFIFOTH_Field_7 => 7);

   --  RX FIFO Threshold level
   type CTRL0_RXFIFOTH_Field is
     (
      --  RX FIFO threshold level is 0
      CTRL0_RXFIFOTH_Field_0,
      --  RX FIFO threshold level is 1
      CTRL0_RXFIFOTH_Field_1,
      --  RX FIFO threshold level is 2
      CTRL0_RXFIFOTH_Field_2,
      --  RX FIFO threshold level is 3
      CTRL0_RXFIFOTH_Field_3,
      --  RX FIFO threshold level is 4
      CTRL0_RXFIFOTH_Field_4,
      --  RX FIFO threshold level is 5
      CTRL0_RXFIFOTH_Field_5,
      --  RX FIFO threshold level is 6
      CTRL0_RXFIFOTH_Field_6,
      --  RX FIFO threshold level is 7
      CTRL0_RXFIFOTH_Field_7)
     with Size => 3;
   for CTRL0_RXFIFOTH_Field use
     (CTRL0_RXFIFOTH_Field_0 => 0,
      CTRL0_RXFIFOTH_Field_1 => 1,
      CTRL0_RXFIFOTH_Field_2 => 2,
      CTRL0_RXFIFOTH_Field_3 => 3,
      CTRL0_RXFIFOTH_Field_4 => 4,
      CTRL0_RXFIFOTH_Field_5 => 5,
      CTRL0_RXFIFOTH_Field_6 => 6,
      CTRL0_RXFIFOTH_Field_7 => 7);

   --  Auto-SEL disable bit
   type CTRL0_SELDIS_Field is
     (
      --  Enable Auto-SEL flow control
      Enable,
      --  Disable Auto-SEL flow control
      Disable)
     with Size => 1;
   for CTRL0_SELDIS_Field use
     (Enable => 0,
      Disable => 1);

   --  Offset:0x00 SSPn Control Register 0
   type CTRL0_Register is record
      --  SSP enable
      SSPEN          : CTRL0_SSPEN_Field := NRF_SVD.SSP.Disable;
      --  Loopback mode enable
      LOOPBACK       : CTRL0_LOOPBACK_Field := NRF_SVD.SSP.Disable;
      --  Slave data out disable
      SDODIS         : CTRL0_SDODIS_Field := NRF_SVD.SSP.Enable;
      --  Master/Slave selection
      MS             : CTRL0_MS_Field := NRF_SVD.SSP.Master;
      --  Interface format
      FORMAT         : CTRL0_FORMAT_Field := NRF_SVD.SSP.Spi;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. SSP FSM and FIFO Reset
      FRESET         : CTRL0_FRESET_Field :=
                        NRF_SVD.SSP.CTRL0_FRESET_Field_00B;
      --  Data length = DL[3:0]+1
      DL             : CTRL0_DL_Field := NRF_SVD.SSP.CTRL0_DL_Field_1111B;
      --  TX FIFO Threshold level
      TXFIFOTH       : CTRL0_TXFIFOTH_Field :=
                        NRF_SVD.SSP.CTRL0_TXFIFOTH_Field_0;
      --  RX FIFO Threshold level
      RXFIFOTH       : CTRL0_RXFIFOTH_Field :=
                        NRF_SVD.SSP.CTRL0_RXFIFOTH_Field_0;
      --  Auto-SEL disable bit
      SELDIS         : CTRL0_SELDIS_Field := NRF_SVD.SSP.Disable;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL0_Register use record
      SSPEN          at 0 range 0 .. 0;
      LOOPBACK       at 0 range 1 .. 1;
      SDODIS         at 0 range 2 .. 2;
      MS             at 0 range 3 .. 3;
      FORMAT         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      FRESET         at 0 range 6 .. 7;
      DL             at 0 range 8 .. 11;
      TXFIFOTH       at 0 range 12 .. 14;
      RXFIFOTH       at 0 range 15 .. 17;
      SELDIS         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  MSB/LSB seletion
   type CTRL1_MLSB_Field is
     (
      --  MSB transmit first
      Msb,
      --  LSB transmit first
      Lsb)
     with Size => 1;
   for CTRL1_MLSB_Field use
     (Msb => 0,
      Lsb => 1);

   --  Clock priority selection
   type CTRL1_CPOL_Field is
     (
      --  SCK idles at low level
      Low,
      --  SCK idles at high level
      High)
     with Size => 1;
   for CTRL1_CPOL_Field use
     (Low => 0,
      High => 1);

   --  Clock phase of edge sampling
   type CTRL1_CPHA_Field is
     (
      --  The 1st bit is fixed already, and SCK 1st edge is to receive/transmit
      --  data
      Cpha0,
      --  SCK 1st edge is for data transition, and receive/transmit data at 2nd
      --  edge
      Cpha1)
     with Size => 1;
   for CTRL1_CPHA_Field use
     (Cpha0 => 0,
      Cpha1 => 1);

   --  Offset:0x04 SSPn Control Register 1
   type CTRL1_Register is record
      --  MSB/LSB seletion
      MLSB          : CTRL1_MLSB_Field := NRF_SVD.SSP.Msb;
      --  Clock priority selection
      CPOL          : CTRL1_CPOL_Field := NRF_SVD.SSP.Low;
      --  Clock phase of edge sampling
      CPHA          : CTRL1_CPHA_Field := NRF_SVD.SSP.Cpha0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL1_Register use record
      MLSB          at 0 range 0 .. 0;
      CPOL          at 0 range 1 .. 1;
      CPHA          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CLKDIV_DIV_Field is HAL.UInt8;

   --  Offset:0x08 SSPn Clock Divider Register
   type CLKDIV_Register is record
      --  SSPn SCK=SSPn_PCLK/(2*DIV+2)
      DIV           : CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TX FIFO empty flag
   type STAT_TX_EMPTY_Field is
     (
      --  TX FIFO is not empty
      STAT_TX_EMPTY_Field_0,
      --  TX FIFO is empty
      STAT_TX_EMPTY_Field_1)
     with Size => 1;
   for STAT_TX_EMPTY_Field use
     (STAT_TX_EMPTY_Field_0 => 0,
      STAT_TX_EMPTY_Field_1 => 1);

   --  TX FIFO full flag
   type STAT_TX_FULL_Field is
     (
      --  TX FIFO is not full
      STAT_TX_FULL_Field_0,
      --  TX FIFO is full
      STAT_TX_FULL_Field_1)
     with Size => 1;
   for STAT_TX_FULL_Field use
     (STAT_TX_FULL_Field_0 => 0,
      STAT_TX_FULL_Field_1 => 1);

   --  RX FIFO empty flag
   type STAT_RX_EMPTY_Field is
     (
      --  RX FIFO is not empty
      STAT_RX_EMPTY_Field_0,
      --  RX FIFO is empty
      STAT_RX_EMPTY_Field_1)
     with Size => 1;
   for STAT_RX_EMPTY_Field use
     (STAT_RX_EMPTY_Field_0 => 0,
      STAT_RX_EMPTY_Field_1 => 1);

   --  RX FIFO full flag
   type STAT_RX_FULL_Field is
     (
      --  RX FIFO is not full
      STAT_RX_FULL_Field_0,
      --  RX FIFO is full
      STAT_RX_FULL_Field_1)
     with Size => 1;
   for STAT_RX_FULL_Field use
     (STAT_RX_FULL_Field_0 => 0,
      STAT_RX_FULL_Field_1 => 1);

   --  Busy flag
   type STAT_BUSY_Field is
     (
      --  SSPn is idle
      Idle,
      --  SSPn is transfering
      Busy)
     with Size => 1;
   for STAT_BUSY_Field use
     (Idle => 0,
      Busy => 1);

   --  TX FIFO threshold flag
   type STAT_TXFIFOTHF_Field is
     (
      --  Data count in TX FIFO is larger than TXFIFOTH
      STAT_TXFIFOTHF_Field_0,
      --  Data count in TX FIFO is less equal than TXFIFOTH
      STAT_TXFIFOTHF_Field_1)
     with Size => 1;
   for STAT_TXFIFOTHF_Field use
     (STAT_TXFIFOTHF_Field_0 => 0,
      STAT_TXFIFOTHF_Field_1 => 1);

   --  RX FIFO threshold flag
   type STAT_RXFIFOTHF_Field is
     (
      --  Data count in RX FIFO is less equal than RXFIFOTH
      STAT_RXFIFOTHF_Field_0,
      --  Data count in RX FIFO is larger than RXFIFOTH
      STAT_RXFIFOTHF_Field_1)
     with Size => 1;
   for STAT_RXFIFOTHF_Field use
     (STAT_RXFIFOTHF_Field_0 => 0,
      STAT_RXFIFOTHF_Field_1 => 1);

   --  Offset:0x0C SSPn Status Register
   type STAT_Register is record
      --  Read-only. TX FIFO empty flag
      TX_EMPTY      : STAT_TX_EMPTY_Field;
      --  Read-only. TX FIFO full flag
      TX_FULL       : STAT_TX_FULL_Field;
      --  Read-only. RX FIFO empty flag
      RX_EMPTY      : STAT_RX_EMPTY_Field;
      --  Read-only. RX FIFO full flag
      RX_FULL       : STAT_RX_FULL_Field;
      --  Read-only. Busy flag
      BUSY          : STAT_BUSY_Field;
      --  Read-only. TX FIFO threshold flag
      TXFIFOTHF     : STAT_TXFIFOTHF_Field;
      --  Read-only. RX FIFO threshold flag
      RXFIFOTHF     : STAT_RXFIFOTHF_Field;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      TX_EMPTY      at 0 range 0 .. 0;
      TX_FULL       at 0 range 1 .. 1;
      RX_EMPTY      at 0 range 2 .. 2;
      RX_FULL       at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      TXFIFOTHF     at 0 range 5 .. 5;
      RXFIFOTHF     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RX FIFO overflow interrupt enable
   type IE_RXOVFIE_Field is
     (
      --  Disable RX FIFO overflow interrupt
      Disable,
      --  Enable RX FIFO overflow interrupt
      Enable)
     with Size => 1;
   for IE_RXOVFIE_Field use
     (Disable => 0,
      Enable => 1);

   --  RX time-out interrupt enable
   type IE_RXTOIE_Field is
     (
      --  Disable RX time-out interrupt
      Disable,
      --  Enable RX time-out interrupt
      Enable)
     with Size => 1;
   for IE_RXTOIE_Field use
     (Disable => 0,
      Enable => 1);

   --  RX FIFO threshold interrupt enable
   type IE_RXFIFOTHIE_Field is
     (
      --  Disable RX FIFO threshold interrupt
      Disable,
      --  Enable RX FIFO threshold interrupt
      Enable)
     with Size => 1;
   for IE_RXFIFOTHIE_Field use
     (Disable => 0,
      Enable => 1);

   --  TX FIFO threshold interrupt enable
   type IE_TXFIFOTHIE_Field is
     (
      --  Disable TX FIFO threshold interrupt
      Disable,
      --  Enable TX FIFO threshold interrupt
      Enable)
     with Size => 1;
   for IE_TXFIFOTHIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x10 SSPn Interrupt Enable Register
   type IE_Register is record
      --  RX FIFO overflow interrupt enable
      RXOVFIE       : IE_RXOVFIE_Field := NRF_SVD.SSP.Disable;
      --  RX time-out interrupt enable
      RXTOIE        : IE_RXTOIE_Field := NRF_SVD.SSP.Disable;
      --  RX FIFO threshold interrupt enable
      RXFIFOTHIE    : IE_RXFIFOTHIE_Field := NRF_SVD.SSP.Disable;
      --  TX FIFO threshold interrupt enable
      TXFIFOTHIE    : IE_TXFIFOTHIE_Field := NRF_SVD.SSP.Disable;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      RXOVFIE       at 0 range 0 .. 0;
      RXTOIE        at 0 range 1 .. 1;
      RXFIFOTHIE    at 0 range 2 .. 2;
      TXFIFOTHIE    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RX FIFO overflow interrupt flag
   type RIS_RXOVFIF_Field is
     (
      --  No RXOVF interrupt
      No Rxovf INTERRUPT,
      --  RXOVF interrupt is triggered when RXOVFIE=1
      Met Rxovf INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_RXOVFIF_Field use
     (No Rxovf INTERRUPT => 0,
      Met Rxovf INTERRUPT REQUIREMENTS => 1);

   --  RX time-out interrupt flag
   type RIS_RXTOIF_Field is
     (
      --  No RXTO interrupt
      No Rxto INTERRUPT,
      --  RXTO interrupt is triggered when RXTOIE=1
      Met Rxto INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_RXTOIF_Field use
     (No Rxto INTERRUPT => 0,
      Met Rxto INTERRUPT REQUIREMENTS => 1);

   --  RX FIFO threshold interrupt flag
   type RIS_RXFIFOTHIF_Field is
     (
      --  No RXFIFOTH interrupt
      No Rxfifoth INTERRUPT,
      --  RX FIFO threshold is triggered when RXFIFOTHIE=1
      Met Rxfifoth INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_RXFIFOTHIF_Field use
     (No Rxfifoth INTERRUPT => 0,
      Met Rxfifoth INTERRUPT REQUIREMENTS => 1);

   --  TX FIFO threshold interrupt flag
   type RIS_TXFIFOTHIF_Field is
     (
      --  No TXFIFOTH interrupt
      No Txfifoth INTERRUPT,
      --  TX FIFO threshold is triggered when TXFIFOTHIE=1
      Met Txfifoth INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_TXFIFOTHIF_Field use
     (No Txfifoth INTERRUPT => 0,
      Met Txfifoth INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x14 SSPn Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. RX FIFO overflow interrupt flag
      RXOVFIF       : RIS_RXOVFIF_Field;
      --  Read-only. RX time-out interrupt flag
      RXTOIF        : RIS_RXTOIF_Field;
      --  Read-only. RX FIFO threshold interrupt flag
      RXFIFOTHIF    : RIS_RXFIFOTHIF_Field;
      --  Read-only. TX FIFO threshold interrupt flag
      TXFIFOTHIF    : RIS_TXFIFOTHIF_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      RXOVFIF       at 0 range 0 .. 0;
      RXTOIF        at 0 range 1 .. 1;
      RXFIFOTHIF    at 0 range 2 .. 2;
      TXFIFOTHIF    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RX FIFO overflow flag clear
   type IC_RXOVFIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear RXOVF flag
      Clear)
     with Size => 1;
   for IC_RXOVFIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  RX time-out interrupt flag clear
   type IC_RXTOIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear RXTO flag
      Clear)
     with Size => 1;
   for IC_RXTOIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  RX Interrupt flag Clear
   type IC_RXFIFOTHIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear RXFIFOTH flag
      Clear)
     with Size => 1;
   for IC_RXFIFOTHIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  TX Interrupt flag Clear
   type IC_TXFIFOTHIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear TXFIFOTH flag
      Clear)
     with Size => 1;
   for IC_TXFIFOTHIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x18 SSPn Interrupt Clear Register
   type IC_Register is record
      --  Write-only. RX FIFO overflow flag clear
      RXOVFIC       : IC_RXOVFIC_Field := NRF_SVD.SSP.No EFFECT;
      --  Write-only. RX time-out interrupt flag clear
      RXTOIC        : IC_RXTOIC_Field := NRF_SVD.SSP.No EFFECT;
      --  Write-only. RX Interrupt flag Clear
      RXFIFOTHIC    : IC_RXFIFOTHIC_Field := NRF_SVD.SSP.No EFFECT;
      --  Write-only. TX Interrupt flag Clear
      TXFIFOTHIC    : IC_TXFIFOTHIC_Field := NRF_SVD.SSP.No EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      RXOVFIC       at 0 range 0 .. 0;
      RXTOIC        at 0 range 1 .. 1;
      RXFIFOTHIC    at 0 range 2 .. 2;
      TXFIFOTHIC    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DATA_Data_Field is HAL.UInt16;

   --  Offset:0x1C SSPn Data Register
   type DATA_Register is record
      --  Data
      Data           : DATA_Data_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register use record
      Data           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SSP data fetch control bit
   type DF_DF_Field is
     (
      --  Disable
      Disable,
      --  Enable when SCKn frequency is higher than 6MHz
      Enable)
     with Size => 1;
   for DF_DF_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x20 SSPn Data Fetch Register
   type DF_Register is record
      --  SSP data fetch control bit
      DF            : DF_DF_Field := NRF_SVD.SSP.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DF_Register use record
      DF            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SSP0
   type SSP_Peripheral is record
      --  Offset:0x00 SSPn Control Register 0
      CTRL0  : aliased CTRL0_Register;
      --  Offset:0x04 SSPn Control Register 1
      CTRL1  : aliased CTRL1_Register;
      --  Offset:0x08 SSPn Clock Divider Register
      CLKDIV : aliased CLKDIV_Register;
      --  Offset:0x0C SSPn Status Register
      STAT   : aliased STAT_Register;
      --  Offset:0x10 SSPn Interrupt Enable Register
      IE     : aliased IE_Register;
      --  Offset:0x14 SSPn Raw Interrupt Status Register
      RIS    : aliased RIS_Register;
      --  Offset:0x18 SSPn Interrupt Clear Register
      IC     : aliased IC_Register;
      --  Offset:0x1C SSPn Data Register
      DATA   : aliased DATA_Register;
      --  Offset:0x20 SSPn Data Fetch Register
      DF     : aliased DF_Register;
   end record
     with Volatile;

   for SSP_Peripheral use record
      CTRL0  at 16#0# range 0 .. 31;
      CTRL1  at 16#4# range 0 .. 31;
      CLKDIV at 16#8# range 0 .. 31;
      STAT   at 16#C# range 0 .. 31;
      IE     at 16#10# range 0 .. 31;
      RIS    at 16#14# range 0 .. 31;
      IC     at 16#18# range 0 .. 31;
      DATA   at 16#1C# range 0 .. 31;
      DF     at 16#20# range 0 .. 31;
   end record;

   --  SSP0
   SN_SSP0_Periph : aliased SSP_Peripheral
     with Import, Address => System'To_Address (16#4001C000#);

   --  SSP0
   SN_SSP1_Periph : aliased SSP_Peripheral
     with Import, Address => System'To_Address (16#40058000#);

end NRF_SVD.SSP;
