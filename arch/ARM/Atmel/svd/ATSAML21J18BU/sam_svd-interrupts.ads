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

--  Definition of the device's interrupts
package SAM_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   MCLK_INTREQ                  : constant := 0;
   OSC32KCTRL_INTREQ            : constant := 0;
   OSCCTRL_INTREQ               : constant := 0;
   PAC_INTREQ                   : constant := 0;
   PM_INTREQ                    : constant := 0;
   SUPC_INTREQ                  : constant := 0;
   TAL_INTREQ                   : constant := 0;
   WDT_INTREQ                   : constant := 1;
   RTC_INTREQ                   : constant := 2;
   EIC_INTREQ                   : constant := 3;
   NVMCTRL_INTREQ               : constant := 4;
   DMAC_INTREQ                  : constant := 5;
   USB_INTREQ                   : constant := 6;
   EVSYS_INTREQ                 : constant := 7;
   SERCOM0_INTREQ               : constant := 8;
   SERCOM1_INTREQ               : constant := 9;
   SERCOM2_INTREQ               : constant := 10;
   SERCOM3_INTREQ               : constant := 11;
   SERCOM4_INTREQ               : constant := 12;
   SERCOM5_INTREQ               : constant := 13;
   TCC0_INTREQ                  : constant := 14;
   TCC1_INTREQ                  : constant := 15;
   TCC2_INTREQ                  : constant := 16;
   TC0_INTREQ                   : constant := 17;
   TC1_INTREQ                   : constant := 18;
   TC2_INTREQ                   : constant := 19;
   TC3_INTREQ                   : constant := 20;
   TC4_INTREQ                   : constant := 21;
   ADC_INTREQ                   : constant := 22;
   AC_INTREQ                    : constant := 23;
   DAC_INTREQ                   : constant := 24;
   AES_INTREQ                   : constant := 26;
   TRNG_INTREQ                  : constant := 27;

end SAM_SVD.Interrupts;
