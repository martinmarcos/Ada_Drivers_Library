--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  PRNG Unit
package NRF_SVD.PRNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Random Data / Key Valid Flag
   type CHK_RDV_Field is
     (
      --  New random data block is not yet ready to be read. In ) this flag is
      --  set to #0 while loading is in progress.
      VALUE1,
      --  Random data block is valid. In key loading mode this value indicates
      --  that the next partial key word can be written to PRNG_WORD.
      VALUE2)
     with Size => 1;
   for CHK_RDV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PRNG Status Check Register
   type CHK_Register is record
      --  Read-only. Random Data / Key Valid Flag
      RDV           : CHK_RDV_Field;
      --  unspecified
      Reserved_1_15 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CHK_Register use record
      RDV           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  Random Data Block Size
   type CTRL_RDBS_Field is
     (
      --  Reset state (no random data block size defined), value of PRNG_WORD
      --  is undefined.
      VALUE1,
      --  8 bits in PRNG_WORD.RDATA[7:0]
      VALUE2,
      --  16 bits in PRNG_WORD.RDATA[15:0]
      VALUE3)
     with Size => 2;
   for CTRL_RDBS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Key Load Operation Mode
   type CTRL_KLD_Field is
     (
      --  Streaming mode (default)
      VALUE1,
      --  Key loading mode
      VALUE2)
     with Size => 1;
   for CTRL_KLD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PRNG Control Register
   type CTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Random Data Block Size
      RDBS          : CTRL_RDBS_Field := NRF_SVD.PRNG.VALUE1;
      --  Key Load Operation Mode
      KLD           : CTRL_KLD_Field := NRF_SVD.PRNG.VALUE1;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RDBS          at 0 range 1 .. 2;
      KLD           at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PRNG Unit
   type PRNG_Peripheral is record
      --  PRNG Word Register
      WORD : aliased HAL.UInt16;
      --  PRNG Status Check Register
      CHK  : aliased CHK_Register;
      --  PRNG Control Register
      CTRL : aliased CTRL_Register;
   end record
     with Volatile;

   for PRNG_Peripheral use record
      WORD at 16#0# range 0 .. 15;
      CHK  at 16#4# range 0 .. 15;
      CTRL at 16#C# range 0 .. 15;
   end record;

   --  PRNG Unit
   PRNG_Periph : aliased PRNG_Peripheral
     with Import, Address => PRNG_Base;

end NRF_SVD.PRNG;
