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

--  This spec has been automatically generated from ATSAML21E15B.svd

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

   subtype PORT_WRCONFIG_PINMASK_Field is HAL.UInt16;
   subtype PORT_WRCONFIG_PMUX_Field is HAL.UInt4;

   --  Write Configuration
   type PORT_WRCONFIG_Register is record
      --  Write-only. Pin Mask for Multiple Pin Configuration
      PINMASK        : PORT_WRCONFIG_PINMASK_Field := 16#0#;
      --  Write-only. Select Peripheral Multiplexer
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
      --  Write-only. Peripheral Multiplexing Template
      PMUX           : PORT_WRCONFIG_PMUX_Field := 16#0#;
      --  Write-only. Write PMUX Registers
      WRPMUX         : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Write-only. Write PINCFG Registers
      WRPINCFG       : Boolean := False;
      --  Write-only. Half-Word Select
      HWSEL          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_WRCONFIG_Register use record
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

   subtype PORT_EVCTRL_PID0_Field is HAL.UInt5;
   subtype PORT_EVCTRL_EVACT0_Field is HAL.UInt2;
   subtype PORT_EVCTRL_PID1_Field is HAL.UInt5;
   subtype PORT_EVCTRL_EVACT1_Field is HAL.UInt2;
   subtype PORT_EVCTRL_PID2_Field is HAL.UInt5;
   subtype PORT_EVCTRL_EVACT2_Field is HAL.UInt2;
   subtype PORT_EVCTRL_PID3_Field is HAL.UInt5;
   subtype PORT_EVCTRL_EVACT3_Field is HAL.UInt2;

   --  Event Input Control
   type PORT_EVCTRL_Register is record
      --  Port Event Pin Identifier 0
      PID0    : PORT_EVCTRL_PID0_Field := 16#0#;
      --  Port Event Action 0
      EVACT0  : PORT_EVCTRL_EVACT0_Field := 16#0#;
      --  Port Event Enable Input 0
      PORTEI0 : Boolean := False;
      --  Port Event Pin Identifier 1
      PID1    : PORT_EVCTRL_PID1_Field := 16#0#;
      --  Port Event Action 1
      EVACT1  : PORT_EVCTRL_EVACT1_Field := 16#0#;
      --  Port Event Enable Input 1
      PORTEI1 : Boolean := False;
      --  Port Event Pin Identifier 2
      PID2    : PORT_EVCTRL_PID2_Field := 16#0#;
      --  Port Event Action 2
      EVACT2  : PORT_EVCTRL_EVACT2_Field := 16#0#;
      --  Port Event Enable Input 2
      PORTEI2 : Boolean := False;
      --  Port Event Pin Identifier 3
      PID3    : PORT_EVCTRL_PID3_Field := 16#0#;
      --  Port Event Action 3
      EVACT3  : PORT_EVCTRL_EVACT3_Field := 16#0#;
      --  Port Event Enable Input 3
      PORTEI3 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_EVCTRL_Register use record
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

   subtype PORT_PMUX0_PMUXE_Field is HAL.UInt4;
   subtype PORT_PMUX0_PMUXO_Field is HAL.UInt4;

   --  Peripheral Multiplexing n - Group 0
   type PORT_PMUX0_Register is record
      --  Peripheral Multiplexing for Even-Numbered Pin
      PMUXE : PORT_PMUX0_PMUXE_Field := 16#0#;
      --  Peripheral Multiplexing for Odd-Numbered Pin
      PMUXO : PORT_PMUX0_PMUXO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PORT_PMUX0_Register use record
      PMUXE at 0 range 0 .. 3;
      PMUXO at 0 range 4 .. 7;
   end record;

   --  Peripheral Multiplexing n - Group 0
   type PORT_PMUX0_Registers is array (0 .. 15) of PORT_PMUX0_Register
     with Volatile;

   --  Pin Configuration n - Group 0
   type PORT_PINCFG0_Register is record
      --  Select Peripheral Multiplexer
      PMUXEN       : Boolean := False;
      --  Input Enable
      INEN         : Boolean := False;
      --  Pull Enable
      PULLEN       : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Write-only. Output Driver Strength Selection
      DRVSTR       : Boolean := False;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PORT_PINCFG0_Register use record
      PMUXEN       at 0 range 0 .. 0;
      INEN         at 0 range 1 .. 1;
      PULLEN       at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      DRVSTR       at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Pin Configuration n - Group 0
   type PORT_PINCFG0_Registers is array (0 .. 31) of PORT_PINCFG0_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Port Module
   type PORT_Peripheral is record
      --  Data Direction
      DIR      : aliased HAL.UInt32;
      --  Data Direction Clear
      DIRCLR   : aliased HAL.UInt32;
      --  Data Direction Set
      DIRSET   : aliased HAL.UInt32;
      --  Data Direction Toggle
      DIRTGL   : aliased HAL.UInt32;
      --  Data Output Value
      OUT_k    : aliased HAL.UInt32;
      --  Data Output Value Clear
      OUTCLR   : aliased HAL.UInt32;
      --  Data Output Value Set
      OUTSET   : aliased HAL.UInt32;
      --  Data Output Value Toggle
      OUTTGL   : aliased HAL.UInt32;
      --  Data Input Value
      IN_k     : aliased HAL.UInt32;
      --  Control
      CTRL     : aliased HAL.UInt32;
      --  Write Configuration
      WRCONFIG : aliased PORT_WRCONFIG_Register;
      --  Event Input Control
      EVCTRL   : aliased PORT_EVCTRL_Register;
      --  Peripheral Multiplexing n - Group 0
      PMUX0    : aliased PORT_PMUX0_Registers;
      --  Pin Configuration n - Group 0
      PINCFG0  : aliased PORT_PINCFG0_Registers;
   end record
     with Volatile;

   for PORT_Peripheral use record
      DIR      at 16#0# range 0 .. 31;
      DIRCLR   at 16#4# range 0 .. 31;
      DIRSET   at 16#8# range 0 .. 31;
      DIRTGL   at 16#C# range 0 .. 31;
      OUT_k    at 16#10# range 0 .. 31;
      OUTCLR   at 16#14# range 0 .. 31;
      OUTSET   at 16#18# range 0 .. 31;
      OUTTGL   at 16#1C# range 0 .. 31;
      IN_k     at 16#20# range 0 .. 31;
      CTRL     at 16#24# range 0 .. 31;
      WRCONFIG at 16#28# range 0 .. 31;
      EVCTRL   at 16#2C# range 0 .. 31;
      PMUX0    at 16#30# range 0 .. 127;
      PINCFG0  at 16#40# range 0 .. 255;
   end record;

   --  Port Module
   PORT_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#40002800#);

end SAM_SVD.PORT;
