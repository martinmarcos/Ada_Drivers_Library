--

--  This spec has been automatically generated from AC33GA256.svd

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
      --  Read-only. P0 Input level
      P              : IDR_P_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Port n Set/Reset Register
   type SRR_Register is record
      --  Write-only. P0 bit set
      P0_SET    : Boolean := False;
      --  Write-only. P1 bit set
      P1_SET    : Boolean := False;
      --  Write-only. P2 bit set
      P2_SET    : Boolean := False;
      --  Write-only. P3 bit set
      P3_SET    : Boolean := False;
      --  Write-only. P4 bit set
      P4_SET    : Boolean := False;
      --  Write-only. P5 bit set
      P5_SET    : Boolean := False;
      --  Write-only. P6 bit set
      P6_SET    : Boolean := False;
      --  Write-only. P7 bit set
      P7_SET    : Boolean := False;
      --  Write-only. P8 bit set
      P8_SET    : Boolean := False;
      --  Write-only. P9 bit set
      P9_SET    : Boolean := False;
      --  Write-only. P10 bit set
      P10_SET   : Boolean := False;
      --  Write-only. P11 bit set
      P11_SET   : Boolean := False;
      --  Write-only. P12 bit set
      P12_SET   : Boolean := False;
      --  Write-only. P13 bit set
      P13_SET   : Boolean := False;
      --  Write-only. P14 bit set
      P14_SET   : Boolean := False;
      --  Write-only. P15 bit set
      P15_SET   : Boolean := False;
      --  Write-only. P0 bit reset
      P0_RESET  : Boolean := False;
      --  Write-only. P1 bit reset
      P1_RESET  : Boolean := False;
      --  Write-only. P2 bit reset
      P2_RESET  : Boolean := False;
      --  Write-only. P3 bit reset
      P3_RESET  : Boolean := False;
      --  Write-only. P4 bit reset
      P4_RESET  : Boolean := False;
      --  Write-only. P5 bit reset
      P5_RESET  : Boolean := False;
      --  Write-only. P6 bit reset
      P6_RESET  : Boolean := False;
      --  Write-only. P7 bit reset
      P7_RESET  : Boolean := False;
      --  Write-only. P8 bit reset
      P8_RESET  : Boolean := False;
      --  Write-only. P9 bit reset
      P9_RESET  : Boolean := False;
      --  Write-only. P10 bit reset
      P10_RESET : Boolean := False;
      --  Write-only. P11 bit reset
      P11_RESET : Boolean := False;
      --  Write-only. P12 bit reset
      P12_RESET : Boolean := False;
      --  Write-only. P13 bit reset
      P13_RESET : Boolean := False;
      --  Write-only. P14 bit reset
      P14_RESET : Boolean := False;
      --  Write-only. P15 bit reset
      P15_RESET : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRR_Register use record
      P0_SET    at 0 range 0 .. 0;
      P1_SET    at 0 range 1 .. 1;
      P2_SET    at 0 range 2 .. 2;
      P3_SET    at 0 range 3 .. 3;
      P4_SET    at 0 range 4 .. 4;
      P5_SET    at 0 range 5 .. 5;
      P6_SET    at 0 range 6 .. 6;
      P7_SET    at 0 range 7 .. 7;
      P8_SET    at 0 range 8 .. 8;
      P9_SET    at 0 range 9 .. 9;
      P10_SET   at 0 range 10 .. 10;
      P11_SET   at 0 range 11 .. 11;
      P12_SET   at 0 range 12 .. 12;
      P13_SET   at 0 range 13 .. 13;
      P14_SET   at 0 range 14 .. 14;
      P15_SET   at 0 range 15 .. 15;
      P0_RESET  at 0 range 16 .. 16;
      P1_RESET  at 0 range 17 .. 17;
      P2_RESET  at 0 range 18 .. 18;
      P3_RESET  at 0 range 19 .. 19;
      P4_RESET  at 0 range 20 .. 20;
      P5_RESET  at 0 range 21 .. 21;
      P6_RESET  at 0 range 22 .. 22;
      P7_RESET  at 0 range 23 .. 23;
      P8_RESET  at 0 range 24 .. 24;
      P9_RESET  at 0 range 25 .. 25;
      P10_RESET at 0 range 26 .. 26;
      P11_RESET at 0 range 27 .. 27;
      P12_RESET at 0 range 28 .. 28;
      P13_RESET at 0 range 29 .. 29;
      P14_RESET at 0 range 30 .. 30;
      P15_RESET at 0 range 31 .. 31;
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
      --  Port n Set/Reset Register
      SRR : aliased SRR_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      ODR at 16#0# range 0 .. 31;
      IDR at 16#4# range 0 .. 31;
      SRR at 16#8# range 0 .. 31;
   end record;

   --  GENERAL PURPOSE I/O
   PA_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40000300#);

   --  GENERAL PURPOSE I/O
   PB_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40000310#);

   --  GENERAL PURPOSE I/O
   PC_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40000320#);

   --  GENERAL PURPOSE I/O
   PD_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40000330#);

   --  GENERAL PURPOSE I/O
   PE_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40000340#);

   --  GENERAL PURPOSE I/O
   PF_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40000350#);

end NRF_SVD.GPIO;
