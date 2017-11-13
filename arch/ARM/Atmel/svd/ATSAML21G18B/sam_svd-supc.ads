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

--  This spec has been automatically generated from ATSAML21G18B.svd

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
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  BOD12 Ready
      BOD12RDY       : Boolean := False;
      --  BOD12 Detection
      BOD12DET       : Boolean := False;
      --  BOD12 Synchronization Ready
      B12SRDY        : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Voltage Regulator Ready
      VREGRDY        : Boolean := False;
      --  Automatic Power Switch Ready
      APWSRDY        : Boolean := False;
      --  VDDCORE Ready
      VCORERDY       : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_INTENCLR_Register use record
      BOD33RDY       at 0 range 0 .. 0;
      BOD33DET       at 0 range 1 .. 1;
      B33SRDY        at 0 range 2 .. 2;
      BOD12RDY       at 0 range 3 .. 3;
      BOD12DET       at 0 range 4 .. 4;
      B12SRDY        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VREGRDY        at 0 range 8 .. 8;
      APWSRDY        at 0 range 9 .. 9;
      VCORERDY       at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Enable Set
   type SUPC_INTENSET_Register is record
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  BOD12 Ready
      BOD12RDY       : Boolean := False;
      --  BOD12 Detection
      BOD12DET       : Boolean := False;
      --  BOD12 Synchronization Ready
      B12SRDY        : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Voltage Regulator Ready
      VREGRDY        : Boolean := False;
      --  Automatic Power Switch Ready
      APWSRDY        : Boolean := False;
      --  VDDCORE Ready
      VCORERDY       : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_INTENSET_Register use record
      BOD33RDY       at 0 range 0 .. 0;
      BOD33DET       at 0 range 1 .. 1;
      B33SRDY        at 0 range 2 .. 2;
      BOD12RDY       at 0 range 3 .. 3;
      BOD12DET       at 0 range 4 .. 4;
      B12SRDY        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VREGRDY        at 0 range 8 .. 8;
      APWSRDY        at 0 range 9 .. 9;
      VCORERDY       at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type SUPC_INTFLAG_Register is record
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  BOD12 Ready
      BOD12RDY       : Boolean := False;
      --  BOD12 Detection
      BOD12DET       : Boolean := False;
      --  BOD12 Synchronization Ready
      B12SRDY        : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Voltage Regulator Ready
      VREGRDY        : Boolean := False;
      --  Automatic Power Switch Ready
      APWSRDY        : Boolean := False;
      --  VDDCORE Ready
      VCORERDY       : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_INTFLAG_Register use record
      BOD33RDY       at 0 range 0 .. 0;
      BOD33DET       at 0 range 1 .. 1;
      B33SRDY        at 0 range 2 .. 2;
      BOD12RDY       at 0 range 3 .. 3;
      BOD12DET       at 0 range 4 .. 4;
      B12SRDY        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VREGRDY        at 0 range 8 .. 8;
      APWSRDY        at 0 range 9 .. 9;
      VCORERDY       at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Power and Clocks Status
   type SUPC_STATUS_Register is record
      --  Read-only. BOD33 Ready
      BOD33RDY       : Boolean;
      --  Read-only. BOD33 Detection
      BOD33DET       : Boolean;
      --  Read-only. BOD33 Synchronization Ready
      B33SRDY        : Boolean;
      --  Read-only. BOD12 Ready
      BOD12RDY       : Boolean;
      --  Read-only. BOD12 Detection
      BOD12DET       : Boolean;
      --  Read-only. BOD12 Synchronization Ready
      B12SRDY        : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Voltage Regulator Ready
      VREGRDY        : Boolean;
      --  Read-only. Automatic Power Switch Ready
      APWSRDY        : Boolean;
      --  Read-only. VDDCORE Ready
      VCORERDY       : Boolean;
      --  Read-only. Battery Backup Power Switch
      BBPS           : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_STATUS_Register use record
      BOD33RDY       at 0 range 0 .. 0;
      BOD33DET       at 0 range 1 .. 1;
      B33SRDY        at 0 range 2 .. 2;
      BOD12RDY       at 0 range 3 .. 3;
      BOD12DET       at 0 range 4 .. 4;
      B12SRDY        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VREGRDY        at 0 range 8 .. 8;
      APWSRDY        at 0 range 9 .. 9;
      VCORERDY       at 0 range 10 .. 10;
      BBPS           at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Action when Threshold Crossed
   type BOD33_ACTIONSelect is
     (
      --  No action
      None,
      --  The BOD33 generates a reset
      Reset,
      --  The BOD33 generates an interrupt
      Int,
      --  The BOD33 puts the device in backup sleep mode if VMON=0
      Bkup)
     with Size => 2;
   for BOD33_ACTIONSelect use
     (None => 0,
      Reset => 1,
      Int => 2,
      Bkup => 3);

   --  Prescaler Select
   type BOD33_PSELSelect is
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
   for BOD33_PSELSelect use
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

   subtype SUPC_BOD33_LEVEL_Field is HAL.UInt6;
   subtype SUPC_BOD33_BKUPLEVEL_Field is HAL.UInt6;

   --  BOD33 Control
   type SUPC_BOD33_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Hysteresis Enable
      HYST           : Boolean := False;
      --  Action when Threshold Crossed
      ACTION         : BOD33_ACTIONSelect := SAM_SVD.SUPC.None;
      --  Configuration in Standby mode
      STDBYCFG       : Boolean := False;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  Configuration in Backup mode
      RUNBKUP        : Boolean := False;
      --  Configuration in Active mode
      ACTCFG         : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Voltage Monitored in active and standby mode
      VMON           : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Prescaler Select
      PSEL           : BOD33_PSELSelect := SAM_SVD.SUPC.Div2;
      --  Threshold Level for VDD
      LEVEL          : SUPC_BOD33_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Threshold Level in backup sleep mode or for VBAT
      BKUPLEVEL      : SUPC_BOD33_BKUPLEVEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BOD33_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      HYST           at 0 range 2 .. 2;
      ACTION         at 0 range 3 .. 4;
      STDBYCFG       at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      RUNBKUP        at 0 range 7 .. 7;
      ACTCFG         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      VMON           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PSEL           at 0 range 12 .. 15;
      LEVEL          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      BKUPLEVEL      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Action when Threshold Crossed
   type BOD12_ACTIONSelect is
     (
      --  No action
      None,
      --  The BOD12 generates a reset
      Reset,
      --  The BOD12 generates an interrupt
      Int)
     with Size => 2;
   for BOD12_ACTIONSelect use
     (None => 0,
      Reset => 1,
      Int => 2);

   --  Prescaler Select
   type BOD12_PSELSelect is
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
   for BOD12_PSELSelect use
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

   subtype SUPC_BOD12_LEVEL_Field is HAL.UInt6;

   --  BOD12 Control
   type SUPC_BOD12_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Hysteresis Enable
      HYST           : Boolean := False;
      --  Action when Threshold Crossed
      ACTION         : BOD12_ACTIONSelect := SAM_SVD.SUPC.None;
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
      PSEL           : BOD12_PSELSelect := SAM_SVD.SUPC.Div2;
      --  Threshold Level
      LEVEL          : SUPC_BOD12_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BOD12_Register use record
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

   --  Voltage Regulator Selection in active mode
   type VREG_SELSelect is
     (
      --  LDO selection
      Ldo,
      --  Buck selection
      Buck,
      --  Switched Cap selection
      Scvreg)
     with Size => 2;
   for VREG_SELSelect use
     (Ldo => 0,
      Buck => 1,
      Scvreg => 2);

   subtype SUPC_VREG_VSVSTEP_Field is HAL.UInt4;
   subtype SUPC_VREG_VSPER_Field is HAL.UInt8;

   --  VREG Control
   type SUPC_VREG_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Voltage Regulator Selection in active mode
      SEL            : VREG_SELSelect := SAM_SVD.SUPC.Ldo;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Standby in PL0
      STDBYPL0       : Boolean := False;
      --  Run during Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Low Power Efficiency
      LPEFF          : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Voltage Scaling Voltage Step
      VSVSTEP        : SUPC_VREG_VSVSTEP_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Voltage Scaling Period
      VSPER          : SUPC_VREG_VSPER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_VREG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      SEL            at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      STDBYPL0       at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LPEFF          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VSVSTEP        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      VSPER          at 0 range 24 .. 31;
   end record;

   --  Voltage Reference Selection
   type VREF_SELSelect is
     (
      --  1.0V voltage reference typical value
      VREF_SELSelect_1V0,
      --  1.1V voltage reference typical value
      VREF_SELSelect_1V1,
      --  1.2V voltage reference typical value
      VREF_SELSelect_1V2,
      --  1.25V voltage reference typical value
      VREF_SELSelect_1V25,
      --  2.0V voltage reference typical value
      VREF_SELSelect_2V0,
      --  2.2V voltage reference typical value
      VREF_SELSelect_2V2,
      --  2.4V voltage reference typical value
      VREF_SELSelect_2V4,
      --  2.5V voltage reference typical value
      VREF_SELSelect_2V5)
     with Size => 4;
   for VREF_SELSelect use
     (VREF_SELSelect_1V0 => 0,
      VREF_SELSelect_1V1 => 1,
      VREF_SELSelect_1V2 => 2,
      VREF_SELSelect_1V25 => 3,
      VREF_SELSelect_2V0 => 4,
      VREF_SELSelect_2V2 => 5,
      VREF_SELSelect_2V4 => 6,
      VREF_SELSelect_2V5 => 7);

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
      SEL            : VREF_SELSelect := SAM_SVD.SUPC.VREF_SELSelect_1V0;
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

   --  Battery Backup Configuration
   type BBPS_CONFSelect is
     (
      --  The backup domain is always supplied by main power
      None,
      --  The power switch is handled by the automatic power switch
      Apws,
      --  The backup domain is always supplied by battery backup power
      Forced,
      --  The power switch is handled by the BOD33
      Bod33)
     with Size => 2;
   for BBPS_CONFSelect use
     (None => 0,
      Apws => 1,
      Forced => 2,
      Bod33 => 3);

   --  Battery Backup Power Switch
   type SUPC_BBPS_Register is record
      --  Battery Backup Configuration
      CONF          : BBPS_CONFSelect := SAM_SVD.SUPC.None;
      --  Wake Enable
      WAKEEN        : Boolean := False;
      --  Power Supply OK Enable
      PSOKEN        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BBPS_Register use record
      CONF          at 0 range 0 .. 1;
      WAKEEN        at 0 range 2 .. 2;
      PSOKEN        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SUPC_BKOUT_EN_Field is HAL.UInt2;
   subtype SUPC_BKOUT_CLR_Field is HAL.UInt2;
   subtype SUPC_BKOUT_SET_Field is HAL.UInt2;
   subtype SUPC_BKOUT_RTCTGL_Field is HAL.UInt2;

   --  Backup Output Control
   type SUPC_BKOUT_Register is record
      --  Enable Output
      EN             : SUPC_BKOUT_EN_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Clear Output
      CLR            : SUPC_BKOUT_CLR_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Set Output
      SET            : SUPC_BKOUT_SET_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  RTC Toggle Output
      RTCTGL         : SUPC_BKOUT_RTCTGL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BKOUT_Register use record
      EN             at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CLR            at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SET            at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      RTCTGL         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype SUPC_BKIN_BKIN_Field is HAL.UInt8;

   --  Backup Input Control
   type SUPC_BKIN_Register is record
      --  Read-only. Backup Input Value
      BKIN          : SUPC_BKIN_BKIN_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_BKIN_Register use record
      BKIN          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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
      --  BOD33 Control
      BOD33    : aliased SUPC_BOD33_Register;
      --  BOD12 Control
      BOD12    : aliased SUPC_BOD12_Register;
      --  VREG Control
      VREG     : aliased SUPC_VREG_Register;
      --  VREF Control
      VREF     : aliased SUPC_VREF_Register;
      --  Battery Backup Power Switch
      BBPS     : aliased SUPC_BBPS_Register;
      --  Backup Output Control
      BKOUT    : aliased SUPC_BKOUT_Register;
      --  Backup Input Control
      BKIN     : aliased SUPC_BKIN_Register;
   end record
     with Volatile;

   for SUPC_Peripheral use record
      INTENCLR at 16#0# range 0 .. 31;
      INTENSET at 16#4# range 0 .. 31;
      INTFLAG  at 16#8# range 0 .. 31;
      STATUS   at 16#C# range 0 .. 31;
      BOD33    at 16#10# range 0 .. 31;
      BOD12    at 16#14# range 0 .. 31;
      VREG     at 16#18# range 0 .. 31;
      VREF     at 16#1C# range 0 .. 31;
      BBPS     at 16#20# range 0 .. 31;
      BKOUT    at 16#24# range 0 .. 31;
      BKIN     at 16#28# range 0 .. 31;
   end record;

   --  Supply Controller
   SUPC_Periph : aliased SUPC_Peripheral
     with Import, Address => System'To_Address (16#40001400#);

end SAM_SVD.SUPC;
