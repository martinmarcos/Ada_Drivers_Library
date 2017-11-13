--  This spec has been automatically generated from ATSAMG53N19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  PIOA_PER_P array
   type PIOA_PER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Enable Register
   type PIOA_PER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PDR_P array
   type PIOA_PDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Disable Register
   type PIOA_PDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PSR_P array
   type PIOA_PSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Status Register
   type PIOA_PSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OER_P array
   type PIOA_OER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Enable Register
   type PIOA_OER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_OER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ODR_P array
   type PIOA_ODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Disable Register
   type PIOA_ODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_ODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OSR_P array
   type PIOA_OSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Status Register
   type PIOA_OSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_OSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFER_P array
   type PIOA_IFER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Enable Register
   type PIOA_IFER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFDR_P array
   type PIOA_IFDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Disable Register
   type PIOA_IFDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFSR_P array
   type PIOA_IFSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Status Register
   type PIOA_IFSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_SODR_P array
   type PIOA_SODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Set Output Data Register
   type PIOA_SODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_SODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_SODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_CODR_P array
   type PIOA_CODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Clear Output Data Register
   type PIOA_CODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_CODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_CODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ODSR_P array
   type PIOA_ODSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Data Status Register
   type PIOA_ODSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ODSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_ODSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PDSR_P array
   type PIOA_PDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pin Data Status Register
   type PIOA_PDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IER_P array
   type PIOA_IER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register
   type PIOA_IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IDR_P array
   type PIOA_IDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Disable Register
   type PIOA_IDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IMR_P array
   type PIOA_IMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mask Register
   type PIOA_IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ISR_P array
   type PIOA_ISR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Status Register
   type PIOA_ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ISR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_MDER_P array
   type PIOA_MDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Enable Register
   type PIOA_MDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_MDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_MDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_MDDR_P array
   type PIOA_MDDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Disable Register
   type PIOA_MDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_MDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_MDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_MDSR_P array
   type PIOA_MDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Status Register
   type PIOA_MDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_MDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_MDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PUDR_P array
   type PIOA_PUDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Disable Register
   type PIOA_PUDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PUDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PUDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PUER_P array
   type PIOA_PUER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register
   type PIOA_PUER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PUER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PUER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PUSR_P array
   type PIOA_PUSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-up Status Register
   type PIOA_PUSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PUSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PUSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ABCDSR_P array
   type PIOA_ABCDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Select Register
   type PIOA_ABCDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ABCDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_ABCDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Peripheral Select Register
   type PIOA_ABCDSR_Registers is array (0 .. 1) of PIOA_ABCDSR_Register
     with Volatile;

   --  PIOA_IFSCDR_P array
   type PIOA_IFSCDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Disable Register
   type PIOA_IFSCDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSCDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSCDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFSCER_P array
   type PIOA_IFSCER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Enable Register
   type PIOA_IFSCER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSCER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSCER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFSCSR_P array
   type PIOA_IFSCSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Status Register
   type PIOA_IFSCSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSCSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSCSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIOA_SCDR_DIV_Field is HAL.UInt14;

   --  Slow Clock Divider Debouncing Register
   type PIOA_SCDR_Register is record
      --  Slow Clock Divider Selection for Debouncing
      DIV            : PIOA_SCDR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_SCDR_Register use record
      DIV            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PIOA_PPDDR_P array
   type PIOA_PPDDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Disable Register
   type PIOA_PPDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PPDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PPDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PPDER_P array
   type PIOA_PPDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Enable Register
   type PIOA_PPDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PPDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PPDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PPDSR_P array
   type PIOA_PPDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Status Register
   type PIOA_PPDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PPDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_PPDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OWER_P array
   type PIOA_OWER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Enable
   type PIOA_OWER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OWER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_OWER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OWDR_P array
   type PIOA_OWDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Disable
   type PIOA_OWDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OWDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_OWDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OWSR_P array
   type PIOA_OWSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Status Register
   type PIOA_OWSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OWSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_OWSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_AIMER_P array
   type PIOA_AIMER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Enable Register
   type PIOA_AIMER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_AIMER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_AIMER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_AIMDR_P array
   type PIOA_AIMDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Disable Register
   type PIOA_AIMDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_AIMDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_AIMDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_AIMMR_P array
   type PIOA_AIMMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Mask Register
   type PIOA_AIMMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_AIMMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_AIMMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ESR_P array
   type PIOA_ESR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Edge Select Register
   type PIOA_ESR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ESR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_ESR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_LSR_P array
   type PIOA_LSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Level Select Register
   type PIOA_LSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_LSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_LSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ELSR_P array
   type PIOA_ELSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Edge/Level Status Register
   type PIOA_ELSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ELSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_ELSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_FELLSR_P array
   type PIOA_FELLSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Falling Edge/Low-Level Select Register
   type PIOA_FELLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_FELLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_FELLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_REHLSR_P array
   type PIOA_REHLSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Rising Edge/High-Level Select Register
   type PIOA_REHLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_REHLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_REHLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_FRLHSR_P array
   type PIOA_FRLHSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Fall/Rise - Low/High Status Register
   type PIOA_FRLHSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_FRLHSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_FRLHSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit. Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5261647);

   --  Write Protection Mode Register
   type PIOA_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PIOA_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type PIOA_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PIOA_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PIOA_SCHMITT_SCHMITT array
   type PIOA_SCHMITT_SCHMITT_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Register
   type PIOA_SCHMITT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SCHMITT as a value
            Val : HAL.UInt32;
         when True =>
            --  SCHMITT as an array
            Arr : PIOA_SCHMITT_SCHMITT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIOA_SCHMITT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Input/Output Controller A
   type PIO_Peripheral is record
      --  PIO Enable Register
      PER     : aliased PIOA_PER_Register;
      --  PIO Disable Register
      PDR     : aliased PIOA_PDR_Register;
      --  PIO Status Register
      PSR     : aliased PIOA_PSR_Register;
      --  Output Enable Register
      OER     : aliased PIOA_OER_Register;
      --  Output Disable Register
      ODR     : aliased PIOA_ODR_Register;
      --  Output Status Register
      OSR     : aliased PIOA_OSR_Register;
      --  Glitch Input Filter Enable Register
      IFER    : aliased PIOA_IFER_Register;
      --  Glitch Input Filter Disable Register
      IFDR    : aliased PIOA_IFDR_Register;
      --  Glitch Input Filter Status Register
      IFSR    : aliased PIOA_IFSR_Register;
      --  Set Output Data Register
      SODR    : aliased PIOA_SODR_Register;
      --  Clear Output Data Register
      CODR    : aliased PIOA_CODR_Register;
      --  Output Data Status Register
      ODSR    : aliased PIOA_ODSR_Register;
      --  Pin Data Status Register
      PDSR    : aliased PIOA_PDSR_Register;
      --  Interrupt Enable Register
      IER     : aliased PIOA_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased PIOA_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased PIOA_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased PIOA_ISR_Register;
      --  Multi-driver Enable Register
      MDER    : aliased PIOA_MDER_Register;
      --  Multi-driver Disable Register
      MDDR    : aliased PIOA_MDDR_Register;
      --  Multi-driver Status Register
      MDSR    : aliased PIOA_MDSR_Register;
      --  Pull-up Disable Register
      PUDR    : aliased PIOA_PUDR_Register;
      --  Pull-up Enable Register
      PUER    : aliased PIOA_PUER_Register;
      --  Pad Pull-up Status Register
      PUSR    : aliased PIOA_PUSR_Register;
      --  Peripheral Select Register
      ABCDSR  : aliased PIOA_ABCDSR_Registers;
      --  Input Filter Slow Clock Disable Register
      IFSCDR  : aliased PIOA_IFSCDR_Register;
      --  Input Filter Slow Clock Enable Register
      IFSCER  : aliased PIOA_IFSCER_Register;
      --  Input Filter Slow Clock Status Register
      IFSCSR  : aliased PIOA_IFSCSR_Register;
      --  Slow Clock Divider Debouncing Register
      SCDR    : aliased PIOA_SCDR_Register;
      --  Pad Pull-down Disable Register
      PPDDR   : aliased PIOA_PPDDR_Register;
      --  Pad Pull-down Enable Register
      PPDER   : aliased PIOA_PPDER_Register;
      --  Pad Pull-down Status Register
      PPDSR   : aliased PIOA_PPDSR_Register;
      --  Output Write Enable
      OWER    : aliased PIOA_OWER_Register;
      --  Output Write Disable
      OWDR    : aliased PIOA_OWDR_Register;
      --  Output Write Status Register
      OWSR    : aliased PIOA_OWSR_Register;
      --  Additional Interrupt Modes Enable Register
      AIMER   : aliased PIOA_AIMER_Register;
      --  Additional Interrupt Modes Disable Register
      AIMDR   : aliased PIOA_AIMDR_Register;
      --  Additional Interrupt Modes Mask Register
      AIMMR   : aliased PIOA_AIMMR_Register;
      --  Edge Select Register
      ESR     : aliased PIOA_ESR_Register;
      --  Level Select Register
      LSR     : aliased PIOA_LSR_Register;
      --  Edge/Level Status Register
      ELSR    : aliased PIOA_ELSR_Register;
      --  Falling Edge/Low-Level Select Register
      FELLSR  : aliased PIOA_FELLSR_Register;
      --  Rising Edge/High-Level Select Register
      REHLSR  : aliased PIOA_REHLSR_Register;
      --  Fall/Rise - Low/High Status Register
      FRLHSR  : aliased PIOA_FRLHSR_Register;
      --  Write Protection Mode Register
      WPMR    : aliased PIOA_WPMR_Register;
      --  Write Protection Status Register
      WPSR    : aliased PIOA_WPSR_Register;
      --  Schmitt Trigger Register
      SCHMITT : aliased PIOA_SCHMITT_Register;
   end record
     with Volatile;

   for PIO_Peripheral use record
      PER     at 16#0# range 0 .. 31;
      PDR     at 16#4# range 0 .. 31;
      PSR     at 16#8# range 0 .. 31;
      OER     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      OSR     at 16#18# range 0 .. 31;
      IFER    at 16#20# range 0 .. 31;
      IFDR    at 16#24# range 0 .. 31;
      IFSR    at 16#28# range 0 .. 31;
      SODR    at 16#30# range 0 .. 31;
      CODR    at 16#34# range 0 .. 31;
      ODSR    at 16#38# range 0 .. 31;
      PDSR    at 16#3C# range 0 .. 31;
      IER     at 16#40# range 0 .. 31;
      IDR     at 16#44# range 0 .. 31;
      IMR     at 16#48# range 0 .. 31;
      ISR     at 16#4C# range 0 .. 31;
      MDER    at 16#50# range 0 .. 31;
      MDDR    at 16#54# range 0 .. 31;
      MDSR    at 16#58# range 0 .. 31;
      PUDR    at 16#60# range 0 .. 31;
      PUER    at 16#64# range 0 .. 31;
      PUSR    at 16#68# range 0 .. 31;
      ABCDSR  at 16#70# range 0 .. 63;
      IFSCDR  at 16#80# range 0 .. 31;
      IFSCER  at 16#84# range 0 .. 31;
      IFSCSR  at 16#88# range 0 .. 31;
      SCDR    at 16#8C# range 0 .. 31;
      PPDDR   at 16#90# range 0 .. 31;
      PPDER   at 16#94# range 0 .. 31;
      PPDSR   at 16#98# range 0 .. 31;
      OWER    at 16#A0# range 0 .. 31;
      OWDR    at 16#A4# range 0 .. 31;
      OWSR    at 16#A8# range 0 .. 31;
      AIMER   at 16#B0# range 0 .. 31;
      AIMDR   at 16#B4# range 0 .. 31;
      AIMMR   at 16#B8# range 0 .. 31;
      ESR     at 16#C0# range 0 .. 31;
      LSR     at 16#C4# range 0 .. 31;
      ELSR    at 16#C8# range 0 .. 31;
      FELLSR  at 16#D0# range 0 .. 31;
      REHLSR  at 16#D4# range 0 .. 31;
      FRLHSR  at 16#D8# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      SCHMITT at 16#100# range 0 .. 31;
   end record;

   --  Parallel Input/Output Controller A
   PIOA_Periph : aliased PIO_Peripheral
     with Import, Address => System'To_Address (16#400E0E00#);

   --  Parallel Input/Output Controller B
   PIOB_Periph : aliased PIO_Peripheral
     with Import, Address => System'To_Address (16#400E1000#);

end SAM_SVD.PIO;
