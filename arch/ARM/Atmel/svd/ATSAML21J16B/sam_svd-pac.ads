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

--  This spec has been automatically generated from ATSAML21J16B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PAC_WRCTRL_PERID_Field is HAL.UInt16;

   --  Peripheral access control key
   type WRCTRL_KEYSelect is
     (
      --  No action
      Off,
      --  Clear protection
      Clr,
      --  Set protection
      Set,
      --  Set and lock protection
      Setlck)
     with Size => 8;
   for WRCTRL_KEYSelect use
     (Off => 0,
      Clr => 1,
      Set => 2,
      Setlck => 3);

   --  Write control
   type PAC_WRCTRL_Register is record
      --  Peripheral identifier
      PERID          : PAC_WRCTRL_PERID_Field := 16#0#;
      --  Peripheral access control key
      KEY            : WRCTRL_KEYSelect := SAM_SVD.PAC.Off;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_WRCTRL_Register use record
      PERID          at 0 range 0 .. 15;
      KEY            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Event control
   type PAC_EVCTRL_Register is record
      --  Peripheral acess error event output
      ERREO        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PAC_EVCTRL_Register use record
      ERREO        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt enable clear
   type PAC_INTENCLR_Register is record
      --  Peripheral access error interrupt disable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PAC_INTENCLR_Register use record
      ERR          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt enable set
   type PAC_INTENSET_Register is record
      --  Peripheral access error interrupt enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PAC_INTENSET_Register use record
      ERR          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Bridge interrupt flag status
   type PAC_INTFLAGAHB_Register is record
      --  FLASH
      FLASH          : Boolean := False;
      --  HSRAMCM0P
      HSRAMCM0P      : Boolean := False;
      --  HSRAMDSU
      HSRAMDSU       : Boolean := False;
      --  HPB1
      HPB1           : Boolean := False;
      --  H2LBRIDGES
      H2LBRIDGES     : Boolean := False;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  HPB0
      HPB0           : Boolean := False;
      --  HPB2
      HPB2           : Boolean := False;
      --  HPB3
      HPB3           : Boolean := False;
      --  HPB4
      HPB4           : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  LPRAMHS
      LPRAMHS        : Boolean := False;
      --  LPRAMPICOP
      LPRAMPICOP     : Boolean := False;
      --  LPRAMDMAC
      LPRAMDMAC      : Boolean := False;
      --  L2HBRIDGES
      L2HBRIDGES     : Boolean := False;
      --  HSRAMLP
      HSRAMLP        : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_INTFLAGAHB_Register use record
      FLASH          at 0 range 0 .. 0;
      HSRAMCM0P      at 0 range 1 .. 1;
      HSRAMDSU       at 0 range 2 .. 2;
      HPB1           at 0 range 3 .. 3;
      H2LBRIDGES     at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      HPB0           at 0 range 16 .. 16;
      HPB2           at 0 range 17 .. 17;
      HPB3           at 0 range 18 .. 18;
      HPB4           at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      LPRAMHS        at 0 range 21 .. 21;
      LPRAMPICOP     at 0 range 22 .. 22;
      LPRAMDMAC      at 0 range 23 .. 23;
      L2HBRIDGES     at 0 range 24 .. 24;
      HSRAMLP        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Peripheral interrupt flag status - Bridge A
   type PAC_INTFLAGA_Register is record
      --  PM
      PM             : Boolean := False;
      --  MCLK
      MCLK           : Boolean := False;
      --  RSTC
      RSTC           : Boolean := False;
      --  OSCCTRL
      OSCCTRL        : Boolean := False;
      --  OSC32KCTRL
      OSC32KCTRL     : Boolean := False;
      --  SUPC
      SUPC           : Boolean := False;
      --  GCLK
      GCLK           : Boolean := False;
      --  WDT
      WDT            : Boolean := False;
      --  RTC
      RTC            : Boolean := False;
      --  EIC
      EIC            : Boolean := False;
      --  PORT
      PORT           : Boolean := False;
      --  TAL
      TAL            : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_INTFLAGA_Register use record
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

   --  Peripheral interrupt flag status - Bridge B
   type PAC_INTFLAGB_Register is record
      --  USB
      USB           : Boolean := False;
      --  DSU
      DSU           : Boolean := False;
      --  NVMCTRL
      NVMCTRL       : Boolean := False;
      --  MTB
      MTB           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_INTFLAGB_Register use record
      USB           at 0 range 0 .. 0;
      DSU           at 0 range 1 .. 1;
      NVMCTRL       at 0 range 2 .. 2;
      MTB           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Peripheral interrupt flag status - Bridge C
   type PAC_INTFLAGC_Register is record
      --  SERCOM0
      SERCOM0        : Boolean := False;
      --  SERCOM1
      SERCOM1        : Boolean := False;
      --  SERCOM2
      SERCOM2        : Boolean := False;
      --  SERCOM3
      SERCOM3        : Boolean := False;
      --  SERCOM4
      SERCOM4        : Boolean := False;
      --  TCC0
      TCC0           : Boolean := False;
      --  TCC1
      TCC1           : Boolean := False;
      --  TCC2
      TCC2           : Boolean := False;
      --  TC0
      TC0            : Boolean := False;
      --  TC1
      TC1            : Boolean := False;
      --  TC2
      TC2            : Boolean := False;
      --  TC3
      TC3            : Boolean := False;
      --  DAC
      DAC            : Boolean := False;
      --  AES
      AES            : Boolean := False;
      --  TRNG
      TRNG           : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_INTFLAGC_Register use record
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
      TC2            at 0 range 10 .. 10;
      TC3            at 0 range 11 .. 11;
      DAC            at 0 range 12 .. 12;
      AES            at 0 range 13 .. 13;
      TRNG           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Peripheral interrupt flag status - Bridge D
   type PAC_INTFLAGD_Register is record
      --  EVSYS
      EVSYS         : Boolean := False;
      --  SERCOM5
      SERCOM5       : Boolean := False;
      --  TC4
      TC4           : Boolean := False;
      --  ADC
      ADC           : Boolean := False;
      --  AC
      AC            : Boolean := False;
      --  PTC
      PTC           : Boolean := False;
      --  OPAMP
      OPAMP         : Boolean := False;
      --  CCL
      CCL           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_INTFLAGD_Register use record
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

   --  Peripheral interrupt flag status - Bridge E
   type PAC_INTFLAGE_Register is record
      --  PAC
      PAC           : Boolean := False;
      --  DMAC
      DMAC          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_INTFLAGE_Register use record
      PAC           at 0 range 0 .. 0;
      DMAC          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Peripheral write protection status - Bridge A
   type PAC_STATUSA_Register is record
      --  Read-only. PM APB Protect Enable
      PM             : Boolean;
      --  Read-only. MCLK APB Protect Enable
      MCLK           : Boolean;
      --  Read-only. RSTC APB Protect Enable
      RSTC           : Boolean;
      --  Read-only. OSCCTRL APB Protect Enable
      OSCCTRL        : Boolean;
      --  Read-only. OSC32KCTRL APB Protect Enable
      OSC32KCTRL     : Boolean;
      --  Read-only. SUPC APB Protect Enable
      SUPC           : Boolean;
      --  Read-only. GCLK APB Protect Enable
      GCLK           : Boolean;
      --  Read-only. WDT APB Protect Enable
      WDT            : Boolean;
      --  Read-only. RTC APB Protect Enable
      RTC            : Boolean;
      --  Read-only. EIC APB Protect Enable
      EIC            : Boolean;
      --  Read-only. PORT APB Protect Enable
      PORT           : Boolean;
      --  Read-only. TAL APB Protect Enable
      TAL            : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_STATUSA_Register use record
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

   --  Peripheral write protection status - Bridge B
   type PAC_STATUSB_Register is record
      --  Read-only. USB APB Protect Enable
      USB           : Boolean;
      --  Read-only. DSU APB Protect Enable
      DSU           : Boolean;
      --  Read-only. NVMCTRL APB Protect Enable
      NVMCTRL       : Boolean;
      --  Read-only. MTB APB Protect Enable
      MTB           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_STATUSB_Register use record
      USB           at 0 range 0 .. 0;
      DSU           at 0 range 1 .. 1;
      NVMCTRL       at 0 range 2 .. 2;
      MTB           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Peripheral write protection status - Bridge C
   type PAC_STATUSC_Register is record
      --  Read-only. SERCOM0 APB Protect Enable
      SERCOM0        : Boolean;
      --  Read-only. SERCOM1 APB Protect Enable
      SERCOM1        : Boolean;
      --  Read-only. SERCOM2 APB Protect Enable
      SERCOM2        : Boolean;
      --  Read-only. SERCOM3 APB Protect Enable
      SERCOM3        : Boolean;
      --  Read-only. SERCOM4 APB Protect Enable
      SERCOM4        : Boolean;
      --  Read-only. TCC0 APB Protect Enable
      TCC0           : Boolean;
      --  Read-only. TCC1 APB Protect Enable
      TCC1           : Boolean;
      --  Read-only. TCC2 APB Protect Enable
      TCC2           : Boolean;
      --  Read-only. TC0 APB Protect Enable
      TC0            : Boolean;
      --  Read-only. TC1 APB Protect Enable
      TC1            : Boolean;
      --  Read-only. TC2 APB Protect Enable
      TC2            : Boolean;
      --  Read-only. TC3 APB Protect Enable
      TC3            : Boolean;
      --  Read-only. DAC APB Protect Enable
      DAC            : Boolean;
      --  Read-only. AES APB Protect Enable
      AES            : Boolean;
      --  Read-only. TRNG APB Protect Enable
      TRNG           : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_STATUSC_Register use record
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
      TC2            at 0 range 10 .. 10;
      TC3            at 0 range 11 .. 11;
      DAC            at 0 range 12 .. 12;
      AES            at 0 range 13 .. 13;
      TRNG           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Peripheral write protection status - Bridge D
   type PAC_STATUSD_Register is record
      --  Read-only. EVSYS APB Protect Enable
      EVSYS         : Boolean;
      --  Read-only. SERCOM5 APB Protect Enable
      SERCOM5       : Boolean;
      --  Read-only. TC4 APB Protect Enable
      TC4           : Boolean;
      --  Read-only. ADC APB Protect Enable
      ADC           : Boolean;
      --  Read-only. AC APB Protect Enable
      AC            : Boolean;
      --  Read-only. PTC APB Protect Enable
      PTC           : Boolean;
      --  Read-only. OPAMP APB Protect Enable
      OPAMP         : Boolean;
      --  Read-only. CCL APB Protect Enable
      CCL           : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_STATUSD_Register use record
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

   --  Peripheral write protection status - Bridge E
   type PAC_STATUSE_Register is record
      --  Read-only. PAC APB Protect Enable
      PAC           : Boolean;
      --  Read-only. DMAC APB Protect Enable
      DMAC          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAC_STATUSE_Register use record
      PAC           at 0 range 0 .. 0;
      DMAC          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral Access Controller
   type PAC_Peripheral is record
      --  Write control
      WRCTRL     : aliased PAC_WRCTRL_Register;
      --  Event control
      EVCTRL     : aliased PAC_EVCTRL_Register;
      --  Interrupt enable clear
      INTENCLR   : aliased PAC_INTENCLR_Register;
      --  Interrupt enable set
      INTENSET   : aliased PAC_INTENSET_Register;
      --  Bridge interrupt flag status
      INTFLAGAHB : aliased PAC_INTFLAGAHB_Register;
      --  Peripheral interrupt flag status - Bridge A
      INTFLAGA   : aliased PAC_INTFLAGA_Register;
      --  Peripheral interrupt flag status - Bridge B
      INTFLAGB   : aliased PAC_INTFLAGB_Register;
      --  Peripheral interrupt flag status - Bridge C
      INTFLAGC   : aliased PAC_INTFLAGC_Register;
      --  Peripheral interrupt flag status - Bridge D
      INTFLAGD   : aliased PAC_INTFLAGD_Register;
      --  Peripheral interrupt flag status - Bridge E
      INTFLAGE   : aliased PAC_INTFLAGE_Register;
      --  Peripheral write protection status - Bridge A
      STATUSA    : aliased PAC_STATUSA_Register;
      --  Peripheral write protection status - Bridge B
      STATUSB    : aliased PAC_STATUSB_Register;
      --  Peripheral write protection status - Bridge C
      STATUSC    : aliased PAC_STATUSC_Register;
      --  Peripheral write protection status - Bridge D
      STATUSD    : aliased PAC_STATUSD_Register;
      --  Peripheral write protection status - Bridge E
      STATUSE    : aliased PAC_STATUSE_Register;
   end record
     with Volatile;

   for PAC_Peripheral use record
      WRCTRL     at 16#0# range 0 .. 31;
      EVCTRL     at 16#4# range 0 .. 7;
      INTENCLR   at 16#8# range 0 .. 7;
      INTENSET   at 16#9# range 0 .. 7;
      INTFLAGAHB at 16#10# range 0 .. 31;
      INTFLAGA   at 16#14# range 0 .. 31;
      INTFLAGB   at 16#18# range 0 .. 31;
      INTFLAGC   at 16#1C# range 0 .. 31;
      INTFLAGD   at 16#20# range 0 .. 31;
      INTFLAGE   at 16#24# range 0 .. 31;
      STATUSA    at 16#34# range 0 .. 31;
      STATUSB    at 16#38# range 0 .. 31;
      STATUSC    at 16#3C# range 0 .. 31;
      STATUSD    at 16#40# range 0 .. 31;
      STATUSE    at 16#44# range 0 .. 31;
   end record;

   --  Peripheral Access Controller
   PAC_Periph : aliased PAC_Peripheral
     with Import, Address => System'To_Address (16#44000000#);

end SAM_SVD.PAC;
