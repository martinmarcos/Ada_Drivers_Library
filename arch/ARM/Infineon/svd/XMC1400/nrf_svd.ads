--  This spec has been automatically generated from XMC1400.svd

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
   ERU1_Base : constant System.Address :=
     System'To_Address (16#40010630#);
   MATH_Base : constant System.Address :=
     System'To_Address (16#40030000#);
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
   LEDTS0_Base : constant System.Address :=
     System'To_Address (16#50020000#);
   LEDTS1_Base : constant System.Address :=
     System'To_Address (16#50020400#);
   LEDTS2_Base : constant System.Address :=
     System'To_Address (16#50020800#);
   USIC0_Base : constant System.Address :=
     System'To_Address (16#48000008#);
   USIC1_Base : constant System.Address :=
     System'To_Address (16#48004008#);
   USIC0_CH0_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   USIC0_CH1_Base : constant System.Address :=
     System'To_Address (16#48000200#);
   USIC1_CH0_Base : constant System.Address :=
     System'To_Address (16#48004000#);
   USIC1_CH1_Base : constant System.Address :=
     System'To_Address (16#48004200#);
   CAN_Base : constant System.Address :=
     System'To_Address (16#50040000#);
   CAN_NODE0_Base : constant System.Address :=
     System'To_Address (16#50040200#);
   CAN_NODE1_Base : constant System.Address :=
     System'To_Address (16#50040300#);
   CAN_MO_Base : constant System.Address :=
     System'To_Address (16#50041000#);
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
   COMPARATOR_Base : constant System.Address :=
     System'To_Address (16#40010500#);
   SCU_ANALOG_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   CCU40_Base : constant System.Address :=
     System'To_Address (16#48040000#);
   CCU41_Base : constant System.Address :=
     System'To_Address (16#48044000#);
   CCU40_CC40_Base : constant System.Address :=
     System'To_Address (16#48040100#);
   CCU40_CC41_Base : constant System.Address :=
     System'To_Address (16#48040200#);
   CCU40_CC42_Base : constant System.Address :=
     System'To_Address (16#48040300#);
   CCU40_CC43_Base : constant System.Address :=
     System'To_Address (16#48040400#);
   CCU41_CC40_Base : constant System.Address :=
     System'To_Address (16#48044100#);
   CCU41_CC41_Base : constant System.Address :=
     System'To_Address (16#48044200#);
   CCU41_CC42_Base : constant System.Address :=
     System'To_Address (16#48044300#);
   CCU41_CC43_Base : constant System.Address :=
     System'To_Address (16#48044400#);
   CCU80_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   CCU81_Base : constant System.Address :=
     System'To_Address (16#50004000#);
   CCU80_CC80_Base : constant System.Address :=
     System'To_Address (16#50000100#);
   CCU80_CC81_Base : constant System.Address :=
     System'To_Address (16#50000200#);
   CCU80_CC82_Base : constant System.Address :=
     System'To_Address (16#50000300#);
   CCU80_CC83_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   CCU81_CC80_Base : constant System.Address :=
     System'To_Address (16#50004100#);
   CCU81_CC81_Base : constant System.Address :=
     System'To_Address (16#50004200#);
   CCU81_CC82_Base : constant System.Address :=
     System'To_Address (16#50004300#);
   CCU81_CC83_Base : constant System.Address :=
     System'To_Address (16#50004400#);
   POSIF0_Base : constant System.Address :=
     System'To_Address (16#50010000#);
   POSIF1_Base : constant System.Address :=
     System'To_Address (16#50014000#);
   VADC_Base : constant System.Address :=
     System'To_Address (16#48030000#);
   VADC_G0_Base : constant System.Address :=
     System'To_Address (16#48030400#);
   VADC_G1_Base : constant System.Address :=
     System'To_Address (16#48030800#);
   SHS0_Base : constant System.Address :=
     System'To_Address (16#48034000#);
   BCCU0_Base : constant System.Address :=
     System'To_Address (16#50030000#);
   BCCU0_CH0_Base : constant System.Address :=
     System'To_Address (16#5003003C#);
   BCCU0_CH1_Base : constant System.Address :=
     System'To_Address (16#50030050#);
   BCCU0_CH2_Base : constant System.Address :=
     System'To_Address (16#50030064#);
   BCCU0_CH3_Base : constant System.Address :=
     System'To_Address (16#50030078#);
   BCCU0_CH4_Base : constant System.Address :=
     System'To_Address (16#5003008C#);
   BCCU0_CH5_Base : constant System.Address :=
     System'To_Address (16#500300A0#);
   BCCU0_CH6_Base : constant System.Address :=
     System'To_Address (16#500300B4#);
   BCCU0_CH7_Base : constant System.Address :=
     System'To_Address (16#500300C8#);
   BCCU0_CH8_Base : constant System.Address :=
     System'To_Address (16#500300DC#);
   BCCU0_DE0_Base : constant System.Address :=
     System'To_Address (16#5003017C#);
   BCCU0_DE1_Base : constant System.Address :=
     System'To_Address (16#50030188#);
   BCCU0_DE2_Base : constant System.Address :=
     System'To_Address (16#50030194#);
   PORT0_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   PORT1_Base : constant System.Address :=
     System'To_Address (16#40040100#);
   PORT2_Base : constant System.Address :=
     System'To_Address (16#40040200#);
   PORT3_Base : constant System.Address :=
     System'To_Address (16#40040300#);
   PORT4_Base : constant System.Address :=
     System'To_Address (16#40040400#);

end NRF_SVD;
