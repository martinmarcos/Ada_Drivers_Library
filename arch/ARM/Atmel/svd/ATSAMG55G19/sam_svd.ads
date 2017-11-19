--  This spec has been automatically generated from ATSAMG55G19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAMG55G19 Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   I2SC0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   I2SC1_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   FLEXCOM5_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   USART5_Base : constant System.Address :=
     System'To_Address (16#40008200#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40008400#);
   TWI5_Base : constant System.Address :=
     System'To_Address (16#40008600#);
   FLEXCOM0_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#4000C200#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#4000C400#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#4000C600#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   FLEXCOM3_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40018200#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40018400#);
   TWI3_Base : constant System.Address :=
     System'To_Address (16#40018600#);
   FLEXCOM4_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   USART4_Base : constant System.Address :=
     System'To_Address (16#4001C200#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#4001C400#);
   TWI4_Base : constant System.Address :=
     System'To_Address (16#4001C600#);
   FLEXCOM1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40020200#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   TWI1_Base : constant System.Address :=
     System'To_Address (16#40020600#);
   FLEXCOM2_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40024200#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40024400#);
   TWI2_Base : constant System.Address :=
     System'To_Address (16#40024600#);
   MEM2MEM_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   PDMIC0_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   PDMIC1_Base : constant System.Address :=
     System'To_Address (16#40030000#);
   FLEXCOM7_Base : constant System.Address :=
     System'To_Address (16#40034000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   CMCC_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   FLEXCOM6_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40040200#);
   SPI6_Base : constant System.Address :=
     System'To_Address (16#40040400#);
   TWI6_Base : constant System.Address :=
     System'To_Address (16#40040600#);
   UDP_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   CRCCU_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   UHP_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   MATRIX_Base : constant System.Address :=
     System'To_Address (16#400E0200#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0740#);
   EFC_Base : constant System.Address :=
     System'To_Address (16#400E0A00#);
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

end SAM_SVD;