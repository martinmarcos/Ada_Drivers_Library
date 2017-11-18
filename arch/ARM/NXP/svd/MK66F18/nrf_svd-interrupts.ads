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

--  This spec has been automatically generated from MK66F18.xml

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   DMA0_DMA16                          : constant := 0;
   DMA1_DMA17                          : constant := 1;
   DMA2_DMA18                          : constant := 2;
   DMA3_DMA19                          : constant := 3;
   DMA4_DMA20                          : constant := 4;
   DMA5_DMA21                          : constant := 5;
   DMA6_DMA22                          : constant := 6;
   DMA7_DMA23                          : constant := 7;
   DMA8_DMA24                          : constant := 8;
   DMA9_DMA25                          : constant := 9;
   DMA10_DMA26                         : constant := 10;
   DMA11_DMA27                         : constant := 11;
   DMA12_DMA28                         : constant := 12;
   DMA13_DMA29                         : constant := 13;
   DMA14_DMA30                         : constant := 14;
   DMA15_DMA31                         : constant := 15;
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
   ENET_1588_Timer                     : constant := 82;
   ENET_Transmit                       : constant := 83;
   ENET_Receive                        : constant := 84;
   ENET_Error                          : constant := 85;
   LPUART0                             : constant := 86;
   TSI0                                : constant := 87;
   TPM1                                : constant := 88;
   TPM2                                : constant := 89;
   USBHSDCD                            : constant := 90;
   I2C3                                : constant := 91;
   CMP3                                : constant := 92;
   USBHS                               : constant := 93;
   CAN1_ORed_Message_buffer            : constant := 94;
   CAN1_Bus_Off                        : constant := 95;
   CAN1_Error                          : constant := 96;
   CAN1_Tx_Warning                     : constant := 97;
   CAN1_Rx_Warning                     : constant := 98;
   CAN1_Wake_Up                        : constant := 99;

end NRF_SVD.Interrupts;
