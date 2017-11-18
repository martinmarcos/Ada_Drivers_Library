--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAMD21E16BU.svd

--  Definition of the device's interrupts
package SAM_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   PM                 : constant := 0;
   SYSCTRL            : constant := 1;
   WDT                : constant := 2;
   RTC                : constant := 3;
   EIC                : constant := 4;
   NVMCTRL            : constant := 5;
   DMAC               : constant := 6;
   USB                : constant := 7;
   EVSYS              : constant := 8;
   SERCOM0            : constant := 9;
   SERCOM1            : constant := 10;
   SERCOM2            : constant := 11;
   SERCOM3            : constant := 12;
   TCC0               : constant := 15;
   TCC1               : constant := 16;
   TCC2               : constant := 17;
   TC3                : constant := 18;
   TC4                : constant := 19;
   TC5                : constant := 20;
   ADC                : constant := 23;
   AC                 : constant := 24;
   DAC                : constant := 25;
   I2S                : constant := 27;

end SAM_SVD.Interrupts;
