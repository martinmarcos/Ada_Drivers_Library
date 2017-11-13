--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ARM_BPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BP_CTRL_NUM_CODE_Field is HAL.UInt4;

   --  Break Point Control Register
   type BP_CTRL_Register is record
      --  BPU is Enabled
      ENABLE       : Boolean := False;
      --  Must Write this bit to a 1 for register write to be accepted
      KEY          : Boolean := False;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Read-only. Number of breakpoint comparators
      NUM_CODE     : BP_CTRL_NUM_CODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BP_CTRL_Register use record
      ENABLE       at 0 range 0 .. 0;
      KEY          at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      NUM_CODE     at 0 range 4 .. 7;
   end record;

   subtype BP_COMP_COMP_Field is HAL.UInt27;

   --  Behavior when the COMP address is matched
   type BP_COMP0_BP_MATCH_Field is
     (
      --  No Breakpoint Matching
      BP_COMP0_BP_MATCH_Field_0,
      --  Breakpoint on lower halfword
      BP_COMP0_BP_MATCH_Field_1,
      --  Breakpoint on upper halfword
      BP_COMP0_BP_MATCH_Field_2,
      --  Breakpoint on both halfwords
      BP_COMP0_BP_MATCH_Field_3)
     with Size => 2;
   for BP_COMP0_BP_MATCH_Field use
     (BP_COMP0_BP_MATCH_Field_0 => 0,
      BP_COMP0_BP_MATCH_Field_1 => 1,
      BP_COMP0_BP_MATCH_Field_2 => 2,
      BP_COMP0_BP_MATCH_Field_3 => 3);

   --  Break Point Compare Register 0
   type BP_COMP_Register is record
      --  Comparator is enabled
      ENABLE         : Boolean := True;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#1#;
      --  Bits 28:2 of the comparison address
      COMP           : BP_COMP_COMP_Field := 16#7FFFFFF#;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Behavior when the COMP address is matched
      BP_MATCH       : BP_COMP0_BP_MATCH_Field :=
                        SAM_SVD.ARM_BPU.BP_COMP0_BP_MATCH_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BP_COMP_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP           at 0 range 2 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BP_MATCH       at 0 range 30 .. 31;
   end record;

   subtype BP_PID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype BP_PID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type BP_PID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : BP_PID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : BP_PID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BP_PID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype BP_PID1_PART_NUMBER_Field is HAL.UInt4;
   subtype BP_PID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type BP_PID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : BP_PID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Code Bits 3:0
      JEP106_ID_3_0 : BP_PID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BP_PID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype BP_PID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype BP_PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type BP_PID2_Register is record
      --  Read-only. JEP106 ID Code Bits 6:4
      JEP106_ID_6_4 : BP_PID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : BP_PID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BP_PID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype BP_PID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype BP_PID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type BP_PID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : BP_PID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : BP_PID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BP_PID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM Breakpoint Control
   type ARM_BPU0_Peripheral is record
      --  Break Point Control Register
      BP_CTRL  : aliased BP_CTRL_Register;
      --  Break Point Compare Register 0
      BP_COMP0 : aliased BP_COMP_Register;
      --  Break Point Compare Register 1
      BP_COMP1 : aliased BP_COMP_Register;
      --  Break Point Compare Register 2
      BP_COMP2 : aliased BP_COMP_Register;
      --  Break Point Compare Register 3
      BP_COMP3 : aliased BP_COMP_Register;
      --  Peripheral ID Register 4
      BP_PID4  : aliased BP_PID4_Register;
      --  Peripheral ID Register 0
      BP_PID0  : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      BP_PID1  : aliased BP_PID1_Register;
      --  Peripheral ID Register 2
      BP_PID2  : aliased BP_PID2_Register;
      --  Peripheral ID Register 3
      BP_PID3  : aliased BP_PID3_Register;
      --  Component ID Register 0
      BP_CID0  : aliased HAL.UInt8;
      --  Component ID Register 1
      BP_CID1  : aliased HAL.UInt8;
      --  Component ID Register 2
      BP_CID2  : aliased HAL.UInt8;
      --  Component ID Register 3
      BP_CID3  : aliased HAL.UInt8;
   end record
     with Volatile;

   for ARM_BPU0_Peripheral use record
      BP_CTRL  at 16#0# range 0 .. 7;
      BP_COMP0 at 16#8# range 0 .. 31;
      BP_COMP1 at 16#C# range 0 .. 31;
      BP_COMP2 at 16#10# range 0 .. 31;
      BP_COMP3 at 16#14# range 0 .. 31;
      BP_PID4  at 16#FD0# range 0 .. 7;
      BP_PID0  at 16#FE0# range 0 .. 7;
      BP_PID1  at 16#FE4# range 0 .. 7;
      BP_PID2  at 16#FE8# range 0 .. 7;
      BP_PID3  at 16#FEC# range 0 .. 7;
      BP_CID0  at 16#FF0# range 0 .. 7;
      BP_CID1  at 16#FF4# range 0 .. 7;
      BP_CID2  at 16#FF8# range 0 .. 7;
      BP_CID3  at 16#FFC# range 0 .. 7;
   end record;

   --  ARM Breakpoint Control
   ARM_BPU0_Periph : aliased ARM_BPU0_Peripheral
     with Import, Address => System'To_Address (16#E0002000#);

end SAM_SVD.ARM_BPU;
