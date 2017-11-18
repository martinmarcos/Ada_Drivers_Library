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

--  This spec has been automatically generated from MKL82Z7.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   DMA0_DMA4              : constant := 0;
   DMA1_DMA5              : constant := 1;
   DMA2_DMA6              : constant := 2;
   DMA3_DMA7              : constant := 3;
   DMA_Error              : constant := 4;
   FLEXIO0                : constant := 5;
   TPM0                   : constant := 6;
   TPM1                   : constant := 7;
   TPM2                   : constant := 8;
   PIT0                   : constant := 9;
   SPI0                   : constant := 10;
   EMVSIM0                : constant := 11;
   LPUART0                : constant := 12;
   LPUART1                : constant := 13;
   I2C0                   : constant := 14;
   QSPI0                  : constant := 15;
   PORTA                  : constant := 17;
   PORTB                  : constant := 18;
   PORTC                  : constant := 19;
   PORTD                  : constant := 20;
   PORTE                  : constant := 21;
   LLWU                   : constant := 22;
   LTC0                   : constant := 23;
   USB0                   : constant := 24;
   ADC0                   : constant := 25;
   LPTMR0                 : constant := 26;
   RTC_Seconds            : constant := 27;
   INTMUX0_0              : constant := 28;
   INTMUX0_1              : constant := 29;
   INTMUX0_2              : constant := 30;
   INTMUX0_3              : constant := 31;
   LPTMR1                 : constant := 32;
   SPI1                   : constant := 36;
   LPUART2                : constant := 37;
   EMVSIM1                : constant := 38;
   I2C1                   : constant := 39;
   TSI0                   : constant := 40;
   PMC                    : constant := 41;
   FTFA                   : constant := 42;
   MCG                    : constant := 43;
   WDOG_EWM               : constant := 44;
   DAC0                   : constant := 45;
   TRNG0                  : constant := 46;
   CMP0                   : constant := 48;
   RTC_Alarm              : constant := 50;
   DMA4                   : constant := 56;
   DMA5                   : constant := 57;
   DMA6                   : constant := 58;
   DMA7                   : constant := 59;

end NRF_SVD.Interrupts;
