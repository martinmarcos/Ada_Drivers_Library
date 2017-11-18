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

--  This spec has been automatically generated from MKV42F16.xml

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
      --  16 KB
      SOPT1_RAMSIZE_Field_0011,
      --  24 KB
      SOPT1_RAMSIZE_Field_0100,
      --  32 KB
      SOPT1_RAMSIZE_Field_0101)
     with Size => 4;
   for SOPT1_RAMSIZE_Field use
     (Sopt1_Ramsize_Field_Reset => 0,
      SOPT1_RAMSIZE_Field_0011 => 3,
      SOPT1_RAMSIZE_Field_0100 => 4,
      SOPT1_RAMSIZE_Field_0101 => 5);

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
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
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
      Reserved_16_17 at 0 range 16 .. 17;
      OSC32KSEL      at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  CLKOUT select
   type SOPT2_CLKOUTSEL_Field is
     (
      --  Reset value for the field
      Sopt2_Clkoutsel_Field_Reset,
      --  Flash clock
      SOPT2_CLKOUTSEL_Field_010,
      --  LPO clock (1 kHz)
      SOPT2_CLKOUTSEL_Field_011,
      --  MCGIRCLK
      SOPT2_CLKOUTSEL_Field_100,
      --  OSCERCLK_UNDIV
      SOPT2_CLKOUTSEL_Field_101,
      --  OSCERCLK
      SOPT2_CLKOUTSEL_Field_110)
     with Size => 3;
   for SOPT2_CLKOUTSEL_Field use
     (Sopt2_Clkoutsel_Field_Reset => 0,
      SOPT2_CLKOUTSEL_Field_010 => 2,
      SOPT2_CLKOUTSEL_Field_011 => 3,
      SOPT2_CLKOUTSEL_Field_100 => 4,
      SOPT2_CLKOUTSEL_Field_101 => 5,
      SOPT2_CLKOUTSEL_Field_110 => 6);

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

   --  System Options Register 2
   type SIM_SOPT2_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  CLKOUT select
      CLKOUTSEL      : SOPT2_CLKOUTSEL_Field := Sopt2_Clkoutsel_Field_Reset;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Debug trace clock select
      TRACECLKSEL    : SOPT2_TRACECLKSEL_Field :=
                        NRF_SVD.SIM.SOPT2_TRACECLKSEL_Field_1;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT2_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CLKOUTSEL      at 0 range 5 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      TRACECLKSEL    at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
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

   --  FTM0 Fault 2 Select
   type SOPT4_FTM0FLT2_Field is
     (
      --  FTM0_FLT2 pin
      SOPT4_FTM0FLT2_Field_0,
      --  CMP2 out
      SOPT4_FTM0FLT2_Field_1)
     with Size => 1;
   for SOPT4_FTM0FLT2_Field use
     (SOPT4_FTM0FLT2_Field_0 => 0,
      SOPT4_FTM0FLT2_Field_1 => 1);

   --  Selects the source of FTM0 fault 3
   type SOPT4_FTM0FLT3_Field is
     (
      --  FTM0_FLT3 pin
      SOPT4_FTM0FLT3_Field_0,
      --  XBARA output 49
      SOPT4_FTM0FLT3_Field_1)
     with Size => 1;
   for SOPT4_FTM0FLT3_Field use
     (SOPT4_FTM0FLT3_Field_0 => 0,
      SOPT4_FTM0FLT3_Field_1 => 1);

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
      --  PDB0 output trigger drives FTM0 hardware trigger 1
      SOPT4_FTM0TRG1SRC_Field_0,
      --  FTM1 channel match drives FTM0 hardware trigger 1
      SOPT4_FTM0TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM0TRG1SRC_Field use
     (SOPT4_FTM0TRG1SRC_Field_0 => 0,
      SOPT4_FTM0TRG1SRC_Field_1 => 1);

   --  FlexTimer 0 Hardware Trigger 2 Source Select
   type SOPT4_FTM0TRG2SRC_Field is
     (
      --  FTM0_FLT0 pin drives FTM0 hardware trigger 2
      SOPT4_FTM0TRG2SRC_Field_0,
      --  XBARA output 34 drives FTM0 hardware trigger 2
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

   --  FlexTimer 1 Hardware Trigger 2 Source Select
   type SOPT4_FTM1TRG2SRC_Field is
     (
      --  FTM1_FLT0 pin drives FTM1 hardware trigger 2
      SOPT4_FTM1TRG2SRC_Field_0,
      --  XBARA output 35 drives FTM1 hardware trigger 2
      SOPT4_FTM1TRG2SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM1TRG2SRC_Field use
     (SOPT4_FTM1TRG2SRC_Field_0 => 0,
      SOPT4_FTM1TRG2SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 0 Source Select
   type SOPT4_FTM3TRG0SRC_Field is
     (
      --  CMP0 output drives FTM3 hardware trigger 0
      SOPT4_FTM3TRG0SRC_Field_0,
      --  FTM1 channel match drives FTM3 hardware trigger 0
      SOPT4_FTM3TRG0SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM3TRG0SRC_Field use
     (SOPT4_FTM3TRG0SRC_Field_0 => 0,
      SOPT4_FTM3TRG0SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 1 Source Select
   type SOPT4_FTM3TRG1SRC_Field is
     (
      --  PDB1 output trigger drives FTM3 hardware trigger 1
      SOPT4_FTM3TRG1SRC_Field_0,
      --  FTM1 channel match drives FTM3 hardware trigger 1
      SOPT4_FTM3TRG1SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM3TRG1SRC_Field use
     (SOPT4_FTM3TRG1SRC_Field_0 => 0,
      SOPT4_FTM3TRG1SRC_Field_1 => 1);

   --  FlexTimer 3 Hardware Trigger 2 Source Select
   type SOPT4_FTM3TRG2SRC_Field is
     (
      --  FTM3_FLT0 pin drives FTM3 hardware trigger 2
      SOPT4_FTM3TRG2SRC_Field_0,
      --  XBARA output 37 drives FTM3 hardware trigger 2
      SOPT4_FTM3TRG2SRC_Field_1)
     with Size => 1;
   for SOPT4_FTM3TRG2SRC_Field use
     (SOPT4_FTM3TRG2SRC_Field_0 => 0,
      SOPT4_FTM3TRG2SRC_Field_1 => 1);

   --  System Options Register 4
   type SIM_SOPT4_Register is record
      --  FTM0 Fault 0 Select
      FTM0FLT0       : SOPT4_FTM0FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT0_Field_0;
      --  FTM0 Fault 1 Select
      FTM0FLT1       : SOPT4_FTM0FLT1_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT1_Field_0;
      --  FTM0 Fault 2 Select
      FTM0FLT2       : SOPT4_FTM0FLT2_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT2_Field_0;
      --  Selects the source of FTM0 fault 3
      FTM0FLT3       : SOPT4_FTM0FLT3_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0FLT3_Field_0;
      --  FTM1 Fault 0 Select
      FTM1FLT0       : SOPT4_FTM1FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1FLT0_Field_0;
      --  unspecified
      Reserved_5_11  : HAL.UInt7 := 16#0#;
      --  FTM3 Fault 0 Select
      FTM3FLT0       : SOPT4_FTM3FLT0_Field :=
                        NRF_SVD.SIM.SOPT4_FTM3FLT0_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  FlexTimer 0 Hardware Trigger 0 Source Select
      FTM0TRG0SRC    : SOPT4_FTM0TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG0SRC_Field_0;
      --  FlexTimer 0 Hardware Trigger 1 Source Select
      FTM0TRG1SRC    : SOPT4_FTM0TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG1SRC_Field_0;
      --  FlexTimer 0 Hardware Trigger 2 Source Select
      FTM0TRG2SRC    : SOPT4_FTM0TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM0TRG2SRC_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  FlexTimer 1 Hardware Trigger 0 Source Select
      FTM1TRG0SRC    : SOPT4_FTM1TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1TRG0SRC_Field_0;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  FlexTimer 1 Hardware Trigger 2 Source Select
      FTM1TRG2SRC    : SOPT4_FTM1TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM1TRG2SRC_Field_0;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  FlexTimer 3 Hardware Trigger 0 Source Select
      FTM3TRG0SRC    : SOPT4_FTM3TRG0SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM3TRG0SRC_Field_0;
      --  FlexTimer 3 Hardware Trigger 1 Source Select
      FTM3TRG1SRC    : SOPT4_FTM3TRG1SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM3TRG1SRC_Field_0;
      --  FlexTimer 3 Hardware Trigger 2 Source Select
      FTM3TRG2SRC    : SOPT4_FTM3TRG2SRC_Field :=
                        NRF_SVD.SIM.SOPT4_FTM3TRG2SRC_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT4_Register use record
      FTM0FLT0       at 0 range 0 .. 0;
      FTM0FLT1       at 0 range 1 .. 1;
      FTM0FLT2       at 0 range 2 .. 2;
      FTM0FLT3       at 0 range 3 .. 3;
      FTM1FLT0       at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      FTM3FLT0       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      FTM0TRG0SRC    at 0 range 16 .. 16;
      FTM0TRG1SRC    at 0 range 17 .. 17;
      FTM0TRG2SRC    at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FTM1TRG0SRC    at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      FTM1TRG2SRC    at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      FTM3TRG0SRC    at 0 range 28 .. 28;
      FTM3TRG1SRC    at 0 range 29 .. 29;
      FTM3TRG2SRC    at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  UART 0 transmit data source select
   type SOPT5_UART0TXSRC_Field is
     (
      --  UART0_TX pin
      SOPT5_UART0TXSRC_Field_0,
      --  UART0_TX pin modulated with FTM1 channel 0 output
      SOPT5_UART0TXSRC_Field_1)
     with Size => 1;
   for SOPT5_UART0TXSRC_Field use
     (SOPT5_UART0TXSRC_Field_0 => 0,
      SOPT5_UART0TXSRC_Field_1 => 1);

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
      SOPT5_UART1TXSRC_Field_0,
      --  UART1_TX pin modulated with FTM1 channel 0 output
      SOPT5_UART1TXSRC_Field_1)
     with Size => 1;
   for SOPT5_UART1TXSRC_Field use
     (SOPT5_UART1TXSRC_Field_0 => 0,
      SOPT5_UART1TXSRC_Field_1 => 1);

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

   --  System Options Register 5
   type SIM_SOPT5_Register is record
      --  UART 0 transmit data source select
      UART0TXSRC    : SOPT5_UART0TXSRC_Field :=
                       NRF_SVD.SIM.SOPT5_UART0TXSRC_Field_0;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  UART 0 receive data source select
      UART0RXSRC    : SOPT5_UART0RXSRC_Field :=
                       NRF_SVD.SIM.SOPT5_UART0RXSRC_Field_00;
      --  UART 1 transmit data source select
      UART1TXSRC    : SOPT5_UART1TXSRC_Field :=
                       NRF_SVD.SIM.SOPT5_UART1TXSRC_Field_0;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  UART 1 receive data source select
      UART1RXSRC    : SOPT5_UART1RXSRC_Field :=
                       NRF_SVD.SIM.SOPT5_UART1RXSRC_Field_00;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT5_Register use record
      UART0TXSRC    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      UART0RXSRC    at 0 range 2 .. 3;
      UART1TXSRC    at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      UART1RXSRC    at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADCA trigger select
   type SOPT7_ADCATRGSEL_Field is
     (
      --  PDB external trigger pin input (PDB0_EXTRG)
      SOPT7_ADCATRGSEL_Field_0000,
      --  High speed comparator 0 output
      SOPT7_ADCATRGSEL_Field_0001,
      --  High speed comparator 1 output
      SOPT7_ADCATRGSEL_Field_0010,
      --  High speed comparator 2 output
      SOPT7_ADCATRGSEL_Field_0011,
      --  PIT trigger 0
      SOPT7_ADCATRGSEL_Field_0100,
      --  PIT trigger 1
      SOPT7_ADCATRGSEL_Field_0101,
      --  PIT trigger 2
      SOPT7_ADCATRGSEL_Field_0110,
      --  PIT trigger 3
      SOPT7_ADCATRGSEL_Field_0111,
      --  FTM0 trigger
      SOPT7_ADCATRGSEL_Field_1000,
      --  FTM1 trigger
      SOPT7_ADCATRGSEL_Field_1001,
      --  FTM3 trigger
      SOPT7_ADCATRGSEL_Field_1011,
      --  XBARA output 38
      SOPT7_ADCATRGSEL_Field_1100,
      --  Low-power timer trigger
      SOPT7_ADCATRGSEL_Field_1110)
     with Size => 4;
   for SOPT7_ADCATRGSEL_Field use
     (SOPT7_ADCATRGSEL_Field_0000 => 0,
      SOPT7_ADCATRGSEL_Field_0001 => 1,
      SOPT7_ADCATRGSEL_Field_0010 => 2,
      SOPT7_ADCATRGSEL_Field_0011 => 3,
      SOPT7_ADCATRGSEL_Field_0100 => 4,
      SOPT7_ADCATRGSEL_Field_0101 => 5,
      SOPT7_ADCATRGSEL_Field_0110 => 6,
      SOPT7_ADCATRGSEL_Field_0111 => 7,
      SOPT7_ADCATRGSEL_Field_1000 => 8,
      SOPT7_ADCATRGSEL_Field_1001 => 9,
      SOPT7_ADCATRGSEL_Field_1011 => 11,
      SOPT7_ADCATRGSEL_Field_1100 => 12,
      SOPT7_ADCATRGSEL_Field_1110 => 14);

   --  ADCA alternate trigger enable
   type SOPT7_ADCAALTTRGEN_Field is
     (
      --  XBARA output 12.
      SOPT7_ADCAALTTRGEN_Field_00,
      --  PDB0 trigger selected for ADCA.
      SOPT7_ADCAALTTRGEN_Field_01)
     with Size => 2;
   for SOPT7_ADCAALTTRGEN_Field use
     (SOPT7_ADCAALTTRGEN_Field_00 => 0,
      SOPT7_ADCAALTTRGEN_Field_01 => 1);

   --  ADCB trigger select
   type SOPT7_ADCBTRGSEL_Field is
     (
      --  Reset value for the field
      Sopt7_Adcbtrgsel_Field_Reset,
      --  High speed comparator 0 output
      SOPT7_ADCBTRGSEL_Field_0001,
      --  High speed comparator 1 output
      SOPT7_ADCBTRGSEL_Field_0010,
      --  High speed comparator 2 output
      SOPT7_ADCBTRGSEL_Field_0011,
      --  PIT trigger 0
      SOPT7_ADCBTRGSEL_Field_0100,
      --  PIT trigger 1
      SOPT7_ADCBTRGSEL_Field_0101,
      --  PIT trigger 2
      SOPT7_ADCBTRGSEL_Field_0110,
      --  PIT trigger 3
      SOPT7_ADCBTRGSEL_Field_0111,
      --  FTM0 trigger
      SOPT7_ADCBTRGSEL_Field_1000,
      --  FTM1 trigger
      SOPT7_ADCBTRGSEL_Field_1001,
      --  FTM3 trigger
      SOPT7_ADCBTRGSEL_Field_1011,
      --  XBARA output 41
      SOPT7_ADCBTRGSEL_Field_1100,
      --  Low-power timer trigger
      SOPT7_ADCBTRGSEL_Field_1110)
     with Size => 4;
   for SOPT7_ADCBTRGSEL_Field use
     (Sopt7_Adcbtrgsel_Field_Reset => 0,
      SOPT7_ADCBTRGSEL_Field_0001 => 1,
      SOPT7_ADCBTRGSEL_Field_0010 => 2,
      SOPT7_ADCBTRGSEL_Field_0011 => 3,
      SOPT7_ADCBTRGSEL_Field_0100 => 4,
      SOPT7_ADCBTRGSEL_Field_0101 => 5,
      SOPT7_ADCBTRGSEL_Field_0110 => 6,
      SOPT7_ADCBTRGSEL_Field_0111 => 7,
      SOPT7_ADCBTRGSEL_Field_1000 => 8,
      SOPT7_ADCBTRGSEL_Field_1001 => 9,
      SOPT7_ADCBTRGSEL_Field_1011 => 11,
      SOPT7_ADCBTRGSEL_Field_1100 => 12,
      SOPT7_ADCBTRGSEL_Field_1110 => 14);

   --  ADCB alternate trigger enable
   type SOPT7_ADCBALTTRGEN_Field is
     (
      --  XBARA output 13.
      SOPT7_ADCBALTTRGEN_Field_00,
      --  PDB1 trigger selected for ADCB
      SOPT7_ADCBALTTRGEN_Field_01)
     with Size => 2;
   for SOPT7_ADCBALTTRGEN_Field use
     (SOPT7_ADCBALTTRGEN_Field_00 => 0,
      SOPT7_ADCBALTTRGEN_Field_01 => 1);

   --  System Options Register 7
   type SIM_SOPT7_Register is record
      --  ADCA trigger select
      ADCATRGSEL     : SOPT7_ADCATRGSEL_Field :=
                        NRF_SVD.SIM.SOPT7_ADCATRGSEL_Field_0000;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  ADCA alternate trigger enable
      ADCAALTTRGEN   : SOPT7_ADCAALTTRGEN_Field :=
                        NRF_SVD.SIM.SOPT7_ADCAALTTRGEN_Field_00;
      --  ADCB trigger select
      ADCBTRGSEL     : SOPT7_ADCBTRGSEL_Field := Sopt7_Adcbtrgsel_Field_Reset;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  ADCB alternate trigger enable
      ADCBALTTRGEN   : SOPT7_ADCBALTTRGEN_Field :=
                        NRF_SVD.SIM.SOPT7_ADCBALTTRGEN_Field_00;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT7_Register use record
      ADCATRGSEL     at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      ADCAALTTRGEN   at 0 range 6 .. 7;
      ADCBTRGSEL     at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      ADCBALTTRGEN   at 0 range 14 .. 15;
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

   --  Carrier frequency selection for FTM0 output channel
   type SOPT8_FTM0CFSEL_Field is
     (
      --  FTM1 channel 1 output provides the carrier signal for FTM0 Timer
      --  Modulation mode.
      SOPT8_FTM0CFSEL_Field_0,
      --  LPTMR0 prescaler output provides the carrier signal for FTM0 Timer
      --  Modulation mode.
      SOPT8_FTM0CFSEL_Field_1)
     with Size => 1;
   for SOPT8_FTM0CFSEL_Field use
     (SOPT8_FTM0CFSEL_Field_0 => 0,
      SOPT8_FTM0CFSEL_Field_1 => 1);

   --  Carrier frequency selection for FTM3 output channel
   type SOPT8_FTM3CFSEL_Field is
     (
      --  FTM1 channel 1 output provides the carrier signal for FTM3 Timer
      --  Modulation mode.
      SOPT8_FTM3CFSEL_Field_0,
      --  LPTMR0 prescaler output provides the carrier signal for FTM3 Timer
      --  Modulation mode.
      SOPT8_FTM3CFSEL_Field_1)
     with Size => 1;
   for SOPT8_FTM3CFSEL_Field use
     (SOPT8_FTM3CFSEL_Field_0 => 0,
      SOPT8_FTM3CFSEL_Field_1 => 1);

   --  FTM0 channel 0 output source
   type SOPT8_FTM0OCH0SRC_Field is
     (
      --  FTM0_CH0 pin is output of FTM0 channel 0 output
      SOPT8_FTM0OCH0SRC_Field_0,
      --  FTM0_CH0 pin is output of FTM0 channel 0 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH1 pin is output of FTM0 channel 1 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH2 pin is output of FTM0 channel 2 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH3 pin is output of FTM0 channel 3 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH4 pin is output of FTM0 channel 4 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH5 pin is output of FTM0 channel 5 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH6 pin is output of FTM0 channel 6 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM0_CH7 pin is output of FTM0 channel 7 output, modulated by carrier
      --  frequency clock, as per FTM0CFSEL
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
      --  FTM3_CH0 pin is output of FTM3 channel 0 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH1 pin is output of FTM3 channel 1 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH2 pin is output of FTM3 channel 2 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH3 pin is output of FTM3 channel 3 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH4 pin is output of FTM3 channel 4 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH5 pin is output of FTM3 channel 5 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH6 pin is output of FTM3 channel 6 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
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
      --  FTM3_CH7 pin is output of FTM3 channel 7 output modulated by carrier
      --  frequency clock, as per FTM3CFSEL.
      SOPT8_FTM3OCH7SRC_Field_1)
     with Size => 1;
   for SOPT8_FTM3OCH7SRC_Field use
     (SOPT8_FTM3OCH7SRC_Field_0 => 0,
      SOPT8_FTM3OCH7SRC_Field_1 => 1);

   --  System Options Register 8
   type SIM_SOPT8_Register is record
      --  FTM0 Hardware Trigger 0 Software Synchronization
      FTM0SYNCBIT    : SOPT8_FTM0SYNCBIT_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0SYNCBIT_Field_0;
      --  FTM1 Hardware Trigger 0 Software Synchronization
      FTM1SYNCBIT    : SOPT8_FTM1SYNCBIT_Field :=
                        NRF_SVD.SIM.SOPT8_FTM1SYNCBIT_Field_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  FTM3 Hardware Trigger 0 Software Synchronization
      FTM3SYNCBIT    : SOPT8_FTM3SYNCBIT_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3SYNCBIT_Field_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Carrier frequency selection for FTM0 output channel
      FTM0CFSEL      : SOPT8_FTM0CFSEL_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0CFSEL_Field_0;
      --  Carrier frequency selection for FTM3 output channel
      FTM3CFSEL      : SOPT8_FTM3CFSEL_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3CFSEL_Field_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  FTM0 channel 0 output source
      FTM0OCH0SRC    : SOPT8_FTM0OCH0SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH0SRC_Field_0;
      --  FTM0 channel 1 output source
      FTM0OCH1SRC    : SOPT8_FTM0OCH1SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH1SRC_Field_0;
      --  FTM0 channel 2 output source
      FTM0OCH2SRC    : SOPT8_FTM0OCH2SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH2SRC_Field_0;
      --  FTM0 channel 3 output source
      FTM0OCH3SRC    : SOPT8_FTM0OCH3SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH3SRC_Field_0;
      --  FTM0 channel 4 output source
      FTM0OCH4SRC    : SOPT8_FTM0OCH4SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH4SRC_Field_0;
      --  FTM0 channel 5 output source
      FTM0OCH5SRC    : SOPT8_FTM0OCH5SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH5SRC_Field_0;
      --  FTM0 channel 6 output source
      FTM0OCH6SRC    : SOPT8_FTM0OCH6SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH6SRC_Field_0;
      --  FTM0 channel 7 output source
      FTM0OCH7SRC    : SOPT8_FTM0OCH7SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM0OCH7SRC_Field_0;
      --  FTM3 channel 0 output source
      FTM3OCH0SRC    : SOPT8_FTM3OCH0SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH0SRC_Field_0;
      --  FTM3 channel 1 output source
      FTM3OCH1SRC    : SOPT8_FTM3OCH1SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH1SRC_Field_0;
      --  FTM3 channel 2 output source
      FTM3OCH2SRC    : SOPT8_FTM3OCH2SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH2SRC_Field_0;
      --  FTM3 channel 3 output source
      FTM3OCH3SRC    : SOPT8_FTM3OCH3SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH3SRC_Field_0;
      --  FTM3 channel 4 output source
      FTM3OCH4SRC    : SOPT8_FTM3OCH4SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH4SRC_Field_0;
      --  FTM3 channel 5 output source
      FTM3OCH5SRC    : SOPT8_FTM3OCH5SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH5SRC_Field_0;
      --  FTM3 channel 6 output source
      FTM3OCH6SRC    : SOPT8_FTM3OCH6SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH6SRC_Field_0;
      --  FTM3 channel 7 output source
      FTM3OCH7SRC    : SOPT8_FTM3OCH7SRC_Field :=
                        NRF_SVD.SIM.SOPT8_FTM3OCH7SRC_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT8_Register use record
      FTM0SYNCBIT    at 0 range 0 .. 0;
      FTM1SYNCBIT    at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      FTM3SYNCBIT    at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FTM0CFSEL      at 0 range 8 .. 8;
      FTM3CFSEL      at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FTM0OCH0SRC    at 0 range 16 .. 16;
      FTM0OCH1SRC    at 0 range 17 .. 17;
      FTM0OCH2SRC    at 0 range 18 .. 18;
      FTM0OCH3SRC    at 0 range 19 .. 19;
      FTM0OCH4SRC    at 0 range 20 .. 20;
      FTM0OCH5SRC    at 0 range 21 .. 21;
      FTM0OCH6SRC    at 0 range 22 .. 22;
      FTM0OCH7SRC    at 0 range 23 .. 23;
      FTM3OCH0SRC    at 0 range 24 .. 24;
      FTM3OCH1SRC    at 0 range 25 .. 25;
      FTM3OCH2SRC    at 0 range 26 .. 26;
      FTM3OCH3SRC    at 0 range 27 .. 27;
      FTM3OCH4SRC    at 0 range 28 .. 28;
      FTM3OCH5SRC    at 0 range 29 .. 29;
      FTM3OCH6SRC    at 0 range 30 .. 30;
      FTM3OCH7SRC    at 0 range 31 .. 31;
   end record;

   --  FTM1 channel 0 input capture source select
   type SOPT9_FTM1ICH0SRC_Field is
     (
      --  FTM1_CH0 signal
      SOPT9_FTM1ICH0SRC_Field_00,
      --  CMP0 output
      SOPT9_FTM1ICH0SRC_Field_01,
      --  CMP1 output
      SOPT9_FTM1ICH0SRC_Field_10)
     with Size => 2;
   for SOPT9_FTM1ICH0SRC_Field use
     (SOPT9_FTM1ICH0SRC_Field_00 => 0,
      SOPT9_FTM1ICH0SRC_Field_01 => 1,
      SOPT9_FTM1ICH0SRC_Field_10 => 2);

   --  FTM1 channel 0 input capture source select
   type SOPT9_FTM1ICH1SRC_Field is
     (
      --  FTM1_CH1 signal
      SOPT9_FTM1ICH1SRC_Field_0,
      --  Exclusive OR of FTM1_CH1, FTM1_CH0 and XBARA output 42
      SOPT9_FTM1ICH1SRC_Field_1)
     with Size => 1;
   for SOPT9_FTM1ICH1SRC_Field use
     (SOPT9_FTM1ICH1SRC_Field_0 => 0,
      SOPT9_FTM1ICH1SRC_Field_1 => 1);

   --  FlexTimer 0 External Clock Pin Select
   type SOPT9_FTM0CLKSEL_Field is
     (
      --  FTM0 external clock driven by FTM_CLK0 pin
      SOPT9_FTM0CLKSEL_Field_00,
      --  FTM0 external clock driven by FTM_CLK1 pin
      SOPT9_FTM0CLKSEL_Field_01,
      --  FTM0 external clock driven by FTM_CLK2 pin
      SOPT9_FTM0CLKSEL_Field_10)
     with Size => 2;
   for SOPT9_FTM0CLKSEL_Field use
     (SOPT9_FTM0CLKSEL_Field_00 => 0,
      SOPT9_FTM0CLKSEL_Field_01 => 1,
      SOPT9_FTM0CLKSEL_Field_10 => 2);

   --  FlexTimer 1 External Clock Pin Select
   type SOPT9_FTM1CLKSEL_Field is
     (
      --  FTM1 external clock driven by FTM_CLK0 pin
      SOPT9_FTM1CLKSEL_Field_00,
      --  FTM1 external clock driven by FTM_CLK1 pin
      SOPT9_FTM1CLKSEL_Field_01,
      --  FTM1 external clock driven by FTM_CLK2 pin
      SOPT9_FTM1CLKSEL_Field_10)
     with Size => 2;
   for SOPT9_FTM1CLKSEL_Field use
     (SOPT9_FTM1CLKSEL_Field_00 => 0,
      SOPT9_FTM1CLKSEL_Field_01 => 1,
      SOPT9_FTM1CLKSEL_Field_10 => 2);

   --  FlexTimer 3 External Clock Pin Select
   type SOPT9_FTM3CLKSEL_Field is
     (
      --  FTM3 external clock driven by FTM_CLK0 pin
      SOPT9_FTM3CLKSEL_Field_00,
      --  FTM3 external clock driven by FTM_CLK1 pin
      SOPT9_FTM3CLKSEL_Field_01,
      --  FTM3 external clock driven by FTM_CLK2 pin
      SOPT9_FTM3CLKSEL_Field_10)
     with Size => 2;
   for SOPT9_FTM3CLKSEL_Field use
     (SOPT9_FTM3CLKSEL_Field_00 => 0,
      SOPT9_FTM3CLKSEL_Field_01 => 1,
      SOPT9_FTM3CLKSEL_Field_10 => 2);

   --  System Options Register 9
   type SIM_SOPT9_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  FTM1 channel 0 input capture source select
      FTM1ICH0SRC    : SOPT9_FTM1ICH0SRC_Field :=
                        NRF_SVD.SIM.SOPT9_FTM1ICH0SRC_Field_00;
      --  FTM1 channel 0 input capture source select
      FTM1ICH1SRC    : SOPT9_FTM1ICH1SRC_Field :=
                        NRF_SVD.SIM.SOPT9_FTM1ICH1SRC_Field_0;
      --  unspecified
      Reserved_7_23  : HAL.UInt17 := 16#0#;
      --  FlexTimer 0 External Clock Pin Select
      FTM0CLKSEL     : SOPT9_FTM0CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT9_FTM0CLKSEL_Field_00;
      --  FlexTimer 1 External Clock Pin Select
      FTM1CLKSEL     : SOPT9_FTM1CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT9_FTM1CLKSEL_Field_00;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  FlexTimer 3 External Clock Pin Select
      FTM3CLKSEL     : SOPT9_FTM3CLKSEL_Field :=
                        NRF_SVD.SIM.SOPT9_FTM3CLKSEL_Field_00;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT9_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      FTM1ICH0SRC    at 0 range 4 .. 5;
      FTM1ICH1SRC    at 0 range 6 .. 6;
      Reserved_7_23  at 0 range 7 .. 23;
      FTM0CLKSEL     at 0 range 24 .. 25;
      FTM1CLKSEL     at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      FTM3CLKSEL     at 0 range 30 .. 31;
   end record;

   --  Pincount identification
   type SDID_PINID_Field is
     (
      --  48-pin
      SDID_PINID_Field_0100,
      --  64-pin
      SDID_PINID_Field_0101,
      --  100-pin
      SDID_PINID_Field_1000)
     with Size => 4;
   for SDID_PINID_Field use
     (SDID_PINID_Field_0100 => 4,
      SDID_PINID_Field_0101 => 5,
      SDID_PINID_Field_1000 => 8);

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
      --  KVx2 Subfamily (FlexTimer and ADC)
      SDID_SUBFAMID_Field_0001,
      --  KVx4 Subfamily (eFlexPWM and ADC)
      SDID_SUBFAMID_Field_0100,
      --  KVx6 Subfamily (eFlexPWM with FlexTimer and ADC)
      SDID_SUBFAMID_Field_0110)
     with Size => 4;
   for SDID_SUBFAMID_Field use
     (SDID_SUBFAMID_Field_0001 => 1,
      SDID_SUBFAMID_Field_0100 => 4,
      SDID_SUBFAMID_Field_0110 => 6);

   --  Kinetis Family ID
   type SDID_FAMILYID_Field is
     (
      --  Kinetis family of this device. This is the Vseries.
      SDID_FAMILYID_Field_0100)
     with Size => 4;
   for SDID_FAMILYID_Field use
     (SDID_FAMILYID_Field_0100 => 4);

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

   --  Comparators Clock Gate Control
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

   --  eFlexPWM submodule 0 Clock Gate Control
   type SCGC4_eFlexPWM0_Field is
     (
      --  Clock disabled
      SCGC4_eFlexPWM0_Field_0,
      --  Clock enabled
      SCGC4_eFlexPWM0_Field_1)
     with Size => 1;
   for SCGC4_eFlexPWM0_Field use
     (SCGC4_eFlexPWM0_Field_0 => 0,
      SCGC4_eFlexPWM0_Field_1 => 1);

   --  SIM_SCGC4_eFlexPWM array
   type SIM_SCGC4_eFlexPWM_Field_Array is array (0 .. 3)
     of SCGC4_eFlexPWM0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for SIM_SCGC4_eFlexPWM
   type SIM_SCGC4_eFlexPWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  eFlexPWM as a value
            Val : HAL.UInt4;
         when True =>
            --  eFlexPWM as an array
            Arr : SIM_SCGC4_eFlexPWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SIM_SCGC4_eFlexPWM_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

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
      --  Comparators Clock Gate Control
      CMP            : SCGC4_CMP_Field := NRF_SVD.SIM.SCGC4_CMP_Field_0;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  eFlexPWM submodule 0 Clock Gate Control
      eFlexPWM       : SIM_SCGC4_eFlexPWM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#F#;
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
      Reserved_20_23 at 0 range 20 .. 23;
      eFlexPWM       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
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

   --  This bit controls the clock gate to the ENC module.
   type SCGC5_ENC_Field is
     (
      --  Clock disabled
      SCGC5_ENC_Field_0,
      --  Clock enabled
      SCGC5_ENC_Field_1)
     with Size => 1;
   for SCGC5_ENC_Field use
     (SCGC5_ENC_Field_0 => 0,
      SCGC5_ENC_Field_1 => 1);

   --  XBARA Clock Gate Control
   type SCGC5_XBARA_Field is
     (
      --  Clock disabled
      SCGC5_XBARA_Field_0,
      --  Clock enabled
      SCGC5_XBARA_Field_1)
     with Size => 1;
   for SCGC5_XBARA_Field use
     (SCGC5_XBARA_Field_0 => 0,
      SCGC5_XBARA_Field_1 => 1);

   --  XBARB Clock Gate Control
   type SCGC5_XBARB_Field is
     (
      --  Clock disabled
      SCGC5_XBARB_Field_0,
      --  Clock enabled
      SCGC5_XBARB_Field_1)
     with Size => 1;
   for SCGC5_XBARB_Field use
     (SCGC5_XBARB_Field_0 => 0,
      SCGC5_XBARB_Field_1 => 1);

   --  AOI Clock Gate Control
   type SCGC5_AOI_Field is
     (
      --  Clock disabled
      SCGC5_AOI_Field_0,
      --  Clock enabled
      SCGC5_AOI_Field_1)
     with Size => 1;
   for SCGC5_AOI_Field use
     (SCGC5_AOI_Field_0 => 0,
      SCGC5_AOI_Field_1 => 1);

   --  ADC Clock Gate Control
   type SCGC5_ADC_Field is
     (
      --  Clock disabled
      SCGC5_ADC_Field_0,
      --  Clock enabled
      SCGC5_ADC_Field_1)
     with Size => 1;
   for SCGC5_ADC_Field use
     (SCGC5_ADC_Field_0 => 0,
      SCGC5_ADC_Field_1 => 1);

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
      Reserved_14_20 : HAL.UInt7 := 16#10#;
      --  This bit controls the clock gate to the ENC module.
      ENC            : SCGC5_ENC_Field := NRF_SVD.SIM.SCGC5_ENC_Field_0;
      --  unspecified
      Reserved_22_24 : HAL.UInt3 := 16#0#;
      --  XBARA Clock Gate Control
      XBARA          : SCGC5_XBARA_Field := NRF_SVD.SIM.SCGC5_XBARA_Field_0;
      --  XBARB Clock Gate Control
      XBARB          : SCGC5_XBARB_Field := NRF_SVD.SIM.SCGC5_XBARB_Field_0;
      --  AOI Clock Gate Control
      AOI            : SCGC5_AOI_Field := NRF_SVD.SIM.SCGC5_AOI_Field_0;
      --  ADC Clock Gate Control
      ADC            : SCGC5_ADC_Field := NRF_SVD.SIM.SCGC5_ADC_Field_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
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
      Reserved_14_20 at 0 range 14 .. 20;
      ENC            at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      XBARA          at 0 range 25 .. 25;
      XBARB          at 0 range 26 .. 26;
      AOI            at 0 range 27 .. 27;
      ADC            at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
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

   --  FlexCAN0 Clock Gate Control
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

   --  SIM_SCGC6_FLEXCAN array
   type SIM_SCGC6_FLEXCAN_Field_Array is array (0 .. 1)
     of SCGC6_FLEXCAN0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC6_FLEXCAN
   type SIM_SCGC6_FLEXCAN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLEXCAN as a value
            Val : HAL.UInt2;
         when True =>
            --  FLEXCAN as an array
            Arr : SIM_SCGC6_FLEXCAN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC6_FLEXCAN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

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
   type SIM_SCGC6_FTM_Field_Array is array (0 .. 1) of SCGC6_FTM0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_SCGC6_FTM
   type SIM_SCGC6_FTM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FTM as a value
            Val : HAL.UInt2;
         when True =>
            --  FTM as an array
            Arr : SIM_SCGC6_FTM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_SCGC6_FTM_Field use record
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
      --  FlexCAN0 Clock Gate Control
      FLEXCAN        : SIM_SCGC6_FLEXCAN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  FTM3 Clock Gate Control
      FTM3           : SCGC6_FTM3_Field := NRF_SVD.SIM.SCGC6_FTM3_Field_0;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
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
      --  PIT Clock Gate Control
      PIT            : SCGC6_PIT_Field := NRF_SVD.SIM.SCGC6_PIT_Field_0;
      --  FTM0 Clock Gate Control
      FTM            : SIM_SCGC6_FTM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  DAC0 Clock Gate Control
      DAC0           : SCGC6_DAC0_Field := NRF_SVD.SIM.SCGC6_DAC0_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC6_Register use record
      FTF            at 0 range 0 .. 0;
      DMAMUX         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FLEXCAN        at 0 range 4 .. 5;
      FTM3           at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      SPI0           at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      PDB1           at 0 range 17 .. 17;
      CRC            at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      PDB0           at 0 range 22 .. 22;
      PIT            at 0 range 23 .. 23;
      FTM            at 0 range 24 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
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
      Reserved_0_15  : HAL.UInt16 := 16#0#;
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
      Reserved_0_15  at 0 range 0 .. 15;
      OUTDIV4        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      OUTDIV2        at 0 range 24 .. 27;
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
      --  Reset value for the field
      Fcfg1_Pfsize_Field_Reset,
      --  64 KB of program flash memory
      FCFG1_PFSIZE_Field_0101,
      --  128 KB of program flash memory
      FCFG1_PFSIZE_Field_0111,
      --  256 KB of program flash memory
      FCFG1_PFSIZE_Field_1001)
     with Size => 4;
   for FCFG1_PFSIZE_Field use
     (Fcfg1_Pfsize_Field_Reset => 0,
      FCFG1_PFSIZE_Field_0101 => 5,
      FCFG1_PFSIZE_Field_0111 => 7,
      FCFG1_PFSIZE_Field_1001 => 9);

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
      PFSIZE         : FCFG1_PFSIZE_Field := Fcfg1_Pfsize_Field_Reset;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#F#;
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

   subtype SIM_CLKDIV4_TRACEDIV_Field is HAL.UInt3;

   --  Debug Trace Divider Control
   type CLKDIV4_TRACEDIVEN_Field is
     (
      --  Debug trace divider disabled
      CLKDIV4_TRACEDIVEN_Field_0,
      --  Debug trace divider enabled
      CLKDIV4_TRACEDIVEN_Field_1)
     with Size => 1;
   for CLKDIV4_TRACEDIVEN_Field use
     (CLKDIV4_TRACEDIVEN_Field_0 => 0,
      CLKDIV4_TRACEDIVEN_Field_1 => 1);

   --  System Clock Divider Register 4
   type SIM_CLKDIV4_Register is record
      --  Trace clock divider fraction
      TRACEFRAC      : Boolean := False;
      --  Trace clock divider divisor
      TRACEDIV       : SIM_CLKDIV4_TRACEDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_27  : HAL.UInt24 := 16#0#;
      --  Debug Trace Divider Control
      TRACEDIVEN     : CLKDIV4_TRACEDIVEN_Field :=
                        NRF_SVD.SIM.CLKDIV4_TRACEDIVEN_Field_1;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV4_Register use record
      TRACEFRAC      at 0 range 0 .. 0;
      TRACEDIV       at 0 range 1 .. 3;
      Reserved_4_27  at 0 range 4 .. 27;
      TRACEDIVEN     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CMP Sample/Window Input 0 Source
   type MISCTRL0_CMPWIN0SRC_Field is
     (
      --  XBARA output 16.
      MISCTRL0_CMPWIN0SRC_Field_00,
      --  CMP0 Sample/Window input is driven by both PDB0 and PDB1 pluse-out
      --  channel 0.
      MISCTRL0_CMPWIN0SRC_Field_01,
      --  PDB0 pluse-out channel 0.
      MISCTRL0_CMPWIN0SRC_Field_10,
      --  PDB1 pluse-out channel 0.
      MISCTRL0_CMPWIN0SRC_Field_11)
     with Size => 2;
   for MISCTRL0_CMPWIN0SRC_Field use
     (MISCTRL0_CMPWIN0SRC_Field_00 => 0,
      MISCTRL0_CMPWIN0SRC_Field_01 => 1,
      MISCTRL0_CMPWIN0SRC_Field_10 => 2,
      MISCTRL0_CMPWIN0SRC_Field_11 => 3);

   --  CMP Sample/Window Input 1 Source
   type MISCTRL0_CMPWIN1SRC_Field is
     (
      --  XBARA output 17.
      MISCTRL0_CMPWIN1SRC_Field_00,
      --  CMP1 Sample/Window input is driven by both PDB0 and PDB1 pluse-out
      --  channel 1.
      MISCTRL0_CMPWIN1SRC_Field_01,
      --  PDB0 pluse-out channel 1.
      MISCTRL0_CMPWIN1SRC_Field_10,
      --  PDB1 pluse-out channel 1.
      MISCTRL0_CMPWIN1SRC_Field_11)
     with Size => 2;
   for MISCTRL0_CMPWIN1SRC_Field use
     (MISCTRL0_CMPWIN1SRC_Field_00 => 0,
      MISCTRL0_CMPWIN1SRC_Field_01 => 1,
      MISCTRL0_CMPWIN1SRC_Field_10 => 2,
      MISCTRL0_CMPWIN1SRC_Field_11 => 3);

   --  CMP Sample/Window Input 2 Source
   type MISCTRL0_CMPWIN2SRC_Field is
     (
      --  XBARA output 18.
      MISCTRL0_CMPWIN2SRC_Field_00,
      --  CMP2 Sample/Window input is driven by both PDB0 and PDB1 pluse-out
      --  channel 2.
      MISCTRL0_CMPWIN2SRC_Field_01,
      --  PDB0 pluse-out channel 2.
      MISCTRL0_CMPWIN2SRC_Field_10,
      --  PDB1 pluse-out channel 2.
      MISCTRL0_CMPWIN2SRC_Field_11)
     with Size => 2;
   for MISCTRL0_CMPWIN2SRC_Field use
     (MISCTRL0_CMPWIN2SRC_Field_00 => 0,
      MISCTRL0_CMPWIN2SRC_Field_01 => 1,
      MISCTRL0_CMPWIN2SRC_Field_10 => 2,
      MISCTRL0_CMPWIN2SRC_Field_11 => 3);

   --  CMP Sample/Window Input 3 Source
   type MISCTRL0_CMPWIN3SRC_Field is
     (
      --  XBARA output 19.
      MISCTRL0_CMPWIN3SRC_Field_00,
      --  CMP3 Sample/Window input is driven by both PDB0 and PDB1 pluse-out
      --  channel 3.
      MISCTRL0_CMPWIN3SRC_Field_01,
      --  PDB0 pluse-out channel 3.
      MISCTRL0_CMPWIN3SRC_Field_10,
      --  PDB1 pluse-out channel 3.
      MISCTRL0_CMPWIN3SRC_Field_11)
     with Size => 2;
   for MISCTRL0_CMPWIN3SRC_Field use
     (MISCTRL0_CMPWIN3SRC_Field_00 => 0,
      MISCTRL0_CMPWIN3SRC_Field_01 => 1,
      MISCTRL0_CMPWIN3SRC_Field_10 => 2,
      MISCTRL0_CMPWIN3SRC_Field_11 => 3);

   --  EWM_IN Source
   type MISCTRL0_EWMINSRC_Field is
     (
      --  XBARA output 58.
      MISCTRL0_EWMINSRC_Field_0,
      --  EWM_IN pin
      MISCTRL0_EWMINSRC_Field_1)
     with Size => 1;
   for MISCTRL0_EWMINSRC_Field use
     (MISCTRL0_EWMINSRC_Field_0 => 0,
      MISCTRL0_EWMINSRC_Field_1 => 1);

   --  DAC0 Hardware Trigger Input Source
   type MISCTRL0_DACTRIGSRC_Field is
     (
      --  XBARA output 15.
      MISCTRL0_DACTRIGSRC_Field_00,
      --  DAC0 can be triggered by both PDB0 interval trigger 0 and PDB1
      --  interval trigger 0.
      MISCTRL0_DACTRIGSRC_Field_01,
      --  PDB0 interval trigger 0
      MISCTRL0_DACTRIGSRC_Field_10,
      --  PDB1 interval trigger 0
      MISCTRL0_DACTRIGSRC_Field_11)
     with Size => 2;
   for MISCTRL0_DACTRIGSRC_Field use
     (MISCTRL0_DACTRIGSRC_Field_00 => 0,
      MISCTRL0_DACTRIGSRC_Field_01 => 1,
      MISCTRL0_DACTRIGSRC_Field_10 => 2,
      MISCTRL0_DACTRIGSRC_Field_11 => 3);

   --  Miscellaneous Control Register 0
   type SIM_MISCTRL0_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  CMP Sample/Window Input 0 Source
      CMPWIN0SRC     : MISCTRL0_CMPWIN0SRC_Field :=
                        NRF_SVD.SIM.MISCTRL0_CMPWIN0SRC_Field_00;
      --  CMP Sample/Window Input 1 Source
      CMPWIN1SRC     : MISCTRL0_CMPWIN1SRC_Field :=
                        NRF_SVD.SIM.MISCTRL0_CMPWIN1SRC_Field_00;
      --  CMP Sample/Window Input 2 Source
      CMPWIN2SRC     : MISCTRL0_CMPWIN2SRC_Field :=
                        NRF_SVD.SIM.MISCTRL0_CMPWIN2SRC_Field_00;
      --  CMP Sample/Window Input 3 Source
      CMPWIN3SRC     : MISCTRL0_CMPWIN3SRC_Field :=
                        NRF_SVD.SIM.MISCTRL0_CMPWIN3SRC_Field_00;
      --  EWM_IN Source
      EWMINSRC       : MISCTRL0_EWMINSRC_Field :=
                        NRF_SVD.SIM.MISCTRL0_EWMINSRC_Field_0;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  DAC0 Hardware Trigger Input Source
      DACTRIGSRC     : MISCTRL0_DACTRIGSRC_Field :=
                        NRF_SVD.SIM.MISCTRL0_DACTRIGSRC_Field_00;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_MISCTRL0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      CMPWIN0SRC     at 0 range 8 .. 9;
      CMPWIN1SRC     at 0 range 10 .. 11;
      CMPWIN2SRC     at 0 range 12 .. 13;
      CMPWIN3SRC     at 0 range 14 .. 15;
      EWMINSRC       at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DACTRIGSRC     at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Synchronize XBARA's Input PIT Trigger 0 with fast clock
   type MISCTRL1_SYNCXBARAPITTRIG0_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCXBARAPITTRIG0_Field_0,
      --  Enable.
      MISCTRL1_SYNCXBARAPITTRIG0_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCXBARAPITTRIG0_Field use
     (MISCTRL1_SYNCXBARAPITTRIG0_Field_0 => 0,
      MISCTRL1_SYNCXBARAPITTRIG0_Field_1 => 1);

   --  SIM_MISCTRL1_SYNCXBARAPITTRIG array
   type SIM_MISCTRL1_SYNCXBARAPITTRIG_Field_Array is array (0 .. 3)
     of MISCTRL1_SYNCXBARAPITTRIG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for SIM_MISCTRL1_SYNCXBARAPITTRIG
   type SIM_MISCTRL1_SYNCXBARAPITTRIG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYNCXBARAPITTRIG as a value
            Val : HAL.UInt4;
         when True =>
            --  SYNCXBARAPITTRIG as an array
            Arr : SIM_MISCTRL1_SYNCXBARAPITTRIG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SIM_MISCTRL1_SYNCXBARAPITTRIG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Synchronize XBARB's Input PIT Trigger 0 with fast clock
   type MISCTRL1_SYNCXBARBPITTRIG0_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCXBARBPITTRIG0_Field_0,
      --  Enable.
      MISCTRL1_SYNCXBARBPITTRIG0_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCXBARBPITTRIG0_Field use
     (MISCTRL1_SYNCXBARBPITTRIG0_Field_0 => 0,
      MISCTRL1_SYNCXBARBPITTRIG0_Field_1 => 1);

   --  SIM_MISCTRL1_SYNCXBARBPITTRIG array
   type SIM_MISCTRL1_SYNCXBARBPITTRIG_Field_Array is array (0 .. 1)
     of MISCTRL1_SYNCXBARBPITTRIG0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SIM_MISCTRL1_SYNCXBARBPITTRIG
   type SIM_MISCTRL1_SYNCXBARBPITTRIG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYNCXBARBPITTRIG as a value
            Val : HAL.UInt2;
         when True =>
            --  SYNCXBARBPITTRIG as an array
            Arr : SIM_MISCTRL1_SYNCXBARBPITTRIG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SIM_MISCTRL1_SYNCXBARBPITTRIG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Synchronize XBARA's output for DAC Hardware Trigger with flash/slow
   --  clock
   type MISCTRL1_SYNCDACHWTRIG_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCDACHWTRIG_Field_0,
      --  Enable.
      MISCTRL1_SYNCDACHWTRIG_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCDACHWTRIG_Field use
     (MISCTRL1_SYNCDACHWTRIG_Field_0 => 0,
      MISCTRL1_SYNCDACHWTRIG_Field_1 => 1);

   --  Synchronize XBARA's output for EWM's ewm_in with flash/slow clock
   type MISCTRL1_SYNCEWMIN_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCEWMIN_Field_0,
      --  Enable.
      MISCTRL1_SYNCEWMIN_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCEWMIN_Field use
     (MISCTRL1_SYNCEWMIN_Field_0 => 0,
      MISCTRL1_SYNCEWMIN_Field_1 => 1);

   --  Synchronize XBARA's output for CMP0's Sample/Window Input with
   --  flash/slow clock
   type MISCTRL1_SYNCCMP0SAMPLEWIN_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCCMP0SAMPLEWIN_Field_0,
      --  Enable.
      MISCTRL1_SYNCCMP0SAMPLEWIN_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCCMP0SAMPLEWIN_Field use
     (MISCTRL1_SYNCCMP0SAMPLEWIN_Field_0 => 0,
      MISCTRL1_SYNCCMP0SAMPLEWIN_Field_1 => 1);

   --  Synchronize XBARA's output for CMP1's Sample/Window Input with
   --  flash/slow clock
   type MISCTRL1_SYNCCMP1SAMPLEWIN_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCCMP1SAMPLEWIN_Field_0,
      --  Enable.
      MISCTRL1_SYNCCMP1SAMPLEWIN_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCCMP1SAMPLEWIN_Field use
     (MISCTRL1_SYNCCMP1SAMPLEWIN_Field_0 => 0,
      MISCTRL1_SYNCCMP1SAMPLEWIN_Field_1 => 1);

   --  Synchronize XBARA's output for CMP2's Sample/Window Input with
   --  flash/slow clock
   type MISCTRL1_SYNCCMP2SAMPLEWIN_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCCMP2SAMPLEWIN_Field_0,
      --  Enable.
      MISCTRL1_SYNCCMP2SAMPLEWIN_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCCMP2SAMPLEWIN_Field use
     (MISCTRL1_SYNCCMP2SAMPLEWIN_Field_0 => 0,
      MISCTRL1_SYNCCMP2SAMPLEWIN_Field_1 => 1);

   --  Synchronize XBARA's output for CMP3's Sample/Window Input with
   --  flash/slow clock
   type MISCTRL1_SYNCCMP3SAMPLEWIN_Field is
     (
      --  Disable, bypass synchronizer.
      MISCTRL1_SYNCCMP3SAMPLEWIN_Field_0,
      --  Enable.
      MISCTRL1_SYNCCMP3SAMPLEWIN_Field_1)
     with Size => 1;
   for MISCTRL1_SYNCCMP3SAMPLEWIN_Field use
     (MISCTRL1_SYNCCMP3SAMPLEWIN_Field_0 => 0,
      MISCTRL1_SYNCCMP3SAMPLEWIN_Field_1 => 1);

   --  Miscellaneous Control Register 1
   type SIM_MISCTRL1_Register is record
      --  unspecified
      Reserved_0_7      : HAL.UInt8 := 16#0#;
      --  Synchronize XBARA's Input PIT Trigger 0 with fast clock
      SYNCXBARAPITTRIG  : SIM_MISCTRL1_SYNCXBARAPITTRIG_Field :=
                           (As_Array => False, Val => 16#0#);
      --  Synchronize XBARB's Input PIT Trigger 0 with fast clock
      SYNCXBARBPITTRIG  : SIM_MISCTRL1_SYNCXBARBPITTRIG_Field :=
                           (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15    : HAL.UInt2 := 16#0#;
      --  Synchronize XBARA's output for DAC Hardware Trigger with flash/slow
      --  clock
      SYNCDACHWTRIG     : MISCTRL1_SYNCDACHWTRIG_Field :=
                           NRF_SVD.SIM.MISCTRL1_SYNCDACHWTRIG_Field_0;
      --  Synchronize XBARA's output for EWM's ewm_in with flash/slow clock
      SYNCEWMIN         : MISCTRL1_SYNCEWMIN_Field :=
                           NRF_SVD.SIM.MISCTRL1_SYNCEWMIN_Field_0;
      --  unspecified
      Reserved_18_19    : HAL.UInt2 := 16#0#;
      --  Synchronize XBARA's output for CMP0's Sample/Window Input with
      --  flash/slow clock
      SYNCCMP0SAMPLEWIN : MISCTRL1_SYNCCMP0SAMPLEWIN_Field :=
                           NRF_SVD.SIM.MISCTRL1_SYNCCMP0SAMPLEWIN_Field_0;
      --  Synchronize XBARA's output for CMP1's Sample/Window Input with
      --  flash/slow clock
      SYNCCMP1SAMPLEWIN : MISCTRL1_SYNCCMP1SAMPLEWIN_Field :=
                           NRF_SVD.SIM.MISCTRL1_SYNCCMP1SAMPLEWIN_Field_0;
      --  Synchronize XBARA's output for CMP2's Sample/Window Input with
      --  flash/slow clock
      SYNCCMP2SAMPLEWIN : MISCTRL1_SYNCCMP2SAMPLEWIN_Field :=
                           NRF_SVD.SIM.MISCTRL1_SYNCCMP2SAMPLEWIN_Field_0;
      --  Synchronize XBARA's output for CMP3's Sample/Window Input with
      --  flash/slow clock
      SYNCCMP3SAMPLEWIN : MISCTRL1_SYNCCMP3SAMPLEWIN_Field :=
                           NRF_SVD.SIM.MISCTRL1_SYNCCMP3SAMPLEWIN_Field_0;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_MISCTRL1_Register use record
      Reserved_0_7      at 0 range 0 .. 7;
      SYNCXBARAPITTRIG  at 0 range 8 .. 11;
      SYNCXBARBPITTRIG  at 0 range 12 .. 13;
      Reserved_14_15    at 0 range 14 .. 15;
      SYNCDACHWTRIG     at 0 range 16 .. 16;
      SYNCEWMIN         at 0 range 17 .. 17;
      Reserved_18_19    at 0 range 18 .. 19;
      SYNCCMP0SAMPLEWIN at 0 range 20 .. 20;
      SYNCCMP1SAMPLEWIN at 0 range 21 .. 21;
      SYNCCMP2SAMPLEWIN at 0 range 22 .. 22;
      SYNCCMP3SAMPLEWIN at 0 range 23 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  WDOG Clock Select
   type WDOGC_WDOGCLKS_Field is
     (
      --  Internal 1 kHz clock is source to WDOG2008
      WDOGC_WDOGCLKS_Field_0,
      --  MCGIRCLK is source to WDOG2008
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

   --  NanoEdge Regulator 2.7V and 1.2V Supply Powerdown Control
   type PWRC_SRPDN_Field is
     (
      --  NanoEdge regulator placed in normal mode.
      PWRC_SRPDN_Field_00,
      --  NanoEdge regulator placed in powerdown mode.
      PWRC_SRPDN_Field_01,
      --  NanoEdge regulator placed in normal mode and SRPDN is write protected
      --  until chip reset.
      PWRC_SRPDN_Field_10,
      --  NanoEdge regulator placed in powerdown mode and SRPDN is write
      --  protected until chip reset.
      PWRC_SRPDN_Field_11)
     with Size => 2;
   for PWRC_SRPDN_Field use
     (PWRC_SRPDN_Field_00 => 0,
      PWRC_SRPDN_Field_01 => 1,
      PWRC_SRPDN_Field_10 => 2,
      PWRC_SRPDN_Field_11 => 3);

   --  NanoEdge Regulator 2.7 V Supply Standby Control
   type PWRC_SR27STDBY_Field is
     (
      --  NanoEdge regulator 2.7 V placed in normal mode.
      PWRC_SR27STDBY_Field_00,
      --  NanoEdge regulator 2.7 V placed in standby mode.
      PWRC_SR27STDBY_Field_01,
      --  NanoEdge regulator 2.7 V supply placed in normal mode and SR27STDBY
      --  is write protected until chip reset.
      PWRC_SR27STDBY_Field_10,
      --  NanoEdge regulator 2.7 V supply placed in standby mode and SR27STDBY
      --  is write protected until chip reset.
      PWRC_SR27STDBY_Field_11)
     with Size => 2;
   for PWRC_SR27STDBY_Field use
     (PWRC_SR27STDBY_Field_00 => 0,
      PWRC_SR27STDBY_Field_01 => 1,
      PWRC_SR27STDBY_Field_10 => 2,
      PWRC_SR27STDBY_Field_11 => 3);

   --  NanoEdge Regulator 1.2 V Supply Standby Control
   type PWRC_SR12STDBY_Field is
     (
      --  NanoEdge regulator 1.2 V supply placed in normal mode
      PWRC_SR12STDBY_Field_00,
      --  NanoEdge regulator 1.2 V supply placed in standby mode.
      PWRC_SR12STDBY_Field_01,
      --  NanoEdge regulator 1.2 V supply placed in normal mode and SR12STDBY
      --  is write protected until chip reset.
      PWRC_SR12STDBY_Field_10,
      --  NanoEdge regulator 1.2 V supply placed in standby mode and SR12STDBY
      --  is write protected until chip reset.
      PWRC_SR12STDBY_Field_11)
     with Size => 2;
   for PWRC_SR12STDBY_Field use
     (PWRC_SR12STDBY_Field_00 => 0,
      PWRC_SR12STDBY_Field_01 => 1,
      PWRC_SR12STDBY_Field_10 => 2,
      PWRC_SR12STDBY_Field_11 => 3);

   --  NanoEdge PMC POWER Dectect Enable
   type PWRC_SRPWRDETEN_Field is
     (
      --  Disable
      PWRC_SRPWRDETEN_Field_0,
      --  Enable
      PWRC_SRPWRDETEN_Field_1)
     with Size => 1;
   for PWRC_SRPWRDETEN_Field use
     (PWRC_SRPWRDETEN_Field_0 => 0,
      PWRC_SRPWRDETEN_Field_1 => 1);

   --  NanoEdge PMC POWER Ready
   type PWRC_SRPWRRDY_Field is
     (
      --  Not ready
      PWRC_SRPWRRDY_Field_0,
      --  Assert PMC power output ready
      PWRC_SRPWRRDY_Field_1)
     with Size => 1;
   for PWRC_SRPWRRDY_Field use
     (PWRC_SRPWRRDY_Field_0 => 0,
      PWRC_SRPWRRDY_Field_1 => 1);

   --  NanoEdge PMC Status
   type PWRC_SRPWROK_Field is
     (
      --  Power supply for NanoEdge isn't ready.
      PWRC_SRPWROK_Field_0,
      --  Power supply for NanoEdge is OK.
      PWRC_SRPWROK_Field_1)
     with Size => 1;
   for PWRC_SRPWROK_Field use
     (PWRC_SRPWROK_Field_0 => 0,
      PWRC_SRPWROK_Field_1 => 1);

   --  Power Control Register
   type SIM_PWRC_Register is record
      --  NanoEdge Regulator 2.7V and 1.2V Supply Powerdown Control
      SRPDN          : PWRC_SRPDN_Field := NRF_SVD.SIM.PWRC_SRPDN_Field_01;
      --  NanoEdge Regulator 2.7 V Supply Standby Control
      SR27STDBY      : PWRC_SR27STDBY_Field :=
                        NRF_SVD.SIM.PWRC_SR27STDBY_Field_00;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  NanoEdge Regulator 1.2 V Supply Standby Control
      SR12STDBY      : PWRC_SR12STDBY_Field :=
                        NRF_SVD.SIM.PWRC_SR12STDBY_Field_00;
      --  NanoEdge PMC POWER Dectect Enable
      SRPWRDETEN     : PWRC_SRPWRDETEN_Field :=
                        NRF_SVD.SIM.PWRC_SRPWRDETEN_Field_1;
      --  NanoEdge PMC POWER Ready
      SRPWRRDY       : PWRC_SRPWRRDY_Field :=
                        NRF_SVD.SIM.PWRC_SRPWRRDY_Field_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Read-only. NanoEdge PMC Status
      SRPWROK        : PWRC_SRPWROK_Field := NRF_SVD.SIM.PWRC_SRPWROK_Field_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_PWRC_Register use record
      SRPDN          at 0 range 0 .. 1;
      SR27STDBY      at 0 range 2 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SR12STDBY      at 0 range 6 .. 7;
      SRPWRDETEN     at 0 range 8 .. 8;
      SRPWRRDY       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SRPWROK        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  ADCA MUX0 selection for ADCA channel 6
   type ADCOPT_ADCACH6SEL_Field is
     (
      --  ADCA MUX0's channel a.
      ADCOPT_ADCACH6SEL_Field_000,
      --  ADCA MUX0's channel b.
      ADCOPT_ADCACH6SEL_Field_001,
      --  ADCA MUX0's channel c.
      ADCOPT_ADCACH6SEL_Field_010,
      --  ADCA MUX0's channel d.
      ADCOPT_ADCACH6SEL_Field_011,
      --  ADCA MUX0's channel e.
      ADCOPT_ADCACH6SEL_Field_100,
      --  ADCA MUX0's channel g.
      ADCOPT_ADCACH6SEL_Field_110)
     with Size => 3;
   for ADCOPT_ADCACH6SEL_Field use
     (ADCOPT_ADCACH6SEL_Field_000 => 0,
      ADCOPT_ADCACH6SEL_Field_001 => 1,
      ADCOPT_ADCACH6SEL_Field_010 => 2,
      ADCOPT_ADCACH6SEL_Field_011 => 3,
      ADCOPT_ADCACH6SEL_Field_100 => 4,
      ADCOPT_ADCACH6SEL_Field_110 => 6);

   --  ADCA MUX1 selection for ADCA channel 7
   type ADCOPT_ADCACH7SEL_Field is
     (
      --  ADCA MUX1's channel a.
      ADCOPT_ADCACH7SEL_Field_000,
      --  ADCA MUX1's channel b.
      ADCOPT_ADCACH7SEL_Field_001,
      --  ADCA MUX1's channel c.
      ADCOPT_ADCACH7SEL_Field_010,
      --  ADCA MUX1's channel e.
      ADCOPT_ADCACH7SEL_Field_100,
      --  ADCA MUX1's channel f.
      ADCOPT_ADCACH7SEL_Field_101,
      --  ADCA MUX1's channel g.
      ADCOPT_ADCACH7SEL_Field_110,
      --  PMC 1V
      ADCOPT_ADCACH7SEL_Field_111)
     with Size => 3;
   for ADCOPT_ADCACH7SEL_Field use
     (ADCOPT_ADCACH7SEL_Field_000 => 0,
      ADCOPT_ADCACH7SEL_Field_001 => 1,
      ADCOPT_ADCACH7SEL_Field_010 => 2,
      ADCOPT_ADCACH7SEL_Field_100 => 4,
      ADCOPT_ADCACH7SEL_Field_101 => 5,
      ADCOPT_ADCACH7SEL_Field_110 => 6,
      ADCOPT_ADCACH7SEL_Field_111 => 7);

   --  ADCB MUX1 selection for ADCB channel 6
   type ADCOPT_ADCBCH6SEL_Field is
     (
      --  ADCB MUX0's channel a.
      ADCOPT_ADCBCH6SEL_Field_000,
      --  ADCB MUX0's channel b.
      ADCOPT_ADCBCH6SEL_Field_001,
      --  ADCB MUX0's channel c.
      ADCOPT_ADCBCH6SEL_Field_010,
      --  ADCB MUX0's channel d.
      ADCOPT_ADCBCH6SEL_Field_011,
      --  ADCB MUX0's channel e.
      ADCOPT_ADCBCH6SEL_Field_100,
      --  ADCB MUX0's channel f.
      ADCOPT_ADCBCH6SEL_Field_101,
      --  ADCB MUX0's channel g.
      ADCOPT_ADCBCH6SEL_Field_110,
      --  PMC 1V.
      ADCOPT_ADCBCH6SEL_Field_111)
     with Size => 3;
   for ADCOPT_ADCBCH6SEL_Field use
     (ADCOPT_ADCBCH6SEL_Field_000 => 0,
      ADCOPT_ADCBCH6SEL_Field_001 => 1,
      ADCOPT_ADCBCH6SEL_Field_010 => 2,
      ADCOPT_ADCBCH6SEL_Field_011 => 3,
      ADCOPT_ADCBCH6SEL_Field_100 => 4,
      ADCOPT_ADCBCH6SEL_Field_101 => 5,
      ADCOPT_ADCBCH6SEL_Field_110 => 6,
      ADCOPT_ADCBCH6SEL_Field_111 => 7);

   --  ADCB MUX1 selection for ADCB channel 7
   type ADCOPT_ADCBCH7SEL_Field is
     (
      --  ADCB MUX1's channel a.
      ADCOPT_ADCBCH7SEL_Field_000,
      --  ADCB MUX1's channel b.
      ADCOPT_ADCBCH7SEL_Field_001,
      --  ADCB MUX1's channel c.
      ADCOPT_ADCBCH7SEL_Field_010,
      --  ADCB MUX1's channel d.
      ADCOPT_ADCBCH7SEL_Field_011,
      --  ADCB MUX1's channel e.
      ADCOPT_ADCBCH7SEL_Field_100,
      --  ADCB MUX1's channel f.
      ADCOPT_ADCBCH7SEL_Field_101,
      --  ADCB MUX1's channel g.
      ADCOPT_ADCBCH7SEL_Field_110)
     with Size => 3;
   for ADCOPT_ADCBCH7SEL_Field use
     (ADCOPT_ADCBCH7SEL_Field_000 => 0,
      ADCOPT_ADCBCH7SEL_Field_001 => 1,
      ADCOPT_ADCBCH7SEL_Field_010 => 2,
      ADCOPT_ADCBCH7SEL_Field_011 => 3,
      ADCOPT_ADCBCH7SEL_Field_100 => 4,
      ADCOPT_ADCBCH7SEL_Field_101 => 5,
      ADCOPT_ADCBCH7SEL_Field_110 => 6);

   --  Enable ADC low current Mode
   type ADCOPT_ROSB_Field is
     (
      --  Disable ADC low current mode.
      ADCOPT_ROSB_Field_0,
      --  Enable ADC low current mode.
      ADCOPT_ROSB_Field_1)
     with Size => 1;
   for ADCOPT_ROSB_Field use
     (ADCOPT_ROSB_Field_0 => 0,
      ADCOPT_ROSB_Field_1 => 1);

   --  ADC Clock Status
   type ADCOPT_ADCIRCLK_Field is
     (
      --  ADC clock is fast peripherial clock.
      ADCOPT_ADCIRCLK_Field_0,
      --  ADC clock is MCGIRCLK.
      ADCOPT_ADCIRCLK_Field_1)
     with Size => 1;
   for ADCOPT_ADCIRCLK_Field use
     (ADCOPT_ADCIRCLK_Field_0 => 0,
      ADCOPT_ADCIRCLK_Field_1 => 1);

   --  ADC Channel 6/7 Mux Control Register
   type SIM_ADCOPT_Register is record
      --  ADCA MUX0 selection for ADCA channel 6
      ADCACH6SEL     : ADCOPT_ADCACH6SEL_Field :=
                        NRF_SVD.SIM.ADCOPT_ADCACH6SEL_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  ADCA MUX1 selection for ADCA channel 7
      ADCACH7SEL     : ADCOPT_ADCACH7SEL_Field :=
                        NRF_SVD.SIM.ADCOPT_ADCACH7SEL_Field_000;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ADCB MUX1 selection for ADCB channel 6
      ADCBCH6SEL     : ADCOPT_ADCBCH6SEL_Field :=
                        NRF_SVD.SIM.ADCOPT_ADCBCH6SEL_Field_000;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  ADCB MUX1 selection for ADCB channel 7
      ADCBCH7SEL     : ADCOPT_ADCBCH7SEL_Field :=
                        NRF_SVD.SIM.ADCOPT_ADCBCH7SEL_Field_000;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Enable ADC low current Mode
      ROSB           : ADCOPT_ROSB_Field := NRF_SVD.SIM.ADCOPT_ROSB_Field_0;
      --  Read-only. ADC Clock Status
      ADCIRCLK       : ADCOPT_ADCIRCLK_Field :=
                        NRF_SVD.SIM.ADCOPT_ADCIRCLK_Field_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_ADCOPT_Register use record
      ADCACH6SEL     at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ADCACH7SEL     at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ADCBCH6SEL     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ADCBCH7SEL     at 0 range 12 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      ROSB           at 0 range 24 .. 24;
      ADCIRCLK       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
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
      --  System Clock Divider Register 4
      CLKDIV4  : aliased SIM_CLKDIV4_Register;
      --  Miscellaneous Control Register 0
      MISCTRL0 : aliased SIM_MISCTRL0_Register;
      --  Miscellaneous Control Register 1
      MISCTRL1 : aliased SIM_MISCTRL1_Register;
      --  WDOG Control Register
      WDOGC    : aliased SIM_WDOGC_Register;
      --  Power Control Register
      PWRC     : aliased SIM_PWRC_Register;
      --  ADC Channel 6/7 Mux Control Register
      ADCOPT   : aliased SIM_ADCOPT_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SOPT1    at 16#0# range 0 .. 31;
      SOPT2    at 16#1004# range 0 .. 31;
      SOPT4    at 16#100C# range 0 .. 31;
      SOPT5    at 16#1010# range 0 .. 31;
      SOPT7    at 16#1018# range 0 .. 31;
      SOPT8    at 16#101C# range 0 .. 31;
      SOPT9    at 16#1020# range 0 .. 31;
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
      CLKDIV4  at 16#1068# range 0 .. 31;
      MISCTRL0 at 16#106C# range 0 .. 31;
      MISCTRL1 at 16#1070# range 0 .. 31;
      WDOGC    at 16#1100# range 0 .. 31;
      PWRC     at 16#1104# range 0 .. 31;
      ADCOPT   at 16#1108# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
