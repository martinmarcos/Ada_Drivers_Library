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

--  This spec has been automatically generated from MKL82Z7.xml

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

   --  System RAM Size
   type SOPT1_RAMSIZE_Field is
     (
      --  Reset value for the field
      Sopt1_Ramsize_Field_Reset,
      --  8 KB
      SOPT1_RAMSIZE_Field_0001,
      --  16 KB
      SOPT1_RAMSIZE_Field_0011,
      --  24 KB
      SOPT1_RAMSIZE_Field_0100,
      --  32 KB
      SOPT1_RAMSIZE_Field_0101,
      --  48 KB
      SOPT1_RAMSIZE_Field_0110,
      --  64 KB
      SOPT1_RAMSIZE_Field_0111,
      --  96 KB
      SOPT1_RAMSIZE_Field_1000,
      --  128 KB
      SOPT1_RAMSIZE_Field_1001,
      --  256 KB
      SOPT1_RAMSIZE_Field_1011)
     with Size => 4;
   for SOPT1_RAMSIZE_Field use
     (Sopt1_Ramsize_Field_Reset => 0,
      SOPT1_RAMSIZE_Field_0001 => 1,
      SOPT1_RAMSIZE_Field_0011 => 3,
      SOPT1_RAMSIZE_Field_0100 => 4,
      SOPT1_RAMSIZE_Field_0101 => 5,
      SOPT1_RAMSIZE_Field_0110 => 6,
      SOPT1_RAMSIZE_Field_0111 => 7,
      SOPT1_RAMSIZE_Field_1000 => 8,
      SOPT1_RAMSIZE_Field_1001 => 9,
      SOPT1_RAMSIZE_Field_1011 => 11);

   --  32K Oscillator Clock Select
   type SOPT1_OSC32KSEL_Field is
     (
      --  System oscillator (OSC32KCLK)
      SOPT1_OSC32KSEL_Field_00,
      --  RTC oscillator
      SOPT1_OSC32KSEL_Field_10,
      --  LPO 1 kHz
      SOPT1_OSC32KSEL_Field_11)
     with Size => 2;
   for SOPT1_OSC32KSEL_Field use
     (SOPT1_OSC32KSEL_Field_00 => 0,
      SOPT1_OSC32KSEL_Field_10 => 2,
      SOPT1_OSC32KSEL_Field_11 => 3);

   --  System Options Register 1
   type SIM_SOPT1_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Read-only. System RAM Size
      RAMSIZE        : SOPT1_RAMSIZE_Field := Sopt1_Ramsize_Field_Reset;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  32K Oscillator Clock Select
      OSC32KSEL      : SOPT1_OSC32KSEL_Field :=
                        NRF_SVD.SIM.SOPT1_OSC32KSEL_Field_00;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT1_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMSIZE        at 0 range 12 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      OSC32KSEL      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RTC clock out select
   type SOPT2_RTCCLKOUTS_Field is
     (
      --  RTC 1 Hz clock is output on the RTC_CLKOUT pin.
      SOPT2_RTCCLKOUTS_Field_0,
      --  RTC 32.768kHz clock is output on the RTC_CLKOUT pin.
      SOPT2_RTCCLKOUTS_Field_1)
     with Size => 1;
   for SOPT2_RTCCLKOUTS_Field use
     (SOPT2_RTCCLKOUTS_Field_0 => 0,
      SOPT2_RTCCLKOUTS_Field_1 => 1);

   --  CLKOUT select
   type SOPT2_CLKOUT_Field is
     (
      --  Reset value for the field
      Sopt2_Clkout_Field_Reset,
      --  Flash clock
      SOPT2_CLKOUT_Field_010,
      --  LPO clock (1 kHz)
      SOPT2_CLKOUT_Field_011,
      --  MCGIRCLK
      SOPT2_CLKOUT_Field_100,
      --  RTC 32.768kHz clock
      SOPT2_CLKOUT_Field_101,
      --  OSCERCLK0
      SOPT2_CLKOUT_Field_110,
      --  IRC 48 MHz clock
      SOPT2_CLKOUT_Field_111)
     with Size => 3;
   for SOPT2_CLKOUT_Field use
     (Sopt2_Clkout_Field_Reset => 0,
      SOPT2_CLKOUT_Field_010 => 2,
      SOPT2_CLKOUT_Field_011 => 3,
      SOPT2_CLKOUT_Field_100 => 4,
      SOPT2_CLKOUT_Field_101 => 5,
      SOPT2_CLKOUT_Field_110 => 6,
      SOPT2_CLKOUT_Field_111 => 7);

   --  PLL/FLL clock select
   type SOPT2_PLLFLLSEL_Field is
     (
      --  MCGFLLCLK clock
      SOPT2_PLLFLLSEL_Field_00,
      --  MCGPLLCLK clock
      SOPT2_PLLFLLSEL_Field_01,
      --  IRC48 MHz clock
      SOPT2_PLLFLLSEL_Field_11)
     with Size => 2;
   for SOPT2_PLLFLLSEL_Field use
     (SOPT2_PLLFLLSEL_Field_00 => 0,
      SOPT2_PLLFLLSEL_Field_01 => 1,
      SOPT2_PLLFLLSEL_Field_11 => 3);

   --  USB clock source select
   type SOPT2_USBSRC_Field is
     (
      --  External bypass clock (USB_CLKIN).
      SOPT2_USBSRC_Field_0,
      --  MCGFLLCLK, or MCGPLLCLK, or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the USB fractional divider as
      --  configured by SIM_CLKDIV2[USBFRAC, USBDIV].
      SOPT2_USBSRC_Field_1)
     with Size => 1;
   for SOPT2_USBSRC_Field use
     (SOPT2_USBSRC_Field_0 => 0,
      SOPT2_USBSRC_Field_1 => 1);

   --  FlexIO Module Clock Source Select
   type SOPT2_FLEXIOSRC_Field is
     (
      --  System clock
      SOPT2_FLEXIOSRC_Field_00,
      --  MCGFLLCLK, or MCGPLLCLK, or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL].
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

   --  TPM clock source select
   type SOPT2_TPMSRC_Field is
     (
      --  Clock disabled
      SOPT2_TPMSRC_Field_00,
      --  MCGFLLCLK, or MCGPLLCLK, or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL].
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

   --  LPUART clock source select
   type SOPT2_LPUARTSRC_Field is
     (
      --  Clock disabled
      SOPT2_LPUARTSRC_Field_00,
      --  MCGFLLCLK ,MCGPLLCLK, or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the PLLFLLCLK fractional
      --  divider as configured by SIM_CLKDIV3[PLLFLLFRAC] and
      --  SIM_CLKDIV3[PLLFLLDIV].
      SOPT2_LPUARTSRC_Field_01,
      --  OSCERCLK clock
      SOPT2_LPUARTSRC_Field_10,
      --  MCGIRCLK clock
      SOPT2_LPUARTSRC_Field_11)
     with Size => 2;
   for SOPT2_LPUARTSRC_Field use
     (SOPT2_LPUARTSRC_Field_00 => 0,
      SOPT2_LPUARTSRC_Field_01 => 1,
      SOPT2_LPUARTSRC_Field_10 => 2,
      SOPT2_LPUARTSRC_Field_11 => 3);

   --  EMVSIM Module Clock Source Select
   type SOPT2_EMVSIMSRC_Field is
     (
      --  Clock disabled
      SOPT2_EMVSIMSRC_Field_00,
      --  MCGFLLCLK ,MCGPLLCLK, or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the PLLFLLCLK fractional
      --  divider as configured by SIM_CLKDIV3[PLLFLLFRAC] and
      --  SIM_CLKDIV3[PLLFLLDIV].
      SOPT2_EMVSIMSRC_Field_01,
      --  OSCERCLK clock
      SOPT2_EMVSIMSRC_Field_10,
      --  MCGIRCLK clock
      SOPT2_EMVSIMSRC_Field_11)
     with Size => 2;
   for SOPT2_EMVSIMSRC_Field use
     (SOPT2_EMVSIMSRC_Field_00 => 0,
      SOPT2_EMVSIMSRC_Field_01 => 1,
      SOPT2_EMVSIMSRC_Field_10 => 2,
      SOPT2_EMVSIMSRC_Field_11 => 3);

   --  System Options Register 2
   type SIM_SOPT2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  RTC clock out select
      RTCCLKOUTS     : SOPT2_RTCCLKOUTS_Field :=
                        NRF_SVD.SIM.SOPT2_RTCCLKOUTS_Field_0;
      --  CLKOUT select
      CLKOUT         : SOPT2_CLKOUT_Field := Sopt2_Clkout_Field_Reset;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  PLL/FLL clock select
      PLLFLLSEL      : SOPT2_PLLFLLSEL_Field :=
                        NRF_SVD.SIM.SOPT2_PLLFLLSEL_Field_00;
      --  USB clock source select
      USBSRC         : SOPT2_USBSRC_Field := NRF_SVD.SIM.SOPT2_USBSRC_Field_0;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  FlexIO Module Clock Source Select
      FLEXIOSRC      : SOPT2_FLEXIOSRC_Field :=
                        NRF_SVD.SIM.SOPT2_FLEXIOSRC_Field_00;
      --  TPM clock source select
      TPMSRC         : SOPT2_TPMSRC_Field :=
                        NRF_SVD.SIM.SOPT2_TPMSRC_Field_00;
      --  LPUART clock source select
      LPUARTSRC      : SOPT2_LPUARTSRC_Field :=
                        NRF_SVD.SIM.SOPT2_LPUARTSRC_Field_00;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  EMVSIM Module Clock Source Select
      EMVSIMSRC      : SOPT2_EMVSIMSRC_Field :=
                        NRF_SVD.SIM.SOPT2_EMVSIMSRC_Field_00;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RTCCLKOUTS     at 0 range 4 .. 4;
      CLKOUT         at 0 range 5 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PLLFLLSEL      at 0 range 16 .. 17;
      USBSRC         at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      FLEXIOSRC      at 0 range 22 .. 23;
      TPMSRC         at 0 range 24 .. 25;
      LPUARTSRC      at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EMVSIMSRC      at 0 range 30 .. 31;
   end record;

   --  LPUART0 transmit data source select
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

   --  LPUART 0 receive data source select
   type SOPT5_LPUART0RXSRC_Field is
     (
      --  LPUART0_RX pin
      SOPT5_LPUART0RXSRC_Field_00,
      --  CMP0
      SOPT5_LPUART0RXSRC_Field_01)
     with Size => 2;
   for SOPT5_LPUART0RXSRC_Field use
     (SOPT5_LPUART0RXSRC_Field_00 => 0,
      SOPT5_LPUART0RXSRC_Field_01 => 1);

   --  LPUART1 transmit data source select
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

   --  LPUART1 receive data source select
   type SOPT5_LPUART1RXSRC_Field is
     (
      --  LPUART1_RX pin
      SOPT5_LPUART1RXSRC_Field_00,
      --  CMP0
      SOPT5_LPUART1RXSRC_Field_01)
     with Size => 2;
   for SOPT5_LPUART1RXSRC_Field use
     (SOPT5_LPUART1RXSRC_Field_00 => 0,
      SOPT5_LPUART1RXSRC_Field_01 => 1);

   --  System Options Register 5
   type SIM_SOPT5_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  LPUART0 transmit data source select
      LPUART0TXSRC   : SOPT5_LPUART0TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0TXSRC_Field_00;
      --  LPUART 0 receive data source select
      LPUART0RXSRC   : SOPT5_LPUART0RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0RXSRC_Field_00;
      --  LPUART1 transmit data source select
      LPUART1TXSRC   : SOPT5_LPUART1TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART1TXSRC_Field_00;
      --  LPUART1 receive data source select
      LPUART1RXSRC   : SOPT5_LPUART1RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART1RXSRC_Field_00;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT5_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      LPUART0TXSRC   at 0 range 16 .. 17;
      LPUART0RXSRC   at 0 range 18 .. 19;
      LPUART1TXSRC   at 0 range 20 .. 21;
      LPUART1RXSRC   at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  ADC0 trigger select
   type SOPT7_ADC0TRGSEL_Field is
     (
      --  External trigger pin input (EXTRG)
      SOPT7_ADC0TRGSEL_Field_0000,
      --  High speed comparator 0 output
      SOPT7_ADC0TRGSEL_Field_0001,
      --  PIT trigger 0
      SOPT7_ADC0TRGSEL_Field_0100,
      --  PIT trigger 1
      SOPT7_ADC0TRGSEL_Field_0101,
      --  PIT trigger 2
      SOPT7_ADC0TRGSEL_Field_0110,
      --  PIT trigger 3
      SOPT7_ADC0TRGSEL_Field_0111,
      --  TPM0 trigger
      SOPT7_ADC0TRGSEL_Field_1000,
      --  TPM1 trigger
      SOPT7_ADC0TRGSEL_Field_1001,
      --  TPM2 trigger
      SOPT7_ADC0TRGSEL_Field_1010,
      --  Low-power timer1 (LPTMR1) trigger
      SOPT7_ADC0TRGSEL_Field_1011,
      --  RTC alarm
      SOPT7_ADC0TRGSEL_Field_1100,
      --  RTC seconds
      SOPT7_ADC0TRGSEL_Field_1101,
      --  Low-power timer (LPTMR) trigger
      SOPT7_ADC0TRGSEL_Field_1110,
      --  TPM1 channel 0 (A pretrigger) and channel 1 (B pretrigger)
      SOPT7_ADC0TRGSEL_Field_1111)
     with Size => 4;
   for SOPT7_ADC0TRGSEL_Field use
     (SOPT7_ADC0TRGSEL_Field_0000 => 0,
      SOPT7_ADC0TRGSEL_Field_0001 => 1,
      SOPT7_ADC0TRGSEL_Field_0100 => 4,
      SOPT7_ADC0TRGSEL_Field_0101 => 5,
      SOPT7_ADC0TRGSEL_Field_0110 => 6,
      SOPT7_ADC0TRGSEL_Field_0111 => 7,
      SOPT7_ADC0TRGSEL_Field_1000 => 8,
      SOPT7_ADC0TRGSEL_Field_1001 => 9,
      SOPT7_ADC0TRGSEL_Field_1010 => 10,
      SOPT7_ADC0TRGSEL_Field_1011 => 11,
      SOPT7_ADC0TRGSEL_Field_1100 => 12,
      SOPT7_ADC0TRGSEL_Field_1101 => 13,
      SOPT7_ADC0TRGSEL_Field_1110 => 14,
      SOPT7_ADC0TRGSEL_Field_1111 => 15);

   --  ADC0 pretrigger select
   type SOPT7_ADC0PRETRGSEL_Field is
     (
      --  Pre-trigger A
      SOPT7_ADC0PRETRGSEL_Field_0,
      --  Pre-trigger B
      SOPT7_ADC0PRETRGSEL_Field_1)
     with Size => 1;
   for SOPT7_ADC0PRETRGSEL_Field use
     (SOPT7_ADC0PRETRGSEL_Field_0 => 0,
      SOPT7_ADC0PRETRGSEL_Field_1 => 1);

   --  System Options Register 7
   type SIM_SOPT7_Register is record
      --  ADC0 trigger select
      ADC0TRGSEL    : SOPT7_ADC0TRGSEL_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0TRGSEL_Field_0000;
      --  ADC0 pretrigger select
      ADC0PRETRGSEL : SOPT7_ADC0PRETRGSEL_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0PRETRGSEL_Field_0;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT7_Register use record
      ADC0TRGSEL    at 0 range 0 .. 3;
      ADC0PRETRGSEL at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  TPM1 channel 0 input capture source select
   type SOPT9_TPM1CH0SRC_Field is
     (
      --  TPM1_CH0 signal
      SOPT9_TPM1CH0SRC_Field_00,
      --  CMP0 output
      SOPT9_TPM1CH0SRC_Field_01)
     with Size => 2;
   for SOPT9_TPM1CH0SRC_Field use
     (SOPT9_TPM1CH0SRC_Field_00 => 0,
      SOPT9_TPM1CH0SRC_Field_01 => 1);

   --  TPM2 channel 0 input capture source select
   type SOPT9_TPM2CH0SRC_Field is
     (
      --  TPM2_CH0 signal
      SOPT9_TPM2CH0SRC_Field_00,
      --  CMP0 output
      SOPT9_TPM2CH0SRC_Field_01)
     with Size => 2;
   for SOPT9_TPM2CH0SRC_Field use
     (SOPT9_TPM2CH0SRC_Field_00 => 0,
      SOPT9_TPM2CH0SRC_Field_01 => 1);

   --  TPM0 External Clock Pin Select
   type SOPT9_TPM0CLKSEL_Field is
     (
      --  TPM_CLKIN0 pin
      SOPT9_TPM0CLKSEL_Field_0,
      --  TPM_CLKIN1 pin
      SOPT9_TPM0CLKSEL_Field_1)
     with Size => 1;
   for SOPT9_TPM0CLKSEL_Field use
     (SOPT9_TPM0CLKSEL_Field_0 => 0,
      SOPT9_TPM0CLKSEL_Field_1 => 1);

   --  TPM1 External Clock Pin Select
   type SOPT9_TPM1CLKSEL_Field is
     (
      --  TPM_CLKIN0 pin
      SOPT9_TPM1CLKSEL_Field_0,
      --  TPM_CLKIN1 pin
      SOPT9_TPM1CLKSEL_Field_1)
     with Size => 1;
   for SOPT9_TPM1CLKSEL_Field use
     (SOPT9_TPM1CLKSEL_Field_0 => 0,
      SOPT9_TPM1CLKSEL_Field_1 => 1);

   --  TPM2 External Clock Pin Select
   type SOPT9_TPM2CLKSEL_Field is
     (
      --  TPM_CLKIN0 pin
      SOPT9_TPM2CLKSEL_Field_0,
      --  TPM_CLKIN1 pin
      SOPT9_TPM2CLKSEL_Field_1)
     with Size => 1;
   for SOPT9_TPM2CLKSEL_Field use
     (SOPT9_TPM2CLKSEL_Field_0 => 0,
      SOPT9_TPM2CLKSEL_Field_1 => 1);

   --  System Options Register 9
   type SIM_SOPT9_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  TPM1 channel 0 input capture source select
      TPM1CH0SRC     : SOPT9_TPM1CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT9_TPM1CH0SRC_Field_00;
      --  TPM2 channel 0 input capture source select
      TPM2CH0SRC     : SOPT9_TPM2CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT9_TPM2CH0SRC_Field_00;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  TPM0 External Clock Pin Select
      TPM0CLKSEL     : SOPT9_TPM0CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT9_TPM0CLKSEL_Field_0;
      --  TPM1 External Clock Pin Select
      TPM1CLKSEL     : SOPT9_TPM1CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT9_TPM1CLKSEL_Field_0;
      --  TPM2 External Clock Pin Select
      TPM2CLKSEL     : SOPT9_TPM2CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT9_TPM2CLKSEL_Field_0;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT9_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      TPM1CH0SRC     at 0 range 18 .. 19;
      TPM2CH0SRC     at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TPM0CLKSEL     at 0 range 24 .. 24;
      TPM1CLKSEL     at 0 range 25 .. 25;
      TPM2CLKSEL     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Pincount identification
   type SDID_PINID_Field is
     (
      --  64-pin
      SDID_PINID_Field_0101,
      --  80-pin
      SDID_PINID_Field_0110,
      --  100-pin
      SDID_PINID_Field_1000,
      --  121-pin
      SDID_PINID_Field_1001,
      --  Custom pinout (WLCSP)
      SDID_PINID_Field_1011)
     with Size => 4;
   for SDID_PINID_Field use
     (SDID_PINID_Field_0101 => 5,
      SDID_PINID_Field_0110 => 6,
      SDID_PINID_Field_1000 => 8,
      SDID_PINID_Field_1001 => 9,
      SDID_PINID_Field_1011 => 11);

   subtype SIM_SDID_FAMID_Field is HAL.UInt3;
   subtype SIM_SDID_DIEID_Field is HAL.UInt5;
   subtype SIM_SDID_REVID_Field is HAL.UInt4;

   --  Kinetis Sub-Family ID
   type SDID_SUBFAMID_Field is
     (
      --  KLx0 Subfamily
      SDID_SUBFAMID_Field_0000,
      --  KLx1 Subfamily
      SDID_SUBFAMID_Field_0001,
      --  KLx2 Subfamily
      SDID_SUBFAMID_Field_0010,
      --  KLx3 Subfamily
      SDID_SUBFAMID_Field_0011,
      --  KLx4 Subfamily
      SDID_SUBFAMID_Field_0100,
      --  KLx5 Subfamily
      SDID_SUBFAMID_Field_0101,
      --  KLx6 Subfamily
      SDID_SUBFAMID_Field_0110,
      --  KLx7 Subfamily
      SDID_SUBFAMID_Field_0111,
      --  KLx8 Subfamily
      SDID_SUBFAMID_Field_1000,
      --  KLx9 Subfamily
      SDID_SUBFAMID_Field_1001)
     with Size => 4;
   for SDID_SUBFAMID_Field use
     (SDID_SUBFAMID_Field_0000 => 0,
      SDID_SUBFAMID_Field_0001 => 1,
      SDID_SUBFAMID_Field_0010 => 2,
      SDID_SUBFAMID_Field_0011 => 3,
      SDID_SUBFAMID_Field_0100 => 4,
      SDID_SUBFAMID_Field_0101 => 5,
      SDID_SUBFAMID_Field_0110 => 6,
      SDID_SUBFAMID_Field_0111 => 7,
      SDID_SUBFAMID_Field_1000 => 8,
      SDID_SUBFAMID_Field_1001 => 9);

   --  Kinetis L family ID
   type SDID_FAMILYID_Field is
     (
      --  KL0x Family
      SDID_FAMILYID_Field_0000,
      --  KL1x Family
      SDID_FAMILYID_Field_0001,
      --  KL2x Family
      SDID_FAMILYID_Field_0010,
      --  KL3x Family)
      SDID_FAMILYID_Field_0011,
      --  KL4x Family)
      SDID_FAMILYID_Field_0100,
      --  KL6x Family
      SDID_FAMILYID_Field_0110,
      --  KL7x Family
      SDID_FAMILYID_Field_0111,
      --  KL8x Family
      SDID_FAMILYID_Field_1001)
     with Size => 4;
   for SDID_FAMILYID_Field use
     (SDID_FAMILYID_Field_0000 => 0,
      SDID_FAMILYID_Field_0001 => 1,
      SDID_FAMILYID_Field_0010 => 2,
      SDID_FAMILYID_Field_0011 => 3,
      SDID_FAMILYID_Field_0100 => 4,
      SDID_FAMILYID_Field_0110 => 6,
      SDID_FAMILYID_Field_0111 => 7,
      SDID_FAMILYID_Field_1001 => 9);

   --  System Device Identification Register
   type SIM_SDID_Register is record
      --  Read-only. Pincount identification
      PINID          : SDID_PINID_Field;
      --  Read-only. Kinetis family ID
      FAMID          : SIM_SDID_FAMID_Field;
      --  Read-only. Device die number
      DIEID          : SIM_SDID_DIEID_Field;
      --  Read-only. Device Revision Number
      REVID          : SIM_SDID_REVID_Field;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Kinetis Sub-Family ID
      SUBFAMID       : SDID_SUBFAMID_Field;
      --  Read-only. Kinetis L family ID
      FAMILYID       : SDID_FAMILYID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SDID_Register use record
      PINID          at 0 range 0 .. 3;
      FAMID          at 0 range 4 .. 6;
      DIEID          at 0 range 7 .. 11;
      REVID          at 0 range 12 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      SUBFAMID       at 0 range 24 .. 27;
      FAMILYID       at 0 range 28 .. 31;
   end record;

   --  EWM Clock Gate Control
   type SCGC4_EWM_Field is
     (
      --  Clock disabled
      SCGC4_EWM_Field_0,
      --  Clock enabled
      SCGC4_EWM_Field_1)
     with Size => 1;
   for SCGC4_EWM_Field use
     (SCGC4_EWM_Field_0 => 0,
      SCGC4_EWM_Field_1 => 1);

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

   --  USB_OTG Clock Gate Control
   type SCGC4_USBOTG_Field is
     (
      --  Clock disabled
      SCGC4_USBOTG_Field_0,
      --  Clock enabled
      SCGC4_USBOTG_Field_1)
     with Size => 1;
   for SCGC4_USBOTG_Field use
     (SCGC4_USBOTG_Field_0 => 0,
      SCGC4_USBOTG_Field_1 => 1);

   --  CMP Clock Gate Control
   type SCGC4_CMP_Field is
     (
      --  Clock disabled
      SCGC4_CMP_Field_0,
      --  Clock enabled
      SCGC4_CMP_Field_1)
     with Size => 1;
   for SCGC4_CMP_Field use
     (SCGC4_CMP_Field_0 => 0,
      SCGC4_CMP_Field_1 => 1);

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

   --  System Clock Gating Control Register 4
   type SIM_SCGC4_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  EWM Clock Gate Control
      EWM            : SCGC4_EWM_Field := NRF_SVD.SIM.SCGC4_EWM_Field_0;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#C#;
      --  I2C0 Clock Gate Control
      I2C            : SIM_SCGC4_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_17  : HAL.UInt10 := 16#0#;
      --  USB_OTG Clock Gate Control
      USBOTG         : SCGC4_USBOTG_Field := NRF_SVD.SIM.SCGC4_USBOTG_Field_0;
      --  CMP Clock Gate Control
      CMP            : SCGC4_CMP_Field := NRF_SVD.SIM.SCGC4_CMP_Field_0;
      --  VREF Clock Gate Control
      VREF           : SCGC4_VREF_Field := NRF_SVD.SIM.SCGC4_VREF_Field_1;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#780#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC4_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EWM            at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      I2C            at 0 range 6 .. 7;
      Reserved_8_17  at 0 range 8 .. 17;
      USBOTG         at 0 range 18 .. 18;
      CMP            at 0 range 19 .. 19;
      VREF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  LPTMR0 Clock Gate Control
   type SCGC5_LPTMR0_Field is
     (
      --  Clock disabled
      SCGC5_LPTMR0_Field_0,
      --  Clock enabled
      SCGC5_LPTMR0_Field_1)
     with Size => 1;
   for SCGC5_LPTMR0_Field use
     (SCGC5_LPTMR0_Field_0 => 0,
      SCGC5_LPTMR0_Field_1 => 1);

   --  SECREG Clock Gate Control
   type SCGC5_SECREG_Field is
     (
      --  Clock disabled
      SCGC5_SECREG_Field_0,
      --  Clock enabled
      SCGC5_SECREG_Field_1)
     with Size => 1;
   for SCGC5_SECREG_Field use
     (SCGC5_SECREG_Field_0 => 0,
      SCGC5_SECREG_Field_1 => 1);

   --  LPTMR1 Clock Gate Control
   type SCGC5_LPTMR1_Field is
     (
      --  Clock disabled
      SCGC5_LPTMR1_Field_0,
      --  Clock enabled
      SCGC5_LPTMR1_Field_1)
     with Size => 1;
   for SCGC5_LPTMR1_Field use
     (SCGC5_LPTMR1_Field_0 => 0,
      SCGC5_LPTMR1_Field_1 => 1);

   --  TSI Access Control
   type SCGC5_TSI_Field is
     (
      --  Access disabled
      SCGC5_TSI_Field_0,
      --  Access enabled
      SCGC5_TSI_Field_1)
     with Size => 1;
   for SCGC5_TSI_Field use
     (SCGC5_TSI_Field_0 => 0,
      SCGC5_TSI_Field_1 => 1);

   --  PTA Clock Gate Control
   type SCGC5_PTA_Field is
     (
      --  Clock disabled
      SCGC5_PTA_Field_0,
      --  Clock enabled
      SCGC5_PTA_Field_1)
     with Size => 1;
   for SCGC5_PTA_Field use
     (SCGC5_PTA_Field_0 => 0,
      SCGC5_PTA_Field_1 => 1);

   --  PTB Clock Gate Control
   type SCGC5_PTB_Field is
     (
      --  Clock disabled
      SCGC5_PTB_Field_0,
      --  Clock enabled
      SCGC5_PTB_Field_1)
     with Size => 1;
   for SCGC5_PTB_Field use
     (SCGC5_PTB_Field_0 => 0,
      SCGC5_PTB_Field_1 => 1);

   --  PTC Clock Gate Control
   type SCGC5_PTC_Field is
     (
      --  Clock disabled
      SCGC5_PTC_Field_0,
      --  Clock enabled
      SCGC5_PTC_Field_1)
     with Size => 1;
   for SCGC5_PTC_Field use
     (SCGC5_PTC_Field_0 => 0,
      SCGC5_PTC_Field_1 => 1);

   --  PTD Clock Gate Control
   type SCGC5_PTD_Field is
     (
      --  Clock disabled
      SCGC5_PTD_Field_0,
      --  Clock enabled
      SCGC5_PTD_Field_1)
     with Size => 1;
   for SCGC5_PTD_Field use
     (SCGC5_PTD_Field_0 => 0,
      SCGC5_PTD_Field_1 => 1);

   --  PTE Clock Gate Control
   type SCGC5_PTE_Field is
     (
      --  Clock disabled
      SCGC5_PTE_Field_0,
      --  Clock enabled
      SCGC5_PTE_Field_1)
     with Size => 1;
   for SCGC5_PTE_Field use
     (SCGC5_PTE_Field_0 => 0,
      SCGC5_PTE_Field_1 => 1);

   --  EMVSIM0 Clock Gate Control
   type SCGC5_EMVSIM0_Field is
     (
      --  Clock disabled
      SCGC5_EMVSIM0_Field_0,
      --  Clock enabled
      SCGC5_EMVSIM0_Field_1)
     with Size => 1;
   for SCGC5_EMVSIM0_Field use
     (SCGC5_EMVSIM0_Field_0 => 0,
      SCGC5_EMVSIM0_Field_1 => 1);

   --  SIM_SCGC5_EMVSIM array
   type SIM_SCGC5_EMVSIM_Field_Array is array (0 .. 1) of SCGC5_EMVSIM0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC5_EMVSIM
   type SIM_SCGC5_EMVSIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMVSIM as a value
            Val : HAL.UInt2;
         when True =>
            --  EMVSIM as an array
            Arr : SIM_SCGC5_EMVSIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC5_EMVSIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  LTC Clock Gate Control
   type SCGC5_LTC_Field is
     (
      --  Clock disabled
      SCGC5_LTC_Field_0,
      --  Clock enabled
      SCGC5_LTC_Field_1)
     with Size => 1;
   for SCGC5_LTC_Field use
     (SCGC5_LTC_Field_0 => 0,
      SCGC5_LTC_Field_1 => 1);

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
   type SIM_SCGC5_LPUART_Field_Array is array (0 .. 2) of SCGC5_LPUART0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for SIM_SCGC5_LPUART
   type SIM_SCGC5_LPUART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPUART as a value
            Val : HAL.UInt3;
         when True =>
            --  LPUART as an array
            Arr : SIM_SCGC5_LPUART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SIM_SCGC5_LPUART_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  QSPI0 Clock Gate Control
   type SCGC5_QSPI0_Field is
     (
      --  Clock disabled
      SCGC5_QSPI0_Field_0,
      --  Clock enabled
      SCGC5_QSPI0_Field_1)
     with Size => 1;
   for SCGC5_QSPI0_Field use
     (SCGC5_QSPI0_Field_0 => 0,
      SCGC5_QSPI0_Field_1 => 1);

   --  FLEXIO0 Clock Gate Control
   type SCGC5_FLEXIO0_Field is
     (
      --  Clock disabled
      SCGC5_FLEXIO0_Field_0,
      --  Clock enabled
      SCGC5_FLEXIO0_Field_1)
     with Size => 1;
   for SCGC5_FLEXIO0_Field use
     (SCGC5_FLEXIO0_Field_0 => 0,
      SCGC5_FLEXIO0_Field_1 => 1);

   --  System Clock Gating Control Register 5
   type SIM_SCGC5_Register is record
      --  LPTMR0 Clock Gate Control
      LPTMR0         : SCGC5_LPTMR0_Field := NRF_SVD.SIM.SCGC5_LPTMR0_Field_0;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#1#;
      --  SECREG Clock Gate Control
      SECREG         : SCGC5_SECREG_Field := NRF_SVD.SIM.SCGC5_SECREG_Field_0;
      --  LPTMR1 Clock Gate Control
      LPTMR1         : SCGC5_LPTMR1_Field := NRF_SVD.SIM.SCGC5_LPTMR1_Field_0;
      --  TSI Access Control
      TSI            : SCGC5_TSI_Field := NRF_SVD.SIM.SCGC5_TSI_Field_0;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#6#;
      --  PTA Clock Gate Control
      PTA            : SCGC5_PTA_Field := NRF_SVD.SIM.SCGC5_PTA_Field_0;
      --  PTB Clock Gate Control
      PTB            : SCGC5_PTB_Field := NRF_SVD.SIM.SCGC5_PTB_Field_0;
      --  PTC Clock Gate Control
      PTC            : SCGC5_PTC_Field := NRF_SVD.SIM.SCGC5_PTC_Field_0;
      --  PTD Clock Gate Control
      PTD            : SCGC5_PTD_Field := NRF_SVD.SIM.SCGC5_PTD_Field_0;
      --  PTE Clock Gate Control
      PTE            : SCGC5_PTE_Field := NRF_SVD.SIM.SCGC5_PTE_Field_0;
      --  EMVSIM0 Clock Gate Control
      EMVSIM         : SIM_SCGC5_EMVSIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  LTC Clock Gate Control
      LTC            : SCGC5_LTC_Field := NRF_SVD.SIM.SCGC5_LTC_Field_0;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#1#;
      --  LPUART0 Clock Gate Control
      LPUART         : SIM_SCGC5_LPUART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  QSPI0 Clock Gate Control
      QSPI0          : SCGC5_QSPI0_Field := NRF_SVD.SIM.SCGC5_QSPI0_Field_0;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  FLEXIO0 Clock Gate Control
      FLEXIO0        : SCGC5_FLEXIO0_Field :=
                        NRF_SVD.SIM.SCGC5_FLEXIO0_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC5_Register use record
      LPTMR0         at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      SECREG         at 0 range 3 .. 3;
      LPTMR1         at 0 range 4 .. 4;
      TSI            at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      PTA            at 0 range 9 .. 9;
      PTB            at 0 range 10 .. 10;
      PTC            at 0 range 11 .. 11;
      PTD            at 0 range 12 .. 12;
      PTE            at 0 range 13 .. 13;
      EMVSIM         at 0 range 14 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LTC            at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      LPUART         at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      QSPI0          at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      FLEXIO0        at 0 range 31 .. 31;
   end record;

   --  NVM Clock Gate Control
   type SCGC6_NVM_Field is
     (
      --  Clock disabled
      SCGC6_NVM_Field_0,
      --  Clock enabled
      SCGC6_NVM_Field_1)
     with Size => 1;
   for SCGC6_NVM_Field use
     (SCGC6_NVM_Field_0 => 0,
      SCGC6_NVM_Field_1 => 1);

   --  DMACHMUX Clock Gate Control
   type SCGC6_DMACHMUX_Field is
     (
      --  Clock disabled
      SCGC6_DMACHMUX_Field_0,
      --  Clock enabled
      SCGC6_DMACHMUX_Field_1)
     with Size => 1;
   for SCGC6_DMACHMUX_Field use
     (SCGC6_DMACHMUX_Field_0 => 0,
      SCGC6_DMACHMUX_Field_1 => 1);

   --  INTMUX0 Clock Gate Control
   type SCGC6_INTMUX0_Field is
     (
      --  Clock disabled
      SCGC6_INTMUX0_Field_0,
      --  Clock enabled
      SCGC6_INTMUX0_Field_1)
     with Size => 1;
   for SCGC6_INTMUX0_Field use
     (SCGC6_INTMUX0_Field_0 => 0,
      SCGC6_INTMUX0_Field_1 => 1);

   --  TRNG Clock Gate Control
   type SCGC6_TRNG_Field is
     (
      --  Clock disabled
      SCGC6_TRNG_Field_0,
      --  Clock enabled
      SCGC6_TRNG_Field_1)
     with Size => 1;
   for SCGC6_TRNG_Field use
     (SCGC6_TRNG_Field_0 => 0,
      SCGC6_TRNG_Field_1 => 1);

   --  SPI0 Clock Gate Control
   type SCGC6_SPI0_Field is
     (
      --  Clock disabled
      SCGC6_SPI0_Field_0,
      --  Clock enabled
      SCGC6_SPI0_Field_1)
     with Size => 1;
   for SCGC6_SPI0_Field use
     (SCGC6_SPI0_Field_0 => 0,
      SCGC6_SPI0_Field_1 => 1);

   --  SIM_SCGC6_SPI array
   type SIM_SCGC6_SPI_Field_Array is array (0 .. 1) of SCGC6_SPI0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC6_SPI
   type SIM_SCGC6_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : SIM_SCGC6_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC6_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

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

   --  PIT0 Clock Gate Control
   type SCGC6_PIT0_Field is
     (
      --  Clock disabled
      SCGC6_PIT0_Field_0,
      --  Clock enabled
      SCGC6_PIT0_Field_1)
     with Size => 1;
   for SCGC6_PIT0_Field use
     (SCGC6_PIT0_Field_0 => 0,
      SCGC6_PIT0_Field_1 => 1);

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

   --  RTC Clock Gate Control
   type SCGC6_RTC_Field is
     (
      --  Clock disabled
      SCGC6_RTC_Field_0,
      --  Clock enabled
      SCGC6_RTC_Field_1)
     with Size => 1;
   for SCGC6_RTC_Field use
     (SCGC6_RTC_Field_0 => 0,
      SCGC6_RTC_Field_1 => 1);

   --  RTC_RF Clock Gate Control
   type SCGC6_RTC_RF_Field is
     (
      --  Clock disabled
      SCGC6_RTC_RF_Field_0,
      --  Clock enabled
      SCGC6_RTC_RF_Field_1)
     with Size => 1;
   for SCGC6_RTC_RF_Field use
     (SCGC6_RTC_RF_Field_0 => 0,
      SCGC6_RTC_RF_Field_1 => 1);

   --  DAC0 Clock Gate Control
   type SCGC6_DAC0_Field is
     (
      --  Clock disabled
      SCGC6_DAC0_Field_0,
      --  Clock enabled
      SCGC6_DAC0_Field_1)
     with Size => 1;
   for SCGC6_DAC0_Field use
     (SCGC6_DAC0_Field_0 => 0,
      SCGC6_DAC0_Field_1 => 1);

   --  System Clock Gating Control Register 6
   type SIM_SCGC6_Register is record
      --  NVM Clock Gate Control
      NVM            : SCGC6_NVM_Field := NRF_SVD.SIM.SCGC6_NVM_Field_1;
      --  DMACHMUX Clock Gate Control
      DMACHMUX       : SCGC6_DMACHMUX_Field :=
                        NRF_SVD.SIM.SCGC6_DMACHMUX_Field_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  INTMUX0 Clock Gate Control
      INTMUX0        : SCGC6_INTMUX0_Field :=
                        NRF_SVD.SIM.SCGC6_INTMUX0_Field_0;
      --  TRNG Clock Gate Control
      TRNG           : SCGC6_TRNG_Field := NRF_SVD.SIM.SCGC6_TRNG_Field_0;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  SPI0 Clock Gate Control
      SPI            : SIM_SCGC6_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_17 : HAL.UInt4 := 16#0#;
      --  CRC Clock Gate Control
      CRC            : SCGC6_CRC_Field := NRF_SVD.SIM.SCGC6_CRC_Field_0;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  PIT0 Clock Gate Control
      PIT0           : SCGC6_PIT0_Field := NRF_SVD.SIM.SCGC6_PIT0_Field_0;
      --  TPM0 Clock Gate Control
      TPM            : SIM_SCGC6_TPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 Clock Gate Control
      ADC0           : SCGC6_ADC0_Field := NRF_SVD.SIM.SCGC6_ADC0_Field_0;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  RTC Clock Gate Control
      RTC            : SCGC6_RTC_Field := NRF_SVD.SIM.SCGC6_RTC_Field_0;
      --  RTC_RF Clock Gate Control
      RTC_RF         : SCGC6_RTC_RF_Field := NRF_SVD.SIM.SCGC6_RTC_RF_Field_0;
      --  DAC0 Clock Gate Control
      DAC0           : SCGC6_DAC0_Field := NRF_SVD.SIM.SCGC6_DAC0_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC6_Register use record
      NVM            at 0 range 0 .. 0;
      DMACHMUX       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTMUX0        at 0 range 4 .. 4;
      TRNG           at 0 range 5 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      SPI            at 0 range 12 .. 13;
      Reserved_14_17 at 0 range 14 .. 17;
      CRC            at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      PIT0           at 0 range 23 .. 23;
      TPM            at 0 range 24 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      RTC            at 0 range 29 .. 29;
      RTC_RF         at 0 range 30 .. 30;
      DAC0           at 0 range 31 .. 31;
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

   --  MPU Clock Gate Control
   type SCGC7_MPU_Field is
     (
      --  Clock disabled
      SCGC7_MPU_Field_0,
      --  Clock enabled
      SCGC7_MPU_Field_1)
     with Size => 1;
   for SCGC7_MPU_Field use
     (SCGC7_MPU_Field_0 => 0,
      SCGC7_MPU_Field_1 => 1);

   --  System Clock Gating Control Register 7
   type SIM_SCGC7_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  DMA Clock Gate Control
      DMA           : SCGC7_DMA_Field := NRF_SVD.SIM.SCGC7_DMA_Field_1;
      --  MPU Clock Gate Control
      MPU           : SCGC7_MPU_Field := NRF_SVD.SIM.SCGC7_MPU_Field_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC7_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DMA           at 0 range 1 .. 1;
      MPU           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock 5 output divider value
   type CLKDIV1_OUTDIV5_Field is
     (
      --  Divide-by-1.
      CLKDIV1_OUTDIV5_Field_0000,
      --  Divide-by-2.
      CLKDIV1_OUTDIV5_Field_0001)
     with Size => 4;
   for CLKDIV1_OUTDIV5_Field use
     (CLKDIV1_OUTDIV5_Field_0000 => 0,
      CLKDIV1_OUTDIV5_Field_0001 => 1);

   --  Clock 4 output divider value
   type CLKDIV1_OUTDIV4_Field is
     (
      --  Divide-by-1.
      CLKDIV1_OUTDIV4_Field_0000,
      --  Divide-by-2.
      CLKDIV1_OUTDIV4_Field_0001,
      --  Divide-by-3.
      CLKDIV1_OUTDIV4_Field_0010,
      --  Divide-by-4.
      CLKDIV1_OUTDIV4_Field_0011,
      --  Divide-by-5.
      CLKDIV1_OUTDIV4_Field_0100,
      --  Divide-by-6.
      CLKDIV1_OUTDIV4_Field_0101,
      --  Divide-by-7.
      CLKDIV1_OUTDIV4_Field_0110,
      --  Divide-by-8.
      CLKDIV1_OUTDIV4_Field_0111,
      --  Divide-by-9.
      CLKDIV1_OUTDIV4_Field_1000,
      --  Divide-by-10.
      CLKDIV1_OUTDIV4_Field_1001,
      --  Divide-by-11.
      CLKDIV1_OUTDIV4_Field_1010,
      --  Divide-by-12.
      CLKDIV1_OUTDIV4_Field_1011,
      --  Divide-by-13.
      CLKDIV1_OUTDIV4_Field_1100,
      --  Divide-by-14.
      CLKDIV1_OUTDIV4_Field_1101,
      --  Divide-by-15.
      CLKDIV1_OUTDIV4_Field_1110,
      --  Divide-by-16.
      CLKDIV1_OUTDIV4_Field_1111)
     with Size => 4;
   for CLKDIV1_OUTDIV4_Field use
     (CLKDIV1_OUTDIV4_Field_0000 => 0,
      CLKDIV1_OUTDIV4_Field_0001 => 1,
      CLKDIV1_OUTDIV4_Field_0010 => 2,
      CLKDIV1_OUTDIV4_Field_0011 => 3,
      CLKDIV1_OUTDIV4_Field_0100 => 4,
      CLKDIV1_OUTDIV4_Field_0101 => 5,
      CLKDIV1_OUTDIV4_Field_0110 => 6,
      CLKDIV1_OUTDIV4_Field_0111 => 7,
      CLKDIV1_OUTDIV4_Field_1000 => 8,
      CLKDIV1_OUTDIV4_Field_1001 => 9,
      CLKDIV1_OUTDIV4_Field_1010 => 10,
      CLKDIV1_OUTDIV4_Field_1011 => 11,
      CLKDIV1_OUTDIV4_Field_1100 => 12,
      CLKDIV1_OUTDIV4_Field_1101 => 13,
      CLKDIV1_OUTDIV4_Field_1110 => 14,
      CLKDIV1_OUTDIV4_Field_1111 => 15);

   --  Clock 2 output divider value
   type CLKDIV1_OUTDIV2_Field is
     (
      --  Divide-by-1.
      CLKDIV1_OUTDIV2_Field_0000,
      --  Divide-by-2.
      CLKDIV1_OUTDIV2_Field_0001,
      --  Divide-by-3.
      CLKDIV1_OUTDIV2_Field_0010,
      --  Divide-by-4.
      CLKDIV1_OUTDIV2_Field_0011,
      --  Divide-by-5.
      CLKDIV1_OUTDIV2_Field_0100,
      --  Divide-by-6.
      CLKDIV1_OUTDIV2_Field_0101,
      --  Divide-by-7.
      CLKDIV1_OUTDIV2_Field_0110,
      --  Divide-by-8.
      CLKDIV1_OUTDIV2_Field_0111,
      --  Divide-by-9.
      CLKDIV1_OUTDIV2_Field_1000,
      --  Divide-by-10.
      CLKDIV1_OUTDIV2_Field_1001,
      --  Divide-by-11.
      CLKDIV1_OUTDIV2_Field_1010,
      --  Divide-by-12.
      CLKDIV1_OUTDIV2_Field_1011,
      --  Divide-by-13.
      CLKDIV1_OUTDIV2_Field_1100,
      --  Divide-by-14.
      CLKDIV1_OUTDIV2_Field_1101,
      --  Divide-by-15.
      CLKDIV1_OUTDIV2_Field_1110,
      --  Divide-by-16.
      CLKDIV1_OUTDIV2_Field_1111)
     with Size => 4;
   for CLKDIV1_OUTDIV2_Field use
     (CLKDIV1_OUTDIV2_Field_0000 => 0,
      CLKDIV1_OUTDIV2_Field_0001 => 1,
      CLKDIV1_OUTDIV2_Field_0010 => 2,
      CLKDIV1_OUTDIV2_Field_0011 => 3,
      CLKDIV1_OUTDIV2_Field_0100 => 4,
      CLKDIV1_OUTDIV2_Field_0101 => 5,
      CLKDIV1_OUTDIV2_Field_0110 => 6,
      CLKDIV1_OUTDIV2_Field_0111 => 7,
      CLKDIV1_OUTDIV2_Field_1000 => 8,
      CLKDIV1_OUTDIV2_Field_1001 => 9,
      CLKDIV1_OUTDIV2_Field_1010 => 10,
      CLKDIV1_OUTDIV2_Field_1011 => 11,
      CLKDIV1_OUTDIV2_Field_1100 => 12,
      CLKDIV1_OUTDIV2_Field_1101 => 13,
      CLKDIV1_OUTDIV2_Field_1110 => 14,
      CLKDIV1_OUTDIV2_Field_1111 => 15);

   --  Clock 1 output divider value
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
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Clock 5 output divider value
      OUTDIV5        : CLKDIV1_OUTDIV5_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV5_Field_0000;
      --  Clock 4 output divider value
      OUTDIV4        : CLKDIV1_OUTDIV4_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV4_Field_0001;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Clock 2 output divider value
      OUTDIV2        : CLKDIV1_OUTDIV2_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV2_Field_0000;
      --  Clock 1 output divider value
      OUTDIV1        : CLKDIV1_OUTDIV1_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV1_Field_0000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV1_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      OUTDIV5        at 0 range 12 .. 15;
      OUTDIV4        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      OUTDIV2        at 0 range 24 .. 27;
      OUTDIV1        at 0 range 28 .. 31;
   end record;

   subtype SIM_CLKDIV2_USBDIV_Field is HAL.UInt3;

   --  System Clock Divider Register 2
   type SIM_CLKDIV2_Register is record
      --  USB clock divider fraction
      USBFRAC       : Boolean := False;
      --  USB clock divider divisor
      USBDIV        : SIM_CLKDIV2_USBDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV2_Register use record
      USBFRAC       at 0 range 0 .. 0;
      USBDIV        at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Flash Disable
   type FCFG1_FLASHDIS_Field is
     (
      --  Flash is enabled
      FCFG1_FLASHDIS_Field_0,
      --  Flash is disabled
      FCFG1_FLASHDIS_Field_1)
     with Size => 1;
   for FCFG1_FLASHDIS_Field use
     (FCFG1_FLASHDIS_Field_0 => 0,
      FCFG1_FLASHDIS_Field_1 => 1);

   --  Flash Doze
   type FCFG1_FLASHDOZE_Field is
     (
      --  Flash remains enabled during Wait mode
      FCFG1_FLASHDOZE_Field_0,
      --  Flash is disabled for the duration of Wait mode
      FCFG1_FLASHDOZE_Field_1)
     with Size => 1;
   for FCFG1_FLASHDOZE_Field use
     (FCFG1_FLASHDOZE_Field_0 => 0,
      FCFG1_FLASHDOZE_Field_1 => 1);

   --  Program flash size
   type FCFG1_PFSIZE_Field is
     (
      --  32 KB of program flash memory
      FCFG1_PFSIZE_Field_0011,
      --  64 KB of program flash memory
      FCFG1_PFSIZE_Field_0101,
      --  128 KB of program flash memory
      FCFG1_PFSIZE_Field_0111,
      --  256 KB of program flash memory
      FCFG1_PFSIZE_Field_1001,
      --  512 KB of program flash memory
      FCFG1_PFSIZE_Field_1011,
      --  1024 KB of program flash memory
      FCFG1_PFSIZE_Field_1101,
      --  128 KB of program flash memory
      FCFG1_PFSIZE_Field_1111)
     with Size => 4;
   for FCFG1_PFSIZE_Field use
     (FCFG1_PFSIZE_Field_0011 => 3,
      FCFG1_PFSIZE_Field_0101 => 5,
      FCFG1_PFSIZE_Field_0111 => 7,
      FCFG1_PFSIZE_Field_1001 => 9,
      FCFG1_PFSIZE_Field_1011 => 11,
      FCFG1_PFSIZE_Field_1101 => 13,
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
      Reserved_2_23  : HAL.UInt22 := 16#3C3C0#;
      --  Read-only. Program flash size
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
      --  Read-only. Max address block 0
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

   subtype SIM_CLKDIV3_PLLFLLDIV_Field is HAL.UInt3;

   --  System Clock Divider Register 3
   type SIM_CLKDIV3_Register is record
      --  PLLFLL clock divider fraction
      PLLFLLFRAC    : Boolean := False;
      --  PLLFLL clock divider divisor
      PLLFLLDIV     : SIM_CLKDIV3_PLLFLLDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV3_Register use record
      PLLFLLFRAC    at 0 range 0 .. 0;
      PLLFLLDIV     at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DMA Channel Interrupts Select 0
   type MISCCTRL_DMAINTSEL0_Field is
     (
      --  DMA0 channel 4 is not available in vector 16.
      MISCCTRL_DMAINTSEL0_Field_0,
      --  DMA0 channel 4 is available in vector 16.
      MISCCTRL_DMAINTSEL0_Field_1)
     with Size => 1;
   for MISCCTRL_DMAINTSEL0_Field use
     (MISCCTRL_DMAINTSEL0_Field_0 => 0,
      MISCCTRL_DMAINTSEL0_Field_1 => 1);

   --  DMA Channel Interrupts Select 1
   type MISCCTRL_DMAINTSEL1_Field is
     (
      --  DMA0 channel 5 is not available in vector 17.
      MISCCTRL_DMAINTSEL1_Field_0,
      --  DMA0 channel 5 is available in vector 17.
      MISCCTRL_DMAINTSEL1_Field_1)
     with Size => 1;
   for MISCCTRL_DMAINTSEL1_Field use
     (MISCCTRL_DMAINTSEL1_Field_0 => 0,
      MISCCTRL_DMAINTSEL1_Field_1 => 1);

   --  DMA Channel Interrupts Select 2
   type MISCCTRL_DMAINTSEL2_Field is
     (
      --  DMA0 channel 6 is not available in vector 18.
      MISCCTRL_DMAINTSEL2_Field_0,
      --  DMA0 channel 6 is available in vector 18.
      MISCCTRL_DMAINTSEL2_Field_1)
     with Size => 1;
   for MISCCTRL_DMAINTSEL2_Field use
     (MISCCTRL_DMAINTSEL2_Field_0 => 0,
      MISCCTRL_DMAINTSEL2_Field_1 => 1);

   --  DMA Channel Interrupts Select 3
   type MISCCTRL_DMAINTSEL3_Field is
     (
      --  DMA0 channel 7 is not available in vector 19.
      MISCCTRL_DMAINTSEL3_Field_0,
      --  DMA0 channel 7 is available in vector 19.
      MISCCTRL_DMAINTSEL3_Field_1)
     with Size => 1;
   for MISCCTRL_DMAINTSEL3_Field use
     (MISCCTRL_DMAINTSEL3_Field_0 => 0,
      MISCCTRL_DMAINTSEL3_Field_1 => 1);

   --  LTC Status
   type MISCCTRL_LTCEN_Field is
     (
      --  LTC is not available.
      MISCCTRL_LTCEN_Field_0,
      --  LTC is available.
      MISCCTRL_LTCEN_Field_1)
     with Size => 1;
   for MISCCTRL_LTCEN_Field use
     (MISCCTRL_LTCEN_Field_0 => 0,
      MISCCTRL_LTCEN_Field_1 => 1);

   --  Misc Control Register
   type SIM_MISCCTRL_Register is record
      --  DMA Channel Interrupts Select 0
      DMAINTSEL0     : MISCCTRL_DMAINTSEL0_Field :=
                        NRF_SVD.SIM.MISCCTRL_DMAINTSEL0_Field_0;
      --  DMA Channel Interrupts Select 1
      DMAINTSEL1     : MISCCTRL_DMAINTSEL1_Field :=
                        NRF_SVD.SIM.MISCCTRL_DMAINTSEL1_Field_0;
      --  DMA Channel Interrupts Select 2
      DMAINTSEL2     : MISCCTRL_DMAINTSEL2_Field :=
                        NRF_SVD.SIM.MISCCTRL_DMAINTSEL2_Field_0;
      --  DMA Channel Interrupts Select 3
      DMAINTSEL3     : MISCCTRL_DMAINTSEL3_Field :=
                        NRF_SVD.SIM.MISCCTRL_DMAINTSEL3_Field_0;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Read-only. LTC Status
      LTCEN          : MISCCTRL_LTCEN_Field :=
                        NRF_SVD.SIM.MISCCTRL_LTCEN_Field_1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_MISCCTRL_Register use record
      DMAINTSEL0     at 0 range 0 .. 0;
      DMAINTSEL1     at 0 range 1 .. 1;
      DMAINTSEL2     at 0 range 2 .. 2;
      DMAINTSEL3     at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      LTCEN          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  System Options Register 1
      SOPT1    : aliased SIM_SOPT1_Register;
      --  System Options Register 2
      SOPT2    : aliased SIM_SOPT2_Register;
      --  System Options Register 5
      SOPT5    : aliased SIM_SOPT5_Register;
      --  System Options Register 7
      SOPT7    : aliased SIM_SOPT7_Register;
      --  System Options Register 9
      SOPT9    : aliased SIM_SOPT9_Register;
      --  System Device Identification Register
      SDID     : aliased SIM_SDID_Register;
      --  System Clock Gating Control Register 4
      SCGC4    : aliased SIM_SCGC4_Register;
      --  System Clock Gating Control Register 5
      SCGC5    : aliased SIM_SCGC5_Register;
      --  System Clock Gating Control Register 6
      SCGC6    : aliased SIM_SCGC6_Register;
      --  System Clock Gating Control Register 7
      SCGC7    : aliased SIM_SCGC7_Register;
      --  System Clock Divider Register 1
      CLKDIV1  : aliased SIM_CLKDIV1_Register;
      --  System Clock Divider Register 2
      CLKDIV2  : aliased SIM_CLKDIV2_Register;
      --  Flash Configuration Register 1
      FCFG1    : aliased SIM_FCFG1_Register;
      --  Flash Configuration Register 2
      FCFG2    : aliased SIM_FCFG2_Register;
      --  Unique Identification Register High
      UIDH     : aliased HAL.UInt32;
      --  Unique Identification Register Mid-High
      UIDMH    : aliased HAL.UInt32;
      --  Unique Identification Register Mid Low
      UIDML    : aliased HAL.UInt32;
      --  Unique Identification Register Low
      UIDL     : aliased HAL.UInt32;
      --  System Clock Divider Register 3
      CLKDIV3  : aliased SIM_CLKDIV3_Register;
      --  Misc Control Register
      MISCCTRL : aliased SIM_MISCCTRL_Register;
      --  Secure Key Register 0
      SECKEY0  : aliased HAL.UInt32;
      --  Secure Key Register 1
      SECKEY1  : aliased HAL.UInt32;
      --  Secure Key Register 2
      SECKEY2  : aliased HAL.UInt32;
      --  Secure Key Register 3
      SECKEY3  : aliased HAL.UInt32;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SOPT1    at 16#0# range 0 .. 31;
      SOPT2    at 16#1004# range 0 .. 31;
      SOPT5    at 16#1010# range 0 .. 31;
      SOPT7    at 16#1018# range 0 .. 31;
      SOPT9    at 16#1020# range 0 .. 31;
      SDID     at 16#1024# range 0 .. 31;
      SCGC4    at 16#1034# range 0 .. 31;
      SCGC5    at 16#1038# range 0 .. 31;
      SCGC6    at 16#103C# range 0 .. 31;
      SCGC7    at 16#1040# range 0 .. 31;
      CLKDIV1  at 16#1044# range 0 .. 31;
      CLKDIV2  at 16#1048# range 0 .. 31;
      FCFG1    at 16#104C# range 0 .. 31;
      FCFG2    at 16#1050# range 0 .. 31;
      UIDH     at 16#1054# range 0 .. 31;
      UIDMH    at 16#1058# range 0 .. 31;
      UIDML    at 16#105C# range 0 .. 31;
      UIDL     at 16#1060# range 0 .. 31;
      CLKDIV3  at 16#1064# range 0 .. 31;
      MISCCTRL at 16#106C# range 0 .. 31;
      SECKEY0  at 16#1090# range 0 .. 31;
      SECKEY1  at 16#1094# range 0 .. 31;
      SECKEY2  at 16#1098# range 0 .. 31;
      SECKEY3  at 16#109C# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
