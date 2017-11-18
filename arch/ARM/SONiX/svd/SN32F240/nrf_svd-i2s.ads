--

--  This spec has been automatically generated from SN32F240.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.I2S is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start Transmit/Receive
   type CTRL_START_Field is
     (
      --  Stop transmit/receive
      Stop,
      --  Start transmit/receive
      Start)
     with Size => 1;
   for CTRL_START_Field use
     (Stop => 0,
      Start => 1);

   --  Mute enable
   type CTRL_MUTE_Field is
     (
      --  Disable mute
      Disable,
      --  Enable mute (I2SSDA output is 0)
      Enable)
     with Size => 1;
   for CTRL_MUTE_Field use
     (Disable => 0,
      Enable => 1);

   --  Mono/stereo selection
   type CTRL_MONO_Field is
     (
      --  Stereo
      Stereo,
      --  Mono
      Mono)
     with Size => 1;
   for CTRL_MONO_Field use
     (Stereo => 0,
      Mono => 1);

   --  Master/Slave selection bit
   type CTRL_MS_Field is
     (
      --  Act as Master using internally generated BCLK and WS signals.
      Master,
      --  Act as Slave using externally BCLK and WS signals.
      Slave)
     with Size => 1;
   for CTRL_MS_Field use
     (Master => 0,
      Slave => 1);

   --  I2S operation format
   type CTRL_FORMAT_Field is
     (
      --  Standard I2S format
      CTRL_FORMAT_Field_0,
      --  Left-justified format
      CTRL_FORMAT_Field_01,
      --  Right(MSB)-justified format
      CTRL_FORMAT_Field_10)
     with Size => 2;
   for CTRL_FORMAT_Field use
     (CTRL_FORMAT_Field_0 => 0,
      CTRL_FORMAT_Field_01 => 1,
      CTRL_FORMAT_Field_10 => 2);

   --  Transmit enable bit
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

   --  Receiver enable bit
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

   --  Clear I2S TX FIFO
   type CTRL_CLRTXFIFO_Field is
     (
      --  No effect
      CTRL_CLRTXFIFO_Field_0,
      --  Reset TX FIFO
      CTRL_CLRTXFIFO_Field_1)
     with Size => 1;
   for CTRL_CLRTXFIFO_Field use
     (CTRL_CLRTXFIFO_Field_0 => 0,
      CTRL_CLRTXFIFO_Field_1 => 1);

   --  Clear I2S RX FIFO
   type CTRL_CLRRXFIFO_Field is
     (
      --  No effect
      CTRL_CLRRXFIFO_Field_0,
      --  Reset RX FIFO
      CTRL_CLRRXFIFO_Field_1)
     with Size => 1;
   for CTRL_CLRRXFIFO_Field use
     (CTRL_CLRRXFIFO_Field_0 => 0,
      CTRL_CLRRXFIFO_Field_1 => 1);

   --  Data length
   type CTRL_DL_Field is
     (
      --  8 bits
      CTRL_DL_Field_00,
      --  16 bits
      CTRL_DL_Field_01,
      --  24 bits
      CTRL_DL_Field_10,
      --  32 bits
      CTRL_DL_Field_11)
     with Size => 2;
   for CTRL_DL_Field use
     (CTRL_DL_Field_00 => 0,
      CTRL_DL_Field_01 => 1,
      CTRL_DL_Field_10 => 2,
      CTRL_DL_Field_11 => 3);

   --  TX FIFO threshold level
   type CTRL_TXFIFOTH_Field is
     (
      --  TX FIFO threshold level=0
      CTRL_TXFIFOTH_Field_0,
      --  TX FIFO threshold level=1
      CTRL_TXFIFOTH_Field_1,
      --  TX FIFO threshold level=2
      CTRL_TXFIFOTH_Field_2,
      --  TX FIFO threshold level=3
      CTRL_TXFIFOTH_Field_3,
      --  TX FIFO threshold level=4
      CTRL_TXFIFOTH_Field_4,
      --  TX FIFO threshold level=5
      CTRL_TXFIFOTH_Field_5,
      --  TX FIFO threshold level=6
      CTRL_TXFIFOTH_Field_6,
      --  TX FIFO threshold level=7
      CTRL_TXFIFOTH_Field_7)
     with Size => 3;
   for CTRL_TXFIFOTH_Field use
     (CTRL_TXFIFOTH_Field_0 => 0,
      CTRL_TXFIFOTH_Field_1 => 1,
      CTRL_TXFIFOTH_Field_2 => 2,
      CTRL_TXFIFOTH_Field_3 => 3,
      CTRL_TXFIFOTH_Field_4 => 4,
      CTRL_TXFIFOTH_Field_5 => 5,
      CTRL_TXFIFOTH_Field_6 => 6,
      CTRL_TXFIFOTH_Field_7 => 7);

   --  RX FIFO threshold level
   type CTRL_RXFIFOTH_Field is
     (
      --  RX FIFO threshold level=0
      CTRL_RXFIFOTH_Field_0,
      --  RX FIFO threshold level=1
      CTRL_RXFIFOTH_Field_1,
      --  RX FIFO threshold level=2
      CTRL_RXFIFOTH_Field_2,
      --  RX FIFO threshold level=3
      CTRL_RXFIFOTH_Field_3,
      --  RX FIFO threshold level=4
      CTRL_RXFIFOTH_Field_4,
      --  RX FIFO threshold level=5
      CTRL_RXFIFOTH_Field_5,
      --  RX FIFO threshold level=6
      CTRL_RXFIFOTH_Field_6,
      --  RX FIFO threshold level=7
      CTRL_RXFIFOTH_Field_7)
     with Size => 3;
   for CTRL_RXFIFOTH_Field use
     (CTRL_RXFIFOTH_Field_0 => 0,
      CTRL_RXFIFOTH_Field_1 => 1,
      CTRL_RXFIFOTH_Field_2 => 2,
      CTRL_RXFIFOTH_Field_3 => 3,
      CTRL_RXFIFOTH_Field_4 => 4,
      CTRL_RXFIFOTH_Field_5 => 5,
      CTRL_RXFIFOTH_Field_6 => 6,
      CTRL_RXFIFOTH_Field_7 => 7);

   --  Bit number of single channel
   type CTRL_CHLENGTH_Field is
     (
      --  8 bits
      CTRL_CHLENGTH_Field_7,
      --  9 bits
      CTRL_CHLENGTH_Field_8,
      --  10 bits
      CTRL_CHLENGTH_Field_9,
      --  11 bits
      CTRL_CHLENGTH_Field_10,
      --  12 bits
      CTRL_CHLENGTH_Field_11,
      --  13 bits
      CTRL_CHLENGTH_Field_12,
      --  14 bits
      CTRL_CHLENGTH_Field_13,
      --  15 bits
      CTRL_CHLENGTH_Field_14,
      --  16 bits
      CTRL_CHLENGTH_Field_15,
      --  17 bits
      CTRL_CHLENGTH_Field_16,
      --  18 bits
      CTRL_CHLENGTH_Field_17,
      --  19 bits
      CTRL_CHLENGTH_Field_18,
      --  20 bits
      CTRL_CHLENGTH_Field_19,
      --  21 bits
      CTRL_CHLENGTH_Field_20,
      --  22 bits
      CTRL_CHLENGTH_Field_21,
      --  23 bits
      CTRL_CHLENGTH_Field_22,
      --  24 bits
      CTRL_CHLENGTH_Field_23,
      --  25 bits
      CTRL_CHLENGTH_Field_24,
      --  26 bits
      CTRL_CHLENGTH_Field_25,
      --  27 bits
      CTRL_CHLENGTH_Field_26,
      --  28 bits
      CTRL_CHLENGTH_Field_27,
      --  29 bits
      CTRL_CHLENGTH_Field_28,
      --  30 bits
      CTRL_CHLENGTH_Field_29,
      --  31 bits
      CTRL_CHLENGTH_Field_30,
      --  32 bits (Max)
      CTRL_CHLENGTH_Field_31)
     with Size => 5;
   for CTRL_CHLENGTH_Field use
     (CTRL_CHLENGTH_Field_7 => 7,
      CTRL_CHLENGTH_Field_8 => 8,
      CTRL_CHLENGTH_Field_9 => 9,
      CTRL_CHLENGTH_Field_10 => 10,
      CTRL_CHLENGTH_Field_11 => 11,
      CTRL_CHLENGTH_Field_12 => 12,
      CTRL_CHLENGTH_Field_13 => 13,
      CTRL_CHLENGTH_Field_14 => 14,
      CTRL_CHLENGTH_Field_15 => 15,
      CTRL_CHLENGTH_Field_16 => 16,
      CTRL_CHLENGTH_Field_17 => 17,
      CTRL_CHLENGTH_Field_18 => 18,
      CTRL_CHLENGTH_Field_19 => 19,
      CTRL_CHLENGTH_Field_20 => 20,
      CTRL_CHLENGTH_Field_21 => 21,
      CTRL_CHLENGTH_Field_22 => 22,
      CTRL_CHLENGTH_Field_23 => 23,
      CTRL_CHLENGTH_Field_24 => 24,
      CTRL_CHLENGTH_Field_25 => 25,
      CTRL_CHLENGTH_Field_26 => 26,
      CTRL_CHLENGTH_Field_27 => 27,
      CTRL_CHLENGTH_Field_28 => 28,
      CTRL_CHLENGTH_Field_29 => 29,
      CTRL_CHLENGTH_Field_30 => 30,
      CTRL_CHLENGTH_Field_31 => 31);

   --  I2S enable
   type CTRL_I2SEN_Field is
     (
      --  Disable I2S
      Disable,
      --  Enable I2S
      Enable)
     with Size => 1;
   for CTRL_I2SEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 I2S Control Register
   type CTRL_Register is record
      --  Start Transmit/Receive
      START          : CTRL_START_Field := NRF_SVD.I2S.Stop;
      --  Mute enable
      MUTE           : CTRL_MUTE_Field := NRF_SVD.I2S.Disable;
      --  Mono/stereo selection
      MONO           : CTRL_MONO_Field := NRF_SVD.I2S.Stereo;
      --  Master/Slave selection bit
      MS             : CTRL_MS_Field := NRF_SVD.I2S.Master;
      --  I2S operation format
      FORMAT         : CTRL_FORMAT_Field := NRF_SVD.I2S.CTRL_FORMAT_Field_0;
      --  Transmit enable bit
      TXEN           : CTRL_TXEN_Field := NRF_SVD.I2S.Disable;
      --  Receiver enable bit
      RXEN           : CTRL_RXEN_Field := NRF_SVD.I2S.Disable;
      --  Write-only. Clear I2S TX FIFO
      CLRTXFIFO      : CTRL_CLRTXFIFO_Field :=
                        NRF_SVD.I2S.CTRL_CLRTXFIFO_Field_0;
      --  Write-only. Clear I2S RX FIFO
      CLRRXFIFO      : CTRL_CLRRXFIFO_Field :=
                        NRF_SVD.I2S.CTRL_CLRRXFIFO_Field_0;
      --  Data length
      DL             : CTRL_DL_Field := NRF_SVD.I2S.CTRL_DL_Field_01;
      --  TX FIFO threshold level
      TXFIFOTH       : CTRL_TXFIFOTH_Field :=
                        NRF_SVD.I2S.CTRL_TXFIFOTH_Field_3;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  RX FIFO threshold level
      RXFIFOTH       : CTRL_RXFIFOTH_Field :=
                        NRF_SVD.I2S.CTRL_RXFIFOTH_Field_3;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Bit number of single channel
      CHLENGTH       : CTRL_CHLENGTH_Field :=
                        NRF_SVD.I2S.CTRL_CHLENGTH_Field_31;
      --  unspecified
      Reserved_25_30 : HAL.UInt6 := 16#0#;
      --  I2S enable
      I2SEN          : CTRL_I2SEN_Field := NRF_SVD.I2S.Disable;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      START          at 0 range 0 .. 0;
      MUTE           at 0 range 1 .. 1;
      MONO           at 0 range 2 .. 2;
      MS             at 0 range 3 .. 3;
      FORMAT         at 0 range 4 .. 5;
      TXEN           at 0 range 6 .. 6;
      RXEN           at 0 range 7 .. 7;
      CLRTXFIFO      at 0 range 8 .. 8;
      CLRRXFIFO      at 0 range 9 .. 9;
      DL             at 0 range 10 .. 11;
      TXFIFOTH       at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXFIFOTH       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CHLENGTH       at 0 range 20 .. 24;
      Reserved_25_30 at 0 range 25 .. 30;
      I2SEN          at 0 range 31 .. 31;
   end record;

   --  MCLK divider
   type CLK_MCLKDIV_Field is
     (
      --  MCLK=MCLK source
      CLK_MCLKDIV_Field_0,
      --  MCLK=MCLK source/2
      CLK_MCLKDIV_Field_1,
      --  MCLK=MCLK source/4
      CLK_MCLKDIV_Field_2,
      --  MCLK=MCLK source/6
      CLK_MCLKDIV_Field_3,
      --  MCLK=MCLK source/8
      CLK_MCLKDIV_Field_4,
      --  MCLK=MCLK source/10
      CLK_MCLKDIV_Field_5,
      --  MCLK=MCLK source/12
      CLK_MCLKDIV_Field_6,
      --  MCLK=MCLK source/14
      CLK_MCLKDIV_Field_7)
     with Size => 3;
   for CLK_MCLKDIV_Field use
     (CLK_MCLKDIV_Field_0 => 0,
      CLK_MCLKDIV_Field_1 => 1,
      CLK_MCLKDIV_Field_2 => 2,
      CLK_MCLKDIV_Field_3 => 3,
      CLK_MCLKDIV_Field_4 => 4,
      CLK_MCLKDIV_Field_5 => 5,
      CLK_MCLKDIV_Field_6 => 6,
      CLK_MCLKDIV_Field_7 => 7);

   --  MLCK output enable
   type CLK_MCLKOEN_Field is
     (
      --  Disable MCLK output
      Disable,
      --  Enable MCLK output
      Enable)
     with Size => 1;
   for CLK_MCLKOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  MLCK source selection
   type CLK_MCLKSEL_Field is
     (
      --  MCLK source of master is from I2S_PCLK
      I2S_Pclk,
      --  MCLK source of master is from GPIO
      Gpio)
     with Size => 1;
   for CLK_MCLKSEL_Field use
     (I2S_Pclk => 0,
      Gpio => 1);

   subtype CLK_BCLKDIV_Field is HAL.UInt8;

   --  I2S clock source
   type CLK_CLKSEL_Field is
     (
      --  HCLK is I2S clock source
      Hclk,
      --  EHS Xtal is I2S clock source
      Ehs Xtal)
     with Size => 1;
   for CLK_CLKSEL_Field use
     (Hclk => 0,
      Ehs Xtal => 1);

   --  Offset:0x04 I2S Clock Register
   type CLK_Register is record
      --  MCLK divider
      MCLKDIV        : CLK_MCLKDIV_Field := NRF_SVD.I2S.CLK_MCLKDIV_Field_0;
      --  MLCK output enable
      MCLKOEN        : CLK_MCLKOEN_Field := NRF_SVD.I2S.Disable;
      --  MLCK source selection
      MCLKSEL        : CLK_MCLKSEL_Field := NRF_SVD.I2S.I2S_Pclk;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  BCLK divider
      BCLKDIV        : CLK_BCLKDIV_Field := 16#1#;
      --  I2S clock source
      CLKSEL         : CLK_CLKSEL_Field := NRF_SVD.I2S.Hclk;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      MCLKDIV        at 0 range 0 .. 2;
      MCLKOEN        at 0 range 3 .. 3;
      MCLKSEL        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BCLKDIV        at 0 range 8 .. 15;
      CLKSEL         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  I2S interrupt flag
   type STATUS_I2SINT_Field is
     (
      --  No I2S interrupt
      STATUS_I2SINT_Field_0,
      --  I2S interrupt occurs
      STATUS_I2SINT_Field_1)
     with Size => 1;
   for STATUS_I2SINT_Field use
     (STATUS_I2SINT_Field_0 => 0,
      STATUS_I2SINT_Field_1 => 1);

   --  Current channel status
   type STATUS_RIGHTCH_Field is
     (
      --  Current channel is left channel
      Left,
      --  Current channel is right channel
      Right)
     with Size => 1;
   for STATUS_RIGHTCH_Field use
     (Left => 0,
      Right => 1);

   --  TX FIFO threshold flag
   type STATUS_TXFIFOTHF_Field is
     (
      --  TXFIFOLV is larger equal than TXFIFOTH
      STATUS_TXFIFOTHF_Field_0,
      --  TXFIFOLV is less than TXFIFOTH
      STATUS_TXFIFOTHF_Field_1)
     with Size => 1;
   for STATUS_TXFIFOTHF_Field use
     (STATUS_TXFIFOTHF_Field_0 => 0,
      STATUS_TXFIFOTHF_Field_1 => 1);

   --  RX FIFO threshold flag
   type STATUS_RXFIFOTHF_Field is
     (
      --  RXFIFOLV is less equal than RXFIFOTH
      STATUS_RXFIFOTHF_Field_0,
      --  RXFIFOLV is larger than RXFIFOTH
      STATUS_RXFIFOTHF_Field_1)
     with Size => 1;
   for STATUS_RXFIFOTHF_Field use
     (STATUS_RXFIFOTHF_Field_0 => 0,
      STATUS_RXFIFOTHF_Field_1 => 1);

   --  TX FIFO full flag
   type STATUS_TXFIFOFULL_Field is
     (
      --  TX FIFO is not full
      Not FULL,
      --  TX FIFO is full
      Full)
     with Size => 1;
   for STATUS_TXFIFOFULL_Field use
     (Not FULL => 0,
      Full => 1);

   --  RX FIFO full flag
   type STATUS_RXFIFOFULL_Field is
     (
      --  RX FIFO is not full
      STATUS_RXFIFOFULL_Field_0,
      --  RX FIFO is full
      STATUS_RXFIFOFULL_Field_1)
     with Size => 1;
   for STATUS_RXFIFOFULL_Field use
     (STATUS_RXFIFOFULL_Field_0 => 0,
      STATUS_RXFIFOFULL_Field_1 => 1);

   --  TX FIFO empty flag
   type STATUS_TXFIFOEMPTY_Field is
     (
      --  TX FIFO is not empty
      STATUS_TXFIFOEMPTY_Field_0,
      --  TX FIFO is empty
      STATUS_TXFIFOEMPTY_Field_1)
     with Size => 1;
   for STATUS_TXFIFOEMPTY_Field use
     (STATUS_TXFIFOEMPTY_Field_0 => 0,
      STATUS_TXFIFOEMPTY_Field_1 => 1);

   --  RX FIFO empty flag
   type STATUS_RXFIFOEMPTY_Field is
     (
      --  RX FIFO is not empty
      STATUS_RXFIFOEMPTY_Field_0,
      --  RX FIFO is empty
      STATUS_RXFIFOEMPTY_Field_1)
     with Size => 1;
   for STATUS_RXFIFOEMPTY_Field use
     (STATUS_RXFIFOEMPTY_Field_0 => 0,
      STATUS_RXFIFOEMPTY_Field_1 => 1);

   --  TX FIFO used level
   type STATUS_TXFIFOLV_Field is
     (
      --  0/8 TX FIFO is used (Empty)
      STATUS_TXFIFOLV_Field_0,
      --  1/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_1,
      --  2/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_2,
      --  3/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_3,
      --  4/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_4,
      --  5/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_5,
      --  6/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_6,
      --  7/8 TX FIFO is used
      STATUS_TXFIFOLV_Field_7,
      --  8/8 TX FIFO is used (Full)
      STATUS_TXFIFOLV_Field_8)
     with Size => 4;
   for STATUS_TXFIFOLV_Field use
     (STATUS_TXFIFOLV_Field_0 => 0,
      STATUS_TXFIFOLV_Field_1 => 1,
      STATUS_TXFIFOLV_Field_2 => 2,
      STATUS_TXFIFOLV_Field_3 => 3,
      STATUS_TXFIFOLV_Field_4 => 4,
      STATUS_TXFIFOLV_Field_5 => 5,
      STATUS_TXFIFOLV_Field_6 => 6,
      STATUS_TXFIFOLV_Field_7 => 7,
      STATUS_TXFIFOLV_Field_8 => 8);

   --  RX FIFO used level
   type STATUS_RXFIFOLV_Field is
     (
      --  0/8 RX FIFO is used (Empty)
      STATUS_RXFIFOLV_Field_0,
      --  1/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_1,
      --  2/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_2,
      --  3/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_3,
      --  4/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_4,
      --  5/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_5,
      --  6/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_6,
      --  7/8 RX FIFO is used
      STATUS_RXFIFOLV_Field_7,
      --  8/8 RX FIFO is used (Full)
      STATUS_RXFIFOLV_Field_8)
     with Size => 4;
   for STATUS_RXFIFOLV_Field use
     (STATUS_RXFIFOLV_Field_0 => 0,
      STATUS_RXFIFOLV_Field_1 => 1,
      STATUS_RXFIFOLV_Field_2 => 2,
      STATUS_RXFIFOLV_Field_3 => 3,
      STATUS_RXFIFOLV_Field_4 => 4,
      STATUS_RXFIFOLV_Field_5 => 5,
      STATUS_RXFIFOLV_Field_6 => 6,
      STATUS_RXFIFOLV_Field_7 => 7,
      STATUS_RXFIFOLV_Field_8 => 8);

   --  Offset:0x08 I2S Status Register
   type STATUS_Register is record
      --  Read-only. I2S interrupt flag
      I2SINT         : STATUS_I2SINT_Field;
      --  Read-only. Current channel status
      RIGHTCH        : STATUS_RIGHTCH_Field;
      --  unspecified
      Reserved_2_5   : HAL.UInt4;
      --  Read-only. TX FIFO threshold flag
      TXFIFOTHF      : STATUS_TXFIFOTHF_Field;
      --  Read-only. RX FIFO threshold flag
      RXFIFOTHF      : STATUS_RXFIFOTHF_Field;
      --  Read-only. TX FIFO full flag
      TXFIFOFULL     : STATUS_TXFIFOFULL_Field;
      --  Read-only. RX FIFO full flag
      RXFIFOFULL     : STATUS_RXFIFOFULL_Field;
      --  Read-only. TX FIFO empty flag
      TXFIFOEMPTY    : STATUS_TXFIFOEMPTY_Field;
      --  Read-only. RX FIFO empty flag
      RXFIFOEMPTY    : STATUS_RXFIFOEMPTY_Field;
      --  Read-only. TX FIFO used level
      TXFIFOLV       : STATUS_TXFIFOLV_Field;
      --  unspecified
      Reserved_16_16 : HAL.Bit;
      --  Read-only. RX FIFO used level
      RXFIFOLV       : STATUS_RXFIFOLV_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      I2SINT         at 0 range 0 .. 0;
      RIGHTCH        at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      TXFIFOTHF      at 0 range 6 .. 6;
      RXFIFOTHF      at 0 range 7 .. 7;
      TXFIFOFULL     at 0 range 8 .. 8;
      RXFIFOFULL     at 0 range 9 .. 9;
      TXFIFOEMPTY    at 0 range 10 .. 10;
      RXFIFOEMPTY    at 0 range 11 .. 11;
      TXFIFOLV       at 0 range 12 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      RXFIFOLV       at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  TX FIFO overflow interrupt enable
   type IE_TXFIFOOVFIEN_Field is
     (
      --  Disable TX FIFO overflow interrupt
      Disable,
      --  Enable TX FIFO overflow interrupt
      Enable)
     with Size => 1;
   for IE_TXFIFOOVFIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  RX FIFO underflow interrupt enable
   type IE_RXFIFOUDFIEN_Field is
     (
      --  Disable RX FIFO underflow interrupt
      Disable,
      --  Enable RX FIFO underflow interrupt
      Enable)
     with Size => 1;
   for IE_RXFIFOUDFIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  TX FIFO threshold interrupt enable
   type IE_TXFIFOTHIEN_Field is
     (
      --  Disable TX FIFO threshold interrupt
      Disable,
      --  Enable TX FIFO threshold interrupt
      Enable)
     with Size => 1;
   for IE_TXFIFOTHIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  RX FIFO threshold interrupt enable
   type IE_RXFIFOTHIEN_Field is
     (
      --  Disable RX FIFO threshold interrupt
      Disable,
      --  Enable RX FIFO threshold interrupt
      Enable)
     with Size => 1;
   for IE_RXFIFOTHIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x0C I2S Interrupt Enable Register
   type IE_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  TX FIFO overflow interrupt enable
      TXFIFOOVFIEN  : IE_TXFIFOOVFIEN_Field := NRF_SVD.I2S.Disable;
      --  RX FIFO underflow interrupt enable
      RXFIFOUDFIEN  : IE_RXFIFOUDFIEN_Field := NRF_SVD.I2S.Disable;
      --  TX FIFO threshold interrupt enable
      TXFIFOTHIEN   : IE_TXFIFOTHIEN_Field := NRF_SVD.I2S.Disable;
      --  RX FIFO threshold interrupt enable
      RXFIFOTHIEN   : IE_RXFIFOTHIEN_Field := NRF_SVD.I2S.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      TXFIFOOVFIEN  at 0 range 4 .. 4;
      RXFIFOUDFIEN  at 0 range 5 .. 5;
      TXFIFOTHIEN   at 0 range 6 .. 6;
      RXFIFOTHIEN   at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TX FIFO overflow interrupt flag
   type RIS_TXFIFOOVIF_Field is
     (
      --  No TX FIFO overflow
      RIS_TXFIFOOVIF_Field_0,
      --  TX FIFO overflow
      RIS_TXFIFOOVIF_Field_1)
     with Size => 1;
   for RIS_TXFIFOOVIF_Field use
     (RIS_TXFIFOOVIF_Field_0 => 0,
      RIS_TXFIFOOVIF_Field_1 => 1);

   --  RX FIFO underflow interrupt flag
   type RIS_RXFIFOUDIF_Field is
     (
      --  No RX FIFO underflow
      RIS_RXFIFOUDIF_Field_0,
      --  RX FIFO underflow
      RIS_RXFIFOUDIF_Field_1)
     with Size => 1;
   for RIS_RXFIFOUDIF_Field use
     (RIS_RXFIFOUDIF_Field_0 => 0,
      RIS_RXFIFOUDIF_Field_1 => 1);

   --  TX FIFO threshold interrupt flag
   type RIS_TXFIFOTHIF_Field is
     (
      --  No TX FIFO threshold interrupt
      RIS_TXFIFOTHIF_Field_0,
      --  TX FIFO threshold triggered
      RIS_TXFIFOTHIF_Field_1)
     with Size => 1;
   for RIS_TXFIFOTHIF_Field use
     (RIS_TXFIFOTHIF_Field_0 => 0,
      RIS_TXFIFOTHIF_Field_1 => 1);

   --  RX FIFO threshold interrupt flag
   type RIS_RXFIFOTHIF_Field is
     (
      --  No RX FIFO threshold interrupt
      RIS_RXFIFOTHIF_Field_0,
      --  RX FIFO threshold triggered
      RIS_RXFIFOTHIF_Field_1)
     with Size => 1;
   for RIS_RXFIFOTHIF_Field use
     (RIS_RXFIFOTHIF_Field_0 => 0,
      RIS_RXFIFOTHIF_Field_1 => 1);

   --  Offset:0x10 I2S Raw Interrupt Status Register
   type RIS_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4;
      --  Read-only. TX FIFO overflow interrupt flag
      TXFIFOOVIF    : RIS_TXFIFOOVIF_Field;
      --  Read-only. RX FIFO underflow interrupt flag
      RXFIFOUDIF    : RIS_RXFIFOUDIF_Field;
      --  Read-only. TX FIFO threshold interrupt flag
      TXFIFOTHIF    : RIS_TXFIFOTHIF_Field;
      --  Read-only. RX FIFO threshold interrupt flag
      RXFIFOTHIF    : RIS_RXFIFOTHIF_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      TXFIFOOVIF    at 0 range 4 .. 4;
      RXFIFOUDIF    at 0 range 5 .. 5;
      TXFIFOTHIF    at 0 range 6 .. 6;
      RXFIFOTHIF    at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TX FIFO overflow interrupt clear
   type IC_TXFIFOOVIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear TXFIFOOVIF bit
      Clear)
     with Size => 1;
   for IC_TXFIFOOVIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  RX FIFO underflow interrupt clear
   type IC_RXFIFOUDIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear RXFIFOUDIF bit
      Clear)
     with Size => 1;
   for IC_RXFIFOUDIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  TX FIFO threshold interrupt clear
   type IC_TXFIFOTHIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear TXFIFOTHIF bit
      Clear)
     with Size => 1;
   for IC_TXFIFOTHIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  RX FIFO threshold interrupt clear
   type IC_RXFIFOTHIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear RXFIFOTHIF bit
      Clear)
     with Size => 1;
   for IC_RXFIFOTHIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x14 I2S Interrupt Clear Register
   type IC_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Write-only. TX FIFO overflow interrupt clear
      TXFIFOOVIC    : IC_TXFIFOOVIC_Field := NRF_SVD.I2S.No EFFECT;
      --  Write-only. RX FIFO underflow interrupt clear
      RXFIFOUDIC    : IC_RXFIFOUDIC_Field := NRF_SVD.I2S.No EFFECT;
      --  Write-only. TX FIFO threshold interrupt clear
      TXFIFOTHIC    : IC_TXFIFOTHIC_Field := NRF_SVD.I2S.No EFFECT;
      --  Write-only. RX FIFO threshold interrupt clear
      RXFIFOTHIC    : IC_RXFIFOTHIC_Field := NRF_SVD.I2S.No EFFECT;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      TXFIFOOVIC    at 0 range 4 .. 4;
      RXFIFOUDIC    at 0 range 5 .. 5;
      TXFIFOTHIC    at 0 range 6 .. 6;
      RXFIFOTHIC    at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2S
   type SN_I2S_Peripheral is record
      --  Offset:0x00 I2S Control Register
      CTRL   : aliased CTRL_Register;
      --  Offset:0x04 I2S Clock Register
      CLK    : aliased CLK_Register;
      --  Offset:0x08 I2S Status Register
      STATUS : aliased STATUS_Register;
      --  Offset:0x0C I2S Interrupt Enable Register
      IE     : aliased IE_Register;
      --  Offset:0x10 I2S Raw Interrupt Status Register
      RIS    : aliased RIS_Register;
      --  Offset:0x14 I2S Interrupt Clear Register
      IC     : aliased IC_Register;
      --  Offset:0x18 I2S RX FIFO Register
      RXFIFO : aliased HAL.UInt32;
      --  Offset:0x1C I2S TX FIFO Register
      TXFIFO : aliased HAL.UInt32;
   end record
     with Volatile;

   for SN_I2S_Peripheral use record
      CTRL   at 16#0# range 0 .. 31;
      CLK    at 16#4# range 0 .. 31;
      STATUS at 16#8# range 0 .. 31;
      IE     at 16#C# range 0 .. 31;
      RIS    at 16#10# range 0 .. 31;
      IC     at 16#14# range 0 .. 31;
      RXFIFO at 16#18# range 0 .. 31;
      TXFIFO at 16#1C# range 0 .. 31;
   end record;

   --  I2S
   SN_I2S_Periph : aliased SN_I2S_Peripheral
     with Import, Address => System'To_Address (16#4001A000#);

end NRF_SVD.I2S;
