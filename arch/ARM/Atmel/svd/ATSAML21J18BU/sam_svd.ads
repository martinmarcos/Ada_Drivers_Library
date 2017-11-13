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

--  This spec has been automatically generated from ATSAML21J18BU.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAML21J18BU device: Cortex-M0+ Microcontroller with 256KB Flash,
--  32KB SRAM, 64-pin package (refer to
--  http://www.atmel.com/devices/SAML21J18BU.aspx for more)
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AC_Base : constant System.Address :=
     System'To_Address (16#43001000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#43000C00#);
   AES_Base : constant System.Address :=
     System'To_Address (16#42003400#);
   CCL_Base : constant System.Address :=
     System'To_Address (16#43001C00#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#42003000#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#44000400#);
   DSU_Base : constant System.Address :=
     System'To_Address (16#41002000#);
   EIC_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   EVSYS_Base : constant System.Address :=
     System'To_Address (16#43000000#);
   GCLK_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   MCLK_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   MTB_Base : constant System.Address :=
     System'To_Address (16#41006000#);
   NVMCTRL_Base : constant System.Address :=
     System'To_Address (16#41004000#);
   OPAMP_Base : constant System.Address :=
     System'To_Address (16#43001800#);
   OSCCTRL_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   OSC32KCTRL_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   PAC_Base : constant System.Address :=
     System'To_Address (16#44000000#);
   PM_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   PORT_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   PORT_IOBUS_Base : constant System.Address :=
     System'To_Address (16#60000000#);
   RSTC_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   SERCOM0_Base : constant System.Address :=
     System'To_Address (16#42000000#);
   SERCOM1_Base : constant System.Address :=
     System'To_Address (16#42000400#);
   SERCOM2_Base : constant System.Address :=
     System'To_Address (16#42000800#);
   SERCOM3_Base : constant System.Address :=
     System'To_Address (16#42000C00#);
   SERCOM4_Base : constant System.Address :=
     System'To_Address (16#42001000#);
   SERCOM5_Base : constant System.Address :=
     System'To_Address (16#43000400#);
   SUPC_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   TAL_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#42002000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#42002400#);
   TC2_Base : constant System.Address :=
     System'To_Address (16#42002800#);
   TC3_Base : constant System.Address :=
     System'To_Address (16#42002C00#);
   TC4_Base : constant System.Address :=
     System'To_Address (16#43000800#);
   TCC0_Base : constant System.Address :=
     System'To_Address (16#42001400#);
   TCC1_Base : constant System.Address :=
     System'To_Address (16#42001800#);
   TCC2_Base : constant System.Address :=
     System'To_Address (16#42001C00#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#42003800#);
   USB_Base : constant System.Address :=
     System'To_Address (16#41000000#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40001C00#);

end SAM_SVD;
