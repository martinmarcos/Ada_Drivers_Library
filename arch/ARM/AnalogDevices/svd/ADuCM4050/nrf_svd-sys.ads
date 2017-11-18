--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SYS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CHIPID_REV_Field is HAL.UInt4;
   subtype CHIPID_PARTID_Field is HAL.UInt12;

   --  Chip Identifier
   type CHIPID_Register is record
      --  Read-only. Silicon revision
      REV    : CHIPID_REV_Field;
      --  Read-only. Part identifier
      PARTID : CHIPID_PARTID_Field;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CHIPID_Register use record
      REV    at 0 range 0 .. 3;
      PARTID at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Identification and Debug Enable
   type SYS_Peripheral is record
      --  ADI Identification
      ADIID  : aliased HAL.UInt16;
      --  Chip Identifier
      CHIPID : aliased CHIPID_Register;
      --  Serial Wire Debug Enable
      SWDEN  : aliased HAL.UInt16;
   end record
     with Volatile;

   for SYS_Peripheral use record
      ADIID  at 16#20# range 0 .. 15;
      CHIPID at 16#24# range 0 .. 15;
      SWDEN  at 16#40# range 0 .. 15;
   end record;

   --  System Identification and Debug Enable
   SYS_Periph : aliased SYS_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

end NRF_SVD.SYS;
