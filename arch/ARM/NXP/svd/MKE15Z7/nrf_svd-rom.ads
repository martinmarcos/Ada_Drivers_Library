--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ROM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Entry

   --  Entry
   type ROM_ENTRY_Registers is array (0 .. 2) of HAL.UInt32
     with Volatile;

   --  Peripheral ID Register

   --  Peripheral ID Register
   type ROM_PERIPHID_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  Component ID Register

   --  Component ID Register
   type ROM_COMPID_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  System ROM
   type ROM_Peripheral is record
      --  Entry
      ENTRY_k   : aliased ROM_ENTRY_Registers;
      --  End of Table Marker Register
      TABLEMARK : aliased HAL.UInt32;
      --  System Access Register
      SYSACCESS : aliased HAL.UInt32;
      --  Peripheral ID Register
      PERIPHID  : aliased ROM_PERIPHID_Registers;
      --  Component ID Register
      COMPID    : aliased ROM_COMPID_Registers;
   end record
     with Volatile;

   for ROM_Peripheral use record
      ENTRY_k   at 16#0# range 0 .. 95;
      TABLEMARK at 16#C# range 0 .. 31;
      SYSACCESS at 16#FCC# range 0 .. 31;
      PERIPHID  at 16#FD0# range 0 .. 255;
      COMPID    at 16#FF0# range 0 .. 127;
   end record;

   --  System ROM
   ROM_Periph : aliased ROM_Peripheral
     with Import, Address => System'To_Address (16#F0002000#);

end NRF_SVD.ROM;
