--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General Purpose IO
package NRF_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Pad 0 pullup enable
   type PADREGA_PAD0PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD0PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 0 input enable
   type PADREGA_PAD0INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD0INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 0 drive strength
   type PADREGA_PAD0STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGA_PAD0STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 0 function select
   type PADREGA_PAD0FNCSEL_Field is
     (
      --  Configure as the IOSLAVE I2C SCL signal value.
      Slscl,
      --  Configure as the IOSLAVE SPI SCK signal value.
      Slsck,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as GPIO0 value.
      Gpio0,
      --  Configure as the IOSLAVE SPI SCK loopback signal from IOMSTRx value.
      Mxscklb,
      --  Configure as the IOMSTR2 SPI SCK output value.
      M2Sck,
      --  Configure as the IOSLAVE I2C SCL loopback signal from IOMSTRx value.
      Mxscllb,
      --  Configure as the IOMSTR2 I2C SCL clock I/O signal value.
      M2Scl)
     with Size => 3;
   for PADREGA_PAD0FNCSEL_Field use
     (Slscl => 0,
      Slsck => 1,
      Clkout => 2,
      Gpio0 => 3,
      Mxscklb => 4,
      M2Sck => 5,
      Mxscllb => 6,
      M2Scl => 7);

   --  Pad 0 pullup resistor selection.
   type PADREGA_PAD0RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGA_PAD0RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 1 pullup enable
   type PADREGA_PAD1PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD1PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 1 input enable
   type PADREGA_PAD1INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD1INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 1 drive strength
   type PADREGA_PAD1STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGA_PAD1STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 1 function select
   type PADREGA_PAD1FNCSEL_Field is
     (
      --  Configure as the IOSLAVE I2C SDA signal value.
      Slsda,
      --  Configure as the IOSLAVE SPI MISO signal value.
      Slmiso,
      --  Configure as the UART0 TX output signal value.
      Uart0Tx,
      --  Configure as GPIO1 value.
      Gpio1,
      --  Configure as the IOSLAVE SPI MISO loopback signal from IOMSTRx value.
      Mxmisolb,
      --  Configure as the IOMSTR2 SPI MISO input signal value.
      M2Miso,
      --  Configure as the IOSLAVE I2C SDA loopback signal from IOMSTRx value.
      Mxsdalb,
      --  Configure as the IOMSTR2 I2C Serial data I/O signal value.
      M2Sda)
     with Size => 3;
   for PADREGA_PAD1FNCSEL_Field use
     (Slsda => 0,
      Slmiso => 1,
      Uart0Tx => 2,
      Gpio1 => 3,
      Mxmisolb => 4,
      M2Miso => 5,
      Mxsdalb => 6,
      M2Sda => 7);

   --  Pad 1 pullup resistor selection.
   type PADREGA_PAD1RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGA_PAD1RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 2 pullup enable
   type PADREGA_PAD2PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD2PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 2 input enable
   type PADREGA_PAD2INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD2INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 2 drive strength
   type PADREGA_PAD2STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGA_PAD2STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 2 function select
   type PADREGA_PAD2FNCSEL_Field is
     (
      --  Configure as the IOSLAVE SPI 3-wire MOSI/MISO signal value.
      Slwir3,
      --  Configure as the IOSLAVE SPI MOSI signal value.
      Slmosi,
      --  Configure as the UART0 RX input value.
      Uart0Rx,
      --  Configure as GPIO2 value.
      Gpio2,
      --  Configure as the IOSLAVE SPI MOSI loopback signal from IOMSTRx value.
      Mxmosilb,
      --  Configure as the IOMSTR2 SPI MOSI output signal value.
      M2Mosi,
      --  Configure as the IOSLAVE SPI 3-wire MOSI/MISO loopback signal from
      --  IOMSTRx value.
      Mxwir3Lb,
      --  Configure as the IOMSTR2 SPI 3-wire MOSI/MISO signal value.
      M2Wir3)
     with Size => 3;
   for PADREGA_PAD2FNCSEL_Field use
     (Slwir3 => 0,
      Slmosi => 1,
      Uart0Rx => 2,
      Gpio2 => 3,
      Mxmosilb => 4,
      M2Mosi => 5,
      Mxwir3Lb => 6,
      M2Wir3 => 7);

   --  Pad 3 pullup enable
   type PADREGA_PAD3PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD3PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 3 input enable.
   type PADREGA_PAD3INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGA_PAD3INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 3 drive strength.
   type PADREGA_PAD3STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGA_PAD3STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 3 function select
   type PADREGA_PAD3FNCSEL_Field is
     (
      --  Configure as the UART0 RTS output value.
      Ua0Rts,
      --  Configure as the IOSLAVE SPI nCE signal value.
      Slnce,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR1 value.
      M1NCe4,
      --  Configure as GPIO3 value.
      Gpio3,
      --  Configure as the IOSLAVE SPI nCE loopback signal from IOMSTRx value.
      Mxncelb,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR2 value.
      M2NCe0,
      --  Configure as the ADC Trigger 1 signal value.
      Trig1,
      --  Configure as the PDM I2S Word Clock input value.
      I2S_Wclk)
     with Size => 3;
   for PADREGA_PAD3FNCSEL_Field use
     (Ua0Rts => 0,
      Slnce => 1,
      M1NCe4 => 2,
      Gpio3 => 3,
      Mxncelb => 4,
      M2NCe0 => 5,
      Trig1 => 6,
      I2S_Wclk => 7);

   --  Pad Configuration Register A
   type PADREGA_Register is record
      --  Pad 0 pullup enable
      PAD0PULL       : PADREGA_PAD0PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 0 input enable
      PAD0INPEN      : PADREGA_PAD0INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 0 drive strength
      PAD0STRNG      : PADREGA_PAD0STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 0 function select
      PAD0FNCSEL     : PADREGA_PAD0FNCSEL_Field := NRF_SVD.GPIO.Gpio0;
      --  Pad 0 pullup resistor selection.
      PAD0RSEL       : PADREGA_PAD0RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 1 pullup enable
      PAD1PULL       : PADREGA_PAD1PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 1 input enable
      PAD1INPEN      : PADREGA_PAD1INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 1 drive strength
      PAD1STRNG      : PADREGA_PAD1STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 1 function select
      PAD1FNCSEL     : PADREGA_PAD1FNCSEL_Field := NRF_SVD.GPIO.Gpio1;
      --  Pad 1 pullup resistor selection.
      PAD1RSEL       : PADREGA_PAD1RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 2 pullup enable
      PAD2PULL       : PADREGA_PAD2PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 2 input enable
      PAD2INPEN      : PADREGA_PAD2INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 2 drive strength
      PAD2STRNG      : PADREGA_PAD2STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 2 function select
      PAD2FNCSEL     : PADREGA_PAD2FNCSEL_Field := NRF_SVD.GPIO.Gpio2;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 3 pullup enable
      PAD3PULL       : PADREGA_PAD3PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 3 input enable.
      PAD3INPEN      : PADREGA_PAD3INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 3 drive strength.
      PAD3STRNG      : PADREGA_PAD3STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 3 function select
      PAD3FNCSEL     : PADREGA_PAD3FNCSEL_Field := NRF_SVD.GPIO.Gpio3;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGA_Register use record
      PAD0PULL       at 0 range 0 .. 0;
      PAD0INPEN      at 0 range 1 .. 1;
      PAD0STRNG      at 0 range 2 .. 2;
      PAD0FNCSEL     at 0 range 3 .. 5;
      PAD0RSEL       at 0 range 6 .. 7;
      PAD1PULL       at 0 range 8 .. 8;
      PAD1INPEN      at 0 range 9 .. 9;
      PAD1STRNG      at 0 range 10 .. 10;
      PAD1FNCSEL     at 0 range 11 .. 13;
      PAD1RSEL       at 0 range 14 .. 15;
      PAD2PULL       at 0 range 16 .. 16;
      PAD2INPEN      at 0 range 17 .. 17;
      PAD2STRNG      at 0 range 18 .. 18;
      PAD2FNCSEL     at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD3PULL       at 0 range 24 .. 24;
      PAD3INPEN      at 0 range 25 .. 25;
      PAD3STRNG      at 0 range 26 .. 26;
      PAD3FNCSEL     at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 4 pullup enable
   type PADREGB_PAD4PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD4PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 4 input enable
   type PADREGB_PAD4INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD4INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 4 drive strength
   type PADREGB_PAD4STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGB_PAD4STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 4 function select
   type PADREGB_PAD4FNCSEL_Field is
     (
      --  Configure as the UART0 CTS input signal value.
      Ua0Cts,
      --  Configure as the IOSLAVE interrupt out signal value.
      Slint,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR0 value.
      M0NCe5,
      --  Configure as GPIO4 value.
      Gpio4,
      --  Configure as the IOSLAVE interrupt loopback signal value.
      Slintgp,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR2 value.
      M2NCe5,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as the 32kHz crystal output signal value.
      PADREGB_PAD4FNCSEL_Field_32KHZ_Xt)
     with Size => 3;
   for PADREGB_PAD4FNCSEL_Field use
     (Ua0Cts => 0,
      Slint => 1,
      M0NCe5 => 2,
      Gpio4 => 3,
      Slintgp => 4,
      M2NCe5 => 5,
      Clkout => 6,
      PADREGB_PAD4FNCSEL_Field_32KHZ_Xt => 7);

   --  Pad 4 VSS power switch enable
   type PADREGB_PAD4PWRDN_Field is
     (
      --  Power switch disabled value.
      Dis,
      --  Power switch enabled (switch to GND) value.
      En)
     with Size => 1;
   for PADREGB_PAD4PWRDN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 5 pullup enable
   type PADREGB_PAD5PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD5PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 5 input enable
   type PADREGB_PAD5INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD5INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 5 drive strength
   type PADREGB_PAD5STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGB_PAD5STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 5 function select
   type PADREGB_PAD5FNCSEL_Field is
     (
      --  Configure as the IOMSTR0 I2C SCL signal value.
      M0Scl,
      --  Configure as the IOMSTR0 SPI SCK signal value.
      M0Sck,
      --  Configure as the UART0 RTS signal output value.
      Ua0Rts,
      --  Configure as GPIO5 value.
      Gpio5,
      --  Configure as the IOMSTR0 SPI SCK loopback signal from IOSLAVE value.
      M0Scklb,
      --  Configure as the External HFA input clock value.
      Exthfa,
      --  Configure as the IOMSTR0 I2C SCL loopback signal from IOSLAVE value.
      M0Scllb,
      --  Configure as the SPI Channel 2 nCE signal from IOMSTR1 value.
      M1NCe2)
     with Size => 3;
   for PADREGB_PAD5FNCSEL_Field use
     (M0Scl => 0,
      M0Sck => 1,
      Ua0Rts => 2,
      Gpio5 => 3,
      M0Scklb => 4,
      Exthfa => 5,
      M0Scllb => 6,
      M1NCe2 => 7);

   --  Pad 5 pullup resistor selection.
   type PADREGB_PAD5RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGB_PAD5RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 6 pullup enable
   type PADREGB_PAD6PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD6PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 6 input enable
   type PADREGB_PAD6INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD6INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 6 drive strength
   type PADREGB_PAD6STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGB_PAD6STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 6 function select
   type PADREGB_PAD6FNCSEL_Field is
     (
      --  Configure as the IOMSTR0 I2C SDA signal value.
      M0Sda,
      --  Configure as the IOMSTR0 SPI MISO signal value.
      M0Miso,
      --  Configure as the UART0 CTS input signal value.
      Ua0Cts,
      --  Configure as GPIO6 value.
      Gpio6,
      --  Configure as the IOMSTR0 SPI MISO loopback signal from IOSLAVE value.
      Slmisolb,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR1 value.
      M1NCe0,
      --  Configure as the IOMSTR0 I2C SDA loopback signal from IOSLAVE value.
      Slsdalb,
      --  Configure as the PDM I2S Data output signal value.
      I2S_Dat)
     with Size => 3;
   for PADREGB_PAD6FNCSEL_Field use
     (M0Sda => 0,
      M0Miso => 1,
      Ua0Cts => 2,
      Gpio6 => 3,
      Slmisolb => 4,
      M1NCe0 => 5,
      Slsdalb => 6,
      I2S_Dat => 7);

   --  Pad 6 pullup resistor selection.
   type PADREGB_PAD6RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGB_PAD6RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 7 pullup enable
   type PADREGB_PAD7PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD7PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 7 input enable
   type PADREGB_PAD7INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGB_PAD7INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 7 drive strentgh
   type PADREGB_PAD7STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGB_PAD7STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 7 function select
   type PADREGB_PAD7FNCSEL_Field is
     (
      --  Configure as the IOMSTR0 SPI 3-wire MOSI/MISO signal value.
      M0Wir3,
      --  Configure as the IOMSTR0 SPI MOSI signal value.
      M0Mosi,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as GPIO7 value.
      Gpio7,
      --  Configure as the ADC Trigger 0 signal value.
      Trig0,
      --  Configure as the UART0 TX output signal value.
      Uart0Tx,
      --  Configure as the IOMSTR0 SPI 3-wire MOSI/MISO loopback signal from
      --  IOSLAVE value.
      Slwir3Lb,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR1 value.
      M1NCe1)
     with Size => 3;
   for PADREGB_PAD7FNCSEL_Field use
     (M0Wir3 => 0,
      M0Mosi => 1,
      Clkout => 2,
      Gpio7 => 3,
      Trig0 => 4,
      Uart0Tx => 5,
      Slwir3Lb => 6,
      M1NCe1 => 7);

   --  Pad Configuration Register B
   type PADREGB_Register is record
      --  Pad 4 pullup enable
      PAD4PULL       : PADREGB_PAD4PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 4 input enable
      PAD4INPEN      : PADREGB_PAD4INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 4 drive strength
      PAD4STRNG      : PADREGB_PAD4STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 4 function select
      PAD4FNCSEL     : PADREGB_PAD4FNCSEL_Field := NRF_SVD.GPIO.Gpio4;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Pad 4 VSS power switch enable
      PAD4PWRDN      : PADREGB_PAD4PWRDN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 5 pullup enable
      PAD5PULL       : PADREGB_PAD5PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 5 input enable
      PAD5INPEN      : PADREGB_PAD5INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 5 drive strength
      PAD5STRNG      : PADREGB_PAD5STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 5 function select
      PAD5FNCSEL     : PADREGB_PAD5FNCSEL_Field := NRF_SVD.GPIO.Gpio5;
      --  Pad 5 pullup resistor selection.
      PAD5RSEL       : PADREGB_PAD5RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 6 pullup enable
      PAD6PULL       : PADREGB_PAD6PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 6 input enable
      PAD6INPEN      : PADREGB_PAD6INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 6 drive strength
      PAD6STRNG      : PADREGB_PAD6STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 6 function select
      PAD6FNCSEL     : PADREGB_PAD6FNCSEL_Field := NRF_SVD.GPIO.Gpio6;
      --  Pad 6 pullup resistor selection.
      PAD6RSEL       : PADREGB_PAD6RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 7 pullup enable
      PAD7PULL       : PADREGB_PAD7PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 7 input enable
      PAD7INPEN      : PADREGB_PAD7INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 7 drive strentgh
      PAD7STRNG      : PADREGB_PAD7STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 7 function select
      PAD7FNCSEL     : PADREGB_PAD7FNCSEL_Field := NRF_SVD.GPIO.Gpio7;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGB_Register use record
      PAD4PULL       at 0 range 0 .. 0;
      PAD4INPEN      at 0 range 1 .. 1;
      PAD4STRNG      at 0 range 2 .. 2;
      PAD4FNCSEL     at 0 range 3 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PAD4PWRDN      at 0 range 7 .. 7;
      PAD5PULL       at 0 range 8 .. 8;
      PAD5INPEN      at 0 range 9 .. 9;
      PAD5STRNG      at 0 range 10 .. 10;
      PAD5FNCSEL     at 0 range 11 .. 13;
      PAD5RSEL       at 0 range 14 .. 15;
      PAD6PULL       at 0 range 16 .. 16;
      PAD6INPEN      at 0 range 17 .. 17;
      PAD6STRNG      at 0 range 18 .. 18;
      PAD6FNCSEL     at 0 range 19 .. 21;
      PAD6RSEL       at 0 range 22 .. 23;
      PAD7PULL       at 0 range 24 .. 24;
      PAD7INPEN      at 0 range 25 .. 25;
      PAD7STRNG      at 0 range 26 .. 26;
      PAD7FNCSEL     at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 8 pullup enable
   type PADREGC_PAD8PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD8PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 8 input enable
   type PADREGC_PAD8INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD8INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 8 drive strength
   type PADREGC_PAD8STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGC_PAD8STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 8 function select
   type PADREGC_PAD8FNCSEL_Field is
     (
      --  Configure as the IOMSTR1 I2C SCL signal value.
      M1Scl,
      --  Configure as the IOMSTR1 SPI SCK signal value.
      M1Sck,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR0 value.
      M0NCe4,
      --  Configure as GPIO8 value.
      Gpio8,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR2 value.
      M2NCe4,
      --  Configure as the IOMSTR1 SPI SCK loopback signal from IOSLAVE value.
      M1Scklb,
      --  Configure as the UART1 TX output signal value.
      Uart1Tx,
      --  Configure as the IOMSTR1 I2C SCL loopback signal from IOSLAVE value.
      M1Scllb)
     with Size => 3;
   for PADREGC_PAD8FNCSEL_Field use
     (M1Scl => 0,
      M1Sck => 1,
      M0NCe4 => 2,
      Gpio8 => 3,
      M2NCe4 => 4,
      M1Scklb => 5,
      Uart1Tx => 6,
      M1Scllb => 7);

   --  Pad 8 pullup resistor selection.
   type PADREGC_PAD8RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGC_PAD8RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 9 pullup enable
   type PADREGC_PAD9PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD9PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 9 input enable
   type PADREGC_PAD9INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD9INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 9 drive strength
   type PADREGC_PAD9STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGC_PAD9STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 9 function select
   type PADREGC_PAD9FNCSEL_Field is
     (
      --  Configure as the IOMSTR1 I2C SDA signal value.
      M1Sda,
      --  Configure as the IOMSTR1 SPI MISO signal value.
      M1Miso,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR0 value.
      M0NCe5,
      --  Configure as GPIO9 value.
      Gpio9,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR4 value.
      M4NCe5,
      --  Configure as the IOMSTR1 SPI MISO loopback signal from IOSLAVE value.
      Slmisolb,
      --  Configure as UART1 RX input signal value.
      Uart1Rx,
      --  Configure as the IOMSTR1 I2C SDA loopback signal from IOSLAVE value.
      Slsdalb)
     with Size => 3;
   for PADREGC_PAD9FNCSEL_Field use
     (M1Sda => 0,
      M1Miso => 1,
      M0NCe5 => 2,
      Gpio9 => 3,
      M4NCe5 => 4,
      Slmisolb => 5,
      Uart1Rx => 6,
      Slsdalb => 7);

   --  Pad 9 pullup resistor selection
   type PADREGC_PAD9RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGC_PAD9RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 10 pullup enable
   type PADREGC_PAD10PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD10PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 10 input enable
   type PADREGC_PAD10INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD10INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 10 drive strength
   type PADREGC_PAD10STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGC_PAD10STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 10 function select
   type PADREGC_PAD10FNCSEL_Field is
     (
      --  Configure as the IOMSTR1 SPI 3-wire MOSI/MISO signal value.
      M1Wir3,
      --  Configure as the IOMSTR1 SPI MOSI signal value.
      M1Mosi,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR0 value.
      M0NCe6,
      --  Configure as GPIO10 value.
      Gpio10,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR2 value.
      M2NCe6,
      --  Configure as the UART1 RTS output signal value.
      Ua1Rts,
      --  Configure as the SPI channel 4 nCE signal from the IOMSTR4 value.
      M4NCe4,
      --  Configure as the IOMSTR1 SPI 3-wire MOSI/MISO loopback signal from
      --  IOSLAVE value.
      Slwir3Lb)
     with Size => 3;
   for PADREGC_PAD10FNCSEL_Field use
     (M1Wir3 => 0,
      M1Mosi => 1,
      M0NCe6 => 2,
      Gpio10 => 3,
      M2NCe6 => 4,
      Ua1Rts => 5,
      M4NCe4 => 6,
      Slwir3Lb => 7);

   --  Pad 11 pullup enable
   type PADREGC_PAD11PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD11PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 11 input enable
   type PADREGC_PAD11INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGC_PAD11INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 11 drive strentgh
   type PADREGC_PAD11STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGC_PAD11STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 11 function select
   type PADREGC_PAD11FNCSEL_Field is
     (
      --  Configure as the analog input for ADC single ended input 2 value.
      Adcse2,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR0 value.
      M0NCe0,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as GPIO11 value.
      Gpio11,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR2 value.
      M2NCe7,
      --  Configure as the UART1 CTS input signal value.
      Ua1Cts,
      --  Configure as the UART0 RX input signal value.
      Uart0Rx,
      --  Configure as the PDM Data input signal value.
      Pdm_Data)
     with Size => 3;
   for PADREGC_PAD11FNCSEL_Field use
     (Adcse2 => 0,
      M0NCe0 => 1,
      Clkout => 2,
      Gpio11 => 3,
      M2NCe7 => 4,
      Ua1Cts => 5,
      Uart0Rx => 6,
      Pdm_Data => 7);

   --  Pad Configuration Register C
   type PADREGC_Register is record
      --  Pad 8 pullup enable
      PAD8PULL       : PADREGC_PAD8PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 8 input enable
      PAD8INPEN      : PADREGC_PAD8INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 8 drive strength
      PAD8STRNG      : PADREGC_PAD8STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 8 function select
      PAD8FNCSEL     : PADREGC_PAD8FNCSEL_Field := NRF_SVD.GPIO.Gpio8;
      --  Pad 8 pullup resistor selection.
      PAD8RSEL       : PADREGC_PAD8RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 9 pullup enable
      PAD9PULL       : PADREGC_PAD9PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 9 input enable
      PAD9INPEN      : PADREGC_PAD9INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 9 drive strength
      PAD9STRNG      : PADREGC_PAD9STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 9 function select
      PAD9FNCSEL     : PADREGC_PAD9FNCSEL_Field := NRF_SVD.GPIO.Gpio9;
      --  Pad 9 pullup resistor selection
      PAD9RSEL       : PADREGC_PAD9RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 10 pullup enable
      PAD10PULL      : PADREGC_PAD10PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 10 input enable
      PAD10INPEN     : PADREGC_PAD10INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 10 drive strength
      PAD10STRNG     : PADREGC_PAD10STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 10 function select
      PAD10FNCSEL    : PADREGC_PAD10FNCSEL_Field := NRF_SVD.GPIO.Gpio10;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 11 pullup enable
      PAD11PULL      : PADREGC_PAD11PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 11 input enable
      PAD11INPEN     : PADREGC_PAD11INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 11 drive strentgh
      PAD11STRNG     : PADREGC_PAD11STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 11 function select
      PAD11FNCSEL    : PADREGC_PAD11FNCSEL_Field := NRF_SVD.GPIO.Gpio11;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGC_Register use record
      PAD8PULL       at 0 range 0 .. 0;
      PAD8INPEN      at 0 range 1 .. 1;
      PAD8STRNG      at 0 range 2 .. 2;
      PAD8FNCSEL     at 0 range 3 .. 5;
      PAD8RSEL       at 0 range 6 .. 7;
      PAD9PULL       at 0 range 8 .. 8;
      PAD9INPEN      at 0 range 9 .. 9;
      PAD9STRNG      at 0 range 10 .. 10;
      PAD9FNCSEL     at 0 range 11 .. 13;
      PAD9RSEL       at 0 range 14 .. 15;
      PAD10PULL      at 0 range 16 .. 16;
      PAD10INPEN     at 0 range 17 .. 17;
      PAD10STRNG     at 0 range 18 .. 18;
      PAD10FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD11PULL      at 0 range 24 .. 24;
      PAD11INPEN     at 0 range 25 .. 25;
      PAD11STRNG     at 0 range 26 .. 26;
      PAD11FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 12 pullup enable
   type PADREGD_PAD12PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD12PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 12 input enable
   type PADREGD_PAD12INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD12INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 12 drive strength
   type PADREGD_PAD12STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGD_PAD12STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 12 function select
   type PADREGD_PAD12FNCSEL_Field is
     (
      --  Configure as the ADC Differential pair 0 N, or Single Ended input 9
      --  analog input signal. Determination of the D0N vs SE9 usage is done
      --  when the particular channel is selected within the ADC module value.
      Adcd0Nse9,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR1 value.
      M1NCe0,
      --  Configure as the input/output signal from CTIMER A0 value.
      Tcta0,
      --  Configure as GPIO12 value.
      Gpio12,
      --  Configure as CLKOUT signal value.
      Clkout,
      --  Configure as the PDM CLK output signal value.
      Pdm_Clk,
      --  Configure as the UART0 CTS input signal value.
      Ua0Cts,
      --  Configure as the UART1 TX output signal value.
      Uart1Tx)
     with Size => 3;
   for PADREGD_PAD12FNCSEL_Field use
     (Adcd0Nse9 => 0,
      M1NCe0 => 1,
      Tcta0 => 2,
      Gpio12 => 3,
      Clkout => 4,
      Pdm_Clk => 5,
      Ua0Cts => 6,
      Uart1Tx => 7);

   --  Pad 13 pullup enable
   type PADREGD_PAD13PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD13PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 13 input enable
   type PADREGD_PAD13INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD13INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 13 drive strength
   type PADREGD_PAD13STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGD_PAD13STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 13 function select
   type PADREGD_PAD13FNCSEL_Field is
     (
      --  Configure as the ADC Differential pair 0 P, or Single Ended input 8
      --  analog input signal. Determination of the D0P vs SE8 usage is done
      --  when the particular channel is selected within the ADC module value.
      Adcd0Pse8,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR1 value.
      M1NCe1,
      --  Configure as the input/output signal from CTIMER B0 value.
      Tctb0,
      --  Configure as GPIO13 value.
      Gpio13,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR2 value.
      M2NCe3,
      --  Configure as the external HFRC oscillator input value.
      Exthfb,
      --  Configure as the UART0 RTS signal output value.
      Ua0Rts,
      --  Configure as the UART1 RX input signal value.
      Uart1Rx)
     with Size => 3;
   for PADREGD_PAD13FNCSEL_Field use
     (Adcd0Pse8 => 0,
      M1NCe1 => 1,
      Tctb0 => 2,
      Gpio13 => 3,
      M2NCe3 => 4,
      Exthfb => 5,
      Ua0Rts => 6,
      Uart1Rx => 7);

   --  Pad 14 pullup enable
   type PADREGD_PAD14PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD14PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 14 input enable
   type PADREGD_PAD14INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD14INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 14 drive strength
   type PADREGD_PAD14STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGD_PAD14STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 14 function select
   type PADREGD_PAD14FNCSEL_Field is
     (
      --  Configure as the analog ADC differential pair 1 P input signal value.
      Adcd1P,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR1 value.
      M1NCe2,
      --  Configure as the UART1 TX output signal value.
      Uart1Tx,
      --  Configure as GPIO14 value.
      Gpio14,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR2 value.
      M2NCe1,
      --  Configure as the External HFRC oscillator input select value.
      Exthfs,
      --  Configure as the alternate input for the SWDCK input signal value.
      Swdck,
      --  Configure as the 32kHz crystal output signal value.
      PADREGD_PAD14FNCSEL_Field_32KHZ_Xt)
     with Size => 3;
   for PADREGD_PAD14FNCSEL_Field use
     (Adcd1P => 0,
      M1NCe2 => 1,
      Uart1Tx => 2,
      Gpio14 => 3,
      M2NCe1 => 4,
      Exthfs => 5,
      Swdck => 6,
      PADREGD_PAD14FNCSEL_Field_32KHZ_Xt => 7);

   --  Pad 15 pullup enable
   type PADREGD_PAD15PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD15PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 15 input enable
   type PADREGD_PAD15INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGD_PAD15INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 15 drive strentgh
   type PADREGD_PAD15STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGD_PAD15STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 15 function select
   type PADREGD_PAD15FNCSEL_Field is
     (
      --  Configure as the analog ADC differential pair 1 N input signal value.
      Adcd1N,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR1 value.
      M1NCe3,
      --  Configure as the UART1 RX signal value.
      Uart1Rx,
      --  Configure as GPIO15 value.
      Gpio15,
      --  Configure as the SPI Channel 2 nCE signal from IOMSTR2 value.
      M2NCe2,
      --  Configure as the external XTAL oscillator input value.
      Extxt,
      --  Configure as an alternate port for the SWDIO I/O signal value.
      Swdio,
      --  Configure as an SWO (Serial Wire Trace output) value.
      Swo)
     with Size => 3;
   for PADREGD_PAD15FNCSEL_Field use
     (Adcd1N => 0,
      M1NCe3 => 1,
      Uart1Rx => 2,
      Gpio15 => 3,
      M2NCe2 => 4,
      Extxt => 5,
      Swdio => 6,
      Swo => 7);

   --  Pad Configuration Register D
   type PADREGD_Register is record
      --  Pad 12 pullup enable
      PAD12PULL      : PADREGD_PAD12PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 12 input enable
      PAD12INPEN     : PADREGD_PAD12INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 12 drive strength
      PAD12STRNG     : PADREGD_PAD12STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 12 function select
      PAD12FNCSEL    : PADREGD_PAD12FNCSEL_Field := NRF_SVD.GPIO.Gpio12;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 13 pullup enable
      PAD13PULL      : PADREGD_PAD13PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 13 input enable
      PAD13INPEN     : PADREGD_PAD13INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 13 drive strength
      PAD13STRNG     : PADREGD_PAD13STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 13 function select
      PAD13FNCSEL    : PADREGD_PAD13FNCSEL_Field := NRF_SVD.GPIO.Gpio13;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 14 pullup enable
      PAD14PULL      : PADREGD_PAD14PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 14 input enable
      PAD14INPEN     : PADREGD_PAD14INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 14 drive strength
      PAD14STRNG     : PADREGD_PAD14STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 14 function select
      PAD14FNCSEL    : PADREGD_PAD14FNCSEL_Field := NRF_SVD.GPIO.Gpio14;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 15 pullup enable
      PAD15PULL      : PADREGD_PAD15PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 15 input enable
      PAD15INPEN     : PADREGD_PAD15INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 15 drive strentgh
      PAD15STRNG     : PADREGD_PAD15STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 15 function select
      PAD15FNCSEL    : PADREGD_PAD15FNCSEL_Field := NRF_SVD.GPIO.Gpio15;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGD_Register use record
      PAD12PULL      at 0 range 0 .. 0;
      PAD12INPEN     at 0 range 1 .. 1;
      PAD12STRNG     at 0 range 2 .. 2;
      PAD12FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD13PULL      at 0 range 8 .. 8;
      PAD13INPEN     at 0 range 9 .. 9;
      PAD13STRNG     at 0 range 10 .. 10;
      PAD13FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD14PULL      at 0 range 16 .. 16;
      PAD14INPEN     at 0 range 17 .. 17;
      PAD14STRNG     at 0 range 18 .. 18;
      PAD14FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD15PULL      at 0 range 24 .. 24;
      PAD15INPEN     at 0 range 25 .. 25;
      PAD15STRNG     at 0 range 26 .. 26;
      PAD15FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 16 pullup enable
   type PADREGE_PAD16PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD16PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 16 input enable
   type PADREGE_PAD16INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD16INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 16 drive strength
   type PADREGE_PAD16STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGE_PAD16STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 16 function select
   type PADREGE_PAD16FNCSEL_Field is
     (
      --  Configure as the analog ADC single ended port 0 input signal value.
      Adcse0,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR0 value.
      M0NCe4,
      --  Configure as the ADC Trigger 0 signal value.
      Trig0,
      --  Configure as GPIO16 value.
      Gpio16,
      --  Configure as SPI channel 3 nCE for IOMSTR2 value.
      M2NCe3,
      --  Configure as comparator input 0 signal value.
      Cmpin0,
      --  Configure as UART0 TX output signal value.
      Uart0Tx,
      --  Configure as UART1 RTS output signal value.
      Ua1Rts)
     with Size => 3;
   for PADREGE_PAD16FNCSEL_Field use
     (Adcse0 => 0,
      M0NCe4 => 1,
      Trig0 => 2,
      Gpio16 => 3,
      M2NCe3 => 4,
      Cmpin0 => 5,
      Uart0Tx => 6,
      Ua1Rts => 7);

   --  Pad 17 pullup enable
   type PADREGE_PAD17PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD17PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 17 input enable
   type PADREGE_PAD17INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD17INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 17 drive strength
   type PADREGE_PAD17STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGE_PAD17STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 17 function select
   type PADREGE_PAD17FNCSEL_Field is
     (
      --  Configure as the analog comparator reference signal 1 input signal
      --  value.
      Cmprf1,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR0 value.
      M0NCe1,
      --  Configure as the ADC Trigger 1 signal value.
      Trig1,
      --  Configure as GPIO17 value.
      Gpio17,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR4 value.
      M4NCe3,
      --  Configure as external LFRC oscillator input value.
      Extlf,
      --  Configure as UART0 RX input signal value.
      Uart0Rx,
      --  Configure as UART1 CTS input signal value.
      Ua1Cts)
     with Size => 3;
   for PADREGE_PAD17FNCSEL_Field use
     (Cmprf1 => 0,
      M0NCe1 => 1,
      Trig1 => 2,
      Gpio17 => 3,
      M4NCe3 => 4,
      Extlf => 5,
      Uart0Rx => 6,
      Ua1Cts => 7);

   --  Pad 18 pullup enable
   type PADREGE_PAD18PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD18PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 18 input enable
   type PADREGE_PAD18INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD18INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 18 drive strength
   type PADREGE_PAD18STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGE_PAD18STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 18 function select
   type PADREGE_PAD18FNCSEL_Field is
     (
      --  Configure as the analog comparator input 1 signal value.
      Cmpin1,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR0 value.
      M0NCe2,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as GPIO18 value.
      Gpio18,
      --  Configure as the SPI nCE channel 1 from IOMSTR4 value.
      M4NCe1,
      --  Configure as ANATEST2 I/O signal value.
      Anatest2,
      --  Configure as UART1 TX output signal value.
      Uart1Tx,
      --  Configure as the 32kHz output clock from the crystal value.
      PADREGE_PAD18FNCSEL_Field_32KHZ_Xt)
     with Size => 3;
   for PADREGE_PAD18FNCSEL_Field use
     (Cmpin1 => 0,
      M0NCe2 => 1,
      Tcta1 => 2,
      Gpio18 => 3,
      M4NCe1 => 4,
      Anatest2 => 5,
      Uart1Tx => 6,
      PADREGE_PAD18FNCSEL_Field_32KHZ_Xt => 7);

   --  Pad 19 pullup enable
   type PADREGE_PAD19PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD19PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 19 input enable
   type PADREGE_PAD19INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGE_PAD19INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 19 drive strentgh
   type PADREGE_PAD19STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGE_PAD19STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 19 function select
   type PADREGE_PAD19FNCSEL_Field is
     (
      --  Configure as the analog comparator reference 0 signal value.
      Cmprf0,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR0 value.
      M0NCe3,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Configure as GPIO19 value.
      Gpio19,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as the ANATEST1 I/O signal value.
      Anatest1,
      --  Configure as the UART1 RX input signal value.
      Uart1Rx,
      --  Configure as the PDM I2S Byte clock input signal value.
      I2S_Bclk)
     with Size => 3;
   for PADREGE_PAD19FNCSEL_Field use
     (Cmprf0 => 0,
      M0NCe3 => 1,
      Tctb1 => 2,
      Gpio19 => 3,
      Tcta1 => 4,
      Anatest1 => 5,
      Uart1Rx => 6,
      I2S_Bclk => 7);

   --  Pad Configuration Register E
   type PADREGE_Register is record
      --  Pad 16 pullup enable
      PAD16PULL      : PADREGE_PAD16PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 16 input enable
      PAD16INPEN     : PADREGE_PAD16INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 16 drive strength
      PAD16STRNG     : PADREGE_PAD16STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 16 function select
      PAD16FNCSEL    : PADREGE_PAD16FNCSEL_Field := NRF_SVD.GPIO.Gpio16;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 17 pullup enable
      PAD17PULL      : PADREGE_PAD17PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 17 input enable
      PAD17INPEN     : PADREGE_PAD17INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 17 drive strength
      PAD17STRNG     : PADREGE_PAD17STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 17 function select
      PAD17FNCSEL    : PADREGE_PAD17FNCSEL_Field := NRF_SVD.GPIO.Gpio17;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 18 pullup enable
      PAD18PULL      : PADREGE_PAD18PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 18 input enable
      PAD18INPEN     : PADREGE_PAD18INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 18 drive strength
      PAD18STRNG     : PADREGE_PAD18STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 18 function select
      PAD18FNCSEL    : PADREGE_PAD18FNCSEL_Field := NRF_SVD.GPIO.Gpio18;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 19 pullup enable
      PAD19PULL      : PADREGE_PAD19PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 19 input enable
      PAD19INPEN     : PADREGE_PAD19INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 19 drive strentgh
      PAD19STRNG     : PADREGE_PAD19STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 19 function select
      PAD19FNCSEL    : PADREGE_PAD19FNCSEL_Field := NRF_SVD.GPIO.Gpio19;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGE_Register use record
      PAD16PULL      at 0 range 0 .. 0;
      PAD16INPEN     at 0 range 1 .. 1;
      PAD16STRNG     at 0 range 2 .. 2;
      PAD16FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD17PULL      at 0 range 8 .. 8;
      PAD17INPEN     at 0 range 9 .. 9;
      PAD17STRNG     at 0 range 10 .. 10;
      PAD17FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD18PULL      at 0 range 16 .. 16;
      PAD18INPEN     at 0 range 17 .. 17;
      PAD18STRNG     at 0 range 18 .. 18;
      PAD18FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD19PULL      at 0 range 24 .. 24;
      PAD19INPEN     at 0 range 25 .. 25;
      PAD19STRNG     at 0 range 26 .. 26;
      PAD19FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 20 pulldown enable
   type PADREGF_PAD20PULL_Field is
     (
      --  Pulldown disabled value.
      Dis,
      --  Pulldown enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD20PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 20 input enable
   type PADREGF_PAD20INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD20INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 20 drive strength
   type PADREGF_PAD20STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGF_PAD20STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 20 function select
   type PADREGF_PAD20FNCSEL_Field is
     (
      --  Configure as the serial wire debug clock signal value.
      Swdck,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR1 value.
      M1NCe5,
      --  Configure as the input/output signal from CTIMER A2 value.
      Tcta2,
      --  Configure as GPIO20 value.
      Gpio20,
      --  Configure as UART0 TX output signal value.
      Uart0Tx,
      --  Configure as UART1 TX output signal value.
      Uart1Tx,
      --  Undefined/should not be used value.
      Undef6,
      --  Undefined/should not be used value.
      Undef7)
     with Size => 3;
   for PADREGF_PAD20FNCSEL_Field use
     (Swdck => 0,
      M1NCe5 => 1,
      Tcta2 => 2,
      Gpio20 => 3,
      Uart0Tx => 4,
      Uart1Tx => 5,
      Undef6 => 6,
      Undef7 => 7);

   --  Pad 21 pullup enable
   type PADREGF_PAD21PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD21PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 21 input enable
   type PADREGF_PAD21INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD21INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 21 drive strength
   type PADREGF_PAD21STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGF_PAD21STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 21 function select
   type PADREGF_PAD21FNCSEL_Field is
     (
      --  Configure as the serial wire debug data signal value.
      Swdio,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR1 value.
      M1NCe6,
      --  Configure as the input/output signal from CTIMER B2 value.
      Tctb2,
      --  Configure as GPIO21 value.
      Gpio21,
      --  Configure as UART0 RX input signal value.
      Uart0Rx,
      --  Configure as UART1 RX input signal value.
      Uart1Rx,
      --  Undefined/should not be used value.
      Undef6,
      --  Undefined/should not be used value.
      Undef7)
     with Size => 3;
   for PADREGF_PAD21FNCSEL_Field use
     (Swdio => 0,
      M1NCe6 => 1,
      Tctb2 => 2,
      Gpio21 => 3,
      Uart0Rx => 4,
      Uart1Rx => 5,
      Undef6 => 6,
      Undef7 => 7);

   --  Pad 22 pullup enable
   type PADREGF_PAD22PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD22PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 22 input enable
   type PADREGF_PAD22INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD22INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 22 drive strength
   type PADREGF_PAD22STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGF_PAD22STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 22 function select
   type PADREGF_PAD22FNCSEL_Field is
     (
      --  Configure as the UART0 TX signal value.
      Uart0Tx,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR1 value.
      M1NCe7,
      --  Configure as the input/output signal from CTIMER A3 value.
      Tcta3,
      --  Configure as GPIO22 value.
      Gpio22,
      --  Configure as the PDM CLK output value.
      Pdm_Clk,
      --  Undefined/should not be used value.
      Undef5,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Configure as the serial trace data output signal value.
      Swo)
     with Size => 3;
   for PADREGF_PAD22FNCSEL_Field use
     (Uart0Tx => 0,
      M1NCe7 => 1,
      Tcta3 => 2,
      Gpio22 => 3,
      Pdm_Clk => 4,
      Undef5 => 5,
      Tctb1 => 6,
      Swo => 7);

   --  Pad 22 upper power switch enable
   type PADREGF_PAD22PWRUP_Field is
     (
      --  Power switch disabled value.
      Dis,
      --  Power switch enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD22PWRUP_Field use
     (Dis => 0,
      En => 1);

   --  Pad 23 pullup enable
   type PADREGF_PAD23PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD23PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 23 input enable
   type PADREGF_PAD23INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGF_PAD23INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 23 drive strentgh
   type PADREGF_PAD23STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGF_PAD23STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 23 function select
   type PADREGF_PAD23FNCSEL_Field is
     (
      --  Configure as the UART0 RX signal value.
      Uart0Rx,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR0 value.
      M0NCe0,
      --  Configure as the input/output signal from CTIMER B3 value.
      Tctb3,
      --  Configure as GPIO23 value.
      Gpio23,
      --  Configure as PDM Data input to the PDM module value.
      Pdm_Data,
      --  Configure as voltage comparitor output value.
      Cmpout,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Undefined/should not be used value.
      Undef7)
     with Size => 3;
   for PADREGF_PAD23FNCSEL_Field use
     (Uart0Rx => 0,
      M0NCe0 => 1,
      Tctb3 => 2,
      Gpio23 => 3,
      Pdm_Data => 4,
      Cmpout => 5,
      Tctb1 => 6,
      Undef7 => 7);

   --  Pad Configuration Register F
   type PADREGF_Register is record
      --  Pad 20 pulldown enable
      PAD20PULL      : PADREGF_PAD20PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 20 input enable
      PAD20INPEN     : PADREGF_PAD20INPEN_Field := NRF_SVD.GPIO.En;
      --  Pad 20 drive strength
      PAD20STRNG     : PADREGF_PAD20STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 20 function select
      PAD20FNCSEL    : PADREGF_PAD20FNCSEL_Field := NRF_SVD.GPIO.Swdck;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 21 pullup enable
      PAD21PULL      : PADREGF_PAD21PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 21 input enable
      PAD21INPEN     : PADREGF_PAD21INPEN_Field := NRF_SVD.GPIO.En;
      --  Pad 21 drive strength
      PAD21STRNG     : PADREGF_PAD21STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 21 function select
      PAD21FNCSEL    : PADREGF_PAD21FNCSEL_Field := NRF_SVD.GPIO.Swdio;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 22 pullup enable
      PAD22PULL      : PADREGF_PAD22PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 22 input enable
      PAD22INPEN     : PADREGF_PAD22INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 22 drive strength
      PAD22STRNG     : PADREGF_PAD22STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 22 function select
      PAD22FNCSEL    : PADREGF_PAD22FNCSEL_Field := NRF_SVD.GPIO.Gpio22;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Pad 22 upper power switch enable
      PAD22PWRUP     : PADREGF_PAD22PWRUP_Field := NRF_SVD.GPIO.Dis;
      --  Pad 23 pullup enable
      PAD23PULL      : PADREGF_PAD23PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 23 input enable
      PAD23INPEN     : PADREGF_PAD23INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 23 drive strentgh
      PAD23STRNG     : PADREGF_PAD23STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 23 function select
      PAD23FNCSEL    : PADREGF_PAD23FNCSEL_Field := NRF_SVD.GPIO.Gpio23;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGF_Register use record
      PAD20PULL      at 0 range 0 .. 0;
      PAD20INPEN     at 0 range 1 .. 1;
      PAD20STRNG     at 0 range 2 .. 2;
      PAD20FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD21PULL      at 0 range 8 .. 8;
      PAD21INPEN     at 0 range 9 .. 9;
      PAD21STRNG     at 0 range 10 .. 10;
      PAD21FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD22PULL      at 0 range 16 .. 16;
      PAD22INPEN     at 0 range 17 .. 17;
      PAD22STRNG     at 0 range 18 .. 18;
      PAD22FNCSEL    at 0 range 19 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      PAD22PWRUP     at 0 range 23 .. 23;
      PAD23PULL      at 0 range 24 .. 24;
      PAD23INPEN     at 0 range 25 .. 25;
      PAD23STRNG     at 0 range 26 .. 26;
      PAD23FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 24 pullup enable
   type PADREGG_PAD24PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD24PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 24 input enable
   type PADREGG_PAD24INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD24INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 24 drive strength
   type PADREGG_PAD24STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGG_PAD24STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 24 function select
   type PADREGG_PAD24FNCSEL_Field is
     (
      --  Configure as the SPI channel 1 nCE signal from IOMSTR2 value.
      M2NCe1,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR0 value.
      M0NCe1,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as GPIO24 value.
      Gpio24,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR5 value.
      M5NCe0,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as the PDM I2S Byte clock input signal value.
      I2S_Bclk,
      --  Configure as the serial trace data output signal value.
      Swo)
     with Size => 3;
   for PADREGG_PAD24FNCSEL_Field use
     (M2NCe1 => 0,
      M0NCe1 => 1,
      Clkout => 2,
      Gpio24 => 3,
      M5NCe0 => 4,
      Tcta1 => 5,
      I2S_Bclk => 6,
      Swo => 7);

   --  Pad 25 pullup enable
   type PADREGG_PAD25PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD25PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 25 input enable
   type PADREGG_PAD25INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD25INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 25 drive strength
   type PADREGG_PAD25STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGG_PAD25STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 25 function select
   type PADREGG_PAD25FNCSEL_Field is
     (
      --  Configure as the external XTAL oscillator input value.
      Extxt,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR0 value.
      M0NCe2,
      --  Configure as the input/output signal from CTIMER A0 value.
      Tcta0,
      --  Configure as GPIO25 value.
      Gpio25,
      --  Configure as the IOMSTR2 I2C Serial data I/O signal value.
      M2Sda,
      --  Configure as the IOMSTR2 SPI MISO input signal value.
      M2Miso,
      --  Configure as the IOMSTR0 SPI MISO loopback signal from IOSLAVE value.
      Slmisolb,
      --  Configure as the IOMSTR0 I2C SDA loopback signal from IOSLAVE value.
      Slsdalb)
     with Size => 3;
   for PADREGG_PAD25FNCSEL_Field use
     (Extxt => 0,
      M0NCe2 => 1,
      Tcta0 => 2,
      Gpio25 => 3,
      M2Sda => 4,
      M2Miso => 5,
      Slmisolb => 6,
      Slsdalb => 7);

   --  Pad 25 pullup resistor selection.
   type PADREGG_PAD25RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGG_PAD25RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 26 pullup enable
   type PADREGG_PAD26PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD26PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 26 input enable
   type PADREGG_PAD26INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD26INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 26 drive strength
   type PADREGG_PAD26STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGG_PAD26STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 26 function select
   type PADREGG_PAD26FNCSEL_Field is
     (
      --  Configure as the external LFRC oscillator input value.
      Extlf,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR0 value.
      M0NCe3,
      --  Configure as the input/output signal from CTIMER B0 value.
      Tctb0,
      --  Configure as GPIO26 value.
      Gpio26,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR2 value.
      M2NCe0,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR5 value.
      M5NCe1,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR3 value.
      M3NCe0)
     with Size => 3;
   for PADREGG_PAD26FNCSEL_Field use
     (Extlf => 0,
      M0NCe3 => 1,
      Tctb0 => 2,
      Gpio26 => 3,
      M2NCe0 => 4,
      Tcta1 => 5,
      M5NCe1 => 6,
      M3NCe0 => 7);

   --  Pad 27 pullup enable
   type PADREGG_PAD27PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD27PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 27 input enable
   type PADREGG_PAD27INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGG_PAD27INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 27 drive strentgh
   type PADREGG_PAD27STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGG_PAD27STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 27 function select
   type PADREGG_PAD27FNCSEL_Field is
     (
      --  Configure as the external HFRC oscillator input value.
      Exthf,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR1 value.
      M1NCe4,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as GPIO27 value.
      Gpio27,
      --  Configure as I2C clock I/O signal from IOMSTR2 value.
      M2Scl,
      --  Configure as SPI clock output signal from IOMSTR2 value.
      M2Sck,
      --  Configure as IOMSTR2 SPI SCK loopback signal from IOSLAVE value.
      M2Scklb,
      --  Configure as IOMSTR2 I2C SCL loopback signal from IOSLAVE value.
      M2Scllb)
     with Size => 3;
   for PADREGG_PAD27FNCSEL_Field use
     (Exthf => 0,
      M1NCe4 => 1,
      Tcta1 => 2,
      Gpio27 => 3,
      M2Scl => 4,
      M2Sck => 5,
      M2Scklb => 6,
      M2Scllb => 7);

   --  Pad 27 pullup resistor selection.
   type PADREGG_PAD27RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGG_PAD27RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad Configuration Register G
   type PADREGG_Register is record
      --  Pad 24 pullup enable
      PAD24PULL      : PADREGG_PAD24PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 24 input enable
      PAD24INPEN     : PADREGG_PAD24INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 24 drive strength
      PAD24STRNG     : PADREGG_PAD24STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 24 function select
      PAD24FNCSEL    : PADREGG_PAD24FNCSEL_Field := NRF_SVD.GPIO.Gpio24;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 25 pullup enable
      PAD25PULL      : PADREGG_PAD25PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 25 input enable
      PAD25INPEN     : PADREGG_PAD25INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 25 drive strength
      PAD25STRNG     : PADREGG_PAD25STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 25 function select
      PAD25FNCSEL    : PADREGG_PAD25FNCSEL_Field := NRF_SVD.GPIO.Gpio25;
      --  Pad 25 pullup resistor selection.
      PAD25RSEL      : PADREGG_PAD25RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 26 pullup enable
      PAD26PULL      : PADREGG_PAD26PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 26 input enable
      PAD26INPEN     : PADREGG_PAD26INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 26 drive strength
      PAD26STRNG     : PADREGG_PAD26STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 26 function select
      PAD26FNCSEL    : PADREGG_PAD26FNCSEL_Field := NRF_SVD.GPIO.Gpio26;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 27 pullup enable
      PAD27PULL      : PADREGG_PAD27PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 27 input enable
      PAD27INPEN     : PADREGG_PAD27INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 27 drive strentgh
      PAD27STRNG     : PADREGG_PAD27STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 27 function select
      PAD27FNCSEL    : PADREGG_PAD27FNCSEL_Field := NRF_SVD.GPIO.Gpio27;
      --  Pad 27 pullup resistor selection.
      PAD27RSEL      : PADREGG_PAD27RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGG_Register use record
      PAD24PULL      at 0 range 0 .. 0;
      PAD24INPEN     at 0 range 1 .. 1;
      PAD24STRNG     at 0 range 2 .. 2;
      PAD24FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD25PULL      at 0 range 8 .. 8;
      PAD25INPEN     at 0 range 9 .. 9;
      PAD25STRNG     at 0 range 10 .. 10;
      PAD25FNCSEL    at 0 range 11 .. 13;
      PAD25RSEL      at 0 range 14 .. 15;
      PAD26PULL      at 0 range 16 .. 16;
      PAD26INPEN     at 0 range 17 .. 17;
      PAD26STRNG     at 0 range 18 .. 18;
      PAD26FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD27PULL      at 0 range 24 .. 24;
      PAD27INPEN     at 0 range 25 .. 25;
      PAD27STRNG     at 0 range 26 .. 26;
      PAD27FNCSEL    at 0 range 27 .. 29;
      PAD27RSEL      at 0 range 30 .. 31;
   end record;

   --  Pad 28 pullup enable
   type PADREGH_PAD28PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD28PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 28 input enable
   type PADREGH_PAD28INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD28INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 28 drive strength
   type PADREGH_PAD28STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGH_PAD28STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 28 function select
   type PADREGH_PAD28FNCSEL_Field is
     (
      --  Configure as the PDM I2S Word Clock input value.
      I2S_Wclk,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR1 value.
      M1NCe5,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Configure as GPIO28 value.
      Gpio28,
      --  Configure as the IOMSTR2 SPI 3-wire MOSI/MISO signal value.
      M2Wir3,
      --  Configure as the IOMSTR2 SPI MOSI output signal value.
      M2Mosi,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR5 value.
      M5NCe3,
      --  Configure as the IOMSTR2 SPI 3-wire MOSI/MISO loopback signal from
      --  IOSLAVE value.
      Slwir3Lb)
     with Size => 3;
   for PADREGH_PAD28FNCSEL_Field use
     (I2S_Wclk => 0,
      M1NCe5 => 1,
      Tctb1 => 2,
      Gpio28 => 3,
      M2Wir3 => 4,
      M2Mosi => 5,
      M5NCe3 => 6,
      Slwir3Lb => 7);

   --  Pad 29 pullup enable
   type PADREGH_PAD29PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD29PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 29 input enable
   type PADREGH_PAD29INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD29INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 29 drive strength
   type PADREGH_PAD29STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGH_PAD29STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 29 function select
   type PADREGH_PAD29FNCSEL_Field is
     (
      --  Configure as the analog input for ADC single ended input 1 value.
      Adcse1,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR1 value.
      M1NCe6,
      --  Configure as the input/output signal from CTIMER A2 value.
      Tcta2,
      --  Configure as GPIO29 value.
      Gpio29,
      --  Configure as the UART0 CTS signal value.
      Ua0Cts,
      --  Configure as the UART1 CTS signal value.
      Ua1Cts,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR4 value.
      M4NCe0,
      --  Configure as PDM DATA input value.
      Pdm_Data)
     with Size => 3;
   for PADREGH_PAD29FNCSEL_Field use
     (Adcse1 => 0,
      M1NCe6 => 1,
      Tcta2 => 2,
      Gpio29 => 3,
      Ua0Cts => 4,
      Ua1Cts => 5,
      M4NCe0 => 6,
      Pdm_Data => 7);

   --  Pad 30 pullup enable
   type PADREGH_PAD30PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD30PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 30 input enable
   type PADREGH_PAD30INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD30INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 30 drive strength
   type PADREGH_PAD30STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGH_PAD30STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 30 function select
   type PADREGH_PAD30FNCSEL_Field is
     (
      --  Undefined/should not be used value.
      Undef0,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR1 value.
      M1NCe7,
      --  Configure as the input/output signal from CTIMER B2 value.
      Tctb2,
      --  Configure as GPIO30 value.
      Gpio30,
      --  Configure as UART0 TX output signal value.
      Uart0Tx,
      --  Configure as UART1 RTS output signal value.
      Ua1Rts,
      --  Undefined/should not be used value.
      Undef6,
      --  Configure as the PDM I2S Data output signal value.
      I2S_Dat)
     with Size => 3;
   for PADREGH_PAD30FNCSEL_Field use
     (Undef0 => 0,
      M1NCe7 => 1,
      Tctb2 => 2,
      Gpio30 => 3,
      Uart0Tx => 4,
      Ua1Rts => 5,
      Undef6 => 6,
      I2S_Dat => 7);

   --  Pad 31 pullup enable
   type PADREGH_PAD31PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD31PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 31 input enable
   type PADREGH_PAD31INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGH_PAD31INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 31 drive strentgh
   type PADREGH_PAD31STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGH_PAD31STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 31 function select
   type PADREGH_PAD31FNCSEL_Field is
     (
      --  Configure as the analog input for ADC single ended input 3 value.
      Adcse3,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR0 value.
      M0NCe4,
      --  Configure as the input/output signal from CTIMER A3 value.
      Tcta3,
      --  Configure as GPIO31 value.
      Gpio31,
      --  Configure as the UART0 RX input signal value.
      Uart0Rx,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Undefined/should not be used value.
      Undef6,
      --  Undefined/should not be used value.
      Undef7)
     with Size => 3;
   for PADREGH_PAD31FNCSEL_Field use
     (Adcse3 => 0,
      M0NCe4 => 1,
      Tcta3 => 2,
      Gpio31 => 3,
      Uart0Rx => 4,
      Tctb1 => 5,
      Undef6 => 6,
      Undef7 => 7);

   --  Pad Configuration Register H
   type PADREGH_Register is record
      --  Pad 28 pullup enable
      PAD28PULL      : PADREGH_PAD28PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 28 input enable
      PAD28INPEN     : PADREGH_PAD28INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 28 drive strength
      PAD28STRNG     : PADREGH_PAD28STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 28 function select
      PAD28FNCSEL    : PADREGH_PAD28FNCSEL_Field := NRF_SVD.GPIO.Gpio28;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 29 pullup enable
      PAD29PULL      : PADREGH_PAD29PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 29 input enable
      PAD29INPEN     : PADREGH_PAD29INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 29 drive strength
      PAD29STRNG     : PADREGH_PAD29STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 29 function select
      PAD29FNCSEL    : PADREGH_PAD29FNCSEL_Field := NRF_SVD.GPIO.Gpio29;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 30 pullup enable
      PAD30PULL      : PADREGH_PAD30PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 30 input enable
      PAD30INPEN     : PADREGH_PAD30INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 30 drive strength
      PAD30STRNG     : PADREGH_PAD30STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 30 function select
      PAD30FNCSEL    : PADREGH_PAD30FNCSEL_Field := NRF_SVD.GPIO.Gpio30;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 31 pullup enable
      PAD31PULL      : PADREGH_PAD31PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 31 input enable
      PAD31INPEN     : PADREGH_PAD31INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 31 drive strentgh
      PAD31STRNG     : PADREGH_PAD31STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 31 function select
      PAD31FNCSEL    : PADREGH_PAD31FNCSEL_Field := NRF_SVD.GPIO.Gpio31;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGH_Register use record
      PAD28PULL      at 0 range 0 .. 0;
      PAD28INPEN     at 0 range 1 .. 1;
      PAD28STRNG     at 0 range 2 .. 2;
      PAD28FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD29PULL      at 0 range 8 .. 8;
      PAD29INPEN     at 0 range 9 .. 9;
      PAD29STRNG     at 0 range 10 .. 10;
      PAD29FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD30PULL      at 0 range 16 .. 16;
      PAD30INPEN     at 0 range 17 .. 17;
      PAD30STRNG     at 0 range 18 .. 18;
      PAD30FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD31PULL      at 0 range 24 .. 24;
      PAD31INPEN     at 0 range 25 .. 25;
      PAD31STRNG     at 0 range 26 .. 26;
      PAD31FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 32 pullup enable
   type PADREGI_PAD32PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD32PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 32 input enable
   type PADREGI_PAD32INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD32INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 32 drive strength
   type PADREGI_PAD32STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGI_PAD32STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 32 function select
   type PADREGI_PAD32FNCSEL_Field is
     (
      --  Configure as the analog input for ADC single ended input 4 value.
      Adcse4,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR0 value.
      M0NCe5,
      --  Configure as the input/output signal from CTIMER B3 value.
      Tctb3,
      --  Configure as GPIO32 value.
      Gpio32,
      --  Undefined/should not be used value.
      Undef4,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Undefined/should not be used value.
      Undef6,
      --  Undefined/should not be used value.
      Undef7)
     with Size => 3;
   for PADREGI_PAD32FNCSEL_Field use
     (Adcse4 => 0,
      M0NCe5 => 1,
      Tctb3 => 2,
      Gpio32 => 3,
      Undef4 => 4,
      Tctb1 => 5,
      Undef6 => 6,
      Undef7 => 7);

   --  Pad 33 pullup enable
   type PADREGI_PAD33PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD33PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 33 input enable
   type PADREGI_PAD33INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD33INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 33 drive strength
   type PADREGI_PAD33STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGI_PAD33STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 33 function select
   type PADREGI_PAD33FNCSEL_Field is
     (
      --  Configure as the analog ADC single ended port 5 input signal value.
      Adcse5,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR0 value.
      M0NCe6,
      --  Configure as the 32kHz crystal output signal value.
      PADREGI_PAD33FNCSEL_Field_32KHZ_Xt,
      --  Configure as GPIO33 value.
      Gpio33,
      --  Undefined/should not be used value.
      Undef4,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR3 value.
      M3NCe7,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Configure as the serial trace data output signal value.
      Swo)
     with Size => 3;
   for PADREGI_PAD33FNCSEL_Field use
     (Adcse5 => 0,
      M0NCe6 => 1,
      PADREGI_PAD33FNCSEL_Field_32KHZ_Xt => 2,
      Gpio33 => 3,
      Undef4 => 4,
      M3NCe7 => 5,
      Tctb1 => 6,
      Swo => 7);

   --  Pad 34 pullup enable
   type PADREGI_PAD34PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD34PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 34 input enable
   type PADREGI_PAD34INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD34INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 34 drive strength
   type PADREGI_PAD34STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGI_PAD34STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 34 function select
   type PADREGI_PAD34FNCSEL_Field is
     (
      --  Configure as the analog input for ADC single ended input 6 value.
      Adcse6,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR0 value.
      M0NCe7,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR2 value.
      M2NCe3,
      --  Configure as GPIO34 value.
      Gpio34,
      --  Configure as the analog comparator reference 2 signal value.
      Cmprf2,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR3 value.
      M3NCe1,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR4 value.
      M4NCe0,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR5 value.
      M5NCe2)
     with Size => 3;
   for PADREGI_PAD34FNCSEL_Field use
     (Adcse6 => 0,
      M0NCe7 => 1,
      M2NCe3 => 2,
      Gpio34 => 3,
      Cmprf2 => 4,
      M3NCe1 => 5,
      M4NCe0 => 6,
      M5NCe2 => 7);

   --  Pad 35 pullup enable
   type PADREGI_PAD35PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD35PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 35 input enable
   type PADREGI_PAD35INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGI_PAD35INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 35 drive strentgh
   type PADREGI_PAD35STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGI_PAD35STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 35 function select
   type PADREGI_PAD35FNCSEL_Field is
     (
      --  Configure as the analog input for ADC single ended input 7 value.
      Adcse7,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR1 value.
      M1NCe0,
      --  Configure as the UART1 TX signal value.
      Uart1Tx,
      --  Configure as GPIO35 value.
      Gpio35,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR4 value.
      M4NCe6,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as the UART0 RTS output value.
      Ua0Rts,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR3 value.
      M3NCe2)
     with Size => 3;
   for PADREGI_PAD35FNCSEL_Field use
     (Adcse7 => 0,
      M1NCe0 => 1,
      Uart1Tx => 2,
      Gpio35 => 3,
      M4NCe6 => 4,
      Tcta1 => 5,
      Ua0Rts => 6,
      M3NCe2 => 7);

   --  Pad Configuration Register I
   type PADREGI_Register is record
      --  Pad 32 pullup enable
      PAD32PULL      : PADREGI_PAD32PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 32 input enable
      PAD32INPEN     : PADREGI_PAD32INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 32 drive strength
      PAD32STRNG     : PADREGI_PAD32STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 32 function select
      PAD32FNCSEL    : PADREGI_PAD32FNCSEL_Field := NRF_SVD.GPIO.Gpio32;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 33 pullup enable
      PAD33PULL      : PADREGI_PAD33PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 33 input enable
      PAD33INPEN     : PADREGI_PAD33INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 33 drive strength
      PAD33STRNG     : PADREGI_PAD33STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 33 function select
      PAD33FNCSEL    : PADREGI_PAD33FNCSEL_Field := NRF_SVD.GPIO.Gpio33;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 34 pullup enable
      PAD34PULL      : PADREGI_PAD34PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 34 input enable
      PAD34INPEN     : PADREGI_PAD34INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 34 drive strength
      PAD34STRNG     : PADREGI_PAD34STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 34 function select
      PAD34FNCSEL    : PADREGI_PAD34FNCSEL_Field := NRF_SVD.GPIO.Gpio34;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 35 pullup enable
      PAD35PULL      : PADREGI_PAD35PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 35 input enable
      PAD35INPEN     : PADREGI_PAD35INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 35 drive strentgh
      PAD35STRNG     : PADREGI_PAD35STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 35 function select
      PAD35FNCSEL    : PADREGI_PAD35FNCSEL_Field := NRF_SVD.GPIO.Gpio35;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGI_Register use record
      PAD32PULL      at 0 range 0 .. 0;
      PAD32INPEN     at 0 range 1 .. 1;
      PAD32STRNG     at 0 range 2 .. 2;
      PAD32FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD33PULL      at 0 range 8 .. 8;
      PAD33INPEN     at 0 range 9 .. 9;
      PAD33STRNG     at 0 range 10 .. 10;
      PAD33FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD34PULL      at 0 range 16 .. 16;
      PAD34INPEN     at 0 range 17 .. 17;
      PAD34STRNG     at 0 range 18 .. 18;
      PAD34FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD35PULL      at 0 range 24 .. 24;
      PAD35INPEN     at 0 range 25 .. 25;
      PAD35STRNG     at 0 range 26 .. 26;
      PAD35FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 36 pullup enable
   type PADREGJ_PAD36PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD36PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 36 input enable
   type PADREGJ_PAD36INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD36INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 36 drive strength
   type PADREGJ_PAD36STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGJ_PAD36STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 36 function select
   type PADREGJ_PAD36FNCSEL_Field is
     (
      --  Configure as the ADC Trigger 1 signal value.
      Trig1,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR1 value.
      M1NCe1,
      --  Configure as the UART1 RX signal value.
      Uart1Rx,
      --  Configure as GPIO36 value.
      Gpio36,
      --  Configure as the 32kHz output clock from the crystal value.
      PADREGJ_PAD36FNCSEL_Field_32KHZ_Xt,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR2 value.
      M2NCe0,
      --  Configure as the UART0 CTS signal value.
      Ua0Cts,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR3 value.
      M3NCe3)
     with Size => 3;
   for PADREGJ_PAD36FNCSEL_Field use
     (Trig1 => 0,
      M1NCe1 => 1,
      Uart1Rx => 2,
      Gpio36 => 3,
      PADREGJ_PAD36FNCSEL_Field_32KHZ_Xt => 4,
      M2NCe0 => 5,
      Ua0Cts => 6,
      M3NCe3 => 7);

   --  Pad 37 pullup enable
   type PADREGJ_PAD37PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD37PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 37 input enable
   type PADREGJ_PAD37INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD37INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 37 drive strength
   type PADREGJ_PAD37STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGJ_PAD37STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 37 function select
   type PADREGJ_PAD37FNCSEL_Field is
     (
      --  Configure as the ADC Trigger 2 signal value.
      Trig2,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR1 value.
      M1NCe2,
      --  Configure as the UART0 RTS signal value.
      Ua0Rts,
      --  Configure as GPIO37 value.
      Gpio37,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR3 value.
      M3NCe4,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR4 value.
      M4NCe1,
      --  Configure as the PDM CLK output signal value.
      Pdm_Clk,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1)
     with Size => 3;
   for PADREGJ_PAD37FNCSEL_Field use
     (Trig2 => 0,
      M1NCe2 => 1,
      Ua0Rts => 2,
      Gpio37 => 3,
      M3NCe4 => 4,
      M4NCe1 => 5,
      Pdm_Clk => 6,
      Tcta1 => 7);

   --  Pad 38 pullup enable
   type PADREGJ_PAD38PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD38PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 38 input enable
   type PADREGJ_PAD38INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD38INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 38 drive strength
   type PADREGJ_PAD38STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGJ_PAD38STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 38 function select
   type PADREGJ_PAD38FNCSEL_Field is
     (
      --  Configure as the ADC Trigger 3 signal value.
      Trig3,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR1 value.
      M1NCe3,
      --  Configure as the UART0 CTS signal value.
      Ua0Cts,
      --  Configure as GPIO38 value.
      Gpio38,
      --  Configure as the IOSLAVE SPI 3-wire MOSI/MISO signal value.
      M3Wir3,
      --  Configure as the IOMSTR3 SPI MOSI output signal value.
      M3Mosi,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR4 value.
      M4NCe7,
      --  Configure as the IOMSTR3 SPI 3-wire MOSI/MISO loopback signal from
      --  IOSLAVE value.
      Slwir3Lb)
     with Size => 3;
   for PADREGJ_PAD38FNCSEL_Field use
     (Trig3 => 0,
      M1NCe3 => 1,
      Ua0Cts => 2,
      Gpio38 => 3,
      M3Wir3 => 4,
      M3Mosi => 5,
      M4NCe7 => 6,
      Slwir3Lb => 7);

   --  Pad 39 pullup enable
   type PADREGJ_PAD39PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD39PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 39 input enable
   type PADREGJ_PAD39INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGJ_PAD39INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 39 drive strentgh
   type PADREGJ_PAD39STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGJ_PAD39STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 39 function select
   type PADREGJ_PAD39FNCSEL_Field is
     (
      --  Configure as the UART0 TX Signal value.
      Uart0Tx,
      --  Configure as the UART1 TX signal value.
      Uart1Tx,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as GPIO39 value.
      Gpio39,
      --  Configure as the IOMSTR4 I2C SCL signal value.
      M4Scl,
      --  Configure as the IOMSTR4 SPI SCK signal value.
      M4Sck,
      --  Configure as the IOMSTR4 SPI SCK loopback signal from IOSLAVE value.
      M4Scklb,
      --  Configure as the IOMSTR4 I2C SCL loopback signal from IOSLAVE value.
      M4Scllb)
     with Size => 3;
   for PADREGJ_PAD39FNCSEL_Field use
     (Uart0Tx => 0,
      Uart1Tx => 1,
      Clkout => 2,
      Gpio39 => 3,
      M4Scl => 4,
      M4Sck => 5,
      M4Scklb => 6,
      M4Scllb => 7);

   --  Pad 39 pullup resistor selection.
   type PADREGJ_PAD39RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGJ_PAD39RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad Configuration Register J
   type PADREGJ_Register is record
      --  Pad 36 pullup enable
      PAD36PULL      : PADREGJ_PAD36PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 36 input enable
      PAD36INPEN     : PADREGJ_PAD36INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 36 drive strength
      PAD36STRNG     : PADREGJ_PAD36STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 36 function select
      PAD36FNCSEL    : PADREGJ_PAD36FNCSEL_Field := NRF_SVD.GPIO.Gpio36;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 37 pullup enable
      PAD37PULL      : PADREGJ_PAD37PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 37 input enable
      PAD37INPEN     : PADREGJ_PAD37INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 37 drive strength
      PAD37STRNG     : PADREGJ_PAD37STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 37 function select
      PAD37FNCSEL    : PADREGJ_PAD37FNCSEL_Field := NRF_SVD.GPIO.Gpio37;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 38 pullup enable
      PAD38PULL      : PADREGJ_PAD38PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 38 input enable
      PAD38INPEN     : PADREGJ_PAD38INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 38 drive strength
      PAD38STRNG     : PADREGJ_PAD38STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 38 function select
      PAD38FNCSEL    : PADREGJ_PAD38FNCSEL_Field := NRF_SVD.GPIO.Gpio38;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 39 pullup enable
      PAD39PULL      : PADREGJ_PAD39PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 39 input enable
      PAD39INPEN     : PADREGJ_PAD39INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 39 drive strentgh
      PAD39STRNG     : PADREGJ_PAD39STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 39 function select
      PAD39FNCSEL    : PADREGJ_PAD39FNCSEL_Field := NRF_SVD.GPIO.Gpio39;
      --  Pad 39 pullup resistor selection.
      PAD39RSEL      : PADREGJ_PAD39RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGJ_Register use record
      PAD36PULL      at 0 range 0 .. 0;
      PAD36INPEN     at 0 range 1 .. 1;
      PAD36STRNG     at 0 range 2 .. 2;
      PAD36FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD37PULL      at 0 range 8 .. 8;
      PAD37INPEN     at 0 range 9 .. 9;
      PAD37STRNG     at 0 range 10 .. 10;
      PAD37FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD38PULL      at 0 range 16 .. 16;
      PAD38INPEN     at 0 range 17 .. 17;
      PAD38STRNG     at 0 range 18 .. 18;
      PAD38FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD39PULL      at 0 range 24 .. 24;
      PAD39INPEN     at 0 range 25 .. 25;
      PAD39STRNG     at 0 range 26 .. 26;
      PAD39FNCSEL    at 0 range 27 .. 29;
      PAD39RSEL      at 0 range 30 .. 31;
   end record;

   --  Pad 40 pullup enable
   type PADREGK_PAD40PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD40PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 40 input enable
   type PADREGK_PAD40INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD40INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 40 drive strength
   type PADREGK_PAD40STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGK_PAD40STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 40 function select
   type PADREGK_PAD40FNCSEL_Field is
     (
      --  Configure as the UART0 RX input signal value.
      Uart0Rx,
      --  Configure as the UART1 RX input signal value.
      Uart1Rx,
      --  Configure as the ADC Trigger 0 signal value.
      Trig0,
      --  Configure as GPIO40 value.
      Gpio40,
      --  Configure as the IOMSTR4 I2C serial data I/O signal value.
      M4Sda,
      --  Configure as the IOMSTR4 SPI MISO input signal value.
      M4Miso,
      --  Configure as the IOMSTR4 SPI MISO loopback signal from IOSLAVE value.
      Slmisolb,
      --  Configure as the IOMSTR4 I2C SDA loopback signal from IOSLAVE value.
      Slsdalb)
     with Size => 3;
   for PADREGK_PAD40FNCSEL_Field use
     (Uart0Rx => 0,
      Uart1Rx => 1,
      Trig0 => 2,
      Gpio40 => 3,
      M4Sda => 4,
      M4Miso => 5,
      Slmisolb => 6,
      Slsdalb => 7);

   --  Pad 40 pullup resistor selection.
   type PADREGK_PAD40RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGK_PAD40RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 41 pullup enable
   type PADREGK_PAD41PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD41PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 41 input enable
   type PADREGK_PAD41INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD41INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 41 drive strength
   type PADREGK_PAD41STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGK_PAD41STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 41 function select
   type PADREGK_PAD41FNCSEL_Field is
     (
      --  Configure as the SPI channel 1 nCE signal from IOMSTR2 value.
      M2NCe1,
      --  Configure as the CLKOUT signal value.
      Clkout,
      --  Configure as the serial wire debug SWO signal value.
      Swo,
      --  Configure as GPIO41 value.
      Gpio41,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR3 value.
      M3NCe5,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR5 value.
      M5NCe7,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR4 value.
      M4NCe2,
      --  Configure as the UART0 RTS output value.
      Ua0Rts)
     with Size => 3;
   for PADREGK_PAD41FNCSEL_Field use
     (M2NCe1 => 0,
      Clkout => 1,
      Swo => 2,
      Gpio41 => 3,
      M3NCe5 => 4,
      M5NCe7 => 5,
      M4NCe2 => 6,
      Ua0Rts => 7);

   --  Pad 41 upper power switch enable
   type PADREGK_PAD41PWRUP_Field is
     (
      --  Power switch disabled value.
      Dis,
      --  Power switch enabled (VDD switch) value.
      En)
     with Size => 1;
   for PADREGK_PAD41PWRUP_Field use
     (Dis => 0,
      En => 1);

   --  Pad 42 pullup enable
   type PADREGK_PAD42PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD42PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 42 input enable
   type PADREGK_PAD42INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD42INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 42 drive strength
   type PADREGK_PAD42STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGK_PAD42STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 42 function select
   type PADREGK_PAD42FNCSEL_Field is
     (
      --  Configure as the SPI channel 2 nCE signal from IOMSTR2 value.
      M2NCe2,
      --  Configure as the SPI channel 0 nCE signal from IOMSTR0 value.
      M0NCe0,
      --  Configure as the input/output signal from CTIMER A0 value.
      Tcta0,
      --  Configure as GPIO42 value.
      Gpio42,
      --  Configure as the IOMSTR3 I2C SCL clock I/O signal value.
      M3Scl,
      --  Configure as the IOMSTR3 SPI SCK output value.
      M3Sck,
      --  Configure as the IOMSTR3 SPI clock loopback to the IOSLAVE device
      --  value.
      M3Scklb,
      --  Configure as the IOMSTR3 I2C clock loopback to the IOSLAVE device
      --  value.
      M3Scllb)
     with Size => 3;
   for PADREGK_PAD42FNCSEL_Field use
     (M2NCe2 => 0,
      M0NCe0 => 1,
      Tcta0 => 2,
      Gpio42 => 3,
      M3Scl => 4,
      M3Sck => 5,
      M3Scklb => 6,
      M3Scllb => 7);

   --  Pad 42 pullup resistor selection.
   type PADREGK_PAD42RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGK_PAD42RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 43 pullup enable
   type PADREGK_PAD43PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD43PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 43 input enable
   type PADREGK_PAD43INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGK_PAD43INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 43 drive strentgh
   type PADREGK_PAD43STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGK_PAD43STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 43 function select
   type PADREGK_PAD43FNCSEL_Field is
     (
      --  Configure as the SPI channel 4 nCE signal from IOMSTR2 value.
      M2NCe4,
      --  Configure as the SPI channel 1 nCE signal from IOMSTR0 value.
      M0NCe1,
      --  Configure as the input/output signal from CTIMER B0 value.
      Tctb0,
      --  Configure as GPIO43 value.
      Gpio43,
      --  Configure as the IOMSTR3 I2C SDA signal value.
      M3Sda,
      --  Configure as the IOMSTR3 SPI MISO signal value.
      M3Miso,
      --  Configure as the IOMSTR3 SPI MISO loopback signal from IOSLAVE value.
      Slmisolb,
      --  Configure as the IOMSTR3 I2C SDA loopback signal from IOSLAVE value.
      Slsdalb)
     with Size => 3;
   for PADREGK_PAD43FNCSEL_Field use
     (M2NCe4 => 0,
      M0NCe1 => 1,
      Tctb0 => 2,
      Gpio43 => 3,
      M3Sda => 4,
      M3Miso => 5,
      Slmisolb => 6,
      Slsdalb => 7);

   --  Pad 43 pullup resistor selection.
   type PADREGK_PAD43RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGK_PAD43RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad Configuration Register K
   type PADREGK_Register is record
      --  Pad 40 pullup enable
      PAD40PULL      : PADREGK_PAD40PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 40 input enable
      PAD40INPEN     : PADREGK_PAD40INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 40 drive strength
      PAD40STRNG     : PADREGK_PAD40STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 40 function select
      PAD40FNCSEL    : PADREGK_PAD40FNCSEL_Field := NRF_SVD.GPIO.Gpio40;
      --  Pad 40 pullup resistor selection.
      PAD40RSEL      : PADREGK_PAD40RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 41 pullup enable
      PAD41PULL      : PADREGK_PAD41PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 41 input enable
      PAD41INPEN     : PADREGK_PAD41INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 41 drive strength
      PAD41STRNG     : PADREGK_PAD41STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 41 function select
      PAD41FNCSEL    : PADREGK_PAD41FNCSEL_Field := NRF_SVD.GPIO.Gpio41;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Pad 41 upper power switch enable
      PAD41PWRUP     : PADREGK_PAD41PWRUP_Field := NRF_SVD.GPIO.Dis;
      --  Pad 42 pullup enable
      PAD42PULL      : PADREGK_PAD42PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 42 input enable
      PAD42INPEN     : PADREGK_PAD42INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 42 drive strength
      PAD42STRNG     : PADREGK_PAD42STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 42 function select
      PAD42FNCSEL    : PADREGK_PAD42FNCSEL_Field := NRF_SVD.GPIO.Gpio42;
      --  Pad 42 pullup resistor selection.
      PAD42RSEL      : PADREGK_PAD42RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 43 pullup enable
      PAD43PULL      : PADREGK_PAD43PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 43 input enable
      PAD43INPEN     : PADREGK_PAD43INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 43 drive strentgh
      PAD43STRNG     : PADREGK_PAD43STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 43 function select
      PAD43FNCSEL    : PADREGK_PAD43FNCSEL_Field := NRF_SVD.GPIO.Gpio43;
      --  Pad 43 pullup resistor selection.
      PAD43RSEL      : PADREGK_PAD43RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGK_Register use record
      PAD40PULL      at 0 range 0 .. 0;
      PAD40INPEN     at 0 range 1 .. 1;
      PAD40STRNG     at 0 range 2 .. 2;
      PAD40FNCSEL    at 0 range 3 .. 5;
      PAD40RSEL      at 0 range 6 .. 7;
      PAD41PULL      at 0 range 8 .. 8;
      PAD41INPEN     at 0 range 9 .. 9;
      PAD41STRNG     at 0 range 10 .. 10;
      PAD41FNCSEL    at 0 range 11 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PAD41PWRUP     at 0 range 15 .. 15;
      PAD42PULL      at 0 range 16 .. 16;
      PAD42INPEN     at 0 range 17 .. 17;
      PAD42STRNG     at 0 range 18 .. 18;
      PAD42FNCSEL    at 0 range 19 .. 21;
      PAD42RSEL      at 0 range 22 .. 23;
      PAD43PULL      at 0 range 24 .. 24;
      PAD43INPEN     at 0 range 25 .. 25;
      PAD43STRNG     at 0 range 26 .. 26;
      PAD43FNCSEL    at 0 range 27 .. 29;
      PAD43RSEL      at 0 range 30 .. 31;
   end record;

   --  Pad 44 pullup enable
   type PADREGL_PAD44PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD44PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 44 input enable
   type PADREGL_PAD44INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD44INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 44 drive strength
   type PADREGL_PAD44STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGL_PAD44STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 44 function select
   type PADREGL_PAD44FNCSEL_Field is
     (
      --  Configure as the UART1 RTS output signal value.
      Ua1Rts,
      --  Configure as the SPI channel 2 nCE signal from IOMSTR0 value.
      M0NCe2,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as GPIO44 value.
      Gpio44,
      --  Configure as the IOMSTR4 SPI 3-wire MOSI/MISO signal value.
      M4Wir3,
      --  Configure as the IOMSTR4 SPI MOSI signal value.
      M4Mosi,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR5 value.
      M5NCe6,
      --  Configure as the IOMSTR4 SPI 3-wire MOSI/MISO loopback signal from
      --  IOSLAVE value.
      Slwir3Lb)
     with Size => 3;
   for PADREGL_PAD44FNCSEL_Field use
     (Ua1Rts => 0,
      M0NCe2 => 1,
      Tcta1 => 2,
      Gpio44 => 3,
      M4Wir3 => 4,
      M4Mosi => 5,
      M5NCe6 => 6,
      Slwir3Lb => 7);

   --  Pad 45 pullup enable
   type PADREGL_PAD45PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD45PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 45 input enable
   type PADREGL_PAD45INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD45INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 45 drive strength
   type PADREGL_PAD45STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGL_PAD45STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 45 function select
   type PADREGL_PAD45FNCSEL_Field is
     (
      --  Configure as the UART1 CTS input signal value.
      Ua1Cts,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR0 value.
      M0NCe3,
      --  Configure as the input/output signal from CTIMER B1 value.
      Tctb1,
      --  Configure as GPIO45 value.
      Gpio45,
      --  Configure as the SPI channel 3 nCE signal from IOMSTR4 value.
      M4NCe3,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR3 value.
      M3NCe6,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR5 value.
      M5NCe5,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1)
     with Size => 3;
   for PADREGL_PAD45FNCSEL_Field use
     (Ua1Cts => 0,
      M0NCe3 => 1,
      Tctb1 => 2,
      Gpio45 => 3,
      M4NCe3 => 4,
      M3NCe6 => 5,
      M5NCe5 => 6,
      Tcta1 => 7);

   --  Pad 46 pullup enable
   type PADREGL_PAD46PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD46PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 46 input enable
   type PADREGL_PAD46INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD46INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 46 drive strength
   type PADREGL_PAD46STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGL_PAD46STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 46 function select
   type PADREGL_PAD46FNCSEL_Field is
     (
      --  Configure as the 32kHz output clock from the crystal value.
      PADREGL_PAD46FNCSEL_Field_32KHZ_Xt,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR0 value.
      M0NCe4,
      --  Configure as the input/output signal from CTIMER A2 value.
      Tcta2,
      --  Configure as GPIO46 value.
      Gpio46,
      --  Configure as the input/output signal from CTIMER A1 value.
      Tcta1,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR5 value.
      M5NCe4,
      --  Configure as the SPI channel 4 nCE signal from IOMSTR4 value.
      M4NCe4,
      --  Configure as the serial wire debug SWO signal value.
      Swo)
     with Size => 3;
   for PADREGL_PAD46FNCSEL_Field use
     (PADREGL_PAD46FNCSEL_Field_32KHZ_Xt => 0,
      M0NCe4 => 1,
      Tcta2 => 2,
      Gpio46 => 3,
      Tcta1 => 4,
      M5NCe4 => 5,
      M4NCe4 => 6,
      Swo => 7);

   --  Pad 47 pullup enable
   type PADREGL_PAD47PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD47PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 47 input enable
   type PADREGL_PAD47INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGL_PAD47INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 47 drive strentgh
   type PADREGL_PAD47STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGL_PAD47STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 47 function select
   type PADREGL_PAD47FNCSEL_Field is
     (
      --  Configure as the SPI channel 5 nCE signal from IOMSTR2 value.
      M2NCe5,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR0 value.
      M0NCe5,
      --  Configure as the input/output signal from CTIMER B2 value.
      Tctb2,
      --  Configure as GPIO47 value.
      Gpio47,
      --  Configure as the IOMSTR5 SPI 3-wire MOSI/MISO signal value.
      M5Wir3,
      --  Configure as the IOMSTR5 SPI MOSI output signal value.
      M5Mosi,
      --  Configure as the SPI channel 5 nCE signal from IOMSTR4 value.
      M4NCe5,
      --  Configure as the IOMSTR5 SPI 3-wire MOSI/MISO loopback signal from
      --  IOSLAVE value.
      Slwir3Lb)
     with Size => 3;
   for PADREGL_PAD47FNCSEL_Field use
     (M2NCe5 => 0,
      M0NCe5 => 1,
      Tctb2 => 2,
      Gpio47 => 3,
      M5Wir3 => 4,
      M5Mosi => 5,
      M4NCe5 => 6,
      Slwir3Lb => 7);

   --  Pad Configuration Register L
   type PADREGL_Register is record
      --  Pad 44 pullup enable
      PAD44PULL      : PADREGL_PAD44PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 44 input enable
      PAD44INPEN     : PADREGL_PAD44INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 44 drive strength
      PAD44STRNG     : PADREGL_PAD44STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 44 function select
      PAD44FNCSEL    : PADREGL_PAD44FNCSEL_Field := NRF_SVD.GPIO.Gpio44;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pad 45 pullup enable
      PAD45PULL      : PADREGL_PAD45PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 45 input enable
      PAD45INPEN     : PADREGL_PAD45INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 45 drive strength
      PAD45STRNG     : PADREGL_PAD45STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 45 function select
      PAD45FNCSEL    : PADREGL_PAD45FNCSEL_Field := NRF_SVD.GPIO.Gpio45;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pad 46 pullup enable
      PAD46PULL      : PADREGL_PAD46PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 46 input enable
      PAD46INPEN     : PADREGL_PAD46INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 46 drive strength
      PAD46STRNG     : PADREGL_PAD46STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 46 function select
      PAD46FNCSEL    : PADREGL_PAD46FNCSEL_Field := NRF_SVD.GPIO.Gpio46;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Pad 47 pullup enable
      PAD47PULL      : PADREGL_PAD47PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 47 input enable
      PAD47INPEN     : PADREGL_PAD47INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 47 drive strentgh
      PAD47STRNG     : PADREGL_PAD47STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 47 function select
      PAD47FNCSEL    : PADREGL_PAD47FNCSEL_Field := NRF_SVD.GPIO.Gpio47;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGL_Register use record
      PAD44PULL      at 0 range 0 .. 0;
      PAD44INPEN     at 0 range 1 .. 1;
      PAD44STRNG     at 0 range 2 .. 2;
      PAD44FNCSEL    at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PAD45PULL      at 0 range 8 .. 8;
      PAD45INPEN     at 0 range 9 .. 9;
      PAD45STRNG     at 0 range 10 .. 10;
      PAD45FNCSEL    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PAD46PULL      at 0 range 16 .. 16;
      PAD46INPEN     at 0 range 17 .. 17;
      PAD46STRNG     at 0 range 18 .. 18;
      PAD46FNCSEL    at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PAD47PULL      at 0 range 24 .. 24;
      PAD47INPEN     at 0 range 25 .. 25;
      PAD47STRNG     at 0 range 26 .. 26;
      PAD47FNCSEL    at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Pad 48 pullup enable
   type PADREGM_PAD48PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGM_PAD48PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 48 input enable
   type PADREGM_PAD48INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGM_PAD48INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 48 drive strength
   type PADREGM_PAD48STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGM_PAD48STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 48 function select
   type PADREGM_PAD48FNCSEL_Field is
     (
      --  Configure as the SPI channel 6 nCE signal from IOMSTR2 value.
      M2NCe6,
      --  Configure as the SPI channel 6 nCE signal from IOMSTR0 value.
      M0NCe6,
      --  Configure as the input/output signal from CTIMER A3 value.
      Tcta3,
      --  Configure as GPIO48 value.
      Gpio48,
      --  Configure as the IOMSTR5 I2C SCL clock I/O signal value.
      M5Scl,
      --  Configure as the IOMSTR5 SPI SCK output value.
      M5Sck,
      --  Configure as the IOMSTR5 SPI clock loopback to the IOSLAVE device
      --  value.
      M5Scklb,
      --  Configure as the IOMSTR5 I2C clock loopback to the IOSLAVE device
      --  value.
      M5Scllb)
     with Size => 3;
   for PADREGM_PAD48FNCSEL_Field use
     (M2NCe6 => 0,
      M0NCe6 => 1,
      Tcta3 => 2,
      Gpio48 => 3,
      M5Scl => 4,
      M5Sck => 5,
      M5Scklb => 6,
      M5Scllb => 7);

   --  Pad 48 pullup resistor selection.
   type PADREGM_PAD48RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGM_PAD48RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad 49 pullup enable
   type PADREGM_PAD49PULL_Field is
     (
      --  Pullup disabled value.
      Dis,
      --  Pullup enabled value.
      En)
     with Size => 1;
   for PADREGM_PAD49PULL_Field use
     (Dis => 0,
      En => 1);

   --  Pad 49 input enable
   type PADREGM_PAD49INPEN_Field is
     (
      --  Pad input disabled value.
      Dis,
      --  Pad input enabled value.
      En)
     with Size => 1;
   for PADREGM_PAD49INPEN_Field use
     (Dis => 0,
      En => 1);

   --  Pad 49 drive strength
   type PADREGM_PAD49STRNG_Field is
     (
      --  Low drive strength value.
      Low,
      --  High drive strength value.
      High)
     with Size => 1;
   for PADREGM_PAD49STRNG_Field use
     (Low => 0,
      High => 1);

   --  Pad 49 function select
   type PADREGM_PAD49FNCSEL_Field is
     (
      --  Configure as the SPI channel 7 nCE signal from IOMSTR2 value.
      M2NCe7,
      --  Configure as the SPI channel 7 nCE signal from IOMSTR0 value.
      M0NCe7,
      --  Configure as the input/output signal from CTIMER B3 value.
      Tctb3,
      --  Configure as GPIO49 value.
      Gpio49,
      --  Configure as the IOMSTR5 I2C serial data I/O signal value.
      M5Sda,
      --  Configure as the IOMSTR5 SPI MISO input signal value.
      M5Miso,
      --  Configure as the IOMSTR5 SPI MISO loopback signal from IOSLAVE value.
      Slmisolb,
      --  Configure as the IOMSTR5 I2C SDA loopback signal from IOSLAVE value.
      Slsdalb)
     with Size => 3;
   for PADREGM_PAD49FNCSEL_Field use
     (M2NCe7 => 0,
      M0NCe7 => 1,
      Tctb3 => 2,
      Gpio49 => 3,
      M5Sda => 4,
      M5Miso => 5,
      Slmisolb => 6,
      Slsdalb => 7);

   --  Pad 49 pullup resistor selection.
   type PADREGM_PAD49RSEL_Field is
     (
      --  Pullup is ~1.5 KOhms value.
      Pull1_5K,
      --  Pullup is ~6 KOhms value.
      Pull6K,
      --  Pullup is ~12 KOhms value.
      Pull12K,
      --  Pullup is ~24 KOhms value.
      Pull24K)
     with Size => 2;
   for PADREGM_PAD49RSEL_Field use
     (Pull1_5K => 0,
      Pull6K => 1,
      Pull12K => 2,
      Pull24K => 3);

   --  Pad Configuration Register M
   type PADREGM_Register is record
      --  Pad 48 pullup enable
      PAD48PULL      : PADREGM_PAD48PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 48 input enable
      PAD48INPEN     : PADREGM_PAD48INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 48 drive strength
      PAD48STRNG     : PADREGM_PAD48STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 48 function select
      PAD48FNCSEL    : PADREGM_PAD48FNCSEL_Field := NRF_SVD.GPIO.Gpio48;
      --  Pad 48 pullup resistor selection.
      PAD48RSEL      : PADREGM_PAD48RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  Pad 49 pullup enable
      PAD49PULL      : PADREGM_PAD49PULL_Field := NRF_SVD.GPIO.Dis;
      --  Pad 49 input enable
      PAD49INPEN     : PADREGM_PAD49INPEN_Field := NRF_SVD.GPIO.Dis;
      --  Pad 49 drive strength
      PAD49STRNG     : PADREGM_PAD49STRNG_Field := NRF_SVD.GPIO.Low;
      --  Pad 49 function select
      PAD49FNCSEL    : PADREGM_PAD49FNCSEL_Field := NRF_SVD.GPIO.Gpio49;
      --  Pad 49 pullup resistor selection.
      PAD49RSEL      : PADREGM_PAD49RSEL_Field := NRF_SVD.GPIO.Pull1_5K;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PADREGM_Register use record
      PAD48PULL      at 0 range 0 .. 0;
      PAD48INPEN     at 0 range 1 .. 1;
      PAD48STRNG     at 0 range 2 .. 2;
      PAD48FNCSEL    at 0 range 3 .. 5;
      PAD48RSEL      at 0 range 6 .. 7;
      PAD49PULL      at 0 range 8 .. 8;
      PAD49INPEN     at 0 range 9 .. 9;
      PAD49STRNG     at 0 range 10 .. 10;
      PAD49FNCSEL    at 0 range 11 .. 13;
      PAD49RSEL      at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIO0 input enable.
   type CFGA_GPIO0INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO0INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO0 output configuration.
   type CFGA_GPIO0OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO0OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO0 interrupt direction.
   type CFGA_GPIO0INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO0INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO1 input enable.
   type CFGA_GPIO1INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO1INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO1 output configuration.
   type CFGA_GPIO1OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO1OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO1 interrupt direction.
   type CFGA_GPIO1INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO1INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO2 input enable.
   type CFGA_GPIO2INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO2INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO2 output configuration.
   type CFGA_GPIO2OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO2OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO2 interrupt direction.
   type CFGA_GPIO2INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO2INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO3 input enable.
   type CFGA_GPIO3INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO3INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO3 output configuration.
   type CFGA_GPIO3OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO3OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO3 interrupt direction.
   type CFGA_GPIO3INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO3INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO4 input enable.
   type CFGA_GPIO4INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO4INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO4 output configuration.
   type CFGA_GPIO4OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO4OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO4 interrupt direction.
   type CFGA_GPIO4INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO4INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO5 input enable.
   type CFGA_GPIO5INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO5INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO5 output configuration.
   type CFGA_GPIO5OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO5OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO5 interrupt direction.
   type CFGA_GPIO5INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO5INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO6 input enable.
   type CFGA_GPIO6INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO6INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO6 output configuration.
   type CFGA_GPIO6OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO6OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO6 interrupt direction.
   type CFGA_GPIO6INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO6INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO7 input enable.
   type CFGA_GPIO7INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGA_GPIO7INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO7 output configuration.
   type CFGA_GPIO7OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGA_GPIO7OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO7 interrupt direction.
   type CFGA_GPIO7INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGA_GPIO7INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register A
   type CFGA_Register is record
      --  GPIO0 input enable.
      GPIO0INCFG  : CFGA_GPIO0INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO0 output configuration.
      GPIO0OUTCFG : CFGA_GPIO0OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO0 interrupt direction.
      GPIO0INTD   : CFGA_GPIO0INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO1 input enable.
      GPIO1INCFG  : CFGA_GPIO1INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO1 output configuration.
      GPIO1OUTCFG : CFGA_GPIO1OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO1 interrupt direction.
      GPIO1INTD   : CFGA_GPIO1INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO2 input enable.
      GPIO2INCFG  : CFGA_GPIO2INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO2 output configuration.
      GPIO2OUTCFG : CFGA_GPIO2OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO2 interrupt direction.
      GPIO2INTD   : CFGA_GPIO2INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO3 input enable.
      GPIO3INCFG  : CFGA_GPIO3INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO3 output configuration.
      GPIO3OUTCFG : CFGA_GPIO3OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO3 interrupt direction.
      GPIO3INTD   : CFGA_GPIO3INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO4 input enable.
      GPIO4INCFG  : CFGA_GPIO4INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO4 output configuration.
      GPIO4OUTCFG : CFGA_GPIO4OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO4 interrupt direction.
      GPIO4INTD   : CFGA_GPIO4INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO5 input enable.
      GPIO5INCFG  : CFGA_GPIO5INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO5 output configuration.
      GPIO5OUTCFG : CFGA_GPIO5OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO5 interrupt direction.
      GPIO5INTD   : CFGA_GPIO5INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO6 input enable.
      GPIO6INCFG  : CFGA_GPIO6INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO6 output configuration.
      GPIO6OUTCFG : CFGA_GPIO6OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO6 interrupt direction.
      GPIO6INTD   : CFGA_GPIO6INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO7 input enable.
      GPIO7INCFG  : CFGA_GPIO7INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO7 output configuration.
      GPIO7OUTCFG : CFGA_GPIO7OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO7 interrupt direction.
      GPIO7INTD   : CFGA_GPIO7INTD_Field := NRF_SVD.GPIO.Intlh;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGA_Register use record
      GPIO0INCFG  at 0 range 0 .. 0;
      GPIO0OUTCFG at 0 range 1 .. 2;
      GPIO0INTD   at 0 range 3 .. 3;
      GPIO1INCFG  at 0 range 4 .. 4;
      GPIO1OUTCFG at 0 range 5 .. 6;
      GPIO1INTD   at 0 range 7 .. 7;
      GPIO2INCFG  at 0 range 8 .. 8;
      GPIO2OUTCFG at 0 range 9 .. 10;
      GPIO2INTD   at 0 range 11 .. 11;
      GPIO3INCFG  at 0 range 12 .. 12;
      GPIO3OUTCFG at 0 range 13 .. 14;
      GPIO3INTD   at 0 range 15 .. 15;
      GPIO4INCFG  at 0 range 16 .. 16;
      GPIO4OUTCFG at 0 range 17 .. 18;
      GPIO4INTD   at 0 range 19 .. 19;
      GPIO5INCFG  at 0 range 20 .. 20;
      GPIO5OUTCFG at 0 range 21 .. 22;
      GPIO5INTD   at 0 range 23 .. 23;
      GPIO6INCFG  at 0 range 24 .. 24;
      GPIO6OUTCFG at 0 range 25 .. 26;
      GPIO6INTD   at 0 range 27 .. 27;
      GPIO7INCFG  at 0 range 28 .. 28;
      GPIO7OUTCFG at 0 range 29 .. 30;
      GPIO7INTD   at 0 range 31 .. 31;
   end record;

   --  GPIO8 input enable.
   type CFGB_GPIO8INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO8INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO8 output configuration.
   type CFGB_GPIO8OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO8OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO8 interrupt direction.
   type CFGB_GPIO8INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO8INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO9 input enable.
   type CFGB_GPIO9INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO9INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO9 output configuration.
   type CFGB_GPIO9OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO9OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO9 interrupt direction.
   type CFGB_GPIO9INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO9INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO10 input enable.
   type CFGB_GPIO10INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO10INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO10 output configuration.
   type CFGB_GPIO10OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO10OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO10 interrupt direction.
   type CFGB_GPIO10INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO10INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO11 input enable.
   type CFGB_GPIO11INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO11INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO11 output configuration.
   type CFGB_GPIO11OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO11OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO11 interrupt direction.
   type CFGB_GPIO11INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO11INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO12 input enable.
   type CFGB_GPIO12INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO12INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO12 output configuration.
   type CFGB_GPIO12OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO12OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO12 interrupt direction.
   type CFGB_GPIO12INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO12INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO13 input enable.
   type CFGB_GPIO13INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO13INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO13 output configuration.
   type CFGB_GPIO13OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO13OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO13 interrupt direction.
   type CFGB_GPIO13INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO13INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO14 input enable.
   type CFGB_GPIO14INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO14INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO14 output configuration.
   type CFGB_GPIO14OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO14OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO14 interrupt direction.
   type CFGB_GPIO14INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO14INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO15 input enable.
   type CFGB_GPIO15INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGB_GPIO15INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO15 output configuration.
   type CFGB_GPIO15OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGB_GPIO15OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO15 interrupt direction.
   type CFGB_GPIO15INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGB_GPIO15INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register B
   type CFGB_Register is record
      --  GPIO8 input enable.
      GPIO8INCFG   : CFGB_GPIO8INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO8 output configuration.
      GPIO8OUTCFG  : CFGB_GPIO8OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO8 interrupt direction.
      GPIO8INTD    : CFGB_GPIO8INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO9 input enable.
      GPIO9INCFG   : CFGB_GPIO9INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO9 output configuration.
      GPIO9OUTCFG  : CFGB_GPIO9OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO9 interrupt direction.
      GPIO9INTD    : CFGB_GPIO9INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO10 input enable.
      GPIO10INCFG  : CFGB_GPIO10INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO10 output configuration.
      GPIO10OUTCFG : CFGB_GPIO10OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO10 interrupt direction.
      GPIO10INTD   : CFGB_GPIO10INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO11 input enable.
      GPIO11INCFG  : CFGB_GPIO11INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO11 output configuration.
      GPIO11OUTCFG : CFGB_GPIO11OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO11 interrupt direction.
      GPIO11INTD   : CFGB_GPIO11INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO12 input enable.
      GPIO12INCFG  : CFGB_GPIO12INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO12 output configuration.
      GPIO12OUTCFG : CFGB_GPIO12OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO12 interrupt direction.
      GPIO12INTD   : CFGB_GPIO12INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO13 input enable.
      GPIO13INCFG  : CFGB_GPIO13INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO13 output configuration.
      GPIO13OUTCFG : CFGB_GPIO13OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO13 interrupt direction.
      GPIO13INTD   : CFGB_GPIO13INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO14 input enable.
      GPIO14INCFG  : CFGB_GPIO14INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO14 output configuration.
      GPIO14OUTCFG : CFGB_GPIO14OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO14 interrupt direction.
      GPIO14INTD   : CFGB_GPIO14INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO15 input enable.
      GPIO15INCFG  : CFGB_GPIO15INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO15 output configuration.
      GPIO15OUTCFG : CFGB_GPIO15OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO15 interrupt direction.
      GPIO15INTD   : CFGB_GPIO15INTD_Field := NRF_SVD.GPIO.Intlh;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGB_Register use record
      GPIO8INCFG   at 0 range 0 .. 0;
      GPIO8OUTCFG  at 0 range 1 .. 2;
      GPIO8INTD    at 0 range 3 .. 3;
      GPIO9INCFG   at 0 range 4 .. 4;
      GPIO9OUTCFG  at 0 range 5 .. 6;
      GPIO9INTD    at 0 range 7 .. 7;
      GPIO10INCFG  at 0 range 8 .. 8;
      GPIO10OUTCFG at 0 range 9 .. 10;
      GPIO10INTD   at 0 range 11 .. 11;
      GPIO11INCFG  at 0 range 12 .. 12;
      GPIO11OUTCFG at 0 range 13 .. 14;
      GPIO11INTD   at 0 range 15 .. 15;
      GPIO12INCFG  at 0 range 16 .. 16;
      GPIO12OUTCFG at 0 range 17 .. 18;
      GPIO12INTD   at 0 range 19 .. 19;
      GPIO13INCFG  at 0 range 20 .. 20;
      GPIO13OUTCFG at 0 range 21 .. 22;
      GPIO13INTD   at 0 range 23 .. 23;
      GPIO14INCFG  at 0 range 24 .. 24;
      GPIO14OUTCFG at 0 range 25 .. 26;
      GPIO14INTD   at 0 range 27 .. 27;
      GPIO15INCFG  at 0 range 28 .. 28;
      GPIO15OUTCFG at 0 range 29 .. 30;
      GPIO15INTD   at 0 range 31 .. 31;
   end record;

   --  GPIO16 input enable.
   type CFGC_GPIO16INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO16INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO16 output configuration.
   type CFGC_GPIO16OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO16OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO16 interrupt direction.
   type CFGC_GPIO16INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO16INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO17 input enable.
   type CFGC_GPIO17INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO17INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO17 output configuration.
   type CFGC_GPIO17OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO17OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO17 interrupt direction.
   type CFGC_GPIO17INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO17INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO18 input enable.
   type CFGC_GPIO18INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO18INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO18 output configuration.
   type CFGC_GPIO18OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO18OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO18 interrupt direction.
   type CFGC_GPIO18INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO18INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO19 input enable.
   type CFGC_GPIO19INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO19INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO19 output configuration.
   type CFGC_GPIO19OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO19OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO19 interrupt direction.
   type CFGC_GPIO19INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO19INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO20 input enable.
   type CFGC_GPIO20INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO20INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO20 output configuration.
   type CFGC_GPIO20OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO20OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO20 interrupt direction.
   type CFGC_GPIO20INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO20INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO21 input enable.
   type CFGC_GPIO21INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO21INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO21 output configuration.
   type CFGC_GPIO21OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO21OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO21 interrupt direction.
   type CFGC_GPIO21INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO21INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO22 input enable.
   type CFGC_GPIO22INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO22INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO22 output configuration.
   type CFGC_GPIO22OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO22OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO22 interrupt direction.
   type CFGC_GPIO22INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO22INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO23 input enable.
   type CFGC_GPIO23INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGC_GPIO23INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO23 output configuration.
   type CFGC_GPIO23OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGC_GPIO23OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO23 interrupt direction.
   type CFGC_GPIO23INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGC_GPIO23INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register C
   type CFGC_Register is record
      --  GPIO16 input enable.
      GPIO16INCFG  : CFGC_GPIO16INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO16 output configuration.
      GPIO16OUTCFG : CFGC_GPIO16OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO16 interrupt direction.
      GPIO16INTD   : CFGC_GPIO16INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO17 input enable.
      GPIO17INCFG  : CFGC_GPIO17INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO17 output configuration.
      GPIO17OUTCFG : CFGC_GPIO17OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO17 interrupt direction.
      GPIO17INTD   : CFGC_GPIO17INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO18 input enable.
      GPIO18INCFG  : CFGC_GPIO18INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO18 output configuration.
      GPIO18OUTCFG : CFGC_GPIO18OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO18 interrupt direction.
      GPIO18INTD   : CFGC_GPIO18INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO19 input enable.
      GPIO19INCFG  : CFGC_GPIO19INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO19 output configuration.
      GPIO19OUTCFG : CFGC_GPIO19OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO19 interrupt direction.
      GPIO19INTD   : CFGC_GPIO19INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO20 input enable.
      GPIO20INCFG  : CFGC_GPIO20INCFG_Field := NRF_SVD.GPIO.Rdzero;
      --  GPIO20 output configuration.
      GPIO20OUTCFG : CFGC_GPIO20OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO20 interrupt direction.
      GPIO20INTD   : CFGC_GPIO20INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO21 input enable.
      GPIO21INCFG  : CFGC_GPIO21INCFG_Field := NRF_SVD.GPIO.Rdzero;
      --  GPIO21 output configuration.
      GPIO21OUTCFG : CFGC_GPIO21OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO21 interrupt direction.
      GPIO21INTD   : CFGC_GPIO21INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO22 input enable.
      GPIO22INCFG  : CFGC_GPIO22INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO22 output configuration.
      GPIO22OUTCFG : CFGC_GPIO22OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO22 interrupt direction.
      GPIO22INTD   : CFGC_GPIO22INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO23 input enable.
      GPIO23INCFG  : CFGC_GPIO23INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO23 output configuration.
      GPIO23OUTCFG : CFGC_GPIO23OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO23 interrupt direction.
      GPIO23INTD   : CFGC_GPIO23INTD_Field := NRF_SVD.GPIO.Intlh;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGC_Register use record
      GPIO16INCFG  at 0 range 0 .. 0;
      GPIO16OUTCFG at 0 range 1 .. 2;
      GPIO16INTD   at 0 range 3 .. 3;
      GPIO17INCFG  at 0 range 4 .. 4;
      GPIO17OUTCFG at 0 range 5 .. 6;
      GPIO17INTD   at 0 range 7 .. 7;
      GPIO18INCFG  at 0 range 8 .. 8;
      GPIO18OUTCFG at 0 range 9 .. 10;
      GPIO18INTD   at 0 range 11 .. 11;
      GPIO19INCFG  at 0 range 12 .. 12;
      GPIO19OUTCFG at 0 range 13 .. 14;
      GPIO19INTD   at 0 range 15 .. 15;
      GPIO20INCFG  at 0 range 16 .. 16;
      GPIO20OUTCFG at 0 range 17 .. 18;
      GPIO20INTD   at 0 range 19 .. 19;
      GPIO21INCFG  at 0 range 20 .. 20;
      GPIO21OUTCFG at 0 range 21 .. 22;
      GPIO21INTD   at 0 range 23 .. 23;
      GPIO22INCFG  at 0 range 24 .. 24;
      GPIO22OUTCFG at 0 range 25 .. 26;
      GPIO22INTD   at 0 range 27 .. 27;
      GPIO23INCFG  at 0 range 28 .. 28;
      GPIO23OUTCFG at 0 range 29 .. 30;
      GPIO23INTD   at 0 range 31 .. 31;
   end record;

   --  GPIO24 input enable.
   type CFGD_GPIO24INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO24INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO24 output configuration.
   type CFGD_GPIO24OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO24OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO24 interrupt direction.
   type CFGD_GPIO24INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO24INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO25 input enable.
   type CFGD_GPIO25INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO25INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO25 output configuration.
   type CFGD_GPIO25OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO25OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO25 interrupt direction.
   type CFGD_GPIO25INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO25INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO26 input enable.
   type CFGD_GPIO26INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO26INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO26 output configuration.
   type CFGD_GPIO26OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO26OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO26 interrupt direction.
   type CFGD_GPIO26INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO26INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO27 input enable.
   type CFGD_GPIO27INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO27INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO27 output configuration.
   type CFGD_GPIO27OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO27OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO27 interrupt direction.
   type CFGD_GPIO27INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO27INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO28 input enable.
   type CFGD_GPIO28INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO28INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO28 output configuration.
   type CFGD_GPIO28OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO28OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO28 interrupt direction.
   type CFGD_GPIO28INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO28INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO29 input enable.
   type CFGD_GPIO29INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO29INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO29 output configuration.
   type CFGD_GPIO29OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO29OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO29 interrupt direction.
   type CFGD_GPIO29INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO29INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO30 input enable.
   type CFGD_GPIO30INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO30INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO30 output configuration.
   type CFGD_GPIO30OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO30OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO30 interrupt direction.
   type CFGD_GPIO30INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO30INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO31 input enable.
   type CFGD_GPIO31INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGD_GPIO31INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO31 output configuration.
   type CFGD_GPIO31OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGD_GPIO31OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO31 interrupt direction.
   type CFGD_GPIO31INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGD_GPIO31INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register D
   type CFGD_Register is record
      --  GPIO24 input enable.
      GPIO24INCFG  : CFGD_GPIO24INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO24 output configuration.
      GPIO24OUTCFG : CFGD_GPIO24OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO24 interrupt direction.
      GPIO24INTD   : CFGD_GPIO24INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO25 input enable.
      GPIO25INCFG  : CFGD_GPIO25INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO25 output configuration.
      GPIO25OUTCFG : CFGD_GPIO25OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO25 interrupt direction.
      GPIO25INTD   : CFGD_GPIO25INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO26 input enable.
      GPIO26INCFG  : CFGD_GPIO26INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO26 output configuration.
      GPIO26OUTCFG : CFGD_GPIO26OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO26 interrupt direction.
      GPIO26INTD   : CFGD_GPIO26INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO27 input enable.
      GPIO27INCFG  : CFGD_GPIO27INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO27 output configuration.
      GPIO27OUTCFG : CFGD_GPIO27OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO27 interrupt direction.
      GPIO27INTD   : CFGD_GPIO27INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO28 input enable.
      GPIO28INCFG  : CFGD_GPIO28INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO28 output configuration.
      GPIO28OUTCFG : CFGD_GPIO28OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO28 interrupt direction.
      GPIO28INTD   : CFGD_GPIO28INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO29 input enable.
      GPIO29INCFG  : CFGD_GPIO29INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO29 output configuration.
      GPIO29OUTCFG : CFGD_GPIO29OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO29 interrupt direction.
      GPIO29INTD   : CFGD_GPIO29INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO30 input enable.
      GPIO30INCFG  : CFGD_GPIO30INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO30 output configuration.
      GPIO30OUTCFG : CFGD_GPIO30OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO30 interrupt direction.
      GPIO30INTD   : CFGD_GPIO30INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO31 input enable.
      GPIO31INCFG  : CFGD_GPIO31INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO31 output configuration.
      GPIO31OUTCFG : CFGD_GPIO31OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO31 interrupt direction.
      GPIO31INTD   : CFGD_GPIO31INTD_Field := NRF_SVD.GPIO.Intlh;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGD_Register use record
      GPIO24INCFG  at 0 range 0 .. 0;
      GPIO24OUTCFG at 0 range 1 .. 2;
      GPIO24INTD   at 0 range 3 .. 3;
      GPIO25INCFG  at 0 range 4 .. 4;
      GPIO25OUTCFG at 0 range 5 .. 6;
      GPIO25INTD   at 0 range 7 .. 7;
      GPIO26INCFG  at 0 range 8 .. 8;
      GPIO26OUTCFG at 0 range 9 .. 10;
      GPIO26INTD   at 0 range 11 .. 11;
      GPIO27INCFG  at 0 range 12 .. 12;
      GPIO27OUTCFG at 0 range 13 .. 14;
      GPIO27INTD   at 0 range 15 .. 15;
      GPIO28INCFG  at 0 range 16 .. 16;
      GPIO28OUTCFG at 0 range 17 .. 18;
      GPIO28INTD   at 0 range 19 .. 19;
      GPIO29INCFG  at 0 range 20 .. 20;
      GPIO29OUTCFG at 0 range 21 .. 22;
      GPIO29INTD   at 0 range 23 .. 23;
      GPIO30INCFG  at 0 range 24 .. 24;
      GPIO30OUTCFG at 0 range 25 .. 26;
      GPIO30INTD   at 0 range 27 .. 27;
      GPIO31INCFG  at 0 range 28 .. 28;
      GPIO31OUTCFG at 0 range 29 .. 30;
      GPIO31INTD   at 0 range 31 .. 31;
   end record;

   --  GPIO32 input enable.
   type CFGE_GPIO32INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO32INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO32 output configuration.
   type CFGE_GPIO32OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO32OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO32 interrupt direction.
   type CFGE_GPIO32INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO32INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO33 input enable.
   type CFGE_GPIO33INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO33INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO33 output configuration.
   type CFGE_GPIO33OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO33OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO33 interrupt direction.
   type CFGE_GPIO33INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO33INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO34 input enable.
   type CFGE_GPIO34INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO34INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO34 output configuration.
   type CFGE_GPIO34OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO34OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO34 interrupt direction.
   type CFGE_GPIO34INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO34INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO35 input enable.
   type CFGE_GPIO35INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO35INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO35 output configuration.
   type CFGE_GPIO35OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO35OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO35 interrupt direction.
   type CFGE_GPIO35INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO35INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO36 input enable.
   type CFGE_GPIO36INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO36INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO36 output configuration.
   type CFGE_GPIO36OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO36OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO36 interrupt direction.
   type CFGE_GPIO36INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO36INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO37 input enable.
   type CFGE_GPIO37INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO37INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO37 output configuration.
   type CFGE_GPIO37OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO37OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO37 interrupt direction.
   type CFGE_GPIO37INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO37INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO38 input enable.
   type CFGE_GPIO38INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO38INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO38 output configuration.
   type CFGE_GPIO38OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO38OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO38 interrupt direction.
   type CFGE_GPIO38INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO38INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO39 input enable.
   type CFGE_GPIO39INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGE_GPIO39INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO39 output configuration.
   type CFGE_GPIO39OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGE_GPIO39OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO39 interrupt direction.
   type CFGE_GPIO39INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGE_GPIO39INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register E
   type CFGE_Register is record
      --  GPIO32 input enable.
      GPIO32INCFG  : CFGE_GPIO32INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO32 output configuration.
      GPIO32OUTCFG : CFGE_GPIO32OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO32 interrupt direction.
      GPIO32INTD   : CFGE_GPIO32INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO33 input enable.
      GPIO33INCFG  : CFGE_GPIO33INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO33 output configuration.
      GPIO33OUTCFG : CFGE_GPIO33OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO33 interrupt direction.
      GPIO33INTD   : CFGE_GPIO33INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO34 input enable.
      GPIO34INCFG  : CFGE_GPIO34INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO34 output configuration.
      GPIO34OUTCFG : CFGE_GPIO34OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO34 interrupt direction.
      GPIO34INTD   : CFGE_GPIO34INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO35 input enable.
      GPIO35INCFG  : CFGE_GPIO35INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO35 output configuration.
      GPIO35OUTCFG : CFGE_GPIO35OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO35 interrupt direction.
      GPIO35INTD   : CFGE_GPIO35INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO36 input enable.
      GPIO36INCFG  : CFGE_GPIO36INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO36 output configuration.
      GPIO36OUTCFG : CFGE_GPIO36OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO36 interrupt direction.
      GPIO36INTD   : CFGE_GPIO36INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO37 input enable.
      GPIO37INCFG  : CFGE_GPIO37INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO37 output configuration.
      GPIO37OUTCFG : CFGE_GPIO37OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO37 interrupt direction.
      GPIO37INTD   : CFGE_GPIO37INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO38 input enable.
      GPIO38INCFG  : CFGE_GPIO38INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO38 output configuration.
      GPIO38OUTCFG : CFGE_GPIO38OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO38 interrupt direction.
      GPIO38INTD   : CFGE_GPIO38INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO39 input enable.
      GPIO39INCFG  : CFGE_GPIO39INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO39 output configuration.
      GPIO39OUTCFG : CFGE_GPIO39OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO39 interrupt direction.
      GPIO39INTD   : CFGE_GPIO39INTD_Field := NRF_SVD.GPIO.Intlh;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGE_Register use record
      GPIO32INCFG  at 0 range 0 .. 0;
      GPIO32OUTCFG at 0 range 1 .. 2;
      GPIO32INTD   at 0 range 3 .. 3;
      GPIO33INCFG  at 0 range 4 .. 4;
      GPIO33OUTCFG at 0 range 5 .. 6;
      GPIO33INTD   at 0 range 7 .. 7;
      GPIO34INCFG  at 0 range 8 .. 8;
      GPIO34OUTCFG at 0 range 9 .. 10;
      GPIO34INTD   at 0 range 11 .. 11;
      GPIO35INCFG  at 0 range 12 .. 12;
      GPIO35OUTCFG at 0 range 13 .. 14;
      GPIO35INTD   at 0 range 15 .. 15;
      GPIO36INCFG  at 0 range 16 .. 16;
      GPIO36OUTCFG at 0 range 17 .. 18;
      GPIO36INTD   at 0 range 19 .. 19;
      GPIO37INCFG  at 0 range 20 .. 20;
      GPIO37OUTCFG at 0 range 21 .. 22;
      GPIO37INTD   at 0 range 23 .. 23;
      GPIO38INCFG  at 0 range 24 .. 24;
      GPIO38OUTCFG at 0 range 25 .. 26;
      GPIO38INTD   at 0 range 27 .. 27;
      GPIO39INCFG  at 0 range 28 .. 28;
      GPIO39OUTCFG at 0 range 29 .. 30;
      GPIO39INTD   at 0 range 31 .. 31;
   end record;

   --  GPIO40 input enable.
   type CFGF_GPIO40INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO40INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO40 output configuration.
   type CFGF_GPIO40OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO40OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO40 interrupt direction.
   type CFGF_GPIO40INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO40INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO41 input enable.
   type CFGF_GPIO41INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO41INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO41 output configuration.
   type CFGF_GPIO41OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO41OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO41 interrupt direction.
   type CFGF_GPIO41INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO41INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO42 input enable.
   type CFGF_GPIO42INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO42INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO42 output configuration.
   type CFGF_GPIO42OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO42OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO42 interrupt direction.
   type CFGF_GPIO42INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO42INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO43 input enable.
   type CFGF_GPIO43INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO43INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO43 output configuration.
   type CFGF_GPIO43OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO43OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO43 interrupt direction.
   type CFGF_GPIO43INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO43INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO44 input enable.
   type CFGF_GPIO44INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO44INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO44 output configuration.
   type CFGF_GPIO44OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO44OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO44 interrupt direction.
   type CFGF_GPIO44INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO44INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO45 input enable.
   type CFGF_GPIO45INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO45INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO45 output configuration.
   type CFGF_GPIO45OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO45OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO45 interrupt direction.
   type CFGF_GPIO45INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO45INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO46 input enable.
   type CFGF_GPIO46INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO46INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO46 output configuration.
   type CFGF_GPIO46OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO46OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO46 interrupt direction.
   type CFGF_GPIO46INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO46INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO47 input enable.
   type CFGF_GPIO47INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGF_GPIO47INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO47 output configuration.
   type CFGF_GPIO47OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGF_GPIO47OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO47 interrupt direction.
   type CFGF_GPIO47INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGF_GPIO47INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register F
   type CFGF_Register is record
      --  GPIO40 input enable.
      GPIO40INCFG  : CFGF_GPIO40INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO40 output configuration.
      GPIO40OUTCFG : CFGF_GPIO40OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO40 interrupt direction.
      GPIO40INTD   : CFGF_GPIO40INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO41 input enable.
      GPIO41INCFG  : CFGF_GPIO41INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO41 output configuration.
      GPIO41OUTCFG : CFGF_GPIO41OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO41 interrupt direction.
      GPIO41INTD   : CFGF_GPIO41INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO42 input enable.
      GPIO42INCFG  : CFGF_GPIO42INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO42 output configuration.
      GPIO42OUTCFG : CFGF_GPIO42OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO42 interrupt direction.
      GPIO42INTD   : CFGF_GPIO42INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO43 input enable.
      GPIO43INCFG  : CFGF_GPIO43INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO43 output configuration.
      GPIO43OUTCFG : CFGF_GPIO43OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO43 interrupt direction.
      GPIO43INTD   : CFGF_GPIO43INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO44 input enable.
      GPIO44INCFG  : CFGF_GPIO44INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO44 output configuration.
      GPIO44OUTCFG : CFGF_GPIO44OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO44 interrupt direction.
      GPIO44INTD   : CFGF_GPIO44INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO45 input enable.
      GPIO45INCFG  : CFGF_GPIO45INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO45 output configuration.
      GPIO45OUTCFG : CFGF_GPIO45OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO45 interrupt direction.
      GPIO45INTD   : CFGF_GPIO45INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO46 input enable.
      GPIO46INCFG  : CFGF_GPIO46INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO46 output configuration.
      GPIO46OUTCFG : CFGF_GPIO46OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO46 interrupt direction.
      GPIO46INTD   : CFGF_GPIO46INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO47 input enable.
      GPIO47INCFG  : CFGF_GPIO47INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO47 output configuration.
      GPIO47OUTCFG : CFGF_GPIO47OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO47 interrupt direction.
      GPIO47INTD   : CFGF_GPIO47INTD_Field := NRF_SVD.GPIO.Intlh;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGF_Register use record
      GPIO40INCFG  at 0 range 0 .. 0;
      GPIO40OUTCFG at 0 range 1 .. 2;
      GPIO40INTD   at 0 range 3 .. 3;
      GPIO41INCFG  at 0 range 4 .. 4;
      GPIO41OUTCFG at 0 range 5 .. 6;
      GPIO41INTD   at 0 range 7 .. 7;
      GPIO42INCFG  at 0 range 8 .. 8;
      GPIO42OUTCFG at 0 range 9 .. 10;
      GPIO42INTD   at 0 range 11 .. 11;
      GPIO43INCFG  at 0 range 12 .. 12;
      GPIO43OUTCFG at 0 range 13 .. 14;
      GPIO43INTD   at 0 range 15 .. 15;
      GPIO44INCFG  at 0 range 16 .. 16;
      GPIO44OUTCFG at 0 range 17 .. 18;
      GPIO44INTD   at 0 range 19 .. 19;
      GPIO45INCFG  at 0 range 20 .. 20;
      GPIO45OUTCFG at 0 range 21 .. 22;
      GPIO45INTD   at 0 range 23 .. 23;
      GPIO46INCFG  at 0 range 24 .. 24;
      GPIO46OUTCFG at 0 range 25 .. 26;
      GPIO46INTD   at 0 range 27 .. 27;
      GPIO47INCFG  at 0 range 28 .. 28;
      GPIO47OUTCFG at 0 range 29 .. 30;
      GPIO47INTD   at 0 range 31 .. 31;
   end record;

   --  GPIO48 input enable.
   type CFGG_GPIO48INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGG_GPIO48INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO48 output configuration.
   type CFGG_GPIO48OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGG_GPIO48OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO48 interrupt direction.
   type CFGG_GPIO48INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGG_GPIO48INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO49 input enable.
   type CFGG_GPIO49INCFG_Field is
     (
      --  Read the GPIO pin data value.
      Read,
      --  Readback will always be zero value.
      Rdzero)
     with Size => 1;
   for CFGG_GPIO49INCFG_Field use
     (Read => 0,
      Rdzero => 1);

   --  GPIO49 output configuration.
   type CFGG_GPIO49OUTCFG_Field is
     (
      --  Output disabled value.
      Dis,
      --  Output is push-pull value.
      Pushpull,
      --  Output is open drain value.
      Od,
      --  Output is tri-state value.
      Ts)
     with Size => 2;
   for CFGG_GPIO49OUTCFG_Field use
     (Dis => 0,
      Pushpull => 1,
      Od => 2,
      Ts => 3);

   --  GPIO49 interrupt direction.
   type CFGG_GPIO49INTD_Field is
     (
      --  Interrupt on low to high GPIO transition value.
      Intlh,
      --  Interrupt on high to low GPIO transition value.
      Inthl)
     with Size => 1;
   for CFGG_GPIO49INTD_Field use
     (Intlh => 0,
      Inthl => 1);

   --  GPIO Configuration Register G
   type CFGG_Register is record
      --  GPIO48 input enable.
      GPIO48INCFG   : CFGG_GPIO48INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO48 output configuration.
      GPIO48OUTCFG  : CFGG_GPIO48OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO48 interrupt direction.
      GPIO48INTD    : CFGG_GPIO48INTD_Field := NRF_SVD.GPIO.Intlh;
      --  GPIO49 input enable.
      GPIO49INCFG   : CFGG_GPIO49INCFG_Field := NRF_SVD.GPIO.Read;
      --  GPIO49 output configuration.
      GPIO49OUTCFG  : CFGG_GPIO49OUTCFG_Field := NRF_SVD.GPIO.Dis;
      --  GPIO49 interrupt direction.
      GPIO49INTD    : CFGG_GPIO49INTD_Field := NRF_SVD.GPIO.Intlh;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGG_Register use record
      GPIO48INCFG   at 0 range 0 .. 0;
      GPIO48OUTCFG  at 0 range 1 .. 2;
      GPIO48INTD    at 0 range 3 .. 3;
      GPIO49INCFG   at 0 range 4 .. 4;
      GPIO49OUTCFG  at 0 range 5 .. 6;
      GPIO49INTD    at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RDB_RDB_Field is HAL.UInt18;

   --  GPIO Input Register B
   type RDB_Register is record
      --  GPIO49-32 read data.
      RDB            : RDB_RDB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDB_Register use record
      RDB            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype WTB_WTB_Field is HAL.UInt18;

   --  GPIO Output Register B
   type WTB_Register is record
      --  GPIO49-32 write data.
      WTB            : WTB_WTB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WTB_Register use record
      WTB            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype WTSB_WTSB_Field is HAL.UInt18;

   --  GPIO Output Register B Set
   type WTSB_Register is record
      --  Set the GPIO49-32 write data.
      WTSB           : WTSB_WTSB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WTSB_Register use record
      WTSB           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype WTCB_WTCB_Field is HAL.UInt18;

   --  GPIO Output Register B Clear
   type WTCB_Register is record
      --  Clear the GPIO49-32 write data.
      WTCB           : WTCB_WTCB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WTCB_Register use record
      WTCB           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ENB_ENB_Field is HAL.UInt18;

   --  GPIO Enable Register B
   type ENB_Register is record
      --  GPIO49-32 output enables
      ENB            : ENB_ENB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENB_Register use record
      ENB            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ENSB_ENSB_Field is HAL.UInt18;

   --  GPIO Enable Register B Set
   type ENSB_Register is record
      --  Set the GPIO49-32 output enables
      ENSB           : ENSB_ENSB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENSB_Register use record
      ENSB           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ENCB_ENCB_Field is HAL.UInt18;

   --  GPIO Enable Register B Clear
   type ENCB_Register is record
      --  Clear the GPIO49-32 output enables
      ENCB           : ENCB_ENCB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENCB_Register use record
      ENCB           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype STMRCAP_STSEL0_Field is HAL.UInt6;

   --  STIMER Capture 0 Polarity.
   type STMRCAP_STPOL0_Field is
     (
      --  Capture on low to high GPIO transition value.
      Caplh,
      --  Capture on high to low GPIO transition value.
      Caphl)
     with Size => 1;
   for STMRCAP_STPOL0_Field use
     (Caplh => 0,
      Caphl => 1);

   subtype STMRCAP_STSEL1_Field is HAL.UInt6;

   --  STIMER Capture 1 Polarity.
   type STMRCAP_STPOL1_Field is
     (
      --  Capture on low to high GPIO transition value.
      Caplh,
      --  Capture on high to low GPIO transition value.
      Caphl)
     with Size => 1;
   for STMRCAP_STPOL1_Field use
     (Caplh => 0,
      Caphl => 1);

   subtype STMRCAP_STSEL2_Field is HAL.UInt6;

   --  STIMER Capture 2 Polarity.
   type STMRCAP_STPOL2_Field is
     (
      --  Capture on low to high GPIO transition value.
      Caplh,
      --  Capture on high to low GPIO transition value.
      Caphl)
     with Size => 1;
   for STMRCAP_STPOL2_Field use
     (Caplh => 0,
      Caphl => 1);

   subtype STMRCAP_STSEL3_Field is HAL.UInt6;

   --  STIMER Capture 3 Polarity.
   type STMRCAP_STPOL3_Field is
     (
      --  Capture on low to high GPIO transition value.
      Caplh,
      --  Capture on high to low GPIO transition value.
      Caphl)
     with Size => 1;
   for STMRCAP_STPOL3_Field use
     (Caplh => 0,
      Caphl => 1);

   --  STIMER Capture Control
   type STMRCAP_Register is record
      --  STIMER Capture 0 Select.
      STSEL0         : STMRCAP_STSEL0_Field := 16#3F#;
      --  STIMER Capture 0 Polarity.
      STPOL0         : STMRCAP_STPOL0_Field := NRF_SVD.GPIO.Caplh;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  STIMER Capture 1 Select.
      STSEL1         : STMRCAP_STSEL1_Field := 16#3F#;
      --  STIMER Capture 1 Polarity.
      STPOL1         : STMRCAP_STPOL1_Field := NRF_SVD.GPIO.Caplh;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  STIMER Capture 2 Select.
      STSEL2         : STMRCAP_STSEL2_Field := 16#3F#;
      --  STIMER Capture 2 Polarity.
      STPOL2         : STMRCAP_STPOL2_Field := NRF_SVD.GPIO.Caplh;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  STIMER Capture 3 Select.
      STSEL3         : STMRCAP_STSEL3_Field := 16#3F#;
      --  STIMER Capture 3 Polarity.
      STPOL3         : STMRCAP_STPOL3_Field := NRF_SVD.GPIO.Caplh;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STMRCAP_Register use record
      STSEL0         at 0 range 0 .. 5;
      STPOL0         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      STSEL1         at 0 range 8 .. 13;
      STPOL1         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      STSEL2         at 0 range 16 .. 21;
      STPOL2         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      STSEL3         at 0 range 24 .. 29;
      STPOL3         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype IOM0IRQ_IOM0IRQ_Field is HAL.UInt6;

   --  IOM0 Flow Control IRQ Select
   type IOM0IRQ_Register is record
      --  IOMSTR0 IRQ pad select.
      IOM0IRQ       : IOM0IRQ_IOM0IRQ_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOM0IRQ_Register use record
      IOM0IRQ       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IOM1IRQ_IOM1IRQ_Field is HAL.UInt6;

   --  IOM1 Flow Control IRQ Select
   type IOM1IRQ_Register is record
      --  IOMSTR1 IRQ pad select.
      IOM1IRQ       : IOM1IRQ_IOM1IRQ_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOM1IRQ_Register use record
      IOM1IRQ       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IOM2IRQ_IOM2IRQ_Field is HAL.UInt6;

   --  IOM2 Flow Control IRQ Select
   type IOM2IRQ_Register is record
      --  IOMSTR2 IRQ pad select.
      IOM2IRQ       : IOM2IRQ_IOM2IRQ_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOM2IRQ_Register use record
      IOM2IRQ       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IOM3IRQ_IOM3IRQ_Field is HAL.UInt6;

   --  IOM3 Flow Control IRQ Select
   type IOM3IRQ_Register is record
      --  IOMSTR3 IRQ pad select.
      IOM3IRQ       : IOM3IRQ_IOM3IRQ_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOM3IRQ_Register use record
      IOM3IRQ       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IOM4IRQ_IOM4IRQ_Field is HAL.UInt6;

   --  IOM4 Flow Control IRQ Select
   type IOM4IRQ_Register is record
      --  IOMSTR4 IRQ pad select.
      IOM4IRQ       : IOM4IRQ_IOM4IRQ_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOM4IRQ_Register use record
      IOM4IRQ       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IOM5IRQ_IOM5IRQ_Field is HAL.UInt6;

   --  IOM5 Flow Control IRQ Select
   type IOM5IRQ_Register is record
      --  IOMSTR5 IRQ pad select.
      IOM5IRQ       : IOM5IRQ_IOM5IRQ_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOM5IRQ_Register use record
      IOM5IRQ       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  IOM to IOS loopback control.
   type LOOPBACK_LOOPBACK_Field is
     (
      --  Loop IOM0 to IOS value.
      Loop0,
      --  Loop IOM1 to IOS value.
      Loop1,
      --  Loop IOM2 to IOS value.
      Loop2,
      --  Loop IOM3 to IOS value.
      Loop3,
      --  Loop IOM4 to IOS value.
      Loop4,
      --  Loop IOM5 to IOS value.
      Loop5,
      --  No loopback connections value.
      Loopnone)
     with Size => 3;
   for LOOPBACK_LOOPBACK_Field use
     (Loop0 => 0,
      Loop1 => 1,
      Loop2 => 2,
      Loop3 => 3,
      Loop4 => 4,
      Loop5 => 5,
      Loopnone => 6);

   --  IOM to IOS Loopback Control
   type LOOPBACK_Register is record
      --  IOM to IOS loopback control.
      LOOPBACK      : LOOPBACK_LOOPBACK_Field := NRF_SVD.GPIO.Loop0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOOPBACK_Register use record
      LOOPBACK      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype GPIOOBS_OBS_DATA_Field is HAL.UInt16;

   --  GPIO Observation Mode Sample register
   type GPIOOBS_Register is record
      --  Sample of the data output on the GPIO observation port. May have
      --  async sampling issues, as the data is not synronized to the read
      --  operation. Intended for debug purposes only
      OBS_DATA       : GPIOOBS_OBS_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOOBS_Register use record
      OBS_DATA       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Pad 0 slew rate selection.
   type ALTPADCFGA_PAD0_SR_Field is
     (
      --  Reset value for the field
      Altpadcfga_Pad0_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGA_PAD0_SR_Field use
     (Altpadcfga_Pad0_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 1 slew rate selection.
   type ALTPADCFGA_PAD1_SR_Field is
     (
      --  Reset value for the field
      Altpadcfga_Pad1_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGA_PAD1_SR_Field use
     (Altpadcfga_Pad1_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 2 slew rate selection.
   type ALTPADCFGA_PAD2_SR_Field is
     (
      --  Reset value for the field
      Altpadcfga_Pad2_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGA_PAD2_SR_Field use
     (Altpadcfga_Pad2_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 3 slew rate selection.
   type ALTPADCFGA_PAD3_SR_Field is
     (
      --  Reset value for the field
      Altpadcfga_Pad3_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGA_PAD3_SR_Field use
     (Altpadcfga_Pad3_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg0 (Pads 3,2,1,0)
   type ALTPADCFGA_Register is record
      --  Pad 0 high order drive strength selection. Used in conjunction with
      --  PAD0STRNG field to set the pad drive strength.
      PAD0_DS1       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 0 slew rate selection.
      PAD0_SR        : ALTPADCFGA_PAD0_SR_Field :=
                        Altpadcfga_Pad0_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 1 high order drive strength selection. Used in conjunction with
      --  PAD1STRNG field to set the pad drive strength.
      PAD1_DS1       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 1 slew rate selection.
      PAD1_SR        : ALTPADCFGA_PAD1_SR_Field :=
                        Altpadcfga_Pad1_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 2 high order drive strength selection. Used in conjunction with
      --  PAD2STRNG field to set the pad drive strength.
      PAD2_DS1       : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 2 slew rate selection.
      PAD2_SR        : ALTPADCFGA_PAD2_SR_Field :=
                        Altpadcfga_Pad2_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 3 high order drive strength selection. Used in conjunction with
      --  PAD3STRNG field to set the pad drive strength.
      PAD3_DS1       : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 3 slew rate selection.
      PAD3_SR        : ALTPADCFGA_PAD3_SR_Field :=
                        Altpadcfga_Pad3_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGA_Register use record
      PAD0_DS1       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD0_SR        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD1_DS1       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD1_SR        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD2_DS1       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD2_SR        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD3_DS1       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD3_SR        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 4 slew rate selection.
   type ALTPADCFGB_PAD4_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgb_Pad4_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGB_PAD4_SR_Field use
     (Altpadcfgb_Pad4_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 5 slew rate selection.
   type ALTPADCFGB_PAD5_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgb_Pad5_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGB_PAD5_SR_Field use
     (Altpadcfgb_Pad5_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 6 slew rate selection.
   type ALTPADCFGB_PAD6_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgb_Pad6_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGB_PAD6_SR_Field use
     (Altpadcfgb_Pad6_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 7 slew rate selection.
   type ALTPADCFGB_PAD7_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgb_Pad7_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGB_PAD7_SR_Field use
     (Altpadcfgb_Pad7_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg1 (Pads 7,6,5,4)
   type ALTPADCFGB_Register is record
      --  Pad 4 high order drive strength selection. Used in conjunction with
      --  PAD4STRNG field to set the pad drive strength.
      PAD4_DS1       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 4 slew rate selection.
      PAD4_SR        : ALTPADCFGB_PAD4_SR_Field :=
                        Altpadcfgb_Pad4_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 5 high order drive strength selection. Used in conjunction with
      --  PAD5STRNG field to set the pad drive strength.
      PAD5_DS1       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 5 slew rate selection.
      PAD5_SR        : ALTPADCFGB_PAD5_SR_Field :=
                        Altpadcfgb_Pad5_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 6 high order drive strength selection. Used in conjunction with
      --  PAD6STRNG field to set the pad drive strength.
      PAD6_DS1       : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 6 slew rate selection.
      PAD6_SR        : ALTPADCFGB_PAD6_SR_Field :=
                        Altpadcfgb_Pad6_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 7 high order drive strength selection. Used in conjunction with
      --  PAD7STRNG field to set the pad drive strength.
      PAD7_DS1       : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 7 slew rate selection.
      PAD7_SR        : ALTPADCFGB_PAD7_SR_Field :=
                        Altpadcfgb_Pad7_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGB_Register use record
      PAD4_DS1       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD4_SR        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD5_DS1       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD5_SR        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD6_DS1       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD6_SR        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD7_DS1       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD7_SR        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 8 slew rate selection.
   type ALTPADCFGC_PAD8_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgc_Pad8_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGC_PAD8_SR_Field use
     (Altpadcfgc_Pad8_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 9 slew rate selection.
   type ALTPADCFGC_PAD9_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgc_Pad9_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGC_PAD9_SR_Field use
     (Altpadcfgc_Pad9_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 10 slew rate selection.
   type ALTPADCFGC_PAD10_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgc_Pad10_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGC_PAD10_SR_Field use
     (Altpadcfgc_Pad10_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 11 slew rate selection.
   type ALTPADCFGC_PAD11_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgc_Pad11_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGC_PAD11_SR_Field use
     (Altpadcfgc_Pad11_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg2 (Pads 11,10,9,8)
   type ALTPADCFGC_Register is record
      --  Pad 8 high order drive strength selection. Used in conjunction with
      --  PAD8STRNG field to set the pad drive strength.
      PAD8_DS1       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 8 slew rate selection.
      PAD8_SR        : ALTPADCFGC_PAD8_SR_Field :=
                        Altpadcfgc_Pad8_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 9 high order drive strength selection. Used in conjunction with
      --  PAD9STRNG field to set the pad drive strength.
      PAD9_DS1       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 9 slew rate selection.
      PAD9_SR        : ALTPADCFGC_PAD9_SR_Field :=
                        Altpadcfgc_Pad9_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 10 high order drive strength selection. Used in conjunction with
      --  PAD10STRNG field to set the pad drive strength.
      PAD10_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 10 slew rate selection.
      PAD10_SR       : ALTPADCFGC_PAD10_SR_Field :=
                        Altpadcfgc_Pad10_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 11 high order drive strength selection. Used in conjunction with
      --  PAD11STRNG field to set the pad drive strength.
      PAD11_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 11 slew rate selection.
      PAD11_SR       : ALTPADCFGC_PAD11_SR_Field :=
                        Altpadcfgc_Pad11_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGC_Register use record
      PAD8_DS1       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD8_SR        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD9_DS1       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD9_SR        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD10_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD10_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD11_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD11_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 12 slew rate selection.
   type ALTPADCFGD_PAD12_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgd_Pad12_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGD_PAD12_SR_Field use
     (Altpadcfgd_Pad12_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 13 slew rate selection.
   type ALTPADCFGD_PAD13_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgd_Pad13_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGD_PAD13_SR_Field use
     (Altpadcfgd_Pad13_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 14 slew rate selection.
   type ALTPADCFGD_PAD14_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgd_Pad14_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGD_PAD14_SR_Field use
     (Altpadcfgd_Pad14_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 15 slew rate selection.
   type ALTPADCFGD_PAD15_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgd_Pad15_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGD_PAD15_SR_Field use
     (Altpadcfgd_Pad15_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg3 (Pads 15,14,13,12)
   type ALTPADCFGD_Register is record
      --  Pad 12 high order drive strength selection. Used in conjunction with
      --  PAD12STRNG field to set the pad drive strength.
      PAD12_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 12 slew rate selection.
      PAD12_SR       : ALTPADCFGD_PAD12_SR_Field :=
                        Altpadcfgd_Pad12_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 13 high order drive strength selection. Used in conjunction with
      --  PAD13STRNG field to set the pad drive strength.
      PAD13_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 13 slew rate selection.
      PAD13_SR       : ALTPADCFGD_PAD13_SR_Field :=
                        Altpadcfgd_Pad13_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 14 high order drive strength selection. Used in conjunction with
      --  PAD14STRNG field to set the pad drive strength.
      PAD14_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 14 slew rate selection.
      PAD14_SR       : ALTPADCFGD_PAD14_SR_Field :=
                        Altpadcfgd_Pad14_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 15 high order drive strength selection. Used in conjunction with
      --  PAD15STRNG field to set the pad drive strength.
      PAD15_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 15 slew rate selection.
      PAD15_SR       : ALTPADCFGD_PAD15_SR_Field :=
                        Altpadcfgd_Pad15_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGD_Register use record
      PAD12_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD12_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD13_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD13_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD14_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD14_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD15_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD15_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 16 slew rate selection.
   type ALTPADCFGE_PAD16_SR_Field is
     (
      --  Reset value for the field
      Altpadcfge_Pad16_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGE_PAD16_SR_Field use
     (Altpadcfge_Pad16_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 17 slew rate selection.
   type ALTPADCFGE_PAD17_SR_Field is
     (
      --  Reset value for the field
      Altpadcfge_Pad17_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGE_PAD17_SR_Field use
     (Altpadcfge_Pad17_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 18 slew rate selection.
   type ALTPADCFGE_PAD18_SR_Field is
     (
      --  Reset value for the field
      Altpadcfge_Pad18_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGE_PAD18_SR_Field use
     (Altpadcfge_Pad18_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 19 slew rate selection.
   type ALTPADCFGE_PAD19_SR_Field is
     (
      --  Reset value for the field
      Altpadcfge_Pad19_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGE_PAD19_SR_Field use
     (Altpadcfge_Pad19_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg4 (Pads 19,18,17,16)
   type ALTPADCFGE_Register is record
      --  Pad 16 high order drive strength selection. Used in conjunction with
      --  PAD16STRNG field to set the pad drive strength.
      PAD16_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 16 slew rate selection.
      PAD16_SR       : ALTPADCFGE_PAD16_SR_Field :=
                        Altpadcfge_Pad16_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 17 high order drive strength selection. Used in conjunction with
      --  PAD17STRNG field to set the pad drive strength.
      PAD17_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 17 slew rate selection.
      PAD17_SR       : ALTPADCFGE_PAD17_SR_Field :=
                        Altpadcfge_Pad17_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 18 high order drive strength selection. Used in conjunction with
      --  PAD18STRNG field to set the pad drive strength.
      PAD18_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 18 slew rate selection.
      PAD18_SR       : ALTPADCFGE_PAD18_SR_Field :=
                        Altpadcfge_Pad18_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 19 high order drive strength selection. Used in conjunction with
      --  PAD19STRNG field to set the pad drive strength.
      PAD19_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 19 slew rate selection.
      PAD19_SR       : ALTPADCFGE_PAD19_SR_Field :=
                        Altpadcfge_Pad19_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGE_Register use record
      PAD16_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD16_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD17_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD17_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD18_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD18_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD19_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD19_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 20 slew rate selection.
   type ALTPADCFGF_PAD20_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgf_Pad20_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGF_PAD20_SR_Field use
     (Altpadcfgf_Pad20_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 21 slew rate selection.
   type ALTPADCFGF_PAD21_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgf_Pad21_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGF_PAD21_SR_Field use
     (Altpadcfgf_Pad21_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 22 slew rate selection.
   type ALTPADCFGF_PAD22_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgf_Pad22_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGF_PAD22_SR_Field use
     (Altpadcfgf_Pad22_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 23 slew rate selection.
   type ALTPADCFGF_PAD23_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgf_Pad23_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGF_PAD23_SR_Field use
     (Altpadcfgf_Pad23_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg5 (Pads 23,22,21,20)
   type ALTPADCFGF_Register is record
      --  Pad 20 high order drive strength selection. Used in conjunction with
      --  PAD20STRNG field to set the pad drive strength.
      PAD20_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 20 slew rate selection.
      PAD20_SR       : ALTPADCFGF_PAD20_SR_Field :=
                        Altpadcfgf_Pad20_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 21 high order drive strength selection. Used in conjunction with
      --  PAD21STRNG field to set the pad drive strength.
      PAD21_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 21 slew rate selection.
      PAD21_SR       : ALTPADCFGF_PAD21_SR_Field :=
                        Altpadcfgf_Pad21_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 22 high order drive strength selection. Used in conjunction with
      --  PAD22STRNG field to set the pad drive strength.
      PAD22_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 22 slew rate selection.
      PAD22_SR       : ALTPADCFGF_PAD22_SR_Field :=
                        Altpadcfgf_Pad22_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 23 high order drive strength selection. Used in conjunction with
      --  PAD23STRNG field to set the pad drive strength.
      PAD23_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 23 slew rate selection.
      PAD23_SR       : ALTPADCFGF_PAD23_SR_Field :=
                        Altpadcfgf_Pad23_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGF_Register use record
      PAD20_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD20_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD21_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD21_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD22_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD22_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD23_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD23_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 24 slew rate selection.
   type ALTPADCFGG_PAD24_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgg_Pad24_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGG_PAD24_SR_Field use
     (Altpadcfgg_Pad24_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 25 slew rate selection.
   type ALTPADCFGG_PAD25_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgg_Pad25_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGG_PAD25_SR_Field use
     (Altpadcfgg_Pad25_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 26 slew rate selection.
   type ALTPADCFGG_PAD26_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgg_Pad26_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGG_PAD26_SR_Field use
     (Altpadcfgg_Pad26_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 27 slew rate selection.
   type ALTPADCFGG_PAD27_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgg_Pad27_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGG_PAD27_SR_Field use
     (Altpadcfgg_Pad27_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg6 (Pads 27,26,25,24)
   type ALTPADCFGG_Register is record
      --  Pad 24 high order drive strength selection. Used in conjunction with
      --  PAD24STRNG field to set the pad drive strength.
      PAD24_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 24 slew rate selection.
      PAD24_SR       : ALTPADCFGG_PAD24_SR_Field :=
                        Altpadcfgg_Pad24_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 25 high order drive strength selection. Used in conjunction with
      --  PAD25STRNG field to set the pad drive strength.
      PAD25_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 25 slew rate selection.
      PAD25_SR       : ALTPADCFGG_PAD25_SR_Field :=
                        Altpadcfgg_Pad25_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 26 high order drive strength selection. Used in conjunction with
      --  PAD26STRNG field to set the pad drive strength.
      PAD26_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 26 slew rate selection.
      PAD26_SR       : ALTPADCFGG_PAD26_SR_Field :=
                        Altpadcfgg_Pad26_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 27 high order drive strength selection. Used in conjunction with
      --  PAD27STRNG field to set the pad drive strength.
      PAD27_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 27 slew rate selection.
      PAD27_SR       : ALTPADCFGG_PAD27_SR_Field :=
                        Altpadcfgg_Pad27_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGG_Register use record
      PAD24_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD24_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD25_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD25_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD26_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD26_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD27_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD27_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 28 slew rate selection.
   type ALTPADCFGH_PAD28_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgh_Pad28_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGH_PAD28_SR_Field use
     (Altpadcfgh_Pad28_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 29 slew rate selection.
   type ALTPADCFGH_PAD29_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgh_Pad29_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGH_PAD29_SR_Field use
     (Altpadcfgh_Pad29_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 30 slew rate selection.
   type ALTPADCFGH_PAD30_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgh_Pad30_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGH_PAD30_SR_Field use
     (Altpadcfgh_Pad30_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 31 slew rate selection.
   type ALTPADCFGH_PAD31_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgh_Pad31_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGH_PAD31_SR_Field use
     (Altpadcfgh_Pad31_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg7 (Pads 31,30,29,28)
   type ALTPADCFGH_Register is record
      --  Pad 28 high order drive strength selection. Used in conjunction with
      --  PAD28STRNG field to set the pad drive strength.
      PAD28_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 28 slew rate selection.
      PAD28_SR       : ALTPADCFGH_PAD28_SR_Field :=
                        Altpadcfgh_Pad28_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 29 high order drive strength selection. Used in conjunction with
      --  PAD29STRNG field to set the pad drive strength.
      PAD29_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 29 slew rate selection.
      PAD29_SR       : ALTPADCFGH_PAD29_SR_Field :=
                        Altpadcfgh_Pad29_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 30 high order drive strength selection. Used in conjunction with
      --  PAD30STRNG field to set the pad drive strength.
      PAD30_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 30 slew rate selection.
      PAD30_SR       : ALTPADCFGH_PAD30_SR_Field :=
                        Altpadcfgh_Pad30_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 31 high order drive strength selection. Used in conjunction with
      --  PAD31STRNG field to set the pad drive strength.
      PAD31_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 31 slew rate selection.
      PAD31_SR       : ALTPADCFGH_PAD31_SR_Field :=
                        Altpadcfgh_Pad31_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGH_Register use record
      PAD28_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD28_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD29_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD29_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD30_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD30_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD31_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD31_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 32 slew rate selection.
   type ALTPADCFGI_PAD32_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgi_Pad32_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGI_PAD32_SR_Field use
     (Altpadcfgi_Pad32_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 33 slew rate selection.
   type ALTPADCFGI_PAD33_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgi_Pad33_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGI_PAD33_SR_Field use
     (Altpadcfgi_Pad33_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 34 slew rate selection.
   type ALTPADCFGI_PAD34_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgi_Pad34_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGI_PAD34_SR_Field use
     (Altpadcfgi_Pad34_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 35 slew rate selection.
   type ALTPADCFGI_PAD35_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgi_Pad35_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGI_PAD35_SR_Field use
     (Altpadcfgi_Pad35_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg8 (Pads 35,34,33,32)
   type ALTPADCFGI_Register is record
      --  Pad 32 high order drive strength selection. Used in conjunction with
      --  PAD32STRNG field to set the pad drive strength.
      PAD32_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 32 slew rate selection.
      PAD32_SR       : ALTPADCFGI_PAD32_SR_Field :=
                        Altpadcfgi_Pad32_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 33 high order drive strength selection. Used in conjunction with
      --  PAD33STRNG field to set the pad drive strength.
      PAD33_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 33 slew rate selection.
      PAD33_SR       : ALTPADCFGI_PAD33_SR_Field :=
                        Altpadcfgi_Pad33_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 34 high order drive strength selection. Used in conjunction with
      --  PAD34STRNG field to set the pad drive strength.
      PAD34_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 34 slew rate selection.
      PAD34_SR       : ALTPADCFGI_PAD34_SR_Field :=
                        Altpadcfgi_Pad34_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 35 high order drive strength selection. Used in conjunction with
      --  PAD35STRNG field to set the pad drive strength.
      PAD35_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 35 slew rate selection.
      PAD35_SR       : ALTPADCFGI_PAD35_SR_Field :=
                        Altpadcfgi_Pad35_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGI_Register use record
      PAD32_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD32_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD33_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD33_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD34_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD34_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD35_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD35_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 36 slew rate selection.
   type ALTPADCFGJ_PAD36_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgj_Pad36_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGJ_PAD36_SR_Field use
     (Altpadcfgj_Pad36_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 37 slew rate selection.
   type ALTPADCFGJ_PAD37_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgj_Pad37_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGJ_PAD37_SR_Field use
     (Altpadcfgj_Pad37_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 38 slew rate selection.
   type ALTPADCFGJ_PAD38_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgj_Pad38_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGJ_PAD38_SR_Field use
     (Altpadcfgj_Pad38_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 39 slew rate selection.
   type ALTPADCFGJ_PAD39_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgj_Pad39_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGJ_PAD39_SR_Field use
     (Altpadcfgj_Pad39_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg9 (Pads 39,38,37,36)
   type ALTPADCFGJ_Register is record
      --  Pad 36 high order drive strength selection. Used in conjunction with
      --  PAD36STRNG field to set the pad drive strength.
      PAD36_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 36 slew rate selection.
      PAD36_SR       : ALTPADCFGJ_PAD36_SR_Field :=
                        Altpadcfgj_Pad36_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 37 high order drive strength selection. Used in conjunction with
      --  PAD37STRNG field to set the pad drive strength.
      PAD37_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 37 slew rate selection.
      PAD37_SR       : ALTPADCFGJ_PAD37_SR_Field :=
                        Altpadcfgj_Pad37_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 38 high order drive strength selection. Used in conjunction with
      --  PAD38STRNG field to set the pad drive strength.
      PAD38_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 38 slew rate selection.
      PAD38_SR       : ALTPADCFGJ_PAD38_SR_Field :=
                        Altpadcfgj_Pad38_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 39 high order drive strength selection. Used in conjunction with
      --  PAD39STRNG field to set the pad drive strength.
      PAD39_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 39 slew rate selection.
      PAD39_SR       : ALTPADCFGJ_PAD39_SR_Field :=
                        Altpadcfgj_Pad39_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGJ_Register use record
      PAD36_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD36_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD37_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD37_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD38_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD38_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD39_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD39_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 40 slew rate selection.
   type ALTPADCFGK_PAD40_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgk_Pad40_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGK_PAD40_SR_Field use
     (Altpadcfgk_Pad40_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 41 slew rate selection.
   type ALTPADCFGK_PAD41_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgk_Pad41_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGK_PAD41_SR_Field use
     (Altpadcfgk_Pad41_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 42 slew rate selection.
   type ALTPADCFGK_PAD42_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgk_Pad42_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGK_PAD42_SR_Field use
     (Altpadcfgk_Pad42_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 43 slew rate selection.
   type ALTPADCFGK_PAD43_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgk_Pad43_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGK_PAD43_SR_Field use
     (Altpadcfgk_Pad43_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg10 (Pads 43,42,41,40)
   type ALTPADCFGK_Register is record
      --  Pad 40 high order drive strength selection. Used in conjunction with
      --  PAD40STRNG field to set the pad drive strength.
      PAD40_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 40 slew rate selection.
      PAD40_SR       : ALTPADCFGK_PAD40_SR_Field :=
                        Altpadcfgk_Pad40_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 41 high order drive strength selection. Used in conjunction with
      --  PAD41STRNG field to set the pad drive strength.
      PAD41_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 41 slew rate selection.
      PAD41_SR       : ALTPADCFGK_PAD41_SR_Field :=
                        Altpadcfgk_Pad41_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 42 high order drive strength selection. Used in conjunction with
      --  PAD42STRNG field to set the pad drive strength.
      PAD42_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 42 slew rate selection.
      PAD42_SR       : ALTPADCFGK_PAD42_SR_Field :=
                        Altpadcfgk_Pad42_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 43 high order drive strength selection. Used in conjunction with
      --  PAD43STRNG field to set the pad drive strength.
      PAD43_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 43 slew rate selection.
      PAD43_SR       : ALTPADCFGK_PAD43_SR_Field :=
                        Altpadcfgk_Pad43_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGK_Register use record
      PAD40_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD40_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD41_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD41_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD42_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD42_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD43_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD43_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 44 slew rate selection.
   type ALTPADCFGL_PAD44_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgl_Pad44_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGL_PAD44_SR_Field use
     (Altpadcfgl_Pad44_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 45 slew rate selection.
   type ALTPADCFGL_PAD45_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgl_Pad45_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGL_PAD45_SR_Field use
     (Altpadcfgl_Pad45_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 46 slew rate selection.
   type ALTPADCFGL_PAD46_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgl_Pad46_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGL_PAD46_SR_Field use
     (Altpadcfgl_Pad46_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 47 slew rate selection.
   type ALTPADCFGL_PAD47_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgl_Pad47_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGL_PAD47_SR_Field use
     (Altpadcfgl_Pad47_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg11 (Pads 47,46,45,44)
   type ALTPADCFGL_Register is record
      --  Pad 44 high order drive strength selection. Used in conjunction with
      --  PAD44STRNG field to set the pad drive strength.
      PAD44_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 44 slew rate selection.
      PAD44_SR       : ALTPADCFGL_PAD44_SR_Field :=
                        Altpadcfgl_Pad44_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 45 high order drive strength selection. Used in conjunction with
      --  PAD45STRNG field to set the pad drive strength.
      PAD45_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 45 slew rate selection.
      PAD45_SR       : ALTPADCFGL_PAD45_SR_Field :=
                        Altpadcfgl_Pad45_Sr_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Pad 46 high order drive strength selection. Used in conjunction with
      --  PAD46STRNG field to set the pad drive strength.
      PAD46_DS1      : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Pad 46 slew rate selection.
      PAD46_SR       : ALTPADCFGL_PAD46_SR_Field :=
                        Altpadcfgl_Pad46_Sr_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Pad 47 high order drive strength selection. Used in conjunction with
      --  PAD47STRNG field to set the pad drive strength.
      PAD47_DS1      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Pad 47 slew rate selection.
      PAD47_SR       : ALTPADCFGL_PAD47_SR_Field :=
                        Altpadcfgl_Pad47_Sr_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGL_Register use record
      PAD44_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD44_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD45_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD45_SR       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PAD46_DS1      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PAD46_SR       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PAD47_DS1      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PAD47_SR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pad 48 slew rate selection.
   type ALTPADCFGM_PAD48_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgm_Pad48_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGM_PAD48_SR_Field use
     (Altpadcfgm_Pad48_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Pad 49 slew rate selection.
   type ALTPADCFGM_PAD49_SR_Field is
     (
      --  Reset value for the field
      Altpadcfgm_Pad49_Sr_Field_Reset,
      --  Enables Slew rate control on pad value.
      Sr_En)
     with Size => 1;
   for ALTPADCFGM_PAD49_SR_Field use
     (Altpadcfgm_Pad49_Sr_Field_Reset => 0,
      Sr_En => 1);

   --  Alternate Pad Configuration reg12 (Pads 49,48)
   type ALTPADCFGM_Register is record
      --  Pad 48 high order drive strength selection. Used in conjunction with
      --  PAD48STRNG field to set the pad drive strength.
      PAD48_DS1      : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Pad 48 slew rate selection.
      PAD48_SR       : ALTPADCFGM_PAD48_SR_Field :=
                        Altpadcfgm_Pad48_Sr_Field_Reset;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Pad 49 high order drive strength selection. Used in conjunction with
      --  PAD49STRNG field to set the pad drive strength.
      PAD49_DS1      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Pad 49 slew rate selection.
      PAD49_SR       : ALTPADCFGM_PAD49_SR_Field :=
                        Altpadcfgm_Pad49_Sr_Field_Reset;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTPADCFGM_Register use record
      PAD48_DS1      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PAD48_SR       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PAD49_DS1      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PAD49_SR       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  INT0EN_GPIO array
   type INT0EN_GPIO_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Interrupt Registers 31-0: Enable
   type INT0EN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt32;
         when True =>
            --  GPIO as an array
            Arr : INT0EN_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INT0EN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  INT0STAT_GPIO array
   type INT0STAT_GPIO_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Interrupt Registers 31-0: Status
   type INT0STAT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt32;
         when True =>
            --  GPIO as an array
            Arr : INT0STAT_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INT0STAT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  INT0CLR_GPIO array
   type INT0CLR_GPIO_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Interrupt Registers 31-0: Clear
   type INT0CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt32;
         when True =>
            --  GPIO as an array
            Arr : INT0CLR_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INT0CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  INT0SET_GPIO array
   type INT0SET_GPIO_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Interrupt Registers 31-0: Set
   type INT0SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt32;
         when True =>
            --  GPIO as an array
            Arr : INT0SET_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INT0SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  INT1EN_GPIO array
   type INT1EN_GPIO_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for INT1EN_GPIO
   type INT1EN_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt18;
         when True =>
            --  GPIO as an array
            Arr : INT1EN_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for INT1EN_GPIO_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  GPIO Interrupt Registers 49-32: Enable
   type INT1EN_Register is record
      --  GPIO32 interrupt.
      GPIO           : INT1EN_GPIO_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT1EN_Register use record
      GPIO           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  INT1STAT_GPIO array
   type INT1STAT_GPIO_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for INT1STAT_GPIO
   type INT1STAT_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt18;
         when True =>
            --  GPIO as an array
            Arr : INT1STAT_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for INT1STAT_GPIO_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  GPIO Interrupt Registers 49-32: Status
   type INT1STAT_Register is record
      --  GPIO32 interrupt.
      GPIO           : INT1STAT_GPIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT1STAT_Register use record
      GPIO           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  INT1CLR_GPIO array
   type INT1CLR_GPIO_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for INT1CLR_GPIO
   type INT1CLR_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt18;
         when True =>
            --  GPIO as an array
            Arr : INT1CLR_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for INT1CLR_GPIO_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  GPIO Interrupt Registers 49-32: Clear
   type INT1CLR_Register is record
      --  GPIO32 interrupt.
      GPIO           : INT1CLR_GPIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT1CLR_Register use record
      GPIO           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  INT1SET_GPIO array
   type INT1SET_GPIO_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for INT1SET_GPIO
   type INT1SET_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt18;
         when True =>
            --  GPIO as an array
            Arr : INT1SET_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for INT1SET_GPIO_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  GPIO Interrupt Registers 49-32: Set
   type INT1SET_Register is record
      --  GPIO32 interrupt.
      GPIO           : INT1SET_GPIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT1SET_Register use record
      GPIO           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose IO
   type GPIO_Peripheral is record
      --  Pad Configuration Register A
      PADREGA    : aliased PADREGA_Register;
      --  Pad Configuration Register B
      PADREGB    : aliased PADREGB_Register;
      --  Pad Configuration Register C
      PADREGC    : aliased PADREGC_Register;
      --  Pad Configuration Register D
      PADREGD    : aliased PADREGD_Register;
      --  Pad Configuration Register E
      PADREGE    : aliased PADREGE_Register;
      --  Pad Configuration Register F
      PADREGF    : aliased PADREGF_Register;
      --  Pad Configuration Register G
      PADREGG    : aliased PADREGG_Register;
      --  Pad Configuration Register H
      PADREGH    : aliased PADREGH_Register;
      --  Pad Configuration Register I
      PADREGI    : aliased PADREGI_Register;
      --  Pad Configuration Register J
      PADREGJ    : aliased PADREGJ_Register;
      --  Pad Configuration Register K
      PADREGK    : aliased PADREGK_Register;
      --  Pad Configuration Register L
      PADREGL    : aliased PADREGL_Register;
      --  Pad Configuration Register M
      PADREGM    : aliased PADREGM_Register;
      --  GPIO Configuration Register A
      CFGA       : aliased CFGA_Register;
      --  GPIO Configuration Register B
      CFGB       : aliased CFGB_Register;
      --  GPIO Configuration Register C
      CFGC       : aliased CFGC_Register;
      --  GPIO Configuration Register D
      CFGD       : aliased CFGD_Register;
      --  GPIO Configuration Register E
      CFGE       : aliased CFGE_Register;
      --  GPIO Configuration Register F
      CFGF       : aliased CFGF_Register;
      --  GPIO Configuration Register G
      CFGG       : aliased CFGG_Register;
      --  Key Register for all pad configuration registers
      PADKEY     : aliased HAL.UInt32;
      --  GPIO Input Register A
      RDA        : aliased HAL.UInt32;
      --  GPIO Input Register B
      RDB        : aliased RDB_Register;
      --  GPIO Output Register A
      WTA        : aliased HAL.UInt32;
      --  GPIO Output Register B
      WTB        : aliased WTB_Register;
      --  GPIO Output Register A Set
      WTSA       : aliased HAL.UInt32;
      --  GPIO Output Register B Set
      WTSB       : aliased WTSB_Register;
      --  GPIO Output Register A Clear
      WTCA       : aliased HAL.UInt32;
      --  GPIO Output Register B Clear
      WTCB       : aliased WTCB_Register;
      --  GPIO Enable Register A
      ENA        : aliased HAL.UInt32;
      --  GPIO Enable Register B
      ENB        : aliased ENB_Register;
      --  GPIO Enable Register A Set
      ENSA       : aliased HAL.UInt32;
      --  GPIO Enable Register B Set
      ENSB       : aliased ENSB_Register;
      --  GPIO Enable Register A Clear
      ENCA       : aliased HAL.UInt32;
      --  GPIO Enable Register B Clear
      ENCB       : aliased ENCB_Register;
      --  STIMER Capture Control
      STMRCAP    : aliased STMRCAP_Register;
      --  IOM0 Flow Control IRQ Select
      IOM0IRQ    : aliased IOM0IRQ_Register;
      --  IOM1 Flow Control IRQ Select
      IOM1IRQ    : aliased IOM1IRQ_Register;
      --  IOM2 Flow Control IRQ Select
      IOM2IRQ    : aliased IOM2IRQ_Register;
      --  IOM3 Flow Control IRQ Select
      IOM3IRQ    : aliased IOM3IRQ_Register;
      --  IOM4 Flow Control IRQ Select
      IOM4IRQ    : aliased IOM4IRQ_Register;
      --  IOM5 Flow Control IRQ Select
      IOM5IRQ    : aliased IOM5IRQ_Register;
      --  IOM to IOS Loopback Control
      LOOPBACK   : aliased LOOPBACK_Register;
      --  GPIO Observation Mode Sample register
      GPIOOBS    : aliased GPIOOBS_Register;
      --  Alternate Pad Configuration reg0 (Pads 3,2,1,0)
      ALTPADCFGA : aliased ALTPADCFGA_Register;
      --  Alternate Pad Configuration reg1 (Pads 7,6,5,4)
      ALTPADCFGB : aliased ALTPADCFGB_Register;
      --  Alternate Pad Configuration reg2 (Pads 11,10,9,8)
      ALTPADCFGC : aliased ALTPADCFGC_Register;
      --  Alternate Pad Configuration reg3 (Pads 15,14,13,12)
      ALTPADCFGD : aliased ALTPADCFGD_Register;
      --  Alternate Pad Configuration reg4 (Pads 19,18,17,16)
      ALTPADCFGE : aliased ALTPADCFGE_Register;
      --  Alternate Pad Configuration reg5 (Pads 23,22,21,20)
      ALTPADCFGF : aliased ALTPADCFGF_Register;
      --  Alternate Pad Configuration reg6 (Pads 27,26,25,24)
      ALTPADCFGG : aliased ALTPADCFGG_Register;
      --  Alternate Pad Configuration reg7 (Pads 31,30,29,28)
      ALTPADCFGH : aliased ALTPADCFGH_Register;
      --  Alternate Pad Configuration reg8 (Pads 35,34,33,32)
      ALTPADCFGI : aliased ALTPADCFGI_Register;
      --  Alternate Pad Configuration reg9 (Pads 39,38,37,36)
      ALTPADCFGJ : aliased ALTPADCFGJ_Register;
      --  Alternate Pad Configuration reg10 (Pads 43,42,41,40)
      ALTPADCFGK : aliased ALTPADCFGK_Register;
      --  Alternate Pad Configuration reg11 (Pads 47,46,45,44)
      ALTPADCFGL : aliased ALTPADCFGL_Register;
      --  Alternate Pad Configuration reg12 (Pads 49,48)
      ALTPADCFGM : aliased ALTPADCFGM_Register;
      --  GPIO Interrupt Registers 31-0: Enable
      INT0EN     : aliased INT0EN_Register;
      --  GPIO Interrupt Registers 31-0: Status
      INT0STAT   : aliased INT0STAT_Register;
      --  GPIO Interrupt Registers 31-0: Clear
      INT0CLR    : aliased INT0CLR_Register;
      --  GPIO Interrupt Registers 31-0: Set
      INT0SET    : aliased INT0SET_Register;
      --  GPIO Interrupt Registers 49-32: Enable
      INT1EN     : aliased INT1EN_Register;
      --  GPIO Interrupt Registers 49-32: Status
      INT1STAT   : aliased INT1STAT_Register;
      --  GPIO Interrupt Registers 49-32: Clear
      INT1CLR    : aliased INT1CLR_Register;
      --  GPIO Interrupt Registers 49-32: Set
      INT1SET    : aliased INT1SET_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      PADREGA    at 16#0# range 0 .. 31;
      PADREGB    at 16#4# range 0 .. 31;
      PADREGC    at 16#8# range 0 .. 31;
      PADREGD    at 16#C# range 0 .. 31;
      PADREGE    at 16#10# range 0 .. 31;
      PADREGF    at 16#14# range 0 .. 31;
      PADREGG    at 16#18# range 0 .. 31;
      PADREGH    at 16#1C# range 0 .. 31;
      PADREGI    at 16#20# range 0 .. 31;
      PADREGJ    at 16#24# range 0 .. 31;
      PADREGK    at 16#28# range 0 .. 31;
      PADREGL    at 16#2C# range 0 .. 31;
      PADREGM    at 16#30# range 0 .. 31;
      CFGA       at 16#40# range 0 .. 31;
      CFGB       at 16#44# range 0 .. 31;
      CFGC       at 16#48# range 0 .. 31;
      CFGD       at 16#4C# range 0 .. 31;
      CFGE       at 16#50# range 0 .. 31;
      CFGF       at 16#54# range 0 .. 31;
      CFGG       at 16#58# range 0 .. 31;
      PADKEY     at 16#60# range 0 .. 31;
      RDA        at 16#80# range 0 .. 31;
      RDB        at 16#84# range 0 .. 31;
      WTA        at 16#88# range 0 .. 31;
      WTB        at 16#8C# range 0 .. 31;
      WTSA       at 16#90# range 0 .. 31;
      WTSB       at 16#94# range 0 .. 31;
      WTCA       at 16#98# range 0 .. 31;
      WTCB       at 16#9C# range 0 .. 31;
      ENA        at 16#A0# range 0 .. 31;
      ENB        at 16#A4# range 0 .. 31;
      ENSA       at 16#A8# range 0 .. 31;
      ENSB       at 16#AC# range 0 .. 31;
      ENCA       at 16#B4# range 0 .. 31;
      ENCB       at 16#B8# range 0 .. 31;
      STMRCAP    at 16#BC# range 0 .. 31;
      IOM0IRQ    at 16#C0# range 0 .. 31;
      IOM1IRQ    at 16#C4# range 0 .. 31;
      IOM2IRQ    at 16#C8# range 0 .. 31;
      IOM3IRQ    at 16#CC# range 0 .. 31;
      IOM4IRQ    at 16#D0# range 0 .. 31;
      IOM5IRQ    at 16#D4# range 0 .. 31;
      LOOPBACK   at 16#D8# range 0 .. 31;
      GPIOOBS    at 16#DC# range 0 .. 31;
      ALTPADCFGA at 16#E0# range 0 .. 31;
      ALTPADCFGB at 16#E4# range 0 .. 31;
      ALTPADCFGC at 16#E8# range 0 .. 31;
      ALTPADCFGD at 16#EC# range 0 .. 31;
      ALTPADCFGE at 16#F0# range 0 .. 31;
      ALTPADCFGF at 16#F4# range 0 .. 31;
      ALTPADCFGG at 16#F8# range 0 .. 31;
      ALTPADCFGH at 16#FC# range 0 .. 31;
      ALTPADCFGI at 16#100# range 0 .. 31;
      ALTPADCFGJ at 16#104# range 0 .. 31;
      ALTPADCFGK at 16#108# range 0 .. 31;
      ALTPADCFGL at 16#10C# range 0 .. 31;
      ALTPADCFGM at 16#110# range 0 .. 31;
      INT0EN     at 16#200# range 0 .. 31;
      INT0STAT   at 16#204# range 0 .. 31;
      INT0CLR    at 16#208# range 0 .. 31;
      INT0SET    at 16#20C# range 0 .. 31;
      INT1EN     at 16#210# range 0 .. 31;
      INT1STAT   at 16#214# range 0 .. 31;
      INT1CLR    at 16#218# range 0 .. 31;
      INT1SET    at 16#21C# range 0 .. 31;
   end record;

   --  General Purpose IO
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIO_Base;

end NRF_SVD.GPIO;
