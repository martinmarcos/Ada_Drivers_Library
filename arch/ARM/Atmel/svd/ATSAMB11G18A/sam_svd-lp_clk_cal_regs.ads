--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11G18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.LP_CLK_CAL_REGS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Multiplier value for the number of calibration clocks (1 shifted left by
   --  _value_)
   type CONFIG_REG_NUMBER_CALIB_CLKS_Field is
     (
      --  1 clock
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_0,
      --  2 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_1,
      --  4 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_2,
      --  8 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_3,
      --  16 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_4,
      --  32 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_5,
      --  64 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_6,
      --  128 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_7,
      --  256 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_8,
      --  512 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_9,
      --  1024 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_10,
      --  2048 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_11,
      --  4096 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_12,
      --  8192 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_13,
      --  16384 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_14,
      --  32768 clocks
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_15)
     with Size => 4;
   for CONFIG_REG_NUMBER_CALIB_CLKS_Field use
     (CONFIG_REG_NUMBER_CALIB_CLKS_Field_0 => 0,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_1 => 1,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_2 => 2,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_3 => 3,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_4 => 4,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_5 => 5,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_6 => 6,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_7 => 7,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_8 => 8,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_9 => 9,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_10 => 10,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_11 => 11,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_12 => 12,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_13 => 13,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_14 => 14,
      CONFIG_REG_NUMBER_CALIB_CLKS_Field_15 => 15);

   --  Interrupt Control
   type CONFIG_REG_IRQ_CONTROL_Field is
     (
      --  IRQ when OSC calibration done
      CONFIG_REG_IRQ_CONTROL_Field_0,
      --  IRQ when RTC calibration done
      CONFIG_REG_IRQ_CONTROL_Field_1,
      --  IRQ when OSC or RTC calibration done
      CONFIG_REG_IRQ_CONTROL_Field_2,
      --  IRQ when OSC and RTC calibration done
      CONFIG_REG_IRQ_CONTROL_Field_3)
     with Size => 2;
   for CONFIG_REG_IRQ_CONTROL_Field use
     (CONFIG_REG_IRQ_CONTROL_Field_0 => 0,
      CONFIG_REG_IRQ_CONTROL_Field_1 => 1,
      CONFIG_REG_IRQ_CONTROL_Field_2 => 2,
      CONFIG_REG_IRQ_CONTROL_Field_3 => 3);

   --  Configuration of the calibration clocks and the enable of calibration
   type CONFIG_REG_Register is record
      --  Multiplier value for the number of calibration clocks (1 shifted left
      --  by _value_)
      NUMBER_CALIB_CLKS : CONFIG_REG_NUMBER_CALIB_CLKS_Field :=
                           SAM_SVD.LP_CLK_CAL_REGS.CONFIG_REG_NUMBER_CALIB_CLKS_Field_0;
      --  unspecified
      Reserved_4_5      : HAL.UInt2 := 16#0#;
      --  If set, this will start the calibration of the RTC (32.768 kHz) clock
      START_RTC_CALIB   : Boolean := False;
      --  If set, this will start the calibration of the OSC (32 kHz) clock
      START_OSC_CALIB   : Boolean := False;
      --  unspecified
      Reserved_8_13     : HAL.UInt6 := 16#0#;
      --  Interrupt Control
      IRQ_CONTROL       : CONFIG_REG_IRQ_CONTROL_Field :=
                           SAM_SVD.LP_CLK_CAL_REGS.CONFIG_REG_IRQ_CONTROL_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CONFIG_REG_Register use record
      NUMBER_CALIB_CLKS at 0 range 0 .. 3;
      Reserved_4_5      at 0 range 4 .. 5;
      START_RTC_CALIB   at 0 range 6 .. 6;
      START_OSC_CALIB   at 0 range 7 .. 7;
      Reserved_8_13     at 0 range 8 .. 13;
      IRQ_CONTROL       at 0 range 14 .. 15;
   end record;

   subtype CALIB_OSC_COUNT_REG_CAL_FRAC_COUNT_Field is HAL.UInt15;
   subtype CALIB_OSC_COUNT_REG_CAL_INT_COUNT_Field is HAL.UInt15;

   --  Calibration Count register value for the OSC clock returned after
   --  completed calibration Write any value to set bit 15 and clear bit 31
   type CALIB_OSC_COUNT_REG_Register is record
      --  Read-only. This is the fractional part of the calibration counter
      CAL_FRAC_COUNT     : CALIB_OSC_COUNT_REG_CAL_FRAC_COUNT_Field;
      --  Read-only. Indicates no calibration is running (any write sets this
      --  to a 1, 0 when calibration done)
      NO_CAL_IN_PROGRESS : Boolean;
      --  Read-only. This is the integer part of the calibration counter
      CAL_INT_COUNT      : CALIB_OSC_COUNT_REG_CAL_INT_COUNT_Field;
      --  Read-only. Indicates calibration is done (any write clears this to a
      --  0)
      CAL_DONE           : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALIB_OSC_COUNT_REG_Register use record
      CAL_FRAC_COUNT     at 0 range 0 .. 14;
      NO_CAL_IN_PROGRESS at 0 range 15 .. 15;
      CAL_INT_COUNT      at 0 range 16 .. 30;
      CAL_DONE           at 0 range 31 .. 31;
   end record;

   subtype CALIB_RTC_COUNT_REG_CAL_FRAC_COUNT_Field is HAL.UInt15;
   subtype CALIB_RTC_COUNT_REG_CAL_INT_COUNT_Field is HAL.UInt15;

   --  Calibration Count register value for the RTC clock returned after
   --  completed calibration Write any value to set bit 15 and clear bit 31
   type CALIB_RTC_COUNT_REG_Register is record
      --  Read-only. This is the fractional part of the calibration counter
      CAL_FRAC_COUNT     : CALIB_RTC_COUNT_REG_CAL_FRAC_COUNT_Field;
      --  Read-only. Indicates no calibration is running (any write sets this
      --  to a 1, 0 when calibration done)
      NO_CAL_IN_PROGRESS : Boolean;
      --  Read-only. This is the integer part of the calibration counter
      CAL_INT_COUNT      : CALIB_RTC_COUNT_REG_CAL_INT_COUNT_Field;
      --  Read-only. Indicates calibration is done (any write clears this to a
      --  0)
      CAL_DONE           : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALIB_RTC_COUNT_REG_Register use record
      CAL_FRAC_COUNT     at 0 range 0 .. 14;
      NO_CAL_IN_PROGRESS at 0 range 15 .. 15;
      CAL_INT_COUNT      at 0 range 16 .. 30;
      CAL_DONE           at 0 range 31 .. 31;
   end record;

   --  Calibration Status Register
   type CALIB_STATUS_REG_Register is record
      --  Read-only. This is the done flag for calibrating the osc clock
      CALIBRATION_OSC_DONE : Boolean;
      --  Read-only. This is the done flag for calibrating the rtc clock
      CALIBRATION_RTC_DONE : Boolean;
      --  unspecified
      Reserved_2_3         : HAL.UInt2;
      --  Read-only. OSC clock calibration in progress
      OSC_CAL_RUNNING      : Boolean;
      --  Read-only. RTC clock calibration in progress
      RTC_CAL_RUNNING      : Boolean;
      --  unspecified
      Reserved_6_7         : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CALIB_STATUS_REG_Register use record
      CALIBRATION_OSC_DONE at 0 range 0 .. 0;
      CALIBRATION_RTC_DONE at 0 range 1 .. 1;
      Reserved_2_3         at 0 range 2 .. 3;
      OSC_CAL_RUNNING      at 0 range 4 .. 4;
      RTC_CAL_RUNNING      at 0 range 5 .. 5;
      Reserved_6_7         at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low Power Clock Calibration Registers
   type LP_CLK_CAL_REGS0_Peripheral is record
      --  Configuration of the calibration clocks and the enable of calibration
      CONFIG_REG          : aliased CONFIG_REG_Register;
      --  Calibration Count register value for the OSC clock returned after
      --  completed calibration Write any value to set bit 15 and clear bit 31
      CALIB_OSC_COUNT_REG : aliased CALIB_OSC_COUNT_REG_Register;
      --  Calibration Count register value for the RTC clock returned after
      --  completed calibration Write any value to set bit 15 and clear bit 31
      CALIB_RTC_COUNT_REG : aliased CALIB_RTC_COUNT_REG_Register;
      --  Calibration Status Register
      CALIB_STATUS_REG    : aliased CALIB_STATUS_REG_Register;
   end record
     with Volatile;

   for LP_CLK_CAL_REGS0_Peripheral use record
      CONFIG_REG          at 16#0# range 0 .. 15;
      CALIB_OSC_COUNT_REG at 16#4# range 0 .. 31;
      CALIB_RTC_COUNT_REG at 16#8# range 0 .. 31;
      CALIB_STATUS_REG    at 16#C# range 0 .. 7;
   end record;

   --  Low Power Clock Calibration Registers
   LP_CLK_CAL_REGS0_Periph : aliased LP_CLK_CAL_REGS0_Peripheral
     with Import, Address => System'To_Address (16#4000C000#);

end SAM_SVD.LP_CLK_CAL_REGS;
