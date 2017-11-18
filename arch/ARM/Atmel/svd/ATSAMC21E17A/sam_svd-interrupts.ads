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

--  This spec has been automatically generated from ATSAMC21E17A.svd

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
   FREQM_INTREQ                 : constant := 4;
   TSENS_INTREQ                 : constant := 5;
   NVMCTRL_INTREQ               : constant := 6;
   DMAC_INTREQ                  : constant := 7;
   EVSYS_INTREQ                 : constant := 8;
   SERCOM0_INTREQ               : constant := 9;
   SERCOM1_INTREQ               : constant := 10;
   SERCOM2_INTREQ               : constant := 11;
   SERCOM3_INTREQ               : constant := 12;
   CAN0_INTREQ                  : constant := 15;
   TCC0_INTREQ                  : constant := 17;
   TCC1_INTREQ                  : constant := 18;
   TCC2_INTREQ                  : constant := 19;
   TC0_INTREQ                   : constant := 20;
   TC1_INTREQ                   : constant := 21;
   TC2_INTREQ                   : constant := 22;
   TC3_INTREQ                   : constant := 23;
   TC4_INTREQ                   : constant := 24;
   ADC0_INTREQ                  : constant := 25;
   ADC1_INTREQ                  : constant := 26;
   AC_INTREQ                    : constant := 27;
   DAC_INTREQ                   : constant := 28;
   SDADC_INTREQ                 : constant := 29;

end SAM_SVD.Interrupts;
