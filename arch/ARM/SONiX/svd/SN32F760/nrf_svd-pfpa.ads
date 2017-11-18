--

--  This spec has been automatically generated from SN32F760.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PFPA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  UTXD0 assigned pin
   type UART_UTXD0_Field is
     (
      --  UTXD0=P0.1
      P0.1,
      --  UTXD0=P0.5
      P0.5,
      --  UTXD0=P1.2
      P1.2,
      --  UTXD0=P3.1
      P3.1,
      --  UTXD0=P3.2
      P3.2,
      --  UTXD0=P3.4
      P3.4,
      --  UTXD0=P3.10
      P3.10,
      --  UTXD0=P3.15
      P3.15)
     with Size => 4;
   for UART_UTXD0_Field use
     (P0.1 => 0,
      P0.5 => 1,
      P1.2 => 2,
      P3.1 => 3,
      P3.2 => 4,
      P3.4 => 5,
      P3.10 => 6,
      P3.15 => 7);

   --  URXD0 assigned pin
   type UART_URXD0_Field is
     (
      --  URXD0=P0.0
      P0.0,
      --  URXD0=P0.4
      P0.4,
      --  URXD0=P1.3
      P1.3,
      --  URXD0=P3.0
      P3.0,
      --  URXD0=P3.3
      P3.3,
      --  URXD0=P3.5
      P3.5,
      --  URXD0=P3.11
      P3.11,
      --  URXD0=P3.14
      P3.14)
     with Size => 4;
   for UART_URXD0_Field use
     (P0.0 => 0,
      P0.4 => 1,
      P1.3 => 2,
      P3.0 => 3,
      P3.3 => 4,
      P3.5 => 5,
      P3.11 => 6,
      P3.14 => 7);

   --  UTXD1 assigned pin
   type UART_UTXD1_Field is
     (
      --  UTXD1=P1.1
      P1.1,
      --  UTXD1=P0.6
      P0.6,
      --  UTXD1=P0.13
      P0.13,
      --  UTXD1=P1.4
      P1.4,
      --  UTXD1=P1.14
      P1.14,
      --  UTXD1=P3.8
      P3.8,
      --  UTXD1=P3.10
      P3.10,
      --  UTXD1=P3.13
      P3.13)
     with Size => 4;
   for UART_UTXD1_Field use
     (P1.1 => 0,
      P0.6 => 1,
      P0.13 => 2,
      P1.4 => 3,
      P1.14 => 4,
      P3.8 => 5,
      P3.10 => 6,
      P3.13 => 7);

   --  URXD1 assigned pin
   type UART_URXD1_Field is
     (
      --  URXD1=P1.0
      P1.0,
      --  URXD1=P0.7
      P0.7,
      --  URXD1=P0.12
      P0.12,
      --  URXD1=P1.5
      P1.5,
      --  URXD1=P1.13
      P1.13,
      --  URXD1=P1.15
      P1.15,
      --  URXD1=P3.6
      P3.6,
      --  URXD1=P3.12
      P3.12)
     with Size => 4;
   for UART_URXD1_Field use
     (P1.0 => 0,
      P0.7 => 1,
      P0.12 => 2,
      P1.5 => 3,
      P1.13 => 4,
      P1.15 => 5,
      P3.6 => 6,
      P3.12 => 7);

   --  Offset:0x00 PFPA for UART Register
   type UART_Register is record
      --  UTXD0 assigned pin
      UTXD0          : UART_UTXD0_Field := NRF_SVD.PFPA.P0.1;
      --  URXD0 assigned pin
      URXD0          : UART_URXD0_Field := NRF_SVD.PFPA.P0.0;
      --  UTXD1 assigned pin
      UTXD1          : UART_UTXD1_Field := NRF_SVD.PFPA.P1.1;
      --  URXD1 assigned pin
      URXD1          : UART_URXD1_Field := NRF_SVD.PFPA.P1.0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_Register use record
      UTXD0          at 0 range 0 .. 3;
      URXD0          at 0 range 4 .. 7;
      UTXD1          at 0 range 8 .. 11;
      URXD1          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SDA0 assigned pin
   type I2C_SDA0_Field is
     (
      --  SDA0=P1.4
      P1.4,
      --  SDA0=P0.3
      P0.3,
      --  SDA0=P0.10
      P0.10,
      --  SDA0=P1.2
      P1.2,
      --  SDA0=P1.13
      P1.13,
      --  SDA0=P3.7
      P3.7,
      --  SDA0=P3.13
      P3.13,
      --  SDA0=P3.15
      P3.15)
     with Size => 4;
   for I2C_SDA0_Field use
     (P1.4 => 0,
      P0.3 => 1,
      P0.10 => 2,
      P1.2 => 3,
      P1.13 => 4,
      P3.7 => 5,
      P3.13 => 6,
      P3.15 => 7);

   --  SCL0 assigned pin
   type I2C_SCL0_Field is
     (
      --  SCL0=P1.5
      P1.5,
      --  SCL0=P0.2
      P0.2,
      --  SCL0=P0.15
      P0.15,
      --  SCL0=P1.3
      P1.3,
      --  SCL0=P1.14
      P1.14,
      --  SCL0=P3.9
      P3.9,
      --  SCL0=P3.11
      P3.11,
      --  SCL0=P3.14
      P3.14)
     with Size => 4;
   for I2C_SCL0_Field use
     (P1.5 => 0,
      P0.2 => 1,
      P0.15 => 2,
      P1.3 => 3,
      P1.14 => 4,
      P3.9 => 5,
      P3.11 => 6,
      P3.14 => 7);

   --  SDA1 assigned pin
   type I2C_SDA1_Field is
     (
      --  SDA1=P0.7
      P0.7,
      --  SDA1=P0.1
      P0.1,
      --  SDA1=P1.0
      P1.0,
      --  SDA1=P1.8
      P1.8,
      --  SDA1=P3.2
      P3.2,
      --  SDA1=P3.4
      P3.4,
      --  SDA1=P3.5
      P3.5,
      --  SDA1=P3.12
      P3.12)
     with Size => 4;
   for I2C_SDA1_Field use
     (P0.7 => 0,
      P0.1 => 1,
      P1.0 => 2,
      P1.8 => 3,
      P3.2 => 4,
      P3.4 => 5,
      P3.5 => 6,
      P3.12 => 7);

   --  SCL1 assigned pin
   type I2C_SCL1_Field is
     (
      --  SCL1=P0.6
      P0.6,
      --  SCL1=P0.0
      P0.0,
      --  SCL1=P1.1
      P1.1,
      --  SCL1=P1.9
      P1.9,
      --  SCL1=P3.0
      P3.0,
      --  SCL1=P3.3
      P3.3,
      --  SCL1=P3.6
      P3.6,
      --  SCL1=P3.13
      P3.13)
     with Size => 4;
   for I2C_SCL1_Field use
     (P0.6 => 0,
      P0.0 => 1,
      P1.1 => 2,
      P1.9 => 3,
      P3.0 => 4,
      P3.3 => 5,
      P3.6 => 6,
      P3.13 => 7);

   --  Offset:0x04 PFPA for I2C Register
   type I2C_Register is record
      --  SDA0 assigned pin
      SDA0           : I2C_SDA0_Field := NRF_SVD.PFPA.P1.4;
      --  SCL0 assigned pin
      SCL0           : I2C_SCL0_Field := NRF_SVD.PFPA.P1.5;
      --  SDA1 assigned pin
      SDA1           : I2C_SDA1_Field := NRF_SVD.PFPA.P0.7;
      --  SCL1 assigned pin
      SCL1           : I2C_SCL1_Field := NRF_SVD.PFPA.P0.6;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_Register use record
      SDA0           at 0 range 0 .. 3;
      SCL0           at 0 range 4 .. 7;
      SDA1           at 0 range 8 .. 11;
      SCL1           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MISO0 assigned pin
   type SSP_MISO0_Field is
     (
      --  MISO0=P0.2
      P0.2,
      --  MISO0=P0.0
      P0.0,
      --  MISO0=P0.6
      P0.6,
      --  MISO0=P0.15
      P0.15,
      --  MISO0=P1.0
      P1.0,
      --  MISO0=P1.14
      P1.14,
      --  MISO0=P3.3
      P3.3,
      --  MISO0=P3.15
      P3.15,
      --  MISO0=P2.1
      P2.1,
      --  MISO0=P2.12
      P2.12)
     with Size => 4;
   for SSP_MISO0_Field use
     (P0.2 => 0,
      P0.0 => 1,
      P0.6 => 2,
      P0.15 => 3,
      P1.0 => 4,
      P1.14 => 5,
      P3.3 => 6,
      P3.15 => 7,
      P2.1 => 8,
      P2.12 => 9);

   --  MOSI0 assigned pin
   type SSP_MOSI0_Field is
     (
      --  MOSI0=P0.3
      P0.3,
      --  MOSI0=P0.1
      P0.1,
      --  MOSI0=P0.7
      P0.7,
      --  MOSI0=P0.14
      P0.14,
      --  MOSI0=P1.1
      P1.1,
      --  MOSI0=P1.15
      P1.15,
      --  MOSI0=P3.4
      P3.4,
      --  MOSI0=P3.14
      P3.14,
      --  MOSI0=P2.2
      P2.2,
      --  MOSI0=P2.13
      P2.13)
     with Size => 4;
   for SSP_MOSI0_Field use
     (P0.3 => 0,
      P0.1 => 1,
      P0.7 => 2,
      P0.14 => 3,
      P1.1 => 4,
      P1.15 => 5,
      P3.4 => 6,
      P3.14 => 7,
      P2.2 => 8,
      P2.13 => 9);

   --  SCK0 assigned pin
   type SSP_SCK0_Field is
     (
      --  SCK0=P0.4
      P0.4,
      --  SCK0=P0.11
      P0.11,
      --  SCK0=P0.13
      P0.13,
      --  SCK0=P1.4
      P1.4,
      --  SCK0=P1.12
      P1.12,
      --  SCK0=P3.2
      P3.2,
      --  SCK0=P3.6
      P3.6,
      --  SCK0=P3.11
      P3.11,
      --  SCK0=P2.3
      P2.3,
      --  SCK0=P2.14
      P2.14)
     with Size => 4;
   for SSP_SCK0_Field use
     (P0.4 => 0,
      P0.11 => 1,
      P0.13 => 2,
      P1.4 => 3,
      P1.12 => 4,
      P3.2 => 5,
      P3.6 => 6,
      P3.11 => 7,
      P2.3 => 8,
      P2.14 => 9);

   --  SEL0 assigned pin
   type SSP_SEL0_Field is
     (
      --  SEL0=P0.5
      P0.5,
      --  SEL0=P0.10
      P0.10,
      --  SEL0=P0.12
      P0.12,
      --  SEL0=P1.5
      P1.5,
      --  SEL0=P1.11
      P1.11,
      --  SEL0=P3.1
      P3.1,
      --  SEL0=P3.5
      P3.5,
      --  SEL0=P3.10
      P3.10,
      --  SEL0=P2.0
      P2.0,
      --  SEL0=P2.15
      P2.15)
     with Size => 4;
   for SSP_SEL0_Field use
     (P0.5 => 0,
      P0.10 => 1,
      P0.12 => 2,
      P1.5 => 3,
      P1.11 => 4,
      P3.1 => 5,
      P3.5 => 6,
      P3.10 => 7,
      P2.0 => 8,
      P2.15 => 9);

   --  MISO1 assigned pin
   type SSP_MISO1_Field is
     (
      --  MISO1=P3.9
      P3.9,
      --  MISO1=P0.4
      P0.4,
      --  MISO1=P0.10
      P0.10,
      --  MISO1=P1.3
      P1.3,
      --  MISO1=P1.10
      P1.10,
      --  MISO1=P3.0
      P3.0,
      --  MISO1=P3.4
      P3.4,
      --  MISO1=P3.12
      P3.12,
      --  MISO1=P2.1
      P2.1,
      --  MISO1=P2.12
      P2.12)
     with Size => 4;
   for SSP_MISO1_Field use
     (P3.9 => 0,
      P0.4 => 1,
      P0.10 => 2,
      P1.3 => 3,
      P1.10 => 4,
      P3.0 => 5,
      P3.4 => 6,
      P3.12 => 7,
      P2.1 => 8,
      P2.12 => 9);

   --  MOSI1 assigned pin
   type SSP_MOSI1_Field is
     (
      --  MOSI1=P3.8
      P3.8,
      --  MOSI1=P0.5
      P0.5,
      --  MOSI1=P0.12
      P0.12,
      --  MOSI1=P1.2
      P1.2,
      --  MOSI1=P1.6
      P1.6,
      --  MOSI1=P1.13
      P1.13,
      --  MOSI1=P3.2
      P3.2,
      --  MOSI1=P3.13
      P3.13,
      --  MOSI1=P2.0
      P2.0,
      --  MOSI1=P2.15
      P2.15)
     with Size => 4;
   for SSP_MOSI1_Field use
     (P3.8 => 0,
      P0.5 => 1,
      P0.12 => 2,
      P1.2 => 3,
      P1.6 => 4,
      P1.13 => 5,
      P3.2 => 6,
      P3.13 => 7,
      P2.0 => 8,
      P2.15 => 9);

   --  SCK1 assigned pin
   type SSP_SCK1_Field is
     (
      --  SCK1=P3.7
      P3.7,
      --  SCK1=P0.7
      P0.7,
      --  SCK1=P0.14
      P0.14,
      --  SCK1=P1.1
      P1.1,
      --  SCK1=P1.11
      P1.11,
      --  SCK1=P1.15
      P1.15,
      --  SCK1=P3.3
      P3.3,
      --  SCK1=P3.14
      P3.14,
      --  SCK1=P2.2
      P2.2,
      --  SCK1=P2.13
      P2.13)
     with Size => 4;
   for SSP_SCK1_Field use
     (P3.7 => 0,
      P0.7 => 1,
      P0.14 => 2,
      P1.1 => 3,
      P1.11 => 4,
      P1.15 => 5,
      P3.3 => 6,
      P3.14 => 7,
      P2.2 => 8,
      P2.13 => 9);

   --  SEL1 assigned pin
   type SSP_SEL1_Field is
     (
      --  SEL1=P3.6
      P3.6,
      --  SEL1=P0.2
      P0.2,
      --  SEL1=P0.13
      P0.13,
      --  SEL1=P1.0
      P1.0,
      --  SEL1=P1.4
      P1.4,
      --  SEL1=P1.7
      P1.7,
      --  SEL1=P1.14
      P1.14,
      --  SEL1=P3.11
      P3.11,
      --  SEL1=P2.1
      P2.1,
      --  SEL1=P2.14
      P2.14)
     with Size => 4;
   for SSP_SEL1_Field use
     (P3.6 => 0,
      P0.2 => 1,
      P0.13 => 2,
      P1.0 => 3,
      P1.4 => 4,
      P1.7 => 5,
      P1.14 => 6,
      P3.11 => 7,
      P2.1 => 8,
      P2.14 => 9);

   --  Offset:0x08 PFPA for SSP Register
   type SSP_Register is record
      --  MISO0 assigned pin
      MISO0 : SSP_MISO0_Field := NRF_SVD.PFPA.P0.2;
      --  MOSI0 assigned pin
      MOSI0 : SSP_MOSI0_Field := NRF_SVD.PFPA.P0.3;
      --  SCK0 assigned pin
      SCK0  : SSP_SCK0_Field := NRF_SVD.PFPA.P0.4;
      --  SEL0 assigned pin
      SEL0  : SSP_SEL0_Field := NRF_SVD.PFPA.P0.5;
      --  MISO1 assigned pin
      MISO1 : SSP_MISO1_Field := NRF_SVD.PFPA.P3.9;
      --  MOSI1 assigned pin
      MOSI1 : SSP_MOSI1_Field := NRF_SVD.PFPA.P3.8;
      --  SCK1 assigned pin
      SCK1  : SSP_SCK1_Field := NRF_SVD.PFPA.P3.7;
      --  SEL1 assigned pin
      SEL1  : SSP_SEL1_Field := NRF_SVD.PFPA.P3.6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSP_Register use record
      MISO0 at 0 range 0 .. 3;
      MOSI0 at 0 range 4 .. 7;
      SCK0  at 0 range 8 .. 11;
      SEL0  at 0 range 12 .. 15;
      MISO1 at 0 range 16 .. 19;
      MOSI1 at 0 range 20 .. 23;
      SCK1  at 0 range 24 .. 27;
      SEL1  at 0 range 28 .. 31;
   end record;

   --  I2SMCLK assigned pin
   type I2S_MCLK_Field is
     (
      --  MCLK=P3.2
      P3.2,
      --  MCLK=P0.12
      P0.12,
      --  MCLK=P1.8
      P1.8,
      --  MCLK=P3.7
      P3.7,
      --  MCLK=P2.2
      P2.2,
      --  MCLK=P2.6
      P2.6)
     with Size => 4;
   for I2S_MCLK_Field use
     (P3.2 => 0,
      P0.12 => 1,
      P1.8 => 2,
      P3.7 => 3,
      P2.2 => 4,
      P2.6 => 5);

   --  I2SBCLK assigned pin
   type I2S_BCLK_Field is
     (
      --  BCLK=P3.3
      P3.3,
      --  BCLK=P0.13
      P0.13,
      --  BCLK=P1.9
      P1.9,
      --  BCLK=P3.6
      P3.6,
      --  BCLK=P2.10
      P2.10,
      --  BCLK=P2.11
      P2.11)
     with Size => 4;
   for I2S_BCLK_Field use
     (P3.3 => 0,
      P0.13 => 1,
      P1.9 => 2,
      P3.6 => 3,
      P2.10 => 4,
      P2.11 => 5);

   --  I2SWS assigned pin
   type I2S_WS_Field is
     (
      --  WS=P3.4
      P3.4,
      --  WS=P0.14
      P0.14,
      --  WS=P1.10
      P1.10,
      --  WS=P2.1
      P2.1,
      --  WS=P2.7
      P2.7,
      --  WS=P2.9
      P2.9)
     with Size => 4;
   for I2S_WS_Field use
     (P3.4 => 0,
      P0.14 => 1,
      P1.10 => 2,
      P2.1 => 3,
      P2.7 => 4,
      P2.9 => 5);

   --  I2SDOUT assigned pin
   type I2S_DOUT_Field is
     (
      --  DOUT=P3.1
      P3.1,
      --  DOUT=P0.11
      P0.11,
      --  DOUT=P1.7
      P1.7,
      --  DOUT=P3.8
      P3.8,
      --  DOUT=P2.8
      P2.8,
      --  DOUT=P2.12
      P2.12)
     with Size => 4;
   for I2S_DOUT_Field use
     (P3.1 => 0,
      P0.11 => 1,
      P1.7 => 2,
      P3.8 => 3,
      P2.8 => 4,
      P2.12 => 5);

   --  I2SDIN assigned pin
   type I2S_DIN_Field is
     (
      --  DIN=P3.0
      P3.0,
      --  DIN=P0.10
      P0.10,
      --  DIN=P1.6
      P1.6,
      --  DIN=P3.9
      P3.9,
      --  DIN=P2.0
      P2.0,
      --  DIN=P2.5
      P2.5)
     with Size => 4;
   for I2S_DIN_Field use
     (P3.0 => 0,
      P0.10 => 1,
      P1.6 => 2,
      P3.9 => 3,
      P2.0 => 4,
      P2.5 => 5);

   --  Offset:0x0C PFPA for I2S Register
   type I2S_Register is record
      --  I2SMCLK assigned pin
      MCLK           : I2S_MCLK_Field := NRF_SVD.PFPA.P3.2;
      --  I2SBCLK assigned pin
      BCLK           : I2S_BCLK_Field := NRF_SVD.PFPA.P3.3;
      --  I2SWS assigned pin
      WS             : I2S_WS_Field := NRF_SVD.PFPA.P3.4;
      --  I2SDOUT assigned pin
      DOUT           : I2S_DOUT_Field := NRF_SVD.PFPA.P3.1;
      --  I2SDIN assigned pin
      DIN            : I2S_DIN_Field := NRF_SVD.PFPA.P3.0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_Register use record
      MCLK           at 0 range 0 .. 3;
      BCLK           at 0 range 4 .. 7;
      WS             at 0 range 8 .. 11;
      DOUT           at 0 range 12 .. 15;
      DIN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  CT16B0_CAP0 assigned pin
   type CT16B0_CAP0_Field is
     (
      --  CT16B0_CAP0=P0.2
      P0.2,
      --  CT16B0_CAP0=P0.8
      P0.8,
      --  CT16B0_CAP0=P1.0
      P1.0,
      --  CT16B0_CAP0=P3.0
      P3.0,
      --  CT16B0_CAP0=P3.2
      P3.2,
      --  CT16B0_CAP0=P3.10
      P3.10,
      --  CT16B0_CAP0=P2.0
      P2.0,
      --  CT16B0_CAP0=P2.13
      P2.13)
     with Size => 4;
   for CT16B0_CAP0_Field use
     (P0.2 => 0,
      P0.8 => 1,
      P1.0 => 2,
      P3.0 => 3,
      P3.2 => 4,
      P3.10 => 5,
      P2.0 => 6,
      P2.13 => 7);

   --  CT16B0_PWM0 assigned pin
   type CT16B0_PWM0_Field is
     (
      --  CT16B0_PWM0=P0.0
      P0.0,
      --  CT16B0_PWM0=P1.1
      P1.1,
      --  CT16B0_PWM0=P1.8
      P1.8,
      --  CT16B0_PWM0=P1.12
      P1.12,
      --  CT16B0_PWM0=P3.3
      P3.3,
      --  CT16B0_PWM0=P3.11
      P3.11,
      --  CT16B0_PWM0=P2.3
      P2.3,
      --  CT16B0_PWM0=P2.15
      P2.15)
     with Size => 4;
   for CT16B0_PWM0_Field use
     (P0.0 => 0,
      P1.1 => 1,
      P1.8 => 2,
      P1.12 => 3,
      P3.3 => 4,
      P3.11 => 5,
      P2.3 => 6,
      P2.15 => 7);

   --  CT16B0_PWM1 assigned pin
   type CT16B0_PWM1_Field is
     (
      --  CT16B0_PWM1=P0.1
      P0.1,
      --  CT16B0_PWM1=P0.4
      P0.4,
      --  CT16B0_PWM1=P0.10
      P0.10,
      --  CT16B0_PWM1=P1.13
      P1.13,
      --  CT16B0_PWM1=P3.4
      P3.4,
      --  CT16B0_PWM1=P3.12
      P3.12,
      --  CT16B0_PWM1=P2.2
      P2.2,
      --  CT16B0_PWM1=P2.11
      P2.11)
     with Size => 4;
   for CT16B0_PWM1_Field use
     (P0.1 => 0,
      P0.4 => 1,
      P0.10 => 2,
      P1.13 => 3,
      P3.4 => 4,
      P3.12 => 5,
      P2.2 => 6,
      P2.11 => 7);

   --  CT16B0_PWM2 assigned pin
   type CT16B0_PWM2_Field is
     (
      --  CT16B0_PWM2=P1.12
      P1.12,
      --  CT16B0_PWM2=P0.9
      P0.9,
      --  CT16B0_PWM2=P0.11
      P0.11,
      --  CT16B0_PWM2=P1.6
      P1.6,
      --  CT16B0_PWM2=P3.6
      P3.6,
      --  CT16B0_PWM2=P3.15
      P3.15,
      --  CT16B0_PWM2=P2.4
      P2.4,
      --  CT16B0_PWM2=P2.10
      P2.10)
     with Size => 4;
   for CT16B0_PWM2_Field use
     (P1.12 => 0,
      P0.9 => 1,
      P0.11 => 2,
      P1.6 => 3,
      P3.6 => 4,
      P3.15 => 5,
      P2.4 => 6,
      P2.10 => 7);

   --  Offset:0x10 PFPA for CT16B0 Register
   type CT16B_Register is record
      --  CT16B0_CAP0 assigned pin
      CAP0           : CT16B0_CAP0_Field := NRF_SVD.PFPA.P0.2;
      --  CT16B0_PWM0 assigned pin
      PWM0           : CT16B0_PWM0_Field := NRF_SVD.PFPA.P0.0;
      --  CT16B0_PWM1 assigned pin
      PWM1           : CT16B0_PWM1_Field := NRF_SVD.PFPA.P0.1;
      --  CT16B0_PWM2 assigned pin
      PWM2           : CT16B0_PWM2_Field := NRF_SVD.PFPA.P1.12;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CT16B_Register use record
      CAP0           at 0 range 0 .. 3;
      PWM0           at 0 range 4 .. 7;
      PWM1           at 0 range 8 .. 11;
      PWM2           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CT32B0_CAP0 assigned pin
   type CT32B0_CAP0_Field is
     (
      --  CT32B0_CAP0=P3.9
      P3.9,
      --  CT32B0_CAP0=P0.0
      P0.0,
      --  CT32B0_CAP0=P0.9
      P0.9,
      --  CT32B0_CAP0=P1.1
      P1.1,
      --  CT32B0_CAP0=P3.1
      P3.1,
      --  CT32B0_CAP0=P3.3
      P3.3,
      --  CT32B0_CAP0=P2.3
      P2.3,
      --  CT32B0_CAP0=P2.15
      P2.15)
     with Size => 4;
   for CT32B0_CAP0_Field use
     (P3.9 => 0,
      P0.0 => 1,
      P0.9 => 2,
      P1.1 => 3,
      P3.1 => 4,
      P3.3 => 5,
      P2.3 => 6,
      P2.15 => 7);

   --  CT32B0_PWM0 assigned pin
   type CT32B0_PWM0_Field is
     (
      --  CT32B0_PWM0=P1.15
      P1.15,
      --  CT32B0_PWM0=P0.4
      P0.4,
      --  CT32B0_PWM0=P0.11
      P0.11,
      --  CT32B0_PWM0=P1.8
      P1.8,
      --  CT32B0_PWM0=P1.14
      P1.14,
      --  CT32B0_PWM0=P3.9
      P3.9,
      --  CT32B0_PWM0=P2.3
      P2.3,
      --  CT32B0_PWM0=P2.14
      P2.14)
     with Size => 4;
   for CT32B0_PWM0_Field use
     (P1.15 => 0,
      P0.4 => 1,
      P0.11 => 2,
      P1.8 => 3,
      P1.14 => 4,
      P3.9 => 5,
      P2.3 => 6,
      P2.14 => 7);

   --  CT32B0_PWM1 assigned pin
   type CT32B0_PWM1_Field is
     (
      --  CT32B0_PWM1=P3.8
      P3.8,
      --  CT32B0_PWM1=P0.8
      P0.8,
      --  CT32B0_PWM1=P0.14
      P0.14,
      --  CT32B0_PWM1=P1.5
      P1.5,
      --  CT32B0_PWM1=P1.11
      P1.11,
      --  CT32B0_PWM1=P3.14
      P3.14,
      --  CT32B0_PWM1=P2.4
      P2.4,
      --  CT32B0_PWM1=P2.13
      P2.13)
     with Size => 4;
   for CT32B0_PWM1_Field use
     (P3.8 => 0,
      P0.8 => 1,
      P0.14 => 2,
      P1.5 => 3,
      P1.11 => 4,
      P3.14 => 5,
      P2.4 => 6,
      P2.13 => 7);

   --  CT32B0_PWM2 assigned pin
   type CT32B0_PWM2_Field is
     (
      --  CT32B0_PWM2=P1.14
      P1.14,
      --  CT32B0_PWM2=P0.5
      P0.5,
      --  CT32B0_PWM2=P0.9
      P0.9,
      --  CT32B0_PWM2=P1.9
      P1.9,
      --  CT32B0_PWM2=P3.7
      P3.7,
      --  CT32B0_PWM2=P3.13
      P3.13,
      --  CT32B0_PWM2=P2.0
      P2.0,
      --  CT32B0_PWM2=P2.11
      P2.11)
     with Size => 4;
   for CT32B0_PWM2_Field use
     (P1.14 => 0,
      P0.5 => 1,
      P0.9 => 2,
      P1.9 => 3,
      P3.7 => 4,
      P3.13 => 5,
      P2.0 => 6,
      P2.11 => 7);

   --  CT32B0_PWM3 assigned pin
   type CT32B0_PWM3_Field is
     (
      --  CT32B0_PWM3=P1.2
      P1.2,
      --  CT32B0_PWM3=P0.3
      P0.3,
      --  CT32B0_PWM3=P0.7
      P0.7,
      --  CT32B0_PWM3=P0.15
      P0.15,
      --  CT32B0_PWM3=P1.12
      P1.12,
      --  CT32B0_PWM3=P3.4
      P3.4,
      --  CT32B0_PWM3=P2.2
      P2.2,
      --  CT32B0_PWM3=P2.12
      P2.12)
     with Size => 4;
   for CT32B0_PWM3_Field use
     (P1.2 => 0,
      P0.3 => 1,
      P0.7 => 2,
      P0.15 => 3,
      P1.12 => 4,
      P3.4 => 5,
      P2.2 => 6,
      P2.12 => 7);

   --  Offset:0x20 PFPA for CT32B0 Register
   type CT32B_Register is record
      --  CT32B0_CAP0 assigned pin
      CAP0           : CT32B0_CAP0_Field := NRF_SVD.PFPA.P3.9;
      --  CT32B0_PWM0 assigned pin
      PWM0           : CT32B0_PWM0_Field := NRF_SVD.PFPA.P1.15;
      --  CT32B0_PWM1 assigned pin
      PWM1           : CT32B0_PWM1_Field := NRF_SVD.PFPA.P3.8;
      --  CT32B0_PWM2 assigned pin
      PWM2           : CT32B0_PWM2_Field := NRF_SVD.PFPA.P1.14;
      --  CT32B0_PWM3 assigned pin
      PWM3           : CT32B0_PWM3_Field := NRF_SVD.PFPA.P1.2;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CT32B_Register use record
      CAP0           at 0 range 0 .. 3;
      PWM0           at 0 range 4 .. 7;
      PWM1           at 0 range 8 .. 11;
      PWM2           at 0 range 12 .. 15;
      PWM3           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral Function Pin Assignment
   type SN_PFPA_Peripheral is record
      --  Offset:0x00 PFPA for UART Register
      UART   : aliased UART_Register;
      --  Offset:0x04 PFPA for I2C Register
      I2C    : aliased I2C_Register;
      --  Offset:0x08 PFPA for SSP Register
      SSP    : aliased SSP_Register;
      --  Offset:0x0C PFPA for I2S Register
      I2S    : aliased I2S_Register;
      --  Offset:0x10 PFPA for CT16B0 Register
      CT16B0 : aliased CT16B_Register;
      --  Offset:0x14 PFPA for CT16B1 Register
      CT16B1 : aliased CT16B_Register;
      --  Offset:0x18 PFPA for CT16B2 Register
      CT16B2 : aliased CT16B_Register;
      --  Offset:0x20 PFPA for CT32B0 Register
      CT32B0 : aliased CT32B_Register;
      --  Offset:0x24 PFPA for CT32B1 Register
      CT32B1 : aliased CT32B_Register;
      --  Offset:0x28 PFPA for CT32B2 Register
      CT32B2 : aliased CT32B_Register;
   end record
     with Volatile;

   for SN_PFPA_Peripheral use record
      UART   at 16#0# range 0 .. 31;
      I2C    at 16#4# range 0 .. 31;
      SSP    at 16#8# range 0 .. 31;
      I2S    at 16#C# range 0 .. 31;
      CT16B0 at 16#10# range 0 .. 31;
      CT16B1 at 16#14# range 0 .. 31;
      CT16B2 at 16#18# range 0 .. 31;
      CT32B0 at 16#20# range 0 .. 31;
      CT32B1 at 16#24# range 0 .. 31;
      CT32B2 at 16#28# range 0 .. 31;
   end record;

   --  Peripheral Function Pin Assignment
   SN_PFPA_Periph : aliased SN_PFPA_Peripheral
     with Import, Address => System'To_Address (16#40042000#);

end NRF_SVD.PFPA;
