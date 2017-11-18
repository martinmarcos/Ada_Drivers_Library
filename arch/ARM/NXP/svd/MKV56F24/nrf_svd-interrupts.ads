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

--  This spec has been automatically generated from MKV56F24.xml

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
   PMC                                 : constant := 20;
   LLWU                                : constant := 21;
   WDOG_EWM                            : constant := 22;
   TRNG0                               : constant := 23;
   I2C0                                : constant := 24;
   I2C1                                : constant := 25;
   SPI0                                : constant := 26;
   SPI1                                : constant := 27;
   UART5_RX_TX                         : constant := 28;
   UART5_ERR                           : constant := 29;
   UART0_RX_TX                         : constant := 31;
   UART0_ERR                           : constant := 32;
   UART1_RX_TX                         : constant := 33;
   UART1_ERR                           : constant := 34;
   UART2_RX_TX                         : constant := 35;
   UART2_ERR                           : constant := 36;
   ADC0                                : constant := 37;
   HSADC_ERR                           : constant := 38;
   HSADC0_CCA                          : constant := 39;
   CMP0                                : constant := 40;
   CMP1                                : constant := 41;
   FTM0                                : constant := 42;
   FTM1                                : constant := 43;
   UART3_RX_TX                         : constant := 44;
   UART3_ERR                           : constant := 45;
   UART4_RX_TX                         : constant := 46;
   UART4_ERR                           : constant := 47;
   PIT0                                : constant := 48;
   PIT1                                : constant := 49;
   PIT2                                : constant := 50;
   PIT3                                : constant := 51;
   PDB0                                : constant := 52;
   FTM2                                : constant := 53;
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
   SPI2                                : constant := 65;
   ENC_COMPARE                         : constant := 66;
   ENC_HOME                            : constant := 67;
   ENC_WDOG_SAB                        : constant := 68;
   ENC_INDEX                           : constant := 69;
   CMP2                                : constant := 70;
   FTM3                                : constant := 71;
   HSADC0_CCB                          : constant := 73;
   HSADC1_CCA                          : constant := 74;
   CAN0_ORed_Message_buffer            : constant := 75;
   CAN0_Bus_Off                        : constant := 76;
   CAN0_Error                          : constant := 77;
   CAN0_Tx_Warning                     : constant := 78;
   CAN0_Rx_Warning                     : constant := 79;
   CAN0_Wake_Up                        : constant := 80;
   PWM0_CMP0                           : constant := 81;
   PWM0_RELOAD0                        : constant := 82;
   PWM0_CMP1                           : constant := 83;
   PWM0_RELOAD1                        : constant := 84;
   PWM0_CMP2                           : constant := 85;
   PWM0_RELOAD2                        : constant := 86;
   PWM0_CMP3                           : constant := 87;
   PWM0_RELOAD3                        : constant := 88;
   PWM0_CAP                            : constant := 89;
   PWM0_RERR                           : constant := 90;
   PWM0_FAULT                          : constant := 91;
   CMP3                                : constant := 92;
   HSADC1_CCB                          : constant := 93;
   CAN1_ORed_Message_buffer            : constant := 94;
   CAN1_Bus_Off                        : constant := 95;
   CAN1_Error                          : constant := 96;
   CAN1_Tx_Warning                     : constant := 97;
   CAN1_Rx_Warning                     : constant := 98;
   CAN1_Wake_Up                        : constant := 99;
   PWM1_CMP0                           : constant := 104;
   PWM1_RELOAD0                        : constant := 105;
   PWM1_CMP1                           : constant := 106;
   PWM1_RELOAD1                        : constant := 107;
   PWM1_CMP2                           : constant := 108;
   PWM1_RELOAD2                        : constant := 109;
   PWM1_CMP3                           : constant := 110;
   PWM1_RELOAD3                        : constant := 111;
   PWM1_CAP                            : constant := 112;
   PWM1_RERR                           : constant := 113;
   PWM1_FAULT                          : constant := 114;

end NRF_SVD.Interrupts;
