--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKE04Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  MKE04Z4 NXP Microcontroller
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FTMRE_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   IRQ_Base : constant System.Address :=
     System'To_Address (16#40031000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40032000#);
   PWT_Base : constant System.Address :=
     System'To_Address (16#40033000#);
   PIT_Base : constant System.Address :=
     System'To_Address (16#40037000#);
   FTM0_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   FTM2_Base : constant System.Address :=
     System'To_Address (16#4003A000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#4003B000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4003D000#);
   SIM_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   PORT_Base : constant System.Address :=
     System'To_Address (16#40049000#);
   WDOG_Base : constant System.Address :=
     System'To_Address (16#40052000#);
   ICS_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   OSC_Base : constant System.Address :=
     System'To_Address (16#40065000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40066000#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#4006A000#);
   ACMP0_Base : constant System.Address :=
     System'To_Address (16#40073000#);
   ACMP1_Base : constant System.Address :=
     System'To_Address (16#40074000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40076000#);
   KBI0_Base : constant System.Address :=
     System'To_Address (16#40079000#);
   KBI1_Base : constant System.Address :=
     System'To_Address (16#4007A000#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#4007D000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#400FF000#);
   ROM_Base : constant System.Address :=
     System'To_Address (16#F0002000#);
   MCM_Base : constant System.Address :=
     System'To_Address (16#F0003000#);
   FGPIOA_Base : constant System.Address :=
     System'To_Address (16#F8000000#);

end NRF_SVD;
