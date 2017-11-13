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

with System;

--  Atmel ATSAMD10C13A device: Cortex-M0+ Microcontroller with 8KB Flash, 4KB
--  SRAM, SOIC14_capless-pin package (refer to
--  http://www.atmel.com/devices/SAMD10C13A.aspx for more)
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AC_Base : constant System.Address :=
     System'To_Address (16#42002400#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#42002000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#42002800#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#41004800#);
   DSU_Base : constant System.Address :=
     System'To_Address (16#41002000#);
   EIC_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   EVSYS_Base : constant System.Address :=
     System'To_Address (16#42000400#);
   GCLK_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   HMATRIX_Base : constant System.Address :=
     System'To_Address (16#41007000#);
   MTB_Base : constant System.Address :=
     System'To_Address (16#41006000#);
   NVMCTRL_Base : constant System.Address :=
     System'To_Address (16#41004000#);
   PAC0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   PAC1_Base : constant System.Address :=
     System'To_Address (16#41000000#);
   PAC2_Base : constant System.Address :=
     System'To_Address (16#42000000#);
   PM_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   PORT_Base : constant System.Address :=
     System'To_Address (16#41004400#);
   PORT_IOBUS_Base : constant System.Address :=
     System'To_Address (16#60000000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   SERCOM0_Base : constant System.Address :=
     System'To_Address (16#42000800#);
   SERCOM1_Base : constant System.Address :=
     System'To_Address (16#42000C00#);
   SYSCTRL_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#42001800#);
   TC2_Base : constant System.Address :=
     System'To_Address (16#42001C00#);
   TCC0_Base : constant System.Address :=
     System'To_Address (16#42001400#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40001000#);

end SAM_SVD;
