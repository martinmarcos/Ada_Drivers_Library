--

--  This spec has been automatically generated from SN32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  ARM 32-bit Cortex-M0 Microcontroller based device, CPU clock up to 50MHz,
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
   SN_GPIO0_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   SN_GPIO1_Base : constant System.Address :=
     System'To_Address (16#40046000#);
   SN_GPIO2_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   SN_GPIO3_Base : constant System.Address :=
     System'To_Address (16#4004A000#);
   SN_WDT_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   SN_RTC_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   SN_CT16B0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   SN_CT16B1_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   SN_CT32B0_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SN_CT32B1_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   SN_PMU_Base : constant System.Address :=
     System'To_Address (16#40032000#);
   SN_SSP0_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   SN_SSP1_Base : constant System.Address :=
     System'To_Address (16#40058000#);
   SN_I2C0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   SN_I2C1_Base : constant System.Address :=
     System'To_Address (16#4005A000#);
   SN_UART0_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   SN_UART1_Base : constant System.Address :=
     System'To_Address (16#40056000#);
   SN_I2S_Base : constant System.Address :=
     System'To_Address (16#4001A000#);
   SN_ADC_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   SN_DAC_Base : constant System.Address :=
     System'To_Address (16#40065000#);
   SN_FLASH_Base : constant System.Address :=
     System'To_Address (16#40062000#);
   SN_CMP_Base : constant System.Address :=
     System'To_Address (16#40066000#);

end NRF_SVD;
