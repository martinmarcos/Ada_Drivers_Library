--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PTI0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Parallel Test Interface Control Register
   type CTL_Register is record
      --  Unknown
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Test Interface
   type PTI0_Peripheral is record
      --  Reset ISR Start Address
      RST_ISR_STARTADDR : aliased HAL.UInt32;
      --  Reset Stack Pointer
      RST_STACK_PTR     : aliased HAL.UInt32;
      --  Parallel Test Interface Control Register
      CTL               : aliased CTL_Register;
   end record
     with Volatile;

   for PTI0_Peripheral use record
      RST_ISR_STARTADDR at 16#0# range 0 .. 31;
      RST_STACK_PTR     at 16#4# range 0 .. 31;
      CTL               at 16#8# range 0 .. 31;
   end record;

   --  Parallel Test Interface
   PTI0_Periph : aliased PTI0_Peripheral
     with Import, Address => System'To_Address (16#4004CD00#);

end NRF_SVD.PTI0;
