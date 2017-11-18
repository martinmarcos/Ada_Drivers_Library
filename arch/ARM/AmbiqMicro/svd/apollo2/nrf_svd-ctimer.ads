--

--  This spec has been automatically generated from apollo2.svd

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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK / 4. value.
      Hclk_Div4,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL0_TMRA0CLK_Field use
     (Tmrpin => 0,
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
      Xt => 6,
      Xt_Div2 => 7,
      Xt_Div16 => 8,
      Xt_Div256 => 9,
      Lfrc_Div2 => 10,
      Lfrc_Div32 => 11,
      Lfrc_Div1K => 12,
      Lfrc => 13,
      Rtc_100Hz => 14,
      Hclk_Div4 => 15,
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
      --  Pulse once (aka one-shot). Count to CMPR0A0, assert, count to
      --  CMPR1A0, deassert, stop. value.
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

   --  Counter/Timer A0 Interrupt Enable bit based on COMPR0.
   type CTRL0_TMRA0IE0_Field is
     (
      --  Disable counter/timer A0 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer A0 to generate an interrupt based on COMPR0.
      --  value.
      En)
     with Size => 1;
   for CTRL0_TMRA0IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A0 Interrupt Enable bit based on COMPR1.
   type CTRL0_TMRA0IE1_Field is
     (
      --  Disable counter/timer A0 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer A0 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL0_TMRA0IE1_Field use
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

   --  Counter/Timer A0 Output Enable bit.
   type CTRL0_TMRA0PE_Field is
     (
      --  Counter/Timer A holds the TMRPINA signal at the value TMRA0POL.
      --  value.
      Dis,
      --  Enable counter/timer A0 to generate a signal on TMRPINA. value.
      En)
     with Size => 1;
   for CTRL0_TMRA0PE_Field use
     (Dis => 0,
      En => 1);

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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
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
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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
      --  Pulse once (aka one-shot). Count to CMPR0B0, assert, count to
      --  CMPR1B0, deassert, stop. value.
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

   --  Counter/Timer B0 Interrupt Enable bit for COMPR0.
   type CTRL0_TMRB0IE0_Field is
     (
      --  Disable counter/timer B0 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer B0 to generate an interrupt based on COMPR0
      --  value.
      En)
     with Size => 1;
   for CTRL0_TMRB0IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B0 Interrupt Enable bit for COMPR1.
   type CTRL0_TMRB0IE1_Field is
     (
      --  Disable counter/timer B0 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer B0 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL0_TMRB0IE1_Field use
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
      --  Counter/Timer A0 Interrupt Enable bit based on COMPR0.
      TMRA0IE0       : CTRL0_TMRA0IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A0 Interrupt Enable bit based on COMPR1.
      TMRA0IE1       : CTRL0_TMRA0IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A0 Clear bit.
      TMRA0CLR       : CTRL0_TMRA0CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A0 output polarity.
      TMRA0POL       : CTRL0_TMRA0POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer A0 Output Enable bit.
      TMRA0PE        : CTRL0_TMRA0PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Counter/Timer B0 Enable bit.
      TMRB0EN        : CTRL0_TMRB0EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B0 Clock Select.
      TMRB0CLK       : CTRL0_TMRB0CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B0 Function Select.
      TMRB0FN        : CTRL0_TMRB0FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B0 Interrupt Enable bit for COMPR0.
      TMRB0IE0       : CTRL0_TMRB0IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B0 Interrupt Enable bit for COMPR1.
      TMRB0IE1       : CTRL0_TMRB0IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B0 Clear bit.
      TMRB0CLR       : CTRL0_TMRB0CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B0 output polarity.
      TMRB0POL       : CTRL0_TMRB0POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer B0 Output Enable bit.
      TMRB0PE        : CTRL0_TMRB0PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Counter/Timer A0/B0 Link bit.
      CTLINK0        : CTRL0_CTLINK0_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL0_Register use record
      TMRA0EN        at 0 range 0 .. 0;
      TMRA0CLK       at 0 range 1 .. 5;
      TMRA0FN        at 0 range 6 .. 8;
      TMRA0IE0       at 0 range 9 .. 9;
      TMRA0IE1       at 0 range 10 .. 10;
      TMRA0CLR       at 0 range 11 .. 11;
      TMRA0POL       at 0 range 12 .. 12;
      TMRA0PE        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TMRB0EN        at 0 range 16 .. 16;
      TMRB0CLK       at 0 range 17 .. 21;
      TMRB0FN        at 0 range 22 .. 24;
      TMRB0IE0       at 0 range 25 .. 25;
      TMRB0IE1       at 0 range 26 .. 26;
      TMRB0CLR       at 0 range 27 .. 27;
      TMRB0POL       at 0 range 28 .. 28;
      TMRB0PE        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
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
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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
      --  Pulse once (aka one-shot). Count to CMPR0A1, assert, count to
      --  CMPR1A1, deassert, stop. value.
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

   --  Counter/Timer A1 Interrupt Enable bit based on COMPR0.
   type CTRL1_TMRA1IE0_Field is
     (
      --  Disable counter/timer A1 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer A1 to generate an interrupt based on COMPR0.
      --  value.
      En)
     with Size => 1;
   for CTRL1_TMRA1IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A1 Interrupt Enable bit based on COMPR1.
   type CTRL1_TMRA1IE1_Field is
     (
      --  Disable counter/timer A1 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer A1 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL1_TMRA1IE1_Field use
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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
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
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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
      --  Pulse once (aka one-shot). Count to CMPR0B1, assert, count to
      --  CMPR1B1, deassert, stop. value.
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

   --  Counter/Timer B1 Interrupt Enable bit for COMPR0.
   type CTRL1_TMRB1IE0_Field is
     (
      --  Disable counter/timer B1 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer B1 to generate an interrupt based on COMPR0
      --  value.
      En)
     with Size => 1;
   for CTRL1_TMRB1IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B1 Interrupt Enable bit for COMPR1.
   type CTRL1_TMRB1IE1_Field is
     (
      --  Disable counter/timer B1 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer B1 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL1_TMRB1IE1_Field use
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

   --  Counter/Timer A1/B1 Link bit.
   type CTRL1_CTLINK1_Field is
     (
      --  Use A1/B1 timers as two independent 16-bit timers (default). value.
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
      --  Counter/Timer A1 Interrupt Enable bit based on COMPR0.
      TMRA1IE0       : CTRL1_TMRA1IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A1 Interrupt Enable bit based on COMPR1.
      TMRA1IE1       : CTRL1_TMRA1IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A1 Clear bit.
      TMRA1CLR       : CTRL1_TMRA1CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A1 output polarity.
      TMRA1POL       : CTRL1_TMRA1POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer A1 Output Enable bit.
      TMRA1PE        : CTRL1_TMRA1PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Counter/Timer B1 Enable bit.
      TMRB1EN        : CTRL1_TMRB1EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B1 Clock Select.
      TMRB1CLK       : CTRL1_TMRB1CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B1 Function Select.
      TMRB1FN        : CTRL1_TMRB1FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B1 Interrupt Enable bit for COMPR0.
      TMRB1IE0       : CTRL1_TMRB1IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B1 Interrupt Enable bit for COMPR1.
      TMRB1IE1       : CTRL1_TMRB1IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B1 Clear bit.
      TMRB1CLR       : CTRL1_TMRB1CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B1 output polarity.
      TMRB1POL       : CTRL1_TMRB1POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer B1 Output Enable bit.
      TMRB1PE        : CTRL1_TMRB1PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Counter/Timer A1/B1 Link bit.
      CTLINK1        : CTRL1_CTLINK1_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL1_Register use record
      TMRA1EN        at 0 range 0 .. 0;
      TMRA1CLK       at 0 range 1 .. 5;
      TMRA1FN        at 0 range 6 .. 8;
      TMRA1IE0       at 0 range 9 .. 9;
      TMRA1IE1       at 0 range 10 .. 10;
      TMRA1CLR       at 0 range 11 .. 11;
      TMRA1POL       at 0 range 12 .. 12;
      TMRA1PE        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TMRB1EN        at 0 range 16 .. 16;
      TMRB1CLK       at 0 range 17 .. 21;
      TMRB1FN        at 0 range 22 .. 24;
      TMRB1IE0       at 0 range 25 .. 25;
      TMRB1IE1       at 0 range 26 .. 26;
      TMRB1CLR       at 0 range 27 .. 27;
      TMRB1POL       at 0 range 28 .. 28;
      TMRB1PE        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL2_TMRA2CLK_Field use
     (Tmrpin => 0,
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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

   --  Counter/Timer A2 Function Select.
   type CTRL2_TMRA2FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0A2, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0A2, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0A2, assert, count to
      --  CMPR1A2, deassert, stop. value.
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

   --  Counter/Timer A2 Interrupt Enable bit based on COMPR0.
   type CTRL2_TMRA2IE0_Field is
     (
      --  Disable counter/timer A2 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer A2 to generate an interrupt based on COMPR0.
      --  value.
      En)
     with Size => 1;
   for CTRL2_TMRA2IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A2 Interrupt Enable bit based on COMPR1.
   type CTRL2_TMRA2IE1_Field is
     (
      --  Disable counter/timer A2 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer A2 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL2_TMRA2IE1_Field use
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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream B. value.
      Buckb)
     with Size => 5;
   for CTRL2_TMRB2CLK_Field use
     (Tmrpin => 0,
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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

   --  Counter/Timer B2 Function Select.
   type CTRL2_TMRB2FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0B2, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0B2, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0B2, assert, count to
      --  CMPR1B2, deassert, stop. value.
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

   --  Counter/Timer B2 Interrupt Enable bit for COMPR0.
   type CTRL2_TMRB2IE0_Field is
     (
      --  Disable counter/timer B2 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer B2 to generate an interrupt based on COMPR0
      --  value.
      En)
     with Size => 1;
   for CTRL2_TMRB2IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B2 Interrupt Enable bit for COMPR1.
   type CTRL2_TMRB2IE1_Field is
     (
      --  Disable counter/timer B2 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer B2 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL2_TMRB2IE1_Field use
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

   --  Counter/Timer A2/B2 Link bit.
   type CTRL2_CTLINK2_Field is
     (
      --  Use A2/B2 timers as two independent 16-bit timers (default). value.
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
      --  Counter/Timer A2 Interrupt Enable bit based on COMPR0.
      TMRA2IE0       : CTRL2_TMRA2IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A2 Interrupt Enable bit based on COMPR1.
      TMRA2IE1       : CTRL2_TMRA2IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A2 Clear bit.
      TMRA2CLR       : CTRL2_TMRA2CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A2 output polarity.
      TMRA2POL       : CTRL2_TMRA2POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer A2 Output Enable bit.
      TMRA2PE        : CTRL2_TMRA2PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Counter/Timer B2 Enable bit.
      TMRB2EN        : CTRL2_TMRB2EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B2 Clock Select.
      TMRB2CLK       : CTRL2_TMRB2CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B2 Function Select.
      TMRB2FN        : CTRL2_TMRB2FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B2 Interrupt Enable bit for COMPR0.
      TMRB2IE0       : CTRL2_TMRB2IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B2 Interrupt Enable bit for COMPR1.
      TMRB2IE1       : CTRL2_TMRB2IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B2 Clear bit.
      TMRB2CLR       : CTRL2_TMRB2CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B2 output polarity.
      TMRB2POL       : CTRL2_TMRB2POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer B2 Output Enable bit.
      TMRB2PE        : CTRL2_TMRB2PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Counter/Timer A2/B2 Link bit.
      CTLINK2        : CTRL2_CTLINK2_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL2_Register use record
      TMRA2EN        at 0 range 0 .. 0;
      TMRA2CLK       at 0 range 1 .. 5;
      TMRA2FN        at 0 range 6 .. 8;
      TMRA2IE0       at 0 range 9 .. 9;
      TMRA2IE1       at 0 range 10 .. 10;
      TMRA2CLR       at 0 range 11 .. 11;
      TMRA2POL       at 0 range 12 .. 12;
      TMRA2PE        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TMRB2EN        at 0 range 16 .. 16;
      TMRB2CLK       at 0 range 17 .. 21;
      TMRB2FN        at 0 range 22 .. 24;
      TMRB2IE0       at 0 range 25 .. 25;
      TMRB2IE1       at 0 range 26 .. 26;
      TMRB2CLR       at 0 range 27 .. 27;
      TMRB2POL       at 0 range 28 .. 28;
      TMRB2PE        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream A. value.
      Bucka)
     with Size => 5;
   for CTRL3_TMRA3CLK_Field use
     (Tmrpin => 0,
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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

   --  Counter/Timer A3 Function Select.
   type CTRL3_TMRA3FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0A3, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0A3, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0A3, assert, count to
      --  CMPR1A3, deassert, stop. value.
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

   --  Counter/Timer A3 Interrupt Enable bit based on COMPR0.
   type CTRL3_TMRA3IE0_Field is
     (
      --  Disable counter/timer A3 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer A3 to generate an interrupt based on COMPR0.
      --  value.
      En)
     with Size => 1;
   for CTRL3_TMRA3IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A3 Interrupt Enable bit based on COMPR1.
   type CTRL3_TMRA3IE1_Field is
     (
      --  Disable counter/timer A3 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer A3 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL3_TMRA3IE1_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer A3 Clear bit.
   type CTRL3_TMRA3CLR_Field is
     (
      --  Allow counter/timer A3 to run value.
      Run,
      --  Holds counter/timer A3 at 0x0000. value.
      Clear)
     with Size => 1;
   for CTRL3_TMRA3CLR_Field use
     (Run => 0,
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
      --  Clock source is HFRC / 4 value.
      Hfrc_Div4,
      --  Clock source is HFRC / 16 value.
      Hfrc_Div16,
      --  Clock source is HFRC / 256 value.
      Hfrc_Div256,
      --  Clock source is HFRC / 1024 value.
      Hfrc_Div1024,
      --  Clock source is HFRC / 4096 value.
      Hfrc_Div4K,
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
      --  Clock source is LFRC value.
      Lfrc,
      --  Clock source is 100 Hz from the current RTC oscillator. value.
      Rtc_100Hz,
      --  Clock source is HCLK. value.
      Hclk,
      --  Clock source is buck converter stream B. value.
      Buckb)
     with Size => 5;
   for CTRL3_TMRB3CLK_Field use
     (Tmrpin => 0,
      Hfrc_Div4 => 1,
      Hfrc_Div16 => 2,
      Hfrc_Div256 => 3,
      Hfrc_Div1024 => 4,
      Hfrc_Div4K => 5,
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

   --  Counter/Timer B3 Function Select.
   type CTRL3_TMRB3FN_Field is
     (
      --  Single count (output toggles and sticks). Count to CMPR0B3, stop.
      --  value.
      Singlecount,
      --  Repeated count (periodic 1-clock-cycle-wide pulses). Count to
      --  CMPR0B3, restart. value.
      Repeatedcount,
      --  Pulse once (aka one-shot). Count to CMPR0B3, assert, count to
      --  CMPR1B3, deassert, stop. value.
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

   --  Counter/Timer B3 Interrupt Enable bit for COMPR0.
   type CTRL3_TMRB3IE0_Field is
     (
      --  Disable counter/timer B3 from generating an interrupt based on
      --  COMPR0. value.
      Dis,
      --  Enable counter/timer B3 to generate an interrupt based on COMPR0
      --  value.
      En)
     with Size => 1;
   for CTRL3_TMRB3IE0_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B3 Interrupt Enable bit for COMPR1.
   type CTRL3_TMRB3IE1_Field is
     (
      --  Disable counter/timer B3 from generating an interrupt based on
      --  COMPR1. value.
      Dis,
      --  Enable counter/timer B3 to generate an interrupt based on COMPR1.
      --  value.
      En)
     with Size => 1;
   for CTRL3_TMRB3IE1_Field use
     (Dis => 0,
      En => 1);

   --  Counter/Timer B3 Clear bit.
   type CTRL3_TMRB3CLR_Field is
     (
      --  Allow counter/timer B3 to run value.
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

   --  Counter/Timer A3/B3 Link bit.
   type CTRL3_CTLINK3_Field is
     (
      --  Use A3/B3 timers as two independent 16-bit timers (default). value.
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
      --  Counter/Timer A3 Interrupt Enable bit based on COMPR0.
      TMRA3IE0       : CTRL3_TMRA3IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A3 Interrupt Enable bit based on COMPR1.
      TMRA3IE1       : CTRL3_TMRA3IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer A3 Clear bit.
      TMRA3CLR       : CTRL3_TMRA3CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer A3 output polarity.
      TMRA3POL       : CTRL3_TMRA3POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer A3 Output Enable bit.
      TMRA3PE        : CTRL3_TMRA3PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Special Timer A3 enable for ADC function.
      ADCEN          : Boolean := False;
      --  Counter/Timer B3 Enable bit.
      TMRB3EN        : CTRL3_TMRB3EN_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B3 Clock Select.
      TMRB3CLK       : CTRL3_TMRB3CLK_Field := NRF_SVD.CTIMER.Tmrpin;
      --  Counter/Timer B3 Function Select.
      TMRB3FN        : CTRL3_TMRB3FN_Field := NRF_SVD.CTIMER.Singlecount;
      --  Counter/Timer B3 Interrupt Enable bit for COMPR0.
      TMRB3IE0       : CTRL3_TMRB3IE0_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B3 Interrupt Enable bit for COMPR1.
      TMRB3IE1       : CTRL3_TMRB3IE1_Field := NRF_SVD.CTIMER.Dis;
      --  Counter/Timer B3 Clear bit.
      TMRB3CLR       : CTRL3_TMRB3CLR_Field := NRF_SVD.CTIMER.Run;
      --  Counter/Timer B3 output polarity.
      TMRB3POL       : CTRL3_TMRB3POL_Field := NRF_SVD.CTIMER.Normal;
      --  Counter/Timer B3 Output Enable bit.
      TMRB3PE        : CTRL3_TMRB3PE_Field := NRF_SVD.CTIMER.Dis;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Counter/Timer A3/B3 Link bit.
      CTLINK3        : CTRL3_CTLINK3_Field := NRF_SVD.CTIMER.Two_16Bit_Timers;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL3_Register use record
      TMRA3EN        at 0 range 0 .. 0;
      TMRA3CLK       at 0 range 1 .. 5;
      TMRA3FN        at 0 range 6 .. 8;
      TMRA3IE0       at 0 range 9 .. 9;
      TMRA3IE1       at 0 range 10 .. 10;
      TMRA3CLR       at 0 range 11 .. 11;
      TMRA3POL       at 0 range 12 .. 12;
      TMRA3PE        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ADCEN          at 0 range 15 .. 15;
      TMRB3EN        at 0 range 16 .. 16;
      TMRB3CLK       at 0 range 17 .. 21;
      TMRB3FN        at 0 range 22 .. 24;
      TMRB3IE0       at 0 range 25 .. 25;
      TMRB3IE1       at 0 range 26 .. 26;
      TMRB3CLR       at 0 range 27 .. 27;
      TMRB3POL       at 0 range 28 .. 28;
      TMRB3PE        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      CTLINK3        at 0 range 31 .. 31;
   end record;

   --  Selects an appropriate clock source and divider to use for the System
   --  Timer clock.
   type STCFG_CLKSEL_Field is
     (
      --  No clock enabled. value.
      Noclk,
      --  3MHz from the HFRC clock divider. value.
      Hfrc_Div16,
      --  187.5KHz from the HFRC clock divider. value.
      Hfrc_Div256,
      --  32768Hz from the crystal oscillator. value.
      Xtal_Div1,
      --  16384Hz from the crystal oscillator. value.
      Xtal_Div2,
      --  1024Hz from the crystal oscillator. value.
      Xtal_Div32,
      --  Approximately 1KHz from the LFRC oscillator (uncalibrated). value.
      Lfrc_Div1,
      --  Use CTIMER 0 section A as a prescaler for the clock source. value.
      Ctimer0A,
      --  Use CTIMER 0 section B (or A and B linked together) as a prescaler
      --  for the clock source. value.
      Ctimer0B)
     with Size => 4;
   for STCFG_CLKSEL_Field use
     (Noclk => 0,
      Hfrc_Div16 => 1,
      Hfrc_Div256 => 2,
      Xtal_Div1 => 3,
      Xtal_Div2 => 4,
      Xtal_Div32 => 5,
      Lfrc_Div1 => 6,
      Ctimer0A => 7,
      Ctimer0B => 8);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_A_EN_Field is
     (
      --  Compare A disabled. value.
      Disable,
      --  Compare A enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_A_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_B_EN_Field is
     (
      --  Compare B disabled. value.
      Disable,
      --  Compare B enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_B_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_C_EN_Field is
     (
      --  Compare C disabled. value.
      Disable,
      --  Compare C enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_C_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_D_EN_Field is
     (
      --  Compare D disabled. value.
      Disable,
      --  Compare D enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_D_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_E_EN_Field is
     (
      --  Compare E disabled. value.
      Disable,
      --  Compare E enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_E_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_F_EN_Field is
     (
      --  Compare F disabled. value.
      Disable,
      --  Compare F enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_F_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_G_EN_Field is
     (
      --  Compare G disabled. value.
      Disable,
      --  Compare G enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_G_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether compare is enabled for the corresponding SCMPR register.
   --  If compare is enabled, the interrupt status is set once the comparision
   --  is met.
   type STCFG_COMPARE_H_EN_Field is
     (
      --  Compare H disabled. value.
      Disable,
      --  Compare H enabled. value.
      Enable)
     with Size => 1;
   for STCFG_COMPARE_H_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Set this bit to one to clear the System Timer register. If this bit is
   --  set to '1', the system timer register will stay cleared. It needs to be
   --  set to '0' for the system timer to start running.
   type STCFG_CLEAR_Field is
     (
      --  Let the COUNTER register run on its input clock. value.
      Run,
      --  Stop the COUNTER register for loading. value.
      Clear)
     with Size => 1;
   for STCFG_CLEAR_Field use
     (Run => 0,
      Clear => 1);

   --  Set this bit to one to freeze the clock input to the COUNTER register.
   --  Once frozen, the value can be safely written from the MCU. Unfreeze to
   --  resume.
   type STCFG_FREEZE_Field is
     (
      --  Let the COUNTER register run on its input clock. value.
      Thaw,
      --  Stop the COUNTER register for loading. value.
      Freeze)
     with Size => 1;
   for STCFG_FREEZE_Field use
     (Thaw => 0,
      Freeze => 1);

   --  Configuration Register
   type STCFG_Register is record
      --  Selects an appropriate clock source and divider to use for the System
      --  Timer clock.
      CLKSEL         : STCFG_CLKSEL_Field := NRF_SVD.CTIMER.Noclk;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_A_EN   : STCFG_COMPARE_A_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_B_EN   : STCFG_COMPARE_B_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_C_EN   : STCFG_COMPARE_C_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_D_EN   : STCFG_COMPARE_D_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_E_EN   : STCFG_COMPARE_E_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_F_EN   : STCFG_COMPARE_F_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_G_EN   : STCFG_COMPARE_G_EN_Field := NRF_SVD.CTIMER.Disable;
      --  Selects whether compare is enabled for the corresponding SCMPR
      --  register. If compare is enabled, the interrupt status is set once the
      --  comparision is met.
      COMPARE_H_EN   : STCFG_COMPARE_H_EN_Field := NRF_SVD.CTIMER.Disable;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  Set this bit to one to clear the System Timer register. If this bit
      --  is set to '1', the system timer register will stay cleared. It needs
      --  to be set to '0' for the system timer to start running.
      CLEAR          : STCFG_CLEAR_Field := NRF_SVD.CTIMER.Run;
      --  Set this bit to one to freeze the clock input to the COUNTER
      --  register. Once frozen, the value can be safely written from the MCU.
      --  Unfreeze to resume.
      FREEZE         : STCFG_FREEZE_Field := NRF_SVD.CTIMER.Freeze;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCFG_Register use record
      CLKSEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      COMPARE_A_EN   at 0 range 8 .. 8;
      COMPARE_B_EN   at 0 range 9 .. 9;
      COMPARE_C_EN   at 0 range 10 .. 10;
      COMPARE_D_EN   at 0 range 11 .. 11;
      COMPARE_E_EN   at 0 range 12 .. 12;
      COMPARE_F_EN   at 0 range 13 .. 13;
      COMPARE_G_EN   at 0 range 14 .. 14;
      COMPARE_H_EN   at 0 range 15 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      CLEAR          at 0 range 30 .. 30;
      FREEZE         at 0 range 31 .. 31;
   end record;

   --  Selects whether capture is enabled for the specified capture register.
   type CAPTURE_CONTROL_CAPTURE_A_Field is
     (
      --  Capture function disabled. value.
      Disable,
      --  Capture function enabled. value.
      Enable)
     with Size => 1;
   for CAPTURE_CONTROL_CAPTURE_A_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether capture is enabled for the specified capture register.
   type CAPTURE_CONTROL_CAPTURE_B_Field is
     (
      --  Capture function disabled. value.
      Disable,
      --  Capture function enabled. value.
      Enable)
     with Size => 1;
   for CAPTURE_CONTROL_CAPTURE_B_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether capture is enabled for the specified capture register.
   type CAPTURE_CONTROL_CAPTURE_C_Field is
     (
      --  Capture function disabled. value.
      Disable,
      --  Capture function enabled. value.
      Enable)
     with Size => 1;
   for CAPTURE_CONTROL_CAPTURE_C_Field use
     (Disable => 0,
      Enable => 1);

   --  Selects whether capture is enabled for the specified capture register.
   type CAPTURE_CONTROL_CAPTURE_D_Field is
     (
      --  Capture function disabled. value.
      Disable,
      --  Capture function enabled. value.
      Enable)
     with Size => 1;
   for CAPTURE_CONTROL_CAPTURE_D_Field use
     (Disable => 0,
      Enable => 1);

   --  Capture Control Register
   type CAPTURE_CONTROL_Register is record
      --  Selects whether capture is enabled for the specified capture
      --  register.
      CAPTURE_A     : CAPTURE_CONTROL_CAPTURE_A_Field :=
                       NRF_SVD.CTIMER.Disable;
      --  Selects whether capture is enabled for the specified capture
      --  register.
      CAPTURE_B     : CAPTURE_CONTROL_CAPTURE_B_Field :=
                       NRF_SVD.CTIMER.Disable;
      --  Selects whether capture is enabled for the specified capture
      --  register.
      CAPTURE_C     : CAPTURE_CONTROL_CAPTURE_C_Field :=
                       NRF_SVD.CTIMER.Disable;
      --  Selects whether capture is enabled for the specified capture
      --  register.
      CAPTURE_D     : CAPTURE_CONTROL_CAPTURE_D_Field :=
                       NRF_SVD.CTIMER.Disable;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPTURE_CONTROL_Register use record
      CAPTURE_A     at 0 range 0 .. 0;
      CAPTURE_B     at 0 range 1 .. 1;
      CAPTURE_C     at 0 range 2 .. 2;
      CAPTURE_D     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Counter/Timer Interrupts: Enable
   type INTEN_Register is record
      --  Counter/Timer A0 interrupt based on COMPR0.
      CTMRA0C0INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR0.
      CTMRB0C0INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR0.
      CTMRA1C0INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR0.
      CTMRB1C0INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR0.
      CTMRA2C0INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR0.
      CTMRB2C0INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR0.
      CTMRA3C0INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR0.
      CTMRB3C0INT    : Boolean := False;
      --  Counter/Timer A0 interrupt based on COMPR1.
      CTMRA0C1INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR1.
      CTMRB0C1INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR1.
      CTMRA1C1INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR1.
      CTMRB1C1INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR1.
      CTMRA2C1INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR1.
      CTMRB2C1INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR1.
      CTMRA3C1INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR1.
      CTMRB3C1INT    : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      CTMRA0C0INT    at 0 range 0 .. 0;
      CTMRB0C0INT    at 0 range 1 .. 1;
      CTMRA1C0INT    at 0 range 2 .. 2;
      CTMRB1C0INT    at 0 range 3 .. 3;
      CTMRA2C0INT    at 0 range 4 .. 4;
      CTMRB2C0INT    at 0 range 5 .. 5;
      CTMRA3C0INT    at 0 range 6 .. 6;
      CTMRB3C0INT    at 0 range 7 .. 7;
      CTMRA0C1INT    at 0 range 8 .. 8;
      CTMRB0C1INT    at 0 range 9 .. 9;
      CTMRA1C1INT    at 0 range 10 .. 10;
      CTMRB1C1INT    at 0 range 11 .. 11;
      CTMRA2C1INT    at 0 range 12 .. 12;
      CTMRB2C1INT    at 0 range 13 .. 13;
      CTMRA3C1INT    at 0 range 14 .. 14;
      CTMRB3C1INT    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer Interrupts: Status
   type INTSTAT_Register is record
      --  Counter/Timer A0 interrupt based on COMPR0.
      CTMRA0C0INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR0.
      CTMRB0C0INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR0.
      CTMRA1C0INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR0.
      CTMRB1C0INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR0.
      CTMRA2C0INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR0.
      CTMRB2C0INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR0.
      CTMRA3C0INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR0.
      CTMRB3C0INT    : Boolean := False;
      --  Counter/Timer A0 interrupt based on COMPR1.
      CTMRA0C1INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR1.
      CTMRB0C1INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR1.
      CTMRA1C1INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR1.
      CTMRB1C1INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR1.
      CTMRA2C1INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR1.
      CTMRB2C1INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR1.
      CTMRA3C1INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR1.
      CTMRB3C1INT    : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      CTMRA0C0INT    at 0 range 0 .. 0;
      CTMRB0C0INT    at 0 range 1 .. 1;
      CTMRA1C0INT    at 0 range 2 .. 2;
      CTMRB1C0INT    at 0 range 3 .. 3;
      CTMRA2C0INT    at 0 range 4 .. 4;
      CTMRB2C0INT    at 0 range 5 .. 5;
      CTMRA3C0INT    at 0 range 6 .. 6;
      CTMRB3C0INT    at 0 range 7 .. 7;
      CTMRA0C1INT    at 0 range 8 .. 8;
      CTMRB0C1INT    at 0 range 9 .. 9;
      CTMRA1C1INT    at 0 range 10 .. 10;
      CTMRB1C1INT    at 0 range 11 .. 11;
      CTMRA2C1INT    at 0 range 12 .. 12;
      CTMRB2C1INT    at 0 range 13 .. 13;
      CTMRA3C1INT    at 0 range 14 .. 14;
      CTMRB3C1INT    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer Interrupts: Clear
   type INTCLR_Register is record
      --  Counter/Timer A0 interrupt based on COMPR0.
      CTMRA0C0INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR0.
      CTMRB0C0INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR0.
      CTMRA1C0INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR0.
      CTMRB1C0INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR0.
      CTMRA2C0INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR0.
      CTMRB2C0INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR0.
      CTMRA3C0INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR0.
      CTMRB3C0INT    : Boolean := False;
      --  Counter/Timer A0 interrupt based on COMPR1.
      CTMRA0C1INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR1.
      CTMRB0C1INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR1.
      CTMRA1C1INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR1.
      CTMRB1C1INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR1.
      CTMRA2C1INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR1.
      CTMRB2C1INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR1.
      CTMRA3C1INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR1.
      CTMRB3C1INT    : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      CTMRA0C0INT    at 0 range 0 .. 0;
      CTMRB0C0INT    at 0 range 1 .. 1;
      CTMRA1C0INT    at 0 range 2 .. 2;
      CTMRB1C0INT    at 0 range 3 .. 3;
      CTMRA2C0INT    at 0 range 4 .. 4;
      CTMRB2C0INT    at 0 range 5 .. 5;
      CTMRA3C0INT    at 0 range 6 .. 6;
      CTMRB3C0INT    at 0 range 7 .. 7;
      CTMRA0C1INT    at 0 range 8 .. 8;
      CTMRB0C1INT    at 0 range 9 .. 9;
      CTMRA1C1INT    at 0 range 10 .. 10;
      CTMRB1C1INT    at 0 range 11 .. 11;
      CTMRA2C1INT    at 0 range 12 .. 12;
      CTMRB2C1INT    at 0 range 13 .. 13;
      CTMRA3C1INT    at 0 range 14 .. 14;
      CTMRB3C1INT    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter/Timer Interrupts: Set
   type INTSET_Register is record
      --  Counter/Timer A0 interrupt based on COMPR0.
      CTMRA0C0INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR0.
      CTMRB0C0INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR0.
      CTMRA1C0INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR0.
      CTMRB1C0INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR0.
      CTMRA2C0INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR0.
      CTMRB2C0INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR0.
      CTMRA3C0INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR0.
      CTMRB3C0INT    : Boolean := False;
      --  Counter/Timer A0 interrupt based on COMPR1.
      CTMRA0C1INT    : Boolean := False;
      --  Counter/Timer B0 interrupt based on COMPR1.
      CTMRB0C1INT    : Boolean := False;
      --  Counter/Timer A1 interrupt based on COMPR1.
      CTMRA1C1INT    : Boolean := False;
      --  Counter/Timer B1 interrupt based on COMPR1.
      CTMRB1C1INT    : Boolean := False;
      --  Counter/Timer A2 interrupt based on COMPR1.
      CTMRA2C1INT    : Boolean := False;
      --  Counter/Timer B2 interrupt based on COMPR1.
      CTMRB2C1INT    : Boolean := False;
      --  Counter/Timer A3 interrupt based on COMPR1.
      CTMRA3C1INT    : Boolean := False;
      --  Counter/Timer B3 interrupt based on COMPR1.
      CTMRB3C1INT    : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      CTMRA0C0INT    at 0 range 0 .. 0;
      CTMRB0C0INT    at 0 range 1 .. 1;
      CTMRA1C0INT    at 0 range 2 .. 2;
      CTMRB1C0INT    at 0 range 3 .. 3;
      CTMRA2C0INT    at 0 range 4 .. 4;
      CTMRB2C0INT    at 0 range 5 .. 5;
      CTMRA3C0INT    at 0 range 6 .. 6;
      CTMRB3C0INT    at 0 range 7 .. 7;
      CTMRA0C1INT    at 0 range 8 .. 8;
      CTMRB0C1INT    at 0 range 9 .. 9;
      CTMRA1C1INT    at 0 range 10 .. 10;
      CTMRB1C1INT    at 0 range 11 .. 11;
      CTMRA2C1INT    at 0 range 12 .. 12;
      CTMRB2C1INT    at 0 range 13 .. 13;
      CTMRA3C1INT    at 0 range 14 .. 14;
      CTMRB3C1INT    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  COUNTER is greater than or equal to COMPARE register A.
   type STMINTEN_COMPAREA_Field is
     (
      --  Reset value for the field
      Stminten_Comparea_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREA_Field use
     (Stminten_Comparea_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register B.
   type STMINTEN_COMPAREB_Field is
     (
      --  Reset value for the field
      Stminten_Compareb_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREB_Field use
     (Stminten_Compareb_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register C.
   type STMINTEN_COMPAREC_Field is
     (
      --  Reset value for the field
      Stminten_Comparec_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREC_Field use
     (Stminten_Comparec_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register D.
   type STMINTEN_COMPARED_Field is
     (
      --  Reset value for the field
      Stminten_Compared_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPARED_Field use
     (Stminten_Compared_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register E.
   type STMINTEN_COMPAREE_Field is
     (
      --  Reset value for the field
      Stminten_Comparee_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREE_Field use
     (Stminten_Comparee_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register F.
   type STMINTEN_COMPAREF_Field is
     (
      --  Reset value for the field
      Stminten_Comparef_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREF_Field use
     (Stminten_Comparef_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register G.
   type STMINTEN_COMPAREG_Field is
     (
      --  Reset value for the field
      Stminten_Compareg_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREG_Field use
     (Stminten_Compareg_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register H.
   type STMINTEN_COMPAREH_Field is
     (
      --  Reset value for the field
      Stminten_Compareh_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTEN_COMPAREH_Field use
     (Stminten_Compareh_Field_Reset => 0,
      Compared => 1);

   --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
   type STMINTEN_OVERFLOW_Field is
     (
      --  Reset value for the field
      Stminten_Overflow_Field_Reset,
      --  Overflow interrupt status bit was set. value.
      Oflow_Int)
     with Size => 1;
   for STMINTEN_OVERFLOW_Field use
     (Stminten_Overflow_Field_Reset => 0,
      Oflow_Int => 1);

   --  CAPTURE register A has grabbed the value in the counter
   type STMINTEN_CAPTUREA_Field is
     (
      --  Reset value for the field
      Stminten_Capturea_Field_Reset,
      --  CAPTURE A interrupt status bit was set. value.
      Capa_Int)
     with Size => 1;
   for STMINTEN_CAPTUREA_Field use
     (Stminten_Capturea_Field_Reset => 0,
      Capa_Int => 1);

   --  CAPTURE register B has grabbed the value in the counter
   type STMINTEN_CAPTUREB_Field is
     (
      --  Reset value for the field
      Stminten_Captureb_Field_Reset,
      --  CAPTURE B interrupt status bit was set. value.
      Capb_Int)
     with Size => 1;
   for STMINTEN_CAPTUREB_Field use
     (Stminten_Captureb_Field_Reset => 0,
      Capb_Int => 1);

   --  CAPTURE register C has grabbed the value in the counter
   type STMINTEN_CAPTUREC_Field is
     (
      --  Reset value for the field
      Stminten_Capturec_Field_Reset,
      --  CAPTURE C interrupt status bit was set. value.
      Capc_Int)
     with Size => 1;
   for STMINTEN_CAPTUREC_Field use
     (Stminten_Capturec_Field_Reset => 0,
      Capc_Int => 1);

   --  CAPTURE register D has grabbed the value in the counter
   type STMINTEN_CAPTURED_Field is
     (
      --  Reset value for the field
      Stminten_Captured_Field_Reset,
      --  Capture D interrupt status bit was set. value.
      Capd_Int)
     with Size => 1;
   for STMINTEN_CAPTURED_Field use
     (Stminten_Captured_Field_Reset => 0,
      Capd_Int => 1);

   --  STIMER Interrupt registers: Enable
   type STMINTEN_Register is record
      --  COUNTER is greater than or equal to COMPARE register A.
      COMPAREA       : STMINTEN_COMPAREA_Field :=
                        Stminten_Comparea_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register B.
      COMPAREB       : STMINTEN_COMPAREB_Field :=
                        Stminten_Compareb_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register C.
      COMPAREC       : STMINTEN_COMPAREC_Field :=
                        Stminten_Comparec_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register D.
      COMPARED       : STMINTEN_COMPARED_Field :=
                        Stminten_Compared_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register E.
      COMPAREE       : STMINTEN_COMPAREE_Field :=
                        Stminten_Comparee_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register F.
      COMPAREF       : STMINTEN_COMPAREF_Field :=
                        Stminten_Comparef_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register G.
      COMPAREG       : STMINTEN_COMPAREG_Field :=
                        Stminten_Compareg_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register H.
      COMPAREH       : STMINTEN_COMPAREH_Field :=
                        Stminten_Compareh_Field_Reset;
      --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
      OVERFLOW       : STMINTEN_OVERFLOW_Field :=
                        Stminten_Overflow_Field_Reset;
      --  CAPTURE register A has grabbed the value in the counter
      CAPTUREA       : STMINTEN_CAPTUREA_Field :=
                        Stminten_Capturea_Field_Reset;
      --  CAPTURE register B has grabbed the value in the counter
      CAPTUREB       : STMINTEN_CAPTUREB_Field :=
                        Stminten_Captureb_Field_Reset;
      --  CAPTURE register C has grabbed the value in the counter
      CAPTUREC       : STMINTEN_CAPTUREC_Field :=
                        Stminten_Capturec_Field_Reset;
      --  CAPTURE register D has grabbed the value in the counter
      CAPTURED       : STMINTEN_CAPTURED_Field :=
                        Stminten_Captured_Field_Reset;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STMINTEN_Register use record
      COMPAREA       at 0 range 0 .. 0;
      COMPAREB       at 0 range 1 .. 1;
      COMPAREC       at 0 range 2 .. 2;
      COMPARED       at 0 range 3 .. 3;
      COMPAREE       at 0 range 4 .. 4;
      COMPAREF       at 0 range 5 .. 5;
      COMPAREG       at 0 range 6 .. 6;
      COMPAREH       at 0 range 7 .. 7;
      OVERFLOW       at 0 range 8 .. 8;
      CAPTUREA       at 0 range 9 .. 9;
      CAPTUREB       at 0 range 10 .. 10;
      CAPTUREC       at 0 range 11 .. 11;
      CAPTURED       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  COUNTER is greater than or equal to COMPARE register A.
   type STMINTSTAT_COMPAREA_Field is
     (
      --  Reset value for the field
      Stmintstat_Comparea_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREA_Field use
     (Stmintstat_Comparea_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register B.
   type STMINTSTAT_COMPAREB_Field is
     (
      --  Reset value for the field
      Stmintstat_Compareb_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREB_Field use
     (Stmintstat_Compareb_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register C.
   type STMINTSTAT_COMPAREC_Field is
     (
      --  Reset value for the field
      Stmintstat_Comparec_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREC_Field use
     (Stmintstat_Comparec_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register D.
   type STMINTSTAT_COMPARED_Field is
     (
      --  Reset value for the field
      Stmintstat_Compared_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPARED_Field use
     (Stmintstat_Compared_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register E.
   type STMINTSTAT_COMPAREE_Field is
     (
      --  Reset value for the field
      Stmintstat_Comparee_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREE_Field use
     (Stmintstat_Comparee_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register F.
   type STMINTSTAT_COMPAREF_Field is
     (
      --  Reset value for the field
      Stmintstat_Comparef_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREF_Field use
     (Stmintstat_Comparef_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register G.
   type STMINTSTAT_COMPAREG_Field is
     (
      --  Reset value for the field
      Stmintstat_Compareg_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREG_Field use
     (Stmintstat_Compareg_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register H.
   type STMINTSTAT_COMPAREH_Field is
     (
      --  Reset value for the field
      Stmintstat_Compareh_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSTAT_COMPAREH_Field use
     (Stmintstat_Compareh_Field_Reset => 0,
      Compared => 1);

   --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
   type STMINTSTAT_OVERFLOW_Field is
     (
      --  Reset value for the field
      Stmintstat_Overflow_Field_Reset,
      --  Overflow interrupt status bit was set. value.
      Oflow_Int)
     with Size => 1;
   for STMINTSTAT_OVERFLOW_Field use
     (Stmintstat_Overflow_Field_Reset => 0,
      Oflow_Int => 1);

   --  CAPTURE register A has grabbed the value in the counter
   type STMINTSTAT_CAPTUREA_Field is
     (
      --  Reset value for the field
      Stmintstat_Capturea_Field_Reset,
      --  CAPTURE A interrupt status bit was set. value.
      Capa_Int)
     with Size => 1;
   for STMINTSTAT_CAPTUREA_Field use
     (Stmintstat_Capturea_Field_Reset => 0,
      Capa_Int => 1);

   --  CAPTURE register B has grabbed the value in the counter
   type STMINTSTAT_CAPTUREB_Field is
     (
      --  Reset value for the field
      Stmintstat_Captureb_Field_Reset,
      --  CAPTURE B interrupt status bit was set. value.
      Capb_Int)
     with Size => 1;
   for STMINTSTAT_CAPTUREB_Field use
     (Stmintstat_Captureb_Field_Reset => 0,
      Capb_Int => 1);

   --  CAPTURE register C has grabbed the value in the counter
   type STMINTSTAT_CAPTUREC_Field is
     (
      --  Reset value for the field
      Stmintstat_Capturec_Field_Reset,
      --  CAPTURE C interrupt status bit was set. value.
      Capc_Int)
     with Size => 1;
   for STMINTSTAT_CAPTUREC_Field use
     (Stmintstat_Capturec_Field_Reset => 0,
      Capc_Int => 1);

   --  CAPTURE register D has grabbed the value in the counter
   type STMINTSTAT_CAPTURED_Field is
     (
      --  Reset value for the field
      Stmintstat_Captured_Field_Reset,
      --  Capture D interrupt status bit was set. value.
      Capd_Int)
     with Size => 1;
   for STMINTSTAT_CAPTURED_Field use
     (Stmintstat_Captured_Field_Reset => 0,
      Capd_Int => 1);

   --  STIMER Interrupt registers: Status
   type STMINTSTAT_Register is record
      --  COUNTER is greater than or equal to COMPARE register A.
      COMPAREA       : STMINTSTAT_COMPAREA_Field :=
                        Stmintstat_Comparea_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register B.
      COMPAREB       : STMINTSTAT_COMPAREB_Field :=
                        Stmintstat_Compareb_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register C.
      COMPAREC       : STMINTSTAT_COMPAREC_Field :=
                        Stmintstat_Comparec_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register D.
      COMPARED       : STMINTSTAT_COMPARED_Field :=
                        Stmintstat_Compared_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register E.
      COMPAREE       : STMINTSTAT_COMPAREE_Field :=
                        Stmintstat_Comparee_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register F.
      COMPAREF       : STMINTSTAT_COMPAREF_Field :=
                        Stmintstat_Comparef_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register G.
      COMPAREG       : STMINTSTAT_COMPAREG_Field :=
                        Stmintstat_Compareg_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register H.
      COMPAREH       : STMINTSTAT_COMPAREH_Field :=
                        Stmintstat_Compareh_Field_Reset;
      --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
      OVERFLOW       : STMINTSTAT_OVERFLOW_Field :=
                        Stmintstat_Overflow_Field_Reset;
      --  CAPTURE register A has grabbed the value in the counter
      CAPTUREA       : STMINTSTAT_CAPTUREA_Field :=
                        Stmintstat_Capturea_Field_Reset;
      --  CAPTURE register B has grabbed the value in the counter
      CAPTUREB       : STMINTSTAT_CAPTUREB_Field :=
                        Stmintstat_Captureb_Field_Reset;
      --  CAPTURE register C has grabbed the value in the counter
      CAPTUREC       : STMINTSTAT_CAPTUREC_Field :=
                        Stmintstat_Capturec_Field_Reset;
      --  CAPTURE register D has grabbed the value in the counter
      CAPTURED       : STMINTSTAT_CAPTURED_Field :=
                        Stmintstat_Captured_Field_Reset;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STMINTSTAT_Register use record
      COMPAREA       at 0 range 0 .. 0;
      COMPAREB       at 0 range 1 .. 1;
      COMPAREC       at 0 range 2 .. 2;
      COMPARED       at 0 range 3 .. 3;
      COMPAREE       at 0 range 4 .. 4;
      COMPAREF       at 0 range 5 .. 5;
      COMPAREG       at 0 range 6 .. 6;
      COMPAREH       at 0 range 7 .. 7;
      OVERFLOW       at 0 range 8 .. 8;
      CAPTUREA       at 0 range 9 .. 9;
      CAPTUREB       at 0 range 10 .. 10;
      CAPTUREC       at 0 range 11 .. 11;
      CAPTURED       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  COUNTER is greater than or equal to COMPARE register A.
   type STMINTCLR_COMPAREA_Field is
     (
      --  Reset value for the field
      Stmintclr_Comparea_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREA_Field use
     (Stmintclr_Comparea_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register B.
   type STMINTCLR_COMPAREB_Field is
     (
      --  Reset value for the field
      Stmintclr_Compareb_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREB_Field use
     (Stmintclr_Compareb_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register C.
   type STMINTCLR_COMPAREC_Field is
     (
      --  Reset value for the field
      Stmintclr_Comparec_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREC_Field use
     (Stmintclr_Comparec_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register D.
   type STMINTCLR_COMPARED_Field is
     (
      --  Reset value for the field
      Stmintclr_Compared_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPARED_Field use
     (Stmintclr_Compared_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register E.
   type STMINTCLR_COMPAREE_Field is
     (
      --  Reset value for the field
      Stmintclr_Comparee_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREE_Field use
     (Stmintclr_Comparee_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register F.
   type STMINTCLR_COMPAREF_Field is
     (
      --  Reset value for the field
      Stmintclr_Comparef_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREF_Field use
     (Stmintclr_Comparef_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register G.
   type STMINTCLR_COMPAREG_Field is
     (
      --  Reset value for the field
      Stmintclr_Compareg_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREG_Field use
     (Stmintclr_Compareg_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register H.
   type STMINTCLR_COMPAREH_Field is
     (
      --  Reset value for the field
      Stmintclr_Compareh_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTCLR_COMPAREH_Field use
     (Stmintclr_Compareh_Field_Reset => 0,
      Compared => 1);

   --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
   type STMINTCLR_OVERFLOW_Field is
     (
      --  Reset value for the field
      Stmintclr_Overflow_Field_Reset,
      --  Overflow interrupt status bit was set. value.
      Oflow_Int)
     with Size => 1;
   for STMINTCLR_OVERFLOW_Field use
     (Stmintclr_Overflow_Field_Reset => 0,
      Oflow_Int => 1);

   --  CAPTURE register A has grabbed the value in the counter
   type STMINTCLR_CAPTUREA_Field is
     (
      --  Reset value for the field
      Stmintclr_Capturea_Field_Reset,
      --  CAPTURE A interrupt status bit was set. value.
      Capa_Int)
     with Size => 1;
   for STMINTCLR_CAPTUREA_Field use
     (Stmintclr_Capturea_Field_Reset => 0,
      Capa_Int => 1);

   --  CAPTURE register B has grabbed the value in the counter
   type STMINTCLR_CAPTUREB_Field is
     (
      --  Reset value for the field
      Stmintclr_Captureb_Field_Reset,
      --  CAPTURE B interrupt status bit was set. value.
      Capb_Int)
     with Size => 1;
   for STMINTCLR_CAPTUREB_Field use
     (Stmintclr_Captureb_Field_Reset => 0,
      Capb_Int => 1);

   --  CAPTURE register C has grabbed the value in the counter
   type STMINTCLR_CAPTUREC_Field is
     (
      --  Reset value for the field
      Stmintclr_Capturec_Field_Reset,
      --  CAPTURE C interrupt status bit was set. value.
      Capc_Int)
     with Size => 1;
   for STMINTCLR_CAPTUREC_Field use
     (Stmintclr_Capturec_Field_Reset => 0,
      Capc_Int => 1);

   --  CAPTURE register D has grabbed the value in the counter
   type STMINTCLR_CAPTURED_Field is
     (
      --  Reset value for the field
      Stmintclr_Captured_Field_Reset,
      --  Capture D interrupt status bit was set. value.
      Capd_Int)
     with Size => 1;
   for STMINTCLR_CAPTURED_Field use
     (Stmintclr_Captured_Field_Reset => 0,
      Capd_Int => 1);

   --  STIMER Interrupt registers: Clear
   type STMINTCLR_Register is record
      --  COUNTER is greater than or equal to COMPARE register A.
      COMPAREA       : STMINTCLR_COMPAREA_Field :=
                        Stmintclr_Comparea_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register B.
      COMPAREB       : STMINTCLR_COMPAREB_Field :=
                        Stmintclr_Compareb_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register C.
      COMPAREC       : STMINTCLR_COMPAREC_Field :=
                        Stmintclr_Comparec_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register D.
      COMPARED       : STMINTCLR_COMPARED_Field :=
                        Stmintclr_Compared_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register E.
      COMPAREE       : STMINTCLR_COMPAREE_Field :=
                        Stmintclr_Comparee_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register F.
      COMPAREF       : STMINTCLR_COMPAREF_Field :=
                        Stmintclr_Comparef_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register G.
      COMPAREG       : STMINTCLR_COMPAREG_Field :=
                        Stmintclr_Compareg_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register H.
      COMPAREH       : STMINTCLR_COMPAREH_Field :=
                        Stmintclr_Compareh_Field_Reset;
      --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
      OVERFLOW       : STMINTCLR_OVERFLOW_Field :=
                        Stmintclr_Overflow_Field_Reset;
      --  CAPTURE register A has grabbed the value in the counter
      CAPTUREA       : STMINTCLR_CAPTUREA_Field :=
                        Stmintclr_Capturea_Field_Reset;
      --  CAPTURE register B has grabbed the value in the counter
      CAPTUREB       : STMINTCLR_CAPTUREB_Field :=
                        Stmintclr_Captureb_Field_Reset;
      --  CAPTURE register C has grabbed the value in the counter
      CAPTUREC       : STMINTCLR_CAPTUREC_Field :=
                        Stmintclr_Capturec_Field_Reset;
      --  CAPTURE register D has grabbed the value in the counter
      CAPTURED       : STMINTCLR_CAPTURED_Field :=
                        Stmintclr_Captured_Field_Reset;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STMINTCLR_Register use record
      COMPAREA       at 0 range 0 .. 0;
      COMPAREB       at 0 range 1 .. 1;
      COMPAREC       at 0 range 2 .. 2;
      COMPARED       at 0 range 3 .. 3;
      COMPAREE       at 0 range 4 .. 4;
      COMPAREF       at 0 range 5 .. 5;
      COMPAREG       at 0 range 6 .. 6;
      COMPAREH       at 0 range 7 .. 7;
      OVERFLOW       at 0 range 8 .. 8;
      CAPTUREA       at 0 range 9 .. 9;
      CAPTUREB       at 0 range 10 .. 10;
      CAPTUREC       at 0 range 11 .. 11;
      CAPTURED       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  COUNTER is greater than or equal to COMPARE register A.
   type STMINTSET_COMPAREA_Field is
     (
      --  Reset value for the field
      Stmintset_Comparea_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREA_Field use
     (Stmintset_Comparea_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register B.
   type STMINTSET_COMPAREB_Field is
     (
      --  Reset value for the field
      Stmintset_Compareb_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREB_Field use
     (Stmintset_Compareb_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register C.
   type STMINTSET_COMPAREC_Field is
     (
      --  Reset value for the field
      Stmintset_Comparec_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREC_Field use
     (Stmintset_Comparec_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register D.
   type STMINTSET_COMPARED_Field is
     (
      --  Reset value for the field
      Stmintset_Compared_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPARED_Field use
     (Stmintset_Compared_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register E.
   type STMINTSET_COMPAREE_Field is
     (
      --  Reset value for the field
      Stmintset_Comparee_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREE_Field use
     (Stmintset_Comparee_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register F.
   type STMINTSET_COMPAREF_Field is
     (
      --  Reset value for the field
      Stmintset_Comparef_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREF_Field use
     (Stmintset_Comparef_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register G.
   type STMINTSET_COMPAREG_Field is
     (
      --  Reset value for the field
      Stmintset_Compareg_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREG_Field use
     (Stmintset_Compareg_Field_Reset => 0,
      Compared => 1);

   --  COUNTER is greater than or equal to COMPARE register H.
   type STMINTSET_COMPAREH_Field is
     (
      --  Reset value for the field
      Stmintset_Compareh_Field_Reset,
      --  COUNTER greater than or equal to COMPARE register. value.
      Compared)
     with Size => 1;
   for STMINTSET_COMPAREH_Field use
     (Stmintset_Compareh_Field_Reset => 0,
      Compared => 1);

   --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
   type STMINTSET_OVERFLOW_Field is
     (
      --  Reset value for the field
      Stmintset_Overflow_Field_Reset,
      --  Overflow interrupt status bit was set. value.
      Oflow_Int)
     with Size => 1;
   for STMINTSET_OVERFLOW_Field use
     (Stmintset_Overflow_Field_Reset => 0,
      Oflow_Int => 1);

   --  CAPTURE register A has grabbed the value in the counter
   type STMINTSET_CAPTUREA_Field is
     (
      --  Reset value for the field
      Stmintset_Capturea_Field_Reset,
      --  CAPTURE A interrupt status bit was set. value.
      Capa_Int)
     with Size => 1;
   for STMINTSET_CAPTUREA_Field use
     (Stmintset_Capturea_Field_Reset => 0,
      Capa_Int => 1);

   --  CAPTURE register B has grabbed the value in the counter
   type STMINTSET_CAPTUREB_Field is
     (
      --  Reset value for the field
      Stmintset_Captureb_Field_Reset,
      --  CAPTURE B interrupt status bit was set. value.
      Capb_Int)
     with Size => 1;
   for STMINTSET_CAPTUREB_Field use
     (Stmintset_Captureb_Field_Reset => 0,
      Capb_Int => 1);

   --  CAPTURE register C has grabbed the value in the counter
   type STMINTSET_CAPTUREC_Field is
     (
      --  Reset value for the field
      Stmintset_Capturec_Field_Reset,
      --  CAPTURE C interrupt status bit was set. value.
      Capc_Int)
     with Size => 1;
   for STMINTSET_CAPTUREC_Field use
     (Stmintset_Capturec_Field_Reset => 0,
      Capc_Int => 1);

   --  CAPTURE register D has grabbed the value in the counter
   type STMINTSET_CAPTURED_Field is
     (
      --  Reset value for the field
      Stmintset_Captured_Field_Reset,
      --  Capture D interrupt status bit was set. value.
      Capd_Int)
     with Size => 1;
   for STMINTSET_CAPTURED_Field use
     (Stmintset_Captured_Field_Reset => 0,
      Capd_Int => 1);

   --  STIMER Interrupt registers: Set
   type STMINTSET_Register is record
      --  COUNTER is greater than or equal to COMPARE register A.
      COMPAREA       : STMINTSET_COMPAREA_Field :=
                        Stmintset_Comparea_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register B.
      COMPAREB       : STMINTSET_COMPAREB_Field :=
                        Stmintset_Compareb_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register C.
      COMPAREC       : STMINTSET_COMPAREC_Field :=
                        Stmintset_Comparec_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register D.
      COMPARED       : STMINTSET_COMPARED_Field :=
                        Stmintset_Compared_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register E.
      COMPAREE       : STMINTSET_COMPAREE_Field :=
                        Stmintset_Comparee_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register F.
      COMPAREF       : STMINTSET_COMPAREF_Field :=
                        Stmintset_Comparef_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register G.
      COMPAREG       : STMINTSET_COMPAREG_Field :=
                        Stmintset_Compareg_Field_Reset;
      --  COUNTER is greater than or equal to COMPARE register H.
      COMPAREH       : STMINTSET_COMPAREH_Field :=
                        Stmintset_Compareh_Field_Reset;
      --  COUNTER over flowed from 0xFFFFFFFF back to 0x00000000.
      OVERFLOW       : STMINTSET_OVERFLOW_Field :=
                        Stmintset_Overflow_Field_Reset;
      --  CAPTURE register A has grabbed the value in the counter
      CAPTUREA       : STMINTSET_CAPTUREA_Field :=
                        Stmintset_Capturea_Field_Reset;
      --  CAPTURE register B has grabbed the value in the counter
      CAPTUREB       : STMINTSET_CAPTUREB_Field :=
                        Stmintset_Captureb_Field_Reset;
      --  CAPTURE register C has grabbed the value in the counter
      CAPTUREC       : STMINTSET_CAPTUREC_Field :=
                        Stmintset_Capturec_Field_Reset;
      --  CAPTURE register D has grabbed the value in the counter
      CAPTURED       : STMINTSET_CAPTURED_Field :=
                        Stmintset_Captured_Field_Reset;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STMINTSET_Register use record
      COMPAREA       at 0 range 0 .. 0;
      COMPAREB       at 0 range 1 .. 1;
      COMPAREC       at 0 range 2 .. 2;
      COMPARED       at 0 range 3 .. 3;
      COMPAREE       at 0 range 4 .. 4;
      COMPAREF       at 0 range 5 .. 5;
      COMPAREG       at 0 range 6 .. 6;
      COMPAREH       at 0 range 7 .. 7;
      OVERFLOW       at 0 range 8 .. 8;
      CAPTUREA       at 0 range 9 .. 9;
      CAPTUREB       at 0 range 10 .. 10;
      CAPTUREC       at 0 range 11 .. 11;
      CAPTURED       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Counter/Timer
   type CTIMER_Peripheral is record
      --  Counter/Timer Register
      TMR0            : aliased TMR0_Register;
      --  Counter/Timer A0 Compare Registers
      CMPRA0          : aliased CMPRA0_Register;
      --  Counter/Timer B0 Compare Registers
      CMPRB0          : aliased CMPRB0_Register;
      --  Counter/Timer Control
      CTRL0           : aliased CTRL0_Register;
      --  Counter/Timer Register
      TMR1            : aliased TMR1_Register;
      --  Counter/Timer A1 Compare Registers
      CMPRA1          : aliased CMPRA1_Register;
      --  Counter/Timer B1 Compare Registers
      CMPRB1          : aliased CMPRB1_Register;
      --  Counter/Timer Control
      CTRL1           : aliased CTRL1_Register;
      --  Counter/Timer Register
      TMR2            : aliased TMR2_Register;
      --  Counter/Timer A2 Compare Registers
      CMPRA2          : aliased CMPRA2_Register;
      --  Counter/Timer B2 Compare Registers
      CMPRB2          : aliased CMPRB2_Register;
      --  Counter/Timer Control
      CTRL2           : aliased CTRL2_Register;
      --  Counter/Timer Register
      TMR3            : aliased TMR3_Register;
      --  Counter/Timer A3 Compare Registers
      CMPRA3          : aliased CMPRA3_Register;
      --  Counter/Timer B3 Compare Registers
      CMPRB3          : aliased CMPRB3_Register;
      --  Counter/Timer Control
      CTRL3           : aliased CTRL3_Register;
      --  Configuration Register
      STCFG           : aliased STCFG_Register;
      --  System Timer Count Register (Real Time Counter)
      STTMR           : aliased HAL.UInt32;
      --  Capture Control Register
      CAPTURE_CONTROL : aliased CAPTURE_CONTROL_Register;
      --  Compare Register A
      SCMPR0          : aliased HAL.UInt32;
      --  Compare Register B
      SCMPR1          : aliased HAL.UInt32;
      --  Compare Register C
      SCMPR2          : aliased HAL.UInt32;
      --  Compare Register D
      SCMPR3          : aliased HAL.UInt32;
      --  Compare Register E
      SCMPR4          : aliased HAL.UInt32;
      --  Compare Register F
      SCMPR5          : aliased HAL.UInt32;
      --  Compare Register G
      SCMPR6          : aliased HAL.UInt32;
      --  Compare Register H
      SCMPR7          : aliased HAL.UInt32;
      --  Capture Register A
      SCAPT0          : aliased HAL.UInt32;
      --  Capture Register B
      SCAPT1          : aliased HAL.UInt32;
      --  Capture Register C
      SCAPT2          : aliased HAL.UInt32;
      --  Capture Register D
      SCAPT3          : aliased HAL.UInt32;
      --  System Timer NVRAM_A Register
      SNVR0           : aliased HAL.UInt32;
      --  System Timer NVRAM_B Register
      SNVR1           : aliased HAL.UInt32;
      --  System Timer NVRAM_C Register
      SNVR2           : aliased HAL.UInt32;
      --  Counter/Timer Interrupts: Enable
      INTEN           : aliased INTEN_Register;
      --  Counter/Timer Interrupts: Status
      INTSTAT         : aliased INTSTAT_Register;
      --  Counter/Timer Interrupts: Clear
      INTCLR          : aliased INTCLR_Register;
      --  Counter/Timer Interrupts: Set
      INTSET          : aliased INTSET_Register;
      --  STIMER Interrupt registers: Enable
      STMINTEN        : aliased STMINTEN_Register;
      --  STIMER Interrupt registers: Status
      STMINTSTAT      : aliased STMINTSTAT_Register;
      --  STIMER Interrupt registers: Clear
      STMINTCLR       : aliased STMINTCLR_Register;
      --  STIMER Interrupt registers: Set
      STMINTSET       : aliased STMINTSET_Register;
   end record
     with Volatile;

   for CTIMER_Peripheral use record
      TMR0            at 16#0# range 0 .. 31;
      CMPRA0          at 16#4# range 0 .. 31;
      CMPRB0          at 16#8# range 0 .. 31;
      CTRL0           at 16#C# range 0 .. 31;
      TMR1            at 16#10# range 0 .. 31;
      CMPRA1          at 16#14# range 0 .. 31;
      CMPRB1          at 16#18# range 0 .. 31;
      CTRL1           at 16#1C# range 0 .. 31;
      TMR2            at 16#20# range 0 .. 31;
      CMPRA2          at 16#24# range 0 .. 31;
      CMPRB2          at 16#28# range 0 .. 31;
      CTRL2           at 16#2C# range 0 .. 31;
      TMR3            at 16#30# range 0 .. 31;
      CMPRA3          at 16#34# range 0 .. 31;
      CMPRB3          at 16#38# range 0 .. 31;
      CTRL3           at 16#3C# range 0 .. 31;
      STCFG           at 16#100# range 0 .. 31;
      STTMR           at 16#104# range 0 .. 31;
      CAPTURE_CONTROL at 16#108# range 0 .. 31;
      SCMPR0          at 16#110# range 0 .. 31;
      SCMPR1          at 16#114# range 0 .. 31;
      SCMPR2          at 16#118# range 0 .. 31;
      SCMPR3          at 16#11C# range 0 .. 31;
      SCMPR4          at 16#120# range 0 .. 31;
      SCMPR5          at 16#124# range 0 .. 31;
      SCMPR6          at 16#128# range 0 .. 31;
      SCMPR7          at 16#12C# range 0 .. 31;
      SCAPT0          at 16#1E0# range 0 .. 31;
      SCAPT1          at 16#1E4# range 0 .. 31;
      SCAPT2          at 16#1E8# range 0 .. 31;
      SCAPT3          at 16#1EC# range 0 .. 31;
      SNVR0           at 16#1F0# range 0 .. 31;
      SNVR1           at 16#1F4# range 0 .. 31;
      SNVR2           at 16#1F8# range 0 .. 31;
      INTEN           at 16#200# range 0 .. 31;
      INTSTAT         at 16#204# range 0 .. 31;
      INTCLR          at 16#208# range 0 .. 31;
      INTSET          at 16#20C# range 0 .. 31;
      STMINTEN        at 16#300# range 0 .. 31;
      STMINTSTAT      at 16#304# range 0 .. 31;
      STMINTCLR       at 16#308# range 0 .. 31;
      STMINTSET       at 16#30C# range 0 .. 31;
   end record;

   --  Counter/Timer
   CTIMER_Periph : aliased CTIMER_Peripheral
     with Import, Address => CTIMER_Base;

end NRF_SVD.CTIMER;
