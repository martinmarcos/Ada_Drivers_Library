--  This spec has been automatically generated from STM32F7x2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32F7x2
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   TIM1_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   ADC2_Base : constant System.Address :=
     System'To_Address (16#40012100#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   ADC3_Base : constant System.Address :=
     System'To_Address (16#40012200#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   C_ADC_Base : constant System.Address :=
     System'To_Address (16#40012300#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40006400#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   CRYP_Base : constant System.Address :=
     System'To_Address (16#50060000#);
   DBG_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40026400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40013C00#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40023C00#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#A0000000#);
   TIM9_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TIM12_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#40021C00#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#40021400#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#40021800#);
   GPIOI_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#40020C00#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#40020800#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   TIM13_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   TIM10_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM11_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   LPTIM1_Base : constant System.Address :=
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
   SDMMC1_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   SDMMC2_Base : constant System.Address :=
     System'To_Address (16#40011C00#);
   SAI1_Base : constant System.Address :=
     System'To_Address (16#40015800#);
   SAI2_Base : constant System.Address :=
     System'To_Address (16#40015C00#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40011400#);
   UART8_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   UART7_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   OTG_FS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   OTG_FS_HOST_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   OTG_FS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#50000800#);
   OTG_FS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#50000E00#);
   OTG_HS_HOST_Base : constant System.Address :=
     System'To_Address (16#40040400#);
   OTG_HS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   OTG_HS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#40040E00#);
   OTG_HS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#40040800#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   MPU_Base : constant System.Address :=
     System'To_Address (16#E000ED90#);
   STK_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   NVIC_STIR_Base : constant System.Address :=
     System'To_Address (16#E000EF00#);
   FPU_CPACR_Base : constant System.Address :=
     System'To_Address (16#E000ED88#);
   SCB_ACTRL_Base : constant System.Address :=
     System'To_Address (16#E000E008#);
   FPU_Base : constant System.Address :=
     System'To_Address (16#E000EF34#);
   SCB_Base : constant System.Address :=
     System'To_Address (16#E000ED00#);
   PF_Base : constant System.Address :=
     System'To_Address (16#E000ED78#);
   AC_Base : constant System.Address :=
     System'To_Address (16#E000EF90#);

end STM32_SVD;
