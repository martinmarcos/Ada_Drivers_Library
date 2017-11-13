--  This spec has been automatically generated from STM32F373.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32F373
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   GPIOA_Base : constant System.Address :=
     System'To_Address (16#48000000#);
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
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
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
   ADC_Base : constant System.Address :=
     System'To_Address (16#40012400#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   CEC_Base : constant System.Address :=
     System'To_Address (16#40007800#);
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
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   FPU_Base : constant System.Address :=
     System'To_Address (16#E000EF34#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   SYSCFG_COMP_OPAMP_Base : constant System.Address :=
     System'To_Address (16#40010000#);
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
