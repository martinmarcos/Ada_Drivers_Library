--  This spec has been automatically generated from STM32F3x8.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                        : constant := 0;

   --  Power voltage detector through EXTI line detection interrupt
   PVD                         : constant := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP                  : constant := 2;

   --  RTC Wakeup interrupt through the EXTI line
   RTC_WKUP                    : constant := 3;

   --  Flash global interrupt
   FLASH                       : constant := 4;

   --  RCC global interrupt
   RCC                         : constant := 5;

   --  EXTI Line0 interrupt
   EXTI0                       : constant := 6;

   --  EXTI Line3 interrupt
   EXTI1                       : constant := 7;

   --  EXTI Line2 and Touch sensing interrupts
   EXTI2_TSC                   : constant := 8;

   --  EXTI Line3 interrupt
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

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5                     : constant := 23;

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

   --  Timer 12 global interrupt
   TIM12                       : constant := 43;

   --  Timer 13 global interrupt
   TIM13                       : constant := 44;

   --  Timer 14 global interrupt
   TIM14                       : constant := 45;

   --  TIM8 capture compare interrupt
   TIM8_CC                     : constant := 46;

   --  ADC3 global interrupt
   ADC3                        : constant := 47;

   --  FSMC global interrupt
   FMC                         : constant := 48;

   --  Timer 5 global interrupt
   TIM5                        : constant := 50;

   --  SPI3 global interrupt
   SPI3                        : constant := 51;

   --  UART4 global and EXTI Line 34 interrupts
   UART4_EXTI34                : constant := 52;

   --  UART5 global and EXTI Line 35 interrupts
   UART5_EXTI35                : constant := 53;

   --  TIM6 global, DAC1 Cahnnel1 and Cahnnel2 underrun error Interrupts
   TIM6_DAC1                   : constant := 54;

   --  Timer 7 global interrupt
   TIM7                        : constant := 55;

   --  DMA2 channel1 global interrupt
   DMA2_Channel1               : constant := 56;

   --  DMA2 channel2 global interrupt
   DMA2_Channel2               : constant := 57;

   --  DMA2 channel3 global interrupt
   DMA2_Channel3               : constant := 58;

   --  DMA2 channel4 global interrupt
   DMA2_Channel4               : constant := 59;

   --  DMA2 channel5 global interrupt
   DMA2_Channel5               : constant := 60;

   --  ADC sigma delta 1 (SDADC1) global interrupt
   ADC_SD1                     : constant := 61;

   --  ADC sigma delta 2 (SDADC2) global interrupt
   ADC_SD2                     : constant := 62;

   --  ADC sigma delta 3 (SDADC3) global interrupt
   ADC_SD3                     : constant := 63;

   --  COMP7 interrupt combined with EXTI Line 33
   COMP7                       : constant := 66;

   --  I2C3 Event interrupt
   I2C3_EV                     : constant := 72;

   --  I2C3 Error interrupt
   I2C3_ER                     : constant := 73;

   --  USB high priority interrupt
   USB_HP                      : constant := 74;

   --  USB low priority interrupt
   USB_LP                      : constant := 75;

   --  USB wakeup interrupt
   USB_WAKEUP                  : constant := 76;

   --  TIM20 Break interrupt
   TIM20_BRK                   : constant := 77;

   --  Timer 19 global interrupt
   TIM19                       : constant := 78;

   --  TIM20 Trigger and Commutation interrupt
   TIM20_TRG_COM               : constant := 79;

   --  TIM20 Capture Compare interrupt
   TIM20_CC                    : constant := 80;

   --  Floating point unit interrupt
   FPU                         : constant := 81;

end STM32_SVD.Interrupts;
