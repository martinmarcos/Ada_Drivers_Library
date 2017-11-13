--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ARM_DWT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DWT_CTRL_NUMCOMP_Field is HAL.UInt4;

   --  Control Register
   type DWT_CTRL_Register is record
      --  unspecified
      Reserved_0_27 : HAL.UInt28;
      --  Read-only. Number of comparators available
      NUMCOMP       : DWT_CTRL_NUMCOMP_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CTRL_Register use record
      Reserved_0_27 at 0 range 0 .. 27;
      NUMCOMP       at 0 range 28 .. 31;
   end record;

   subtype DWT_MASK_MASK_VALUE_Field is HAL.UInt5;

   --  DWT Mask Register 0
   type DWT_MASK_Register is record
      --  Size of the ignore mask applied to address range matching
      MASK_VALUE   : DWT_MASK_MASK_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DWT_MASK_Register use record
      MASK_VALUE   at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Select action on comparator match
   type DWT_FUNCTION0_FUNCTION_Field is
     (
      --  Disabled
      DWT_FUNCTION0_FUNCTION_Field_0,
      --  PC Watchpoint Event (Instruction)
      DWT_FUNCTION0_FUNCTION_Field_4,
      --  Watchpoint Event Read Only (Data)
      DWT_FUNCTION0_FUNCTION_Field_5,
      --  Watchpoint Event Write Only (Data)
      DWT_FUNCTION0_FUNCTION_Field_6,
      --  Watchpoing Event Write-Read (Data)
      DWT_FUNCTION0_FUNCTION_Field_7)
     with Size => 4;
   for DWT_FUNCTION0_FUNCTION_Field use
     (DWT_FUNCTION0_FUNCTION_Field_0 => 0,
      DWT_FUNCTION0_FUNCTION_Field_4 => 4,
      DWT_FUNCTION0_FUNCTION_Field_5 => 5,
      DWT_FUNCTION0_FUNCTION_Field_6 => 6,
      DWT_FUNCTION0_FUNCTION_Field_7 => 7);

   --  DWT Function Register 0
   type DWT_FUNCTION_Register is record
      --  Select action on comparator match
      FUNCTION_k     : DWT_FUNCTION0_FUNCTION_Field :=
                        SAM_SVD.ARM_DWT.DWT_FUNCTION0_FUNCTION_Field_0;
      --  unspecified
      Reserved_4_23  : HAL.UInt20 := 16#0#;
      --  Read-only. Comparator Match
      MATCHED        : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_FUNCTION_Register use record
      FUNCTION_k     at 0 range 0 .. 3;
      Reserved_4_23  at 0 range 4 .. 23;
      MATCHED        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DWT_PID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype DWT_PID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type DWT_PID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : DWT_PID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : DWT_PID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DWT_PID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype DWT_PID1_PART_NUMBER_Field is HAL.UInt4;
   subtype DWT_PID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type DWT_PID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : DWT_PID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Code Bits 3:0
      JEP106_ID_3_0 : DWT_PID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DWT_PID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype DWT_PID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype DWT_PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type DWT_PID2_Register is record
      --  Read-only. JEP106 ID Code Bits 6:4
      JEP106_ID_6_4 : DWT_PID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : DWT_PID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DWT_PID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype DWT_PID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype DWT_PID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type DWT_PID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : DWT_PID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : DWT_PID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DWT_PID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM DWT Control
   type ARM_DWT0_Peripheral is record
      --  Control Register
      DWT_CTRL      : aliased DWT_CTRL_Register;
      --  Program Counter Sample Register
      DWT_PCSR      : aliased HAL.UInt32;
      --  DWT Compare Register 0
      DWT_COMP0     : aliased HAL.UInt32;
      --  DWT Mask Register 0
      DWT_MASK0     : aliased DWT_MASK_Register;
      --  DWT Function Register 0
      DWT_FUNCTION0 : aliased DWT_FUNCTION_Register;
      --  DWT Compare Register 1
      DWT_COMP1     : aliased HAL.UInt32;
      --  DWT Mask Register 1
      DWT_MASK1     : aliased DWT_MASK_Register;
      --  DWT Function Register 1
      DWT_FUNCTION1 : aliased DWT_FUNCTION_Register;
      --  Peripheral ID Register 4
      DWT_PID4      : aliased DWT_PID4_Register;
      --  Peripheral ID Register 0
      DWT_PID0      : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      DWT_PID1      : aliased DWT_PID1_Register;
      --  Peripheral ID Register 2
      DWT_PID2      : aliased DWT_PID2_Register;
      --  Peripheral ID Register 3
      DWT_PID3      : aliased DWT_PID3_Register;
      --  Component ID Register 0
      DWT_CID0      : aliased HAL.UInt8;
      --  Component ID Register 1
      DWT_CID1      : aliased HAL.UInt8;
      --  Component ID Register 2
      DWT_CID2      : aliased HAL.UInt8;
      --  Component ID Register 3
      DWT_CID3      : aliased HAL.UInt8;
   end record
     with Volatile;

   for ARM_DWT0_Peripheral use record
      DWT_CTRL      at 16#0# range 0 .. 31;
      DWT_PCSR      at 16#1C# range 0 .. 31;
      DWT_COMP0     at 16#20# range 0 .. 31;
      DWT_MASK0     at 16#24# range 0 .. 7;
      DWT_FUNCTION0 at 16#28# range 0 .. 31;
      DWT_COMP1     at 16#30# range 0 .. 31;
      DWT_MASK1     at 16#34# range 0 .. 7;
      DWT_FUNCTION1 at 16#38# range 0 .. 31;
      DWT_PID4      at 16#FD0# range 0 .. 7;
      DWT_PID0      at 16#FE0# range 0 .. 7;
      DWT_PID1      at 16#FE4# range 0 .. 7;
      DWT_PID2      at 16#FE8# range 0 .. 7;
      DWT_PID3      at 16#FEC# range 0 .. 7;
      DWT_CID0      at 16#FF0# range 0 .. 7;
      DWT_CID1      at 16#FF4# range 0 .. 7;
      DWT_CID2      at 16#FF8# range 0 .. 7;
      DWT_CID3      at 16#FFC# range 0 .. 7;
   end record;

   --  ARM DWT Control
   ARM_DWT0_Periph : aliased ARM_DWT0_Peripheral
     with Import, Address => System'To_Address (16#E0001000#);

end SAM_SVD.ARM_DWT;
