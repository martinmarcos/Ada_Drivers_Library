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

--  This spec has been automatically generated from MK24F12.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   DMA0                                : constant := 0;
   DMA1                                : constant := 1;
   DMA2                                : constant := 2;
   DMA3                                : constant := 3;
   DMA4                                : constant := 4;
   DMA5                                : constant := 5;
   DMA6                                : constant := 6;
   DMA7                                : constant := 7;
   DMA8                                : constant := 8;
   DMA9                                : constant := 9;
   DMA10                               : constant := 10;
   DMA11                               : constant := 11;
   DMA12                               : constant := 12;
   DMA13                               : constant := 13;
   DMA14                               : constant := 14;
   DMA15                               : constant := 15;
   DMA_Error                           : constant := 16;
   MCM                                 : constant := 17;
   FTFE                                : constant := 18;
   Read_Collision                      : constant := 19;
   LVD_LVW                             : constant := 20;
   LLWU                                : constant := 21;
   WDOG_EWM                            : constant := 22;
   RNG                                 : constant := 23;
   I2C0                                : constant := 24;
   I2C1                                : constant := 25;
   SPI0                                : constant := 26;
   SPI1                                : constant := 27;
   I2S0_Tx                             : constant := 28;
   I2S0_Rx                             : constant := 29;
   UART0_LON                           : constant := 30;
   UART0_RX_TX                         : constant := 31;
   UART0_ERR                           : constant := 32;
   UART1_RX_TX                         : constant := 33;
   UART1_ERR                           : constant := 34;
   UART2_RX_TX                         : constant := 35;
   UART2_ERR                           : constant := 36;
   UART3_RX_TX                         : constant := 37;
   UART3_ERR                           : constant := 38;
   ADC0                                : constant := 39;
   CMP0                                : constant := 40;
   CMP1                                : constant := 41;
   FTM0                                : constant := 42;
   FTM1                                : constant := 43;
   FTM2                                : constant := 44;
   CMT                                 : constant := 45;
   RTC                                 : constant := 46;
   RTC_Seconds                         : constant := 47;
   PIT0                                : constant := 48;
   PIT1                                : constant := 49;
   PIT2                                : constant := 50;
   PIT3                                : constant := 51;
   PDB0                                : constant := 52;
   USB0                                : constant := 53;
   USBDCD                              : constant := 54;
   DAC0                                : constant := 56;
   LPTMR0                              : constant := 58;
   PORTA                               : constant := 59;
   PORTB                               : constant := 60;
   PORTC                               : constant := 61;
   PORTD                               : constant := 62;
   PORTE                               : constant := 63;
   SPI2                                : constant := 65;
   UART4_RX_TX                         : constant := 66;
   UART4_ERR                           : constant := 67;
   UART5_RX_TX                         : constant := 68;
   UART5_ERR                           : constant := 69;
   CMP2                                : constant := 70;
   FTM3                                : constant := 71;
   DAC1                                : constant := 72;
   ADC1                                : constant := 73;
   I2C2                                : constant := 74;
   CAN0_ORed_Message_buffer            : constant := 75;
   CAN0_Bus_Off                        : constant := 76;
   CAN0_Error                          : constant := 77;
   CAN0_Tx_Warning                     : constant := 78;
   CAN0_Rx_Warning                     : constant := 79;
   CAN0_Wake_Up                        : constant := 80;
   SDHC                                : constant := 81;

end NRF_SVD.Interrupts;
