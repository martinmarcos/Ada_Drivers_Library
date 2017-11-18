--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CLKG0_CLK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL0_CLKMUX_Field is HAL.UInt2;
   subtype CTL0_CLKOUT_Field is HAL.UInt4;
   subtype CTL0_RCLKMUX_Field is HAL.UInt2;

   --  SPLL source select mux
   type CTL0_PLL_IPSEL_Field is
     (
      --  Internal HF oscillator is selected
      Pll_Hfosc,
      --  External HF XTAL oscillator is selected
      Pll_Hfxtal,
      --  GPIO_CLK input is selected
      Pll_Gpio,
      --  GPIO_CLK input is selected
      Pll_Gpio1)
     with Size => 2;
   for CTL0_PLL_IPSEL_Field use
     (Pll_Hfosc => 0,
      Pll_Hfxtal => 1,
      Pll_Gpio => 2,
      Pll_Gpio1 => 3);

   --  Misc Clock Settings
   type CTL0_Register is record
      --  Clock mux select
      CLKMUX         : CTL0_CLKMUX_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  GPIO clock out select
      CLKOUT         : CTL0_CLKOUT_Field := 16#F#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Flash reference clock and HPBUCK clock source mux
      RCLKMUX        : CTL0_RCLKMUX_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  SPLL source select mux
      PLL_IPSEL      : CTL0_PLL_IPSEL_Field := NRF_SVD.CLKG0_CLK.Pll_Hfosc;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Low frequency crystal interrupt enable
      LFXTALIE       : Boolean := False;
      --  High frequency crystal interrupt enable
      HFXTALIE       : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL0_Register use record
      CLKMUX         at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CLKOUT         at 0 range 3 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RCLKMUX        at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PLL_IPSEL      at 0 range 11 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      LFXTALIE       at 0 range 14 .. 14;
      HFXTALIE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTL1_HCLKDIVCNT_Field is HAL.UInt6;
   subtype CTL1_PCLKDIVCNT_Field is HAL.UInt6;
   subtype CTL1_ACLKDIVCNT_Field is HAL.UInt9;

   --  Clock Dividers
   type CTL1_Register is record
      --  HCLK divide count
      HCLKDIVCNT     : CTL1_HCLKDIVCNT_Field := 16#4#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PCLK divide count
      PCLKDIVCNT     : CTL1_PCLKDIVCNT_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  ACLK Divide Count
      ACLKDIVCNT     : CTL1_ACLKDIVCNT_Field := 16#10#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL1_Register use record
      HCLKDIVCNT     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PCLKDIVCNT     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ACLKDIVCNT     at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CTL2_HFOSCDIVCLKSEL_Field is HAL.UInt3;

   --  HF Oscillator Divided Clock Select
   type CTL2_Register is record
      --  HF Oscillator auto divide by one clock selection during wakeup from
      --  Flexi power mode
      HFOSCAUTODIV_EN : Boolean := False;
      --  HF Oscillator divided clock select
      HFOSCDIVCLKSEL  : CTL2_HFOSCDIVCLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31   : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL2_Register use record
      HFOSCAUTODIV_EN at 0 range 0 .. 0;
      HFOSCDIVCLKSEL  at 0 range 1 .. 3;
      Reserved_4_31   at 0 range 4 .. 31;
   end record;

   subtype CTL3_SPLLNSEL_Field is HAL.UInt5;
   subtype CTL3_SPLLMSEL_Field is HAL.UInt4;

   --  System PLL
   type CTL3_Register is record
      --  System PLL N multiplier
      SPLLNSEL       : CTL3_SPLLNSEL_Field := 16#1A#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  System PLL division by 2
      SPLLDIV2       : Boolean := False;
      --  System PLL enable
      SPLLEN         : Boolean := False;
      --  System PLL interrupt enable
      SPLLIE         : Boolean := False;
      --  System PLL M Divider
      SPLLMSEL       : CTL3_SPLLMSEL_Field := 16#D#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  System PLL multiply by 2
      SPLLMUL2       : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL3_Register use record
      SPLLNSEL       at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SPLLDIV2       at 0 range 8 .. 8;
      SPLLEN         at 0 range 9 .. 9;
      SPLLIE         at 0 range 10 .. 10;
      SPLLMSEL       at 0 range 11 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SPLLMUL2       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  User Clock Gating Control
   type CTL5_Register is record
      --  GP Timer 0 user control
      GPTCLK0OFF    : Boolean := True;
      --  GP Timer 1 user control
      GPTCLK1OFF    : Boolean := True;
      --  GP Timer 2 user control
      GPTCLK2OFF    : Boolean := True;
      --  I2C clock user control
      UCLKI2COFF    : Boolean := True;
      --  GPIO clock control
      GPIOCLKOFF    : Boolean := True;
      --  This bit is used to disable all clocks connected to all peripherals
      PERCLKOFF     : Boolean := False;
      --  Timer RGB user control
      TMRRGBCLKOFF  : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL5_Register use record
      GPTCLK0OFF    at 0 range 0 .. 0;
      GPTCLK1OFF    at 0 range 1 .. 1;
      GPTCLK2OFF    at 0 range 2 .. 2;
      UCLKI2COFF    at 0 range 3 .. 3;
      GPIOCLKOFF    at 0 range 4 .. 4;
      PERCLKOFF     at 0 range 5 .. 5;
      TMRRGBCLKOFF  at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Clocking Status
   type STAT0_Register is record
      --  Read-only. System PLL status
      SPLL           : Boolean := False;
      --  System PLL lock
      SPLLLK         : Boolean := False;
      --  System PLL unlock
      SPLLUNLK       : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Read-only. LF crystal status
      LFXTAL         : Boolean := False;
      --  LF crystal stable
      LFXTALOK       : Boolean := False;
      --  LF crystal not stable
      LFXTALNOK      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. HF crystal status
      HFXTAL         : Boolean := False;
      --  HF crystal stable
      HFXTALOK       : Boolean := False;
      --  HF crystal not stable
      HFXTALNOK      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT0_Register use record
      SPLL           at 0 range 0 .. 0;
      SPLLLK         at 0 range 1 .. 1;
      SPLLUNLK       at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      LFXTAL         at 0 range 8 .. 8;
      LFXTALOK       at 0 range 9 .. 9;
      LFXTALNOK      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      HFXTAL         at 0 range 12 .. 12;
      HFXTALOK       at 0 range 13 .. 13;
      HFXTALNOK      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clocking
   type CLKG0_CLK_Peripheral is record
      --  Misc Clock Settings
      CTL0  : aliased CTL0_Register;
      --  Clock Dividers
      CTL1  : aliased CTL1_Register;
      --  HF Oscillator Divided Clock Select
      CTL2  : aliased CTL2_Register;
      --  System PLL
      CTL3  : aliased CTL3_Register;
      --  User Clock Gating Control
      CTL5  : aliased CTL5_Register;
      --  Clocking Status
      STAT0 : aliased STAT0_Register;
   end record
     with Volatile;

   for CLKG0_CLK_Peripheral use record
      CTL0  at 16#0# range 0 .. 31;
      CTL1  at 16#4# range 0 .. 31;
      CTL2  at 16#8# range 0 .. 31;
      CTL3  at 16#C# range 0 .. 31;
      CTL5  at 16#14# range 0 .. 31;
      STAT0 at 16#18# range 0 .. 31;
   end record;

   --  Clocking
   CLKG0_CLK_Periph : aliased CLKG0_CLK_Peripheral
     with Import, Address => System'To_Address (16#4004C300#);

end NRF_SVD.CLKG0_CLK;
