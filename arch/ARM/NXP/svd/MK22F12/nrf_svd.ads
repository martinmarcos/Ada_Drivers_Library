--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK22F12.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  MK22F12 NXP Microcontroller
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FTFE_FlashConfig_Base : constant System.Address :=
     System'To_Address (16#400#);
   AIPS0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   AIPS1_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   AXBS_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   DMA_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   FB_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   SYSMPU_Base : constant System.Address :=
     System'To_Address (16#4000D000#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#4001F000#);
   FTFE_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMAMUX_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   CAN0_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   I2S0_Base : constant System.Address :=
     System'To_Address (16#4002F000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40032000#);
   USBDCD_Base : constant System.Address :=
     System'To_Address (16#40035000#);
   PDB0_Base : constant System.Address :=
     System'To_Address (16#40036000#);
   PIT_Base : constant System.Address :=
     System'To_Address (16#40037000#);
   FTM0_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   FTM1_Base : constant System.Address :=
     System'To_Address (16#40039000#);
   FTM2_Base : constant System.Address :=
     System'To_Address (16#400B8000#);
   FTM3_Base : constant System.Address :=
     System'To_Address (16#400B9000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#4003B000#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#400BB000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4003D000#);
   RFVBAT_Base : constant System.Address :=
     System'To_Address (16#4003E000#);
   LPTMR0_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   RFSYS_Base : constant System.Address :=
     System'To_Address (16#40041000#);
   SIM_Base : constant System.Address :=
     System'To_Address (16#40047000#);
   PORTA_Base : constant System.Address :=
     System'To_Address (16#40049000#);
   PORTB_Base : constant System.Address :=
     System'To_Address (16#4004A000#);
   PORTC_Base : constant System.Address :=
     System'To_Address (16#4004B000#);
   PORTD_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   PORTE_Base : constant System.Address :=
     System'To_Address (16#4004D000#);
   WDOG_Base : constant System.Address :=
     System'To_Address (16#40052000#);
   EWM_Base : constant System.Address :=
     System'To_Address (16#40061000#);
   CMT_Base : constant System.Address :=
     System'To_Address (16#40062000#);
   MCG_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   OSC_Base : constant System.Address :=
     System'To_Address (16#40065000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40066000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40067000#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#400E6000#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#4006A000#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#4006B000#);
   UART2_Base : constant System.Address :=
     System'To_Address (16#4006C000#);
   USB0_Base : constant System.Address :=
     System'To_Address (16#40072000#);
   CMP0_Base : constant System.Address :=
     System'To_Address (16#40073000#);
   CMP1_Base : constant System.Address :=
     System'To_Address (16#40073008#);
   CMP2_Base : constant System.Address :=
     System'To_Address (16#40073010#);
   VREF_Base : constant System.Address :=
     System'To_Address (16#40074000#);
   LLWU_Base : constant System.Address :=
     System'To_Address (16#4007C000#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#4007D000#);
   SMC_Base : constant System.Address :=
     System'To_Address (16#4007E000#);
   RCM_Base : constant System.Address :=
     System'To_Address (16#4007F000#);
   DAC0_Base : constant System.Address :=
     System'To_Address (16#400CC000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#400FF000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#400FF040#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#400FF080#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#400FF0C0#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#400FF100#);
   SystemControl_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   SysTick_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   MCM_Base : constant System.Address :=
     System'To_Address (16#E0080000#);

end NRF_SVD;
