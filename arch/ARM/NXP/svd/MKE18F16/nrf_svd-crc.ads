--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CRC_DATA_LL_Field is HAL.UInt8;
   subtype CRC_DATA_LU_Field is HAL.UInt8;
   subtype CRC_DATA_HL_Field is HAL.UInt8;
   subtype CRC_DATA_HU_Field is HAL.UInt8;

   --  CRC Data register
   type CRC_DATA_Register is record
      --  CRC Low Lower Byte
      LL : CRC_DATA_LL_Field := 16#FF#;
      --  CRC Low Upper Byte
      LU : CRC_DATA_LU_Field := 16#FF#;
      --  CRC High Lower Byte
      HL : CRC_DATA_HL_Field := 16#FF#;
      --  CRC High Upper Byte
      HU : CRC_DATA_HU_Field := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_DATA_Register use record
      LL at 0 range 0 .. 7;
      LU at 0 range 8 .. 15;
      HL at 0 range 16 .. 23;
      HU at 0 range 24 .. 31;
   end record;

   subtype CRC_GPOLY_LOW_Field is HAL.UInt16;
   subtype CRC_GPOLY_HIGH_Field is HAL.UInt16;

   --  CRC Polynomial register
   type CRC_GPOLY_Register is record
      --  Low Polynominal Half-word
      LOW  : CRC_GPOLY_LOW_Field := 16#1021#;
      --  High Polynominal Half-word
      HIGH : CRC_GPOLY_HIGH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_GPOLY_Register use record
      LOW  at 0 range 0 .. 15;
      HIGH at 0 range 16 .. 31;
   end record;

   --  Width of CRC protocol.
   type CTRL_TCRC_Field is
     (
      --  16-bit CRC protocol.
      Tcrc_0,
      --  32-bit CRC protocol.
      Tcrc_1)
     with Size => 1;
   for CTRL_TCRC_Field use
     (Tcrc_0 => 0,
      Tcrc_1 => 1);

   --  Write CRC Data Register As Seed
   type CTRL_WAS_Field is
     (
      --  Writes to the CRC data register are data values.
      Was_0,
      --  Writes to the CRC data register are seed values.
      Was_1)
     with Size => 1;
   for CTRL_WAS_Field use
     (Was_0 => 0,
      Was_1 => 1);

   --  Complement Read Of CRC Data Register
   type CTRL_FXOR_Field is
     (
      --  No XOR on reading.
      Fxor_0,
      --  Invert or complement the read value of the CRC Data register.
      Fxor_1)
     with Size => 1;
   for CTRL_FXOR_Field use
     (Fxor_0 => 0,
      Fxor_1 => 1);

   --  Type Of Transpose For Read
   type CTRL_TOTR_Field is
     (
      --  No transposition.
      Totr_0,
      --  Bits in bytes are transposed; bytes are not transposed.
      Totr_1,
      --  Both bits in bytes and bytes are transposed.
      Totr_2,
      --  Only bytes are transposed; no bits in a byte are transposed.
      Totr_3)
     with Size => 2;
   for CTRL_TOTR_Field use
     (Totr_0 => 0,
      Totr_1 => 1,
      Totr_2 => 2,
      Totr_3 => 3);

   --  Type Of Transpose For Writes
   type CTRL_TOT_Field is
     (
      --  No transposition.
      Tot_0,
      --  Bits in bytes are transposed; bytes are not transposed.
      Tot_1,
      --  Both bits in bytes and bytes are transposed.
      Tot_2,
      --  Only bytes are transposed; no bits in a byte are transposed.
      Tot_3)
     with Size => 2;
   for CTRL_TOT_Field use
     (Tot_0 => 0,
      Tot_1 => 1,
      Tot_2 => 2,
      Tot_3 => 3);

   --  CRC Control register
   type CRC_CTRL_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Width of CRC protocol.
      TCRC           : CTRL_TCRC_Field := NRF_SVD.CRC.Tcrc_0;
      --  Write CRC Data Register As Seed
      WAS            : CTRL_WAS_Field := NRF_SVD.CRC.Was_0;
      --  Complement Read Of CRC Data Register
      FXOR           : CTRL_FXOR_Field := NRF_SVD.CRC.Fxor_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Type Of Transpose For Read
      TOTR           : CTRL_TOTR_Field := NRF_SVD.CRC.Totr_0;
      --  Type Of Transpose For Writes
      TOT            : CTRL_TOT_Field := NRF_SVD.CRC.Tot_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_CTRL_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      TCRC           at 0 range 24 .. 24;
      WAS            at 0 range 25 .. 25;
      FXOR           at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TOTR           at 0 range 28 .. 29;
      TOT            at 0 range 30 .. 31;
   end record;

   --  no description available
   type CTRLHU_TCRC_Field is
     (
      --  16-bit CRC protocol.
      Tcrc_0,
      --  32-bit CRC protocol.
      Tcrc_1)
     with Size => 1;
   for CTRLHU_TCRC_Field use
     (Tcrc_0 => 0,
      Tcrc_1 => 1);

   --  no description available
   type CTRLHU_WAS_Field is
     (
      --  Writes to CRC data register are data values.
      Was_0,
      --  Writes to CRC data reguster are seed values.
      Was_1)
     with Size => 1;
   for CTRLHU_WAS_Field use
     (Was_0 => 0,
      Was_1 => 1);

   --  no description available
   type CTRLHU_FXOR_Field is
     (
      --  No XOR on reading.
      Fxor_0,
      --  Invert or complement the read value of CRC data register.
      Fxor_1)
     with Size => 1;
   for CTRLHU_FXOR_Field use
     (Fxor_0 => 0,
      Fxor_1 => 1);

   --  no description available
   type CTRLHU_TOTR_Field is
     (
      --  No Transposition.
      Totr_0,
      --  Bits in bytes are transposed, bytes are not transposed.
      Totr_1,
      --  Both bits in bytes and bytes are transposed.
      Totr_2,
      --  Only bytes are transposed; no bits in a byte are transposed.
      Totr_3)
     with Size => 2;
   for CTRLHU_TOTR_Field use
     (Totr_0 => 0,
      Totr_1 => 1,
      Totr_2 => 2,
      Totr_3 => 3);

   --  no description available
   type CTRLHU_TOT_Field is
     (
      --  No Transposition.
      Tot_0,
      --  Bits in bytes are transposed, bytes are not transposed.
      Tot_1,
      --  Both bits in bytes and bytes are transposed.
      Tot_2,
      --  Only bytes are transposed; no bits in a byte are transposed.
      Tot_3)
     with Size => 2;
   for CTRLHU_TOT_Field use
     (Tot_0 => 0,
      Tot_1 => 1,
      Tot_2 => 2,
      Tot_3 => 3);

   --  CRC_CTRLHU register.
   type CRC_CTRLHU_Register is record
      --  no description available
      TCRC         : CTRLHU_TCRC_Field := NRF_SVD.CRC.Tcrc_0;
      --  no description available
      WAS          : CTRLHU_WAS_Field := NRF_SVD.CRC.Was_0;
      --  no description available
      FXOR         : CTRLHU_FXOR_Field := NRF_SVD.CRC.Fxor_0;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  no description available
      TOTR         : CTRLHU_TOTR_Field := NRF_SVD.CRC.Totr_0;
      --  no description available
      TOT          : CTRLHU_TOT_Field := NRF_SVD.CRC.Tot_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CRC_CTRLHU_Register use record
      TCRC         at 0 range 0 .. 0;
      WAS          at 0 range 1 .. 1;
      FXOR         at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      TOTR         at 0 range 4 .. 5;
      TOT          at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type CRC_Disc is
     (
      Default,
      L,
      Ll);

   --  Cyclic Redundancy Check
   type CRC_Peripheral
     (Discriminent : CRC_Disc := Default)
   is record
      --  CRC_DATALU register.
      DATALU  : aliased HAL.UInt8;
      --  CRC_DATAHU register.
      DATAHU  : aliased HAL.UInt8;
      --  CRC_GPOLYLU register.
      GPOLYLU : aliased HAL.UInt8;
      --  CRC_GPOLYHU register.
      GPOLYHU : aliased HAL.UInt8;
      --  CRC Control register
      CTRL    : aliased CRC_CTRL_Register;
      --  CRC_CTRLHU register.
      CTRLHU  : aliased CRC_CTRLHU_Register;
      case Discriminent is
         when Default =>
            --  CRC Data register
            DATA : aliased CRC_DATA_Register;
            --  CRC_DATAH register.
            DATAH : aliased HAL.UInt16;
            --  CRC Polynomial register
            GPOLY : aliased CRC_GPOLY_Register;
            --  CRC_GPOLYH register.
            GPOLYH : aliased HAL.UInt16;
         when L =>
            --  CRC_DATAL register.
            DATAL : aliased HAL.UInt16;
            --  CRC_DATAHL register.
            DATAHL : aliased HAL.UInt8;
            --  CRC_GPOLYL register.
            GPOLYL : aliased HAL.UInt16;
            --  CRC_GPOLYHL register.
            GPOLYHL : aliased HAL.UInt8;
         when Ll =>
            --  CRC_DATALL register.
            DATALL : aliased HAL.UInt8;
            --  CRC_GPOLYLL register.
            GPOLYLL : aliased HAL.UInt8;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for CRC_Peripheral use record
      DATALU  at 16#1# range 0 .. 7;
      DATAHU  at 16#3# range 0 .. 7;
      GPOLYLU at 16#5# range 0 .. 7;
      GPOLYHU at 16#7# range 0 .. 7;
      CTRL    at 16#8# range 0 .. 31;
      CTRLHU  at 16#B# range 0 .. 7;
      DATA    at 16#0# range 0 .. 31;
      DATAH   at 16#2# range 0 .. 15;
      GPOLY   at 16#4# range 0 .. 31;
      GPOLYH  at 16#6# range 0 .. 15;
      DATAL   at 16#0# range 0 .. 15;
      DATAHL  at 16#2# range 0 .. 7;
      GPOLYL  at 16#4# range 0 .. 15;
      GPOLYHL at 16#6# range 0 .. 7;
      DATALL  at 16#0# range 0 .. 7;
      GPOLYLL at 16#4# range 0 .. 7;
   end record;

   --  Cyclic Redundancy Check
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => System'To_Address (16#40032000#);

end NRF_SVD.CRC;
