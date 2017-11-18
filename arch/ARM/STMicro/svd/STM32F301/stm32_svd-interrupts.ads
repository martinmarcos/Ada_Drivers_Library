--  This spec has been automatically generated from STM32F301.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                        : constant := 0;

   --  Power voltage detector through EXTI line detection interrupt
   PVD                         : constant := 1;

   --  Tamper and timestamp through EXTI19 line
   TAMP                        : constant := 2;

   --  RTC
   RTC_WKUP                    : constant := 3;

   --  Flash global interrupt
   FLASH                       : constant := 4;

   --  RCC global interrupt
   RCC                         : constant := 5;

   --  EXTI Line 0 interrupt
   EXTI0                       : constant := 6;

   --  EXTI Line1 interrupt
   EXTI1                       : constant := 7;

   --  EXTI Line 2 and routing interface interrupt
   EXTI2_RI                    : constant := 8;

   --  EXTI Line1 interrupt
   EXTI3                       : constant := 9;

   --  EXTI Line4 interrupt
   EXTI4                       : constant := 10;

   --  DMA1 channel 1 interrupt
   DMA1_CH1                    : constant := 11;

   --  DMA1 channel 2 interrupt
   DMA1_CH2                    : constant := 12;

   --  DMA1 channel 3 interrupt
   DMA1_CH3                    : constant := 13;

   --  DMA1 channel 4 interrupt
   DMA1_CH4                    : constant := 14;

   --  DMA1 channel 5 interrupt
   DMA1_CH5                    : constant := 15;

   --  DMA1 channel 6 interrupt
   DMA1_CH6                    : constant := 16;

   --  DMA1 channel 7 interrupt
   DMA1_CH7                    : constant := 17;

   --  ADC1 interrupt
   ADC1                        : constant := 18;

   --  USB high priority/CAN_TX interrupt
   CAN_TX                      : constant := 19;

   --  USB low priority/CAN_RXD interrupt
   CAN_RXD                     : constant := 20;

   --  CAN_RXI interrupt
   CAN_RXI                     : constant := 21;

   --  CAN_SCE interrupt
   CAN_SCE                     : constant := 22;

   --  EXTI Line[9:5] interrupts
   EXTI5_9                     : constant := 23;

   --  Timer 15 global interrupt
   TIM15                       : constant := 24;

   --  Timer 16 global interrupt
   TIM16                       : constant := 25;

   --  Timer 17 global interrupt
   TIM17                       : constant := 26;

   --  Timer 18 global interrupt/DAC3 underrun interrupt
   TIM18_DAC3                  : constant := 27;

   --  Timer 2 global interrupt
   TIM2                        : constant := 28;

   --  Timer 3 global interrupt
   TIM3                        : constant := 29;

   --  Timer 4 global interrupt
   TIM4                        : constant := 30;

   --  I2C1_EV global interrupt/EXTI Line[3:2] interrupts
   I2C1_EV                     : constant := 31;

   --  I2C1_ER
   I2C1_ER                     : constant := 32;

   --  I2C2_EV global interrupt/EXTI Line[4:2] interrupts
   I2C2_EV                     : constant := 33;

   --  I2C2_ER
   I2C2_ER                     : constant := 34;

   --  SPI1 global interrupt
   SPI1                        : constant := 35;

   --  SPI2 global interrupt
   SPI2                        : constant := 36;

   --  USART1 global interrupt/EXTI25 (USART1 wakeup event)
   USART1                      : constant := 37;

   --  USART2 global interrupt/EXTI26 (USART1 wakeup event)
   USART2                      : constant := 38;

   --  USART3 global interrupt/EXTI28 (USART1 wakeup event)
   USART3                      : constant := 39;

   --  EXTI Line[15:10] interrupts
   EXTI15_10                   : constant := 40;

   --  RTC alarm interrupt
   RTC_ALARM_IT                : constant := 41;

   --  CEC interrupt
   CEC                         : constant := 42;

   --  Timer 12 global interrupt
   TIM12                       : constant := 43;

   --  Timer 13 global interrupt
   TIM13                       : constant := 44;

   --  Timer 14 global interrupt
   TIM14                       : constant := 45;

   --  Timer 5 global interrupt
   TIM5                        : constant := 50;

   --  SPI3 global interrupt
   SPI3                        : constant := 51;

   --  TIM6 global, DAC1 Cahnnel1 and Cahnnel2 underrun error Interrupts
   TIM6_DAC1                   : constant := 54;

   --  Timer 7 global interrupt
   TIM7                        : constant := 55;

   --  ADC sigma delta 1 (SDADC1) global interrupt
   ADC_SD1                     : constant := 61;

   --  ADC sigma delta 2 (SDADC2) global interrupt
   ADC_SD2                     : constant := 62;

   --  ADC sigma delta 3 (SDADC3) global interrupt
   ADC_SD3                     : constant := 63;

   --  USB high priority interrupt
   USB_HP                      : constant := 74;

   --  USB low priority interrupt
   USB_LP                      : constant := 75;

   --  USB wakeup interrupt
   USB_WAKEUP                  : constant := 76;

   --  Timer 19 global interrupt
   TIM19                       : constant := 78;

   --  Floating point unit interrupt
   FPU                         : constant := 81;

end STM32_SVD.Interrupts;
