--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11G18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype PID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type PID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : PID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : PID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype PID1_PART_NUMBER_Field is HAL.UInt4;
   subtype PID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type PID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : PID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Bits 3:0
      JEP106_ID_3_0 : PID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype PID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type PID2_Register is record
      --  Read-only. JEP106 ID Bits 6:4
      JEP106_ID_6_4 : PID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : PID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype PID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype PID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type PID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : PID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : PID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO Controller
   type GPIO_Peripheral is record
      --  Data Value
      DATA           : aliased HAL.UInt16;
      --  Data Output Register Value
      DATAOUT        : aliased HAL.UInt16;
      --  Output Enable Set
      OUTENSET       : aliased HAL.UInt16;
      --  Output Enable Clear
      OUTENCLR       : aliased HAL.UInt16;
      --  Interrupt Enable Set
      INTENSET       : aliased HAL.UInt16;
      --  Interrupt Enable Clear
      INTENCLR       : aliased HAL.UInt16;
      --  Interrupt Type Set
      INTTYPESET     : aliased HAL.UInt16;
      --  Interrupt Type Clear
      INTTYPECLR     : aliased HAL.UInt16;
      --  Polarity-level, edge IRQ Configuration
      INTPOLSET      : aliased HAL.UInt16;
      --  IRQ Configuration Clear
      INTPOLCLR      : aliased HAL.UInt16;
      --  Interrupt Status
      INTSTATUSCLEAR : aliased HAL.UInt16;
      --  Peripheral ID Register 4
      PID4           : aliased PID4_Register;
      --  Peripheral ID Register 5
      PID5           : aliased HAL.UInt8;
      --  Peripheral ID Register 6
      PID6           : aliased HAL.UInt8;
      --  Peripheral ID Register 7
      PID7           : aliased HAL.UInt8;
      --  Peripheral ID Register 0
      PID0           : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      PID1           : aliased PID1_Register;
      --  Peripheral ID Register 2
      PID2           : aliased PID2_Register;
      --  Peripheral ID Register 3
      PID3           : aliased PID3_Register;
      --  Component ID Register 0
      CID0           : aliased HAL.UInt8;
      --  Component ID Register 1
      CID1           : aliased HAL.UInt8;
      --  Component ID Register 2
      CID2           : aliased HAL.UInt8;
      --  Component ID Register 3
      CID3           : aliased HAL.UInt8;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      DATA           at 16#0# range 0 .. 15;
      DATAOUT        at 16#4# range 0 .. 15;
      OUTENSET       at 16#10# range 0 .. 15;
      OUTENCLR       at 16#14# range 0 .. 15;
      INTENSET       at 16#20# range 0 .. 15;
      INTENCLR       at 16#24# range 0 .. 15;
      INTTYPESET     at 16#28# range 0 .. 15;
      INTTYPECLR     at 16#2C# range 0 .. 15;
      INTPOLSET      at 16#30# range 0 .. 15;
      INTPOLCLR      at 16#34# range 0 .. 15;
      INTSTATUSCLEAR at 16#38# range 0 .. 15;
      PID4           at 16#FD0# range 0 .. 7;
      PID5           at 16#FD4# range 0 .. 7;
      PID6           at 16#FD8# range 0 .. 7;
      PID7           at 16#FDC# range 0 .. 7;
      PID0           at 16#FE0# range 0 .. 7;
      PID1           at 16#FE4# range 0 .. 7;
      PID2           at 16#FE8# range 0 .. 7;
      PID3           at 16#FEC# range 0 .. 7;
      CID0           at 16#FF0# range 0 .. 7;
      CID1           at 16#FF4# range 0 .. 7;
      CID2           at 16#FF8# range 0 .. 7;
      CID3           at 16#FFC# range 0 .. 7;
   end record;

   --  GPIO Controller
   GPIO0_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

   --  GPIO Controller
   GPIO1_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40011000#);

   --  GPIO Controller
   GPIO2_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40013000#);

end SAM_SVD.GPIO;
