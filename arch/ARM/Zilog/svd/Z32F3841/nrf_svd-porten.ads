--

--  This spec has been automatically generated from Z32F3841.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Port Access Eable
package NRF_SVD.PORTEN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Port Access Eable
   type PORTEN_Peripheral is record
      --  Port Access Enable
      EN : aliased HAL.UInt32;
   end record
     with Volatile;

   for PORTEN_Peripheral use record
      EN at 0 range 0 .. 31;
   end record;

   --  Port Access Eable
   PORTEN_Periph : aliased PORTEN_Peripheral
     with Import, Address => PORTEN_Base;

end NRF_SVD.PORTEN;
