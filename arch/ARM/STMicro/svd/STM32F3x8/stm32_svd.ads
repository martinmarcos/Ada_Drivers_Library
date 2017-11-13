--  This spec has been automatically generated from STM32F3x8.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32F3x8
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   GPIOA_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#48001C00#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#48000400#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#48000C00#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#48000800#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#48001000#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#48001400#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#48001800#);
   TSC_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   Flash_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM19_Base : constant System.Address :=
     System'To_Address (16#40015C00#);
   TIM15_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TIM16_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   TIM20_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   I2S2ext_Base : constant System.Address :=
     System'To_Address (16#40003400#);
   I2S3ext_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#40013C00#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   CAN_Base : constant System.Address :=
     System'To_Address (16#40006400#);
   USB_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   SDADC1_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   SDADC2_Base : constant System.Address :=
     System'To_Address (16#40016400#);
   SDADC3_Base : constant System.Address :=
     System'To_Address (16#40016800#);
   DAC2_Base : constant System.Address :=
     System'To_Address (16#40009800#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   TIM18_Base : constant System.Address :=
     System'To_Address (16#40009C00#);
   TIM13_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   TIM12_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   DAC1_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#A0000400#);
   ADC2_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   SYSCFG_COMP_OPAMP_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   FPU_Base : constant System.Address :=
     System'To_Address (16#E000EF34#);
   MPU_Base : constant System.Address :=
     System'To_Address (16#E000ED90#);
   STK_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   SCB_Base : constant System.Address :=
     System'To_Address (16#E000ED00#);
   NVIC_STIR_Base : constant System.Address :=
     System'To_Address (16#E000EF00#);
   FPU_CPACR_Base : constant System.Address :=
     System'To_Address (16#E000ED88#);
   SCB_ACTRL_Base : constant System.Address :=
     System'To_Address (16#E000E008#);

end STM32_SVD;
