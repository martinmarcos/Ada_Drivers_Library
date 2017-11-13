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

--  This spec has been automatically generated from ATSAMC20E16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAMC20E16A device: Cortex-M0+ Microcontroller with 64KB Flash, 8KB
--  SRAM, 32-pin package (refer to http://www.atmel.com/devices/SAMC20E16A.aspx
--  for more)
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AC_Base : constant System.Address :=
     System'To_Address (16#42005000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#42004400#);
   CCL_Base : constant System.Address :=
     System'To_Address (16#42005C00#);
   DIVAS_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   DIVAS_IOBUS_Base : constant System.Address :=
     System'To_Address (16#60000200#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#41006000#);
   DSU_Base : constant System.Address :=
     System'To_Address (16#41002000#);
   EIC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   EVSYS_Base : constant System.Address :=
     System'To_Address (16#42000000#);
   FREQM_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   GCLK_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   HMATRIXHS_Base : constant System.Address :=
     System'To_Address (16#4100A000#);
   MCLK_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   MTB_Base : constant System.Address :=
     System'To_Address (16#41008000#);
   NVMCTRL_Base : constant System.Address :=
     System'To_Address (16#41004000#);
   OSCCTRL_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   OSC32KCTRL_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   PAC_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   PM_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   PORT_Base : constant System.Address :=
     System'To_Address (16#41000000#);
   PORT_IOBUS_Base : constant System.Address :=
     System'To_Address (16#60000000#);
   RSTC_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   SERCOM0_Base : constant System.Address :=
     System'To_Address (16#42000400#);
   SERCOM1_Base : constant System.Address :=
     System'To_Address (16#42000800#);
   SERCOM2_Base : constant System.Address :=
     System'To_Address (16#42000C00#);
   SERCOM3_Base : constant System.Address :=
     System'To_Address (16#42001000#);
   SUPC_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   TAL_Base : constant System.Address :=
     System'To_Address (16#42006000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#42003000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#42003400#);
   TC2_Base : constant System.Address :=
     System'To_Address (16#42003800#);
   TC3_Base : constant System.Address :=
     System'To_Address (16#42003C00#);
   TC4_Base : constant System.Address :=
     System'To_Address (16#42004000#);
   TCC0_Base : constant System.Address :=
     System'To_Address (16#42002400#);
   TCC1_Base : constant System.Address :=
     System'To_Address (16#42002800#);
   TCC2_Base : constant System.Address :=
     System'To_Address (16#42002C00#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40002000#);

end SAM_SVD;
