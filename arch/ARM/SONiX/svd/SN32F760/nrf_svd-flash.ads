--

--  This spec has been automatically generated from SN32F760.svd

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

   --  Flash Low Power mode enable bit
   type LPCTRL_LPMODE_Field is
     (
      --  Disable
      LPCTRL_LPMODE_Field_0,
      --  Enable Slow mode power saving when HCLK=ILRC=32KHz
      LPCTRL_LPMODE_Field_2)
     with Size => 2;
   for LPCTRL_LPMODE_Field use
     (LPCTRL_LPMODE_Field_0 => 0,
      LPCTRL_LPMODE_Field_2 => 2);

   --  Offset:0x00 Flash Low Power Control Register
   type LPCTRL_Register is record
      --  Flash Low Power mode enable bit
      LPMODE        : LPCTRL_LPMODE_Field :=
                       NRF_SVD.FLASH.LPCTRL_LPMODE_Field_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPCTRL_Register use record
      LPMODE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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

   --  Programming error flag
   type STATUS_PGERR_Field is
     (
      --  No error
      No ERROR,
      --  The address to be programmed is illegal or contains a value different
      --  from 0xFFFFFFFF
      Error)
     with Size => 1;
   for STATUS_PGERR_Field use
     (No ERROR => 0,
      Error => 1);

   --  Offset:0x04 Flash Status Register
   type STATUS_Register is record
      --  Read-only. Busy flag
      BUSY          : STATUS_BUSY_Field := NRF_SVD.FLASH.Idle;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Programming error flag
      PGERR         : STATUS_PGERR_Field := NRF_SVD.FLASH.No ERROR;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PGERR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flash program enable bit
   type CTRL_PG_Field is
     (
      --  Disable Flash program operation
      CTRL_PG_Field_0,
      --  Enable Flash program operation
      CTRL_PG_Field_1)
     with Size => 1;
   for CTRL_PG_Field use
     (CTRL_PG_Field_0 => 0,
      CTRL_PG_Field_1 => 1);

   --  Page erase enable bit
   type CTRL_PER_Field is
     (
      --  Disable page erase operation
      CTRL_PER_Field_0,
      --  Enable page erase operation
      CTRL_PER_Field_1)
     with Size => 1;
   for CTRL_PER_Field use
     (CTRL_PER_Field_0 => 0,
      CTRL_PER_Field_1 => 1);

   --  Start erase enable bit
   type CTRL_STARTE_Field is
     (
      --  Erase operation is stopped/finished
      CTRL_STARTE_Field_0,
      --  Start erase operation
      CTRL_STARTE_Field_1)
     with Size => 1;
   for CTRL_STARTE_Field use
     (CTRL_STARTE_Field_0 => 0,
      CTRL_STARTE_Field_1 => 1);

   --  Checksum calculation choosen
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
      --  Flash program enable bit
      PG            : CTRL_PG_Field := NRF_SVD.FLASH.CTRL_PG_Field_0;
      --  Page erase enable bit
      PER           : CTRL_PER_Field := NRF_SVD.FLASH.CTRL_PER_Field_0;
      --  unspecified
      Reserved_2_5  : HAL.UInt4 := 16#0#;
      --  Start erase enable bit
      STARTE        : CTRL_STARTE_Field := NRF_SVD.FLASH.CTRL_STARTE_Field_0;
      --  Checksum calculation choosen
      CHK           : CTRL_CHK_Field := NRF_SVD.FLASH.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      PG            at 0 range 0 .. 0;
      PER           at 0 range 1 .. 1;
      Reserved_2_5  at 0 range 2 .. 5;
      STARTE        at 0 range 6 .. 6;
      CHK           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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
      CHKSUM : aliased HAL.UInt32;
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
