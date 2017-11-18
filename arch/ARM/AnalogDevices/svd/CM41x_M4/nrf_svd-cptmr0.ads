--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CPTMR0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RUN_CPTnn_Field is HAL.UInt3;

   --  Run Register
   type RUN_Register is record
      --  Run
      CPTnn         : RUN_CPTnn_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RUN_SET_CPTnn_Field is HAL.UInt3;

   --  Run Set Register
   type RUN_SET_Register is record
      --  Run
      CPTnn         : RUN_SET_CPTnn_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_SET_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RUN_CLR_CPTnn_Field is HAL.UInt3;

   --  Run Clear Register
   type RUN_CLR_Register is record
      --  Run
      CPTnn         : RUN_CLR_CPTnn_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_CLR_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DATA_IMSK_CPTnn_Field is HAL.UInt3;

   --  Data Interrupt Mask Register
   type DATA_IMSK_Register is record
      --  Data Interrupt Mask
      CPTnn         : DATA_IMSK_CPTnn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_IMSK_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DATA_IMSK_SET_CPTnn_Field is HAL.UInt3;

   --  Data Interrupt Mask Set Register
   type DATA_IMSK_SET_Register is record
      --  Data Interrupt Mask
      CPTnn         : DATA_IMSK_SET_CPTnn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_IMSK_SET_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DATA_IMSK_CLR_CPTnn_Field is HAL.UInt3;

   --  Data Interrupt Mask Clear Register
   type DATA_IMSK_CLR_Register is record
      --  Data Interrupt Mask
      CPTnn         : DATA_IMSK_CLR_CPTnn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_IMSK_CLR_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STAT_IMSK_CPTnn_Field is HAL.UInt3;

   --  Status Interrupt Mask Register
   type STAT_IMSK_Register is record
      --  Status Interrupt Mask
      CPTnn         : STAT_IMSK_CPTnn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_IMSK_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STAT_IMSK_SET_CPTnn_Field is HAL.UInt3;

   --  Status Interrupt Mask Set Register
   type STAT_IMSK_SET_Register is record
      --  Status Interrupt Mask
      CPTnn         : STAT_IMSK_SET_CPTnn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_IMSK_SET_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STAT_IMSK_CLR_CPTnn_Field is HAL.UInt3;

   --  Status Interrupt Mask Clear Register
   type STAT_IMSK_CLR_Register is record
      --  Status Interrupt Mask
      CPTnn         : STAT_IMSK_CLR_CPTnn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_IMSK_CLR_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DATA_ILAT_CPTnn_Field is HAL.UInt3;

   --  Data Interrupt Latch Status Register
   type DATA_ILAT_Register is record
      --  Read-only. Data Interrupt Latch
      CPTnn         : DATA_ILAT_CPTnn_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_ILAT_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STAT_ILAT_CPTnn_Field is HAL.UInt3;

   --  Interrupt Latch Status Register
   type STAT_ILAT_Register is record
      --  Read-only. Counter Overflow
      CPTnn         : STAT_ILAT_CPTnn_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_ILAT_Register use record
      CPTnn         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- CT cluster's Registers --
   ----------------------------

   --  Configuration Register
   type CFG_CT_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Input Polarity
      TINPOL        : Boolean := False;
      --  Trigger Polarity
      TRIGPOL       : Boolean := False;
      --  Timer Input Enable
      TIN_INEN      : Boolean := False;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Trigger Input Enable
      TRIG_INEN     : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_CT_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      TINPOL        at 0 range 2 .. 2;
      TRIGPOL       at 0 range 3 .. 3;
      TIN_INEN      at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TRIG_INEN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Capture Timer
   type CT_Cluster is record
      --  Configuration Register
      CFG : aliased CFG_CT_Register;
      --  Counter Register
      CNT : aliased HAL.UInt32;
      --  On-time Capture Register
      TON : aliased HAL.UInt32;
   end record
     with Volatile, Size => 1024;

   for CT_Cluster use record
      CFG at 16#0# range 0 .. 31;
      CNT at 16#4# range 0 .. 31;
      TON at 16#8# range 0 .. 31;
   end record;

   --  Capture Timer
   type CT_Clusters is array (0 .. 2) of CT_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Capture Timer
   type CPTMR0_Peripheral is record
      --  Run Register
      RUN           : aliased RUN_Register;
      --  Run Set Register
      RUN_SET       : aliased RUN_SET_Register;
      --  Run Clear Register
      RUN_CLR       : aliased RUN_CLR_Register;
      --  Data Interrupt Mask Register
      DATA_IMSK     : aliased DATA_IMSK_Register;
      --  Data Interrupt Mask Set Register
      DATA_IMSK_SET : aliased DATA_IMSK_SET_Register;
      --  Data Interrupt Mask Clear Register
      DATA_IMSK_CLR : aliased DATA_IMSK_CLR_Register;
      --  Status Interrupt Mask Register
      STAT_IMSK     : aliased STAT_IMSK_Register;
      --  Status Interrupt Mask Set Register
      STAT_IMSK_SET : aliased STAT_IMSK_SET_Register;
      --  Status Interrupt Mask Clear Register
      STAT_IMSK_CLR : aliased STAT_IMSK_CLR_Register;
      --  Data Interrupt Latch Status Register
      DATA_ILAT     : aliased DATA_ILAT_Register;
      --  Interrupt Latch Status Register
      STAT_ILAT     : aliased STAT_ILAT_Register;
      --  Capture Timer
      CT            : aliased CT_Clusters;
   end record
     with Volatile;

   for CPTMR0_Peripheral use record
      RUN           at 16#4# range 0 .. 31;
      RUN_SET       at 16#8# range 0 .. 31;
      RUN_CLR       at 16#C# range 0 .. 31;
      DATA_IMSK     at 16#10# range 0 .. 31;
      DATA_IMSK_SET at 16#14# range 0 .. 31;
      DATA_IMSK_CLR at 16#18# range 0 .. 31;
      STAT_IMSK     at 16#1C# range 0 .. 31;
      STAT_IMSK_SET at 16#20# range 0 .. 31;
      STAT_IMSK_CLR at 16#24# range 0 .. 31;
      DATA_ILAT     at 16#28# range 0 .. 31;
      STAT_ILAT     at 16#2C# range 0 .. 31;
      CT            at 16#800# range 0 .. 3071;
   end record;

   --  Capture Timer
   CPTMR0_Periph : aliased CPTMR0_Peripheral
     with Import, Address => System'To_Address (16#40025000#);

end NRF_SVD.CPTMR0;
