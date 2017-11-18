--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54606.xml

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
     with Size => 4;
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
      Reserved_6_6   : HAL.Bit := 16#0#;
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
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      FILTEROFF      at 0 range 9 .. 9;
      SLEW           at 0 range 10 .. 10;
      OD             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Selects pin function.
   type PIO010_FUNC_Field is
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
     with Size => 4;
   for PIO010_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO010_MODE_Field is
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
   for PIO010_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Input polarity.
   type PIO010_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO010_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Analog/Digital mode.
   type PIO010_DIGIMODE_Field is
     (
      --  Analog mode.
      Analog,
      --  Digital mode.
      Digital)
     with Size => 1;
   for PIO010_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls input glitch filter.
   type PIO010_FILTEROFF_Field is
     (
      --  Filter enabled. Noise pulses below approximately 10 ns are filtered
      --  out.
      Enabled,
      --  Filter disabled. No input filtering is done.
      Disabled)
     with Size => 1;
   for PIO010_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Controls open-drain mode.
   type PIO010_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO010_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_10
   type PIO_Register_1 is record
      --  Selects pin function.
      FUNC           : PIO010_FUNC_Field := NRF_SVD.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO010_MODE_Field := NRF_SVD.IOCON.Pull_Up;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Input polarity.
      INVERT         : PIO010_INVERT_Field := NRF_SVD.IOCON.Disabled;
      --  Select Analog/Digital mode.
      DIGIMODE       : PIO010_DIGIMODE_Field := NRF_SVD.IOCON.Digital;
      --  Controls input glitch filter.
      FILTEROFF      : PIO010_FILTEROFF_Field := NRF_SVD.IOCON.Disabled;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Controls open-drain mode.
      OD             : PIO010_OD_Field := NRF_SVD.IOCON.Normal;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_Register_1 use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      FILTEROFF      at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      OD             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Selects pin function.
   type PIO013_FUNC_Field is
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
     with Size => 4;
   for PIO013_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Controls slew rate of I2C pad.
   type PIO013_I2CSLEW_Field is
     (
      --  I2C mode.
      I2C_Mode,
      --  GPIO mode.
      Gpio_Mode)
     with Size => 1;
   for PIO013_I2CSLEW_Field use
     (I2C_Mode => 0,
      Gpio_Mode => 1);

   --  Input polarity.
   type PIO013_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO013_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Analog/Digital mode.
   type PIO013_DIGIMODE_Field is
     (
      --  Analog mode.
      Analog,
      --  Digital mode.
      Digital)
     with Size => 1;
   for PIO013_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls input glitch filter.
   type PIO013_FILTEROFF_Field is
     (
      --  Filter enabled. Noise pulses below approximately 10 ns are filtered
      --  out.
      Enabled,
      --  Filter disabled. No input filtering is done.
      Disabled)
     with Size => 1;
   for PIO013_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Controls the current sink capability of the pin.
   type PIO013_I2CDRIVE_Field is
     (
      --  Low drive. Output drive sink is 4 mA. This is sufficient for standard
      --  and fast mode I2C.
      Low,
      --  High drive. Output drive sink is 20 mA. This is needed for Fast Mode
      --  Plus I 2C. Refer to the appropriate specific device data sheet for
      --  details.
      High)
     with Size => 1;
   for PIO013_I2CDRIVE_Field use
     (Low => 0,
      High => 1);

   --  Configures I2C features for standard mode, fast mode, and Fast Mode Plus
   --  operation.
   type PIO013_I2CFILTER_Field is
     (
      --  Enabled. I2C 50 ns glitch filter enabled.
      Enabled,
      --  Disabled. I2C 50 ns glitch filter disabled.
      Disabled)
     with Size => 1;
   for PIO013_I2CFILTER_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Digital I/O control for port 0 pins PIO0_13
   type PIO_Register_2 is record
      --  Selects pin function.
      FUNC           : PIO013_FUNC_Field := NRF_SVD.IOCON.Alt0;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Controls slew rate of I2C pad.
      I2CSLEW        : PIO013_I2CSLEW_Field := NRF_SVD.IOCON.Gpio_Mode;
      --  Input polarity.
      INVERT         : PIO013_INVERT_Field := NRF_SVD.IOCON.Disabled;
      --  Select Analog/Digital mode.
      DIGIMODE       : PIO013_DIGIMODE_Field := NRF_SVD.IOCON.Digital;
      --  Controls input glitch filter.
      FILTEROFF      : PIO013_FILTEROFF_Field := NRF_SVD.IOCON.Disabled;
      --  Controls the current sink capability of the pin.
      I2CDRIVE       : PIO013_I2CDRIVE_Field := NRF_SVD.IOCON.Low;
      --  Configures I2C features for standard mode, fast mode, and Fast Mode
      --  Plus operation.
      I2CFILTER      : PIO013_I2CFILTER_Field := NRF_SVD.IOCON.Enabled;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_Register_2 use record
      FUNC           at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      I2CSLEW        at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      FILTEROFF      at 0 range 9 .. 9;
      I2CDRIVE       at 0 range 10 .. 10;
      I2CFILTER      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x I/O pin configuration (IOCON)
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
      PIO010 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_11
      PIO011 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_12
      PIO012 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_13
      PIO013 : aliased PIO_Register_2;
      --  Digital I/O control for port 0 pins PIO0_14
      PIO014 : aliased PIO_Register_2;
      --  Digital I/O control for port 0 pins PIO0_15
      PIO015 : aliased PIO_Register_1;
      --  Digital I/O control for port 0 pins PIO0_16
      PIO016 : aliased PIO_Register_1;
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
      PIO024 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_25
      PIO025 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_26
      PIO026 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_27
      PIO027 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_28
      PIO028 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_29
      PIO029 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_30
      PIO030 : aliased PIO_Register;
      --  Digital I/O control for port 0 pins PIO0_31
      PIO031 : aliased PIO_Register_1;
      --  Digital I/O control for port 1 pins PIO1_0
      PIO10  : aliased PIO_Register_1;
      --  Digital I/O control for port 1 pins PIO1_1
      PIO11  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_2
      PIO12  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_3
      PIO13  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_4
      PIO14  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_5
      PIO15  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_6
      PIO16  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_7
      PIO17  : aliased PIO_Register;
      --  Digital I/O control for port 1 pins PIO1_8
      PIO18  : aliased PIO_Register;
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
      --  Digital I/O control for port 2 pins PIO2_0
      PIO20  : aliased PIO_Register_1;
      --  Digital I/O control for port 2 pins PIO2_1
      PIO21  : aliased PIO_Register_1;
      --  Digital I/O control for port 2 pins PIO2_2
      PIO22  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_3
      PIO23  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_4
      PIO24  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_5
      PIO25  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_6
      PIO26  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_7
      PIO27  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_8
      PIO28  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_9
      PIO29  : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_10
      PIO210 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_11
      PIO211 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_12
      PIO212 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_13
      PIO213 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_14
      PIO214 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_15
      PIO215 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_16
      PIO216 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_17
      PIO217 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_18
      PIO218 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_19
      PIO219 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_20
      PIO220 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_21
      PIO221 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_22
      PIO222 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_23
      PIO223 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_24
      PIO224 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_25
      PIO225 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_26
      PIO226 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_27
      PIO227 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_28
      PIO228 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_29
      PIO229 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_30
      PIO230 : aliased PIO_Register;
      --  Digital I/O control for port 2 pins PIO2_31
      PIO231 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_0
      PIO30  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_1
      PIO31  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_2
      PIO32  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_3
      PIO33  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_4
      PIO34  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_5
      PIO35  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_6
      PIO36  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_7
      PIO37  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_8
      PIO38  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_9
      PIO39  : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_10
      PIO310 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_11
      PIO311 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_12
      PIO312 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_13
      PIO313 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_14
      PIO314 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_15
      PIO315 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_16
      PIO316 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_17
      PIO317 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_18
      PIO318 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_19
      PIO319 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_20
      PIO320 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_21
      PIO321 : aliased PIO_Register_1;
      --  Digital I/O control for port 3 pins PIO3_22
      PIO322 : aliased PIO_Register_1;
      --  Digital I/O control for port 3 pins PIO3_23
      PIO323 : aliased PIO_Register_2;
      --  Digital I/O control for port 3 pins PIO3_24
      PIO324 : aliased PIO_Register_2;
      --  Digital I/O control for port 3 pins PIO3_25
      PIO325 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_26
      PIO326 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_27
      PIO327 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_28
      PIO328 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_29
      PIO329 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_30
      PIO330 : aliased PIO_Register;
      --  Digital I/O control for port 3 pins PIO3_31
      PIO331 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_0
      PIO40  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_1
      PIO41  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_2
      PIO42  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_3
      PIO43  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_4
      PIO44  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_5
      PIO45  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_6
      PIO46  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_7
      PIO47  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_8
      PIO48  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_9
      PIO49  : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_10
      PIO410 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_11
      PIO411 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_12
      PIO412 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_13
      PIO413 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_14
      PIO414 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_15
      PIO415 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_16
      PIO416 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_17
      PIO417 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_18
      PIO418 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_19
      PIO419 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_20
      PIO420 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_21
      PIO421 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_22
      PIO422 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_23
      PIO423 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_24
      PIO424 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_25
      PIO425 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_26
      PIO426 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_27
      PIO427 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_28
      PIO428 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_29
      PIO429 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_30
      PIO430 : aliased PIO_Register;
      --  Digital I/O control for port 4 pins PIO4_31
      PIO431 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_0
      PIO50  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_1
      PIO51  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_2
      PIO52  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_3
      PIO53  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_4
      PIO54  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_5
      PIO55  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_6
      PIO56  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_7
      PIO57  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_8
      PIO58  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_9
      PIO59  : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_10
      PIO510 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_11
      PIO511 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_12
      PIO512 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_13
      PIO513 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_14
      PIO514 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_15
      PIO515 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_16
      PIO516 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_17
      PIO517 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_18
      PIO518 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_19
      PIO519 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_20
      PIO520 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_21
      PIO521 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_22
      PIO522 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_23
      PIO523 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_24
      PIO524 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_25
      PIO525 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_26
      PIO526 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_27
      PIO527 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_28
      PIO528 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_29
      PIO529 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_30
      PIO530 : aliased PIO_Register;
      --  Digital I/O control for port 5 pins PIO5_31
      PIO531 : aliased PIO_Register;
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
      PIO20  at 16#100# range 0 .. 31;
      PIO21  at 16#104# range 0 .. 31;
      PIO22  at 16#108# range 0 .. 31;
      PIO23  at 16#10C# range 0 .. 31;
      PIO24  at 16#110# range 0 .. 31;
      PIO25  at 16#114# range 0 .. 31;
      PIO26  at 16#118# range 0 .. 31;
      PIO27  at 16#11C# range 0 .. 31;
      PIO28  at 16#120# range 0 .. 31;
      PIO29  at 16#124# range 0 .. 31;
      PIO210 at 16#128# range 0 .. 31;
      PIO211 at 16#12C# range 0 .. 31;
      PIO212 at 16#130# range 0 .. 31;
      PIO213 at 16#134# range 0 .. 31;
      PIO214 at 16#138# range 0 .. 31;
      PIO215 at 16#13C# range 0 .. 31;
      PIO216 at 16#140# range 0 .. 31;
      PIO217 at 16#144# range 0 .. 31;
      PIO218 at 16#148# range 0 .. 31;
      PIO219 at 16#14C# range 0 .. 31;
      PIO220 at 16#150# range 0 .. 31;
      PIO221 at 16#154# range 0 .. 31;
      PIO222 at 16#158# range 0 .. 31;
      PIO223 at 16#15C# range 0 .. 31;
      PIO224 at 16#160# range 0 .. 31;
      PIO225 at 16#164# range 0 .. 31;
      PIO226 at 16#168# range 0 .. 31;
      PIO227 at 16#16C# range 0 .. 31;
      PIO228 at 16#170# range 0 .. 31;
      PIO229 at 16#174# range 0 .. 31;
      PIO230 at 16#178# range 0 .. 31;
      PIO231 at 16#17C# range 0 .. 31;
      PIO30  at 16#180# range 0 .. 31;
      PIO31  at 16#184# range 0 .. 31;
      PIO32  at 16#188# range 0 .. 31;
      PIO33  at 16#18C# range 0 .. 31;
      PIO34  at 16#190# range 0 .. 31;
      PIO35  at 16#194# range 0 .. 31;
      PIO36  at 16#198# range 0 .. 31;
      PIO37  at 16#19C# range 0 .. 31;
      PIO38  at 16#1A0# range 0 .. 31;
      PIO39  at 16#1A4# range 0 .. 31;
      PIO310 at 16#1A8# range 0 .. 31;
      PIO311 at 16#1AC# range 0 .. 31;
      PIO312 at 16#1B0# range 0 .. 31;
      PIO313 at 16#1B4# range 0 .. 31;
      PIO314 at 16#1B8# range 0 .. 31;
      PIO315 at 16#1BC# range 0 .. 31;
      PIO316 at 16#1C0# range 0 .. 31;
      PIO317 at 16#1C4# range 0 .. 31;
      PIO318 at 16#1C8# range 0 .. 31;
      PIO319 at 16#1CC# range 0 .. 31;
      PIO320 at 16#1D0# range 0 .. 31;
      PIO321 at 16#1D4# range 0 .. 31;
      PIO322 at 16#1D8# range 0 .. 31;
      PIO323 at 16#1DC# range 0 .. 31;
      PIO324 at 16#1E0# range 0 .. 31;
      PIO325 at 16#1E4# range 0 .. 31;
      PIO326 at 16#1E8# range 0 .. 31;
      PIO327 at 16#1EC# range 0 .. 31;
      PIO328 at 16#1F0# range 0 .. 31;
      PIO329 at 16#1F4# range 0 .. 31;
      PIO330 at 16#1F8# range 0 .. 31;
      PIO331 at 16#1FC# range 0 .. 31;
      PIO40  at 16#200# range 0 .. 31;
      PIO41  at 16#204# range 0 .. 31;
      PIO42  at 16#208# range 0 .. 31;
      PIO43  at 16#20C# range 0 .. 31;
      PIO44  at 16#210# range 0 .. 31;
      PIO45  at 16#214# range 0 .. 31;
      PIO46  at 16#218# range 0 .. 31;
      PIO47  at 16#21C# range 0 .. 31;
      PIO48  at 16#220# range 0 .. 31;
      PIO49  at 16#224# range 0 .. 31;
      PIO410 at 16#228# range 0 .. 31;
      PIO411 at 16#22C# range 0 .. 31;
      PIO412 at 16#230# range 0 .. 31;
      PIO413 at 16#234# range 0 .. 31;
      PIO414 at 16#238# range 0 .. 31;
      PIO415 at 16#23C# range 0 .. 31;
      PIO416 at 16#240# range 0 .. 31;
      PIO417 at 16#244# range 0 .. 31;
      PIO418 at 16#248# range 0 .. 31;
      PIO419 at 16#24C# range 0 .. 31;
      PIO420 at 16#250# range 0 .. 31;
      PIO421 at 16#254# range 0 .. 31;
      PIO422 at 16#258# range 0 .. 31;
      PIO423 at 16#25C# range 0 .. 31;
      PIO424 at 16#260# range 0 .. 31;
      PIO425 at 16#264# range 0 .. 31;
      PIO426 at 16#268# range 0 .. 31;
      PIO427 at 16#26C# range 0 .. 31;
      PIO428 at 16#270# range 0 .. 31;
      PIO429 at 16#274# range 0 .. 31;
      PIO430 at 16#278# range 0 .. 31;
      PIO431 at 16#27C# range 0 .. 31;
      PIO50  at 16#280# range 0 .. 31;
      PIO51  at 16#284# range 0 .. 31;
      PIO52  at 16#288# range 0 .. 31;
      PIO53  at 16#28C# range 0 .. 31;
      PIO54  at 16#290# range 0 .. 31;
      PIO55  at 16#294# range 0 .. 31;
      PIO56  at 16#298# range 0 .. 31;
      PIO57  at 16#29C# range 0 .. 31;
      PIO58  at 16#2A0# range 0 .. 31;
      PIO59  at 16#2A4# range 0 .. 31;
      PIO510 at 16#2A8# range 0 .. 31;
      PIO511 at 16#2AC# range 0 .. 31;
      PIO512 at 16#2B0# range 0 .. 31;
      PIO513 at 16#2B4# range 0 .. 31;
      PIO514 at 16#2B8# range 0 .. 31;
      PIO515 at 16#2BC# range 0 .. 31;
      PIO516 at 16#2C0# range 0 .. 31;
      PIO517 at 16#2C4# range 0 .. 31;
      PIO518 at 16#2C8# range 0 .. 31;
      PIO519 at 16#2CC# range 0 .. 31;
      PIO520 at 16#2D0# range 0 .. 31;
      PIO521 at 16#2D4# range 0 .. 31;
      PIO522 at 16#2D8# range 0 .. 31;
      PIO523 at 16#2DC# range 0 .. 31;
      PIO524 at 16#2E0# range 0 .. 31;
      PIO525 at 16#2E4# range 0 .. 31;
      PIO526 at 16#2E8# range 0 .. 31;
      PIO527 at 16#2EC# range 0 .. 31;
      PIO528 at 16#2F0# range 0 .. 31;
      PIO529 at 16#2F4# range 0 .. 31;
      PIO530 at 16#2F8# range 0 .. 31;
      PIO531 at 16#2FC# range 0 .. 31;
   end record;

   --  LPC5411x I/O pin configuration (IOCON)
   IOCON_Periph : aliased IOCON_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end NRF_SVD.IOCON;
