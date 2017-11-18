--

--  This spec has been automatically generated from AC33Mx064.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MR_P array element
   subtype MR_P_Element is HAL.UInt2;

   --  MR_P array
   type MR_P_Field_Array is array (0 .. 15) of MR_P_Element
     with Component_Size => 2, Size => 32;

   --  PORT n Pin MUX Register
   type MR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : MR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CR_P array element
   subtype CR_P_Element is HAL.UInt2;

   --  CR_P array
   type CR_P_Field_Array is array (0 .. 15) of CR_P_Element
     with Component_Size => 2, Size => 32;

   --  PORT n Pin Control Register
   type CR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : CR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PCR_P array
   type PCR_P_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PCR_P
   type PCR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : PCR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PCR_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PORT n Pull-up Resistor Control Register
   type PCR_Register is record
      --  P0 pull-up enable
      P              : PCR_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DER_P array
   type DER_P_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DER_P
   type DER_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : DER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DER_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PORT n Debounce Enable Register
   type DER_Register is record
      --  P0 Debounce enable
      P              : DER_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DER_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IER_P array element
   subtype IER_P_Element is HAL.UInt2;

   --  IER_P array
   type IER_P_Field_Array is array (0 .. 15) of IER_P_Element
     with Component_Size => 2, Size => 32;

   --  PORT n Interrupt Enable Register
   type IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ISR_P array element
   subtype ISR_P_Element is HAL.UInt2;

   --  ISR_P array
   type ISR_P_Field_Array is array (0 .. 15) of ISR_P_Element
     with Component_Size => 2, Size => 32;

   --  PORT n Interrupt Status Register
   type ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ISR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ICR_P array element
   subtype ICR_P_Element is HAL.UInt2;

   --  ICR_P array
   type ICR_P_Field_Array is array (0 .. 15) of ICR_P_Element
     with Component_Size => 2, Size => 32;

   --  PORT n Interrupt Control Register
   type ICR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ICR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PORT CONTROL UNIT
   type PCU_Peripheral is record
      --  PORT n Pin MUX Register
      MR  : aliased MR_Register;
      --  PORT n Pin Control Register
      CR  : aliased CR_Register;
      --  PORT n Pull-up Resistor Control Register
      PCR : aliased PCR_Register;
      --  PORT n Debounce Enable Register
      DER : aliased DER_Register;
      --  PORT n Interrupt Enable Register
      IER : aliased IER_Register;
      --  PORT n Interrupt Status Register
      ISR : aliased ISR_Register;
      --  PORT n Interrupt Control Register
      ICR : aliased ICR_Register;
   end record
     with Volatile;

   for PCU_Peripheral use record
      MR  at 16#0# range 0 .. 31;
      CR  at 16#4# range 0 .. 31;
      PCR at 16#8# range 0 .. 31;
      DER at 16#C# range 0 .. 31;
      IER at 16#10# range 0 .. 31;
      ISR at 16#14# range 0 .. 31;
      ICR at 16#18# range 0 .. 31;
   end record;

   --  PORT CONTROL UNIT
   PCA_Periph : aliased PCU_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

   --  PORT CONTROL UNIT
   PCB_Periph : aliased PCU_Peripheral
     with Import, Address => System'To_Address (16#40001100#);

   --  PORT CONTROL UNIT
   PCC_Periph : aliased PCU_Peripheral
     with Import, Address => System'To_Address (16#40001200#);

   --  PORT CONTROL UNIT
   PCD_Periph : aliased PCU_Peripheral
     with Import, Address => System'To_Address (16#40001300#);

end NRF_SVD.PCU;
