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

--  This spec has been automatically generated from MKL46Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Segment Liquid Crystal Display
package NRF_SVD.LCD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  LCD duty select
   type GCR_DUTY_Field is
     (
      --  Use 1 BP (1/1 duty cycle).
      GCR_DUTY_Field_000,
      --  Use 2 BP (1/2 duty cycle).
      GCR_DUTY_Field_001,
      --  Use 3 BP (1/3 duty cycle).
      GCR_DUTY_Field_010,
      --  Use 4 BP (1/4 duty cycle). (Default)
      GCR_DUTY_Field_011,
      --  Use 8 BP (1/8 duty cycle).
      GCR_DUTY_Field_111)
     with Size => 3;
   for GCR_DUTY_Field use
     (GCR_DUTY_Field_000 => 0,
      GCR_DUTY_Field_001 => 1,
      GCR_DUTY_Field_010 => 2,
      GCR_DUTY_Field_011 => 3,
      GCR_DUTY_Field_111 => 7);

   subtype LCD_GCR_LCLK_Field is HAL.UInt3;

   --  LCD Clock Source Select
   type GCR_SOURCE_Field is
     (
      --  Selects the default clock as the LCD clock source.
      GCR_SOURCE_Field_0,
      --  Selects output of the alternate clock source selection (see
      --  ALTSOURCE) as the LCD clock source.
      GCR_SOURCE_Field_1)
     with Size => 1;
   for GCR_SOURCE_Field use
     (GCR_SOURCE_Field_0 => 0,
      GCR_SOURCE_Field_1 => 1);

   --  LCD Driver Enable
   type GCR_LCDEN_Field is
     (
      --  All front plane and back plane pins are disabled. The LCD controller
      --  system is also disabled, and all LCD waveform generation clocks are
      --  stopped. V LL3 is connected to V DD internally. All LCD pins, LCD_Pn,
      --  enabled using the LCD Pin Enable register, output a low value.
      GCR_LCDEN_Field_0,
      --  LCD controller driver system is enabled, and front plane and back
      --  plane waveforms are generated. All LCD pins, LCD_Pn, enabled if
      --  PAD_SAFE is clearusing the LCD Pin Enable register, output an LCD
      --  driver waveform. The back plane pins output an LCD driver back plane
      --  waveform based on the settings of DUTY[2:0]. Charge pump or resistor
      --  bias is enabled.
      GCR_LCDEN_Field_1)
     with Size => 1;
   for GCR_LCDEN_Field use
     (GCR_LCDEN_Field_0 => 0,
      GCR_LCDEN_Field_1 => 1);

   --  LCD Stop
   type GCR_LCDSTP_Field is
     (
      --  Allows the LCD driver, charge pump, resistor bias network, and
      --  voltage regulator to continue running during Stop mode.
      GCR_LCDSTP_Field_0,
      --  Disables the LCD driver, charge pump, resistor bias network, and
      --  voltage regulator when MCU enters Stop mode.
      GCR_LCDSTP_Field_1)
     with Size => 1;
   for GCR_LCDSTP_Field use
     (GCR_LCDSTP_Field_0 => 0,
      GCR_LCDSTP_Field_1 => 1);

   --  LCD Doze enable
   type GCR_LCDDOZE_Field is
     (
      --  Allows the LCD driver, charge pump, resistor bias network, and
      --  voltage regulator to continue running during Doze mode.
      GCR_LCDDOZE_Field_0,
      --  Disables the LCD driver, charge pump, resistor bias network, and
      --  voltage regulator when MCU enters Doze mode.
      GCR_LCDDOZE_Field_1)
     with Size => 1;
   for GCR_LCDDOZE_Field use
     (GCR_LCDDOZE_Field_0 => 0,
      GCR_LCDDOZE_Field_1 => 1);

   --  Fast Frame Rate Select
   type GCR_FFR_Field is
     (
      --  Standard Frame Rate LCD Frame Freq: 23.3 (min) 73.1 (max)
      GCR_FFR_Field_0,
      --  Fast Frame Rate (Standard Frame Rate x2) LCD Frame Freq: 46.6 (min)
      --  146.2 (max)
      GCR_FFR_Field_1)
     with Size => 1;
   for GCR_FFR_Field use
     (GCR_FFR_Field_0 => 0,
      GCR_FFR_Field_1 => 1);

   --  Selects the alternate clock source
   type GCR_ALTSOURCE_Field is
     (
      --  Select Alternate Clock Source 1 (default)
      GCR_ALTSOURCE_Field_0,
      --  Select Alternate Clock Source 2
      GCR_ALTSOURCE_Field_1)
     with Size => 1;
   for GCR_ALTSOURCE_Field use
     (GCR_ALTSOURCE_Field_0 => 0,
      GCR_ALTSOURCE_Field_1 => 1);

   --  LCD AlternateClock Divider
   type GCR_ALTDIV_Field is
     (
      --  Divide factor = 1 (No divide)
      GCR_ALTDIV_Field_0,
      --  Divide factor = 8
      GCR_ALTDIV_Field_1,
      --  Divide factor = 64
      GCR_ALTDIV_Field_10,
      --  Divide factor = 512
      GCR_ALTDIV_Field_11)
     with Size => 2;
   for GCR_ALTDIV_Field use
     (GCR_ALTDIV_Field_0 => 0,
      GCR_ALTDIV_Field_1 => 1,
      GCR_ALTDIV_Field_10 => 2,
      GCR_ALTDIV_Field_11 => 3);

   --  LCD Fault Detection Complete Interrupt Enable
   type GCR_FDCIEN_Field is
     (
      --  No interrupt request is generated by this event.
      GCR_FDCIEN_Field_0,
      --  When a fault is detected and FDCF bit is set, this event causes an
      --  interrupt request.
      GCR_FDCIEN_Field_1)
     with Size => 1;
   for GCR_FDCIEN_Field use
     (GCR_FDCIEN_Field_0 => 0,
      GCR_FDCIEN_Field_1 => 1);

   --  Pad Safe State Enable
   type GCR_PADSAFE_Field is
     (
      --  LCD frontplane and backplane functions enabled according to other LCD
      --  control bits
      GCR_PADSAFE_Field_0,
      --  LCD frontplane and backplane functions disabled
      GCR_PADSAFE_Field_1)
     with Size => 1;
   for GCR_PADSAFE_Field use
     (GCR_PADSAFE_Field_0 => 0,
      GCR_PADSAFE_Field_1 => 1);

   --  Voltage Supply Control
   type GCR_VSUPPLY_Field is
     (
      --  Drive VLL3 internally from VDD
      GCR_VSUPPLY_Field_0,
      --  Drive VLL3 externally from VDD or drive VLL internally from vIREG
      GCR_VSUPPLY_Field_1)
     with Size => 1;
   for GCR_VSUPPLY_Field use
     (GCR_VSUPPLY_Field_0 => 0,
      GCR_VSUPPLY_Field_1 => 1);

   subtype LCD_GCR_LADJ_Field is HAL.UInt2;

   --  Charge Pump or Resistor Bias Select
   type GCR_CPSEL_Field is
     (
      --  LCD charge pump is disabled. Resistor network selected. (The internal
      --  1/3-bias is forced.)
      GCR_CPSEL_Field_0,
      --  LCD charge pump is selected. Resistor network disabled. (The internal
      --  1/3-bias is forced.)
      GCR_CPSEL_Field_1)
     with Size => 1;
   for GCR_CPSEL_Field use
     (GCR_CPSEL_Field_0 => 0,
      GCR_CPSEL_Field_1 => 1);

   subtype LCD_GCR_RVTRIM_Field is HAL.UInt4;

   --  Regulated Voltage Enable
   type GCR_RVEN_Field is
     (
      --  Regulated voltage disabled.
      GCR_RVEN_Field_0,
      --  Regulated voltage enabled.
      GCR_RVEN_Field_1)
     with Size => 1;
   for GCR_RVEN_Field use
     (GCR_RVEN_Field_0 => 0,
      GCR_RVEN_Field_1 => 1);

   --  LCD General Control Register
   type LCD_GCR_Register is record
      --  LCD duty select
      DUTY           : GCR_DUTY_Field := NRF_SVD.LCD.GCR_DUTY_Field_011;
      --  LCD Clock Prescaler
      LCLK           : LCD_GCR_LCLK_Field := 16#0#;
      --  LCD Clock Source Select
      SOURCE         : GCR_SOURCE_Field := NRF_SVD.LCD.GCR_SOURCE_Field_0;
      --  LCD Driver Enable
      LCDEN          : GCR_LCDEN_Field := NRF_SVD.LCD.GCR_LCDEN_Field_0;
      --  LCD Stop
      LCDSTP         : GCR_LCDSTP_Field := NRF_SVD.LCD.GCR_LCDSTP_Field_0;
      --  LCD Doze enable
      LCDDOZE        : GCR_LCDDOZE_Field := NRF_SVD.LCD.GCR_LCDDOZE_Field_0;
      --  Fast Frame Rate Select
      FFR            : GCR_FFR_Field := NRF_SVD.LCD.GCR_FFR_Field_0;
      --  Selects the alternate clock source
      ALTSOURCE      : GCR_ALTSOURCE_Field :=
                        NRF_SVD.LCD.GCR_ALTSOURCE_Field_0;
      --  LCD AlternateClock Divider
      ALTDIV         : GCR_ALTDIV_Field := NRF_SVD.LCD.GCR_ALTDIV_Field_0;
      --  LCD Fault Detection Complete Interrupt Enable
      FDCIEN         : GCR_FDCIEN_Field := NRF_SVD.LCD.GCR_FDCIEN_Field_0;
      --  Pad Safe State Enable
      PADSAFE        : GCR_PADSAFE_Field := NRF_SVD.LCD.GCR_PADSAFE_Field_0;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Voltage Supply Control
      VSUPPLY        : GCR_VSUPPLY_Field := NRF_SVD.LCD.GCR_VSUPPLY_Field_0;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Load Adjust
      LADJ           : LCD_GCR_LADJ_Field := 16#3#;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Charge Pump or Resistor Bias Select
      CPSEL          : GCR_CPSEL_Field := NRF_SVD.LCD.GCR_CPSEL_Field_0;
      --  Regulated Voltage Trim
      RVTRIM         : LCD_GCR_RVTRIM_Field := 16#8#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Regulated Voltage Enable
      RVEN           : GCR_RVEN_Field := NRF_SVD.LCD.GCR_RVEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCD_GCR_Register use record
      DUTY           at 0 range 0 .. 2;
      LCLK           at 0 range 3 .. 5;
      SOURCE         at 0 range 6 .. 6;
      LCDEN          at 0 range 7 .. 7;
      LCDSTP         at 0 range 8 .. 8;
      LCDDOZE        at 0 range 9 .. 9;
      FFR            at 0 range 10 .. 10;
      ALTSOURCE      at 0 range 11 .. 11;
      ALTDIV         at 0 range 12 .. 13;
      FDCIEN         at 0 range 14 .. 14;
      PADSAFE        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      VSUPPLY        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      LADJ           at 0 range 20 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CPSEL          at 0 range 23 .. 23;
      RVTRIM         at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      RVEN           at 0 range 31 .. 31;
   end record;

   subtype LCD_AR_BRATE_Field is HAL.UInt3;

   --  Blink mode
   type AR_BMODE_Field is
     (
      --  Display blank during the blink period.
      AR_BMODE_Field_0,
      --  Display alternate display during blink period (Ignored if duty is 5
      --  or greater).
      AR_BMODE_Field_1)
     with Size => 1;
   for AR_BMODE_Field use
     (AR_BMODE_Field_0 => 0,
      AR_BMODE_Field_1 => 1);

   --  Blank display mode
   type AR_BLANK_Field is
     (
      --  Normal or alternate display mode.
      AR_BLANK_Field_0,
      --  Blank display mode.
      AR_BLANK_Field_1)
     with Size => 1;
   for AR_BLANK_Field use
     (AR_BLANK_Field_0 => 0,
      AR_BLANK_Field_1 => 1);

   --  Alternate display mode
   type AR_ALT_Field is
     (
      --  Normal display mode.
      AR_ALT_Field_0,
      --  Alternate display mode.
      AR_ALT_Field_1)
     with Size => 1;
   for AR_ALT_Field use
     (AR_ALT_Field_0 => 0,
      AR_ALT_Field_1 => 1);

   --  Blink command
   type AR_BLINK_Field is
     (
      --  Disables blinking.
      AR_BLINK_Field_0,
      --  Starts blinking at blinking frequency specified by LCD blink rate
      --  calculation.
      AR_BLINK_Field_1)
     with Size => 1;
   for AR_BLINK_Field use
     (AR_BLINK_Field_0 => 0,
      AR_BLINK_Field_1 => 1);

   --  LCD Auxiliary Register
   type LCD_AR_Register is record
      --  Blink-rate configuration
      BRATE         : LCD_AR_BRATE_Field := 16#0#;
      --  Blink mode
      BMODE         : AR_BMODE_Field := NRF_SVD.LCD.AR_BMODE_Field_0;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Blank display mode
      BLANK         : AR_BLANK_Field := NRF_SVD.LCD.AR_BLANK_Field_0;
      --  Alternate display mode
      ALT           : AR_ALT_Field := NRF_SVD.LCD.AR_ALT_Field_0;
      --  Blink command
      BLINK         : AR_BLINK_Field := NRF_SVD.LCD.AR_BLINK_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCD_AR_Register use record
      BRATE         at 0 range 0 .. 2;
      BMODE         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      BLANK         at 0 range 5 .. 5;
      ALT           at 0 range 6 .. 6;
      BLINK         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Fault Detect Pin ID
   type FDCR_FDPINID_Field is
     (
      --  Fault detection for LCD_P0 pin.
      FDCR_FDPINID_Field_0,
      --  Fault detection for LCD_P1 pin.
      FDCR_FDPINID_Field_1,
      --  Fault detection for LCD_P63 pin.
      FDCR_FDPINID_Field_111111)
     with Size => 6;
   for FDCR_FDPINID_Field use
     (FDCR_FDPINID_Field_0 => 0,
      FDCR_FDPINID_Field_1 => 1,
      FDCR_FDPINID_Field_111111 => 63);

   --  Fault Detect Back Plane Enable
   type FDCR_FDBPEN_Field is
     (
      --  Type of the selected pin under fault detect test is front plane.
      FDCR_FDBPEN_Field_0,
      --  Type of the selected pin under fault detect test is back plane.
      FDCR_FDBPEN_Field_1)
     with Size => 1;
   for FDCR_FDBPEN_Field use
     (FDCR_FDBPEN_Field_0 => 0,
      FDCR_FDBPEN_Field_1 => 1);

   --  Fault Detect Enable
   type FDCR_FDEN_Field is
     (
      --  Disable fault detection.
      FDCR_FDEN_Field_0,
      --  Enable fault detection.
      FDCR_FDEN_Field_1)
     with Size => 1;
   for FDCR_FDEN_Field use
     (FDCR_FDEN_Field_0 => 0,
      FDCR_FDEN_Field_1 => 1);

   --  Fault Detect Sample Window Width
   type FDCR_FDSWW_Field is
     (
      --  Sample window width is 4 sample clock cycles.
      FDCR_FDSWW_Field_0,
      --  Sample window width is 8 sample clock cycles.
      FDCR_FDSWW_Field_1,
      --  Sample window width is 16 sample clock cycles.
      FDCR_FDSWW_Field_10,
      --  Sample window width is 32 sample clock cycles.
      FDCR_FDSWW_Field_11,
      --  Sample window width is 64 sample clock cycles.
      FDCR_FDSWW_Field_100,
      --  Sample window width is 128 sample clock cycles.
      FDCR_FDSWW_Field_101,
      --  Sample window width is 256 sample clock cycles.
      FDCR_FDSWW_Field_110,
      --  Sample window width is 512 sample clock cycles.
      FDCR_FDSWW_Field_111)
     with Size => 3;
   for FDCR_FDSWW_Field use
     (FDCR_FDSWW_Field_0 => 0,
      FDCR_FDSWW_Field_1 => 1,
      FDCR_FDSWW_Field_10 => 2,
      FDCR_FDSWW_Field_11 => 3,
      FDCR_FDSWW_Field_100 => 4,
      FDCR_FDSWW_Field_101 => 5,
      FDCR_FDSWW_Field_110 => 6,
      FDCR_FDSWW_Field_111 => 7);

   --  Fault Detect Clock Prescaler
   type FDCR_FDPRS_Field is
     (
      --  1/1 bus clock.
      FDCR_FDPRS_Field_0,
      --  1/2 bus clock.
      FDCR_FDPRS_Field_1,
      --  1/4 bus clock.
      FDCR_FDPRS_Field_10,
      --  1/8 bus clock.
      FDCR_FDPRS_Field_11,
      --  1/16 bus clock.
      FDCR_FDPRS_Field_100,
      --  1/32 bus clock.
      FDCR_FDPRS_Field_101,
      --  1/64 bus clock.
      FDCR_FDPRS_Field_110,
      --  1/128 bus clock.
      FDCR_FDPRS_Field_111)
     with Size => 3;
   for FDCR_FDPRS_Field use
     (FDCR_FDPRS_Field_0 => 0,
      FDCR_FDPRS_Field_1 => 1,
      FDCR_FDPRS_Field_10 => 2,
      FDCR_FDPRS_Field_11 => 3,
      FDCR_FDPRS_Field_100 => 4,
      FDCR_FDPRS_Field_101 => 5,
      FDCR_FDPRS_Field_110 => 6,
      FDCR_FDPRS_Field_111 => 7);

   --  LCD Fault Detect Control Register
   type LCD_FDCR_Register is record
      --  Fault Detect Pin ID
      FDPINID        : FDCR_FDPINID_Field := NRF_SVD.LCD.FDCR_FDPINID_Field_0;
      --  Fault Detect Back Plane Enable
      FDBPEN         : FDCR_FDBPEN_Field := NRF_SVD.LCD.FDCR_FDBPEN_Field_0;
      --  Fault Detect Enable
      FDEN           : FDCR_FDEN_Field := NRF_SVD.LCD.FDCR_FDEN_Field_0;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Fault Detect Sample Window Width
      FDSWW          : FDCR_FDSWW_Field := NRF_SVD.LCD.FDCR_FDSWW_Field_0;
      --  Fault Detect Clock Prescaler
      FDPRS          : FDCR_FDPRS_Field := NRF_SVD.LCD.FDCR_FDPRS_Field_0;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCD_FDCR_Register use record
      FDPINID        at 0 range 0 .. 5;
      FDBPEN         at 0 range 6 .. 6;
      FDEN           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      FDSWW          at 0 range 9 .. 11;
      FDPRS          at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Fault Detect Counter
   type FDSR_FDCNT_Field is
     (
      --  No "one" samples.
      FDSR_FDCNT_Field_0,
      --  1 "one" samples.
      FDSR_FDCNT_Field_1,
      --  2 "one" samples.
      FDSR_FDCNT_Field_10,
      --  254 "one" samples.
      FDSR_FDCNT_Field_11111110,
      --  255 or more "one" samples. The FDCNT can overflow. Therefore, FDSWW
      --  and FDPRS must be reconfigured for proper sampling.
      FDSR_FDCNT_Field_11111111)
     with Size => 8;
   for FDSR_FDCNT_Field use
     (FDSR_FDCNT_Field_0 => 0,
      FDSR_FDCNT_Field_1 => 1,
      FDSR_FDCNT_Field_10 => 2,
      FDSR_FDCNT_Field_11111110 => 254,
      FDSR_FDCNT_Field_11111111 => 255);

   --  Fault Detection Complete Flag
   type FDSR_FDCF_Field is
     (
      --  Fault detection is not completed.
      FDSR_FDCF_Field_0,
      --  Fault detection is completed.
      FDSR_FDCF_Field_1)
     with Size => 1;
   for FDSR_FDCF_Field use
     (FDSR_FDCF_Field_0 => 0,
      FDSR_FDCF_Field_1 => 1);

   --  LCD Fault Detect Status Register
   type LCD_FDSR_Register is record
      --  Read-only. Fault Detect Counter
      FDCNT          : FDSR_FDCNT_Field := NRF_SVD.LCD.FDSR_FDCNT_Field_0;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Fault Detection Complete Flag
      FDCF           : FDSR_FDCF_Field := NRF_SVD.LCD.FDSR_FDCF_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCD_FDSR_Register use record
      FDCNT          at 0 range 0 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      FDCF           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LCD Pin Enable register

   --  LCD Pin Enable register
   type LCD_PEN_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  LCD Back Plane Enable register

   --  LCD Back Plane Enable register
   type LCD_BPEN_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  LCD_WF3TO0_WF array element
   subtype LCD_WF3TO0_WF_Element is HAL.UInt8;

   --  LCD_WF3TO0_WF array
   type LCD_WF3TO0_WF_Field_Array is array (0 .. 3) of LCD_WF3TO0_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF3TO0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF3TO0_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF3TO0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF0_BPALCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF0_BPALCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF0_BPALCD0_Field_1)
     with Size => 1;
   for WF0_BPALCD0_Field use
     (WF0_BPALCD0_Field_0 => 0,
      WF0_BPALCD0_Field_1 => 1);

   --  no description available
   type WF0_BPBLCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF0_BPBLCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF0_BPBLCD0_Field_1)
     with Size => 1;
   for WF0_BPBLCD0_Field use
     (WF0_BPBLCD0_Field_0 => 0,
      WF0_BPBLCD0_Field_1 => 1);

   --  no description available
   type WF0_BPCLCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF0_BPCLCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF0_BPCLCD0_Field_1)
     with Size => 1;
   for WF0_BPCLCD0_Field use
     (WF0_BPCLCD0_Field_0 => 0,
      WF0_BPCLCD0_Field_1 => 1);

   --  no description available
   type WF0_BPDLCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF0_BPDLCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF0_BPDLCD0_Field_1)
     with Size => 1;
   for WF0_BPDLCD0_Field use
     (WF0_BPDLCD0_Field_0 => 0,
      WF0_BPDLCD0_Field_1 => 1);

   --  no description available
   type WF0_BPELCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF0_BPELCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF0_BPELCD0_Field_1)
     with Size => 1;
   for WF0_BPELCD0_Field use
     (WF0_BPELCD0_Field_0 => 0,
      WF0_BPELCD0_Field_1 => 1);

   --  no description available
   type WF0_BPFLCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF0_BPFLCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF0_BPFLCD0_Field_1)
     with Size => 1;
   for WF0_BPFLCD0_Field use
     (WF0_BPFLCD0_Field_0 => 0,
      WF0_BPFLCD0_Field_1 => 1);

   --  no description available
   type WF0_BPGLCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF0_BPGLCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF0_BPGLCD0_Field_1)
     with Size => 1;
   for WF0_BPGLCD0_Field use
     (WF0_BPGLCD0_Field_0 => 0,
      WF0_BPGLCD0_Field_1 => 1);

   --  no description available
   type WF0_BPHLCD0_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF0_BPHLCD0_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF0_BPHLCD0_Field_1)
     with Size => 1;
   for WF0_BPHLCD0_Field use
     (WF0_BPHLCD0_Field_0 => 0,
      WF0_BPHLCD0_Field_1 => 1);

   --  LCD Waveform Register 0.
   type LCD_WF0_Register is record
      --  no description available
      BPALCD0 : WF0_BPALCD0_Field := NRF_SVD.LCD.WF0_BPALCD0_Field_0;
      --  no description available
      BPBLCD0 : WF0_BPBLCD0_Field := NRF_SVD.LCD.WF0_BPBLCD0_Field_0;
      --  no description available
      BPCLCD0 : WF0_BPCLCD0_Field := NRF_SVD.LCD.WF0_BPCLCD0_Field_0;
      --  no description available
      BPDLCD0 : WF0_BPDLCD0_Field := NRF_SVD.LCD.WF0_BPDLCD0_Field_0;
      --  no description available
      BPELCD0 : WF0_BPELCD0_Field := NRF_SVD.LCD.WF0_BPELCD0_Field_0;
      --  no description available
      BPFLCD0 : WF0_BPFLCD0_Field := NRF_SVD.LCD.WF0_BPFLCD0_Field_0;
      --  no description available
      BPGLCD0 : WF0_BPGLCD0_Field := NRF_SVD.LCD.WF0_BPGLCD0_Field_0;
      --  no description available
      BPHLCD0 : WF0_BPHLCD0_Field := NRF_SVD.LCD.WF0_BPHLCD0_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF0_Register use record
      BPALCD0 at 0 range 0 .. 0;
      BPBLCD0 at 0 range 1 .. 1;
      BPCLCD0 at 0 range 2 .. 2;
      BPDLCD0 at 0 range 3 .. 3;
      BPELCD0 at 0 range 4 .. 4;
      BPFLCD0 at 0 range 5 .. 5;
      BPGLCD0 at 0 range 6 .. 6;
      BPHLCD0 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF1_BPALCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF1_BPALCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF1_BPALCD1_Field_1)
     with Size => 1;
   for WF1_BPALCD1_Field use
     (WF1_BPALCD1_Field_0 => 0,
      WF1_BPALCD1_Field_1 => 1);

   --  no description available
   type WF1_BPBLCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF1_BPBLCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF1_BPBLCD1_Field_1)
     with Size => 1;
   for WF1_BPBLCD1_Field use
     (WF1_BPBLCD1_Field_0 => 0,
      WF1_BPBLCD1_Field_1 => 1);

   --  no description available
   type WF1_BPCLCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF1_BPCLCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF1_BPCLCD1_Field_1)
     with Size => 1;
   for WF1_BPCLCD1_Field use
     (WF1_BPCLCD1_Field_0 => 0,
      WF1_BPCLCD1_Field_1 => 1);

   --  no description available
   type WF1_BPDLCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF1_BPDLCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF1_BPDLCD1_Field_1)
     with Size => 1;
   for WF1_BPDLCD1_Field use
     (WF1_BPDLCD1_Field_0 => 0,
      WF1_BPDLCD1_Field_1 => 1);

   --  no description available
   type WF1_BPELCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF1_BPELCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF1_BPELCD1_Field_1)
     with Size => 1;
   for WF1_BPELCD1_Field use
     (WF1_BPELCD1_Field_0 => 0,
      WF1_BPELCD1_Field_1 => 1);

   --  no description available
   type WF1_BPFLCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF1_BPFLCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF1_BPFLCD1_Field_1)
     with Size => 1;
   for WF1_BPFLCD1_Field use
     (WF1_BPFLCD1_Field_0 => 0,
      WF1_BPFLCD1_Field_1 => 1);

   --  no description available
   type WF1_BPGLCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF1_BPGLCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF1_BPGLCD1_Field_1)
     with Size => 1;
   for WF1_BPGLCD1_Field use
     (WF1_BPGLCD1_Field_0 => 0,
      WF1_BPGLCD1_Field_1 => 1);

   --  no description available
   type WF1_BPHLCD1_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF1_BPHLCD1_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF1_BPHLCD1_Field_1)
     with Size => 1;
   for WF1_BPHLCD1_Field use
     (WF1_BPHLCD1_Field_0 => 0,
      WF1_BPHLCD1_Field_1 => 1);

   --  LCD Waveform Register 1.
   type LCD_WF1_Register is record
      --  no description available
      BPALCD1 : WF1_BPALCD1_Field := NRF_SVD.LCD.WF1_BPALCD1_Field_0;
      --  no description available
      BPBLCD1 : WF1_BPBLCD1_Field := NRF_SVD.LCD.WF1_BPBLCD1_Field_0;
      --  no description available
      BPCLCD1 : WF1_BPCLCD1_Field := NRF_SVD.LCD.WF1_BPCLCD1_Field_0;
      --  no description available
      BPDLCD1 : WF1_BPDLCD1_Field := NRF_SVD.LCD.WF1_BPDLCD1_Field_0;
      --  no description available
      BPELCD1 : WF1_BPELCD1_Field := NRF_SVD.LCD.WF1_BPELCD1_Field_0;
      --  no description available
      BPFLCD1 : WF1_BPFLCD1_Field := NRF_SVD.LCD.WF1_BPFLCD1_Field_0;
      --  no description available
      BPGLCD1 : WF1_BPGLCD1_Field := NRF_SVD.LCD.WF1_BPGLCD1_Field_0;
      --  no description available
      BPHLCD1 : WF1_BPHLCD1_Field := NRF_SVD.LCD.WF1_BPHLCD1_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF1_Register use record
      BPALCD1 at 0 range 0 .. 0;
      BPBLCD1 at 0 range 1 .. 1;
      BPCLCD1 at 0 range 2 .. 2;
      BPDLCD1 at 0 range 3 .. 3;
      BPELCD1 at 0 range 4 .. 4;
      BPFLCD1 at 0 range 5 .. 5;
      BPGLCD1 at 0 range 6 .. 6;
      BPHLCD1 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF2_BPALCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF2_BPALCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF2_BPALCD2_Field_1)
     with Size => 1;
   for WF2_BPALCD2_Field use
     (WF2_BPALCD2_Field_0 => 0,
      WF2_BPALCD2_Field_1 => 1);

   --  no description available
   type WF2_BPBLCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF2_BPBLCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF2_BPBLCD2_Field_1)
     with Size => 1;
   for WF2_BPBLCD2_Field use
     (WF2_BPBLCD2_Field_0 => 0,
      WF2_BPBLCD2_Field_1 => 1);

   --  no description available
   type WF2_BPCLCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF2_BPCLCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF2_BPCLCD2_Field_1)
     with Size => 1;
   for WF2_BPCLCD2_Field use
     (WF2_BPCLCD2_Field_0 => 0,
      WF2_BPCLCD2_Field_1 => 1);

   --  no description available
   type WF2_BPDLCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF2_BPDLCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF2_BPDLCD2_Field_1)
     with Size => 1;
   for WF2_BPDLCD2_Field use
     (WF2_BPDLCD2_Field_0 => 0,
      WF2_BPDLCD2_Field_1 => 1);

   --  no description available
   type WF2_BPELCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF2_BPELCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF2_BPELCD2_Field_1)
     with Size => 1;
   for WF2_BPELCD2_Field use
     (WF2_BPELCD2_Field_0 => 0,
      WF2_BPELCD2_Field_1 => 1);

   --  no description available
   type WF2_BPFLCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF2_BPFLCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF2_BPFLCD2_Field_1)
     with Size => 1;
   for WF2_BPFLCD2_Field use
     (WF2_BPFLCD2_Field_0 => 0,
      WF2_BPFLCD2_Field_1 => 1);

   --  no description available
   type WF2_BPGLCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF2_BPGLCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF2_BPGLCD2_Field_1)
     with Size => 1;
   for WF2_BPGLCD2_Field use
     (WF2_BPGLCD2_Field_0 => 0,
      WF2_BPGLCD2_Field_1 => 1);

   --  no description available
   type WF2_BPHLCD2_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF2_BPHLCD2_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF2_BPHLCD2_Field_1)
     with Size => 1;
   for WF2_BPHLCD2_Field use
     (WF2_BPHLCD2_Field_0 => 0,
      WF2_BPHLCD2_Field_1 => 1);

   --  LCD Waveform Register 2.
   type LCD_WF2_Register is record
      --  no description available
      BPALCD2 : WF2_BPALCD2_Field := NRF_SVD.LCD.WF2_BPALCD2_Field_0;
      --  no description available
      BPBLCD2 : WF2_BPBLCD2_Field := NRF_SVD.LCD.WF2_BPBLCD2_Field_0;
      --  no description available
      BPCLCD2 : WF2_BPCLCD2_Field := NRF_SVD.LCD.WF2_BPCLCD2_Field_0;
      --  no description available
      BPDLCD2 : WF2_BPDLCD2_Field := NRF_SVD.LCD.WF2_BPDLCD2_Field_0;
      --  no description available
      BPELCD2 : WF2_BPELCD2_Field := NRF_SVD.LCD.WF2_BPELCD2_Field_0;
      --  no description available
      BPFLCD2 : WF2_BPFLCD2_Field := NRF_SVD.LCD.WF2_BPFLCD2_Field_0;
      --  no description available
      BPGLCD2 : WF2_BPGLCD2_Field := NRF_SVD.LCD.WF2_BPGLCD2_Field_0;
      --  no description available
      BPHLCD2 : WF2_BPHLCD2_Field := NRF_SVD.LCD.WF2_BPHLCD2_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF2_Register use record
      BPALCD2 at 0 range 0 .. 0;
      BPBLCD2 at 0 range 1 .. 1;
      BPCLCD2 at 0 range 2 .. 2;
      BPDLCD2 at 0 range 3 .. 3;
      BPELCD2 at 0 range 4 .. 4;
      BPFLCD2 at 0 range 5 .. 5;
      BPGLCD2 at 0 range 6 .. 6;
      BPHLCD2 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF3_BPALCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF3_BPALCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF3_BPALCD3_Field_1)
     with Size => 1;
   for WF3_BPALCD3_Field use
     (WF3_BPALCD3_Field_0 => 0,
      WF3_BPALCD3_Field_1 => 1);

   --  no description available
   type WF3_BPBLCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF3_BPBLCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF3_BPBLCD3_Field_1)
     with Size => 1;
   for WF3_BPBLCD3_Field use
     (WF3_BPBLCD3_Field_0 => 0,
      WF3_BPBLCD3_Field_1 => 1);

   --  no description available
   type WF3_BPCLCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF3_BPCLCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF3_BPCLCD3_Field_1)
     with Size => 1;
   for WF3_BPCLCD3_Field use
     (WF3_BPCLCD3_Field_0 => 0,
      WF3_BPCLCD3_Field_1 => 1);

   --  no description available
   type WF3_BPDLCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF3_BPDLCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF3_BPDLCD3_Field_1)
     with Size => 1;
   for WF3_BPDLCD3_Field use
     (WF3_BPDLCD3_Field_0 => 0,
      WF3_BPDLCD3_Field_1 => 1);

   --  no description available
   type WF3_BPELCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF3_BPELCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF3_BPELCD3_Field_1)
     with Size => 1;
   for WF3_BPELCD3_Field use
     (WF3_BPELCD3_Field_0 => 0,
      WF3_BPELCD3_Field_1 => 1);

   --  no description available
   type WF3_BPFLCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF3_BPFLCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF3_BPFLCD3_Field_1)
     with Size => 1;
   for WF3_BPFLCD3_Field use
     (WF3_BPFLCD3_Field_0 => 0,
      WF3_BPFLCD3_Field_1 => 1);

   --  no description available
   type WF3_BPGLCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF3_BPGLCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF3_BPGLCD3_Field_1)
     with Size => 1;
   for WF3_BPGLCD3_Field use
     (WF3_BPGLCD3_Field_0 => 0,
      WF3_BPGLCD3_Field_1 => 1);

   --  no description available
   type WF3_BPHLCD3_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF3_BPHLCD3_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF3_BPHLCD3_Field_1)
     with Size => 1;
   for WF3_BPHLCD3_Field use
     (WF3_BPHLCD3_Field_0 => 0,
      WF3_BPHLCD3_Field_1 => 1);

   --  LCD Waveform Register 3.
   type LCD_WF3_Register is record
      --  no description available
      BPALCD3 : WF3_BPALCD3_Field := NRF_SVD.LCD.WF3_BPALCD3_Field_0;
      --  no description available
      BPBLCD3 : WF3_BPBLCD3_Field := NRF_SVD.LCD.WF3_BPBLCD3_Field_0;
      --  no description available
      BPCLCD3 : WF3_BPCLCD3_Field := NRF_SVD.LCD.WF3_BPCLCD3_Field_0;
      --  no description available
      BPDLCD3 : WF3_BPDLCD3_Field := NRF_SVD.LCD.WF3_BPDLCD3_Field_0;
      --  no description available
      BPELCD3 : WF3_BPELCD3_Field := NRF_SVD.LCD.WF3_BPELCD3_Field_0;
      --  no description available
      BPFLCD3 : WF3_BPFLCD3_Field := NRF_SVD.LCD.WF3_BPFLCD3_Field_0;
      --  no description available
      BPGLCD3 : WF3_BPGLCD3_Field := NRF_SVD.LCD.WF3_BPGLCD3_Field_0;
      --  no description available
      BPHLCD3 : WF3_BPHLCD3_Field := NRF_SVD.LCD.WF3_BPHLCD3_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF3_Register use record
      BPALCD3 at 0 range 0 .. 0;
      BPBLCD3 at 0 range 1 .. 1;
      BPCLCD3 at 0 range 2 .. 2;
      BPDLCD3 at 0 range 3 .. 3;
      BPELCD3 at 0 range 4 .. 4;
      BPFLCD3 at 0 range 5 .. 5;
      BPGLCD3 at 0 range 6 .. 6;
      BPHLCD3 at 0 range 7 .. 7;
   end record;

   --  LCD_WF7TO4_WF array element
   subtype LCD_WF7TO4_WF_Element is HAL.UInt8;

   --  LCD_WF7TO4_WF array
   type LCD_WF7TO4_WF_Field_Array is array (4 .. 7) of LCD_WF7TO4_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF7TO4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF7TO4_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF7TO4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF4_BPALCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF4_BPALCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF4_BPALCD4_Field_1)
     with Size => 1;
   for WF4_BPALCD4_Field use
     (WF4_BPALCD4_Field_0 => 0,
      WF4_BPALCD4_Field_1 => 1);

   --  no description available
   type WF4_BPBLCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF4_BPBLCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF4_BPBLCD4_Field_1)
     with Size => 1;
   for WF4_BPBLCD4_Field use
     (WF4_BPBLCD4_Field_0 => 0,
      WF4_BPBLCD4_Field_1 => 1);

   --  no description available
   type WF4_BPCLCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF4_BPCLCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF4_BPCLCD4_Field_1)
     with Size => 1;
   for WF4_BPCLCD4_Field use
     (WF4_BPCLCD4_Field_0 => 0,
      WF4_BPCLCD4_Field_1 => 1);

   --  no description available
   type WF4_BPDLCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF4_BPDLCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF4_BPDLCD4_Field_1)
     with Size => 1;
   for WF4_BPDLCD4_Field use
     (WF4_BPDLCD4_Field_0 => 0,
      WF4_BPDLCD4_Field_1 => 1);

   --  no description available
   type WF4_BPELCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF4_BPELCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF4_BPELCD4_Field_1)
     with Size => 1;
   for WF4_BPELCD4_Field use
     (WF4_BPELCD4_Field_0 => 0,
      WF4_BPELCD4_Field_1 => 1);

   --  no description available
   type WF4_BPFLCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF4_BPFLCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF4_BPFLCD4_Field_1)
     with Size => 1;
   for WF4_BPFLCD4_Field use
     (WF4_BPFLCD4_Field_0 => 0,
      WF4_BPFLCD4_Field_1 => 1);

   --  no description available
   type WF4_BPGLCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF4_BPGLCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF4_BPGLCD4_Field_1)
     with Size => 1;
   for WF4_BPGLCD4_Field use
     (WF4_BPGLCD4_Field_0 => 0,
      WF4_BPGLCD4_Field_1 => 1);

   --  no description available
   type WF4_BPHLCD4_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF4_BPHLCD4_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF4_BPHLCD4_Field_1)
     with Size => 1;
   for WF4_BPHLCD4_Field use
     (WF4_BPHLCD4_Field_0 => 0,
      WF4_BPHLCD4_Field_1 => 1);

   --  LCD Waveform Register 4.
   type LCD_WF4_Register is record
      --  no description available
      BPALCD4 : WF4_BPALCD4_Field := NRF_SVD.LCD.WF4_BPALCD4_Field_0;
      --  no description available
      BPBLCD4 : WF4_BPBLCD4_Field := NRF_SVD.LCD.WF4_BPBLCD4_Field_0;
      --  no description available
      BPCLCD4 : WF4_BPCLCD4_Field := NRF_SVD.LCD.WF4_BPCLCD4_Field_0;
      --  no description available
      BPDLCD4 : WF4_BPDLCD4_Field := NRF_SVD.LCD.WF4_BPDLCD4_Field_0;
      --  no description available
      BPELCD4 : WF4_BPELCD4_Field := NRF_SVD.LCD.WF4_BPELCD4_Field_0;
      --  no description available
      BPFLCD4 : WF4_BPFLCD4_Field := NRF_SVD.LCD.WF4_BPFLCD4_Field_0;
      --  no description available
      BPGLCD4 : WF4_BPGLCD4_Field := NRF_SVD.LCD.WF4_BPGLCD4_Field_0;
      --  no description available
      BPHLCD4 : WF4_BPHLCD4_Field := NRF_SVD.LCD.WF4_BPHLCD4_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF4_Register use record
      BPALCD4 at 0 range 0 .. 0;
      BPBLCD4 at 0 range 1 .. 1;
      BPCLCD4 at 0 range 2 .. 2;
      BPDLCD4 at 0 range 3 .. 3;
      BPELCD4 at 0 range 4 .. 4;
      BPFLCD4 at 0 range 5 .. 5;
      BPGLCD4 at 0 range 6 .. 6;
      BPHLCD4 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF5_BPALCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF5_BPALCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF5_BPALCD5_Field_1)
     with Size => 1;
   for WF5_BPALCD5_Field use
     (WF5_BPALCD5_Field_0 => 0,
      WF5_BPALCD5_Field_1 => 1);

   --  no description available
   type WF5_BPBLCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF5_BPBLCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF5_BPBLCD5_Field_1)
     with Size => 1;
   for WF5_BPBLCD5_Field use
     (WF5_BPBLCD5_Field_0 => 0,
      WF5_BPBLCD5_Field_1 => 1);

   --  no description available
   type WF5_BPCLCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF5_BPCLCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF5_BPCLCD5_Field_1)
     with Size => 1;
   for WF5_BPCLCD5_Field use
     (WF5_BPCLCD5_Field_0 => 0,
      WF5_BPCLCD5_Field_1 => 1);

   --  no description available
   type WF5_BPDLCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF5_BPDLCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF5_BPDLCD5_Field_1)
     with Size => 1;
   for WF5_BPDLCD5_Field use
     (WF5_BPDLCD5_Field_0 => 0,
      WF5_BPDLCD5_Field_1 => 1);

   --  no description available
   type WF5_BPELCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF5_BPELCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF5_BPELCD5_Field_1)
     with Size => 1;
   for WF5_BPELCD5_Field use
     (WF5_BPELCD5_Field_0 => 0,
      WF5_BPELCD5_Field_1 => 1);

   --  no description available
   type WF5_BPFLCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF5_BPFLCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF5_BPFLCD5_Field_1)
     with Size => 1;
   for WF5_BPFLCD5_Field use
     (WF5_BPFLCD5_Field_0 => 0,
      WF5_BPFLCD5_Field_1 => 1);

   --  no description available
   type WF5_BPGLCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF5_BPGLCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF5_BPGLCD5_Field_1)
     with Size => 1;
   for WF5_BPGLCD5_Field use
     (WF5_BPGLCD5_Field_0 => 0,
      WF5_BPGLCD5_Field_1 => 1);

   --  no description available
   type WF5_BPHLCD5_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF5_BPHLCD5_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF5_BPHLCD5_Field_1)
     with Size => 1;
   for WF5_BPHLCD5_Field use
     (WF5_BPHLCD5_Field_0 => 0,
      WF5_BPHLCD5_Field_1 => 1);

   --  LCD Waveform Register 5.
   type LCD_WF5_Register is record
      --  no description available
      BPALCD5 : WF5_BPALCD5_Field := NRF_SVD.LCD.WF5_BPALCD5_Field_0;
      --  no description available
      BPBLCD5 : WF5_BPBLCD5_Field := NRF_SVD.LCD.WF5_BPBLCD5_Field_0;
      --  no description available
      BPCLCD5 : WF5_BPCLCD5_Field := NRF_SVD.LCD.WF5_BPCLCD5_Field_0;
      --  no description available
      BPDLCD5 : WF5_BPDLCD5_Field := NRF_SVD.LCD.WF5_BPDLCD5_Field_0;
      --  no description available
      BPELCD5 : WF5_BPELCD5_Field := NRF_SVD.LCD.WF5_BPELCD5_Field_0;
      --  no description available
      BPFLCD5 : WF5_BPFLCD5_Field := NRF_SVD.LCD.WF5_BPFLCD5_Field_0;
      --  no description available
      BPGLCD5 : WF5_BPGLCD5_Field := NRF_SVD.LCD.WF5_BPGLCD5_Field_0;
      --  no description available
      BPHLCD5 : WF5_BPHLCD5_Field := NRF_SVD.LCD.WF5_BPHLCD5_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF5_Register use record
      BPALCD5 at 0 range 0 .. 0;
      BPBLCD5 at 0 range 1 .. 1;
      BPCLCD5 at 0 range 2 .. 2;
      BPDLCD5 at 0 range 3 .. 3;
      BPELCD5 at 0 range 4 .. 4;
      BPFLCD5 at 0 range 5 .. 5;
      BPGLCD5 at 0 range 6 .. 6;
      BPHLCD5 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF6_BPALCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF6_BPALCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF6_BPALCD6_Field_1)
     with Size => 1;
   for WF6_BPALCD6_Field use
     (WF6_BPALCD6_Field_0 => 0,
      WF6_BPALCD6_Field_1 => 1);

   --  no description available
   type WF6_BPBLCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF6_BPBLCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF6_BPBLCD6_Field_1)
     with Size => 1;
   for WF6_BPBLCD6_Field use
     (WF6_BPBLCD6_Field_0 => 0,
      WF6_BPBLCD6_Field_1 => 1);

   --  no description available
   type WF6_BPCLCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF6_BPCLCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF6_BPCLCD6_Field_1)
     with Size => 1;
   for WF6_BPCLCD6_Field use
     (WF6_BPCLCD6_Field_0 => 0,
      WF6_BPCLCD6_Field_1 => 1);

   --  no description available
   type WF6_BPDLCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF6_BPDLCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF6_BPDLCD6_Field_1)
     with Size => 1;
   for WF6_BPDLCD6_Field use
     (WF6_BPDLCD6_Field_0 => 0,
      WF6_BPDLCD6_Field_1 => 1);

   --  no description available
   type WF6_BPELCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF6_BPELCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF6_BPELCD6_Field_1)
     with Size => 1;
   for WF6_BPELCD6_Field use
     (WF6_BPELCD6_Field_0 => 0,
      WF6_BPELCD6_Field_1 => 1);

   --  no description available
   type WF6_BPFLCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF6_BPFLCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF6_BPFLCD6_Field_1)
     with Size => 1;
   for WF6_BPFLCD6_Field use
     (WF6_BPFLCD6_Field_0 => 0,
      WF6_BPFLCD6_Field_1 => 1);

   --  no description available
   type WF6_BPGLCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF6_BPGLCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF6_BPGLCD6_Field_1)
     with Size => 1;
   for WF6_BPGLCD6_Field use
     (WF6_BPGLCD6_Field_0 => 0,
      WF6_BPGLCD6_Field_1 => 1);

   --  no description available
   type WF6_BPHLCD6_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF6_BPHLCD6_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF6_BPHLCD6_Field_1)
     with Size => 1;
   for WF6_BPHLCD6_Field use
     (WF6_BPHLCD6_Field_0 => 0,
      WF6_BPHLCD6_Field_1 => 1);

   --  LCD Waveform Register 6.
   type LCD_WF6_Register is record
      --  no description available
      BPALCD6 : WF6_BPALCD6_Field := NRF_SVD.LCD.WF6_BPALCD6_Field_0;
      --  no description available
      BPBLCD6 : WF6_BPBLCD6_Field := NRF_SVD.LCD.WF6_BPBLCD6_Field_0;
      --  no description available
      BPCLCD6 : WF6_BPCLCD6_Field := NRF_SVD.LCD.WF6_BPCLCD6_Field_0;
      --  no description available
      BPDLCD6 : WF6_BPDLCD6_Field := NRF_SVD.LCD.WF6_BPDLCD6_Field_0;
      --  no description available
      BPELCD6 : WF6_BPELCD6_Field := NRF_SVD.LCD.WF6_BPELCD6_Field_0;
      --  no description available
      BPFLCD6 : WF6_BPFLCD6_Field := NRF_SVD.LCD.WF6_BPFLCD6_Field_0;
      --  no description available
      BPGLCD6 : WF6_BPGLCD6_Field := NRF_SVD.LCD.WF6_BPGLCD6_Field_0;
      --  no description available
      BPHLCD6 : WF6_BPHLCD6_Field := NRF_SVD.LCD.WF6_BPHLCD6_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF6_Register use record
      BPALCD6 at 0 range 0 .. 0;
      BPBLCD6 at 0 range 1 .. 1;
      BPCLCD6 at 0 range 2 .. 2;
      BPDLCD6 at 0 range 3 .. 3;
      BPELCD6 at 0 range 4 .. 4;
      BPFLCD6 at 0 range 5 .. 5;
      BPGLCD6 at 0 range 6 .. 6;
      BPHLCD6 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF7_BPALCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF7_BPALCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF7_BPALCD7_Field_1)
     with Size => 1;
   for WF7_BPALCD7_Field use
     (WF7_BPALCD7_Field_0 => 0,
      WF7_BPALCD7_Field_1 => 1);

   --  no description available
   type WF7_BPBLCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF7_BPBLCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF7_BPBLCD7_Field_1)
     with Size => 1;
   for WF7_BPBLCD7_Field use
     (WF7_BPBLCD7_Field_0 => 0,
      WF7_BPBLCD7_Field_1 => 1);

   --  no description available
   type WF7_BPCLCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF7_BPCLCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF7_BPCLCD7_Field_1)
     with Size => 1;
   for WF7_BPCLCD7_Field use
     (WF7_BPCLCD7_Field_0 => 0,
      WF7_BPCLCD7_Field_1 => 1);

   --  no description available
   type WF7_BPDLCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF7_BPDLCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF7_BPDLCD7_Field_1)
     with Size => 1;
   for WF7_BPDLCD7_Field use
     (WF7_BPDLCD7_Field_0 => 0,
      WF7_BPDLCD7_Field_1 => 1);

   --  no description available
   type WF7_BPELCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF7_BPELCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF7_BPELCD7_Field_1)
     with Size => 1;
   for WF7_BPELCD7_Field use
     (WF7_BPELCD7_Field_0 => 0,
      WF7_BPELCD7_Field_1 => 1);

   --  no description available
   type WF7_BPFLCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF7_BPFLCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF7_BPFLCD7_Field_1)
     with Size => 1;
   for WF7_BPFLCD7_Field use
     (WF7_BPFLCD7_Field_0 => 0,
      WF7_BPFLCD7_Field_1 => 1);

   --  no description available
   type WF7_BPGLCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF7_BPGLCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF7_BPGLCD7_Field_1)
     with Size => 1;
   for WF7_BPGLCD7_Field use
     (WF7_BPGLCD7_Field_0 => 0,
      WF7_BPGLCD7_Field_1 => 1);

   --  no description available
   type WF7_BPHLCD7_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF7_BPHLCD7_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF7_BPHLCD7_Field_1)
     with Size => 1;
   for WF7_BPHLCD7_Field use
     (WF7_BPHLCD7_Field_0 => 0,
      WF7_BPHLCD7_Field_1 => 1);

   --  LCD Waveform Register 7.
   type LCD_WF7_Register is record
      --  no description available
      BPALCD7 : WF7_BPALCD7_Field := NRF_SVD.LCD.WF7_BPALCD7_Field_0;
      --  no description available
      BPBLCD7 : WF7_BPBLCD7_Field := NRF_SVD.LCD.WF7_BPBLCD7_Field_0;
      --  no description available
      BPCLCD7 : WF7_BPCLCD7_Field := NRF_SVD.LCD.WF7_BPCLCD7_Field_0;
      --  no description available
      BPDLCD7 : WF7_BPDLCD7_Field := NRF_SVD.LCD.WF7_BPDLCD7_Field_0;
      --  no description available
      BPELCD7 : WF7_BPELCD7_Field := NRF_SVD.LCD.WF7_BPELCD7_Field_0;
      --  no description available
      BPFLCD7 : WF7_BPFLCD7_Field := NRF_SVD.LCD.WF7_BPFLCD7_Field_0;
      --  no description available
      BPGLCD7 : WF7_BPGLCD7_Field := NRF_SVD.LCD.WF7_BPGLCD7_Field_0;
      --  no description available
      BPHLCD7 : WF7_BPHLCD7_Field := NRF_SVD.LCD.WF7_BPHLCD7_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF7_Register use record
      BPALCD7 at 0 range 0 .. 0;
      BPBLCD7 at 0 range 1 .. 1;
      BPCLCD7 at 0 range 2 .. 2;
      BPDLCD7 at 0 range 3 .. 3;
      BPELCD7 at 0 range 4 .. 4;
      BPFLCD7 at 0 range 5 .. 5;
      BPGLCD7 at 0 range 6 .. 6;
      BPHLCD7 at 0 range 7 .. 7;
   end record;

   --  LCD_WF11TO8_WF array element
   subtype LCD_WF11TO8_WF_Element is HAL.UInt8;

   --  LCD_WF11TO8_WF array
   type LCD_WF11TO8_WF_Field_Array is array (8 .. 11)
     of LCD_WF11TO8_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF11TO8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF11TO8_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF11TO8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF8_BPALCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF8_BPALCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF8_BPALCD8_Field_1)
     with Size => 1;
   for WF8_BPALCD8_Field use
     (WF8_BPALCD8_Field_0 => 0,
      WF8_BPALCD8_Field_1 => 1);

   --  no description available
   type WF8_BPBLCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF8_BPBLCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF8_BPBLCD8_Field_1)
     with Size => 1;
   for WF8_BPBLCD8_Field use
     (WF8_BPBLCD8_Field_0 => 0,
      WF8_BPBLCD8_Field_1 => 1);

   --  no description available
   type WF8_BPCLCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF8_BPCLCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF8_BPCLCD8_Field_1)
     with Size => 1;
   for WF8_BPCLCD8_Field use
     (WF8_BPCLCD8_Field_0 => 0,
      WF8_BPCLCD8_Field_1 => 1);

   --  no description available
   type WF8_BPDLCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF8_BPDLCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF8_BPDLCD8_Field_1)
     with Size => 1;
   for WF8_BPDLCD8_Field use
     (WF8_BPDLCD8_Field_0 => 0,
      WF8_BPDLCD8_Field_1 => 1);

   --  no description available
   type WF8_BPELCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF8_BPELCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF8_BPELCD8_Field_1)
     with Size => 1;
   for WF8_BPELCD8_Field use
     (WF8_BPELCD8_Field_0 => 0,
      WF8_BPELCD8_Field_1 => 1);

   --  no description available
   type WF8_BPFLCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF8_BPFLCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF8_BPFLCD8_Field_1)
     with Size => 1;
   for WF8_BPFLCD8_Field use
     (WF8_BPFLCD8_Field_0 => 0,
      WF8_BPFLCD8_Field_1 => 1);

   --  no description available
   type WF8_BPGLCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF8_BPGLCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF8_BPGLCD8_Field_1)
     with Size => 1;
   for WF8_BPGLCD8_Field use
     (WF8_BPGLCD8_Field_0 => 0,
      WF8_BPGLCD8_Field_1 => 1);

   --  no description available
   type WF8_BPHLCD8_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF8_BPHLCD8_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF8_BPHLCD8_Field_1)
     with Size => 1;
   for WF8_BPHLCD8_Field use
     (WF8_BPHLCD8_Field_0 => 0,
      WF8_BPHLCD8_Field_1 => 1);

   --  LCD Waveform Register 8.
   type LCD_WF8_Register is record
      --  no description available
      BPALCD8 : WF8_BPALCD8_Field := NRF_SVD.LCD.WF8_BPALCD8_Field_0;
      --  no description available
      BPBLCD8 : WF8_BPBLCD8_Field := NRF_SVD.LCD.WF8_BPBLCD8_Field_0;
      --  no description available
      BPCLCD8 : WF8_BPCLCD8_Field := NRF_SVD.LCD.WF8_BPCLCD8_Field_0;
      --  no description available
      BPDLCD8 : WF8_BPDLCD8_Field := NRF_SVD.LCD.WF8_BPDLCD8_Field_0;
      --  no description available
      BPELCD8 : WF8_BPELCD8_Field := NRF_SVD.LCD.WF8_BPELCD8_Field_0;
      --  no description available
      BPFLCD8 : WF8_BPFLCD8_Field := NRF_SVD.LCD.WF8_BPFLCD8_Field_0;
      --  no description available
      BPGLCD8 : WF8_BPGLCD8_Field := NRF_SVD.LCD.WF8_BPGLCD8_Field_0;
      --  no description available
      BPHLCD8 : WF8_BPHLCD8_Field := NRF_SVD.LCD.WF8_BPHLCD8_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF8_Register use record
      BPALCD8 at 0 range 0 .. 0;
      BPBLCD8 at 0 range 1 .. 1;
      BPCLCD8 at 0 range 2 .. 2;
      BPDLCD8 at 0 range 3 .. 3;
      BPELCD8 at 0 range 4 .. 4;
      BPFLCD8 at 0 range 5 .. 5;
      BPGLCD8 at 0 range 6 .. 6;
      BPHLCD8 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF9_BPALCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF9_BPALCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF9_BPALCD9_Field_1)
     with Size => 1;
   for WF9_BPALCD9_Field use
     (WF9_BPALCD9_Field_0 => 0,
      WF9_BPALCD9_Field_1 => 1);

   --  no description available
   type WF9_BPBLCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF9_BPBLCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF9_BPBLCD9_Field_1)
     with Size => 1;
   for WF9_BPBLCD9_Field use
     (WF9_BPBLCD9_Field_0 => 0,
      WF9_BPBLCD9_Field_1 => 1);

   --  no description available
   type WF9_BPCLCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF9_BPCLCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF9_BPCLCD9_Field_1)
     with Size => 1;
   for WF9_BPCLCD9_Field use
     (WF9_BPCLCD9_Field_0 => 0,
      WF9_BPCLCD9_Field_1 => 1);

   --  no description available
   type WF9_BPDLCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF9_BPDLCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF9_BPDLCD9_Field_1)
     with Size => 1;
   for WF9_BPDLCD9_Field use
     (WF9_BPDLCD9_Field_0 => 0,
      WF9_BPDLCD9_Field_1 => 1);

   --  no description available
   type WF9_BPELCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF9_BPELCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF9_BPELCD9_Field_1)
     with Size => 1;
   for WF9_BPELCD9_Field use
     (WF9_BPELCD9_Field_0 => 0,
      WF9_BPELCD9_Field_1 => 1);

   --  no description available
   type WF9_BPFLCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF9_BPFLCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF9_BPFLCD9_Field_1)
     with Size => 1;
   for WF9_BPFLCD9_Field use
     (WF9_BPFLCD9_Field_0 => 0,
      WF9_BPFLCD9_Field_1 => 1);

   --  no description available
   type WF9_BPGLCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF9_BPGLCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF9_BPGLCD9_Field_1)
     with Size => 1;
   for WF9_BPGLCD9_Field use
     (WF9_BPGLCD9_Field_0 => 0,
      WF9_BPGLCD9_Field_1 => 1);

   --  no description available
   type WF9_BPHLCD9_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF9_BPHLCD9_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF9_BPHLCD9_Field_1)
     with Size => 1;
   for WF9_BPHLCD9_Field use
     (WF9_BPHLCD9_Field_0 => 0,
      WF9_BPHLCD9_Field_1 => 1);

   --  LCD Waveform Register 9.
   type LCD_WF9_Register is record
      --  no description available
      BPALCD9 : WF9_BPALCD9_Field := NRF_SVD.LCD.WF9_BPALCD9_Field_0;
      --  no description available
      BPBLCD9 : WF9_BPBLCD9_Field := NRF_SVD.LCD.WF9_BPBLCD9_Field_0;
      --  no description available
      BPCLCD9 : WF9_BPCLCD9_Field := NRF_SVD.LCD.WF9_BPCLCD9_Field_0;
      --  no description available
      BPDLCD9 : WF9_BPDLCD9_Field := NRF_SVD.LCD.WF9_BPDLCD9_Field_0;
      --  no description available
      BPELCD9 : WF9_BPELCD9_Field := NRF_SVD.LCD.WF9_BPELCD9_Field_0;
      --  no description available
      BPFLCD9 : WF9_BPFLCD9_Field := NRF_SVD.LCD.WF9_BPFLCD9_Field_0;
      --  no description available
      BPGLCD9 : WF9_BPGLCD9_Field := NRF_SVD.LCD.WF9_BPGLCD9_Field_0;
      --  no description available
      BPHLCD9 : WF9_BPHLCD9_Field := NRF_SVD.LCD.WF9_BPHLCD9_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF9_Register use record
      BPALCD9 at 0 range 0 .. 0;
      BPBLCD9 at 0 range 1 .. 1;
      BPCLCD9 at 0 range 2 .. 2;
      BPDLCD9 at 0 range 3 .. 3;
      BPELCD9 at 0 range 4 .. 4;
      BPFLCD9 at 0 range 5 .. 5;
      BPGLCD9 at 0 range 6 .. 6;
      BPHLCD9 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF10_BPALCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF10_BPALCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF10_BPALCD10_Field_1)
     with Size => 1;
   for WF10_BPALCD10_Field use
     (WF10_BPALCD10_Field_0 => 0,
      WF10_BPALCD10_Field_1 => 1);

   --  no description available
   type WF10_BPBLCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF10_BPBLCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF10_BPBLCD10_Field_1)
     with Size => 1;
   for WF10_BPBLCD10_Field use
     (WF10_BPBLCD10_Field_0 => 0,
      WF10_BPBLCD10_Field_1 => 1);

   --  no description available
   type WF10_BPCLCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF10_BPCLCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF10_BPCLCD10_Field_1)
     with Size => 1;
   for WF10_BPCLCD10_Field use
     (WF10_BPCLCD10_Field_0 => 0,
      WF10_BPCLCD10_Field_1 => 1);

   --  no description available
   type WF10_BPDLCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF10_BPDLCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF10_BPDLCD10_Field_1)
     with Size => 1;
   for WF10_BPDLCD10_Field use
     (WF10_BPDLCD10_Field_0 => 0,
      WF10_BPDLCD10_Field_1 => 1);

   --  no description available
   type WF10_BPELCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF10_BPELCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF10_BPELCD10_Field_1)
     with Size => 1;
   for WF10_BPELCD10_Field use
     (WF10_BPELCD10_Field_0 => 0,
      WF10_BPELCD10_Field_1 => 1);

   --  no description available
   type WF10_BPFLCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF10_BPFLCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF10_BPFLCD10_Field_1)
     with Size => 1;
   for WF10_BPFLCD10_Field use
     (WF10_BPFLCD10_Field_0 => 0,
      WF10_BPFLCD10_Field_1 => 1);

   --  no description available
   type WF10_BPGLCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF10_BPGLCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF10_BPGLCD10_Field_1)
     with Size => 1;
   for WF10_BPGLCD10_Field use
     (WF10_BPGLCD10_Field_0 => 0,
      WF10_BPGLCD10_Field_1 => 1);

   --  no description available
   type WF10_BPHLCD10_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF10_BPHLCD10_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF10_BPHLCD10_Field_1)
     with Size => 1;
   for WF10_BPHLCD10_Field use
     (WF10_BPHLCD10_Field_0 => 0,
      WF10_BPHLCD10_Field_1 => 1);

   --  LCD Waveform Register 10.
   type LCD_WF10_Register is record
      --  no description available
      BPALCD10 : WF10_BPALCD10_Field := NRF_SVD.LCD.WF10_BPALCD10_Field_0;
      --  no description available
      BPBLCD10 : WF10_BPBLCD10_Field := NRF_SVD.LCD.WF10_BPBLCD10_Field_0;
      --  no description available
      BPCLCD10 : WF10_BPCLCD10_Field := NRF_SVD.LCD.WF10_BPCLCD10_Field_0;
      --  no description available
      BPDLCD10 : WF10_BPDLCD10_Field := NRF_SVD.LCD.WF10_BPDLCD10_Field_0;
      --  no description available
      BPELCD10 : WF10_BPELCD10_Field := NRF_SVD.LCD.WF10_BPELCD10_Field_0;
      --  no description available
      BPFLCD10 : WF10_BPFLCD10_Field := NRF_SVD.LCD.WF10_BPFLCD10_Field_0;
      --  no description available
      BPGLCD10 : WF10_BPGLCD10_Field := NRF_SVD.LCD.WF10_BPGLCD10_Field_0;
      --  no description available
      BPHLCD10 : WF10_BPHLCD10_Field := NRF_SVD.LCD.WF10_BPHLCD10_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF10_Register use record
      BPALCD10 at 0 range 0 .. 0;
      BPBLCD10 at 0 range 1 .. 1;
      BPCLCD10 at 0 range 2 .. 2;
      BPDLCD10 at 0 range 3 .. 3;
      BPELCD10 at 0 range 4 .. 4;
      BPFLCD10 at 0 range 5 .. 5;
      BPGLCD10 at 0 range 6 .. 6;
      BPHLCD10 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF11_BPALCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF11_BPALCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF11_BPALCD11_Field_1)
     with Size => 1;
   for WF11_BPALCD11_Field use
     (WF11_BPALCD11_Field_0 => 0,
      WF11_BPALCD11_Field_1 => 1);

   --  no description available
   type WF11_BPBLCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF11_BPBLCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF11_BPBLCD11_Field_1)
     with Size => 1;
   for WF11_BPBLCD11_Field use
     (WF11_BPBLCD11_Field_0 => 0,
      WF11_BPBLCD11_Field_1 => 1);

   --  no description available
   type WF11_BPCLCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF11_BPCLCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF11_BPCLCD11_Field_1)
     with Size => 1;
   for WF11_BPCLCD11_Field use
     (WF11_BPCLCD11_Field_0 => 0,
      WF11_BPCLCD11_Field_1 => 1);

   --  no description available
   type WF11_BPDLCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF11_BPDLCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF11_BPDLCD11_Field_1)
     with Size => 1;
   for WF11_BPDLCD11_Field use
     (WF11_BPDLCD11_Field_0 => 0,
      WF11_BPDLCD11_Field_1 => 1);

   --  no description available
   type WF11_BPELCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF11_BPELCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF11_BPELCD11_Field_1)
     with Size => 1;
   for WF11_BPELCD11_Field use
     (WF11_BPELCD11_Field_0 => 0,
      WF11_BPELCD11_Field_1 => 1);

   --  no description available
   type WF11_BPFLCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF11_BPFLCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF11_BPFLCD11_Field_1)
     with Size => 1;
   for WF11_BPFLCD11_Field use
     (WF11_BPFLCD11_Field_0 => 0,
      WF11_BPFLCD11_Field_1 => 1);

   --  no description available
   type WF11_BPGLCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF11_BPGLCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF11_BPGLCD11_Field_1)
     with Size => 1;
   for WF11_BPGLCD11_Field use
     (WF11_BPGLCD11_Field_0 => 0,
      WF11_BPGLCD11_Field_1 => 1);

   --  no description available
   type WF11_BPHLCD11_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF11_BPHLCD11_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF11_BPHLCD11_Field_1)
     with Size => 1;
   for WF11_BPHLCD11_Field use
     (WF11_BPHLCD11_Field_0 => 0,
      WF11_BPHLCD11_Field_1 => 1);

   --  LCD Waveform Register 11.
   type LCD_WF11_Register is record
      --  no description available
      BPALCD11 : WF11_BPALCD11_Field := NRF_SVD.LCD.WF11_BPALCD11_Field_0;
      --  no description available
      BPBLCD11 : WF11_BPBLCD11_Field := NRF_SVD.LCD.WF11_BPBLCD11_Field_0;
      --  no description available
      BPCLCD11 : WF11_BPCLCD11_Field := NRF_SVD.LCD.WF11_BPCLCD11_Field_0;
      --  no description available
      BPDLCD11 : WF11_BPDLCD11_Field := NRF_SVD.LCD.WF11_BPDLCD11_Field_0;
      --  no description available
      BPELCD11 : WF11_BPELCD11_Field := NRF_SVD.LCD.WF11_BPELCD11_Field_0;
      --  no description available
      BPFLCD11 : WF11_BPFLCD11_Field := NRF_SVD.LCD.WF11_BPFLCD11_Field_0;
      --  no description available
      BPGLCD11 : WF11_BPGLCD11_Field := NRF_SVD.LCD.WF11_BPGLCD11_Field_0;
      --  no description available
      BPHLCD11 : WF11_BPHLCD11_Field := NRF_SVD.LCD.WF11_BPHLCD11_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF11_Register use record
      BPALCD11 at 0 range 0 .. 0;
      BPBLCD11 at 0 range 1 .. 1;
      BPCLCD11 at 0 range 2 .. 2;
      BPDLCD11 at 0 range 3 .. 3;
      BPELCD11 at 0 range 4 .. 4;
      BPFLCD11 at 0 range 5 .. 5;
      BPGLCD11 at 0 range 6 .. 6;
      BPHLCD11 at 0 range 7 .. 7;
   end record;

   --  LCD_WF15TO12_WF array element
   subtype LCD_WF15TO12_WF_Element is HAL.UInt8;

   --  LCD_WF15TO12_WF array
   type LCD_WF15TO12_WF_Field_Array is array (12 .. 15)
     of LCD_WF15TO12_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF15TO12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF15TO12_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF15TO12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF12_BPALCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF12_BPALCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF12_BPALCD12_Field_1)
     with Size => 1;
   for WF12_BPALCD12_Field use
     (WF12_BPALCD12_Field_0 => 0,
      WF12_BPALCD12_Field_1 => 1);

   --  no description available
   type WF12_BPBLCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF12_BPBLCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF12_BPBLCD12_Field_1)
     with Size => 1;
   for WF12_BPBLCD12_Field use
     (WF12_BPBLCD12_Field_0 => 0,
      WF12_BPBLCD12_Field_1 => 1);

   --  no description available
   type WF12_BPCLCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF12_BPCLCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF12_BPCLCD12_Field_1)
     with Size => 1;
   for WF12_BPCLCD12_Field use
     (WF12_BPCLCD12_Field_0 => 0,
      WF12_BPCLCD12_Field_1 => 1);

   --  no description available
   type WF12_BPDLCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF12_BPDLCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF12_BPDLCD12_Field_1)
     with Size => 1;
   for WF12_BPDLCD12_Field use
     (WF12_BPDLCD12_Field_0 => 0,
      WF12_BPDLCD12_Field_1 => 1);

   --  no description available
   type WF12_BPELCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF12_BPELCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF12_BPELCD12_Field_1)
     with Size => 1;
   for WF12_BPELCD12_Field use
     (WF12_BPELCD12_Field_0 => 0,
      WF12_BPELCD12_Field_1 => 1);

   --  no description available
   type WF12_BPFLCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF12_BPFLCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF12_BPFLCD12_Field_1)
     with Size => 1;
   for WF12_BPFLCD12_Field use
     (WF12_BPFLCD12_Field_0 => 0,
      WF12_BPFLCD12_Field_1 => 1);

   --  no description available
   type WF12_BPGLCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF12_BPGLCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF12_BPGLCD12_Field_1)
     with Size => 1;
   for WF12_BPGLCD12_Field use
     (WF12_BPGLCD12_Field_0 => 0,
      WF12_BPGLCD12_Field_1 => 1);

   --  no description available
   type WF12_BPHLCD12_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF12_BPHLCD12_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF12_BPHLCD12_Field_1)
     with Size => 1;
   for WF12_BPHLCD12_Field use
     (WF12_BPHLCD12_Field_0 => 0,
      WF12_BPHLCD12_Field_1 => 1);

   --  LCD Waveform Register 12.
   type LCD_WF12_Register is record
      --  no description available
      BPALCD12 : WF12_BPALCD12_Field := NRF_SVD.LCD.WF12_BPALCD12_Field_0;
      --  no description available
      BPBLCD12 : WF12_BPBLCD12_Field := NRF_SVD.LCD.WF12_BPBLCD12_Field_0;
      --  no description available
      BPCLCD12 : WF12_BPCLCD12_Field := NRF_SVD.LCD.WF12_BPCLCD12_Field_0;
      --  no description available
      BPDLCD12 : WF12_BPDLCD12_Field := NRF_SVD.LCD.WF12_BPDLCD12_Field_0;
      --  no description available
      BPELCD12 : WF12_BPELCD12_Field := NRF_SVD.LCD.WF12_BPELCD12_Field_0;
      --  no description available
      BPFLCD12 : WF12_BPFLCD12_Field := NRF_SVD.LCD.WF12_BPFLCD12_Field_0;
      --  no description available
      BPGLCD12 : WF12_BPGLCD12_Field := NRF_SVD.LCD.WF12_BPGLCD12_Field_0;
      --  no description available
      BPHLCD12 : WF12_BPHLCD12_Field := NRF_SVD.LCD.WF12_BPHLCD12_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF12_Register use record
      BPALCD12 at 0 range 0 .. 0;
      BPBLCD12 at 0 range 1 .. 1;
      BPCLCD12 at 0 range 2 .. 2;
      BPDLCD12 at 0 range 3 .. 3;
      BPELCD12 at 0 range 4 .. 4;
      BPFLCD12 at 0 range 5 .. 5;
      BPGLCD12 at 0 range 6 .. 6;
      BPHLCD12 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF13_BPALCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF13_BPALCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF13_BPALCD13_Field_1)
     with Size => 1;
   for WF13_BPALCD13_Field use
     (WF13_BPALCD13_Field_0 => 0,
      WF13_BPALCD13_Field_1 => 1);

   --  no description available
   type WF13_BPBLCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF13_BPBLCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF13_BPBLCD13_Field_1)
     with Size => 1;
   for WF13_BPBLCD13_Field use
     (WF13_BPBLCD13_Field_0 => 0,
      WF13_BPBLCD13_Field_1 => 1);

   --  no description available
   type WF13_BPCLCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF13_BPCLCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF13_BPCLCD13_Field_1)
     with Size => 1;
   for WF13_BPCLCD13_Field use
     (WF13_BPCLCD13_Field_0 => 0,
      WF13_BPCLCD13_Field_1 => 1);

   --  no description available
   type WF13_BPDLCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF13_BPDLCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF13_BPDLCD13_Field_1)
     with Size => 1;
   for WF13_BPDLCD13_Field use
     (WF13_BPDLCD13_Field_0 => 0,
      WF13_BPDLCD13_Field_1 => 1);

   --  no description available
   type WF13_BPELCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF13_BPELCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF13_BPELCD13_Field_1)
     with Size => 1;
   for WF13_BPELCD13_Field use
     (WF13_BPELCD13_Field_0 => 0,
      WF13_BPELCD13_Field_1 => 1);

   --  no description available
   type WF13_BPFLCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF13_BPFLCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF13_BPFLCD13_Field_1)
     with Size => 1;
   for WF13_BPFLCD13_Field use
     (WF13_BPFLCD13_Field_0 => 0,
      WF13_BPFLCD13_Field_1 => 1);

   --  no description available
   type WF13_BPGLCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF13_BPGLCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF13_BPGLCD13_Field_1)
     with Size => 1;
   for WF13_BPGLCD13_Field use
     (WF13_BPGLCD13_Field_0 => 0,
      WF13_BPGLCD13_Field_1 => 1);

   --  no description available
   type WF13_BPHLCD13_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF13_BPHLCD13_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF13_BPHLCD13_Field_1)
     with Size => 1;
   for WF13_BPHLCD13_Field use
     (WF13_BPHLCD13_Field_0 => 0,
      WF13_BPHLCD13_Field_1 => 1);

   --  LCD Waveform Register 13.
   type LCD_WF13_Register is record
      --  no description available
      BPALCD13 : WF13_BPALCD13_Field := NRF_SVD.LCD.WF13_BPALCD13_Field_0;
      --  no description available
      BPBLCD13 : WF13_BPBLCD13_Field := NRF_SVD.LCD.WF13_BPBLCD13_Field_0;
      --  no description available
      BPCLCD13 : WF13_BPCLCD13_Field := NRF_SVD.LCD.WF13_BPCLCD13_Field_0;
      --  no description available
      BPDLCD13 : WF13_BPDLCD13_Field := NRF_SVD.LCD.WF13_BPDLCD13_Field_0;
      --  no description available
      BPELCD13 : WF13_BPELCD13_Field := NRF_SVD.LCD.WF13_BPELCD13_Field_0;
      --  no description available
      BPFLCD13 : WF13_BPFLCD13_Field := NRF_SVD.LCD.WF13_BPFLCD13_Field_0;
      --  no description available
      BPGLCD13 : WF13_BPGLCD13_Field := NRF_SVD.LCD.WF13_BPGLCD13_Field_0;
      --  no description available
      BPHLCD13 : WF13_BPHLCD13_Field := NRF_SVD.LCD.WF13_BPHLCD13_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF13_Register use record
      BPALCD13 at 0 range 0 .. 0;
      BPBLCD13 at 0 range 1 .. 1;
      BPCLCD13 at 0 range 2 .. 2;
      BPDLCD13 at 0 range 3 .. 3;
      BPELCD13 at 0 range 4 .. 4;
      BPFLCD13 at 0 range 5 .. 5;
      BPGLCD13 at 0 range 6 .. 6;
      BPHLCD13 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF14_BPALCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF14_BPALCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF14_BPALCD14_Field_1)
     with Size => 1;
   for WF14_BPALCD14_Field use
     (WF14_BPALCD14_Field_0 => 0,
      WF14_BPALCD14_Field_1 => 1);

   --  no description available
   type WF14_BPBLCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF14_BPBLCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF14_BPBLCD14_Field_1)
     with Size => 1;
   for WF14_BPBLCD14_Field use
     (WF14_BPBLCD14_Field_0 => 0,
      WF14_BPBLCD14_Field_1 => 1);

   --  no description available
   type WF14_BPCLCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF14_BPCLCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF14_BPCLCD14_Field_1)
     with Size => 1;
   for WF14_BPCLCD14_Field use
     (WF14_BPCLCD14_Field_0 => 0,
      WF14_BPCLCD14_Field_1 => 1);

   --  no description available
   type WF14_BPDLCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF14_BPDLCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF14_BPDLCD14_Field_1)
     with Size => 1;
   for WF14_BPDLCD14_Field use
     (WF14_BPDLCD14_Field_0 => 0,
      WF14_BPDLCD14_Field_1 => 1);

   --  no description available
   type WF14_BPELCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF14_BPELCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF14_BPELCD14_Field_1)
     with Size => 1;
   for WF14_BPELCD14_Field use
     (WF14_BPELCD14_Field_0 => 0,
      WF14_BPELCD14_Field_1 => 1);

   --  no description available
   type WF14_BPFLCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF14_BPFLCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF14_BPFLCD14_Field_1)
     with Size => 1;
   for WF14_BPFLCD14_Field use
     (WF14_BPFLCD14_Field_0 => 0,
      WF14_BPFLCD14_Field_1 => 1);

   --  no description available
   type WF14_BPGLCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF14_BPGLCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF14_BPGLCD14_Field_1)
     with Size => 1;
   for WF14_BPGLCD14_Field use
     (WF14_BPGLCD14_Field_0 => 0,
      WF14_BPGLCD14_Field_1 => 1);

   --  no description available
   type WF14_BPHLCD14_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF14_BPHLCD14_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF14_BPHLCD14_Field_1)
     with Size => 1;
   for WF14_BPHLCD14_Field use
     (WF14_BPHLCD14_Field_0 => 0,
      WF14_BPHLCD14_Field_1 => 1);

   --  LCD Waveform Register 14.
   type LCD_WF14_Register is record
      --  no description available
      BPALCD14 : WF14_BPALCD14_Field := NRF_SVD.LCD.WF14_BPALCD14_Field_0;
      --  no description available
      BPBLCD14 : WF14_BPBLCD14_Field := NRF_SVD.LCD.WF14_BPBLCD14_Field_0;
      --  no description available
      BPCLCD14 : WF14_BPCLCD14_Field := NRF_SVD.LCD.WF14_BPCLCD14_Field_0;
      --  no description available
      BPDLCD14 : WF14_BPDLCD14_Field := NRF_SVD.LCD.WF14_BPDLCD14_Field_0;
      --  no description available
      BPELCD14 : WF14_BPELCD14_Field := NRF_SVD.LCD.WF14_BPELCD14_Field_0;
      --  no description available
      BPFLCD14 : WF14_BPFLCD14_Field := NRF_SVD.LCD.WF14_BPFLCD14_Field_0;
      --  no description available
      BPGLCD14 : WF14_BPGLCD14_Field := NRF_SVD.LCD.WF14_BPGLCD14_Field_0;
      --  no description available
      BPHLCD14 : WF14_BPHLCD14_Field := NRF_SVD.LCD.WF14_BPHLCD14_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF14_Register use record
      BPALCD14 at 0 range 0 .. 0;
      BPBLCD14 at 0 range 1 .. 1;
      BPCLCD14 at 0 range 2 .. 2;
      BPDLCD14 at 0 range 3 .. 3;
      BPELCD14 at 0 range 4 .. 4;
      BPFLCD14 at 0 range 5 .. 5;
      BPGLCD14 at 0 range 6 .. 6;
      BPHLCD14 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF15_BPALCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF15_BPALCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF15_BPALCD15_Field_1)
     with Size => 1;
   for WF15_BPALCD15_Field use
     (WF15_BPALCD15_Field_0 => 0,
      WF15_BPALCD15_Field_1 => 1);

   --  no description available
   type WF15_BPBLCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF15_BPBLCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF15_BPBLCD15_Field_1)
     with Size => 1;
   for WF15_BPBLCD15_Field use
     (WF15_BPBLCD15_Field_0 => 0,
      WF15_BPBLCD15_Field_1 => 1);

   --  no description available
   type WF15_BPCLCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF15_BPCLCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF15_BPCLCD15_Field_1)
     with Size => 1;
   for WF15_BPCLCD15_Field use
     (WF15_BPCLCD15_Field_0 => 0,
      WF15_BPCLCD15_Field_1 => 1);

   --  no description available
   type WF15_BPDLCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF15_BPDLCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF15_BPDLCD15_Field_1)
     with Size => 1;
   for WF15_BPDLCD15_Field use
     (WF15_BPDLCD15_Field_0 => 0,
      WF15_BPDLCD15_Field_1 => 1);

   --  no description available
   type WF15_BPELCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF15_BPELCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF15_BPELCD15_Field_1)
     with Size => 1;
   for WF15_BPELCD15_Field use
     (WF15_BPELCD15_Field_0 => 0,
      WF15_BPELCD15_Field_1 => 1);

   --  no description available
   type WF15_BPFLCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF15_BPFLCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF15_BPFLCD15_Field_1)
     with Size => 1;
   for WF15_BPFLCD15_Field use
     (WF15_BPFLCD15_Field_0 => 0,
      WF15_BPFLCD15_Field_1 => 1);

   --  no description available
   type WF15_BPGLCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF15_BPGLCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF15_BPGLCD15_Field_1)
     with Size => 1;
   for WF15_BPGLCD15_Field use
     (WF15_BPGLCD15_Field_0 => 0,
      WF15_BPGLCD15_Field_1 => 1);

   --  no description available
   type WF15_BPHLCD15_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF15_BPHLCD15_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF15_BPHLCD15_Field_1)
     with Size => 1;
   for WF15_BPHLCD15_Field use
     (WF15_BPHLCD15_Field_0 => 0,
      WF15_BPHLCD15_Field_1 => 1);

   --  LCD Waveform Register 15.
   type LCD_WF15_Register is record
      --  no description available
      BPALCD15 : WF15_BPALCD15_Field := NRF_SVD.LCD.WF15_BPALCD15_Field_0;
      --  no description available
      BPBLCD15 : WF15_BPBLCD15_Field := NRF_SVD.LCD.WF15_BPBLCD15_Field_0;
      --  no description available
      BPCLCD15 : WF15_BPCLCD15_Field := NRF_SVD.LCD.WF15_BPCLCD15_Field_0;
      --  no description available
      BPDLCD15 : WF15_BPDLCD15_Field := NRF_SVD.LCD.WF15_BPDLCD15_Field_0;
      --  no description available
      BPELCD15 : WF15_BPELCD15_Field := NRF_SVD.LCD.WF15_BPELCD15_Field_0;
      --  no description available
      BPFLCD15 : WF15_BPFLCD15_Field := NRF_SVD.LCD.WF15_BPFLCD15_Field_0;
      --  no description available
      BPGLCD15 : WF15_BPGLCD15_Field := NRF_SVD.LCD.WF15_BPGLCD15_Field_0;
      --  no description available
      BPHLCD15 : WF15_BPHLCD15_Field := NRF_SVD.LCD.WF15_BPHLCD15_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF15_Register use record
      BPALCD15 at 0 range 0 .. 0;
      BPBLCD15 at 0 range 1 .. 1;
      BPCLCD15 at 0 range 2 .. 2;
      BPDLCD15 at 0 range 3 .. 3;
      BPELCD15 at 0 range 4 .. 4;
      BPFLCD15 at 0 range 5 .. 5;
      BPGLCD15 at 0 range 6 .. 6;
      BPHLCD15 at 0 range 7 .. 7;
   end record;

   --  LCD_WF19TO16_WF array element
   subtype LCD_WF19TO16_WF_Element is HAL.UInt8;

   --  LCD_WF19TO16_WF array
   type LCD_WF19TO16_WF_Field_Array is array (16 .. 19)
     of LCD_WF19TO16_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF19TO16_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF19TO16_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF19TO16_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF16_BPALCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF16_BPALCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF16_BPALCD16_Field_1)
     with Size => 1;
   for WF16_BPALCD16_Field use
     (WF16_BPALCD16_Field_0 => 0,
      WF16_BPALCD16_Field_1 => 1);

   --  no description available
   type WF16_BPBLCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF16_BPBLCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF16_BPBLCD16_Field_1)
     with Size => 1;
   for WF16_BPBLCD16_Field use
     (WF16_BPBLCD16_Field_0 => 0,
      WF16_BPBLCD16_Field_1 => 1);

   --  no description available
   type WF16_BPCLCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF16_BPCLCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF16_BPCLCD16_Field_1)
     with Size => 1;
   for WF16_BPCLCD16_Field use
     (WF16_BPCLCD16_Field_0 => 0,
      WF16_BPCLCD16_Field_1 => 1);

   --  no description available
   type WF16_BPDLCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF16_BPDLCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF16_BPDLCD16_Field_1)
     with Size => 1;
   for WF16_BPDLCD16_Field use
     (WF16_BPDLCD16_Field_0 => 0,
      WF16_BPDLCD16_Field_1 => 1);

   --  no description available
   type WF16_BPELCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF16_BPELCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF16_BPELCD16_Field_1)
     with Size => 1;
   for WF16_BPELCD16_Field use
     (WF16_BPELCD16_Field_0 => 0,
      WF16_BPELCD16_Field_1 => 1);

   --  no description available
   type WF16_BPFLCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF16_BPFLCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF16_BPFLCD16_Field_1)
     with Size => 1;
   for WF16_BPFLCD16_Field use
     (WF16_BPFLCD16_Field_0 => 0,
      WF16_BPFLCD16_Field_1 => 1);

   --  no description available
   type WF16_BPGLCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF16_BPGLCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF16_BPGLCD16_Field_1)
     with Size => 1;
   for WF16_BPGLCD16_Field use
     (WF16_BPGLCD16_Field_0 => 0,
      WF16_BPGLCD16_Field_1 => 1);

   --  no description available
   type WF16_BPHLCD16_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF16_BPHLCD16_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF16_BPHLCD16_Field_1)
     with Size => 1;
   for WF16_BPHLCD16_Field use
     (WF16_BPHLCD16_Field_0 => 0,
      WF16_BPHLCD16_Field_1 => 1);

   --  LCD Waveform Register 16.
   type LCD_WF16_Register is record
      --  no description available
      BPALCD16 : WF16_BPALCD16_Field := NRF_SVD.LCD.WF16_BPALCD16_Field_0;
      --  no description available
      BPBLCD16 : WF16_BPBLCD16_Field := NRF_SVD.LCD.WF16_BPBLCD16_Field_0;
      --  no description available
      BPCLCD16 : WF16_BPCLCD16_Field := NRF_SVD.LCD.WF16_BPCLCD16_Field_0;
      --  no description available
      BPDLCD16 : WF16_BPDLCD16_Field := NRF_SVD.LCD.WF16_BPDLCD16_Field_0;
      --  no description available
      BPELCD16 : WF16_BPELCD16_Field := NRF_SVD.LCD.WF16_BPELCD16_Field_0;
      --  no description available
      BPFLCD16 : WF16_BPFLCD16_Field := NRF_SVD.LCD.WF16_BPFLCD16_Field_0;
      --  no description available
      BPGLCD16 : WF16_BPGLCD16_Field := NRF_SVD.LCD.WF16_BPGLCD16_Field_0;
      --  no description available
      BPHLCD16 : WF16_BPHLCD16_Field := NRF_SVD.LCD.WF16_BPHLCD16_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF16_Register use record
      BPALCD16 at 0 range 0 .. 0;
      BPBLCD16 at 0 range 1 .. 1;
      BPCLCD16 at 0 range 2 .. 2;
      BPDLCD16 at 0 range 3 .. 3;
      BPELCD16 at 0 range 4 .. 4;
      BPFLCD16 at 0 range 5 .. 5;
      BPGLCD16 at 0 range 6 .. 6;
      BPHLCD16 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF17_BPALCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF17_BPALCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF17_BPALCD17_Field_1)
     with Size => 1;
   for WF17_BPALCD17_Field use
     (WF17_BPALCD17_Field_0 => 0,
      WF17_BPALCD17_Field_1 => 1);

   --  no description available
   type WF17_BPBLCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF17_BPBLCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF17_BPBLCD17_Field_1)
     with Size => 1;
   for WF17_BPBLCD17_Field use
     (WF17_BPBLCD17_Field_0 => 0,
      WF17_BPBLCD17_Field_1 => 1);

   --  no description available
   type WF17_BPCLCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF17_BPCLCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF17_BPCLCD17_Field_1)
     with Size => 1;
   for WF17_BPCLCD17_Field use
     (WF17_BPCLCD17_Field_0 => 0,
      WF17_BPCLCD17_Field_1 => 1);

   --  no description available
   type WF17_BPDLCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF17_BPDLCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF17_BPDLCD17_Field_1)
     with Size => 1;
   for WF17_BPDLCD17_Field use
     (WF17_BPDLCD17_Field_0 => 0,
      WF17_BPDLCD17_Field_1 => 1);

   --  no description available
   type WF17_BPELCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF17_BPELCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF17_BPELCD17_Field_1)
     with Size => 1;
   for WF17_BPELCD17_Field use
     (WF17_BPELCD17_Field_0 => 0,
      WF17_BPELCD17_Field_1 => 1);

   --  no description available
   type WF17_BPFLCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF17_BPFLCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF17_BPFLCD17_Field_1)
     with Size => 1;
   for WF17_BPFLCD17_Field use
     (WF17_BPFLCD17_Field_0 => 0,
      WF17_BPFLCD17_Field_1 => 1);

   --  no description available
   type WF17_BPGLCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF17_BPGLCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF17_BPGLCD17_Field_1)
     with Size => 1;
   for WF17_BPGLCD17_Field use
     (WF17_BPGLCD17_Field_0 => 0,
      WF17_BPGLCD17_Field_1 => 1);

   --  no description available
   type WF17_BPHLCD17_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF17_BPHLCD17_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF17_BPHLCD17_Field_1)
     with Size => 1;
   for WF17_BPHLCD17_Field use
     (WF17_BPHLCD17_Field_0 => 0,
      WF17_BPHLCD17_Field_1 => 1);

   --  LCD Waveform Register 17.
   type LCD_WF17_Register is record
      --  no description available
      BPALCD17 : WF17_BPALCD17_Field := NRF_SVD.LCD.WF17_BPALCD17_Field_0;
      --  no description available
      BPBLCD17 : WF17_BPBLCD17_Field := NRF_SVD.LCD.WF17_BPBLCD17_Field_0;
      --  no description available
      BPCLCD17 : WF17_BPCLCD17_Field := NRF_SVD.LCD.WF17_BPCLCD17_Field_0;
      --  no description available
      BPDLCD17 : WF17_BPDLCD17_Field := NRF_SVD.LCD.WF17_BPDLCD17_Field_0;
      --  no description available
      BPELCD17 : WF17_BPELCD17_Field := NRF_SVD.LCD.WF17_BPELCD17_Field_0;
      --  no description available
      BPFLCD17 : WF17_BPFLCD17_Field := NRF_SVD.LCD.WF17_BPFLCD17_Field_0;
      --  no description available
      BPGLCD17 : WF17_BPGLCD17_Field := NRF_SVD.LCD.WF17_BPGLCD17_Field_0;
      --  no description available
      BPHLCD17 : WF17_BPHLCD17_Field := NRF_SVD.LCD.WF17_BPHLCD17_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF17_Register use record
      BPALCD17 at 0 range 0 .. 0;
      BPBLCD17 at 0 range 1 .. 1;
      BPCLCD17 at 0 range 2 .. 2;
      BPDLCD17 at 0 range 3 .. 3;
      BPELCD17 at 0 range 4 .. 4;
      BPFLCD17 at 0 range 5 .. 5;
      BPGLCD17 at 0 range 6 .. 6;
      BPHLCD17 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF18_BPALCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF18_BPALCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF18_BPALCD18_Field_1)
     with Size => 1;
   for WF18_BPALCD18_Field use
     (WF18_BPALCD18_Field_0 => 0,
      WF18_BPALCD18_Field_1 => 1);

   --  no description available
   type WF18_BPBLCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF18_BPBLCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF18_BPBLCD18_Field_1)
     with Size => 1;
   for WF18_BPBLCD18_Field use
     (WF18_BPBLCD18_Field_0 => 0,
      WF18_BPBLCD18_Field_1 => 1);

   --  no description available
   type WF18_BPCLCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF18_BPCLCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF18_BPCLCD18_Field_1)
     with Size => 1;
   for WF18_BPCLCD18_Field use
     (WF18_BPCLCD18_Field_0 => 0,
      WF18_BPCLCD18_Field_1 => 1);

   --  no description available
   type WF18_BPDLCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF18_BPDLCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF18_BPDLCD18_Field_1)
     with Size => 1;
   for WF18_BPDLCD18_Field use
     (WF18_BPDLCD18_Field_0 => 0,
      WF18_BPDLCD18_Field_1 => 1);

   --  no description available
   type WF18_BPELCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF18_BPELCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF18_BPELCD18_Field_1)
     with Size => 1;
   for WF18_BPELCD18_Field use
     (WF18_BPELCD18_Field_0 => 0,
      WF18_BPELCD18_Field_1 => 1);

   --  no description available
   type WF18_BPFLCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF18_BPFLCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF18_BPFLCD18_Field_1)
     with Size => 1;
   for WF18_BPFLCD18_Field use
     (WF18_BPFLCD18_Field_0 => 0,
      WF18_BPFLCD18_Field_1 => 1);

   --  no description available
   type WF18_BPGLCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF18_BPGLCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF18_BPGLCD18_Field_1)
     with Size => 1;
   for WF18_BPGLCD18_Field use
     (WF18_BPGLCD18_Field_0 => 0,
      WF18_BPGLCD18_Field_1 => 1);

   --  no description available
   type WF18_BPHLCD18_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF18_BPHLCD18_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF18_BPHLCD18_Field_1)
     with Size => 1;
   for WF18_BPHLCD18_Field use
     (WF18_BPHLCD18_Field_0 => 0,
      WF18_BPHLCD18_Field_1 => 1);

   --  LCD Waveform Register 18.
   type LCD_WF18_Register is record
      --  no description available
      BPALCD18 : WF18_BPALCD18_Field := NRF_SVD.LCD.WF18_BPALCD18_Field_0;
      --  no description available
      BPBLCD18 : WF18_BPBLCD18_Field := NRF_SVD.LCD.WF18_BPBLCD18_Field_0;
      --  no description available
      BPCLCD18 : WF18_BPCLCD18_Field := NRF_SVD.LCD.WF18_BPCLCD18_Field_0;
      --  no description available
      BPDLCD18 : WF18_BPDLCD18_Field := NRF_SVD.LCD.WF18_BPDLCD18_Field_0;
      --  no description available
      BPELCD18 : WF18_BPELCD18_Field := NRF_SVD.LCD.WF18_BPELCD18_Field_0;
      --  no description available
      BPFLCD18 : WF18_BPFLCD18_Field := NRF_SVD.LCD.WF18_BPFLCD18_Field_0;
      --  no description available
      BPGLCD18 : WF18_BPGLCD18_Field := NRF_SVD.LCD.WF18_BPGLCD18_Field_0;
      --  no description available
      BPHLCD18 : WF18_BPHLCD18_Field := NRF_SVD.LCD.WF18_BPHLCD18_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF18_Register use record
      BPALCD18 at 0 range 0 .. 0;
      BPBLCD18 at 0 range 1 .. 1;
      BPCLCD18 at 0 range 2 .. 2;
      BPDLCD18 at 0 range 3 .. 3;
      BPELCD18 at 0 range 4 .. 4;
      BPFLCD18 at 0 range 5 .. 5;
      BPGLCD18 at 0 range 6 .. 6;
      BPHLCD18 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF19_BPALCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF19_BPALCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF19_BPALCD19_Field_1)
     with Size => 1;
   for WF19_BPALCD19_Field use
     (WF19_BPALCD19_Field_0 => 0,
      WF19_BPALCD19_Field_1 => 1);

   --  no description available
   type WF19_BPBLCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF19_BPBLCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF19_BPBLCD19_Field_1)
     with Size => 1;
   for WF19_BPBLCD19_Field use
     (WF19_BPBLCD19_Field_0 => 0,
      WF19_BPBLCD19_Field_1 => 1);

   --  no description available
   type WF19_BPCLCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF19_BPCLCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF19_BPCLCD19_Field_1)
     with Size => 1;
   for WF19_BPCLCD19_Field use
     (WF19_BPCLCD19_Field_0 => 0,
      WF19_BPCLCD19_Field_1 => 1);

   --  no description available
   type WF19_BPDLCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF19_BPDLCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF19_BPDLCD19_Field_1)
     with Size => 1;
   for WF19_BPDLCD19_Field use
     (WF19_BPDLCD19_Field_0 => 0,
      WF19_BPDLCD19_Field_1 => 1);

   --  no description available
   type WF19_BPELCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF19_BPELCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF19_BPELCD19_Field_1)
     with Size => 1;
   for WF19_BPELCD19_Field use
     (WF19_BPELCD19_Field_0 => 0,
      WF19_BPELCD19_Field_1 => 1);

   --  no description available
   type WF19_BPFLCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF19_BPFLCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF19_BPFLCD19_Field_1)
     with Size => 1;
   for WF19_BPFLCD19_Field use
     (WF19_BPFLCD19_Field_0 => 0,
      WF19_BPFLCD19_Field_1 => 1);

   --  no description available
   type WF19_BPGLCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF19_BPGLCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF19_BPGLCD19_Field_1)
     with Size => 1;
   for WF19_BPGLCD19_Field use
     (WF19_BPGLCD19_Field_0 => 0,
      WF19_BPGLCD19_Field_1 => 1);

   --  no description available
   type WF19_BPHLCD19_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF19_BPHLCD19_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF19_BPHLCD19_Field_1)
     with Size => 1;
   for WF19_BPHLCD19_Field use
     (WF19_BPHLCD19_Field_0 => 0,
      WF19_BPHLCD19_Field_1 => 1);

   --  LCD Waveform Register 19.
   type LCD_WF19_Register is record
      --  no description available
      BPALCD19 : WF19_BPALCD19_Field := NRF_SVD.LCD.WF19_BPALCD19_Field_0;
      --  no description available
      BPBLCD19 : WF19_BPBLCD19_Field := NRF_SVD.LCD.WF19_BPBLCD19_Field_0;
      --  no description available
      BPCLCD19 : WF19_BPCLCD19_Field := NRF_SVD.LCD.WF19_BPCLCD19_Field_0;
      --  no description available
      BPDLCD19 : WF19_BPDLCD19_Field := NRF_SVD.LCD.WF19_BPDLCD19_Field_0;
      --  no description available
      BPELCD19 : WF19_BPELCD19_Field := NRF_SVD.LCD.WF19_BPELCD19_Field_0;
      --  no description available
      BPFLCD19 : WF19_BPFLCD19_Field := NRF_SVD.LCD.WF19_BPFLCD19_Field_0;
      --  no description available
      BPGLCD19 : WF19_BPGLCD19_Field := NRF_SVD.LCD.WF19_BPGLCD19_Field_0;
      --  no description available
      BPHLCD19 : WF19_BPHLCD19_Field := NRF_SVD.LCD.WF19_BPHLCD19_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF19_Register use record
      BPALCD19 at 0 range 0 .. 0;
      BPBLCD19 at 0 range 1 .. 1;
      BPCLCD19 at 0 range 2 .. 2;
      BPDLCD19 at 0 range 3 .. 3;
      BPELCD19 at 0 range 4 .. 4;
      BPFLCD19 at 0 range 5 .. 5;
      BPGLCD19 at 0 range 6 .. 6;
      BPHLCD19 at 0 range 7 .. 7;
   end record;

   --  LCD_WF23TO20_WF array element
   subtype LCD_WF23TO20_WF_Element is HAL.UInt8;

   --  LCD_WF23TO20_WF array
   type LCD_WF23TO20_WF_Field_Array is array (20 .. 23)
     of LCD_WF23TO20_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF23TO20_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF23TO20_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF23TO20_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF20_BPALCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF20_BPALCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF20_BPALCD20_Field_1)
     with Size => 1;
   for WF20_BPALCD20_Field use
     (WF20_BPALCD20_Field_0 => 0,
      WF20_BPALCD20_Field_1 => 1);

   --  no description available
   type WF20_BPBLCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF20_BPBLCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF20_BPBLCD20_Field_1)
     with Size => 1;
   for WF20_BPBLCD20_Field use
     (WF20_BPBLCD20_Field_0 => 0,
      WF20_BPBLCD20_Field_1 => 1);

   --  no description available
   type WF20_BPCLCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF20_BPCLCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF20_BPCLCD20_Field_1)
     with Size => 1;
   for WF20_BPCLCD20_Field use
     (WF20_BPCLCD20_Field_0 => 0,
      WF20_BPCLCD20_Field_1 => 1);

   --  no description available
   type WF20_BPDLCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF20_BPDLCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF20_BPDLCD20_Field_1)
     with Size => 1;
   for WF20_BPDLCD20_Field use
     (WF20_BPDLCD20_Field_0 => 0,
      WF20_BPDLCD20_Field_1 => 1);

   --  no description available
   type WF20_BPELCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF20_BPELCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF20_BPELCD20_Field_1)
     with Size => 1;
   for WF20_BPELCD20_Field use
     (WF20_BPELCD20_Field_0 => 0,
      WF20_BPELCD20_Field_1 => 1);

   --  no description available
   type WF20_BPFLCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF20_BPFLCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF20_BPFLCD20_Field_1)
     with Size => 1;
   for WF20_BPFLCD20_Field use
     (WF20_BPFLCD20_Field_0 => 0,
      WF20_BPFLCD20_Field_1 => 1);

   --  no description available
   type WF20_BPGLCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF20_BPGLCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF20_BPGLCD20_Field_1)
     with Size => 1;
   for WF20_BPGLCD20_Field use
     (WF20_BPGLCD20_Field_0 => 0,
      WF20_BPGLCD20_Field_1 => 1);

   --  no description available
   type WF20_BPHLCD20_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF20_BPHLCD20_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF20_BPHLCD20_Field_1)
     with Size => 1;
   for WF20_BPHLCD20_Field use
     (WF20_BPHLCD20_Field_0 => 0,
      WF20_BPHLCD20_Field_1 => 1);

   --  LCD Waveform Register 20.
   type LCD_WF20_Register is record
      --  no description available
      BPALCD20 : WF20_BPALCD20_Field := NRF_SVD.LCD.WF20_BPALCD20_Field_0;
      --  no description available
      BPBLCD20 : WF20_BPBLCD20_Field := NRF_SVD.LCD.WF20_BPBLCD20_Field_0;
      --  no description available
      BPCLCD20 : WF20_BPCLCD20_Field := NRF_SVD.LCD.WF20_BPCLCD20_Field_0;
      --  no description available
      BPDLCD20 : WF20_BPDLCD20_Field := NRF_SVD.LCD.WF20_BPDLCD20_Field_0;
      --  no description available
      BPELCD20 : WF20_BPELCD20_Field := NRF_SVD.LCD.WF20_BPELCD20_Field_0;
      --  no description available
      BPFLCD20 : WF20_BPFLCD20_Field := NRF_SVD.LCD.WF20_BPFLCD20_Field_0;
      --  no description available
      BPGLCD20 : WF20_BPGLCD20_Field := NRF_SVD.LCD.WF20_BPGLCD20_Field_0;
      --  no description available
      BPHLCD20 : WF20_BPHLCD20_Field := NRF_SVD.LCD.WF20_BPHLCD20_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF20_Register use record
      BPALCD20 at 0 range 0 .. 0;
      BPBLCD20 at 0 range 1 .. 1;
      BPCLCD20 at 0 range 2 .. 2;
      BPDLCD20 at 0 range 3 .. 3;
      BPELCD20 at 0 range 4 .. 4;
      BPFLCD20 at 0 range 5 .. 5;
      BPGLCD20 at 0 range 6 .. 6;
      BPHLCD20 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF21_BPALCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF21_BPALCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF21_BPALCD21_Field_1)
     with Size => 1;
   for WF21_BPALCD21_Field use
     (WF21_BPALCD21_Field_0 => 0,
      WF21_BPALCD21_Field_1 => 1);

   --  no description available
   type WF21_BPBLCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF21_BPBLCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF21_BPBLCD21_Field_1)
     with Size => 1;
   for WF21_BPBLCD21_Field use
     (WF21_BPBLCD21_Field_0 => 0,
      WF21_BPBLCD21_Field_1 => 1);

   --  no description available
   type WF21_BPCLCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF21_BPCLCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF21_BPCLCD21_Field_1)
     with Size => 1;
   for WF21_BPCLCD21_Field use
     (WF21_BPCLCD21_Field_0 => 0,
      WF21_BPCLCD21_Field_1 => 1);

   --  no description available
   type WF21_BPDLCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF21_BPDLCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF21_BPDLCD21_Field_1)
     with Size => 1;
   for WF21_BPDLCD21_Field use
     (WF21_BPDLCD21_Field_0 => 0,
      WF21_BPDLCD21_Field_1 => 1);

   --  no description available
   type WF21_BPELCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF21_BPELCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF21_BPELCD21_Field_1)
     with Size => 1;
   for WF21_BPELCD21_Field use
     (WF21_BPELCD21_Field_0 => 0,
      WF21_BPELCD21_Field_1 => 1);

   --  no description available
   type WF21_BPFLCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF21_BPFLCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF21_BPFLCD21_Field_1)
     with Size => 1;
   for WF21_BPFLCD21_Field use
     (WF21_BPFLCD21_Field_0 => 0,
      WF21_BPFLCD21_Field_1 => 1);

   --  no description available
   type WF21_BPGLCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF21_BPGLCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF21_BPGLCD21_Field_1)
     with Size => 1;
   for WF21_BPGLCD21_Field use
     (WF21_BPGLCD21_Field_0 => 0,
      WF21_BPGLCD21_Field_1 => 1);

   --  no description available
   type WF21_BPHLCD21_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF21_BPHLCD21_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF21_BPHLCD21_Field_1)
     with Size => 1;
   for WF21_BPHLCD21_Field use
     (WF21_BPHLCD21_Field_0 => 0,
      WF21_BPHLCD21_Field_1 => 1);

   --  LCD Waveform Register 21.
   type LCD_WF21_Register is record
      --  no description available
      BPALCD21 : WF21_BPALCD21_Field := NRF_SVD.LCD.WF21_BPALCD21_Field_0;
      --  no description available
      BPBLCD21 : WF21_BPBLCD21_Field := NRF_SVD.LCD.WF21_BPBLCD21_Field_0;
      --  no description available
      BPCLCD21 : WF21_BPCLCD21_Field := NRF_SVD.LCD.WF21_BPCLCD21_Field_0;
      --  no description available
      BPDLCD21 : WF21_BPDLCD21_Field := NRF_SVD.LCD.WF21_BPDLCD21_Field_0;
      --  no description available
      BPELCD21 : WF21_BPELCD21_Field := NRF_SVD.LCD.WF21_BPELCD21_Field_0;
      --  no description available
      BPFLCD21 : WF21_BPFLCD21_Field := NRF_SVD.LCD.WF21_BPFLCD21_Field_0;
      --  no description available
      BPGLCD21 : WF21_BPGLCD21_Field := NRF_SVD.LCD.WF21_BPGLCD21_Field_0;
      --  no description available
      BPHLCD21 : WF21_BPHLCD21_Field := NRF_SVD.LCD.WF21_BPHLCD21_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF21_Register use record
      BPALCD21 at 0 range 0 .. 0;
      BPBLCD21 at 0 range 1 .. 1;
      BPCLCD21 at 0 range 2 .. 2;
      BPDLCD21 at 0 range 3 .. 3;
      BPELCD21 at 0 range 4 .. 4;
      BPFLCD21 at 0 range 5 .. 5;
      BPGLCD21 at 0 range 6 .. 6;
      BPHLCD21 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF22_BPALCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF22_BPALCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF22_BPALCD22_Field_1)
     with Size => 1;
   for WF22_BPALCD22_Field use
     (WF22_BPALCD22_Field_0 => 0,
      WF22_BPALCD22_Field_1 => 1);

   --  no description available
   type WF22_BPBLCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF22_BPBLCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF22_BPBLCD22_Field_1)
     with Size => 1;
   for WF22_BPBLCD22_Field use
     (WF22_BPBLCD22_Field_0 => 0,
      WF22_BPBLCD22_Field_1 => 1);

   --  no description available
   type WF22_BPCLCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF22_BPCLCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF22_BPCLCD22_Field_1)
     with Size => 1;
   for WF22_BPCLCD22_Field use
     (WF22_BPCLCD22_Field_0 => 0,
      WF22_BPCLCD22_Field_1 => 1);

   --  no description available
   type WF22_BPDLCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF22_BPDLCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF22_BPDLCD22_Field_1)
     with Size => 1;
   for WF22_BPDLCD22_Field use
     (WF22_BPDLCD22_Field_0 => 0,
      WF22_BPDLCD22_Field_1 => 1);

   --  no description available
   type WF22_BPELCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF22_BPELCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF22_BPELCD22_Field_1)
     with Size => 1;
   for WF22_BPELCD22_Field use
     (WF22_BPELCD22_Field_0 => 0,
      WF22_BPELCD22_Field_1 => 1);

   --  no description available
   type WF22_BPFLCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF22_BPFLCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF22_BPFLCD22_Field_1)
     with Size => 1;
   for WF22_BPFLCD22_Field use
     (WF22_BPFLCD22_Field_0 => 0,
      WF22_BPFLCD22_Field_1 => 1);

   --  no description available
   type WF22_BPGLCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF22_BPGLCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF22_BPGLCD22_Field_1)
     with Size => 1;
   for WF22_BPGLCD22_Field use
     (WF22_BPGLCD22_Field_0 => 0,
      WF22_BPGLCD22_Field_1 => 1);

   --  no description available
   type WF22_BPHLCD22_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF22_BPHLCD22_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF22_BPHLCD22_Field_1)
     with Size => 1;
   for WF22_BPHLCD22_Field use
     (WF22_BPHLCD22_Field_0 => 0,
      WF22_BPHLCD22_Field_1 => 1);

   --  LCD Waveform Register 22.
   type LCD_WF22_Register is record
      --  no description available
      BPALCD22 : WF22_BPALCD22_Field := NRF_SVD.LCD.WF22_BPALCD22_Field_0;
      --  no description available
      BPBLCD22 : WF22_BPBLCD22_Field := NRF_SVD.LCD.WF22_BPBLCD22_Field_0;
      --  no description available
      BPCLCD22 : WF22_BPCLCD22_Field := NRF_SVD.LCD.WF22_BPCLCD22_Field_0;
      --  no description available
      BPDLCD22 : WF22_BPDLCD22_Field := NRF_SVD.LCD.WF22_BPDLCD22_Field_0;
      --  no description available
      BPELCD22 : WF22_BPELCD22_Field := NRF_SVD.LCD.WF22_BPELCD22_Field_0;
      --  no description available
      BPFLCD22 : WF22_BPFLCD22_Field := NRF_SVD.LCD.WF22_BPFLCD22_Field_0;
      --  no description available
      BPGLCD22 : WF22_BPGLCD22_Field := NRF_SVD.LCD.WF22_BPGLCD22_Field_0;
      --  no description available
      BPHLCD22 : WF22_BPHLCD22_Field := NRF_SVD.LCD.WF22_BPHLCD22_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF22_Register use record
      BPALCD22 at 0 range 0 .. 0;
      BPBLCD22 at 0 range 1 .. 1;
      BPCLCD22 at 0 range 2 .. 2;
      BPDLCD22 at 0 range 3 .. 3;
      BPELCD22 at 0 range 4 .. 4;
      BPFLCD22 at 0 range 5 .. 5;
      BPGLCD22 at 0 range 6 .. 6;
      BPHLCD22 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF23_BPALCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF23_BPALCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF23_BPALCD23_Field_1)
     with Size => 1;
   for WF23_BPALCD23_Field use
     (WF23_BPALCD23_Field_0 => 0,
      WF23_BPALCD23_Field_1 => 1);

   --  no description available
   type WF23_BPBLCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF23_BPBLCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF23_BPBLCD23_Field_1)
     with Size => 1;
   for WF23_BPBLCD23_Field use
     (WF23_BPBLCD23_Field_0 => 0,
      WF23_BPBLCD23_Field_1 => 1);

   --  no description available
   type WF23_BPCLCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF23_BPCLCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF23_BPCLCD23_Field_1)
     with Size => 1;
   for WF23_BPCLCD23_Field use
     (WF23_BPCLCD23_Field_0 => 0,
      WF23_BPCLCD23_Field_1 => 1);

   --  no description available
   type WF23_BPDLCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF23_BPDLCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF23_BPDLCD23_Field_1)
     with Size => 1;
   for WF23_BPDLCD23_Field use
     (WF23_BPDLCD23_Field_0 => 0,
      WF23_BPDLCD23_Field_1 => 1);

   --  no description available
   type WF23_BPELCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF23_BPELCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF23_BPELCD23_Field_1)
     with Size => 1;
   for WF23_BPELCD23_Field use
     (WF23_BPELCD23_Field_0 => 0,
      WF23_BPELCD23_Field_1 => 1);

   --  no description available
   type WF23_BPFLCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF23_BPFLCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF23_BPFLCD23_Field_1)
     with Size => 1;
   for WF23_BPFLCD23_Field use
     (WF23_BPFLCD23_Field_0 => 0,
      WF23_BPFLCD23_Field_1 => 1);

   --  no description available
   type WF23_BPGLCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF23_BPGLCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF23_BPGLCD23_Field_1)
     with Size => 1;
   for WF23_BPGLCD23_Field use
     (WF23_BPGLCD23_Field_0 => 0,
      WF23_BPGLCD23_Field_1 => 1);

   --  no description available
   type WF23_BPHLCD23_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF23_BPHLCD23_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF23_BPHLCD23_Field_1)
     with Size => 1;
   for WF23_BPHLCD23_Field use
     (WF23_BPHLCD23_Field_0 => 0,
      WF23_BPHLCD23_Field_1 => 1);

   --  LCD Waveform Register 23.
   type LCD_WF23_Register is record
      --  no description available
      BPALCD23 : WF23_BPALCD23_Field := NRF_SVD.LCD.WF23_BPALCD23_Field_0;
      --  no description available
      BPBLCD23 : WF23_BPBLCD23_Field := NRF_SVD.LCD.WF23_BPBLCD23_Field_0;
      --  no description available
      BPCLCD23 : WF23_BPCLCD23_Field := NRF_SVD.LCD.WF23_BPCLCD23_Field_0;
      --  no description available
      BPDLCD23 : WF23_BPDLCD23_Field := NRF_SVD.LCD.WF23_BPDLCD23_Field_0;
      --  no description available
      BPELCD23 : WF23_BPELCD23_Field := NRF_SVD.LCD.WF23_BPELCD23_Field_0;
      --  no description available
      BPFLCD23 : WF23_BPFLCD23_Field := NRF_SVD.LCD.WF23_BPFLCD23_Field_0;
      --  no description available
      BPGLCD23 : WF23_BPGLCD23_Field := NRF_SVD.LCD.WF23_BPGLCD23_Field_0;
      --  no description available
      BPHLCD23 : WF23_BPHLCD23_Field := NRF_SVD.LCD.WF23_BPHLCD23_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF23_Register use record
      BPALCD23 at 0 range 0 .. 0;
      BPBLCD23 at 0 range 1 .. 1;
      BPCLCD23 at 0 range 2 .. 2;
      BPDLCD23 at 0 range 3 .. 3;
      BPELCD23 at 0 range 4 .. 4;
      BPFLCD23 at 0 range 5 .. 5;
      BPGLCD23 at 0 range 6 .. 6;
      BPHLCD23 at 0 range 7 .. 7;
   end record;

   --  LCD_WF27TO24_WF array element
   subtype LCD_WF27TO24_WF_Element is HAL.UInt8;

   --  LCD_WF27TO24_WF array
   type LCD_WF27TO24_WF_Field_Array is array (24 .. 27)
     of LCD_WF27TO24_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF27TO24_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF27TO24_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF27TO24_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF24_BPALCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF24_BPALCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF24_BPALCD24_Field_1)
     with Size => 1;
   for WF24_BPALCD24_Field use
     (WF24_BPALCD24_Field_0 => 0,
      WF24_BPALCD24_Field_1 => 1);

   --  no description available
   type WF24_BPBLCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF24_BPBLCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF24_BPBLCD24_Field_1)
     with Size => 1;
   for WF24_BPBLCD24_Field use
     (WF24_BPBLCD24_Field_0 => 0,
      WF24_BPBLCD24_Field_1 => 1);

   --  no description available
   type WF24_BPCLCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF24_BPCLCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF24_BPCLCD24_Field_1)
     with Size => 1;
   for WF24_BPCLCD24_Field use
     (WF24_BPCLCD24_Field_0 => 0,
      WF24_BPCLCD24_Field_1 => 1);

   --  no description available
   type WF24_BPDLCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF24_BPDLCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF24_BPDLCD24_Field_1)
     with Size => 1;
   for WF24_BPDLCD24_Field use
     (WF24_BPDLCD24_Field_0 => 0,
      WF24_BPDLCD24_Field_1 => 1);

   --  no description available
   type WF24_BPELCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF24_BPELCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF24_BPELCD24_Field_1)
     with Size => 1;
   for WF24_BPELCD24_Field use
     (WF24_BPELCD24_Field_0 => 0,
      WF24_BPELCD24_Field_1 => 1);

   --  no description available
   type WF24_BPFLCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF24_BPFLCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF24_BPFLCD24_Field_1)
     with Size => 1;
   for WF24_BPFLCD24_Field use
     (WF24_BPFLCD24_Field_0 => 0,
      WF24_BPFLCD24_Field_1 => 1);

   --  no description available
   type WF24_BPGLCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF24_BPGLCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF24_BPGLCD24_Field_1)
     with Size => 1;
   for WF24_BPGLCD24_Field use
     (WF24_BPGLCD24_Field_0 => 0,
      WF24_BPGLCD24_Field_1 => 1);

   --  no description available
   type WF24_BPHLCD24_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF24_BPHLCD24_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF24_BPHLCD24_Field_1)
     with Size => 1;
   for WF24_BPHLCD24_Field use
     (WF24_BPHLCD24_Field_0 => 0,
      WF24_BPHLCD24_Field_1 => 1);

   --  LCD Waveform Register 24.
   type LCD_WF24_Register is record
      --  no description available
      BPALCD24 : WF24_BPALCD24_Field := NRF_SVD.LCD.WF24_BPALCD24_Field_0;
      --  no description available
      BPBLCD24 : WF24_BPBLCD24_Field := NRF_SVD.LCD.WF24_BPBLCD24_Field_0;
      --  no description available
      BPCLCD24 : WF24_BPCLCD24_Field := NRF_SVD.LCD.WF24_BPCLCD24_Field_0;
      --  no description available
      BPDLCD24 : WF24_BPDLCD24_Field := NRF_SVD.LCD.WF24_BPDLCD24_Field_0;
      --  no description available
      BPELCD24 : WF24_BPELCD24_Field := NRF_SVD.LCD.WF24_BPELCD24_Field_0;
      --  no description available
      BPFLCD24 : WF24_BPFLCD24_Field := NRF_SVD.LCD.WF24_BPFLCD24_Field_0;
      --  no description available
      BPGLCD24 : WF24_BPGLCD24_Field := NRF_SVD.LCD.WF24_BPGLCD24_Field_0;
      --  no description available
      BPHLCD24 : WF24_BPHLCD24_Field := NRF_SVD.LCD.WF24_BPHLCD24_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF24_Register use record
      BPALCD24 at 0 range 0 .. 0;
      BPBLCD24 at 0 range 1 .. 1;
      BPCLCD24 at 0 range 2 .. 2;
      BPDLCD24 at 0 range 3 .. 3;
      BPELCD24 at 0 range 4 .. 4;
      BPFLCD24 at 0 range 5 .. 5;
      BPGLCD24 at 0 range 6 .. 6;
      BPHLCD24 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF25_BPALCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF25_BPALCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF25_BPALCD25_Field_1)
     with Size => 1;
   for WF25_BPALCD25_Field use
     (WF25_BPALCD25_Field_0 => 0,
      WF25_BPALCD25_Field_1 => 1);

   --  no description available
   type WF25_BPBLCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF25_BPBLCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF25_BPBLCD25_Field_1)
     with Size => 1;
   for WF25_BPBLCD25_Field use
     (WF25_BPBLCD25_Field_0 => 0,
      WF25_BPBLCD25_Field_1 => 1);

   --  no description available
   type WF25_BPCLCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF25_BPCLCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF25_BPCLCD25_Field_1)
     with Size => 1;
   for WF25_BPCLCD25_Field use
     (WF25_BPCLCD25_Field_0 => 0,
      WF25_BPCLCD25_Field_1 => 1);

   --  no description available
   type WF25_BPDLCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF25_BPDLCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF25_BPDLCD25_Field_1)
     with Size => 1;
   for WF25_BPDLCD25_Field use
     (WF25_BPDLCD25_Field_0 => 0,
      WF25_BPDLCD25_Field_1 => 1);

   --  no description available
   type WF25_BPELCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF25_BPELCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF25_BPELCD25_Field_1)
     with Size => 1;
   for WF25_BPELCD25_Field use
     (WF25_BPELCD25_Field_0 => 0,
      WF25_BPELCD25_Field_1 => 1);

   --  no description available
   type WF25_BPFLCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF25_BPFLCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF25_BPFLCD25_Field_1)
     with Size => 1;
   for WF25_BPFLCD25_Field use
     (WF25_BPFLCD25_Field_0 => 0,
      WF25_BPFLCD25_Field_1 => 1);

   --  no description available
   type WF25_BPGLCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF25_BPGLCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF25_BPGLCD25_Field_1)
     with Size => 1;
   for WF25_BPGLCD25_Field use
     (WF25_BPGLCD25_Field_0 => 0,
      WF25_BPGLCD25_Field_1 => 1);

   --  no description available
   type WF25_BPHLCD25_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF25_BPHLCD25_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF25_BPHLCD25_Field_1)
     with Size => 1;
   for WF25_BPHLCD25_Field use
     (WF25_BPHLCD25_Field_0 => 0,
      WF25_BPHLCD25_Field_1 => 1);

   --  LCD Waveform Register 25.
   type LCD_WF25_Register is record
      --  no description available
      BPALCD25 : WF25_BPALCD25_Field := NRF_SVD.LCD.WF25_BPALCD25_Field_0;
      --  no description available
      BPBLCD25 : WF25_BPBLCD25_Field := NRF_SVD.LCD.WF25_BPBLCD25_Field_0;
      --  no description available
      BPCLCD25 : WF25_BPCLCD25_Field := NRF_SVD.LCD.WF25_BPCLCD25_Field_0;
      --  no description available
      BPDLCD25 : WF25_BPDLCD25_Field := NRF_SVD.LCD.WF25_BPDLCD25_Field_0;
      --  no description available
      BPELCD25 : WF25_BPELCD25_Field := NRF_SVD.LCD.WF25_BPELCD25_Field_0;
      --  no description available
      BPFLCD25 : WF25_BPFLCD25_Field := NRF_SVD.LCD.WF25_BPFLCD25_Field_0;
      --  no description available
      BPGLCD25 : WF25_BPGLCD25_Field := NRF_SVD.LCD.WF25_BPGLCD25_Field_0;
      --  no description available
      BPHLCD25 : WF25_BPHLCD25_Field := NRF_SVD.LCD.WF25_BPHLCD25_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF25_Register use record
      BPALCD25 at 0 range 0 .. 0;
      BPBLCD25 at 0 range 1 .. 1;
      BPCLCD25 at 0 range 2 .. 2;
      BPDLCD25 at 0 range 3 .. 3;
      BPELCD25 at 0 range 4 .. 4;
      BPFLCD25 at 0 range 5 .. 5;
      BPGLCD25 at 0 range 6 .. 6;
      BPHLCD25 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF26_BPALCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF26_BPALCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF26_BPALCD26_Field_1)
     with Size => 1;
   for WF26_BPALCD26_Field use
     (WF26_BPALCD26_Field_0 => 0,
      WF26_BPALCD26_Field_1 => 1);

   --  no description available
   type WF26_BPBLCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF26_BPBLCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF26_BPBLCD26_Field_1)
     with Size => 1;
   for WF26_BPBLCD26_Field use
     (WF26_BPBLCD26_Field_0 => 0,
      WF26_BPBLCD26_Field_1 => 1);

   --  no description available
   type WF26_BPCLCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF26_BPCLCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF26_BPCLCD26_Field_1)
     with Size => 1;
   for WF26_BPCLCD26_Field use
     (WF26_BPCLCD26_Field_0 => 0,
      WF26_BPCLCD26_Field_1 => 1);

   --  no description available
   type WF26_BPDLCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF26_BPDLCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF26_BPDLCD26_Field_1)
     with Size => 1;
   for WF26_BPDLCD26_Field use
     (WF26_BPDLCD26_Field_0 => 0,
      WF26_BPDLCD26_Field_1 => 1);

   --  no description available
   type WF26_BPELCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF26_BPELCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF26_BPELCD26_Field_1)
     with Size => 1;
   for WF26_BPELCD26_Field use
     (WF26_BPELCD26_Field_0 => 0,
      WF26_BPELCD26_Field_1 => 1);

   --  no description available
   type WF26_BPFLCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF26_BPFLCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF26_BPFLCD26_Field_1)
     with Size => 1;
   for WF26_BPFLCD26_Field use
     (WF26_BPFLCD26_Field_0 => 0,
      WF26_BPFLCD26_Field_1 => 1);

   --  no description available
   type WF26_BPGLCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF26_BPGLCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF26_BPGLCD26_Field_1)
     with Size => 1;
   for WF26_BPGLCD26_Field use
     (WF26_BPGLCD26_Field_0 => 0,
      WF26_BPGLCD26_Field_1 => 1);

   --  no description available
   type WF26_BPHLCD26_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF26_BPHLCD26_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF26_BPHLCD26_Field_1)
     with Size => 1;
   for WF26_BPHLCD26_Field use
     (WF26_BPHLCD26_Field_0 => 0,
      WF26_BPHLCD26_Field_1 => 1);

   --  LCD Waveform Register 26.
   type LCD_WF26_Register is record
      --  no description available
      BPALCD26 : WF26_BPALCD26_Field := NRF_SVD.LCD.WF26_BPALCD26_Field_0;
      --  no description available
      BPBLCD26 : WF26_BPBLCD26_Field := NRF_SVD.LCD.WF26_BPBLCD26_Field_0;
      --  no description available
      BPCLCD26 : WF26_BPCLCD26_Field := NRF_SVD.LCD.WF26_BPCLCD26_Field_0;
      --  no description available
      BPDLCD26 : WF26_BPDLCD26_Field := NRF_SVD.LCD.WF26_BPDLCD26_Field_0;
      --  no description available
      BPELCD26 : WF26_BPELCD26_Field := NRF_SVD.LCD.WF26_BPELCD26_Field_0;
      --  no description available
      BPFLCD26 : WF26_BPFLCD26_Field := NRF_SVD.LCD.WF26_BPFLCD26_Field_0;
      --  no description available
      BPGLCD26 : WF26_BPGLCD26_Field := NRF_SVD.LCD.WF26_BPGLCD26_Field_0;
      --  no description available
      BPHLCD26 : WF26_BPHLCD26_Field := NRF_SVD.LCD.WF26_BPHLCD26_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF26_Register use record
      BPALCD26 at 0 range 0 .. 0;
      BPBLCD26 at 0 range 1 .. 1;
      BPCLCD26 at 0 range 2 .. 2;
      BPDLCD26 at 0 range 3 .. 3;
      BPELCD26 at 0 range 4 .. 4;
      BPFLCD26 at 0 range 5 .. 5;
      BPGLCD26 at 0 range 6 .. 6;
      BPHLCD26 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF27_BPALCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF27_BPALCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF27_BPALCD27_Field_1)
     with Size => 1;
   for WF27_BPALCD27_Field use
     (WF27_BPALCD27_Field_0 => 0,
      WF27_BPALCD27_Field_1 => 1);

   --  no description available
   type WF27_BPBLCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF27_BPBLCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF27_BPBLCD27_Field_1)
     with Size => 1;
   for WF27_BPBLCD27_Field use
     (WF27_BPBLCD27_Field_0 => 0,
      WF27_BPBLCD27_Field_1 => 1);

   --  no description available
   type WF27_BPCLCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF27_BPCLCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF27_BPCLCD27_Field_1)
     with Size => 1;
   for WF27_BPCLCD27_Field use
     (WF27_BPCLCD27_Field_0 => 0,
      WF27_BPCLCD27_Field_1 => 1);

   --  no description available
   type WF27_BPDLCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF27_BPDLCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF27_BPDLCD27_Field_1)
     with Size => 1;
   for WF27_BPDLCD27_Field use
     (WF27_BPDLCD27_Field_0 => 0,
      WF27_BPDLCD27_Field_1 => 1);

   --  no description available
   type WF27_BPELCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF27_BPELCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF27_BPELCD27_Field_1)
     with Size => 1;
   for WF27_BPELCD27_Field use
     (WF27_BPELCD27_Field_0 => 0,
      WF27_BPELCD27_Field_1 => 1);

   --  no description available
   type WF27_BPFLCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF27_BPFLCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF27_BPFLCD27_Field_1)
     with Size => 1;
   for WF27_BPFLCD27_Field use
     (WF27_BPFLCD27_Field_0 => 0,
      WF27_BPFLCD27_Field_1 => 1);

   --  no description available
   type WF27_BPGLCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF27_BPGLCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF27_BPGLCD27_Field_1)
     with Size => 1;
   for WF27_BPGLCD27_Field use
     (WF27_BPGLCD27_Field_0 => 0,
      WF27_BPGLCD27_Field_1 => 1);

   --  no description available
   type WF27_BPHLCD27_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF27_BPHLCD27_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF27_BPHLCD27_Field_1)
     with Size => 1;
   for WF27_BPHLCD27_Field use
     (WF27_BPHLCD27_Field_0 => 0,
      WF27_BPHLCD27_Field_1 => 1);

   --  LCD Waveform Register 27.
   type LCD_WF27_Register is record
      --  no description available
      BPALCD27 : WF27_BPALCD27_Field := NRF_SVD.LCD.WF27_BPALCD27_Field_0;
      --  no description available
      BPBLCD27 : WF27_BPBLCD27_Field := NRF_SVD.LCD.WF27_BPBLCD27_Field_0;
      --  no description available
      BPCLCD27 : WF27_BPCLCD27_Field := NRF_SVD.LCD.WF27_BPCLCD27_Field_0;
      --  no description available
      BPDLCD27 : WF27_BPDLCD27_Field := NRF_SVD.LCD.WF27_BPDLCD27_Field_0;
      --  no description available
      BPELCD27 : WF27_BPELCD27_Field := NRF_SVD.LCD.WF27_BPELCD27_Field_0;
      --  no description available
      BPFLCD27 : WF27_BPFLCD27_Field := NRF_SVD.LCD.WF27_BPFLCD27_Field_0;
      --  no description available
      BPGLCD27 : WF27_BPGLCD27_Field := NRF_SVD.LCD.WF27_BPGLCD27_Field_0;
      --  no description available
      BPHLCD27 : WF27_BPHLCD27_Field := NRF_SVD.LCD.WF27_BPHLCD27_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF27_Register use record
      BPALCD27 at 0 range 0 .. 0;
      BPBLCD27 at 0 range 1 .. 1;
      BPCLCD27 at 0 range 2 .. 2;
      BPDLCD27 at 0 range 3 .. 3;
      BPELCD27 at 0 range 4 .. 4;
      BPFLCD27 at 0 range 5 .. 5;
      BPGLCD27 at 0 range 6 .. 6;
      BPHLCD27 at 0 range 7 .. 7;
   end record;

   --  LCD_WF31TO28_WF array element
   subtype LCD_WF31TO28_WF_Element is HAL.UInt8;

   --  LCD_WF31TO28_WF array
   type LCD_WF31TO28_WF_Field_Array is array (28 .. 31)
     of LCD_WF31TO28_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF31TO28_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF31TO28_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF31TO28_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF28_BPALCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF28_BPALCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF28_BPALCD28_Field_1)
     with Size => 1;
   for WF28_BPALCD28_Field use
     (WF28_BPALCD28_Field_0 => 0,
      WF28_BPALCD28_Field_1 => 1);

   --  no description available
   type WF28_BPBLCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF28_BPBLCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF28_BPBLCD28_Field_1)
     with Size => 1;
   for WF28_BPBLCD28_Field use
     (WF28_BPBLCD28_Field_0 => 0,
      WF28_BPBLCD28_Field_1 => 1);

   --  no description available
   type WF28_BPCLCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF28_BPCLCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF28_BPCLCD28_Field_1)
     with Size => 1;
   for WF28_BPCLCD28_Field use
     (WF28_BPCLCD28_Field_0 => 0,
      WF28_BPCLCD28_Field_1 => 1);

   --  no description available
   type WF28_BPDLCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF28_BPDLCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF28_BPDLCD28_Field_1)
     with Size => 1;
   for WF28_BPDLCD28_Field use
     (WF28_BPDLCD28_Field_0 => 0,
      WF28_BPDLCD28_Field_1 => 1);

   --  no description available
   type WF28_BPELCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF28_BPELCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF28_BPELCD28_Field_1)
     with Size => 1;
   for WF28_BPELCD28_Field use
     (WF28_BPELCD28_Field_0 => 0,
      WF28_BPELCD28_Field_1 => 1);

   --  no description available
   type WF28_BPFLCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF28_BPFLCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF28_BPFLCD28_Field_1)
     with Size => 1;
   for WF28_BPFLCD28_Field use
     (WF28_BPFLCD28_Field_0 => 0,
      WF28_BPFLCD28_Field_1 => 1);

   --  no description available
   type WF28_BPGLCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF28_BPGLCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF28_BPGLCD28_Field_1)
     with Size => 1;
   for WF28_BPGLCD28_Field use
     (WF28_BPGLCD28_Field_0 => 0,
      WF28_BPGLCD28_Field_1 => 1);

   --  no description available
   type WF28_BPHLCD28_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF28_BPHLCD28_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF28_BPHLCD28_Field_1)
     with Size => 1;
   for WF28_BPHLCD28_Field use
     (WF28_BPHLCD28_Field_0 => 0,
      WF28_BPHLCD28_Field_1 => 1);

   --  LCD Waveform Register 28.
   type LCD_WF28_Register is record
      --  no description available
      BPALCD28 : WF28_BPALCD28_Field := NRF_SVD.LCD.WF28_BPALCD28_Field_0;
      --  no description available
      BPBLCD28 : WF28_BPBLCD28_Field := NRF_SVD.LCD.WF28_BPBLCD28_Field_0;
      --  no description available
      BPCLCD28 : WF28_BPCLCD28_Field := NRF_SVD.LCD.WF28_BPCLCD28_Field_0;
      --  no description available
      BPDLCD28 : WF28_BPDLCD28_Field := NRF_SVD.LCD.WF28_BPDLCD28_Field_0;
      --  no description available
      BPELCD28 : WF28_BPELCD28_Field := NRF_SVD.LCD.WF28_BPELCD28_Field_0;
      --  no description available
      BPFLCD28 : WF28_BPFLCD28_Field := NRF_SVD.LCD.WF28_BPFLCD28_Field_0;
      --  no description available
      BPGLCD28 : WF28_BPGLCD28_Field := NRF_SVD.LCD.WF28_BPGLCD28_Field_0;
      --  no description available
      BPHLCD28 : WF28_BPHLCD28_Field := NRF_SVD.LCD.WF28_BPHLCD28_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF28_Register use record
      BPALCD28 at 0 range 0 .. 0;
      BPBLCD28 at 0 range 1 .. 1;
      BPCLCD28 at 0 range 2 .. 2;
      BPDLCD28 at 0 range 3 .. 3;
      BPELCD28 at 0 range 4 .. 4;
      BPFLCD28 at 0 range 5 .. 5;
      BPGLCD28 at 0 range 6 .. 6;
      BPHLCD28 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF29_BPALCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF29_BPALCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF29_BPALCD29_Field_1)
     with Size => 1;
   for WF29_BPALCD29_Field use
     (WF29_BPALCD29_Field_0 => 0,
      WF29_BPALCD29_Field_1 => 1);

   --  no description available
   type WF29_BPBLCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF29_BPBLCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF29_BPBLCD29_Field_1)
     with Size => 1;
   for WF29_BPBLCD29_Field use
     (WF29_BPBLCD29_Field_0 => 0,
      WF29_BPBLCD29_Field_1 => 1);

   --  no description available
   type WF29_BPCLCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF29_BPCLCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF29_BPCLCD29_Field_1)
     with Size => 1;
   for WF29_BPCLCD29_Field use
     (WF29_BPCLCD29_Field_0 => 0,
      WF29_BPCLCD29_Field_1 => 1);

   --  no description available
   type WF29_BPDLCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF29_BPDLCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF29_BPDLCD29_Field_1)
     with Size => 1;
   for WF29_BPDLCD29_Field use
     (WF29_BPDLCD29_Field_0 => 0,
      WF29_BPDLCD29_Field_1 => 1);

   --  no description available
   type WF29_BPELCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF29_BPELCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF29_BPELCD29_Field_1)
     with Size => 1;
   for WF29_BPELCD29_Field use
     (WF29_BPELCD29_Field_0 => 0,
      WF29_BPELCD29_Field_1 => 1);

   --  no description available
   type WF29_BPFLCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF29_BPFLCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF29_BPFLCD29_Field_1)
     with Size => 1;
   for WF29_BPFLCD29_Field use
     (WF29_BPFLCD29_Field_0 => 0,
      WF29_BPFLCD29_Field_1 => 1);

   --  no description available
   type WF29_BPGLCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF29_BPGLCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF29_BPGLCD29_Field_1)
     with Size => 1;
   for WF29_BPGLCD29_Field use
     (WF29_BPGLCD29_Field_0 => 0,
      WF29_BPGLCD29_Field_1 => 1);

   --  no description available
   type WF29_BPHLCD29_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF29_BPHLCD29_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF29_BPHLCD29_Field_1)
     with Size => 1;
   for WF29_BPHLCD29_Field use
     (WF29_BPHLCD29_Field_0 => 0,
      WF29_BPHLCD29_Field_1 => 1);

   --  LCD Waveform Register 29.
   type LCD_WF29_Register is record
      --  no description available
      BPALCD29 : WF29_BPALCD29_Field := NRF_SVD.LCD.WF29_BPALCD29_Field_0;
      --  no description available
      BPBLCD29 : WF29_BPBLCD29_Field := NRF_SVD.LCD.WF29_BPBLCD29_Field_0;
      --  no description available
      BPCLCD29 : WF29_BPCLCD29_Field := NRF_SVD.LCD.WF29_BPCLCD29_Field_0;
      --  no description available
      BPDLCD29 : WF29_BPDLCD29_Field := NRF_SVD.LCD.WF29_BPDLCD29_Field_0;
      --  no description available
      BPELCD29 : WF29_BPELCD29_Field := NRF_SVD.LCD.WF29_BPELCD29_Field_0;
      --  no description available
      BPFLCD29 : WF29_BPFLCD29_Field := NRF_SVD.LCD.WF29_BPFLCD29_Field_0;
      --  no description available
      BPGLCD29 : WF29_BPGLCD29_Field := NRF_SVD.LCD.WF29_BPGLCD29_Field_0;
      --  no description available
      BPHLCD29 : WF29_BPHLCD29_Field := NRF_SVD.LCD.WF29_BPHLCD29_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF29_Register use record
      BPALCD29 at 0 range 0 .. 0;
      BPBLCD29 at 0 range 1 .. 1;
      BPCLCD29 at 0 range 2 .. 2;
      BPDLCD29 at 0 range 3 .. 3;
      BPELCD29 at 0 range 4 .. 4;
      BPFLCD29 at 0 range 5 .. 5;
      BPGLCD29 at 0 range 6 .. 6;
      BPHLCD29 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF30_BPALCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF30_BPALCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF30_BPALCD30_Field_1)
     with Size => 1;
   for WF30_BPALCD30_Field use
     (WF30_BPALCD30_Field_0 => 0,
      WF30_BPALCD30_Field_1 => 1);

   --  no description available
   type WF30_BPBLCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF30_BPBLCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF30_BPBLCD30_Field_1)
     with Size => 1;
   for WF30_BPBLCD30_Field use
     (WF30_BPBLCD30_Field_0 => 0,
      WF30_BPBLCD30_Field_1 => 1);

   --  no description available
   type WF30_BPCLCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF30_BPCLCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF30_BPCLCD30_Field_1)
     with Size => 1;
   for WF30_BPCLCD30_Field use
     (WF30_BPCLCD30_Field_0 => 0,
      WF30_BPCLCD30_Field_1 => 1);

   --  no description available
   type WF30_BPDLCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF30_BPDLCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF30_BPDLCD30_Field_1)
     with Size => 1;
   for WF30_BPDLCD30_Field use
     (WF30_BPDLCD30_Field_0 => 0,
      WF30_BPDLCD30_Field_1 => 1);

   --  no description available
   type WF30_BPELCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF30_BPELCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF30_BPELCD30_Field_1)
     with Size => 1;
   for WF30_BPELCD30_Field use
     (WF30_BPELCD30_Field_0 => 0,
      WF30_BPELCD30_Field_1 => 1);

   --  no description available
   type WF30_BPFLCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF30_BPFLCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF30_BPFLCD30_Field_1)
     with Size => 1;
   for WF30_BPFLCD30_Field use
     (WF30_BPFLCD30_Field_0 => 0,
      WF30_BPFLCD30_Field_1 => 1);

   --  no description available
   type WF30_BPGLCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF30_BPGLCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF30_BPGLCD30_Field_1)
     with Size => 1;
   for WF30_BPGLCD30_Field use
     (WF30_BPGLCD30_Field_0 => 0,
      WF30_BPGLCD30_Field_1 => 1);

   --  no description available
   type WF30_BPHLCD30_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF30_BPHLCD30_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF30_BPHLCD30_Field_1)
     with Size => 1;
   for WF30_BPHLCD30_Field use
     (WF30_BPHLCD30_Field_0 => 0,
      WF30_BPHLCD30_Field_1 => 1);

   --  LCD Waveform Register 30.
   type LCD_WF30_Register is record
      --  no description available
      BPALCD30 : WF30_BPALCD30_Field := NRF_SVD.LCD.WF30_BPALCD30_Field_0;
      --  no description available
      BPBLCD30 : WF30_BPBLCD30_Field := NRF_SVD.LCD.WF30_BPBLCD30_Field_0;
      --  no description available
      BPCLCD30 : WF30_BPCLCD30_Field := NRF_SVD.LCD.WF30_BPCLCD30_Field_0;
      --  no description available
      BPDLCD30 : WF30_BPDLCD30_Field := NRF_SVD.LCD.WF30_BPDLCD30_Field_0;
      --  no description available
      BPELCD30 : WF30_BPELCD30_Field := NRF_SVD.LCD.WF30_BPELCD30_Field_0;
      --  no description available
      BPFLCD30 : WF30_BPFLCD30_Field := NRF_SVD.LCD.WF30_BPFLCD30_Field_0;
      --  no description available
      BPGLCD30 : WF30_BPGLCD30_Field := NRF_SVD.LCD.WF30_BPGLCD30_Field_0;
      --  no description available
      BPHLCD30 : WF30_BPHLCD30_Field := NRF_SVD.LCD.WF30_BPHLCD30_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF30_Register use record
      BPALCD30 at 0 range 0 .. 0;
      BPBLCD30 at 0 range 1 .. 1;
      BPCLCD30 at 0 range 2 .. 2;
      BPDLCD30 at 0 range 3 .. 3;
      BPELCD30 at 0 range 4 .. 4;
      BPFLCD30 at 0 range 5 .. 5;
      BPGLCD30 at 0 range 6 .. 6;
      BPHLCD30 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF31_BPALCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF31_BPALCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF31_BPALCD31_Field_1)
     with Size => 1;
   for WF31_BPALCD31_Field use
     (WF31_BPALCD31_Field_0 => 0,
      WF31_BPALCD31_Field_1 => 1);

   --  no description available
   type WF31_BPBLCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF31_BPBLCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF31_BPBLCD31_Field_1)
     with Size => 1;
   for WF31_BPBLCD31_Field use
     (WF31_BPBLCD31_Field_0 => 0,
      WF31_BPBLCD31_Field_1 => 1);

   --  no description available
   type WF31_BPCLCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF31_BPCLCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF31_BPCLCD31_Field_1)
     with Size => 1;
   for WF31_BPCLCD31_Field use
     (WF31_BPCLCD31_Field_0 => 0,
      WF31_BPCLCD31_Field_1 => 1);

   --  no description available
   type WF31_BPDLCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF31_BPDLCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF31_BPDLCD31_Field_1)
     with Size => 1;
   for WF31_BPDLCD31_Field use
     (WF31_BPDLCD31_Field_0 => 0,
      WF31_BPDLCD31_Field_1 => 1);

   --  no description available
   type WF31_BPELCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF31_BPELCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF31_BPELCD31_Field_1)
     with Size => 1;
   for WF31_BPELCD31_Field use
     (WF31_BPELCD31_Field_0 => 0,
      WF31_BPELCD31_Field_1 => 1);

   --  no description available
   type WF31_BPFLCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF31_BPFLCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF31_BPFLCD31_Field_1)
     with Size => 1;
   for WF31_BPFLCD31_Field use
     (WF31_BPFLCD31_Field_0 => 0,
      WF31_BPFLCD31_Field_1 => 1);

   --  no description available
   type WF31_BPGLCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF31_BPGLCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF31_BPGLCD31_Field_1)
     with Size => 1;
   for WF31_BPGLCD31_Field use
     (WF31_BPGLCD31_Field_0 => 0,
      WF31_BPGLCD31_Field_1 => 1);

   --  no description available
   type WF31_BPHLCD31_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF31_BPHLCD31_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF31_BPHLCD31_Field_1)
     with Size => 1;
   for WF31_BPHLCD31_Field use
     (WF31_BPHLCD31_Field_0 => 0,
      WF31_BPHLCD31_Field_1 => 1);

   --  LCD Waveform Register 31.
   type LCD_WF31_Register is record
      --  no description available
      BPALCD31 : WF31_BPALCD31_Field := NRF_SVD.LCD.WF31_BPALCD31_Field_0;
      --  no description available
      BPBLCD31 : WF31_BPBLCD31_Field := NRF_SVD.LCD.WF31_BPBLCD31_Field_0;
      --  no description available
      BPCLCD31 : WF31_BPCLCD31_Field := NRF_SVD.LCD.WF31_BPCLCD31_Field_0;
      --  no description available
      BPDLCD31 : WF31_BPDLCD31_Field := NRF_SVD.LCD.WF31_BPDLCD31_Field_0;
      --  no description available
      BPELCD31 : WF31_BPELCD31_Field := NRF_SVD.LCD.WF31_BPELCD31_Field_0;
      --  no description available
      BPFLCD31 : WF31_BPFLCD31_Field := NRF_SVD.LCD.WF31_BPFLCD31_Field_0;
      --  no description available
      BPGLCD31 : WF31_BPGLCD31_Field := NRF_SVD.LCD.WF31_BPGLCD31_Field_0;
      --  no description available
      BPHLCD31 : WF31_BPHLCD31_Field := NRF_SVD.LCD.WF31_BPHLCD31_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF31_Register use record
      BPALCD31 at 0 range 0 .. 0;
      BPBLCD31 at 0 range 1 .. 1;
      BPCLCD31 at 0 range 2 .. 2;
      BPDLCD31 at 0 range 3 .. 3;
      BPELCD31 at 0 range 4 .. 4;
      BPFLCD31 at 0 range 5 .. 5;
      BPGLCD31 at 0 range 6 .. 6;
      BPHLCD31 at 0 range 7 .. 7;
   end record;

   --  LCD_WF35TO32_WF array element
   subtype LCD_WF35TO32_WF_Element is HAL.UInt8;

   --  LCD_WF35TO32_WF array
   type LCD_WF35TO32_WF_Field_Array is array (32 .. 35)
     of LCD_WF35TO32_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF35TO32_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF35TO32_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF35TO32_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF32_BPALCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF32_BPALCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF32_BPALCD32_Field_1)
     with Size => 1;
   for WF32_BPALCD32_Field use
     (WF32_BPALCD32_Field_0 => 0,
      WF32_BPALCD32_Field_1 => 1);

   --  no description available
   type WF32_BPBLCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF32_BPBLCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF32_BPBLCD32_Field_1)
     with Size => 1;
   for WF32_BPBLCD32_Field use
     (WF32_BPBLCD32_Field_0 => 0,
      WF32_BPBLCD32_Field_1 => 1);

   --  no description available
   type WF32_BPCLCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF32_BPCLCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF32_BPCLCD32_Field_1)
     with Size => 1;
   for WF32_BPCLCD32_Field use
     (WF32_BPCLCD32_Field_0 => 0,
      WF32_BPCLCD32_Field_1 => 1);

   --  no description available
   type WF32_BPDLCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF32_BPDLCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF32_BPDLCD32_Field_1)
     with Size => 1;
   for WF32_BPDLCD32_Field use
     (WF32_BPDLCD32_Field_0 => 0,
      WF32_BPDLCD32_Field_1 => 1);

   --  no description available
   type WF32_BPELCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF32_BPELCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF32_BPELCD32_Field_1)
     with Size => 1;
   for WF32_BPELCD32_Field use
     (WF32_BPELCD32_Field_0 => 0,
      WF32_BPELCD32_Field_1 => 1);

   --  no description available
   type WF32_BPFLCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF32_BPFLCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF32_BPFLCD32_Field_1)
     with Size => 1;
   for WF32_BPFLCD32_Field use
     (WF32_BPFLCD32_Field_0 => 0,
      WF32_BPFLCD32_Field_1 => 1);

   --  no description available
   type WF32_BPGLCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF32_BPGLCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF32_BPGLCD32_Field_1)
     with Size => 1;
   for WF32_BPGLCD32_Field use
     (WF32_BPGLCD32_Field_0 => 0,
      WF32_BPGLCD32_Field_1 => 1);

   --  no description available
   type WF32_BPHLCD32_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF32_BPHLCD32_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF32_BPHLCD32_Field_1)
     with Size => 1;
   for WF32_BPHLCD32_Field use
     (WF32_BPHLCD32_Field_0 => 0,
      WF32_BPHLCD32_Field_1 => 1);

   --  LCD Waveform Register 32.
   type LCD_WF32_Register is record
      --  no description available
      BPALCD32 : WF32_BPALCD32_Field := NRF_SVD.LCD.WF32_BPALCD32_Field_0;
      --  no description available
      BPBLCD32 : WF32_BPBLCD32_Field := NRF_SVD.LCD.WF32_BPBLCD32_Field_0;
      --  no description available
      BPCLCD32 : WF32_BPCLCD32_Field := NRF_SVD.LCD.WF32_BPCLCD32_Field_0;
      --  no description available
      BPDLCD32 : WF32_BPDLCD32_Field := NRF_SVD.LCD.WF32_BPDLCD32_Field_0;
      --  no description available
      BPELCD32 : WF32_BPELCD32_Field := NRF_SVD.LCD.WF32_BPELCD32_Field_0;
      --  no description available
      BPFLCD32 : WF32_BPFLCD32_Field := NRF_SVD.LCD.WF32_BPFLCD32_Field_0;
      --  no description available
      BPGLCD32 : WF32_BPGLCD32_Field := NRF_SVD.LCD.WF32_BPGLCD32_Field_0;
      --  no description available
      BPHLCD32 : WF32_BPHLCD32_Field := NRF_SVD.LCD.WF32_BPHLCD32_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF32_Register use record
      BPALCD32 at 0 range 0 .. 0;
      BPBLCD32 at 0 range 1 .. 1;
      BPCLCD32 at 0 range 2 .. 2;
      BPDLCD32 at 0 range 3 .. 3;
      BPELCD32 at 0 range 4 .. 4;
      BPFLCD32 at 0 range 5 .. 5;
      BPGLCD32 at 0 range 6 .. 6;
      BPHLCD32 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF33_BPALCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF33_BPALCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF33_BPALCD33_Field_1)
     with Size => 1;
   for WF33_BPALCD33_Field use
     (WF33_BPALCD33_Field_0 => 0,
      WF33_BPALCD33_Field_1 => 1);

   --  no description available
   type WF33_BPBLCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF33_BPBLCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF33_BPBLCD33_Field_1)
     with Size => 1;
   for WF33_BPBLCD33_Field use
     (WF33_BPBLCD33_Field_0 => 0,
      WF33_BPBLCD33_Field_1 => 1);

   --  no description available
   type WF33_BPCLCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF33_BPCLCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF33_BPCLCD33_Field_1)
     with Size => 1;
   for WF33_BPCLCD33_Field use
     (WF33_BPCLCD33_Field_0 => 0,
      WF33_BPCLCD33_Field_1 => 1);

   --  no description available
   type WF33_BPDLCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF33_BPDLCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF33_BPDLCD33_Field_1)
     with Size => 1;
   for WF33_BPDLCD33_Field use
     (WF33_BPDLCD33_Field_0 => 0,
      WF33_BPDLCD33_Field_1 => 1);

   --  no description available
   type WF33_BPELCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF33_BPELCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF33_BPELCD33_Field_1)
     with Size => 1;
   for WF33_BPELCD33_Field use
     (WF33_BPELCD33_Field_0 => 0,
      WF33_BPELCD33_Field_1 => 1);

   --  no description available
   type WF33_BPFLCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF33_BPFLCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF33_BPFLCD33_Field_1)
     with Size => 1;
   for WF33_BPFLCD33_Field use
     (WF33_BPFLCD33_Field_0 => 0,
      WF33_BPFLCD33_Field_1 => 1);

   --  no description available
   type WF33_BPGLCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF33_BPGLCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF33_BPGLCD33_Field_1)
     with Size => 1;
   for WF33_BPGLCD33_Field use
     (WF33_BPGLCD33_Field_0 => 0,
      WF33_BPGLCD33_Field_1 => 1);

   --  no description available
   type WF33_BPHLCD33_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF33_BPHLCD33_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF33_BPHLCD33_Field_1)
     with Size => 1;
   for WF33_BPHLCD33_Field use
     (WF33_BPHLCD33_Field_0 => 0,
      WF33_BPHLCD33_Field_1 => 1);

   --  LCD Waveform Register 33.
   type LCD_WF33_Register is record
      --  no description available
      BPALCD33 : WF33_BPALCD33_Field := NRF_SVD.LCD.WF33_BPALCD33_Field_0;
      --  no description available
      BPBLCD33 : WF33_BPBLCD33_Field := NRF_SVD.LCD.WF33_BPBLCD33_Field_0;
      --  no description available
      BPCLCD33 : WF33_BPCLCD33_Field := NRF_SVD.LCD.WF33_BPCLCD33_Field_0;
      --  no description available
      BPDLCD33 : WF33_BPDLCD33_Field := NRF_SVD.LCD.WF33_BPDLCD33_Field_0;
      --  no description available
      BPELCD33 : WF33_BPELCD33_Field := NRF_SVD.LCD.WF33_BPELCD33_Field_0;
      --  no description available
      BPFLCD33 : WF33_BPFLCD33_Field := NRF_SVD.LCD.WF33_BPFLCD33_Field_0;
      --  no description available
      BPGLCD33 : WF33_BPGLCD33_Field := NRF_SVD.LCD.WF33_BPGLCD33_Field_0;
      --  no description available
      BPHLCD33 : WF33_BPHLCD33_Field := NRF_SVD.LCD.WF33_BPHLCD33_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF33_Register use record
      BPALCD33 at 0 range 0 .. 0;
      BPBLCD33 at 0 range 1 .. 1;
      BPCLCD33 at 0 range 2 .. 2;
      BPDLCD33 at 0 range 3 .. 3;
      BPELCD33 at 0 range 4 .. 4;
      BPFLCD33 at 0 range 5 .. 5;
      BPGLCD33 at 0 range 6 .. 6;
      BPHLCD33 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF34_BPALCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF34_BPALCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF34_BPALCD34_Field_1)
     with Size => 1;
   for WF34_BPALCD34_Field use
     (WF34_BPALCD34_Field_0 => 0,
      WF34_BPALCD34_Field_1 => 1);

   --  no description available
   type WF34_BPBLCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF34_BPBLCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF34_BPBLCD34_Field_1)
     with Size => 1;
   for WF34_BPBLCD34_Field use
     (WF34_BPBLCD34_Field_0 => 0,
      WF34_BPBLCD34_Field_1 => 1);

   --  no description available
   type WF34_BPCLCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF34_BPCLCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF34_BPCLCD34_Field_1)
     with Size => 1;
   for WF34_BPCLCD34_Field use
     (WF34_BPCLCD34_Field_0 => 0,
      WF34_BPCLCD34_Field_1 => 1);

   --  no description available
   type WF34_BPDLCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF34_BPDLCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF34_BPDLCD34_Field_1)
     with Size => 1;
   for WF34_BPDLCD34_Field use
     (WF34_BPDLCD34_Field_0 => 0,
      WF34_BPDLCD34_Field_1 => 1);

   --  no description available
   type WF34_BPELCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF34_BPELCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF34_BPELCD34_Field_1)
     with Size => 1;
   for WF34_BPELCD34_Field use
     (WF34_BPELCD34_Field_0 => 0,
      WF34_BPELCD34_Field_1 => 1);

   --  no description available
   type WF34_BPFLCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF34_BPFLCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF34_BPFLCD34_Field_1)
     with Size => 1;
   for WF34_BPFLCD34_Field use
     (WF34_BPFLCD34_Field_0 => 0,
      WF34_BPFLCD34_Field_1 => 1);

   --  no description available
   type WF34_BPGLCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF34_BPGLCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF34_BPGLCD34_Field_1)
     with Size => 1;
   for WF34_BPGLCD34_Field use
     (WF34_BPGLCD34_Field_0 => 0,
      WF34_BPGLCD34_Field_1 => 1);

   --  no description available
   type WF34_BPHLCD34_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF34_BPHLCD34_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF34_BPHLCD34_Field_1)
     with Size => 1;
   for WF34_BPHLCD34_Field use
     (WF34_BPHLCD34_Field_0 => 0,
      WF34_BPHLCD34_Field_1 => 1);

   --  LCD Waveform Register 34.
   type LCD_WF34_Register is record
      --  no description available
      BPALCD34 : WF34_BPALCD34_Field := NRF_SVD.LCD.WF34_BPALCD34_Field_0;
      --  no description available
      BPBLCD34 : WF34_BPBLCD34_Field := NRF_SVD.LCD.WF34_BPBLCD34_Field_0;
      --  no description available
      BPCLCD34 : WF34_BPCLCD34_Field := NRF_SVD.LCD.WF34_BPCLCD34_Field_0;
      --  no description available
      BPDLCD34 : WF34_BPDLCD34_Field := NRF_SVD.LCD.WF34_BPDLCD34_Field_0;
      --  no description available
      BPELCD34 : WF34_BPELCD34_Field := NRF_SVD.LCD.WF34_BPELCD34_Field_0;
      --  no description available
      BPFLCD34 : WF34_BPFLCD34_Field := NRF_SVD.LCD.WF34_BPFLCD34_Field_0;
      --  no description available
      BPGLCD34 : WF34_BPGLCD34_Field := NRF_SVD.LCD.WF34_BPGLCD34_Field_0;
      --  no description available
      BPHLCD34 : WF34_BPHLCD34_Field := NRF_SVD.LCD.WF34_BPHLCD34_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF34_Register use record
      BPALCD34 at 0 range 0 .. 0;
      BPBLCD34 at 0 range 1 .. 1;
      BPCLCD34 at 0 range 2 .. 2;
      BPDLCD34 at 0 range 3 .. 3;
      BPELCD34 at 0 range 4 .. 4;
      BPFLCD34 at 0 range 5 .. 5;
      BPGLCD34 at 0 range 6 .. 6;
      BPHLCD34 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF35_BPALCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF35_BPALCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF35_BPALCD35_Field_1)
     with Size => 1;
   for WF35_BPALCD35_Field use
     (WF35_BPALCD35_Field_0 => 0,
      WF35_BPALCD35_Field_1 => 1);

   --  no description available
   type WF35_BPBLCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF35_BPBLCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF35_BPBLCD35_Field_1)
     with Size => 1;
   for WF35_BPBLCD35_Field use
     (WF35_BPBLCD35_Field_0 => 0,
      WF35_BPBLCD35_Field_1 => 1);

   --  no description available
   type WF35_BPCLCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF35_BPCLCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF35_BPCLCD35_Field_1)
     with Size => 1;
   for WF35_BPCLCD35_Field use
     (WF35_BPCLCD35_Field_0 => 0,
      WF35_BPCLCD35_Field_1 => 1);

   --  no description available
   type WF35_BPDLCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF35_BPDLCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF35_BPDLCD35_Field_1)
     with Size => 1;
   for WF35_BPDLCD35_Field use
     (WF35_BPDLCD35_Field_0 => 0,
      WF35_BPDLCD35_Field_1 => 1);

   --  no description available
   type WF35_BPELCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF35_BPELCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF35_BPELCD35_Field_1)
     with Size => 1;
   for WF35_BPELCD35_Field use
     (WF35_BPELCD35_Field_0 => 0,
      WF35_BPELCD35_Field_1 => 1);

   --  no description available
   type WF35_BPFLCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF35_BPFLCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF35_BPFLCD35_Field_1)
     with Size => 1;
   for WF35_BPFLCD35_Field use
     (WF35_BPFLCD35_Field_0 => 0,
      WF35_BPFLCD35_Field_1 => 1);

   --  no description available
   type WF35_BPGLCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF35_BPGLCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF35_BPGLCD35_Field_1)
     with Size => 1;
   for WF35_BPGLCD35_Field use
     (WF35_BPGLCD35_Field_0 => 0,
      WF35_BPGLCD35_Field_1 => 1);

   --  no description available
   type WF35_BPHLCD35_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF35_BPHLCD35_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF35_BPHLCD35_Field_1)
     with Size => 1;
   for WF35_BPHLCD35_Field use
     (WF35_BPHLCD35_Field_0 => 0,
      WF35_BPHLCD35_Field_1 => 1);

   --  LCD Waveform Register 35.
   type LCD_WF35_Register is record
      --  no description available
      BPALCD35 : WF35_BPALCD35_Field := NRF_SVD.LCD.WF35_BPALCD35_Field_0;
      --  no description available
      BPBLCD35 : WF35_BPBLCD35_Field := NRF_SVD.LCD.WF35_BPBLCD35_Field_0;
      --  no description available
      BPCLCD35 : WF35_BPCLCD35_Field := NRF_SVD.LCD.WF35_BPCLCD35_Field_0;
      --  no description available
      BPDLCD35 : WF35_BPDLCD35_Field := NRF_SVD.LCD.WF35_BPDLCD35_Field_0;
      --  no description available
      BPELCD35 : WF35_BPELCD35_Field := NRF_SVD.LCD.WF35_BPELCD35_Field_0;
      --  no description available
      BPFLCD35 : WF35_BPFLCD35_Field := NRF_SVD.LCD.WF35_BPFLCD35_Field_0;
      --  no description available
      BPGLCD35 : WF35_BPGLCD35_Field := NRF_SVD.LCD.WF35_BPGLCD35_Field_0;
      --  no description available
      BPHLCD35 : WF35_BPHLCD35_Field := NRF_SVD.LCD.WF35_BPHLCD35_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF35_Register use record
      BPALCD35 at 0 range 0 .. 0;
      BPBLCD35 at 0 range 1 .. 1;
      BPCLCD35 at 0 range 2 .. 2;
      BPDLCD35 at 0 range 3 .. 3;
      BPELCD35 at 0 range 4 .. 4;
      BPFLCD35 at 0 range 5 .. 5;
      BPGLCD35 at 0 range 6 .. 6;
      BPHLCD35 at 0 range 7 .. 7;
   end record;

   --  LCD_WF39TO36_WF array element
   subtype LCD_WF39TO36_WF_Element is HAL.UInt8;

   --  LCD_WF39TO36_WF array
   type LCD_WF39TO36_WF_Field_Array is array (36 .. 39)
     of LCD_WF39TO36_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF39TO36_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF39TO36_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF39TO36_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF36_BPALCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF36_BPALCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF36_BPALCD36_Field_1)
     with Size => 1;
   for WF36_BPALCD36_Field use
     (WF36_BPALCD36_Field_0 => 0,
      WF36_BPALCD36_Field_1 => 1);

   --  no description available
   type WF36_BPBLCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF36_BPBLCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF36_BPBLCD36_Field_1)
     with Size => 1;
   for WF36_BPBLCD36_Field use
     (WF36_BPBLCD36_Field_0 => 0,
      WF36_BPBLCD36_Field_1 => 1);

   --  no description available
   type WF36_BPCLCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF36_BPCLCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF36_BPCLCD36_Field_1)
     with Size => 1;
   for WF36_BPCLCD36_Field use
     (WF36_BPCLCD36_Field_0 => 0,
      WF36_BPCLCD36_Field_1 => 1);

   --  no description available
   type WF36_BPDLCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF36_BPDLCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF36_BPDLCD36_Field_1)
     with Size => 1;
   for WF36_BPDLCD36_Field use
     (WF36_BPDLCD36_Field_0 => 0,
      WF36_BPDLCD36_Field_1 => 1);

   --  no description available
   type WF36_BPELCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF36_BPELCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF36_BPELCD36_Field_1)
     with Size => 1;
   for WF36_BPELCD36_Field use
     (WF36_BPELCD36_Field_0 => 0,
      WF36_BPELCD36_Field_1 => 1);

   --  no description available
   type WF36_BPFLCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF36_BPFLCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF36_BPFLCD36_Field_1)
     with Size => 1;
   for WF36_BPFLCD36_Field use
     (WF36_BPFLCD36_Field_0 => 0,
      WF36_BPFLCD36_Field_1 => 1);

   --  no description available
   type WF36_BPGLCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF36_BPGLCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF36_BPGLCD36_Field_1)
     with Size => 1;
   for WF36_BPGLCD36_Field use
     (WF36_BPGLCD36_Field_0 => 0,
      WF36_BPGLCD36_Field_1 => 1);

   --  no description available
   type WF36_BPHLCD36_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF36_BPHLCD36_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF36_BPHLCD36_Field_1)
     with Size => 1;
   for WF36_BPHLCD36_Field use
     (WF36_BPHLCD36_Field_0 => 0,
      WF36_BPHLCD36_Field_1 => 1);

   --  LCD Waveform Register 36.
   type LCD_WF36_Register is record
      --  no description available
      BPALCD36 : WF36_BPALCD36_Field := NRF_SVD.LCD.WF36_BPALCD36_Field_0;
      --  no description available
      BPBLCD36 : WF36_BPBLCD36_Field := NRF_SVD.LCD.WF36_BPBLCD36_Field_0;
      --  no description available
      BPCLCD36 : WF36_BPCLCD36_Field := NRF_SVD.LCD.WF36_BPCLCD36_Field_0;
      --  no description available
      BPDLCD36 : WF36_BPDLCD36_Field := NRF_SVD.LCD.WF36_BPDLCD36_Field_0;
      --  no description available
      BPELCD36 : WF36_BPELCD36_Field := NRF_SVD.LCD.WF36_BPELCD36_Field_0;
      --  no description available
      BPFLCD36 : WF36_BPFLCD36_Field := NRF_SVD.LCD.WF36_BPFLCD36_Field_0;
      --  no description available
      BPGLCD36 : WF36_BPGLCD36_Field := NRF_SVD.LCD.WF36_BPGLCD36_Field_0;
      --  no description available
      BPHLCD36 : WF36_BPHLCD36_Field := NRF_SVD.LCD.WF36_BPHLCD36_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF36_Register use record
      BPALCD36 at 0 range 0 .. 0;
      BPBLCD36 at 0 range 1 .. 1;
      BPCLCD36 at 0 range 2 .. 2;
      BPDLCD36 at 0 range 3 .. 3;
      BPELCD36 at 0 range 4 .. 4;
      BPFLCD36 at 0 range 5 .. 5;
      BPGLCD36 at 0 range 6 .. 6;
      BPHLCD36 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF37_BPALCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF37_BPALCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF37_BPALCD37_Field_1)
     with Size => 1;
   for WF37_BPALCD37_Field use
     (WF37_BPALCD37_Field_0 => 0,
      WF37_BPALCD37_Field_1 => 1);

   --  no description available
   type WF37_BPBLCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF37_BPBLCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF37_BPBLCD37_Field_1)
     with Size => 1;
   for WF37_BPBLCD37_Field use
     (WF37_BPBLCD37_Field_0 => 0,
      WF37_BPBLCD37_Field_1 => 1);

   --  no description available
   type WF37_BPCLCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF37_BPCLCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF37_BPCLCD37_Field_1)
     with Size => 1;
   for WF37_BPCLCD37_Field use
     (WF37_BPCLCD37_Field_0 => 0,
      WF37_BPCLCD37_Field_1 => 1);

   --  no description available
   type WF37_BPDLCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF37_BPDLCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF37_BPDLCD37_Field_1)
     with Size => 1;
   for WF37_BPDLCD37_Field use
     (WF37_BPDLCD37_Field_0 => 0,
      WF37_BPDLCD37_Field_1 => 1);

   --  no description available
   type WF37_BPELCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF37_BPELCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF37_BPELCD37_Field_1)
     with Size => 1;
   for WF37_BPELCD37_Field use
     (WF37_BPELCD37_Field_0 => 0,
      WF37_BPELCD37_Field_1 => 1);

   --  no description available
   type WF37_BPFLCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF37_BPFLCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF37_BPFLCD37_Field_1)
     with Size => 1;
   for WF37_BPFLCD37_Field use
     (WF37_BPFLCD37_Field_0 => 0,
      WF37_BPFLCD37_Field_1 => 1);

   --  no description available
   type WF37_BPGLCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF37_BPGLCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF37_BPGLCD37_Field_1)
     with Size => 1;
   for WF37_BPGLCD37_Field use
     (WF37_BPGLCD37_Field_0 => 0,
      WF37_BPGLCD37_Field_1 => 1);

   --  no description available
   type WF37_BPHLCD37_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF37_BPHLCD37_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF37_BPHLCD37_Field_1)
     with Size => 1;
   for WF37_BPHLCD37_Field use
     (WF37_BPHLCD37_Field_0 => 0,
      WF37_BPHLCD37_Field_1 => 1);

   --  LCD Waveform Register 37.
   type LCD_WF37_Register is record
      --  no description available
      BPALCD37 : WF37_BPALCD37_Field := NRF_SVD.LCD.WF37_BPALCD37_Field_0;
      --  no description available
      BPBLCD37 : WF37_BPBLCD37_Field := NRF_SVD.LCD.WF37_BPBLCD37_Field_0;
      --  no description available
      BPCLCD37 : WF37_BPCLCD37_Field := NRF_SVD.LCD.WF37_BPCLCD37_Field_0;
      --  no description available
      BPDLCD37 : WF37_BPDLCD37_Field := NRF_SVD.LCD.WF37_BPDLCD37_Field_0;
      --  no description available
      BPELCD37 : WF37_BPELCD37_Field := NRF_SVD.LCD.WF37_BPELCD37_Field_0;
      --  no description available
      BPFLCD37 : WF37_BPFLCD37_Field := NRF_SVD.LCD.WF37_BPFLCD37_Field_0;
      --  no description available
      BPGLCD37 : WF37_BPGLCD37_Field := NRF_SVD.LCD.WF37_BPGLCD37_Field_0;
      --  no description available
      BPHLCD37 : WF37_BPHLCD37_Field := NRF_SVD.LCD.WF37_BPHLCD37_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF37_Register use record
      BPALCD37 at 0 range 0 .. 0;
      BPBLCD37 at 0 range 1 .. 1;
      BPCLCD37 at 0 range 2 .. 2;
      BPDLCD37 at 0 range 3 .. 3;
      BPELCD37 at 0 range 4 .. 4;
      BPFLCD37 at 0 range 5 .. 5;
      BPGLCD37 at 0 range 6 .. 6;
      BPHLCD37 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF38_BPALCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF38_BPALCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF38_BPALCD38_Field_1)
     with Size => 1;
   for WF38_BPALCD38_Field use
     (WF38_BPALCD38_Field_0 => 0,
      WF38_BPALCD38_Field_1 => 1);

   --  no description available
   type WF38_BPBLCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF38_BPBLCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF38_BPBLCD38_Field_1)
     with Size => 1;
   for WF38_BPBLCD38_Field use
     (WF38_BPBLCD38_Field_0 => 0,
      WF38_BPBLCD38_Field_1 => 1);

   --  no description available
   type WF38_BPCLCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF38_BPCLCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF38_BPCLCD38_Field_1)
     with Size => 1;
   for WF38_BPCLCD38_Field use
     (WF38_BPCLCD38_Field_0 => 0,
      WF38_BPCLCD38_Field_1 => 1);

   --  no description available
   type WF38_BPDLCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF38_BPDLCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF38_BPDLCD38_Field_1)
     with Size => 1;
   for WF38_BPDLCD38_Field use
     (WF38_BPDLCD38_Field_0 => 0,
      WF38_BPDLCD38_Field_1 => 1);

   --  no description available
   type WF38_BPELCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF38_BPELCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF38_BPELCD38_Field_1)
     with Size => 1;
   for WF38_BPELCD38_Field use
     (WF38_BPELCD38_Field_0 => 0,
      WF38_BPELCD38_Field_1 => 1);

   --  no description available
   type WF38_BPFLCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF38_BPFLCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF38_BPFLCD38_Field_1)
     with Size => 1;
   for WF38_BPFLCD38_Field use
     (WF38_BPFLCD38_Field_0 => 0,
      WF38_BPFLCD38_Field_1 => 1);

   --  no description available
   type WF38_BPGLCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF38_BPGLCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF38_BPGLCD38_Field_1)
     with Size => 1;
   for WF38_BPGLCD38_Field use
     (WF38_BPGLCD38_Field_0 => 0,
      WF38_BPGLCD38_Field_1 => 1);

   --  no description available
   type WF38_BPHLCD38_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF38_BPHLCD38_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF38_BPHLCD38_Field_1)
     with Size => 1;
   for WF38_BPHLCD38_Field use
     (WF38_BPHLCD38_Field_0 => 0,
      WF38_BPHLCD38_Field_1 => 1);

   --  LCD Waveform Register 38.
   type LCD_WF38_Register is record
      --  no description available
      BPALCD38 : WF38_BPALCD38_Field := NRF_SVD.LCD.WF38_BPALCD38_Field_0;
      --  no description available
      BPBLCD38 : WF38_BPBLCD38_Field := NRF_SVD.LCD.WF38_BPBLCD38_Field_0;
      --  no description available
      BPCLCD38 : WF38_BPCLCD38_Field := NRF_SVD.LCD.WF38_BPCLCD38_Field_0;
      --  no description available
      BPDLCD38 : WF38_BPDLCD38_Field := NRF_SVD.LCD.WF38_BPDLCD38_Field_0;
      --  no description available
      BPELCD38 : WF38_BPELCD38_Field := NRF_SVD.LCD.WF38_BPELCD38_Field_0;
      --  no description available
      BPFLCD38 : WF38_BPFLCD38_Field := NRF_SVD.LCD.WF38_BPFLCD38_Field_0;
      --  no description available
      BPGLCD38 : WF38_BPGLCD38_Field := NRF_SVD.LCD.WF38_BPGLCD38_Field_0;
      --  no description available
      BPHLCD38 : WF38_BPHLCD38_Field := NRF_SVD.LCD.WF38_BPHLCD38_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF38_Register use record
      BPALCD38 at 0 range 0 .. 0;
      BPBLCD38 at 0 range 1 .. 1;
      BPCLCD38 at 0 range 2 .. 2;
      BPDLCD38 at 0 range 3 .. 3;
      BPELCD38 at 0 range 4 .. 4;
      BPFLCD38 at 0 range 5 .. 5;
      BPGLCD38 at 0 range 6 .. 6;
      BPHLCD38 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF39_BPALCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF39_BPALCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF39_BPALCD39_Field_1)
     with Size => 1;
   for WF39_BPALCD39_Field use
     (WF39_BPALCD39_Field_0 => 0,
      WF39_BPALCD39_Field_1 => 1);

   --  no description available
   type WF39_BPBLCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF39_BPBLCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF39_BPBLCD39_Field_1)
     with Size => 1;
   for WF39_BPBLCD39_Field use
     (WF39_BPBLCD39_Field_0 => 0,
      WF39_BPBLCD39_Field_1 => 1);

   --  no description available
   type WF39_BPCLCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF39_BPCLCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF39_BPCLCD39_Field_1)
     with Size => 1;
   for WF39_BPCLCD39_Field use
     (WF39_BPCLCD39_Field_0 => 0,
      WF39_BPCLCD39_Field_1 => 1);

   --  no description available
   type WF39_BPDLCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF39_BPDLCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF39_BPDLCD39_Field_1)
     with Size => 1;
   for WF39_BPDLCD39_Field use
     (WF39_BPDLCD39_Field_0 => 0,
      WF39_BPDLCD39_Field_1 => 1);

   --  no description available
   type WF39_BPELCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF39_BPELCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF39_BPELCD39_Field_1)
     with Size => 1;
   for WF39_BPELCD39_Field use
     (WF39_BPELCD39_Field_0 => 0,
      WF39_BPELCD39_Field_1 => 1);

   --  no description available
   type WF39_BPFLCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF39_BPFLCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF39_BPFLCD39_Field_1)
     with Size => 1;
   for WF39_BPFLCD39_Field use
     (WF39_BPFLCD39_Field_0 => 0,
      WF39_BPFLCD39_Field_1 => 1);

   --  no description available
   type WF39_BPGLCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF39_BPGLCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF39_BPGLCD39_Field_1)
     with Size => 1;
   for WF39_BPGLCD39_Field use
     (WF39_BPGLCD39_Field_0 => 0,
      WF39_BPGLCD39_Field_1 => 1);

   --  no description available
   type WF39_BPHLCD39_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF39_BPHLCD39_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF39_BPHLCD39_Field_1)
     with Size => 1;
   for WF39_BPHLCD39_Field use
     (WF39_BPHLCD39_Field_0 => 0,
      WF39_BPHLCD39_Field_1 => 1);

   --  LCD Waveform Register 39.
   type LCD_WF39_Register is record
      --  no description available
      BPALCD39 : WF39_BPALCD39_Field := NRF_SVD.LCD.WF39_BPALCD39_Field_0;
      --  no description available
      BPBLCD39 : WF39_BPBLCD39_Field := NRF_SVD.LCD.WF39_BPBLCD39_Field_0;
      --  no description available
      BPCLCD39 : WF39_BPCLCD39_Field := NRF_SVD.LCD.WF39_BPCLCD39_Field_0;
      --  no description available
      BPDLCD39 : WF39_BPDLCD39_Field := NRF_SVD.LCD.WF39_BPDLCD39_Field_0;
      --  no description available
      BPELCD39 : WF39_BPELCD39_Field := NRF_SVD.LCD.WF39_BPELCD39_Field_0;
      --  no description available
      BPFLCD39 : WF39_BPFLCD39_Field := NRF_SVD.LCD.WF39_BPFLCD39_Field_0;
      --  no description available
      BPGLCD39 : WF39_BPGLCD39_Field := NRF_SVD.LCD.WF39_BPGLCD39_Field_0;
      --  no description available
      BPHLCD39 : WF39_BPHLCD39_Field := NRF_SVD.LCD.WF39_BPHLCD39_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF39_Register use record
      BPALCD39 at 0 range 0 .. 0;
      BPBLCD39 at 0 range 1 .. 1;
      BPCLCD39 at 0 range 2 .. 2;
      BPDLCD39 at 0 range 3 .. 3;
      BPELCD39 at 0 range 4 .. 4;
      BPFLCD39 at 0 range 5 .. 5;
      BPGLCD39 at 0 range 6 .. 6;
      BPHLCD39 at 0 range 7 .. 7;
   end record;

   --  LCD_WF43TO40_WF array element
   subtype LCD_WF43TO40_WF_Element is HAL.UInt8;

   --  LCD_WF43TO40_WF array
   type LCD_WF43TO40_WF_Field_Array is array (40 .. 43)
     of LCD_WF43TO40_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF43TO40_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF43TO40_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF43TO40_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF40_BPALCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF40_BPALCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF40_BPALCD40_Field_1)
     with Size => 1;
   for WF40_BPALCD40_Field use
     (WF40_BPALCD40_Field_0 => 0,
      WF40_BPALCD40_Field_1 => 1);

   --  no description available
   type WF40_BPBLCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF40_BPBLCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF40_BPBLCD40_Field_1)
     with Size => 1;
   for WF40_BPBLCD40_Field use
     (WF40_BPBLCD40_Field_0 => 0,
      WF40_BPBLCD40_Field_1 => 1);

   --  no description available
   type WF40_BPCLCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF40_BPCLCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF40_BPCLCD40_Field_1)
     with Size => 1;
   for WF40_BPCLCD40_Field use
     (WF40_BPCLCD40_Field_0 => 0,
      WF40_BPCLCD40_Field_1 => 1);

   --  no description available
   type WF40_BPDLCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF40_BPDLCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF40_BPDLCD40_Field_1)
     with Size => 1;
   for WF40_BPDLCD40_Field use
     (WF40_BPDLCD40_Field_0 => 0,
      WF40_BPDLCD40_Field_1 => 1);

   --  no description available
   type WF40_BPELCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF40_BPELCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF40_BPELCD40_Field_1)
     with Size => 1;
   for WF40_BPELCD40_Field use
     (WF40_BPELCD40_Field_0 => 0,
      WF40_BPELCD40_Field_1 => 1);

   --  no description available
   type WF40_BPFLCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF40_BPFLCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF40_BPFLCD40_Field_1)
     with Size => 1;
   for WF40_BPFLCD40_Field use
     (WF40_BPFLCD40_Field_0 => 0,
      WF40_BPFLCD40_Field_1 => 1);

   --  no description available
   type WF40_BPGLCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF40_BPGLCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF40_BPGLCD40_Field_1)
     with Size => 1;
   for WF40_BPGLCD40_Field use
     (WF40_BPGLCD40_Field_0 => 0,
      WF40_BPGLCD40_Field_1 => 1);

   --  no description available
   type WF40_BPHLCD40_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF40_BPHLCD40_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF40_BPHLCD40_Field_1)
     with Size => 1;
   for WF40_BPHLCD40_Field use
     (WF40_BPHLCD40_Field_0 => 0,
      WF40_BPHLCD40_Field_1 => 1);

   --  LCD Waveform Register 40.
   type LCD_WF40_Register is record
      --  no description available
      BPALCD40 : WF40_BPALCD40_Field := NRF_SVD.LCD.WF40_BPALCD40_Field_0;
      --  no description available
      BPBLCD40 : WF40_BPBLCD40_Field := NRF_SVD.LCD.WF40_BPBLCD40_Field_0;
      --  no description available
      BPCLCD40 : WF40_BPCLCD40_Field := NRF_SVD.LCD.WF40_BPCLCD40_Field_0;
      --  no description available
      BPDLCD40 : WF40_BPDLCD40_Field := NRF_SVD.LCD.WF40_BPDLCD40_Field_0;
      --  no description available
      BPELCD40 : WF40_BPELCD40_Field := NRF_SVD.LCD.WF40_BPELCD40_Field_0;
      --  no description available
      BPFLCD40 : WF40_BPFLCD40_Field := NRF_SVD.LCD.WF40_BPFLCD40_Field_0;
      --  no description available
      BPGLCD40 : WF40_BPGLCD40_Field := NRF_SVD.LCD.WF40_BPGLCD40_Field_0;
      --  no description available
      BPHLCD40 : WF40_BPHLCD40_Field := NRF_SVD.LCD.WF40_BPHLCD40_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF40_Register use record
      BPALCD40 at 0 range 0 .. 0;
      BPBLCD40 at 0 range 1 .. 1;
      BPCLCD40 at 0 range 2 .. 2;
      BPDLCD40 at 0 range 3 .. 3;
      BPELCD40 at 0 range 4 .. 4;
      BPFLCD40 at 0 range 5 .. 5;
      BPGLCD40 at 0 range 6 .. 6;
      BPHLCD40 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF41_BPALCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF41_BPALCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF41_BPALCD41_Field_1)
     with Size => 1;
   for WF41_BPALCD41_Field use
     (WF41_BPALCD41_Field_0 => 0,
      WF41_BPALCD41_Field_1 => 1);

   --  no description available
   type WF41_BPBLCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF41_BPBLCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF41_BPBLCD41_Field_1)
     with Size => 1;
   for WF41_BPBLCD41_Field use
     (WF41_BPBLCD41_Field_0 => 0,
      WF41_BPBLCD41_Field_1 => 1);

   --  no description available
   type WF41_BPCLCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF41_BPCLCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF41_BPCLCD41_Field_1)
     with Size => 1;
   for WF41_BPCLCD41_Field use
     (WF41_BPCLCD41_Field_0 => 0,
      WF41_BPCLCD41_Field_1 => 1);

   --  no description available
   type WF41_BPDLCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF41_BPDLCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF41_BPDLCD41_Field_1)
     with Size => 1;
   for WF41_BPDLCD41_Field use
     (WF41_BPDLCD41_Field_0 => 0,
      WF41_BPDLCD41_Field_1 => 1);

   --  no description available
   type WF41_BPELCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF41_BPELCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF41_BPELCD41_Field_1)
     with Size => 1;
   for WF41_BPELCD41_Field use
     (WF41_BPELCD41_Field_0 => 0,
      WF41_BPELCD41_Field_1 => 1);

   --  no description available
   type WF41_BPFLCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF41_BPFLCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF41_BPFLCD41_Field_1)
     with Size => 1;
   for WF41_BPFLCD41_Field use
     (WF41_BPFLCD41_Field_0 => 0,
      WF41_BPFLCD41_Field_1 => 1);

   --  no description available
   type WF41_BPGLCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF41_BPGLCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF41_BPGLCD41_Field_1)
     with Size => 1;
   for WF41_BPGLCD41_Field use
     (WF41_BPGLCD41_Field_0 => 0,
      WF41_BPGLCD41_Field_1 => 1);

   --  no description available
   type WF41_BPHLCD41_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF41_BPHLCD41_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF41_BPHLCD41_Field_1)
     with Size => 1;
   for WF41_BPHLCD41_Field use
     (WF41_BPHLCD41_Field_0 => 0,
      WF41_BPHLCD41_Field_1 => 1);

   --  LCD Waveform Register 41.
   type LCD_WF41_Register is record
      --  no description available
      BPALCD41 : WF41_BPALCD41_Field := NRF_SVD.LCD.WF41_BPALCD41_Field_0;
      --  no description available
      BPBLCD41 : WF41_BPBLCD41_Field := NRF_SVD.LCD.WF41_BPBLCD41_Field_0;
      --  no description available
      BPCLCD41 : WF41_BPCLCD41_Field := NRF_SVD.LCD.WF41_BPCLCD41_Field_0;
      --  no description available
      BPDLCD41 : WF41_BPDLCD41_Field := NRF_SVD.LCD.WF41_BPDLCD41_Field_0;
      --  no description available
      BPELCD41 : WF41_BPELCD41_Field := NRF_SVD.LCD.WF41_BPELCD41_Field_0;
      --  no description available
      BPFLCD41 : WF41_BPFLCD41_Field := NRF_SVD.LCD.WF41_BPFLCD41_Field_0;
      --  no description available
      BPGLCD41 : WF41_BPGLCD41_Field := NRF_SVD.LCD.WF41_BPGLCD41_Field_0;
      --  no description available
      BPHLCD41 : WF41_BPHLCD41_Field := NRF_SVD.LCD.WF41_BPHLCD41_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF41_Register use record
      BPALCD41 at 0 range 0 .. 0;
      BPBLCD41 at 0 range 1 .. 1;
      BPCLCD41 at 0 range 2 .. 2;
      BPDLCD41 at 0 range 3 .. 3;
      BPELCD41 at 0 range 4 .. 4;
      BPFLCD41 at 0 range 5 .. 5;
      BPGLCD41 at 0 range 6 .. 6;
      BPHLCD41 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF42_BPALCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF42_BPALCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF42_BPALCD42_Field_1)
     with Size => 1;
   for WF42_BPALCD42_Field use
     (WF42_BPALCD42_Field_0 => 0,
      WF42_BPALCD42_Field_1 => 1);

   --  no description available
   type WF42_BPBLCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF42_BPBLCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF42_BPBLCD42_Field_1)
     with Size => 1;
   for WF42_BPBLCD42_Field use
     (WF42_BPBLCD42_Field_0 => 0,
      WF42_BPBLCD42_Field_1 => 1);

   --  no description available
   type WF42_BPCLCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF42_BPCLCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF42_BPCLCD42_Field_1)
     with Size => 1;
   for WF42_BPCLCD42_Field use
     (WF42_BPCLCD42_Field_0 => 0,
      WF42_BPCLCD42_Field_1 => 1);

   --  no description available
   type WF42_BPDLCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF42_BPDLCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF42_BPDLCD42_Field_1)
     with Size => 1;
   for WF42_BPDLCD42_Field use
     (WF42_BPDLCD42_Field_0 => 0,
      WF42_BPDLCD42_Field_1 => 1);

   --  no description available
   type WF42_BPELCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF42_BPELCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF42_BPELCD42_Field_1)
     with Size => 1;
   for WF42_BPELCD42_Field use
     (WF42_BPELCD42_Field_0 => 0,
      WF42_BPELCD42_Field_1 => 1);

   --  no description available
   type WF42_BPFLCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF42_BPFLCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF42_BPFLCD42_Field_1)
     with Size => 1;
   for WF42_BPFLCD42_Field use
     (WF42_BPFLCD42_Field_0 => 0,
      WF42_BPFLCD42_Field_1 => 1);

   --  no description available
   type WF42_BPGLCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF42_BPGLCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF42_BPGLCD42_Field_1)
     with Size => 1;
   for WF42_BPGLCD42_Field use
     (WF42_BPGLCD42_Field_0 => 0,
      WF42_BPGLCD42_Field_1 => 1);

   --  no description available
   type WF42_BPHLCD42_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF42_BPHLCD42_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF42_BPHLCD42_Field_1)
     with Size => 1;
   for WF42_BPHLCD42_Field use
     (WF42_BPHLCD42_Field_0 => 0,
      WF42_BPHLCD42_Field_1 => 1);

   --  LCD Waveform Register 42.
   type LCD_WF42_Register is record
      --  no description available
      BPALCD42 : WF42_BPALCD42_Field := NRF_SVD.LCD.WF42_BPALCD42_Field_0;
      --  no description available
      BPBLCD42 : WF42_BPBLCD42_Field := NRF_SVD.LCD.WF42_BPBLCD42_Field_0;
      --  no description available
      BPCLCD42 : WF42_BPCLCD42_Field := NRF_SVD.LCD.WF42_BPCLCD42_Field_0;
      --  no description available
      BPDLCD42 : WF42_BPDLCD42_Field := NRF_SVD.LCD.WF42_BPDLCD42_Field_0;
      --  no description available
      BPELCD42 : WF42_BPELCD42_Field := NRF_SVD.LCD.WF42_BPELCD42_Field_0;
      --  no description available
      BPFLCD42 : WF42_BPFLCD42_Field := NRF_SVD.LCD.WF42_BPFLCD42_Field_0;
      --  no description available
      BPGLCD42 : WF42_BPGLCD42_Field := NRF_SVD.LCD.WF42_BPGLCD42_Field_0;
      --  no description available
      BPHLCD42 : WF42_BPHLCD42_Field := NRF_SVD.LCD.WF42_BPHLCD42_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF42_Register use record
      BPALCD42 at 0 range 0 .. 0;
      BPBLCD42 at 0 range 1 .. 1;
      BPCLCD42 at 0 range 2 .. 2;
      BPDLCD42 at 0 range 3 .. 3;
      BPELCD42 at 0 range 4 .. 4;
      BPFLCD42 at 0 range 5 .. 5;
      BPGLCD42 at 0 range 6 .. 6;
      BPHLCD42 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF43_BPALCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF43_BPALCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF43_BPALCD43_Field_1)
     with Size => 1;
   for WF43_BPALCD43_Field use
     (WF43_BPALCD43_Field_0 => 0,
      WF43_BPALCD43_Field_1 => 1);

   --  no description available
   type WF43_BPBLCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF43_BPBLCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF43_BPBLCD43_Field_1)
     with Size => 1;
   for WF43_BPBLCD43_Field use
     (WF43_BPBLCD43_Field_0 => 0,
      WF43_BPBLCD43_Field_1 => 1);

   --  no description available
   type WF43_BPCLCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF43_BPCLCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF43_BPCLCD43_Field_1)
     with Size => 1;
   for WF43_BPCLCD43_Field use
     (WF43_BPCLCD43_Field_0 => 0,
      WF43_BPCLCD43_Field_1 => 1);

   --  no description available
   type WF43_BPDLCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF43_BPDLCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF43_BPDLCD43_Field_1)
     with Size => 1;
   for WF43_BPDLCD43_Field use
     (WF43_BPDLCD43_Field_0 => 0,
      WF43_BPDLCD43_Field_1 => 1);

   --  no description available
   type WF43_BPELCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF43_BPELCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF43_BPELCD43_Field_1)
     with Size => 1;
   for WF43_BPELCD43_Field use
     (WF43_BPELCD43_Field_0 => 0,
      WF43_BPELCD43_Field_1 => 1);

   --  no description available
   type WF43_BPFLCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF43_BPFLCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF43_BPFLCD43_Field_1)
     with Size => 1;
   for WF43_BPFLCD43_Field use
     (WF43_BPFLCD43_Field_0 => 0,
      WF43_BPFLCD43_Field_1 => 1);

   --  no description available
   type WF43_BPGLCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF43_BPGLCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF43_BPGLCD43_Field_1)
     with Size => 1;
   for WF43_BPGLCD43_Field use
     (WF43_BPGLCD43_Field_0 => 0,
      WF43_BPGLCD43_Field_1 => 1);

   --  no description available
   type WF43_BPHLCD43_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF43_BPHLCD43_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF43_BPHLCD43_Field_1)
     with Size => 1;
   for WF43_BPHLCD43_Field use
     (WF43_BPHLCD43_Field_0 => 0,
      WF43_BPHLCD43_Field_1 => 1);

   --  LCD Waveform Register 43.
   type LCD_WF43_Register is record
      --  no description available
      BPALCD43 : WF43_BPALCD43_Field := NRF_SVD.LCD.WF43_BPALCD43_Field_0;
      --  no description available
      BPBLCD43 : WF43_BPBLCD43_Field := NRF_SVD.LCD.WF43_BPBLCD43_Field_0;
      --  no description available
      BPCLCD43 : WF43_BPCLCD43_Field := NRF_SVD.LCD.WF43_BPCLCD43_Field_0;
      --  no description available
      BPDLCD43 : WF43_BPDLCD43_Field := NRF_SVD.LCD.WF43_BPDLCD43_Field_0;
      --  no description available
      BPELCD43 : WF43_BPELCD43_Field := NRF_SVD.LCD.WF43_BPELCD43_Field_0;
      --  no description available
      BPFLCD43 : WF43_BPFLCD43_Field := NRF_SVD.LCD.WF43_BPFLCD43_Field_0;
      --  no description available
      BPGLCD43 : WF43_BPGLCD43_Field := NRF_SVD.LCD.WF43_BPGLCD43_Field_0;
      --  no description available
      BPHLCD43 : WF43_BPHLCD43_Field := NRF_SVD.LCD.WF43_BPHLCD43_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF43_Register use record
      BPALCD43 at 0 range 0 .. 0;
      BPBLCD43 at 0 range 1 .. 1;
      BPCLCD43 at 0 range 2 .. 2;
      BPDLCD43 at 0 range 3 .. 3;
      BPELCD43 at 0 range 4 .. 4;
      BPFLCD43 at 0 range 5 .. 5;
      BPGLCD43 at 0 range 6 .. 6;
      BPHLCD43 at 0 range 7 .. 7;
   end record;

   --  LCD_WF47TO44_WF array element
   subtype LCD_WF47TO44_WF_Element is HAL.UInt8;

   --  LCD_WF47TO44_WF array
   type LCD_WF47TO44_WF_Field_Array is array (44 .. 47)
     of LCD_WF47TO44_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF47TO44_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF47TO44_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF47TO44_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF44_BPALCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF44_BPALCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF44_BPALCD44_Field_1)
     with Size => 1;
   for WF44_BPALCD44_Field use
     (WF44_BPALCD44_Field_0 => 0,
      WF44_BPALCD44_Field_1 => 1);

   --  no description available
   type WF44_BPBLCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF44_BPBLCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF44_BPBLCD44_Field_1)
     with Size => 1;
   for WF44_BPBLCD44_Field use
     (WF44_BPBLCD44_Field_0 => 0,
      WF44_BPBLCD44_Field_1 => 1);

   --  no description available
   type WF44_BPCLCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF44_BPCLCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF44_BPCLCD44_Field_1)
     with Size => 1;
   for WF44_BPCLCD44_Field use
     (WF44_BPCLCD44_Field_0 => 0,
      WF44_BPCLCD44_Field_1 => 1);

   --  no description available
   type WF44_BPDLCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF44_BPDLCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF44_BPDLCD44_Field_1)
     with Size => 1;
   for WF44_BPDLCD44_Field use
     (WF44_BPDLCD44_Field_0 => 0,
      WF44_BPDLCD44_Field_1 => 1);

   --  no description available
   type WF44_BPELCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF44_BPELCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF44_BPELCD44_Field_1)
     with Size => 1;
   for WF44_BPELCD44_Field use
     (WF44_BPELCD44_Field_0 => 0,
      WF44_BPELCD44_Field_1 => 1);

   --  no description available
   type WF44_BPFLCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF44_BPFLCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF44_BPFLCD44_Field_1)
     with Size => 1;
   for WF44_BPFLCD44_Field use
     (WF44_BPFLCD44_Field_0 => 0,
      WF44_BPFLCD44_Field_1 => 1);

   --  no description available
   type WF44_BPGLCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF44_BPGLCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF44_BPGLCD44_Field_1)
     with Size => 1;
   for WF44_BPGLCD44_Field use
     (WF44_BPGLCD44_Field_0 => 0,
      WF44_BPGLCD44_Field_1 => 1);

   --  no description available
   type WF44_BPHLCD44_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF44_BPHLCD44_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF44_BPHLCD44_Field_1)
     with Size => 1;
   for WF44_BPHLCD44_Field use
     (WF44_BPHLCD44_Field_0 => 0,
      WF44_BPHLCD44_Field_1 => 1);

   --  LCD Waveform Register 44.
   type LCD_WF44_Register is record
      --  no description available
      BPALCD44 : WF44_BPALCD44_Field := NRF_SVD.LCD.WF44_BPALCD44_Field_0;
      --  no description available
      BPBLCD44 : WF44_BPBLCD44_Field := NRF_SVD.LCD.WF44_BPBLCD44_Field_0;
      --  no description available
      BPCLCD44 : WF44_BPCLCD44_Field := NRF_SVD.LCD.WF44_BPCLCD44_Field_0;
      --  no description available
      BPDLCD44 : WF44_BPDLCD44_Field := NRF_SVD.LCD.WF44_BPDLCD44_Field_0;
      --  no description available
      BPELCD44 : WF44_BPELCD44_Field := NRF_SVD.LCD.WF44_BPELCD44_Field_0;
      --  no description available
      BPFLCD44 : WF44_BPFLCD44_Field := NRF_SVD.LCD.WF44_BPFLCD44_Field_0;
      --  no description available
      BPGLCD44 : WF44_BPGLCD44_Field := NRF_SVD.LCD.WF44_BPGLCD44_Field_0;
      --  no description available
      BPHLCD44 : WF44_BPHLCD44_Field := NRF_SVD.LCD.WF44_BPHLCD44_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF44_Register use record
      BPALCD44 at 0 range 0 .. 0;
      BPBLCD44 at 0 range 1 .. 1;
      BPCLCD44 at 0 range 2 .. 2;
      BPDLCD44 at 0 range 3 .. 3;
      BPELCD44 at 0 range 4 .. 4;
      BPFLCD44 at 0 range 5 .. 5;
      BPGLCD44 at 0 range 6 .. 6;
      BPHLCD44 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF45_BPALCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF45_BPALCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF45_BPALCD45_Field_1)
     with Size => 1;
   for WF45_BPALCD45_Field use
     (WF45_BPALCD45_Field_0 => 0,
      WF45_BPALCD45_Field_1 => 1);

   --  no description available
   type WF45_BPBLCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF45_BPBLCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF45_BPBLCD45_Field_1)
     with Size => 1;
   for WF45_BPBLCD45_Field use
     (WF45_BPBLCD45_Field_0 => 0,
      WF45_BPBLCD45_Field_1 => 1);

   --  no description available
   type WF45_BPCLCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF45_BPCLCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF45_BPCLCD45_Field_1)
     with Size => 1;
   for WF45_BPCLCD45_Field use
     (WF45_BPCLCD45_Field_0 => 0,
      WF45_BPCLCD45_Field_1 => 1);

   --  no description available
   type WF45_BPDLCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF45_BPDLCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF45_BPDLCD45_Field_1)
     with Size => 1;
   for WF45_BPDLCD45_Field use
     (WF45_BPDLCD45_Field_0 => 0,
      WF45_BPDLCD45_Field_1 => 1);

   --  no description available
   type WF45_BPELCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF45_BPELCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF45_BPELCD45_Field_1)
     with Size => 1;
   for WF45_BPELCD45_Field use
     (WF45_BPELCD45_Field_0 => 0,
      WF45_BPELCD45_Field_1 => 1);

   --  no description available
   type WF45_BPFLCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF45_BPFLCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF45_BPFLCD45_Field_1)
     with Size => 1;
   for WF45_BPFLCD45_Field use
     (WF45_BPFLCD45_Field_0 => 0,
      WF45_BPFLCD45_Field_1 => 1);

   --  no description available
   type WF45_BPGLCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF45_BPGLCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF45_BPGLCD45_Field_1)
     with Size => 1;
   for WF45_BPGLCD45_Field use
     (WF45_BPGLCD45_Field_0 => 0,
      WF45_BPGLCD45_Field_1 => 1);

   --  no description available
   type WF45_BPHLCD45_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF45_BPHLCD45_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF45_BPHLCD45_Field_1)
     with Size => 1;
   for WF45_BPHLCD45_Field use
     (WF45_BPHLCD45_Field_0 => 0,
      WF45_BPHLCD45_Field_1 => 1);

   --  LCD Waveform Register 45.
   type LCD_WF45_Register is record
      --  no description available
      BPALCD45 : WF45_BPALCD45_Field := NRF_SVD.LCD.WF45_BPALCD45_Field_0;
      --  no description available
      BPBLCD45 : WF45_BPBLCD45_Field := NRF_SVD.LCD.WF45_BPBLCD45_Field_0;
      --  no description available
      BPCLCD45 : WF45_BPCLCD45_Field := NRF_SVD.LCD.WF45_BPCLCD45_Field_0;
      --  no description available
      BPDLCD45 : WF45_BPDLCD45_Field := NRF_SVD.LCD.WF45_BPDLCD45_Field_0;
      --  no description available
      BPELCD45 : WF45_BPELCD45_Field := NRF_SVD.LCD.WF45_BPELCD45_Field_0;
      --  no description available
      BPFLCD45 : WF45_BPFLCD45_Field := NRF_SVD.LCD.WF45_BPFLCD45_Field_0;
      --  no description available
      BPGLCD45 : WF45_BPGLCD45_Field := NRF_SVD.LCD.WF45_BPGLCD45_Field_0;
      --  no description available
      BPHLCD45 : WF45_BPHLCD45_Field := NRF_SVD.LCD.WF45_BPHLCD45_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF45_Register use record
      BPALCD45 at 0 range 0 .. 0;
      BPBLCD45 at 0 range 1 .. 1;
      BPCLCD45 at 0 range 2 .. 2;
      BPDLCD45 at 0 range 3 .. 3;
      BPELCD45 at 0 range 4 .. 4;
      BPFLCD45 at 0 range 5 .. 5;
      BPGLCD45 at 0 range 6 .. 6;
      BPHLCD45 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF46_BPALCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF46_BPALCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF46_BPALCD46_Field_1)
     with Size => 1;
   for WF46_BPALCD46_Field use
     (WF46_BPALCD46_Field_0 => 0,
      WF46_BPALCD46_Field_1 => 1);

   --  no description available
   type WF46_BPBLCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF46_BPBLCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF46_BPBLCD46_Field_1)
     with Size => 1;
   for WF46_BPBLCD46_Field use
     (WF46_BPBLCD46_Field_0 => 0,
      WF46_BPBLCD46_Field_1 => 1);

   --  no description available
   type WF46_BPCLCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF46_BPCLCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF46_BPCLCD46_Field_1)
     with Size => 1;
   for WF46_BPCLCD46_Field use
     (WF46_BPCLCD46_Field_0 => 0,
      WF46_BPCLCD46_Field_1 => 1);

   --  no description available
   type WF46_BPDLCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF46_BPDLCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF46_BPDLCD46_Field_1)
     with Size => 1;
   for WF46_BPDLCD46_Field use
     (WF46_BPDLCD46_Field_0 => 0,
      WF46_BPDLCD46_Field_1 => 1);

   --  no description available
   type WF46_BPELCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF46_BPELCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF46_BPELCD46_Field_1)
     with Size => 1;
   for WF46_BPELCD46_Field use
     (WF46_BPELCD46_Field_0 => 0,
      WF46_BPELCD46_Field_1 => 1);

   --  no description available
   type WF46_BPFLCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF46_BPFLCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF46_BPFLCD46_Field_1)
     with Size => 1;
   for WF46_BPFLCD46_Field use
     (WF46_BPFLCD46_Field_0 => 0,
      WF46_BPFLCD46_Field_1 => 1);

   --  no description available
   type WF46_BPGLCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF46_BPGLCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF46_BPGLCD46_Field_1)
     with Size => 1;
   for WF46_BPGLCD46_Field use
     (WF46_BPGLCD46_Field_0 => 0,
      WF46_BPGLCD46_Field_1 => 1);

   --  no description available
   type WF46_BPHLCD46_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF46_BPHLCD46_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF46_BPHLCD46_Field_1)
     with Size => 1;
   for WF46_BPHLCD46_Field use
     (WF46_BPHLCD46_Field_0 => 0,
      WF46_BPHLCD46_Field_1 => 1);

   --  LCD Waveform Register 46.
   type LCD_WF46_Register is record
      --  no description available
      BPALCD46 : WF46_BPALCD46_Field := NRF_SVD.LCD.WF46_BPALCD46_Field_0;
      --  no description available
      BPBLCD46 : WF46_BPBLCD46_Field := NRF_SVD.LCD.WF46_BPBLCD46_Field_0;
      --  no description available
      BPCLCD46 : WF46_BPCLCD46_Field := NRF_SVD.LCD.WF46_BPCLCD46_Field_0;
      --  no description available
      BPDLCD46 : WF46_BPDLCD46_Field := NRF_SVD.LCD.WF46_BPDLCD46_Field_0;
      --  no description available
      BPELCD46 : WF46_BPELCD46_Field := NRF_SVD.LCD.WF46_BPELCD46_Field_0;
      --  no description available
      BPFLCD46 : WF46_BPFLCD46_Field := NRF_SVD.LCD.WF46_BPFLCD46_Field_0;
      --  no description available
      BPGLCD46 : WF46_BPGLCD46_Field := NRF_SVD.LCD.WF46_BPGLCD46_Field_0;
      --  no description available
      BPHLCD46 : WF46_BPHLCD46_Field := NRF_SVD.LCD.WF46_BPHLCD46_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF46_Register use record
      BPALCD46 at 0 range 0 .. 0;
      BPBLCD46 at 0 range 1 .. 1;
      BPCLCD46 at 0 range 2 .. 2;
      BPDLCD46 at 0 range 3 .. 3;
      BPELCD46 at 0 range 4 .. 4;
      BPFLCD46 at 0 range 5 .. 5;
      BPGLCD46 at 0 range 6 .. 6;
      BPHLCD46 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF47_BPALCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF47_BPALCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF47_BPALCD47_Field_1)
     with Size => 1;
   for WF47_BPALCD47_Field use
     (WF47_BPALCD47_Field_0 => 0,
      WF47_BPALCD47_Field_1 => 1);

   --  no description available
   type WF47_BPBLCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF47_BPBLCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF47_BPBLCD47_Field_1)
     with Size => 1;
   for WF47_BPBLCD47_Field use
     (WF47_BPBLCD47_Field_0 => 0,
      WF47_BPBLCD47_Field_1 => 1);

   --  no description available
   type WF47_BPCLCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF47_BPCLCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF47_BPCLCD47_Field_1)
     with Size => 1;
   for WF47_BPCLCD47_Field use
     (WF47_BPCLCD47_Field_0 => 0,
      WF47_BPCLCD47_Field_1 => 1);

   --  no description available
   type WF47_BPDLCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF47_BPDLCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF47_BPDLCD47_Field_1)
     with Size => 1;
   for WF47_BPDLCD47_Field use
     (WF47_BPDLCD47_Field_0 => 0,
      WF47_BPDLCD47_Field_1 => 1);

   --  no description available
   type WF47_BPELCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF47_BPELCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF47_BPELCD47_Field_1)
     with Size => 1;
   for WF47_BPELCD47_Field use
     (WF47_BPELCD47_Field_0 => 0,
      WF47_BPELCD47_Field_1 => 1);

   --  no description available
   type WF47_BPFLCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF47_BPFLCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF47_BPFLCD47_Field_1)
     with Size => 1;
   for WF47_BPFLCD47_Field use
     (WF47_BPFLCD47_Field_0 => 0,
      WF47_BPFLCD47_Field_1 => 1);

   --  no description available
   type WF47_BPGLCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF47_BPGLCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF47_BPGLCD47_Field_1)
     with Size => 1;
   for WF47_BPGLCD47_Field use
     (WF47_BPGLCD47_Field_0 => 0,
      WF47_BPGLCD47_Field_1 => 1);

   --  no description available
   type WF47_BPHLCD47_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF47_BPHLCD47_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF47_BPHLCD47_Field_1)
     with Size => 1;
   for WF47_BPHLCD47_Field use
     (WF47_BPHLCD47_Field_0 => 0,
      WF47_BPHLCD47_Field_1 => 1);

   --  LCD Waveform Register 47.
   type LCD_WF47_Register is record
      --  no description available
      BPALCD47 : WF47_BPALCD47_Field := NRF_SVD.LCD.WF47_BPALCD47_Field_0;
      --  no description available
      BPBLCD47 : WF47_BPBLCD47_Field := NRF_SVD.LCD.WF47_BPBLCD47_Field_0;
      --  no description available
      BPCLCD47 : WF47_BPCLCD47_Field := NRF_SVD.LCD.WF47_BPCLCD47_Field_0;
      --  no description available
      BPDLCD47 : WF47_BPDLCD47_Field := NRF_SVD.LCD.WF47_BPDLCD47_Field_0;
      --  no description available
      BPELCD47 : WF47_BPELCD47_Field := NRF_SVD.LCD.WF47_BPELCD47_Field_0;
      --  no description available
      BPFLCD47 : WF47_BPFLCD47_Field := NRF_SVD.LCD.WF47_BPFLCD47_Field_0;
      --  no description available
      BPGLCD47 : WF47_BPGLCD47_Field := NRF_SVD.LCD.WF47_BPGLCD47_Field_0;
      --  no description available
      BPHLCD47 : WF47_BPHLCD47_Field := NRF_SVD.LCD.WF47_BPHLCD47_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF47_Register use record
      BPALCD47 at 0 range 0 .. 0;
      BPBLCD47 at 0 range 1 .. 1;
      BPCLCD47 at 0 range 2 .. 2;
      BPDLCD47 at 0 range 3 .. 3;
      BPELCD47 at 0 range 4 .. 4;
      BPFLCD47 at 0 range 5 .. 5;
      BPGLCD47 at 0 range 6 .. 6;
      BPHLCD47 at 0 range 7 .. 7;
   end record;

   --  LCD_WF51TO48_WF array element
   subtype LCD_WF51TO48_WF_Element is HAL.UInt8;

   --  LCD_WF51TO48_WF array
   type LCD_WF51TO48_WF_Field_Array is array (48 .. 51)
     of LCD_WF51TO48_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF51TO48_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF51TO48_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF51TO48_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF48_BPALCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF48_BPALCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF48_BPALCD48_Field_1)
     with Size => 1;
   for WF48_BPALCD48_Field use
     (WF48_BPALCD48_Field_0 => 0,
      WF48_BPALCD48_Field_1 => 1);

   --  no description available
   type WF48_BPBLCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF48_BPBLCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF48_BPBLCD48_Field_1)
     with Size => 1;
   for WF48_BPBLCD48_Field use
     (WF48_BPBLCD48_Field_0 => 0,
      WF48_BPBLCD48_Field_1 => 1);

   --  no description available
   type WF48_BPCLCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF48_BPCLCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF48_BPCLCD48_Field_1)
     with Size => 1;
   for WF48_BPCLCD48_Field use
     (WF48_BPCLCD48_Field_0 => 0,
      WF48_BPCLCD48_Field_1 => 1);

   --  no description available
   type WF48_BPDLCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF48_BPDLCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF48_BPDLCD48_Field_1)
     with Size => 1;
   for WF48_BPDLCD48_Field use
     (WF48_BPDLCD48_Field_0 => 0,
      WF48_BPDLCD48_Field_1 => 1);

   --  no description available
   type WF48_BPELCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF48_BPELCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF48_BPELCD48_Field_1)
     with Size => 1;
   for WF48_BPELCD48_Field use
     (WF48_BPELCD48_Field_0 => 0,
      WF48_BPELCD48_Field_1 => 1);

   --  no description available
   type WF48_BPFLCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF48_BPFLCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF48_BPFLCD48_Field_1)
     with Size => 1;
   for WF48_BPFLCD48_Field use
     (WF48_BPFLCD48_Field_0 => 0,
      WF48_BPFLCD48_Field_1 => 1);

   --  no description available
   type WF48_BPGLCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF48_BPGLCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF48_BPGLCD48_Field_1)
     with Size => 1;
   for WF48_BPGLCD48_Field use
     (WF48_BPGLCD48_Field_0 => 0,
      WF48_BPGLCD48_Field_1 => 1);

   --  no description available
   type WF48_BPHLCD48_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF48_BPHLCD48_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF48_BPHLCD48_Field_1)
     with Size => 1;
   for WF48_BPHLCD48_Field use
     (WF48_BPHLCD48_Field_0 => 0,
      WF48_BPHLCD48_Field_1 => 1);

   --  LCD Waveform Register 48.
   type LCD_WF48_Register is record
      --  no description available
      BPALCD48 : WF48_BPALCD48_Field := NRF_SVD.LCD.WF48_BPALCD48_Field_0;
      --  no description available
      BPBLCD48 : WF48_BPBLCD48_Field := NRF_SVD.LCD.WF48_BPBLCD48_Field_0;
      --  no description available
      BPCLCD48 : WF48_BPCLCD48_Field := NRF_SVD.LCD.WF48_BPCLCD48_Field_0;
      --  no description available
      BPDLCD48 : WF48_BPDLCD48_Field := NRF_SVD.LCD.WF48_BPDLCD48_Field_0;
      --  no description available
      BPELCD48 : WF48_BPELCD48_Field := NRF_SVD.LCD.WF48_BPELCD48_Field_0;
      --  no description available
      BPFLCD48 : WF48_BPFLCD48_Field := NRF_SVD.LCD.WF48_BPFLCD48_Field_0;
      --  no description available
      BPGLCD48 : WF48_BPGLCD48_Field := NRF_SVD.LCD.WF48_BPGLCD48_Field_0;
      --  no description available
      BPHLCD48 : WF48_BPHLCD48_Field := NRF_SVD.LCD.WF48_BPHLCD48_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF48_Register use record
      BPALCD48 at 0 range 0 .. 0;
      BPBLCD48 at 0 range 1 .. 1;
      BPCLCD48 at 0 range 2 .. 2;
      BPDLCD48 at 0 range 3 .. 3;
      BPELCD48 at 0 range 4 .. 4;
      BPFLCD48 at 0 range 5 .. 5;
      BPGLCD48 at 0 range 6 .. 6;
      BPHLCD48 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF49_BPALCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF49_BPALCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF49_BPALCD49_Field_1)
     with Size => 1;
   for WF49_BPALCD49_Field use
     (WF49_BPALCD49_Field_0 => 0,
      WF49_BPALCD49_Field_1 => 1);

   --  no description available
   type WF49_BPBLCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF49_BPBLCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF49_BPBLCD49_Field_1)
     with Size => 1;
   for WF49_BPBLCD49_Field use
     (WF49_BPBLCD49_Field_0 => 0,
      WF49_BPBLCD49_Field_1 => 1);

   --  no description available
   type WF49_BPCLCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF49_BPCLCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF49_BPCLCD49_Field_1)
     with Size => 1;
   for WF49_BPCLCD49_Field use
     (WF49_BPCLCD49_Field_0 => 0,
      WF49_BPCLCD49_Field_1 => 1);

   --  no description available
   type WF49_BPDLCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF49_BPDLCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF49_BPDLCD49_Field_1)
     with Size => 1;
   for WF49_BPDLCD49_Field use
     (WF49_BPDLCD49_Field_0 => 0,
      WF49_BPDLCD49_Field_1 => 1);

   --  no description available
   type WF49_BPELCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF49_BPELCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF49_BPELCD49_Field_1)
     with Size => 1;
   for WF49_BPELCD49_Field use
     (WF49_BPELCD49_Field_0 => 0,
      WF49_BPELCD49_Field_1 => 1);

   --  no description available
   type WF49_BPFLCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF49_BPFLCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF49_BPFLCD49_Field_1)
     with Size => 1;
   for WF49_BPFLCD49_Field use
     (WF49_BPFLCD49_Field_0 => 0,
      WF49_BPFLCD49_Field_1 => 1);

   --  no description available
   type WF49_BPGLCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF49_BPGLCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF49_BPGLCD49_Field_1)
     with Size => 1;
   for WF49_BPGLCD49_Field use
     (WF49_BPGLCD49_Field_0 => 0,
      WF49_BPGLCD49_Field_1 => 1);

   --  no description available
   type WF49_BPHLCD49_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF49_BPHLCD49_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF49_BPHLCD49_Field_1)
     with Size => 1;
   for WF49_BPHLCD49_Field use
     (WF49_BPHLCD49_Field_0 => 0,
      WF49_BPHLCD49_Field_1 => 1);

   --  LCD Waveform Register 49.
   type LCD_WF49_Register is record
      --  no description available
      BPALCD49 : WF49_BPALCD49_Field := NRF_SVD.LCD.WF49_BPALCD49_Field_0;
      --  no description available
      BPBLCD49 : WF49_BPBLCD49_Field := NRF_SVD.LCD.WF49_BPBLCD49_Field_0;
      --  no description available
      BPCLCD49 : WF49_BPCLCD49_Field := NRF_SVD.LCD.WF49_BPCLCD49_Field_0;
      --  no description available
      BPDLCD49 : WF49_BPDLCD49_Field := NRF_SVD.LCD.WF49_BPDLCD49_Field_0;
      --  no description available
      BPELCD49 : WF49_BPELCD49_Field := NRF_SVD.LCD.WF49_BPELCD49_Field_0;
      --  no description available
      BPFLCD49 : WF49_BPFLCD49_Field := NRF_SVD.LCD.WF49_BPFLCD49_Field_0;
      --  no description available
      BPGLCD49 : WF49_BPGLCD49_Field := NRF_SVD.LCD.WF49_BPGLCD49_Field_0;
      --  no description available
      BPHLCD49 : WF49_BPHLCD49_Field := NRF_SVD.LCD.WF49_BPHLCD49_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF49_Register use record
      BPALCD49 at 0 range 0 .. 0;
      BPBLCD49 at 0 range 1 .. 1;
      BPCLCD49 at 0 range 2 .. 2;
      BPDLCD49 at 0 range 3 .. 3;
      BPELCD49 at 0 range 4 .. 4;
      BPFLCD49 at 0 range 5 .. 5;
      BPGLCD49 at 0 range 6 .. 6;
      BPHLCD49 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF50_BPALCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF50_BPALCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF50_BPALCD50_Field_1)
     with Size => 1;
   for WF50_BPALCD50_Field use
     (WF50_BPALCD50_Field_0 => 0,
      WF50_BPALCD50_Field_1 => 1);

   --  no description available
   type WF50_BPBLCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF50_BPBLCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF50_BPBLCD50_Field_1)
     with Size => 1;
   for WF50_BPBLCD50_Field use
     (WF50_BPBLCD50_Field_0 => 0,
      WF50_BPBLCD50_Field_1 => 1);

   --  no description available
   type WF50_BPCLCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF50_BPCLCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF50_BPCLCD50_Field_1)
     with Size => 1;
   for WF50_BPCLCD50_Field use
     (WF50_BPCLCD50_Field_0 => 0,
      WF50_BPCLCD50_Field_1 => 1);

   --  no description available
   type WF50_BPDLCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF50_BPDLCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF50_BPDLCD50_Field_1)
     with Size => 1;
   for WF50_BPDLCD50_Field use
     (WF50_BPDLCD50_Field_0 => 0,
      WF50_BPDLCD50_Field_1 => 1);

   --  no description available
   type WF50_BPELCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF50_BPELCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF50_BPELCD50_Field_1)
     with Size => 1;
   for WF50_BPELCD50_Field use
     (WF50_BPELCD50_Field_0 => 0,
      WF50_BPELCD50_Field_1 => 1);

   --  no description available
   type WF50_BPFLCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF50_BPFLCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF50_BPFLCD50_Field_1)
     with Size => 1;
   for WF50_BPFLCD50_Field use
     (WF50_BPFLCD50_Field_0 => 0,
      WF50_BPFLCD50_Field_1 => 1);

   --  no description available
   type WF50_BPGLCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF50_BPGLCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF50_BPGLCD50_Field_1)
     with Size => 1;
   for WF50_BPGLCD50_Field use
     (WF50_BPGLCD50_Field_0 => 0,
      WF50_BPGLCD50_Field_1 => 1);

   --  no description available
   type WF50_BPHLCD50_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF50_BPHLCD50_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF50_BPHLCD50_Field_1)
     with Size => 1;
   for WF50_BPHLCD50_Field use
     (WF50_BPHLCD50_Field_0 => 0,
      WF50_BPHLCD50_Field_1 => 1);

   --  LCD Waveform Register 50.
   type LCD_WF50_Register is record
      --  no description available
      BPALCD50 : WF50_BPALCD50_Field := NRF_SVD.LCD.WF50_BPALCD50_Field_0;
      --  no description available
      BPBLCD50 : WF50_BPBLCD50_Field := NRF_SVD.LCD.WF50_BPBLCD50_Field_0;
      --  no description available
      BPCLCD50 : WF50_BPCLCD50_Field := NRF_SVD.LCD.WF50_BPCLCD50_Field_0;
      --  no description available
      BPDLCD50 : WF50_BPDLCD50_Field := NRF_SVD.LCD.WF50_BPDLCD50_Field_0;
      --  no description available
      BPELCD50 : WF50_BPELCD50_Field := NRF_SVD.LCD.WF50_BPELCD50_Field_0;
      --  no description available
      BPFLCD50 : WF50_BPFLCD50_Field := NRF_SVD.LCD.WF50_BPFLCD50_Field_0;
      --  no description available
      BPGLCD50 : WF50_BPGLCD50_Field := NRF_SVD.LCD.WF50_BPGLCD50_Field_0;
      --  no description available
      BPHLCD50 : WF50_BPHLCD50_Field := NRF_SVD.LCD.WF50_BPHLCD50_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF50_Register use record
      BPALCD50 at 0 range 0 .. 0;
      BPBLCD50 at 0 range 1 .. 1;
      BPCLCD50 at 0 range 2 .. 2;
      BPDLCD50 at 0 range 3 .. 3;
      BPELCD50 at 0 range 4 .. 4;
      BPFLCD50 at 0 range 5 .. 5;
      BPGLCD50 at 0 range 6 .. 6;
      BPHLCD50 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF51_BPALCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF51_BPALCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF51_BPALCD51_Field_1)
     with Size => 1;
   for WF51_BPALCD51_Field use
     (WF51_BPALCD51_Field_0 => 0,
      WF51_BPALCD51_Field_1 => 1);

   --  no description available
   type WF51_BPBLCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF51_BPBLCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF51_BPBLCD51_Field_1)
     with Size => 1;
   for WF51_BPBLCD51_Field use
     (WF51_BPBLCD51_Field_0 => 0,
      WF51_BPBLCD51_Field_1 => 1);

   --  no description available
   type WF51_BPCLCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF51_BPCLCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF51_BPCLCD51_Field_1)
     with Size => 1;
   for WF51_BPCLCD51_Field use
     (WF51_BPCLCD51_Field_0 => 0,
      WF51_BPCLCD51_Field_1 => 1);

   --  no description available
   type WF51_BPDLCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF51_BPDLCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF51_BPDLCD51_Field_1)
     with Size => 1;
   for WF51_BPDLCD51_Field use
     (WF51_BPDLCD51_Field_0 => 0,
      WF51_BPDLCD51_Field_1 => 1);

   --  no description available
   type WF51_BPELCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF51_BPELCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF51_BPELCD51_Field_1)
     with Size => 1;
   for WF51_BPELCD51_Field use
     (WF51_BPELCD51_Field_0 => 0,
      WF51_BPELCD51_Field_1 => 1);

   --  no description available
   type WF51_BPFLCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF51_BPFLCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF51_BPFLCD51_Field_1)
     with Size => 1;
   for WF51_BPFLCD51_Field use
     (WF51_BPFLCD51_Field_0 => 0,
      WF51_BPFLCD51_Field_1 => 1);

   --  no description available
   type WF51_BPGLCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF51_BPGLCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF51_BPGLCD51_Field_1)
     with Size => 1;
   for WF51_BPGLCD51_Field use
     (WF51_BPGLCD51_Field_0 => 0,
      WF51_BPGLCD51_Field_1 => 1);

   --  no description available
   type WF51_BPHLCD51_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF51_BPHLCD51_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF51_BPHLCD51_Field_1)
     with Size => 1;
   for WF51_BPHLCD51_Field use
     (WF51_BPHLCD51_Field_0 => 0,
      WF51_BPHLCD51_Field_1 => 1);

   --  LCD Waveform Register 51.
   type LCD_WF51_Register is record
      --  no description available
      BPALCD51 : WF51_BPALCD51_Field := NRF_SVD.LCD.WF51_BPALCD51_Field_0;
      --  no description available
      BPBLCD51 : WF51_BPBLCD51_Field := NRF_SVD.LCD.WF51_BPBLCD51_Field_0;
      --  no description available
      BPCLCD51 : WF51_BPCLCD51_Field := NRF_SVD.LCD.WF51_BPCLCD51_Field_0;
      --  no description available
      BPDLCD51 : WF51_BPDLCD51_Field := NRF_SVD.LCD.WF51_BPDLCD51_Field_0;
      --  no description available
      BPELCD51 : WF51_BPELCD51_Field := NRF_SVD.LCD.WF51_BPELCD51_Field_0;
      --  no description available
      BPFLCD51 : WF51_BPFLCD51_Field := NRF_SVD.LCD.WF51_BPFLCD51_Field_0;
      --  no description available
      BPGLCD51 : WF51_BPGLCD51_Field := NRF_SVD.LCD.WF51_BPGLCD51_Field_0;
      --  no description available
      BPHLCD51 : WF51_BPHLCD51_Field := NRF_SVD.LCD.WF51_BPHLCD51_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF51_Register use record
      BPALCD51 at 0 range 0 .. 0;
      BPBLCD51 at 0 range 1 .. 1;
      BPCLCD51 at 0 range 2 .. 2;
      BPDLCD51 at 0 range 3 .. 3;
      BPELCD51 at 0 range 4 .. 4;
      BPFLCD51 at 0 range 5 .. 5;
      BPGLCD51 at 0 range 6 .. 6;
      BPHLCD51 at 0 range 7 .. 7;
   end record;

   --  LCD_WF55TO52_WF array element
   subtype LCD_WF55TO52_WF_Element is HAL.UInt8;

   --  LCD_WF55TO52_WF array
   type LCD_WF55TO52_WF_Field_Array is array (52 .. 55)
     of LCD_WF55TO52_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF55TO52_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF55TO52_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF55TO52_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF52_BPALCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF52_BPALCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF52_BPALCD52_Field_1)
     with Size => 1;
   for WF52_BPALCD52_Field use
     (WF52_BPALCD52_Field_0 => 0,
      WF52_BPALCD52_Field_1 => 1);

   --  no description available
   type WF52_BPBLCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF52_BPBLCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF52_BPBLCD52_Field_1)
     with Size => 1;
   for WF52_BPBLCD52_Field use
     (WF52_BPBLCD52_Field_0 => 0,
      WF52_BPBLCD52_Field_1 => 1);

   --  no description available
   type WF52_BPCLCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF52_BPCLCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF52_BPCLCD52_Field_1)
     with Size => 1;
   for WF52_BPCLCD52_Field use
     (WF52_BPCLCD52_Field_0 => 0,
      WF52_BPCLCD52_Field_1 => 1);

   --  no description available
   type WF52_BPDLCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF52_BPDLCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF52_BPDLCD52_Field_1)
     with Size => 1;
   for WF52_BPDLCD52_Field use
     (WF52_BPDLCD52_Field_0 => 0,
      WF52_BPDLCD52_Field_1 => 1);

   --  no description available
   type WF52_BPELCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF52_BPELCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF52_BPELCD52_Field_1)
     with Size => 1;
   for WF52_BPELCD52_Field use
     (WF52_BPELCD52_Field_0 => 0,
      WF52_BPELCD52_Field_1 => 1);

   --  no description available
   type WF52_BPFLCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF52_BPFLCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF52_BPFLCD52_Field_1)
     with Size => 1;
   for WF52_BPFLCD52_Field use
     (WF52_BPFLCD52_Field_0 => 0,
      WF52_BPFLCD52_Field_1 => 1);

   --  no description available
   type WF52_BPGLCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF52_BPGLCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF52_BPGLCD52_Field_1)
     with Size => 1;
   for WF52_BPGLCD52_Field use
     (WF52_BPGLCD52_Field_0 => 0,
      WF52_BPGLCD52_Field_1 => 1);

   --  no description available
   type WF52_BPHLCD52_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF52_BPHLCD52_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF52_BPHLCD52_Field_1)
     with Size => 1;
   for WF52_BPHLCD52_Field use
     (WF52_BPHLCD52_Field_0 => 0,
      WF52_BPHLCD52_Field_1 => 1);

   --  LCD Waveform Register 52.
   type LCD_WF52_Register is record
      --  no description available
      BPALCD52 : WF52_BPALCD52_Field := NRF_SVD.LCD.WF52_BPALCD52_Field_0;
      --  no description available
      BPBLCD52 : WF52_BPBLCD52_Field := NRF_SVD.LCD.WF52_BPBLCD52_Field_0;
      --  no description available
      BPCLCD52 : WF52_BPCLCD52_Field := NRF_SVD.LCD.WF52_BPCLCD52_Field_0;
      --  no description available
      BPDLCD52 : WF52_BPDLCD52_Field := NRF_SVD.LCD.WF52_BPDLCD52_Field_0;
      --  no description available
      BPELCD52 : WF52_BPELCD52_Field := NRF_SVD.LCD.WF52_BPELCD52_Field_0;
      --  no description available
      BPFLCD52 : WF52_BPFLCD52_Field := NRF_SVD.LCD.WF52_BPFLCD52_Field_0;
      --  no description available
      BPGLCD52 : WF52_BPGLCD52_Field := NRF_SVD.LCD.WF52_BPGLCD52_Field_0;
      --  no description available
      BPHLCD52 : WF52_BPHLCD52_Field := NRF_SVD.LCD.WF52_BPHLCD52_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF52_Register use record
      BPALCD52 at 0 range 0 .. 0;
      BPBLCD52 at 0 range 1 .. 1;
      BPCLCD52 at 0 range 2 .. 2;
      BPDLCD52 at 0 range 3 .. 3;
      BPELCD52 at 0 range 4 .. 4;
      BPFLCD52 at 0 range 5 .. 5;
      BPGLCD52 at 0 range 6 .. 6;
      BPHLCD52 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF53_BPALCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF53_BPALCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF53_BPALCD53_Field_1)
     with Size => 1;
   for WF53_BPALCD53_Field use
     (WF53_BPALCD53_Field_0 => 0,
      WF53_BPALCD53_Field_1 => 1);

   --  no description available
   type WF53_BPBLCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF53_BPBLCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF53_BPBLCD53_Field_1)
     with Size => 1;
   for WF53_BPBLCD53_Field use
     (WF53_BPBLCD53_Field_0 => 0,
      WF53_BPBLCD53_Field_1 => 1);

   --  no description available
   type WF53_BPCLCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF53_BPCLCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF53_BPCLCD53_Field_1)
     with Size => 1;
   for WF53_BPCLCD53_Field use
     (WF53_BPCLCD53_Field_0 => 0,
      WF53_BPCLCD53_Field_1 => 1);

   --  no description available
   type WF53_BPDLCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF53_BPDLCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF53_BPDLCD53_Field_1)
     with Size => 1;
   for WF53_BPDLCD53_Field use
     (WF53_BPDLCD53_Field_0 => 0,
      WF53_BPDLCD53_Field_1 => 1);

   --  no description available
   type WF53_BPELCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF53_BPELCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF53_BPELCD53_Field_1)
     with Size => 1;
   for WF53_BPELCD53_Field use
     (WF53_BPELCD53_Field_0 => 0,
      WF53_BPELCD53_Field_1 => 1);

   --  no description available
   type WF53_BPFLCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF53_BPFLCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF53_BPFLCD53_Field_1)
     with Size => 1;
   for WF53_BPFLCD53_Field use
     (WF53_BPFLCD53_Field_0 => 0,
      WF53_BPFLCD53_Field_1 => 1);

   --  no description available
   type WF53_BPGLCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF53_BPGLCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF53_BPGLCD53_Field_1)
     with Size => 1;
   for WF53_BPGLCD53_Field use
     (WF53_BPGLCD53_Field_0 => 0,
      WF53_BPGLCD53_Field_1 => 1);

   --  no description available
   type WF53_BPHLCD53_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF53_BPHLCD53_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF53_BPHLCD53_Field_1)
     with Size => 1;
   for WF53_BPHLCD53_Field use
     (WF53_BPHLCD53_Field_0 => 0,
      WF53_BPHLCD53_Field_1 => 1);

   --  LCD Waveform Register 53.
   type LCD_WF53_Register is record
      --  no description available
      BPALCD53 : WF53_BPALCD53_Field := NRF_SVD.LCD.WF53_BPALCD53_Field_0;
      --  no description available
      BPBLCD53 : WF53_BPBLCD53_Field := NRF_SVD.LCD.WF53_BPBLCD53_Field_0;
      --  no description available
      BPCLCD53 : WF53_BPCLCD53_Field := NRF_SVD.LCD.WF53_BPCLCD53_Field_0;
      --  no description available
      BPDLCD53 : WF53_BPDLCD53_Field := NRF_SVD.LCD.WF53_BPDLCD53_Field_0;
      --  no description available
      BPELCD53 : WF53_BPELCD53_Field := NRF_SVD.LCD.WF53_BPELCD53_Field_0;
      --  no description available
      BPFLCD53 : WF53_BPFLCD53_Field := NRF_SVD.LCD.WF53_BPFLCD53_Field_0;
      --  no description available
      BPGLCD53 : WF53_BPGLCD53_Field := NRF_SVD.LCD.WF53_BPGLCD53_Field_0;
      --  no description available
      BPHLCD53 : WF53_BPHLCD53_Field := NRF_SVD.LCD.WF53_BPHLCD53_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF53_Register use record
      BPALCD53 at 0 range 0 .. 0;
      BPBLCD53 at 0 range 1 .. 1;
      BPCLCD53 at 0 range 2 .. 2;
      BPDLCD53 at 0 range 3 .. 3;
      BPELCD53 at 0 range 4 .. 4;
      BPFLCD53 at 0 range 5 .. 5;
      BPGLCD53 at 0 range 6 .. 6;
      BPHLCD53 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF54_BPALCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF54_BPALCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF54_BPALCD54_Field_1)
     with Size => 1;
   for WF54_BPALCD54_Field use
     (WF54_BPALCD54_Field_0 => 0,
      WF54_BPALCD54_Field_1 => 1);

   --  no description available
   type WF54_BPBLCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF54_BPBLCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF54_BPBLCD54_Field_1)
     with Size => 1;
   for WF54_BPBLCD54_Field use
     (WF54_BPBLCD54_Field_0 => 0,
      WF54_BPBLCD54_Field_1 => 1);

   --  no description available
   type WF54_BPCLCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF54_BPCLCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF54_BPCLCD54_Field_1)
     with Size => 1;
   for WF54_BPCLCD54_Field use
     (WF54_BPCLCD54_Field_0 => 0,
      WF54_BPCLCD54_Field_1 => 1);

   --  no description available
   type WF54_BPDLCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF54_BPDLCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF54_BPDLCD54_Field_1)
     with Size => 1;
   for WF54_BPDLCD54_Field use
     (WF54_BPDLCD54_Field_0 => 0,
      WF54_BPDLCD54_Field_1 => 1);

   --  no description available
   type WF54_BPELCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF54_BPELCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF54_BPELCD54_Field_1)
     with Size => 1;
   for WF54_BPELCD54_Field use
     (WF54_BPELCD54_Field_0 => 0,
      WF54_BPELCD54_Field_1 => 1);

   --  no description available
   type WF54_BPFLCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF54_BPFLCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF54_BPFLCD54_Field_1)
     with Size => 1;
   for WF54_BPFLCD54_Field use
     (WF54_BPFLCD54_Field_0 => 0,
      WF54_BPFLCD54_Field_1 => 1);

   --  no description available
   type WF54_BPGLCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF54_BPGLCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF54_BPGLCD54_Field_1)
     with Size => 1;
   for WF54_BPGLCD54_Field use
     (WF54_BPGLCD54_Field_0 => 0,
      WF54_BPGLCD54_Field_1 => 1);

   --  no description available
   type WF54_BPHLCD54_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF54_BPHLCD54_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF54_BPHLCD54_Field_1)
     with Size => 1;
   for WF54_BPHLCD54_Field use
     (WF54_BPHLCD54_Field_0 => 0,
      WF54_BPHLCD54_Field_1 => 1);

   --  LCD Waveform Register 54.
   type LCD_WF54_Register is record
      --  no description available
      BPALCD54 : WF54_BPALCD54_Field := NRF_SVD.LCD.WF54_BPALCD54_Field_0;
      --  no description available
      BPBLCD54 : WF54_BPBLCD54_Field := NRF_SVD.LCD.WF54_BPBLCD54_Field_0;
      --  no description available
      BPCLCD54 : WF54_BPCLCD54_Field := NRF_SVD.LCD.WF54_BPCLCD54_Field_0;
      --  no description available
      BPDLCD54 : WF54_BPDLCD54_Field := NRF_SVD.LCD.WF54_BPDLCD54_Field_0;
      --  no description available
      BPELCD54 : WF54_BPELCD54_Field := NRF_SVD.LCD.WF54_BPELCD54_Field_0;
      --  no description available
      BPFLCD54 : WF54_BPFLCD54_Field := NRF_SVD.LCD.WF54_BPFLCD54_Field_0;
      --  no description available
      BPGLCD54 : WF54_BPGLCD54_Field := NRF_SVD.LCD.WF54_BPGLCD54_Field_0;
      --  no description available
      BPHLCD54 : WF54_BPHLCD54_Field := NRF_SVD.LCD.WF54_BPHLCD54_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF54_Register use record
      BPALCD54 at 0 range 0 .. 0;
      BPBLCD54 at 0 range 1 .. 1;
      BPCLCD54 at 0 range 2 .. 2;
      BPDLCD54 at 0 range 3 .. 3;
      BPELCD54 at 0 range 4 .. 4;
      BPFLCD54 at 0 range 5 .. 5;
      BPGLCD54 at 0 range 6 .. 6;
      BPHLCD54 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF55_BPALCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF55_BPALCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF55_BPALCD55_Field_1)
     with Size => 1;
   for WF55_BPALCD55_Field use
     (WF55_BPALCD55_Field_0 => 0,
      WF55_BPALCD55_Field_1 => 1);

   --  no description available
   type WF55_BPBLCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF55_BPBLCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF55_BPBLCD55_Field_1)
     with Size => 1;
   for WF55_BPBLCD55_Field use
     (WF55_BPBLCD55_Field_0 => 0,
      WF55_BPBLCD55_Field_1 => 1);

   --  no description available
   type WF55_BPCLCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF55_BPCLCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF55_BPCLCD55_Field_1)
     with Size => 1;
   for WF55_BPCLCD55_Field use
     (WF55_BPCLCD55_Field_0 => 0,
      WF55_BPCLCD55_Field_1 => 1);

   --  no description available
   type WF55_BPDLCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF55_BPDLCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF55_BPDLCD55_Field_1)
     with Size => 1;
   for WF55_BPDLCD55_Field use
     (WF55_BPDLCD55_Field_0 => 0,
      WF55_BPDLCD55_Field_1 => 1);

   --  no description available
   type WF55_BPELCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF55_BPELCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF55_BPELCD55_Field_1)
     with Size => 1;
   for WF55_BPELCD55_Field use
     (WF55_BPELCD55_Field_0 => 0,
      WF55_BPELCD55_Field_1 => 1);

   --  no description available
   type WF55_BPFLCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF55_BPFLCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF55_BPFLCD55_Field_1)
     with Size => 1;
   for WF55_BPFLCD55_Field use
     (WF55_BPFLCD55_Field_0 => 0,
      WF55_BPFLCD55_Field_1 => 1);

   --  no description available
   type WF55_BPGLCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF55_BPGLCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF55_BPGLCD55_Field_1)
     with Size => 1;
   for WF55_BPGLCD55_Field use
     (WF55_BPGLCD55_Field_0 => 0,
      WF55_BPGLCD55_Field_1 => 1);

   --  no description available
   type WF55_BPHLCD55_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF55_BPHLCD55_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF55_BPHLCD55_Field_1)
     with Size => 1;
   for WF55_BPHLCD55_Field use
     (WF55_BPHLCD55_Field_0 => 0,
      WF55_BPHLCD55_Field_1 => 1);

   --  LCD Waveform Register 55.
   type LCD_WF55_Register is record
      --  no description available
      BPALCD55 : WF55_BPALCD55_Field := NRF_SVD.LCD.WF55_BPALCD55_Field_0;
      --  no description available
      BPBLCD55 : WF55_BPBLCD55_Field := NRF_SVD.LCD.WF55_BPBLCD55_Field_0;
      --  no description available
      BPCLCD55 : WF55_BPCLCD55_Field := NRF_SVD.LCD.WF55_BPCLCD55_Field_0;
      --  no description available
      BPDLCD55 : WF55_BPDLCD55_Field := NRF_SVD.LCD.WF55_BPDLCD55_Field_0;
      --  no description available
      BPELCD55 : WF55_BPELCD55_Field := NRF_SVD.LCD.WF55_BPELCD55_Field_0;
      --  no description available
      BPFLCD55 : WF55_BPFLCD55_Field := NRF_SVD.LCD.WF55_BPFLCD55_Field_0;
      --  no description available
      BPGLCD55 : WF55_BPGLCD55_Field := NRF_SVD.LCD.WF55_BPGLCD55_Field_0;
      --  no description available
      BPHLCD55 : WF55_BPHLCD55_Field := NRF_SVD.LCD.WF55_BPHLCD55_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF55_Register use record
      BPALCD55 at 0 range 0 .. 0;
      BPBLCD55 at 0 range 1 .. 1;
      BPCLCD55 at 0 range 2 .. 2;
      BPDLCD55 at 0 range 3 .. 3;
      BPELCD55 at 0 range 4 .. 4;
      BPFLCD55 at 0 range 5 .. 5;
      BPGLCD55 at 0 range 6 .. 6;
      BPHLCD55 at 0 range 7 .. 7;
   end record;

   --  LCD_WF59TO56_WF array element
   subtype LCD_WF59TO56_WF_Element is HAL.UInt8;

   --  LCD_WF59TO56_WF array
   type LCD_WF59TO56_WF_Field_Array is array (56 .. 59)
     of LCD_WF59TO56_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF59TO56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF59TO56_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF59TO56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF56_BPALCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF56_BPALCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF56_BPALCD56_Field_1)
     with Size => 1;
   for WF56_BPALCD56_Field use
     (WF56_BPALCD56_Field_0 => 0,
      WF56_BPALCD56_Field_1 => 1);

   --  no description available
   type WF56_BPBLCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF56_BPBLCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF56_BPBLCD56_Field_1)
     with Size => 1;
   for WF56_BPBLCD56_Field use
     (WF56_BPBLCD56_Field_0 => 0,
      WF56_BPBLCD56_Field_1 => 1);

   --  no description available
   type WF56_BPCLCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF56_BPCLCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF56_BPCLCD56_Field_1)
     with Size => 1;
   for WF56_BPCLCD56_Field use
     (WF56_BPCLCD56_Field_0 => 0,
      WF56_BPCLCD56_Field_1 => 1);

   --  no description available
   type WF56_BPDLCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF56_BPDLCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF56_BPDLCD56_Field_1)
     with Size => 1;
   for WF56_BPDLCD56_Field use
     (WF56_BPDLCD56_Field_0 => 0,
      WF56_BPDLCD56_Field_1 => 1);

   --  no description available
   type WF56_BPELCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF56_BPELCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF56_BPELCD56_Field_1)
     with Size => 1;
   for WF56_BPELCD56_Field use
     (WF56_BPELCD56_Field_0 => 0,
      WF56_BPELCD56_Field_1 => 1);

   --  no description available
   type WF56_BPFLCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF56_BPFLCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF56_BPFLCD56_Field_1)
     with Size => 1;
   for WF56_BPFLCD56_Field use
     (WF56_BPFLCD56_Field_0 => 0,
      WF56_BPFLCD56_Field_1 => 1);

   --  no description available
   type WF56_BPGLCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF56_BPGLCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF56_BPGLCD56_Field_1)
     with Size => 1;
   for WF56_BPGLCD56_Field use
     (WF56_BPGLCD56_Field_0 => 0,
      WF56_BPGLCD56_Field_1 => 1);

   --  no description available
   type WF56_BPHLCD56_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF56_BPHLCD56_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF56_BPHLCD56_Field_1)
     with Size => 1;
   for WF56_BPHLCD56_Field use
     (WF56_BPHLCD56_Field_0 => 0,
      WF56_BPHLCD56_Field_1 => 1);

   --  LCD Waveform Register 56.
   type LCD_WF56_Register is record
      --  no description available
      BPALCD56 : WF56_BPALCD56_Field := NRF_SVD.LCD.WF56_BPALCD56_Field_0;
      --  no description available
      BPBLCD56 : WF56_BPBLCD56_Field := NRF_SVD.LCD.WF56_BPBLCD56_Field_0;
      --  no description available
      BPCLCD56 : WF56_BPCLCD56_Field := NRF_SVD.LCD.WF56_BPCLCD56_Field_0;
      --  no description available
      BPDLCD56 : WF56_BPDLCD56_Field := NRF_SVD.LCD.WF56_BPDLCD56_Field_0;
      --  no description available
      BPELCD56 : WF56_BPELCD56_Field := NRF_SVD.LCD.WF56_BPELCD56_Field_0;
      --  no description available
      BPFLCD56 : WF56_BPFLCD56_Field := NRF_SVD.LCD.WF56_BPFLCD56_Field_0;
      --  no description available
      BPGLCD56 : WF56_BPGLCD56_Field := NRF_SVD.LCD.WF56_BPGLCD56_Field_0;
      --  no description available
      BPHLCD56 : WF56_BPHLCD56_Field := NRF_SVD.LCD.WF56_BPHLCD56_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF56_Register use record
      BPALCD56 at 0 range 0 .. 0;
      BPBLCD56 at 0 range 1 .. 1;
      BPCLCD56 at 0 range 2 .. 2;
      BPDLCD56 at 0 range 3 .. 3;
      BPELCD56 at 0 range 4 .. 4;
      BPFLCD56 at 0 range 5 .. 5;
      BPGLCD56 at 0 range 6 .. 6;
      BPHLCD56 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF57_BPALCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF57_BPALCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF57_BPALCD57_Field_1)
     with Size => 1;
   for WF57_BPALCD57_Field use
     (WF57_BPALCD57_Field_0 => 0,
      WF57_BPALCD57_Field_1 => 1);

   --  no description available
   type WF57_BPBLCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF57_BPBLCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF57_BPBLCD57_Field_1)
     with Size => 1;
   for WF57_BPBLCD57_Field use
     (WF57_BPBLCD57_Field_0 => 0,
      WF57_BPBLCD57_Field_1 => 1);

   --  no description available
   type WF57_BPCLCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF57_BPCLCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF57_BPCLCD57_Field_1)
     with Size => 1;
   for WF57_BPCLCD57_Field use
     (WF57_BPCLCD57_Field_0 => 0,
      WF57_BPCLCD57_Field_1 => 1);

   --  no description available
   type WF57_BPDLCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF57_BPDLCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF57_BPDLCD57_Field_1)
     with Size => 1;
   for WF57_BPDLCD57_Field use
     (WF57_BPDLCD57_Field_0 => 0,
      WF57_BPDLCD57_Field_1 => 1);

   --  no description available
   type WF57_BPELCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF57_BPELCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF57_BPELCD57_Field_1)
     with Size => 1;
   for WF57_BPELCD57_Field use
     (WF57_BPELCD57_Field_0 => 0,
      WF57_BPELCD57_Field_1 => 1);

   --  no description available
   type WF57_BPFLCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF57_BPFLCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF57_BPFLCD57_Field_1)
     with Size => 1;
   for WF57_BPFLCD57_Field use
     (WF57_BPFLCD57_Field_0 => 0,
      WF57_BPFLCD57_Field_1 => 1);

   --  no description available
   type WF57_BPGLCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF57_BPGLCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF57_BPGLCD57_Field_1)
     with Size => 1;
   for WF57_BPGLCD57_Field use
     (WF57_BPGLCD57_Field_0 => 0,
      WF57_BPGLCD57_Field_1 => 1);

   --  no description available
   type WF57_BPHLCD57_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF57_BPHLCD57_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF57_BPHLCD57_Field_1)
     with Size => 1;
   for WF57_BPHLCD57_Field use
     (WF57_BPHLCD57_Field_0 => 0,
      WF57_BPHLCD57_Field_1 => 1);

   --  LCD Waveform Register 57.
   type LCD_WF57_Register is record
      --  no description available
      BPALCD57 : WF57_BPALCD57_Field := NRF_SVD.LCD.WF57_BPALCD57_Field_0;
      --  no description available
      BPBLCD57 : WF57_BPBLCD57_Field := NRF_SVD.LCD.WF57_BPBLCD57_Field_0;
      --  no description available
      BPCLCD57 : WF57_BPCLCD57_Field := NRF_SVD.LCD.WF57_BPCLCD57_Field_0;
      --  no description available
      BPDLCD57 : WF57_BPDLCD57_Field := NRF_SVD.LCD.WF57_BPDLCD57_Field_0;
      --  no description available
      BPELCD57 : WF57_BPELCD57_Field := NRF_SVD.LCD.WF57_BPELCD57_Field_0;
      --  no description available
      BPFLCD57 : WF57_BPFLCD57_Field := NRF_SVD.LCD.WF57_BPFLCD57_Field_0;
      --  no description available
      BPGLCD57 : WF57_BPGLCD57_Field := NRF_SVD.LCD.WF57_BPGLCD57_Field_0;
      --  no description available
      BPHLCD57 : WF57_BPHLCD57_Field := NRF_SVD.LCD.WF57_BPHLCD57_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF57_Register use record
      BPALCD57 at 0 range 0 .. 0;
      BPBLCD57 at 0 range 1 .. 1;
      BPCLCD57 at 0 range 2 .. 2;
      BPDLCD57 at 0 range 3 .. 3;
      BPELCD57 at 0 range 4 .. 4;
      BPFLCD57 at 0 range 5 .. 5;
      BPGLCD57 at 0 range 6 .. 6;
      BPHLCD57 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF58_BPALCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF58_BPALCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF58_BPALCD58_Field_1)
     with Size => 1;
   for WF58_BPALCD58_Field use
     (WF58_BPALCD58_Field_0 => 0,
      WF58_BPALCD58_Field_1 => 1);

   --  no description available
   type WF58_BPBLCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF58_BPBLCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF58_BPBLCD58_Field_1)
     with Size => 1;
   for WF58_BPBLCD58_Field use
     (WF58_BPBLCD58_Field_0 => 0,
      WF58_BPBLCD58_Field_1 => 1);

   --  no description available
   type WF58_BPCLCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF58_BPCLCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF58_BPCLCD58_Field_1)
     with Size => 1;
   for WF58_BPCLCD58_Field use
     (WF58_BPCLCD58_Field_0 => 0,
      WF58_BPCLCD58_Field_1 => 1);

   --  no description available
   type WF58_BPDLCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF58_BPDLCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF58_BPDLCD58_Field_1)
     with Size => 1;
   for WF58_BPDLCD58_Field use
     (WF58_BPDLCD58_Field_0 => 0,
      WF58_BPDLCD58_Field_1 => 1);

   --  no description available
   type WF58_BPELCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF58_BPELCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF58_BPELCD58_Field_1)
     with Size => 1;
   for WF58_BPELCD58_Field use
     (WF58_BPELCD58_Field_0 => 0,
      WF58_BPELCD58_Field_1 => 1);

   --  no description available
   type WF58_BPFLCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF58_BPFLCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF58_BPFLCD58_Field_1)
     with Size => 1;
   for WF58_BPFLCD58_Field use
     (WF58_BPFLCD58_Field_0 => 0,
      WF58_BPFLCD58_Field_1 => 1);

   --  no description available
   type WF58_BPGLCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF58_BPGLCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF58_BPGLCD58_Field_1)
     with Size => 1;
   for WF58_BPGLCD58_Field use
     (WF58_BPGLCD58_Field_0 => 0,
      WF58_BPGLCD58_Field_1 => 1);

   --  no description available
   type WF58_BPHLCD58_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF58_BPHLCD58_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF58_BPHLCD58_Field_1)
     with Size => 1;
   for WF58_BPHLCD58_Field use
     (WF58_BPHLCD58_Field_0 => 0,
      WF58_BPHLCD58_Field_1 => 1);

   --  LCD Waveform Register 58.
   type LCD_WF58_Register is record
      --  no description available
      BPALCD58 : WF58_BPALCD58_Field := NRF_SVD.LCD.WF58_BPALCD58_Field_0;
      --  no description available
      BPBLCD58 : WF58_BPBLCD58_Field := NRF_SVD.LCD.WF58_BPBLCD58_Field_0;
      --  no description available
      BPCLCD58 : WF58_BPCLCD58_Field := NRF_SVD.LCD.WF58_BPCLCD58_Field_0;
      --  no description available
      BPDLCD58 : WF58_BPDLCD58_Field := NRF_SVD.LCD.WF58_BPDLCD58_Field_0;
      --  no description available
      BPELCD58 : WF58_BPELCD58_Field := NRF_SVD.LCD.WF58_BPELCD58_Field_0;
      --  no description available
      BPFLCD58 : WF58_BPFLCD58_Field := NRF_SVD.LCD.WF58_BPFLCD58_Field_0;
      --  no description available
      BPGLCD58 : WF58_BPGLCD58_Field := NRF_SVD.LCD.WF58_BPGLCD58_Field_0;
      --  no description available
      BPHLCD58 : WF58_BPHLCD58_Field := NRF_SVD.LCD.WF58_BPHLCD58_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF58_Register use record
      BPALCD58 at 0 range 0 .. 0;
      BPBLCD58 at 0 range 1 .. 1;
      BPCLCD58 at 0 range 2 .. 2;
      BPDLCD58 at 0 range 3 .. 3;
      BPELCD58 at 0 range 4 .. 4;
      BPFLCD58 at 0 range 5 .. 5;
      BPGLCD58 at 0 range 6 .. 6;
      BPHLCD58 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF59_BPALCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF59_BPALCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF59_BPALCD59_Field_1)
     with Size => 1;
   for WF59_BPALCD59_Field use
     (WF59_BPALCD59_Field_0 => 0,
      WF59_BPALCD59_Field_1 => 1);

   --  no description available
   type WF59_BPBLCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF59_BPBLCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF59_BPBLCD59_Field_1)
     with Size => 1;
   for WF59_BPBLCD59_Field use
     (WF59_BPBLCD59_Field_0 => 0,
      WF59_BPBLCD59_Field_1 => 1);

   --  no description available
   type WF59_BPCLCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF59_BPCLCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF59_BPCLCD59_Field_1)
     with Size => 1;
   for WF59_BPCLCD59_Field use
     (WF59_BPCLCD59_Field_0 => 0,
      WF59_BPCLCD59_Field_1 => 1);

   --  no description available
   type WF59_BPDLCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF59_BPDLCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF59_BPDLCD59_Field_1)
     with Size => 1;
   for WF59_BPDLCD59_Field use
     (WF59_BPDLCD59_Field_0 => 0,
      WF59_BPDLCD59_Field_1 => 1);

   --  no description available
   type WF59_BPELCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF59_BPELCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF59_BPELCD59_Field_1)
     with Size => 1;
   for WF59_BPELCD59_Field use
     (WF59_BPELCD59_Field_0 => 0,
      WF59_BPELCD59_Field_1 => 1);

   --  no description available
   type WF59_BPFLCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF59_BPFLCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF59_BPFLCD59_Field_1)
     with Size => 1;
   for WF59_BPFLCD59_Field use
     (WF59_BPFLCD59_Field_0 => 0,
      WF59_BPFLCD59_Field_1 => 1);

   --  no description available
   type WF59_BPGLCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF59_BPGLCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF59_BPGLCD59_Field_1)
     with Size => 1;
   for WF59_BPGLCD59_Field use
     (WF59_BPGLCD59_Field_0 => 0,
      WF59_BPGLCD59_Field_1 => 1);

   --  no description available
   type WF59_BPHLCD59_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF59_BPHLCD59_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF59_BPHLCD59_Field_1)
     with Size => 1;
   for WF59_BPHLCD59_Field use
     (WF59_BPHLCD59_Field_0 => 0,
      WF59_BPHLCD59_Field_1 => 1);

   --  LCD Waveform Register 59.
   type LCD_WF59_Register is record
      --  no description available
      BPALCD59 : WF59_BPALCD59_Field := NRF_SVD.LCD.WF59_BPALCD59_Field_0;
      --  no description available
      BPBLCD59 : WF59_BPBLCD59_Field := NRF_SVD.LCD.WF59_BPBLCD59_Field_0;
      --  no description available
      BPCLCD59 : WF59_BPCLCD59_Field := NRF_SVD.LCD.WF59_BPCLCD59_Field_0;
      --  no description available
      BPDLCD59 : WF59_BPDLCD59_Field := NRF_SVD.LCD.WF59_BPDLCD59_Field_0;
      --  no description available
      BPELCD59 : WF59_BPELCD59_Field := NRF_SVD.LCD.WF59_BPELCD59_Field_0;
      --  no description available
      BPFLCD59 : WF59_BPFLCD59_Field := NRF_SVD.LCD.WF59_BPFLCD59_Field_0;
      --  no description available
      BPGLCD59 : WF59_BPGLCD59_Field := NRF_SVD.LCD.WF59_BPGLCD59_Field_0;
      --  no description available
      BPHLCD59 : WF59_BPHLCD59_Field := NRF_SVD.LCD.WF59_BPHLCD59_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF59_Register use record
      BPALCD59 at 0 range 0 .. 0;
      BPBLCD59 at 0 range 1 .. 1;
      BPCLCD59 at 0 range 2 .. 2;
      BPDLCD59 at 0 range 3 .. 3;
      BPELCD59 at 0 range 4 .. 4;
      BPFLCD59 at 0 range 5 .. 5;
      BPGLCD59 at 0 range 6 .. 6;
      BPHLCD59 at 0 range 7 .. 7;
   end record;

   --  LCD_WF63TO60_WF array element
   subtype LCD_WF63TO60_WF_Element is HAL.UInt8;

   --  LCD_WF63TO60_WF array
   type LCD_WF63TO60_WF_Field_Array is array (60 .. 63)
     of LCD_WF63TO60_WF_Element
     with Component_Size => 8, Size => 32;

   --  LCD Waveform register
   type LCD_WF63TO60_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WF as a value
            Val : HAL.UInt32;
         when True =>
            --  WF as an array
            Arr : LCD_WF63TO60_WF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LCD_WF63TO60_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  no description available
   type WF60_BPALCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF60_BPALCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF60_BPALCD60_Field_1)
     with Size => 1;
   for WF60_BPALCD60_Field use
     (WF60_BPALCD60_Field_0 => 0,
      WF60_BPALCD60_Field_1 => 1);

   --  no description available
   type WF60_BPBLCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF60_BPBLCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF60_BPBLCD60_Field_1)
     with Size => 1;
   for WF60_BPBLCD60_Field use
     (WF60_BPBLCD60_Field_0 => 0,
      WF60_BPBLCD60_Field_1 => 1);

   --  no description available
   type WF60_BPCLCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF60_BPCLCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF60_BPCLCD60_Field_1)
     with Size => 1;
   for WF60_BPCLCD60_Field use
     (WF60_BPCLCD60_Field_0 => 0,
      WF60_BPCLCD60_Field_1 => 1);

   --  no description available
   type WF60_BPDLCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF60_BPDLCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF60_BPDLCD60_Field_1)
     with Size => 1;
   for WF60_BPDLCD60_Field use
     (WF60_BPDLCD60_Field_0 => 0,
      WF60_BPDLCD60_Field_1 => 1);

   --  no description available
   type WF60_BPELCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF60_BPELCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF60_BPELCD60_Field_1)
     with Size => 1;
   for WF60_BPELCD60_Field use
     (WF60_BPELCD60_Field_0 => 0,
      WF60_BPELCD60_Field_1 => 1);

   --  no description available
   type WF60_BPFLCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF60_BPFLCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF60_BPFLCD60_Field_1)
     with Size => 1;
   for WF60_BPFLCD60_Field use
     (WF60_BPFLCD60_Field_0 => 0,
      WF60_BPFLCD60_Field_1 => 1);

   --  no description available
   type WF60_BPGLCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF60_BPGLCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF60_BPGLCD60_Field_1)
     with Size => 1;
   for WF60_BPGLCD60_Field use
     (WF60_BPGLCD60_Field_0 => 0,
      WF60_BPGLCD60_Field_1 => 1);

   --  no description available
   type WF60_BPHLCD60_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF60_BPHLCD60_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF60_BPHLCD60_Field_1)
     with Size => 1;
   for WF60_BPHLCD60_Field use
     (WF60_BPHLCD60_Field_0 => 0,
      WF60_BPHLCD60_Field_1 => 1);

   --  LCD Waveform Register 60.
   type LCD_WF60_Register is record
      --  no description available
      BPALCD60 : WF60_BPALCD60_Field := NRF_SVD.LCD.WF60_BPALCD60_Field_0;
      --  no description available
      BPBLCD60 : WF60_BPBLCD60_Field := NRF_SVD.LCD.WF60_BPBLCD60_Field_0;
      --  no description available
      BPCLCD60 : WF60_BPCLCD60_Field := NRF_SVD.LCD.WF60_BPCLCD60_Field_0;
      --  no description available
      BPDLCD60 : WF60_BPDLCD60_Field := NRF_SVD.LCD.WF60_BPDLCD60_Field_0;
      --  no description available
      BPELCD60 : WF60_BPELCD60_Field := NRF_SVD.LCD.WF60_BPELCD60_Field_0;
      --  no description available
      BPFLCD60 : WF60_BPFLCD60_Field := NRF_SVD.LCD.WF60_BPFLCD60_Field_0;
      --  no description available
      BPGLCD60 : WF60_BPGLCD60_Field := NRF_SVD.LCD.WF60_BPGLCD60_Field_0;
      --  no description available
      BPHLCD60 : WF60_BPHLCD60_Field := NRF_SVD.LCD.WF60_BPHLCD60_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF60_Register use record
      BPALCD60 at 0 range 0 .. 0;
      BPBLCD60 at 0 range 1 .. 1;
      BPCLCD60 at 0 range 2 .. 2;
      BPDLCD60 at 0 range 3 .. 3;
      BPELCD60 at 0 range 4 .. 4;
      BPFLCD60 at 0 range 5 .. 5;
      BPGLCD60 at 0 range 6 .. 6;
      BPHLCD60 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF61_BPALCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF61_BPALCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF61_BPALCD61_Field_1)
     with Size => 1;
   for WF61_BPALCD61_Field use
     (WF61_BPALCD61_Field_0 => 0,
      WF61_BPALCD61_Field_1 => 1);

   --  no description available
   type WF61_BPBLCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF61_BPBLCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF61_BPBLCD61_Field_1)
     with Size => 1;
   for WF61_BPBLCD61_Field use
     (WF61_BPBLCD61_Field_0 => 0,
      WF61_BPBLCD61_Field_1 => 1);

   --  no description available
   type WF61_BPCLCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF61_BPCLCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF61_BPCLCD61_Field_1)
     with Size => 1;
   for WF61_BPCLCD61_Field use
     (WF61_BPCLCD61_Field_0 => 0,
      WF61_BPCLCD61_Field_1 => 1);

   --  no description available
   type WF61_BPDLCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF61_BPDLCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF61_BPDLCD61_Field_1)
     with Size => 1;
   for WF61_BPDLCD61_Field use
     (WF61_BPDLCD61_Field_0 => 0,
      WF61_BPDLCD61_Field_1 => 1);

   --  no description available
   type WF61_BPELCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF61_BPELCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF61_BPELCD61_Field_1)
     with Size => 1;
   for WF61_BPELCD61_Field use
     (WF61_BPELCD61_Field_0 => 0,
      WF61_BPELCD61_Field_1 => 1);

   --  no description available
   type WF61_BPFLCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF61_BPFLCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF61_BPFLCD61_Field_1)
     with Size => 1;
   for WF61_BPFLCD61_Field use
     (WF61_BPFLCD61_Field_0 => 0,
      WF61_BPFLCD61_Field_1 => 1);

   --  no description available
   type WF61_BPGLCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF61_BPGLCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF61_BPGLCD61_Field_1)
     with Size => 1;
   for WF61_BPGLCD61_Field use
     (WF61_BPGLCD61_Field_0 => 0,
      WF61_BPGLCD61_Field_1 => 1);

   --  no description available
   type WF61_BPHLCD61_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF61_BPHLCD61_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF61_BPHLCD61_Field_1)
     with Size => 1;
   for WF61_BPHLCD61_Field use
     (WF61_BPHLCD61_Field_0 => 0,
      WF61_BPHLCD61_Field_1 => 1);

   --  LCD Waveform Register 61.
   type LCD_WF61_Register is record
      --  no description available
      BPALCD61 : WF61_BPALCD61_Field := NRF_SVD.LCD.WF61_BPALCD61_Field_0;
      --  no description available
      BPBLCD61 : WF61_BPBLCD61_Field := NRF_SVD.LCD.WF61_BPBLCD61_Field_0;
      --  no description available
      BPCLCD61 : WF61_BPCLCD61_Field := NRF_SVD.LCD.WF61_BPCLCD61_Field_0;
      --  no description available
      BPDLCD61 : WF61_BPDLCD61_Field := NRF_SVD.LCD.WF61_BPDLCD61_Field_0;
      --  no description available
      BPELCD61 : WF61_BPELCD61_Field := NRF_SVD.LCD.WF61_BPELCD61_Field_0;
      --  no description available
      BPFLCD61 : WF61_BPFLCD61_Field := NRF_SVD.LCD.WF61_BPFLCD61_Field_0;
      --  no description available
      BPGLCD61 : WF61_BPGLCD61_Field := NRF_SVD.LCD.WF61_BPGLCD61_Field_0;
      --  no description available
      BPHLCD61 : WF61_BPHLCD61_Field := NRF_SVD.LCD.WF61_BPHLCD61_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF61_Register use record
      BPALCD61 at 0 range 0 .. 0;
      BPBLCD61 at 0 range 1 .. 1;
      BPCLCD61 at 0 range 2 .. 2;
      BPDLCD61 at 0 range 3 .. 3;
      BPELCD61 at 0 range 4 .. 4;
      BPFLCD61 at 0 range 5 .. 5;
      BPGLCD61 at 0 range 6 .. 6;
      BPHLCD61 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF62_BPALCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF62_BPALCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF62_BPALCD62_Field_1)
     with Size => 1;
   for WF62_BPALCD62_Field use
     (WF62_BPALCD62_Field_0 => 0,
      WF62_BPALCD62_Field_1 => 1);

   --  no description available
   type WF62_BPBLCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF62_BPBLCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF62_BPBLCD62_Field_1)
     with Size => 1;
   for WF62_BPBLCD62_Field use
     (WF62_BPBLCD62_Field_0 => 0,
      WF62_BPBLCD62_Field_1 => 1);

   --  no description available
   type WF62_BPCLCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF62_BPCLCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF62_BPCLCD62_Field_1)
     with Size => 1;
   for WF62_BPCLCD62_Field use
     (WF62_BPCLCD62_Field_0 => 0,
      WF62_BPCLCD62_Field_1 => 1);

   --  no description available
   type WF62_BPDLCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF62_BPDLCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF62_BPDLCD62_Field_1)
     with Size => 1;
   for WF62_BPDLCD62_Field use
     (WF62_BPDLCD62_Field_0 => 0,
      WF62_BPDLCD62_Field_1 => 1);

   --  no description available
   type WF62_BPELCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF62_BPELCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF62_BPELCD62_Field_1)
     with Size => 1;
   for WF62_BPELCD62_Field use
     (WF62_BPELCD62_Field_0 => 0,
      WF62_BPELCD62_Field_1 => 1);

   --  no description available
   type WF62_BPFLCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF62_BPFLCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF62_BPFLCD62_Field_1)
     with Size => 1;
   for WF62_BPFLCD62_Field use
     (WF62_BPFLCD62_Field_0 => 0,
      WF62_BPFLCD62_Field_1 => 1);

   --  no description available
   type WF62_BPGLCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF62_BPGLCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF62_BPGLCD62_Field_1)
     with Size => 1;
   for WF62_BPGLCD62_Field use
     (WF62_BPGLCD62_Field_0 => 0,
      WF62_BPGLCD62_Field_1 => 1);

   --  no description available
   type WF62_BPHLCD62_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF62_BPHLCD62_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF62_BPHLCD62_Field_1)
     with Size => 1;
   for WF62_BPHLCD62_Field use
     (WF62_BPHLCD62_Field_0 => 0,
      WF62_BPHLCD62_Field_1 => 1);

   --  LCD Waveform Register 62.
   type LCD_WF62_Register is record
      --  no description available
      BPALCD62 : WF62_BPALCD62_Field := NRF_SVD.LCD.WF62_BPALCD62_Field_0;
      --  no description available
      BPBLCD62 : WF62_BPBLCD62_Field := NRF_SVD.LCD.WF62_BPBLCD62_Field_0;
      --  no description available
      BPCLCD62 : WF62_BPCLCD62_Field := NRF_SVD.LCD.WF62_BPCLCD62_Field_0;
      --  no description available
      BPDLCD62 : WF62_BPDLCD62_Field := NRF_SVD.LCD.WF62_BPDLCD62_Field_0;
      --  no description available
      BPELCD62 : WF62_BPELCD62_Field := NRF_SVD.LCD.WF62_BPELCD62_Field_0;
      --  no description available
      BPFLCD62 : WF62_BPFLCD62_Field := NRF_SVD.LCD.WF62_BPFLCD62_Field_0;
      --  no description available
      BPGLCD62 : WF62_BPGLCD62_Field := NRF_SVD.LCD.WF62_BPGLCD62_Field_0;
      --  no description available
      BPHLCD62 : WF62_BPHLCD62_Field := NRF_SVD.LCD.WF62_BPHLCD62_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF62_Register use record
      BPALCD62 at 0 range 0 .. 0;
      BPBLCD62 at 0 range 1 .. 1;
      BPCLCD62 at 0 range 2 .. 2;
      BPDLCD62 at 0 range 3 .. 3;
      BPELCD62 at 0 range 4 .. 4;
      BPFLCD62 at 0 range 5 .. 5;
      BPGLCD62 at 0 range 6 .. 6;
      BPHLCD62 at 0 range 7 .. 7;
   end record;

   --  no description available
   type WF63_BPALCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase A
      WF63_BPALCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase A
      WF63_BPALCD63_Field_1)
     with Size => 1;
   for WF63_BPALCD63_Field use
     (WF63_BPALCD63_Field_0 => 0,
      WF63_BPALCD63_Field_1 => 1);

   --  no description available
   type WF63_BPBLCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase B
      WF63_BPBLCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase B
      WF63_BPBLCD63_Field_1)
     with Size => 1;
   for WF63_BPBLCD63_Field use
     (WF63_BPBLCD63_Field_0 => 0,
      WF63_BPBLCD63_Field_1 => 1);

   --  no description available
   type WF63_BPCLCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase C
      WF63_BPCLCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase C
      WF63_BPCLCD63_Field_1)
     with Size => 1;
   for WF63_BPCLCD63_Field use
     (WF63_BPCLCD63_Field_0 => 0,
      WF63_BPCLCD63_Field_1 => 1);

   --  no description available
   type WF63_BPDLCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase D
      WF63_BPDLCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase D
      WF63_BPDLCD63_Field_1)
     with Size => 1;
   for WF63_BPDLCD63_Field use
     (WF63_BPDLCD63_Field_0 => 0,
      WF63_BPDLCD63_Field_1 => 1);

   --  no description available
   type WF63_BPELCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase E
      WF63_BPELCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase E
      WF63_BPELCD63_Field_1)
     with Size => 1;
   for WF63_BPELCD63_Field use
     (WF63_BPELCD63_Field_0 => 0,
      WF63_BPELCD63_Field_1 => 1);

   --  no description available
   type WF63_BPFLCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase F
      WF63_BPFLCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase F
      WF63_BPFLCD63_Field_1)
     with Size => 1;
   for WF63_BPFLCD63_Field use
     (WF63_BPFLCD63_Field_0 => 0,
      WF63_BPFLCD63_Field_1 => 1);

   --  no description available
   type WF63_BPGLCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase G
      WF63_BPGLCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase G
      WF63_BPGLCD63_Field_1)
     with Size => 1;
   for WF63_BPGLCD63_Field use
     (WF63_BPGLCD63_Field_0 => 0,
      WF63_BPGLCD63_Field_1 => 1);

   --  no description available
   type WF63_BPHLCD63_Field is
     (
      --  LCD segment off or LCD backplane inactive for phase H
      WF63_BPHLCD63_Field_0,
      --  LCD segment on or LCD backplane active for phase H
      WF63_BPHLCD63_Field_1)
     with Size => 1;
   for WF63_BPHLCD63_Field use
     (WF63_BPHLCD63_Field_0 => 0,
      WF63_BPHLCD63_Field_1 => 1);

   --  LCD Waveform Register 63.
   type LCD_WF63_Register is record
      --  no description available
      BPALCD63 : WF63_BPALCD63_Field := NRF_SVD.LCD.WF63_BPALCD63_Field_0;
      --  no description available
      BPBLCD63 : WF63_BPBLCD63_Field := NRF_SVD.LCD.WF63_BPBLCD63_Field_0;
      --  no description available
      BPCLCD63 : WF63_BPCLCD63_Field := NRF_SVD.LCD.WF63_BPCLCD63_Field_0;
      --  no description available
      BPDLCD63 : WF63_BPDLCD63_Field := NRF_SVD.LCD.WF63_BPDLCD63_Field_0;
      --  no description available
      BPELCD63 : WF63_BPELCD63_Field := NRF_SVD.LCD.WF63_BPELCD63_Field_0;
      --  no description available
      BPFLCD63 : WF63_BPFLCD63_Field := NRF_SVD.LCD.WF63_BPFLCD63_Field_0;
      --  no description available
      BPGLCD63 : WF63_BPGLCD63_Field := NRF_SVD.LCD.WF63_BPGLCD63_Field_0;
      --  no description available
      BPHLCD63 : WF63_BPHLCD63_Field := NRF_SVD.LCD.WF63_BPHLCD63_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LCD_WF63_Register use record
      BPALCD63 at 0 range 0 .. 0;
      BPBLCD63 at 0 range 1 .. 1;
      BPCLCD63 at 0 range 2 .. 2;
      BPDLCD63 at 0 range 3 .. 3;
      BPELCD63 at 0 range 4 .. 4;
      BPFLCD63 at 0 range 5 .. 5;
      BPGLCD63 at 0 range 6 .. 6;
      BPHLCD63 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LCD_Disc is
     (
      LCD_Disc_3To0,
      LCD_Disc_0,
      LCD_Disc_7To4,
      LCD_Disc_4,
      LCD_Disc_11To8,
      LCD_Disc_8,
      LCD_Disc_5To12,
      LCD_Disc_2,
      LCD_Disc_9To16,
      LCD_Disc_6,
      LCD_Disc_3To20,
      LCD_Disc_7To24,
      LCD_Disc_31To28,
      LCD_Disc_28,
      LCD_Disc_5To32,
      LCD_Disc_9To36,
      LCD_Disc_3To40,
      LCD_Disc_7To44,
      LCD_Disc_51To48,
      LCD_Disc_48,
      LCD_Disc_5To52,
      LCD_Disc_9To56,
      LCD_Disc_3To60);

   --  Segment Liquid Crystal Display
   type LCD_Peripheral
     (Discriminent : LCD_Disc := LCD_Disc_3To0)
   is record
      --  LCD General Control Register
      GCR      : aliased LCD_GCR_Register;
      --  LCD Auxiliary Register
      AR       : aliased LCD_AR_Register;
      --  LCD Fault Detect Control Register
      FDCR     : aliased LCD_FDCR_Register;
      --  LCD Fault Detect Status Register
      FDSR     : aliased LCD_FDSR_Register;
      --  LCD Pin Enable register
      PEN      : aliased LCD_PEN_Registers;
      --  LCD Back Plane Enable register
      BPEN     : aliased LCD_BPEN_Registers;
      --  LCD Waveform Register 1.
      WF1      : aliased LCD_WF1_Register;
      --  LCD Waveform Register 2.
      WF2      : aliased LCD_WF2_Register;
      --  LCD Waveform Register 3.
      WF3      : aliased LCD_WF3_Register;
      --  LCD Waveform Register 5.
      WF5      : aliased LCD_WF5_Register;
      --  LCD Waveform Register 6.
      WF6      : aliased LCD_WF6_Register;
      --  LCD Waveform Register 7.
      WF7      : aliased LCD_WF7_Register;
      --  LCD Waveform Register 9.
      WF9      : aliased LCD_WF9_Register;
      --  LCD Waveform Register 10.
      WF10     : aliased LCD_WF10_Register;
      --  LCD Waveform Register 11.
      WF11     : aliased LCD_WF11_Register;
      --  LCD Waveform Register 13.
      WF13     : aliased LCD_WF13_Register;
      --  LCD Waveform Register 14.
      WF14     : aliased LCD_WF14_Register;
      --  LCD Waveform Register 15.
      WF15     : aliased LCD_WF15_Register;
      --  LCD Waveform Register 17.
      WF17     : aliased LCD_WF17_Register;
      --  LCD Waveform Register 18.
      WF18     : aliased LCD_WF18_Register;
      --  LCD Waveform Register 19.
      WF19     : aliased LCD_WF19_Register;
      --  LCD Waveform Register 21.
      WF21     : aliased LCD_WF21_Register;
      --  LCD Waveform Register 22.
      WF22     : aliased LCD_WF22_Register;
      --  LCD Waveform Register 23.
      WF23     : aliased LCD_WF23_Register;
      --  LCD Waveform Register 25.
      WF25     : aliased LCD_WF25_Register;
      --  LCD Waveform Register 26.
      WF26     : aliased LCD_WF26_Register;
      --  LCD Waveform Register 27.
      WF27     : aliased LCD_WF27_Register;
      --  LCD Waveform Register 29.
      WF29     : aliased LCD_WF29_Register;
      --  LCD Waveform Register 30.
      WF30     : aliased LCD_WF30_Register;
      --  LCD Waveform Register 31.
      WF31     : aliased LCD_WF31_Register;
      --  LCD Waveform Register 33.
      WF33     : aliased LCD_WF33_Register;
      --  LCD Waveform Register 34.
      WF34     : aliased LCD_WF34_Register;
      --  LCD Waveform Register 35.
      WF35     : aliased LCD_WF35_Register;
      --  LCD Waveform Register 37.
      WF37     : aliased LCD_WF37_Register;
      --  LCD Waveform Register 38.
      WF38     : aliased LCD_WF38_Register;
      --  LCD Waveform Register 39.
      WF39     : aliased LCD_WF39_Register;
      --  LCD Waveform Register 41.
      WF41     : aliased LCD_WF41_Register;
      --  LCD Waveform Register 42.
      WF42     : aliased LCD_WF42_Register;
      --  LCD Waveform Register 43.
      WF43     : aliased LCD_WF43_Register;
      --  LCD Waveform Register 45.
      WF45     : aliased LCD_WF45_Register;
      --  LCD Waveform Register 46.
      WF46     : aliased LCD_WF46_Register;
      --  LCD Waveform Register 47.
      WF47     : aliased LCD_WF47_Register;
      --  LCD Waveform Register 49.
      WF49     : aliased LCD_WF49_Register;
      --  LCD Waveform Register 50.
      WF50     : aliased LCD_WF50_Register;
      --  LCD Waveform Register 51.
      WF51     : aliased LCD_WF51_Register;
      --  LCD Waveform Register 53.
      WF53     : aliased LCD_WF53_Register;
      --  LCD Waveform Register 54.
      WF54     : aliased LCD_WF54_Register;
      --  LCD Waveform Register 55.
      WF55     : aliased LCD_WF55_Register;
      --  LCD Waveform Register 57.
      WF57     : aliased LCD_WF57_Register;
      --  LCD Waveform Register 58.
      WF58     : aliased LCD_WF58_Register;
      --  LCD Waveform Register 59.
      WF59     : aliased LCD_WF59_Register;
      --  LCD Waveform Register 61.
      WF61     : aliased LCD_WF61_Register;
      --  LCD Waveform Register 62.
      WF62     : aliased LCD_WF62_Register;
      --  LCD Waveform Register 63.
      WF63     : aliased LCD_WF63_Register;
      case Discriminent is
         when LCD_Disc_3To0 =>
            --  LCD Waveform register
            WF3TO0 : aliased LCD_WF3TO0_Register;
         when LCD_Disc_0 =>
            --  LCD Waveform Register 0.
            WF0 : aliased LCD_WF0_Register;
            --  LCD Waveform Register 20.
            WF20 : aliased LCD_WF20_Register;
            --  LCD Waveform Register 40.
            WF40 : aliased LCD_WF40_Register;
            --  LCD Waveform Register 60.
            WF60 : aliased LCD_WF60_Register;
         when LCD_Disc_7To4 =>
            --  LCD Waveform register
            WF7TO4 : aliased LCD_WF7TO4_Register;
         when LCD_Disc_4 =>
            --  LCD Waveform Register 4.
            WF4 : aliased LCD_WF4_Register;
            --  LCD Waveform Register 24.
            WF24 : aliased LCD_WF24_Register;
            --  LCD Waveform Register 44.
            WF44 : aliased LCD_WF44_Register;
         when LCD_Disc_11To8 =>
            --  LCD Waveform register
            WF11TO8 : aliased LCD_WF11TO8_Register;
         when LCD_Disc_8 =>
            --  LCD Waveform Register 8.
            WF8 : aliased LCD_WF8_Register;
         when LCD_Disc_5To12 =>
            --  LCD Waveform register
            WF15TO12 : aliased LCD_WF15TO12_Register;
         when LCD_Disc_2 =>
            --  LCD Waveform Register 12.
            WF12 : aliased LCD_WF12_Register;
            --  LCD Waveform Register 32.
            WF32 : aliased LCD_WF32_Register;
            --  LCD Waveform Register 52.
            WF52 : aliased LCD_WF52_Register;
         when LCD_Disc_9To16 =>
            --  LCD Waveform register
            WF19TO16 : aliased LCD_WF19TO16_Register;
         when LCD_Disc_6 =>
            --  LCD Waveform Register 16.
            WF16 : aliased LCD_WF16_Register;
            --  LCD Waveform Register 36.
            WF36 : aliased LCD_WF36_Register;
            --  LCD Waveform Register 56.
            WF56 : aliased LCD_WF56_Register;
         when LCD_Disc_3To20 =>
            --  LCD Waveform register
            WF23TO20 : aliased LCD_WF23TO20_Register;
         when LCD_Disc_7To24 =>
            --  LCD Waveform register
            WF27TO24 : aliased LCD_WF27TO24_Register;
         when LCD_Disc_31To28 =>
            --  LCD Waveform register
            WF31TO28 : aliased LCD_WF31TO28_Register;
         when LCD_Disc_28 =>
            --  LCD Waveform Register 28.
            WF28 : aliased LCD_WF28_Register;
         when LCD_Disc_5To32 =>
            --  LCD Waveform register
            WF35TO32 : aliased LCD_WF35TO32_Register;
         when LCD_Disc_9To36 =>
            --  LCD Waveform register
            WF39TO36 : aliased LCD_WF39TO36_Register;
         when LCD_Disc_3To40 =>
            --  LCD Waveform register
            WF43TO40 : aliased LCD_WF43TO40_Register;
         when LCD_Disc_7To44 =>
            --  LCD Waveform register
            WF47TO44 : aliased LCD_WF47TO44_Register;
         when LCD_Disc_51To48 =>
            --  LCD Waveform register
            WF51TO48 : aliased LCD_WF51TO48_Register;
         when LCD_Disc_48 =>
            --  LCD Waveform Register 48.
            WF48 : aliased LCD_WF48_Register;
         when LCD_Disc_5To52 =>
            --  LCD Waveform register
            WF55TO52 : aliased LCD_WF55TO52_Register;
         when LCD_Disc_9To56 =>
            --  LCD Waveform register
            WF59TO56 : aliased LCD_WF59TO56_Register;
         when LCD_Disc_3To60 =>
            --  LCD Waveform register
            WF63TO60 : aliased LCD_WF63TO60_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LCD_Peripheral use record
      GCR      at 16#0# range 0 .. 31;
      AR       at 16#4# range 0 .. 31;
      FDCR     at 16#8# range 0 .. 31;
      FDSR     at 16#C# range 0 .. 31;
      PEN      at 16#10# range 0 .. 63;
      BPEN     at 16#18# range 0 .. 63;
      WF1      at 16#21# range 0 .. 7;
      WF2      at 16#22# range 0 .. 7;
      WF3      at 16#23# range 0 .. 7;
      WF5      at 16#25# range 0 .. 7;
      WF6      at 16#26# range 0 .. 7;
      WF7      at 16#27# range 0 .. 7;
      WF9      at 16#29# range 0 .. 7;
      WF10     at 16#2A# range 0 .. 7;
      WF11     at 16#2B# range 0 .. 7;
      WF13     at 16#2D# range 0 .. 7;
      WF14     at 16#2E# range 0 .. 7;
      WF15     at 16#2F# range 0 .. 7;
      WF17     at 16#31# range 0 .. 7;
      WF18     at 16#32# range 0 .. 7;
      WF19     at 16#33# range 0 .. 7;
      WF21     at 16#35# range 0 .. 7;
      WF22     at 16#36# range 0 .. 7;
      WF23     at 16#37# range 0 .. 7;
      WF25     at 16#39# range 0 .. 7;
      WF26     at 16#3A# range 0 .. 7;
      WF27     at 16#3B# range 0 .. 7;
      WF29     at 16#3D# range 0 .. 7;
      WF30     at 16#3E# range 0 .. 7;
      WF31     at 16#3F# range 0 .. 7;
      WF33     at 16#41# range 0 .. 7;
      WF34     at 16#42# range 0 .. 7;
      WF35     at 16#43# range 0 .. 7;
      WF37     at 16#45# range 0 .. 7;
      WF38     at 16#46# range 0 .. 7;
      WF39     at 16#47# range 0 .. 7;
      WF41     at 16#49# range 0 .. 7;
      WF42     at 16#4A# range 0 .. 7;
      WF43     at 16#4B# range 0 .. 7;
      WF45     at 16#4D# range 0 .. 7;
      WF46     at 16#4E# range 0 .. 7;
      WF47     at 16#4F# range 0 .. 7;
      WF49     at 16#51# range 0 .. 7;
      WF50     at 16#52# range 0 .. 7;
      WF51     at 16#53# range 0 .. 7;
      WF53     at 16#55# range 0 .. 7;
      WF54     at 16#56# range 0 .. 7;
      WF55     at 16#57# range 0 .. 7;
      WF57     at 16#59# range 0 .. 7;
      WF58     at 16#5A# range 0 .. 7;
      WF59     at 16#5B# range 0 .. 7;
      WF61     at 16#5D# range 0 .. 7;
      WF62     at 16#5E# range 0 .. 7;
      WF63     at 16#5F# range 0 .. 7;
      WF3TO0   at 16#20# range 0 .. 31;
      WF0      at 16#20# range 0 .. 7;
      WF20     at 16#34# range 0 .. 7;
      WF40     at 16#48# range 0 .. 7;
      WF60     at 16#5C# range 0 .. 7;
      WF7TO4   at 16#24# range 0 .. 31;
      WF4      at 16#24# range 0 .. 7;
      WF24     at 16#38# range 0 .. 7;
      WF44     at 16#4C# range 0 .. 7;
      WF11TO8  at 16#28# range 0 .. 31;
      WF8      at 16#28# range 0 .. 7;
      WF15TO12 at 16#2C# range 0 .. 31;
      WF12     at 16#2C# range 0 .. 7;
      WF32     at 16#40# range 0 .. 7;
      WF52     at 16#54# range 0 .. 7;
      WF19TO16 at 16#30# range 0 .. 31;
      WF16     at 16#30# range 0 .. 7;
      WF36     at 16#44# range 0 .. 7;
      WF56     at 16#58# range 0 .. 7;
      WF23TO20 at 16#34# range 0 .. 31;
      WF27TO24 at 16#38# range 0 .. 31;
      WF31TO28 at 16#3C# range 0 .. 31;
      WF28     at 16#3C# range 0 .. 7;
      WF35TO32 at 16#40# range 0 .. 31;
      WF39TO36 at 16#44# range 0 .. 31;
      WF43TO40 at 16#48# range 0 .. 31;
      WF47TO44 at 16#4C# range 0 .. 31;
      WF51TO48 at 16#50# range 0 .. 31;
      WF48     at 16#50# range 0 .. 7;
      WF55TO52 at 16#54# range 0 .. 31;
      WF59TO56 at 16#58# range 0 .. 31;
      WF63TO60 at 16#5C# range 0 .. 31;
   end record;

   --  Segment Liquid Crystal Display
   LCD_Periph : aliased LCD_Peripheral
     with Import, Address => LCD_Base;

end NRF_SVD.LCD;
