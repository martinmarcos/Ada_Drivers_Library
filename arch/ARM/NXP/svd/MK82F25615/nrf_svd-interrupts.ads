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

--  This spec has been automatically generated from MK82F25615.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   DMA0_DMA16                : constant := 0;
   DMA1_DMA17                : constant := 1;
   DMA2_DMA18                : constant := 2;
   DMA3_DMA19                : constant := 3;
   DMA4_DMA20                : constant := 4;
   DMA5_DMA21                : constant := 5;
   DMA6_DMA22                : constant := 6;
   DMA7_DMA23                : constant := 7;
   DMA8_DMA24                : constant := 8;
   DMA9_DMA25                : constant := 9;
   DMA10_DMA26               : constant := 10;
   DMA11_DMA27               : constant := 11;
   DMA12_DMA28               : constant := 12;
   DMA13_DMA29               : constant := 13;
   DMA14_DMA30               : constant := 14;
   DMA15_DMA31               : constant := 15;
   DMA_Error                 : constant := 16;
   MCM                       : constant := 17;
   FTFA                      : constant := 18;
   Read_Collision            : constant := 19;
   LVD_LVW                   : constant := 20;
   LLWU                      : constant := 21;
   WDOG_EWM                  : constant := 22;
   TRNG0                     : constant := 23;
   I2C0                      : constant := 24;
   I2C1                      : constant := 25;
   SPI0                      : constant := 26;
   SPI1                      : constant := 27;
   I2S0_Tx                   : constant := 28;
   I2S0_Rx                   : constant := 29;
   LPUART0                   : constant := 30;
   LPUART1                   : constant := 31;
   LPUART2                   : constant := 32;
   LPUART3                   : constant := 33;
   LPUART4                   : constant := 34;
   EMVSIM0                   : constant := 37;
   EMVSIM1                   : constant := 38;
   ADC0                      : constant := 39;
   CMP0                      : constant := 40;
   CMP1                      : constant := 41;
   FTM0                      : constant := 42;
   FTM1                      : constant := 43;
   FTM2                      : constant := 44;
   CMT                       : constant := 45;
   RTC                       : constant := 46;
   RTC_Seconds               : constant := 47;
   PIT0CH0                   : constant := 48;
   PIT0CH1                   : constant := 49;
   PIT0CH2                   : constant := 50;
   PIT0CH3                   : constant := 51;
   PDB0                      : constant := 52;
   USB0                      : constant := 53;
   USBDCD                    : constant := 54;
   DAC0                      : constant := 56;
   MCG                       : constant := 57;
   LPTMR0_LPTMR1             : constant := 58;
   PORTA                     : constant := 59;
   PORTB                     : constant := 60;
   PORTC                     : constant := 61;
   PORTD                     : constant := 62;
   PORTE                     : constant := 63;
   SPI2                      : constant := 65;
   FLEXIO0                   : constant := 70;
   FTM3                      : constant := 71;
   I2C2                      : constant := 74;
   SDHC                      : constant := 81;
   TSI0                      : constant := 87;
   TPM1                      : constant := 88;
   TPM2                      : constant := 89;
   I2C3                      : constant := 91;
   QuadSPI0                  : constant := 100;
   LTC0                      : constant := 104;

end NRF_SVD.Interrupts;
