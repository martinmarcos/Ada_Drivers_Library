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

--  This spec has been automatically generated from MKV10Z1287.xml

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

   --  32K Oscillator Clock Select
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
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  32K Oscillator Clock Select
      OSC32KSEL      : SOPT1_OSC32KSEL_Field :=
                        NRF_SVD.SIM.SOPT1_OSC32KSEL_Field_00;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT1_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      OSC32KSEL      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  CLKOUT Select
   type SOPT2_CLKOUTSEL_Field is
     (
      --  Reset value for the field
      Sopt2_Clkoutsel_Field_Reset,
      --  Bus clock
      SOPT2_CLKOUTSEL_Field_010,
      --  LPO clock (1 kHz)
      SOPT2_CLKOUTSEL_Field_011,
      --  MCGIRCLK
      SOPT2_CLKOUTSEL_Field_100,
      --  OSCERCLK
      SOPT2_CLKOUTSEL_Field_110)
     with Size => 3;
   for SOPT2_CLKOUTSEL_Field use
     (Sopt2_Clkoutsel_Field_Reset => 0,
      SOPT2_CLKOUTSEL_Field_010 => 2,
      SOPT2_CLKOUTSEL_Field_011 => 3,
      SOPT2_CLKOUTSEL_Field_100 => 4,
      SOPT2_CLKOUTSEL_Field_110 => 6);

   --  FTM Fixed Frequency Clock Select
   type SOPT2_FTMFFCLKSEL_Field is
     (
      --  MCGFFCLK
      SOPT2_FTMFFCLKSEL_Field_00,
      --  MCGIRCLK
      SOPT2_FTMFFCLKSEL_Field_01,
      --  OSCERCLK
      SOPT2_FTMFFCLKSEL_Field_10,
      --  MCGFFCLK
      SOPT2_FTMFFCLKSEL_Field_11)
     with Size => 2;
   for SOPT2_FTMFFCLKSEL_Field use
     (SOPT2_FTMFFCLKSEL_Field_00 => 0,
      SOPT2_FTMFFCLKSEL_Field_01 => 1,
      SOPT2_FTMFFCLKSEL_Field_10 => 2,
      SOPT2_FTMFFCLKSEL_Field_11 => 3);

   --  System Options Register 2
   type SIM_SOPT2_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  CLKOUT Select
      CLKOUTSEL      : SOPT2_CLKOUTSEL_Field := Sopt2_Clkoutsel_Field_Reset;
      --  unspecified
      Reserved_8_23  : HAL.UInt16 := 16#0#;
      --  FTM Fixed Frequency Clock Select
      FTMFFCLKSEL    : SOPT2_FTMFFCLKSEL_Field :=
                        NRF_SVD.SIM.SOPT2_FTMFFCLKSEL_Field_00;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT2_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CLKOUTSEL      at 0 range 5 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      FTMFFCLKSEL    at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
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

   --  FlexTimer 0 Hardware Trigger 0 Source Select
   type SOPT4_FTM0TRG0SRC_Field is
     (
      --  CMP0 output drives FTM0 hardware trigger 0
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
      --  PDB0 channel 1 trigger drives FTM0 hardware trigger 1
      SOPT4_FTM0TRG1SRC_Field_0,
      --  FTM2 channel match drives FTM0 hardware trigger 1
      SOPT4_FTM0TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM0TRG1SRC_Field use
     (SOPT4_FTM0TRG1SRC_Field_0 => 0,
      SOPT4_FTM0TRG1SRC_Field_1 => 1);

   --  FlexTimer 0 Hardware Trigger 2 Source Select
   type SOPT4_FTM0TRG2SRC_Field is
     (
      --  CMP0 output drives FTM0 hardware trigger 2
      SOPT4_FTM0TRG2SRC_Field_0,
      --  CMP1 output drives FTM0 hardware trigger 2
      SOPT4_FTM0TRG2SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM0TRG2SRC_Field use
     (SOPT4_FTM0TRG2SRC_Field_0 => 0,
      SOPT4_FTM0TRG2SRC_Field_1 => 1);

   --  FlexTimer 1 Hardware Trigger 0 Source Select
   type SOPT4_FTM1TRG0SRC_Field is
     (
      --  CMP0 output drives FTM1 hardware trigger 0
      SOPT4_FTM1TRG0SRC_Field_0,
      --  FTM0 channel match drives FTM1 hardware trigger 0
      SOPT4_FTM1TRG0SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM1TRG0SRC_Field use
     (SOPT4_FTM1TRG0SRC_Field_0 => 0,
      SOPT4_FTM1TRG0SRC_Field_1 => 1);

   --  FlexTimer 1 Hardware Trigger 1 Source Select
   type SOPT4_FTM1TRG1SRC_Field is
     (
      --  PDB0 channel 1 trigger drives FTM1 hardware trigger 1
      SOPT4_FTM1TRG1SRC_Field_0,
      --  FTM2 channel match drives FTM1 hardware trigger 1
      SOPT4_FTM1TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM1TRG1SRC_Field use
     (SOPT4_FTM1TRG1SRC_Field_0 => 0,
      SOPT4_FTM1TRG1SRC_Field_1 => 1);

   --  FlexTimer 1 Hardware Trigger 2 Source Select
   type SOPT4_FTM1TRG2SRC_Field is
     (
      --  CMP0 output drives FTM1 hardware trigger 2
      SOPT4_FTM1TRG2SRC_Field_0,
      --  CMP1 output drives FTM1 hardware trigger 2
      SOPT4_FTM1TRG2SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM1TRG2SRC_Field use
     (SOPT4_FTM1TRG2SRC_Field_0 => 0,
      SOPT4_FTM1TRG2SRC_Field_1 => 1);

   --  FlexTimer 2 Hardware Trigger 0 Source Select
   type SOPT4_FTM2TRG0SRC_Field is
     (
      --  CMP0 output drives FTM2 hardware trigger 0
      SOPT4_FTM2TRG0SRC_Field_0,
      --  FTM0 channel match drives FTM2 hardware trigger 0
      SOPT4_FTM2TRG0SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM2TRG0SRC_Field use
     (SOPT4_FTM2TRG0SRC_Field_0 => 0,
      SOPT4_FTM2TRG0SRC_Field_1 => 1);

   --  FlexTimer 2 Hardware Trigger 1 Source Select
   type SOPT4_FTM2TRG1SRC_Field is
     (
      --  PDB0 output trigger 1 drives FTM2 hardware trigger 1
      SOPT4_FTM2TRG1SRC_Field_0,
      --  FTM1 channel match drives FTM2 hardware trigger 1
      SOPT4_FTM2TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM2TRG1SRC_Field use
     (SOPT4_FTM2TRG1SRC_Field_0 => 0,
      SOPT4_FTM2TRG1SRC_Field_1 => 1);

   --  FlexTimer 2 Hardware Trigger 2 Source Select
   type SOPT4_FTM2TRG2SRC_Field is
     (
      --  CMP0 output drives FTM2 hardware trigger 2
      SOPT4_FTM2TRG2SRC_Field_0,
      --  CMP1 output drives FTM2 hardware trigger 2
      SOPT4_FTM2TRG2SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM2TRG2SRC_Field use
     (SOPT4_FTM2TRG2SRC_Field_0 => 0,
      SOPT4_FTM2TRG2SRC_Field_1 => 1);

   --  FTM1 Channel 0 Input Capture Source Select
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

   --  FTM2 Channel 0 Input Capture Source Select
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

   --  FTM2 Channel 1 Input Capture Source Select
   type SOPT4_FTM2CH1SRC_Field is
     (
      --  FTM2_CH1 pin is fed to FTM2 CH1
      SOPT4_FTM2CH1SRC_Field_0,
      --  FTM2_CH1 pin XOR FTM2_CH0 pin XOR FTM1_CH1 pin is fed to FTM2 CH1 If
      --  this field is set, then the three input pins feed FTM2 channel 1
      --  input capture. In this case, FTM1 channel 1 cannot be used for input
      --  capture of FTM1, as it has no pin. FTM1 channel1 can be used for
      --  Output Compare mode of FTM1, though without an output.
      SOPT4_FTM2CH1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM2CH1SRC_Field use
     (SOPT4_FTM2CH1SRC_Field_0 => 0,
      SOPT4_FTM2CH1SRC_Field_1 => 1);

   --  FTM0 External Clock Pin Select
   type SOPT4_FTM0CLKSEL_Field is
     (
      --  FTM0 external clock driven by FTM_CLKIN0 pin
      SOPT4_FTM0CLKSEL_Field_00,
      --  FTM0 external clock driven by FTM_CLKIN1 pin
      SOPT4_FTM0CLKSEL_Field_01,
      --  FTM0 external clock driven by FTM_CLKIN2 pin
      SOPT4_FTM0CLKSEL_Field_10)
     with Size => 2;
   for SOPT4_FTM0CLKSEL_Field use
     (SOPT4_FTM0CLKSEL_Field_00 => 0,
      SOPT4_FTM0CLKSEL_Field_01 => 1,
      SOPT4_FTM0CLKSEL_Field_10 => 2);

   --  FTM1 External Clock Pin Select
   type SOPT4_FTM1CLKSEL_Field is
     (
      --  FTM1 external clock driven by FTM_CLKIN0 pin
      SOPT4_FTM1CLKSEL_Field_00,
      --  FTM1 external clock driven by FTM_CLKIN1 pin
      SOPT4_FTM1CLKSEL_Field_01,
      --  FTM1 external clock driven by FTM_CLKIN2 pin
      SOPT4_FTM1CLKSEL_Field_10)
     with Size => 2;
   for SOPT4_FTM1CLKSEL_Field use
     (SOPT4_FTM1CLKSEL_Field_00 => 0,
      SOPT4_FTM1CLKSEL_Field_01 => 1,
      SOPT4_FTM1CLKSEL_Field_10 => 2);

   --  FTM2 External Clock Pin Select
   type SOPT4_FTM2CLKSEL_Field is
     (
      --  FTM2 external clock driven by FTM_CLKIN0 pin
      SOPT4_FTM2CLKSEL_Field_00,
      --  FTM2 external clock driven by FTM_CLKIN1 pin
      SOPT4_FTM2CLKSEL_Field_01,
      --  FTM2 external clock driven by FTM_CLKIN2 pin
      SOPT4_FTM2CLKSEL_Field_10)
     with Size => 2;
   for SOPT4_FTM2CLKSEL_Field use
     (SOPT4_FTM2CLKSEL_Field_00 => 0,
      SOPT4_FTM2CLKSEL_Field_01 => 1,
      SOPT4_FTM2CLKSEL_Field_10 => 2);

   --  System Options Register 4
   type SIM_SOPT4_Register is record
      --  FTM0 Fault 0 Select
      FTM0FLT0       : SOPT4_FTM0FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT0_Field_0;
      --  FTM0 Fault 1 Select
      FTM0FLT1       : SOPT4_FTM0FLT1_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT1_Field_0;
      --  FTM1 Fault 0 Select
      FTM1FLT0       : SOPT4_FTM1FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1FLT0_Field_0;
      --  FTM2 Fault 0 Select
      FTM2FLT0       : SOPT4_FTM2FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2FLT0_Field_0;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  FlexTimer 0 Hardware Trigger 0 Source Select
      FTM0TRG0SRC    : SOPT4_FTM0TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG0SRC_Field_0;
      --  FlexTimer 0 Hardware Trigger 1 Source Select
      FTM0TRG1SRC    : SOPT4_FTM0TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG1SRC_Field_0;
      --  FlexTimer 0 Hardware Trigger 2 Source Select
      FTM0TRG2SRC    : SOPT4_FTM0TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG2SRC_Field_0;
      --  FlexTimer 1 Hardware Trigger 0 Source Select
      FTM1TRG0SRC    : SOPT4_FTM1TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1TRG0SRC_Field_0;
      --  FlexTimer 1 Hardware Trigger 1 Source Select
      FTM1TRG1SRC    : SOPT4_FTM1TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1TRG1SRC_Field_0;
      --  FlexTimer 1 Hardware Trigger 2 Source Select
      FTM1TRG2SRC    : SOPT4_FTM1TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1TRG2SRC_Field_0;
      --  FlexTimer 2 Hardware Trigger 0 Source Select
      FTM2TRG0SRC    : SOPT4_FTM2TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2TRG0SRC_Field_0;
      --  FlexTimer 2 Hardware Trigger 1 Source Select
      FTM2TRG1SRC    : SOPT4_FTM2TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2TRG1SRC_Field_0;
      --  FlexTimer 2 Hardware Trigger 2 Source Select
      FTM2TRG2SRC    : SOPT4_FTM2TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2TRG2SRC_Field_0;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  FTM1 Channel 0 Input Capture Source Select
      FTM1CH0SRC     : SOPT4_FTM1CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1CH0SRC_Field_00;
      --  FTM2 Channel 0 Input Capture Source Select
      FTM2CH0SRC     : SOPT4_FTM2CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2CH0SRC_Field_00;
      --  FTM2 Channel 1 Input Capture Source Select
      FTM2CH1SRC     : SOPT4_FTM2CH1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2CH1SRC_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  FTM0 External Clock Pin Select
      FTM0CLKSEL     : SOPT4_FTM0CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0CLKSEL_Field_00;
      --  FTM1 External Clock Pin Select
      FTM1CLKSEL     : SOPT4_FTM1CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1CLKSEL_Field_00;
      --  FTM2 External Clock Pin Select
      FTM2CLKSEL     : SOPT4_FTM2CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT4_FTM2CLKSEL_Field_00;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT4_Register use record
      FTM0FLT0       at 0 range 0 .. 0;
      FTM0FLT1       at 0 range 1 .. 1;
      FTM1FLT0       at 0 range 2 .. 2;
      FTM2FLT0       at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      FTM0TRG0SRC    at 0 range 7 .. 7;
      FTM0TRG1SRC    at 0 range 8 .. 8;
      FTM0TRG2SRC    at 0 range 9 .. 9;
      FTM1TRG0SRC    at 0 range 10 .. 10;
      FTM1TRG1SRC    at 0 range 11 .. 11;
      FTM1TRG2SRC    at 0 range 12 .. 12;
      FTM2TRG0SRC    at 0 range 13 .. 13;
      FTM2TRG1SRC    at 0 range 14 .. 14;
      FTM2TRG2SRC    at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      FTM1CH0SRC     at 0 range 18 .. 19;
      FTM2CH0SRC     at 0 range 20 .. 21;
      FTM2CH1SRC     at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FTM0CLKSEL     at 0 range 24 .. 25;
      FTM1CLKSEL     at 0 range 26 .. 27;
      FTM2CLKSEL     at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  UART 0 Transmit Data Source Select
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

   --  UART 0 Receive Data Source Select
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

   --  UART 1 Transmit Data Source Select
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

   --  UART 1 Receive Data Source Select
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

   --  UART0 Open Drain Enable
   type SOPT5_UART0ODE_Field is
     (
      --  Open drain is disabled on UART0
      SOPT5_UART0ODE_Field_0,
      --  Open drain is enabled on UART0
      SOPT5_UART0ODE_Field_1)
     with Size => 1;
   for SOPT5_UART0ODE_Field use
     (SOPT5_UART0ODE_Field_0 => 0,
      SOPT5_UART0ODE_Field_1 => 1);

   --  UART1 Open Drain Enable
   type SOPT5_UART1ODE_Field is
     (
      --  Open drain is disabled on UART1
      SOPT5_UART1ODE_Field_0,
      --  Open drain is enabled on UART1
      SOPT5_UART1ODE_Field_1)
     with Size => 1;
   for SOPT5_UART1ODE_Field use
     (SOPT5_UART1ODE_Field_0 => 0,
      SOPT5_UART1ODE_Field_1 => 1);

   --  System Options Register 5
   type SIM_SOPT5_Register is record
      --  UART 0 Transmit Data Source Select
      UART0TXSRC     : SOPT5_UART0TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART0TXSRC_Field_00;
      --  UART 0 Receive Data Source Select
      UART0RXSRC     : SOPT5_UART0RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART0RXSRC_Field_00;
      --  UART 1 Transmit Data Source Select
      UART1TXSRC     : SOPT5_UART1TXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART1TXSRC_Field_00;
      --  UART 1 Receive Data Source Select
      UART1RXSRC     : SOPT5_UART1RXSRC_Field :=
                        NRF_SVD.SIM.SOPT5_UART1RXSRC_Field_00;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  UART0 Open Drain Enable
      UART0ODE       : SOPT5_UART0ODE_Field :=
                        NRF_SVD.SIM.SOPT5_UART0ODE_Field_0;
      --  UART1 Open Drain Enable
      UART1ODE       : SOPT5_UART1ODE_Field :=
                        NRF_SVD.SIM.SOPT5_UART1ODE_Field_0;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT5_Register use record
      UART0TXSRC     at 0 range 0 .. 1;
      UART0RXSRC     at 0 range 2 .. 3;
      UART1TXSRC     at 0 range 4 .. 5;
      UART1RXSRC     at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      UART0ODE       at 0 range 16 .. 16;
      UART1ODE       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  FTM3 Fault 0 Select
   type SOPT6_FTM3FLT0_Field is
     (
      --  FTM3_FLT0 pin
      SOPT6_FTM3FLT0_Field_0,
      --  CMP0 out
      SOPT6_FTM3FLT0_Field_1)
     with Size => 1;
   for SOPT6_FTM3FLT0_Field use
     (SOPT6_FTM3FLT0_Field_0 => 0,
      SOPT6_FTM3FLT0_Field_1 => 1);

   --  FTM4 Fault 0 Select
   type SOPT6_FTM4FLT0_Field is
     (
      --  FTM4_FLT0 pin
      SOPT6_FTM4FLT0_Field_0,
      --  CMP0 out
      SOPT6_FTM4FLT0_Field_1)
     with Size => 1;
   for SOPT6_FTM4FLT0_Field use
     (SOPT6_FTM4FLT0_Field_0 => 0,
      SOPT6_FTM4FLT0_Field_1 => 1);

   --  FTM5 Fault 0 Select
   type SOPT6_FTM5FLT0_Field is
     (
      --  FTM5_FLT0 pin
      SOPT6_FTM5FLT0_Field_0,
      --  CMP0 out
      SOPT6_FTM5FLT0_Field_1)
     with Size => 1;
   for SOPT6_FTM5FLT0_Field use
     (SOPT6_FTM5FLT0_Field_0 => 0,
      SOPT6_FTM5FLT0_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 0 Source Select
   type SOPT6_FTM3TRG0SRC_Field is
     (
      --  CMP0 output drives FTM3 hardware trigger 0
      SOPT6_FTM3TRG0SRC_Field_0,
      --  FTM5 channel match drives FTM3 hardware trigger 0
      SOPT6_FTM3TRG0SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM3TRG0SRC_Field use
     (SOPT6_FTM3TRG0SRC_Field_0 => 0,
      SOPT6_FTM3TRG0SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 1 Source Select
   type SOPT6_FTM3TRG1SRC_Field is
     (
      --  PDB1 output drives FTM3 hardware trigger 1
      SOPT6_FTM3TRG1SRC_Field_0,
      --  FTM4 channel match drives FTM3 hardware trigger 1
      SOPT6_FTM3TRG1SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM3TRG1SRC_Field use
     (SOPT6_FTM3TRG1SRC_Field_0 => 0,
      SOPT6_FTM3TRG1SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 2 Source Select
   type SOPT6_FTM3TRG2SRC_Field is
     (
      --  CMP0 output drives FTM3 hardware trigger 2
      SOPT6_FTM3TRG2SRC_Field_0,
      --  CMP1 output drives FTM3 hardware trigger 2
      SOPT6_FTM3TRG2SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM3TRG2SRC_Field use
     (SOPT6_FTM3TRG2SRC_Field_0 => 0,
      SOPT6_FTM3TRG2SRC_Field_1 => 1);

   --  FlexTimer 4 Hardware Trigger 0 Source Select
   type SOPT6_FTM4TRG0SRC_Field is
     (
      --  CMP0 output drives FTM4 hardware trigger 0
      SOPT6_FTM4TRG0SRC_Field_0,
      --  FTM3 channel match drives FTM4 hardware trigger 0
      SOPT6_FTM4TRG0SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM4TRG0SRC_Field use
     (SOPT6_FTM4TRG0SRC_Field_0 => 0,
      SOPT6_FTM4TRG0SRC_Field_1 => 1);

   --  FlexTimer 4 Hardware Trigger 1 Source Select
   type SOPT6_FTM4TRG1SRC_Field is
     (
      --  PDB1 output trigger 1 drives FTM4 hardware trigger 1
      SOPT6_FTM4TRG1SRC_Field_0,
      --  FTM5 channel match drives FTM4 hardware trigger 1
      SOPT6_FTM4TRG1SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM4TRG1SRC_Field use
     (SOPT6_FTM4TRG1SRC_Field_0 => 0,
      SOPT6_FTM4TRG1SRC_Field_1 => 1);

   --  FlexTimer 4 Hardware Trigger 2 Source Select
   type SOPT6_FTM4TRG2SRC_Field is
     (
      --  CMP0 output drives FTM4 hardware trigger 2
      SOPT6_FTM4TRG2SRC_Field_0,
      --  CMP1 output drives FTM4 hardware trigger 2
      SOPT6_FTM4TRG2SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM4TRG2SRC_Field use
     (SOPT6_FTM4TRG2SRC_Field_0 => 0,
      SOPT6_FTM4TRG2SRC_Field_1 => 1);

   --  FlexTimer 5 Hardware Trigger 0 Source Select
   type SOPT6_FTM5TRG0SRC_Field is
     (
      --  CMP0 output drives FTM5 hardware trigger 0
      SOPT6_FTM5TRG0SRC_Field_0,
      --  FTM3 channel match drives FTM5 hardware trigger 0
      SOPT6_FTM5TRG0SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM5TRG0SRC_Field use
     (SOPT6_FTM5TRG0SRC_Field_0 => 0,
      SOPT6_FTM5TRG0SRC_Field_1 => 1);

   --  FlexTimer 5 Hardware Trigger 1 Source Select
   type SOPT6_FTM5TRG1SRC_Field is
     (
      --  PDB1 output trigger 1 drives FTM5 hardware trigger 1
      SOPT6_FTM5TRG1SRC_Field_0,
      --  FTM4 channel match drives FTM5 hardware trigger 1
      SOPT6_FTM5TRG1SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM5TRG1SRC_Field use
     (SOPT6_FTM5TRG1SRC_Field_0 => 0,
      SOPT6_FTM5TRG1SRC_Field_1 => 1);

   --  FlexTimer 5 Hardware Trigger 2 Source Select
   type SOPT6_FTM5TRG2SRC_Field is
     (
      --  CMP0 output drives FTM5 hardware trigger 2
      SOPT6_FTM5TRG2SRC_Field_0,
      --  CMP1 output drives FTM5 hardware trigger 2
      SOPT6_FTM5TRG2SRC_Field_1)
     with Size => 1;
   for SOPT6_FTM5TRG2SRC_Field use
     (SOPT6_FTM5TRG2SRC_Field_0 => 0,
      SOPT6_FTM5TRG2SRC_Field_1 => 1);

   --  FTM4 channel 0 input capture source select
   type SOPT6_FTM4CH0SRC_Field is
     (
      --  FTM4_CH0 signal
      SOPT6_FTM4CH0SRC_Field_00,
      --  CMP0 output
      SOPT6_FTM4CH0SRC_Field_01,
      --  CMP1 output
      SOPT6_FTM4CH0SRC_Field_10)
     with Size => 2;
   for SOPT6_FTM4CH0SRC_Field use
     (SOPT6_FTM4CH0SRC_Field_00 => 0,
      SOPT6_FTM4CH0SRC_Field_01 => 1,
      SOPT6_FTM4CH0SRC_Field_10 => 2);

   --  FTM5 channel 0 input capture source select
   type SOPT6_FTM5CH0SRC_Field is
     (
      --  FTM5_CH0 signal
      SOPT6_FTM5CH0SRC_Field_00,
      --  CMP0 output
      SOPT6_FTM5CH0SRC_Field_01,
      --  CMP1 output
      SOPT6_FTM5CH0SRC_Field_10)
     with Size => 2;
   for SOPT6_FTM5CH0SRC_Field use
     (SOPT6_FTM5CH0SRC_Field_00 => 0,
      SOPT6_FTM5CH0SRC_Field_01 => 1,
      SOPT6_FTM5CH0SRC_Field_10 => 2);

   --  FTM3 External Clock Pin Select
   type SOPT6_FTM3CLKSEL_Field is
     (
      --  FTM3 external clock driven by FTM_CLKIN0 pin
      SOPT6_FTM3CLKSEL_Field_00,
      --  FTM3 external clock driven by FTM_CLKIN1 pin
      SOPT6_FTM3CLKSEL_Field_01,
      --  FTM3 external clock driven by FTM_CLKIN2 pin
      SOPT6_FTM3CLKSEL_Field_10)
     with Size => 2;
   for SOPT6_FTM3CLKSEL_Field use
     (SOPT6_FTM3CLKSEL_Field_00 => 0,
      SOPT6_FTM3CLKSEL_Field_01 => 1,
      SOPT6_FTM3CLKSEL_Field_10 => 2);

   --  FTM4 External Clock Pin Select
   type SOPT6_FTM4CLKSEL_Field is
     (
      --  FTM4 external clock driven by FTM_CLKIN0 pin
      SOPT6_FTM4CLKSEL_Field_00,
      --  FTM4 external clock driven by FTM_CLKIN1 pin
      SOPT6_FTM4CLKSEL_Field_01,
      --  FTM4 external clock driven by FTM_CLKIN2 pin
      SOPT6_FTM4CLKSEL_Field_10)
     with Size => 2;
   for SOPT6_FTM4CLKSEL_Field use
     (SOPT6_FTM4CLKSEL_Field_00 => 0,
      SOPT6_FTM4CLKSEL_Field_01 => 1,
      SOPT6_FTM4CLKSEL_Field_10 => 2);

   --  FTM5 External Clock Pin Select
   type SOPT6_FTM5CLKSEL_Field is
     (
      --  FTM5 external clock driven by FTM_CLKIN0 pin
      SOPT6_FTM5CLKSEL_Field_00,
      --  FTM5 external clock driven by FTM_CLKIN1 pin
      SOPT6_FTM5CLKSEL_Field_01,
      --  FTM5 external clock driven by FTM_CLKIN2 pin
      SOPT6_FTM5CLKSEL_Field_10)
     with Size => 2;
   for SOPT6_FTM5CLKSEL_Field use
     (SOPT6_FTM5CLKSEL_Field_00 => 0,
      SOPT6_FTM5CLKSEL_Field_01 => 1,
      SOPT6_FTM5CLKSEL_Field_10 => 2);

   --  Systems Option Register 6
   type SIM_SOPT6_Register is record
      --  FTM3 Fault 0 Select
      FTM3FLT0       : SOPT6_FTM3FLT0_Field :=
                        NRF_SVD.SIM.SOPT6_FTM3FLT0_Field_0;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  FTM4 Fault 0 Select
      FTM4FLT0       : SOPT6_FTM4FLT0_Field :=
                        NRF_SVD.SIM.SOPT6_FTM4FLT0_Field_0;
      --  FTM5 Fault 0 Select
      FTM5FLT0       : SOPT6_FTM5FLT0_Field :=
                        NRF_SVD.SIM.SOPT6_FTM5FLT0_Field_0;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  FlexTimer 3 Hardware Trigger 0 Source Select
      FTM3TRG0SRC    : SOPT6_FTM3TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM3TRG0SRC_Field_0;
      --  FlexTimer 3 Hardware Trigger 1 Source Select
      FTM3TRG1SRC    : SOPT6_FTM3TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM3TRG1SRC_Field_0;
      --  FlexTimer 3 Hardware Trigger 2 Source Select
      FTM3TRG2SRC    : SOPT6_FTM3TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM3TRG2SRC_Field_0;
      --  FlexTimer 4 Hardware Trigger 0 Source Select
      FTM4TRG0SRC    : SOPT6_FTM4TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM4TRG0SRC_Field_0;
      --  FlexTimer 4 Hardware Trigger 1 Source Select
      FTM4TRG1SRC    : SOPT6_FTM4TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM4TRG1SRC_Field_0;
      --  FlexTimer 4 Hardware Trigger 2 Source Select
      FTM4TRG2SRC    : SOPT6_FTM4TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM4TRG2SRC_Field_0;
      --  FlexTimer 5 Hardware Trigger 0 Source Select
      FTM5TRG0SRC    : SOPT6_FTM5TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM5TRG0SRC_Field_0;
      --  FlexTimer 5 Hardware Trigger 1 Source Select
      FTM5TRG1SRC    : SOPT6_FTM5TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM5TRG1SRC_Field_0;
      --  FlexTimer 5 Hardware Trigger 2 Source Select
      FTM5TRG2SRC    : SOPT6_FTM5TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM5TRG2SRC_Field_0;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  FTM4 channel 0 input capture source select
      FTM4CH0SRC     : SOPT6_FTM4CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM4CH0SRC_Field_00;
      --  FTM5 channel 0 input capture source select
      FTM5CH0SRC     : SOPT6_FTM5CH0SRC_Field :=
                        NRF_SVD.SIM.SOPT6_FTM5CH0SRC_Field_00;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  FTM3 External Clock Pin Select
      FTM3CLKSEL     : SOPT6_FTM3CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT6_FTM3CLKSEL_Field_00;
      --  FTM4 External Clock Pin Select
      FTM4CLKSEL     : SOPT6_FTM4CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT6_FTM4CLKSEL_Field_00;
      --  FTM5 External Clock Pin Select
      FTM5CLKSEL     : SOPT6_FTM5CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT6_FTM5CLKSEL_Field_00;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT6_Register use record
      FTM3FLT0       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      FTM4FLT0       at 0 range 2 .. 2;
      FTM5FLT0       at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      FTM3TRG0SRC    at 0 range 7 .. 7;
      FTM3TRG1SRC    at 0 range 8 .. 8;
      FTM3TRG2SRC    at 0 range 9 .. 9;
      FTM4TRG0SRC    at 0 range 10 .. 10;
      FTM4TRG1SRC    at 0 range 11 .. 11;
      FTM4TRG2SRC    at 0 range 12 .. 12;
      FTM5TRG0SRC    at 0 range 13 .. 13;
      FTM5TRG1SRC    at 0 range 14 .. 14;
      FTM5TRG2SRC    at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      FTM4CH0SRC     at 0 range 18 .. 19;
      FTM5CH0SRC     at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      FTM3CLKSEL     at 0 range 24 .. 25;
      FTM4CLKSEL     at 0 range 26 .. 27;
      FTM5CLKSEL     at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ADC0 Trigger Select
   type SOPT7_ADC0TRGSEL_Field is
     (
      --  External trigger pin input (PDB_EXTRG0)
      SOPT7_ADC0TRGSEL_Field_0000,
      --  CMP0 output
      SOPT7_ADC0TRGSEL_Field_0001,
      --  CMP1 output
      SOPT7_ADC0TRGSEL_Field_0010,
      --  External trigger pin input (PDB_EXTRG1)
      SOPT7_ADC0TRGSEL_Field_0011,
      --  DMA channel 0 transfer last write complete
      SOPT7_ADC0TRGSEL_Field_0100,
      --  DMA channel 1 transfer last write complete
      SOPT7_ADC0TRGSEL_Field_0101,
      --  DMA channel 2 transfer last write complete
      SOPT7_ADC0TRGSEL_Field_0110,
      --  DMA channel 3 transfer last write complete
      SOPT7_ADC0TRGSEL_Field_0111,
      --  FTM0 intialtrig or external trig output
      SOPT7_ADC0TRGSEL_Field_1000,
      --  FTM1 intial trig or external trig output
      SOPT7_ADC0TRGSEL_Field_1001,
      --  FTM2 intial trig or external trig output
      SOPT7_ADC0TRGSEL_Field_1010,
      --  FTM3 intial trig or external trig output
      SOPT7_ADC0TRGSEL_Field_1011,
      --  FTM4 intial trig or external trig output
      SOPT7_ADC0TRGSEL_Field_1100,
      --  FTM5 intial trig or external trig output
      SOPT7_ADC0TRGSEL_Field_1101,
      --  LPTMR0 trigger
      SOPT7_ADC0TRGSEL_Field_1110)
     with Size => 4;
   for SOPT7_ADC0TRGSEL_Field use
     (SOPT7_ADC0TRGSEL_Field_0000 => 0,
      SOPT7_ADC0TRGSEL_Field_0001 => 1,
      SOPT7_ADC0TRGSEL_Field_0010 => 2,
      SOPT7_ADC0TRGSEL_Field_0011 => 3,
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
      SOPT7_ADC0TRGSEL_Field_1110 => 14);

   --  ADC0 Pre-trigger Select
   type SOPT7_ADC0PRETRGSEL_Field is
     (
      --  Pre-trigger A for ADC0. Clearing this field will result in ADHWTSA=1
      --  and ADHWTSB=0.
      SOPT7_ADC0PRETRGSEL_Field_0,
      --  Pre-trigger B for ADC0. Setting this bit will result in ADHWTSA=0 and
      --  ADHWTSB=1.
      SOPT7_ADC0PRETRGSEL_Field_1)
     with Size => 1;
   for SOPT7_ADC0PRETRGSEL_Field use
     (SOPT7_ADC0PRETRGSEL_Field_0 => 0,
      SOPT7_ADC0PRETRGSEL_Field_1 => 1);

   --  Enable alternative conversion triggers for ADC0.
   type SOPT7_ADC0ALTTRGEN_Field is
     (
      --  PDB0 CH0 triggers ADC0
      SOPT7_ADC0ALTTRGEN_Field_00,
      --  PDB1 CH0 triggers ADC0
      SOPT7_ADC0ALTTRGEN_Field_01,
      --  Alt trigger source as per ADC0TRGSEL
      SOPT7_ADC0ALTTRGEN_Field_10,
      --  PDB0 CH0 OR PDB1 CH0 trigger ADC0
      SOPT7_ADC0ALTTRGEN_Field_11)
     with Size => 2;
   for SOPT7_ADC0ALTTRGEN_Field use
     (SOPT7_ADC0ALTTRGEN_Field_00 => 0,
      SOPT7_ADC0ALTTRGEN_Field_01 => 1,
      SOPT7_ADC0ALTTRGEN_Field_10 => 2,
      SOPT7_ADC0ALTTRGEN_Field_11 => 3);

   --  ADC1 Trigger Select
   type SOPT7_ADC1TRGSEL_Field is
     (
      --  External trigger pin input (PDB_EXTRG0)
      SOPT7_ADC1TRGSEL_Field_0000,
      --  CMP0 output
      SOPT7_ADC1TRGSEL_Field_0001,
      --  CMP1 output
      SOPT7_ADC1TRGSEL_Field_0010,
      --  External trigger pin input (PDB_EXTRG1)
      SOPT7_ADC1TRGSEL_Field_0011,
      --  DMA channel 0 transfer last write complete
      SOPT7_ADC1TRGSEL_Field_0100,
      --  DMA channel 1 transfer last write complete
      SOPT7_ADC1TRGSEL_Field_0101,
      --  DMA channel 2 transfer last write complete
      SOPT7_ADC1TRGSEL_Field_0110,
      --  DMA channel 3 transfer last write complete
      SOPT7_ADC1TRGSEL_Field_0111,
      --  FTM0 intialtrig or external trig output
      SOPT7_ADC1TRGSEL_Field_1000,
      --  FTM1 intial trig or external trig output
      SOPT7_ADC1TRGSEL_Field_1001,
      --  FTM2 intial trig or external trig output
      SOPT7_ADC1TRGSEL_Field_1010,
      --  FTM3 intial trig or external trig output
      SOPT7_ADC1TRGSEL_Field_1011,
      --  FTM4 intial trig or external trig output
      SOPT7_ADC1TRGSEL_Field_1100,
      --  FTM5 intial trig or external trig output
      SOPT7_ADC1TRGSEL_Field_1101,
      --  LPTMR0 trigger
      SOPT7_ADC1TRGSEL_Field_1110)
     with Size => 4;
   for SOPT7_ADC1TRGSEL_Field use
     (SOPT7_ADC1TRGSEL_Field_0000 => 0,
      SOPT7_ADC1TRGSEL_Field_0001 => 1,
      SOPT7_ADC1TRGSEL_Field_0010 => 2,
      SOPT7_ADC1TRGSEL_Field_0011 => 3,
      SOPT7_ADC1TRGSEL_Field_0100 => 4,
      SOPT7_ADC1TRGSEL_Field_0101 => 5,
      SOPT7_ADC1TRGSEL_Field_0110 => 6,
      SOPT7_ADC1TRGSEL_Field_0111 => 7,
      SOPT7_ADC1TRGSEL_Field_1000 => 8,
      SOPT7_ADC1TRGSEL_Field_1001 => 9,
      SOPT7_ADC1TRGSEL_Field_1010 => 10,
      SOPT7_ADC1TRGSEL_Field_1011 => 11,
      SOPT7_ADC1TRGSEL_Field_1100 => 12,
      SOPT7_ADC1TRGSEL_Field_1101 => 13,
      SOPT7_ADC1TRGSEL_Field_1110 => 14);

   --  ADC1 Pre-trigger Select
   type SOPT7_ADC1PRETRGSEL_Field is
     (
      --  Pre-trigger A for ADC1. Clearing this field will result in ADHWTSA=1
      --  and ADHWTSB=0.
      SOPT7_ADC1PRETRGSEL_Field_0,
      --  Pre-trigger B for ADC1. Setting this bit will result in ADHWTSA=0 and
      --  ADHWTSB=1.
      SOPT7_ADC1PRETRGSEL_Field_1)
     with Size => 1;
   for SOPT7_ADC1PRETRGSEL_Field use
     (SOPT7_ADC1PRETRGSEL_Field_0 => 0,
      SOPT7_ADC1PRETRGSEL_Field_1 => 1);

   --  Enable alternative conversion triggers for ADC1.
   type SOPT7_ADC1ALTTRGEN_Field is
     (
      --  PDB0 CH1 triggers ADC1
      SOPT7_ADC1ALTTRGEN_Field_00,
      --  PDB1 CH1 triggers ADC1
      SOPT7_ADC1ALTTRGEN_Field_01,
      --  Alt trigger source ADC1TRGSEL
      SOPT7_ADC1ALTTRGEN_Field_10,
      --  PDB0 CH1 OR PDB1 CH1 trigger ADC1
      SOPT7_ADC1ALTTRGEN_Field_11)
     with Size => 2;
   for SOPT7_ADC1ALTTRGEN_Field use
     (SOPT7_ADC1ALTTRGEN_Field_00 => 0,
      SOPT7_ADC1ALTTRGEN_Field_01 => 1,
      SOPT7_ADC1ALTTRGEN_Field_10 => 2,
      SOPT7_ADC1ALTTRGEN_Field_11 => 3);

   --  ADC0 ALT Clock Source Select
   type SOPT7_ADC0ALTCLKSRC_Field is
     (
      --  OUTDIV5 output
      SOPT7_ADC0ALTCLKSRC_Field_00,
      --  MCGIRCLK
      SOPT7_ADC0ALTCLKSRC_Field_01,
      --  OSCERCLK
      SOPT7_ADC0ALTCLKSRC_Field_10)
     with Size => 2;
   for SOPT7_ADC0ALTCLKSRC_Field use
     (SOPT7_ADC0ALTCLKSRC_Field_00 => 0,
      SOPT7_ADC0ALTCLKSRC_Field_01 => 1,
      SOPT7_ADC0ALTCLKSRC_Field_10 => 2);

   --  ADC1 ALT Clock Source Select
   type SOPT7_ADC1ALTCLKSRC_Field is
     (
      --  OUTDIV5 output
      SOPT7_ADC1ALTCLKSRC_Field_00,
      --  MCGIRCLK
      SOPT7_ADC1ALTCLKSRC_Field_01,
      --  OSCERCLK
      SOPT7_ADC1ALTCLKSRC_Field_10)
     with Size => 2;
   for SOPT7_ADC1ALTCLKSRC_Field use
     (SOPT7_ADC1ALTCLKSRC_Field_00 => 0,
      SOPT7_ADC1ALTCLKSRC_Field_01 => 1,
      SOPT7_ADC1ALTCLKSRC_Field_10 => 2);

   --  System Options Register 7
   type SIM_SOPT7_Register is record
      --  ADC0 Trigger Select
      ADC0TRGSEL     : SOPT7_ADC0TRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0TRGSEL_Field_0000;
      --  ADC0 Pre-trigger Select
      ADC0PRETRGSEL  : SOPT7_ADC0PRETRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0PRETRGSEL_Field_0;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Enable alternative conversion triggers for ADC0.
      ADC0ALTTRGEN   : SOPT7_ADC0ALTTRGEN_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0ALTTRGEN_Field_00;
      --  ADC1 Trigger Select
      ADC1TRGSEL     : SOPT7_ADC1TRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1TRGSEL_Field_0000;
      --  ADC1 Pre-trigger Select
      ADC1PRETRGSEL  : SOPT7_ADC1PRETRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1PRETRGSEL_Field_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Enable alternative conversion triggers for ADC1.
      ADC1ALTTRGEN   : SOPT7_ADC1ALTTRGEN_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1ALTTRGEN_Field_00;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  ADC0 ALT Clock Source Select
      ADC0ALTCLKSRC  : SOPT7_ADC0ALTCLKSRC_Field :=
                        NRF_SVD.SIM.SOPT7_ADC0ALTCLKSRC_Field_00;
      --  ADC1 ALT Clock Source Select
      ADC1ALTCLKSRC  : SOPT7_ADC1ALTCLKSRC_Field :=
                        NRF_SVD.SIM.SOPT7_ADC1ALTCLKSRC_Field_00;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT7_Register use record
      ADC0TRGSEL     at 0 range 0 .. 3;
      ADC0PRETRGSEL  at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ADC0ALTTRGEN   at 0 range 6 .. 7;
      ADC1TRGSEL     at 0 range 8 .. 11;
      ADC1PRETRGSEL  at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      ADC1ALTTRGEN   at 0 range 14 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      ADC0ALTCLKSRC  at 0 range 24 .. 25;
      ADC1ALTCLKSRC  at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  FlexTimer 0 Hardware Trigger 0 configure by software
   type SOPT8_FTM0SYNCBIT_Field is
     (
      --  No effect to FTM0; this allow the hardware trigger options to
      --  function as expected. See SOPT4[FTM0TRG0SRC].
      SOPT8_FTM0SYNCBIT_Field_0,
      --  If TRIG0 enabled, this refreshes the FTM0CNTIN and all buffered
      --  registers of the FTM0 (must write 0 first then write 1); this masks
      --  the hardware trigger.
      SOPT8_FTM0SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM0SYNCBIT_Field use
     (SOPT8_FTM0SYNCBIT_Field_0 => 0,
      SOPT8_FTM0SYNCBIT_Field_1 => 1);

   --  FlexTimer 1 Hardware Trigger 0 configure by software
   type SOPT8_FTM1SYNCBIT_Field is
     (
      --  No effect to FTM1; this allows the hardware trigger options to
      --  function as expected. See SOPT4[FTM1TRG0SRC].
      SOPT8_FTM1SYNCBIT_Field_0,
      --  If TRIG0 enabled, this refreshes the FTM1CNTIN and all buffered
      --  registers of the FTM1 (must write 0 first then write 1); this masks
      --  the hardware trigger.
      SOPT8_FTM1SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM1SYNCBIT_Field use
     (SOPT8_FTM1SYNCBIT_Field_0 => 0,
      SOPT8_FTM1SYNCBIT_Field_1 => 1);

   --  FlexTimer 2 Hardware Trigger 0 configure by software
   type SOPT8_FTM2SYNCBIT_Field is
     (
      --  No effect to FTM2; this allows the hardware trigger options to
      --  function as expected. See SOPT4[FTM2TRG0SRC].
      SOPT8_FTM2SYNCBIT_Field_0,
      --  If TRIG0 is enabled, this refreshes the FTM2CNTIN and all buffered
      --  registers of the FTM2 (must write 0 first then write 1); this masks
      --  the hardware trigger.
      SOPT8_FTM2SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM2SYNCBIT_Field use
     (SOPT8_FTM2SYNCBIT_Field_0 => 0,
      SOPT8_FTM2SYNCBIT_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 0 configure by software
   type SOPT8_FTM3SYNCBIT_Field is
     (
      --  No effect to FTM3; this allows the hardware trigger options to
      --  function as expected. See SOPT6[FTM3TRG0SRC].
      SOPT8_FTM3SYNCBIT_Field_0,
      --  If TRIG0 is enabled, this refreshes the FTM3CNTIN and allbuffered
      --  registers of the FTM3 (must write 0 first then write 1); this masks
      --  the hardware trigger.
      SOPT8_FTM3SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM3SYNCBIT_Field use
     (SOPT8_FTM3SYNCBIT_Field_0 => 0,
      SOPT8_FTM3SYNCBIT_Field_1 => 1);

   --  FlexTimer 4 Hardware Trigger 0 configure by software
   type SOPT8_FTM4SYNCBIT_Field is
     (
      --  No effect to FTM4; this allows the hardware trigger options to
      --  function as expected. See SOPT6[FTM4TRG0SRC].
      SOPT8_FTM4SYNCBIT_Field_0,
      --  If TRIG0 is enabled, this refreshes the FTM4CNTIN and allbuffered
      --  registers of the FTM4 (must write 0 first then write 1); this masks
      --  the hardware trigger.
      SOPT8_FTM4SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM4SYNCBIT_Field use
     (SOPT8_FTM4SYNCBIT_Field_0 => 0,
      SOPT8_FTM4SYNCBIT_Field_1 => 1);

   --  FlexTimer 5 Hardware Trigger 0 configure by software
   type SOPT8_FTM5SYNCBIT_Field is
     (
      --  No effect on FTM5; this allows the hardware trigger options to
      --  function as expected. See SOPT6[FTM5TRG0SRC].
      SOPT8_FTM5SYNCBIT_Field_0,
      --  If TRIG0 is enabled, this refreshes the FTM5CNTIN and allbuffered
      --  registers of the FTM5 (must write 0 first then write 1); this masks
      --  the hardware trigger.
      SOPT8_FTM5SYNCBIT_Field_1)
     with Size => 1;
   for SOPT8_FTM5SYNCBIT_Field use
     (SOPT8_FTM5SYNCBIT_Field_0 => 0,
      SOPT8_FTM5SYNCBIT_Field_1 => 1);

   --  Carrier frequency selection for FTM0/2 output channel
   type SOPT8_CARRIER_SELECT0_Field is
     (
      --  FTM1_CH1 output provides the carrier signal for Timer Modulation mode
      SOPT8_CARRIER_SELECT0_Field_00,
      --  LPTMR0 prescaler output provides the carrier signal for Timer
      --  Modulation mode
      SOPT8_CARRIER_SELECT0_Field_01,
      --  FTM5_CH1 output provides the carrier signal for Timer Modulation mode
      SOPT8_CARRIER_SELECT0_Field_10)
     with Size => 2;
   for SOPT8_CARRIER_SELECT0_Field use
     (SOPT8_CARRIER_SELECT0_Field_00 => 0,
      SOPT8_CARRIER_SELECT0_Field_01 => 1,
      SOPT8_CARRIER_SELECT0_Field_10 => 2);

   --  FTM0 channel 0 output PWM/OCMP mode source select
   type SOPT8_FTM0OCH0SRC_Field is
     (
      --  FTM0CH0 pin is the output of FTM0 channel 0 PWM/OCMP
      SOPT8_FTM0OCH0SRC_Field_0,
      --  FTM0CH0 pin is the output of FTM0 channel 0 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM0OCH0SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH0SRC_Field use
     (SOPT8_FTM0OCH0SRC_Field_0 => 0,
      SOPT8_FTM0OCH0SRC_Field_1 => 1);

   --  FTM0 channel 1 output PWM/OCMP mode source select
   type SOPT8_FTM0OCH1SRC_Field is
     (
      --  FTM0CH1 pin is the output of FTM0 channel 1 PWM/OCMP
      SOPT8_FTM0OCH1SRC_Field_0,
      --  FTM0CH1 pin is the output of FTM0 channel 1 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM0OCH1SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH1SRC_Field use
     (SOPT8_FTM0OCH1SRC_Field_0 => 0,
      SOPT8_FTM0OCH1SRC_Field_1 => 1);

   --  FTM0 channel 2 output PWM/OCMP mode source select
   type SOPT8_FTM0OCH2SRC_Field is
     (
      --  FTM0CH2 pin is the output of FTM0 channel 2 PWM/OCMP
      SOPT8_FTM0OCH2SRC_Field_0,
      --  FTM0CH2 pin is the output of FTM0 channel 2 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM0OCH2SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH2SRC_Field use
     (SOPT8_FTM0OCH2SRC_Field_0 => 0,
      SOPT8_FTM0OCH2SRC_Field_1 => 1);

   --  FTM0 channel 3 output PWM/OCMP mode source select
   type SOPT8_FTM0OCH3SRC_Field is
     (
      --  FTM0CH3 pin is the output of FTM0 channel 3 PWM/OCMP
      SOPT8_FTM0OCH3SRC_Field_0,
      --  FTM0CH3 pin is the output of FTM0 channel 3 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM0OCH3SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH3SRC_Field use
     (SOPT8_FTM0OCH3SRC_Field_0 => 0,
      SOPT8_FTM0OCH3SRC_Field_1 => 1);

   --  FTM0 channel 4 output PWM/OCMP mode source select
   type SOPT8_FTM0OCH4SRC_Field is
     (
      --  FTM0CH4 pin is the output of FTM0 channel 4 PWM/OCMP
      SOPT8_FTM0OCH4SRC_Field_0,
      --  FTM0CH4 pin is the output of FTM0 channel 4 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM0OCH4SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH4SRC_Field use
     (SOPT8_FTM0OCH4SRC_Field_0 => 0,
      SOPT8_FTM0OCH4SRC_Field_1 => 1);

   --  FTM0 channel 5 output PWM/OCMP mode source select
   type SOPT8_FTM0OCH5SRC_Field is
     (
      --  FTM0CH5 pin is the output of FTM0 channel 5 PWM/OCMP
      SOPT8_FTM0OCH5SRC_Field_0,
      --  FTM0CH5 pin is the output of FTM0 channel 5 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM0OCH5SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM0OCH5SRC_Field use
     (SOPT8_FTM0OCH5SRC_Field_0 => 0,
      SOPT8_FTM0OCH5SRC_Field_1 => 1);

   --  FTM2 channel 0 output PWM/OCMP mode source select
   type SOPT8_FTM2OCH0SRC_Field is
     (
      --  FTM2CH0 pin is the output of FTM2 channel 0 PWM/OCMP
      SOPT8_FTM2OCH0SRC_Field_0,
      --  FTM2CH0 pin is the output of FTM2 channel 0 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM2OCH0SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM2OCH0SRC_Field use
     (SOPT8_FTM2OCH0SRC_Field_0 => 0,
      SOPT8_FTM2OCH0SRC_Field_1 => 1);

   --  FTM2 channel 1 output PWM/OCMP mode source select
   type SOPT8_FTM2OCH1SRC_Field is
     (
      --  FTM2CH1 pin is the output of FTM2 channel 1 PWM/OCMP
      SOPT8_FTM2OCH1SRC_Field_0,
      --  FTM2CH1 pin is the output of FTM2 channel 1 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT0
      SOPT8_FTM2OCH1SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM2OCH1SRC_Field use
     (SOPT8_FTM2OCH1SRC_Field_0 => 0,
      SOPT8_FTM2OCH1SRC_Field_1 => 1);

   --  System Options Register 8
   type SIM_SOPT8_Register is record
      --  FlexTimer 0 Hardware Trigger 0 configure by software
      FTM0SYNCBIT     : SOPT8_FTM0SYNCBIT_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0SYNCBIT_Field_0;
      --  FlexTimer 1 Hardware Trigger 0 configure by software
      FTM1SYNCBIT     : SOPT8_FTM1SYNCBIT_Field :=
                         NRF_SVD.SIM.SOPT8_FTM1SYNCBIT_Field_0;
      --  FlexTimer 2 Hardware Trigger 0 configure by software
      FTM2SYNCBIT     : SOPT8_FTM2SYNCBIT_Field :=
                         NRF_SVD.SIM.SOPT8_FTM2SYNCBIT_Field_0;
      --  FlexTimer 3 Hardware Trigger 0 configure by software
      FTM3SYNCBIT     : SOPT8_FTM3SYNCBIT_Field :=
                         NRF_SVD.SIM.SOPT8_FTM3SYNCBIT_Field_0;
      --  FlexTimer 4 Hardware Trigger 0 configure by software
      FTM4SYNCBIT     : SOPT8_FTM4SYNCBIT_Field :=
                         NRF_SVD.SIM.SOPT8_FTM4SYNCBIT_Field_0;
      --  FlexTimer 5 Hardware Trigger 0 configure by software
      FTM5SYNCBIT     : SOPT8_FTM5SYNCBIT_Field :=
                         NRF_SVD.SIM.SOPT8_FTM5SYNCBIT_Field_0;
      --  unspecified
      Reserved_6_7    : HAL.UInt2 := 16#0#;
      --  Carrier frequency selection for FTM0/2 output channel
      CARRIER_SELECT0 : SOPT8_CARRIER_SELECT0_Field :=
                         NRF_SVD.SIM.SOPT8_CARRIER_SELECT0_Field_00;
      --  unspecified
      Reserved_10_15  : HAL.UInt6 := 16#0#;
      --  FTM0 channel 0 output PWM/OCMP mode source select
      FTM0OCH0SRC     : SOPT8_FTM0OCH0SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0OCH0SRC_Field_0;
      --  FTM0 channel 1 output PWM/OCMP mode source select
      FTM0OCH1SRC     : SOPT8_FTM0OCH1SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0OCH1SRC_Field_0;
      --  FTM0 channel 2 output PWM/OCMP mode source select
      FTM0OCH2SRC     : SOPT8_FTM0OCH2SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0OCH2SRC_Field_0;
      --  FTM0 channel 3 output PWM/OCMP mode source select
      FTM0OCH3SRC     : SOPT8_FTM0OCH3SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0OCH3SRC_Field_0;
      --  FTM0 channel 4 output PWM/OCMP mode source select
      FTM0OCH4SRC     : SOPT8_FTM0OCH4SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0OCH4SRC_Field_0;
      --  FTM0 channel 5 output PWM/OCMP mode source select
      FTM0OCH5SRC     : SOPT8_FTM0OCH5SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM0OCH5SRC_Field_0;
      --  FTM2 channel 0 output PWM/OCMP mode source select
      FTM2OCH0SRC     : SOPT8_FTM2OCH0SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM2OCH0SRC_Field_0;
      --  FTM2 channel 1 output PWM/OCMP mode source select
      FTM2OCH1SRC     : SOPT8_FTM2OCH1SRC_Field :=
                         NRF_SVD.SIM.SOPT8_FTM2OCH1SRC_Field_0;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT8_Register use record
      FTM0SYNCBIT     at 0 range 0 .. 0;
      FTM1SYNCBIT     at 0 range 1 .. 1;
      FTM2SYNCBIT     at 0 range 2 .. 2;
      FTM3SYNCBIT     at 0 range 3 .. 3;
      FTM4SYNCBIT     at 0 range 4 .. 4;
      FTM5SYNCBIT     at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      CARRIER_SELECT0 at 0 range 8 .. 9;
      Reserved_10_15  at 0 range 10 .. 15;
      FTM0OCH0SRC     at 0 range 16 .. 16;
      FTM0OCH1SRC     at 0 range 17 .. 17;
      FTM0OCH2SRC     at 0 range 18 .. 18;
      FTM0OCH3SRC     at 0 range 19 .. 19;
      FTM0OCH4SRC     at 0 range 20 .. 20;
      FTM0OCH5SRC     at 0 range 21 .. 21;
      FTM2OCH0SRC     at 0 range 22 .. 22;
      FTM2OCH1SRC     at 0 range 23 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  Carrier frequency selection for FTM3/4 output channel
   type SOPT9_CARRIER_SELECT1_Field is
     (
      --  FTM1_CH1 output provides the carrier signal for Timer Modulation mode
      SOPT9_CARRIER_SELECT1_Field_00,
      --  LPTMR0 prescaler output provides the carrier signal for Timer
      --  Modulation mode
      SOPT9_CARRIER_SELECT1_Field_01,
      --  FTM5_CH1 output provides the carrier signal for Timer Modulation mode
      SOPT9_CARRIER_SELECT1_Field_10)
     with Size => 2;
   for SOPT9_CARRIER_SELECT1_Field use
     (SOPT9_CARRIER_SELECT1_Field_00 => 0,
      SOPT9_CARRIER_SELECT1_Field_01 => 1,
      SOPT9_CARRIER_SELECT1_Field_10 => 2);

   --  FTM3 channel 0 output PWM/OCMP mode source select
   type SOPT9_FTM3OCH0SRC_Field is
     (
      --  FTM3CH0 pin is the output of FTM3 channel 0 PWM/OCMP
      SOPT9_FTM3OCH0SRC_Field_0,
      --  FTM3CH0 pin is the output of FTM3 channel 0 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM3OCH0SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM3OCH0SRC_Field use
     (SOPT9_FTM3OCH0SRC_Field_0 => 0,
      SOPT9_FTM3OCH0SRC_Field_1 => 1);

   --  FTM3 channel 1 output PWM/OCMP mode source select
   type SOPT9_FTM3OCH1SRC_Field is
     (
      --  FTM3CH1 pin is the output of FTM3 channel 1 PWM/OCMP
      SOPT9_FTM3OCH1SRC_Field_0,
      --  FTM3CH1 pin is the output of FTM3 channel 1 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM3OCH1SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM3OCH1SRC_Field use
     (SOPT9_FTM3OCH1SRC_Field_0 => 0,
      SOPT9_FTM3OCH1SRC_Field_1 => 1);

   --  FTM3 channel 2 output PWM/OCMP mode source select
   type SOPT9_FTM3OCH2SRC_Field is
     (
      --  FTM3CH2 pin is the output of FTM3 channel 2 PWM/OCMP
      SOPT9_FTM3OCH2SRC_Field_0,
      --  FTM3CH2 pin is the output of FTM3 channel 2 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM3OCH2SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM3OCH2SRC_Field use
     (SOPT9_FTM3OCH2SRC_Field_0 => 0,
      SOPT9_FTM3OCH2SRC_Field_1 => 1);

   --  FTM3 channel 3 output PWM/OCMP mode source select
   type SOPT9_FTM3OCH3SRC_Field is
     (
      --  FTM3CH3 pin is the output of FTM3 channel 3 PWM/OCMP
      SOPT9_FTM3OCH3SRC_Field_0,
      --  FTM3CH3 pin is the output of FTM3 channel 3 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM3OCH3SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM3OCH3SRC_Field use
     (SOPT9_FTM3OCH3SRC_Field_0 => 0,
      SOPT9_FTM3OCH3SRC_Field_1 => 1);

   --  FTM3 channel 4 output PWM/OCMP mode source select
   type SOPT9_FTM3OCH4SRC_Field is
     (
      --  FTM3CH4 pin is the output of FTM3 channel 4 PWM/OCMP
      SOPT9_FTM3OCH4SRC_Field_0,
      --  FTM3CH4 pin is the output of FTM3 channel 4 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM3OCH4SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM3OCH4SRC_Field use
     (SOPT9_FTM3OCH4SRC_Field_0 => 0,
      SOPT9_FTM3OCH4SRC_Field_1 => 1);

   --  FTM3 channel 5 output PWM/OCMP mode source select
   type SOPT9_FTM3OCH5SRC_Field is
     (
      --  FTM3CH5 pin is the output of FTM3 channel 5 PWM/OCMP
      SOPT9_FTM3OCH5SRC_Field_0,
      --  FTM3CH5 pin is the output of FTM3 channel 5 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM3OCH5SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM3OCH5SRC_Field use
     (SOPT9_FTM3OCH5SRC_Field_0 => 0,
      SOPT9_FTM3OCH5SRC_Field_1 => 1);

   --  FTM4 channel 0 output PWM/OCMP mode source select
   type SOPT9_FTM4OCH0SRC_Field is
     (
      --  FTM4CH0 pin is the output of FTM4 channel 0 PWM/OCMP
      SOPT9_FTM4OCH0SRC_Field_0,
      --  FTM4CH0 pin is the output of FTM4 channel 0 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM4OCH0SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM4OCH0SRC_Field use
     (SOPT9_FTM4OCH0SRC_Field_0 => 0,
      SOPT9_FTM4OCH0SRC_Field_1 => 1);

   --  FTM4 channel 1 output PWM/OCMP mode source select
   type SOPT9_FTM4OCH1SRC_Field is
     (
      --  FTM4CH1 pin is the output of FTM4 channel 1 PWM/OCMP
      SOPT9_FTM4OCH1SRC_Field_0,
      --  FTM4CH1 pin is the output of FTM4 channel 1 PWM/OCMP modulating the
      --  carrier frequency, as per CARRIER_SELECT1
      SOPT9_FTM4OCH1SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM4OCH1SRC_Field use
     (SOPT9_FTM4OCH1SRC_Field_0 => 0,
      SOPT9_FTM4OCH1SRC_Field_1 => 1);

   --  System Options Register 9
   type SIM_SOPT9_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Carrier frequency selection for FTM3/4 output channel
      CARRIER_SELECT1 : SOPT9_CARRIER_SELECT1_Field :=
                         NRF_SVD.SIM.SOPT9_CARRIER_SELECT1_Field_00;
      --  unspecified
      Reserved_10_15  : HAL.UInt6 := 16#0#;
      --  FTM3 channel 0 output PWM/OCMP mode source select
      FTM3OCH0SRC     : SOPT9_FTM3OCH0SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM3OCH0SRC_Field_0;
      --  FTM3 channel 1 output PWM/OCMP mode source select
      FTM3OCH1SRC     : SOPT9_FTM3OCH1SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM3OCH1SRC_Field_0;
      --  FTM3 channel 2 output PWM/OCMP mode source select
      FTM3OCH2SRC     : SOPT9_FTM3OCH2SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM3OCH2SRC_Field_0;
      --  FTM3 channel 3 output PWM/OCMP mode source select
      FTM3OCH3SRC     : SOPT9_FTM3OCH3SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM3OCH3SRC_Field_0;
      --  FTM3 channel 4 output PWM/OCMP mode source select
      FTM3OCH4SRC     : SOPT9_FTM3OCH4SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM3OCH4SRC_Field_0;
      --  FTM3 channel 5 output PWM/OCMP mode source select
      FTM3OCH5SRC     : SOPT9_FTM3OCH5SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM3OCH5SRC_Field_0;
      --  FTM4 channel 0 output PWM/OCMP mode source select
      FTM4OCH0SRC     : SOPT9_FTM4OCH0SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM4OCH0SRC_Field_0;
      --  FTM4 channel 1 output PWM/OCMP mode source select
      FTM4OCH1SRC     : SOPT9_FTM4OCH1SRC_Field :=
                         NRF_SVD.SIM.SOPT9_FTM4OCH1SRC_Field_0;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT9_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CARRIER_SELECT1 at 0 range 8 .. 9;
      Reserved_10_15  at 0 range 10 .. 15;
      FTM3OCH0SRC     at 0 range 16 .. 16;
      FTM3OCH1SRC     at 0 range 17 .. 17;
      FTM3OCH2SRC     at 0 range 18 .. 18;
      FTM3OCH3SRC     at 0 range 19 .. 19;
      FTM3OCH4SRC     at 0 range 20 .. 20;
      FTM3OCH5SRC     at 0 range 21 .. 21;
      FTM4OCH0SRC     at 0 range 22 .. 22;
      FTM4OCH1SRC     at 0 range 23 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  Pincount identification
   type SDID_PINID_Field is
     (
      --  32-pin
      SDID_PINID_Field_0010,
      --  48-pin
      SDID_PINID_Field_0100,
      --  64-pin
      SDID_PINID_Field_0101)
     with Size => 4;
   for SDID_PINID_Field use
     (SDID_PINID_Field_0010 => 2,
      SDID_PINID_Field_0100 => 4,
      SDID_PINID_Field_0101 => 5);

   subtype SIM_SDID_DIEID_Field is HAL.UInt5;
   subtype SIM_SDID_REVID_Field is HAL.UInt4;

   --  Specifies the size of the System SRAM.
   type SDID_SRAMSIZE_Field is
     (
      --  16 KB
      SDID_SRAMSIZE_Field_0101)
     with Size => 4;
   for SDID_SRAMSIZE_Field use
     (SDID_SRAMSIZE_Field_0101 => 5);

   --  Series ID
   type SDID_SERIERID_Field is
     (
      --  V-family - Motor control
      SDID_SERIERID_Field_0110)
     with Size => 4;
   for SDID_SERIERID_Field use
     (SDID_SERIERID_Field_0110 => 6);

   --  V Sub-family ID
   type SDID_SUBFAMID_Field is
     (
      --  MKV10xxxx
      SDID_SUBFAMID_Field_0000,
      --  MKV11xxxx
      SDID_SUBFAMID_Field_0001)
     with Size => 4;
   for SDID_SUBFAMID_Field use
     (SDID_SUBFAMID_Field_0000 => 0,
      SDID_SUBFAMID_Field_0001 => 1);

   --  V-Family ID
   type SDID_FAMID_Field is
     (
      --  MKV1xZx
      SDID_FAMID_Field_0001)
     with Size => 4;
   for SDID_FAMID_Field use
     (SDID_FAMID_Field_0001 => 1);

   --  System Device Identification Register
   type SIM_SDID_Register is record
      --  Read-only. Pincount identification
      PINID        : SDID_PINID_Field;
      --  unspecified
      Reserved_4_6 : HAL.UInt3;
      --  Read-only. Device die number
      DIEID        : SIM_SDID_DIEID_Field;
      --  Read-only. Device revision number
      REVID        : SIM_SDID_REVID_Field;
      --  Read-only. Specifies the size of the System SRAM.
      SRAMSIZE     : SDID_SRAMSIZE_Field;
      --  Read-only. Series ID
      SERIERID     : SDID_SERIERID_Field;
      --  Read-only. V Sub-family ID
      SUBFAMID     : SDID_SUBFAMID_Field;
      --  Read-only. V-Family ID
      FAMID        : SDID_FAMID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SDID_Register use record
      PINID        at 0 range 0 .. 3;
      Reserved_4_6 at 0 range 4 .. 6;
      DIEID        at 0 range 7 .. 11;
      REVID        at 0 range 12 .. 15;
      SRAMSIZE     at 0 range 16 .. 19;
      SERIERID     at 0 range 20 .. 23;
      SUBFAMID     at 0 range 24 .. 27;
      FAMID        at 0 range 28 .. 31;
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
   type SIM_SCGC4_UART_Field_Array is array (0 .. 1) of SCGC4_UART0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC4_UART
   type SIM_SCGC4_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt2;
         when True =>
            --  UART as an array
            Arr : SIM_SCGC4_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC4_UART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
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

   --  System Clock Gating Control Register 4
   type SIM_SCGC4_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  EWM Clock Gate Control
      EWM            : SCGC4_EWM_Field := NRF_SVD.SIM.SCGC4_EWM_Field_0;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#C#;
      --  I2C0 Clock Gate Control
      I2C0           : SCGC4_I2C0_Field := NRF_SVD.SIM.SCGC4_I2C0_Field_0;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  UART0 Clock Gate Control
      UART           : SIM_SCGC4_UART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_18 : HAL.UInt7 := 16#0#;
      --  Comparator Clock Gate Control
      CMP            : SCGC4_CMP_Field := NRF_SVD.SIM.SCGC4_CMP_Field_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#F00#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC4_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EWM            at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      I2C0           at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      UART           at 0 range 10 .. 11;
      Reserved_12_18 at 0 range 12 .. 18;
      CMP            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Low Power Timer Clock Gate Control
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
      --  Low Power Timer Clock Gate Control
      LPTMR          : SCGC5_LPTMR_Field := NRF_SVD.SIM.SCGC5_LPTMR_Field_0;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#C0#;
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

   --  FLEXCAN0 Clock Gate Control
   type SCGC6_FLEXCAN0_Field is
     (
      --  Clock disabled
      SCGC6_FLEXCAN0_Field_0,
      --  Clock enabled
      SCGC6_FLEXCAN0_Field_1)
     with Size => 1;
   for SCGC6_FLEXCAN0_Field use
     (SCGC6_FLEXCAN0_Field_0 => 0,
      SCGC6_FLEXCAN0_Field_1 => 1);

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

   --  SIM_SCGC6_FTM array
   type SIM_SCGC6_FTM_Field_Array is array (3 .. 5) of SCGC6_FTM3_Field
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

   --  PDB1 Clock Gate Control
   type SCGC6_PDB1_Field is
     (
      --  Clock disabled
      SCGC6_PDB1_Field_0,
      --  Clock enabled
      SCGC6_PDB1_Field_1)
     with Size => 1;
   for SCGC6_PDB1_Field use
     (SCGC6_PDB1_Field_0 => 0,
      SCGC6_PDB1_Field_1 => 1);

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

   --  PDB0 Clock Gate Control
   type SCGC6_PDB0_Field is
     (
      --  Clock disabled
      SCGC6_PDB0_Field_0,
      --  Clock enabled
      SCGC6_PDB0_Field_1)
     with Size => 1;
   for SCGC6_PDB0_Field use
     (SCGC6_PDB0_Field_0 => 0,
      SCGC6_PDB0_Field_1 => 1);

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
   type SIM_SCGC6_FTM_Field_Array_1 is array (0 .. 2) of SCGC6_FTM0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for SIM_SCGC6_FTM
   type SIM_SCGC6_FTM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FTM as a value
            Val : HAL.UInt3;
         when True =>
            --  FTM as an array
            Arr : SIM_SCGC6_FTM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SIM_SCGC6_FTM_Field_1 use record
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

   --  SIM_SCGC6_ADC array
   type SIM_SCGC6_ADC_Field_Array is array (0 .. 1) of SCGC6_ADC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC6_ADC
   type SIM_SCGC6_ADC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADC as a value
            Val : HAL.UInt2;
         when True =>
            --  ADC as an array
            Arr : SIM_SCGC6_ADC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC6_ADC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

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
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  FLEXCAN0 Clock Gate Control
      FLEXCAN0       : SCGC6_FLEXCAN0_Field :=
                        NRF_SVD.SIM.SCGC6_FLEXCAN0_Field_0;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  FTM3 Clock Gate Control
      FTM            : SIM_SCGC6_FTM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  SPI0 Clock Gate Control
      SPI0           : SCGC6_SPI0_Field := NRF_SVD.SIM.SCGC6_SPI0_Field_0;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  PDB1 Clock Gate Control
      PDB1           : SCGC6_PDB1_Field := NRF_SVD.SIM.SCGC6_PDB1_Field_0;
      --  CRC Clock Gate Control
      CRC            : SCGC6_CRC_Field := NRF_SVD.SIM.SCGC6_CRC_Field_0;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  PDB0 Clock Gate Control
      PDB0           : SCGC6_PDB0_Field := NRF_SVD.SIM.SCGC6_PDB0_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  FTM0 Clock Gate Control
      FTM_1          : SIM_SCGC6_FTM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 Clock Gate Control
      ADC            : SIM_SCGC6_ADC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  DAC0 Clock Gate Control
      DAC0           : SCGC6_DAC0_Field := NRF_SVD.SIM.SCGC6_DAC0_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC6_Register use record
      FTF            at 0 range 0 .. 0;
      DMAMUX         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FLEXCAN0       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      FTM            at 0 range 6 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SPI0           at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      PDB1           at 0 range 17 .. 17;
      CRC            at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      PDB0           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FTM_1          at 0 range 24 .. 26;
      ADC            at 0 range 27 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
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

   --  Clock 5 Output Divider Value
   type CLKDIV1_OUTDIV5_Field is
     (
      --  Divide-by-1
      CLKDIV1_OUTDIV5_Field_000,
      --  Divide-by-2
      CLKDIV1_OUTDIV5_Field_001,
      --  Divide-by-3
      CLKDIV1_OUTDIV5_Field_010,
      --  Divide-by-4
      CLKDIV1_OUTDIV5_Field_011,
      --  Divide-by-5
      CLKDIV1_OUTDIV5_Field_100,
      --  Divide-by-6
      CLKDIV1_OUTDIV5_Field_101,
      --  Divide-by-7
      CLKDIV1_OUTDIV5_Field_110,
      --  Divide-by-8
      CLKDIV1_OUTDIV5_Field_111)
     with Size => 3;
   for CLKDIV1_OUTDIV5_Field use
     (CLKDIV1_OUTDIV5_Field_000 => 0,
      CLKDIV1_OUTDIV5_Field_001 => 1,
      CLKDIV1_OUTDIV5_Field_010 => 2,
      CLKDIV1_OUTDIV5_Field_011 => 3,
      CLKDIV1_OUTDIV5_Field_100 => 4,
      CLKDIV1_OUTDIV5_Field_101 => 5,
      CLKDIV1_OUTDIV5_Field_110 => 6,
      CLKDIV1_OUTDIV5_Field_111 => 7);

   --  OUTDIV5 Divider Control
   type CLKDIV1_OUTDIV5EN_Field is
     (
      --  OUTDIV5 disabled
      CLKDIV1_OUTDIV5EN_Field_0,
      --  OUTDIV5 enabled
      CLKDIV1_OUTDIV5EN_Field_1)
     with Size => 1;
   for CLKDIV1_OUTDIV5EN_Field use
     (CLKDIV1_OUTDIV5EN_Field_0 => 0,
      CLKDIV1_OUTDIV5EN_Field_1 => 1);

   --  Clock 4 Output Divider Value
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

   --  Clock 1 Output Divider Value
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
      --  Clock 5 Output Divider Value
      OUTDIV5        : CLKDIV1_OUTDIV5_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV5_Field_001;
      --  OUTDIV5 Divider Control
      OUTDIV5EN      : CLKDIV1_OUTDIV5EN_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV5EN_Field_0;
      --  Clock 4 Output Divider Value
      OUTDIV4        : CLKDIV1_OUTDIV4_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV4_Field_001;
      --  unspecified
      Reserved_19_27 : HAL.UInt9 := 16#0#;
      --  Clock 1 Output Divider Value
      OUTDIV1        : CLKDIV1_OUTDIV1_Field :=
                        NRF_SVD.SIM.CLKDIV1_OUTDIV1_Field_0000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV1_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      OUTDIV5        at 0 range 12 .. 14;
      OUTDIV5EN      at 0 range 15 .. 15;
      OUTDIV4        at 0 range 16 .. 18;
      Reserved_19_27 at 0 range 19 .. 27;
      OUTDIV1        at 0 range 28 .. 31;
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
      --  Flash remains enabled during Doze mode
      FCFG1_FLASHDOZE_Field_0,
      --  Flash is disabled for the duration of Doze mode
      FCFG1_FLASHDOZE_Field_1)
     with Size => 1;
   for FCFG1_FLASHDOZE_Field use
     (FCFG1_FLASHDOZE_Field_0 => 0,
      FCFG1_FLASHDOZE_Field_1 => 1);

   --  Program Flash Size
   type FCFG1_PFSIZE_Field is
     (
      --  8 KB of program flash memory, 0.25 KB protection region
      FCFG1_PFSIZE_Field_0000,
      --  16 KB of program flash memory, 0.5 KB protection region
      FCFG1_PFSIZE_Field_0001,
      --  32 KB of program flash memory, 1 KB protection region
      FCFG1_PFSIZE_Field_0011,
      --  64 KB of program flash memory, 2 KB protection region
      FCFG1_PFSIZE_Field_0101,
      --  128 KB of program flash memory, 4 KB protection region
      FCFG1_PFSIZE_Field_0111,
      --  256 KB of program flash memory, 4 KB protection region
      FCFG1_PFSIZE_Field_1001,
      --  32 KB of program flash memory, 1 KB protection region
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
                        NRF_SVD.SIM.FCFG1_PFSIZE_Field_0000;
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

   subtype SIM_FCFG2_MAXADDR_Field is HAL.UInt7;

   --  Flash Configuration Register 2
   type SIM_FCFG2_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24;
      --  Read-only. Max address block
      MAXADDR        : SIM_FCFG2_MAXADDR_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FCFG2_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      MAXADDR        at 0 range 24 .. 30;
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

   --  WDOG Clock Select
   type WDOGC_WDOGCLKS_Field is
     (
      --  Internal 1 kHz clock is source to WDOG
      WDOGC_WDOGCLKS_Field_0,
      --  MCGIRCLK is source to WDOG
      WDOGC_WDOGCLKS_Field_1)
     with Size => 1;
   for WDOGC_WDOGCLKS_Field use
     (WDOGC_WDOGCLKS_Field_0 => 0,
      WDOGC_WDOGCLKS_Field_1 => 1);

   --  WDOG Control Register
   type SIM_WDOGC_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  WDOG Clock Select
      WDOGCLKS      : WDOGC_WDOGCLKS_Field :=
                       NRF_SVD.SIM.WDOGC_WDOGCLKS_Field_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_WDOGC_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      WDOGCLKS      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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
      --  Systems Option Register 6
      SOPT6   : aliased SIM_SOPT6_Register;
      --  System Options Register 7
      SOPT7   : aliased SIM_SOPT7_Register;
      --  System Options Register 8
      SOPT8   : aliased SIM_SOPT8_Register;
      --  System Options Register 9
      SOPT9   : aliased SIM_SOPT9_Register;
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
      --  WDOG Control Register
      WDOGC   : aliased SIM_WDOGC_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SOPT1   at 16#0# range 0 .. 31;
      SOPT2   at 16#1004# range 0 .. 31;
      SOPT4   at 16#100C# range 0 .. 31;
      SOPT5   at 16#1010# range 0 .. 31;
      SOPT6   at 16#1014# range 0 .. 31;
      SOPT7   at 16#1018# range 0 .. 31;
      SOPT8   at 16#101C# range 0 .. 31;
      SOPT9   at 16#1020# range 0 .. 31;
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
      WDOGC   at 16#1100# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
