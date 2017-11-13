--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  TODO
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   TIMER0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   DUALTIMER0_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   PROV_DMA_CTRL0_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40003400#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   WDT0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   WDT1_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   EFUSE_MISC_REGS0_Base : constant System.Address :=
     System'To_Address (16#4000A000#);
   LPMCU_MISC_REGS0_Base : constant System.Address :=
     System'To_Address (16#4000B000#);
   LP_CLK_CAL_REGS0_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   AON_SLEEP_TIMER0_Base : constant System.Address :=
     System'To_Address (16#4000D000#);
   AON_PWR_SEQ0_Base : constant System.Address :=
     System'To_Address (16#4000E000#);
   AON_GP_REGS0_Base : constant System.Address :=
     System'To_Address (16#4000F000#);
   GPIO0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   GPIO1_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   SPI_FLASH0_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   GPIO2_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   ARM_SYSCTRL0_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   ARM_BPU0_Base : constant System.Address :=
     System'To_Address (16#E0002000#);
   ARM_DWT0_Base : constant System.Address :=
     System'To_Address (16#E0001000#);
   ARM_ROM0_Base : constant System.Address :=
     System'To_Address (16#E00FF000#);

end SAM_SVD;
