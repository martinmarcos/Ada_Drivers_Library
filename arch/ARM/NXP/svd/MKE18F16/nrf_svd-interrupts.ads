--  This spec has been automatically generated from MKE18F16.xml

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
   Doublebit_Fault                     : constant := 21;
   WDOG_EWM                            : constant := 22;
   LPI2C0                              : constant := 24;
   LPI2C1                              : constant := 25;
   LPSPI0                              : constant := 26;
   LPSPI1                              : constant := 27;
   PWT                                 : constant := 29;
   LPUART0_TX                          : constant := 31;
   LPUART0_RX                          : constant := 32;
   LPUART1_TX                          : constant := 33;
   LPUART1_RX                          : constant := 34;
   LPUART2_TX                          : constant := 35;
   LPUART2_RX                          : constant := 36;
   ADC0                                : constant := 39;
   CMP0                                : constant := 40;
   CMP1                                : constant := 41;
   FTM0                                : constant := 42;
   FTM1                                : constant := 43;
   FTM2                                : constant := 44;
   RTC                                 : constant := 46;
   RTC_Seconds                         : constant := 47;
   LPIT0_Ch0                           : constant := 48;
   LPIT0_Ch1                           : constant := 49;
   LPIT0_Ch2                           : constant := 50;
   LPIT0_Ch3                           : constant := 51;
   PDB0                                : constant := 52;
   DAC0                                : constant := 56;
   SCG_RCM                             : constant := 57;
   LPTMR0                              : constant := 58;
   PORTA                               : constant := 59;
   PORTB                               : constant := 60;
   PORTC                               : constant := 61;
   PORTD                               : constant := 62;
   PORTE                               : constant := 63;
   SWI                                 : constant := 64;
   PDB1                                : constant := 68;
   FLEXIO                              : constant := 69;
   CMP2                                : constant := 70;
   FTM3                                : constant := 71;
   ADC1                                : constant := 73;
   ADC2                                : constant := 74;
   PDB2                                : constant := 77;
   CAN0_ORed                           : constant := 78;
   CAN0_Error                          : constant := 79;
   CAN0_Wake_Up                        : constant := 80;
   CAN0_ORed_Message_buffer            : constant := 81;
   CAN0_Reserved1                      : constant := 82;
   CAN0_Reserved2                      : constant := 83;
   CAN0_Reserved3                      : constant := 84;
   CAN1_ORed                           : constant := 85;
   CAN1_Error                          : constant := 86;
   CAN1_Wake_Up                        : constant := 87;
   CAN1_ORed_Message_buffer            : constant := 88;
   CAN1_Reserved1                      : constant := 89;
   CAN1_Reserved2                      : constant := 90;
   CAN1_Reserved3                      : constant := 91;

end NRF_SVD.Interrupts;
