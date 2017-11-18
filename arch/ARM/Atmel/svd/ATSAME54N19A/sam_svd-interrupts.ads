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

--  This spec has been automatically generated from ATSAME54N19A.svd

--  Definition of the device's interrupts
package SAM_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   PM                       : constant := 0;
   MCLK                     : constant := 1;
   OSCCTRL_XOSC0            : constant := 2;
   OSCCTRL_XOSC1            : constant := 3;
   OSCCTRL_DFLL             : constant := 4;
   OSCCTRL_DPLL0            : constant := 5;
   OSCCTRL_DPLL1            : constant := 6;
   OSC32KCTRL               : constant := 7;
   SUPC_OTHER               : constant := 8;
   SUPC_BODDET              : constant := 9;
   WDT                      : constant := 10;
   RTC                      : constant := 11;
   EIC_EXTINT_0             : constant := 12;
   EIC_EXTINT_1             : constant := 13;
   EIC_EXTINT_2             : constant := 14;
   EIC_EXTINT_3             : constant := 15;
   EIC_EXTINT_4             : constant := 16;
   EIC_EXTINT_5             : constant := 17;
   EIC_EXTINT_6             : constant := 18;
   EIC_EXTINT_7             : constant := 19;
   EIC_EXTINT_8             : constant := 20;
   EIC_EXTINT_9             : constant := 21;
   EIC_EXTINT_10            : constant := 22;
   EIC_EXTINT_11            : constant := 23;
   EIC_EXTINT_12            : constant := 24;
   EIC_EXTINT_13            : constant := 25;
   EIC_EXTINT_14            : constant := 26;
   EIC_EXTINT_15            : constant := 27;
   FREQM                    : constant := 28;
   NVMCTRL_0                : constant := 29;
   NVMCTRL_1                : constant := 30;
   DMAC_0                   : constant := 31;
   DMAC_1                   : constant := 32;
   DMAC_2                   : constant := 33;
   DMAC_3                   : constant := 34;
   DMAC_OTHER               : constant := 35;
   EVSYS_0                  : constant := 36;
   EVSYS_1                  : constant := 37;
   EVSYS_2                  : constant := 38;
   EVSYS_3                  : constant := 39;
   EVSYS_OTHER              : constant := 40;
   PAC                      : constant := 41;
   TAL_BRK                  : constant := 42;
   TAL_IPS                  : constant := 43;
   RAMECC                   : constant := 45;
   SERCOM0_0                : constant := 46;
   SERCOM0_1                : constant := 47;
   SERCOM0_2                : constant := 48;
   SERCOM0_OTHER            : constant := 49;
   SERCOM1_0                : constant := 50;
   SERCOM1_1                : constant := 51;
   SERCOM1_2                : constant := 52;
   SERCOM1_OTHER            : constant := 53;
   SERCOM2_0                : constant := 54;
   SERCOM2_1                : constant := 55;
   SERCOM2_2                : constant := 56;
   SERCOM2_OTHER            : constant := 57;
   SERCOM3_0                : constant := 58;
   SERCOM3_1                : constant := 59;
   SERCOM3_2                : constant := 60;
   SERCOM3_OTHER            : constant := 61;
   SERCOM4_0                : constant := 62;
   SERCOM4_1                : constant := 63;
   SERCOM4_2                : constant := 64;
   SERCOM4_OTHER            : constant := 65;
   SERCOM5_0                : constant := 66;
   SERCOM5_1                : constant := 67;
   SERCOM5_2                : constant := 68;
   SERCOM5_OTHER            : constant := 69;
   SERCOM6_0                : constant := 70;
   SERCOM6_1                : constant := 71;
   SERCOM6_2                : constant := 72;
   SERCOM6_OTHER            : constant := 73;
   SERCOM7_0                : constant := 74;
   SERCOM7_1                : constant := 75;
   SERCOM7_2                : constant := 76;
   SERCOM7_OTHER            : constant := 77;
   CAN0                     : constant := 78;
   CAN1                     : constant := 79;
   USB_OTHER                : constant := 80;
   USB_SOF_HSOF             : constant := 81;
   USB_TRCPT0               : constant := 82;
   USB_TRCPT1               : constant := 83;
   GMAC                     : constant := 84;
   TCC0_OTHER               : constant := 85;
   TCC0_MC0                 : constant := 86;
   TCC0_MC1                 : constant := 87;
   TCC0_MC2                 : constant := 88;
   TCC0_MC3                 : constant := 89;
   TCC0_MC4                 : constant := 90;
   TCC0_MC5                 : constant := 91;
   TCC1_OTHER               : constant := 92;
   TCC1_MC0                 : constant := 93;
   TCC1_MC1                 : constant := 94;
   TCC1_MC2                 : constant := 95;
   TCC1_MC3                 : constant := 96;
   TCC2_OTHER               : constant := 97;
   TCC2_MC0                 : constant := 98;
   TCC2_MC1                 : constant := 99;
   TCC2_MC2                 : constant := 100;
   TCC3_OTHER               : constant := 101;
   TCC3_MC0                 : constant := 102;
   TCC3_MC1                 : constant := 103;
   TCC4_OTHER               : constant := 104;
   TCC4_MC0                 : constant := 105;
   TCC4_MC1                 : constant := 106;
   TC0                      : constant := 107;
   TC1                      : constant := 108;
   TC2                      : constant := 109;
   TC3                      : constant := 110;
   TC4                      : constant := 111;
   TC5                      : constant := 112;
   TC6                      : constant := 113;
   TC7                      : constant := 114;
   PDEC_OTHER               : constant := 115;
   PDEC_MC0                 : constant := 116;
   PDEC_MC1                 : constant := 117;
   ADC0_OTHER               : constant := 118;
   ADC0_RESRDY              : constant := 119;
   ADC1_OTHER               : constant := 120;
   ADC1_RESRDY              : constant := 121;
   AC                       : constant := 122;
   DAC_OTHER                : constant := 123;
   DAC_EMPTY_0              : constant := 124;
   DAC_EMPTY_1              : constant := 125;
   DAC_RESRDY_0             : constant := 126;
   DAC_RESRDY_1             : constant := 127;
   I2S                      : constant := 128;
   PCC                      : constant := 129;
   AES                      : constant := 130;
   TRNG                     : constant := 131;
   ICM                      : constant := 132;
   QSPI                     : constant := 134;
   SDHC0                    : constant := 135;
   SDHC1                    : constant := 136;

end SAM_SVD.Interrupts;
