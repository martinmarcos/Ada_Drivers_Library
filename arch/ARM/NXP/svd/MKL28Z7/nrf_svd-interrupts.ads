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

--  This spec has been automatically generated from MKL28Z7.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   DMA0_04                    : constant := 0;
   DMA0_15                    : constant := 1;
   DMA0_26                    : constant := 2;
   DMA0_37                    : constant := 3;
   CTI0_DMA0_Error            : constant := 4;
   FLEXIO0                    : constant := 5;
   TPM0                       : constant := 6;
   TPM1                       : constant := 7;
   TPM2                       : constant := 8;
   LPIT0                      : constant := 9;
   LPSPI0                     : constant := 10;
   LPSPI1                     : constant := 11;
   LPUART0                    : constant := 12;
   LPUART1                    : constant := 13;
   LPI2C0                     : constant := 14;
   LPI2C1                     : constant := 15;
   PORTA                      : constant := 17;
   PORTB                      : constant := 18;
   PORTC                      : constant := 19;
   PORTD                      : constant := 20;
   PORTE                      : constant := 21;
   LLWU0                      : constant := 22;
   I2S0                       : constant := 23;
   USB0                       : constant := 24;
   ADC0                       : constant := 25;
   LPTMR0                     : constant := 26;
   RTC_Seconds                : constant := 27;
   INTMUX0_0                  : constant := 28;
   INTMUX0_1                  : constant := 29;
   INTMUX0_2                  : constant := 30;
   INTMUX0_3                  : constant := 31;
   LPTMR1                     : constant := 32;
   LPSPI2                     : constant := 36;
   LPUART2                    : constant := 37;
   EMVSIM0                    : constant := 38;
   LPI2C2                     : constant := 39;
   TSI0                       : constant := 40;
   PMC                        : constant := 41;
   FTFA                       : constant := 42;
   SCG                        : constant := 43;
   WDOG0                      : constant := 44;
   DAC0                       : constant := 45;
   TRNG                       : constant := 46;
   RCM                        : constant := 47;
   CMP0                       : constant := 48;
   CMP1                       : constant := 49;
   RTC                        : constant := 50;

end NRF_SVD.Interrupts;
