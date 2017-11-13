--  This spec has been automatically generated from ATSAMG53N19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAMG53N19 Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   I2SC0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   I2SC1_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SPI_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   TWI1_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   USART_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   MEM2MEM_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   PDMIC0_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   PDMIC1_Base : constant System.Address :=
     System'To_Address (16#40030000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   TWI2_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   MATRIX_Base : constant System.Address :=
     System'To_Address (16#400E0200#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#400E0600#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0740#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#400E0800#);
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
