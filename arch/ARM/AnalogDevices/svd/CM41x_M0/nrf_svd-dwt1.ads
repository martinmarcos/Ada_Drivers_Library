--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DWT1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DWT_CTRL_NUMCOMP_Field is HAL.UInt4;

   --  Dwt Ctrl
   type DWT_CTRL_Register is record
      --  unspecified
      Reserved_0_27 : HAL.UInt28;
      --  Read-only. Number of comparators.
      NUMCOMP       : DWT_CTRL_NUMCOMP_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CTRL_Register use record
      Reserved_0_27 at 0 range 0 .. 27;
      NUMCOMP       at 0 range 28 .. 31;
   end record;

   subtype DWT_MASK_MASK_Field is HAL.UInt4;

   --  Dwt Mask0
   type DWT_MASK_Register is record
      --  Data Mask
      MASK          : DWT_MASK_MASK_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_MASK_Register use record
      MASK          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DWT_FUNCTION_FUNCTION_Field is HAL.UInt4;

   --  Dwt Function0
   type DWT_FUNCTION_Register is record
      --  Function setting
      FUNCTION_k    : DWT_FUNCTION_FUNCTION_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_FUNCTION_Register use record
      FUNCTION_k    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Data watchpoint unit
   type DWT1_Peripheral is record
      --  Dwt Ctrl
      DWT_CTRL      : aliased DWT_CTRL_Register;
      --  Dwt Pcsr
      DWT_PCSR      : aliased HAL.UInt32;
      --  Dwt Comp0
      DWT_COMP0     : aliased HAL.UInt32;
      --  Dwt Mask0
      DWT_MASK0     : aliased DWT_MASK_Register;
      --  Dwt Function0
      DWT_FUNCTION0 : aliased DWT_FUNCTION_Register;
      --  Dwt Comp1
      DWT_COMP1     : aliased HAL.UInt32;
      --  Dwt Mask1
      DWT_MASK1     : aliased DWT_MASK_Register;
      --  Dwt Function1
      DWT_FUNCTION1 : aliased DWT_FUNCTION_Register;
   end record
     with Volatile;

   for DWT1_Peripheral use record
      DWT_CTRL      at 16#0# range 0 .. 31;
      DWT_PCSR      at 16#1C# range 0 .. 31;
      DWT_COMP0     at 16#20# range 0 .. 31;
      DWT_MASK0     at 16#24# range 0 .. 31;
      DWT_FUNCTION0 at 16#28# range 0 .. 31;
      DWT_COMP1     at 16#30# range 0 .. 31;
      DWT_MASK1     at 16#34# range 0 .. 31;
      DWT_FUNCTION1 at 16#38# range 0 .. 31;
   end record;

   --  Data watchpoint unit
   DWT1_Periph : aliased DWT1_Peripheral
     with Import, Address => System'To_Address (16#E0001000#);

end NRF_SVD.DWT1;
