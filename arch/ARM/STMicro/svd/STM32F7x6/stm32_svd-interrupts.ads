--  This spec has been automatically generated from STM32F7x6.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                          : constant := 0;

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

   --  TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
   TIM1_TRG_COM_TIM11            : constant := 26;

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
   FMC                           : constant := 48;

   --  SDMMC1 global interrupt
   SDMMC1                        : constant := 49;

   --  TIM5 global interrupt
   TIM5                          : constant := 50;

   --  SPI3 global interrupt
   SPI3                          : constant := 51;

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

   --  Ethernet global interrupt
   ETH                           : constant := 61;

   --  Ethernet Wakeup through EXTI line interrupt
   ETH_WKUP                      : constant := 62;

   --  CAN2 TX interrupts
   CAN2_TX                       : constant := 63;

   --  CAN2 RX0 interrupts
   CAN2_RX0                      : constant := 64;

   --  CAN2 RX1 interrupts
   CAN2_RX1                      : constant := 65;

   --  CAN2 SCE interrupt
   CAN2_SCE                      : constant := 66;

   --  USB On The Go FS global interrupt
   OTG_FS                        : constant := 67;

   --  DMA2 Stream5 global interrupt
   DMA2_Stream5                  : constant := 68;

   --  DMA2 Stream6 global interrupt
   DMA2_Stream6                  : constant := 69;

   --  DMA2 Stream7 global interrupt
   DMA2_Stream7                  : constant := 70;

   --  USB On The Go HS End Point 1 Out global interrupt
   OTG_HS_EP1_OUT                : constant := 74;

   --  USB On The Go HS End Point 1 In global interrupt
   OTG_HS_EP1_IN                 : constant := 75;

   --  USB On The Go HS Wakeup through EXTI interrupt
   OTG_HS_WKUP                   : constant := 76;

   --  USB On The Go HS global interrupt
   OTG_HS                        : constant := 77;

   --  DCMI global interrupt
   DCMI                          : constant := 78;

   --  Hash and Rng global interrupt
   HASH_RNG                      : constant := 80;

   --  Floating point unit interrupt
   FPU                           : constant := 81;

   --  UART 8 global interrupt
   UART8                         : constant := 83;

   --  SPI 4 global interrupt
   SPI4                          : constant := 84;

   --  SPI 5 global interrupt
   SPI5                          : constant := 85;

   --  SPI 6 global interrupt
   SPI6                          : constant := 86;

   --  SAI1 global interrupt
   SAI1                          : constant := 87;

   --  LTDC global interrupt
   LCD_TFT                       : constant := 88;

   --  LTDC Error global interrupt
   LTDC_ER                       : constant := 89;

   --  DMA2D global interrupt
   DMA2D                         : constant := 90;

end STM32_SVD.Interrupts;
