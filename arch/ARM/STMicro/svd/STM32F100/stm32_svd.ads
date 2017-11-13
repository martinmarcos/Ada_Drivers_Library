--  This spec has been automatically generated from STM32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32F100
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FSMC_Base : constant System.Address :=
     System'To_Address (16#A0000000#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#40010800#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#40010C00#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#40011400#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#40011800#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#40011C00#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   AFIO_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   BKP_Base : constant System.Address :=
     System'To_Address (16#40006C04#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   TIM12_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   TIM13_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40012400#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DBG_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   TIM15_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TIM16_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   CEC_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   MPU_Base : constant System.Address :=
     System'To_Address (16#E000ED90#);
   SCB_ACTRL_Base : constant System.Address :=
     System'To_Address (16#E000E008#);
   NVIC_STIR_Base : constant System.Address :=
     System'To_Address (16#E000EF00#);
   SCB_Base : constant System.Address :=
     System'To_Address (16#E000ED00#);
   STK_Base : constant System.Address :=
     System'To_Address (16#E000E010#);

end STM32_SVD;
