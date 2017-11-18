--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.EMUID0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CHIPID_REVID_Field is HAL.UInt4;
   subtype CHIPID_PARTID_Field is HAL.UInt12;

   --  Chip Identification
   type CHIPID_Register is record
      --  Read-only. REVID
      REVID  : CHIPID_REVID_Field;
      --  Read-only. PARTID
      PARTID : CHIPID_PARTID_Field;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CHIPID_Register use record
      REVID  at 0 range 0 .. 3;
      PARTID at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CHIP ID For ARM Emulators
   type EMUID0_Peripheral is record
      --  Analog Devices Identification
      ADIID  : aliased HAL.UInt16;
      --  Chip Identification
      CHIPID : aliased CHIPID_Register;
   end record
     with Volatile;

   for EMUID0_Peripheral use record
      ADIID  at 16#20# range 0 .. 15;
      CHIPID at 16#24# range 0 .. 15;
   end record;

   --  CHIP ID For ARM Emulators
   EMUID0_Periph : aliased EMUID0_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

end NRF_SVD.EMUID0;
