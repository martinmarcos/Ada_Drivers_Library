--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54628.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  LPC54628J512ET180
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   SYSCON_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   IOCON_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   GINT0_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   GINT1_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   PINT_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   INPUTMUX_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   CTIMER0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   CTIMER1_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   CTIMER2_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   CTIMER3_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   CTIMER4_Base : constant System.Address :=
     System'To_Address (16#40049000#);
   WWDT_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   MRT0_Base : constant System.Address :=
     System'To_Address (16#4000D000#);
   UTICK0_Base : constant System.Address :=
     System'To_Address (16#4000E000#);
   EEPROM_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   OTPC_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   RIT_Base : constant System.Address :=
     System'To_Address (16#4002D000#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#40034000#);
   SMARTCARD0_Base : constant System.Address :=
     System'To_Address (16#40036000#);
   SMARTCARD1_Base : constant System.Address :=
     System'To_Address (16#40037000#);
   ASYNC_SYSCON_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   SPIFI0_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   EMC_Base : constant System.Address :=
     System'To_Address (16#40081000#);
   DMA0_Base : constant System.Address :=
     System'To_Address (16#40082000#);
   LCD_Base : constant System.Address :=
     System'To_Address (16#40083000#);
   USB0_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   SCT0_Base : constant System.Address :=
     System'To_Address (16#40085000#);
   FLEXCOMM0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   FLEXCOMM1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   FLEXCOMM2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   FLEXCOMM3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   FLEXCOMM4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   FLEXCOMM5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   FLEXCOMM6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   FLEXCOMM7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   FLEXCOMM8_Base : constant System.Address :=
     System'To_Address (16#40099000#);
   FLEXCOMM9_Base : constant System.Address :=
     System'To_Address (16#4009A000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   I2C5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   I2C6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   I2C7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   I2C8_Base : constant System.Address :=
     System'To_Address (16#40099000#);
   I2C9_Base : constant System.Address :=
     System'To_Address (16#4009A000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   SPI6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   SPI7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   SPI8_Base : constant System.Address :=
     System'To_Address (16#40099000#);
   SPI9_Base : constant System.Address :=
     System'To_Address (16#4009A000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   USART4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   USART5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   USART7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   USART8_Base : constant System.Address :=
     System'To_Address (16#40099000#);
   USART9_Base : constant System.Address :=
     System'To_Address (16#4009A000#);
   GPIO_Base : constant System.Address :=
     System'To_Address (16#4008C000#);
   DMIC0_Base : constant System.Address :=
     System'To_Address (16#40090000#);
   ENET_Base : constant System.Address :=
     System'To_Address (16#40092000#);
   USBHSD_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   CRC_ENGINE_Base : constant System.Address :=
     System'To_Address (16#40095000#);
   I2S0_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   I2S1_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   SDIF_Base : constant System.Address :=
     System'To_Address (16#4009B000#);
   CAN0_Base : constant System.Address :=
     System'To_Address (16#4009D000#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#4009E000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   USBFSH_Base : constant System.Address :=
     System'To_Address (16#400A2000#);
   USBHSH_Base : constant System.Address :=
     System'To_Address (16#400A3000#);
   SHA0_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   ITM_Base : constant System.Address :=
     System'To_Address (16#E0000000#);
   SystemControl_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   SysTick_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   ETM_Base : constant System.Address :=
     System'To_Address (16#E0041000#);

end NRF_SVD;
