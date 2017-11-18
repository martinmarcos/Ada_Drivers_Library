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

--  This spec has been automatically generated from MKV31F51212.xml

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

   --  32K Oscillator Clock Output
   type SOPT1_OSC32KOUT_Field is
     (
      --  ERCLK32K is not output.
      SOPT1_OSC32KOUT_Field_00,
      --  ERCLK32K is output on PTE0.
      SOPT1_OSC32KOUT_Field_01,
      --  ERCLK32K is output on PTE26.
      SOPT1_OSC32KOUT_Field_10)
     with Size => 2;
   for SOPT1_OSC32KOUT_Field use
     (SOPT1_OSC32KOUT_Field_00 => 0,
      SOPT1_OSC32KOUT_Field_01 => 1,
      SOPT1_OSC32KOUT_Field_10 => 2);

   --  32K oscillator clock select
   type SOPT1_OSC32KSEL_Field is
     (
      --  System oscillator (OSC32KCLK)
      SOPT1_OSC32KSEL_Field_00,
      --  LPO 1 kHz
      SOPT1_OSC32KSEL_Field_11)
     with Size => 2;
   for SOPT1_OSC32KSEL_Field use
     (SOPT1_OSC32KSEL_Field_00 => 0,
      SOPT1_OSC32KSEL_Field_11 => 3);

   --  System Options Register 1
   type SIM_SOPT1_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Read-only. RAM size
      RAMSIZE        : SOPT1_RAMSIZE_Field := Sopt1_Ramsize_Field_Reset;
      --  32K Oscillator Clock Output
      OSC32KOUT      : SOPT1_OSC32KOUT_Field :=
                        NRF_SVD.SIM.SOPT1_OSC32KOUT_Field_00;
      --  32K oscillator clock select
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
      OSC32KOUT      at 0 range 16 .. 17;
      OSC32KSEL      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

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
      SOPT2_CLKOUTSEL_Field_110 => 6,
      SOPT2_CLKOUTSEL_Field_111 => 7);

   --  FlexBus security level
   type SOPT2_FBSL_Field is
     (
      --  All off-chip accesses (instruction and data) via the FlexBus are
      --  disallowed.
      SOPT2_FBSL_Field_00,
      --  All off-chip accesses (instruction and data) via the FlexBus are
      --  disallowed.
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
      --  MCGOUTCLK
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

   --  LPUART clock source select
   type SOPT2_LPUARTSRC_Field is
     (
      --  Clock disabled
      SOPT2_LPUARTSRC_Field_00,
      --  MCGFLLCLK , or MCGPLLCLK , or IRC48M clock as selected by
      --  SOPT2[PLLFLLSEL].
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

   --  System Options Register 2
   type SIM_SOPT2_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
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
      --  unspecified
      Reserved_18_25 : HAL.UInt8 := 16#0#;
      --  LPUART clock source select
      LPUARTSRC      : SOPT2_LPUARTSRC_Field :=
                        NRF_SVD.SIM.SOPT2_LPUARTSRC_Field_00;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT2_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CLKOUTSEL      at 0 range 5 .. 7;
      FBSL           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TRACECLKSEL    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PLLFLLSEL      at 0 range 16 .. 17;
      Reserved_18_25 at 0 range 18 .. 25;
      LPUARTSRC      at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
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
      SOPT4_FTM1CH0SRC_Field_10)
     with Size => 2;
   for SOPT4_FTM1CH0SRC_Field use
     (SOPT4_FTM1CH0SRC_Field_00 => 0,
      SOPT4_FTM1CH0SRC_Field_01 => 1,
      SOPT4_FTM1CH0SRC_Field_10 => 2);

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

   --  UART 0 transmit data source select
   type SOPT5_UART0TXSRC_Field is
     (
      --  UART0_TX pin
      SOPT5_UART0TXSRC_Field_00,
      --  UART0_TX pin modulated with FTM1 channel 0 output
      SOPT5_UART0TXSRC_Field_01,
      --  UART0_TX pin modulated with FTM2 channel 0 output
      SOPT5_UART0TXSRC_Field_10)
     with Size => 2;
   for SOPT5_UART0TXSRC_Field use
     (SOPT5_UART0TXSRC_Field_00 => 0,
      SOPT5_UART0TXSRC_Field_01 => 1,
      SOPT5_UART0TXSRC_Field_10 => 2);

   --  UART 0 receive data source select
   type SOPT5_UART0RXSRC_Field is
     (
      --  UART0_RX pin
      SOPT5_UART0RXSRC_Field_00,
      --  CMP0
      SOPT5_UART0RXSRC_Field_01,
      --  CMP1
      SOPT5_UART0RXSRC_Field_10)
     with Size => 2;
   for SOPT5_UART0RXSRC_Field use
     (SOPT5_UART0RXSRC_Field_00 => 0,
      SOPT5_UART0RXSRC_Field_01 => 1,
      SOPT5_UART0RXSRC_Field_10 => 2);

   --  UART 1 transmit data source select
   type SOPT5_UART1TXSRC_Field is
     (
      --  UART1_TX pin
      SOPT5_UART1TXSRC_Field_00,
      --  UART1_TX pin modulated with FTM1 channel 0 output
      SOPT5_UART1TXSRC_Field_01,
      --  UART1_TX pin modulated with FTM2 channel 0 output
      SOPT5_UART1TXSRC_Field_10)
     with Size => 2;
   for SOPT5_UART1TXSRC_Field use
     (SOPT5_UART1TXSRC_Field_00 => 0,
      SOPT5_UART1TXSRC_Field_01 => 1,
      SOPT5_UART1TXSRC_Field_10 => 2);

   --  UART 1 receive data source select
   type SOPT5_UART1RXSRC_Field is
     (
      --  UART1_RX pin
      SOPT5_UART1RXSRC_Field_00,
      --  CMP0
      SOPT5_UART1RXSRC_Field_01,
      --  CMP1
      SOPT5_UART1RXSRC_Field_10)
     with Size => 2;
   for SOPT5_UART1RXSRC_Field use
     (SOPT5_UART1RXSRC_Field_00 => 0,
      SOPT5_UART1RXSRC_Field_01 => 1,
      SOPT5_UART1RXSRC_Field_10 => 2);

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

   --  System Options Register 5
   type SIM_SOPT5_Register is record
      --  UART 0 transmit data source select
      UART0TXSRC     : SOPT5_UART0TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART0TXSRC_Field_00;
      --  UART 0 receive data source select
      UART0RXSRC     : SOPT5_UART0RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART0RXSRC_Field_00;
      --  UART 1 transmit data source select
      UART1TXSRC     : SOPT5_UART1TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART1TXSRC_Field_00;
      --  UART 1 receive data source select
      UART1RXSRC     : SOPT5_UART1RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART1RXSRC_Field_00;
      --  unspecified
      Reserved_8_17  : HAL.UInt10 := 16#0#;
      --  LPUART0 receive data source select
      LPUART0RXSRC   : SOPT5_LPUART0RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_LPUART0RXSRC_Field_00;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT5_Register use record
      UART0TXSRC     at 0 range 0 .. 1;
      UART0RXSRC     at 0 range 2 .. 3;
      UART1TXSRC     at 0 range 4 .. 5;
      UART1RXSRC     at 0 range 6 .. 7;
      Reserved_8_17  at 0 range 8 .. 17;
      LPUART0RXSRC   at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
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
      --  Low-power timer (LPTMR) trigger
      SOPT7_ADC0TRGSEL_Field_1110)
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
      SOPT7_ADC0TRGSEL_Field_1110 => 14);

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

   --  ADC1 trigger select
   type SOPT7_ADC1TRGSEL_Field is
     (
      --  PDB external trigger pin input (PDB0_EXTRG)
      SOPT7_ADC1TRGSEL_Field_0000,
      --  High speed comparator 0 output
      SOPT7_ADC1TRGSEL_Field_0001,
      --  High speed comparator 1 output
      SOPT7_ADC1TRGSEL_Field_0010,
      --  PIT trigger 0
      SOPT7_ADC1TRGSEL_Field_0100,
      --  PIT trigger 1
      SOPT7_ADC1TRGSEL_Field_0101,
      --  PIT trigger 2
      SOPT7_ADC1TRGSEL_Field_0110,
      --  PIT trigger 3
      SOPT7_ADC1TRGSEL_Field_0111,
      --  FTM0 trigger
      SOPT7_ADC1TRGSEL_Field_1000,
      --  FTM1 trigger
      SOPT7_ADC1TRGSEL_Field_1001,
      --  FTM2 trigger
      SOPT7_ADC1TRGSEL_Field_1010,
      --  FTM3 trigger
      SOPT7_ADC1TRGSEL_Field_1011,
      --  Low-power timer (LPTMR) trigger
      SOPT7_ADC1TRGSEL_Field_1110)
     with Size => 4;
   for SOPT7_ADC1TRGSEL_Field use
     (SOPT7_ADC1TRGSEL_Field_0000 => 0,
      SOPT7_ADC1TRGSEL_Field_0001 => 1,
      SOPT7_ADC1TRGSEL_Field_0010 => 2,
      SOPT7_ADC1TRGSEL_Field_0100 => 4,
      SOPT7_ADC1TRGSEL_Field_0101 => 5,
      SOPT7_ADC1TRGSEL_Field_0110 => 6,
      SOPT7_ADC1TRGSEL_Field_0111 => 7,
      SOPT7_ADC1TRGSEL_Field_1000 => 8,
      SOPT7_ADC1TRGSEL_Field_1001 => 9,
      SOPT7_ADC1TRGSEL_Field_1010 => 10,
      SOPT7_ADC1TRGSEL_Field_1011 => 11,
      SOPT7_ADC1TRGSEL_Field_1110 => 14);

   --  ADC1 pre-trigger select
   type SOPT7_ADC1PRETRGSEL_Field is
     (
      --  Pre-trigger A selected for ADC1.
      SOPT7_ADC1PRETRGSEL_Field_0,
      --  Pre-trigger B selected for ADC1.
      SOPT7_ADC1PRETRGSEL_Field_1)
     with Size => 1;
   for SOPT7_ADC1PRETRGSEL_Field use
     (SOPT7_ADC1PRETRGSEL_Field_0 => 0,
      SOPT7_ADC1PRETRGSEL_Field_1 => 1);

   --  ADC1 alternate trigger enable
   type SOPT7_ADC1ALTTRGEN_Field is
     (
      --  PDB trigger selected for ADC1
      SOPT7_ADC1ALTTRGEN_Field_0,
      --  Alternate trigger selected for ADC1 as defined by ADC1TRGSEL.
      SOPT7_ADC1ALTTRGEN_Field_1)
     with Size => 1;
   for SOPT7_ADC1ALTTRGEN_Field use
     (SOPT7_ADC1ALTTRGEN_Field_0 => 0,
      SOPT7_ADC1ALTTRGEN_Field_1 => 1);

   --  System Options Register 7
   type SIM_SOPT7_Register is record
      --  ADC0 trigger select
      ADC0TRGSEL     : SOPT7_ADC0TRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0TRGSEL_Field_0000;
      --  ADC0 pretrigger select
      ADC0PRETRGSEL  : SOPT7_ADC0PRETRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0PRETRGSEL_Field_0;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  ADC0 alternate trigger enable
      ADC0ALTTRGEN   : SOPT7_ADC0ALTTRGEN_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0ALTTRGEN_Field_0;
      --  ADC1 trigger select
      ADC1TRGSEL     : SOPT7_ADC1TRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1TRGSEL_Field_0000;
      --  ADC1 pre-trigger select
      ADC1PRETRGSEL  : SOPT7_ADC1PRETRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1PRETRGSEL_Field_0;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  ADC1 alternate trigger enable
      ADC1ALTTRGEN   : SOPT7_ADC1ALTTRGEN_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1ALTTRGEN_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT7_Register use record
      ADC0TRGSEL     at 0 range 0 .. 3;
      ADC0PRETRGSEL  at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      ADC0ALTTRGEN   at 0 range 7 .. 7;
      ADC1TRGSEL     at 0 range 8 .. 11;
      ADC1PRETRGSEL  at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      ADC1ALTTRGEN   at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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
      --  KVx0 Subfamily
      SDID_SUBFAMID_Field_0000,
      --  KVx1 Subfamily
      SDID_SUBFAMID_Field_0001,
      --  KVx2 Subfamily
      SDID_SUBFAMID_Field_0010,
      --  KVx3 Subfamily
      SDID_SUBFAMID_Field_0011,
      --  KVx4 Subfamily
      SDID_SUBFAMID_Field_0100,
      --  KVx5 Subfamily
      SDID_SUBFAMID_Field_0101,
      --  KVx6 Subfamily
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
      --  KV1x Family
      SDID_FAMILYID_Field_0001,
      --  KV2x Family
      SDID_FAMILYID_Field_0010,
      --  KV3x Family
      SDID_FAMILYID_Field_0011,
      --  KV4x Family
      SDID_FAMILYID_Field_0100,
      --  KV6x Family
      SDID_FAMILYID_Field_0110,
      --  KV7x Family
      SDID_FAMILYID_Field_0111)
     with Size => 4;
   for SDID_FAMILYID_Field use
     (SDID_FAMILYID_Field_0001 => 1,
      SDID_FAMILYID_Field_0010 => 2,
      SDID_FAMILYID_Field_0011 => 3,
      SDID_FAMILYID_Field_0100 => 4,
      SDID_FAMILYID_Field_0110 => 6,
      SDID_FAMILYID_Field_0111 => 7);

   --  System Device Identification Register
   type SIM_SDID_Register is record
      --  Read-only. Pincount identification
      PINID          : SDID_PINID_Field;
      --  unspecified
      Reserved_4_6   : HAL.UInt3;
      --  Read-only. Device die number
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
      Reserved_4_6   at 0 range 4 .. 6;
      DIEID          at 0 range 7 .. 11;
      REVID          at 0 range 12 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      SERIESID       at 0 range 20 .. 23;
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

   --  UART0 Clock Gate Control
   type SCGC4_UART0_Field is
     (
      --  Clock disabled
      SCGC4_UART0_Field_0,
      --  Clock enabled
      SCGC4_UART0_Field_1)
     with Size => 1;
   for SCGC4_UART0_Field use
     (SCGC4_UART0_Field_0 => 0,
      SCGC4_UART0_Field_1 => 1);

   --  SIM_SCGC4_UART array
   type SIM_SCGC4_UART_Field_Array is array (0 .. 2) of SCGC4_UART0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for SIM_SCGC4_UART
   type SIM_SCGC4_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt3;
         when True =>
            --  UART as an array
            Arr : SIM_SCGC4_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SIM_SCGC4_UART_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

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
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#C#;
      --  I2C0 Clock Gate Control
      I2C            : SIM_SCGC4_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  UART0 Clock Gate Control
      UART           : SIM_SCGC4_UART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_18 : HAL.UInt6 := 16#0#;
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
      Reserved_2_5   at 0 range 2 .. 5;
      I2C            at 0 range 6 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      UART           at 0 range 10 .. 12;
      Reserved_13_18 at 0 range 13 .. 18;
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
      Reserved_14_31 : HAL.UInt18 := 16#10#;
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

   --  FTM3 Clock Gate Control
   type SCGC6_FTM3_Field is
     (
      --  Clock disabled
      SCGC6_FTM3_Field_0,
      --  Clock enabled
      SCGC6_FTM3_Field_1)
     with Size => 1;
   for SCGC6_FTM3_Field use
     (SCGC6_FTM3_Field_0 => 0,
      SCGC6_FTM3_Field_1 => 1);

   --  ADC1 Clock Gate Control
   type SCGC6_ADC1_Field is
     (
      --  Clock disabled
      SCGC6_ADC1_Field_0,
      --  Clock enabled
      SCGC6_ADC1_Field_1)
     with Size => 1;
   for SCGC6_ADC1_Field use
     (SCGC6_ADC1_Field_0 => 0,
      SCGC6_ADC1_Field_1 => 1);

   --  DAC1 Clock Gate Control
   type SCGC6_DAC1_Field is
     (
      --  Clock disabled
      SCGC6_DAC1_Field_0,
      --  Clock enabled
      SCGC6_DAC1_Field_1)
     with Size => 1;
   for SCGC6_DAC1_Field use
     (SCGC6_DAC1_Field_0 => 0,
      SCGC6_DAC1_Field_1 => 1);

   --  LPUART0 Clock Gate Control
   type SCGC6_LPUART0_Field is
     (
      --  Clock disabled
      SCGC6_LPUART0_Field_0,
      --  Clock enabled
      SCGC6_LPUART0_Field_1)
     with Size => 1;
   for SCGC6_LPUART0_Field use
     (SCGC6_LPUART0_Field_0 => 0,
      SCGC6_LPUART0_Field_1 => 1);

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
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  FTM3 Clock Gate Control
      FTM3           : SCGC6_FTM3_Field := NRF_SVD.SIM.SCGC6_FTM3_Field_0;
      --  ADC1 Clock Gate Control
      ADC1           : SCGC6_ADC1_Field := NRF_SVD.SIM.SCGC6_ADC1_Field_0;
      --  DAC1 Clock Gate Control
      DAC1           : SCGC6_DAC1_Field := NRF_SVD.SIM.SCGC6_DAC1_Field_0;
      --  RNGA Clock Gate Control
      RNGA           : Boolean := False;
      --  LPUART0 Clock Gate Control
      LPUART0        : SCGC6_LPUART0_Field :=
                        NRF_SVD.SIM.SCGC6_LPUART0_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  SPI0 Clock Gate Control
      SPI            : SIM_SCGC6_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_17 : HAL.UInt4 := 16#0#;
      --  CRC Clock Gate Control
      CRC            : SCGC6_CRC_Field := NRF_SVD.SIM.SCGC6_CRC_Field_0;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
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
      Reserved_28_30 : HAL.UInt3 := 16#4#;
      --  DAC0 Clock Gate Control
      DAC0           : SCGC6_DAC0_Field := NRF_SVD.SIM.SCGC6_DAC0_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC6_Register use record
      FTF            at 0 range 0 .. 0;
      DMAMUX         at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      FTM3           at 0 range 6 .. 6;
      ADC1           at 0 range 7 .. 7;
      DAC1           at 0 range 8 .. 8;
      RNGA           at 0 range 9 .. 9;
      LPUART0        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SPI            at 0 range 12 .. 13;
      Reserved_14_17 at 0 range 14 .. 17;
      CRC            at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      PDB            at 0 range 22 .. 22;
      PIT            at 0 range 23 .. 23;
      FTM            at 0 range 24 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
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

   --  System Clock Gating Control Register 7
   type SIM_SCGC7_Register is record
      --  FlexBus Clock Gate Control
      FLEXBUS       : SCGC7_FLEXBUS_Field :=
                       NRF_SVD.SIM.SCGC7_FLEXBUS_Field_0;
      --  DMA Clock Gate Control
      DMA           : SCGC7_DMA_Field := NRF_SVD.SIM.SCGC7_DMA_Field_1;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC7_Register use record
      FLEXBUS       at 0 range 0 .. 0;
      DMA           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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
      --  512 KB of program flash memory
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

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  System Options Register 1
      SOPT1    : aliased SIM_SOPT1_Register;
      --  SOPT1 Configuration Register
      SOPT1CFG : aliased HAL.UInt32;
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
      SDID     at 16#1024# range 0 .. 31;
      SCGC4    at 16#1034# range 0 .. 31;
      SCGC5    at 16#1038# range 0 .. 31;
      SCGC6    at 16#103C# range 0 .. 31;
      SCGC7    at 16#1040# range 0 .. 31;
      CLKDIV1  at 16#1044# range 0 .. 31;
      FCFG1    at 16#104C# range 0 .. 31;
      FCFG2    at 16#1050# range 0 .. 31;
      UIDH     at 16#1054# range 0 .. 31;
      UIDMH    at 16#1058# range 0 .. 31;
      UIDML    at 16#105C# range 0 .. 31;
      UIDL     at 16#1060# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
