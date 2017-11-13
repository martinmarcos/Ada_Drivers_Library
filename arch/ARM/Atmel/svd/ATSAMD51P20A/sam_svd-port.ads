--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAMD51P20A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PORT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype WRCONFIG_PINMASK_Field is HAL.UInt16;
   subtype WRCONFIG_PMUX_Field is HAL.UInt4;

   --  Write Configuration
   type WRCONFIG_Register is record
      --  Write-only. Pin Mask for Multiple Pin Configuration
      PINMASK        : WRCONFIG_PINMASK_Field := 16#0#;
      --  Write-only. Peripheral Multiplexer Enable
      PMUXEN         : Boolean := False;
      --  Write-only. Input Enable
      INEN           : Boolean := False;
      --  Write-only. Pull Enable
      PULLEN         : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Write-only. Output Driver Strength Selection
      DRVSTR         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write-only. Peripheral Multiplexing
      PMUX           : WRCONFIG_PMUX_Field := 16#0#;
      --  Write-only. Write PMUX
      WRPMUX         : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Write-only. Write PINCFG
      WRPINCFG       : Boolean := False;
      --  Write-only. Half-Word Select
      HWSEL          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRCONFIG_Register use record
      PINMASK        at 0 range 0 .. 15;
      PMUXEN         at 0 range 16 .. 16;
      INEN           at 0 range 17 .. 17;
      PULLEN         at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      DRVSTR         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PMUX           at 0 range 24 .. 27;
      WRPMUX         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      WRPINCFG       at 0 range 30 .. 30;
      HWSEL          at 0 range 31 .. 31;
   end record;

   subtype EVCTRL_PID0_Field is HAL.UInt5;

   --  PORT Event Action 0
   type EVCTRL0_EVACT0Select is
     (
      --  Event output to pin
      Out_k,
      --  Set output register of pin on event
      Set,
      --  Clear output register of pin on event
      Clr,
      --  Toggle output register of pin on event
      Tgl)
     with Size => 2;
   for EVCTRL0_EVACT0Select use
     (Out_k => 0,
      Set => 1,
      Clr => 2,
      Tgl => 3);

   subtype EVCTRL_PID1_Field is HAL.UInt5;
   subtype EVCTRL_EVACT1_Field is HAL.UInt2;
   subtype EVCTRL_PID2_Field is HAL.UInt5;
   subtype EVCTRL_EVACT2_Field is HAL.UInt2;
   subtype EVCTRL_PID3_Field is HAL.UInt5;
   subtype EVCTRL_EVACT3_Field is HAL.UInt2;

   --  Event Input Control
   type EVCTRL_Register is record
      --  PORT Event Pin Identifier 0
      PID0    : EVCTRL_PID0_Field := 16#0#;
      --  PORT Event Action 0
      EVACT0  : EVCTRL0_EVACT0Select := SAM_SVD.PORT.Out_k;
      --  PORT Event Input Enable 0
      PORTEI0 : Boolean := False;
      --  PORT Event Pin Identifier 1
      PID1    : EVCTRL_PID1_Field := 16#0#;
      --  PORT Event Action 1
      EVACT1  : EVCTRL_EVACT1_Field := 16#0#;
      --  PORT Event Input Enable 1
      PORTEI1 : Boolean := False;
      --  PORT Event Pin Identifier 2
      PID2    : EVCTRL_PID2_Field := 16#0#;
      --  PORT Event Action 2
      EVACT2  : EVCTRL_EVACT2_Field := 16#0#;
      --  PORT Event Input Enable 2
      PORTEI2 : Boolean := False;
      --  PORT Event Pin Identifier 3
      PID3    : EVCTRL_PID3_Field := 16#0#;
      --  PORT Event Action 3
      EVACT3  : EVCTRL_EVACT3_Field := 16#0#;
      --  PORT Event Input Enable 3
      PORTEI3 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVCTRL_Register use record
      PID0    at 0 range 0 .. 4;
      EVACT0  at 0 range 5 .. 6;
      PORTEI0 at 0 range 7 .. 7;
      PID1    at 0 range 8 .. 12;
      EVACT1  at 0 range 13 .. 14;
      PORTEI1 at 0 range 15 .. 15;
      PID2    at 0 range 16 .. 20;
      EVACT2  at 0 range 21 .. 22;
      PORTEI2 at 0 range 23 .. 23;
      PID3    at 0 range 24 .. 28;
      EVACT3  at 0 range 29 .. 30;
      PORTEI3 at 0 range 31 .. 31;
   end record;

   subtype PMUX_PMUXE_Field is HAL.UInt4;
   subtype PMUX_PMUXO_Field is HAL.UInt4;

   --  Peripheral Multiplexing - Group 0
   type PMUX_Register is record
      --  Peripheral Multiplexing for Even-Numbered Pin
      PMUXE : PMUX_PMUXE_Field := 16#0#;
      --  Peripheral Multiplexing for Odd-Numbered Pin
      PMUXO : PMUX_PMUXO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMUX_Register use record
      PMUXE at 0 range 0 .. 3;
      PMUXO at 0 range 4 .. 7;
   end record;

   --  Peripheral Multiplexing - Group 0
   type PMUX_Registers is array (0 .. 15) of PMUX_Register
     with Volatile;

   --  Pin Configuration - Group 0
   type PINCFG_Register is record
      --  Peripheral Multiplexer Enable
      PMUXEN       : Boolean := False;
      --  Input Enable
      INEN         : Boolean := False;
      --  Pull Enable
      PULLEN       : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Output Driver Strength Selection
      DRVSTR       : Boolean := False;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PINCFG_Register use record
      PMUXEN       at 0 range 0 .. 0;
      INEN         at 0 range 1 .. 1;
      PULLEN       at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      DRVSTR       at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Pin Configuration - Group 0
   type PINCFG_Registers is array (0 .. 31) of PINCFG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Port Module
   type PORT_Peripheral is record
      --  Data Direction
      DIR0      : aliased HAL.UInt32;
      --  Data Direction Clear
      DIRCLR0   : aliased HAL.UInt32;
      --  Data Direction Set
      DIRSET0   : aliased HAL.UInt32;
      --  Data Direction Toggle
      DIRTGL0   : aliased HAL.UInt32;
      --  Data Output Value
      OUT0      : aliased HAL.UInt32;
      --  Data Output Value Clear
      OUTCLR0   : aliased HAL.UInt32;
      --  Data Output Value Set
      OUTSET0   : aliased HAL.UInt32;
      --  Data Output Value Toggle
      OUTTGL0   : aliased HAL.UInt32;
      --  Data Input Value
      IN0       : aliased HAL.UInt32;
      --  Control
      CTRL0     : aliased HAL.UInt32;
      --  Write Configuration
      WRCONFIG0 : aliased WRCONFIG_Register;
      --  Event Input Control
      EVCTRL0   : aliased EVCTRL_Register;
      --  Peripheral Multiplexing - Group 0
      PMUX0     : aliased PMUX_Registers;
      --  Pin Configuration - Group 0
      PINCFG0   : aliased PINCFG_Registers;
      --  Data Direction
      DIR1      : aliased HAL.UInt32;
      --  Data Direction Clear
      DIRCLR1   : aliased HAL.UInt32;
      --  Data Direction Set
      DIRSET1   : aliased HAL.UInt32;
      --  Data Direction Toggle
      DIRTGL1   : aliased HAL.UInt32;
      --  Data Output Value
      OUT1      : aliased HAL.UInt32;
      --  Data Output Value Clear
      OUTCLR1   : aliased HAL.UInt32;
      --  Data Output Value Set
      OUTSET1   : aliased HAL.UInt32;
      --  Data Output Value Toggle
      OUTTGL1   : aliased HAL.UInt32;
      --  Data Input Value
      IN1       : aliased HAL.UInt32;
      --  Control
      CTRL1     : aliased HAL.UInt32;
      --  Write Configuration
      WRCONFIG1 : aliased WRCONFIG_Register;
      --  Event Input Control
      EVCTRL1   : aliased EVCTRL_Register;
      --  Peripheral Multiplexing - Group 1
      PMUX1     : aliased PMUX_Registers;
      --  Pin Configuration - Group 1
      PINCFG1   : aliased PINCFG_Registers;
      --  Data Direction
      DIR2      : aliased HAL.UInt32;
      --  Data Direction Clear
      DIRCLR2   : aliased HAL.UInt32;
      --  Data Direction Set
      DIRSET2   : aliased HAL.UInt32;
      --  Data Direction Toggle
      DIRTGL2   : aliased HAL.UInt32;
      --  Data Output Value
      OUT2      : aliased HAL.UInt32;
      --  Data Output Value Clear
      OUTCLR2   : aliased HAL.UInt32;
      --  Data Output Value Set
      OUTSET2   : aliased HAL.UInt32;
      --  Data Output Value Toggle
      OUTTGL2   : aliased HAL.UInt32;
      --  Data Input Value
      IN2       : aliased HAL.UInt32;
      --  Control
      CTRL2     : aliased HAL.UInt32;
      --  Write Configuration
      WRCONFIG2 : aliased WRCONFIG_Register;
      --  Event Input Control
      EVCTRL2   : aliased EVCTRL_Register;
      --  Peripheral Multiplexing - Group 2
      PMUX2     : aliased PMUX_Registers;
      --  Pin Configuration - Group 2
      PINCFG2   : aliased PINCFG_Registers;
      --  Data Direction
      DIR3      : aliased HAL.UInt32;
      --  Data Direction Clear
      DIRCLR3   : aliased HAL.UInt32;
      --  Data Direction Set
      DIRSET3   : aliased HAL.UInt32;
      --  Data Direction Toggle
      DIRTGL3   : aliased HAL.UInt32;
      --  Data Output Value
      OUT3      : aliased HAL.UInt32;
      --  Data Output Value Clear
      OUTCLR3   : aliased HAL.UInt32;
      --  Data Output Value Set
      OUTSET3   : aliased HAL.UInt32;
      --  Data Output Value Toggle
      OUTTGL3   : aliased HAL.UInt32;
      --  Data Input Value
      IN3       : aliased HAL.UInt32;
      --  Control
      CTRL3     : aliased HAL.UInt32;
      --  Write Configuration
      WRCONFIG3 : aliased WRCONFIG_Register;
      --  Event Input Control
      EVCTRL3   : aliased EVCTRL_Register;
      --  Peripheral Multiplexing - Group 3
      PMUX3     : aliased PMUX_Registers;
      --  Pin Configuration - Group 3
      PINCFG3   : aliased PINCFG_Registers;
   end record
     with Volatile;

   for PORT_Peripheral use record
      DIR0      at 16#0# range 0 .. 31;
      DIRCLR0   at 16#4# range 0 .. 31;
      DIRSET0   at 16#8# range 0 .. 31;
      DIRTGL0   at 16#C# range 0 .. 31;
      OUT0      at 16#10# range 0 .. 31;
      OUTCLR0   at 16#14# range 0 .. 31;
      OUTSET0   at 16#18# range 0 .. 31;
      OUTTGL0   at 16#1C# range 0 .. 31;
      IN0       at 16#20# range 0 .. 31;
      CTRL0     at 16#24# range 0 .. 31;
      WRCONFIG0 at 16#28# range 0 .. 31;
      EVCTRL0   at 16#2C# range 0 .. 31;
      PMUX0     at 16#30# range 0 .. 127;
      PINCFG0   at 16#40# range 0 .. 255;
      DIR1      at 16#80# range 0 .. 31;
      DIRCLR1   at 16#84# range 0 .. 31;
      DIRSET1   at 16#88# range 0 .. 31;
      DIRTGL1   at 16#8C# range 0 .. 31;
      OUT1      at 16#90# range 0 .. 31;
      OUTCLR1   at 16#94# range 0 .. 31;
      OUTSET1   at 16#98# range 0 .. 31;
      OUTTGL1   at 16#9C# range 0 .. 31;
      IN1       at 16#A0# range 0 .. 31;
      CTRL1     at 16#A4# range 0 .. 31;
      WRCONFIG1 at 16#A8# range 0 .. 31;
      EVCTRL1   at 16#AC# range 0 .. 31;
      PMUX1     at 16#B0# range 0 .. 127;
      PINCFG1   at 16#C0# range 0 .. 255;
      DIR2      at 16#100# range 0 .. 31;
      DIRCLR2   at 16#104# range 0 .. 31;
      DIRSET2   at 16#108# range 0 .. 31;
      DIRTGL2   at 16#10C# range 0 .. 31;
      OUT2      at 16#110# range 0 .. 31;
      OUTCLR2   at 16#114# range 0 .. 31;
      OUTSET2   at 16#118# range 0 .. 31;
      OUTTGL2   at 16#11C# range 0 .. 31;
      IN2       at 16#120# range 0 .. 31;
      CTRL2     at 16#124# range 0 .. 31;
      WRCONFIG2 at 16#128# range 0 .. 31;
      EVCTRL2   at 16#12C# range 0 .. 31;
      PMUX2     at 16#130# range 0 .. 127;
      PINCFG2   at 16#140# range 0 .. 255;
      DIR3      at 16#180# range 0 .. 31;
      DIRCLR3   at 16#184# range 0 .. 31;
      DIRSET3   at 16#188# range 0 .. 31;
      DIRTGL3   at 16#18C# range 0 .. 31;
      OUT3      at 16#190# range 0 .. 31;
      OUTCLR3   at 16#194# range 0 .. 31;
      OUTSET3   at 16#198# range 0 .. 31;
      OUTTGL3   at 16#19C# range 0 .. 31;
      IN3       at 16#1A0# range 0 .. 31;
      CTRL3     at 16#1A4# range 0 .. 31;
      WRCONFIG3 at 16#1A8# range 0 .. 31;
      EVCTRL3   at 16#1AC# range 0 .. 31;
      PMUX3     at 16#1B0# range 0 .. 127;
      PINCFG3   at 16#1C0# range 0 .. 255;
   end record;

   --  Port Module
   PORT_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#41008000#);

end SAM_SVD.PORT;
