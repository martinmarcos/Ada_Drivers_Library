--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKV31F51212.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Cyclic Redundancy Check
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
      CTRL_TCRC_Field_0,
      --  32-bit CRC protocol.
      CTRL_TCRC_Field_1)
     with Size => 1;
   for CTRL_TCRC_Field use
     (CTRL_TCRC_Field_0 => 0,
      CTRL_TCRC_Field_1 => 1);

   --  Write CRC Data Register As Seed
   type CTRL_WAS_Field is
     (
      --  Writes to the CRC data register are data values.
      CTRL_WAS_Field_0,
      --  Writes to the CRC data register are seed values.
      CTRL_WAS_Field_1)
     with Size => 1;
   for CTRL_WAS_Field use
     (CTRL_WAS_Field_0 => 0,
      CTRL_WAS_Field_1 => 1);

   --  Complement Read Of CRC Data Register
   type CTRL_FXOR_Field is
     (
      --  No XOR on reading.
      CTRL_FXOR_Field_0,
      --  Invert or complement the read value of the CRC Data register.
      CTRL_FXOR_Field_1)
     with Size => 1;
   for CTRL_FXOR_Field use
     (CTRL_FXOR_Field_0 => 0,
      CTRL_FXOR_Field_1 => 1);

   --  Type Of Transpose For Read
   type CTRL_TOTR_Field is
     (
      --  No transposition.
      CTRL_TOTR_Field_00,
      --  Bits in bytes are transposed; bytes are not transposed.
      CTRL_TOTR_Field_01,
      --  Both bits in bytes and bytes are transposed.
      CTRL_TOTR_Field_10,
      --  Only bytes are transposed; no bits in a byte are transposed.
      CTRL_TOTR_Field_11)
     with Size => 2;
   for CTRL_TOTR_Field use
     (CTRL_TOTR_Field_00 => 0,
      CTRL_TOTR_Field_01 => 1,
      CTRL_TOTR_Field_10 => 2,
      CTRL_TOTR_Field_11 => 3);

   --  Type Of Transpose For Writes
   type CTRL_TOT_Field is
     (
      --  No transposition.
      CTRL_TOT_Field_00,
      --  Bits in bytes are transposed; bytes are not transposed.
      CTRL_TOT_Field_01,
      --  Both bits in bytes and bytes are transposed.
      CTRL_TOT_Field_10,
      --  Only bytes are transposed; no bits in a byte are transposed.
      CTRL_TOT_Field_11)
     with Size => 2;
   for CTRL_TOT_Field use
     (CTRL_TOT_Field_00 => 0,
      CTRL_TOT_Field_01 => 1,
      CTRL_TOT_Field_10 => 2,
      CTRL_TOT_Field_11 => 3);

   --  CRC Control register
   type CRC_CTRL_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Width of CRC protocol.
      TCRC           : CTRL_TCRC_Field := NRF_SVD.CRC.CTRL_TCRC_Field_0;
      --  Write CRC Data Register As Seed
      WAS            : CTRL_WAS_Field := NRF_SVD.CRC.CTRL_WAS_Field_0;
      --  Complement Read Of CRC Data Register
      FXOR           : CTRL_FXOR_Field := NRF_SVD.CRC.CTRL_FXOR_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Type Of Transpose For Read
      TOTR           : CTRL_TOTR_Field := NRF_SVD.CRC.CTRL_TOTR_Field_00;
      --  Type Of Transpose For Writes
      TOT            : CTRL_TOT_Field := NRF_SVD.CRC.CTRL_TOT_Field_00;
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
      CTRLHU_TCRC_Field_0,
      --  32-bit CRC protocol.
      CTRLHU_TCRC_Field_1)
     with Size => 1;
   for CTRLHU_TCRC_Field use
     (CTRLHU_TCRC_Field_0 => 0,
      CTRLHU_TCRC_Field_1 => 1);

   --  no description available
   type CTRLHU_WAS_Field is
     (
      --  Writes to CRC data register are data values.
      CTRLHU_WAS_Field_0,
      --  Writes to CRC data reguster are seed values.
      CTRLHU_WAS_Field_1)
     with Size => 1;
   for CTRLHU_WAS_Field use
     (CTRLHU_WAS_Field_0 => 0,
      CTRLHU_WAS_Field_1 => 1);

   --  no description available
   type CTRLHU_FXOR_Field is
     (
      --  No XOR on reading.
      CTRLHU_FXOR_Field_0,
      --  Invert or complement the read value of CRC data register.
      CTRLHU_FXOR_Field_1)
     with Size => 1;
   for CTRLHU_FXOR_Field use
     (CTRLHU_FXOR_Field_0 => 0,
      CTRLHU_FXOR_Field_1 => 1);

   --  no description available
   type CTRLHU_TOTR_Field is
     (
      --  No Transposition.
      CTRLHU_TOTR_Field_00,
      --  Bits in bytes are transposed, bytes are not transposed.
      CTRLHU_TOTR_Field_01,
      --  Both bits in bytes and bytes are transposed.
      CTRLHU_TOTR_Field_10,
      --  Only bytes are transposed; no bits in a byte are transposed.
      CTRLHU_TOTR_Field_11)
     with Size => 2;
   for CTRLHU_TOTR_Field use
     (CTRLHU_TOTR_Field_00 => 0,
      CTRLHU_TOTR_Field_01 => 1,
      CTRLHU_TOTR_Field_10 => 2,
      CTRLHU_TOTR_Field_11 => 3);

   --  no description available
   type CTRLHU_TOT_Field is
     (
      --  No Transposition.
      CTRLHU_TOT_Field_00,
      --  Bits in bytes are transposed, bytes are not transposed.
      CTRLHU_TOT_Field_01,
      --  Both bits in bytes and bytes are transposed.
      CTRLHU_TOT_Field_10,
      --  Only bytes are transposed; no bits in a byte are transposed.
      CTRLHU_TOT_Field_11)
     with Size => 2;
   for CTRLHU_TOT_Field use
     (CTRLHU_TOT_Field_00 => 0,
      CTRLHU_TOT_Field_01 => 1,
      CTRLHU_TOT_Field_10 => 2,
      CTRLHU_TOT_Field_11 => 3);

   --  CRC_CTRLHU register.
   type CRC_CTRLHU_Register is record
      --  no description available
      TCRC         : CTRLHU_TCRC_Field := NRF_SVD.CRC.CTRLHU_TCRC_Field_0;
      --  no description available
      WAS          : CTRLHU_WAS_Field := NRF_SVD.CRC.CTRLHU_WAS_Field_0;
      --  no description available
      FXOR         : CTRLHU_FXOR_Field := NRF_SVD.CRC.CTRLHU_FXOR_Field_0;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  no description available
      TOTR         : CTRLHU_TOTR_Field := NRF_SVD.CRC.CTRLHU_TOTR_Field_00;
      --  no description available
      TOT          : CTRLHU_TOT_Field := NRF_SVD.CRC.CTRLHU_TOT_Field_00;
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
     with Import, Address => CRC_Base;

end NRF_SVD.CRC;
