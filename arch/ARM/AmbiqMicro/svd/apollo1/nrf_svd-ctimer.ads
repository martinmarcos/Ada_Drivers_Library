--

--  This spec has been automatically generated from apollo1.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Counter/Timer
package NRF_SVD.CTIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TMR0_CTTMRA0_Field is HAL.UInt16;
   subtype TMR0_CTTMRB0_Field is HAL.UInt16;

   --  Counter/Timer Register
   type TMR0_Register is record
      --  Counter/Timer A0.
      CTTMRA0 : TMR0_CTTMRA0_Field := 16#0#;
      --  Counter/Timer B0.
      CTTMRB0 : TMR0_CTTMRB0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR0_Register use record
      CTTMRA0 at 0 range 0 .. 15;
      CTTMRB0 at 0 range 16 .. 31;
   end record;

   subtype CMPRA0_CMPR0A0_Field is HAL.UInt16;
   subtype CMPRA0_CMPR1A0_Field is HAL.UInt16;

   --  Counter/Timer A0 Compare Registers
   type CMPRA0_Register is record
      --  Counter/Timer A0 Compare Register 0. Holds the lower limit for timer
      --  half A.
      CMPR0A0 : CMPRA0_CMPR0A0_Field := 16#0#;
      --  Counter/Timer A0 Compare Register 1. Holds the upper limit for timer
      --  half A.
      CMPR1A0 : CMPRA0_CMPR1A0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRA0_Register use record
      CMPR0A0 at 0 range 0 .. 15;
      CMPR1A0 at 0 range 16 .. 31;
   end record;

   subtype CMPRB0_CMPR0B0_Field is HAL.UInt16;
   subtype CMPRB0_CMPR1B0_Field is HAL.UInt16;

   --  Counter/Timer B0 Compare Registers
   type CMPRB0_Register is record
      --  Counter/Timer B0 Compare Register 0. Holds the lower limit for timer
      --  half B.
      CMPR0B0 : CMPRB0_CMPR0B0_Field := 16#0#;
      --  Counter/Timer B0 Compare Register 1. Holds the upper limit for timer
      --  half B.
      CMPR1B0 : CMPRB0_CMPR1B0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRB0_Register use record
      CMPR0B0 at 0 range 0 .. 15;
      CMPR1B0 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer A0 Enable bit.
   type CTRL0_TMRA0EN_Field is
     (
      --  Counter/Timer A0 Disable. value.
      Dis,
      --  Counter/Timer A0 Enable. value.
      En)
     with Size => 1;
   for CTRL0_TMRA0EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A0 Clock Select.
   type CTRL0_TMRA0CLK_Field is
     (
      --  Clock source is TMRPINA. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL0_TMRA0CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Bucka => 16);

   --  Counter/Timer A0 Function Select.
   type CTRL0_TMRA0FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0A0, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0A0, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0A0, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0A0, assert, count to CMPR1A0,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL0_TMRA0FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer A0 Interrupt Enable bit.
   type CTRL0_TMRA0IE_Field is
     (
      --  Disable counter/timer A0 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer A0 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL0_TMRA0IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A0 Output Enable bit.
   type CTRL0_TMRA0PE_Field is
     (
      --  Counter/Timer A holds the TMRPINA signal at the value TMRA0POL.
      --  value.
      Dis,
      --  Enable counter/timer B0 to generate a signal on TMRPINB. value.
      En)
     with Size => 1;
   for CTRL0_TMRA0PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A0 Clear bit.
   type CTRL0_TMRA0CLR_Field is
     (
      --  Allow counter/timer A0 to run value.
      Run,
      --  Holds counter/timer A0 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL0_TMRA0CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer A0 output polarity.
   type CTRL0_TMRA0POL_Field is
     (
      --  The polarity of the TMRPINA0 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINA0 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL0_TMRA0POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer B0 Enable bit.
   type CTRL0_TMRB0EN_Field is
     (
      --  Counter/Timer B0 Disable. value.
      Dis,
      --  Counter/Timer B0 Enable. value.
      En)
     with Size => 1;
   for CTRL0_TMRB0EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B0 Clock Select.
   type CTRL0_TMRB0CLK_Field is
     (
      --  Clock source is TMRPINB. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream B. value.
      Buckb)
     with Size => 5;
   for CTRL0_TMRB0CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Buckb => 16);

   --  Counter/Timer B0 Function Select.
   type CTRL0_TMRB0FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0B0, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0B0, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0B0, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0B0, assert, count to CMPR1B0,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL0_TMRB0FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer B0 Interrupt Enable bit.
   type CTRL0_TMRB0IE_Field is
     (
      --  Disable counter/timer B0 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer B0 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL0_TMRB0IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B0 Output Enable bit.
   type CTRL0_TMRB0PE_Field is
     (
      --  Counter/Timer B holds the TMRPINB signal at the value TMRB0POL.
      --  value.
      Dis,
      --  Enable counter/timer B0 to generate a signal on TMRPINB. value.
      En)
     with Size => 1;
   for CTRL0_TMRB0PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B0 Clear bit.
   type CTRL0_TMRB0CLR_Field is
     (
      --  Allow counter/timer B0 to run value.
      Run,
      --  Holds counter/timer B0 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL0_TMRB0CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer B0 output polarity.
   type CTRL0_TMRB0POL_Field is
     (
      --  The polarity of the TMRPINB0 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINB0 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL0_TMRB0POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer A0/B0 Link bit.
   type CTRL0_CTLINK0_Field is
     (
      --  Use A0/B0 timers as two independent 16-bit timers (default). value.
      Two_16Bit_Timers,
      --  Link A0/B0 timers into a single 32-bit timer. value.
      CTRL0_CTLINK0_Field_32Bit_Timer)
     with Size => 1;
   for CTRL0_CTLINK0_Field use
     (Two_16Bit_Timers => 0,
      CTRL0_CTLINK0_Field_32Bit_Timer => 1);

   --  Counter/Timer Control
   type CTRL0_Register is record
      --  Counter/Timer A0 Enable bit.
      TMRA0EN        : CTRL0_TMRA0EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A0 Clock Select.
      TMRA0CLK       : CTRL0_TMRA0CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer A0 Function Select.
      TMRA0FN        : CTRL0_TMRA0FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer A0 Interrupt Enable bit.
      TMRA0IE        : CTRL0_TMRA0IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A0 Output Enable bit.
      TMRA0PE        : CTRL0_TMRA0PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A0 Clear bit.
      TMRA0CLR       : CTRL0_TMRA0CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A0 output polarity.
      TMRA0POL       : CTRL0_TMRA0POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Counter/Timer B0 Enable bit.
      TMRB0EN        : CTRL0_TMRB0EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B0 Clock Select.
      TMRB0CLK       : CTRL0_TMRB0CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B0 Function Select.
      TMRB0FN        : CTRL0_TMRB0FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B0 Interrupt Enable bit.
      TMRB0IE        : CTRL0_TMRB0IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B0 Output Enable bit.
      TMRB0PE        : CTRL0_TMRB0PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B0 Clear bit.
      TMRB0CLR       : CTRL0_TMRB0CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B0 output polarity.
      TMRB0POL       : CTRL0_TMRB0POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Counter/Timer A0/B0 Link bit.
      CTLINK0        : CTRL0_CTLINK0_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL0_Register use record
      TMRA0EN        at 0 range 0 .. 0;
      TMRA0CLK       at 0 range 1 .. 5;
      TMRA0FN        at 0 range 6 .. 8;
      TMRA0IE        at 0 range 9 .. 9;
      TMRA0PE        at 0 range 10 .. 10;
      TMRA0CLR       at 0 range 11 .. 11;
      TMRA0POL       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TMRB0EN        at 0 range 16 .. 16;
      TMRB0CLK       at 0 range 17 .. 21;
      TMRB0FN        at 0 range 22 .. 24;
      TMRB0IE        at 0 range 25 .. 25;
      TMRB0PE        at 0 range 26 .. 26;
      TMRB0CLR       at 0 range 27 .. 27;
      TMRB0POL       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      CTLINK0        at 0 range 31 .. 31;
   end record;

   subtype TMR1_CTTMRA1_Field is HAL.UInt16;
   subtype TMR1_CTTMRB1_Field is HAL.UInt16;

   --  Counter/Timer Register
   type TMR1_Register is record
      --  Counter/Timer A1.
      CTTMRA1 : TMR1_CTTMRA1_Field := 16#0#;
      --  Counter/Timer B1.
      CTTMRB1 : TMR1_CTTMRB1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR1_Register use record
      CTTMRA1 at 0 range 0 .. 15;
      CTTMRB1 at 0 range 16 .. 31;
   end record;

   subtype CMPRA1_CMPR0A1_Field is HAL.UInt16;
   subtype CMPRA1_CMPR1A1_Field is HAL.UInt16;

   --  Counter/Timer A1 Compare Registers
   type CMPRA1_Register is record
      --  Counter/Timer A1 Compare Register 0.
      CMPR0A1 : CMPRA1_CMPR0A1_Field := 16#0#;
      --  Counter/Timer A1 Compare Register 1.
      CMPR1A1 : CMPRA1_CMPR1A1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRA1_Register use record
      CMPR0A1 at 0 range 0 .. 15;
      CMPR1A1 at 0 range 16 .. 31;
   end record;

   subtype CMPRB1_CMPR0B1_Field is HAL.UInt16;
   subtype CMPRB1_CMPR1B1_Field is HAL.UInt16;

   --  Counter/Timer B1 Compare Registers
   type CMPRB1_Register is record
      --  Counter/Timer B1 Compare Register 0.
      CMPR0B1 : CMPRB1_CMPR0B1_Field := 16#0#;
      --  Counter/Timer B1 Compare Register 1.
      CMPR1B1 : CMPRB1_CMPR1B1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRB1_Register use record
      CMPR0B1 at 0 range 0 .. 15;
      CMPR1B1 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer A1 Enable bit.
   type CTRL1_TMRA1EN_Field is
     (
      --  Counter/Timer A1 Disable. value.
      Dis,
      --  Counter/Timer A1 Enable. value.
      En)
     with Size => 1;
   for CTRL1_TMRA1EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A1 Clock Select.
   type CTRL1_TMRA1CLK_Field is
     (
      --  Clock source is TMRPINA. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is the HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL1_TMRA1CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Bucka => 16);

   --  Counter/Timer A1 Function Select.
   type CTRL1_TMRA1FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0A1, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0A1, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0A1, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0A1, assert, count to CMPR1A1,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL1_TMRA1FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer A1 Interrupt Enable bit.
   type CTRL1_TMRA1IE_Field is
     (
      --  Disable counter/timer A1 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer A1 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL1_TMRA1IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A1 Output Enable bit.
   type CTRL1_TMRA1PE_Field is
     (
      --  Counter/Timer A holds the TMRPINA signal at the value TMRA1POL.
      --  value.
      Dis,
      --  Enable counter/timer A1 to generate a signal on TMRPINA. value.
      En)
     with Size => 1;
   for CTRL1_TMRA1PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A1 Clear bit.
   type CTRL1_TMRA1CLR_Field is
     (
      --  Allow counter/timer A1 to run value.
      Run,
      --  Holds counter/timer A1 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL1_TMRA1CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer A1 output polarity.
   type CTRL1_TMRA1POL_Field is
     (
      --  The polarity of the TMRPINA1 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINA1 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL1_TMRA1POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer B1 Enable bit.
   type CTRL1_TMRB1EN_Field is
     (
      --  Counter/Timer B1 Disable. value.
      Dis,
      --  Counter/Timer B1 Enable. value.
      En)
     with Size => 1;
   for CTRL1_TMRB1EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B1 Clock Select.
   type CTRL1_TMRB1CLK_Field is
     (
      --  Clock source is TMRPINB. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream B. value.
      Buckb)
     with Size => 5;
   for CTRL1_TMRB1CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Buckb => 16);

   --  Counter/Timer B1 Function Select.
   type CTRL1_TMRB1FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0B1, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0B1, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0B1, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0B1, assert, count to CMPR1B1,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL1_TMRB1FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer B1 Interrupt Enable bit.
   type CTRL1_TMRB1IE_Field is
     (
      --  Disable counter/timer B1 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer B1 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL1_TMRB1IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B1 Output Enable bit.
   type CTRL1_TMRB1PE_Field is
     (
      --  Counter/Timer B holds the TMRPINB signal at the value TMRB1POL.
      --  value.
      Dis,
      --  Enable counter/timer B1 to generate a signal on TMRPINB. value.
      En)
     with Size => 1;
   for CTRL1_TMRB1PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B1 Clear bit.
   type CTRL1_TMRB1CLR_Field is
     (
      --  Allow counter/timer B1 to run value.
      Run,
      --  Holds counter/timer B1 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL1_TMRB1CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer B1 output polarity.
   type CTRL1_TMRB1POL_Field is
     (
      --  The polarity of the TMRPINB1 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINB1 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL1_TMRB1POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer A1/B1 Link bit.
   type CTRL1_CTLINK1_Field is
     (
      --  Use A0/B0 timers as two independent 16-bit timers (default). value.
      Two_16Bit_Timers,
      --  Link A1/B1 timers into a single 32-bit timer. value.
      CTRL1_CTLINK1_Field_32Bit_Timer)
     with Size => 1;
   for CTRL1_CTLINK1_Field use
     (Two_16Bit_Timers => 0,
      CTRL1_CTLINK1_Field_32Bit_Timer => 1);

   --  Counter/Timer Control
   type CTRL1_Register is record
      --  Counter/Timer A1 Enable bit.
      TMRA1EN        : CTRL1_TMRA1EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A1 Clock Select.
      TMRA1CLK       : CTRL1_TMRA1CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer A1 Function Select.
      TMRA1FN        : CTRL1_TMRA1FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer A1 Interrupt Enable bit.
      TMRA1IE        : CTRL1_TMRA1IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A1 Output Enable bit.
      TMRA1PE        : CTRL1_TMRA1PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A1 Clear bit.
      TMRA1CLR       : CTRL1_TMRA1CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A1 output polarity.
      TMRA1POL       : CTRL1_TMRA1POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Counter/Timer B1 Enable bit.
      TMRB1EN        : CTRL1_TMRB1EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B1 Clock Select.
      TMRB1CLK       : CTRL1_TMRB1CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B1 Function Select.
      TMRB1FN        : CTRL1_TMRB1FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B1 Interrupt Enable bit.
      TMRB1IE        : CTRL1_TMRB1IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B1 Output Enable bit.
      TMRB1PE        : CTRL1_TMRB1PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B1 Clear bit.
      TMRB1CLR       : CTRL1_TMRB1CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B1 output polarity.
      TMRB1POL       : CTRL1_TMRB1POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Counter/Timer A1/B1 Link bit.
      CTLINK1        : CTRL1_CTLINK1_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL1_Register use record
      TMRA1EN        at 0 range 0 .. 0;
      TMRA1CLK       at 0 range 1 .. 5;
      TMRA1FN        at 0 range 6 .. 8;
      TMRA1IE        at 0 range 9 .. 9;
      TMRA1PE        at 0 range 10 .. 10;
      TMRA1CLR       at 0 range 11 .. 11;
      TMRA1POL       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TMRB1EN        at 0 range 16 .. 16;
      TMRB1CLK       at 0 range 17 .. 21;
      TMRB1FN        at 0 range 22 .. 24;
      TMRB1IE        at 0 range 25 .. 25;
      TMRB1PE        at 0 range 26 .. 26;
      TMRB1CLR       at 0 range 27 .. 27;
      TMRB1POL       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      CTLINK1        at 0 range 31 .. 31;
   end record;

   subtype TMR2_CTTMRA2_Field is HAL.UInt16;
   subtype TMR2_CTTMRB2_Field is HAL.UInt16;

   --  Counter/Timer Register
   type TMR2_Register is record
      --  Counter/Timer A2.
      CTTMRA2 : TMR2_CTTMRA2_Field := 16#0#;
      --  Counter/Timer B2.
      CTTMRB2 : TMR2_CTTMRB2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR2_Register use record
      CTTMRA2 at 0 range 0 .. 15;
      CTTMRB2 at 0 range 16 .. 31;
   end record;

   subtype CMPRA2_CMPR0A2_Field is HAL.UInt16;
   subtype CMPRA2_CMPR1A2_Field is HAL.UInt16;

   --  Counter/Timer A2 Compare Registers
   type CMPRA2_Register is record
      --  Counter/Timer A2 Compare Register 0.
      CMPR0A2 : CMPRA2_CMPR0A2_Field := 16#0#;
      --  Counter/Timer A2 Compare Register 1.
      CMPR1A2 : CMPRA2_CMPR1A2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRA2_Register use record
      CMPR0A2 at 0 range 0 .. 15;
      CMPR1A2 at 0 range 16 .. 31;
   end record;

   subtype CMPRB2_CMPR0B2_Field is HAL.UInt16;
   subtype CMPRB2_CMPR1B2_Field is HAL.UInt16;

   --  Counter/Timer B2 Compare Registers
   type CMPRB2_Register is record
      --  Counter/Timer B2 Compare Register 0.
      CMPR0B2 : CMPRB2_CMPR0B2_Field := 16#0#;
      --  Counter/Timer B2 Compare Register 1.
      CMPR1B2 : CMPRB2_CMPR1B2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRB2_Register use record
      CMPR0B2 at 0 range 0 .. 15;
      CMPR1B2 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer A2 Enable bit.
   type CTRL2_TMRA2EN_Field is
     (
      --  Counter/Timer A2 Disable. value.
      Dis,
      --  Counter/Timer A2 Enable. value.
      En)
     with Size => 1;
   for CTRL2_TMRA2EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A2 Clock Select.
   type CTRL2_TMRA2CLK_Field is
     (
      --  Clock source is TMRPINA. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream B. value.
      Buckb)
     with Size => 5;
   for CTRL2_TMRA2CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Buckb => 16);

   --  Counter/Timer A2 Function Select.
   type CTRL2_TMRA2FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0A2, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0A2, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0A2, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0A2, assert, count to CMPR1A2,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL2_TMRA2FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer A2 Interrupt Enable bit.
   type CTRL2_TMRA2IE_Field is
     (
      --  Disable counter/timer A2 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer A2 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL2_TMRA2IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A2 Output Enable bit.
   type CTRL2_TMRA2PE_Field is
     (
      --  Counter/Timer A holds the TMRPINA signal at the value TMRA2POL.
      --  value.
      Dis,
      --  Enable counter/timer A2 to generate a signal on TMRPINA. value.
      En)
     with Size => 1;
   for CTRL2_TMRA2PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A2 Clear bit.
   type CTRL2_TMRA2CLR_Field is
     (
      --  Allow counter/timer A2 to run value.
      Run,
      --  Holds counter/timer A2 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL2_TMRA2CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer A2 output polarity.
   type CTRL2_TMRA2POL_Field is
     (
      --  The polarity of the TMRPINA2 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINA2 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL2_TMRA2POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer B2 Enable bit.
   type CTRL2_TMRB2EN_Field is
     (
      --  Counter/Timer B2 Disable. value.
      Dis,
      --  Counter/Timer B2 Enable. value.
      En)
     with Size => 1;
   for CTRL2_TMRB2EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B2 Clock Select.
   type CTRL2_TMRB2CLK_Field is
     (
      --  Clock source is TMRPINB. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL2_TMRB2CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Bucka => 16);

   --  Counter/Timer B2 Function Select.
   type CTRL2_TMRB2FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0B2, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0B2, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0B2, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0B2, assert, count to CMPR1B2,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL2_TMRB2FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer B2 Interrupt Enable bit.
   type CTRL2_TMRB2IE_Field is
     (
      --  Disable counter/timer B2 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer B2 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL2_TMRB2IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B2 Output Enable bit.
   type CTRL2_TMRB2PE_Field is
     (
      --  Counter/Timer B holds the TMRPINB signal at the value TMRB2POL.
      --  value.
      Dis,
      --  Enable counter/timer B2 to generate a signal on TMRPINB. value.
      En)
     with Size => 1;
   for CTRL2_TMRB2PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B2 Clear bit.
   type CTRL2_TMRB2CLR_Field is
     (
      --  Allow counter/timer B2 to run value.
      Run,
      --  Holds counter/timer B2 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL2_TMRB2CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer B2 output polarity.
   type CTRL2_TMRB2POL_Field is
     (
      --  The polarity of the TMRPINB2 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINB2 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL2_TMRB2POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer A2/B2 Link bit.
   type CTRL2_CTLINK2_Field is
     (
      --  Use A0/B0 timers as two independent 16-bit timers (default). value.
      Two_16Bit_Timers,
      --  Link A2/B2 timers into a single 32-bit timer. value.
      CTRL2_CTLINK2_Field_32Bit_Timer)
     with Size => 1;
   for CTRL2_CTLINK2_Field use
     (Two_16Bit_Timers => 0,
      CTRL2_CTLINK2_Field_32Bit_Timer => 1);

   --  Counter/Timer Control
   type CTRL2_Register is record
      --  Counter/Timer A2 Enable bit.
      TMRA2EN        : CTRL2_TMRA2EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A2 Clock Select.
      TMRA2CLK       : CTRL2_TMRA2CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer A2 Function Select.
      TMRA2FN        : CTRL2_TMRA2FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer A2 Interrupt Enable bit.
      TMRA2IE        : CTRL2_TMRA2IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A2 Output Enable bit.
      TMRA2PE        : CTRL2_TMRA2PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A2 Clear bit.
      TMRA2CLR       : CTRL2_TMRA2CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A2 output polarity.
      TMRA2POL       : CTRL2_TMRA2POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Counter/Timer B2 Enable bit.
      TMRB2EN        : CTRL2_TMRB2EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B2 Clock Select.
      TMRB2CLK       : CTRL2_TMRB2CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B2 Function Select.
      TMRB2FN        : CTRL2_TMRB2FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B2 Interrupt Enable bit.
      TMRB2IE        : CTRL2_TMRB2IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B2 Output Enable bit.
      TMRB2PE        : CTRL2_TMRB2PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B2 Clear bit.
      TMRB2CLR       : CTRL2_TMRB2CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B2 output polarity.
      TMRB2POL       : CTRL2_TMRB2POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Counter/Timer A2/B2 Link bit.
      CTLINK2        : CTRL2_CTLINK2_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL2_Register use record
      TMRA2EN        at 0 range 0 .. 0;
      TMRA2CLK       at 0 range 1 .. 5;
      TMRA2FN        at 0 range 6 .. 8;
      TMRA2IE        at 0 range 9 .. 9;
      TMRA2PE        at 0 range 10 .. 10;
      TMRA2CLR       at 0 range 11 .. 11;
      TMRA2POL       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TMRB2EN        at 0 range 16 .. 16;
      TMRB2CLK       at 0 range 17 .. 21;
      TMRB2FN        at 0 range 22 .. 24;
      TMRB2IE        at 0 range 25 .. 25;
      TMRB2PE        at 0 range 26 .. 26;
      TMRB2CLR       at 0 range 27 .. 27;
      TMRB2POL       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      CTLINK2        at 0 range 31 .. 31;
   end record;

   subtype TMR3_CTTMRA3_Field is HAL.UInt16;
   subtype TMR3_CTTMRB3_Field is HAL.UInt16;

   --  Counter/Timer Register
   type TMR3_Register is record
      --  Counter/Timer A3.
      CTTMRA3 : TMR3_CTTMRA3_Field := 16#0#;
      --  Counter/Timer B3.
      CTTMRB3 : TMR3_CTTMRB3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR3_Register use record
      CTTMRA3 at 0 range 0 .. 15;
      CTTMRB3 at 0 range 16 .. 31;
   end record;

   subtype CMPRA3_CMPR0A3_Field is HAL.UInt16;
   subtype CMPRA3_CMPR1A3_Field is HAL.UInt16;

   --  Counter/Timer A3 Compare Registers
   type CMPRA3_Register is record
      --  Counter/Timer A3 Compare Register 0.
      CMPR0A3 : CMPRA3_CMPR0A3_Field := 16#0#;
      --  Counter/Timer A3 Compare Register 1.
      CMPR1A3 : CMPRA3_CMPR1A3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRA3_Register use record
      CMPR0A3 at 0 range 0 .. 15;
      CMPR1A3 at 0 range 16 .. 31;
   end record;

   subtype CMPRB3_CMPR0B3_Field is HAL.UInt16;
   subtype CMPRB3_CMPR1B3_Field is HAL.UInt16;

   --  Counter/Timer B3 Compare Registers
   type CMPRB3_Register is record
      --  Counter/Timer B3 Compare Register 0.
      CMPR0B3 : CMPRB3_CMPR0B3_Field := 16#0#;
      --  Counter/Timer B3 Compare Register 1.
      CMPR1B3 : CMPRB3_CMPR1B3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPRB3_Register use record
      CMPR0B3 at 0 range 0 .. 15;
      CMPR1B3 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer A3 Enable bit.
   type CTRL3_TMRA3EN_Field is
     (
      --  Counter/Timer A3 Disable. value.
      Dis,
      --  Counter/Timer A3 Enable. value.
      En)
     with Size => 1;
   for CTRL3_TMRA3EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A3 Clock Select.
   type CTRL3_TMRA3CLK_Field is
     (
      --  Clock source is TMRPINA. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream B. value.
      Buckb)
     with Size => 5;
   for CTRL3_TMRA3CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Buckb => 16);

   --  Counter/Timer A3 Function Select.
   type CTRL3_TMRA3FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0A3, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0A3, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0A3, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0A3, assert, count to CMPR1A3,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL3_TMRA3FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer A3 Interrupt Enable bit.
   type CTRL3_TMRA3IE_Field is
     (
      --  Disable counter/timer A3 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer A3 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL3_TMRA3IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A3 Output Enable bit.
   type CTRL3_TMRA3PE_Field is
     (
      --  Counter/Timer A holds the TMRPINA signal at the value TMRA3POL.
      --  value.
      Dis,
      --  Enable counter/timer A3 to generate a signal on TMRPINA. value.
      En)
     with Size => 1;
   for CTRL3_TMRA3PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A3 Clear bit.
   type CTRL3_TMRA3CLR_Field is
     (
      --  Reset value for the field
      Ctrl3_Tmra3Clr_Field_Reset,
      --  Holds counter/timer A3 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL3_TMRA3CLR_Field use
     (Ctrl3_Tmra3Clr_Field_Reset => 0,
      Clear => 1);

   --  Counter/Timer A3 output polarity.
   type CTRL3_TMRA3POL_Field is
     (
      --  The polarity of the TMRPINA3 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINA3 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL3_TMRA3POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer B3 Enable bit.
   type CTRL3_TMRB3EN_Field is
     (
      --  Counter/Timer B3 Disable. value.
      Dis,
      --  Counter/Timer B3 Enable. value.
      En)
     with Size => 1;
   for CTRL3_TMRB3EN_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B3 Clock Select.
   type CTRL3_TMRB3CLK_Field is
     (
      --  Clock source is TMRPINB. value.
      Tmrpin,
      --  Clock source is the HFRC value.
      Hfrc,
      --  Clock source is HFRC / 8 value.
      Hfrc_Div8,
      --  Clock source is HFRC / 128 value.
      Hfrc_Div128,
      --  Clock source is HFRC / 512 value.
      Hfrc_Div512,
      --  Clock source is HFRC / 2048 value.
      Hfrc_Div2K,
      --  Clock source is the XT (uncalibrated). value.
      Xt,
      --  Clock source is XT / 2 value.
      Xt_Div2,
      --  Clock source is XT / 16 value.
      Xt_Div16,
      --  Clock source is XT / 256 value.
      Xt_Div256,
      --  Clock source is LFRC / 2 value.
      Lfrc_Div2,
      --  Clock source is LFRC / 32 value.
      Lfrc_Div32,
      --  Clock source is LFRC / 1024 value.
      Lfrc_Div1K,
      --  Clock source is LFRC / 16K value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL3_TMRB3CLK_Field use
     (Tmrpin => 0,
      Hfrc => 1,
      Hfrc_Div8 => 2,
      Hfrc_Div128 => 3,
      Hfrc_Div512 => 4,
      Hfrc_Div2K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk => 15,
      Bucka => 16);

   --  Counter/Timer B3 Function Select.
   type CTRL3_TMRB3FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0B3, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0B3, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0B3, assert, count to CMPR1B,
      --  deassert, stop. value.
      Pulse_Once,
      --  Pulse continously. Count to CMPR0B3, assert, count to CMPR1B3,
      --  deassert, restart. value.
      Pulse_Cont,
      --  Continuous run (aka Free Run). Count continuously. value.
      Continuous)
     with Size => 3;
   for CTRL3_TMRB3FN_Field use
     (Singlecount => 0,
      Repeatedcount => 1,
      Pulse_Once => 2,
      Pulse_Cont => 3,
      Continuous => 4);

   --  Counter/Timer B3 Interrupt Enable bit.
   type CTRL3_TMRB3IE_Field is
     (
      --  Disable counter/timer B3 from generating an interrupt. value.
      Dis,
      --  Enable counter/timer B3 to generate an interrupt. value.
      En)
     with Size => 1;
   for CTRL3_TMRB3IE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B3 Output Enable bit.
   type CTRL3_TMRB3PE_Field is
     (
      --  Counter/Timer B holds the TMRPINB signal at the value TMRB3POL.
      --  value.
      Dis,
      --  Enable counter/timer B3 to generate a signal on TMRPINB. value.
      En)
     with Size => 1;
   for CTRL3_TMRB3PE_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B3 Clear bit.
   type CTRL3_TMRB3CLR_Field is
     (
      --  Allow counter/timer B3 to run. value.
      Run,
      --  Holds counter/timer B3 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL3_TMRB3CLR_Field use
     (Run => 0,
      Clear => 1);

   --  Counter/Timer B3 output polarity.
   type CTRL3_TMRB3POL_Field is
     (
      --  The polarity of the TMRPINB3 pin is the same as the timer output.
      --  value.
      Normal,
      --  The polarity of the TMRPINB3 pin is the inverse of the timer output.
      --  value.
      Inverted)
     with Size => 1;
   for CTRL3_TMRB3POL_Field use
     (Normal => 0,
      Inverted => 1);

   --  Counter/Timer A/B Link bit.
   type CTRL3_CTLINK3_Field is
     (
      --  Use A0/B0 timers as two independent 16-bit timers (default). value.
      Two_16Bit_Timers,
      --  Link A3/B3 timers into a single 32-bit timer. value.
      CTRL3_CTLINK3_Field_32Bit_Timer)
     with Size => 1;
   for CTRL3_CTLINK3_Field use
     (Two_16Bit_Timers => 0,
      CTRL3_CTLINK3_Field_32Bit_Timer => 1);

   --  Counter/Timer Control
   type CTRL3_Register is record
      --  Counter/Timer A3 Enable bit.
      TMRA3EN        : CTRL3_TMRA3EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A3 Clock Select.
      TMRA3CLK       : CTRL3_TMRA3CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer A3 Function Select.
      TMRA3FN        : CTRL3_TMRA3FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer A3 Interrupt Enable bit.
      TMRA3IE        : CTRL3_TMRA3IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A3 Output Enable bit.
      TMRA3PE        : CTRL3_TMRA3PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A3 Clear bit.
      TMRA3CLR       : CTRL3_TMRA3CLR_Field := Ctrl3_Tmra3Clr_Field_Reset;
      --  Counter/Timer A3 output polarity.
      TMRA3POL       : CTRL3_TMRA3POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Special Timer A3 enable for ADC function.
      ADCEN          : Boolean := False;
      --  Counter/Timer B3 Enable bit.
      TMRB3EN        : CTRL3_TMRB3EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B3 Clock Select.
      TMRB3CLK       : CTRL3_TMRB3CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B3 Function Select.
      TMRB3FN        : CTRL3_TMRB3FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B3 Interrupt Enable bit.
      TMRB3IE        : CTRL3_TMRB3IE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B3 Output Enable bit.
      TMRB3PE        : CTRL3_TMRB3PE_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B3 Clear bit.
      TMRB3CLR       : CTRL3_TMRB3CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B3 output polarity.
      TMRB3POL       : CTRL3_TMRB3POL_Field := NRF_SVD.CTIMER.Normal;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Counter/Timer A/B Link bit.
      CTLINK3        : CTRL3_CTLINK3_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL3_Register use record
      TMRA3EN        at 0 range 0 .. 0;
      TMRA3CLK       at 0 range 1 .. 5;
      TMRA3FN        at 0 range 6 .. 8;
      TMRA3IE        at 0 range 9 .. 9;
      TMRA3PE        at 0 range 10 .. 10;
      TMRA3CLR       at 0 range 11 .. 11;
      TMRA3POL       at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      ADCEN          at 0 range 15 .. 15;
      TMRB3EN        at 0 range 16 .. 16;
      TMRB3CLK       at 0 range 17 .. 21;
      TMRB3FN        at 0 range 22 .. 24;
      TMRB3IE        at 0 range 25 .. 25;
      TMRB3PE        at 0 range 26 .. 26;
      TMRB3CLR       at 0 range 27 .. 27;
      TMRB3POL       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      CTLINK3        at 0 range 31 .. 31;
   end record;

   --  Counter/Timer Interrupts: Enable
   type INTEN_Register is record
      --  Counter/Timer A0 interrupt.
      CTMRA0INT     : Boolean := False;
      --  Counter/Timer B0 interrupt.
      CTMRB0INT     : Boolean := False;
      --  Counter/Timer A1 interrupt.
      CTMRA1INT     : Boolean := False;
      --  Counter/Timer B1 interrupt.
      CTMRB1INT     : Boolean := False;
      --  Counter/Timer A2 interrupt.
      CTMRA2INT     : Boolean := False;
      --  Counter/Timer B2 interrupt.
      CTMRB2INT     : Boolean := False;
      --  Counter/Timer A3 interrupt.
      CTMRA3INT     : Boolean := False;
      --  Counter/Timer B3 interrupt.
      CTMRB3INT     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      CTMRA0INT     at 0 range 0 .. 0;
      CTMRB0INT     at 0 range 1 .. 1;
      CTMRA1INT     at 0 range 2 .. 2;
      CTMRB1INT     at 0 range 3 .. 3;
      CTMRA2INT     at 0 range 4 .. 4;
      CTMRB2INT     at 0 range 5 .. 5;
      CTMRA3INT     at 0 range 6 .. 6;
      CTMRB3INT     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Counter/Timer Interrupts: Status
   type INTSTAT_Register is record
      --  Counter/Timer A0 interrupt.
      CTMRA0INT     : Boolean := False;
      --  Counter/Timer B0 interrupt.
      CTMRB0INT     : Boolean := False;
      --  Counter/Timer A1 interrupt.
      CTMRA1INT     : Boolean := False;
      --  Counter/Timer B1 interrupt.
      CTMRB1INT     : Boolean := False;
      --  Counter/Timer A2 interrupt.
      CTMRA2INT     : Boolean := False;
      --  Counter/Timer B2 interrupt.
      CTMRB2INT     : Boolean := False;
      --  Counter/Timer A3 interrupt.
      CTMRA3INT     : Boolean := False;
      --  Counter/Timer B3 interrupt.
      CTMRB3INT     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      CTMRA0INT     at 0 range 0 .. 0;
      CTMRB0INT     at 0 range 1 .. 1;
      CTMRA1INT     at 0 range 2 .. 2;
      CTMRB1INT     at 0 range 3 .. 3;
      CTMRA2INT     at 0 range 4 .. 4;
      CTMRB2INT     at 0 range 5 .. 5;
      CTMRA3INT     at 0 range 6 .. 6;
      CTMRB3INT     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Counter/Timer Interrupts: Clear
   type INTCLR_Register is record
      --  Counter/Timer A0 interrupt.
      CTMRA0INT     : Boolean := False;
      --  Counter/Timer B0 interrupt.
      CTMRB0INT     : Boolean := False;
      --  Counter/Timer A1 interrupt.
      CTMRA1INT     : Boolean := False;
      --  Counter/Timer B1 interrupt.
      CTMRB1INT     : Boolean := False;
      --  Counter/Timer A2 interrupt.
      CTMRA2INT     : Boolean := False;
      --  Counter/Timer B2 interrupt.
      CTMRB2INT     : Boolean := False;
      --  Counter/Timer A3 interrupt.
      CTMRA3INT     : Boolean := False;
      --  Counter/Timer B3 interrupt.
      CTMRB3INT     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      CTMRA0INT     at 0 range 0 .. 0;
      CTMRB0INT     at 0 range 1 .. 1;
      CTMRA1INT     at 0 range 2 .. 2;
      CTMRB1INT     at 0 range 3 .. 3;
      CTMRA2INT     at 0 range 4 .. 4;
      CTMRB2INT     at 0 range 5 .. 5;
      CTMRA3INT     at 0 range 6 .. 6;
      CTMRB3INT     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Counter/Timer Interrupts: Set
   type INTSET_Register is record
      --  Counter/Timer A0 interrupt.
      CTMRA0INT     : Boolean := False;
      --  Counter/Timer B0 interrupt.
      CTMRB0INT     : Boolean := False;
      --  Counter/Timer A1 interrupt.
      CTMRA1INT     : Boolean := False;
      --  Counter/Timer B1 interrupt.
      CTMRB1INT     : Boolean := False;
      --  Counter/Timer A2 interrupt.
      CTMRA2INT     : Boolean := False;
      --  Counter/Timer B2 interrupt.
      CTMRB2INT     : Boolean := False;
      --  Counter/Timer A3 interrupt.
      CTMRA3INT     : Boolean := False;
      --  Counter/Timer B3 interrupt.
      CTMRB3INT     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      CTMRA0INT     at 0 range 0 .. 0;
      CTMRB0INT     at 0 range 1 .. 1;
      CTMRA1INT     at 0 range 2 .. 2;
      CTMRB1INT     at 0 range 3 .. 3;
      CTMRA2INT     at 0 range 4 .. 4;
      CTMRB2INT     at 0 range 5 .. 5;
      CTMRA3INT     at 0 range 6 .. 6;
      CTMRB3INT     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Counter/Timer
   type CTIMER_Peripheral is record
      --  Counter/Timer Register
      TMR0    : aliased TMR0_Register;
      --  Counter/Timer A0 Compare Registers
      CMPRA0  : aliased CMPRA0_Register;
      --  Counter/Timer B0 Compare Registers
      CMPRB0  : aliased CMPRB0_Register;
      --  Counter/Timer Control
      CTRL0   : aliased CTRL0_Register;
      --  Counter/Timer Register
      TMR1    : aliased TMR1_Register;
      --  Counter/Timer A1 Compare Registers
      CMPRA1  : aliased CMPRA1_Register;
      --  Counter/Timer B1 Compare Registers
      CMPRB1  : aliased CMPRB1_Register;
      --  Counter/Timer Control
      CTRL1   : aliased CTRL1_Register;
      --  Counter/Timer Register
      TMR2    : aliased TMR2_Register;
      --  Counter/Timer A2 Compare Registers
      CMPRA2  : aliased CMPRA2_Register;
      --  Counter/Timer B2 Compare Registers
      CMPRB2  : aliased CMPRB2_Register;
      --  Counter/Timer Control
      CTRL2   : aliased CTRL2_Register;
      --  Counter/Timer Register
      TMR3    : aliased TMR3_Register;
      --  Counter/Timer A3 Compare Registers
      CMPRA3  : aliased CMPRA3_Register;
      --  Counter/Timer B3 Compare Registers
      CMPRB3  : aliased CMPRB3_Register;
      --  Counter/Timer Control
      CTRL3   : aliased CTRL3_Register;
      --  Counter/Timer Interrupts: Enable
      INTEN   : aliased INTEN_Register;
      --  Counter/Timer Interrupts: Status
      INTSTAT : aliased INTSTAT_Register;
      --  Counter/Timer Interrupts: Clear
      INTCLR  : aliased INTCLR_Register;
      --  Counter/Timer Interrupts: Set
      INTSET  : aliased INTSET_Register;
   end record
     with Volatile;

   for CTIMER_Peripheral use record
      TMR0    at 16#0# range 0 .. 31;
      CMPRA0  at 16#4# range 0 .. 31;
      CMPRB0  at 16#8# range 0 .. 31;
      CTRL0   at 16#C# range 0 .. 31;
      TMR1    at 16#10# range 0 .. 31;
      CMPRA1  at 16#14# range 0 .. 31;
      CMPRB1  at 16#18# range 0 .. 31;
      CTRL1   at 16#1C# range 0 .. 31;
      TMR2    at 16#20# range 0 .. 31;
      CMPRA2  at 16#24# range 0 .. 31;
      CMPRB2  at 16#28# range 0 .. 31;
      CTRL2   at 16#2C# range 0 .. 31;
      TMR3    at 16#30# range 0 .. 31;
      CMPRA3  at 16#34# range 0 .. 31;
      CMPRB3  at 16#38# range 0 .. 31;
      CTRL3   at 16#3C# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  Counter/Timer
   CTIMER_Periph : aliased CTIMER_Peripheral
     with Import, Address => CTIMER_Base;

end NRF_SVD.CTIMER;
