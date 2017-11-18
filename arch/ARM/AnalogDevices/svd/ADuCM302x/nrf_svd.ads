--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  ARM Cortex-CM3 Microcontroller based device
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   TMR0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TMR1_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TMR2_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   RTC0_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   RTC1_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   SYS_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   WDT0_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   BEEP0_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   DMA0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   FLCC0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   FLCC0_CACHE_Base : constant System.Address :=
     System'To_Address (16#40018058#);
   GPIO0_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   GPIO1_Base : constant System.Address :=
     System'To_Address (16#40020040#);
   GPIO2_Base : constant System.Address :=
     System'To_Address (16#40020080#);
   SPORT0_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   CRC0_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   RNG0_Base : constant System.Address :=
     System'To_Address (16#40040400#);
   CRYPT0_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   PMG0_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   XINT0_Base : constant System.Address :=
     System'To_Address (16#4004C080#);
   CLKG0_OSC_Base : constant System.Address :=
     System'To_Address (16#4004C100#);
   PMG0_TST_Base : constant System.Address :=
     System'To_Address (16#4004C200#);
   CLKG0_CLK_Base : constant System.Address :=
     System'To_Address (16#4004C300#);
   BUSM0_Base : constant System.Address :=
     System'To_Address (16#4004C800#);
   PTI0_Base : constant System.Address :=
     System'To_Address (16#4004CD00#);
   NVIC0_Base : constant System.Address :=
     System'To_Address (16#E000E000#);

end NRF_SVD;
