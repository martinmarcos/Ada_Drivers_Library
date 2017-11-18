--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TEMPMON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  This bit powers down the temperature sensor.
   type TEMPSENSE0_POWER_DOWN_Field is
     (
      --  Enable power to the temperature sensor.
      Power_Up,
      --  Power down the temperature sensor.
      Power_Down)
     with Size => 1;
   for TEMPSENSE0_POWER_DOWN_Field use
     (Power_Up => 0,
      Power_Down => 1);

   --  Starts the measurement process
   type TEMPSENSE0_MEASURE_TEMP_Field is
     (
      --  Do not start the measurement process.
      Stop,
      --  Start the measurement process.
      Start)
     with Size => 1;
   for TEMPSENSE0_MEASURE_TEMP_Field use
     (Stop => 0,
      Start => 1);

   --  Indicates that the latest temp is valid
   type TEMPSENSE0_FINISHED_Field is
     (
      --  Last measurement is not ready yet.
      Invalid,
      --  Last measurement is valid.
      Valid)
     with Size => 1;
   for TEMPSENSE0_FINISHED_Field use
     (Invalid => 0,
      Valid => 1);

   subtype TEMPMON_TEMPSENSE0_TEMP_CNT_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE0_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 0
   type TEMPMON_TEMPSENSE0_Register is record
      --  This bit powers down the temperature sensor.
      POWER_DOWN   : TEMPSENSE0_POWER_DOWN_Field :=
                      NRF_SVD.TEMPMON.Power_Down;
      --  Starts the measurement process
      MEASURE_TEMP : TEMPSENSE0_MEASURE_TEMP_Field := NRF_SVD.TEMPMON.Stop;
      --  Read-only. Indicates that the latest temp is valid
      FINISHED     : TEMPSENSE0_FINISHED_Field := NRF_SVD.TEMPMON.Invalid;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Read-only. This bit field contains the last measured temperature
      --  count.
      TEMP_CNT     : TEMPMON_TEMPSENSE0_TEMP_CNT_Field := 16#0#;
      --  This bit field contains the temperature count (raw sensor output)
      --  that will generate an alarm interrupt
      ALARM_VALUE  : TEMPMON_TEMPSENSE0_ALARM_VALUE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE0_Register use record
      POWER_DOWN   at 0 range 0 .. 0;
      MEASURE_TEMP at 0 range 1 .. 1;
      FINISHED     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      TEMP_CNT     at 0 range 8 .. 19;
      ALARM_VALUE  at 0 range 20 .. 31;
   end record;

   --  This bit powers down the temperature sensor.
   type TEMPSENSE0_SET_POWER_DOWN_Field is
     (
      --  Enable power to the temperature sensor.
      Power_Up,
      --  Power down the temperature sensor.
      Power_Down)
     with Size => 1;
   for TEMPSENSE0_SET_POWER_DOWN_Field use
     (Power_Up => 0,
      Power_Down => 1);

   --  Starts the measurement process
   type TEMPSENSE0_SET_MEASURE_TEMP_Field is
     (
      --  Do not start the measurement process.
      Stop,
      --  Start the measurement process.
      Start)
     with Size => 1;
   for TEMPSENSE0_SET_MEASURE_TEMP_Field use
     (Stop => 0,
      Start => 1);

   --  Indicates that the latest temp is valid
   type TEMPSENSE0_SET_FINISHED_Field is
     (
      --  Last measurement is not ready yet.
      Invalid,
      --  Last measurement is valid.
      Valid)
     with Size => 1;
   for TEMPSENSE0_SET_FINISHED_Field use
     (Invalid => 0,
      Valid => 1);

   subtype TEMPMON_TEMPSENSE0_SET_TEMP_CNT_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE0_SET_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 0
   type TEMPMON_TEMPSENSE0_SET_Register is record
      --  This bit powers down the temperature sensor.
      POWER_DOWN   : TEMPSENSE0_SET_POWER_DOWN_Field :=
                      NRF_SVD.TEMPMON.Power_Down;
      --  Starts the measurement process
      MEASURE_TEMP : TEMPSENSE0_SET_MEASURE_TEMP_Field :=
                      NRF_SVD.TEMPMON.Stop;
      --  Read-only. Indicates that the latest temp is valid
      FINISHED     : TEMPSENSE0_SET_FINISHED_Field := NRF_SVD.TEMPMON.Invalid;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Read-only. This bit field contains the last measured temperature
      --  count.
      TEMP_CNT     : TEMPMON_TEMPSENSE0_SET_TEMP_CNT_Field := 16#0#;
      --  This bit field contains the temperature count (raw sensor output)
      --  that will generate an alarm interrupt
      ALARM_VALUE  : TEMPMON_TEMPSENSE0_SET_ALARM_VALUE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE0_SET_Register use record
      POWER_DOWN   at 0 range 0 .. 0;
      MEASURE_TEMP at 0 range 1 .. 1;
      FINISHED     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      TEMP_CNT     at 0 range 8 .. 19;
      ALARM_VALUE  at 0 range 20 .. 31;
   end record;

   --  This bit powers down the temperature sensor.
   type TEMPSENSE0_CLR_POWER_DOWN_Field is
     (
      --  Enable power to the temperature sensor.
      Power_Up,
      --  Power down the temperature sensor.
      Power_Down)
     with Size => 1;
   for TEMPSENSE0_CLR_POWER_DOWN_Field use
     (Power_Up => 0,
      Power_Down => 1);

   --  Starts the measurement process
   type TEMPSENSE0_CLR_MEASURE_TEMP_Field is
     (
      --  Do not start the measurement process.
      Stop,
      --  Start the measurement process.
      Start)
     with Size => 1;
   for TEMPSENSE0_CLR_MEASURE_TEMP_Field use
     (Stop => 0,
      Start => 1);

   --  Indicates that the latest temp is valid
   type TEMPSENSE0_CLR_FINISHED_Field is
     (
      --  Last measurement is not ready yet.
      Invalid,
      --  Last measurement is valid.
      Valid)
     with Size => 1;
   for TEMPSENSE0_CLR_FINISHED_Field use
     (Invalid => 0,
      Valid => 1);

   subtype TEMPMON_TEMPSENSE0_CLR_TEMP_CNT_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE0_CLR_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 0
   type TEMPMON_TEMPSENSE0_CLR_Register is record
      --  This bit powers down the temperature sensor.
      POWER_DOWN   : TEMPSENSE0_CLR_POWER_DOWN_Field :=
                      NRF_SVD.TEMPMON.Power_Down;
      --  Starts the measurement process
      MEASURE_TEMP : TEMPSENSE0_CLR_MEASURE_TEMP_Field :=
                      NRF_SVD.TEMPMON.Stop;
      --  Read-only. Indicates that the latest temp is valid
      FINISHED     : TEMPSENSE0_CLR_FINISHED_Field := NRF_SVD.TEMPMON.Invalid;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Read-only. This bit field contains the last measured temperature
      --  count.
      TEMP_CNT     : TEMPMON_TEMPSENSE0_CLR_TEMP_CNT_Field := 16#0#;
      --  This bit field contains the temperature count (raw sensor output)
      --  that will generate an alarm interrupt
      ALARM_VALUE  : TEMPMON_TEMPSENSE0_CLR_ALARM_VALUE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE0_CLR_Register use record
      POWER_DOWN   at 0 range 0 .. 0;
      MEASURE_TEMP at 0 range 1 .. 1;
      FINISHED     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      TEMP_CNT     at 0 range 8 .. 19;
      ALARM_VALUE  at 0 range 20 .. 31;
   end record;

   --  This bit powers down the temperature sensor.
   type TEMPSENSE0_TOG_POWER_DOWN_Field is
     (
      --  Enable power to the temperature sensor.
      Power_Up,
      --  Power down the temperature sensor.
      Power_Down)
     with Size => 1;
   for TEMPSENSE0_TOG_POWER_DOWN_Field use
     (Power_Up => 0,
      Power_Down => 1);

   --  Starts the measurement process
   type TEMPSENSE0_TOG_MEASURE_TEMP_Field is
     (
      --  Do not start the measurement process.
      Stop,
      --  Start the measurement process.
      Start)
     with Size => 1;
   for TEMPSENSE0_TOG_MEASURE_TEMP_Field use
     (Stop => 0,
      Start => 1);

   --  Indicates that the latest temp is valid
   type TEMPSENSE0_TOG_FINISHED_Field is
     (
      --  Last measurement is not ready yet.
      Invalid,
      --  Last measurement is valid.
      Valid)
     with Size => 1;
   for TEMPSENSE0_TOG_FINISHED_Field use
     (Invalid => 0,
      Valid => 1);

   subtype TEMPMON_TEMPSENSE0_TOG_TEMP_CNT_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE0_TOG_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 0
   type TEMPMON_TEMPSENSE0_TOG_Register is record
      --  This bit powers down the temperature sensor.
      POWER_DOWN   : TEMPSENSE0_TOG_POWER_DOWN_Field :=
                      NRF_SVD.TEMPMON.Power_Down;
      --  Starts the measurement process
      MEASURE_TEMP : TEMPSENSE0_TOG_MEASURE_TEMP_Field :=
                      NRF_SVD.TEMPMON.Stop;
      --  Read-only. Indicates that the latest temp is valid
      FINISHED     : TEMPSENSE0_TOG_FINISHED_Field := NRF_SVD.TEMPMON.Invalid;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Read-only. This bit field contains the last measured temperature
      --  count.
      TEMP_CNT     : TEMPMON_TEMPSENSE0_TOG_TEMP_CNT_Field := 16#0#;
      --  This bit field contains the temperature count (raw sensor output)
      --  that will generate an alarm interrupt
      ALARM_VALUE  : TEMPMON_TEMPSENSE0_TOG_ALARM_VALUE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE0_TOG_Register use record
      POWER_DOWN   at 0 range 0 .. 0;
      MEASURE_TEMP at 0 range 1 .. 1;
      FINISHED     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      TEMP_CNT     at 0 range 8 .. 19;
      ALARM_VALUE  at 0 range 20 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE1_MEASURE_FREQ_Field is HAL.UInt16;

   --  Tempsensor Control Register 1
   type TEMPMON_TEMPSENSE1_Register is record
      --  This bits determines how many RTC clocks to wait before automatically
      --  repeating a temperature measurement
      MEASURE_FREQ   : TEMPMON_TEMPSENSE1_MEASURE_FREQ_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE1_Register use record
      MEASURE_FREQ   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE1_SET_MEASURE_FREQ_Field is HAL.UInt16;

   --  Tempsensor Control Register 1
   type TEMPMON_TEMPSENSE1_SET_Register is record
      --  This bits determines how many RTC clocks to wait before automatically
      --  repeating a temperature measurement
      MEASURE_FREQ   : TEMPMON_TEMPSENSE1_SET_MEASURE_FREQ_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE1_SET_Register use record
      MEASURE_FREQ   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE1_CLR_MEASURE_FREQ_Field is HAL.UInt16;

   --  Tempsensor Control Register 1
   type TEMPMON_TEMPSENSE1_CLR_Register is record
      --  This bits determines how many RTC clocks to wait before automatically
      --  repeating a temperature measurement
      MEASURE_FREQ   : TEMPMON_TEMPSENSE1_CLR_MEASURE_FREQ_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE1_CLR_Register use record
      MEASURE_FREQ   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE1_TOG_MEASURE_FREQ_Field is HAL.UInt16;

   --  Tempsensor Control Register 1
   type TEMPMON_TEMPSENSE1_TOG_Register is record
      --  This bits determines how many RTC clocks to wait before automatically
      --  repeating a temperature measurement
      MEASURE_FREQ   : TEMPMON_TEMPSENSE1_TOG_MEASURE_FREQ_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE1_TOG_Register use record
      MEASURE_FREQ   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE2_LOW_ALARM_VALUE_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE2_PANIC_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 2
   type TEMPMON_TEMPSENSE2_Register is record
      --  This bit field contains the temperature that will generate a low
      --  alarm interrupt when the field is greater than the temperature
      --  measurement
      LOW_ALARM_VALUE   : TEMPMON_TEMPSENSE2_LOW_ALARM_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_15    : HAL.UInt4 := 16#0#;
      --  This bit field contains the temperature that will generate a panic
      --  interrupt when exceeded by the temperature measurement
      PANIC_ALARM_VALUE : TEMPMON_TEMPSENSE2_PANIC_ALARM_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_28_31    : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE2_Register use record
      LOW_ALARM_VALUE   at 0 range 0 .. 11;
      Reserved_12_15    at 0 range 12 .. 15;
      PANIC_ALARM_VALUE at 0 range 16 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE2_SET_LOW_ALARM_VALUE_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE2_SET_PANIC_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 2
   type TEMPMON_TEMPSENSE2_SET_Register is record
      --  This bit field contains the temperature that will generate a low
      --  alarm interrupt when the field is greater than the temperature
      --  measurement
      LOW_ALARM_VALUE   : TEMPMON_TEMPSENSE2_SET_LOW_ALARM_VALUE_Field :=
                           16#0#;
      --  unspecified
      Reserved_12_15    : HAL.UInt4 := 16#0#;
      --  This bit field contains the temperature that will generate a panic
      --  interrupt when exceeded by the temperature measurement
      PANIC_ALARM_VALUE : TEMPMON_TEMPSENSE2_SET_PANIC_ALARM_VALUE_Field :=
                           16#0#;
      --  unspecified
      Reserved_28_31    : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE2_SET_Register use record
      LOW_ALARM_VALUE   at 0 range 0 .. 11;
      Reserved_12_15    at 0 range 12 .. 15;
      PANIC_ALARM_VALUE at 0 range 16 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE2_CLR_LOW_ALARM_VALUE_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE2_CLR_PANIC_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 2
   type TEMPMON_TEMPSENSE2_CLR_Register is record
      --  This bit field contains the temperature that will generate a low
      --  alarm interrupt when the field is greater than the temperature
      --  measurement
      LOW_ALARM_VALUE   : TEMPMON_TEMPSENSE2_CLR_LOW_ALARM_VALUE_Field :=
                           16#0#;
      --  unspecified
      Reserved_12_15    : HAL.UInt4 := 16#0#;
      --  This bit field contains the temperature that will generate a panic
      --  interrupt when exceeded by the temperature measurement
      PANIC_ALARM_VALUE : TEMPMON_TEMPSENSE2_CLR_PANIC_ALARM_VALUE_Field :=
                           16#0#;
      --  unspecified
      Reserved_28_31    : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE2_CLR_Register use record
      LOW_ALARM_VALUE   at 0 range 0 .. 11;
      Reserved_12_15    at 0 range 12 .. 15;
      PANIC_ALARM_VALUE at 0 range 16 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   subtype TEMPMON_TEMPSENSE2_TOG_LOW_ALARM_VALUE_Field is HAL.UInt12;
   subtype TEMPMON_TEMPSENSE2_TOG_PANIC_ALARM_VALUE_Field is HAL.UInt12;

   --  Tempsensor Control Register 2
   type TEMPMON_TEMPSENSE2_TOG_Register is record
      --  This bit field contains the temperature that will generate a low
      --  alarm interrupt when the field is greater than the temperature
      --  measurement
      LOW_ALARM_VALUE   : TEMPMON_TEMPSENSE2_TOG_LOW_ALARM_VALUE_Field :=
                           16#0#;
      --  unspecified
      Reserved_12_15    : HAL.UInt4 := 16#0#;
      --  This bit field contains the temperature that will generate a panic
      --  interrupt when exceeded by the temperature measurement
      PANIC_ALARM_VALUE : TEMPMON_TEMPSENSE2_TOG_PANIC_ALARM_VALUE_Field :=
                           16#0#;
      --  unspecified
      Reserved_28_31    : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPMON_TEMPSENSE2_TOG_Register use record
      LOW_ALARM_VALUE   at 0 range 0 .. 11;
      Reserved_12_15    at 0 range 12 .. 15;
      PANIC_ALARM_VALUE at 0 range 16 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Temperature Monitor
   type TEMPMON_Peripheral is record
      --  Tempsensor Control Register 0
      TEMPSENSE0     : aliased TEMPMON_TEMPSENSE0_Register;
      --  Tempsensor Control Register 0
      TEMPSENSE0_SET : aliased TEMPMON_TEMPSENSE0_SET_Register;
      --  Tempsensor Control Register 0
      TEMPSENSE0_CLR : aliased TEMPMON_TEMPSENSE0_CLR_Register;
      --  Tempsensor Control Register 0
      TEMPSENSE0_TOG : aliased TEMPMON_TEMPSENSE0_TOG_Register;
      --  Tempsensor Control Register 1
      TEMPSENSE1     : aliased TEMPMON_TEMPSENSE1_Register;
      --  Tempsensor Control Register 1
      TEMPSENSE1_SET : aliased TEMPMON_TEMPSENSE1_SET_Register;
      --  Tempsensor Control Register 1
      TEMPSENSE1_CLR : aliased TEMPMON_TEMPSENSE1_CLR_Register;
      --  Tempsensor Control Register 1
      TEMPSENSE1_TOG : aliased TEMPMON_TEMPSENSE1_TOG_Register;
      --  Tempsensor Control Register 2
      TEMPSENSE2     : aliased TEMPMON_TEMPSENSE2_Register;
      --  Tempsensor Control Register 2
      TEMPSENSE2_SET : aliased TEMPMON_TEMPSENSE2_SET_Register;
      --  Tempsensor Control Register 2
      TEMPSENSE2_CLR : aliased TEMPMON_TEMPSENSE2_CLR_Register;
      --  Tempsensor Control Register 2
      TEMPSENSE2_TOG : aliased TEMPMON_TEMPSENSE2_TOG_Register;
   end record
     with Volatile;

   for TEMPMON_Peripheral use record
      TEMPSENSE0     at 16#180# range 0 .. 31;
      TEMPSENSE0_SET at 16#184# range 0 .. 31;
      TEMPSENSE0_CLR at 16#188# range 0 .. 31;
      TEMPSENSE0_TOG at 16#18C# range 0 .. 31;
      TEMPSENSE1     at 16#190# range 0 .. 31;
      TEMPSENSE1_SET at 16#194# range 0 .. 31;
      TEMPSENSE1_CLR at 16#198# range 0 .. 31;
      TEMPSENSE1_TOG at 16#19C# range 0 .. 31;
      TEMPSENSE2     at 16#290# range 0 .. 31;
      TEMPSENSE2_SET at 16#294# range 0 .. 31;
      TEMPSENSE2_CLR at 16#298# range 0 .. 31;
      TEMPSENSE2_TOG at 16#29C# range 0 .. 31;
   end record;

   --  Temperature Monitor
   TEMPMON_Periph : aliased TEMPMON_Peripheral
     with Import, Address => System'To_Address (16#400D8000#);

end NRF_SVD.TEMPMON;
