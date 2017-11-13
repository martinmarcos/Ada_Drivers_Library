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

--  This spec has been automatically generated from ATSAMC20G16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SUPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Clear
   type SUPC_INTENCLR_Register is record
      --  BODVDD Ready
      BODVDDRDY     : Boolean := False;
      --  BODVDD Detection
      BODVDDDET     : Boolean := False;
      --  BODVDD Synchronization Ready
      BVDDSRDY      : Boolean := False;
      --  BODCORE Ready
      BODCORERDY    : Boolean := False;
      --  BODCORE Detection
      BODCOREDET    : Boolean := False;
      --  BODCORE Synchronization Ready
      BCORESRDY     : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_INTENCLR_Register use record
      BODVDDRDY     at 0 range 0 .. 0;
      BODVDDDET     at 0 range 1 .. 1;
      BVDDSRDY      at 0 range 2 .. 2;
      BODCORERDY    at 0 range 3 .. 3;
      BODCOREDET    at 0 range 4 .. 4;
      BCORESRDY     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Enable Set
   type SUPC_INTENSET_Register is record
      --  BODVDD Ready
      BODVDDRDY     : Boolean := False;
      --  BODVDD Detection
      BODVDDDET     : Boolean := False;
      --  BODVDD Synchronization Ready
      BVDDSRDY      : Boolean := False;
      --  BODCORE Ready
      BODCORERDY    : Boolean := False;
      --  BODCORE Detection
      BODCOREDET    : Boolean := False;
      --  BODCORE Synchronization Ready
      BCORESRDY     : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_INTENSET_Register use record
      BODVDDRDY     at 0 range 0 .. 0;
      BODVDDDET     at 0 range 1 .. 1;
      BVDDSRDY      at 0 range 2 .. 2;
      BODCORERDY    at 0 range 3 .. 3;
      BODCOREDET    at 0 range 4 .. 4;
      BCORESRDY     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type SUPC_INTFLAG_Register is record
      --  BODVDD Ready
      BODVDDRDY     : Boolean := False;
      --  BODVDD Detection
      BODVDDDET     : Boolean := False;
      --  BODVDD Synchronization Ready
      BVDDSRDY      : Boolean := False;
      --  BODCORE Ready
      BODCORERDY    : Boolean := False;
      --  BODCORE Detection
      BODCOREDET    : Boolean := False;
      --  BODCORE Synchronization Ready
      BCORESRDY     : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_INTFLAG_Register use record
      BODVDDRDY     at 0 range 0 .. 0;
      BODVDDDET     at 0 range 1 .. 1;
      BVDDSRDY      at 0 range 2 .. 2;
      BODCORERDY    at 0 range 3 .. 3;
      BODCOREDET    at 0 range 4 .. 4;
      BCORESRDY     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Power and Clocks Status
   type SUPC_STATUS_Register is record
      --  Read-only. BODVDD Ready
      BODVDDRDY     : Boolean;
      --  Read-only. BODVDD Detection
      BODVDDDET     : Boolean;
      --  Read-only. BODVDD Synchronization Ready
      BVDDSRDY      : Boolean;
      --  Read-only. BODCORE Ready
      BODCORERDY    : Boolean;
      --  Read-only. BODCORE Detection
      BODCOREDET    : Boolean;
      --  Read-only. BODCORE Synchronization Ready
      BCORESRDY     : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_STATUS_Register use record
      BODVDDRDY     at 0 range 0 .. 0;
      BODVDDDET     at 0 range 1 .. 1;
      BVDDSRDY      at 0 range 2 .. 2;
      BODCORERDY    at 0 range 3 .. 3;
      BODCOREDET    at 0 range 4 .. 4;
      BCORESRDY     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Action when Threshold Crossed
   type BODVDD_ACTIONSelect is
     (
      --  No action
      None,
      --  The BOD33 generates a reset
      Reset,
      --  The BOD33 generates an interrupt
      Int)
     with Size => 2;
   for BODVDD_ACTIONSelect use
     (None => 0,
      Reset => 1,
      Int => 2);

   --  Prescaler Select
   type BODVDD_PSELSelect is
     (
      --  Divide clock by 2
      Div2,
      --  Divide clock by 4
      Div4,
      --  Divide clock by 8
      Div8,
      --  Divide clock by 16
      Div16,
      --  Divide clock by 32
      Div32,
      --  Divide clock by 64
      Div64,
      --  Divide clock by 128
      Div128,
      --  Divide clock by 256
      Div256,
      --  Divide clock by 512
      Div512,
      --  Divide clock by 1024
      Div1024,
      --  Divide clock by 2048
      Div2048,
      --  Divide clock by 4096
      Div4096,
      --  Divide clock by 8192
      Div8192,
      --  Divide clock by 16384
      Div16384,
      --  Divide clock by 32768
      Div32768,
      --  Divide clock by 65536
      Div65536)
     with Size => 4;
   for BODVDD_PSELSelect use
     (Div2 => 0,
      Div4 => 1,
      Div8 => 2,
      Div16 => 3,
      Div32 => 4,
      Div64 => 5,
      Div128 => 6,
      Div256 => 7,
      Div512 => 8,
      Div1024 => 9,
      Div2048 => 10,
      Div4096 => 11,
      Div8192 => 12,
      Div16384 => 13,
      Div32768 => 14,
      Div65536 => 15);

   subtype SUPC_BODVDD_LEVEL_Field is HAL.UInt6;

   --  BODVDD Control
   type SUPC_BODVDD_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Hysteresis Enable
      HYST           : Boolean := False;
      --  Action when Threshold Crossed
      ACTION         : BODVDD_ACTIONSelect := SAM_SVD.SUPC.None;
      --  Configuration in Standby mode
      STDBYCFG       : Boolean := False;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Configuration in Active mode
      ACTCFG         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Prescaler Select
      PSEL           : BODVDD_PSELSelect := SAM_SVD.SUPC.Div2;
      --  Threshold Level for VDD
      LEVEL          : SUPC_BODVDD_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BODVDD_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      HYST           at 0 range 2 .. 2;
      ACTION         at 0 range 3 .. 4;
      STDBYCFG       at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ACTCFG         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PSEL           at 0 range 12 .. 15;
      LEVEL          at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Action when Threshold Crossed
   type BODCORE_ACTIONSelect is
     (
      --  No action
      None,
      --  The BOD12 generates a reset
      Reset,
      --  The BOD12 generates an interrupt
      Int)
     with Size => 2;
   for BODCORE_ACTIONSelect use
     (None => 0,
      Reset => 1,
      Int => 2);

   --  Prescaler Select
   type BODCORE_PSELSelect is
     (
      --  Divide clock by 2
      Div2,
      --  Divide clock by 4
      Div4,
      --  Divide clock by 8
      Div8,
      --  Divide clock by 16
      Div16,
      --  Divide clock by 32
      Div32,
      --  Divide clock by 64
      Div64,
      --  Divide clock by 128
      Div128,
      --  Divide clock by 256
      Div256,
      --  Divide clock by 512
      Div512,
      --  Divide clock by 1024
      Div1024,
      --  Divide clock by 2048
      Div2048,
      --  Divide clock by 4096
      Div4096,
      --  Divide clock by 8192
      Div8192,
      --  Divide clock by 16384
      Div16384,
      --  Divide clock by 32768
      Div32768,
      --  Divide clock by 65536
      Div65536)
     with Size => 4;
   for BODCORE_PSELSelect use
     (Div2 => 0,
      Div4 => 1,
      Div8 => 2,
      Div16 => 3,
      Div32 => 4,
      Div64 => 5,
      Div128 => 6,
      Div256 => 7,
      Div512 => 8,
      Div1024 => 9,
      Div2048 => 10,
      Div4096 => 11,
      Div8192 => 12,
      Div16384 => 13,
      Div32768 => 14,
      Div65536 => 15);

   subtype SUPC_BODCORE_LEVEL_Field is HAL.UInt6;

   --  BODCORE Control
   type SUPC_BODCORE_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Hysteresis Enable
      HYST           : Boolean := False;
      --  Action when Threshold Crossed
      ACTION         : BODCORE_ACTIONSelect := SAM_SVD.SUPC.None;
      --  Configuration in Standby mode
      STDBYCFG       : Boolean := False;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Configuration in Active mode
      ACTCFG         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Prescaler Select
      PSEL           : BODCORE_PSELSelect := SAM_SVD.SUPC.Div2;
      --  Threshold Level
      LEVEL          : SUPC_BODCORE_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BODCORE_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      HYST           at 0 range 2 .. 2;
      ACTION         at 0 range 3 .. 4;
      STDBYCFG       at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ACTCFG         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PSEL           at 0 range 12 .. 15;
      LEVEL          at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  VREG Control
   type SUPC_VREG_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Enable
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_2_5  : HAL.UInt4 := 16#0#;
      --  Run during Standby
      RUNSTDBY      : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_VREG_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      Reserved_2_5  at 0 range 2 .. 5;
      RUNSTDBY      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Voltage Reference Selection
   type VREF_SELSelect is
     (
      --  1.024V voltage reference typical value
      VREF_SELSelect_1V024,
      --  2.048V voltage reference typical value
      VREF_SELSelect_2V048,
      --  4.096V voltage reference typical value
      VREF_SELSelect_4V096)
     with Size => 4;
   for VREF_SELSelect use
     (VREF_SELSelect_1V024 => 0,
      VREF_SELSelect_2V048 => 2,
      VREF_SELSelect_4V096 => 3);

   --  VREF Control
   type SUPC_VREF_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Temperature Sensor Output Enable
      TSEN           : Boolean := False;
      --  Voltage Reference Output Enable
      VREFOE         : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Contrl
      ONDEMAND       : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Voltage Reference Selection
      SEL            : VREF_SELSelect := SAM_SVD.SUPC.VREF_SELSelect_1V024;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_VREF_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TSEN           at 0 range 1 .. 1;
      VREFOE         at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SEL            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Supply Controller
   type SUPC_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR : aliased SUPC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased SUPC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased SUPC_INTFLAG_Register;
      --  Power and Clocks Status
      STATUS   : aliased SUPC_STATUS_Register;
      --  BODVDD Control
      BODVDD   : aliased SUPC_BODVDD_Register;
      --  BODCORE Control
      BODCORE  : aliased SUPC_BODCORE_Register;
      --  VREG Control
      VREG     : aliased SUPC_VREG_Register;
      --  VREF Control
      VREF     : aliased SUPC_VREF_Register;
   end record
     with Volatile;

   for SUPC_Peripheral use record
      INTENCLR at 16#0# range 0 .. 31;
      INTENSET at 16#4# range 0 .. 31;
      INTFLAG  at 16#8# range 0 .. 31;
      STATUS   at 16#C# range 0 .. 31;
      BODVDD   at 16#10# range 0 .. 31;
      BODCORE  at 16#14# range 0 .. 31;
      VREG     at 16#18# range 0 .. 31;
      VREF     at 16#1C# range 0 .. 31;
   end record;

   --  Supply Controller
   SUPC_Periph : aliased SUPC_Peripheral
     with Import, Address => System'To_Address (16#40001800#);

end SAM_SVD.SUPC;
