--

--  This spec has been automatically generated from AC33Mx128.svd

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

   SCU_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   FM_Base : constant System.Address :=
     System'To_Address (16#40000100#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40000200#);
   DC0_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   DC1_Base : constant System.Address :=
     System'To_Address (16#40000410#);
   DC2_Base : constant System.Address :=
     System'To_Address (16#40000420#);
   DC3_Base : constant System.Address :=
     System'To_Address (16#40000430#);
   DC4_Base : constant System.Address :=
     System'To_Address (16#40000440#);
   DC5_Base : constant System.Address :=
     System'To_Address (16#40000450#);
   DC6_Base : constant System.Address :=
     System'To_Address (16#40000460#);
   DC7_Base : constant System.Address :=
     System'To_Address (16#40000470#);
   DC8_Base : constant System.Address :=
     System'To_Address (16#40000480#);
   DC9_Base : constant System.Address :=
     System'To_Address (16#40000490#);
   DC10_Base : constant System.Address :=
     System'To_Address (16#400004A0#);
   DC11_Base : constant System.Address :=
     System'To_Address (16#400004B0#);
   DC12_Base : constant System.Address :=
     System'To_Address (16#400004C0#);
   DC13_Base : constant System.Address :=
     System'To_Address (16#400004D0#);
   DC14_Base : constant System.Address :=
     System'To_Address (16#400004E0#);
   PCA_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   PCB_Base : constant System.Address :=
     System'To_Address (16#40001100#);
   PCC_Base : constant System.Address :=
     System'To_Address (16#40001200#);
   PCD_Base : constant System.Address :=
     System'To_Address (16#40001300#);
   PORTEN_Base : constant System.Address :=
     System'To_Address (16#40001FF0#);
   PA_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   PB_Base : constant System.Address :=
     System'To_Address (16#40002100#);
   PC_Base : constant System.Address :=
     System'To_Address (16#40002200#);
   PD_Base : constant System.Address :=
     System'To_Address (16#40002300#);
   T0_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   T1_Base : constant System.Address :=
     System'To_Address (16#40003020#);
   T2_Base : constant System.Address :=
     System'To_Address (16#40003040#);
   T3_Base : constant System.Address :=
     System'To_Address (16#40003060#);
   T8_Base : constant System.Address :=
     System'To_Address (16#40003100#);
   T9_Base : constant System.Address :=
     System'To_Address (16#40003120#);
   TGECR_Base : constant System.Address :=
     System'To_Address (16#40003140#);
   MP0_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   MP1_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   U0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   U1_Base : constant System.Address :=
     System'To_Address (16#40008100#);
   U2_Base : constant System.Address :=
     System'To_Address (16#40008200#);
   U3_Base : constant System.Address :=
     System'To_Address (16#40008300#);
   SP0_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   SP1_Base : constant System.Address :=
     System'To_Address (16#40009100#);
   IC0_Base : constant System.Address :=
     System'To_Address (16#4000A000#);
   IC1_Base : constant System.Address :=
     System'To_Address (16#4000A100#);
   AD0_Base : constant System.Address :=
     System'To_Address (16#4000B000#);
   AD1_Base : constant System.Address :=
     System'To_Address (16#4000B100#);
   AD2_Base : constant System.Address :=
     System'To_Address (16#4000B200#);
   AFE_Base : constant System.Address :=
     System'To_Address (16#4000B300#);

end NRF_SVD;
