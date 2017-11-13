--  This spec has been automatically generated from STM32F102.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DBG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDCODE_DEV_ID_Field is HAL.UInt12;
   subtype IDCODE_REV_ID_Field is HAL.UInt16;

   --  DBGMCU_IDCODE
   type IDCODE_Register is record
      --  Read-only. DEV_ID
      DEV_ID         : IDCODE_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. REV_ID
      REV_ID         : IDCODE_REV_ID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDCODE_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      REV_ID         at 0 range 16 .. 31;
   end record;

   subtype CR_TRACE_MODE_Field is HAL.UInt2;

   --  DBGMCU_CR
   type CR_Register is record
      --  DBG_SLEEP
      DBG_SLEEP              : Boolean := False;
      --  DBG_STOP
      DBG_STOP               : Boolean := False;
      --  DBG_STANDBY
      DBG_STANDBY            : Boolean := False;
      --  unspecified
      Reserved_3_4           : HAL.UInt2 := 16#0#;
      --  TRACE_IOEN
      TRACE_IOEN             : Boolean := False;
      --  TRACE_MODE
      TRACE_MODE             : CR_TRACE_MODE_Field := 16#0#;
      --  DBG_IWDG_STOP
      DBG_IWDG_STOP          : Boolean := False;
      --  DBG_WWDG_STOP
      DBG_WWDG_STOP          : Boolean := False;
      --  unspecified
      Reserved_10_10         : HAL.Bit := 16#0#;
      --  DBG_TIM2_STOP
      DBG_TIM2_STOP          : Boolean := False;
      --  DBG_TIM3_STOP
      DBG_TIM3_STOP          : Boolean := False;
      --  unspecified
      Reserved_13_14         : HAL.UInt2 := 16#0#;
      --  DBG_I2C1_SMBUS_TIMEOUT
      DBG_I2C1_SMBUS_TIMEOUT : Boolean := False;
      --  unspecified
      Reserved_16_31         : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      DBG_SLEEP              at 0 range 0 .. 0;
      DBG_STOP               at 0 range 1 .. 1;
      DBG_STANDBY            at 0 range 2 .. 2;
      Reserved_3_4           at 0 range 3 .. 4;
      TRACE_IOEN             at 0 range 5 .. 5;
      TRACE_MODE             at 0 range 6 .. 7;
      DBG_IWDG_STOP          at 0 range 8 .. 8;
      DBG_WWDG_STOP          at 0 range 9 .. 9;
      Reserved_10_10         at 0 range 10 .. 10;
      DBG_TIM2_STOP          at 0 range 11 .. 11;
      DBG_TIM3_STOP          at 0 range 12 .. 12;
      Reserved_13_14         at 0 range 13 .. 14;
      DBG_I2C1_SMBUS_TIMEOUT at 0 range 15 .. 15;
      Reserved_16_31         at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Debug support
   type DBG_Peripheral is record
      --  DBGMCU_IDCODE
      IDCODE : aliased IDCODE_Register;
      --  DBGMCU_CR
      CR     : aliased CR_Register;
   end record
     with Volatile;

   for DBG_Peripheral use record
      IDCODE at 16#0# range 0 .. 31;
      CR     at 16#4# range 0 .. 31;
   end record;

   --  Debug support
   DBG_Periph : aliased DBG_Peripheral
     with Import, Address => System'To_Address (16#E0042000#);

end STM32_SVD.DBG;
