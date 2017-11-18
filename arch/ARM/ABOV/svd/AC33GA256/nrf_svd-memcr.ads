--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Memory Control Register
package NRF_SVD.MEMCR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MEMCR_REMAP array
   type MEMCR_REMAP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for MEMCR_REMAP
   type MEMCR_REMAP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REMAP as a value
            Val : HAL.UInt4;
         when True =>
            --  REMAP as an array
            Arr : MEMCR_REMAP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MEMCR_REMAP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Memory Control Register
   type MEMCR_Register is record
      --  Remap 0x00000000 ~ 0x00000FFF Area (Area 0)
      REMAP         : MEMCR_REMAP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMCR_Register use record
      REMAP         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory Control Register
   type MEMCR_Peripheral is record
      --  Memory Control Register
      MEMCR : aliased MEMCR_Register;
   end record
     with Volatile;

   for MEMCR_Peripheral use record
      MEMCR at 0 range 0 .. 31;
   end record;

   --  Memory Control Register
   MEMCR_Periph : aliased MEMCR_Peripheral
     with Import, Address => MEMCR_Base;

end NRF_SVD.MEMCR;
