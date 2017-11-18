--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_CKSEL_Field is HAL.UInt3;

   --  PWM n Control Register
   type CTRL_Register is record
      --  startPWM counter
      STRT           : Boolean := False;
      --  Synchronize this channel to the other channels
      SYNC           : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Inverted output
      INVA           : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  input clock divided
      CKSEL          : CTRL_CKSEL_Field := 16#0#;
      --  Enable periodic interrupt
      PRIE           : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Periodic interrupt occurs (write 1 to clear)
      PRF            : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      STRT           at 0 range 0 .. 0;
      SYNC           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INVA           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CKSEL          at 0 range 5 .. 7;
      PRIE           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PRF            at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  PWM n Counter Register
   type CNT_Register is record
      --  Current counter value
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PER_PERIOD_Field is HAL.UInt16;

   --  PWM n Counter Period Register
   type PER_Register is record
      --  PWM period value
      PERIOD         : PER_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER_Register use record
      PERIOD         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP_CMP_Field is HAL.UInt16;

   --  PWM n Compare Register
   type CMP_Register is record
      --  Comparator value
      CMP            : CMP_CMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP_Register use record
      CMP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWM Generator
   type PWM_Peripheral is record
      --  PWM n Control Register
      CTRL : aliased CTRL_Register;
      --  PWM n Counter Register
      CNT  : aliased CNT_Register;
      --  PWM n Counter Period Register
      PER  : aliased PER_Register;
      --  PWM n Compare Register
      CMP  : aliased CMP_Register;
   end record
     with Volatile;

   for PWM_Peripheral use record
      CTRL at 16#0# range 0 .. 31;
      CNT  at 16#4# range 0 .. 31;
      PER  at 16#8# range 0 .. 31;
      CMP  at 16#C# range 0 .. 31;
   end record;

   --  PWM Generator
   PWM0_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40000700#);

   --  PWM Generator
   PWM1_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40000720#);

   --  PWM Generator
   PWM2_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40000740#);

   --  PWM Generator
   PWM3_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40000760#);

   --  PWM Generator
   PWM4_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40000780#);

   --  PWM Generator
   PWM5_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#400007A0#);

   --  PWM Generator
   PWM6_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#400007C0#);

   --  PWM Generator
   PWM7_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#400007E0#);

end NRF_SVD.PWM;
