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

--  This spec has been automatically generated from ATSAM4LC2A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAM4LC2A device: Cortex-M4 Microcontroller with 128KB Flash, 32KB
--  SRAM, 48-pin package (refer to http://www.atmel.com/devices/SAM4LC2A.aspx
--  for more)
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   ABDACB_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   ACIFC_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   ADCIFE_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   AESA_Base : constant System.Address :=
     System'To_Address (16#400B0000#);
   AST_Base : constant System.Address :=
     System'To_Address (16#400F0800#);
   BPM_Base : constant System.Address :=
     System'To_Address (16#400F0000#);
   BSCIF_Base : constant System.Address :=
     System'To_Address (16#400F0400#);
   CATB_Base : constant System.Address :=
     System'To_Address (16#40070000#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   CRCCU_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   DACC_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   EIC_Base : constant System.Address :=
     System'To_Address (16#400F1000#);
   HFLASHC_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   FREQM_Base : constant System.Address :=
     System'To_Address (16#400E0C00#);
   GLOC_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   GPIO_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   HCACHE_Base : constant System.Address :=
     System'To_Address (16#400A0400#);
   HMATRIX_Base : constant System.Address :=
     System'To_Address (16#400A1000#);
   IISC_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   LCDCA_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   PARC_Base : constant System.Address :=
     System'To_Address (16#4006C000#);
   PDCA_Base : constant System.Address :=
     System'To_Address (16#400A2000#);
   PEVC_Base : constant System.Address :=
     System'To_Address (16#400A6000#);
   PICOUART_Base : constant System.Address :=
     System'To_Address (16#400F1400#);
   PM_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   SCIF_Base : constant System.Address :=
     System'To_Address (16#400E0800#);
   SMAP_Base : constant System.Address :=
     System'To_Address (16#400A3000#);
   SPI_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#40068000#);
   TWIM0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   TWIM1_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   TWIM2_Base : constant System.Address :=
     System'To_Address (16#40078000#);
   TWIM3_Base : constant System.Address :=
     System'To_Address (16#4007C000#);
   TWIS0_Base : constant System.Address :=
     System'To_Address (16#40018400#);
   TWIS1_Base : constant System.Address :=
     System'To_Address (16#4001C400#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40030000#);
   USBC_Base : constant System.Address :=
     System'To_Address (16#400A5000#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#400F0C00#);

end SAM_SVD;
