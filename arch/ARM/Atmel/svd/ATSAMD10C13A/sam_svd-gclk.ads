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

--  This spec has been automatically generated from ATSAMD10C13A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.GCLK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control
   type GCLK_CTRL_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for GCLK_CTRL_Register use record
      SWRST        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Status
   type GCLK_STATUS_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7;
      --  Read-only. Synchronization Busy Status
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for GCLK_STATUS_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   --  Generic Clock Selection ID
   type CLKCTRL_IDSelect is
     (
      --  DFLL48
      Dfll48,
      --  FDPLL
      Fdpll,
      --  FDPLL32K
      Fdpll32K,
      --  WDT
      Wdt,
      --  RTC
      Rtc,
      --  EIC
      Eic,
      --  EVSYS_0
      Evsys_0,
      --  EVSYS_1
      Evsys_1,
      --  EVSYS_2
      Evsys_2,
      --  EVSYS_3
      Evsys_3,
      --  EVSYS_4
      Evsys_4,
      --  EVSYS_5
      Evsys_5,
      --  SERCOMX_SLOW
      Sercomx_Slow,
      --  SERCOM0_CORE
      Sercom0_Core,
      --  SERCOM1_CORE
      Sercom1_Core,
      --  SERCOM2_CORE
      Sercom2_Core,
      --  TCC0
      Tcc0,
      --  TC1_TC2
      Tc1_Tc2,
      --  ADC
      Adc,
      --  AC_DIG
      Ac_Dig,
      --  AC_ANA
      Ac_Ana,
      --  DAC
      Dac)
     with Size => 6;
   for CLKCTRL_IDSelect use
     (Dfll48 => 0,
      Fdpll => 1,
      Fdpll32K => 2,
      Wdt => 3,
      Rtc => 4,
      Eic => 5,
      Evsys_0 => 7,
      Evsys_1 => 8,
      Evsys_2 => 9,
      Evsys_3 => 10,
      Evsys_4 => 11,
      Evsys_5 => 12,
      Sercomx_Slow => 13,
      Sercom0_Core => 14,
      Sercom1_Core => 15,
      Sercom2_Core => 16,
      Tcc0 => 17,
      Tc1_Tc2 => 18,
      Adc => 19,
      Ac_Dig => 20,
      Ac_Ana => 21,
      Dac => 22);

   --  Generic Clock Generator
   type CLKCTRL_GENSelect is
     (
      --  Generic clock generator 0
      Gclk0,
      --  Generic clock generator 1
      Gclk1,
      --  Generic clock generator 2
      Gclk2,
      --  Generic clock generator 3
      Gclk3,
      --  Generic clock generator 4
      Gclk4,
      --  Generic clock generator 5
      Gclk5)
     with Size => 4;
   for CLKCTRL_GENSelect use
     (Gclk0 => 0,
      Gclk1 => 1,
      Gclk2 => 2,
      Gclk3 => 3,
      Gclk4 => 4,
      Gclk5 => 5);

   --  Generic Clock Control
   type GCLK_CLKCTRL_Register is record
      --  Generic Clock Selection ID
      ID             : CLKCTRL_IDSelect := SAM_SVD.GCLK.Dfll48;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Generic Clock Generator
      GEN            : CLKCTRL_GENSelect := SAM_SVD.GCLK.Gclk0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Clock Enable
      CLKEN          : Boolean := False;
      --  Write Lock
      WRTLOCK        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for GCLK_CLKCTRL_Register use record
      ID             at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      GEN            at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CLKEN          at 0 range 14 .. 14;
      WRTLOCK        at 0 range 15 .. 15;
   end record;

   subtype GCLK_GENCTRL_ID_Field is HAL.UInt4;

   --  Source Select
   type GENCTRL_SRCSelect is
     (
      --  XOSC oscillator output
      Xosc,
      --  Generator input pad
      Gclkin,
      --  Generic clock generator 1 output
      Gclkgen1,
      --  OSCULP32K oscillator output
      Osculp32K,
      --  OSC32K oscillator output
      Osc32K,
      --  XOSC32K oscillator output
      Xosc32K,
      --  OSC8M oscillator output
      Osc8M,
      --  DFLL48M output
      Dfll48M,
      --  FDPLL output
      Fdpll)
     with Size => 5;
   for GENCTRL_SRCSelect use
     (Xosc => 0,
      Gclkin => 1,
      Gclkgen1 => 2,
      Osculp32K => 3,
      Osc32K => 4,
      Xosc32K => 5,
      Osc8M => 6,
      Dfll48M => 7,
      Fdpll => 8);

   --  Generic Clock Generator Control
   type GCLK_GENCTRL_Register is record
      --  Generic Clock Generator Selection
      ID             : GCLK_GENCTRL_ID_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Source Select
      SRC            : GENCTRL_SRCSelect := SAM_SVD.GCLK.Xosc;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Generic Clock Generator Enable
      GENEN          : Boolean := False;
      --  Improve Duty Cycle
      IDC            : Boolean := False;
      --  Output Off Value
      OOV            : Boolean := False;
      --  Output Enable
      OE             : Boolean := False;
      --  Divide Selection
      DIVSEL         : Boolean := False;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCLK_GENCTRL_Register use record
      ID             at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SRC            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      GENEN          at 0 range 16 .. 16;
      IDC            at 0 range 17 .. 17;
      OOV            at 0 range 18 .. 18;
      OE             at 0 range 19 .. 19;
      DIVSEL         at 0 range 20 .. 20;
      RUNSTDBY       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype GCLK_GENDIV_ID_Field is HAL.UInt4;
   subtype GCLK_GENDIV_DIV_Field is HAL.UInt16;

   --  Generic Clock Generator Division
   type GCLK_GENDIV_Register is record
      --  Generic Clock Generator Selection
      ID             : GCLK_GENDIV_ID_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Division Factor
      DIV            : GCLK_GENDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCLK_GENDIV_Register use record
      ID             at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DIV            at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Generic Clock Generator
   type GCLK_Peripheral is record
      --  Control
      CTRL    : aliased GCLK_CTRL_Register;
      --  Status
      STATUS  : aliased GCLK_STATUS_Register;
      --  Generic Clock Control
      CLKCTRL : aliased GCLK_CLKCTRL_Register;
      --  Generic Clock Generator Control
      GENCTRL : aliased GCLK_GENCTRL_Register;
      --  Generic Clock Generator Division
      GENDIV  : aliased GCLK_GENDIV_Register;
   end record
     with Volatile;

   for GCLK_Peripheral use record
      CTRL    at 16#0# range 0 .. 7;
      STATUS  at 16#1# range 0 .. 7;
      CLKCTRL at 16#2# range 0 .. 15;
      GENCTRL at 16#4# range 0 .. 31;
      GENDIV  at 16#8# range 0 .. 31;
   end record;

   --  Generic Clock Generator
   GCLK_Periph : aliased GCLK_Peripheral
     with Import, Address => System'To_Address (16#40000C00#);

end SAM_SVD.GCLK;
