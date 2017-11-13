--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Watchdog Control Register
   type WDOGCONTROL_Register is record
      --  Active High Enable Interrupt Event
      INTEN        : Boolean := False;
      --  Active High Enable Watchdog Reset Output
      RESEN        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGCONTROL_Register use record
      INTEN        at 0 range 0 .. 0;
      RESEN        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype WDOGLOCK_ENABLE_REGISTER_WRITES_Field is HAL.UInt31;

   --  Watchdog Lock Register (Write 0x1ACCE551 to enable write access to all
   --  other registers)
   type WDOGLOCK_Register is record
      --  Read back of 1 indicates that write access is enabled
      ENABLE_STATUS          : Boolean := False;
      --  Read back all 0s, write 0x1ACCE551 to enable write access to all
      --  other registers
      ENABLE_REGISTER_WRITES : WDOGLOCK_ENABLE_REGISTER_WRITES_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDOGLOCK_Register use record
      ENABLE_STATUS          at 0 range 0 .. 0;
      ENABLE_REGISTER_WRITES at 0 range 1 .. 31;
   end record;

   --  Watchdog Integration Test Control Register
   type WDOGITCR_Register is record
      --  Set HIGH to place watchdog into integration test mode
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGITCR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Watchdog Integration Test Output Set Register
   type WDOGITOP_Register is record
      --  Value output on WDOGRES when in Integration Test Mode
      WDOGRES_VALUE : Boolean := False;
      --  Value output on WDOGINT when in Integration Test Mode
      WDOGINT_VALUE : Boolean := False;
      --  unspecified
      Reserved_2_7  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGITOP_Register use record
      WDOGRES_VALUE at 0 range 0 .. 0;
      WDOGINT_VALUE at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
   end record;

   subtype WDOGPERIPHID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype WDOGPERIPHID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type WDOGPERIPHID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : WDOGPERIPHID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : WDOGPERIPHID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGPERIPHID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype WDOGPERIPHID1_PART_NUMBER_Field is HAL.UInt4;
   subtype WDOGPERIPHID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type WDOGPERIPHID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : WDOGPERIPHID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Bits 3:0
      JEP106_ID_3_0 : WDOGPERIPHID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGPERIPHID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype WDOGPERIPHID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype WDOGPERIPHID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type WDOGPERIPHID2_Register is record
      --  Read-only. JEP106 ID Bits 6:4
      JEP106_ID_6_4 : WDOGPERIPHID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : WDOGPERIPHID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGPERIPHID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype WDOGPERIPHID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype WDOGPERIPHID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type WDOGPERIPHID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : WDOGPERIPHID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : WDOGPERIPHID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOGPERIPHID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog0 Timer
   type WDT_Peripheral is record
      --  Watchdog Load Register
      WDOGLOAD      : aliased HAL.UInt32;
      --  Watchdog Value Register
      WDOGVALUE     : aliased HAL.UInt32;
      --  Watchdog Control Register
      WDOGCONTROL   : aliased WDOGCONTROL_Register;
      --  Watchdog Clear Interrupt Register
      WDOGINTCLR    : aliased HAL.UInt8;
      --  Watchdog Raw Interrupt Status Register
      WDOGRIS       : aliased HAL.UInt8;
      --  Watchdog Interrupt Status Register
      WDOGMIS       : aliased HAL.UInt8;
      --  Watchdog Lock Register (Write 0x1ACCE551 to enable write access to
      --  all other registers)
      WDOGLOCK      : aliased WDOGLOCK_Register;
      --  Watchdog Integration Test Control Register
      WDOGITCR      : aliased WDOGITCR_Register;
      --  Watchdog Integration Test Output Set Register
      WDOGITOP      : aliased WDOGITOP_Register;
      --  Peripheral ID Register 4
      WDOGPERIPHID4 : aliased WDOGPERIPHID4_Register;
      --  Peripheral ID Register 5
      WDOGPERIPHID5 : aliased HAL.UInt8;
      --  Peripheral ID Register 6
      WDOGPERIPHID6 : aliased HAL.UInt8;
      --  Peripheral ID Register 7
      WDOGPERIPHID7 : aliased HAL.UInt8;
      --  Peripheral ID Register 0
      WDOGPERIPHID0 : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      WDOGPERIPHID1 : aliased WDOGPERIPHID1_Register;
      --  Peripheral ID Register 2
      WDOGPERIPHID2 : aliased WDOGPERIPHID2_Register;
      --  Peripheral ID Register 3
      WDOGPERIPHID3 : aliased WDOGPERIPHID3_Register;
      --  Component ID Register 0
      WDOGPCELLID0  : aliased HAL.UInt8;
      --  Component ID Register 1
      WDOGPCELLID1  : aliased HAL.UInt8;
      --  Component ID Register 2
      WDOGPCELLID2  : aliased HAL.UInt8;
      --  Component ID Register 3
      WDOGPCELLID3  : aliased HAL.UInt8;
   end record
     with Volatile;

   for WDT_Peripheral use record
      WDOGLOAD      at 16#0# range 0 .. 31;
      WDOGVALUE     at 16#4# range 0 .. 31;
      WDOGCONTROL   at 16#8# range 0 .. 7;
      WDOGINTCLR    at 16#C# range 0 .. 7;
      WDOGRIS       at 16#10# range 0 .. 7;
      WDOGMIS       at 16#14# range 0 .. 7;
      WDOGLOCK      at 16#C00# range 0 .. 31;
      WDOGITCR      at 16#F00# range 0 .. 7;
      WDOGITOP      at 16#F04# range 0 .. 7;
      WDOGPERIPHID4 at 16#FD0# range 0 .. 7;
      WDOGPERIPHID5 at 16#FD4# range 0 .. 7;
      WDOGPERIPHID6 at 16#FD8# range 0 .. 7;
      WDOGPERIPHID7 at 16#FDC# range 0 .. 7;
      WDOGPERIPHID0 at 16#FE0# range 0 .. 7;
      WDOGPERIPHID1 at 16#FE4# range 0 .. 7;
      WDOGPERIPHID2 at 16#FE8# range 0 .. 7;
      WDOGPERIPHID3 at 16#FEC# range 0 .. 7;
      WDOGPCELLID0  at 16#FF0# range 0 .. 7;
      WDOGPCELLID1  at 16#FF4# range 0 .. 7;
      WDOGPCELLID2  at 16#FF8# range 0 .. 7;
      WDOGPCELLID3  at 16#FFC# range 0 .. 7;
   end record;

   --  Watchdog0 Timer
   WDT0_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#40008000#);

   --  Watchdog0 Timer
   WDT1_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#40009000#);

end SAM_SVD.WDT;
