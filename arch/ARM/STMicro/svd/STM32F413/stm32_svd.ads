--  This spec has been automatically generated from STM32F413.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32F413
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AES_Base : constant System.Address :=
     System'To_Address (16#50060000#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40006400#);
   CAN2_Base : constant System.Address :=
     System'To_Address (16#40006800#);
   CAN3_Base : constant System.Address :=
     System'To_Address (16#40006C00#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   DBG_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   DFSDM2_Base : constant System.Address :=
     System'To_Address (16#40016400#);
   DFSDM1_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40026400#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40013C00#);
   FMPI2C_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40023C00#);
   TIM12_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   TIM13_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   TIM9_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#40021400#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#40021C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#40020800#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#40021800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#40020C00#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   TIM10_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM11_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   LPTIM_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   QUADSPI_Base : constant System.Address :=
     System'To_Address (16#A0001000#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#50060800#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40023800#);
   SDIO_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   SAI_Base : constant System.Address :=
     System'To_Address (16#40015800#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI6_Base : constant System.Address :=
     System'To_Address (16#40015400#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40011400#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   UART7_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   UART8_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   UART10_Base : constant System.Address :=
     System'To_Address (16#40011C00#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   UART9_Base : constant System.Address :=
     System'To_Address (16#40011800#);
   OTG_FS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#50000800#);
   OTG_FS_HOST_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   OTG_FS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#50000E00#);
   OTG_FS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   FSMC_Base : constant System.Address :=
     System'To_Address (16#60000000#);
   ADC_Common_Base : constant System.Address :=
     System'To_Address (16#40012300#);
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
