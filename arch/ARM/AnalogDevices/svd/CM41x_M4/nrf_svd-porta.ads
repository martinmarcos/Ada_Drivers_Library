--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PORTA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FER_PX array
   type FER_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FER_PX
   type FER_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : FER_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FER_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x Function Enable Register
   type FER_Register is record
      --  Port x Bit 0 Mode
      PX             : FER_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FER_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FER_SET_PX array
   type FER_SET_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FER_SET_PX
   type FER_SET_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : FER_SET_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FER_SET_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x Function Enable Set Register
   type FER_SET_Register is record
      --  Port x Bit 0 Mode Set
      PX             : FER_SET_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FER_SET_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FER_CLR_PX array
   type FER_CLR_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FER_CLR_PX
   type FER_CLR_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : FER_CLR_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FER_CLR_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x Function Enable Clear Register
   type FER_CLR_Register is record
      --  Port x Bit 0 Mode Clear
      PX             : FER_CLR_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FER_CLR_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DATA_PX array
   type DATA_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DATA_PX
   type DATA_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DATA_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DATA_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Data Register
   type DATA_Register is record
      --  Port x Bit 0 Data
      PX             : DATA_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DATA_SET_PX array
   type DATA_SET_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DATA_SET_PX
   type DATA_SET_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DATA_SET_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DATA_SET_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Data Set Register
   type DATA_SET_Register is record
      --  Port x Bit 0 Data Set
      PX             : DATA_SET_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_SET_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DATA_CLR_PX array
   type DATA_CLR_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DATA_CLR_PX
   type DATA_CLR_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DATA_CLR_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DATA_CLR_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Data Clear Register
   type DATA_CLR_Register is record
      --  Port x Bit 0 Data Clear
      PX             : DATA_CLR_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_CLR_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIR_PX array
   type DIR_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DIR_PX
   type DIR_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DIR_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DIR_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Direction Register
   type DIR_Register is record
      --  Port x Bit 0 Direction
      PX             : DIR_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIR_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIR_SET_PX array
   type DIR_SET_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DIR_SET_PX
   type DIR_SET_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DIR_SET_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DIR_SET_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Direction Set Register
   type DIR_SET_Register is record
      --  Port x Bit 0 Direction Set
      PX             : DIR_SET_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIR_SET_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIR_CLR_PX array
   type DIR_CLR_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DIR_CLR_PX
   type DIR_CLR_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DIR_CLR_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DIR_CLR_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Direction Clear Register
   type DIR_CLR_Register is record
      --  Port x Bit 0 Direction Clear
      PX             : DIR_CLR_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIR_CLR_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  INEN_PX array
   type INEN_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for INEN_PX
   type INEN_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : INEN_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for INEN_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Input Enable Register
   type INEN_Register is record
      --  Port x Bit 0 Input Enable
      PX             : INEN_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INEN_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  INEN_SET_PX array
   type INEN_SET_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for INEN_SET_PX
   type INEN_SET_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : INEN_SET_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for INEN_SET_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Input Enable Set Register
   type INEN_SET_Register is record
      --  Port x Bit 0 Input Enable Set
      PX             : INEN_SET_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INEN_SET_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  INEN_CLR_PX array
   type INEN_CLR_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for INEN_CLR_PX
   type INEN_CLR_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : INEN_CLR_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for INEN_CLR_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Input Enable Clear Register
   type INEN_CLR_Register is record
      --  Port x Bit 0 Input Enable Clear
      PX             : INEN_CLR_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INEN_CLR_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MUX array element
   subtype MUX_Element is HAL.UInt2;

   --  MUX array
   type MUX_Field_Array is array (0 .. 15) of MUX_Element
     with Component_Size => 2, Size => 32;

   --  Port x Multiplexer Control Register
   type MUX_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MUX as a value
            Val : HAL.UInt32;
         when True =>
            --  MUX as an array
            Arr : MUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MUX_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DATA_TGL_PX array
   type DATA_TGL_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for DATA_TGL_PX
   type DATA_TGL_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : DATA_TGL_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DATA_TGL_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Output Toggle Register
   type DATA_TGL_Register is record
      --  Port x Bit 0 Toggle
      PX             : DATA_TGL_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_TGL_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  POL_PX array
   type POL_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for POL_PX
   type POL_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : POL_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for POL_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Polarity Invert Register
   type POL_Register is record
      --  Port x Bit 0 Polarity Invert
      PX             : POL_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POL_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  POL_SET_PX array
   type POL_SET_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for POL_SET_PX
   type POL_SET_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : POL_SET_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for POL_SET_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Polarity Invert Set Register
   type POL_SET_Register is record
      --  Port x Bit 0 Polarity Invert Set
      PX             : POL_SET_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POL_SET_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  POL_CLR_PX array
   type POL_CLR_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for POL_CLR_PX
   type POL_CLR_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : POL_CLR_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for POL_CLR_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Polarity Invert Clear Register
   type POL_CLR_Register is record
      --  Port x Bit 0 Polarity Invert Clear
      PX             : POL_CLR_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POL_CLR_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Port x GPIO Lock Register
   type LOCK_Register is record
      --  Function Enable Lock
      FER           : Boolean := False;
      --  Function Multiplexer Lock
      MUX           : Boolean := False;
      --  Data, TGL Lock
      DATA          : Boolean := False;
      --  Direction Lock
      DIR           : Boolean := False;
      --  Input Enable Lock
      INEN          : Boolean := False;
      --  Polarity Lock
      POLAR         : Boolean := False;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      FER           at 0 range 0 .. 0;
      MUX           at 0 range 1 .. 1;
      DATA          at 0 range 2 .. 2;
      DIR           at 0 range 3 .. 3;
      INEN          at 0 range 4 .. 4;
      POLAR         at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  TRIG_TGL_PX array
   type TRIG_TGL_PX_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for TRIG_TGL_PX
   type TRIG_TGL_PX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PX as a value
            Val : HAL.UInt16;
         when True =>
            --  PX as an array
            Arr : TRIG_TGL_PX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for TRIG_TGL_PX_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port x GPIO Trigger Toggle Register
   type TRIG_TGL_Register is record
      --  PX0 Data Toggle on Trigger
      PX             : TRIG_TGL_PX_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG_TGL_Register use record
      PX             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input/Output
   type PORTA_Peripheral is record
      --  Port x Function Enable Register
      FER      : aliased FER_Register;
      --  Port x Function Enable Set Register
      FER_SET  : aliased FER_SET_Register;
      --  Port x Function Enable Clear Register
      FER_CLR  : aliased FER_CLR_Register;
      --  Port x GPIO Data Register
      DATA     : aliased DATA_Register;
      --  Port x GPIO Data Set Register
      DATA_SET : aliased DATA_SET_Register;
      --  Port x GPIO Data Clear Register
      DATA_CLR : aliased DATA_CLR_Register;
      --  Port x GPIO Direction Register
      DIR      : aliased DIR_Register;
      --  Port x GPIO Direction Set Register
      DIR_SET  : aliased DIR_SET_Register;
      --  Port x GPIO Direction Clear Register
      DIR_CLR  : aliased DIR_CLR_Register;
      --  Port x GPIO Input Enable Register
      INEN     : aliased INEN_Register;
      --  Port x GPIO Input Enable Set Register
      INEN_SET : aliased INEN_SET_Register;
      --  Port x GPIO Input Enable Clear Register
      INEN_CLR : aliased INEN_CLR_Register;
      --  Port x Multiplexer Control Register
      MUX      : aliased MUX_Register;
      --  Port x GPIO Output Toggle Register
      DATA_TGL : aliased DATA_TGL_Register;
      --  Port x GPIO Polarity Invert Register
      POL      : aliased POL_Register;
      --  Port x GPIO Polarity Invert Set Register
      POL_SET  : aliased POL_SET_Register;
      --  Port x GPIO Polarity Invert Clear Register
      POL_CLR  : aliased POL_CLR_Register;
      --  Port x GPIO Lock Register
      LOCK     : aliased LOCK_Register;
      --  Port x GPIO Trigger Toggle Register
      TRIG_TGL : aliased TRIG_TGL_Register;
   end record
     with Volatile;

   for PORTA_Peripheral use record
      FER      at 16#0# range 0 .. 31;
      FER_SET  at 16#4# range 0 .. 31;
      FER_CLR  at 16#8# range 0 .. 31;
      DATA     at 16#C# range 0 .. 31;
      DATA_SET at 16#10# range 0 .. 31;
      DATA_CLR at 16#14# range 0 .. 31;
      DIR      at 16#18# range 0 .. 31;
      DIR_SET  at 16#1C# range 0 .. 31;
      DIR_CLR  at 16#20# range 0 .. 31;
      INEN     at 16#24# range 0 .. 31;
      INEN_SET at 16#28# range 0 .. 31;
      INEN_CLR at 16#2C# range 0 .. 31;
      MUX      at 16#30# range 0 .. 31;
      DATA_TGL at 16#34# range 0 .. 31;
      POL      at 16#38# range 0 .. 31;
      POL_SET  at 16#3C# range 0 .. 31;
      POL_CLR  at 16#40# range 0 .. 31;
      LOCK     at 16#44# range 0 .. 31;
      TRIG_TGL at 16#48# range 0 .. 31;
   end record;

   --  General Purpose Input/Output
   PORTA_Periph : aliased PORTA_Peripheral
     with Import, Address => System'To_Address (16#41003000#);

end NRF_SVD.PORTA;
