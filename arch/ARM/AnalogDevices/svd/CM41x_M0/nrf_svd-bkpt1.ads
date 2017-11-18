--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.BKPT1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BP_CTRL_NUM_CODE_Field is HAL.UInt4;

   --  Bp Ctrl
   type BP_CTRL_Register is record
      --  Breakpoint unit enable bit.
      ENABLE        : Boolean := False;
      --  Key field
      KEY           : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Read-only. Number of comparators.
      NUM_CODE      : BP_CTRL_NUM_CODE_Field := 16#F#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BP_CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      KEY           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      NUM_CODE      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BP_COMP_COMP_Field is HAL.UInt27;
   subtype BP_COMP_BP_MATCH_Field is HAL.UInt2;

   --  Bp Comp0
   type BP_COMP_Register is record
      --  Compare Enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Comparison address, UNKNOWN on reset.
      COMP           : BP_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  This selects what happens when the COMP address is matched
      BP_MATCH       : BP_COMP_BP_MATCH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BP_COMP_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP           at 0 range 2 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BP_MATCH       at 0 range 30 .. 31;
   end record;

   subtype BP_COMP1_COMP_Field is HAL.UInt27;
   subtype BP_COMP1_BP_MATCH_Field is HAL.UInt2;

   --  Bp Comp1
   type BP_COMP1_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Comparison address, UNKNOWN on reset.
      COMP           : BP_COMP1_COMP_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  This selects what happens when the COMP address is matched
      BP_MATCH       : BP_COMP1_BP_MATCH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BP_COMP1_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      COMP           at 0 range 2 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      BP_MATCH       at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Breakpoint unit
   type BKPT1_Peripheral is record
      --  Bp Ctrl
      BP_CTRL  : aliased BP_CTRL_Register;
      --  Bp Comp0
      BP_COMP0 : aliased BP_COMP_Register;
      --  Bp Comp1
      BP_COMP1 : aliased BP_COMP1_Register;
      --  Bp Comp2
      BP_COMP2 : aliased BP_COMP_Register;
      --  Bp Comp3
      BP_COMP3 : aliased BP_COMP_Register;
   end record
     with Volatile;

   for BKPT1_Peripheral use record
      BP_CTRL  at 16#0# range 0 .. 31;
      BP_COMP0 at 16#8# range 0 .. 31;
      BP_COMP1 at 16#C# range 0 .. 31;
      BP_COMP2 at 16#10# range 0 .. 31;
      BP_COMP3 at 16#14# range 0 .. 31;
   end record;

   --  Breakpoint unit
   BKPT1_Periph : aliased BKPT1_Peripheral
     with Import, Address => System'To_Address (16#E0002000#);

end NRF_SVD.BKPT1;
