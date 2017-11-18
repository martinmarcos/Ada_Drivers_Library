--  This spec has been automatically generated from XMC1200.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Control Unit
package NRF_SVD.SCU_RESET is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RSTSTAT_RSTSTAT_Field is HAL.UInt10;

   --  Enable Lockup Status
   type RSTSTAT_LCKEN_Field is
     (
      --  Reset by Lockup disabled
      VALUE1,
      --  Reset by Lockup enabled
      VALUE2)
     with Size => 1;
   for RSTSTAT_LCKEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RCU Reset Status
   type RSTSTAT_Register is record
      --  Read-only. Reset Status Information
      RSTSTAT        : RSTSTAT_RSTSTAT_Field;
      --  Read-only. Enable Lockup Status
      LCKEN          : RSTSTAT_LCKEN_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTSTAT_Register use record
      RSTSTAT        at 0 range 0 .. 9;
      LCKEN          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Enable Lockup Reset
   type RSTSET_LCKEN_Field is
     (
      --  no effect
      VALUE1,
      --  Enable reset when Lockup gets asserted
      VALUE2)
     with Size => 1;
   for RSTSET_LCKEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RCU Reset Set Register
   type RSTSET_Register is record
      --  unspecified
      Reserved_0_9   : HAL.UInt10 := 16#0#;
      --  Write-only. Enable Lockup Reset
      LCKEN          : RSTSET_LCKEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTSET_Register use record
      Reserved_0_9   at 0 range 0 .. 9;
      LCKEN          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clear Reset Status
   type RSTCLR_RSCLR_Field is
     (
      --  no effect
      VALUE1,
      --  Clears field RSTSTAT.RSTSTAT
      VALUE2)
     with Size => 1;
   for RSTCLR_RSCLR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Lockup Reset
   type RSTCLR_LCKEN_Field is
     (
      --  no effect
      VALUE1,
      --  Disable reset when Lockup gets asserted
      VALUE2)
     with Size => 1;
   for RSTCLR_LCKEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RCU Reset Clear Register
   type RSTCLR_Register is record
      --  Write-only. Clear Reset Status
      RSCLR          : RSTCLR_RSCLR_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  unspecified
      Reserved_1_9   : HAL.UInt9 := 16#0#;
      --  Write-only. Enable Lockup Reset
      LCKEN          : RSTCLR_LCKEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTCLR_Register use record
      RSCLR          at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      LCKEN          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Enable ECC Error Reset
   type RSTCON_ECCRSTEN_Field is
     (
      --  No reset when ECC double bit error occur
      VALUE1,
      --  Reset when ECC double bit error occur
      VALUE2)
     with Size => 1;
   for RSTCON_ECCRSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Loss of Clock Reset
   type RSTCON_LOCRSTEN_Field is
     (
      --  No reset when loss of clock occur
      VALUE1,
      --  Reset when loss of clock occur
      VALUE2)
     with Size => 1;
   for RSTCON_LOCRSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable 16kbytes SRAM Parity Error Reset
   type RSTCON_SPERSTEN_Field is
     (
      --  No reset when SRAM parity error occur
      VALUE1,
      --  Reset when SRAM parity error occur
      VALUE2)
     with Size => 1;
   for RSTCON_SPERSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable USIC0 SRAM Parity Error Reset
   type RSTCON_U0PERSTEN_Field is
     (
      --  No reset when USIC0 memory parity error occur
      VALUE1,
      --  Reset when USIC0 memory parity error occur
      VALUE2)
     with Size => 1;
   for RSTCON_U0PERSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Master Reset
   type RSTCON_MRSTEN_Field is
     (
      --  No effect
      VALUE1,
      --  Triggered Master reset
      VALUE2)
     with Size => 1;
   for RSTCON_MRSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RCU Reset Control Register
   type RSTCON_Register is record
      --  Enable ECC Error Reset
      ECCRSTEN       : RSTCON_ECCRSTEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  Enable Loss of Clock Reset
      LOCRSTEN       : RSTCON_LOCRSTEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  Enable 16kbytes SRAM Parity Error Reset
      SPERSTEN       : RSTCON_SPERSTEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  Enable USIC0 SRAM Parity Error Reset
      U0PERSTEN      : RSTCON_U0PERSTEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Enable Master Reset
      MRSTEN         : RSTCON_MRSTEN_Field := NRF_SVD.SCU_RESET.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTCON_Register use record
      ECCRSTEN       at 0 range 0 .. 0;
      LOCRSTEN       at 0 range 1 .. 1;
      SPERSTEN       at 0 range 2 .. 2;
      U0PERSTEN      at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      MRSTEN         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type SCU_RESET_Peripheral is record
      --  RCU Reset Status
      RSTSTAT : aliased RSTSTAT_Register;
      --  RCU Reset Set Register
      RSTSET  : aliased RSTSET_Register;
      --  RCU Reset Clear Register
      RSTCLR  : aliased RSTCLR_Register;
      --  RCU Reset Control Register
      RSTCON  : aliased RSTCON_Register;
   end record
     with Volatile;

   for SCU_RESET_Peripheral use record
      RSTSTAT at 16#0# range 0 .. 31;
      RSTSET  at 16#4# range 0 .. 31;
      RSTCLR  at 16#8# range 0 .. 31;
      RSTCON  at 16#C# range 0 .. 31;
   end record;

   --  System Control Unit
   SCU_RESET_Periph : aliased SCU_RESET_Peripheral
     with Import, Address => SCU_RESET_Base;

end NRF_SVD.SCU_RESET;
