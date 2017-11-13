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

--  This spec has been automatically generated from ATSAMC20J15A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.MCLK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Clear
   type MCLK_INTENCLR_Register is record
      --  Clock Ready Interrupt Enable
      CKRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCLK_INTENCLR_Register use record
      CKRDY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Set
   type MCLK_INTENSET_Register is record
      --  Clock Ready Interrupt Enable
      CKRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCLK_INTENSET_Register use record
      CKRDY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type MCLK_INTFLAG_Register is record
      --  Clock Ready
      CKRDY        : Boolean := True;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCLK_INTFLAG_Register use record
      CKRDY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  AHB Mask
   type MCLK_AHBMASK_Register is record
      --  HPB0 AHB Clock Mask
      HPB0            : Boolean := True;
      --  HPB1 AHB Clock Mask
      HPB1            : Boolean := True;
      --  HPB2 AHB Clock Mask
      HPB2            : Boolean := True;
      --  DSU AHB Clock Mask
      DSU             : Boolean := True;
      --  HMATRIXHS AHB Clock Mask
      HMATRIXHS       : Boolean := True;
      --  NVMCTRL AHB Clock Mask
      NVMCTRL         : Boolean := True;
      --  HSRAM AHB Clock Mask
      HSRAM           : Boolean := True;
      --  DMAC AHB Clock Mask
      DMAC            : Boolean := True;
      --  unspecified
      Reserved_8_9    : HAL.UInt2 := 16#0#;
      --  PAC AHB Clock Mask
      PAC             : Boolean := True;
      --  NVMCTRL_PICACHU AHB Clock Mask
      NVMCTRL_PICACHU : Boolean := True;
      --  DIVAS AHB Clock Mask
      DIVAS           : Boolean := True;
      --  unspecified
      Reserved_13_31  : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_AHBMASK_Register use record
      HPB0            at 0 range 0 .. 0;
      HPB1            at 0 range 1 .. 1;
      HPB2            at 0 range 2 .. 2;
      DSU             at 0 range 3 .. 3;
      HMATRIXHS       at 0 range 4 .. 4;
      NVMCTRL         at 0 range 5 .. 5;
      HSRAM           at 0 range 6 .. 6;
      DMAC            at 0 range 7 .. 7;
      Reserved_8_9    at 0 range 8 .. 9;
      PAC             at 0 range 10 .. 10;
      NVMCTRL_PICACHU at 0 range 11 .. 11;
      DIVAS           at 0 range 12 .. 12;
      Reserved_13_31  at 0 range 13 .. 31;
   end record;

   --  APBA Mask
   type MCLK_APBAMASK_Register is record
      --  PAC APB Clock Enable
      PAC            : Boolean := True;
      --  PM APB Clock Enable
      PM             : Boolean := True;
      --  MCLK APB Clock Enable
      MCLK           : Boolean := True;
      --  RSTC APB Clock Enable
      RSTC           : Boolean := True;
      --  OSCCTRL APB Clock Enable
      OSCCTRL        : Boolean := True;
      --  OSC32KCTRL APB Clock Enable
      OSC32KCTRL     : Boolean := True;
      --  SUPC APB Clock Enable
      SUPC           : Boolean := True;
      --  GCLK APB Clock Enable
      GCLK           : Boolean := True;
      --  WDT APB Clock Enable
      WDT            : Boolean := True;
      --  RTC APB Clock Enable
      RTC            : Boolean := True;
      --  EIC APB Clock Enable
      EIC            : Boolean := True;
      --  FREQM APB Clock Enable
      FREQM          : Boolean := True;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBAMASK_Register use record
      PAC            at 0 range 0 .. 0;
      PM             at 0 range 1 .. 1;
      MCLK           at 0 range 2 .. 2;
      RSTC           at 0 range 3 .. 3;
      OSCCTRL        at 0 range 4 .. 4;
      OSC32KCTRL     at 0 range 5 .. 5;
      SUPC           at 0 range 6 .. 6;
      GCLK           at 0 range 7 .. 7;
      WDT            at 0 range 8 .. 8;
      RTC            at 0 range 9 .. 9;
      EIC            at 0 range 10 .. 10;
      FREQM          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  APBB Mask
   type MCLK_APBBMASK_Register is record
      --  PORT APB Clock Enable
      PORT          : Boolean := True;
      --  DSU APB Clock Enable
      DSU           : Boolean := True;
      --  NVMCTRL APB Clock Enable
      NVMCTRL       : Boolean := True;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  HMATRIXHS APB Clock Enable
      HMATRIXHS     : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBBMASK_Register use record
      PORT          at 0 range 0 .. 0;
      DSU           at 0 range 1 .. 1;
      NVMCTRL       at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      HMATRIXHS     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  APBC Mask
   type MCLK_APBCMASK_Register is record
      --  EVSYS APB Clock Enable
      EVSYS          : Boolean := False;
      --  SERCOM0 APB Clock Enable
      SERCOM0        : Boolean := False;
      --  SERCOM1 APB Clock Enable
      SERCOM1        : Boolean := False;
      --  SERCOM2 APB Clock Enable
      SERCOM2        : Boolean := False;
      --  SERCOM3 APB Clock Enable
      SERCOM3        : Boolean := False;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  TCC0 APB Clock Enable
      TCC0           : Boolean := False;
      --  TCC1 APB Clock Enable
      TCC1           : Boolean := False;
      --  TCC2 APB Clock Enable
      TCC2           : Boolean := False;
      --  TC0 APB Clock Enable
      TC0            : Boolean := False;
      --  TC1 APB Clock Enable
      TC1            : Boolean := False;
      --  TC2 APB Clock Enable
      TC2            : Boolean := False;
      --  TC3 APB Clock Enable
      TC3            : Boolean := False;
      --  TC4 APB Clock Enable
      TC4            : Boolean := False;
      --  ADC0 APB Clock Enable
      ADC0           : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  AC APB Clock Enable
      AC             : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  PTC APB Clock Enable
      PTC            : Boolean := False;
      --  CCL APB Clock Enable
      CCL            : Boolean := False;
      --  TAL APB Clock Enable
      TAL            : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBCMASK_Register use record
      EVSYS          at 0 range 0 .. 0;
      SERCOM0        at 0 range 1 .. 1;
      SERCOM1        at 0 range 2 .. 2;
      SERCOM2        at 0 range 3 .. 3;
      SERCOM3        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      TCC0           at 0 range 9 .. 9;
      TCC1           at 0 range 10 .. 10;
      TCC2           at 0 range 11 .. 11;
      TC0            at 0 range 12 .. 12;
      TC1            at 0 range 13 .. 13;
      TC2            at 0 range 14 .. 14;
      TC3            at 0 range 15 .. 15;
      TC4            at 0 range 16 .. 16;
      ADC0           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      AC             at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      PTC            at 0 range 22 .. 22;
      CCL            at 0 range 23 .. 23;
      TAL            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Main Clock
   type MCLK_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR : aliased MCLK_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased MCLK_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased MCLK_INTFLAG_Register;
      --  CPU Clock Division
      CPUDIV   : aliased HAL.UInt8;
      --  AHB Mask
      AHBMASK  : aliased MCLK_AHBMASK_Register;
      --  APBA Mask
      APBAMASK : aliased MCLK_APBAMASK_Register;
      --  APBB Mask
      APBBMASK : aliased MCLK_APBBMASK_Register;
      --  APBC Mask
      APBCMASK : aliased MCLK_APBCMASK_Register;
   end record
     with Volatile;

   for MCLK_Peripheral use record
      INTENCLR at 16#1# range 0 .. 7;
      INTENSET at 16#2# range 0 .. 7;
      INTFLAG  at 16#3# range 0 .. 7;
      CPUDIV   at 16#4# range 0 .. 7;
      AHBMASK  at 16#10# range 0 .. 31;
      APBAMASK at 16#14# range 0 .. 31;
      APBBMASK at 16#18# range 0 .. 31;
      APBCMASK at 16#1C# range 0 .. 31;
   end record;

   --  Main Clock
   MCLK_Periph : aliased MCLK_Peripheral
     with Import, Address => System'To_Address (16#40000800#);

end SAM_SVD.MCLK;
