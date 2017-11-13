--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2017 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAMC21J16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TSENS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A Register
   type TSENS_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Control B Register
   type TSENS_CTRLB_Register is record
      --  Write-only. Start Measurement
      START        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_CTRLB_Register use record
      START        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Window Monitor Mode
   type CTRLC_WINMODESelect is
     (
      --  No window mode (default)
      Disable,
      --  VALUE greater than WINLT
      Above,
      --  VALUE less than WINUT
      Below,
      --  VALUE greater than WINLT and VALUE less than WINUT
      Inside,
      --  VALUE less than WINLT or VALUE greater than WINUT
      Outside,
      --  VALUE greater than WINUT with hysteresis to WINLT
      Hyst_Above,
      --  VALUE less than WINLST with hysteresis to WINUT
      Hyst_Below)
     with Size => 3;
   for CTRLC_WINMODESelect use
     (Disable => 0,
      Above => 1,
      Below => 2,
      Inside => 3,
      Outside => 4,
      Hyst_Above => 5,
      Hyst_Below => 6);

   --  Control C Register
   type TSENS_CTRLC_Register is record
      --  Window Monitor Mode
      WINMODE      : CTRLC_WINMODESelect := SAM_SVD.TSENS.Disable;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Free Running Measurement
      FREERUN      : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_CTRLC_Register use record
      WINMODE      at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      FREERUN      at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Event Control Register
   type TSENS_EVCTRL_Register is record
      --  Start Conversion Event Input Enable
      STARTEI      : Boolean := False;
      --  Start Conversion Event Invert Enable
      STARTINV     : Boolean := False;
      --  Window Monitor Event Out
      WINEO        : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_EVCTRL_Register use record
      STARTEI      at 0 range 0 .. 0;
      STARTINV     at 0 range 1 .. 1;
      WINEO        at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Enable Clear Register
   type TSENS_INTENCLR_Register is record
      --  Result Ready Interrupt Enable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Enable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Enable
      WINMON       : Boolean := False;
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_INTENCLR_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      OVF          at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Interrupt Enable Set Register
   type TSENS_INTENSET_Register is record
      --  Result Ready Interrupt Enable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Enable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Enable
      WINMON       : Boolean := False;
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_INTENSET_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      OVF          at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Interrupt Flag Status and Clear Register
   type TSENS_INTFLAG_Register is record
      --  Result Ready
      RESRDY       : Boolean := False;
      --  Overrun
      OVERRUN      : Boolean := False;
      --  Window Monitor
      WINMON       : Boolean := False;
      --  Overflow
      OVF          : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_INTFLAG_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      OVF          at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Status Register
   type TSENS_STATUS_Register is record
      --  Read-only. Result Overflow
      OVF          : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_STATUS_Register use record
      OVF          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Synchronization Busy Register
   type TSENS_SYNCBUSY_Register is record
      --  Read-only. Software Reset Busy
      SWRST         : Boolean;
      --  Read-only. Enable Busy
      ENABLE        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_SYNCBUSY_Register use record
      SWRST         at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TSENS_VALUE_VALUE_Field is HAL.UInt24;

   --  Value Register
   type TSENS_VALUE_Register is record
      --  Read-only. Measurement Value
      VALUE          : TSENS_VALUE_VALUE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_VALUE_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TSENS_WINLT_WINLT_Field is HAL.UInt24;

   --  Window Monitor Lower Threshold Register
   type TSENS_WINLT_Register is record
      --  Window Lower Threshold
      WINLT          : TSENS_WINLT_WINLT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_WINLT_Register use record
      WINLT          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TSENS_WINUT_WINUT_Field is HAL.UInt24;

   --  Window Monitor Upper Threshold Register
   type TSENS_WINUT_Register is record
      --  Window Upper Threshold
      WINUT          : TSENS_WINUT_WINUT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_WINUT_Register use record
      WINUT          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TSENS_GAIN_GAIN_Field is HAL.UInt24;

   --  Gain Register
   type TSENS_GAIN_Register is record
      --  Time Amplifier Gain
      GAIN           : TSENS_GAIN_GAIN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_GAIN_Register use record
      GAIN           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TSENS_OFFSET_OFFSETC_Field is HAL.UInt24;

   --  Offset Register
   type TSENS_OFFSET_Register is record
      --  Offset Correction
      OFFSETC        : TSENS_OFFSET_OFFSETC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_OFFSET_Register use record
      OFFSETC        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TSENS_CAL_FCAL_Field is HAL.UInt6;
   subtype TSENS_CAL_TCAL_Field is HAL.UInt6;

   --  Calibration Register
   type TSENS_CAL_Register is record
      --  Frequency Calibration
      FCAL           : TSENS_CAL_FCAL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Temperature Calibration
      TCAL           : TSENS_CAL_TCAL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_CAL_Register use record
      FCAL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TCAL           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Debug Control Register
   type TSENS_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TSENS_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Temperature Sensor
   type TSENS_Peripheral is record
      --  Control A Register
      CTRLA    : aliased TSENS_CTRLA_Register;
      --  Control B Register
      CTRLB    : aliased TSENS_CTRLB_Register;
      --  Control C Register
      CTRLC    : aliased TSENS_CTRLC_Register;
      --  Event Control Register
      EVCTRL   : aliased TSENS_EVCTRL_Register;
      --  Interrupt Enable Clear Register
      INTENCLR : aliased TSENS_INTENCLR_Register;
      --  Interrupt Enable Set Register
      INTENSET : aliased TSENS_INTENSET_Register;
      --  Interrupt Flag Status and Clear Register
      INTFLAG  : aliased TSENS_INTFLAG_Register;
      --  Status Register
      STATUS   : aliased TSENS_STATUS_Register;
      --  Synchronization Busy Register
      SYNCBUSY : aliased TSENS_SYNCBUSY_Register;
      --  Value Register
      VALUE    : aliased TSENS_VALUE_Register;
      --  Window Monitor Lower Threshold Register
      WINLT    : aliased TSENS_WINLT_Register;
      --  Window Monitor Upper Threshold Register
      WINUT    : aliased TSENS_WINUT_Register;
      --  Gain Register
      GAIN     : aliased TSENS_GAIN_Register;
      --  Offset Register
      OFFSET   : aliased TSENS_OFFSET_Register;
      --  Calibration Register
      CAL      : aliased TSENS_CAL_Register;
      --  Debug Control Register
      DBGCTRL  : aliased TSENS_DBGCTRL_Register;
   end record
     with Volatile;

   for TSENS_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      CTRLB    at 16#1# range 0 .. 7;
      CTRLC    at 16#2# range 0 .. 7;
      EVCTRL   at 16#3# range 0 .. 7;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STATUS   at 16#7# range 0 .. 7;
      SYNCBUSY at 16#8# range 0 .. 31;
      VALUE    at 16#C# range 0 .. 31;
      WINLT    at 16#10# range 0 .. 31;
      WINUT    at 16#14# range 0 .. 31;
      GAIN     at 16#18# range 0 .. 31;
      OFFSET   at 16#1C# range 0 .. 31;
      CAL      at 16#20# range 0 .. 31;
      DBGCTRL  at 16#24# range 0 .. 7;
   end record;

   --  Temperature Sensor
   TSENS_Periph : aliased TSENS_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

end SAM_SVD.TSENS;
