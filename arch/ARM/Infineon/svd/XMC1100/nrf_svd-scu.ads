--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Temperature sensor enable
   type ANATSECTRL_TSE_EN_Field is
     (
      --  Temperature sensor is disabled
      VALUE1,
      --  Temperature sensor is switched on
      VALUE2)
     with Size => 1;
   for ANATSECTRL_TSE_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Temperature Sensor Control Register
   type ANATSECTRL_Register is record
      --  Temperature sensor enable
      TSE_EN        : ANATSECTRL_TSE_EN_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANATSECTRL_Register use record
      TSE_EN        at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  VDEL Range Select
   type ANAVDEL_VDEL_SELECT_Field is
     (
      --  2.25V
      VALUE1,
      --  3.0V
      VALUE2,
      --  4.4V
      VALUE3)
     with Size => 2;
   for ANAVDEL_VDEL_SELECT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  VDEL Timing Setting
   type ANAVDEL_VDEL_TIM_ADJ_Field is
     (
      --  typ 1us - slowest response time
      VALUE1,
      --  typ 500n
      VALUE2,
      --  typ 250n
      VALUE3,
      --  no delay - fastest response time.
      VALUE4)
     with Size => 2;
   for ANAVDEL_VDEL_TIM_ADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  VDEL unit Enable
   type ANAVDEL_VDEL_EN_Field is
     (
      --  VDEL is disabled
      VALUE1,
      --  VDEL is active
      VALUE2)
     with Size => 1;
   for ANAVDEL_VDEL_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Voltage Detector Control Register
   type ANAVDEL_Register is record
      --  VDEL Range Select
      VDEL_SELECT   : ANAVDEL_VDEL_SELECT_Field := NRF_SVD.SCU.VALUE1;
      --  VDEL Timing Setting
      VDEL_TIM_ADJ  : ANAVDEL_VDEL_TIM_ADJ_Field := NRF_SVD.SCU.VALUE4;
      --  VDEL unit Enable
      VDEL_EN       : ANAVDEL_VDEL_EN_Field := NRF_SVD.SCU.VALUE2;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANAVDEL_Register use record
      VDEL_SELECT   at 0 range 0 .. 1;
      VDEL_TIM_ADJ  at 0 range 2 .. 3;
      VDEL_EN       at 0 range 4 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   --  ADJL Offset register
   type ANAOFFSET_ADJL_OFFSET_Field is
     (
      --  - 3.75%, typ.
      VALUE1,
      --  - 2.85%, typ.
      VALUE2,
      --  0, default
      VALUE3,
      --  + 0.95%, typ.
      VALUE4,
      --  + 3.75%, typ.
      VALUE5)
     with Size => 4;
   for ANAOFFSET_ADJL_OFFSET_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 4,
      VALUE4 => 5,
      VALUE5 => 8);

   --  DCO1 Offset Register
   type ANAOFFSET_Register is record
      --  ADJL Offset register
      ADJL_OFFSET   : ANAOFFSET_ADJL_OFFSET_Field := NRF_SVD.SCU.VALUE3;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANAOFFSET_Register use record
      ADJL_OFFSET   at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type SCU_ANALOG_Peripheral is record
      --  Temperature Sensor Control Register
      ANATSECTRL : aliased ANATSECTRL_Register;
      --  Temperature Sensor High Temperature Interrupt Register
      ANATSEIH   : aliased HAL.UInt16;
      --  Temperature Sensor Low Temperature Interrupt Register
      ANATSEIL   : aliased HAL.UInt16;
      --  Temperature Sensor Counter2 Monitor Register
      ANATSEMON  : aliased HAL.UInt16;
      --  Voltage Detector Control Register
      ANAVDEL    : aliased ANAVDEL_Register;
      --  DCO1 Offset Register
      ANAOFFSET  : aliased ANAOFFSET_Register;
   end record
     with Volatile;

   for SCU_ANALOG_Peripheral use record
      ANATSECTRL at 16#24# range 0 .. 15;
      ANATSEIH   at 16#30# range 0 .. 15;
      ANATSEIL   at 16#34# range 0 .. 15;
      ANATSEMON  at 16#40# range 0 .. 15;
      ANAVDEL    at 16#50# range 0 .. 15;
      ANAOFFSET  at 16#6C# range 0 .. 15;
   end record;

   --  System Control Unit
   SCU_ANALOG_Periph : aliased SCU_ANALOG_Peripheral
     with Import, Address => System'To_Address (16#40011000#);

end NRF_SVD.SCU;
