--  This spec has been automatically generated from STM32F100.svd

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
      --  DBG_TIM1_STOP
      DBG_TIM1_STOP          : Boolean := False;
      --  DBG_TIM2_STOP
      DBG_TIM2_STOP          : Boolean := False;
      --  DBG_TIM3_STOP
      DBG_TIM3_STOP          : Boolean := False;
      --  DBG_TIM4_STOP
      DBG_TIM4_STOP          : Boolean := False;
      --  unspecified
      Reserved_14_14         : HAL.Bit := 16#0#;
      --  DBG_I2C1_SMBUS_TIMEOUT
      DBG_I2C1_SMBUS_TIMEOUT : Boolean := False;
      --  DBG_I2C2_SMBUS_TIMEOUT
      DBG_I2C2_SMBUS_TIMEOUT : Boolean := False;
      --  unspecified
      Reserved_17_17         : HAL.Bit := 16#0#;
      --  DBG_TIM5_STOP
      DBG_TIM5_STOP          : Boolean := False;
      --  DBG_TIM6_STOP
      DBG_TIM6_STOP          : Boolean := False;
      --  DBG_TIM7_STOP
      DBG_TIM7_STOP          : Boolean := False;
      --  unspecified
      Reserved_21_21         : HAL.Bit := 16#0#;
      --  DBG_TIM15_STOP
      DBG_TIM15_STOP         : Boolean := False;
      --  DBG_TIM16_STOP
      DBG_TIM16_STOP         : Boolean := False;
      --  DBG_TIM17_STOP
      DBG_TIM17_STOP         : Boolean := False;
      --  DBG_TIM12_STOP
      DBG_TIM12_STOP         : Boolean := False;
      --  DBG_TIM13_STOP
      DBG_TIM13_STOP         : Boolean := False;
      --  DBG_TIM14_STOP
      DBG_TIM14_STOP         : Boolean := False;
      --  unspecified
      Reserved_28_31         : HAL.UInt4 := 16#0#;
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
      DBG_TIM1_STOP          at 0 range 10 .. 10;
      DBG_TIM2_STOP          at 0 range 11 .. 11;
      DBG_TIM3_STOP          at 0 range 12 .. 12;
      DBG_TIM4_STOP          at 0 range 13 .. 13;
      Reserved_14_14         at 0 range 14 .. 14;
      DBG_I2C1_SMBUS_TIMEOUT at 0 range 15 .. 15;
      DBG_I2C2_SMBUS_TIMEOUT at 0 range 16 .. 16;
      Reserved_17_17         at 0 range 17 .. 17;
      DBG_TIM5_STOP          at 0 range 18 .. 18;
      DBG_TIM6_STOP          at 0 range 19 .. 19;
      DBG_TIM7_STOP          at 0 range 20 .. 20;
      Reserved_21_21         at 0 range 21 .. 21;
      DBG_TIM15_STOP         at 0 range 22 .. 22;
      DBG_TIM16_STOP         at 0 range 23 .. 23;
      DBG_TIM17_STOP         at 0 range 24 .. 24;
      DBG_TIM12_STOP         at 0 range 25 .. 25;
      DBG_TIM13_STOP         at 0 range 26 .. 26;
      DBG_TIM14_STOP         at 0 range 27 .. 27;
      Reserved_28_31         at 0 range 28 .. 31;
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
