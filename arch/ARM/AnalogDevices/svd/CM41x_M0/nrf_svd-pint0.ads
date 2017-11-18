--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PINT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MSK_SET_PIQ array
   type MSK_SET_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Mask Set Register
   type MSK_SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : MSK_SET_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MSK_SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MSK_CLR_PIQ array
   type MSK_CLR_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Mask Clear Register
   type MSK_CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : MSK_CLR_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MSK_CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  REQ_PIQ array
   type REQ_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Request Register
   type REQ_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : REQ_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for REQ_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ASSIGN_B0MAP_Field is HAL.UInt8;
   subtype ASSIGN_B1MAP_Field is HAL.UInt8;
   subtype ASSIGN_B2MAP_Field is HAL.UInt8;
   subtype ASSIGN_B3MAP_Field is HAL.UInt8;

   --  PINT Assign Register
   type ASSIGN_Register is record
      --  Byte 0 Mapping
      B0MAP : ASSIGN_B0MAP_Field := 16#1#;
      --  Byte 1 Mapping
      B1MAP : ASSIGN_B1MAP_Field := 16#1#;
      --  Byte 2 Mapping
      B2MAP : ASSIGN_B2MAP_Field := 16#0#;
      --  Byte 3 Mapping
      B3MAP : ASSIGN_B3MAP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASSIGN_Register use record
      B0MAP at 0 range 0 .. 7;
      B1MAP at 0 range 8 .. 15;
      B2MAP at 0 range 16 .. 23;
      B3MAP at 0 range 24 .. 31;
   end record;

   --  EDGE_SET_PIQ array
   type EDGE_SET_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Edge Set Register
   type EDGE_SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : EDGE_SET_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EDGE_SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EDGE_CLR_PIQ array
   type EDGE_CLR_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Edge Clear Register
   type EDGE_CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : EDGE_CLR_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EDGE_CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  INV_SET_PIQ array
   type INV_SET_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Invert Set Register
   type INV_SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : INV_SET_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INV_SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  INV_CLR_PIQ array
   type INV_CLR_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Invert Clear Register
   type INV_CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : INV_CLR_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INV_CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PINSTATE_PIQ array
   type PINSTATE_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Pin State Register
   type PINSTATE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : PINSTATE_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PINSTATE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  LATCH_PIQ array
   type LATCH_PIQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PINT Latch Register
   type LATCH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PIQ as an array
            Arr : LATCH_PIQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LATCH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  The Pin Interrupt module
   type PINT0_Peripheral is record
      --  PINT Mask Set Register
      MSK_SET  : aliased MSK_SET_Register;
      --  PINT Mask Clear Register
      MSK_CLR  : aliased MSK_CLR_Register;
      --  PINT Request Register
      REQ      : aliased REQ_Register;
      --  PINT Assign Register
      ASSIGN   : aliased ASSIGN_Register;
      --  PINT Edge Set Register
      EDGE_SET : aliased EDGE_SET_Register;
      --  PINT Edge Clear Register
      EDGE_CLR : aliased EDGE_CLR_Register;
      --  PINT Invert Set Register
      INV_SET  : aliased INV_SET_Register;
      --  PINT Invert Clear Register
      INV_CLR  : aliased INV_CLR_Register;
      --  PINT Pin State Register
      PINSTATE : aliased PINSTATE_Register;
      --  PINT Latch Register
      LATCH    : aliased LATCH_Register;
   end record
     with Volatile;

   for PINT0_Peripheral use record
      MSK_SET  at 16#0# range 0 .. 31;
      MSK_CLR  at 16#4# range 0 .. 31;
      REQ      at 16#8# range 0 .. 31;
      ASSIGN   at 16#C# range 0 .. 31;
      EDGE_SET at 16#10# range 0 .. 31;
      EDGE_CLR at 16#14# range 0 .. 31;
      INV_SET  at 16#18# range 0 .. 31;
      INV_CLR  at 16#1C# range 0 .. 31;
      PINSTATE at 16#20# range 0 .. 31;
      LATCH    at 16#24# range 0 .. 31;
   end record;

   --  The Pin Interrupt module
   PINT0_Periph : aliased PINT0_Peripheral
     with Import, Address => System'To_Address (16#41002000#);

   --  The Pin Interrupt module
   PINT1_Periph : aliased PINT0_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  The Pin Interrupt module
   PINT2_Periph : aliased PINT0_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  The Pin Interrupt module
   PINT3_Periph : aliased PINT0_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

   --  The Pin Interrupt module
   PINT4_Periph : aliased PINT0_Peripheral
     with Import, Address => System'To_Address (16#40006000#);

   --  The Pin Interrupt module
   PINT5_Periph : aliased PINT0_Peripheral
     with Import, Address => System'To_Address (16#40007000#);

end NRF_SVD.PINT0;
