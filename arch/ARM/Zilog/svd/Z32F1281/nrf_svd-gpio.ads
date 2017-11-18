--

--  This spec has been automatically generated from Z32F1281.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ODR_P array
   type ODR_P_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ODR_P
   type ODR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : ODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ODR_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PORT n Output Data Register
   type ODR_Register is record
      --  P0 Output level
      P              : ODR_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IDR_P array
   type IDR_P_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for IDR_P
   type IDR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : IDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IDR_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PORT n Input Data Register
   type IDR_Register is record
      --  P0 Input level
      P              : IDR_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  BSR_P array
   type BSR_P_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSR_P
   type BSR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : BSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSR_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PORT n Bit Set Register
   type BSR_Register is record
      --  P0 bit set
      P              : BSR_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSR_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  BCR_P array
   type BCR_P_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BCR_P
   type BCR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : BCR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BCR_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PORT n Bit Clear Register
   type BCR_Register is record
      --  Write-only. P0 bit clear
      P              : BCR_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GENERAL PURPOSE I/O
   type GPIO_Peripheral is record
      --  PORT n Output Data Register
      ODR : aliased ODR_Register;
      --  PORT n Input Data Register
      IDR : aliased IDR_Register;
      --  PORT n Bit Set Register
      BSR : aliased BSR_Register;
      --  PORT n Bit Clear Register
      BCR : aliased BCR_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      ODR at 16#0# range 0 .. 31;
      IDR at 16#4# range 0 .. 31;
      BSR at 16#8# range 0 .. 31;
      BCR at 16#C# range 0 .. 31;
   end record;

   --  GENERAL PURPOSE I/O
   PA_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

   --  GENERAL PURPOSE I/O
   PB_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40002100#);

   --  GENERAL PURPOSE I/O
   PC_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40002200#);

   --  GENERAL PURPOSE I/O
   PD_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40002300#);

end NRF_SVD.GPIO;
