--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  MKE14Z256VLL7, MKE14Z256VLH7, MKE14Z128VLL7, MKE14Z128VLH7
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FTFE_FlashConfig_Base : constant System.Address :=
     System'To_Address (16#400#);
   DMA_Base : constant System.Address :=
     System'To_Address (16#40008000#);
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
   LPIT0_Base : constant System.Address :=
     System'To_Address (16#40037000#);
   FTM0_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   FTM1_Base : constant System.Address :=
     System'To_Address (16#40039000#);
   FTM2_Base : constant System.Address :=
     System'To_Address (16#4003A000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#4003B000#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40027000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4003D000#);
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
   MTB_Base : constant System.Address :=
     System'To_Address (16#F0000000#);
   MTBDWT_Base : constant System.Address :=
     System'To_Address (16#F0001000#);
   ROM_Base : constant System.Address :=
     System'To_Address (16#F0002000#);
   MCM_Base : constant System.Address :=
     System'To_Address (16#F0003000#);
   MMDVSQ_Base : constant System.Address :=
     System'To_Address (16#F0004000#);
   FGPIOA_Base : constant System.Address :=
     System'To_Address (16#F8000000#);
   FGPIOB_Base : constant System.Address :=
     System'To_Address (16#F8000040#);
   FGPIOC_Base : constant System.Address :=
     System'To_Address (16#F8000080#);
   FGPIOD_Base : constant System.Address :=
     System'To_Address (16#F80000C0#);
   FGPIOE_Base : constant System.Address :=
     System'To_Address (16#F8000100#);

end NRF_SVD;
