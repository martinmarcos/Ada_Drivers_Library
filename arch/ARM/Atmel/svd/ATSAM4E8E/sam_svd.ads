--  This spec has been automatically generated from ATSAM4E8E.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAM4E8E Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   PWM_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   AES_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   CAN0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   GMAC_Base : constant System.Address :=
     System'To_Address (16#40034000#);
   CRCCU_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   SMC_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#40060600#);
   HSMCI_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   UDP_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   SPI_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40090000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   TC2_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#400A8000#);
   TWI1_Base : constant System.Address :=
     System'To_Address (16#400AC000#);
   AFEC0_Base : constant System.Address :=
     System'To_Address (16#400B0000#);
   AFEC1_Base : constant System.Address :=
     System'To_Address (16#400B4000#);
   DACC_Base : constant System.Address :=
     System'To_Address (16#400B8000#);
   ACC_Base : constant System.Address :=
     System'To_Address (16#400BC000#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#400C0000#);
   CMCC_Base : constant System.Address :=
     System'To_Address (16#400C4000#);
   MATRIX_Base : constant System.Address :=
     System'To_Address (16#400E0200#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#400E0600#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0740#);
   EFC_Base : constant System.Address :=
     System'To_Address (16#400E0A00#);
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

end SAM_SVD;
