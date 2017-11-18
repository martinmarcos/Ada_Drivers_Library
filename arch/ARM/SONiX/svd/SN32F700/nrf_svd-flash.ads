--

--  This spec has been automatically generated from SN32F700.svd

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

   --  Busy flag
   type STATUS_BUSY_Field is
     (
      --  Flash operation is stopped.
      Idle,
      --  Flash operation is in process
      Busy)
     with Size => 1;
   for STATUS_BUSY_Field use
     (Idle => 0,
      Busy => 1);

   --  Program error flag
   type STATUS_PGERR_Field is
     (
      --  No error
      No ERROR,
      --  The address to be programmed contains a value different from 0xFFFF
      Program ERROR)
     with Size => 1;
   for STATUS_PGERR_Field use
     (No ERROR => 0,
      Program ERROR => 1);

   --  End of process flag
   type STATUS_EOP_Field is
     (
      --  Flash operation is not completed
      Busy,
      --  Flash operation is completed
      End_k)
     with Size => 1;
   for STATUS_EOP_Field use
     (Busy => 0,
      End_k => 1);

   --  Offset:0x04 Flash Status Register
   type STATUS_Register is record
      --  Read-only. Busy flag
      BUSY          : STATUS_BUSY_Field := NRF_SVD.FLASH.Idle;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Program error flag
      PGERR         : STATUS_PGERR_Field := NRF_SVD.FLASH.No ERROR;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  End of process flag
      EOP           : STATUS_EOP_Field := NRF_SVD.FLASH.End_k;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PGERR         at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      EOP           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Flash program choosen
   type CTRL_PG_Field is
     (
      --  Not choose Flash program operation.
      Not CHOSEN,
      --  Choose Flash program operation.
      Choose Flash PROGRAM OPERATION)
     with Size => 1;
   for CTRL_PG_Field use
     (Not CHOSEN => 0,
      Choose Flash PROGRAM OPERATION => 1);

   --  Page erase choosen
   type CTRL_PER_Field is
     (
      --  Not choose page erase operation.
      Not CHOSEN,
      --  Choose page erase operation.
      Choose PAGE ERASE OPERATION)
     with Size => 1;
   for CTRL_PER_Field use
     (Not CHOSEN => 0,
      Choose PAGE ERASE OPERATION => 1);

   --  Start erase operation
   type CTRL_STARTE_Field is
     (
      --  Erase operation is finished.
      Stop/Finish,
      --  Start erase operation
      Start)
     with Size => 1;
   for CTRL_STARTE_Field use
     (Stop/Finish => 0,
      Start => 1);

   --  Offset:0x08 Flash Control Register
   type CTRL_Register is record
      --  Flash program choosen
      PG            : CTRL_PG_Field := NRF_SVD.FLASH.Not CHOSEN;
      --  Page erase choosen
      PER           : CTRL_PER_Field := NRF_SVD.FLASH.Not CHOSEN;
      --  unspecified
      Reserved_2_5  : HAL.UInt4 := 16#0#;
      --  Start erase operation
      STARTE        : CTRL_STARTE_Field := NRF_SVD.FLASH.Stop/Finish;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      PG            at 0 range 0 .. 0;
      PER           at 0 range 1 .. 1;
      Reserved_2_5  at 0 range 2 .. 5;
      STARTE        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH Memory Control Registers
   type SN_FLASH_Peripheral is record
      --  Offset:0x04 Flash Status Register
      STATUS : aliased STATUS_Register;
      --  Offset:0x08 Flash Control Register
      CTRL   : aliased CTRL_Register;
      --  Offset:0x0C Flash Data Register
      DATA   : aliased HAL.UInt32;
      --  Offset:0x10 Flash Address Register
      ADDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for SN_FLASH_Peripheral use record
      STATUS at 16#4# range 0 .. 31;
      CTRL   at 16#8# range 0 .. 31;
      DATA   at 16#C# range 0 .. 31;
      ADDR   at 16#10# range 0 .. 31;
   end record;

   --  FLASH Memory Control Registers
   SN_FLASH_Periph : aliased SN_FLASH_Peripheral
     with Import, Address => System'To_Address (16#40062000#);

end NRF_SVD.FLASH;
