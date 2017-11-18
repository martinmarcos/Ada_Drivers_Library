--  This spec has been automatically generated from STM32F7x2.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                          : constant := 0;

   --  PVD through EXTI line detection interrupt
   PVD                           : constant := 1;

   --  Tamper and TimeStamp interrupts through the EXTI line
   TAMP_STAMP                    : constant := 2;

   --  RTC Tamper or TimeStamp /CSS on LSE through EXTI line 19 interrupts
   RTC_WKUP                      : constant := 3;

   --  Flash global interrupt
   FLASH                         : constant := 4;

   --  RCC global interrupt
   RCC                           : constant := 5;

   --  EXTI Line0 interrupt
   EXTI0                         : constant := 6;

   --  EXTI Line1 interrupt
   EXTI1                         : constant := 7;

   --  EXTI Line2 interrupt
   EXTI2                         : constant := 8;

   --  EXTI Line3 interrupt
   EXTI3                         : constant := 9;

   --  EXTI Line4 interrupt
   EXTI4                         : constant := 10;

   --  DMA1 Stream0 global interrupt
   DMA1_Stream0                  : constant := 11;

   --  DMA1 Stream1 global interrupt
   DMA1_Stream1                  : constant := 12;

   --  DMA1 Stream2 global interrupt
   DMA1_Stream2                  : constant := 13;

   --  DMA1 Stream3 global interrupt
   DMA1_Stream3                  : constant := 14;

   --  DMA1 Stream4 global interrupt
   DMA1_Stream4                  : constant := 15;

   --  DMA1 Stream5 global interrupt
   DMA1_Stream5                  : constant := 16;

   --  DMA1 Stream6 global interrupt
   DMA1_Stream6                  : constant := 17;

   --  ADC1 global interrupt
   ADC                           : constant := 18;

   --  CAN1 TX interrupts
   CAN1_TX                       : constant := 19;

   --  CAN1 RX0 interrupts
   CAN1_RX0                      : constant := 20;

   --  CAN1 RX1 interrupts
   CAN1_RX1                      : constant := 21;

   --  CAN1 SCE interrupt
   CAN1_SCE                      : constant := 22;

   --  EXTI Line[9:5] interrupts
   EXTI9_5                       : constant := 23;

   --  TIM1 Break interrupt and TIM9 global interrupt
   TIM1_BRK_TIM9                 : constant := 24;

   --  TIM1 Update interrupt and TIM10
   TIM1_UP_TIM10                 : constant := 25;

   --  TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
   TIM1_TRG_COM_TIM11            : constant := 26;

   --  TIM1 Capture Compare interrupt
   TIM1_CC                       : constant := 27;

   --  TIM2 global interrupt
   TIM2                          : constant := 28;

   --  TIM3 global interrupt
   TIM3                          : constant := 29;

   --  TIM4 global interrupt
   TIM4                          : constant := 30;

   --  I2C1 event interrupt
   I2C1_EV                       : constant := 31;

   --  I2C1 error interrupt
   I2C1_ER                       : constant := 32;

   --  I2C2 event interrupt
   I2C2_EV                       : constant := 33;

   --  I2C2 error interrupt
   I2C2_ER                       : constant := 34;

   --  SPI1 global interrupt
   SPI1                          : constant := 35;

   --  SPI2 global interrupt
   SPI2                          : constant := 36;

   --  USART1 global interrupt
   USART1                        : constant := 37;

   --  USART2 global interrupt
   USART2                        : constant := 38;

   --  USART3 global interrupt
   USART3                        : constant := 39;

   --  EXTI Line[15:10] interrupts
   EXTI15_10                     : constant := 40;

   --  RTC alarms through EXTI line 18 interrupts
   RTC_ALARM                     : constant := 41;

   --  USB On-The-Go FS Wakeup through EXTI line interrupt
   OTG_FS_WKUP                   : constant := 42;

   --  TIM8 Break interrupt and TIM12 global interrupt
   TIM8_BRK_TIM12                : constant := 43;

   --  TIM8 Update interrupt and TIM13 global interrupt
   TIM8_UP_TIM13                 : constant := 44;

   --  TIM8 Trigger and Commutation interrupts and TIM14 global interrupt
   TIM8_TRG_COM_TIM14            : constant := 45;

   --  TIM8 Capture Compare interrupt
   TIM8_CC                       : constant := 46;

   --  DMA1 Stream7 global interrupt
   DMA1_Stream7                  : constant := 47;

   --  FMC global interrupt
   FSMC                          : constant := 48;

   --  SDMMC1 global interrupt
   SDMMC1                        : constant := 49;

   --  TIM5 global interrupt
   TIM5                          : constant := 50;

   --  SPI3 global interrupt
   SPI3                          : constant := 51;

   --  UART4 global interrupt
   UART4                         : constant := 52;

   --  UART5 global interrupt
   UART5                         : constant := 53;

   --  TIM6 global interrupt, DAC1 and DAC2 underrun error interrupt
   TIM6_DAC                      : constant := 54;

   --  TIM7 global interrupt
   TIM7                          : constant := 55;

   --  DMA2 Stream0 global interrupt
   DMA2_Stream0                  : constant := 56;

   --  DMA2 Stream1 global interrupt
   DMA2_Stream1                  : constant := 57;

   --  DMA2 Stream2 global interrupt
   DMA2_Stream2                  : constant := 58;

   --  DMA2 Stream3 global interrupt
   DMA2_Stream3                  : constant := 59;

   --  DMA2 Stream4 global interrupt
   DMA2_Stream4                  : constant := 60;

   --  USB On The Go FS global interrupt
   OTG_FS                        : constant := 67;

   --  DMA2 Stream5 global interrupt
   DMA2_Stream5                  : constant := 68;

   --  DMA2 Stream6 global interrupt
   DMA2_Stream6                  : constant := 69;

   --  DMA2 Stream7 global interrupt
   DMA2_Stream7                  : constant := 70;

   --  USART6 global interrupt
   USART6                        : constant := 71;

   --  I2C3 event interrupt
   I2C3_EV                       : constant := 72;

   --  I2C3 error interrupt
   I2C3_ER                       : constant := 73;

   --  USB On The Go HS End Point 1 Out
   OTG_HS_EP1_OUT                : constant := 74;

   --  USB On The Go HS End Point 1 In
   OTG_HS_EP1_IN                 : constant := 75;

   --  USB On The Go HS Wakeup through
   OTG_HS_WKUP                   : constant := 76;

   --  USB On The Go HS global interrupt
   OTG_HS                        : constant := 77;

   --  AES global interrupt
   AES                           : constant := 79;

   --  Rng global interrupt
   RNG                           : constant := 80;

   --  FPU global interrupt
   FPU                           : constant := 81;

   --  UART7 global interrupt
   UART7                         : constant := 82;

   --  UART 8 global interrupt
   UART8                         : constant := 83;

   --  SPI 4 global interrupt
   SPI4                          : constant := 84;

   --  SPI 5 global interrupt
   SPI5                          : constant := 85;

   --  SAI1 global interrupt
   SAI1                          : constant := 87;

   --  SAI2 global interrupt
   SAI2                          : constant := 91;

   --  QuadSPI global interrupt
   QuadSPI                       : constant := 92;

   --  LP Timer1 global interrupt
   LP_Timer1                     : constant := 93;

   --  SDMMC2 global interrupt
   SDMMC2                        : constant := 103;

end STM32_SVD.Interrupts;
