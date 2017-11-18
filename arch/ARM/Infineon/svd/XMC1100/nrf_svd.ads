--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  SVD file
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   PPB_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   ERU0_Base : constant System.Address :=
     System'To_Address (16#40010600#);
   PAU_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   NVM_Base : constant System.Address :=
     System'To_Address (16#40050000#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40010A00#);
   PRNG_Base : constant System.Address :=
     System'To_Address (16#48020000#);
   USIC0_Base : constant System.Address :=
     System'To_Address (16#48000008#);
   USIC0_CH0_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   USIC0_CH1_Base : constant System.Address :=
     System'To_Address (16#48000200#);
   SCU_GENERAL_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   SCU_INTERRUPT_Base : constant System.Address :=
     System'To_Address (16#40010038#);
   SCU_POWER_Base : constant System.Address :=
     System'To_Address (16#40010200#);
   SCU_CLK_Base : constant System.Address :=
     System'To_Address (16#40010300#);
   SCU_RESET_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   SCU_ANALOG_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   CCU40_Base : constant System.Address :=
     System'To_Address (16#48040000#);
   CCU40_CC40_Base : constant System.Address :=
     System'To_Address (16#48040100#);
   CCU40_CC41_Base : constant System.Address :=
     System'To_Address (16#48040200#);
   CCU40_CC42_Base : constant System.Address :=
     System'To_Address (16#48040300#);
   CCU40_CC43_Base : constant System.Address :=
     System'To_Address (16#48040400#);
   VADC_Base : constant System.Address :=
     System'To_Address (16#48030000#);
   SHS0_Base : constant System.Address :=
     System'To_Address (16#48034000#);
   PORT0_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   PORT1_Base : constant System.Address :=
     System'To_Address (16#40040100#);
   PORT2_Base : constant System.Address :=
     System'To_Address (16#40040200#);

end NRF_SVD;
