--  This spec has been automatically generated from STM32L4R9.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                          : constant := 0;

   --  PVD through EXTI line detection
   PVD_PVM                       : constant := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP                    : constant := 2;

   --  RTC Tamper or TimeStamp /CSS on LSE through EXTI line 19 interrupts
   RTC_WKUP                      : constant := 3;

   --  Flash global interrupt
   FLASH                         : constant := 4;

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

   --  EXTI Line 4 interrupt
   EXTI4                         : constant := 10;

   --  DMA1 Channel1 global interrupt
   DMA1_CH1                      : constant := 11;

   --  DMA1 Channel2 global interrupt
   DMA1_CH2                      : constant := 12;

   --  DMA1 Channel3 interrupt
   DMA1_CH3                      : constant := 13;

   --  DMA1 Channel4 interrupt
   DMA1_CH4                      : constant := 14;

   --  DMA1 Channel5 interrupt
   DMA1_CH5                      : constant := 15;

   --  DMA1 Channel6 interrupt
   DMA1_CH6                      : constant := 16;

   --  DMA1 Channel 7 interrupt
   DMA1_CH7                      : constant := 17;

   --  ADC1 and ADC2 global interrupt
   ADC1                          : constant := 18;

   --  CAN1 TX interrupts
   CAN1_TX                       : constant := 19;

   --  CAN1 RX0 interrupts
   CAN1_RX0                      : constant := 20;

   --  CAN1 RX1 interrupts
   CAN1_RX1                      : constant := 21;

   --  CAN1 SCE interrupt
   CAN1_SCE                      : constant := 22;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5                       : constant := 23;

   --  TIM1 Break/TIM15 global interrupts
   TIM1_BRK_TIM15                : constant := 24;

   --  TIM1 Update/TIM16 global interrupts
   TIM1_UP_TIM16                 : constant := 25;

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

   --  DFSDM1_FLT3 global interrupt
   DFSDM1_FLT3                   : constant := 42;

   --  TIM8 Break Interrupt
   TIM8_BRK                      : constant := 43;

   --  TIM8 Update Interrupt
   TIM8_UP                       : constant := 44;

   --  TIM8 Trigger and Commutation Interrupt
   TIM8_TRG_COM                  : constant := 45;

   --  TIM8 Capture Compare Interrupt
   TIM8_CC                       : constant := 46;

   --  ADC3 global interrupt
   ADC3                          : constant := 47;

   --  FMC global Interrupt
   FMC                           : constant := 48;

   --  SDMMC global Interrupt
   SDMMC1                        : constant := 49;

   --  TIM5 global Interrupt
   TIM5                          : constant := 50;

   --  SPI3 global Interrupt
   SPI3                          : constant := 51;

   --  UART4 global Interrupt
   UART4                         : constant := 52;

   --  UART5 global Interrupt
   UART5                         : constant := 53;

   --  TIM6 global and DAC1 and 2 underrun error interrupts
   TIM6_DACUNDER                 : constant := 54;

   --  TIM7 global interrupt
   TIM7                          : constant := 55;

   --  DMA2 Channel 1 global Interrupt
   DMA2_CH1                      : constant := 56;

   --  DMA2 Channel 2 global Interrupt
   DMA2_CH2                      : constant := 57;

   --  DMA2 Channel 3 global Interrupt
   DMA2_CH3                      : constant := 58;

   --  DMA2 Channel 4 global Interrupt
   DMA2_CH4                      : constant := 59;

   --  DMA2 Channel 5 global Interrupt
   DMA2_CH5                      : constant := 60;

   --  DFSDM1_FLT0 global interrupt
   DFSDM1_FLT0                   : constant := 61;

   --  DFSDM1_FLT1 global interrupt
   DFSDM1_FLT1                   : constant := 62;

   --  DFSDM1_FLT2 global interrupt
   DFSDM1_FLT2                   : constant := 63;

   --  COMP1 and COMP2 interrupts
   COMP                          : constant := 64;

   --  LP TIM1 interrupt
   LPTIM1                        : constant := 65;

   --  LP TIM2 interrupt
   LPTIM2                        : constant := 66;

   --  USB OTG FS global Interrupt
   OTG_FS                        : constant := 67;

   --  DMA2 Channel 6 global Interrupt
   DMA2_CH6                      : constant := 68;

   --  DMA2 Channel 7 global Interrupt
   DMA2_CH7                      : constant := 69;

   --  LPUART1 global interrupt
   LPUART1                       : constant := 70;

   --  OCTOSPI1 global interrupt
   OCTOSPI1                      : constant := 71;

   --  I2C3 event interrupt
   I2C3_EV                       : constant := 72;

   --  I2C3 error interrupt
   I2C3_ER                       : constant := 73;

   --  SAI1 global interrupt
   SAI1                          : constant := 74;

   --  SAI2 global interrupt
   SAI2                          : constant := 75;

   --  OCTOSPI2 global interrupt
   OCTOSPI2                      : constant := 76;

   --  TSC global interrupt
   TSC                           : constant := 77;

   --  DSI global interrupt
   DSIHSOT                       : constant := 78;

   --  AES global interrupt
   AES                           : constant := 79;

   --  RNG and HASH global interrupt
   RNG_HASH                      : constant := 80;

   --  Floating point interrupt
   FPU                           : constant := 81;

   --  CRS global interrupt
   CRS                           : constant := 82;

   --  I2C4 error interrupt
   I2C4_ER                       : constant := 83;

   --  I2C4 event interrupt
   I2C4_EV                       : constant := 84;

   --  DCMI global interrupt
   DCMI                          : constant := 85;

   --  DMA2D global interrupt
   DMA2D                         : constant := 90;

   --  LTDC global interrupt
   LCD_TFT                       : constant := 91;

   --  LTDC global error interrupt
   LCD_TFT_ER                    : constant := 92;

   --  GFXMMU global error interrupt
   GFXMMU                        : constant := 93;

   --  DMAMUX Overrun interrupt
   DMAMUX_OVR                    : constant := 94;

end STM32_SVD.Interrupts;
