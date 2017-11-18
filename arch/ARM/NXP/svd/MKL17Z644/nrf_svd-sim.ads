--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKL17Z644.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Integration Module
package NRF_SVD.SIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  32K oscillator clock output
   type SOPT1_OSC32KOUT_Field is
     (
      --  ERCLK32K is not output.
      SOPT1_OSC32KOUT_Field_00,
      --  ERCLK32K is output on PTE0.
      SOPT1_OSC32KOUT_Field_01)
     with Size => 2;
   for SOPT1_OSC32KOUT_Field use
     (SOPT1_OSC32KOUT_Field_00 => 0,
      SOPT1_OSC32KOUT_Field_01 => 1);

   --  32K Oscillator Clock Select
   type SOPT1_OSC32KSEL_Field is
     (
      --  System oscillator (OSC32KCLK)
      SOPT1_OSC32KSEL_Field_00,
      --  RTC_CLKIN
      SOPT1_OSC32KSEL_Field_10,
      --  LPO 1kHz
      SOPT1_OSC32KSEL_Field_11)
     with Size => 2;
   for SOPT1_OSC32KSEL_Field use
     (SOPT1_OSC32KSEL_Field_00 => 0,
      SOPT1_OSC32KSEL_Field_10 => 2,
      SOPT1_OSC32KSEL_Field_11 => 3);

   --  System Options Register 1
   type SIM_SOPT1_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  32K oscillator clock output
      OSC32KOUT      : SOPT1_OSC32KOUT_Field :=
                        NRF_SVD.SIM.SOPT1_OSC32KOUT_Field_00;
      --  32K Oscillator Clock Select
      OSC32KSEL      : SOPT1_OSC32KSEL_Field :=
                        NRF_SVD.SIM.SOPT1_OSC32KSEL_Field_00;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT1_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OSC32KOUT      at 0 range 16 .. 17;
      OSC32KSEL      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RTC Clock Out Select
   type SOPT2_RTCCLKOUTSEL_Field is
     (
      --  RTC 1 Hz clock is output on the RTC_CLKOUT pin.
      SOPT2_RTCCLKOUTSEL_Field_0,
      --  OSCERCLK clock is output on the RTC_CLKOUT pin.
      SOPT2_RTCCLKOUTSEL_Field_1)
     with Size => 1;
   for SOPT2_RTCCLKOUTSEL_Field use
     (SOPT2_RTCCLKOUTSEL_Field_0 => 0,
      SOPT2_RTCCLKOUTSEL_Field_1 => 1);

   --  CLKOUT select
   type SOPT2_CLKOUTSEL_Field is
     (
      --  Reset value for the field
      Sopt2_Clkoutsel_Field_Reset,
      --  Bus clock
      SOPT2_CLKOUTSEL_Field_010,
      --  LPO clock (1 kHz)
      SOPT2_CLKOUTSEL_Field_011,
      --  LIRC_CLK
      SOPT2_CLKOUTSEL_Field_100,
      --  OSCERCLK
      SOPT2_CLKOUTSEL_Field_110,
      --  IRC48M clock (IRC48M clock can be output to PAD only when chip VDD is
      --  2.7-3.6 V)
      SOPT2_CLKOUTSEL_Field_111)
     with Size => 3;
   for SOPT2_CLKOUTSEL_Field use
     (Sopt2_Clkoutsel_Field_Reset => 0,
      SOPT2_CLKOUTSEL_Field_010 => 2,
      SOPT2_CLKOUTSEL_Field_011 => 3,
      SOPT2_CLKOUTSEL_Field_100 => 4,
      SOPT2_CLKOUTSEL_Field_110 => 6,
      SOPT2_CLKOUTSEL_Field_111 => 7);

   --  USB clock source select
   type SOPT2_USBSRC_Field is
     (
      --  External bypass clock (USB_CLKIN).
      SOPT2_USBSRC_Field_0,
      --  IRC48M clock
      SOPT2_USBSRC_Field_1)
     with Size => 1;
   for SOPT2_USBSRC_Field use
     (SOPT2_USBSRC_Field_0 => 0,
      SOPT2_USBSRC_Field_1 => 1);

   --  FlexIO Module Clock Source Select
   type SOPT2_FLEXIOSRC_Field is
     (
      --  Clock disabled
      SOPT2_FLEXIOSRC_Field_00,
      --  IRC48M clock
      SOPT2_FLEXIOSRC_Field_01,
      --  OSCERCLK clock
      SOPT2_FLEXIOSRC_Field_10,
      --  MCGIRCLK clock
      SOPT2_FLEXIOSRC_Field_11)
     with Size => 2;
   for SOPT2_FLEXIOSRC_Field use
     (SOPT2_FLEXIOSRC_Field_00 => 0,
      SOPT2_FLEXIOSRC_Field_01 => 1,
      SOPT2_FLEXIOSRC_Field_10 => 2,
      SOPT2_FLEXIOSRC_Field_11 => 3);

   --  TPM Clock Source Select
   type SOPT2_TPMSRC_Field is
     (
      --  Clock disabled
      SOPT2_TPMSRC_Field_00,
      --  IRC48M clock
      SOPT2_TPMSRC_Field_01,
      --  OSCERCLK clock
      SOPT2_TPMSRC_Field_10,
      --  MCGIRCLK clock
      SOPT2_TPMSRC_Field_11)
     with Size => 2;
   for SOPT2_TPMSRC_Field use
     (SOPT2_TPMSRC_Field_00 => 0,
      SOPT2_TPMSRC_Field_01 => 1,
      SOPT2_TPMSRC_Field_10 => 2,
      SOPT2_TPMSRC_Field_11 => 3);

   --  LPUART0 Clock Source Select
   type SOPT2_LPUART0SRC_Field is
     (
      --  Clock disabled
      SOPT2_LPUART0SRC_Field_00,
      --  IRC48M clock
      SOPT2_LPUART0SRC_Field_01,
      --  OSCERCLK clock
      SOPT2_LPUART0SRC_Field_10,
      --  MCGIRCLK clock
      SOPT2_LPUART0SRC_Field_11)
     with Size => 2;
   for SOPT2_LPUART0SRC_Field use
     (SOPT2_LPUART0SRC_Field_00 => 0,
      SOPT2_LPUART0SRC_Field_01 => 1,
      SOPT2_LPUART0SRC_Field_10 => 2,
      SOPT2_LPUART0SRC_Field_11 => 3);

   --  LPUART1 Clock Source Select
   type SOPT2_LPUART1SRC_Field is
     (
      --  Clock disabled
      SOPT2_LPUART1SRC_Field_00,
      --  IRC48M clock
      SOPT2_LPUART1SRC_Field_01,
      --  OSCERCLK clock
      SOPT2_LPUART1SRC_Field_10,
      --  MCGIRCLK clock
      SOPT2_LPUART1SRC_Field_11)
     with Size => 2;
   for SOPT2_LPUART1SRC_Field use
     (SOPT2_LPUART1SRC_Field_00 => 0,
      SOPT2_LPUART1SRC_Field_01 => 1,
      SOPT2_LPUART1SRC_Field_10 => 2,
      SOPT2_LPUART1SRC_Field_11 => 3);

   --  System Options Register 2
   type SIM_SOPT2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  RTC Clock Out Select
      RTCCLKOUTSEL   : SOPT2_RTCCLKOUTSEL_Field :=
                        NRF_SVD.SIM.SOPT2_RTCCLKOUTSEL_Field_0;
      --  CLKOUT select
      CLKOUTSEL      : SOPT2_CLKOUTSEL_Field := Sopt2_Clkoutsel_Field_Reset;
      --  unspecified
      Reserved_8_17  : HAL.UInt10 := 16#0#;
      --  USB clock source select
      USBSRC         : SOPT2_USBSRC_Field := NRF_SVD.SIM.SOPT2_USBSRC_Field_0;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  FlexIO Module Clock Source Select
      FLEXIOSRC      : SOPT2_FLEXIOSRC_Field :=
                        NRF_SVD.SIM.SOPT2_FLEXIOSRC_Field_00;
      --  TPM Clock Source Select
      TPMSRC         : SOPT2_TPMSRC_Field :=
                        NRF_SVD.SIM.SOPT2_TPMSRC_Field_00;
      --  LPUART0 Clock Source Select
      LPUART0SRC     : SOPT2_LPUART0SRC_Field :=
                        NRF_SVD.SIM.SOPT2_LPUART0SRC_Field_00;
      --  LPUART1 Clock Source Select
      LPUART1SRC     : SOPT2_LPUART1SRC_Field :=
                        NRF_SVD.SIM.SOPT2_LPUART1SRC_Field_00;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RTCCLKOUTSEL   at 0 range 4 .. 4;
      CLKOUTSEL      at 0 range 5 .. 7;
      Reserved_8_17  at 0 range 8 .. 17;
      USBSRC         at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      FLEXIOSRC      at 0 range 22 .. 23;
      TPMSRC         at 0 range 24 .. 25;
      LPUART0SRC     at 0 range 26 .. 27;
      LPUART1SRC     at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  TPM1 channel 0 input capture source select
   type SOPT4_TPM1CH0SRC_Field is
     (
      --  TPM1_CH0 signal
      SOPT4_TPM1CH0SRC_Field_00,
      --  CMP0 output
      SOPT4_TPM1CH0SRC_Field_01)
     with Size => 2;
   for SOPT4_TPM1CH0SRC_Field use
     (SOPT4_TPM1CH0SRC_Field_00 => 0,
      SOPT4_TPM1CH0SRC_Field_01 => 1);

   --  TPM2 Channel 0 Input Capture Source Select
   type SOPT4_TPM2CH0SRC_Field is
     (
      --  TPM2_CH0 signal
      SOPT4_TPM2CH0SRC_Field_0,
      --  CMP0 output
      SOPT4_TPM2CH0SRC_Field_1)
     with Size => 1;
   for SOPT4_TPM2CH0SRC_Field use
     (SOPT4_TPM2CH0SRC_Field_0 => 0,
      SOPT4_TPM2CH0SRC_Field_1 => 1);

   --  TPM0 External Clock Pin Select
   type SOPT4_TPM0CLKSEL_Field is
     (
      --  TPM0 external clock driven by TPM_CLKIN0 pin.
      SOPT4_TPM0CLKSEL_Field_0,
      --  TPM0 external clock driven by TPM_CLKIN1 pin.
      SOPT4_TPM0CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_TPM0CLKSEL_Field use
     (SOPT4_TPM0CLKSEL_Field_0 => 0,
      SOPT4_TPM0CLKSEL_Field_1 => 1);

   --  TPM1 External Clock Pin Select
   type SOPT4_TPM1CLKSEL_Field is
     (
      --  TPM1 external clock driven by TPM_CLKIN0 pin.
      SOPT4_TPM1CLKSEL_Field_0,
      --  TPM1 external clock driven by TPM_CLKIN1 pin.
      SOPT4_TPM1CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_TPM1CLKSEL_Field use
     (SOPT4_TPM1CLKSEL_Field_0 => 0,
      SOPT4_TPM1CLKSEL_Field_1 => 1);

   --  TPM2 External Clock Pin Select
   type SOPT4_TPM2CLKSEL_Field is
     (
      --  TPM2 external clock driven by TPM_CLKIN0 pin.
      SOPT4_TPM2CLKSEL_Field_0,
      --  TPM2 external clock driven by TPM_CLKIN1 pin.
      SOPT4_TPM2CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_TPM2CLKSEL_Field use
     (SOPT4_TPM2CLKSEL_Field_0 => 0,
      SOPT4_TPM2CLKSEL_Field_1 => 1);

   --  System Options Register 4
   type SIM_SOPT4_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  TPM1 channel 0 input capture source select
      TPM1CH0SRC     : SOPT4_TPM1CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_TPM1CH0SRC_Field_00;
      --  TPM2 Channel 0 Input Capture Source Select
      TPM2CH0SRC     : SOPT4_TPM2CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_TPM2CH0SRC_Field_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  TPM0 External Clock Pin Select
      TPM0CLKSEL     : SOPT4_TPM0CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_TPM0CLKSEL_Field_0;
      --  TPM1 External Clock Pin Select
      TPM1CLKSEL     : SOPT4_TPM1CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_TPM1CLKSEL_Field_0;
      --  TPM2 External Clock Pin Select
      TPM2CLKSEL     : SOPT4_TPM2CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_TPM2CLKSEL_Field_0;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT4_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      TPM1CH0SRC     at 0 range 18 .. 19;
      TPM2CH0SRC     at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TPM0CLKSEL     at 0 range 24 .. 24;
      TPM1CLKSEL     at 0 range 25 .. 25;
      TPM2CLKSEL     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  LPUART0 Transmit Data Source Select
   type SOPT5_LPUART0TXSRC_Field is
     (
      --  LPUART0_TX pin
      SOPT5_LPUART0TXSRC_Field_00,
      --  LPUART0_TX pin modulated with TPM1 channel 0 output
      SOPT5_LPUART0TXSRC_Field_01,
      --  LPUART0_TX pin modulated with TPM2 channel 0 output
      SOPT5_LPUART0TXSRC_Field_10)
     with Size => 2;
   for SOPT5_LPUART0TXSRC_Field use
     (SOPT5_LPUART0TXSRC_Field_00 => 0,
      SOPT5_LPUART0TXSRC_Field_01 => 1,
      SOPT5_LPUART0TXSRC_Field_10 => 2);

   --  LPUART0 Receive Data Source Select
   type SOPT5_LPUART0RXSRC_Field is
     (
      --  LPUART_RX pin
      SOPT5_LPUART0RXSRC_Field_0,
      --  CMP0 output
      SOPT5_LPUART0RXSRC_Field_1)
     with Size => 1;
   for SOPT5_LPUART0RXSRC_Field use
     (SOPT5_LPUART0RXSRC_Field_0 => 0,
      SOPT5_LPUART0RXSRC_Field_1 => 1);

   --  LPUART1 Transmit Data Source Select
   type SOPT5_LPUART1TXSRC_Field is
     (
      --  LPUART1_TX pin
      SOPT5_LPUART1TXSRC_Field_00,
      --  LPUART1_TX pin modulated with TPM1 channel 0 output
      SOPT5_LPUART1TXSRC_Field_01,
      --  LPUART1_TX pin modulated with TPM2 channel 0 output
      SOPT5_LPUART1TXSRC_Field_10)
     with Size => 2;
   for SOPT5_LPUART1TXSRC_Field use
     (SOPT5_LPUART1TXSRC_Field_00 => 0,
      SOPT5_LPUART1TXSRC_Field_01 => 1,
      SOPT5_LPUART1TXSRC_Field_10 => 2);

   --  LPUART1 Receive Data Source Select
   type SOPT5_LPUART1RXSRC_Field is
     (
      --  LPUART1_RX pin
      SOPT5_LPUART1RXSRC_Field_0,
      --  CMP0 output
      SOPT5_LPUART1RXSRC_Field_1)
     with Size => 1;
   for SOPT5_LPUART1RXSRC_Field use
     (SOPT5_LPUART1RXSRC_Field_0 => 0,
      SOPT5_LPUART1RXSRC_Field_1 => 1);

   --  LPUART0 Open Drain Enable
   type SOPT5_LPUART0ODE_Field is
     (
      --  Open drain is disabled on LPUART0.
      SOPT5_LPUART0ODE_Field_0,
      --  Open drain is enabled on LPUART0.
      SOPT5_LPUART0ODE_Field_1)
     with Size => 1;
   for SOPT5_LPUART0ODE_Field use
     (SOPT5_LPUART0ODE_Field_0 => 0,
      SOPT5_LPUART0ODE_Field_1 => 1);

   --  LPUART1 Open Drain Enable
   type SOPT5_LPUART1ODE_Field is
     (
      --  Open drain is disabled on LPUART1.
      SOPT5_LPUART1ODE_Field_0,
      --  Open drain is enabled on LPUART1
      SOPT5_LPUART1ODE_Field_1)
     with Size => 1;
   for SOPT5_LPUART1ODE_Field use
     (SOPT5_LPUART1ODE_Field_0 => 0,
      SOPT5_LPUART1ODE_Field_1 => 1);

   --  UART2 Open Drain Enable
   type SOPT5_UART2ODE_Field is
     (
      --  Open drain is disabled on UART2
      SOPT5_UART2ODE_Field_0,
      --  Open drain is enabled on UART2
      SOPT5_UART2ODE_Field_1)
     with Size => 1;
   for SOPT5_UART2ODE_Field use
     (SOPT5_UART2ODE_Field_0 => 0,
      SOPT5_UART2ODE_Field_1 => 1);

   --  System Options Register 5
   type SIM_SOPT5_Register is record
      --  LPUART0 Transmit Data Source Select
      LPUART0TXSRC   : SOPT5_LPUART0TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0TXSRC_Field_00;
      --  LPUART0 Receive Data Source Select
      LPUART0RXSRC   : SOPT5_LPUART0RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0RXSRC_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  LPUART1 Transmit Data Source Select
      LPUART1TXSRC   : SOPT5_LPUART1TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART1TXSRC_Field_00;
      --  LPUART1 Receive Data Source Select
      LPUART1RXSRC   : SOPT5_LPUART1RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART1RXSRC_Field_0;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  LPUART0 Open Drain Enable
      LPUART0ODE     : SOPT5_LPUART0ODE_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0ODE_Field_0;
      --  LPUART1 Open Drain Enable
      LPUART1ODE     : SOPT5_LPUART1ODE_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART1ODE_Field_0;
      --  UART2 Open Drain Enable
      UART2ODE       : SOPT5_UART2ODE_Field :=
                        NRF_SVD.SIM.SOPT5_UART2ODE_Field_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT5_Register use record
      LPUART0TXSRC   at 0 range 0 .. 1;
      LPUART0RXSRC   at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LPUART1TXSRC   at 0 range 4 .. 5;
      LPUART1RXSRC   at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      LPUART0ODE     at 0 range 16 .. 16;
      LPUART1ODE     at 0 range 17 .. 17;
      UART2ODE       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  ADC0 Trigger Select
   type SOPT7_ADC0TRGSEL_Field is
     (
      --  External trigger pin input (EXTRG_IN)
      SOPT7_ADC0TRGSEL_Field_0000,
      --  CMP0 output
      SOPT7_ADC0TRGSEL_Field_0001,
      --  PIT trigger 0
      SOPT7_ADC0TRGSEL_Field_0100,
      --  PIT trigger 1
      SOPT7_ADC0TRGSEL_Field_0101,
      --  TPM0 overflow
      SOPT7_ADC0TRGSEL_Field_1000,
      --  TPM1 overflow
      SOPT7_ADC0TRGSEL_Field_1001,
      --  TPM2 overflow
      SOPT7_ADC0TRGSEL_Field_1010,
      --  RTC alarm
      SOPT7_ADC0TRGSEL_Field_1100,
      --  RTC seconds
      SOPT7_ADC0TRGSEL_Field_1101,
      --  LPTMR0 trigger
      SOPT7_ADC0TRGSEL_Field_1110)
     with Size => 4;
   for SOPT7_ADC0TRGSEL_Field use
     (SOPT7_ADC0TRGSEL_Field_0000 => 0,
      SOPT7_ADC0TRGSEL_Field_0001 => 1,
      SOPT7_ADC0TRGSEL_Field_0100 => 4,
      SOPT7_ADC0TRGSEL_Field_0101 => 5,
      SOPT7_ADC0TRGSEL_Field_1000 => 8,
      SOPT7_ADC0TRGSEL_Field_1001 => 9,
      SOPT7_ADC0TRGSEL_Field_1010 => 10,
      SOPT7_ADC0TRGSEL_Field_1100 => 12,
      SOPT7_ADC0TRGSEL_Field_1101 => 13,
      SOPT7_ADC0TRGSEL_Field_1110 => 14);

   --  ADC0 Pretrigger Select
   type SOPT7_ADC0PRETRGSEL_Field is
     (
      --  Pre-trigger ADHDWTSA is selected, thus ADC0 will use ADC0_SC1A
      --  configuration for the next ADC conversion and store the result in
      --  ADC0_RA register.
      SOPT7_ADC0PRETRGSEL_Field_0,
      --  Pre-trigger ADHDWTSB is selected, thus ADC0 will use ADC0_SC1B
      --  configuration for the next ADC conversion and store the result in
      --  ADC0_RB register.
      SOPT7_ADC0PRETRGSEL_Field_1)
     with Size => 1;
   for SOPT7_ADC0PRETRGSEL_Field use
     (SOPT7_ADC0PRETRGSEL_Field_0 => 0,
      SOPT7_ADC0PRETRGSEL_Field_1 => 1);

   --  ADC0 Alternate Trigger Enable
   type SOPT7_ADC0ALTTRGEN_Field is
     (
      --  ADC ADHWT trigger comes from TPM1 channel 0 and channel1. Prior to
      --  the assertion of TPM1 channel 0, a pre-trigger pulse will be sent to
      --  ADHWTSA to initiate an ADC acquisition using ADCx_SC1A configuration
      --  and store ADC conversion in ADCx_RA Register. Prior to the assertion
      --  of TPM1 channel 1 a pre-trigger pulse will be sent to ADHWTSB to
      --  initiate an ADC acquisition using ADCx_SC1Bconfiguration and store
      --  ADC conversion in ADCx_RB Register.
      SOPT7_ADC0ALTTRGEN_Field_0,
      --  ADC ADHWT trigger comes from a peripheral event selected by
      --  ADC0TRGSEL bits.ADC0PRETRGSEL bit will select the optional ADHWTSA or
      --  ADHWTSB select lines for choosing the ADCx_SC1x config and ADCx_Rx
      --  result regsiter to store the ADC conversion.
      SOPT7_ADC0ALTTRGEN_Field_1)
     with Size => 1;
   for SOPT7_ADC0ALTTRGEN_Field use
     (SOPT7_ADC0ALTTRGEN_Field_0 => 0,
      SOPT7_ADC0ALTTRGEN_Field_1 => 1);

   --  System Options Register 7
   type SIM_SOPT7_Register is record
      --  ADC0 Trigger Select
      ADC0TRGSEL    : SOPT7_ADC0TRGSEL_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0TRGSEL_Field_0000;
      --  ADC0 Pretrigger Select
      ADC0PRETRGSEL : SOPT7_ADC0PRETRGSEL_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0PRETRGSEL_Field_0;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  ADC0 Alternate Trigger Enable
      ADC0ALTTRGEN  : SOPT7_ADC0ALTTRGEN_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0ALTTRGEN_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT7_Register use record
      ADC0TRGSEL    at 0 range 0 .. 3;
      ADC0PRETRGSEL at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      ADC0ALTTRGEN  at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Pincount Identification
   type SDID_PINID_Field is
     (
      --  32-pin
      SDID_PINID_Field_0010,
      --  48-pin
      SDID_PINID_Field_0100,
      --  64-pin
      SDID_PINID_Field_0101,
      --  Custom pinout (WLCSP)
      SDID_PINID_Field_1011)
     with Size => 4;
   for SDID_PINID_Field use
     (SDID_PINID_Field_0010 => 2,
      SDID_PINID_Field_0100 => 4,
      SDID_PINID_Field_0101 => 5,
      SDID_PINID_Field_1011 => 11);

   subtype SIM_SDID_REVID_Field is HAL.UInt4;

   --  System SRAM Size
   type SDID_SRAMSIZE_Field is
     (
      --  8 KB
      SDID_SRAMSIZE_Field_0100,
      --  16 KB
      SDID_SRAMSIZE_Field_0101)
     with Size => 4;
   for SDID_SRAMSIZE_Field use
     (SDID_SRAMSIZE_Field_0100 => 4,
      SDID_SRAMSIZE_Field_0101 => 5);

   --  Kinetis Series ID
   type SDID_SERIESID_Field is
     (
      --  KL family
      SDID_SERIESID_Field_0001)
     with Size => 4;
   for SDID_SERIESID_Field use
     (SDID_SERIESID_Field_0001 => 1);

   --  Kinetis Sub-Family ID
   type SDID_SUBFAMID_Field is
     (
      --  KLx7 Subfamily
      SDID_SUBFAMID_Field_0111)
     with Size => 4;
   for SDID_SUBFAMID_Field use
     (SDID_SUBFAMID_Field_0111 => 7);

   --  Family ID
   type SDID_FAMID_Field is
     (
      --  KL17
      SDID_FAMID_Field_0001,
      --  KL27
      SDID_FAMID_Field_0010)
     with Size => 4;
   for SDID_FAMID_Field use
     (SDID_FAMID_Field_0001 => 1,
      SDID_FAMID_Field_0010 => 2);

   --  System Device Identification Register
   type SIM_SDID_Register is record
      --  Read-only. Pincount Identification
      PINID         : SDID_PINID_Field;
      --  unspecified
      Reserved_4_11 : HAL.UInt8;
      --  Read-only. Device Revision Number
      REVID         : SIM_SDID_REVID_Field;
      --  Read-only. System SRAM Size
      SRAMSIZE      : SDID_SRAMSIZE_Field;
      --  Read-only. Kinetis Series ID
      SERIESID      : SDID_SERIESID_Field;
      --  Read-only. Kinetis Sub-Family ID
      SUBFAMID      : SDID_SUBFAMID_Field;
      --  Read-only. Family ID
      FAMID         : SDID_FAMID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SDID_Register use record
      PINID         at 0 range 0 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      REVID         at 0 range 12 .. 15;
      SRAMSIZE      at 0 range 16 .. 19;
      SERIESID      at 0 range 20 .. 23;
      SUBFAMID      at 0 range 24 .. 27;
      FAMID         at 0 range 28 .. 31;
   end record;

   --  I2C0 Clock Gate Control
   type SCGC4_I2C0_Field is
     (
      --  Clock disabled
      SCGC4_I2C0_Field_0,
      --  Clock enabled
      SCGC4_I2C0_Field_1)
     with Size => 1;
   for SCGC4_I2C0_Field use
     (SCGC4_I2C0_Field_0 => 0,
      SCGC4_I2C0_Field_1 => 1);

   --  SIM_SCGC4_I2C array
   type SIM_SCGC4_I2C_Field_Array is array (0 .. 1) of SCGC4_I2C0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC4_I2C
   type SIM_SCGC4_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : SIM_SCGC4_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC4_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  UART2 Clock Gate Control
   type SCGC4_UART2_Field is
     (
      --  Clock disabled
      SCGC4_UART2_Field_0,
      --  Clock enabled
      SCGC4_UART2_Field_1)
     with Size => 1;
   for SCGC4_UART2_Field use
     (SCGC4_UART2_Field_0 => 0,
      SCGC4_UART2_Field_1 => 1);

   --  Comparator Clock Gate Control
   type SCGC4_CMP0_Field is
     (
      --  Clock disabled
      SCGC4_CMP0_Field_0,
      --  Clock enabled
      SCGC4_CMP0_Field_1)
     with Size => 1;
   for SCGC4_CMP0_Field use
     (SCGC4_CMP0_Field_0 => 0,
      SCGC4_CMP0_Field_1 => 1);

   --  VREF Clock Gate Control
   type SCGC4_VREF_Field is
     (
      --  Clock disabled
      SCGC4_VREF_Field_0,
      --  Clock enabled
      SCGC4_VREF_Field_1)
     with Size => 1;
   for SCGC4_VREF_Field use
     (SCGC4_VREF_Field_0 => 0,
      SCGC4_VREF_Field_1 => 1);

   --  SPI0 Clock Gate Control
   type SCGC4_SPI0_Field is
     (
      --  Clock disabled
      SCGC4_SPI0_Field_0,
      --  Clock enabled
      SCGC4_SPI0_Field_1)
     with Size => 1;
   for SCGC4_SPI0_Field use
     (SCGC4_SPI0_Field_0 => 0,
      SCGC4_SPI0_Field_1 => 1);

   --  SIM_SCGC4_SPI array
   type SIM_SCGC4_SPI_Field_Array is array (0 .. 1) of SCGC4_SPI0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC4_SPI
   type SIM_SCGC4_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : SIM_SCGC4_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC4_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  System Clock Gating Control Register 4
   type SIM_SCGC4_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#30#;
      --  I2C0 Clock Gate Control
      I2C            : SIM_SCGC4_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  UART2 Clock Gate Control
      UART2          : SCGC4_UART2_Field := NRF_SVD.SIM.SCGC4_UART2_Field_0;
      --  unspecified
      Reserved_13_18 : HAL.UInt6 := 16#0#;
      --  Comparator Clock Gate Control
      CMP0           : SCGC4_CMP0_Field := NRF_SVD.SIM.SCGC4_CMP0_Field_0;
      --  VREF Clock Gate Control
      VREF           : SCGC4_VREF_Field := NRF_SVD.SIM.SCGC4_VREF_Field_0;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  SPI0 Clock Gate Control
      SPI            : SIM_SCGC4_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#F0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC4_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      I2C            at 0 range 6 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      UART2          at 0 range 12 .. 12;
      Reserved_13_18 at 0 range 13 .. 18;
      CMP0           at 0 range 19 .. 19;
      VREF           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SPI            at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Low Power Timer Access Control
   type SCGC5_LPTMR_Field is
     (
      --  Access disabled
      SCGC5_LPTMR_Field_0,
      --  Access enabled
      SCGC5_LPTMR_Field_1)
     with Size => 1;
   for SCGC5_LPTMR_Field use
     (SCGC5_LPTMR_Field_0 => 0,
      SCGC5_LPTMR_Field_1 => 1);

   --  Port A Clock Gate Control
   type SCGC5_PORTA_Field is
     (
      --  Clock disabled
      SCGC5_PORTA_Field_0,
      --  Clock enabled
      SCGC5_PORTA_Field_1)
     with Size => 1;
   for SCGC5_PORTA_Field use
     (SCGC5_PORTA_Field_0 => 0,
      SCGC5_PORTA_Field_1 => 1);

   --  Port B Clock Gate Control
   type SCGC5_PORTB_Field is
     (
      --  Clock disabled
      SCGC5_PORTB_Field_0,
      --  Clock enabled
      SCGC5_PORTB_Field_1)
     with Size => 1;
   for SCGC5_PORTB_Field use
     (SCGC5_PORTB_Field_0 => 0,
      SCGC5_PORTB_Field_1 => 1);

   --  Port C Clock Gate Control
   type SCGC5_PORTC_Field is
     (
      --  Clock disabled
      SCGC5_PORTC_Field_0,
      --  Clock enabled
      SCGC5_PORTC_Field_1)
     with Size => 1;
   for SCGC5_PORTC_Field use
     (SCGC5_PORTC_Field_0 => 0,
      SCGC5_PORTC_Field_1 => 1);

   --  Port D Clock Gate Control
   type SCGC5_PORTD_Field is
     (
      --  Clock disabled
      SCGC5_PORTD_Field_0,
      --  Clock enabled
      SCGC5_PORTD_Field_1)
     with Size => 1;
   for SCGC5_PORTD_Field use
     (SCGC5_PORTD_Field_0 => 0,
      SCGC5_PORTD_Field_1 => 1);

   --  Port E Clock Gate Control
   type SCGC5_PORTE_Field is
     (
      --  Clock disabled
      SCGC5_PORTE_Field_0,
      --  Clock enabled
      SCGC5_PORTE_Field_1)
     with Size => 1;
   for SCGC5_PORTE_Field use
     (SCGC5_PORTE_Field_0 => 0,
      SCGC5_PORTE_Field_1 => 1);

   --  LPUART0 Clock Gate Control
   type SCGC5_LPUART0_Field is
     (
      --  Clock disabled
      SCGC5_LPUART0_Field_0,
      --  Clock enabled
      SCGC5_LPUART0_Field_1)
     with Size => 1;
   for SCGC5_LPUART0_Field use
     (SCGC5_LPUART0_Field_0 => 0,
      SCGC5_LPUART0_Field_1 => 1);

   --  SIM_SCGC5_LPUART array
   type SIM_SCGC5_LPUART_Field_Array is array (0 .. 1) of SCGC5_LPUART0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC5_LPUART
   type SIM_SCGC5_LPUART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPUART as a value
            Val : HAL.UInt2;
         when True =>
            --  LPUART as an array
            Arr : SIM_SCGC5_LPUART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC5_LPUART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FlexIO Module
   type SCGC5_FLEXIO_Field is
     (
      --  Clock disabled
      SCGC5_FLEXIO_Field_0,
      --  Clock enabled
      SCGC5_FLEXIO_Field_1)
     with Size => 1;
   for SCGC5_FLEXIO_Field use
     (SCGC5_FLEXIO_Field_0 => 0,
      SCGC5_FLEXIO_Field_1 => 1);

   --  System Clock Gating Control Register 5
   type SIM_SCGC5_Register is record
      --  Low Power Timer Access Control
      LPTMR          : SCGC5_LPTMR_Field := NRF_SVD.SIM.SCGC5_LPTMR_Field_0;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#C1#;
      --  Port A Clock Gate Control
      PORTA          : SCGC5_PORTA_Field := NRF_SVD.SIM.SCGC5_PORTA_Field_0;
      --  Port B Clock Gate Control
      PORTB          : SCGC5_PORTB_Field := NRF_SVD.SIM.SCGC5_PORTB_Field_0;
      --  Port C Clock Gate Control
      PORTC          : SCGC5_PORTC_Field := NRF_SVD.SIM.SCGC5_PORTC_Field_0;
      --  Port D Clock Gate Control
      PORTD          : SCGC5_PORTD_Field := NRF_SVD.SIM.SCGC5_PORTD_Field_0;
      --  Port E Clock Gate Control
      PORTE          : SCGC5_PORTE_Field := NRF_SVD.SIM.SCGC5_PORTE_Field_0;
      --  unspecified
      Reserved_14_19 : HAL.UInt6 := 16#0#;
      --  LPUART0 Clock Gate Control
      LPUART         : SIM_SCGC5_LPUART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  FlexIO Module
      FLEXIO         : SCGC5_FLEXIO_Field := NRF_SVD.SIM.SCGC5_FLEXIO_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC5_Register use record
      LPTMR          at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      PORTA          at 0 range 9 .. 9;
      PORTB          at 0 range 10 .. 10;
      PORTC          at 0 range 11 .. 11;
      PORTD          at 0 range 12 .. 12;
      PORTE          at 0 range 13 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      LPUART         at 0 range 20 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      FLEXIO         at 0 range 31 .. 31;
   end record;

   --  Flash Memory Clock Gate Control
   type SCGC6_FTF_Field is
     (
      --  Clock disabled
      SCGC6_FTF_Field_0,
      --  Clock enabled
      SCGC6_FTF_Field_1)
     with Size => 1;
   for SCGC6_FTF_Field use
     (SCGC6_FTF_Field_0 => 0,
      SCGC6_FTF_Field_1 => 1);

   --  DMA Mux Clock Gate Control
   type SCGC6_DMAMUX_Field is
     (
      --  Clock disabled
      SCGC6_DMAMUX_Field_0,
      --  Clock enabled
      SCGC6_DMAMUX_Field_1)
     with Size => 1;
   for SCGC6_DMAMUX_Field use
     (SCGC6_DMAMUX_Field_0 => 0,
      SCGC6_DMAMUX_Field_1 => 1);

   --  CRC Clock Gate Control
   type SCGC6_CRC_Field is
     (
      --  Clock disabled
      SCGC6_CRC_Field_0,
      --  Clock enabled
      SCGC6_CRC_Field_1)
     with Size => 1;
   for SCGC6_CRC_Field use
     (SCGC6_CRC_Field_0 => 0,
      SCGC6_CRC_Field_1 => 1);

   --  PIT Clock Gate Control
   type SCGC6_PIT_Field is
     (
      --  Clock disabled
      SCGC6_PIT_Field_0,
      --  Clock enabled
      SCGC6_PIT_Field_1)
     with Size => 1;
   for SCGC6_PIT_Field use
     (SCGC6_PIT_Field_0 => 0,
      SCGC6_PIT_Field_1 => 1);

   --  TPM0 Clock Gate Control
   type SCGC6_TPM0_Field is
     (
      --  Clock disabled
      SCGC6_TPM0_Field_0,
      --  Clock enabled
      SCGC6_TPM0_Field_1)
     with Size => 1;
   for SCGC6_TPM0_Field use
     (SCGC6_TPM0_Field_0 => 0,
      SCGC6_TPM0_Field_1 => 1);

   --  SIM_SCGC6_TPM array
   type SIM_SCGC6_TPM_Field_Array is array (0 .. 2) of SCGC6_TPM0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for SIM_SCGC6_TPM
   type SIM_SCGC6_TPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TPM as a value
            Val : HAL.UInt3;
         when True =>
            --  TPM as an array
            Arr : SIM_SCGC6_TPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SIM_SCGC6_TPM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  ADC0 Clock Gate Control
   type SCGC6_ADC0_Field is
     (
      --  Clock disabled
      SCGC6_ADC0_Field_0,
      --  Clock enabled
      SCGC6_ADC0_Field_1)
     with Size => 1;
   for SCGC6_ADC0_Field use
     (SCGC6_ADC0_Field_0 => 0,
      SCGC6_ADC0_Field_1 => 1);

   --  RTC Access Control
   type SCGC6_RTC_Field is
     (
      --  Access and interrupts disabled
      SCGC6_RTC_Field_0,
      --  Access and interrupts enabled
      SCGC6_RTC_Field_1)
     with Size => 1;
   for SCGC6_RTC_Field use
     (SCGC6_RTC_Field_0 => 0,
      SCGC6_RTC_Field_1 => 1);

   --  System Clock Gating Control Register 6
   type SIM_SCGC6_Register is record
      --  Flash Memory Clock Gate Control
      FTF            : SCGC6_FTF_Field := NRF_SVD.SIM.SCGC6_FTF_Field_1;
      --  DMA Mux Clock Gate Control
      DMAMUX         : SCGC6_DMAMUX_Field := NRF_SVD.SIM.SCGC6_DMAMUX_Field_0;
      --  unspecified
      Reserved_2_17  : HAL.UInt16 := 16#0#;
      --  CRC Clock Gate Control
      CRC            : SCGC6_CRC_Field := NRF_SVD.SIM.SCGC6_CRC_Field_0;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  PIT Clock Gate Control
      PIT            : SCGC6_PIT_Field := NRF_SVD.SIM.SCGC6_PIT_Field_0;
      --  TPM0 Clock Gate Control
      TPM            : SIM_SCGC6_TPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 Clock Gate Control
      ADC0           : SCGC6_ADC0_Field := NRF_SVD.SIM.SCGC6_ADC0_Field_0;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  RTC Access Control
      RTC            : SCGC6_RTC_Field := NRF_SVD.SIM.SCGC6_RTC_Field_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC6_Register use record
      FTF            at 0 range 0 .. 0;
      DMAMUX         at 0 range 1 .. 1;
      Reserved_2_17  at 0 range 2 .. 17;
      CRC            at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      PIT            at 0 range 23 .. 23;
      TPM            at 0 range 24 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      RTC            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  DMA Clock Gate Control
   type SCGC7_DMA_Field is
     (
      --  Clock disabled
      SCGC7_DMA_Field_0,
      --  Clock enabled
      SCGC7_DMA_Field_1)
     with Size => 1;
   for SCGC7_DMA_Field use
     (SCGC7_DMA_Field_0 => 0,
      SCGC7_DMA_Field_1 => 1);

   --  System Clock Gating Control Register 7
   type SIM_SCGC7_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  DMA Clock Gate Control
      DMA           : SCGC7_DMA_Field := NRF_SVD.SIM.SCGC7_DMA_Field_1;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC7_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      DMA           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Clock 4 Output Divider value
   type CLKDIV1_OUTDIV4_Field is
     (
      --  Divide-by-1.
      CLKDIV1_OUTDIV4_Field_000,
      --  Divide-by-2.
      CLKDIV1_OUTDIV4_Field_001,
      --  Divide-by-3.
      CLKDIV1_OUTDIV4_Field_010,
      --  Divide-by-4.
      CLKDIV1_OUTDIV4_Field_011,
      --  Divide-by-5.
      CLKDIV1_OUTDIV4_Field_100,
      --  Divide-by-6.
      CLKDIV1_OUTDIV4_Field_101,
      --  Divide-by-7.
      CLKDIV1_OUTDIV4_Field_110,
      --  Divide-by-8.
      CLKDIV1_OUTDIV4_Field_111)
     with Size => 3;
   for CLKDIV1_OUTDIV4_Field use
     (CLKDIV1_OUTDIV4_Field_000 => 0,
      CLKDIV1_OUTDIV4_Field_001 => 1,
      CLKDIV1_OUTDIV4_Field_010 => 2,
      CLKDIV1_OUTDIV4_Field_011 => 3,
      CLKDIV1_OUTDIV4_Field_100 => 4,
      CLKDIV1_OUTDIV4_Field_101 => 5,
      CLKDIV1_OUTDIV4_Field_110 => 6,
      CLKDIV1_OUTDIV4_Field_111 => 7);

   --  Clock 1 Output Divider value
   type CLKDIV1_OUTDIV1_Field is
     (
      --  Divide-by-1.
      CLKDIV1_OUTDIV1_Field_0000,
      --  Divide-by-2.
      CLKDIV1_OUTDIV1_Field_0001,
      --  Divide-by-3.
      CLKDIV1_OUTDIV1_Field_0010,
      --  Divide-by-4.
      CLKDIV1_OUTDIV1_Field_0011,
      --  Divide-by-5.
      CLKDIV1_OUTDIV1_Field_0100,
      --  Divide-by-6.
      CLKDIV1_OUTDIV1_Field_0101,
      --  Divide-by-7.
      CLKDIV1_OUTDIV1_Field_0110,
      --  Divide-by-8.
      CLKDIV1_OUTDIV1_Field_0111,
      --  Divide-by-9.
      CLKDIV1_OUTDIV1_Field_1000,
      --  Divide-by-10.
      CLKDIV1_OUTDIV1_Field_1001,
      --  Divide-by-11.
      CLKDIV1_OUTDIV1_Field_1010,
      --  Divide-by-12.
      CLKDIV1_OUTDIV1_Field_1011,
      --  Divide-by-13.
      CLKDIV1_OUTDIV1_Field_1100,
      --  Divide-by-14.
      CLKDIV1_OUTDIV1_Field_1101,
      --  Divide-by-15.
      CLKDIV1_OUTDIV1_Field_1110,
      --  Divide-by-16.
      CLKDIV1_OUTDIV1_Field_1111)
     with Size => 4;
   for CLKDIV1_OUTDIV1_Field use
     (CLKDIV1_OUTDIV1_Field_0000 => 0,
      CLKDIV1_OUTDIV1_Field_0001 => 1,
      CLKDIV1_OUTDIV1_Field_0010 => 2,
      CLKDIV1_OUTDIV1_Field_0011 => 3,
      CLKDIV1_OUTDIV1_Field_0100 => 4,
      CLKDIV1_OUTDIV1_Field_0101 => 5,
      CLKDIV1_OUTDIV1_Field_0110 => 6,
      CLKDIV1_OUTDIV1_Field_0111 => 7,
      CLKDIV1_OUTDIV1_Field_1000 => 8,
      CLKDIV1_OUTDIV1_Field_1001 => 9,
      CLKDIV1_OUTDIV1_Field_1010 => 10,
      CLKDIV1_OUTDIV1_Field_1011 => 11,
      CLKDIV1_OUTDIV1_Field_1100 => 12,
      CLKDIV1_OUTDIV1_Field_1101 => 13,
      CLKDIV1_OUTDIV1_Field_1110 => 14,
      CLKDIV1_OUTDIV1_Field_1111 => 15);

   --  System Clock Divider Register 1
   type SIM_CLKDIV1_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Clock 4 Output Divider value
      OUTDIV4        : CLKDIV1_OUTDIV4_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV4_Field_001;
      --  unspecified
      Reserved_19_27 : HAL.UInt9 := 16#0#;
      --  Clock 1 Output Divider value
      OUTDIV1        : CLKDIV1_OUTDIV1_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV1_Field_0000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV1_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OUTDIV4        at 0 range 16 .. 18;
      Reserved_19_27 at 0 range 19 .. 27;
      OUTDIV1        at 0 range 28 .. 31;
   end record;

   --  Flash Disable
   type FCFG1_FLASHDIS_Field is
     (
      --  Flash is enabled.
      FCFG1_FLASHDIS_Field_0,
      --  Flash is disabled.
      FCFG1_FLASHDIS_Field_1)
     with Size => 1;
   for FCFG1_FLASHDIS_Field use
     (FCFG1_FLASHDIS_Field_0 => 0,
      FCFG1_FLASHDIS_Field_1 => 1);

   --  Flash Doze
   type FCFG1_FLASHDOZE_Field is
     (
      --  Flash remains enabled during Doze mode.
      FCFG1_FLASHDOZE_Field_0,
      --  Flash is disabled for the duration of Doze mode.
      FCFG1_FLASHDOZE_Field_1)
     with Size => 1;
   for FCFG1_FLASHDOZE_Field use
     (FCFG1_FLASHDOZE_Field_0 => 0,
      FCFG1_FLASHDOZE_Field_1 => 1);

   --  Program Flash Size
   type FCFG1_PFSIZE_Field is
     (
      --  8 KB of program flash memory, 1 KB protection region
      FCFG1_PFSIZE_Field_0000,
      --  16 KB of program flash memory, 1 KB protection region
      FCFG1_PFSIZE_Field_0001,
      --  32 KB of program flash memory, 1 KB protection region
      FCFG1_PFSIZE_Field_0011,
      --  64 KB of program flash memory, 2 KB protection region
      FCFG1_PFSIZE_Field_0101,
      --  128 KB of program flash memory, 4 KB protection region
      FCFG1_PFSIZE_Field_0111,
      --  256 KB of program flash memory, 8 KB protection region
      FCFG1_PFSIZE_Field_1001,
      --  64 KB of program flash memory, 2 KB protection region
      FCFG1_PFSIZE_Field_1111)
     with Size => 4;
   for FCFG1_PFSIZE_Field use
     (FCFG1_PFSIZE_Field_0000 => 0,
      FCFG1_PFSIZE_Field_0001 => 1,
      FCFG1_PFSIZE_Field_0011 => 3,
      FCFG1_PFSIZE_Field_0101 => 5,
      FCFG1_PFSIZE_Field_0111 => 7,
      FCFG1_PFSIZE_Field_1001 => 9,
      FCFG1_PFSIZE_Field_1111 => 15);

   --  Flash Configuration Register 1
   type SIM_FCFG1_Register is record
      --  Flash Disable
      FLASHDIS       : FCFG1_FLASHDIS_Field :=
                        NRF_SVD.SIM.FCFG1_FLASHDIS_Field_0;
      --  Flash Doze
      FLASHDOZE      : FCFG1_FLASHDOZE_Field :=
                        NRF_SVD.SIM.FCFG1_FLASHDOZE_Field_0;
      --  unspecified
      Reserved_2_23  : HAL.UInt22 := 16#0#;
      --  Read-only. Program Flash Size
      PFSIZE         : FCFG1_PFSIZE_Field :=
                        NRF_SVD.SIM.FCFG1_PFSIZE_Field_1111;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FCFG1_Register use record
      FLASHDIS       at 0 range 0 .. 0;
      FLASHDOZE      at 0 range 1 .. 1;
      Reserved_2_23  at 0 range 2 .. 23;
      PFSIZE         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SIM_FCFG2_MAXADDR0_Field is HAL.UInt7;

   --  Flash Configuration Register 2
   type SIM_FCFG2_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24;
      --  Read-only. Max Address lock
      MAXADDR0       : SIM_FCFG2_MAXADDR0_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FCFG2_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      MAXADDR0       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SIM_UIDMH_UID_Field is HAL.UInt16;

   --  Unique Identification Register Mid-High
   type SIM_UIDMH_Register is record
      --  Read-only. Unique Identification
      UID            : SIM_UIDMH_UID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_UIDMH_Register use record
      UID            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  COP Windowed Mode
   type COPC_COPW_Field is
     (
      --  Normal mode
      COPC_COPW_Field_0,
      --  Windowed mode
      COPC_COPW_Field_1)
     with Size => 1;
   for COPC_COPW_Field use
     (COPC_COPW_Field_0 => 0,
      COPC_COPW_Field_1 => 1);

   --  COP Clock Select
   type COPC_COPCLKS_Field is
     (
      --  COP configured for short timeout
      COPC_COPCLKS_Field_0,
      --  COP configured for long timeout
      COPC_COPCLKS_Field_1)
     with Size => 1;
   for COPC_COPCLKS_Field use
     (COPC_COPCLKS_Field_0 => 0,
      COPC_COPCLKS_Field_1 => 1);

   --  COP Watchdog Timeout
   type COPC_COPT_Field is
     (
      --  COP disabled
      COPC_COPT_Field_00,
      --  COP timeout after 25 cycles for short timeout or 213 cycles for long
      --  timeout
      COPC_COPT_Field_01,
      --  COP timeout after 28 cycles for short timeout or 216 cycles for long
      --  timeout
      COPC_COPT_Field_10,
      --  COP timeout after 210 cycles for short timeout or 218 cycles for long
      --  timeout
      COPC_COPT_Field_11)
     with Size => 2;
   for COPC_COPT_Field use
     (COPC_COPT_Field_00 => 0,
      COPC_COPT_Field_01 => 1,
      COPC_COPT_Field_10 => 2,
      COPC_COPT_Field_11 => 3);

   --  COP Stop Enable
   type COPC_COPSTPEN_Field is
     (
      --  COP is disabled and the counter is reset in Stop modes
      COPC_COPSTPEN_Field_0,
      --  COP is enabled in Stop modes
      COPC_COPSTPEN_Field_1)
     with Size => 1;
   for COPC_COPSTPEN_Field use
     (COPC_COPSTPEN_Field_0 => 0,
      COPC_COPSTPEN_Field_1 => 1);

   --  COP Debug Enable
   type COPC_COPDBGEN_Field is
     (
      --  COP is disabled and the counter is reset in Debug mode
      COPC_COPDBGEN_Field_0,
      --  COP is enabled in Debug mode
      COPC_COPDBGEN_Field_1)
     with Size => 1;
   for COPC_COPDBGEN_Field use
     (COPC_COPDBGEN_Field_0 => 0,
      COPC_COPDBGEN_Field_1 => 1);

   --  COP Clock Select
   type COPC_COPCLKSEL_Field is
     (
      --  LPO clock (1 kHz)
      COPC_COPCLKSEL_Field_00,
      --  MCGIRCLK
      COPC_COPCLKSEL_Field_01,
      --  OSCERCLK
      COPC_COPCLKSEL_Field_10,
      --  Bus clock
      COPC_COPCLKSEL_Field_11)
     with Size => 2;
   for COPC_COPCLKSEL_Field use
     (COPC_COPCLKSEL_Field_00 => 0,
      COPC_COPCLKSEL_Field_01 => 1,
      COPC_COPCLKSEL_Field_10 => 2,
      COPC_COPCLKSEL_Field_11 => 3);

   --  COP Control Register
   type SIM_COPC_Register is record
      --  COP Windowed Mode
      COPW          : COPC_COPW_Field := NRF_SVD.SIM.COPC_COPW_Field_0;
      --  COP Clock Select
      COPCLKS       : COPC_COPCLKS_Field := NRF_SVD.SIM.COPC_COPCLKS_Field_0;
      --  COP Watchdog Timeout
      COPT          : COPC_COPT_Field := NRF_SVD.SIM.COPC_COPT_Field_11;
      --  COP Stop Enable
      COPSTPEN      : COPC_COPSTPEN_Field :=
                       NRF_SVD.SIM.COPC_COPSTPEN_Field_0;
      --  COP Debug Enable
      COPDBGEN      : COPC_COPDBGEN_Field :=
                       NRF_SVD.SIM.COPC_COPDBGEN_Field_0;
      --  COP Clock Select
      COPCLKSEL     : COPC_COPCLKSEL_Field :=
                       NRF_SVD.SIM.COPC_COPCLKSEL_Field_00;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_COPC_Register use record
      COPW          at 0 range 0 .. 0;
      COPCLKS       at 0 range 1 .. 1;
      COPT          at 0 range 2 .. 3;
      COPSTPEN      at 0 range 4 .. 4;
      COPDBGEN      at 0 range 5 .. 5;
      COPCLKSEL     at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SIM_SRVCOP_SRVCOP_Field is HAL.UInt8;

   --  Service COP
   type SIM_SRVCOP_Register is record
      --  Write-only. Service COP Register
      SRVCOP        : SIM_SRVCOP_SRVCOP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SRVCOP_Register use record
      SRVCOP        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  System Options Register 1
      SOPT1   : aliased SIM_SOPT1_Register;
      --  System Options Register 2
      SOPT2   : aliased SIM_SOPT2_Register;
      --  System Options Register 4
      SOPT4   : aliased SIM_SOPT4_Register;
      --  System Options Register 5
      SOPT5   : aliased SIM_SOPT5_Register;
      --  System Options Register 7
      SOPT7   : aliased SIM_SOPT7_Register;
      --  System Device Identification Register
      SDID    : aliased SIM_SDID_Register;
      --  System Clock Gating Control Register 4
      SCGC4   : aliased SIM_SCGC4_Register;
      --  System Clock Gating Control Register 5
      SCGC5   : aliased SIM_SCGC5_Register;
      --  System Clock Gating Control Register 6
      SCGC6   : aliased SIM_SCGC6_Register;
      --  System Clock Gating Control Register 7
      SCGC7   : aliased SIM_SCGC7_Register;
      --  System Clock Divider Register 1
      CLKDIV1 : aliased SIM_CLKDIV1_Register;
      --  Flash Configuration Register 1
      FCFG1   : aliased SIM_FCFG1_Register;
      --  Flash Configuration Register 2
      FCFG2   : aliased SIM_FCFG2_Register;
      --  Unique Identification Register Mid-High
      UIDMH   : aliased SIM_UIDMH_Register;
      --  Unique Identification Register Mid Low
      UIDML   : aliased HAL.UInt32;
      --  Unique Identification Register Low
      UIDL    : aliased HAL.UInt32;
      --  COP Control Register
      COPC    : aliased SIM_COPC_Register;
      --  Service COP
      SRVCOP  : aliased SIM_SRVCOP_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SOPT1   at 16#0# range 0 .. 31;
      SOPT2   at 16#1004# range 0 .. 31;
      SOPT4   at 16#100C# range 0 .. 31;
      SOPT5   at 16#1010# range 0 .. 31;
      SOPT7   at 16#1018# range 0 .. 31;
      SDID    at 16#1024# range 0 .. 31;
      SCGC4   at 16#1034# range 0 .. 31;
      SCGC5   at 16#1038# range 0 .. 31;
      SCGC6   at 16#103C# range 0 .. 31;
      SCGC7   at 16#1040# range 0 .. 31;
      CLKDIV1 at 16#1044# range 0 .. 31;
      FCFG1   at 16#104C# range 0 .. 31;
      FCFG2   at 16#1050# range 0 .. 31;
      UIDMH   at 16#1058# range 0 .. 31;
      UIDML   at 16#105C# range 0 .. 31;
      UIDL    at 16#1060# range 0 .. 31;
      COPC    at 16#1100# range 0 .. 31;
      SRVCOP  at 16#1104# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
