--

--  This spec has been automatically generated from SN32F240B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  ARM 32-bit Cortex-M0 Microcontroller based device, CPU clock up to 48MHz,
--  etc. 
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   SN_SYS0_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   SN_SYS1_Base : constant System.Address :=
     System'To_Address (16#4005E000#);
   SN_PMU_Base : constant System.Address :=
     System'To_Address (16#40032000#);
   SN_PFPA_Base : constant System.Address :=
     System'To_Address (16#40042000#);
   SN_GPIO0_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   SN_GPIO1_Base : constant System.Address :=
     System'To_Address (16#40046000#);
   SN_GPIO2_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   SN_GPIO3_Base : constant System.Address :=
     System'To_Address (16#4004A000#);
   SN_ADC_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   SN_CT16B0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   SN_CT16B1_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   SN_WDT_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   SN_SPI0_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   SN_I2C0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   SN_UART0_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   SN_UART1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   SN_UART2_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   SN_USB_Base : constant System.Address :=
     System'To_Address (16#4005C000#);
   SN_FLASH_Base : constant System.Address :=
     System'To_Address (16#40062000#);

end NRF_SVD;
