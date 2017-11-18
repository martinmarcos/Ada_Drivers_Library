--

--  This spec has been automatically generated from SN32F700B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash Low Power mode selection bit
   type LPCTRL_LPMODE_Field is
     (
      --  HCLK is less than or equal to 12MHz
      LPCTRL_LPMODE_Field_0,
      --  HCLK is less than or equal to 8KHz
      LPCTRL_LPMODE_Field_2,
      --  HCLK is more than 12MHz, and less than or equal to 24MHz
      LPCTRL_LPMODE_Field_3,
      --  HCLK is more than 24MHz
      LPCTRL_LPMODE_Field_13)
     with Size => 4;
   for LPCTRL_LPMODE_Field use
     (LPCTRL_LPMODE_Field_0 => 0,
      LPCTRL_LPMODE_Field_2 => 2,
      LPCTRL_LPMODE_Field_3 => 3,
      LPCTRL_LPMODE_Field_13 => 13);

   --  Offset:0x00 Flash Low Power Control Register
   type LPCTRL_Register is record
      --  Flash Low Power mode selection bit
      LPMODE        : LPCTRL_LPMODE_Field :=
                       NRF_SVD.FLASH.LPCTRL_LPMODE_Field_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPCTRL_Register use record
      LPMODE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Busy flag
   type STATUS_BUSY_Field is
     (
      --  FMC is idle
      Idle,
      --  Flash operation is in process
      Busy)
     with Size => 1;
   for STATUS_BUSY_Field use
     (Idle => 0,
      Busy => 1);

   --  Erase/Error flag
   type STATUS_ERR_Field is
     (
      --  No error
      No ERROR,
      --  The address is illegal or over page boundary
      Error)
     with Size => 1;
   for STATUS_ERR_Field use
     (No ERROR => 0,
      Error => 1);

   --  Offset:0x04 Flash Status Register
   type STATUS_Register is record
      --  Read-only. Busy flag
      BUSY          : STATUS_BUSY_Field := NRF_SVD.FLASH.Idle;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Erase/Error flag
      ERR           : STATUS_ERR_Field := NRF_SVD.FLASH.No ERROR;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      ERR           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flash program mode chosen bit
   type CTRL_PG_Field is
     (
      --  Disable Flash program mode
      Disable,
      --  Enable Flash program mode
      Enable)
     with Size => 1;
   for CTRL_PG_Field use
     (Disable => 0,
      Enable => 1);

   --  Page erase mode chosen bit
   type CTRL_PER_Field is
     (
      --  Disable page erase mode
      Disable,
      --  Enable page erase mode
      Enable)
     with Size => 1;
   for CTRL_PER_Field use
     (Disable => 0,
      Enable => 1);

   --  Mass erase mode chosen bit
   type CTRL_MER_Field is
     (
      --  Disable masse erase mode
      Disable,
      --  Enable mass erase mode
      Enable)
     with Size => 1;
   for CTRL_MER_Field use
     (Disable => 0,
      Enable => 1);

   --  Start erase/program operation
   type CTRL_START_Field is
     (
      --  Stop/finish operation
      CTRL_START_Field_0,
      --  Start erase/program operation
      CTRL_START_Field_1)
     with Size => 1;
   for CTRL_START_Field use
     (CTRL_START_Field_0 => 0,
      CTRL_START_Field_1 => 1);

   --  Checksum calculation chosen
   type CTRL_CHK_Field is
     (
      --  Disable
      Disable,
      --  Trigger checksum calculation
      Enable)
     with Size => 1;
   for CTRL_CHK_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x08 Flash Control Register
   type CTRL_Register is record
      --  Flash program mode chosen bit
      PG            : CTRL_PG_Field := NRF_SVD.FLASH.Disable;
      --  Page erase mode chosen bit
      PER           : CTRL_PER_Field := NRF_SVD.FLASH.Disable;
      --  Mass erase mode chosen bit
      MER           : CTRL_MER_Field := NRF_SVD.FLASH.Disable;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Start erase/program operation
      START         : CTRL_START_Field := NRF_SVD.FLASH.CTRL_START_Field_0;
      --  Checksum calculation chosen
      CHK           : CTRL_CHK_Field := NRF_SVD.FLASH.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      PG            at 0 range 0 .. 0;
      PER           at 0 range 1 .. 1;
      MER           at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      START         at 0 range 6 .. 6;
      CHK           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CHKSUM_UserROM_Field is HAL.UInt16;
   subtype CHKSUM_BootROM_Field is HAL.UInt16;

   --  Offset:0x14 Flash Checksum Register
   type CHKSUM_Register is record
      --  Read-only. Checksum of User ROM
      UserROM : CHKSUM_UserROM_Field;
      --  Read-only. Checksum of Boot ROM
      BootROM : CHKSUM_BootROM_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHKSUM_Register use record
      UserROM at 0 range 0 .. 15;
      BootROM at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH Memory Control Registers
   type SN_FLASH_Peripheral is record
      --  Offset:0x00 Flash Low Power Control Register
      LPCTRL : aliased LPCTRL_Register;
      --  Offset:0x04 Flash Status Register
      STATUS : aliased STATUS_Register;
      --  Offset:0x08 Flash Control Register
      CTRL   : aliased CTRL_Register;
      --  Offset:0x0C Flash Data Register
      DATA   : aliased HAL.UInt32;
      --  Offset:0x10 Flash Address Register
      ADDR   : aliased HAL.UInt32;
      --  Offset:0x14 Flash Checksum Register
      CHKSUM : aliased CHKSUM_Register;
   end record
     with Volatile;

   for SN_FLASH_Peripheral use record
      LPCTRL at 16#0# range 0 .. 31;
      STATUS at 16#4# range 0 .. 31;
      CTRL   at 16#8# range 0 .. 31;
      DATA   at 16#C# range 0 .. 31;
      ADDR   at 16#10# range 0 .. 31;
      CHKSUM at 16#14# range 0 .. 31;
   end record;

   --  FLASH Memory Control Registers
   SN_FLASH_Periph : aliased SN_FLASH_Peripheral
     with Import, Address => System'To_Address (16#40062000#);

end NRF_SVD.FLASH;
