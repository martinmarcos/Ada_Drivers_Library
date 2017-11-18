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

--  This spec has been automatically generated from ATSAMR21G17A.svd

--  Definition of the device's interrupts
package SAM_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   PM_INTREQ                 : constant := 0;
   SYSCTRL_INTREQ            : constant := 1;
   WDT_INTREQ                : constant := 2;
   RTC_INTREQ                : constant := 3;
   EIC_INTREQ                : constant := 4;
   NVMCTRL_INTREQ            : constant := 5;
   DMAC_INTREQ               : constant := 6;
   USB_INTREQ                : constant := 7;
   EVSYS_INTREQ              : constant := 8;
   SERCOM0_INTREQ            : constant := 9;
   SERCOM1_INTREQ            : constant := 10;
   SERCOM2_INTREQ            : constant := 11;
   SERCOM3_INTREQ            : constant := 12;
   SERCOM4_INTREQ            : constant := 13;
   SERCOM5_INTREQ            : constant := 14;
   TCC0_INTREQ               : constant := 15;
   TCC1_INTREQ               : constant := 16;
   TCC2_INTREQ               : constant := 17;
   TC3_INTREQ                : constant := 18;
   TC4_INTREQ                : constant := 19;
   TC5_INTREQ                : constant := 20;
   TC6_INTREQ                : constant := 21;
   TC7_INTREQ                : constant := 22;
   ADC_INTREQ                : constant := 23;
   AC_INTREQ                 : constant := 24;
   DAC_INTREQ                : constant := 25;

end SAM_SVD.Interrupts;
