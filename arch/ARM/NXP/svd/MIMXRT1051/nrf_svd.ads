--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  MIMXRT1051DVL6A
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AIPSTZ1_Base : constant System.Address :=
     System'To_Address (16#4007C000#);
   AIPSTZ2_Base : constant System.Address :=
     System'To_Address (16#4017C000#);
   AIPSTZ3_Base : constant System.Address :=
     System'To_Address (16#4027C000#);
   AIPSTZ4_Base : constant System.Address :=
     System'To_Address (16#4037C000#);
   DCDC_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   PIT_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   CMP1_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   CMP2_Base : constant System.Address :=
     System'To_Address (16#40094008#);
   CMP3_Base : constant System.Address :=
     System'To_Address (16#40094010#);
   CMP4_Base : constant System.Address :=
     System'To_Address (16#40094018#);
   IOMUXC_SNVS_GPR_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   IOMUXC_SNVS_Base : constant System.Address :=
     System'To_Address (16#400A8000#);
   IOMUXC_GPR_Base : constant System.Address :=
     System'To_Address (16#400AC000#);
   FLEXRAM_Base : constant System.Address :=
     System'To_Address (16#400B0000#);
   EWM_Base : constant System.Address :=
     System'To_Address (16#400B4000#);
   WDOG1_Base : constant System.Address :=
     System'To_Address (16#400B8000#);
   WDOG2_Base : constant System.Address :=
     System'To_Address (16#400D0000#);
   RTWDOG_Base : constant System.Address :=
     System'To_Address (16#400BC000#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#400C4000#);
   ADC2_Base : constant System.Address :=
     System'To_Address (16#400C8000#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#400CC000#);
   SNVS_Base : constant System.Address :=
     System'To_Address (16#400D4000#);
   CCM_ANALOG_Base : constant System.Address :=
     System'To_Address (16#400D8000#);
   PMU_Base : constant System.Address :=
     System'To_Address (16#400D8000#);
   TEMPMON_Base : constant System.Address :=
     System'To_Address (16#400D8000#);
   USB_ANALOG_Base : constant System.Address :=
     System'To_Address (16#400D8000#);
   XTALOSC24M_Base : constant System.Address :=
     System'To_Address (16#400D8000#);
   USBPHY1_Base : constant System.Address :=
     System'To_Address (16#400D9000#);
   USBPHY2_Base : constant System.Address :=
     System'To_Address (16#400DA000#);
   CSU_Base : constant System.Address :=
     System'To_Address (16#400DC000#);
   TSC_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   DMA0_Base : constant System.Address :=
     System'To_Address (16#400E8000#);
   DMAMUX_Base : constant System.Address :=
     System'To_Address (16#400EC000#);
   GPC_Base : constant System.Address :=
     System'To_Address (16#400F4000#);
   PGC_Base : constant System.Address :=
     System'To_Address (16#400F4000#);
   SRC_Base : constant System.Address :=
     System'To_Address (16#400F8000#);
   CCM_Base : constant System.Address :=
     System'To_Address (16#400FC000#);
   ROMC_Base : constant System.Address :=
     System'To_Address (16#40180000#);
   LPUART1_Base : constant System.Address :=
     System'To_Address (16#40184000#);
   LPUART2_Base : constant System.Address :=
     System'To_Address (16#40188000#);
   LPUART3_Base : constant System.Address :=
     System'To_Address (16#4018C000#);
   LPUART4_Base : constant System.Address :=
     System'To_Address (16#40190000#);
   LPUART5_Base : constant System.Address :=
     System'To_Address (16#40194000#);
   LPUART6_Base : constant System.Address :=
     System'To_Address (16#40198000#);
   LPUART7_Base : constant System.Address :=
     System'To_Address (16#4019C000#);
   LPUART8_Base : constant System.Address :=
     System'To_Address (16#401A0000#);
   FLEXIO1_Base : constant System.Address :=
     System'To_Address (16#401AC000#);
   FLEXIO2_Base : constant System.Address :=
     System'To_Address (16#401B0000#);
   GPIO1_Base : constant System.Address :=
     System'To_Address (16#401B8000#);
   GPIO5_Base : constant System.Address :=
     System'To_Address (16#400C0000#);
   GPIO2_Base : constant System.Address :=
     System'To_Address (16#401BC000#);
   GPIO3_Base : constant System.Address :=
     System'To_Address (16#401C0000#);
   GPIO4_Base : constant System.Address :=
     System'To_Address (16#401C4000#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#401D0000#);
   CAN2_Base : constant System.Address :=
     System'To_Address (16#401D4000#);
   TMR1_Base : constant System.Address :=
     System'To_Address (16#401DC000#);
   TMR2_Base : constant System.Address :=
     System'To_Address (16#401E0000#);
   TMR3_Base : constant System.Address :=
     System'To_Address (16#401E4000#);
   TMR4_Base : constant System.Address :=
     System'To_Address (16#401E8000#);
   GPT1_Base : constant System.Address :=
     System'To_Address (16#401EC000#);
   GPT2_Base : constant System.Address :=
     System'To_Address (16#401F0000#);
   OCOTP_Base : constant System.Address :=
     System'To_Address (16#401F4000#);
   IOMUXC_Base : constant System.Address :=
     System'To_Address (16#401F8000#);
   KPP_Base : constant System.Address :=
     System'To_Address (16#401FC000#);
   FLEXSPI_Base : constant System.Address :=
     System'To_Address (16#402A8000#);
   USDHC1_Base : constant System.Address :=
     System'To_Address (16#402C0000#);
   USDHC2_Base : constant System.Address :=
     System'To_Address (16#402C4000#);
   ENET_Base : constant System.Address :=
     System'To_Address (16#402D8000#);
   USB1_Base : constant System.Address :=
     System'To_Address (16#402E0000#);
   USB2_Base : constant System.Address :=
     System'To_Address (16#402E0200#);
   USBNC1_Base : constant System.Address :=
     System'To_Address (16#402E0000#);
   USBNC2_Base : constant System.Address :=
     System'To_Address (16#402E0004#);
   SEMC_Base : constant System.Address :=
     System'To_Address (16#402F0000#);
   DCP_Base : constant System.Address :=
     System'To_Address (16#402FC000#);
   SPDIF_Base : constant System.Address :=
     System'To_Address (16#40380000#);
   SAI1_Base : constant System.Address :=
     System'To_Address (16#40384000#);
   SAI2_Base : constant System.Address :=
     System'To_Address (16#40388000#);
   SAI3_Base : constant System.Address :=
     System'To_Address (16#4038C000#);
   LPSPI1_Base : constant System.Address :=
     System'To_Address (16#40394000#);
   LPSPI2_Base : constant System.Address :=
     System'To_Address (16#40398000#);
   LPSPI3_Base : constant System.Address :=
     System'To_Address (16#4039C000#);
   LPSPI4_Base : constant System.Address :=
     System'To_Address (16#403A0000#);
   ADC_ETC_Base : constant System.Address :=
     System'To_Address (16#403B0000#);
   AOI1_Base : constant System.Address :=
     System'To_Address (16#403B4000#);
   AOI2_Base : constant System.Address :=
     System'To_Address (16#403B8000#);
   XBARA1_Base : constant System.Address :=
     System'To_Address (16#403BC000#);
   XBARB2_Base : constant System.Address :=
     System'To_Address (16#403C0000#);
   XBARB3_Base : constant System.Address :=
     System'To_Address (16#403C4000#);
   ENC1_Base : constant System.Address :=
     System'To_Address (16#403C8000#);
   ENC2_Base : constant System.Address :=
     System'To_Address (16#403CC000#);
   ENC3_Base : constant System.Address :=
     System'To_Address (16#403D0000#);
   ENC4_Base : constant System.Address :=
     System'To_Address (16#403D4000#);
   PWM1_Base : constant System.Address :=
     System'To_Address (16#403DC000#);
   PWM2_Base : constant System.Address :=
     System'To_Address (16#403E0000#);
   PWM3_Base : constant System.Address :=
     System'To_Address (16#403E4000#);
   PWM4_Base : constant System.Address :=
     System'To_Address (16#403E8000#);
   BEE_Base : constant System.Address :=
     System'To_Address (16#403EC000#);
   LPI2C1_Base : constant System.Address :=
     System'To_Address (16#403F0000#);
   LPI2C2_Base : constant System.Address :=
     System'To_Address (16#403F4000#);
   LPI2C3_Base : constant System.Address :=
     System'To_Address (16#403F8000#);
   LPI2C4_Base : constant System.Address :=
     System'To_Address (16#403FC000#);

end NRF_SVD;
