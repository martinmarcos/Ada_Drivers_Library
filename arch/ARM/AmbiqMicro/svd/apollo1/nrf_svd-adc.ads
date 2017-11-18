--

--  This spec has been automatically generated from apollo1.svd

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
   --  unchanged.
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

   --  This enables power to the temperature sensor module. After setting this
   --  bit, the temperature sensor will remain powered down while the ADC is
   --  power is disconnected (i.e, when the ADC PWDSTAT is 2'b10).
   type CFG_TMPSPWR_Field is
     (
      --  Power down the temperature sensor. value.
      Dis,
      --  Enable the temperature sensor when the ADC is in it's active state.
      --  value.
      En)
     with Size => 1;
   for CFG_TMPSPWR_Field use
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
      --  disabled. value.
      Repeating_Scan)
     with Size => 1;
   for CFG_RPTEN_Field use
     (Single_Scan => 0,
      Repeating_Scan => 1);

   --  Select power mode to enter between active scans.
   type CFG_LPMODE_Field is
     (
      --  Low Power Mode 0 (2'b00). Leaves the ADC fully powered between scans
      --  with no latency between a trigger event and sample data collection.
      --  value.
      Mode0,
      --  Low Power Mode 1 (2'b01). Enables a low power mode for the ADC
      --  between scans requiring 50us initialization time (latency) between a
      --  trigger event and the scan (assuming the HFRC remains running and the
      --  MCU is not in deepsleep mode in which case additional startup latency
      --  for HFRC startup is required). value.
      Mode1,
      --  Low Power Mode 2 (2'b10). Disconnects power and clocks to the ADC
      --  effectively eliminating all active power associated with the ADC
      --  between scans. This mode requires 150us initialization (again,
      --  assuming the HFRC remains running and the MCU is not in deepsleep
      --  mode in which case additional startup latency for HFRC startup is
      --  required). value.
      Mode2,
      --  Undefined Mode (2'b11) value.
      Mode_Undefined)
     with Size => 2;
   for CFG_LPMODE_Field use
     (Mode0 => 0,
      Mode1 => 1,
      Mode2 => 2,
      Mode_Undefined => 3);

   --  Select the sample rate mode. It adjusts the current in the ADC for
   --  higher sample rates. A 12MHz ADC clock can result in a sample rate up to
   --  1Msps depending on the trigger or repeating mode rate. A 1.5MHz ADC
   --  clock can result in a sample rate up 125K sps. NOTE: All other values
   --  not specified below are undefined.
   type CFG_OPMODE_Field is
     (
      --  Sample Rate <= 125K sps value.
      Sample_Rate_Le_125Ksps,
      --  Sample Rate 125K to 1M sps value.
      Sample_Rate_125K_1Msps)
     with Size => 2;
   for CFG_OPMODE_Field use
     (Sample_Rate_Le_125Ksps => 0,
      Sample_Rate_125K_1Msps => 2);

   --  Control 500 Ohm battery load resistor.
   type CFG_BATTLOAD_Field is
     (
      --  Disable battery load. value.
      Dis,
      --  Enable battery load. value.
      En)
     with Size => 1;
   for CFG_BATTLOAD_Field use
     (Dis => 0,
      En => 1);

   --  Select the ADC reference voltage.
   type CFG_REFSEL_Field is
     (
      --  Internal Bandgap Reference Voltage value.
      Internal,
      --  Select VDD as the ADEC reference voltage. value.
      Vdd,
      --  Off Chip Reference (ADC_REF) value.
      Adcref,
      --  Reserved value.
      Undefined)
     with Size => 2;
   for CFG_REFSEL_Field use
     (Internal => 0,
      Vdd => 1,
      Adcref => 2,
      Undefined => 3);

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
      --  Off chip External Trigger4 (ADC_ET4) value.
      Ext4,
      --  Off chip External Trigger5 (ADC_ET5) value.
      Ext5,
      --  Off chip External Trigger6 (ADC_ET6) value.
      Ext6,
      --  Off chip External Trigger7 (ADC_ET7) value.
      Ext7,
      --  Software Trigger value.
      Swt)
     with Size => 4;
   for CFG_TRIGSEL_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Swt => 8);

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
      --  Low Power Mode. value.
      Off,
      --  12 MHz ADC clock. value.
      CFG_CLKSEL_Field_12Mhz,
      --  6 MHz ADC clock. value.
      CFG_CLKSEL_Field_6Mhz,
      --  12 MHz ADC clock. value.
      CFG_CLKSEL_Field_3Mhz,
      --  1.5 MHz ADC clock. value.
      CFG_CLKSEL_Field_1_5Mhz)
     with Size => 3;
   for CFG_CLKSEL_Field use
     (Off => 0,
      CFG_CLKSEL_Field_12Mhz => 1,
      CFG_CLKSEL_Field_6Mhz => 2,
      CFG_CLKSEL_Field_3Mhz => 3,
      CFG_CLKSEL_Field_1_5Mhz => 4);

   --  Configuration Register
   type CFG_Register is record
      --  This bit enables the ADC module. While the ADC is enabled, the ADCCFG
      --  and SLOT Configuration regsiter settings must remain stable and
      --  unchanged.
      ADCEN          : CFG_ADCEN_Field := NRF_SVD.ADC.Dis;
      --  This enables power to the temperature sensor module. After setting
      --  this bit, the temperature sensor will remain powered down while the
      --  ADC is power is disconnected (i.e, when the ADC PWDSTAT is 2'b10).
      TMPSPWR        : CFG_TMPSPWR_Field := NRF_SVD.ADC.Dis;
      --  This bit enables Repeating Scan Mode.
      RPTEN          : CFG_RPTEN_Field := NRF_SVD.ADC.Single_Scan;
      --  Select power mode to enter between active scans.
      LPMODE         : CFG_LPMODE_Field := NRF_SVD.ADC.Mode0;
      --  Select the sample rate mode. It adjusts the current in the ADC for
      --  higher sample rates. A 12MHz ADC clock can result in a sample rate up
      --  to 1Msps depending on the trigger or repeating mode rate. A 1.5MHz
      --  ADC clock can result in a sample rate up 125K sps. NOTE: All other
      --  values not specified below are undefined.
      OPMODE         : CFG_OPMODE_Field := NRF_SVD.ADC.Sample_Rate_Le_125Ksps;
      --  Control 500 Ohm battery load resistor.
      BATTLOAD       : CFG_BATTLOAD_Field := NRF_SVD.ADC.Dis;
      --  Select the ADC reference voltage.
      REFSEL         : CFG_REFSEL_Field := NRF_SVD.ADC.Internal;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Select the ADC trigger source.
      TRIGSEL        : CFG_TRIGSEL_Field := NRF_SVD.ADC.Ext0;
      --  This bit selects the ADC trigger polarity for external off chip
      --  triggers.
      TRIGPOL        : CFG_TRIGPOL_Field := NRF_SVD.ADC.Rising_Edge;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Select the source and frequency for the ADC clock. All values not
      --  enumerated below are undefined.
      CLKSEL         : CFG_CLKSEL_Field := NRF_SVD.ADC.Off;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      ADCEN          at 0 range 0 .. 0;
      TMPSPWR        at 0 range 1 .. 1;
      RPTEN          at 0 range 2 .. 2;
      LPMODE         at 0 range 3 .. 4;
      OPMODE         at 0 range 5 .. 6;
      BATTLOAD       at 0 range 7 .. 7;
      REFSEL         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      TRIGSEL        at 0 range 16 .. 19;
      TRIGPOL        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CLKSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Indicates the power-status of the ADC.
   type STAT_PWDSTAT_Field is
     (
      --  Powered on. value.
      On,
      --  Power switch on, ADC Low Power Mode 1. value.
      Switch_On_Sar_Off,
      --  Power switch off, ADC disabled. value.
      Power_Switch_Off)
     with Size => 2;
   for STAT_PWDSTAT_Field use
     (On => 0,
      Switch_On_Sar_Off => 1,
      Power_Switch_Off => 2);

   --  ADC Power Status
   type STAT_Register is record
      --  Indicates the power-status of the ADC.
      PWDSTAT       : STAT_PWDSTAT_Field := NRF_SVD.ADC.On;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      PWDSTAT       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL0CFG_CHSEL0_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL0CFG_CHSEL0_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select the track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL0CFG_THSEL0_Field is
     (
      --  1 ADC clock cycle. value.
      SL0CFG_THSEL0_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL0CFG_THSEL0_Field_128_Adc_Clks)
     with Size => 3;
   for SL0CFG_THSEL0_Field use
     (SL0CFG_THSEL0_Field_1_Adc_Clk => 0,
      SL0CFG_THSEL0_Field_2_Adc_Clks => 1,
      SL0CFG_THSEL0_Field_4_Adc_Clks => 2,
      SL0CFG_THSEL0_Field_8_Adc_Clks => 3,
      SL0CFG_THSEL0_Field_16_Adc_Clks => 4,
      SL0CFG_THSEL0_Field_32_Adc_Clks => 5,
      SL0CFG_THSEL0_Field_64_Adc_Clks => 6,
      SL0CFG_THSEL0_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL0         : SL0CFG_CHSEL0_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select the track and hold delay for this slot. NOTE: The track and
      --  hold delay must be less than 50us for correct operation. When the ADC
      --  is configured to use the 1.5Mhz clock, the track and hold delay
      --  cannot exceed 64 clocks.
      THSEL0         : SL0CFG_THSEL0_Field :=
                        NRF_SVD.ADC.SL0CFG_THSEL0_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL0         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL1CFG_CHSEL1_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL1CFG_CHSEL1_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select the track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5 Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL1CFG_THSEL1_Field is
     (
      --  1 ADC clock cycle. value.
      SL1CFG_THSEL1_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL1CFG_THSEL1_Field_128_Adc_Clks)
     with Size => 3;
   for SL1CFG_THSEL1_Field use
     (SL1CFG_THSEL1_Field_1_Adc_Clk => 0,
      SL1CFG_THSEL1_Field_2_Adc_Clks => 1,
      SL1CFG_THSEL1_Field_4_Adc_Clks => 2,
      SL1CFG_THSEL1_Field_8_Adc_Clks => 3,
      SL1CFG_THSEL1_Field_16_Adc_Clks => 4,
      SL1CFG_THSEL1_Field_32_Adc_Clks => 5,
      SL1CFG_THSEL1_Field_64_Adc_Clks => 6,
      SL1CFG_THSEL1_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL1         : SL1CFG_CHSEL1_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select the track and hold delay for this slot. NOTE: The track and
      --  hold delay must be less than 50us for correct operation. When the ADC
      --  is configured to use the 1.5 Mhz clock, the track and hold delay
      --  cannot exceed 64 clocks.
      THSEL1         : SL1CFG_THSEL1_Field :=
                        NRF_SVD.ADC.SL1CFG_THSEL1_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL1         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL2CFG_CHSEL2_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL2CFG_CHSEL2_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select the track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL2CFG_THSEL2_Field is
     (
      --  1 ADC clock cycle. value.
      SL2CFG_THSEL2_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL2CFG_THSEL2_Field_128_Adc_Clks)
     with Size => 3;
   for SL2CFG_THSEL2_Field use
     (SL2CFG_THSEL2_Field_1_Adc_Clk => 0,
      SL2CFG_THSEL2_Field_2_Adc_Clks => 1,
      SL2CFG_THSEL2_Field_4_Adc_Clks => 2,
      SL2CFG_THSEL2_Field_8_Adc_Clks => 3,
      SL2CFG_THSEL2_Field_16_Adc_Clks => 4,
      SL2CFG_THSEL2_Field_32_Adc_Clks => 5,
      SL2CFG_THSEL2_Field_64_Adc_Clks => 6,
      SL2CFG_THSEL2_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL2         : SL2CFG_CHSEL2_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select the track and hold delay for this slot. NOTE: The track and
      --  hold delay must be less than 50us for correct operation. When the ADC
      --  is configured to use the 1.5Mhz clock, the track and hold delay
      --  cannot exceed 64 clocks.
      THSEL2         : SL2CFG_THSEL2_Field :=
                        NRF_SVD.ADC.SL2CFG_THSEL2_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL2         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL3CFG_CHSEL3_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL3CFG_CHSEL3_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select the track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL3CFG_THSEL3_Field is
     (
      --  1 ADC clock cycle. value.
      SL3CFG_THSEL3_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL3CFG_THSEL3_Field_128_Adc_Clks)
     with Size => 3;
   for SL3CFG_THSEL3_Field use
     (SL3CFG_THSEL3_Field_1_Adc_Clk => 0,
      SL3CFG_THSEL3_Field_2_Adc_Clks => 1,
      SL3CFG_THSEL3_Field_4_Adc_Clks => 2,
      SL3CFG_THSEL3_Field_8_Adc_Clks => 3,
      SL3CFG_THSEL3_Field_16_Adc_Clks => 4,
      SL3CFG_THSEL3_Field_32_Adc_Clks => 5,
      SL3CFG_THSEL3_Field_64_Adc_Clks => 6,
      SL3CFG_THSEL3_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL3         : SL3CFG_CHSEL3_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select the track and hold delay for this slot. NOTE: The track and
      --  hold delay must be less than 50us for correct operation. When the ADC
      --  is configured to use the 1.5Mhz clock, the track and hold delay
      --  cannot exceed 64 clocks.
      THSEL3         : SL3CFG_THSEL3_Field :=
                        NRF_SVD.ADC.SL3CFG_THSEL3_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL3         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL4CFG_CHSEL4_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL4CFG_CHSEL4_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select the track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL4CFG_THSEL4_Field is
     (
      --  1 ADC clock cycle. value.
      SL4CFG_THSEL4_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL4CFG_THSEL4_Field_128_Adc_Clks)
     with Size => 3;
   for SL4CFG_THSEL4_Field use
     (SL4CFG_THSEL4_Field_1_Adc_Clk => 0,
      SL4CFG_THSEL4_Field_2_Adc_Clks => 1,
      SL4CFG_THSEL4_Field_4_Adc_Clks => 2,
      SL4CFG_THSEL4_Field_8_Adc_Clks => 3,
      SL4CFG_THSEL4_Field_16_Adc_Clks => 4,
      SL4CFG_THSEL4_Field_32_Adc_Clks => 5,
      SL4CFG_THSEL4_Field_64_Adc_Clks => 6,
      SL4CFG_THSEL4_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL4         : SL4CFG_CHSEL4_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select the track and hold delay for this slot. NOTE: The track and
      --  hold delay must be less than 50us for correct operation. When the ADC
      --  is configured to use the 1.5Mhz clock, the track and hold delay
      --  cannot exceed 64 clocks.
      THSEL4         : SL4CFG_THSEL4_Field :=
                        NRF_SVD.ADC.SL4CFG_THSEL4_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL4         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL5CFG_CHSEL5_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL5CFG_CHSEL5_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL5CFG_THSEL5_Field is
     (
      --  1 ADC clock cycle. value.
      SL5CFG_THSEL5_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL5CFG_THSEL5_Field_128_Adc_Clks)
     with Size => 3;
   for SL5CFG_THSEL5_Field use
     (SL5CFG_THSEL5_Field_1_Adc_Clk => 0,
      SL5CFG_THSEL5_Field_2_Adc_Clks => 1,
      SL5CFG_THSEL5_Field_4_Adc_Clks => 2,
      SL5CFG_THSEL5_Field_8_Adc_Clks => 3,
      SL5CFG_THSEL5_Field_16_Adc_Clks => 4,
      SL5CFG_THSEL5_Field_32_Adc_Clks => 5,
      SL5CFG_THSEL5_Field_64_Adc_Clks => 6,
      SL5CFG_THSEL5_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL5         : SL5CFG_CHSEL5_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select track and hold delay for this slot. NOTE: The track and hold
      --  delay must be less than 50us for correct operation. When the ADC is
      --  configured to use the 1.5Mhz clock, the track and hold delay cannot
      --  exceed 64 clocks.
      THSEL5         : SL5CFG_THSEL5_Field :=
                        NRF_SVD.ADC.SL5CFG_THSEL5_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL5         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL6CFG_CHSEL6_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL6CFG_CHSEL6_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL6CFG_THSEL6_Field is
     (
      --  1 ADC clock cycle. value.
      SL6CFG_THSEL6_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL6CFG_THSEL6_Field_128_Adc_Clks)
     with Size => 3;
   for SL6CFG_THSEL6_Field use
     (SL6CFG_THSEL6_Field_1_Adc_Clk => 0,
      SL6CFG_THSEL6_Field_2_Adc_Clks => 1,
      SL6CFG_THSEL6_Field_4_Adc_Clks => 2,
      SL6CFG_THSEL6_Field_8_Adc_Clks => 3,
      SL6CFG_THSEL6_Field_16_Adc_Clks => 4,
      SL6CFG_THSEL6_Field_32_Adc_Clks => 5,
      SL6CFG_THSEL6_Field_64_Adc_Clks => 6,
      SL6CFG_THSEL6_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL6         : SL6CFG_CHSEL6_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select track and hold delay for this slot. NOTE: The track and hold
      --  delay must be less than 50us for correct operation. When the ADC is
      --  configured to use the 1.5Mhz clock, the track and hold delay cannot
      --  exceed 64 clocks.
      THSEL6         : SL6CFG_THSEL6_Field :=
                        NRF_SVD.ADC.SL6CFG_THSEL6_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL6         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
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

   --  Select one of the 13 channel inputs for this slot.
   type SL7CFG_CHSEL7_Field is
     (
      --  ADC_EXT0 external GPIO pin connection. value.
      Ext0,
      --  ADC_EXT1 external GPIO pin connection. value.
      Ext1,
      --  ADC_EXT2 external GPIO pin connection. value.
      Ext2,
      --  ADC_EXT3 external GPIO pin connection. value.
      Ext3,
      --  ADC_EXT4 external GPIO pin connection. value.
      Ext4,
      --  ADC_EXT5 external GPIO pin connection. value.
      Ext5,
      --  ADC_EXT6 external GPIO pin connection. value.
      Ext6,
      --  ADC_EXT7 external GPIO pin connection. value.
      Ext7,
      --  ADC_TEMP internal temperature sensor. value.
      Temp,
      --  ADC_VDD internal power rail connection. value.
      Vdd,
      --  ADC_VSS internal ground connection. value.
      Vss,
      --  ADC_VBATT internal voltage divide-by-3 connection to input power
      --  rail. value.
      Vbatt)
     with Size => 4;
   for SL7CFG_CHSEL7_Field use
     (Ext0 => 0,
      Ext1 => 1,
      Ext2 => 2,
      Ext3 => 3,
      Ext4 => 4,
      Ext5 => 5,
      Ext6 => 6,
      Ext7 => 7,
      Temp => 8,
      Vdd => 9,
      Vss => 10,
      Vbatt => 12);

   --  Select track and hold delay for this slot. NOTE: The track and hold
   --  delay must be less than 50us for correct operation. When the ADC is
   --  configured to use the 1.5Mhz clock, the track and hold delay cannot
   --  exceed 64 clocks.
   type SL7CFG_THSEL7_Field is
     (
      --  1 ADC clock cycle. value.
      SL7CFG_THSEL7_Field_1_Adc_Clk,
      --  2 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_2_Adc_Clks,
      --  4 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_4_Adc_Clks,
      --  8 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_8_Adc_Clks,
      --  16 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_16_Adc_Clks,
      --  32 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_32_Adc_Clks,
      --  64 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_64_Adc_Clks,
      --  128 ADC clock cycles. value.
      SL7CFG_THSEL7_Field_128_Adc_Clks)
     with Size => 3;
   for SL7CFG_THSEL7_Field use
     (SL7CFG_THSEL7_Field_1_Adc_Clk => 0,
      SL7CFG_THSEL7_Field_2_Adc_Clks => 1,
      SL7CFG_THSEL7_Field_4_Adc_Clks => 2,
      SL7CFG_THSEL7_Field_8_Adc_Clks => 3,
      SL7CFG_THSEL7_Field_16_Adc_Clks => 4,
      SL7CFG_THSEL7_Field_32_Adc_Clks => 5,
      SL7CFG_THSEL7_Field_64_Adc_Clks => 6,
      SL7CFG_THSEL7_Field_128_Adc_Clks => 7);

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
      --  Select one of the 13 channel inputs for this slot.
      CHSEL7         : SL7CFG_CHSEL7_Field := NRF_SVD.ADC.Ext0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Select track and hold delay for this slot. NOTE: The track and hold
      --  delay must be less than 50us for correct operation. When the ADC is
      --  configured to use the 1.5Mhz clock, the track and hold delay cannot
      --  exceed 64 clocks.
      THSEL7         : SL7CFG_THSEL7_Field :=
                        NRF_SVD.ADC.SL7CFG_THSEL7_Field_1_Adc_Clk;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
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
      THSEL7         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ADSEL7         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype WLIM_LLIM_Field is HAL.UInt16;
   subtype WLIM_ULIM_Field is HAL.UInt16;

   --  Window Comparator Limits Register
   type WLIM_Register is record
      --  Sets the lower limit for the wondow comparator.
      LLIM : WLIM_LLIM_Field := 16#0#;
      --  Sets the upper limit for the wondow comparator.
      ULIM : WLIM_ULIM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WLIM_Register use record
      LLIM at 0 range 0 .. 15;
      ULIM at 0 range 16 .. 31;
   end record;

   subtype FIFO_DATA_Field is HAL.UInt16;
   subtype FIFO_COUNT_Field is HAL.UInt4;
   subtype FIFO_RSVD_20_Field is HAL.UInt4;
   subtype FIFO_SLOTNUM_Field is HAL.UInt3;
   subtype FIFO_RSVD_27_Field is HAL.UInt5;

   --  FIFO Data and Valid Count Register
   type FIFO_Register is record
      --  Oldest data in the FIFO.
      DATA    : FIFO_DATA_Field := 16#0#;
      --  Number of valid entries in the ADC FIFO.
      COUNT   : FIFO_COUNT_Field := 16#0#;
      --  RESERVED.
      RSVD_20 : FIFO_RSVD_20_Field := 16#0#;
      --  Slot number associated with this FIFO data.
      SLOTNUM : FIFO_SLOTNUM_Field := 16#0#;
      --  RESERVED.
      RSVD_27 : FIFO_RSVD_27_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_Register use record
      DATA    at 0 range 0 .. 15;
      COUNT   at 0 range 16 .. 19;
      RSVD_20 at 0 range 20 .. 23;
      SLOTNUM at 0 range 24 .. 26;
      RSVD_27 at 0 range 27 .. 31;
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
      --  Window Comparator Limits Register
      WLIM    : aliased WLIM_Register;
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
      WLIM    at 16#2C# range 0 .. 31;
      FIFO    at 16#30# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  Analog Digital Converter Control
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end NRF_SVD.ADC;
