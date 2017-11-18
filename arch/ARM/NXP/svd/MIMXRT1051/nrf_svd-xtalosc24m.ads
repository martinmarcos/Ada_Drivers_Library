--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.XTALOSC24M is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  Not related to oscillator.
   type MISC0_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.Not related to oscillator.
   type MISC0_STOP_MODE_CONFIG_Field is
     (
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's. Not related to oscillator.
   type MISC0_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type XTALOSC24M_MISC0_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Selfbiasoff_0;
      --  Not related to oscillator.
      REFTOP_VBGADJ      : MISC0_REFTOP_VBGADJ_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.Not related to oscillator.
      STOP_MODE_CONFIG   : MISC0_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.XTALOSC24M.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.XTALOSC24M.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_OSC_I_Field := NRF_SVD.XTALOSC24M.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable.
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_CLKGATE_CTRL_Field :=
                            NRF_SVD.XTALOSC24M.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_CLKGATE_DELAY_Field :=
                            NRF_SVD.XTALOSC24M.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.XTALOSC24M.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's. Not related to
      --  oscillator.
      VID_PLL_PREDIV     : MISC0_VID_PLL_PREDIV_Field :=
                            NRF_SVD.XTALOSC24M.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_MISC0_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_SET_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_SET_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  Not related to oscillator.
   type MISC0_SET_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_SET_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.Not related to oscillator.
   type MISC0_SET_STOP_MODE_CONFIG_Field is
     (
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_SET_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_SET_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_SET_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_SET_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_SET_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_SET_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_SET_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_SET_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_SET_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_SET_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_SET_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's. Not related to oscillator.
   type MISC0_SET_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_SET_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type XTALOSC24M_MISC0_SET_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_SET_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Selfbiasoff_0;
      --  Not related to oscillator.
      REFTOP_VBGADJ      : MISC0_SET_REFTOP_VBGADJ_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.Not related to oscillator.
      STOP_MODE_CONFIG   : MISC0_SET_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.XTALOSC24M.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_SET_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.XTALOSC24M.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_SET_OSC_I_Field :=
                            NRF_SVD.XTALOSC24M.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable.
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_SET_CLKGATE_CTRL_Field :=
                            NRF_SVD.XTALOSC24M.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_SET_CLKGATE_DELAY_Field :=
                            NRF_SVD.XTALOSC24M.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_SET_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.XTALOSC24M.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's. Not related to
      --  oscillator.
      VID_PLL_PREDIV     : MISC0_SET_VID_PLL_PREDIV_Field :=
                            NRF_SVD.XTALOSC24M.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_MISC0_SET_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_CLR_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_CLR_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  Not related to oscillator.
   type MISC0_CLR_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_CLR_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.Not related to oscillator.
   type MISC0_CLR_STOP_MODE_CONFIG_Field is
     (
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_CLR_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_CLR_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_CLR_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_CLR_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_CLR_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_CLR_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_CLR_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_CLR_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_CLR_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_CLR_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_CLR_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's. Not related to oscillator.
   type MISC0_CLR_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_CLR_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type XTALOSC24M_MISC0_CLR_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_CLR_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Selfbiasoff_0;
      --  Not related to oscillator.
      REFTOP_VBGADJ      : MISC0_CLR_REFTOP_VBGADJ_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.Not related to oscillator.
      STOP_MODE_CONFIG   : MISC0_CLR_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.XTALOSC24M.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_CLR_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.XTALOSC24M.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_CLR_OSC_I_Field :=
                            NRF_SVD.XTALOSC24M.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable.
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_CLR_CLKGATE_CTRL_Field :=
                            NRF_SVD.XTALOSC24M.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_CLR_CLKGATE_DELAY_Field :=
                            NRF_SVD.XTALOSC24M.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_CLR_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.XTALOSC24M.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's. Not related to
      --  oscillator.
      VID_PLL_PREDIV     : MISC0_CLR_VID_PLL_PREDIV_Field :=
                            NRF_SVD.XTALOSC24M.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_MISC0_CLR_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_TOG_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_TOG_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  Not related to oscillator.
   type MISC0_TOG_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_TOG_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.Not related to oscillator.
   type MISC0_TOG_STOP_MODE_CONFIG_Field is
     (
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_TOG_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_TOG_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_TOG_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_TOG_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_TOG_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_TOG_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_TOG_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_TOG_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_TOG_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_TOG_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_TOG_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's. Not related to oscillator.
   type MISC0_TOG_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_TOG_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type XTALOSC24M_MISC0_TOG_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_TOG_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Selfbiasoff_0;
      --  Not related to oscillator.
      REFTOP_VBGADJ      : MISC0_TOG_REFTOP_VBGADJ_Field :=
                            NRF_SVD.XTALOSC24M.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.Not related to oscillator.
      STOP_MODE_CONFIG   : MISC0_TOG_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.XTALOSC24M.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_TOG_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.XTALOSC24M.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_TOG_OSC_I_Field :=
                            NRF_SVD.XTALOSC24M.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable.
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_TOG_CLKGATE_CTRL_Field :=
                            NRF_SVD.XTALOSC24M.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_TOG_CLKGATE_DELAY_Field :=
                            NRF_SVD.XTALOSC24M.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_TOG_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.XTALOSC24M.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's. Not related to
      --  oscillator.
      VID_PLL_PREDIV     : MISC0_TOG_VID_PLL_PREDIV_Field :=
                            NRF_SVD.XTALOSC24M.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_MISC0_TOG_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  RC Osc. enable control.
   type LOWPWR_CTRL_RC_OSC_EN_Field is
     (
      --  Use XTAL OSC to source the 24MHz clock
      Rc_Osc_En_0,
      --  Use RC OSC
      Rc_Osc_En_1)
     with Size => 1;
   for LOWPWR_CTRL_RC_OSC_EN_Field use
     (Rc_Osc_En_0 => 0,
      Rc_Osc_En_1 => 1);

   subtype XTALOSC24M_LOWPWR_CTRL_RC_OSC_PROG_Field is HAL.UInt3;

   --  Select the source for the 24MHz clock.
   type LOWPWR_CTRL_OSC_SEL_Field is
     (
      --  XTAL OSC
      Osc_Sel_0,
      --  RC OSC
      Osc_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_OSC_SEL_Field use
     (Osc_Sel_0 => 0,
      Osc_Sel_1 => 1);

   --  Bandgap select. Not related to oscillator.
   type LOWPWR_CTRL_LPBG_SEL_Field is
     (
      --  Normal power bandgap
      Lpbg_Sel_0,
      --  Low power bandgap
      Lpbg_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_LPBG_SEL_Field use
     (Lpbg_Sel_0 => 0,
      Lpbg_Sel_1 => 1);

   --  Specifies the time delay between when the 24MHz xtal is powered up until
   --  it is stable and ready to use
   type LOWPWR_CTRL_XTALOSC_PWRUP_DELAY_Field is
     (
      --  0.25ms
      Xtalosc_Pwrup_Delay_0,
      --  0.5ms
      Xtalosc_Pwrup_Delay_1,
      --  1ms
      Xtalosc_Pwrup_Delay_2,
      --  2ms
      Xtalosc_Pwrup_Delay_3)
     with Size => 2;
   for LOWPWR_CTRL_XTALOSC_PWRUP_DELAY_Field use
     (Xtalosc_Pwrup_Delay_0 => 0,
      Xtalosc_Pwrup_Delay_1 => 1,
      Xtalosc_Pwrup_Delay_2 => 2,
      Xtalosc_Pwrup_Delay_3 => 3);

   --  Status of the 24MHz xtal oscillator.
   type LOWPWR_CTRL_XTALOSC_PWRUP_STAT_Field is
     (
      --  Not stable
      Xtalosc_Pwrup_Stat_0,
      --  Stable and ready to use
      Xtalosc_Pwrup_Stat_1)
     with Size => 1;
   for LOWPWR_CTRL_XTALOSC_PWRUP_STAT_Field use
     (Xtalosc_Pwrup_Stat_0 => 0,
      Xtalosc_Pwrup_Stat_1 => 1);

   --  XTAL OSC (LP) Control Register
   type XTALOSC24M_LOWPWR_CTRL_Register is record
      --  RC Osc. enable control.
      RC_OSC_EN           : LOWPWR_CTRL_RC_OSC_EN_Field :=
                             NRF_SVD.XTALOSC24M.Rc_Osc_En_1;
      --  RC osc. tuning values.
      RC_OSC_PROG         : XTALOSC24M_LOWPWR_CTRL_RC_OSC_PROG_Field := 16#4#;
      --  Select the source for the 24MHz clock.
      OSC_SEL             : LOWPWR_CTRL_OSC_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Osc_Sel_0;
      --  Bandgap select. Not related to oscillator.
      LPBG_SEL            : LOWPWR_CTRL_LPBG_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Lpbg_Sel_0;
      --  Low power bandgap test bit. Not related to oscillator.
      LPBG_TEST           : Boolean := False;
      --  Low power reftop ibias disable. Not related to oscillator.
      REFTOP_IBIAS_OFF    : Boolean := False;
      --  L1 power gate control. Used as software override. Not related to
      --  oscillator.
      L1_PWRGATE          : Boolean := False;
      --  L2 power gate control. Used as software override. Not related to
      --  oscillator.
      L2_PWRGATE          : Boolean := False;
      --  CPU power gate control. Used as software override. Test purpose only
      --  Not related to oscillator.
      CPU_PWRGATE         : Boolean := False;
      --  Display logic power gate control. Used as software override. Not
      --  related to oscillator.
      DISPLAY_PWRGATE     : Boolean := False;
      --  unspecified
      Reserved_12_12      : HAL.Bit := 16#0#;
      --  For debug purposes only
      RCOSC_CG_OVERRIDE   : Boolean := False;
      --  Specifies the time delay between when the 24MHz xtal is powered up
      --  until it is stable and ready to use
      XTALOSC_PWRUP_DELAY : LOWPWR_CTRL_XTALOSC_PWRUP_DELAY_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Delay_1;
      --  Read-only. Status of the 24MHz xtal oscillator.
      XTALOSC_PWRUP_STAT  : LOWPWR_CTRL_XTALOSC_PWRUP_STAT_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Stat_0;
      --  Display power gate control. Used as software mask. Set to zero to
      --  force ungated.
      MIX_PWRGATE         : Boolean := False;
      --  unspecified
      Reserved_18_31      : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_LOWPWR_CTRL_Register use record
      RC_OSC_EN           at 0 range 0 .. 0;
      RC_OSC_PROG         at 0 range 1 .. 3;
      OSC_SEL             at 0 range 4 .. 4;
      LPBG_SEL            at 0 range 5 .. 5;
      LPBG_TEST           at 0 range 6 .. 6;
      REFTOP_IBIAS_OFF    at 0 range 7 .. 7;
      L1_PWRGATE          at 0 range 8 .. 8;
      L2_PWRGATE          at 0 range 9 .. 9;
      CPU_PWRGATE         at 0 range 10 .. 10;
      DISPLAY_PWRGATE     at 0 range 11 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      RCOSC_CG_OVERRIDE   at 0 range 13 .. 13;
      XTALOSC_PWRUP_DELAY at 0 range 14 .. 15;
      XTALOSC_PWRUP_STAT  at 0 range 16 .. 16;
      MIX_PWRGATE         at 0 range 17 .. 17;
      Reserved_18_31      at 0 range 18 .. 31;
   end record;

   --  RC Osc. enable control.
   type LOWPWR_CTRL_SET_RC_OSC_EN_Field is
     (
      --  Use XTAL OSC to source the 24MHz clock
      Rc_Osc_En_0,
      --  Use RC OSC
      Rc_Osc_En_1)
     with Size => 1;
   for LOWPWR_CTRL_SET_RC_OSC_EN_Field use
     (Rc_Osc_En_0 => 0,
      Rc_Osc_En_1 => 1);

   subtype XTALOSC24M_LOWPWR_CTRL_SET_RC_OSC_PROG_Field is HAL.UInt3;

   --  Select the source for the 24MHz clock.
   type LOWPWR_CTRL_SET_OSC_SEL_Field is
     (
      --  XTAL OSC
      Osc_Sel_0,
      --  RC OSC
      Osc_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_SET_OSC_SEL_Field use
     (Osc_Sel_0 => 0,
      Osc_Sel_1 => 1);

   --  Bandgap select. Not related to oscillator.
   type LOWPWR_CTRL_SET_LPBG_SEL_Field is
     (
      --  Normal power bandgap
      Lpbg_Sel_0,
      --  Low power bandgap
      Lpbg_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_SET_LPBG_SEL_Field use
     (Lpbg_Sel_0 => 0,
      Lpbg_Sel_1 => 1);

   --  Specifies the time delay between when the 24MHz xtal is powered up until
   --  it is stable and ready to use
   type LOWPWR_CTRL_SET_XTALOSC_PWRUP_DELAY_Field is
     (
      --  0.25ms
      Xtalosc_Pwrup_Delay_0,
      --  0.5ms
      Xtalosc_Pwrup_Delay_1,
      --  1ms
      Xtalosc_Pwrup_Delay_2,
      --  2ms
      Xtalosc_Pwrup_Delay_3)
     with Size => 2;
   for LOWPWR_CTRL_SET_XTALOSC_PWRUP_DELAY_Field use
     (Xtalosc_Pwrup_Delay_0 => 0,
      Xtalosc_Pwrup_Delay_1 => 1,
      Xtalosc_Pwrup_Delay_2 => 2,
      Xtalosc_Pwrup_Delay_3 => 3);

   --  Status of the 24MHz xtal oscillator.
   type LOWPWR_CTRL_SET_XTALOSC_PWRUP_STAT_Field is
     (
      --  Not stable
      Xtalosc_Pwrup_Stat_0,
      --  Stable and ready to use
      Xtalosc_Pwrup_Stat_1)
     with Size => 1;
   for LOWPWR_CTRL_SET_XTALOSC_PWRUP_STAT_Field use
     (Xtalosc_Pwrup_Stat_0 => 0,
      Xtalosc_Pwrup_Stat_1 => 1);

   --  XTAL OSC (LP) Control Register
   type XTALOSC24M_LOWPWR_CTRL_SET_Register is record
      --  RC Osc. enable control.
      RC_OSC_EN           : LOWPWR_CTRL_SET_RC_OSC_EN_Field :=
                             NRF_SVD.XTALOSC24M.Rc_Osc_En_1;
      --  RC osc. tuning values.
      RC_OSC_PROG         : XTALOSC24M_LOWPWR_CTRL_SET_RC_OSC_PROG_Field :=
                             16#4#;
      --  Select the source for the 24MHz clock.
      OSC_SEL             : LOWPWR_CTRL_SET_OSC_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Osc_Sel_0;
      --  Bandgap select. Not related to oscillator.
      LPBG_SEL            : LOWPWR_CTRL_SET_LPBG_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Lpbg_Sel_0;
      --  Low power bandgap test bit. Not related to oscillator.
      LPBG_TEST           : Boolean := False;
      --  Low power reftop ibias disable. Not related to oscillator.
      REFTOP_IBIAS_OFF    : Boolean := False;
      --  L1 power gate control. Used as software override. Not related to
      --  oscillator.
      L1_PWRGATE          : Boolean := False;
      --  L2 power gate control. Used as software override. Not related to
      --  oscillator.
      L2_PWRGATE          : Boolean := False;
      --  CPU power gate control. Used as software override. Test purpose only
      --  Not related to oscillator.
      CPU_PWRGATE         : Boolean := False;
      --  Display logic power gate control. Used as software override. Not
      --  related to oscillator.
      DISPLAY_PWRGATE     : Boolean := False;
      --  unspecified
      Reserved_12_12      : HAL.Bit := 16#0#;
      --  For debug purposes only
      RCOSC_CG_OVERRIDE   : Boolean := False;
      --  Specifies the time delay between when the 24MHz xtal is powered up
      --  until it is stable and ready to use
      XTALOSC_PWRUP_DELAY : LOWPWR_CTRL_SET_XTALOSC_PWRUP_DELAY_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Delay_1;
      --  Read-only. Status of the 24MHz xtal oscillator.
      XTALOSC_PWRUP_STAT  : LOWPWR_CTRL_SET_XTALOSC_PWRUP_STAT_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Stat_0;
      --  Display power gate control. Used as software mask. Set to zero to
      --  force ungated.
      MIX_PWRGATE         : Boolean := False;
      --  unspecified
      Reserved_18_31      : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_LOWPWR_CTRL_SET_Register use record
      RC_OSC_EN           at 0 range 0 .. 0;
      RC_OSC_PROG         at 0 range 1 .. 3;
      OSC_SEL             at 0 range 4 .. 4;
      LPBG_SEL            at 0 range 5 .. 5;
      LPBG_TEST           at 0 range 6 .. 6;
      REFTOP_IBIAS_OFF    at 0 range 7 .. 7;
      L1_PWRGATE          at 0 range 8 .. 8;
      L2_PWRGATE          at 0 range 9 .. 9;
      CPU_PWRGATE         at 0 range 10 .. 10;
      DISPLAY_PWRGATE     at 0 range 11 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      RCOSC_CG_OVERRIDE   at 0 range 13 .. 13;
      XTALOSC_PWRUP_DELAY at 0 range 14 .. 15;
      XTALOSC_PWRUP_STAT  at 0 range 16 .. 16;
      MIX_PWRGATE         at 0 range 17 .. 17;
      Reserved_18_31      at 0 range 18 .. 31;
   end record;

   --  RC Osc. enable control.
   type LOWPWR_CTRL_CLR_RC_OSC_EN_Field is
     (
      --  Use XTAL OSC to source the 24MHz clock
      Rc_Osc_En_0,
      --  Use RC OSC
      Rc_Osc_En_1)
     with Size => 1;
   for LOWPWR_CTRL_CLR_RC_OSC_EN_Field use
     (Rc_Osc_En_0 => 0,
      Rc_Osc_En_1 => 1);

   subtype XTALOSC24M_LOWPWR_CTRL_CLR_RC_OSC_PROG_Field is HAL.UInt3;

   --  Select the source for the 24MHz clock.
   type LOWPWR_CTRL_CLR_OSC_SEL_Field is
     (
      --  XTAL OSC
      Osc_Sel_0,
      --  RC OSC
      Osc_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_CLR_OSC_SEL_Field use
     (Osc_Sel_0 => 0,
      Osc_Sel_1 => 1);

   --  Bandgap select. Not related to oscillator.
   type LOWPWR_CTRL_CLR_LPBG_SEL_Field is
     (
      --  Normal power bandgap
      Lpbg_Sel_0,
      --  Low power bandgap
      Lpbg_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_CLR_LPBG_SEL_Field use
     (Lpbg_Sel_0 => 0,
      Lpbg_Sel_1 => 1);

   --  Specifies the time delay between when the 24MHz xtal is powered up until
   --  it is stable and ready to use
   type LOWPWR_CTRL_CLR_XTALOSC_PWRUP_DELAY_Field is
     (
      --  0.25ms
      Xtalosc_Pwrup_Delay_0,
      --  0.5ms
      Xtalosc_Pwrup_Delay_1,
      --  1ms
      Xtalosc_Pwrup_Delay_2,
      --  2ms
      Xtalosc_Pwrup_Delay_3)
     with Size => 2;
   for LOWPWR_CTRL_CLR_XTALOSC_PWRUP_DELAY_Field use
     (Xtalosc_Pwrup_Delay_0 => 0,
      Xtalosc_Pwrup_Delay_1 => 1,
      Xtalosc_Pwrup_Delay_2 => 2,
      Xtalosc_Pwrup_Delay_3 => 3);

   --  Status of the 24MHz xtal oscillator.
   type LOWPWR_CTRL_CLR_XTALOSC_PWRUP_STAT_Field is
     (
      --  Not stable
      Xtalosc_Pwrup_Stat_0,
      --  Stable and ready to use
      Xtalosc_Pwrup_Stat_1)
     with Size => 1;
   for LOWPWR_CTRL_CLR_XTALOSC_PWRUP_STAT_Field use
     (Xtalosc_Pwrup_Stat_0 => 0,
      Xtalosc_Pwrup_Stat_1 => 1);

   --  XTAL OSC (LP) Control Register
   type XTALOSC24M_LOWPWR_CTRL_CLR_Register is record
      --  RC Osc. enable control.
      RC_OSC_EN           : LOWPWR_CTRL_CLR_RC_OSC_EN_Field :=
                             NRF_SVD.XTALOSC24M.Rc_Osc_En_1;
      --  RC osc. tuning values.
      RC_OSC_PROG         : XTALOSC24M_LOWPWR_CTRL_CLR_RC_OSC_PROG_Field :=
                             16#4#;
      --  Select the source for the 24MHz clock.
      OSC_SEL             : LOWPWR_CTRL_CLR_OSC_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Osc_Sel_0;
      --  Bandgap select. Not related to oscillator.
      LPBG_SEL            : LOWPWR_CTRL_CLR_LPBG_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Lpbg_Sel_0;
      --  Low power bandgap test bit. Not related to oscillator.
      LPBG_TEST           : Boolean := False;
      --  Low power reftop ibias disable. Not related to oscillator.
      REFTOP_IBIAS_OFF    : Boolean := False;
      --  L1 power gate control. Used as software override. Not related to
      --  oscillator.
      L1_PWRGATE          : Boolean := False;
      --  L2 power gate control. Used as software override. Not related to
      --  oscillator.
      L2_PWRGATE          : Boolean := False;
      --  CPU power gate control. Used as software override. Test purpose only
      --  Not related to oscillator.
      CPU_PWRGATE         : Boolean := False;
      --  Display logic power gate control. Used as software override. Not
      --  related to oscillator.
      DISPLAY_PWRGATE     : Boolean := False;
      --  unspecified
      Reserved_12_12      : HAL.Bit := 16#0#;
      --  For debug purposes only
      RCOSC_CG_OVERRIDE   : Boolean := False;
      --  Specifies the time delay between when the 24MHz xtal is powered up
      --  until it is stable and ready to use
      XTALOSC_PWRUP_DELAY : LOWPWR_CTRL_CLR_XTALOSC_PWRUP_DELAY_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Delay_1;
      --  Read-only. Status of the 24MHz xtal oscillator.
      XTALOSC_PWRUP_STAT  : LOWPWR_CTRL_CLR_XTALOSC_PWRUP_STAT_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Stat_0;
      --  Display power gate control. Used as software mask. Set to zero to
      --  force ungated.
      MIX_PWRGATE         : Boolean := False;
      --  unspecified
      Reserved_18_31      : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_LOWPWR_CTRL_CLR_Register use record
      RC_OSC_EN           at 0 range 0 .. 0;
      RC_OSC_PROG         at 0 range 1 .. 3;
      OSC_SEL             at 0 range 4 .. 4;
      LPBG_SEL            at 0 range 5 .. 5;
      LPBG_TEST           at 0 range 6 .. 6;
      REFTOP_IBIAS_OFF    at 0 range 7 .. 7;
      L1_PWRGATE          at 0 range 8 .. 8;
      L2_PWRGATE          at 0 range 9 .. 9;
      CPU_PWRGATE         at 0 range 10 .. 10;
      DISPLAY_PWRGATE     at 0 range 11 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      RCOSC_CG_OVERRIDE   at 0 range 13 .. 13;
      XTALOSC_PWRUP_DELAY at 0 range 14 .. 15;
      XTALOSC_PWRUP_STAT  at 0 range 16 .. 16;
      MIX_PWRGATE         at 0 range 17 .. 17;
      Reserved_18_31      at 0 range 18 .. 31;
   end record;

   --  RC Osc. enable control.
   type LOWPWR_CTRL_TOG_RC_OSC_EN_Field is
     (
      --  Use XTAL OSC to source the 24MHz clock
      Rc_Osc_En_0,
      --  Use RC OSC
      Rc_Osc_En_1)
     with Size => 1;
   for LOWPWR_CTRL_TOG_RC_OSC_EN_Field use
     (Rc_Osc_En_0 => 0,
      Rc_Osc_En_1 => 1);

   subtype XTALOSC24M_LOWPWR_CTRL_TOG_RC_OSC_PROG_Field is HAL.UInt3;

   --  Select the source for the 24MHz clock.
   type LOWPWR_CTRL_TOG_OSC_SEL_Field is
     (
      --  XTAL OSC
      Osc_Sel_0,
      --  RC OSC
      Osc_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_TOG_OSC_SEL_Field use
     (Osc_Sel_0 => 0,
      Osc_Sel_1 => 1);

   --  Bandgap select. Not related to oscillator.
   type LOWPWR_CTRL_TOG_LPBG_SEL_Field is
     (
      --  Normal power bandgap
      Lpbg_Sel_0,
      --  Low power bandgap
      Lpbg_Sel_1)
     with Size => 1;
   for LOWPWR_CTRL_TOG_LPBG_SEL_Field use
     (Lpbg_Sel_0 => 0,
      Lpbg_Sel_1 => 1);

   --  Specifies the time delay between when the 24MHz xtal is powered up until
   --  it is stable and ready to use
   type LOWPWR_CTRL_TOG_XTALOSC_PWRUP_DELAY_Field is
     (
      --  0.25ms
      Xtalosc_Pwrup_Delay_0,
      --  0.5ms
      Xtalosc_Pwrup_Delay_1,
      --  1ms
      Xtalosc_Pwrup_Delay_2,
      --  2ms
      Xtalosc_Pwrup_Delay_3)
     with Size => 2;
   for LOWPWR_CTRL_TOG_XTALOSC_PWRUP_DELAY_Field use
     (Xtalosc_Pwrup_Delay_0 => 0,
      Xtalosc_Pwrup_Delay_1 => 1,
      Xtalosc_Pwrup_Delay_2 => 2,
      Xtalosc_Pwrup_Delay_3 => 3);

   --  Status of the 24MHz xtal oscillator.
   type LOWPWR_CTRL_TOG_XTALOSC_PWRUP_STAT_Field is
     (
      --  Not stable
      Xtalosc_Pwrup_Stat_0,
      --  Stable and ready to use
      Xtalosc_Pwrup_Stat_1)
     with Size => 1;
   for LOWPWR_CTRL_TOG_XTALOSC_PWRUP_STAT_Field use
     (Xtalosc_Pwrup_Stat_0 => 0,
      Xtalosc_Pwrup_Stat_1 => 1);

   --  XTAL OSC (LP) Control Register
   type XTALOSC24M_LOWPWR_CTRL_TOG_Register is record
      --  RC Osc. enable control.
      RC_OSC_EN           : LOWPWR_CTRL_TOG_RC_OSC_EN_Field :=
                             NRF_SVD.XTALOSC24M.Rc_Osc_En_1;
      --  RC osc. tuning values.
      RC_OSC_PROG         : XTALOSC24M_LOWPWR_CTRL_TOG_RC_OSC_PROG_Field :=
                             16#4#;
      --  Select the source for the 24MHz clock.
      OSC_SEL             : LOWPWR_CTRL_TOG_OSC_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Osc_Sel_0;
      --  Bandgap select. Not related to oscillator.
      LPBG_SEL            : LOWPWR_CTRL_TOG_LPBG_SEL_Field :=
                             NRF_SVD.XTALOSC24M.Lpbg_Sel_0;
      --  Low power bandgap test bit. Not related to oscillator.
      LPBG_TEST           : Boolean := False;
      --  Low power reftop ibias disable. Not related to oscillator.
      REFTOP_IBIAS_OFF    : Boolean := False;
      --  L1 power gate control. Used as software override. Not related to
      --  oscillator.
      L1_PWRGATE          : Boolean := False;
      --  L2 power gate control. Used as software override. Not related to
      --  oscillator.
      L2_PWRGATE          : Boolean := False;
      --  CPU power gate control. Used as software override. Test purpose only
      --  Not related to oscillator.
      CPU_PWRGATE         : Boolean := False;
      --  Display logic power gate control. Used as software override. Not
      --  related to oscillator.
      DISPLAY_PWRGATE     : Boolean := False;
      --  unspecified
      Reserved_12_12      : HAL.Bit := 16#0#;
      --  For debug purposes only
      RCOSC_CG_OVERRIDE   : Boolean := False;
      --  Specifies the time delay between when the 24MHz xtal is powered up
      --  until it is stable and ready to use
      XTALOSC_PWRUP_DELAY : LOWPWR_CTRL_TOG_XTALOSC_PWRUP_DELAY_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Delay_1;
      --  Read-only. Status of the 24MHz xtal oscillator.
      XTALOSC_PWRUP_STAT  : LOWPWR_CTRL_TOG_XTALOSC_PWRUP_STAT_Field :=
                             NRF_SVD.XTALOSC24M.Xtalosc_Pwrup_Stat_0;
      --  Display power gate control. Used as software mask. Set to zero to
      --  force ungated.
      MIX_PWRGATE         : Boolean := False;
      --  unspecified
      Reserved_18_31      : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_LOWPWR_CTRL_TOG_Register use record
      RC_OSC_EN           at 0 range 0 .. 0;
      RC_OSC_PROG         at 0 range 1 .. 3;
      OSC_SEL             at 0 range 4 .. 4;
      LPBG_SEL            at 0 range 5 .. 5;
      LPBG_TEST           at 0 range 6 .. 6;
      REFTOP_IBIAS_OFF    at 0 range 7 .. 7;
      L1_PWRGATE          at 0 range 8 .. 8;
      L2_PWRGATE          at 0 range 9 .. 9;
      CPU_PWRGATE         at 0 range 10 .. 10;
      DISPLAY_PWRGATE     at 0 range 11 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      RCOSC_CG_OVERRIDE   at 0 range 13 .. 13;
      XTALOSC_PWRUP_DELAY at 0 range 14 .. 15;
      XTALOSC_PWRUP_STAT  at 0 range 16 .. 16;
      MIX_PWRGATE         at 0 range 17 .. 17;
      Reserved_18_31      at 0 range 18 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG0_RC_OSC_PROG_Field is HAL.UInt8;
   subtype XTALOSC24M_OSC_CONFIG0_HYST_PLUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_HYST_MINUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_RC_OSC_PROG_CUR_Field is HAL.UInt8;

   --  XTAL OSC Configuration 0 Register
   type XTALOSC24M_OSC_CONFIG0_Register is record
      --  Start/stop bit for the RC tuning calculation logic. If stopped the
      --  tuning logic is reset.
      START           : Boolean := False;
      --  Enables the tuning logic to calculate new RC tuning values
      ENABLE          : Boolean := False;
      --  Bypasses any calculated RC tuning value and uses the programmed
      --  register value.
      BYPASS          : Boolean := False;
      --  Invert the stepping of the calculated RC tuning value.
      INVERT          : Boolean := False;
      --  RC osc. tuning values.
      RC_OSC_PROG     : XTALOSC24M_OSC_CONFIG0_RC_OSC_PROG_Field := 16#2#;
      --  Positive hysteresis value
      HYST_PLUS       : XTALOSC24M_OSC_CONFIG0_HYST_PLUS_Field := 16#1#;
      --  Negative hysteresis value
      HYST_MINUS      : XTALOSC24M_OSC_CONFIG0_HYST_MINUS_Field := 16#0#;
      --  unspecified
      Reserved_20_23  : HAL.UInt4 := 16#0#;
      --  The current tuning value in use.
      RC_OSC_PROG_CUR : XTALOSC24M_OSC_CONFIG0_RC_OSC_PROG_CUR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG0_Register use record
      START           at 0 range 0 .. 0;
      ENABLE          at 0 range 1 .. 1;
      BYPASS          at 0 range 2 .. 2;
      INVERT          at 0 range 3 .. 3;
      RC_OSC_PROG     at 0 range 4 .. 11;
      HYST_PLUS       at 0 range 12 .. 15;
      HYST_MINUS      at 0 range 16 .. 19;
      Reserved_20_23  at 0 range 20 .. 23;
      RC_OSC_PROG_CUR at 0 range 24 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG0_SET_RC_OSC_PROG_Field is HAL.UInt8;
   subtype XTALOSC24M_OSC_CONFIG0_SET_HYST_PLUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_SET_HYST_MINUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_SET_RC_OSC_PROG_CUR_Field is HAL.UInt8;

   --  XTAL OSC Configuration 0 Register
   type XTALOSC24M_OSC_CONFIG0_SET_Register is record
      --  Start/stop bit for the RC tuning calculation logic. If stopped the
      --  tuning logic is reset.
      START           : Boolean := False;
      --  Enables the tuning logic to calculate new RC tuning values
      ENABLE          : Boolean := False;
      --  Bypasses any calculated RC tuning value and uses the programmed
      --  register value.
      BYPASS          : Boolean := False;
      --  Invert the stepping of the calculated RC tuning value.
      INVERT          : Boolean := False;
      --  RC osc. tuning values.
      RC_OSC_PROG     : XTALOSC24M_OSC_CONFIG0_SET_RC_OSC_PROG_Field := 16#2#;
      --  Positive hysteresis value
      HYST_PLUS       : XTALOSC24M_OSC_CONFIG0_SET_HYST_PLUS_Field := 16#1#;
      --  Negative hysteresis value
      HYST_MINUS      : XTALOSC24M_OSC_CONFIG0_SET_HYST_MINUS_Field := 16#0#;
      --  unspecified
      Reserved_20_23  : HAL.UInt4 := 16#0#;
      --  The current tuning value in use.
      RC_OSC_PROG_CUR : XTALOSC24M_OSC_CONFIG0_SET_RC_OSC_PROG_CUR_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG0_SET_Register use record
      START           at 0 range 0 .. 0;
      ENABLE          at 0 range 1 .. 1;
      BYPASS          at 0 range 2 .. 2;
      INVERT          at 0 range 3 .. 3;
      RC_OSC_PROG     at 0 range 4 .. 11;
      HYST_PLUS       at 0 range 12 .. 15;
      HYST_MINUS      at 0 range 16 .. 19;
      Reserved_20_23  at 0 range 20 .. 23;
      RC_OSC_PROG_CUR at 0 range 24 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG0_CLR_RC_OSC_PROG_Field is HAL.UInt8;
   subtype XTALOSC24M_OSC_CONFIG0_CLR_HYST_PLUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_CLR_HYST_MINUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_CLR_RC_OSC_PROG_CUR_Field is HAL.UInt8;

   --  XTAL OSC Configuration 0 Register
   type XTALOSC24M_OSC_CONFIG0_CLR_Register is record
      --  Start/stop bit for the RC tuning calculation logic. If stopped the
      --  tuning logic is reset.
      START           : Boolean := False;
      --  Enables the tuning logic to calculate new RC tuning values
      ENABLE          : Boolean := False;
      --  Bypasses any calculated RC tuning value and uses the programmed
      --  register value.
      BYPASS          : Boolean := False;
      --  Invert the stepping of the calculated RC tuning value.
      INVERT          : Boolean := False;
      --  RC osc. tuning values.
      RC_OSC_PROG     : XTALOSC24M_OSC_CONFIG0_CLR_RC_OSC_PROG_Field := 16#2#;
      --  Positive hysteresis value
      HYST_PLUS       : XTALOSC24M_OSC_CONFIG0_CLR_HYST_PLUS_Field := 16#1#;
      --  Negative hysteresis value
      HYST_MINUS      : XTALOSC24M_OSC_CONFIG0_CLR_HYST_MINUS_Field := 16#0#;
      --  unspecified
      Reserved_20_23  : HAL.UInt4 := 16#0#;
      --  The current tuning value in use.
      RC_OSC_PROG_CUR : XTALOSC24M_OSC_CONFIG0_CLR_RC_OSC_PROG_CUR_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG0_CLR_Register use record
      START           at 0 range 0 .. 0;
      ENABLE          at 0 range 1 .. 1;
      BYPASS          at 0 range 2 .. 2;
      INVERT          at 0 range 3 .. 3;
      RC_OSC_PROG     at 0 range 4 .. 11;
      HYST_PLUS       at 0 range 12 .. 15;
      HYST_MINUS      at 0 range 16 .. 19;
      Reserved_20_23  at 0 range 20 .. 23;
      RC_OSC_PROG_CUR at 0 range 24 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG0_TOG_RC_OSC_PROG_Field is HAL.UInt8;
   subtype XTALOSC24M_OSC_CONFIG0_TOG_HYST_PLUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_TOG_HYST_MINUS_Field is HAL.UInt4;
   subtype XTALOSC24M_OSC_CONFIG0_TOG_RC_OSC_PROG_CUR_Field is HAL.UInt8;

   --  XTAL OSC Configuration 0 Register
   type XTALOSC24M_OSC_CONFIG0_TOG_Register is record
      --  Start/stop bit for the RC tuning calculation logic. If stopped the
      --  tuning logic is reset.
      START           : Boolean := False;
      --  Enables the tuning logic to calculate new RC tuning values
      ENABLE          : Boolean := False;
      --  Bypasses any calculated RC tuning value and uses the programmed
      --  register value.
      BYPASS          : Boolean := False;
      --  Invert the stepping of the calculated RC tuning value.
      INVERT          : Boolean := False;
      --  RC osc. tuning values.
      RC_OSC_PROG     : XTALOSC24M_OSC_CONFIG0_TOG_RC_OSC_PROG_Field := 16#2#;
      --  Positive hysteresis value
      HYST_PLUS       : XTALOSC24M_OSC_CONFIG0_TOG_HYST_PLUS_Field := 16#1#;
      --  Negative hysteresis value
      HYST_MINUS      : XTALOSC24M_OSC_CONFIG0_TOG_HYST_MINUS_Field := 16#0#;
      --  unspecified
      Reserved_20_23  : HAL.UInt4 := 16#0#;
      --  The current tuning value in use.
      RC_OSC_PROG_CUR : XTALOSC24M_OSC_CONFIG0_TOG_RC_OSC_PROG_CUR_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG0_TOG_Register use record
      START           at 0 range 0 .. 0;
      ENABLE          at 0 range 1 .. 1;
      BYPASS          at 0 range 2 .. 2;
      INVERT          at 0 range 3 .. 3;
      RC_OSC_PROG     at 0 range 4 .. 11;
      HYST_PLUS       at 0 range 12 .. 15;
      HYST_MINUS      at 0 range 16 .. 19;
      Reserved_20_23  at 0 range 20 .. 23;
      RC_OSC_PROG_CUR at 0 range 24 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG1_COUNT_RC_TRG_Field is HAL.UInt12;
   subtype XTALOSC24M_OSC_CONFIG1_COUNT_RC_CUR_Field is HAL.UInt12;

   --  XTAL OSC Configuration 1 Register
   type XTALOSC24M_OSC_CONFIG1_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_RC_TRG   : XTALOSC24M_OSC_CONFIG1_COUNT_RC_TRG_Field := 16#2EE#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  The current tuning value in use.
      COUNT_RC_CUR   : XTALOSC24M_OSC_CONFIG1_COUNT_RC_CUR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG1_Register use record
      COUNT_RC_TRG   at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      COUNT_RC_CUR   at 0 range 20 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG1_SET_COUNT_RC_TRG_Field is HAL.UInt12;
   subtype XTALOSC24M_OSC_CONFIG1_SET_COUNT_RC_CUR_Field is HAL.UInt12;

   --  XTAL OSC Configuration 1 Register
   type XTALOSC24M_OSC_CONFIG1_SET_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_RC_TRG   : XTALOSC24M_OSC_CONFIG1_SET_COUNT_RC_TRG_Field :=
                        16#2EE#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  The current tuning value in use.
      COUNT_RC_CUR   : XTALOSC24M_OSC_CONFIG1_SET_COUNT_RC_CUR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG1_SET_Register use record
      COUNT_RC_TRG   at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      COUNT_RC_CUR   at 0 range 20 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG1_CLR_COUNT_RC_TRG_Field is HAL.UInt12;
   subtype XTALOSC24M_OSC_CONFIG1_CLR_COUNT_RC_CUR_Field is HAL.UInt12;

   --  XTAL OSC Configuration 1 Register
   type XTALOSC24M_OSC_CONFIG1_CLR_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_RC_TRG   : XTALOSC24M_OSC_CONFIG1_CLR_COUNT_RC_TRG_Field :=
                        16#2EE#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  The current tuning value in use.
      COUNT_RC_CUR   : XTALOSC24M_OSC_CONFIG1_CLR_COUNT_RC_CUR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG1_CLR_Register use record
      COUNT_RC_TRG   at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      COUNT_RC_CUR   at 0 range 20 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG1_TOG_COUNT_RC_TRG_Field is HAL.UInt12;
   subtype XTALOSC24M_OSC_CONFIG1_TOG_COUNT_RC_CUR_Field is HAL.UInt12;

   --  XTAL OSC Configuration 1 Register
   type XTALOSC24M_OSC_CONFIG1_TOG_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_RC_TRG   : XTALOSC24M_OSC_CONFIG1_TOG_COUNT_RC_TRG_Field :=
                        16#2EE#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  The current tuning value in use.
      COUNT_RC_CUR   : XTALOSC24M_OSC_CONFIG1_TOG_COUNT_RC_CUR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG1_TOG_Register use record
      COUNT_RC_TRG   at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      COUNT_RC_CUR   at 0 range 20 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG2_COUNT_1M_TRG_Field is HAL.UInt12;

   --  XTAL OSC Configuration 2 Register
   type XTALOSC24M_OSC_CONFIG2_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_1M_TRG   : XTALOSC24M_OSC_CONFIG2_COUNT_1M_TRG_Field := 16#2E2#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Enable the 1MHz clock output. 0 - disabled; 1 - enabled.
      ENABLE_1M      : Boolean := True;
      --  Mux the corrected or uncorrected 1MHz clock to the output.
      MUX_1M         : Boolean := False;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Flag indicates that the count_1m count wasn't reached within 1 32KHz
      --  period
      CLK_1M_ERR_FL  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG2_Register use record
      COUNT_1M_TRG   at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ENABLE_1M      at 0 range 16 .. 16;
      MUX_1M         at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      CLK_1M_ERR_FL  at 0 range 31 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG2_SET_COUNT_1M_TRG_Field is HAL.UInt12;

   --  XTAL OSC Configuration 2 Register
   type XTALOSC24M_OSC_CONFIG2_SET_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_1M_TRG   : XTALOSC24M_OSC_CONFIG2_SET_COUNT_1M_TRG_Field :=
                        16#2E2#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Enable the 1MHz clock output. 0 - disabled; 1 - enabled.
      ENABLE_1M      : Boolean := True;
      --  Mux the corrected or uncorrected 1MHz clock to the output.
      MUX_1M         : Boolean := False;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Flag indicates that the count_1m count wasn't reached within 1 32KHz
      --  period
      CLK_1M_ERR_FL  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG2_SET_Register use record
      COUNT_1M_TRG   at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ENABLE_1M      at 0 range 16 .. 16;
      MUX_1M         at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      CLK_1M_ERR_FL  at 0 range 31 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG2_CLR_COUNT_1M_TRG_Field is HAL.UInt12;

   --  XTAL OSC Configuration 2 Register
   type XTALOSC24M_OSC_CONFIG2_CLR_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_1M_TRG   : XTALOSC24M_OSC_CONFIG2_CLR_COUNT_1M_TRG_Field :=
                        16#2E2#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Enable the 1MHz clock output. 0 - disabled; 1 - enabled.
      ENABLE_1M      : Boolean := True;
      --  Mux the corrected or uncorrected 1MHz clock to the output.
      MUX_1M         : Boolean := False;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Flag indicates that the count_1m count wasn't reached within 1 32KHz
      --  period
      CLK_1M_ERR_FL  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG2_CLR_Register use record
      COUNT_1M_TRG   at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ENABLE_1M      at 0 range 16 .. 16;
      MUX_1M         at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      CLK_1M_ERR_FL  at 0 range 31 .. 31;
   end record;

   subtype XTALOSC24M_OSC_CONFIG2_TOG_COUNT_1M_TRG_Field is HAL.UInt12;

   --  XTAL OSC Configuration 2 Register
   type XTALOSC24M_OSC_CONFIG2_TOG_Register is record
      --  The target count used to tune the RC OSC frequency
      COUNT_1M_TRG   : XTALOSC24M_OSC_CONFIG2_TOG_COUNT_1M_TRG_Field :=
                        16#2E2#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Enable the 1MHz clock output. 0 - disabled; 1 - enabled.
      ENABLE_1M      : Boolean := True;
      --  Mux the corrected or uncorrected 1MHz clock to the output.
      MUX_1M         : Boolean := False;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Flag indicates that the count_1m count wasn't reached within 1 32KHz
      --  period
      CLK_1M_ERR_FL  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALOSC24M_OSC_CONFIG2_TOG_Register use record
      COUNT_1M_TRG   at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ENABLE_1M      at 0 range 16 .. 16;
      MUX_1M         at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      CLK_1M_ERR_FL  at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  XTALOSC24M
   type XTALOSC24M_Peripheral is record
      --  Miscellaneous Register 0
      MISC0           : aliased XTALOSC24M_MISC0_Register;
      --  Miscellaneous Register 0
      MISC0_SET       : aliased XTALOSC24M_MISC0_SET_Register;
      --  Miscellaneous Register 0
      MISC0_CLR       : aliased XTALOSC24M_MISC0_CLR_Register;
      --  Miscellaneous Register 0
      MISC0_TOG       : aliased XTALOSC24M_MISC0_TOG_Register;
      --  XTAL OSC (LP) Control Register
      LOWPWR_CTRL     : aliased XTALOSC24M_LOWPWR_CTRL_Register;
      --  XTAL OSC (LP) Control Register
      LOWPWR_CTRL_SET : aliased XTALOSC24M_LOWPWR_CTRL_SET_Register;
      --  XTAL OSC (LP) Control Register
      LOWPWR_CTRL_CLR : aliased XTALOSC24M_LOWPWR_CTRL_CLR_Register;
      --  XTAL OSC (LP) Control Register
      LOWPWR_CTRL_TOG : aliased XTALOSC24M_LOWPWR_CTRL_TOG_Register;
      --  XTAL OSC Configuration 0 Register
      OSC_CONFIG0     : aliased XTALOSC24M_OSC_CONFIG0_Register;
      --  XTAL OSC Configuration 0 Register
      OSC_CONFIG0_SET : aliased XTALOSC24M_OSC_CONFIG0_SET_Register;
      --  XTAL OSC Configuration 0 Register
      OSC_CONFIG0_CLR : aliased XTALOSC24M_OSC_CONFIG0_CLR_Register;
      --  XTAL OSC Configuration 0 Register
      OSC_CONFIG0_TOG : aliased XTALOSC24M_OSC_CONFIG0_TOG_Register;
      --  XTAL OSC Configuration 1 Register
      OSC_CONFIG1     : aliased XTALOSC24M_OSC_CONFIG1_Register;
      --  XTAL OSC Configuration 1 Register
      OSC_CONFIG1_SET : aliased XTALOSC24M_OSC_CONFIG1_SET_Register;
      --  XTAL OSC Configuration 1 Register
      OSC_CONFIG1_CLR : aliased XTALOSC24M_OSC_CONFIG1_CLR_Register;
      --  XTAL OSC Configuration 1 Register
      OSC_CONFIG1_TOG : aliased XTALOSC24M_OSC_CONFIG1_TOG_Register;
      --  XTAL OSC Configuration 2 Register
      OSC_CONFIG2     : aliased XTALOSC24M_OSC_CONFIG2_Register;
      --  XTAL OSC Configuration 2 Register
      OSC_CONFIG2_SET : aliased XTALOSC24M_OSC_CONFIG2_SET_Register;
      --  XTAL OSC Configuration 2 Register
      OSC_CONFIG2_CLR : aliased XTALOSC24M_OSC_CONFIG2_CLR_Register;
      --  XTAL OSC Configuration 2 Register
      OSC_CONFIG2_TOG : aliased XTALOSC24M_OSC_CONFIG2_TOG_Register;
   end record
     with Volatile;

   for XTALOSC24M_Peripheral use record
      MISC0           at 16#150# range 0 .. 31;
      MISC0_SET       at 16#154# range 0 .. 31;
      MISC0_CLR       at 16#158# range 0 .. 31;
      MISC0_TOG       at 16#15C# range 0 .. 31;
      LOWPWR_CTRL     at 16#270# range 0 .. 31;
      LOWPWR_CTRL_SET at 16#274# range 0 .. 31;
      LOWPWR_CTRL_CLR at 16#278# range 0 .. 31;
      LOWPWR_CTRL_TOG at 16#27C# range 0 .. 31;
      OSC_CONFIG0     at 16#2A0# range 0 .. 31;
      OSC_CONFIG0_SET at 16#2A4# range 0 .. 31;
      OSC_CONFIG0_CLR at 16#2A8# range 0 .. 31;
      OSC_CONFIG0_TOG at 16#2AC# range 0 .. 31;
      OSC_CONFIG1     at 16#2B0# range 0 .. 31;
      OSC_CONFIG1_SET at 16#2B4# range 0 .. 31;
      OSC_CONFIG1_CLR at 16#2B8# range 0 .. 31;
      OSC_CONFIG1_TOG at 16#2BC# range 0 .. 31;
      OSC_CONFIG2     at 16#2C0# range 0 .. 31;
      OSC_CONFIG2_SET at 16#2C4# range 0 .. 31;
      OSC_CONFIG2_CLR at 16#2C8# range 0 .. 31;
      OSC_CONFIG2_TOG at 16#2CC# range 0 .. 31;
   end record;

   --  XTALOSC24M
   XTALOSC24M_Periph : aliased XTALOSC24M_Peripheral
     with Import, Address => System'To_Address (16#400D8000#);

end NRF_SVD.XTALOSC24M;
