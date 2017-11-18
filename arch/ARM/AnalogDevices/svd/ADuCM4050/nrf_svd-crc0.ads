--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CRC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CRC Peripheral Enable
   type CTL_EN_Field is
     (
      --  CRC peripheral is disabled
      Crc_Dis,
      --  CRC peripheral is enabled
      Crc_En)
     with Size => 1;
   for CTL_EN_Field use
     (Crc_Dis => 0,
      Crc_En => 1);

   --  LSB First Calculation Order
   type CTL_LSBFIRST_Field is
     (
      --  MSB First CRC calculation is done
      Msb_First,
      --  LSB First CRC calculation is done
      Lsb_First)
     with Size => 1;
   for CTL_LSBFIRST_Field use
     (Msb_First => 0,
      Lsb_First => 1);

   --  Bit Mirroring
   type CTL_BITMIRR_Field is
     (
      --  Bit Mirroring is disabled
      Bitmirr_Dis,
      --  Bit Mirroring is enabled
      Bitmirr_En)
     with Size => 1;
   for CTL_BITMIRR_Field use
     (Bitmirr_Dis => 0,
      Bitmirr_En => 1);

   --  Byte Mirroring
   type CTL_BYTMIRR_Field is
     (
      --  Byte Mirroring is disabled
      Bytemir_Dis,
      --  Byte Mirroring is enabled
      Bytemir_En)
     with Size => 1;
   for CTL_BYTMIRR_Field use
     (Bytemir_Dis => 0,
      Bytemir_En => 1);

   --  Word16 Swap
   type CTL_W16SWP_Field is
     (
      --  Word16 Swap disabled
      W16Sp_Dis,
      --  Word16 Swap enabled
      W16Sp_En)
     with Size => 1;
   for CTL_W16SWP_Field use
     (W16Sp_Dis => 0,
      W16Sp_En => 1);

   subtype CTL_RevID_Field is HAL.UInt4;

   --  CRC Control
   type CTL_Register is record
      --  CRC Peripheral Enable
      EN            : CTL_EN_Field := NRF_SVD.CRC0.Crc_Dis;
      --  LSB First Calculation Order
      LSBFIRST      : CTL_LSBFIRST_Field := NRF_SVD.CRC0.Msb_First;
      --  Bit Mirroring
      BITMIRR       : CTL_BITMIRR_Field := NRF_SVD.CRC0.Bitmirr_Dis;
      --  Byte Mirroring
      BYTMIRR       : CTL_BYTMIRR_Field := NRF_SVD.CRC0.Bytemir_Dis;
      --  Word16 Swap
      W16SWP        : CTL_W16SWP_Field := NRF_SVD.CRC0.W16Sp_Dis;
      --  unspecified
      Reserved_5_27 : HAL.UInt23 := 16#0#;
      --  Read-only. Revision ID
      RevID         : CTL_RevID_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN            at 0 range 0 .. 0;
      LSBFIRST      at 0 range 1 .. 1;
      BITMIRR       at 0 range 2 .. 2;
      BYTMIRR       at 0 range 3 .. 3;
      W16SWP        at 0 range 4 .. 4;
      Reserved_5_27 at 0 range 5 .. 27;
      RevID         at 0 range 28 .. 31;
   end record;

   --  Input Data Bits

   --  Input Data Bits
   type IPBITS_Registers is array (0 .. 7) of HAL.UInt8
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   type CRC0_Disc is
     (
      Its,
      Yte);

   --  CRC Accelerator
   type CRC0_Peripheral
     (Discriminent : CRC0_Disc := Its)
   is record
      --  CRC Control
      CTL    : aliased CTL_Register;
      --  Input Data Word
      IPDATA : aliased HAL.UInt32;
      --  CRC Result
      RESULT : aliased HAL.UInt32;
      --  Programmable CRC Polynomial
      POLY   : aliased HAL.UInt32;
      case Discriminent is
         when Its =>
            --  Input Data Bits
            IPBITS : aliased IPBITS_Registers;
         when Yte =>
            --  Input Data Byte
            IPBYTE : aliased HAL.UInt8;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for CRC0_Peripheral use record
      CTL    at 16#0# range 0 .. 31;
      IPDATA at 16#4# range 0 .. 31;
      RESULT at 16#8# range 0 .. 31;
      POLY   at 16#C# range 0 .. 31;
      IPBITS at 16#10# range 0 .. 63;
      IPBYTE at 16#10# range 0 .. 7;
   end record;

   --  CRC Accelerator
   CRC0_Periph : aliased CRC0_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

end NRF_SVD.CRC0;
