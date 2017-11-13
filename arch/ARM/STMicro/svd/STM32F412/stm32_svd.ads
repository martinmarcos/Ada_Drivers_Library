--  This spec has been automatically generated from STM32F412.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32F412
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   ADC_Common_Base : constant System.Address :=
     System'To_Address (16#40012300#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   DBG_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40013C00#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40023C00#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40023800#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   SDIO_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   TIM10_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM11_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   TIM9_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40011400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40026400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#40021C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#40020C00#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#40020800#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#40021400#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#40021800#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2S2ext_Base : constant System.Address :=
     System'To_Address (16#40003400#);
   I2S3ext_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   DFSDM_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   TIM12_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   TIM13_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#50060800#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40006400#);
   CAN2_Base : constant System.Address :=
     System'To_Address (16#40006800#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   FSMC_Base : constant System.Address :=
     System'To_Address (16#60000000#);
   OTG_FS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   OTG_FS_HOST_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   OTG_FS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#50000800#);
   OTG_FS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#50000E00#);
   QUADSPI_Base : constant System.Address :=
     System'To_Address (16#A0001000#);
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
