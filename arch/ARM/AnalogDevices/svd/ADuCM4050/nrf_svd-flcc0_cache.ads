--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLCC0_CACHE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Cache Status Register
   type STAT_Register is record
      --  Read-only. If this bit is set, I-Cache is enabled
      ICEN          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      ICEN          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Setup Register
   type SETUP_Register is record
      --  If this bit set, I-Cache is enabled for AHB accesses
      ICEN          : Boolean := False;
      --  If this bit is set, I-Cache contents are locked
      LCKIC         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETUP_Register use record
      ICEN          at 0 range 0 .. 0;
      LCKIC         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cache Controller
   type FLCC0_CACHE_Peripheral is record
      --  Cache Status Register
      STAT  : aliased STAT_Register;
      --  Cache Setup Register
      SETUP : aliased SETUP_Register;
      --  Cache Key Register
      KEY   : aliased HAL.UInt32;
   end record
     with Volatile;

   for FLCC0_CACHE_Peripheral use record
      STAT  at 16#0# range 0 .. 31;
      SETUP at 16#4# range 0 .. 31;
      KEY   at 16#8# range 0 .. 31;
   end record;

   --  Cache Controller
   FLCC0_CACHE_Periph : aliased FLCC0_CACHE_Peripheral
     with Import, Address => System'To_Address (16#40018058#);

end NRF_SVD.FLCC0_CACHE;
