--

--  This spec has been automatically generated from SN32F700.svd

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
      --  Stereo mode
      Stereo,
      --  Mono mode
      Mono)
     with Size => 1;
   for CTRL_MONO_Field use
     (Stereo => 0,
      Mono => 1);

   --  Transmitter/receiver selection
   type CTRL_TRS_Field is
     (
      --  Transmitter
      Transmitter,
      --  Receiver
      Receiver)
     with Size => 1;
   for CTRL_TRS_Field use
     (Transmitter => 0,
      Receiver => 1);

   --  Master/slave selection
   type CTRL_MS_Field is
     (
      --  Master
      Master,
      --  Slave
      Slave)
     with Size => 1;
   for CTRL_MS_Field use
     (Master => 0,
      Slave => 1);

   --  I2S format
   type CTRL_FORMAT_Field is
     (
      --  Standard I2S format
      Standard I2S,
      --  Left-justified format
      Left-JUSTIFIED,
      --  Right(MSB)-justified format
      Right(Msb)-JUSTIFIED)
     with Size => 2;
   for CTRL_FORMAT_Field use
     (Standard I2S => 0,
      Left-JUSTIFIED => 1,
      Right(Msb)-JUSTIFIED => 2);

   --  Clear I2S FIFO
   type CTRL_CLRFIFO_Field is
     (
      --  No effect
      No EFFECT,
      --  Reset FIFO
      Clear)
     with Size => 1;
   for CTRL_CLRFIFO_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Data length
   type CTRL_DL_Field is
     (
      --  Data length=8 bits
      CTRL_DL_Field_8,
      --  Data length=16 bits
      CTRL_DL_Field_16,
      --  Data length=24 bits
      CTRL_DL_Field_24,
      --  Data length=32 bits
      CTRL_DL_Field_32)
     with Size => 2;
   for CTRL_DL_Field use
     (CTRL_DL_Field_8 => 0,
      CTRL_DL_Field_16 => 1,
      CTRL_DL_Field_24 => 2,
      CTRL_DL_Field_32 => 3);

   --  FIFO threshold level
   type CTRL_FIFOTH_Field is
     (
      --  FIFO threshold level=0
      CTRL_FIFOTH_Field_0,
      --  FIFO threshold level=1
      CTRL_FIFOTH_Field_1,
      --  FIFO threshold level=2
      CTRL_FIFOTH_Field_2,
      --  FIFO threshold level=3
      CTRL_FIFOTH_Field_3,
      --  FIFO threshold level=4
      CTRL_FIFOTH_Field_4,
      --  FIFO threshold level=5
      CTRL_FIFOTH_Field_5,
      --  FIFO threshold level=6
      CTRL_FIFOTH_Field_6,
      --  FIFO threshold level=7
      CTRL_FIFOTH_Field_7)
     with Size => 3;
   for CTRL_FIFOTH_Field use
     (CTRL_FIFOTH_Field_0 => 0,
      CTRL_FIFOTH_Field_1 => 1,
      CTRL_FIFOTH_Field_2 => 2,
      CTRL_FIFOTH_Field_3 => 3,
      CTRL_FIFOTH_Field_4 => 4,
      CTRL_FIFOTH_Field_5 => 5,
      CTRL_FIFOTH_Field_6 => 6,
      CTRL_FIFOTH_Field_7 => 7);

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

   --  Offset:0x00 I2S Control Register
   type CTRL_Register is record
      --  Start Transmit/Receive
      START          : CTRL_START_Field := NRF_SVD.I2S.Stop;
      --  Mute enable
      MUTE           : CTRL_MUTE_Field := NRF_SVD.I2S.Disable;
      --  Mono/stereo selection
      MONO           : CTRL_MONO_Field := NRF_SVD.I2S.Stereo;
      --  Transmitter/receiver selection
      TRS            : CTRL_TRS_Field := NRF_SVD.I2S.Transmitter;
      --  Master/slave selection
      MS             : CTRL_MS_Field := NRF_SVD.I2S.Master;
      --  I2S format
      FORMAT         : CTRL_FORMAT_Field := NRF_SVD.I2S.Standard I2S;
      --  Write-only. Clear I2S FIFO
      CLRFIFO        : CTRL_CLRFIFO_Field := NRF_SVD.I2S.No EFFECT;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Data length
      DL             : CTRL_DL_Field := NRF_SVD.I2S.CTRL_DL_Field_16;
      --  FIFO threshold level
      FIFOTH         : CTRL_FIFOTH_Field := NRF_SVD.I2S.CTRL_FIFOTH_Field_3;
      --  I2S enable
      I2SEN          : CTRL_I2SEN_Field := NRF_SVD.I2S.Disable;
      --  Bit number of single channel
      CHLENGTH       : CTRL_CHLENGTH_Field :=
                        NRF_SVD.I2S.CTRL_CHLENGTH_Field_31;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      START          at 0 range 0 .. 0;
      MUTE           at 0 range 1 .. 1;
      MONO           at 0 range 2 .. 2;
      TRS            at 0 range 3 .. 3;
      MS             at 0 range 4 .. 4;
      FORMAT         at 0 range 5 .. 6;
      CLRFIFO        at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      DL             at 0 range 10 .. 11;
      FIFOTH         at 0 range 12 .. 14;
      I2SEN          at 0 range 15 .. 15;
      CHLENGTH       at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
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
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      MCLKDIV        at 0 range 0 .. 2;
      MCLKOEN        at 0 range 3 .. 3;
      MCLKSEL        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BCLKDIV        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  I2S interrupt flag
   type STATUS_I2SINT_Field is
     (
      --  No I2S interrupt
      No,
      --  I2S interrupt occurs
      I2S INTERRUPT OCCURS)
     with Size => 1;
   for STATUS_I2SINT_Field use
     (No => 0,
      I2S INTERRUPT OCCURS => 1);

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

   --  FIFO threshold flag
   type STATUS_FIFOTHF_Field is
     (
      --  FIFOLV is larger equal than FIFOTH as transmitter, FIFOLV is less
      --  equal than FIFOTH as receiver
      STATUS_FIFOTHF_Field_0,
      --  FIFOLV is less than FIFOTH as transmitter, FIFOLV is larger than
      --  FIFOTH as receiver
      STATUS_FIFOTHF_Field_1)
     with Size => 1;
   for STATUS_FIFOTHF_Field use
     (STATUS_FIFOTHF_Field_0 => 0,
      STATUS_FIFOTHF_Field_1 => 1);

   --  FIFO full flag
   type STATUS_FIFOFULL_Field is
     (
      --  FIFO is not full
      Not FULL,
      --  FIFO is full
      Full)
     with Size => 1;
   for STATUS_FIFOFULL_Field use
     (Not FULL => 0,
      Full => 1);

   --  FIFO empty flag
   type STATUS_FIFOEMPTY_Field is
     (
      --  FIFO is not empty
      Not EMPTY,
      --  FIFO is empty
      Empty)
     with Size => 1;
   for STATUS_FIFOEMPTY_Field use
     (Not EMPTY => 0,
      Empty => 1);

   --  FIFO used level
   type STATUS_FIFOLV_Field is
     (
      --  0/8 FIFO is used (Empty)
      STATUS_FIFOLV_Field_0,
      --  1/8 FIFO is used
      STATUS_FIFOLV_Field_1,
      --  2/8 FIFO is used (Empty)
      STATUS_FIFOLV_Field_2,
      --  3/8 FIFO is used
      STATUS_FIFOLV_Field_3,
      --  4/8 FIFO is used (Empty)
      STATUS_FIFOLV_Field_4,
      --  5/8 FIFO is used
      STATUS_FIFOLV_Field_5,
      --  6/8 FIFO is used (Empty)
      STATUS_FIFOLV_Field_6,
      --  7/8 FIFO is used
      STATUS_FIFOLV_Field_7,
      --  8/8 FIFO is used (Full)
      STATUS_FIFOLV_Field_8)
     with Size => 4;
   for STATUS_FIFOLV_Field use
     (STATUS_FIFOLV_Field_0 => 0,
      STATUS_FIFOLV_Field_1 => 1,
      STATUS_FIFOLV_Field_2 => 2,
      STATUS_FIFOLV_Field_3 => 3,
      STATUS_FIFOLV_Field_4 => 4,
      STATUS_FIFOLV_Field_5 => 5,
      STATUS_FIFOLV_Field_6 => 6,
      STATUS_FIFOLV_Field_7 => 7,
      STATUS_FIFOLV_Field_8 => 8);

   --  Offset:0x08 I2S Status Register
   type STATUS_Register is record
      --  Read-only. I2S interrupt flag
      I2SINT         : STATUS_I2SINT_Field;
      --  Read-only. Current channel status
      RIGHTCH        : STATUS_RIGHTCH_Field;
      --  unspecified
      Reserved_2_5   : HAL.UInt4;
      --  Read-only. FIFO threshold flag
      FIFOTHF        : STATUS_FIFOTHF_Field;
      --  unspecified
      Reserved_7_9   : HAL.UInt3;
      --  Read-only. FIFO full flag
      FIFOFULL       : STATUS_FIFOFULL_Field;
      --  Read-only. FIFO empty flag
      FIFOEMPTY      : STATUS_FIFOEMPTY_Field;
      --  Read-only. FIFO used level
      FIFOLV         : STATUS_FIFOLV_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      I2SINT         at 0 range 0 .. 0;
      RIGHTCH        at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      FIFOTHF        at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      FIFOFULL       at 0 range 10 .. 10;
      FIFOEMPTY      at 0 range 11 .. 11;
      FIFOLV         at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FIFO underflow interrupt enable
   type IE_FIFOUDFIEN_Field is
     (
      --  Disable FIFO underflow interrupt
      Disable,
      --  Enable FIFO underflow interrupt
      Enable)
     with Size => 1;
   for IE_FIFOUDFIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  FIFO overflow interrupt enable
   type IE_FIFOOVFIEN_Field is
     (
      --  Disable FIFO overflow interrupt
      Disable,
      --  Enable FIFO overflow interrupt
      Enable)
     with Size => 1;
   for IE_FIFOOVFIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  FIFO threshold interrupt enable
   type IE_FIFOTHIEN_Field is
     (
      --  Disable FIFO threshold interrupt
      Disable,
      --  Enable FIFO threshold interrupt
      Enable)
     with Size => 1;
   for IE_FIFOTHIEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x0C I2S Interrupt Enable Register
   type IE_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  FIFO underflow interrupt enable
      FIFOUDFIEN    : IE_FIFOUDFIEN_Field := NRF_SVD.I2S.Disable;
      --  FIFO overflow interrupt enable
      FIFOOVFIEN    : IE_FIFOOVFIEN_Field := NRF_SVD.I2S.Disable;
      --  FIFO threshold interrupt enable
      FIFOTHIEN     : IE_FIFOTHIEN_Field := NRF_SVD.I2S.Disable;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      FIFOUDFIEN    at 0 range 4 .. 4;
      FIFOOVFIEN    at 0 range 5 .. 5;
      FIFOTHIEN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  FIFO underflow interrupt flag
   type RIS_FIFOUDIF_Field is
     (
      --  No FIFO underflow
      No Fifo UNDERFLOW,
      --  FIFO underflow
      Fifo UNDERFLOW)
     with Size => 1;
   for RIS_FIFOUDIF_Field use
     (No Fifo UNDERFLOW => 0,
      Fifo UNDERFLOW => 1);

   --  FIFO overflow interrupt flag
   type RIS_FIFOOVIF_Field is
     (
      --  No FIFO overflow
      No Fifo OVERFLOW,
      --  FIFO overflow
      Fifo OVERFLOW)
     with Size => 1;
   for RIS_FIFOOVIF_Field use
     (No Fifo OVERFLOW => 0,
      Fifo OVERFLOW => 1);

   --  FIFO threshold interrupt flag
   type RIS_FIFOTHIF_Field is
     (
      --  No FIFO threshold interrupt
      No Fifo THRESHOLD INTERRUPT,
      --  FIFO threshold interrupt
      Fifo THRESHOLD TRIGGERED)
     with Size => 1;
   for RIS_FIFOTHIF_Field use
     (No Fifo THRESHOLD INTERRUPT => 0,
      Fifo THRESHOLD TRIGGERED => 1);

   --  Offset:0x10 I2S Raw Interrupt Status Register
   type RIS_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4;
      --  Read-only. FIFO underflow interrupt flag
      FIFOUDIF      : RIS_FIFOUDIF_Field;
      --  Read-only. FIFO overflow interrupt flag
      FIFOOVIF      : RIS_FIFOOVIF_Field;
      --  Read-only. FIFO threshold interrupt flag
      FIFOTHIF      : RIS_FIFOTHIF_Field;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      FIFOUDIF      at 0 range 4 .. 4;
      FIFOOVIF      at 0 range 5 .. 5;
      FIFOTHIF      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  FIFO underflow interrupt clear
   type IC_FIFOUDIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear FIFOUDIF bit
      Clear)
     with Size => 1;
   for IC_FIFOUDIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  FIFO overflow interrupt clear
   type IC_FIFOOVIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear FIFOOVIF bit
      Clear)
     with Size => 1;
   for IC_FIFOOVIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  FIFO threshold interrupt clear
   type IC_FIFOTHIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear FIFOTHIF bit
      Clear)
     with Size => 1;
   for IC_FIFOTHIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x14 I2S Interrupt Clear Register
   type IC_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Write-only. FIFO underflow interrupt clear
      FIFOUDIC      : IC_FIFOUDIC_Field := NRF_SVD.I2S.No EFFECT;
      --  Write-only. FIFO overflow interrupt clear
      FIFOOVIC      : IC_FIFOOVIC_Field := NRF_SVD.I2S.No EFFECT;
      --  Write-only. FIFO threshold interrupt clear
      FIFOTHIC      : IC_FIFOTHIC_Field := NRF_SVD.I2S.No EFFECT;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      FIFOUDIC      at 0 range 4 .. 4;
      FIFOOVIC      at 0 range 5 .. 5;
      FIFOTHIC      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
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
      --  Offset:0x18 I2S FIFO Register
      FIFO   : aliased HAL.UInt32;
   end record
     with Volatile;

   for SN_I2S_Peripheral use record
      CTRL   at 16#0# range 0 .. 31;
      CLK    at 16#4# range 0 .. 31;
      STATUS at 16#8# range 0 .. 31;
      IE     at 16#C# range 0 .. 31;
      RIS    at 16#10# range 0 .. 31;
      IC     at 16#14# range 0 .. 31;
      FIFO   at 16#18# range 0 .. 31;
   end record;

   --  I2S
   SN_I2S_Periph : aliased SN_I2S_Peripheral
     with Import, Address => System'To_Address (16#4001A000#);

end NRF_SVD.I2S;
