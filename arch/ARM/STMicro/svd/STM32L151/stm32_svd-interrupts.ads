--  This spec has been automatically generated from STM32L151.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                     : constant := 0;

   --  PVD through EXTI Line detection interrupt
   PVD                      : constant := 1;

   --  Tamper and TimeStamp through EXTI line interrupts
   TAMPER_STAMP             : constant := 2;

   --  RTC Wakeup through EXTI line interrupt
   RTC_WKUP                 : constant := 3;

   --  Flash global interrupt
   FLASH                    : constant := 4;

   --  RCC global interrupt
   RCC                      : constant := 5;

   --  EXTI Line0 interrupt
   EXTI0                    : constant := 6;

   --  EXTI Line1 interrupt
   EXTI1                    : constant := 7;

   --  EXTI Line2 interrupt
   EXTI2                    : constant := 8;

   --  EXTI Line3 interrupt
   EXTI3                    : constant := 9;

   --  EXTI Line4 interrupt
   EXTI4                    : constant := 10;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1            : constant := 11;

   --  DMA1 Channel2 global interrupt
   DMA1_Channel2            : constant := 12;

   --  DMA1 Channel3 global interrupt
   DMA1_Channel3            : constant := 13;

   --  DMA1 Channel4 global interrupt
   DMA1_Channel4            : constant := 14;

   --  DMA1 Channel5 global interrupt
   DMA1_Channel5            : constant := 15;

   --  DMA1 Channel6 global interrupt
   DMA1_Channel6            : constant := 16;

   --  DMA1 Channel7 global interrupt
   DMA1_Channel7            : constant := 17;

   --  ADC1 global interrupt
   ADC1                     : constant := 18;

   --  USB High priority interrupt
   USB_HP                   : constant := 19;

   --  USB Low priority interrupt
   USB_LP                   : constant := 20;

   --  DAC interrupt
   DAC                      : constant := 21;

   --  Comparator wakeup through EXTI line (21 and 22) interrupt/Channel
   --  acquisition interrupt
   COMP_CA                  : constant := 22;

   --  EXTI Line[9:5] interrupts
   EXTI9_5                  : constant := 23;

   --  LCD global interrupt
   LCD                      : constant := 24;

   --  TIM9 global interrupt
   TIM9                     : constant := 25;

   --  TIM10 global interrupt
   TIM10                    : constant := 26;

   --  TIM11 global interrupt
   TIM11                    : constant := 27;

   --  TIM2 global interrupt
   TIM2                     : constant := 28;

   --  TIM3 global interrupt
   TIM3                     : constant := 29;

   --  TIM4 global interrupt
   TIM4                     : constant := 30;

   --  I2C1 event interrupt
   I2C1_EV                  : constant := 31;

   --  I2C1 error interrupt
   I2C1_ER                  : constant := 32;

   --  I2C2 event interrupt
   I2C2_EV                  : constant := 33;

   --  I2C2 error interrupt
   I2C2_ER                  : constant := 34;

   --  SPI1 global interrupt
   SPI1                     : constant := 35;

   --  SPI2 global interrupt
   SPI2                     : constant := 36;

   --  USART1 global interrupt
   USART1                   : constant := 37;

   --  USART2 global interrupt
   USART2                   : constant := 38;

   --  USART3 global interrupt
   USART3                   : constant := 39;

   --  EXTI Line[15:10] interrupts
   EXTI15_10                : constant := 40;

   --  RTC Alarms (A and B) through EXTI line interrupt
   RTC_Alarm                : constant := 41;

   --  USB Device FS Wakeup through EXTI line interrupt
   USB_FS_WKUP              : constant := 42;

   --  TIM6 global interrupt
   TIM6                     : constant := 43;

   --  TIM7 global interrupt
   TIM7                     : constant := 44;

   --  SDIO global interrupt
   SDIO                     : constant := 45;

   --  TIM5 global interrupt
   TIM5                     : constant := 46;

   --  SPI3 global interrupt
   SPI3                     : constant := 47;

   --  UART4 Global interrupt
   UART4                    : constant := 48;

   --  UART5 Global interrupt
   UART5                    : constant := 49;

   --  DMA2 Channel 1 interrupt
   DMA2_CH1                 : constant := 50;

   --  DMA2 Channel 2 interrupt
   DMA2_CH2                 : constant := 51;

   --  DMA2 Channel 3 interrupt
   DMA2_CH3                 : constant := 52;

   --  DMA2 Channel 4 interrupt
   DMA2_CH4                 : constant := 53;

   --  DMA2 Channel 5 interrupt
   DMA2_CH5                 : constant := 54;

   --  AES global interrupt
   AES                      : constant := 55;

   --  Comparator Channel Acquisition interrupt
   COMP_ACQ                 : constant := 56;

end STM32_SVD.Interrupts;
