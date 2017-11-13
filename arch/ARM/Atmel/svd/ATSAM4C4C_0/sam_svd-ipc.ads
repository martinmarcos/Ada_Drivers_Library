--  This spec has been automatically generated from ATSAM4C4C_0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.IPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  IPC0_ISCR_IRQ array
   type IPC0_ISCR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Set Command Register
   type IPC0_ISCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_ISCR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_ISCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IPC0_ICCR_IRQ array
   type IPC0_ICCR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Clear Command Register
   type IPC0_ICCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_ICCR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_ICCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IPC0_IPR_IRQ array
   type IPC0_IPR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Pending Register
   type IPC0_IPR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_IPR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_IPR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IPC0_IECR_IRQ array
   type IPC0_IECR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Command Register
   type IPC0_IECR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_IECR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_IECR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IPC0_IDCR_IRQ array
   type IPC0_IDCR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Disable Command Register
   type IPC0_IDCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_IDCR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_IDCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IPC0_IMR_IRQ array
   type IPC0_IMR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mask Register
   type IPC0_IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_IMR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IPC0_ISR_IRQ array
   type IPC0_ISR_IRQ_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Status Register
   type IPC0_ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  IRQ as an array
            Arr : IPC0_ISR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IPC0_ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Interprocessor Communication 0
   type IPC_Peripheral is record
      --  Interrupt Set Command Register
      ISCR : aliased IPC0_ISCR_Register;
      --  Interrupt Clear Command Register
      ICCR : aliased IPC0_ICCR_Register;
      --  Interrupt Pending Register
      IPR  : aliased IPC0_IPR_Register;
      --  Interrupt Enable Command Register
      IECR : aliased IPC0_IECR_Register;
      --  Interrupt Disable Command Register
      IDCR : aliased IPC0_IDCR_Register;
      --  Interrupt Mask Register
      IMR  : aliased IPC0_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased IPC0_ISR_Register;
   end record
     with Volatile;

   for IPC_Peripheral use record
      ISCR at 16#0# range 0 .. 31;
      ICCR at 16#4# range 0 .. 31;
      IPR  at 16#8# range 0 .. 31;
      IECR at 16#C# range 0 .. 31;
      IDCR at 16#10# range 0 .. 31;
      IMR  at 16#14# range 0 .. 31;
      ISR  at 16#18# range 0 .. 31;
   end record;

   --  Interprocessor Communication 0
   IPC0_Periph : aliased IPC_Peripheral
     with Import, Address => System'To_Address (16#4004C000#);

   --  Interprocessor Communication 1
   IPC1_Periph : aliased IPC_Peripheral
     with Import, Address => System'To_Address (16#48014000#);

end SAM_SVD.IPC;
