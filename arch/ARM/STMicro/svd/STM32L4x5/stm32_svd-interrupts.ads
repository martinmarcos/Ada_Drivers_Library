--  This spec has been automatically generated from STM32L4x5.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                          : constant := 0;

   --  PVD through EXTI line detection
   PVD                           : constant := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP                    : constant := 2;

   --  RTC Tamper or TimeStamp /CSS on LSE through EXTI line 19 interrupts
   RTC_WKUP                      : constant := 3;

   --  RCC global interrupt
   RCC                           : constant := 5;

   --  EXTI Line 0 interrupt
   EXTI0                         : constant := 6;

   --  EXTI Line 1 interrupt
   EXTI1                         : constant := 7;

   --  EXTI Line 2 interrupt
   EXTI2                         : constant := 8;

   --  EXTI Line 3 interrupt
   EXTI3                         : constant := 9;

   --  EXTI Line4 interrupt
   EXTI4                         : constant := 10;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1                 : constant := 11;

   --  DMA1 Channel2 global interrupt
   DMA1_Channel2                 : constant := 12;

   --  DMA1 Channel3 interrupt
   DMA1_Channel3                 : constant := 13;

   --  DMA1 Channel4 interrupt
   DMA1_Channel4                 : constant := 14;

   --  DMA1 Channel5 interrupt
   DMA1_Channel5                 : constant := 15;

   --  DMA1 Channel6 interrupt
   DMA1_Channel6                 : constant := 16;

   --  DMA1 Channel 7 interrupt
   DMA1_Channel7                 : constant := 17;

   --  ADC1 and ADC2 global interrupt
   ADC1_2                        : constant := 18;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5                       : constant := 23;

   --  Timer 15 global interrupt
   TIM15                         : constant := 24;

   --  Timer 16 global interrupt
   TIM16                         : constant := 25;

   --  TIM1 Trigger and Commutation interrupts and TIM17 global interrupt
   TIM1_TRG_COM_TIM17            : constant := 26;

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

   --  EXTI Lines 10 to 15 interrupts
   EXTI15_10                     : constant := 40;

   --  RTC alarms through EXTI line 18 interrupts
   RTC_ALARM                     : constant := 41;

   --  SD Filter 3 global Interrupt
   DFSDM3                        : constant := 42;

   --  TIM8 Break Interrupt
   TIM8_BRK                      : constant := 43;

   --  TIM8 Update Interrupt
   TIM8                          : constant := 44;

   --  TIM8 Trigger and Commutation Interrupt
   TIM8_TRG_COM                  : constant := 45;

   --  TIM8 Capture Compare Interrupt
   TIM8_CC                       : constant := 46;

   --  ADC3 global Interrupt
   ADC3                          : constant := 47;

   --  FMC global Interrupt
   FMC                           : constant := 48;

   --  SDMMC global Interrupt
   SDMMC                         : constant := 49;

   --  TIM5 global Interrupt
   TIM5                          : constant := 50;

   --  SPI3 global Interrupt
   SPI3                          : constant := 51;

   --  UART4 global Interrupt
   UART4                         : constant := 52;

   --  UART5 global Interrupt
   UART5                         : constant := 53;

   --  TIM6 global and DAC1 and 2 underrun error interrupts
   TIM6_DAC                      : constant := 54;

   --  TIM7 global interrupt
   TIM7                          : constant := 55;

   --  DMA2 Channel 1 global Interrupt
   DMA2_Channel1                 : constant := 56;

   --  DMA2 Channel 2 global Interrupt
   DMA2_Channel2                 : constant := 57;

   --  DMA2 Channel 3 global Interrupt
   DMA2_Channel3                 : constant := 58;

   --  DMA2 Channel 4 global Interrupt
   DMA2_Channel4                 : constant := 59;

   --  DMA2 Channel 5 global Interrupt
   DMA2_Channel5                 : constant := 60;

   --  SD Filter 0 global Interrupt
   DFSDM0                        : constant := 61;

   --  SD Filter 1 global Interrupt
   DFSDM1                        : constant := 62;

   --  SD Filter 2 global Interrupt
   DFSDM2                        : constant := 63;

   --  COMP1 and COMP2 interrupts
   COMP                          : constant := 64;

   --  LP TIM1 interrupt
   LPTIM1                        : constant := 65;

   --  LP TIM2 interrupt
   LPTIM2                        : constant := 66;

   --  DMA2 Channel 6 global Interrupt
   DMA2_Channel6                 : constant := 68;

   --  DMA2 Channel 7 global Interrupt
   DMA2_Channel7                 : constant := 69;

   --  Quad SPI global interrupt
   QUADSPI                       : constant := 71;

   --  I2C3 event interrupt
   I2C3_EV                       : constant := 72;

   --  I2C3 error interrupt
   I2C3_ER                       : constant := 73;

   --  SAI1 global interrupt
   SAI1                          : constant := 74;

   --  SAI2 global interrupt
   SAI2                          : constant := 75;

   --  SWPMI1 global interrupt
   SWPMI1                        : constant := 76;

   --  TSC global interrupt
   TSC                           : constant := 77;

   --  LCD global interrupt
   LCD                           : constant := 78;

   --  RNG global interrupt
   RNG                           : constant := 79;

   --  Floating point interrupt
   FPU                           : constant := 81;

end STM32_SVD.Interrupts;
