--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   WDT                   : constant := 0;
   DMA0                  : constant := 3;
   GINT0                 : constant := 4;
   PIN_INT0              : constant := 5;
   PIN_INT1              : constant := 6;
   PIN_INT2              : constant := 7;
   PIN_INT3              : constant := 8;
   UTICK0                : constant := 9;
   MRT0                  : constant := 10;
   CTIMER0               : constant := 11;
   CTIMER1               : constant := 12;
   CTIMER2               : constant := 13;
   CTIMER3               : constant := 14;
   CTIMER4               : constant := 15;
   SCT0                  : constant := 16;
   USART0                : constant := 17;
   USART1                : constant := 18;
   USART2                : constant := 19;
   USART3                : constant := 20;
   I2C0                  : constant := 21;
   I2C1                  : constant := 22;
   I2C2                  : constant := 23;
   SPI0                  : constant := 24;
   SPI1                  : constant := 25;
   ADC0_SEQA             : constant := 26;
   ADC0_SEQB             : constant := 27;
   ADC0_THCMP            : constant := 28;
   RTC                   : constant := 29;
   MAILBOX               : constant := 31;
   GINT1                 : constant := 32;
   PIN_INT4              : constant := 33;
   PIN_INT5              : constant := 34;
   PIN_INT6              : constant := 35;
   PIN_INT7              : constant := 36;
   RIT                   : constant := 40;

end NRF_SVD.Interrupts;
