--

--  This spec has been automatically generated from AC33Mx064.svd

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
   FM_Base : constant System.Address :=
     System'To_Address (16#40000100#);
   DC0_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   DC1_Base : constant System.Address :=
     System'To_Address (16#40000410#);
   DC2_Base : constant System.Address :=
     System'To_Address (16#40000420#);
   DC3_Base : constant System.Address :=
     System'To_Address (16#40000430#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40000200#);
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
   U0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   U1_Base : constant System.Address :=
     System'To_Address (16#40008100#);
   SP0_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   IC0_Base : constant System.Address :=
     System'To_Address (16#4000A000#);
   MP0_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   AD0_Base : constant System.Address :=
     System'To_Address (16#4000B000#);
   AD1_Base : constant System.Address :=
     System'To_Address (16#4000B100#);

end NRF_SVD;
