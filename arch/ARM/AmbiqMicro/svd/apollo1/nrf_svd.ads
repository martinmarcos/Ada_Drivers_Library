--

--  This spec has been automatically generated from apollo1.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Ultra-Low power ARM Cortex-M4 MCU from Ambiq Micro
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   ADC_Base : constant System.Address :=
     System'To_Address (16#50008000#);
   CTIMER_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   GPIO_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   IOMSTR0_Base : constant System.Address :=
     System'To_Address (16#50004000#);
   IOMSTR1_Base : constant System.Address :=
     System'To_Address (16#50005000#);
   IOSLAVE_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   MCUCTRL_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   RSTGEN_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   UART_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   VCOMP_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   CLKGEN_Base : constant System.Address :=
     System'To_Address (16#40004000#);

end NRF_SVD;
