--  This spec has been automatically generated from ATSAM4C32C_0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAM4C32C Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AES_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   TWI1_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   UOTGHS_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40030000#);
   USART4_Base : constant System.Address :=
     System'To_Address (16#40034000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   SLCDC_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   ICM_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   IPC0_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   CMCC0_Base : constant System.Address :=
     System'To_Address (16#4007C000#);
   SMC0_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   MATRIX0_Base : constant System.Address :=
     System'To_Address (16#400E0200#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#400E0600#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0740#);
   EFC0_Base : constant System.Address :=
     System'To_Address (16#400E0A00#);
   EFC1_Base : constant System.Address :=
     System'To_Address (16#400E0C00#);
   PIOA_Base : constant System.Address :=
     System'To_Address (16#400E0E00#);
   PIOB_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   RSTC_Base : constant System.Address :=
     System'To_Address (16#400E1400#);
   SUPC_Base : constant System.Address :=
     System'To_Address (16#400E1410#);
   RTT_Base : constant System.Address :=
     System'To_Address (16#400E1430#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#400E1450#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#400E1460#);
   GPBR_Base : constant System.Address :=
     System'To_Address (16#400E1490#);
   RSWDT_Base : constant System.Address :=
     System'To_Address (16#400E1500#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#48004000#);
   PWM_Base : constant System.Address :=
     System'To_Address (16#48008000#);
   PIOC_Base : constant System.Address :=
     System'To_Address (16#4800C000#);
   MATRIX1_Base : constant System.Address :=
     System'To_Address (16#48010000#);
   IPC1_Base : constant System.Address :=
     System'To_Address (16#48014000#);
   CMCC1_Base : constant System.Address :=
     System'To_Address (16#48018000#);
   SMC1_Base : constant System.Address :=
     System'To_Address (16#4801C000#);

end SAM_SVD;
