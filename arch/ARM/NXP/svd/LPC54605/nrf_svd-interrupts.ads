--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   WDT_BOD                 : constant := 0;
   DMA0                    : constant := 1;
   GINT0                   : constant := 2;
   GINT1                   : constant := 3;
   PIN_INT0                : constant := 4;
   PIN_INT1                : constant := 5;
   PIN_INT2                : constant := 6;
   PIN_INT3                : constant := 7;
   UTICK0                  : constant := 8;
   MRT0                    : constant := 9;
   CTIMER0                 : constant := 10;
   CTIMER1                 : constant := 11;
   SCT0                    : constant := 12;
   CTIMER3                 : constant := 13;
   FLEXCOMM0               : constant := 14;
   FLEXCOMM1               : constant := 15;
   FLEXCOMM2               : constant := 16;
   FLEXCOMM3               : constant := 17;
   FLEXCOMM4               : constant := 18;
   FLEXCOMM5               : constant := 19;
   FLEXCOMM6               : constant := 20;
   FLEXCOMM7               : constant := 21;
   ADC0_SEQA               : constant := 22;
   ADC0_SEQB               : constant := 23;
   ADC0_THCMP              : constant := 24;
   DMIC0                   : constant := 25;
   HWVAD0                  : constant := 26;
   USB0_NEEDCLK            : constant := 27;
   USB0                    : constant := 28;
   RTC                     : constant := 29;
   PIN_INT4                : constant := 32;
   PIN_INT5                : constant := 33;
   PIN_INT6                : constant := 34;
   PIN_INT7                : constant := 35;
   CTIMER2                 : constant := 36;
   CTIMER4                 : constant := 37;
   RIT                     : constant := 38;
   SPIFI0                  : constant := 39;
   FLEXCOMM8               : constant := 40;
   FLEXCOMM9               : constant := 41;
   SDIO                    : constant := 42;
   USB1                    : constant := 47;
   USB1_NEEDCLK            : constant := 48;
   EEPROM                  : constant := 52;
   SMARTCARD0              : constant := 55;
   SMARTCARD1              : constant := 56;

end NRF_SVD.Interrupts;
