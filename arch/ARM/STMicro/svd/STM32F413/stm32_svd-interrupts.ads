--  This spec has been automatically generated from STM32F413.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  PVD through EXTI line detection interrupt
   PVD                              : constant := 1;

   --  Tamper and TimeStamp interrupts through the EXTI line
   TAMP_STAMP                       : constant := 2;

   --  RTC Wakeup interrupt through the EXTI line
   RTC_WKUP                         : constant := 3;

   --  FLASH global interrupt
   FLASH                            : constant := 4;

   --  RCC global interrupt
   RCC                              : constant := 5;

   --  EXTI Line0 interrupt
   EXTI0                            : constant := 6;

   --  EXTI Line1 interrupt
   EXTI1                            : constant := 7;

   --  EXTI Line2 interrupt
   EXTI2                            : constant := 8;

   --  EXTI Line3 interrupt
   EXTI3                            : constant := 9;

   --  EXTI Line4 interrupt
   EXTI4                            : constant := 10;

   --  DMA1 Stream0 global interrupt
   DMA1_Stream0                     : constant := 11;

   --  DMA1 Stream1 global interrupt
   DMA1_Stream1                     : constant := 12;

   --  DMA1 Stream2 global interrupt
   DMA1_Stream2                     : constant := 13;

   --  DMA1 Stream3 global interrupt
   DMA1_Stream3                     : constant := 14;

   --  DMA1 Stream4 global interrupt
   DMA1_Stream4                     : constant := 15;

   --  DMA1 Stream5 global interrupt
   DMA1_Stream5                     : constant := 16;

   --  DMA1 Stream6 global interrupt
   DMA1_Stream6                     : constant := 17;

   --  ADC1 global interrupt
   ADC                              : constant := 18;

   --  CAN1 TX interrupts
   CAN1_TX                          : constant := 19;

   --  CAN1 RX0 interrupts
   CAN1_RX0                         : constant := 20;

   --  CAN1 RX1 interrupts
   CAN1_RX1                         : constant := 21;

   --  CAN1 SCE interrupt
   CAN1_SCE                         : constant := 22;

   --  EXTI Line[9:5] interrupts
   EXTI9_5                          : constant := 23;

   --  TIM1 Break interrupt and TIM9 global interrupt
   TIM1_BRK_TIM9                    : constant := 24;

   --  TIM1 Update interrupt and TIM10 global interrupt
   TIM1_UP_TIM10                    : constant := 25;

   --  TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
   TIM1_TRG_COM_TIM11               : constant := 26;

   --  TIM1 Capture Compare interrupt
   TIM1_CC                          : constant := 27;

   --  TIM2 global interrupt
   TIM2                             : constant := 28;

   --  TIM3 global interrupt
   TIM3                             : constant := 29;

   --  TIM4 global interrupt
   TIM4                             : constant := 30;

   --  I2C1 event interrupt
   I2C1_EVT                         : constant := 31;

   --  I2C1 error interrupt
   I2C1_ERR                         : constant := 32;

   --  I2C2 event interrupt
   I2C2_EVT                         : constant := 33;

   --  I2C2 error interrupt
   I2C2_ERR                         : constant := 34;

   --  SPI1 global interrupt
   SPI1                             : constant := 35;

   --  SPI2 global interrupt
   SPI2                             : constant := 36;

   --  USART1 global interrupt
   USART1                           : constant := 37;

   --  USART2 global interrupt
   USART2                           : constant := 38;

   --  USART3 global interrupt
   USART3                           : constant := 39;

   --  EXTI Line[15:10] interrupts
   EXTI15_10                        : constant := 40;

   --  RTC Alarms (A and B) through EXTI line interrupt
   EXTI17_RTC_Alarm                 : constant := 41;

   --  Timer 12 global interrupt
   TIM8_BRK_TIM12                   : constant := 43;

   --  Timer 13 global interrupt
   TIM8_UP_TIM13                    : constant := 44;

   --  Timer 14 global interrupt
   TIM8_TRG_COM_TIM14               : constant := 45;

   --  TIM8 Cap/Com interrupt
   TIM8_CC                          : constant := 46;

   --  DMA1 global interrupt Channel 7
   DMA1_Stream7                     : constant := 47;

   --  FSMC global interrupt
   FSMC                             : constant := 48;

   --  SDIO global interrupt
   SDIO                             : constant := 49;

   --  TIM5 global interrupt
   TIM5                             : constant := 50;

   --  SPI3 global interrupt
   SPI3                             : constant := 51;

   --  UART 4 global interrupt
   USART4                           : constant := 52;

   --  UART 5global interrupt
   UART5                            : constant := 53;

   --  TIM6 global and DAC12 underrun interrupts
   TIM6_GLB_IT_DAC1_DAC2            : constant := 54;

   --  TIM7 global interrupt
   TIM7                             : constant := 55;

   --  DMA2 Stream0 global interrupt
   DMA2_Stream0                     : constant := 56;

   --  DMA2 Stream1 global interrupt
   DMA2_Stream1                     : constant := 57;

   --  DMA2 Stream2 global interrupt
   DMA2_Stream2                     : constant := 58;

   --  DMA2 Stream3 global interrupt
   DMA2_Stream3                     : constant := 59;

   --  DMA2 Stream4 global interrupt
   DMA2_Stream4                     : constant := 60;

   --  SD filter0 global interrupt
   DFSDM1_FLT0                      : constant := 61;

   --  SD filter1 global interrupt
   DFSDM1_FLT1                      : constant := 62;

   --  CAN2 TX interrupt
   CAN2_TX                          : constant := 63;

   --  BXCAN2 RX0 interrupt
   CAN2_RX0                         : constant := 64;

   --  BXCAN2 RX1 interrupt
   CAN2_RX1                         : constant := 65;

   --  CAN2 SCE interrupt
   CAN2_SCE                         : constant := 66;

   --  DMA2 Stream5 global interrupt
   DMA2_Stream5                     : constant := 68;

   --  DMA2 Stream6 global interrupt
   DMA2_Stream6                     : constant := 69;

   --  DMA2 Stream7 global interrupt
   DMA2_Stream7                     : constant := 70;

   --  USART6 global interrupt
   USART6                           : constant := 71;

   --  I2C3 event interrupt
   I2C3_EV                          : constant := 72;

   --  I2C3 error interrupt
   I2C3_ER                          : constant := 73;

   --  CAN 3 TX interrupt
   CAN3_TX                          : constant := 74;

   --  BxCAN 3 RX0 interrupt
   CAN3_RX0                         : constant := 75;

   --  BxCAN 3 RX1 interrupt
   CAN3_RX1                         : constant := 76;

   --  CAN 3 SCE interrupt
   CAN3_SCE                         : constant := 77;

   --  AES global interrupt
   CRYPTO                           : constant := 79;

   --  Rng global interrupt
   RNG                              : constant := 80;

   --  FPU global interrupt
   FPU                              : constant := 81;

   --  USART7 global interrupt
   USART7                           : constant := 82;

   --  USART8 global interrupt
   USART8                           : constant := 83;

   --  SPI4 global interrupt
   SPI4                             : constant := 84;

   --  SPI5 global interrupt
   SPI5                             : constant := 85;

   --  SAI1 global interrupt
   SAI1                             : constant := 87;

   --  UART9 global interrupt
   UART9                            : constant := 88;

   --  UART10 global interrupt
   UART10                           : constant := 89;

   --  Quad-SPI global interrupt
   QuadSPI                          : constant := 92;

   --  I2CFMP1 event interrupt
   I2CFMP1event                     : constant := 95;

   --  I2CFMP1 error interrupt
   I2CFMP1error                     : constant := 96;

   --  LP Timer global interrupt or EXT1 interrupt line 23
   lptim1_OR_it_eit_23              : constant := 97;

   --  DFSDM2 SD filter 1 global interrupt
   DFSDM2_FILTER1                   : constant := 98;

   --  DFSDM2 SD filter 2 global interrupt
   DFSDM2_FILTER2                   : constant := 99;

   --  DFSDM2 SD filter 3 global interrupt
   DFSDM2_FILTER3                   : constant := 100;

   --  DFSDM2 SD filter 4 global interrupt
   DFSDM2_FILTER4                   : constant := 101;

end STM32_SVD.Interrupts;
