--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
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

--  This spec has been automatically generated from ATSAML21E18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.OPAMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type OPAMP_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_6 : HAL.UInt5 := 16#0#;
      --  Low-Power Mux
      LPMUX        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OPAMP_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_6 at 0 range 2 .. 6;
      LPMUX        at 0 range 7 .. 7;
   end record;

   --  OPAMP_STATUS_READY array
   type OPAMP_STATUS_READY_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for OPAMP_STATUS_READY
   type OPAMP_STATUS_READY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  READY as a value
            Val : HAL.UInt3;
         when True =>
            --  READY as an array
            Arr : OPAMP_STATUS_READY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for OPAMP_STATUS_READY_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Status
   type OPAMP_STATUS_Register is record
      --  Read-only. OPAMP 0 Ready
      READY        : OPAMP_STATUS_READY_Field;
      --  unspecified
      Reserved_3_7 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OPAMP_STATUS_Register use record
      READY        at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype OPAMP_OPAMPCTRL_BIAS_Field is HAL.UInt2;
   subtype OPAMP_OPAMPCTRL_RES1MUX_Field is HAL.UInt2;
   subtype OPAMP_OPAMPCTRL_POTMUX_Field is HAL.UInt3;
   subtype OPAMP_OPAMPCTRL_MUXPOS_Field is HAL.UInt3;
   subtype OPAMP_OPAMPCTRL_MUXNEG_Field is HAL.UInt3;

   --  OPAMP Control n
   type OPAMP_OPAMPCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Operational Amplifier Enable
      ENABLE         : Boolean := False;
      --  Analog Output
      ANAOUT         : Boolean := False;
      --  Bias Selection
      BIAS           : OPAMP_OPAMPCTRL_BIAS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := False;
      --  Resistor ladder To Output
      RES2OUT        : Boolean := False;
      --  Resistor ladder To VCC
      RES2VCC        : Boolean := False;
      --  Resistor 1 Enable
      RES1EN         : Boolean := False;
      --  Resistor 1 Mux
      RES1MUX        : OPAMP_OPAMPCTRL_RES1MUX_Field := 16#0#;
      --  Potentiometer Selection
      POTMUX         : OPAMP_OPAMPCTRL_POTMUX_Field := 16#0#;
      --  Positive Input Mux Selection
      MUXPOS         : OPAMP_OPAMPCTRL_MUXPOS_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Negative Input Mux Selection
      MUXNEG         : OPAMP_OPAMPCTRL_MUXNEG_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP_OPAMPCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      ANAOUT         at 0 range 2 .. 2;
      BIAS           at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      RES2OUT        at 0 range 8 .. 8;
      RES2VCC        at 0 range 9 .. 9;
      RES1EN         at 0 range 10 .. 10;
      RES1MUX        at 0 range 11 .. 12;
      POTMUX         at 0 range 13 .. 15;
      MUXPOS         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MUXNEG         at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  OPAMP Control n
   type OPAMP_OPAMPCTRL_Registers is array (0 .. 2)
     of OPAMP_OPAMPCTRL_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Operational Amplifier
   type OPAMP_Peripheral is record
      --  Control A
      CTRLA     : aliased OPAMP_CTRLA_Register;
      --  Status
      STATUS    : aliased OPAMP_STATUS_Register;
      --  OPAMP Control n
      OPAMPCTRL : aliased OPAMP_OPAMPCTRL_Registers;
   end record
     with Volatile;

   for OPAMP_Peripheral use record
      CTRLA     at 16#0# range 0 .. 7;
      STATUS    at 16#2# range 0 .. 7;
      OPAMPCTRL at 16#4# range 0 .. 95;
   end record;

   --  Operational Amplifier
   OPAMP_Periph : aliased OPAMP_Peripheral
     with Import, Address => System'To_Address (16#43001800#);

end SAM_SVD.OPAMP;
