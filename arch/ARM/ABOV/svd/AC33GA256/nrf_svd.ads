--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  ARM 32-bit Cortex-M3 Microcontroller based device. 
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   PMU_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   PCA_Base : constant System.Address :=
     System'To_Address (16#40000200#);
   PCB_Base : constant System.Address :=
     System'To_Address (16#40000220#);
   PCC_Base : constant System.Address :=
     System'To_Address (16#40000240#);
   PCD_Base : constant System.Address :=
     System'To_Address (16#40000260#);
   PCE_Base : constant System.Address :=
     System'To_Address (16#40000280#);
   PCF_Base : constant System.Address :=
     System'To_Address (16#400002A0#);
   PA_Base : constant System.Address :=
     System'To_Address (16#40000300#);
   PB_Base : constant System.Address :=
     System'To_Address (16#40000310#);
   PC_Base : constant System.Address :=
     System'To_Address (16#40000320#);
   PD_Base : constant System.Address :=
     System'To_Address (16#40000330#);
   PE_Base : constant System.Address :=
     System'To_Address (16#40000340#);
   PF_Base : constant System.Address :=
     System'To_Address (16#40000350#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   FRT_Base : constant System.Address :=
     System'To_Address (16#40000500#);
   T0_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   T1_Base : constant System.Address :=
     System'To_Address (16#40000C20#);
   T2_Base : constant System.Address :=
     System'To_Address (16#40000C40#);
   T3_Base : constant System.Address :=
     System'To_Address (16#40000C60#);
   T4_Base : constant System.Address :=
     System'To_Address (16#40000C80#);
   T5_Base : constant System.Address :=
     System'To_Address (16#40000CA0#);
   T6_Base : constant System.Address :=
     System'To_Address (16#40000CC0#);
   T7_Base : constant System.Address :=
     System'To_Address (16#40000CE0#);
   T8_Base : constant System.Address :=
     System'To_Address (16#40000D00#);
   T9_Base : constant System.Address :=
     System'To_Address (16#40000D20#);
   PWM0_Base : constant System.Address :=
     System'To_Address (16#40000700#);
   PWM1_Base : constant System.Address :=
     System'To_Address (16#40000720#);
   PWM2_Base : constant System.Address :=
     System'To_Address (16#40000740#);
   PWM3_Base : constant System.Address :=
     System'To_Address (16#40000760#);
   PWM4_Base : constant System.Address :=
     System'To_Address (16#40000780#);
   PWM5_Base : constant System.Address :=
     System'To_Address (16#400007A0#);
   PWM6_Base : constant System.Address :=
     System'To_Address (16#400007C0#);
   PWM7_Base : constant System.Address :=
     System'To_Address (16#400007E0#);
   PWMPRS0_Base : constant System.Address :=
     System'To_Address (16#4000077C#);
   PWMPRS1_Base : constant System.Address :=
     System'To_Address (16#400007FC#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40000A00#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40000A80#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#40000B00#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#40000B40#);
   UART2_Base : constant System.Address :=
     System'To_Address (16#40000B80#);
   UART3_Base : constant System.Address :=
     System'To_Address (16#40000BC0#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40000820#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#40000E00#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#40000100#);
   MEMCR_Base : constant System.Address :=
     System'To_Address (16#400000E0#);

end NRF_SVD;
