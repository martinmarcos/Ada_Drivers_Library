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

--  This spec has been automatically generated from ATSAML21E18B.svd

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
      HPB0                                : Boolean := True;
      --  HPB1 AHB Clock Mask
      HPB1                                : Boolean := True;
      --  HPB2 AHB Clock Mask
      HPB2                                : Boolean := True;
      --  HPB3 AHB Clock Mask
      HPB3                                : Boolean := True;
      --  HPB4 AHB Clock Mask
      HPB4                                : Boolean := True;
      --  DSU AHB Clock Mask
      DSU                                 : Boolean := True;
      --  unspecified
      Reserved_6_7                        : HAL.UInt2 := 16#3#;
      --  NVMCTRL AHB Clock Mask
      NVMCTRL                             : Boolean := True;
      --  HSRAM AHB Clock Mask
      HSRAM                               : Boolean := True;
      --  LPRAM AHB Clock Mask
      LPRAM                               : Boolean := True;
      --  DMAC AHB Clock Mask
      DMAC                                : Boolean := True;
      --  USB AHB Clock Mask
      USB                                 : Boolean := True;
      --  unspecified
      Reserved_13_13                      : HAL.Bit := 16#1#;
      --  PAC AHB Clock Mask
      PAC                                 : Boolean := True;
      --  NVMCTRL_PICACHU AHB Clock Mask
      NVMCTRL_PICACHU                     : Boolean := True;
      --  L2HBRIDGES_H AHB Clock Mask
      L2HBRIDGES_H                        : Boolean := True;
      --  H2LBRIDGES_H AHB Clock Mask
      H2LBRIDGES_H                        : Boolean := True;
      --  HMCRAMCHS_AHBSETUPKEEPER AHB Clock Mask
      HMCRAMCHS_AHBSETUPKEEPER            : Boolean := True;
      --  HMCRAMCHS_HMATRIXLP2HMCRAMCHSBRIDGE AHB Clock Mask
      HMCRAMCHS_HMATRIXLP2HMCRAMCHSBRIDGE : Boolean := True;
      --  unspecified
      Reserved_20_31                      : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_AHBMASK_Register use record
      HPB0                                at 0 range 0 .. 0;
      HPB1                                at 0 range 1 .. 1;
      HPB2                                at 0 range 2 .. 2;
      HPB3                                at 0 range 3 .. 3;
      HPB4                                at 0 range 4 .. 4;
      DSU                                 at 0 range 5 .. 5;
      Reserved_6_7                        at 0 range 6 .. 7;
      NVMCTRL                             at 0 range 8 .. 8;
      HSRAM                               at 0 range 9 .. 9;
      LPRAM                               at 0 range 10 .. 10;
      DMAC                                at 0 range 11 .. 11;
      USB                                 at 0 range 12 .. 12;
      Reserved_13_13                      at 0 range 13 .. 13;
      PAC                                 at 0 range 14 .. 14;
      NVMCTRL_PICACHU                     at 0 range 15 .. 15;
      L2HBRIDGES_H                        at 0 range 16 .. 16;
      H2LBRIDGES_H                        at 0 range 17 .. 17;
      HMCRAMCHS_AHBSETUPKEEPER            at 0 range 18 .. 18;
      HMCRAMCHS_HMATRIXLP2HMCRAMCHSBRIDGE at 0 range 19 .. 19;
      Reserved_20_31                      at 0 range 20 .. 31;
   end record;

   --  APBA Mask
   type MCLK_APBAMASK_Register is record
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
      --  PORT APB Clock Enable
      PORT           : Boolean := True;
      --  TAL APB Clock Enable
      TAL            : Boolean := True;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBAMASK_Register use record
      PM             at 0 range 0 .. 0;
      MCLK           at 0 range 1 .. 1;
      RSTC           at 0 range 2 .. 2;
      OSCCTRL        at 0 range 3 .. 3;
      OSC32KCTRL     at 0 range 4 .. 4;
      SUPC           at 0 range 5 .. 5;
      GCLK           at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
      RTC            at 0 range 8 .. 8;
      EIC            at 0 range 9 .. 9;
      PORT           at 0 range 10 .. 10;
      TAL            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  APBB Mask
   type MCLK_APBBMASK_Register is record
      --  USB APB Clock Enable
      USB           : Boolean := True;
      --  DSU APB Clock Enable
      DSU           : Boolean := True;
      --  NVMCTRL APB Clock Enable
      NVMCTRL       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#2#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBBMASK_Register use record
      USB           at 0 range 0 .. 0;
      DSU           at 0 range 1 .. 1;
      NVMCTRL       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  APBC Mask
   type MCLK_APBCMASK_Register is record
      --  SERCOM0 APB Clock Enable
      SERCOM0        : Boolean := True;
      --  SERCOM1 APB Clock Enable
      SERCOM1        : Boolean := True;
      --  SERCOM2 APB Clock Enable
      SERCOM2        : Boolean := True;
      --  SERCOM3 APB Clock Enable
      SERCOM3        : Boolean := True;
      --  SERCOM4 APB Clock Enable
      SERCOM4        : Boolean := True;
      --  TCC0 APB Clock Enable
      TCC0           : Boolean := True;
      --  TCC1 APB Clock Enable
      TCC1           : Boolean := True;
      --  TCC2 APB Clock Enable
      TCC2           : Boolean := True;
      --  TC0 APB Clock Enable
      TC0            : Boolean := True;
      --  TC1 APB Clock Enable
      TC1            : Boolean := True;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#3#;
      --  DAC APB Clock Enable
      DAC            : Boolean := True;
      --  AES APB Clock Enable
      AES            : Boolean := True;
      --  TRNG APB Clock Enable
      TRNG           : Boolean := True;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBCMASK_Register use record
      SERCOM0        at 0 range 0 .. 0;
      SERCOM1        at 0 range 1 .. 1;
      SERCOM2        at 0 range 2 .. 2;
      SERCOM3        at 0 range 3 .. 3;
      SERCOM4        at 0 range 4 .. 4;
      TCC0           at 0 range 5 .. 5;
      TCC1           at 0 range 6 .. 6;
      TCC2           at 0 range 7 .. 7;
      TC0            at 0 range 8 .. 8;
      TC1            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      DAC            at 0 range 12 .. 12;
      AES            at 0 range 13 .. 13;
      TRNG           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  APBD Mask
   type MCLK_APBDMASK_Register is record
      --  EVSYS APB Clock Enable
      EVSYS         : Boolean := True;
      --  SERCOM5 APB Clock Enable
      SERCOM5       : Boolean := True;
      --  TC4 APB Clock Enable
      TC4           : Boolean := True;
      --  ADC APB Clock Enable
      ADC           : Boolean := True;
      --  AC APB Clock Enable
      AC            : Boolean := True;
      --  PTC APB Clock Enable
      PTC           : Boolean := True;
      --  OPAMP APB Clock Enable
      OPAMP         : Boolean := True;
      --  CCL APB Clock Enable
      CCL           : Boolean := True;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBDMASK_Register use record
      EVSYS         at 0 range 0 .. 0;
      SERCOM5       at 0 range 1 .. 1;
      TC4           at 0 range 2 .. 2;
      ADC           at 0 range 3 .. 3;
      AC            at 0 range 4 .. 4;
      PTC           at 0 range 5 .. 5;
      OPAMP         at 0 range 6 .. 6;
      CCL           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  APBE Mask
   type MCLK_APBEMASK_Register is record
      --  PAC APB Clock Enable
      PAC           : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#6#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLK_APBEMASK_Register use record
      PAC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Main Clock
   type MCLK_Peripheral is record
      --  Control A
      CTRLA    : aliased HAL.UInt8;
      --  Interrupt Enable Clear
      INTENCLR : aliased MCLK_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased MCLK_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased MCLK_INTFLAG_Register;
      --  CPU Clock Division
      CPUDIV   : aliased HAL.UInt8;
      --  Low-Power Clock Division
      LPDIV    : aliased HAL.UInt8;
      --  Backup Clock Division
      BUPDIV   : aliased HAL.UInt8;
      --  AHB Mask
      AHBMASK  : aliased MCLK_AHBMASK_Register;
      --  APBA Mask
      APBAMASK : aliased MCLK_APBAMASK_Register;
      --  APBB Mask
      APBBMASK : aliased MCLK_APBBMASK_Register;
      --  APBC Mask
      APBCMASK : aliased MCLK_APBCMASK_Register;
      --  APBD Mask
      APBDMASK : aliased MCLK_APBDMASK_Register;
      --  APBE Mask
      APBEMASK : aliased MCLK_APBEMASK_Register;
   end record
     with Volatile;

   for MCLK_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      INTENCLR at 16#1# range 0 .. 7;
      INTENSET at 16#2# range 0 .. 7;
      INTFLAG  at 16#3# range 0 .. 7;
      CPUDIV   at 16#4# range 0 .. 7;
      LPDIV    at 16#5# range 0 .. 7;
      BUPDIV   at 16#6# range 0 .. 7;
      AHBMASK  at 16#10# range 0 .. 31;
      APBAMASK at 16#14# range 0 .. 31;
      APBBMASK at 16#18# range 0 .. 31;
      APBCMASK at 16#1C# range 0 .. 31;
      APBDMASK at 16#20# range 0 .. 31;
      APBEMASK at 16#24# range 0 .. 31;
   end record;

   --  Main Clock
   MCLK_Periph : aliased MCLK_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

end SAM_SVD.MCLK;
