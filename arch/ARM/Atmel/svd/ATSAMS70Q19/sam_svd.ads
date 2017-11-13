--  This spec has been automatically generated from ATSAMS70Q19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAMS70Q19 Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   HSMCI_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   SSC_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TC2_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TWIHS0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   TWIHS1_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   PWM0_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   USBHS_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   AFEC0_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   DACC_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   ACC_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   ICM_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   ISI_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   TC3_Base : constant System.Address :=
     System'To_Address (16#40054000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40058000#);
   PWM1_Base : constant System.Address :=
     System'To_Address (16#4005C000#);
   TWIHS2_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   AFEC1_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   AES_Base : constant System.Address :=
     System'To_Address (16#4006C000#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#40070000#);
   XDMAC_Base : constant System.Address :=
     System'To_Address (16#40078000#);
   QSPI_Base : constant System.Address :=
     System'To_Address (16#4007C000#);
   SMC_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   SDRAMC_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   MATRIX_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   UTMI_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0600#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#400E0800#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0940#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#400E0A00#);
   EFC_Base : constant System.Address :=
     System'To_Address (16#400E0C00#);
   PIOA_Base : constant System.Address :=
     System'To_Address (16#400E0E00#);
   PIOB_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   PIOC_Base : constant System.Address :=
     System'To_Address (16#400E1200#);
   PIOD_Base : constant System.Address :=
     System'To_Address (16#400E1400#);
   PIOE_Base : constant System.Address :=
     System'To_Address (16#400E1600#);
   RSTC_Base : constant System.Address :=
     System'To_Address (16#400E1800#);
   SUPC_Base : constant System.Address :=
     System'To_Address (16#400E1810#);
   RTT_Base : constant System.Address :=
     System'To_Address (16#400E1830#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#400E1850#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#400E1860#);
   GPBR_Base : constant System.Address :=
     System'To_Address (16#400E1890#);
   RSWDT_Base : constant System.Address :=
     System'To_Address (16#400E1900#);
   UART2_Base : constant System.Address :=
     System'To_Address (16#400E1A00#);
   UART3_Base : constant System.Address :=
     System'To_Address (16#400E1C00#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#400E1E00#);

end SAM_SVD;
