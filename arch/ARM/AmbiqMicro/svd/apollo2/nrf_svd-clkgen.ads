--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Clock Generator
package NRF_SVD.CLKGEN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CALXT_CALXT_Field is HAL.UInt11;

   --  XT Oscillator Control
   type CALXT_Register is record
      --  XT Oscillator calibration value
      CALXT          : CALXT_CALXT_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALXT_Register use record
      CALXT          at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CALRC_CALRC_Field is HAL.UInt18;

   --  RC Oscillator Control
   type CALRC_Register is record
      --  LFRC Oscillator calibration value
      CALRC          : CALRC_CALRC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALRC_Register use record
      CALRC          at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ACALCTR_ACALCTR_Field is HAL.UInt24;

   --  Autocalibration Counter
   type ACALCTR_Register is record
      --  Autocalibration Counter result.
      ACALCTR        : ACALCTR_ACALCTR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACALCTR_Register use record
      ACALCTR        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Stop the XT Oscillator to the RTC
   type OCTRL_STOPXT_Field is
     (
      --  Enable the XT Oscillator to drive the RTC value.
      En,
      --  Stop the XT Oscillator when driving the RTC value.
      Stop)
     with Size => 1;
   for OCTRL_STOPXT_Field use
     (En => 0,
      Stop => 1);

   --  Stop the LFRC Oscillator to the RTC
   type OCTRL_STOPRC_Field is
     (
      --  Enable the LFRC Oscillator to drive the RTC value.
      En,
      --  Stop the LFRC Oscillator when driving the RTC value.
      Stop)
     with Size => 1;
   for OCTRL_STOPRC_Field use
     (En => 0,
      Stop => 1);

   --  Oscillator switch on failure function
   type OCTRL_FOS_Field is
     (
      --  Disable the oscillator switch on failure function value.
      Dis,
      --  Enable the oscillator switch on failure function value.
      En)
     with Size => 1;
   for OCTRL_FOS_Field use
     (Dis => 0,
      En => 1);

   --  Selects the RTC oscillator (1 => LFRC, 0 => XT)
   type OCTRL_OSEL_Field is
     (
      --  RTC uses the XT value.
      Rtc_Xt,
      --  RTC uses the LFRC value.
      Rtc_Lfrc)
     with Size => 1;
   for OCTRL_OSEL_Field use
     (Rtc_Xt => 0,
      Rtc_Lfrc => 1);

   --  Autocalibration control
   type OCTRL_ACAL_Field is
     (
      --  Disable Autocalibration value.
      Dis,
      --  Autocalibrate every 1024 seconds value.
      OCTRL_ACAL_Field_1024Sec,
      --  Autocalibrate every 512 seconds value.
      OCTRL_ACAL_Field_512Sec,
      --  Frequency measurement using XT value.
      Xtfreq,
      --  Frequency measurement using external clock value.
      Extfreq)
     with Size => 3;
   for OCTRL_ACAL_Field use
     (Dis => 0,
      OCTRL_ACAL_Field_1024Sec => 2,
      OCTRL_ACAL_Field_512Sec => 3,
      Xtfreq => 6,
      Extfreq => 7);

   --  Oscillator Control
   type OCTRL_Register is record
      --  Stop the XT Oscillator to the RTC
      STOPXT         : OCTRL_STOPXT_Field := NRF_SVD.CLKGEN.En;
      --  Stop the LFRC Oscillator to the RTC
      STOPRC         : OCTRL_STOPRC_Field := NRF_SVD.CLKGEN.En;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Oscillator switch on failure function
      FOS            : OCTRL_FOS_Field := NRF_SVD.CLKGEN.Dis;
      --  Selects the RTC oscillator (1 => LFRC, 0 => XT)
      OSEL           : OCTRL_OSEL_Field := NRF_SVD.CLKGEN.Rtc_Xt;
      --  Autocalibration control
      ACAL           : OCTRL_ACAL_Field := NRF_SVD.CLKGEN.Dis;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTRL_Register use record
      STOPXT         at 0 range 0 .. 0;
      STOPRC         at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      FOS            at 0 range 6 .. 6;
      OSEL           at 0 range 7 .. 7;
      ACAL           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  CLKOUT signal select
   type CLKOUT_CKSEL_Field is
     (
      --  LFRC value.
      Lfrc,
      --  XT / 2 value.
      Xt_Div2,
      --  XT / 4 value.
      Xt_Div4,
      --  XT / 8 value.
      Xt_Div8,
      --  XT / 16 value.
      Xt_Div16,
      --  XT / 32 value.
      Xt_Div32,
      --  1 Hz as selected in RTC value.
      Rtc_1Hz,
      --  XT / 2^21 value.
      Xt_Div2M,
      --  XT value.
      Xt,
      --  100 Hz as selected in CLKGEN value.
      Cg_100Hz,
      --  HFRC value.
      Hfrc,
      --  HFRC / 4 value.
      Hfrc_Div4,
      --  HFRC / 8 value.
      Hfrc_Div8,
      --  HFRC / 16 value.
      Hfrc_Div16,
      --  HFRC / 64 value.
      Hfrc_Div64,
      --  HFRC / 128 value.
      Hfrc_Div128,
      --  HFRC / 256 value.
      Hfrc_Div256,
      --  HFRC / 512 value.
      Hfrc_Div512,
      --  Flash Clock value.
      Flash_Clk,
      --  LFRC / 2 value.
      Lfrc_Div2,
      --  LFRC / 32 value.
      Lfrc_Div32,
      --  LFRC / 512 value.
      Lfrc_Div512,
      --  LFRC / 32768 value.
      Lfrc_Div32K,
      --  XT / 256 value.
      Xt_Div256,
      --  XT / 8192 value.
      Xt_Div8K,
      --  XT / 2^16 value.
      Xt_Div64K,
      --  Uncal LFRC / 16 value.
      Ulfrc_Div16,
      --  Uncal LFRC / 128 value.
      Ulfrc_Div128,
      --  Uncal LFRC / 1024 value.
      Ulfrc_1Hz,
      --  Uncal LFRC / 4096 value.
      Ulfrc_Div4K,
      --  Uncal LFRC / 2^20 value.
      Ulfrc_Div1M,
      --  HFRC / 2^16 value.
      Hfrc_Div64K,
      --  HFRC / 2^24 value.
      Hfrc_Div16M,
      --  LFRC / 2^20 value.
      Lfrc_Div2M,
      --  HFRC (not autoenabled) value.
      Hfrcne,
      --  HFRC / 8 (not autoenabled) value.
      Hfrcne_Div8,
      --  XT (not autoenabled) value.
      Xtne,
      --  XT / 16 (not autoenabled) value.
      Xtne_Div16,
      --  LFRC / 32 (not autoenabled) value.
      Lfrcne_Div32,
      --  LFRC (not autoenabled) - Default for undefined values value.
      Lfrcne)
     with Size => 6;
   for CLKOUT_CKSEL_Field use
     (Lfrc => 0,
      Xt_Div2 => 1,
      Xt_Div4 => 2,
      Xt_Div8 => 3,
      Xt_Div16 => 4,
      Xt_Div32 => 5,
      Rtc_1Hz => 16,
      Xt_Div2M => 22,
      Xt => 23,
      Cg_100Hz => 24,
      Hfrc => 25,
      Hfrc_Div4 => 26,
      Hfrc_Div8 => 27,
      Hfrc_Div16 => 28,
      Hfrc_Div64 => 29,
      Hfrc_Div128 => 30,
      Hfrc_Div256 => 31,
      Hfrc_Div512 => 32,
      Flash_Clk => 34,
      Lfrc_Div2 => 35,
      Lfrc_Div32 => 36,
      Lfrc_Div512 => 37,
      Lfrc_Div32K => 38,
      Xt_Div256 => 39,
      Xt_Div8K => 40,
      Xt_Div64K => 41,
      Ulfrc_Div16 => 42,
      Ulfrc_Div128 => 43,
      Ulfrc_1Hz => 44,
      Ulfrc_Div4K => 45,
      Ulfrc_Div1M => 46,
      Hfrc_Div64K => 47,
      Hfrc_Div16M => 48,
      Lfrc_Div2M => 49,
      Hfrcne => 50,
      Hfrcne_Div8 => 51,
      Xtne => 53,
      Xtne_Div16 => 54,
      Lfrcne_Div32 => 55,
      Lfrcne => 57);

   --  Enable the CLKOUT signal
   type CLKOUT_CKEN_Field is
     (
      --  Disable CLKOUT value.
      Dis,
      --  Enable CLKOUT value.
      En)
     with Size => 1;
   for CLKOUT_CKEN_Field use
     (Dis => 0,
      En => 1);

   --  CLKOUT Frequency Select
   type CLKOUT_Register is record
      --  CLKOUT signal select
      CKSEL         : CLKOUT_CKSEL_Field := NRF_SVD.CLKGEN.Lfrc;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Enable the CLKOUT signal
      CKEN          : CLKOUT_CKEN_Field := NRF_SVD.CLKGEN.Dis;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUT_Register use record
      CKSEL         at 0 range 0 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CKEN          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Core Clock divisor
   type CCTRL_CORESEL_Field is
     (
      --  Core Clock is HFRC value.
      Hfrc,
      --  Core Clock is HFRC / 2 value.
      Hfrc_Div2)
     with Size => 1;
   for CCTRL_CORESEL_Field use
     (Hfrc => 0,
      Hfrc_Div2 => 1);

   --  HFRC Clock Control
   type CCTRL_Register is record
      --  Core Clock divisor
      CORESEL       : CCTRL_CORESEL_Field := NRF_SVD.CLKGEN.Hfrc_Div2;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCTRL_Register use record
      CORESEL       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Clock Generator Status
   type STATUS_Register is record
      --  Current RTC oscillator (1 => LFRC, 0 => XT)
      OMODE         : Boolean := False;
      --  XT Oscillator is enabled but not oscillating
      OSCF          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      OMODE         at 0 range 0 .. 0;
      OSCF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HFRC adjustment control
   type HFADJ_HFADJEN_Field is
     (
      --  Disable the HFRC adjustment value.
      Dis,
      --  Enable the HFRC adjustment value.
      En)
     with Size => 1;
   for HFADJ_HFADJEN_Field use
     (Dis => 0,
      En => 1);

   --  Repeat period for HFRC adjustment
   type HFADJ_HFADJCK_Field is
     (
      --  Autoadjust repeat period = 4 seconds value.
      HFADJ_HFADJCK_Field_4Sec,
      --  Autoadjust repeat period = 16 seconds value.
      HFADJ_HFADJCK_Field_16Sec,
      --  Autoadjust repeat period = 32 seconds value.
      HFADJ_HFADJCK_Field_32Sec,
      --  Autoadjust repeat period = 64 seconds value.
      HFADJ_HFADJCK_Field_64Sec,
      --  Autoadjust repeat period = 128 seconds value.
      HFADJ_HFADJCK_Field_128Sec,
      --  Autoadjust repeat period = 256 seconds value.
      HFADJ_HFADJCK_Field_256Sec,
      --  Autoadjust repeat period = 512 seconds value.
      HFADJ_HFADJCK_Field_512Sec,
      --  Autoadjust repeat period = 1024 seconds value.
      HFADJ_HFADJCK_Field_1024Sec)
     with Size => 3;
   for HFADJ_HFADJCK_Field use
     (HFADJ_HFADJCK_Field_4Sec => 0,
      HFADJ_HFADJCK_Field_16Sec => 1,
      HFADJ_HFADJCK_Field_32Sec => 2,
      HFADJ_HFADJCK_Field_64Sec => 3,
      HFADJ_HFADJCK_Field_128Sec => 4,
      HFADJ_HFADJCK_Field_256Sec => 5,
      HFADJ_HFADJCK_Field_512Sec => 6,
      HFADJ_HFADJCK_Field_1024Sec => 7);

   subtype HFADJ_HFXTADJ_Field is HAL.UInt12;

   --  XT warmup period for HFRC adjustment
   type HFADJ_HFWARMUP_Field is
     (
      --  Autoadjust XT warmup period = 1-2 seconds value.
      HFADJ_HFWARMUP_Field_1Sec,
      --  Autoadjust XT warmup period = 2-4 seconds value.
      HFADJ_HFWARMUP_Field_2Sec)
     with Size => 1;
   for HFADJ_HFWARMUP_Field use
     (HFADJ_HFWARMUP_Field_1Sec => 0,
      HFADJ_HFWARMUP_Field_2Sec => 1);

   --  Gain control for HFRC adjustment
   type HFADJ_HFADJ_GAIN_Field is
     (
      --  HF Adjust with Gain of 1 value.
      Gain_OF_1,
      --  HF Adjust with Gain of 0.5 value.
      Gain_OF_1_IN_2,
      --  HF Adjust with Gain of 0.25 value.
      Gain_OF_1_IN_4,
      --  HF Adjust with Gain of 0.125 value.
      Gain_OF_1_IN_8,
      --  HF Adjust with Gain of 0.0625 value.
      Gain_OF_1_IN_16,
      --  HF Adjust with Gain of 0.03125 value.
      Gain_OF_1_IN_32)
     with Size => 3;
   for HFADJ_HFADJ_GAIN_Field use
     (Gain_OF_1 => 0,
      Gain_OF_1_IN_2 => 1,
      Gain_OF_1_IN_4 => 2,
      Gain_OF_1_IN_8 => 3,
      Gain_OF_1_IN_16 => 4,
      Gain_OF_1_IN_32 => 5);

   --  HFRC Adjustment
   type HFADJ_Register is record
      --  HFRC adjustment control
      HFADJEN        : HFADJ_HFADJEN_Field := NRF_SVD.CLKGEN.Dis;
      --  Repeat period for HFRC adjustment
      HFADJCK        : HFADJ_HFADJCK_Field :=
                        NRF_SVD.CLKGEN.HFADJ_HFADJCK_Field_4Sec;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Target HFRC adjustment value.
      HFXTADJ        : HFADJ_HFXTADJ_Field := 16#5B8#;
      --  XT warmup period for HFRC adjustment
      HFWARMUP       : HFADJ_HFWARMUP_Field :=
                        NRF_SVD.CLKGEN.HFADJ_HFWARMUP_Field_1Sec;
      --  Gain control for HFRC adjustment
      HFADJ_GAIN     : HFADJ_HFADJ_GAIN_Field :=
                        NRF_SVD.CLKGEN.Gain_OF_1_IN_2;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFADJ_Register use record
      HFADJEN        at 0 range 0 .. 0;
      HFADJCK        at 0 range 1 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      HFXTADJ        at 0 range 8 .. 19;
      HFWARMUP       at 0 range 20 .. 20;
      HFADJ_GAIN     at 0 range 21 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HFVAL_HFTUNERB_Field is HAL.UInt11;

   --  HFADJ readback
   type HFVAL_Register is record
      --  Current HFTUNE value
      HFTUNERB       : HFVAL_HFTUNERB_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFVAL_Register use record
      HFTUNERB       at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  UART0 system clock control
   type UARTEN_UART0EN_Field is
     (
      --  Disable the UART0 system clock value.
      Dis,
      --  Enable the UART0 system clock value.
      En,
      --  Run UART_Hclk at the same frequency as UART_hfclk value.
      Reduce_Freq,
      --  Enable UART_hclk to reduce to UART_hfclk at low power mode value.
      En_Power_Sav)
     with Size => 2;
   for UARTEN_UART0EN_Field use
     (Dis => 0,
      En => 1,
      Reduce_Freq => 2,
      En_Power_Sav => 3);

   --  UART1 system clock control
   type UARTEN_UART1EN_Field is
     (
      --  Disable the UART1 system clock value.
      Dis,
      --  Enable the UART1 system clock value.
      En,
      --  Run UART_Hclk at the same frequency as UART_hfclk value.
      Reduce_Freq,
      --  Enable UART_hclk to reduce to UART_hfclk at low power mode value.
      En_Power_Sav)
     with Size => 2;
   for UARTEN_UART1EN_Field use
     (Dis => 0,
      En => 1,
      Reduce_Freq => 2,
      En_Power_Sav => 3);

   --  UART Enable
   type UARTEN_Register is record
      --  UART0 system clock control
      UART0EN        : UARTEN_UART0EN_Field := NRF_SVD.CLKGEN.Dis;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  UART1 system clock control
      UART1EN        : UARTEN_UART1EN_Field := NRF_SVD.CLKGEN.Dis;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UARTEN_Register use record
      UART0EN        at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      UART1EN        at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CTRLOW_CTR100_Field is HAL.UInt8;
   subtype CTRLOW_CTRSEC_Field is HAL.UInt7;
   subtype CTRLOW_CTRMIN_Field is HAL.UInt7;
   subtype CTRLOW_CTRHR_Field is HAL.UInt6;

   --  RTC Counters Lower
   type CTRLOW_Register is record
      --  100ths of a second Counter
      CTR100         : CTRLOW_CTR100_Field := 16#0#;
      --  Seconds Counter
      CTRSEC         : CTRLOW_CTRSEC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Minutes Counter
      CTRMIN         : CTRLOW_CTRMIN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Hours Counter
      CTRHR          : CTRLOW_CTRHR_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRLOW_Register use record
      CTR100         at 0 range 0 .. 7;
      CTRSEC         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CTRMIN         at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CTRHR          at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CTRUP_CTRDATE_Field is HAL.UInt6;
   subtype CTRUP_CTRMO_Field is HAL.UInt5;
   subtype CTRUP_CTRYR_Field is HAL.UInt8;
   subtype CTRUP_CTRWKDY_Field is HAL.UInt3;

   --  Century
   type CTRUP_CB_Field is
     (
      --  Century is 2000s value.
      CTRUP_CB_Field_2000,
      --  Century is 1900s/2100s value.
      CTRUP_CB_Field_1900_2100)
     with Size => 1;
   for CTRUP_CB_Field use
     (CTRUP_CB_Field_2000 => 0,
      CTRUP_CB_Field_1900_2100 => 1);

   --  Century enable
   type CTRUP_CEB_Field is
     (
      --  Disable the Century bit from changing value.
      Dis,
      --  Enable the Century bit to change value.
      En)
     with Size => 1;
   for CTRUP_CEB_Field use
     (Dis => 0,
      En => 1);

   --  Counter read error status
   type CTRUP_CTERR_Field is
     (
      --  No read error occurred value.
      Noerr,
      --  Read error occurred value.
      Rderr)
     with Size => 1;
   for CTRUP_CTERR_Field use
     (Noerr => 0,
      Rderr => 1);

   --  RTC Counters Upper
   type CTRUP_Register is record
      --  Date Counter
      CTRDATE        : CTRUP_CTRDATE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Months Counter
      CTRMO          : CTRUP_CTRMO_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Years Counter
      CTRYR          : CTRUP_CTRYR_Field := 16#0#;
      --  Weekdays Counter
      CTRWKDY        : CTRUP_CTRWKDY_Field := 16#0#;
      --  Century
      CB             : CTRUP_CB_Field := NRF_SVD.CLKGEN.CTRUP_CB_Field_2000;
      --  Century enable
      CEB            : CTRUP_CEB_Field := NRF_SVD.CLKGEN.Dis;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Counter read error status
      CTERR          : CTRUP_CTERR_Field := NRF_SVD.CLKGEN.Noerr;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRUP_Register use record
      CTRDATE        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CTRMO          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CTRYR          at 0 range 16 .. 23;
      CTRWKDY        at 0 range 24 .. 26;
      CB             at 0 range 27 .. 27;
      CEB            at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      CTERR          at 0 range 31 .. 31;
   end record;

   subtype ALMLOW_ALM100_Field is HAL.UInt8;
   subtype ALMLOW_ALMSEC_Field is HAL.UInt7;
   subtype ALMLOW_ALMMIN_Field is HAL.UInt7;
   subtype ALMLOW_ALMHR_Field is HAL.UInt6;

   --  RTC Alarms Lower
   type ALMLOW_Register is record
      --  100ths of a second Alarm
      ALM100         : ALMLOW_ALM100_Field := 16#0#;
      --  Seconds Alarm
      ALMSEC         : ALMLOW_ALMSEC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Minutes Alarm
      ALMMIN         : ALMLOW_ALMMIN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Hours Alarm
      ALMHR          : ALMLOW_ALMHR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALMLOW_Register use record
      ALM100         at 0 range 0 .. 7;
      ALMSEC         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      ALMMIN         at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      ALMHR          at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ALMUP_ALMDATE_Field is HAL.UInt6;
   subtype ALMUP_ALMMO_Field is HAL.UInt5;
   subtype ALMUP_ALMWKDY_Field is HAL.UInt3;

   --  RTC Alarms Upper
   type ALMUP_Register is record
      --  Date Alarm
      ALMDATE        : ALMUP_ALMDATE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Months Alarm
      ALMMO          : ALMUP_ALMMO_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Weekdays Alarm
      ALMWKDY        : ALMUP_ALMWKDY_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALMUP_Register use record
      ALMDATE        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ALMMO          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ALMWKDY        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Counter write control
   type RTCCTL_WRTC_Field is
     (
      --  Counter writes are disabled value.
      Dis,
      --  Counter writes are enabled value.
      En)
     with Size => 1;
   for RTCCTL_WRTC_Field use
     (Dis => 0,
      En => 1);

   --  Alarm repeat interval
   type RTCCTL_RPT_Field is
     (
      --  Alarm interrupt disabled value.
      Dis,
      --  Interrupt every year value.
      Year,
      --  Interrupt every month value.
      Month,
      --  Interrupt every week value.
      Week,
      --  Interrupt every day value.
      Day,
      --  Interrupt every hour value.
      Hr,
      --  Interrupt every minute value.
      Min,
      --  Interrupt every second/10th/100th value.
      Sec)
     with Size => 3;
   for RTCCTL_RPT_Field use
     (Dis => 0,
      Year => 1,
      Month => 2,
      Week => 3,
      Day => 4,
      Hr => 5,
      Min => 6,
      Sec => 7);

   --  RTC input clock control
   type RTCCTL_RSTOP_Field is
     (
      --  Allow the RTC input clock to run value.
      Run,
      --  Stop the RTC input clock value.
      Stop)
     with Size => 1;
   for RTCCTL_RSTOP_Field use
     (Run => 0,
      Stop => 1);

   --  Hours Counter mode
   type RTCCTL_HR1224_Field is
     (
      --  Hours in 24 hour mode value.
      RTCCTL_HR1224_Field_24Hr,
      --  Hours in 12 hour mode value.
      RTCCTL_HR1224_Field_12Hr)
     with Size => 1;
   for RTCCTL_HR1224_Field use
     (RTCCTL_HR1224_Field_24Hr => 0,
      RTCCTL_HR1224_Field_12Hr => 1);

   --  RTC Control Register
   type RTCCTL_Register is record
      --  Counter write control
      WRTC          : RTCCTL_WRTC_Field := NRF_SVD.CLKGEN.Dis;
      --  Alarm repeat interval
      RPT           : RTCCTL_RPT_Field := NRF_SVD.CLKGEN.Dis;
      --  RTC input clock control
      RSTOP         : RTCCTL_RSTOP_Field := NRF_SVD.CLKGEN.Run;
      --  Hours Counter mode
      HR1224        : RTCCTL_HR1224_Field :=
                       NRF_SVD.CLKGEN.RTCCTL_HR1224_Field_24Hr;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCTL_Register use record
      WRTC          at 0 range 0 .. 0;
      RPT           at 0 range 1 .. 3;
      RSTOP         at 0 range 4 .. 4;
      HR1224        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CLKGEN Interrupt Register: Enable
   type INTEN_Register is record
      --  Autocalibration Fail interrupt
      ACF           : Boolean := False;
      --  Autocalibration Complete interrupt
      ACC           : Boolean := False;
      --  XT Oscillator Fail interrupt
      OF_k          : Boolean := False;
      --  RTC Alarm interrupt
      ALM           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      ACF           at 0 range 0 .. 0;
      ACC           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      ALM           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  CLKGEN Interrupt Register: Status
   type INTSTAT_Register is record
      --  Autocalibration Fail interrupt
      ACF           : Boolean := False;
      --  Autocalibration Complete interrupt
      ACC           : Boolean := False;
      --  XT Oscillator Fail interrupt
      OF_k          : Boolean := False;
      --  RTC Alarm interrupt
      ALM           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      ACF           at 0 range 0 .. 0;
      ACC           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      ALM           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  CLKGEN Interrupt Register: Clear
   type INTCLR_Register is record
      --  Autocalibration Fail interrupt
      ACF           : Boolean := False;
      --  Autocalibration Complete interrupt
      ACC           : Boolean := False;
      --  XT Oscillator Fail interrupt
      OF_k          : Boolean := False;
      --  RTC Alarm interrupt
      ALM           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      ACF           at 0 range 0 .. 0;
      ACC           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      ALM           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  CLKGEN Interrupt Register: Set
   type INTSET_Register is record
      --  Autocalibration Fail interrupt
      ACF           : Boolean := False;
      --  Autocalibration Complete interrupt
      ACC           : Boolean := False;
      --  XT Oscillator Fail interrupt
      OF_k          : Boolean := False;
      --  RTC Alarm interrupt
      ALM           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      ACF           at 0 range 0 .. 0;
      ACC           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      ALM           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Generator
   type CLKGEN_Peripheral is record
      --  XT Oscillator Control
      CALXT    : aliased CALXT_Register;
      --  RC Oscillator Control
      CALRC    : aliased CALRC_Register;
      --  Autocalibration Counter
      ACALCTR  : aliased ACALCTR_Register;
      --  Oscillator Control
      OCTRL    : aliased OCTRL_Register;
      --  CLKOUT Frequency Select
      CLKOUT   : aliased CLKOUT_Register;
      --  Key Register for Clock Control Register
      CLKKEY   : aliased HAL.UInt32;
      --  HFRC Clock Control
      CCTRL    : aliased CCTRL_Register;
      --  Clock Generator Status
      STATUS   : aliased STATUS_Register;
      --  HFRC Adjustment
      HFADJ    : aliased HFADJ_Register;
      --  HFADJ readback
      HFVAL    : aliased HFVAL_Register;
      --  Clock Enable Status
      CLOCKEN  : aliased HAL.UInt32;
      --  Clock Enable Status
      CLOCKEN2 : aliased HAL.UInt32;
      --  Clock Enable Status
      CLOCKEN3 : aliased HAL.UInt32;
      --  UART Enable
      UARTEN   : aliased UARTEN_Register;
      --  RTC Counters Lower
      CTRLOW   : aliased CTRLOW_Register;
      --  RTC Counters Upper
      CTRUP    : aliased CTRUP_Register;
      --  RTC Alarms Lower
      ALMLOW   : aliased ALMLOW_Register;
      --  RTC Alarms Upper
      ALMUP    : aliased ALMUP_Register;
      --  RTC Control Register
      RTCCTL   : aliased RTCCTL_Register;
      --  CLKGEN Interrupt Register: Enable
      INTEN    : aliased INTEN_Register;
      --  CLKGEN Interrupt Register: Status
      INTSTAT  : aliased INTSTAT_Register;
      --  CLKGEN Interrupt Register: Clear
      INTCLR   : aliased INTCLR_Register;
      --  CLKGEN Interrupt Register: Set
      INTSET   : aliased INTSET_Register;
   end record
     with Volatile;

   for CLKGEN_Peripheral use record
      CALXT    at 16#0# range 0 .. 31;
      CALRC    at 16#4# range 0 .. 31;
      ACALCTR  at 16#8# range 0 .. 31;
      OCTRL    at 16#C# range 0 .. 31;
      CLKOUT   at 16#10# range 0 .. 31;
      CLKKEY   at 16#14# range 0 .. 31;
      CCTRL    at 16#18# range 0 .. 31;
      STATUS   at 16#1C# range 0 .. 31;
      HFADJ    at 16#20# range 0 .. 31;
      HFVAL    at 16#24# range 0 .. 31;
      CLOCKEN  at 16#28# range 0 .. 31;
      CLOCKEN2 at 16#2C# range 0 .. 31;
      CLOCKEN3 at 16#30# range 0 .. 31;
      UARTEN   at 16#34# range 0 .. 31;
      CTRLOW   at 16#40# range 0 .. 31;
      CTRUP    at 16#44# range 0 .. 31;
      ALMLOW   at 16#48# range 0 .. 31;
      ALMUP    at 16#4C# range 0 .. 31;
      RTCCTL   at 16#50# range 0 .. 31;
      INTEN    at 16#100# range 0 .. 31;
      INTSTAT  at 16#104# range 0 .. 31;
      INTCLR   at 16#108# range 0 .. 31;
      INTSET   at 16#10C# range 0 .. 31;
   end record;

   --  Clock Generator
   CLKGEN_Periph : aliased CLKGEN_Peripheral
     with Import, Address => CLKGEN_Base;

end NRF_SVD.CLKGEN;
