--  This spec has been automatically generated from ATSAM3U1C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAM3U1C Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   HSMCI_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   SSC_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SPI_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   TWI1_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   PWM_Base : constant System.Address :=
     System'To_Address (16#4008C000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40090000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   UDPHS_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   ADC12B_Base : constant System.Address :=
     System'To_Address (16#400A8000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#400AC000#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#400B0000#);
   SMC_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   MATRIX_Base : constant System.Address :=
     System'To_Address (16#400E0200#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   UART_Base : constant System.Address :=
     System'To_Address (16#400E0600#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0740#);
   EFC0_Base : constant System.Address :=
     System'To_Address (16#400E0800#);
   PIOA_Base : constant System.Address :=
     System'To_Address (16#400E0C00#);
   PIOB_Base : constant System.Address :=
     System'To_Address (16#400E0E00#);
   RSTC_Base : constant System.Address :=
     System'To_Address (16#400E1200#);
   SUPC_Base : constant System.Address :=
     System'To_Address (16#400E1210#);
   RTT_Base : constant System.Address :=
     System'To_Address (16#400E1230#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#400E1250#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#400E1260#);
   GPBR_Base : constant System.Address :=
     System'To_Address (16#400E1290#);

end SAM_SVD;
