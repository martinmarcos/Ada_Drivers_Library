--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  MKE14F512VLL16, MKE14F512VLH16, MKE14F256VLL16, MKE14F256VLH16
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FTFE_FlashConfig_Base : constant System.Address :=
     System'To_Address (16#400#);
   AIPS_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   MSCM_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   DMA_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   SYSMPU_Base : constant System.Address :=
     System'To_Address (16#4000D000#);
   FTFE_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMAMUX_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   LPSPI0_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   LPSPI1_Base : constant System.Address :=
     System'To_Address (16#4002D000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40032000#);
   PDB0_Base : constant System.Address :=
     System'To_Address (16#40036000#);
   PDB1_Base : constant System.Address :=
     System'To_Address (16#40031000#);
   PDB2_Base : constant System.Address :=
     System'To_Address (16#40033000#);
   LPIT0_Base : constant System.Address :=
     System'To_Address (16#40037000#);
   FTM0_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   FTM3_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   FTM1_Base : constant System.Address :=
     System'To_Address (16#40039000#);
   FTM2_Base : constant System.Address :=
     System'To_Address (16#4003A000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#4003B000#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40027000#);
   ADC2_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4003D000#);
   DAC0_Base : constant System.Address :=
     System'To_Address (16#4003F000#);
   LPTMR0_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   SIM_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   PORTA_Base : constant System.Address :=
     System'To_Address (16#40049000#);
   PORTB_Base : constant System.Address :=
     System'To_Address (16#4004A000#);
   PORTC_Base : constant System.Address :=
     System'To_Address (16#4004B000#);
   PORTD_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   PORTE_Base : constant System.Address :=
     System'To_Address (16#4004D000#);
   WDOG_Base : constant System.Address :=
     System'To_Address (16#40052000#);
   PWT_Base : constant System.Address :=
     System'To_Address (16#40056000#);
   FLEXIO_Base : constant System.Address :=
     System'To_Address (16#4005A000#);
   OSC32_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   EWM_Base : constant System.Address :=
     System'To_Address (16#40061000#);
   TRGMUX0_Base : constant System.Address :=
     System'To_Address (16#40062000#);
   TRGMUX1_Base : constant System.Address :=
     System'To_Address (16#40063000#);
   SCG_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   PCC_Base : constant System.Address :=
     System'To_Address (16#40065000#);
   LPI2C0_Base : constant System.Address :=
     System'To_Address (16#40066000#);
   LPI2C1_Base : constant System.Address :=
     System'To_Address (16#40067000#);
   LPUART0_Base : constant System.Address :=
     System'To_Address (16#4006A000#);
   LPUART1_Base : constant System.Address :=
     System'To_Address (16#4006B000#);
   LPUART2_Base : constant System.Address :=
     System'To_Address (16#4006C000#);
   CMP0_Base : constant System.Address :=
     System'To_Address (16#40073000#);
   CMP1_Base : constant System.Address :=
     System'To_Address (16#40074000#);
   CMP2_Base : constant System.Address :=
     System'To_Address (16#40075000#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#4007D000#);
   SMC_Base : constant System.Address :=
     System'To_Address (16#4007E000#);
   RCM_Base : constant System.Address :=
     System'To_Address (16#4007F000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#400FF000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#400FF040#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#400FF080#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#400FF0C0#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#400FF100#);
   SystemControl_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   SysTick_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   CoreDebug_Base : constant System.Address :=
     System'To_Address (16#E000EDF0#);
   MCM_Base : constant System.Address :=
     System'To_Address (16#E0080000#);
   LMEM_Base : constant System.Address :=
     System'To_Address (16#E0082000#);

end NRF_SVD;
