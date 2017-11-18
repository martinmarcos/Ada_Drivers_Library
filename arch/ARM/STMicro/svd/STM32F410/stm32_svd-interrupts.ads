--  This spec has been automatically generated from STM32F410.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  PVD through EXTI line detection interrupt
   PVD                           : constant := 1;

   --  Tamper and TimeStamp interrupts through the EXTI line
   TAMP_STAMP                    : constant := 2;

   --  RTC Wakeup interrupt through the EXTI line
   RTC_WKUP                      : constant := 3;

   --  FLASH global interrupt
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

   --  ADC1 global interrupt
   ADC                           : constant := 18;

   --  EXTI Line[9:5] interrupts
   EXTI9_5                       : constant := 23;

   --  TIM1 Break interrupt and TIM9 global interrupt
   TIM1_BRK_TIM9                 : constant := 24;

   --  Timer1 Update interrupt
   PWM1_UP                       : constant := 25;

   --  TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
   TIM1_TRG_COM_TIM11            : constant := 26;

   --  TIM1 Capture Compare interrupt
   TIM1_CC                       : constant := 27;

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

   --  EXTI Line[15:10] interrupts
   EXTI15_10                     : constant := 40;

   --  RTC Alarms (A and B) through EXTI line interrupt
   RTC_Alarm                     : constant := 41;

   --  Timer6 and DAC1 global interrupt
   TIM6_DAC1                     : constant := 54;

   --  RNG global interrupt
   RNG                           : constant := 80;

   --  Floating point unit interrupt
   FPU                           : constant := 81;

   --  I2C4 event interrupt
   I2C4_EV                       : constant := 95;

   --  I2C2 error interrupt
   I2C4_ER                       : constant := 96;

   --  LPTimer global interrupt
   LPTIM1                        : constant := 97;

end STM32_SVD.Interrupts;
