--

--  This spec has been automatically generated from ADuCM302x.svd

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

   --  Cache Status
   type STAT_Register is record
      --  Read-only. I-Cache Enabled
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

   --  Cache Setup
   type SETUP_Register is record
      --  I-Cache Enable
      ICEN          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETUP_Register use record
      ICEN          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cache Controller
   type FLCC0_CACHE_Peripheral is record
      --  Cache Status
      STAT  : aliased STAT_Register;
      --  Cache Setup
      SETUP : aliased SETUP_Register;
      --  Cache Key
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
