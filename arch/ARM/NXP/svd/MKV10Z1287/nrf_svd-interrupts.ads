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

--  This spec has been automatically generated from MKV10Z1287.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   DMA0_DMA4                          : constant := 0;
   DMA1_DMA5                          : constant := 1;
   DMA2_DMA6                          : constant := 2;
   DMA3_DMA7                          : constant := 3;
   DMA_Error                          : constant := 4;
   FTFA                               : constant := 5;
   LVD_LVW                            : constant := 6;
   LLWU                               : constant := 7;
   I2C0                               : constant := 8;
   SPI0                               : constant := 10;
   UART0                              : constant := 12;
   UART1                              : constant := 13;
   ADC0                               : constant := 15;
   ADC1                               : constant := 16;
   FTM0                               : constant := 17;
   FTM1                               : constant := 18;
   FTM2                               : constant := 19;
   CMP0                               : constant := 20;
   CMP1                               : constant := 21;
   FTM3                               : constant := 22;
   WDOG_EWM                           : constant := 23;
   FTM4                               : constant := 24;
   DAC0                               : constant := 25;
   FTM5                               : constant := 26;
   MCG                                : constant := 27;
   LPTMR0                             : constant := 28;
   PDB0_PDB1                          : constant := 29;
   PORTA                              : constant := 30;
   PORTB_PORTC_PORTD_PORTE            : constant := 31;

end NRF_SVD.Interrupts;
