--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  LPC54102J256BD64,LPC54102J256UK49,LPC54102J512BD64,LPC54102J512UK49
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   GPIO_Base : constant System.Address :=
     System'To_Address (16#1C000000#);
   DMA0_Base : constant System.Address :=
     System'To_Address (16#1C004000#);
   CRC_ENGINE_Base : constant System.Address :=
     System'To_Address (16#1C010000#);
   SCT0_Base : constant System.Address :=
     System'To_Address (16#1C018000#);
   MAILBOX_Base : constant System.Address :=
     System'To_Address (16#1C02C000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#1C034000#);
   VFIFO_Base : constant System.Address :=
     System'To_Address (16#1C038000#);
   SYSCON_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   GINT0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   GINT1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   PINT_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   IOCON_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   UTICK0_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   WWDT_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   INPUTMUX_Base : constant System.Address :=
     System'To_Address (16#40050000#);
   RIT_Base : constant System.Address :=
     System'To_Address (16#40070000#);
   MRT0_Base : constant System.Address :=
     System'To_Address (16#40074000#);
   ASYNC_SYSCON_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#4008C000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40090000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#4009C000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#400A8000#);
   CTIMER0_Base : constant System.Address :=
     System'To_Address (16#400B4000#);
   CTIMER2_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   CTIMER3_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   CTIMER4_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   CTIMER1_Base : constant System.Address :=
     System'To_Address (16#400B8000#);
   ITM_Base : constant System.Address :=
     System'To_Address (16#E0000000#);
   SystemControl_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   SysTick_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);

end NRF_SVD;
