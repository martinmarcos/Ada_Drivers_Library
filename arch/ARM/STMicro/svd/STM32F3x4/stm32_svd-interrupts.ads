--  This spec has been automatically generated from STM32F3x4.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                          : constant := 0;

   --  PVD through EXTI line detection interrupt
   PVD                           : constant := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP                    : constant := 2;

   --  RTC Wakeup interrupt through the EXTI line
   RTC_WKUP                      : constant := 3;

   --  Flash global interrupt
   FLASH                         : constant := 4;

   --  RCC global interrupt
   RCC                           : constant := 5;

   --  EXTI Line0 interrupt
   EXTI0                         : constant := 6;

   --  EXTI Line3 interrupt
   EXTI1                         : constant := 7;

   --  EXTI Line2 and Touch sensing interrupts
   EXTI2_TSC                     : constant := 8;

   --  EXTI Line3 interrupt
   EXTI3                         : constant := 9;

   --  EXTI Line4 interrupt
   EXTI4                         : constant := 10;

   --  DMA1 channel 1 interrupt
   DMA1_CH1                      : constant := 11;

   --  DMA1 channel 2 interrupt
   DMA1_CH2                      : constant := 12;

   --  DMA1 channel 3 interrupt
   DMA1_CH3                      : constant := 13;

   --  DMA1 channel 4 interrupt
   DMA1_CH4                      : constant := 14;

   --  DMA1 channel 5 interrupt
   DMA1_CH5                      : constant := 15;

   --  DMA1 channel 6 interrupt
   DMA1_CH6                      : constant := 16;

   --  DMA1 channel 7interrupt
   DMA1_CH7                      : constant := 17;

   --  ADC1 and ADC2 global interrupt
   ADC1_2                        : constant := 18;

   --  USB High Priority/CAN_TX interrupts
   USB_HP_CAN_TX                 : constant := 19;

   --  USB Low Priority/CAN_RX0 interrupts
   USB_LP_CAN_RX0                : constant := 20;

   --  CAN_RX1 interrupt
   CAN_RX1                       : constant := 21;

   --  CAN_SCE interrupt
   CAN_SCE                       : constant := 22;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5                       : constant := 23;

   --  TIM1 Break/TIM15 global interruts
   TIM1_BRK_TIM15                : constant := 24;

   --  TIM1 Update/TIM16 global interrupts
   TIM1_UP_TIM16                 : constant := 25;

   --  TIM1 trigger and commutation/TIM17 interrupts
   TIM1_TRG_COM_TIM17            : constant := 26;

   --  TIM1 capture compare interrupt
   TIM1_CC                       : constant := 27;

   --  TIM2 global interrupt
   TIM2                          : constant := 28;

   --  Timer 3 global interrupt
   TIM3                          : constant := 29;

   --  I2C1 event interrupt and EXTI Line23 interrupt
   I2C1_EV_EXTI23                : constant := 31;

   --  I2C1 error interrupt
   I2C1_ER                       : constant := 32;

   --  SPI1 global interrupt
   SPI1                          : constant := 35;

   --  USART1 global interrupt and EXTI Line 25 interrupt
   USART1_EXTI25                 : constant := 37;

   --  USART2 global interrupt and EXTI Line 26 interrupt
   USART2_EXTI26                 : constant := 38;

   --  USART3 global interrupt and EXTI Line 28 interrupt
   USART3_EXTI28                 : constant := 39;

   --  EXTI Line15 to Line10 interrupts
   EXTI15_10                     : constant := 40;

   --  RTC alarm interrupt
   RTCAlarm                      : constant := 41;

   --  TIM6 global and DAC12 underrun interrupts
   TIM6_DAC1                     : constant := 54;

   --  TIM7 global interrupt
   TIM7_DAC2                     : constant := 55;

   --  Floating point unit interrupt
   FPU                           : constant := 81;

   --  HRTIM1 master timer interrupt
   HRTIM1_MST                    : constant := 103;

   --  HRTIM1 timer A interrupt
   HRTIM1_TIMA                   : constant := 104;

   --  HRTIM1 timer B interrupt
   HRTIM_TIMB                    : constant := 105;

   --  HRTIM1 timer C interrupt
   HRTIM1_TIMC                   : constant := 106;

   --  HRTIM1 timer D interrupt
   HRTIM1_TIMD                   : constant := 107;

   --  HRTIM1 timer E interrupt
   HRTIM_TIME                    : constant := 108;

   --  HRTIM1 fault interrupt
   HRTIM1_FLT                    : constant := 109;

end STM32_SVD.Interrupts;
