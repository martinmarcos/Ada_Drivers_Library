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

--  This spec has been automatically generated from MK82F25615.xml

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

   --  RAM size
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

   --  32K oscillator clock select
   type SOPT1_OSC32KSEL_Field is
     (
      --  System oscillator (OSC32KCLK)
      SOPT1_OSC32KSEL_Field_00,
      --  RTC 32.768kHz oscillator
      SOPT1_OSC32KSEL_Field_10,
      --  LPO 1 kHz
      SOPT1_OSC32KSEL_Field_11)
     with Size => 2;
   for SOPT1_OSC32KSEL_Field use
     (SOPT1_OSC32KSEL_Field_00 => 0,
      SOPT1_OSC32KSEL_Field_10 => 2,
      SOPT1_OSC32KSEL_Field_11 => 3);

   --  USB voltage regulator in standby mode during VLPR and VLPW modes
   type SOPT1_USBVSTBY_Field is
     (
      --  USB voltage regulator not in standby during VLPR and VLPW modes.
      SOPT1_USBVSTBY_Field_0,
      --  USB voltage regulator in standby during VLPR and VLPW modes.
      SOPT1_USBVSTBY_Field_1)
     with Size => 1;
   for SOPT1_USBVSTBY_Field use
     (SOPT1_USBVSTBY_Field_0 => 0,
      SOPT1_USBVSTBY_Field_1 => 1);

   --  USB voltage regulator in standby mode during Stop, VLPS, LLS and VLLS
   --  modes.
   type SOPT1_USBSSTBY_Field is
     (
      --  USB voltage regulator not in standby during Stop, VLPS, LLS and VLLS
      --  modes.
      SOPT1_USBSSTBY_Field_0,
      --  USB voltage regulator in standby during Stop, VLPS, LLS and VLLS
      --  modes.
      SOPT1_USBSSTBY_Field_1)
     with Size => 1;
   for SOPT1_USBSSTBY_Field use
     (SOPT1_USBSSTBY_Field_0 => 0,
      SOPT1_USBSSTBY_Field_1 => 1);

   --  USB voltage regulator enable
   type SOPT1_USBREGEN_Field is
     (
      --  USB voltage regulator is disabled.
      SOPT1_USBREGEN_Field_0,
      --  USB voltage regulator is enabled.
      SOPT1_USBREGEN_Field_1)
     with Size => 1;
   for SOPT1_USBREGEN_Field use
     (SOPT1_USBREGEN_Field_0 => 0,
      SOPT1_USBREGEN_Field_1 => 1);

   --  System Options Register 1
   type SIM_SOPT1_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Read-only. RAM size
      RAMSIZE        : SOPT1_RAMSIZE_Field := Sopt1_Ramsize_Field_Reset;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  32K oscillator clock select
      OSC32KSEL      : SOPT1_OSC32KSEL_Field :=
                        NRF_SVD.SIM.SOPT1_OSC32KSEL_Field_00;
      --  unspecified
      Reserved_20_28 : HAL.UInt9 := 16#0#;
      --  USB voltage regulator in standby mode during VLPR and VLPW modes
      USBVSTBY       : SOPT1_USBVSTBY_Field :=
                        NRF_SVD.SIM.SOPT1_USBVSTBY_Field_0;
      --  USB voltage regulator in standby mode during Stop, VLPS, LLS and VLLS
      --  modes.
      USBSSTBY       : SOPT1_USBSSTBY_Field :=
                        NRF_SVD.SIM.SOPT1_USBSSTBY_Field_0;
      --  USB voltage regulator enable
      USBREGEN       : SOPT1_USBREGEN_Field :=
                        NRF_SVD.SIM.SOPT1_USBREGEN_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT1_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMSIZE        at 0 range 12 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      OSC32KSEL      at 0 range 18 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      USBVSTBY       at 0 range 29 .. 29;
      USBSSTBY       at 0 range 30 .. 30;
      USBREGEN       at 0 range 31 .. 31;
   end record;

   --  USB voltage regulator enable write enable
   type SOPT1CFG_URWE_Field is
     (
      --  SOPT1 USBREGEN cannot be written.
      SOPT1CFG_URWE_Field_0,
      --  SOPT1 USBREGEN can be written.
      SOPT1CFG_URWE_Field_1)
     with Size => 1;
   for SOPT1CFG_URWE_Field use
     (SOPT1CFG_URWE_Field_0 => 0,
      SOPT1CFG_URWE_Field_1 => 1);

   --  USB voltage regulator VLP standby write enable
   type SOPT1CFG_UVSWE_Field is
     (
      --  SOPT1 USBVSTBY cannot be written.
      SOPT1CFG_UVSWE_Field_0,
      --  SOPT1 USBVSTBY can be written.
      SOPT1CFG_UVSWE_Field_1)
     with Size => 1;
   for SOPT1CFG_UVSWE_Field use
     (SOPT1CFG_UVSWE_Field_0 => 0,
      SOPT1CFG_UVSWE_Field_1 => 1);

   --  USB voltage regulator stop standby write enable
   type SOPT1CFG_USSWE_Field is
     (
      --  SOPT1 USBSSTBY cannot be written.
      SOPT1CFG_USSWE_Field_0,
      --  SOPT1 USBSSTBY can be written.
      SOPT1CFG_USSWE_Field_1)
     with Size => 1;
   for SOPT1CFG_USSWE_Field use
     (SOPT1CFG_USSWE_Field_0 => 0,
      SOPT1CFG_USSWE_Field_1 => 1);

   --  SOPT1 Configuration Register
   type SIM_SOPT1CFG_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  USB voltage regulator enable write enable
      URWE           : SOPT1CFG_URWE_Field :=
                        NRF_SVD.SIM.SOPT1CFG_URWE_Field_0;
      --  USB voltage regulator VLP standby write enable
      UVSWE          : SOPT1CFG_UVSWE_Field :=
                        NRF_SVD.SIM.SOPT1CFG_UVSWE_Field_0;
      --  USB voltage regulator stop standby write enable
      USSWE          : SOPT1CFG_USSWE_Field :=
                        NRF_SVD.SIM.SOPT1CFG_USSWE_Field_0;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT1CFG_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      URWE           at 0 range 24 .. 24;
      UVSWE          at 0 range 25 .. 25;
      USSWE          at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RTC clock out select
   type SOPT2_RTCCLKOUTSEL_Field is
     (
      --  RTC 1 Hz clock is output on the RTC_CLKOUT pin.
      SOPT2_RTCCLKOUTSEL_Field_0,
      --  RTC 32.768kHz clock is output on the RTC_CLKOUT pin.
      SOPT2_RTCCLKOUTSEL_Field_1)
     with Size => 1;
   for SOPT2_RTCCLKOUTSEL_Field use
     (SOPT2_RTCCLKOUTSEL_Field_0 => 0,
      SOPT2_RTCCLKOUTSEL_Field_1 => 1);

   --  CLKOUT select
   type SOPT2_CLKOUTSEL_Field is
     (
      --  FlexBus CLKOUT
      SOPT2_CLKOUTSEL_Field_000,
      --  Flash clock
      SOPT2_CLKOUTSEL_Field_010,
      --  LPO clock (1 kHz)
      SOPT2_CLKOUTSEL_Field_011,
      --  MCGIRCLK
      SOPT2_CLKOUTSEL_Field_100,
      --  RTC 32.768kHz clock
      SOPT2_CLKOUTSEL_Field_101,
      --  OSCERCLK0
      SOPT2_CLKOUTSEL_Field_110,
      --  IRC 48 MHz clock
      SOPT2_CLKOUTSEL_Field_111)
     with Size => 3;
   for SOPT2_CLKOUTSEL_Field use
     (SOPT2_CLKOUTSEL_Field_000 => 0,
      SOPT2_CLKOUTSEL_Field_010 => 2,
      SOPT2_CLKOUTSEL_Field_011 => 3,
      SOPT2_CLKOUTSEL_Field_100 => 4,
      SOPT2_CLKOUTSEL_Field_101 => 5,
      SOPT2_CLKOUTSEL_Field_110 => 6,
      SOPT2_CLKOUTSEL_Field_111 => 7);

   --  FlexBus security level
   type SOPT2_FBSL_Field is
     (
      --  All off-chip accesses (instruction and data) via the FlexBus or SDRAM
      --  are disallowed.
      SOPT2_FBSL_Field_00,
      --  All off-chip accesses (instruction and data) via the FlexBus or SDRAM
      --  are disallowed.
      SOPT2_FBSL_Field_01,
      --  Off-chip instruction accesses are disallowed. Data accesses are
      --  allowed.
      SOPT2_FBSL_Field_10,
      --  Off-chip instruction accesses and data accesses are allowed.
      SOPT2_FBSL_Field_11)
     with Size => 2;
   for SOPT2_FBSL_Field use
     (SOPT2_FBSL_Field_00 => 0,
      SOPT2_FBSL_Field_01 => 1,
      SOPT2_FBSL_Field_10 => 2,
      SOPT2_FBSL_Field_11 => 3);

   --  Debug trace clock select
   type SOPT2_TRACECLKSEL_Field is
     (
      --  MCGOUTCLK, divided by the TRACECLK fractional divider as configured
      --  by SIM_CLKDIV4[TRACEFRAC, TRACEDIV]
      SOPT2_TRACECLKSEL_Field_0,
      --  Core/system clock
      SOPT2_TRACECLKSEL_Field_1)
     with Size => 1;
   for SOPT2_TRACECLKSEL_Field use
     (SOPT2_TRACECLKSEL_Field_0 => 0,
      SOPT2_TRACECLKSEL_Field_1 => 1);

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
      --  MCGFLLCLK, or MCGPLLCLK , or IRC48M clock as selected by
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
      --  MCGFLLCLK , or MCGPLLCLK , or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the PLLFLLCLK fractional
      --  divider as configured by SIM_CLKDIV3[PLLFLLFRAC, PLLFLLDIV].
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
      --  MCGFLLCLK , or MCGPLLCLK , or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the PLLFLLCLK fractional
      --  divider as configured by SIM_CLKDIV3[PLLFLLFRAC, PLLFLLDIV].
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
      --  MCGFLLCLK , or MCGPLLCLK , or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the PLLFLLCLK fractional
      --  divider as configured by SIM_CLKDIV3[PLLFLLFRAC, PLLFLLDIV].
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

   --  SDHC clock source select
   type SOPT2_SDHCSRC_Field is
     (
      --  Core/system clock.
      SOPT2_SDHCSRC_Field_00,
      --  MCGFLLCLK, or MCGPLLCLK , or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL].
      SOPT2_SDHCSRC_Field_01,
      --  OSCERCLK clock
      SOPT2_SDHCSRC_Field_10,
      --  External bypass clock (SDHC0_CLKIN)
      SOPT2_SDHCSRC_Field_11)
     with Size => 2;
   for SOPT2_SDHCSRC_Field use
     (SOPT2_SDHCSRC_Field_00 => 0,
      SOPT2_SDHCSRC_Field_01 => 1,
      SOPT2_SDHCSRC_Field_10 => 2,
      SOPT2_SDHCSRC_Field_11 => 3);

   --  EMVSIM Module Clock Source Select
   type SOPT2_EMVSIMSRC_Field is
     (
      --  Clock disabled
      SOPT2_EMVSIMSRC_Field_00,
      --  MCGFLLCLK , or MCGPLLCLK , or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL], and then divided by the PLLFLLCLK fractional
      --  divider as configured by SIM_CLKDIV3[PLLFLLFRAC, PLLFLLDIV].
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
      RTCCLKOUTSEL   : SOPT2_RTCCLKOUTSEL_Field :=
                        NRF_SVD.SIM.SOPT2_RTCCLKOUTSEL_Field_0;
      --  CLKOUT select
      CLKOUTSEL      : SOPT2_CLKOUTSEL_Field :=
                        NRF_SVD.SIM.SOPT2_CLKOUTSEL_Field_000;
      --  FlexBus security level
      FBSL           : SOPT2_FBSL_Field := NRF_SVD.SIM.SOPT2_FBSL_Field_00;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Debug trace clock select
      TRACECLKSEL    : SOPT2_TRACECLKSEL_Field :=
                        NRF_SVD.SIM.SOPT2_TRACECLKSEL_Field_1;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
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
      --  SDHC clock source select
      SDHCSRC        : SOPT2_SDHCSRC_Field :=
                        NRF_SVD.SIM.SOPT2_SDHCSRC_Field_00;
      --  EMVSIM Module Clock Source Select
      EMVSIMSRC      : SOPT2_EMVSIMSRC_Field :=
                        NRF_SVD.SIM.SOPT2_EMVSIMSRC_Field_00;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RTCCLKOUTSEL   at 0 range 4 .. 4;
      CLKOUTSEL      at 0 range 5 .. 7;
      FBSL           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TRACECLKSEL    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PLLFLLSEL      at 0 range 16 .. 17;
      USBSRC         at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      FLEXIOSRC      at 0 range 22 .. 23;
      TPMSRC         at 0 range 24 .. 25;
      LPUARTSRC      at 0 range 26 .. 27;
      SDHCSRC        at 0 range 28 .. 29;
      EMVSIMSRC      at 0 range 30 .. 31;
   end record;

   --  FTM0 Fault 0 Select
   type SOPT4_FTM0FLT0_Field is
     (
      --  FTM0_FLT0 pin
      SOPT4_FTM0FLT0_Field_0,
      --  CMP0 out
      SOPT4_FTM0FLT0_Field_1)
     with Size => 1;
   for SOPT4_FTM0FLT0_Field use
     (SOPT4_FTM0FLT0_Field_0 => 0,
      SOPT4_FTM0FLT0_Field_1 => 1);

   --  FTM0 Fault 1 Select
   type SOPT4_FTM0FLT1_Field is
     (
      --  FTM0_FLT1 pin
      SOPT4_FTM0FLT1_Field_0,
      --  CMP1 out
      SOPT4_FTM0FLT1_Field_1)
     with Size => 1;
   for SOPT4_FTM0FLT1_Field use
     (SOPT4_FTM0FLT1_Field_0 => 0,
      SOPT4_FTM0FLT1_Field_1 => 1);

   --  FTM1 Fault 0 Select
   type SOPT4_FTM1FLT0_Field is
     (
      --  FTM1_FLT0 pin
      SOPT4_FTM1FLT0_Field_0,
      --  CMP0 out
      SOPT4_FTM1FLT0_Field_1)
     with Size => 1;
   for SOPT4_FTM1FLT0_Field use
     (SOPT4_FTM1FLT0_Field_0 => 0,
      SOPT4_FTM1FLT0_Field_1 => 1);

   --  FTM2 Fault 0 Select
   type SOPT4_FTM2FLT0_Field is
     (
      --  FTM2_FLT0 pin
      SOPT4_FTM2FLT0_Field_0,
      --  CMP0 out
      SOPT4_FTM2FLT0_Field_1)
     with Size => 1;
   for SOPT4_FTM2FLT0_Field use
     (SOPT4_FTM2FLT0_Field_0 => 0,
      SOPT4_FTM2FLT0_Field_1 => 1);

   --  FTM3 Fault 0 Select
   type SOPT4_FTM3FLT0_Field is
     (
      --  FTM3_FLT0 pin
      SOPT4_FTM3FLT0_Field_0,
      --  CMP0 out
      SOPT4_FTM3FLT0_Field_1)
     with Size => 1;
   for SOPT4_FTM3FLT0_Field use
     (SOPT4_FTM3FLT0_Field_0 => 0,
      SOPT4_FTM3FLT0_Field_1 => 1);

   --  FTM1 channel 0 input capture source select
   type SOPT4_FTM1CH0SRC_Field is
     (
      --  FTM1_CH0 signal
      SOPT4_FTM1CH0SRC_Field_00,
      --  CMP0 output
      SOPT4_FTM1CH0SRC_Field_01,
      --  CMP1 output
      SOPT4_FTM1CH0SRC_Field_10,
      --  USB start of frame pulse
      SOPT4_FTM1CH0SRC_Field_11)
     with Size => 2;
   for SOPT4_FTM1CH0SRC_Field use
     (SOPT4_FTM1CH0SRC_Field_00 => 0,
      SOPT4_FTM1CH0SRC_Field_01 => 1,
      SOPT4_FTM1CH0SRC_Field_10 => 2,
      SOPT4_FTM1CH0SRC_Field_11 => 3);

   --  FTM2 channel 0 input capture source select
   type SOPT4_FTM2CH0SRC_Field is
     (
      --  FTM2_CH0 signal
      SOPT4_FTM2CH0SRC_Field_00,
      --  CMP0 output
      SOPT4_FTM2CH0SRC_Field_01,
      --  CMP1 output
      SOPT4_FTM2CH0SRC_Field_10)
     with Size => 2;
   for SOPT4_FTM2CH0SRC_Field use
     (SOPT4_FTM2CH0SRC_Field_00 => 0,
      SOPT4_FTM2CH0SRC_Field_01 => 1,
      SOPT4_FTM2CH0SRC_Field_10 => 2);

   --  FTM2 channel 1 input capture source select
   type SOPT4_FTM2CH1SRC_Field is
     (
      --  FTM2_CH1 signal
      SOPT4_FTM2CH1SRC_Field_0,
      --  Exclusive OR of FTM2_CH1, FTM2_CH0 and FTM1_CH1.
      SOPT4_FTM2CH1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM2CH1SRC_Field use
     (SOPT4_FTM2CH1SRC_Field_0 => 0,
      SOPT4_FTM2CH1SRC_Field_1 => 1);

   --  FlexTimer 0 External Clock Pin Select
   type SOPT4_FTM0CLKSEL_Field is
     (
      --  FTM_CLK0 pin
      SOPT4_FTM0CLKSEL_Field_0,
      --  FTM_CLK1 pin
      SOPT4_FTM0CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_FTM0CLKSEL_Field use
     (SOPT4_FTM0CLKSEL_Field_0 => 0,
      SOPT4_FTM0CLKSEL_Field_1 => 1);

   --  FTM1 External Clock Pin Select
   type SOPT4_FTM1CLKSEL_Field is
     (
      --  FTM_CLK0 pin
      SOPT4_FTM1CLKSEL_Field_0,
      --  FTM_CLK1 pin
      SOPT4_FTM1CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_FTM1CLKSEL_Field use
     (SOPT4_FTM1CLKSEL_Field_0 => 0,
      SOPT4_FTM1CLKSEL_Field_1 => 1);

   --  FlexTimer 2 External Clock Pin Select
   type SOPT4_FTM2CLKSEL_Field is
     (
      --  FTM2 external clock driven by FTM_CLK0 pin.
      SOPT4_FTM2CLKSEL_Field_0,
      --  FTM2 external clock driven by FTM_CLK1 pin.
      SOPT4_FTM2CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_FTM2CLKSEL_Field use
     (SOPT4_FTM2CLKSEL_Field_0 => 0,
      SOPT4_FTM2CLKSEL_Field_1 => 1);

   --  FlexTimer 3 External Clock Pin Select
   type SOPT4_FTM3CLKSEL_Field is
     (
      --  FTM3 external clock driven by FTM_CLK0 pin.
      SOPT4_FTM3CLKSEL_Field_0,
      --  FTM3 external clock driven by FTM_CLK1 pin.
      SOPT4_FTM3CLKSEL_Field_1)
     with Size => 1;
   for SOPT4_FTM3CLKSEL_Field use
     (SOPT4_FTM3CLKSEL_Field_0 => 0,
      SOPT4_FTM3CLKSEL_Field_1 => 1);

   --  FlexTimer 0 Hardware Trigger 0 Source Select
   type SOPT4_FTM0TRG0SRC_Field is
     (
      --  HSCMP0 output drives FTM0 hardware trigger 0
      SOPT4_FTM0TRG0SRC_Field_0,
      --  FTM1 channel match drives FTM0 hardware trigger 0
      SOPT4_FTM0TRG0SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM0TRG0SRC_Field use
     (SOPT4_FTM0TRG0SRC_Field_0 => 0,
      SOPT4_FTM0TRG0SRC_Field_1 => 1);

   --  FlexTimer 0 Hardware Trigger 1 Source Select
   type SOPT4_FTM0TRG1SRC_Field is
     (
      --  PDB output trigger 1 drives FTM0 hardware trigger 1
      SOPT4_FTM0TRG1SRC_Field_0,
      --  FTM2 channel match drives FTM0 hardware trigger 1
      SOPT4_FTM0TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM0TRG1SRC_Field use
     (SOPT4_FTM0TRG1SRC_Field_0 => 0,
      SOPT4_FTM0TRG1SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 0 Source Select
   type SOPT4_FTM3TRG0SRC_Field is
     (
      --  Reset value for the field
      Sopt4_Ftm3Trg0Src_Field_Reset,
      --  FTM1 channel match drives FTM3 hardware trigger 0
      SOPT4_FTM3TRG0SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM3TRG0SRC_Field use
     (Sopt4_Ftm3Trg0Src_Field_Reset => 0,
      SOPT4_FTM3TRG0SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 1 Source Select
   type SOPT4_FTM3TRG1SRC_Field is
     (
      --  Reset value for the field
      Sopt4_Ftm3Trg1Src_Field_Reset,
      --  FTM2 channel match drives FTM3 hardware trigger 1
      SOPT4_FTM3TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM3TRG1SRC_Field use
     (Sopt4_Ftm3Trg1Src_Field_Reset => 0,
      SOPT4_FTM3TRG1SRC_Field_1 => 1);

   --  System Options Register 4
   type SIM_SOPT4_Register is record
      --  FTM0 Fault 0 Select
      FTM0FLT0       : SOPT4_FTM0FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT0_Field_0;
      --  FTM0 Fault 1 Select
      FTM0FLT1       : SOPT4_FTM0FLT1_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT1_Field_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  FTM1 Fault 0 Select
      FTM1FLT0       : SOPT4_FTM1FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1FLT0_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  FTM2 Fault 0 Select
      FTM2FLT0       : SOPT4_FTM2FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2FLT0_Field_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  FTM3 Fault 0 Select
      FTM3FLT0       : SOPT4_FTM3FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM3FLT0_Field_0;
      --  unspecified
      Reserved_13_17 : HAL.UInt5 := 16#0#;
      --  FTM1 channel 0 input capture source select
      FTM1CH0SRC     : SOPT4_FTM1CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1CH0SRC_Field_00;
      --  FTM2 channel 0 input capture source select
      FTM2CH0SRC     : SOPT4_FTM2CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2CH0SRC_Field_00;
      --  FTM2 channel 1 input capture source select
      FTM2CH1SRC     : SOPT4_FTM2CH1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2CH1SRC_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  FlexTimer 0 External Clock Pin Select
      FTM0CLKSEL     : SOPT4_FTM0CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0CLKSEL_Field_0;
      --  FTM1 External Clock Pin Select
      FTM1CLKSEL     : SOPT4_FTM1CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1CLKSEL_Field_0;
      --  FlexTimer 2 External Clock Pin Select
      FTM2CLKSEL     : SOPT4_FTM2CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2CLKSEL_Field_0;
      --  FlexTimer 3 External Clock Pin Select
      FTM3CLKSEL     : SOPT4_FTM3CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM3CLKSEL_Field_0;
      --  FlexTimer 0 Hardware Trigger 0 Source Select
      FTM0TRG0SRC    : SOPT4_FTM0TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG0SRC_Field_0;
      --  FlexTimer 0 Hardware Trigger 1 Source Select
      FTM0TRG1SRC    : SOPT4_FTM0TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG1SRC_Field_0;
      --  FlexTimer 3 Hardware Trigger 0 Source Select
      FTM3TRG0SRC    : SOPT4_FTM3TRG0SRC_Field :=
                        Sopt4_Ftm3Trg0Src_Field_Reset;
      --  FlexTimer 3 Hardware Trigger 1 Source Select
      FTM3TRG1SRC    : SOPT4_FTM3TRG1SRC_Field :=
                        Sopt4_Ftm3Trg1Src_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT4_Register use record
      FTM0FLT0       at 0 range 0 .. 0;
      FTM0FLT1       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FTM1FLT0       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FTM2FLT0       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      FTM3FLT0       at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      FTM1CH0SRC     at 0 range 18 .. 19;
      FTM2CH0SRC     at 0 range 20 .. 21;
      FTM2CH1SRC     at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FTM0CLKSEL     at 0 range 24 .. 24;
      FTM1CLKSEL     at 0 range 25 .. 25;
      FTM2CLKSEL     at 0 range 26 .. 26;
      FTM3CLKSEL     at 0 range 27 .. 27;
      FTM0TRG0SRC    at 0 range 28 .. 28;
      FTM0TRG1SRC    at 0 range 29 .. 29;
      FTM3TRG0SRC    at 0 range 30 .. 30;
      FTM3TRG1SRC    at 0 range 31 .. 31;
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

   --  LPUART0 receive data source select
   type SOPT5_LPUART0RXSRC_Field is
     (
      --  LPUART0_RX pin
      SOPT5_LPUART0RXSRC_Field_00,
      --  CMP0 output
      SOPT5_LPUART0RXSRC_Field_01,
      --  CMP1 output
      SOPT5_LPUART0RXSRC_Field_10)
     with Size => 2;
   for SOPT5_LPUART0RXSRC_Field use
     (SOPT5_LPUART0RXSRC_Field_00 => 0,
      SOPT5_LPUART0RXSRC_Field_01 => 1,
      SOPT5_LPUART0RXSRC_Field_10 => 2);

   --  LPUART1 transmit data source select
   type SOPT5_LPUART1TXSRC_Field is
     (
      --  LPUART1_TX pin
      SOPT5_LPUART1TXSRC_Field_00,
      --  LPUART1_TX pin modulated with TPM1 channel 0 output
      SOPT5_LPUART1TXSRC_Field_01,
      --  LPUART0_TX pin modulated with TPM2 channel 0 output
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
      --  CMP0 output
      SOPT5_LPUART1RXSRC_Field_01,
      --  CMP1 output
      SOPT5_LPUART1RXSRC_Field_10)
     with Size => 2;
   for SOPT5_LPUART1RXSRC_Field use
     (SOPT5_LPUART1RXSRC_Field_00 => 0,
      SOPT5_LPUART1RXSRC_Field_01 => 1,
      SOPT5_LPUART1RXSRC_Field_10 => 2);

   --  System Options Register 5
   type SIM_SOPT5_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  LPUART0 transmit data source select
      LPUART0TXSRC   : SOPT5_LPUART0TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0TXSRC_Field_00;
      --  LPUART0 receive data source select
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
      --  PDB external trigger pin input (PDB0_EXTRG)
      SOPT7_ADC0TRGSEL_Field_0000,
      --  High speed comparator 0 output
      SOPT7_ADC0TRGSEL_Field_0001,
      --  High speed comparator 1 output
      SOPT7_ADC0TRGSEL_Field_0010,
      --  PIT trigger 0
      SOPT7_ADC0TRGSEL_Field_0100,
      --  PIT trigger 1
      SOPT7_ADC0TRGSEL_Field_0101,
      --  PIT trigger 2
      SOPT7_ADC0TRGSEL_Field_0110,
      --  PIT trigger 3
      SOPT7_ADC0TRGSEL_Field_0111,
      --  FTM0 trigger
      SOPT7_ADC0TRGSEL_Field_1000,
      --  FTM1 trigger
      SOPT7_ADC0TRGSEL_Field_1001,
      --  FTM2 trigger
      SOPT7_ADC0TRGSEL_Field_1010,
      --  FTM3 trigger
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
      SOPT7_ADC0TRGSEL_Field_0010 => 2,
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

   --  ADC0 alternate trigger enable
   type SOPT7_ADC0ALTTRGEN_Field is
     (
      --  PDB trigger selected for ADC0.
      SOPT7_ADC0ALTTRGEN_Field_0,
      --  Alternate trigger selected for ADC0.
      SOPT7_ADC0ALTTRGEN_Field_1)
     with Size => 1;
   for SOPT7_ADC0ALTTRGEN_Field use
     (SOPT7_ADC0ALTTRGEN_Field_0 => 0,
      SOPT7_ADC0ALTTRGEN_Field_1 => 1);

   --  System Options Register 7
   type SIM_SOPT7_Register is record
      --  ADC0 trigger select
      ADC0TRGSEL    : SOPT7_ADC0TRGSEL_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0TRGSEL_Field_0000;
      --  ADC0 pretrigger select
      ADC0PRETRGSEL : SOPT7_ADC0PRETRGSEL_Field :=
                       NRF_SVD.SIM.SOPT7_ADC0PRETRGSEL_Field_0;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  ADC0 alternate trigger enable
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

   --  FTM0 Hardware Trigger 0 Software Synchronization
   type SOPT8_FTM0SYNCBIT_Field is
     (
      --  No effect
      SOPT8_FTM0SYNCBIT_Field_0,
      --  Write 1 to assert the TRIG0 input to FTM0, software must clear this
      --  bit to allow other trigger sources to assert.
      SOPT8_FTM0SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM0SYNCBIT_Field use
     (SOPT8_FTM0SYNCBIT_Field_0 => 0,
      SOPT8_FTM0SYNCBIT_Field_1 => 1);

   --  FTM1 Hardware Trigger 0 Software Synchronization
   type SOPT8_FTM1SYNCBIT_Field is
     (
      --  No effect.
      SOPT8_FTM1SYNCBIT_Field_0,
      --  Write 1 to assert the TRIG0 input to FTM1, software must clear this
      --  bit to allow other trigger sources to assert.
      SOPT8_FTM1SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM1SYNCBIT_Field use
     (SOPT8_FTM1SYNCBIT_Field_0 => 0,
      SOPT8_FTM1SYNCBIT_Field_1 => 1);

   --  FTM2 Hardware Trigger 0 Software Synchronization
   type SOPT8_FTM2SYNCBIT_Field is
     (
      --  No effect.
      SOPT8_FTM2SYNCBIT_Field_0,
      --  Write 1 to assert the TRIG0 input to FTM2, software must clear this
      --  bit to allow other trigger sources to assert.
      SOPT8_FTM2SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM2SYNCBIT_Field use
     (SOPT8_FTM2SYNCBIT_Field_0 => 0,
      SOPT8_FTM2SYNCBIT_Field_1 => 1);

   --  FTM3 Hardware Trigger 0 Software Synchronization
   type SOPT8_FTM3SYNCBIT_Field is
     (
      --  No effect.
      SOPT8_FTM3SYNCBIT_Field_0,
      --  Write 1 to assert the TRIG0 input to FTM3, software must clear this
      --  bit to allow other trigger sources to assert.
      SOPT8_FTM3SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM3SYNCBIT_Field use
     (SOPT8_FTM3SYNCBIT_Field_0 => 0,
      SOPT8_FTM3SYNCBIT_Field_1 => 1);

   --  FTM0 channel 0 output source
   type SOPT8_FTM0OCH0SRC_Field is
     (
      --  FTM0_CH0 pin is output of FTM0 channel 0 output
      SOPT8_FTM0OCH0SRC_Field_0,
      --  FTM0_CH0 pin is output of FTM0 channel 0 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH0SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH0SRC_Field use
     (SOPT8_FTM0OCH0SRC_Field_0 => 0,
      SOPT8_FTM0OCH0SRC_Field_1 => 1);

   --  FTM0 channel 1 output source
   type SOPT8_FTM0OCH1SRC_Field is
     (
      --  FTM0_CH1 pin is output of FTM0 channel 1 output
      SOPT8_FTM0OCH1SRC_Field_0,
      --  FTM0_CH1 pin is output of FTM0 channel 1 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH1SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH1SRC_Field use
     (SOPT8_FTM0OCH1SRC_Field_0 => 0,
      SOPT8_FTM0OCH1SRC_Field_1 => 1);

   --  FTM0 channel 2 output source
   type SOPT8_FTM0OCH2SRC_Field is
     (
      --  FTM0_CH2 pin is output of FTM0 channel 2 output
      SOPT8_FTM0OCH2SRC_Field_0,
      --  FTM0_CH2 pin is output of FTM0 channel 2 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH2SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH2SRC_Field use
     (SOPT8_FTM0OCH2SRC_Field_0 => 0,
      SOPT8_FTM0OCH2SRC_Field_1 => 1);

   --  FTM0 channel 3 output source
   type SOPT8_FTM0OCH3SRC_Field is
     (
      --  FTM0_CH3 pin is output of FTM0 channel 3 output
      SOPT8_FTM0OCH3SRC_Field_0,
      --  FTM0_CH3 pin is output of FTM0 channel 3 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH3SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH3SRC_Field use
     (SOPT8_FTM0OCH3SRC_Field_0 => 0,
      SOPT8_FTM0OCH3SRC_Field_1 => 1);

   --  FTM0 channel 4 output source
   type SOPT8_FTM0OCH4SRC_Field is
     (
      --  FTM0_CH4 pin is output of FTM0 channel 4 output
      SOPT8_FTM0OCH4SRC_Field_0,
      --  FTM0_CH4 pin is output of FTM0 channel 4 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH4SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH4SRC_Field use
     (SOPT8_FTM0OCH4SRC_Field_0 => 0,
      SOPT8_FTM0OCH4SRC_Field_1 => 1);

   --  FTM0 channel 5 output source
   type SOPT8_FTM0OCH5SRC_Field is
     (
      --  FTM0_CH5 pin is output of FTM0 channel 5 output
      SOPT8_FTM0OCH5SRC_Field_0,
      --  FTM0_CH5 pin is output of FTM0 channel 5 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH5SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH5SRC_Field use
     (SOPT8_FTM0OCH5SRC_Field_0 => 0,
      SOPT8_FTM0OCH5SRC_Field_1 => 1);

   --  FTM0 channel 6 output source
   type SOPT8_FTM0OCH6SRC_Field is
     (
      --  FTM0_CH6 pin is output of FTM0 channel 6 output
      SOPT8_FTM0OCH6SRC_Field_0,
      --  FTM0_CH6 pin is output of FTM0 channel 6 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH6SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH6SRC_Field use
     (SOPT8_FTM0OCH6SRC_Field_0 => 0,
      SOPT8_FTM0OCH6SRC_Field_1 => 1);

   --  FTM0 channel 7 output source
   type SOPT8_FTM0OCH7SRC_Field is
     (
      --  FTM0_CH7 pin is output of FTM0 channel 7 output
      SOPT8_FTM0OCH7SRC_Field_0,
      --  FTM0_CH7 pin is output of FTM0 channel 7 output, modulated by FTM1
      --  channel 1 output
      SOPT8_FTM0OCH7SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH7SRC_Field use
     (SOPT8_FTM0OCH7SRC_Field_0 => 0,
      SOPT8_FTM0OCH7SRC_Field_1 => 1);

   --  FTM3 channel 0 output source
   type SOPT8_FTM3OCH0SRC_Field is
     (
      --  FTM3_CH0 pin is output of FTM3 channel 0 output
      SOPT8_FTM3OCH0SRC_Field_0,
      --  FTM3_CH0 pin is output of FTM3 channel 0 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH0SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH0SRC_Field use
     (SOPT8_FTM3OCH0SRC_Field_0 => 0,
      SOPT8_FTM3OCH0SRC_Field_1 => 1);

   --  FTM3 channel 1 output source
   type SOPT8_FTM3OCH1SRC_Field is
     (
      --  FTM3_CH1 pin is output of FTM3 channel 1 output
      SOPT8_FTM3OCH1SRC_Field_0,
      --  FTM3_CH1 pin is output of FTM3 channel 1 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH1SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH1SRC_Field use
     (SOPT8_FTM3OCH1SRC_Field_0 => 0,
      SOPT8_FTM3OCH1SRC_Field_1 => 1);

   --  FTM3 channel 2 output source
   type SOPT8_FTM3OCH2SRC_Field is
     (
      --  FTM3_CH2 pin is output of FTM3 channel 2 output
      SOPT8_FTM3OCH2SRC_Field_0,
      --  FTM3_CH2 pin is output of FTM3 channel 2 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH2SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH2SRC_Field use
     (SOPT8_FTM3OCH2SRC_Field_0 => 0,
      SOPT8_FTM3OCH2SRC_Field_1 => 1);

   --  FTM3 channel 3 output source
   type SOPT8_FTM3OCH3SRC_Field is
     (
      --  FTM3_CH3 pin is output of FTM3 channel 3 output
      SOPT8_FTM3OCH3SRC_Field_0,
      --  FTM3_CH3 pin is output of FTM3 channel 3 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH3SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH3SRC_Field use
     (SOPT8_FTM3OCH3SRC_Field_0 => 0,
      SOPT8_FTM3OCH3SRC_Field_1 => 1);

   --  FTM3 channel 4 output source
   type SOPT8_FTM3OCH4SRC_Field is
     (
      --  FTM3_CH4 pin is output of FTM3 channel 4 output
      SOPT8_FTM3OCH4SRC_Field_0,
      --  FTM3_CH4 pin is output of FTM3 channel 4 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH4SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH4SRC_Field use
     (SOPT8_FTM3OCH4SRC_Field_0 => 0,
      SOPT8_FTM3OCH4SRC_Field_1 => 1);

   --  FTM3 channel 5 output source
   type SOPT8_FTM3OCH5SRC_Field is
     (
      --  FTM3_CH5 pin is output of FTM3 channel 5 output
      SOPT8_FTM3OCH5SRC_Field_0,
      --  FTM3_CH5 pin is output of FTM3 channel 5 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH5SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH5SRC_Field use
     (SOPT8_FTM3OCH5SRC_Field_0 => 0,
      SOPT8_FTM3OCH5SRC_Field_1 => 1);

   --  FTM3 channel 6 output source
   type SOPT8_FTM3OCH6SRC_Field is
     (
      --  FTM3_CH6 pin is output of FTM3 channel 6 output
      SOPT8_FTM3OCH6SRC_Field_0,
      --  FTM3_CH6 pin is output of FTM3 channel 6 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH6SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH6SRC_Field use
     (SOPT8_FTM3OCH6SRC_Field_0 => 0,
      SOPT8_FTM3OCH6SRC_Field_1 => 1);

   --  FTM3 channel 7 output source
   type SOPT8_FTM3OCH7SRC_Field is
     (
      --  FTM3_CH7 pin is output of FTM3 channel 7 output
      SOPT8_FTM3OCH7SRC_Field_0,
      --  FTM3_CH7 pin is output of FTM3 channel 7 output modulated by FTM2
      --  channel 1 output.
      SOPT8_FTM3OCH7SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH7SRC_Field use
     (SOPT8_FTM3OCH7SRC_Field_0 => 0,
      SOPT8_FTM3OCH7SRC_Field_1 => 1);

   --  System Options Register 8
   type SIM_SOPT8_Register is record
      --  FTM0 Hardware Trigger 0 Software Synchronization
      FTM0SYNCBIT   : SOPT8_FTM0SYNCBIT_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0SYNCBIT_Field_0;
      --  FTM1 Hardware Trigger 0 Software Synchronization
      FTM1SYNCBIT   : SOPT8_FTM1SYNCBIT_Field :=
                       NRF_SVD.SIM.SOPT8_FTM1SYNCBIT_Field_0;
      --  FTM2 Hardware Trigger 0 Software Synchronization
      FTM2SYNCBIT   : SOPT8_FTM2SYNCBIT_Field :=
                       NRF_SVD.SIM.SOPT8_FTM2SYNCBIT_Field_0;
      --  FTM3 Hardware Trigger 0 Software Synchronization
      FTM3SYNCBIT   : SOPT8_FTM3SYNCBIT_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3SYNCBIT_Field_0;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
      --  FTM0 channel 0 output source
      FTM0OCH0SRC   : SOPT8_FTM0OCH0SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH0SRC_Field_0;
      --  FTM0 channel 1 output source
      FTM0OCH1SRC   : SOPT8_FTM0OCH1SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH1SRC_Field_0;
      --  FTM0 channel 2 output source
      FTM0OCH2SRC   : SOPT8_FTM0OCH2SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH2SRC_Field_0;
      --  FTM0 channel 3 output source
      FTM0OCH3SRC   : SOPT8_FTM0OCH3SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH3SRC_Field_0;
      --  FTM0 channel 4 output source
      FTM0OCH4SRC   : SOPT8_FTM0OCH4SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH4SRC_Field_0;
      --  FTM0 channel 5 output source
      FTM0OCH5SRC   : SOPT8_FTM0OCH5SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH5SRC_Field_0;
      --  FTM0 channel 6 output source
      FTM0OCH6SRC   : SOPT8_FTM0OCH6SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH6SRC_Field_0;
      --  FTM0 channel 7 output source
      FTM0OCH7SRC   : SOPT8_FTM0OCH7SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM0OCH7SRC_Field_0;
      --  FTM3 channel 0 output source
      FTM3OCH0SRC   : SOPT8_FTM3OCH0SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH0SRC_Field_0;
      --  FTM3 channel 1 output source
      FTM3OCH1SRC   : SOPT8_FTM3OCH1SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH1SRC_Field_0;
      --  FTM3 channel 2 output source
      FTM3OCH2SRC   : SOPT8_FTM3OCH2SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH2SRC_Field_0;
      --  FTM3 channel 3 output source
      FTM3OCH3SRC   : SOPT8_FTM3OCH3SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH3SRC_Field_0;
      --  FTM3 channel 4 output source
      FTM3OCH4SRC   : SOPT8_FTM3OCH4SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH4SRC_Field_0;
      --  FTM3 channel 5 output source
      FTM3OCH5SRC   : SOPT8_FTM3OCH5SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH5SRC_Field_0;
      --  FTM3 channel 6 output source
      FTM3OCH6SRC   : SOPT8_FTM3OCH6SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH6SRC_Field_0;
      --  FTM3 channel 7 output source
      FTM3OCH7SRC   : SOPT8_FTM3OCH7SRC_Field :=
                       NRF_SVD.SIM.SOPT8_FTM3OCH7SRC_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT8_Register use record
      FTM0SYNCBIT   at 0 range 0 .. 0;
      FTM1SYNCBIT   at 0 range 1 .. 1;
      FTM2SYNCBIT   at 0 range 2 .. 2;
      FTM3SYNCBIT   at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      FTM0OCH0SRC   at 0 range 16 .. 16;
      FTM0OCH1SRC   at 0 range 17 .. 17;
      FTM0OCH2SRC   at 0 range 18 .. 18;
      FTM0OCH3SRC   at 0 range 19 .. 19;
      FTM0OCH4SRC   at 0 range 20 .. 20;
      FTM0OCH5SRC   at 0 range 21 .. 21;
      FTM0OCH6SRC   at 0 range 22 .. 22;
      FTM0OCH7SRC   at 0 range 23 .. 23;
      FTM3OCH0SRC   at 0 range 24 .. 24;
      FTM3OCH1SRC   at 0 range 25 .. 25;
      FTM3OCH2SRC   at 0 range 26 .. 26;
      FTM3OCH3SRC   at 0 range 27 .. 27;
      FTM3OCH4SRC   at 0 range 28 .. 28;
      FTM3OCH5SRC   at 0 range 29 .. 29;
      FTM3OCH6SRC   at 0 range 30 .. 30;
      FTM3OCH7SRC   at 0 range 31 .. 31;
   end record;

   --  TPM1 channel 0 input capture source select
   type SOPT9_TPM1CH0SRC_Field is
     (
      --  TPM1_CH0 signal
      SOPT9_TPM1CH0SRC_Field_00,
      --  CMP0 output
      SOPT9_TPM1CH0SRC_Field_01,
      --  CMP1 output
      SOPT9_TPM1CH0SRC_Field_10)
     with Size => 2;
   for SOPT9_TPM1CH0SRC_Field use
     (SOPT9_TPM1CH0SRC_Field_00 => 0,
      SOPT9_TPM1CH0SRC_Field_01 => 1,
      SOPT9_TPM1CH0SRC_Field_10 => 2);

   --  TPM2 channel 0 input capture source select
   type SOPT9_TPM2CH0SRC_Field is
     (
      --  TPM2_CH0 signal
      SOPT9_TPM2CH0SRC_Field_00,
      --  CMP0 output
      SOPT9_TPM2CH0SRC_Field_01,
      --  CMP1 output
      SOPT9_TPM2CH0SRC_Field_10)
     with Size => 2;
   for SOPT9_TPM2CH0SRC_Field use
     (SOPT9_TPM2CH0SRC_Field_00 => 0,
      SOPT9_TPM2CH0SRC_Field_01 => 1,
      SOPT9_TPM2CH0SRC_Field_10 => 2);

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
      Reserved_22_24 : HAL.UInt3 := 16#0#;
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
      Reserved_22_24 at 0 range 22 .. 24;
      TPM1CLKSEL     at 0 range 25 .. 25;
      TPM2CLKSEL     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Pincount identification
   type SDID_PINID_Field is
     (
      --  32-pin
      SDID_PINID_Field_0010,
      --  48-pin
      SDID_PINID_Field_0100,
      --  64-pin
      SDID_PINID_Field_0101,
      --  80-pin
      SDID_PINID_Field_0110,
      --  81-pin or 121-pin
      SDID_PINID_Field_0111,
      --  100-pin
      SDID_PINID_Field_1000,
      --  121-pin
      SDID_PINID_Field_1001,
      --  144-pin
      SDID_PINID_Field_1010,
      --  Custom pinout (WLCSP)
      SDID_PINID_Field_1011,
      --  169-pin
      SDID_PINID_Field_1100,
      --  256-pin
      SDID_PINID_Field_1110)
     with Size => 4;
   for SDID_PINID_Field use
     (SDID_PINID_Field_0010 => 2,
      SDID_PINID_Field_0100 => 4,
      SDID_PINID_Field_0101 => 5,
      SDID_PINID_Field_0110 => 6,
      SDID_PINID_Field_0111 => 7,
      SDID_PINID_Field_1000 => 8,
      SDID_PINID_Field_1001 => 9,
      SDID_PINID_Field_1010 => 10,
      SDID_PINID_Field_1011 => 11,
      SDID_PINID_Field_1100 => 12,
      SDID_PINID_Field_1110 => 14);

   --  Kinetis family identification
   type SDID_FAMID_Field is
     (
      --  K1x Family (without tamper)
      SDID_FAMID_Field_000,
      --  K2x Family (without tamper)
      SDID_FAMID_Field_001,
      --  K3x Family or K1x/K6x Family (with tamper)
      SDID_FAMID_Field_010,
      --  K4x Family or K2x Family (with tamper)
      SDID_FAMID_Field_011,
      --  K6x Family (without tamper)
      SDID_FAMID_Field_100,
      --  K7x Family
      SDID_FAMID_Field_101)
     with Size => 3;
   for SDID_FAMID_Field use
     (SDID_FAMID_Field_000 => 0,
      SDID_FAMID_Field_001 => 1,
      SDID_FAMID_Field_010 => 2,
      SDID_FAMID_Field_011 => 3,
      SDID_FAMID_Field_100 => 4,
      SDID_FAMID_Field_101 => 5);

   subtype SIM_SDID_DIEID_Field is HAL.UInt5;
   subtype SIM_SDID_REVID_Field is HAL.UInt4;

   --  Kinetis Series ID
   type SDID_SERIESID_Field is
     (
      --  Kinetis K series
      SDID_SERIESID_Field_0000,
      --  Kinetis L series
      SDID_SERIESID_Field_0001,
      --  Kinetis W series
      SDID_SERIESID_Field_0101,
      --  Kinetis V series
      SDID_SERIESID_Field_0110)
     with Size => 4;
   for SDID_SERIESID_Field use
     (SDID_SERIESID_Field_0000 => 0,
      SDID_SERIESID_Field_0001 => 1,
      SDID_SERIESID_Field_0101 => 5,
      SDID_SERIESID_Field_0110 => 6);

   --  Kinetis Sub-Family ID
   type SDID_SUBFAMID_Field is
     (
      --  Kx0 Subfamily
      SDID_SUBFAMID_Field_0000,
      --  Kx1 Subfamily (tamper detect)
      SDID_SUBFAMID_Field_0001,
      --  Kx2 Subfamily
      SDID_SUBFAMID_Field_0010,
      --  Kx3 Subfamily (tamper detect)
      SDID_SUBFAMID_Field_0011,
      --  Kx4 Subfamily
      SDID_SUBFAMID_Field_0100,
      --  Kx5 Subfamily (tamper detect)
      SDID_SUBFAMID_Field_0101,
      --  Kx6 Subfamily
      SDID_SUBFAMID_Field_0110)
     with Size => 4;
   for SDID_SUBFAMID_Field use
     (SDID_SUBFAMID_Field_0000 => 0,
      SDID_SUBFAMID_Field_0001 => 1,
      SDID_SUBFAMID_Field_0010 => 2,
      SDID_SUBFAMID_Field_0011 => 3,
      SDID_SUBFAMID_Field_0100 => 4,
      SDID_SUBFAMID_Field_0101 => 5,
      SDID_SUBFAMID_Field_0110 => 6);

   --  Kinetis Family ID
   type SDID_FAMILYID_Field is
     (
      --  K0x Family
      SDID_FAMILYID_Field_0000,
      --  K1x Family
      SDID_FAMILYID_Field_0001,
      --  K2x Family
      SDID_FAMILYID_Field_0010,
      --  K3x Family
      SDID_FAMILYID_Field_0011,
      --  K4x Family
      SDID_FAMILYID_Field_0100,
      --  K6x Family
      SDID_FAMILYID_Field_0110,
      --  K7x Family
      SDID_FAMILYID_Field_0111,
      --  K8x Family
      SDID_FAMILYID_Field_1000)
     with Size => 4;
   for SDID_FAMILYID_Field use
     (SDID_FAMILYID_Field_0000 => 0,
      SDID_FAMILYID_Field_0001 => 1,
      SDID_FAMILYID_Field_0010 => 2,
      SDID_FAMILYID_Field_0011 => 3,
      SDID_FAMILYID_Field_0100 => 4,
      SDID_FAMILYID_Field_0110 => 6,
      SDID_FAMILYID_Field_0111 => 7,
      SDID_FAMILYID_Field_1000 => 8);

   --  System Device Identification Register
   type SIM_SDID_Register is record
      --  Read-only. Pincount identification
      PINID          : SDID_PINID_Field;
      --  Read-only. Kinetis family identification
      FAMID          : SDID_FAMID_Field;
      --  Read-only. Device Die ID
      DIEID          : SIM_SDID_DIEID_Field;
      --  Read-only. Device revision number
      REVID          : SIM_SDID_REVID_Field;
      --  unspecified
      Reserved_16_19 : HAL.UInt4;
      --  Read-only. Kinetis Series ID
      SERIESID       : SDID_SERIESID_Field;
      --  Read-only. Kinetis Sub-Family ID
      SUBFAMID       : SDID_SUBFAMID_Field;
      --  Read-only. Kinetis Family ID
      FAMILYID       : SDID_FAMILYID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SDID_Register use record
      PINID          at 0 range 0 .. 3;
      FAMID          at 0 range 4 .. 6;
      DIEID          at 0 range 7 .. 11;
      REVID          at 0 range 12 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      SERIESID       at 0 range 20 .. 23;
      SUBFAMID       at 0 range 24 .. 27;
      FAMILYID       at 0 range 28 .. 31;
   end record;

   --  I2C2 Clock Gate Control
   type SCGC1_I2C2_Field is
     (
      --  Clock disabled
      SCGC1_I2C2_Field_0,
      --  Clock enabled
      SCGC1_I2C2_Field_1)
     with Size => 1;
   for SCGC1_I2C2_Field use
     (SCGC1_I2C2_Field_0 => 0,
      SCGC1_I2C2_Field_1 => 1);

   --  SIM_SCGC1_I2C array
   type SIM_SCGC1_I2C_Field_Array is array (2 .. 3) of SCGC1_I2C2_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC1_I2C
   type SIM_SCGC1_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : SIM_SCGC1_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC1_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  System Clock Gating Control Register 1
   type SIM_SCGC1_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  I2C2 Clock Gate Control
      I2C           : SIM_SCGC1_I2C_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC1_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      I2C           at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LPUART0 Clock Gate Control
   type SCGC2_LPUART0_Field is
     (
      --  Clock disabled
      SCGC2_LPUART0_Field_0,
      --  Clock enabled
      SCGC2_LPUART0_Field_1)
     with Size => 1;
   for SCGC2_LPUART0_Field use
     (SCGC2_LPUART0_Field_0 => 0,
      SCGC2_LPUART0_Field_1 => 1);

   --  SIM_SCGC2_LPUART array
   type SIM_SCGC2_LPUART_Field_Array is array (0 .. 3) of SCGC2_LPUART0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for SIM_SCGC2_LPUART
   type SIM_SCGC2_LPUART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPUART as a value
            Val : HAL.UInt4;
         when True =>
            --  LPUART as an array
            Arr : SIM_SCGC2_LPUART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SIM_SCGC2_LPUART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TPM1 Clock Gate Control
   type SCGC2_TPM1_Field is
     (
      --  Clock disabled
      SCGC2_TPM1_Field_0,
      --  Clock enabled
      SCGC2_TPM1_Field_1)
     with Size => 1;
   for SCGC2_TPM1_Field use
     (SCGC2_TPM1_Field_0 => 0,
      SCGC2_TPM1_Field_1 => 1);

   --  SIM_SCGC2_TPM array
   type SIM_SCGC2_TPM_Field_Array is array (1 .. 2) of SCGC2_TPM1_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC2_TPM
   type SIM_SCGC2_TPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TPM as a value
            Val : HAL.UInt2;
         when True =>
            --  TPM as an array
            Arr : SIM_SCGC2_TPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC2_TPM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC0 Clock Gate Control
   type SCGC2_DAC0_Field is
     (
      --  Clock disabled
      SCGC2_DAC0_Field_0,
      --  Clock enabled
      SCGC2_DAC0_Field_1)
     with Size => 1;
   for SCGC2_DAC0_Field use
     (SCGC2_DAC0_Field_0 => 0,
      SCGC2_DAC0_Field_1 => 1);

   --  LTC Clock Gate Control
   type SCGC2_LTC_Field is
     (
      --  Clock disabled
      SCGC2_LTC_Field_0,
      --  Clock enabled
      SCGC2_LTC_Field_1)
     with Size => 1;
   for SCGC2_LTC_Field use
     (SCGC2_LTC_Field_0 => 0,
      SCGC2_LTC_Field_1 => 1);

   --  EMVSIM0 Clock Gate Control
   type SCGC2_EMVSIM0_Field is
     (
      --  Clock disabled
      SCGC2_EMVSIM0_Field_0,
      --  Clock enabled
      SCGC2_EMVSIM0_Field_1)
     with Size => 1;
   for SCGC2_EMVSIM0_Field use
     (SCGC2_EMVSIM0_Field_0 => 0,
      SCGC2_EMVSIM0_Field_1 => 1);

   --  SIM_SCGC2_EMVSIM array
   type SIM_SCGC2_EMVSIM_Field_Array is array (0 .. 1) of SCGC2_EMVSIM0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC2_EMVSIM
   type SIM_SCGC2_EMVSIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMVSIM as a value
            Val : HAL.UInt2;
         when True =>
            --  EMVSIM as an array
            Arr : SIM_SCGC2_EMVSIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC2_EMVSIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  LPUART4 Clock Gate Control
   type SCGC2_LPUART4_Field is
     (
      --  Clock disabled
      SCGC2_LPUART4_Field_0,
      --  Clock enabled
      SCGC2_LPUART4_Field_1)
     with Size => 1;
   for SCGC2_LPUART4_Field use
     (SCGC2_LPUART4_Field_0 => 0,
      SCGC2_LPUART4_Field_1 => 1);

   --  QSPI Clock Gate Control
   type SCGC2_QSPI_Field is
     (
      --  Clock disabled
      SCGC2_QSPI_Field_0,
      --  Clock enabled
      SCGC2_QSPI_Field_1)
     with Size => 1;
   for SCGC2_QSPI_Field use
     (SCGC2_QSPI_Field_0 => 0,
      SCGC2_QSPI_Field_1 => 1);

   --  FlexIO Clock Gate Control
   type SCGC2_FLEXIO_Field is
     (
      --  Clock disabled
      SCGC2_FLEXIO_Field_0,
      --  Clock enabled
      SCGC2_FLEXIO_Field_1)
     with Size => 1;
   for SCGC2_FLEXIO_Field use
     (SCGC2_FLEXIO_Field_0 => 0,
      SCGC2_FLEXIO_Field_1 => 1);

   --  System Clock Gating Control Register 2
   type SIM_SCGC2_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  LPUART0 Clock Gate Control
      LPUART         : SIM_SCGC2_LPUART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  TPM1 Clock Gate Control
      TPM            : SIM_SCGC2_TPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  DAC0 Clock Gate Control
      DAC0           : SCGC2_DAC0_Field := NRF_SVD.SIM.SCGC2_DAC0_Field_0;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  LTC Clock Gate Control
      LTC            : SCGC2_LTC_Field := NRF_SVD.SIM.SCGC2_LTC_Field_0;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  EMVSIM0 Clock Gate Control
      EMVSIM         : SIM_SCGC2_EMVSIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  LPUART4 Clock Gate Control
      LPUART4        : SCGC2_LPUART4_Field :=
                        NRF_SVD.SIM.SCGC2_LPUART4_Field_0;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  QSPI Clock Gate Control
      QSPI           : SCGC2_QSPI_Field := NRF_SVD.SIM.SCGC2_QSPI_Field_0;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  FlexIO Clock Gate Control
      FLEXIO         : SCGC2_FLEXIO_Field := NRF_SVD.SIM.SCGC2_FLEXIO_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      LPUART         at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TPM            at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DAC0           at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      LTC            at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      EMVSIM         at 0 range 20 .. 21;
      LPUART4        at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      QSPI           at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      FLEXIO         at 0 range 31 .. 31;
   end record;

   --  TRNG Clock Gate Control
   type SCGC3_TRNG_Field is
     (
      --  Clock disabled
      SCGC3_TRNG_Field_0,
      --  Clock enabled
      SCGC3_TRNG_Field_1)
     with Size => 1;
   for SCGC3_TRNG_Field use
     (SCGC3_TRNG_Field_0 => 0,
      SCGC3_TRNG_Field_1 => 1);

   --  SPI2 Clock Gate Control
   type SCGC3_SPI2_Field is
     (
      --  Clock disabled
      SCGC3_SPI2_Field_0,
      --  Clock enabled
      SCGC3_SPI2_Field_1)
     with Size => 1;
   for SCGC3_SPI2_Field use
     (SCGC3_SPI2_Field_0 => 0,
      SCGC3_SPI2_Field_1 => 1);

   --  SDHC Clock Gate Control
   type SCGC3_SDHC_Field is
     (
      --  Clock disabled
      SCGC3_SDHC_Field_0,
      --  Clock enabled
      SCGC3_SDHC_Field_1)
     with Size => 1;
   for SCGC3_SDHC_Field use
     (SCGC3_SDHC_Field_0 => 0,
      SCGC3_SDHC_Field_1 => 1);

   --  FTM2 Clock Gate Control
   type SCGC3_FTM2_Field is
     (
      --  Clock disabled
      SCGC3_FTM2_Field_0,
      --  Clock enabled
      SCGC3_FTM2_Field_1)
     with Size => 1;
   for SCGC3_FTM2_Field use
     (SCGC3_FTM2_Field_0 => 0,
      SCGC3_FTM2_Field_1 => 1);

   --  SIM_SCGC3_FTM array
   type SIM_SCGC3_FTM_Field_Array is array (2 .. 3) of SCGC3_FTM2_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC3_FTM
   type SIM_SCGC3_FTM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FTM as a value
            Val : HAL.UInt2;
         when True =>
            --  FTM as an array
            Arr : SIM_SCGC3_FTM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC3_FTM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  System Clock Gating Control Register 3
   type SIM_SCGC3_Register is record
      --  TRNG Clock Gate Control
      TRNG           : SCGC3_TRNG_Field := NRF_SVD.SIM.SCGC3_TRNG_Field_0;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  SPI2 Clock Gate Control
      SPI2           : SCGC3_SPI2_Field := NRF_SVD.SIM.SCGC3_SPI2_Field_0;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  SDHC Clock Gate Control
      SDHC           : SCGC3_SDHC_Field := NRF_SVD.SIM.SCGC3_SDHC_Field_0;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  FTM2 Clock Gate Control
      FTM            : SIM_SCGC3_FTM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC3_Register use record
      TRNG           at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      SPI2           at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      SDHC           at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      FTM            at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
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

   --  CMT Clock Gate Control
   type SCGC4_CMT_Field is
     (
      --  Clock disabled
      SCGC4_CMT_Field_0,
      --  Clock enabled
      SCGC4_CMT_Field_1)
     with Size => 1;
   for SCGC4_CMT_Field use
     (SCGC4_CMT_Field_0 => 0,
      SCGC4_CMT_Field_1 => 1);

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

   --  USB Clock Gate Control
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

   --  Comparator Clock Gate Control
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
      --  CMT Clock Gate Control
      CMT            : SCGC4_CMT_Field := NRF_SVD.SIM.SCGC4_CMT_Field_0;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#6#;
      --  I2C0 Clock Gate Control
      I2C            : SIM_SCGC4_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_17  : HAL.UInt10 := 16#0#;
      --  USB Clock Gate Control
      USBOTG         : SCGC4_USBOTG_Field := NRF_SVD.SIM.SCGC4_USBOTG_Field_0;
      --  Comparator Clock Gate Control
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
      CMT            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      I2C            at 0 range 6 .. 7;
      Reserved_8_17  at 0 range 8 .. 17;
      USBOTG         at 0 range 18 .. 18;
      CMP            at 0 range 19 .. 19;
      VREF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
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

   --  LPTMR1 Clock Gate Control
   type SCGC5_LPTMR1_Field is
     (
      --  Access disabled
      SCGC5_LPTMR1_Field_0,
      --  Access enabled
      SCGC5_LPTMR1_Field_1)
     with Size => 1;
   for SCGC5_LPTMR1_Field use
     (SCGC5_LPTMR1_Field_0 => 0,
      SCGC5_LPTMR1_Field_1 => 1);

   --  TSI Clock Gate Control
   type SCGC5_TSI_Field is
     (
      --  Clock disabled
      SCGC5_TSI_Field_0,
      --  Clock enabled
      SCGC5_TSI_Field_1)
     with Size => 1;
   for SCGC5_TSI_Field use
     (SCGC5_TSI_Field_0 => 0,
      SCGC5_TSI_Field_1 => 1);

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

   --  System Clock Gating Control Register 5
   type SIM_SCGC5_Register is record
      --  Low Power Timer Access Control
      LPTMR          : SCGC5_LPTMR_Field := NRF_SVD.SIM.SCGC5_LPTMR_Field_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#1#;
      --  LPTMR1 Clock Gate Control
      LPTMR1         : SCGC5_LPTMR1_Field := NRF_SVD.SIM.SCGC5_LPTMR1_Field_0;
      --  TSI Clock Gate Control
      TSI            : SCGC5_TSI_Field := NRF_SVD.SIM.SCGC5_TSI_Field_0;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#6#;
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
      Reserved_14_31 : HAL.UInt18 := 16#10#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC5_Register use record
      LPTMR          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      LPTMR1         at 0 range 4 .. 4;
      TSI            at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      PORTA          at 0 range 9 .. 9;
      PORTB          at 0 range 10 .. 10;
      PORTC          at 0 range 11 .. 11;
      PORTD          at 0 range 12 .. 12;
      PORTE          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
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

   --  I2S Clock Gate Control
   type SCGC6_I2S_Field is
     (
      --  Clock disabled
      SCGC6_I2S_Field_0,
      --  Clock enabled
      SCGC6_I2S_Field_1)
     with Size => 1;
   for SCGC6_I2S_Field use
     (SCGC6_I2S_Field_0 => 0,
      SCGC6_I2S_Field_1 => 1);

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

   --  USB DCD Clock Gate Control
   type SCGC6_USBDCD_Field is
     (
      --  Clock disabled
      SCGC6_USBDCD_Field_0,
      --  Clock enabled
      SCGC6_USBDCD_Field_1)
     with Size => 1;
   for SCGC6_USBDCD_Field use
     (SCGC6_USBDCD_Field_0 => 0,
      SCGC6_USBDCD_Field_1 => 1);

   --  PDB Clock Gate Control
   type SCGC6_PDB_Field is
     (
      --  Clock disabled
      SCGC6_PDB_Field_0,
      --  Clock enabled
      SCGC6_PDB_Field_1)
     with Size => 1;
   for SCGC6_PDB_Field use
     (SCGC6_PDB_Field_0 => 0,
      SCGC6_PDB_Field_1 => 1);

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

   --  FTM0 Clock Gate Control
   type SCGC6_FTM0_Field is
     (
      --  Clock disabled
      SCGC6_FTM0_Field_0,
      --  Clock enabled
      SCGC6_FTM0_Field_1)
     with Size => 1;
   for SCGC6_FTM0_Field use
     (SCGC6_FTM0_Field_0 => 0,
      SCGC6_FTM0_Field_1 => 1);

   --  SIM_SCGC6_FTM array
   type SIM_SCGC6_FTM_Field_Array is array (0 .. 2) of SCGC6_FTM0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for SIM_SCGC6_FTM
   type SIM_SCGC6_FTM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FTM as a value
            Val : HAL.UInt3;
         when True =>
            --  FTM as an array
            Arr : SIM_SCGC6_FTM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SIM_SCGC6_FTM_Field use record
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
      --  Flash Memory Clock Gate Control
      FTF            : SCGC6_FTF_Field := NRF_SVD.SIM.SCGC6_FTF_Field_1;
      --  DMA Mux Clock Gate Control
      DMAMUX         : SCGC6_DMAMUX_Field := NRF_SVD.SIM.SCGC6_DMAMUX_Field_0;
      --  unspecified
      Reserved_2_11  : HAL.UInt10 := 16#0#;
      --  SPI0 Clock Gate Control
      SPI            : SIM_SCGC6_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  I2S Clock Gate Control
      I2S            : SCGC6_I2S_Field := NRF_SVD.SIM.SCGC6_I2S_Field_0;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  CRC Clock Gate Control
      CRC            : SCGC6_CRC_Field := NRF_SVD.SIM.SCGC6_CRC_Field_0;
      --  unspecified
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  USB DCD Clock Gate Control
      USBDCD         : SCGC6_USBDCD_Field := NRF_SVD.SIM.SCGC6_USBDCD_Field_0;
      --  PDB Clock Gate Control
      PDB            : SCGC6_PDB_Field := NRF_SVD.SIM.SCGC6_PDB_Field_0;
      --  PIT Clock Gate Control
      PIT            : SCGC6_PIT_Field := NRF_SVD.SIM.SCGC6_PIT_Field_0;
      --  FTM0 Clock Gate Control
      FTM            : SIM_SCGC6_FTM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 Clock Gate Control
      ADC0           : SCGC6_ADC0_Field := NRF_SVD.SIM.SCGC6_ADC0_Field_0;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  RTC Access Control
      RTC            : SCGC6_RTC_Field := NRF_SVD.SIM.SCGC6_RTC_Field_0;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#1#;
      --  DAC0 Clock Gate Control
      DAC0           : SCGC6_DAC0_Field := NRF_SVD.SIM.SCGC6_DAC0_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC6_Register use record
      FTF            at 0 range 0 .. 0;
      DMAMUX         at 0 range 1 .. 1;
      Reserved_2_11  at 0 range 2 .. 11;
      SPI            at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      I2S            at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      CRC            at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      USBDCD         at 0 range 21 .. 21;
      PDB            at 0 range 22 .. 22;
      PIT            at 0 range 23 .. 23;
      FTM            at 0 range 24 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      RTC            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      DAC0           at 0 range 31 .. 31;
   end record;

   --  FlexBus Clock Gate Control
   type SCGC7_FLEXBUS_Field is
     (
      --  Clock disabled
      SCGC7_FLEXBUS_Field_0,
      --  Clock enabled
      SCGC7_FLEXBUS_Field_1)
     with Size => 1;
   for SCGC7_FLEXBUS_Field use
     (SCGC7_FLEXBUS_Field_0 => 0,
      SCGC7_FLEXBUS_Field_1 => 1);

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

   --  SDRAMC Clock Gate Control
   type SCGC7_SDRAMC_Field is
     (
      --  Clock disabled
      SCGC7_SDRAMC_Field_0,
      --  Clock enabled
      SCGC7_SDRAMC_Field_1)
     with Size => 1;
   for SCGC7_SDRAMC_Field use
     (SCGC7_SDRAMC_Field_0 => 0,
      SCGC7_SDRAMC_Field_1 => 1);

   --  System Clock Gating Control Register 7
   type SIM_SCGC7_Register is record
      --  FlexBus Clock Gate Control
      FLEXBUS       : SCGC7_FLEXBUS_Field :=
                       NRF_SVD.SIM.SCGC7_FLEXBUS_Field_0;
      --  DMA Clock Gate Control
      DMA           : SCGC7_DMA_Field := NRF_SVD.SIM.SCGC7_DMA_Field_1;
      --  MPU Clock Gate Control
      MPU           : SCGC7_MPU_Field := NRF_SVD.SIM.SCGC7_MPU_Field_1;
      --  SDRAMC Clock Gate Control
      SDRAMC        : SCGC7_SDRAMC_Field := NRF_SVD.SIM.SCGC7_SDRAMC_Field_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC7_Register use record
      FLEXBUS       at 0 range 0 .. 0;
      DMA           at 0 range 1 .. 1;
      MPU           at 0 range 2 .. 2;
      SDRAMC        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

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

   --  Clock 3 output divider value
   type CLKDIV1_OUTDIV3_Field is
     (
      --  Divide-by-1.
      CLKDIV1_OUTDIV3_Field_0000,
      --  Divide-by-2.
      CLKDIV1_OUTDIV3_Field_0001,
      --  Divide-by-3.
      CLKDIV1_OUTDIV3_Field_0010,
      --  Divide-by-4.
      CLKDIV1_OUTDIV3_Field_0011,
      --  Divide-by-5.
      CLKDIV1_OUTDIV3_Field_0100,
      --  Divide-by-6.
      CLKDIV1_OUTDIV3_Field_0101,
      --  Divide-by-7.
      CLKDIV1_OUTDIV3_Field_0110,
      --  Divide-by-8.
      CLKDIV1_OUTDIV3_Field_0111,
      --  Divide-by-9.
      CLKDIV1_OUTDIV3_Field_1000,
      --  Divide-by-10.
      CLKDIV1_OUTDIV3_Field_1001,
      --  Divide-by-11.
      CLKDIV1_OUTDIV3_Field_1010,
      --  Divide-by-12.
      CLKDIV1_OUTDIV3_Field_1011,
      --  Divide-by-13.
      CLKDIV1_OUTDIV3_Field_1100,
      --  Divide-by-14.
      CLKDIV1_OUTDIV3_Field_1101,
      --  Divide-by-15.
      CLKDIV1_OUTDIV3_Field_1110,
      --  Divide-by-16.
      CLKDIV1_OUTDIV3_Field_1111)
     with Size => 4;
   for CLKDIV1_OUTDIV3_Field use
     (CLKDIV1_OUTDIV3_Field_0000 => 0,
      CLKDIV1_OUTDIV3_Field_0001 => 1,
      CLKDIV1_OUTDIV3_Field_0010 => 2,
      CLKDIV1_OUTDIV3_Field_0011 => 3,
      CLKDIV1_OUTDIV3_Field_0100 => 4,
      CLKDIV1_OUTDIV3_Field_0101 => 5,
      CLKDIV1_OUTDIV3_Field_0110 => 6,
      CLKDIV1_OUTDIV3_Field_0111 => 7,
      CLKDIV1_OUTDIV3_Field_1000 => 8,
      CLKDIV1_OUTDIV3_Field_1001 => 9,
      CLKDIV1_OUTDIV3_Field_1010 => 10,
      CLKDIV1_OUTDIV3_Field_1011 => 11,
      CLKDIV1_OUTDIV3_Field_1100 => 12,
      CLKDIV1_OUTDIV3_Field_1101 => 13,
      CLKDIV1_OUTDIV3_Field_1110 => 14,
      CLKDIV1_OUTDIV3_Field_1111 => 15);

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
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Clock 4 output divider value
      OUTDIV4       : CLKDIV1_OUTDIV4_Field :=
                       NRF_SVD.SIM.CLKDIV1_OUTDIV4_Field_0001;
      --  Clock 3 output divider value
      OUTDIV3       : CLKDIV1_OUTDIV3_Field :=
                       NRF_SVD.SIM.CLKDIV1_OUTDIV3_Field_0001;
      --  Clock 2 output divider value
      OUTDIV2       : CLKDIV1_OUTDIV2_Field :=
                       NRF_SVD.SIM.CLKDIV1_OUTDIV2_Field_0000;
      --  Clock 1 output divider value
      OUTDIV1       : CLKDIV1_OUTDIV1_Field :=
                       NRF_SVD.SIM.CLKDIV1_OUTDIV1_Field_0000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV1_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      OUTDIV4       at 0 range 16 .. 19;
      OUTDIV3       at 0 range 20 .. 23;
      OUTDIV2       at 0 range 24 .. 27;
      OUTDIV1       at 0 range 28 .. 31;
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
      --  256 KB of program flash memory
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

   subtype SIM_FCFG2_MAXADDR1_Field is HAL.UInt7;
   subtype SIM_FCFG2_MAXADDR0_Field is HAL.UInt7;

   --  Flash Configuration Register 2
   type SIM_FCFG2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. Max address block 1
      MAXADDR1       : SIM_FCFG2_MAXADDR1_Field;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Max address block 0
      MAXADDR0       : SIM_FCFG2_MAXADDR0_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FCFG2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MAXADDR1       at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
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

   subtype SIM_CLKDIV4_TRACEDIV_Field is HAL.UInt3;

   --  System Clock Divider Register 4
   type SIM_CLKDIV4_Register is record
      --  Trace clock divider fraction
      TRACEFRAC     : Boolean := False;
      --  Trace clock divider divisor
      TRACEDIV      : SIM_CLKDIV4_TRACEDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV4_Register use record
      TRACEFRAC     at 0 range 0 .. 0;
      TRACEDIV      at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  System Options Register 1
      SOPT1    : aliased SIM_SOPT1_Register;
      --  SOPT1 Configuration Register
      SOPT1CFG : aliased SIM_SOPT1CFG_Register;
      --  System Options Register 2
      SOPT2    : aliased SIM_SOPT2_Register;
      --  System Options Register 4
      SOPT4    : aliased SIM_SOPT4_Register;
      --  System Options Register 5
      SOPT5    : aliased SIM_SOPT5_Register;
      --  System Options Register 7
      SOPT7    : aliased SIM_SOPT7_Register;
      --  System Options Register 8
      SOPT8    : aliased SIM_SOPT8_Register;
      --  System Options Register 9
      SOPT9    : aliased SIM_SOPT9_Register;
      --  System Device Identification Register
      SDID     : aliased SIM_SDID_Register;
      --  System Clock Gating Control Register 1
      SCGC1    : aliased SIM_SCGC1_Register;
      --  System Clock Gating Control Register 2
      SCGC2    : aliased SIM_SCGC2_Register;
      --  System Clock Gating Control Register 3
      SCGC3    : aliased SIM_SCGC3_Register;
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
      --  System Clock Divider Register 4
      CLKDIV4  : aliased SIM_CLKDIV4_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SOPT1    at 16#0# range 0 .. 31;
      SOPT1CFG at 16#4# range 0 .. 31;
      SOPT2    at 16#1004# range 0 .. 31;
      SOPT4    at 16#100C# range 0 .. 31;
      SOPT5    at 16#1010# range 0 .. 31;
      SOPT7    at 16#1018# range 0 .. 31;
      SOPT8    at 16#101C# range 0 .. 31;
      SOPT9    at 16#1020# range 0 .. 31;
      SDID     at 16#1024# range 0 .. 31;
      SCGC1    at 16#1028# range 0 .. 31;
      SCGC2    at 16#102C# range 0 .. 31;
      SCGC3    at 16#1030# range 0 .. 31;
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
      CLKDIV4  at 16#1068# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
