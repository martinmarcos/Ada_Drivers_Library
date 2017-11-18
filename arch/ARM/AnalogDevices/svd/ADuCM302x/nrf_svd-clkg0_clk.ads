--

--  This spec has been automatically generated from ADuCM302x.svd

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
   subtype CTL0_RCLKMUX_Field is HAL.UInt2;

   --  Miscellaneous Clock Settings
   type CTL0_Register is record
      --  Clock Mux Select
      CLKMUX         : CTL0_CLKMUX_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#1E#;
      --  Flash Reference Clock and HP Buck Source Mux
      RCLKMUX        : CTL0_RCLKMUX_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  SPLL Source Select Mux
      SPLLIPSEL      : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Low Frequency Crystal Interrupt Enable
      LFXTALIE       : Boolean := False;
      --  High Frequency Crystal Interrupt Enable
      HFXTALIE       : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL0_Register use record
      CLKMUX         at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      RCLKMUX        at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SPLLIPSEL      at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      LFXTALIE       at 0 range 14 .. 14;
      HFXTALIE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTL1_HCLKDIVCNT_Field is HAL.UInt6;
   subtype CTL1_PCLKDIVCNT_Field is HAL.UInt6;
   subtype CTL1_ACLKDIVCNT_Field is HAL.UInt8;

   --  Clock Dividers
   type CTL1_Register is record
      --  HCLK Divide Count
      HCLKDIVCNT     : CTL1_HCLKDIVCNT_Field := 16#4#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PCLK Divide Count
      PCLKDIVCNT     : CTL1_PCLKDIVCNT_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  ACLK Divide Count
      ACLKDIVCNT     : CTL1_ACLKDIVCNT_Field := 16#10#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL1_Register use record
      HCLKDIVCNT     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PCLKDIVCNT     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ACLKDIVCNT     at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CTL3_SPLLNSEL_Field is HAL.UInt5;
   subtype CTL3_SPLLMSEL_Field is HAL.UInt4;

   --  System PLL
   type CTL3_Register is record
      --  System PLL N Multiplier
      SPLLNSEL       : CTL3_SPLLNSEL_Field := 16#1A#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  System PLL Division by 2
      SPLLDIV2       : Boolean := True;
      --  System PLL Enable
      SPLLEN         : Boolean := False;
      --  System PLL Interrupt Enable
      SPLLIE         : Boolean := False;
      --  System PLL M Divider
      SPLLMSEL       : CTL3_SPLLMSEL_Field := 16#D#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  System PLL Multiply by 2
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

   --  Disables All Clocks Connected to All Peripherals
   type CTL5_PERCLKOFF_Field is
     (
      --  Clocks to all peripherals are active
      Periph_Clk_Act,
      --  Clocks to all peripherals are gated off
      Periph_Clk_Off)
     with Size => 1;
   for CTL5_PERCLKOFF_Field use
     (Periph_Clk_Act => 0,
      Periph_Clk_Off => 1);

   --  User Clock Gating Control
   type CTL5_Register is record
      --  Timer 0 User Control
      GPTCLK0OFF    : Boolean := True;
      --  Timer 1 User Control
      GPTCLK1OFF    : Boolean := True;
      --  Timer 2 User Control
      GPTCLK2OFF    : Boolean := True;
      --  I2C Clock User Control
      UCLKI2COFF    : Boolean := True;
      --  GPIO Clock Control
      GPIOCLKOFF    : Boolean := True;
      --  Disables All Clocks Connected to All Peripherals
      PERCLKOFF     : CTL5_PERCLKOFF_Field :=
                       NRF_SVD.CLKG0_CLK.Periph_Clk_Act;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
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
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Clocking Status
   type STAT0_Register is record
      --  Read-only. System PLL Status
      SPLL           : Boolean := False;
      --  System PLL Lock
      SPLLLK         : Boolean := False;
      --  System PLL Unlock
      SPLLUNLK       : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Read-only. LF Crystal Status
      LFXTAL         : Boolean := False;
      --  LF Crystal Stable
      LFXTALOK       : Boolean := False;
      --  LF Crystal Not Stable
      LFXTALNOK      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. HF Crystal Status
      HFXTAL         : Boolean := False;
      --  HF Crystal Stable
      HFXTALOK       : Boolean := False;
      --  HF Crystal Not Stable
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
      --  Miscellaneous Clock Settings
      CTL0  : aliased CTL0_Register;
      --  Clock Dividers
      CTL1  : aliased CTL1_Register;
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
      CTL3  at 16#C# range 0 .. 31;
      CTL5  at 16#14# range 0 .. 31;
      STAT0 at 16#18# range 0 .. 31;
   end record;

   --  Clocking
   CLKG0_CLK_Periph : aliased CLKG0_CLK_Peripheral
     with Import, Address => System'To_Address (16#4004C300#);

end NRF_SVD.CLKG0_CLK;
