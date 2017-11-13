--  This spec has been automatically generated from ATSAM3X8E.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAM3X8E Microcontroller
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
     System'To_Address (16#40080000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   TC2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#4008C000#);
   TWI1_Base : constant System.Address :=
     System'To_Address (16#40090000#);
   PWM_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#4009C000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   UOTGHS_Base : constant System.Address :=
     System'To_Address (16#400AC000#);
   EMAC_Base : constant System.Address :=
     System'To_Address (16#400B0000#);
   CAN0_Base : constant System.Address :=
     System'To_Address (16#400B4000#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#400B8000#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#400BC000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#400C0000#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#400C4000#);
   DACC_Base : constant System.Address :=
     System'To_Address (16#400C8000#);
   SMC_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   MATRIX_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0600#);
   UART_Base : constant System.Address :=
     System'To_Address (16#400E0800#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0940#);
   EFC0_Base : constant System.Address :=
     System'To_Address (16#400E0A00#);
   EFC1_Base : constant System.Address :=
     System'To_Address (16#400E0C00#);
   PIOA_Base : constant System.Address :=
     System'To_Address (16#400E0E00#);
   PIOB_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   PIOC_Base : constant System.Address :=
     System'To_Address (16#400E1200#);
   PIOD_Base : constant System.Address :=
     System'To_Address (16#400E1400#);
   RSTC_Base : constant System.Address :=
     System'To_Address (16#400E1A00#);
   SUPC_Base : constant System.Address :=
     System'To_Address (16#400E1A10#);
   RTT_Base : constant System.Address :=
     System'To_Address (16#400E1A30#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#400E1A50#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#400E1A60#);
   GPBR_Base : constant System.Address :=
     System'To_Address (16#400E1A90#);

end SAM_SVD;
