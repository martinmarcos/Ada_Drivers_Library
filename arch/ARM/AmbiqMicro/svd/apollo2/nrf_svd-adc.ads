--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog Digital Converter Control
package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  This bit enables the ADC module. While the ADC is enabled, the ADCCFG
   --  and SLOT Configuration regsiter settings must remain stable and
   --  unchanged. All configuration register settings, slot configuration
   --  settings and window comparison settings should be written prior to
   --  setting the ADCEN bit to '1'.
   type CFG_ADCEN_Field is
     (
      --  Disable the ADC module. value.
      Dis,
      --  Enable the ADC module. value.
      En)
     with Size => 1;
   for CFG_ADCEN_Field use
     (Dis => 0,
      En => 1);

   --  This bit enables Repeating Scan Mode.
   type CFG_RPTEN_Field is
     (
      --  In Single Scan Mode, the ADC will complete a single scan upon each
      --  trigger event. value.
      Single_Scan,
      --  In Repeating Scan Mode, the ADC will complete it's first scan upon
      --  the initial trigger event and all subsequent scans will occur at
      --  regular intervals defined by the configuration programmed for the
      --  CTTMRA3 internal timer until the timer is disabled or the ADC is
      --  disabled. When disabling the ADC (setting ADCEN to '0'), the RPTEN
      --  bit should be cleared. value.
      Repeating_Scan)
     with Size => 1;
   for CFG_RPTEN_Field use
     (Single_Scan => 0,
      Repeating_Scan => 1);

   --  Select power mode to enter between active scans.
   type CFG_LPMODE_Field is
     (
      --  Low Power Mode 0. Leaves the ADC fully powered between scans with
      --  minimum latency between a trigger event and sample data collection.
      --  value.
      Mode0,
      --  Low Power Mode 1. Powers down all circuity and clocks associated with
      --  the ADC until the next trigger event. Between scans, the reference
      --  buffer requires up to 50us of delay from a scan trigger event before
      --  the conversion will commence while operating in this mode. value.
      Mode1)
     with Size => 1;
   for CFG_LPMODE_Field use
     (Mode0 => 0,
      Mode1 => 1);

   --  Clock mode register
   type CFG_CKMODE_Field is
     (
      --  Disable the clock between scans for LPMODE0. Set LPCKMODE to 0x1
      --  while configuring the ADC. value.
      Lpckmode,
      --  Low Latency Clock Mode. When set, HFRC and the adc_clk will remain on
      --  while in functioning in LPMODE0. value.
      Llckmode)
     with Size => 1;
   for CFG_CKMODE_Field use
     (Lpckmode => 0,
      Llckmode => 1);

   --  Select the ADC reference voltage.
   type CFG_REFSEL_Field is
     (
      --  Internal 2.0V Bandgap Reference Voltage value.
      Int2P0,
      --  Internal 1.5V Bandgap Reference Voltage value.
      Int1P5,
      --  Off Chip 2.0V Reference value.
      Ext2P0,
      --  Off Chip 1.5V Reference value.
      Ext1P5)
     with Size => 2;
   for CFG_REFSEL_Field use
     (Int2P0 => 0,
      Int1P5 => 1,
      Ext2P0 => 2,
      Ext1P5 => 3);

   --  Select the ADC trigger source.
   type CFG_TRIGSEL_Field is
     (
      --  Off chip External Trigger0 (ADC_ET0) value.
      Ext0,
      --  Off chip External Trigger1 (ADC_ET1) value.
      Ext1,
      --  Off chip External Trigger2 (ADC_ET2) value.
      Ext2,
      --  Off chip External Trigger3 (ADC_ET3) value.
      Ext3,
      --  Voltage Comparator Output value.
      Vcomp,
      --  Software Trigger value.
      Swt)
     with Size => 3;
   for CFG_TRIGSEL_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Vcomp => 4,
      Swt => 7);

   --  This bit selects the ADC trigger polarity for external off chip
   --  triggers.
   type CFG_TRIGPOL_Field is
     (
      --  Trigger on rising edge. value.
      Rising_Edge,
      --  Trigger on falling edge. value.
      Falling_Edge)
     with Size => 1;
   for CFG_TRIGPOL_Field use
     (Rising_Edge => 0,
      Falling_Edge => 1);

   --  Select the source and frequency for the ADC clock. All values not
   --  enumerated below are undefined.
   type CFG_CLKSEL_Field is
     (
      --  Off mode. The HFRC or HFRC_DIV2 clock must be selected for the ADC to
      --  function. The ADC controller automatically shuts off the clock in
      --  it's low power modes. When setting ADCEN to '0', the CLKSEL should
      --  remain set to one of the two clock selects for proper power down
      --  sequencing. value.
      Off,
      --  HFRC Core Clock Frequency value.
      Hfrc,
      --  HFRC Core Clock / 2 value.
      Hfrc_Div2)
     with Size => 2;
   for CFG_CLKSEL_Field use
     (Off => 0,
      Hfrc => 1,
      Hfrc_Div2 => 2);

   --  Configuration Register
   type CFG_Register is record
      --  This bit enables the ADC module. While the ADC is enabled, the ADCCFG
      --  and SLOT Configuration regsiter settings must remain stable and
      --  unchanged. All configuration register settings, slot configuration
      --  settings and window comparison settings should be written prior to
      --  setting the ADCEN bit to '1'.
      ADCEN          : CFG_ADCEN_Field := NRF_SVD.ADC.Dis;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  This bit enables Repeating Scan Mode.
      RPTEN          : CFG_RPTEN_Field := NRF_SVD.ADC.Single_Scan;
      --  Select power mode to enter between active scans.
      LPMODE         : CFG_LPMODE_Field := NRF_SVD.ADC.Mode0;
      --  Clock mode register
      CKMODE         : CFG_CKMODE_Field := NRF_SVD.ADC.Lpckmode;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Select the ADC reference voltage.
      REFSEL         : CFG_REFSEL_Field := NRF_SVD.ADC.Int2P0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Select the ADC trigger source.
      TRIGSEL        : CFG_TRIGSEL_Field := NRF_SVD.ADC.Ext0;
      --  This bit selects the ADC trigger polarity for external off chip
      --  triggers.
      TRIGPOL        : CFG_TRIGPOL_Field := NRF_SVD.ADC.Rising_Edge;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Select the source and frequency for the ADC clock. All values not
      --  enumerated below are undefined.
      CLKSEL         : CFG_CLKSEL_Field := NRF_SVD.ADC.Off;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      ADCEN          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RPTEN          at 0 range 2 .. 2;
      LPMODE         at 0 range 3 .. 3;
      CKMODE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      REFSEL         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      TRIGSEL        at 0 range 16 .. 18;
      TRIGPOL        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CLKSEL         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Indicates the power-status of the ADC.
   type STAT_PWDSTAT_Field is
     (
      --  Powered on. value.
      On,
      --  ADC Low Power Mode 1. value.
      Powered_Down)
     with Size => 1;
   for STAT_PWDSTAT_Field use
     (On => 0,
      Powered_Down => 1);

   --  ADC Power Status
   type STAT_Register is record
      --  Indicates the power-status of the ADC.
      PWDSTAT       : STAT_PWDSTAT_Field := NRF_SVD.ADC.On;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      PWDSTAT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Writing 0x37 to this register generates a software trigger.
   type SWT_SWT_Field is
     (
      --  Reset value for the field
      Swt_Swt_Field_Reset,
      --  Writing this value generates a software trigger. value.
      Gen_Sw_Trigger)
     with Size => 8;
   for SWT_SWT_Field use
     (Swt_Swt_Field_Reset => 0,
      Gen_Sw_Trigger => 55);

   --  Software trigger
   type SWT_Register is record
      --  Writing 0x37 to this register generates a software trigger.
      SWT           : SWT_SWT_Field := Swt_Swt_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWT_Register use record
      SWT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  This bit enables slot 0 for ADC conversions.
   type SL0CFG_SLEN0_Field is
     (
      --  Reset value for the field
      Sl0Cfg_Slen0_Field_Reset,
      --  Enable slot 0 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL0CFG_SLEN0_Field use
     (Sl0Cfg_Slen0_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 0.
   type SL0CFG_WCEN0_Field is
     (
      --  Reset value for the field
      Sl0Cfg_Wcen0_Field_Reset,
      --  Enable the window compare for slot 0. value.
      Wcen)
     with Size => 1;
   for SL0CFG_WCEN0_Field use
     (Sl0Cfg_Wcen0_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL0CFG_CHSEL0_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL0CFG_CHSEL0_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL0CFG_PRMODE0_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL0CFG_PRMODE0_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL0CFG_ADSEL0_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL0CFG_ADSEL0_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 0 Configuration Register
   type SL0CFG_Register is record
      --  This bit enables slot 0 for ADC conversions.
      SLEN0          : SL0CFG_SLEN0_Field := Sl0Cfg_Slen0_Field_Reset;
      --  This bit enables the window compare function for slot 0.
      WCEN0          : SL0CFG_WCEN0_Field := Sl0Cfg_Wcen0_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL0         : SL0CFG_CHSEL0_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE0        : SL0CFG_PRMODE0_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL0         : SL0CFG_ADSEL0_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL0CFG_Register use record
      SLEN0          at 0 range 0 .. 0;
      WCEN0          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL0         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE0        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL0         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 1 for ADC conversions.
   type SL1CFG_SLEN1_Field is
     (
      --  Reset value for the field
      Sl1Cfg_Slen1_Field_Reset,
      --  Enable slot 1 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL1CFG_SLEN1_Field use
     (Sl1Cfg_Slen1_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 1.
   type SL1CFG_WCEN1_Field is
     (
      --  Reset value for the field
      Sl1Cfg_Wcen1_Field_Reset,
      --  Enable the window compare for slot 1. value.
      Wcen)
     with Size => 1;
   for SL1CFG_WCEN1_Field use
     (Sl1Cfg_Wcen1_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL1CFG_CHSEL1_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL1CFG_CHSEL1_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL1CFG_PRMODE1_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL1CFG_PRMODE1_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL1CFG_ADSEL1_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL1CFG_ADSEL1_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 1 Configuration Register
   type SL1CFG_Register is record
      --  This bit enables slot 1 for ADC conversions.
      SLEN1          : SL1CFG_SLEN1_Field := Sl1Cfg_Slen1_Field_Reset;
      --  This bit enables the window compare function for slot 1.
      WCEN1          : SL1CFG_WCEN1_Field := Sl1Cfg_Wcen1_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL1         : SL1CFG_CHSEL1_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE1        : SL1CFG_PRMODE1_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL1         : SL1CFG_ADSEL1_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL1CFG_Register use record
      SLEN1          at 0 range 0 .. 0;
      WCEN1          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL1         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE1        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL1         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 2 for ADC conversions.
   type SL2CFG_SLEN2_Field is
     (
      --  Reset value for the field
      Sl2Cfg_Slen2_Field_Reset,
      --  Enable slot 2 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL2CFG_SLEN2_Field use
     (Sl2Cfg_Slen2_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 2.
   type SL2CFG_WCEN2_Field is
     (
      --  Reset value for the field
      Sl2Cfg_Wcen2_Field_Reset,
      --  Enable the window compare for slot 2. value.
      Wcen)
     with Size => 1;
   for SL2CFG_WCEN2_Field use
     (Sl2Cfg_Wcen2_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL2CFG_CHSEL2_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL2CFG_CHSEL2_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL2CFG_PRMODE2_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL2CFG_PRMODE2_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL2CFG_ADSEL2_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL2CFG_ADSEL2_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 2 Configuration Register
   type SL2CFG_Register is record
      --  This bit enables slot 2 for ADC conversions.
      SLEN2          : SL2CFG_SLEN2_Field := Sl2Cfg_Slen2_Field_Reset;
      --  This bit enables the window compare function for slot 2.
      WCEN2          : SL2CFG_WCEN2_Field := Sl2Cfg_Wcen2_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL2         : SL2CFG_CHSEL2_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE2        : SL2CFG_PRMODE2_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL2         : SL2CFG_ADSEL2_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL2CFG_Register use record
      SLEN2          at 0 range 0 .. 0;
      WCEN2          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL2         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE2        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL2         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 3 for ADC conversions.
   type SL3CFG_SLEN3_Field is
     (
      --  Reset value for the field
      Sl3Cfg_Slen3_Field_Reset,
      --  Enable slot 3 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL3CFG_SLEN3_Field use
     (Sl3Cfg_Slen3_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 3.
   type SL3CFG_WCEN3_Field is
     (
      --  Reset value for the field
      Sl3Cfg_Wcen3_Field_Reset,
      --  Enable the window compare for slot 3. value.
      Wcen)
     with Size => 1;
   for SL3CFG_WCEN3_Field use
     (Sl3Cfg_Wcen3_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL3CFG_CHSEL3_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL3CFG_CHSEL3_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL3CFG_PRMODE3_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL3CFG_PRMODE3_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL3CFG_ADSEL3_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL3CFG_ADSEL3_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 3 Configuration Register
   type SL3CFG_Register is record
      --  This bit enables slot 3 for ADC conversions.
      SLEN3          : SL3CFG_SLEN3_Field := Sl3Cfg_Slen3_Field_Reset;
      --  This bit enables the window compare function for slot 3.
      WCEN3          : SL3CFG_WCEN3_Field := Sl3Cfg_Wcen3_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL3         : SL3CFG_CHSEL3_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE3        : SL3CFG_PRMODE3_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL3         : SL3CFG_ADSEL3_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL3CFG_Register use record
      SLEN3          at 0 range 0 .. 0;
      WCEN3          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL3         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE3        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL3         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 4 for ADC conversions.
   type SL4CFG_SLEN4_Field is
     (
      --  Reset value for the field
      Sl4Cfg_Slen4_Field_Reset,
      --  Enable slot 4 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL4CFG_SLEN4_Field use
     (Sl4Cfg_Slen4_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 4.
   type SL4CFG_WCEN4_Field is
     (
      --  Reset value for the field
      Sl4Cfg_Wcen4_Field_Reset,
      --  Enable the window compare for slot 4. value.
      Wcen)
     with Size => 1;
   for SL4CFG_WCEN4_Field use
     (Sl4Cfg_Wcen4_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL4CFG_CHSEL4_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL4CFG_CHSEL4_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL4CFG_PRMODE4_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL4CFG_PRMODE4_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL4CFG_ADSEL4_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL4CFG_ADSEL4_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 4 Configuration Register
   type SL4CFG_Register is record
      --  This bit enables slot 4 for ADC conversions.
      SLEN4          : SL4CFG_SLEN4_Field := Sl4Cfg_Slen4_Field_Reset;
      --  This bit enables the window compare function for slot 4.
      WCEN4          : SL4CFG_WCEN4_Field := Sl4Cfg_Wcen4_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL4         : SL4CFG_CHSEL4_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE4        : SL4CFG_PRMODE4_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL4         : SL4CFG_ADSEL4_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL4CFG_Register use record
      SLEN4          at 0 range 0 .. 0;
      WCEN4          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL4         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE4        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL4         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 5 for ADC conversions.
   type SL5CFG_SLEN5_Field is
     (
      --  Reset value for the field
      Sl5Cfg_Slen5_Field_Reset,
      --  Enable slot 5 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL5CFG_SLEN5_Field use
     (Sl5Cfg_Slen5_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 5.
   type SL5CFG_WCEN5_Field is
     (
      --  Reset value for the field
      Sl5Cfg_Wcen5_Field_Reset,
      --  Enable the window compare for slot 5. value.
      Wcen)
     with Size => 1;
   for SL5CFG_WCEN5_Field use
     (Sl5Cfg_Wcen5_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL5CFG_CHSEL5_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL5CFG_CHSEL5_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL5CFG_PRMODE5_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL5CFG_PRMODE5_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select number of measurements to average in the accumulate divide module
   --  for this slot.
   type SL5CFG_ADSEL5_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL5CFG_ADSEL5_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 5 Configuration Register
   type SL5CFG_Register is record
      --  This bit enables slot 5 for ADC conversions.
      SLEN5          : SL5CFG_SLEN5_Field := Sl5Cfg_Slen5_Field_Reset;
      --  This bit enables the window compare function for slot 5.
      WCEN5          : SL5CFG_WCEN5_Field := Sl5Cfg_Wcen5_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL5         : SL5CFG_CHSEL5_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE5        : SL5CFG_PRMODE5_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL5         : SL5CFG_ADSEL5_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL5CFG_Register use record
      SLEN5          at 0 range 0 .. 0;
      WCEN5          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL5         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE5        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL5         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 6 for ADC conversions.
   type SL6CFG_SLEN6_Field is
     (
      --  Reset value for the field
      Sl6Cfg_Slen6_Field_Reset,
      --  Enable slot 6 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL6CFG_SLEN6_Field use
     (Sl6Cfg_Slen6_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 6.
   type SL6CFG_WCEN6_Field is
     (
      --  Reset value for the field
      Sl6Cfg_Wcen6_Field_Reset,
      --  Enable the window compare for slot 6. value.
      Wcen)
     with Size => 1;
   for SL6CFG_WCEN6_Field use
     (Sl6Cfg_Wcen6_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL6CFG_CHSEL6_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL6CFG_CHSEL6_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL6CFG_PRMODE6_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL6CFG_PRMODE6_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL6CFG_ADSEL6_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL6CFG_ADSEL6_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 6 Configuration Register
   type SL6CFG_Register is record
      --  This bit enables slot 6 for ADC conversions.
      SLEN6          : SL6CFG_SLEN6_Field := Sl6Cfg_Slen6_Field_Reset;
      --  This bit enables the window compare function for slot 6.
      WCEN6          : SL6CFG_WCEN6_Field := Sl6Cfg_Wcen6_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL6         : SL6CFG_CHSEL6_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE6        : SL6CFG_PRMODE6_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL6         : SL6CFG_ADSEL6_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL6CFG_Register use record
      SLEN6          at 0 range 0 .. 0;
      WCEN6          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL6         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE6        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL6         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  This bit enables slot 7 for ADC conversions.
   type SL7CFG_SLEN7_Field is
     (
      --  Reset value for the field
      Sl7Cfg_Slen7_Field_Reset,
      --  Enable slot 7 for ADC conversions. value.
      Slen)
     with Size => 1;
   for SL7CFG_SLEN7_Field use
     (Sl7Cfg_Slen7_Field_Reset => 0,
      Slen => 1);

   --  This bit enables the window compare function for slot 7.
   type SL7CFG_WCEN7_Field is
     (
      --  Reset value for the field
      Sl7Cfg_Wcen7_Field_Reset,
      --  Enable the window compare for slot 7. value.
      Wcen)
     with Size => 1;
   for SL7CFG_WCEN7_Field use
     (Sl7Cfg_Wcen7_Field_Reset => 0,
      Wcen => 1);

   --  Select one of the 14 channel inputs for this slot.
   type SL7CFG_CHSEL7_Field is
     (
      --  single ended external GPIO connection to pad16. value.
      Se0,
      --  single ended external GPIO connection to pad29. value.
      Se1,
      --  single ended external GPIO connection to pad11. value.
      Se2,
      --  single ended external GPIO connection to pad31. value.
      Se3,
      --  single ended external GPIO connection to pad32. value.
      Se4,
      --  single ended external GPIO connection to pad33. value.
      Se5,
      --  single ended external GPIO connection to pad34. value.
      Se6,
      --  single ended external GPIO connection to pad35. value.
      Se7,
      --  single ended external GPIO connection to pad13. value.
      Se8,
      --  single ended external GPIO connection to pad12. value.
      Se9,
      --  differential external GPIO connections to pad12(N) and pad13(P).
      --  value.
      Df0,
      --  differential external GPIO connections to pad15(N) and pad14(P).
      --  value.
      Df1,
      --  internal temperature sensor. value.
      Temp,
      --  internal voltage divide-by-3 connection. value.
      Batt,
      --  Input VSS value.
      Vss)
     with Size => 4;
   for SL7CFG_CHSEL7_Field use
     (Se0 => 0,
      Se1 => 1,
      Se2 => 2,
      Se3 => 3,
      Se4 => 4,
      Se5 => 5,
      Se6 => 6,
      Se7 => 7,
      Se8 => 8,
      Se9 => 9,
      Df0 => 10,
      Df1 => 11,
      Temp => 12,
      Batt => 13,
      Vss => 14);

   --  Set the Precision Mode For Slot.
   type SL7CFG_PRMODE7_Field is
     (
      --  14-bit precision mode value.
      P14B,
      --  12-bit precision mode value.
      P12B,
      --  10-bit precision mode value.
      P10B,
      --  8-bit precision mode value.
      P8B)
     with Size => 2;
   for SL7CFG_PRMODE7_Field use
     (P14B => 0,
      P12B => 1,
      P10B => 2,
      P8B => 3);

   --  Select the number of measurements to average in the accumulate divide
   --  module for this slot.
   type SL7CFG_ADSEL7_Field is
     (
      --  Average in 1 measurement in the accumulate divide module for this
      --  slot. value.
      Avg_1_Msrmt,
      --  Average in 2 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_2_Msrmts,
      --  Average in 4 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_4_Msrmts,
      --  Average in 8 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_8_Msrmt,
      --  Average in 16 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_16_Msrmts,
      --  Average in 32 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_32_Msrmts,
      --  Average in 64 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_64_Msrmts,
      --  Average in 128 measurements in the accumulate divide module for this
      --  slot. value.
      Avg_128_Msrmts)
     with Size => 3;
   for SL7CFG_ADSEL7_Field use
     (Avg_1_Msrmt => 0,
      Avg_2_Msrmts => 1,
      Avg_4_Msrmts => 2,
      Avg_8_Msrmt => 3,
      Avg_16_Msrmts => 4,
      Avg_32_Msrmts => 5,
      Avg_64_Msrmts => 6,
      Avg_128_Msrmts => 7);

   --  Slot 7 Configuration Register
   type SL7CFG_Register is record
      --  This bit enables slot 7 for ADC conversions.
      SLEN7          : SL7CFG_SLEN7_Field := Sl7Cfg_Slen7_Field_Reset;
      --  This bit enables the window compare function for slot 7.
      WCEN7          : SL7CFG_WCEN7_Field := Sl7Cfg_Wcen7_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Select one of the 14 channel inputs for this slot.
      CHSEL7         : SL7CFG_CHSEL7_Field := NRF_SVD.ADC.Se0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set the Precision Mode For Slot.
      PRMODE7        : SL7CFG_PRMODE7_Field := NRF_SVD.ADC.P14B;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Select the number of measurements to average in the accumulate divide
      --  module for this slot.
      ADSEL7         : SL7CFG_ADSEL7_Field := NRF_SVD.ADC.Avg_1_Msrmt;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SL7CFG_Register use record
      SLEN7          at 0 range 0 .. 0;
      WCEN7          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CHSEL7         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PRMODE7        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ADSEL7         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype WULIM_ULIM_Field is HAL.UInt20;

   --  Window Comparator Upper Limits Register
   type WULIM_Register is record
      --  Sets the upper limit for the wondow comparator.
      ULIM           : WULIM_ULIM_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WULIM_Register use record
      ULIM           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype WLLIM_LLIM_Field is HAL.UInt20;

   --  Window Comparator Lower Limits Register
   type WLLIM_Register is record
      --  Sets the lower limit for the wondow comparator.
      LLIM           : WLLIM_LLIM_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WLLIM_Register use record
      LLIM           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FIFO_DATA_Field is HAL.UInt20;
   subtype FIFO_COUNT_Field is HAL.UInt8;
   subtype FIFO_SLOTNUM_Field is HAL.UInt3;

   --  FIFO Data and Valid Count Register
   type FIFO_Register is record
      --  Oldest data in the FIFO.
      DATA    : FIFO_DATA_Field := 16#0#;
      --  Number of valid entries in the ADC FIFO.
      COUNT   : FIFO_COUNT_Field := 16#0#;
      --  Slot number associated with this FIFO data.
      SLOTNUM : FIFO_SLOTNUM_Field := 16#0#;
      --  RESERVED.
      RSVD    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_Register use record
      DATA    at 0 range 0 .. 19;
      COUNT   at 0 range 20 .. 27;
      SLOTNUM at 0 range 28 .. 30;
      RSVD    at 0 range 31 .. 31;
   end record;

   --  ADC conversion complete interrupt.
   type INTEN_CNVCMP_Field is
     (
      --  Reset value for the field
      Inten_Cnvcmp_Field_Reset,
      --  ADC conversion complete interrupt. value.
      Cnvcmpint)
     with Size => 1;
   for INTEN_CNVCMP_Field use
     (Inten_Cnvcmp_Field_Reset => 0,
      Cnvcmpint => 1);

   --  ADC scan complete interrupt.
   type INTEN_SCNCMP_Field is
     (
      --  Reset value for the field
      Inten_Scncmp_Field_Reset,
      --  ADC scan complete interrupt. value.
      Scncmpint)
     with Size => 1;
   for INTEN_SCNCMP_Field use
     (Inten_Scncmp_Field_Reset => 0,
      Scncmpint => 1);

   --  FIFO 75 percent full interrupt.
   type INTEN_FIFOOVR1_Field is
     (
      --  Reset value for the field
      Inten_Fifoovr1_Field_Reset,
      --  FIFO 75 percent full interrupt. value.
      Fifo75Int)
     with Size => 1;
   for INTEN_FIFOOVR1_Field use
     (Inten_Fifoovr1_Field_Reset => 0,
      Fifo75Int => 1);

   --  FIFO 100 percent full interrupt.
   type INTEN_FIFOOVR2_Field is
     (
      --  Reset value for the field
      Inten_Fifoovr2_Field_Reset,
      --  FIFO 100 percent full interrupt. value.
      Fifofullint)
     with Size => 1;
   for INTEN_FIFOOVR2_Field use
     (Inten_Fifoovr2_Field_Reset => 0,
      Fifofullint => 1);

   --  Window comparator voltage excursion interrupt.
   type INTEN_WCEXC_Field is
     (
      --  Reset value for the field
      Inten_Wcexc_Field_Reset,
      --  Window comparitor voltage excursion interrupt. value.
      Wcexcint)
     with Size => 1;
   for INTEN_WCEXC_Field use
     (Inten_Wcexc_Field_Reset => 0,
      Wcexcint => 1);

   --  Window comparator voltage incursion interrupt.
   type INTEN_WCINC_Field is
     (
      --  Reset value for the field
      Inten_Wcinc_Field_Reset,
      --  Window comparitor voltage incursion interrupt. value.
      Wcincint)
     with Size => 1;
   for INTEN_WCINC_Field use
     (Inten_Wcinc_Field_Reset => 0,
      Wcincint => 1);

   --  ADC Interrupt registers: Enable
   type INTEN_Register is record
      --  ADC conversion complete interrupt.
      CNVCMP        : INTEN_CNVCMP_Field := Inten_Cnvcmp_Field_Reset;
      --  ADC scan complete interrupt.
      SCNCMP        : INTEN_SCNCMP_Field := Inten_Scncmp_Field_Reset;
      --  FIFO 75 percent full interrupt.
      FIFOOVR1      : INTEN_FIFOOVR1_Field := Inten_Fifoovr1_Field_Reset;
      --  FIFO 100 percent full interrupt.
      FIFOOVR2      : INTEN_FIFOOVR2_Field := Inten_Fifoovr2_Field_Reset;
      --  Window comparator voltage excursion interrupt.
      WCEXC         : INTEN_WCEXC_Field := Inten_Wcexc_Field_Reset;
      --  Window comparator voltage incursion interrupt.
      WCINC         : INTEN_WCINC_Field := Inten_Wcinc_Field_Reset;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      CNVCMP        at 0 range 0 .. 0;
      SCNCMP        at 0 range 1 .. 1;
      FIFOOVR1      at 0 range 2 .. 2;
      FIFOOVR2      at 0 range 3 .. 3;
      WCEXC         at 0 range 4 .. 4;
      WCINC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  ADC conversion complete interrupt.
   type INTSTAT_CNVCMP_Field is
     (
      --  Reset value for the field
      Intstat_Cnvcmp_Field_Reset,
      --  ADC conversion complete interrupt. value.
      Cnvcmpint)
     with Size => 1;
   for INTSTAT_CNVCMP_Field use
     (Intstat_Cnvcmp_Field_Reset => 0,
      Cnvcmpint => 1);

   --  ADC scan complete interrupt.
   type INTSTAT_SCNCMP_Field is
     (
      --  Reset value for the field
      Intstat_Scncmp_Field_Reset,
      --  ADC scan complete interrupt. value.
      Scncmpint)
     with Size => 1;
   for INTSTAT_SCNCMP_Field use
     (Intstat_Scncmp_Field_Reset => 0,
      Scncmpint => 1);

   --  FIFO 75 percent full interrupt.
   type INTSTAT_FIFOOVR1_Field is
     (
      --  Reset value for the field
      Intstat_Fifoovr1_Field_Reset,
      --  FIFO 75 percent full interrupt. value.
      Fifo75Int)
     with Size => 1;
   for INTSTAT_FIFOOVR1_Field use
     (Intstat_Fifoovr1_Field_Reset => 0,
      Fifo75Int => 1);

   --  FIFO 100 percent full interrupt.
   type INTSTAT_FIFOOVR2_Field is
     (
      --  Reset value for the field
      Intstat_Fifoovr2_Field_Reset,
      --  FIFO 100 percent full interrupt. value.
      Fifofullint)
     with Size => 1;
   for INTSTAT_FIFOOVR2_Field use
     (Intstat_Fifoovr2_Field_Reset => 0,
      Fifofullint => 1);

   --  Window comparator voltage excursion interrupt.
   type INTSTAT_WCEXC_Field is
     (
      --  Reset value for the field
      Intstat_Wcexc_Field_Reset,
      --  Window comparitor voltage excursion interrupt. value.
      Wcexcint)
     with Size => 1;
   for INTSTAT_WCEXC_Field use
     (Intstat_Wcexc_Field_Reset => 0,
      Wcexcint => 1);

   --  Window comparator voltage incursion interrupt.
   type INTSTAT_WCINC_Field is
     (
      --  Reset value for the field
      Intstat_Wcinc_Field_Reset,
      --  Window comparitor voltage incursion interrupt. value.
      Wcincint)
     with Size => 1;
   for INTSTAT_WCINC_Field use
     (Intstat_Wcinc_Field_Reset => 0,
      Wcincint => 1);

   --  ADC Interrupt registers: Status
   type INTSTAT_Register is record
      --  ADC conversion complete interrupt.
      CNVCMP        : INTSTAT_CNVCMP_Field := Intstat_Cnvcmp_Field_Reset;
      --  ADC scan complete interrupt.
      SCNCMP        : INTSTAT_SCNCMP_Field := Intstat_Scncmp_Field_Reset;
      --  FIFO 75 percent full interrupt.
      FIFOOVR1      : INTSTAT_FIFOOVR1_Field := Intstat_Fifoovr1_Field_Reset;
      --  FIFO 100 percent full interrupt.
      FIFOOVR2      : INTSTAT_FIFOOVR2_Field := Intstat_Fifoovr2_Field_Reset;
      --  Window comparator voltage excursion interrupt.
      WCEXC         : INTSTAT_WCEXC_Field := Intstat_Wcexc_Field_Reset;
      --  Window comparator voltage incursion interrupt.
      WCINC         : INTSTAT_WCINC_Field := Intstat_Wcinc_Field_Reset;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      CNVCMP        at 0 range 0 .. 0;
      SCNCMP        at 0 range 1 .. 1;
      FIFOOVR1      at 0 range 2 .. 2;
      FIFOOVR2      at 0 range 3 .. 3;
      WCEXC         at 0 range 4 .. 4;
      WCINC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  ADC conversion complete interrupt.
   type INTCLR_CNVCMP_Field is
     (
      --  Reset value for the field
      Intclr_Cnvcmp_Field_Reset,
      --  ADC conversion complete interrupt. value.
      Cnvcmpint)
     with Size => 1;
   for INTCLR_CNVCMP_Field use
     (Intclr_Cnvcmp_Field_Reset => 0,
      Cnvcmpint => 1);

   --  ADC scan complete interrupt.
   type INTCLR_SCNCMP_Field is
     (
      --  Reset value for the field
      Intclr_Scncmp_Field_Reset,
      --  ADC scan complete interrupt. value.
      Scncmpint)
     with Size => 1;
   for INTCLR_SCNCMP_Field use
     (Intclr_Scncmp_Field_Reset => 0,
      Scncmpint => 1);

   --  FIFO 75 percent full interrupt.
   type INTCLR_FIFOOVR1_Field is
     (
      --  Reset value for the field
      Intclr_Fifoovr1_Field_Reset,
      --  FIFO 75 percent full interrupt. value.
      Fifo75Int)
     with Size => 1;
   for INTCLR_FIFOOVR1_Field use
     (Intclr_Fifoovr1_Field_Reset => 0,
      Fifo75Int => 1);

   --  FIFO 100 percent full interrupt.
   type INTCLR_FIFOOVR2_Field is
     (
      --  Reset value for the field
      Intclr_Fifoovr2_Field_Reset,
      --  FIFO 100 percent full interrupt. value.
      Fifofullint)
     with Size => 1;
   for INTCLR_FIFOOVR2_Field use
     (Intclr_Fifoovr2_Field_Reset => 0,
      Fifofullint => 1);

   --  Window comparator voltage excursion interrupt.
   type INTCLR_WCEXC_Field is
     (
      --  Reset value for the field
      Intclr_Wcexc_Field_Reset,
      --  Window comparitor voltage excursion interrupt. value.
      Wcexcint)
     with Size => 1;
   for INTCLR_WCEXC_Field use
     (Intclr_Wcexc_Field_Reset => 0,
      Wcexcint => 1);

   --  Window comparator voltage incursion interrupt.
   type INTCLR_WCINC_Field is
     (
      --  Reset value for the field
      Intclr_Wcinc_Field_Reset,
      --  Window comparitor voltage incursion interrupt. value.
      Wcincint)
     with Size => 1;
   for INTCLR_WCINC_Field use
     (Intclr_Wcinc_Field_Reset => 0,
      Wcincint => 1);

   --  ADC Interrupt registers: Clear
   type INTCLR_Register is record
      --  ADC conversion complete interrupt.
      CNVCMP        : INTCLR_CNVCMP_Field := Intclr_Cnvcmp_Field_Reset;
      --  ADC scan complete interrupt.
      SCNCMP        : INTCLR_SCNCMP_Field := Intclr_Scncmp_Field_Reset;
      --  FIFO 75 percent full interrupt.
      FIFOOVR1      : INTCLR_FIFOOVR1_Field := Intclr_Fifoovr1_Field_Reset;
      --  FIFO 100 percent full interrupt.
      FIFOOVR2      : INTCLR_FIFOOVR2_Field := Intclr_Fifoovr2_Field_Reset;
      --  Window comparator voltage excursion interrupt.
      WCEXC         : INTCLR_WCEXC_Field := Intclr_Wcexc_Field_Reset;
      --  Window comparator voltage incursion interrupt.
      WCINC         : INTCLR_WCINC_Field := Intclr_Wcinc_Field_Reset;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      CNVCMP        at 0 range 0 .. 0;
      SCNCMP        at 0 range 1 .. 1;
      FIFOOVR1      at 0 range 2 .. 2;
      FIFOOVR2      at 0 range 3 .. 3;
      WCEXC         at 0 range 4 .. 4;
      WCINC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  ADC conversion complete interrupt.
   type INTSET_CNVCMP_Field is
     (
      --  Reset value for the field
      Intset_Cnvcmp_Field_Reset,
      --  ADC conversion complete interrupt. value.
      Cnvcmpint)
     with Size => 1;
   for INTSET_CNVCMP_Field use
     (Intset_Cnvcmp_Field_Reset => 0,
      Cnvcmpint => 1);

   --  ADC scan complete interrupt.
   type INTSET_SCNCMP_Field is
     (
      --  Reset value for the field
      Intset_Scncmp_Field_Reset,
      --  ADC scan complete interrupt. value.
      Scncmpint)
     with Size => 1;
   for INTSET_SCNCMP_Field use
     (Intset_Scncmp_Field_Reset => 0,
      Scncmpint => 1);

   --  FIFO 75 percent full interrupt.
   type INTSET_FIFOOVR1_Field is
     (
      --  Reset value for the field
      Intset_Fifoovr1_Field_Reset,
      --  FIFO 75 percent full interrupt. value.
      Fifo75Int)
     with Size => 1;
   for INTSET_FIFOOVR1_Field use
     (Intset_Fifoovr1_Field_Reset => 0,
      Fifo75Int => 1);

   --  FIFO 100 percent full interrupt.
   type INTSET_FIFOOVR2_Field is
     (
      --  Reset value for the field
      Intset_Fifoovr2_Field_Reset,
      --  FIFO 100 percent full interrupt. value.
      Fifofullint)
     with Size => 1;
   for INTSET_FIFOOVR2_Field use
     (Intset_Fifoovr2_Field_Reset => 0,
      Fifofullint => 1);

   --  Window comparator voltage excursion interrupt.
   type INTSET_WCEXC_Field is
     (
      --  Reset value for the field
      Intset_Wcexc_Field_Reset,
      --  Window comparitor voltage excursion interrupt. value.
      Wcexcint)
     with Size => 1;
   for INTSET_WCEXC_Field use
     (Intset_Wcexc_Field_Reset => 0,
      Wcexcint => 1);

   --  Window comparator voltage incursion interrupt.
   type INTSET_WCINC_Field is
     (
      --  Reset value for the field
      Intset_Wcinc_Field_Reset,
      --  Window comparitor voltage incursion interrupt. value.
      Wcincint)
     with Size => 1;
   for INTSET_WCINC_Field use
     (Intset_Wcinc_Field_Reset => 0,
      Wcincint => 1);

   --  ADC Interrupt registers: Set
   type INTSET_Register is record
      --  ADC conversion complete interrupt.
      CNVCMP        : INTSET_CNVCMP_Field := Intset_Cnvcmp_Field_Reset;
      --  ADC scan complete interrupt.
      SCNCMP        : INTSET_SCNCMP_Field := Intset_Scncmp_Field_Reset;
      --  FIFO 75 percent full interrupt.
      FIFOOVR1      : INTSET_FIFOOVR1_Field := Intset_Fifoovr1_Field_Reset;
      --  FIFO 100 percent full interrupt.
      FIFOOVR2      : INTSET_FIFOOVR2_Field := Intset_Fifoovr2_Field_Reset;
      --  Window comparator voltage excursion interrupt.
      WCEXC         : INTSET_WCEXC_Field := Intset_Wcexc_Field_Reset;
      --  Window comparator voltage incursion interrupt.
      WCINC         : INTSET_WCINC_Field := Intset_Wcinc_Field_Reset;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      CNVCMP        at 0 range 0 .. 0;
      SCNCMP        at 0 range 1 .. 1;
      FIFOOVR1      at 0 range 2 .. 2;
      FIFOOVR2      at 0 range 3 .. 3;
      WCEXC         at 0 range 4 .. 4;
      WCINC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Digital Converter Control
   type ADC_Peripheral is record
      --  Configuration Register
      CFG     : aliased CFG_Register;
      --  ADC Power Status
      STAT    : aliased STAT_Register;
      --  Software trigger
      SWT     : aliased SWT_Register;
      --  Slot 0 Configuration Register
      SL0CFG  : aliased SL0CFG_Register;
      --  Slot 1 Configuration Register
      SL1CFG  : aliased SL1CFG_Register;
      --  Slot 2 Configuration Register
      SL2CFG  : aliased SL2CFG_Register;
      --  Slot 3 Configuration Register
      SL3CFG  : aliased SL3CFG_Register;
      --  Slot 4 Configuration Register
      SL4CFG  : aliased SL4CFG_Register;
      --  Slot 5 Configuration Register
      SL5CFG  : aliased SL5CFG_Register;
      --  Slot 6 Configuration Register
      SL6CFG  : aliased SL6CFG_Register;
      --  Slot 7 Configuration Register
      SL7CFG  : aliased SL7CFG_Register;
      --  Window Comparator Upper Limits Register
      WULIM   : aliased WULIM_Register;
      --  Window Comparator Lower Limits Register
      WLLIM   : aliased WLLIM_Register;
      --  FIFO Data and Valid Count Register
      FIFO    : aliased FIFO_Register;
      --  ADC Interrupt registers: Enable
      INTEN   : aliased INTEN_Register;
      --  ADC Interrupt registers: Status
      INTSTAT : aliased INTSTAT_Register;
      --  ADC Interrupt registers: Clear
      INTCLR  : aliased INTCLR_Register;
      --  ADC Interrupt registers: Set
      INTSET  : aliased INTSET_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CFG     at 16#0# range 0 .. 31;
      STAT    at 16#4# range 0 .. 31;
      SWT     at 16#8# range 0 .. 31;
      SL0CFG  at 16#C# range 0 .. 31;
      SL1CFG  at 16#10# range 0 .. 31;
      SL2CFG  at 16#14# range 0 .. 31;
      SL3CFG  at 16#18# range 0 .. 31;
      SL4CFG  at 16#1C# range 0 .. 31;
      SL5CFG  at 16#20# range 0 .. 31;
      SL6CFG  at 16#24# range 0 .. 31;
      SL7CFG  at 16#28# range 0 .. 31;
      WULIM   at 16#2C# range 0 .. 31;
      WLLIM   at 16#30# range 0 .. 31;
      FIFO    at 16#38# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  Analog Digital Converter Control
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end NRF_SVD.ADC;
