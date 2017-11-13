--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11G18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ARM_ROM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ROM_PID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype ROM_PID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type ROM_PID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : ROM_PID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : ROM_PID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ROM_PID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype ROM_PID1_PART_NUMBER_Field is HAL.UInt4;
   subtype ROM_PID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type ROM_PID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : ROM_PID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Code Bits 6:4
      JEP106_ID_3_0 : ROM_PID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ROM_PID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype ROM_PID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype ROM_PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type ROM_PID2_Register is record
      --  Read-only. JEP106 ID Code Bits 6:4
      JEP106_ID_6_4 : ROM_PID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : ROM_PID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ROM_PID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype ROM_PID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype ROM_PID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type ROM_PID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : ROM_PID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : ROM_PID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ROM_PID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM ROM
   type ARM_ROM0_Peripheral is record
      --  Points to the SCS at 0xE000E000
      ROM_SCS  : aliased HAL.UInt32;
      --  Points to the DWT at 0xE0001000
      ROM_DWT  : aliased HAL.UInt32;
      --  Points to the BPU at 0xE0002000
      ROM_BPU  : aliased HAL.UInt32;
      --  End of Table Marker
      ROM_EOT  : aliased HAL.UInt32;
      --  System Memory accessible through DAP
      ROM_CSMT : aliased HAL.UInt8;
      --  Peripheral ID Register 4
      ROM_PID4 : aliased ROM_PID4_Register;
      --  Peripheral ID Register 0
      ROM_PID0 : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      ROM_PID1 : aliased ROM_PID1_Register;
      --  Peripheral ID Register 2
      ROM_PID2 : aliased ROM_PID2_Register;
      --  Peripheral ID Register 3
      ROM_PID3 : aliased ROM_PID3_Register;
      --  Component ID Register 0
      ROM_CID0 : aliased HAL.UInt8;
      --  Component ID Register 1
      ROM_CID1 : aliased HAL.UInt8;
      --  Component ID Register 2
      ROM_CID2 : aliased HAL.UInt8;
      --  Component ID Register 3
      ROM_CID3 : aliased HAL.UInt8;
   end record
     with Volatile;

   for ARM_ROM0_Peripheral use record
      ROM_SCS  at 16#0# range 0 .. 31;
      ROM_DWT  at 16#10# range 0 .. 31;
      ROM_BPU  at 16#20# range 0 .. 31;
      ROM_EOT  at 16#30# range 0 .. 31;
      ROM_CSMT at 16#FCC# range 0 .. 7;
      ROM_PID4 at 16#FD0# range 0 .. 7;
      ROM_PID0 at 16#FE0# range 0 .. 7;
      ROM_PID1 at 16#FE4# range 0 .. 7;
      ROM_PID2 at 16#FE8# range 0 .. 7;
      ROM_PID3 at 16#FEC# range 0 .. 7;
      ROM_CID0 at 16#FF0# range 0 .. 7;
      ROM_CID1 at 16#FF4# range 0 .. 7;
      ROM_CID2 at 16#FF8# range 0 .. 7;
      ROM_CID3 at 16#FFC# range 0 .. 7;
   end record;

   --  ARM ROM
   ARM_ROM0_Periph : aliased ARM_ROM0_Peripheral
     with Import, Address => System'To_Address (16#E00FF000#);

end SAM_SVD.ARM_ROM;
