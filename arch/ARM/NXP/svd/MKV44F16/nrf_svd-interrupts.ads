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

--  This spec has been automatically generated from MKV44F16.xml

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
   FTFA                                : constant := 18;
   FTFA_Collision                      : constant := 19;
   PMC                                 : constant := 20;
   LLWU                                : constant := 21;
   WDOG_EWM                            : constant := 22;
   I2C0                                : constant := 24;
   SPI0                                : constant := 26;
   UART0_RX_TX                         : constant := 31;
   UART0_ERR                           : constant := 32;
   UART1_RX_TX                         : constant := 33;
   UART1_ERR                           : constant := 34;
   ADC_ERR                             : constant := 38;
   ADCA                                : constant := 39;
   CMP0                                : constant := 40;
   CMP1                                : constant := 41;
   PIT0                                : constant := 48;
   PIT1                                : constant := 49;
   PIT2                                : constant := 50;
   PIT3                                : constant := 51;
   PDB0                                : constant := 52;
   XBARA                               : constant := 54;
   PDB1                                : constant := 55;
   DAC0                                : constant := 56;
   MCG                                 : constant := 57;
   LPTMR0                              : constant := 58;
   PORTA                               : constant := 59;
   PORTB                               : constant := 60;
   PORTC                               : constant := 61;
   PORTD                               : constant := 62;
   PORTE                               : constant := 63;
   ENC0_COMPARE                        : constant := 66;
   ENC0_HOME                           : constant := 67;
   ENC0_WDOG_SAB                       : constant := 68;
   ENC0_INDEX                          : constant := 69;
   CMP2                                : constant := 70;
   ADCB                                : constant := 73;
   CAN0_ORed_Message_buffer            : constant := 75;
   CAN0_Bus_Off                        : constant := 76;
   CAN0_Error                          : constant := 77;
   CAN0_Tx_Warning                     : constant := 78;
   CAN0_Rx_Warning                     : constant := 79;
   CAN0_Wake_Up                        : constant := 80;
   PWMA_CMP0                           : constant := 81;
   PWMA_RELOAD0                        : constant := 82;
   PWMA_CMP1                           : constant := 83;
   PWMA_RELOAD1                        : constant := 84;
   PWMA_CMP2                           : constant := 85;
   PWMA_RELOAD2                        : constant := 86;
   PWMA_CMP3                           : constant := 87;
   PWMA_RELOAD3                        : constant := 88;
   PWMA_CAP                            : constant := 89;
   PWMA_RERR                           : constant := 90;
   PWMA_FAULT                          : constant := 91;
   CMP3                                : constant := 92;
   CAN1_ORed_Message_buffer            : constant := 94;
   CAN1_Bus_Off                        : constant := 95;
   CAN1_Error                          : constant := 96;
   CAN1_Tx_Warning                     : constant := 97;
   CAN1_Rx_Warning                     : constant := 98;
   CAN1_Wake_Up                        : constant := 99;

end NRF_SVD.Interrupts;
