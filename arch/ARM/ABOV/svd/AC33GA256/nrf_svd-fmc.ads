--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CFG_CWAIT_Field is HAL.UInt5;
   subtype CFG_DWAIT_Field is HAL.UInt5;

   --  Flash Memory Configuration Register
   type CFG_Register is record
      --  Wait value of code flash memory
      CWAIT          : CFG_CWAIT_Field := 16#3#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Wait value of data flash memory
      DWAIT          : CFG_DWAIT_Field := 16#3#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      CWAIT          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DWAIT          at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Flash Memory Control Register
   type CON_Register is record
      --  Select Code or Data Flash for PGM
      PROG           : Boolean := False;
      --  Select Code or Data Flash Sector Erase
      SERA           : Boolean := False;
      --  Select Code or Data Flash Macro Erase
      MASE           : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  PGM ERASE Start
      NVSTR          : Boolean := False;
      --  Read-only. Code Flash PGM ERASE Status Flag
      CTBIT          : Boolean := False;
      --  Read-only. Data Flash PGM ERASE Status Flag
      DTBIT          : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Select FlashROM for PGMERASE
      CS             : Boolean := False;
      --  Code Flash PGM mode
      OE             : Boolean := False;
      --  Latch Address for PGMERASE
      AE             : Boolean := False;
      --  Select Code Flash for PGMERASE
      CSEL           : Boolean := False;
      --  Select Data Flash for PGMERASE
      DSEL           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      PROG           at 0 range 0 .. 0;
      SERA           at 0 range 1 .. 1;
      MASE           at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      NVSTR          at 0 range 7 .. 7;
      CTBIT          at 0 range 8 .. 8;
      DTBIT          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CS             at 0 range 11 .. 11;
      OE             at 0 range 12 .. 12;
      AE             at 0 range 13 .. 13;
      CSEL           at 0 range 14 .. 14;
      DSEL           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  AR_A array
   type AR_A_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AR_A
   type AR_A_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  A as a value
            Val : HAL.UInt2;
         when True =>
            --  A as an array
            Arr : AR_A_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AR_A_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype AR_ADDR_Field is HAL.UInt14;

   --  Flash Memory Address Register
   type AR_Register is record
      --  Address A0 for Data Flash Memory
      A              : AR_A_Field := (As_Array => False, Val => 16#0#);
      --  Flash Memory Address Value
      ADDR           : AR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Always 0 (prohibited to write 1)
      IFREN          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AR_Register use record
      A              at 0 range 0 .. 1;
      ADDR           at 0 range 2 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      IFREN          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  PROTECT_SP array
   type PROTECT_SP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PROTECT_SP
   type PROTECT_SP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SP as a value
            Val : HAL.UInt4;
         when True =>
            --  SP as an array
            Arr : PROTECT_SP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PROTECT_SP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PROTECT_BP array
   type PROTECT_BP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PROTECT_BP
   type PROTECT_BP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BP as a value
            Val : HAL.UInt4;
         when True =>
            --  BP as an array
            Arr : PROTECT_BP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PROTECT_BP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PROTECT_DP array
   type PROTECT_DP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PROTECT_DP
   type PROTECT_DP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DP as a value
            Val : HAL.UInt4;
         when True =>
            --  DP as an array
            Arr : PROTECT_DP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PROTECT_DP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Flash Memory Protection Register
   type PROTECT_Register is record
      --  Protection bit from 0x0000_0000 to 0x0000_0FFF
      SP             : PROTECT_SP_Field := (As_Array => False, Val => 16#0#);
      --  Protection bit from 0x0000_4000 to 0x0000_FFFF
      BP             : PROTECT_BP_Field := (As_Array => False, Val => 16#0#);
      --  Protection bit of the Data Flash 8KB #0
      DP             : PROTECT_DP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Always 0
      CIP            : Boolean := False;
      --  Always 0
      DIP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROTECT_Register use record
      SP             at 0 range 0 .. 3;
      BP             at 0 range 4 .. 7;
      DP             at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CIP            at 0 range 14 .. 14;
      DIP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  INTERNAL FLASH MEMORY
   type FMC_Peripheral is record
      --  Flash Memory Configuration Register
      CFG     : aliased CFG_Register;
      --  Flash Memory Control Register
      CON     : aliased CON_Register;
      --  Flash Memory Output Data Register
      ODR     : aliased HAL.UInt32;
      --  Flash Memory Input Data Register
      IDR     : aliased HAL.UInt32;
      --  Flash Memory Address Register
      AR      : aliased AR_Register;
      --  Flash Memory Protection Register
      PROTECT : aliased PROTECT_Register;
   end record
     with Volatile;

   for FMC_Peripheral use record
      CFG     at 16#0# range 0 .. 31;
      CON     at 16#4# range 0 .. 31;
      ODR     at 16#8# range 0 .. 31;
      IDR     at 16#C# range 0 .. 31;
      AR      at 16#10# range 0 .. 31;
      PROTECT at 16#1C# range 0 .. 31;
   end record;

   --  INTERNAL FLASH MEMORY
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => System'To_Address (16#40000100#);

end NRF_SVD.FMC;
