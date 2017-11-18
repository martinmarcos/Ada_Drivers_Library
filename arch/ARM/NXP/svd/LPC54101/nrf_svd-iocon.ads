--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54101.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.IOCON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Selects pin function.
   type PIO00_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 3;
   for PIO00_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO00_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO00_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Input polarity.
   type PIO00_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO00_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Analog/Digital mode.
   type PIO00_DIGIMODE_Field is
     (
      --  Analog mode.
      Analog,
      --  Digital mode.
      Digital)
     with Size => 1;
   for PIO00_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls input glitch filter.
   type PIO00_FILTEROFF_Field is
     (
      --  Filter enabled. Noise pulses below approximately 10 ns are filtered
      --  out.
      Enabled,
      --  Filter disabled. No input filtering is done.
      Disabled)
     with Size => 1;
   for PIO00_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Driver slew rate.
   type PIO00_SLEW_Field is
     (
      --  Standard mode, output slew rate control is enabled. More outputs can
      --  be switched simultaneously.
      Standard,
      --  Fast mode, slew rate control is disabled. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO00_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Controls open-drain mode.
   type PIO00_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO00_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_0
   type PIO_Register is record
      --  Selects pin function.
      FUNC           : PIO00_FUNC_Field := NRF_SVD.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO00_MODE_Field := NRF_SVD.IOCON.Pull_Up;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Input polarity.
      INVERT         : PIO00_INVERT_Field := NRF_SVD.IOCON.Disabled;
      --  Select Analog/Digital mode.
      DIGIMODE       : PIO00_DIGIMODE_Field := NRF_SVD.IOCON.Digital;
      --  Controls input glitch filter.
      FILTEROFF      : PIO00_FILTEROFF_Field := NRF_SVD.IOCON.Disabled;
      --  Driver slew rate.
      SLEW           : PIO00_SLEW_Field := NRF_SVD.IOCON.Standard;
      --  Controls open-drain mode.
      OD             : PIO00_OD_Field := NRF_SVD.IOCON.Normal;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_Register use record
      FUNC           at 0 range 0 .. 2;
      MODE           at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      INVERT         at 0 range 6 .. 6;
      DIGIMODE       at 0 range 7 .. 7;
      FILTEROFF      at 0 range 8 .. 8;
      SLEW           at 0 range 9 .. 9;
      OD             at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO023_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 3;
   for PIO023_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Controls slew rate of I2C pad.
   type PIO023_I2CSLEW_Field is
     (
      --  I2C mode.
      I2C_Mode,
      --  GPIO mode.
      Gpio_Mode)
     with Size => 1;
   for PIO023_I2CSLEW_Field use
     (I2C_Mode => 0,
      Gpio_Mode => 1);

   --  Input polarity.
   type PIO023_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO023_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Analog/Digital mode.
   type PIO023_DIGIMODE_Field is
     (
      --  Analog mode.
      Analog,
      --  Digital mode.
      Digital)
     with Size => 1;
   for PIO023_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls input glitch filter.
   type PIO023_FILTEROFF_Field is
     (
      --  Filter enabled. Noise pulses below approximately 10 ns are filtered
      --  out.
      Enabled,
      --  Filter disabled. No input filtering is done.
      Disabled)
     with Size => 1;
   for PIO023_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Controls the current sink capability of the pin.
   type PIO023_I2CDRIVE_Field is
     (
      --  Low drive. Output drive sink is 4 mA. This is sufficient for standard
      --  and fast mode I2C.
      Low,
      --  High drive. Output drive sink is 20 mA. This is needed for Fast Mode
      --  Plus I 2C. Refer to the appropriate specific device data sheet for
      --  details.
      High)
     with Size => 1;
   for PIO023_I2CDRIVE_Field use
     (Low => 0,
      High => 1);

   --  Configures I2C features for standard mode, fast mode, and Fast Mode Plus
   --  operation.
   type PIO023_I2CFILTER_Field is
     (
      --  Enabled. I2C 50 ns glitch filter enabled.
      Enabled,
      --  Disabled. I2C 50 ns glitch filter disabled.
      Disabled)
     with Size => 1;
   for PIO023_I2CFILTER_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Digital I/O control for port 0 pins PIO0_23
   type PIO_Register_1 is record
      --  Selects pin function.
      FUNC           : PIO023_FUNC_Field := NRF_SVD.IOCON.Alt0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Controls slew rate of I2C pad.
      I2CSLEW        : PIO023_I2CSLEW_Field := NRF_SVD.IOCON.Gpio_Mode;
      --  Input polarity.
      INVERT         : PIO023_INVERT_Field := NRF_SVD.IOCON.Disabled;
      --  Select Analog/Digital mode.
      DIGIMODE       : PIO023_DIGIMODE_Field := NRF_SVD.IOCON.Digital;
      --  Controls input glitch filter.
      FILTEROFF      : PIO023_FILTEROFF_Field := NRF_SVD.IOCON.Disabled;
      --  Controls the current sink capability of the pin.
      I2CDRIVE       : PIO023_I2CDRIVE_Field := NRF_SVD.IOCON.Low;
      --  Configures I2C features for standard mode, fast mode, and Fast Mode
      --  Plus operation.
      I2CFILTER      : PIO023_I2CFILTER_Field := NRF_SVD.IOCON.Enabled;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_Register_1 use record
      FUNC           at 0 range 0 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      I2CSLEW        at 0 range 5 .. 5;
      INVERT         at 0 range 6 .. 6;
      DIGIMODE       at 0 range 7 .. 7;
      FILTEROFF      at 0 range 8 .. 8;
      I2CDRIVE       at 0 range 9 .. 9;
      I2CFILTER      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO029_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 3;
   for PIO029_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO029_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO029_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Input polarity.
   type PIO029_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO029_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Analog/Digital mode.
   type PIO029_DIGIMODE_Field is
     (
      --  Analog mode.
      Analog,
      --  Digital mode.
      Digital)
     with Size => 1;
   for PIO029_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls input glitch filter.
   type PIO029_FILTEROFF_Field is
     (
      --  Filter enabled. Noise pulses below approximately 10 ns are filtered
      --  out.
      Enabled,
      --  Filter disabled. No input filtering is done.
      Disabled)
     with Size => 1;
   for PIO029_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Controls open-drain mode.
   type PIO029_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO029_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_29
   type PIO_Register_2 is record
      --  Selects pin function.
      FUNC           : PIO029_FUNC_Field := NRF_SVD.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO029_MODE_Field := NRF_SVD.IOCON.Pull_Up;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Input polarity.
      INVERT         : PIO029_INVERT_Field := NRF_SVD.IOCON.Disabled;
      --  Select Analog/Digital mode.
      DIGIMODE       : PIO029_DIGIMODE_Field := NRF_SVD.IOCON.Digital;
      --  Controls input glitch filter.
      FILTEROFF      : PIO029_FILTEROFF_Field := NRF_SVD.IOCON.Disabled;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Controls open-drain mode.
      OD             : PIO029_OD_Field := NRF_SVD.IOCON.Normal;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_Register_2 use record
      FUNC           at 0 range 0 .. 2;
      MODE           at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      INVERT         at 0 range 6 .. 6;
      DIGIMODE       at 0 range 7 .. 7;
      FILTEROFF      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      OD             at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5410x I/O pin configuration (IOCON)
   type IOCON_Peripheral is record
      --  Digital I/O control for port 0 pins PIO0_0
      PIO00  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_1
      PIO01  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_2
      PIO02  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_3
      PIO03  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_4
      PIO04  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_5
      PIO05  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_6
      PIO06  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_7
      PIO07  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_8
      PIO08  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_9
      PIO09  : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_10
      PIO010 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_11
      PIO011 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_12
      PIO012 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_13
      PIO013 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_14
      PIO014 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_15
      PIO015 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_16
      PIO016 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_17
      PIO017 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_18
      PIO018 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_19
      PIO019 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_20
      PIO020 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_21
      PIO021 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_22
      PIO022 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_23
      PIO023 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_24
      PIO024 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_25
      PIO025 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_26
      PIO026 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_27
      PIO027 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_28
      PIO028 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_29
      PIO029 : aliased PIO_Register_2;
      --  Digital I/O control for port 0 pins PIO0_30
      PIO030 : aliased PIO_Register_2;
      --  Digital I/O control for port 0 pins PIO0_31
      PIO031 : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_0
      PIO10  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_1
      PIO11  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_2
      PIO12  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_3
      PIO13  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_4
      PIO14  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_5
      PIO15  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_6
      PIO16  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_7
      PIO17  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_8
      PIO18  : aliased PIO_Register_2;
      --  Digital I/O control for port 1 pins PIO1_9
      PIO19  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_10
      PIO110 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_11
      PIO111 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_12
      PIO112 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_13
      PIO113 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_14
      PIO114 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_15
      PIO115 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_16
      PIO116 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_17
      PIO117 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_18
      PIO118 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_19
      PIO119 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_20
      PIO120 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_21
      PIO121 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_22
      PIO122 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_23
      PIO123 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_24
      PIO124 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_25
      PIO125 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_26
      PIO126 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_27
      PIO127 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_28
      PIO128 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_29
      PIO129 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_30
      PIO130 : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_31
      PIO131 : aliased PIO_Register;
   end record
     with Volatile;

   for IOCON_Peripheral use record
      PIO00  at 16#0# range 0 .. 31;
      PIO01  at 16#4# range 0 .. 31;
      PIO02  at 16#8# range 0 .. 31;
      PIO03  at 16#C# range 0 .. 31;
      PIO04  at 16#10# range 0 .. 31;
      PIO05  at 16#14# range 0 .. 31;
      PIO06  at 16#18# range 0 .. 31;
      PIO07  at 16#1C# range 0 .. 31;
      PIO08  at 16#20# range 0 .. 31;
      PIO09  at 16#24# range 0 .. 31;
      PIO010 at 16#28# range 0 .. 31;
      PIO011 at 16#2C# range 0 .. 31;
      PIO012 at 16#30# range 0 .. 31;
      PIO013 at 16#34# range 0 .. 31;
      PIO014 at 16#38# range 0 .. 31;
      PIO015 at 16#3C# range 0 .. 31;
      PIO016 at 16#40# range 0 .. 31;
      PIO017 at 16#44# range 0 .. 31;
      PIO018 at 16#48# range 0 .. 31;
      PIO019 at 16#4C# range 0 .. 31;
      PIO020 at 16#50# range 0 .. 31;
      PIO021 at 16#54# range 0 .. 31;
      PIO022 at 16#58# range 0 .. 31;
      PIO023 at 16#5C# range 0 .. 31;
      PIO024 at 16#60# range 0 .. 31;
      PIO025 at 16#64# range 0 .. 31;
      PIO026 at 16#68# range 0 .. 31;
      PIO027 at 16#6C# range 0 .. 31;
      PIO028 at 16#70# range 0 .. 31;
      PIO029 at 16#74# range 0 .. 31;
      PIO030 at 16#78# range 0 .. 31;
      PIO031 at 16#7C# range 0 .. 31;
      PIO10  at 16#80# range 0 .. 31;
      PIO11  at 16#84# range 0 .. 31;
      PIO12  at 16#88# range 0 .. 31;
      PIO13  at 16#8C# range 0 .. 31;
      PIO14  at 16#90# range 0 .. 31;
      PIO15  at 16#94# range 0 .. 31;
      PIO16  at 16#98# range 0 .. 31;
      PIO17  at 16#9C# range 0 .. 31;
      PIO18  at 16#A0# range 0 .. 31;
      PIO19  at 16#A4# range 0 .. 31;
      PIO110 at 16#A8# range 0 .. 31;
      PIO111 at 16#AC# range 0 .. 31;
      PIO112 at 16#B0# range 0 .. 31;
      PIO113 at 16#B4# range 0 .. 31;
      PIO114 at 16#B8# range 0 .. 31;
      PIO115 at 16#BC# range 0 .. 31;
      PIO116 at 16#C0# range 0 .. 31;
      PIO117 at 16#C4# range 0 .. 31;
      PIO118 at 16#C8# range 0 .. 31;
      PIO119 at 16#CC# range 0 .. 31;
      PIO120 at 16#D0# range 0 .. 31;
      PIO121 at 16#D4# range 0 .. 31;
      PIO122 at 16#D8# range 0 .. 31;
      PIO123 at 16#DC# range 0 .. 31;
      PIO124 at 16#E0# range 0 .. 31;
      PIO125 at 16#E4# range 0 .. 31;
      PIO126 at 16#E8# range 0 .. 31;
      PIO127 at 16#EC# range 0 .. 31;
      PIO128 at 16#F0# range 0 .. 31;
      PIO129 at 16#F4# range 0 .. 31;
      PIO130 at 16#F8# range 0 .. 31;
      PIO131 at 16#FC# range 0 .. 31;
   end record;

   --  LPC5410x I/O pin configuration (IOCON)
   IOCON_Periph : aliased IOCON_Peripheral
     with Import, Address => System'To_Address (16#4001C000#);

end NRF_SVD.IOCON;
