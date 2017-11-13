--  This spec has been automatically generated from ATSAM4CMS8C_0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Chip Identifier
package SAM_SVD.CHIPID is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CHIPID_CIDR_VERSION_Field is HAL.UInt5;

   --  Embedded Processor
   type CIDR_EPROC_Field is
     (
      --  ARM946ES
      Arm946Es,
      --  ARM7TDMI
      Arm7Tdmi,
      --  Cortex-M3
      Cm3,
      --  ARM920T
      Arm920T,
      --  ARM926EJS
      Arm926Ejs,
      --  Cortex-A5
      Ca5,
      --  Cortex-M4
      Cm4)
     with Size => 3;
   for CIDR_EPROC_Field use
     (Arm946Es => 1,
      Arm7Tdmi => 2,
      Cm3 => 3,
      Arm920T => 4,
      Arm926Ejs => 5,
      Ca5 => 6,
      Cm4 => 7);

   --  Nonvolatile Program Memory Size
   type CIDR_NVPSIZ_Field is
     (
      --  None
      None,
      --  8 Kbytes
      CIDR_NVPSIZ_Field_8K,
      --  16 Kbytes
      CIDR_NVPSIZ_Field_16K,
      --  32 Kbytes
      CIDR_NVPSIZ_Field_32K,
      --  64 Kbytes
      CIDR_NVPSIZ_Field_64K,
      --  128 Kbytes
      CIDR_NVPSIZ_Field_128K,
      --  160 Kbytes
      CIDR_NVPSIZ_Field_160K,
      --  256 Kbytes
      CIDR_NVPSIZ_Field_256K,
      --  512 Kbytes
      CIDR_NVPSIZ_Field_512K,
      --  1024 Kbytes
      CIDR_NVPSIZ_Field_1024K,
      --  2048 Kbytes
      CIDR_NVPSIZ_Field_2048K)
     with Size => 4;
   for CIDR_NVPSIZ_Field use
     (None => 0,
      CIDR_NVPSIZ_Field_8K => 1,
      CIDR_NVPSIZ_Field_16K => 2,
      CIDR_NVPSIZ_Field_32K => 3,
      CIDR_NVPSIZ_Field_64K => 5,
      CIDR_NVPSIZ_Field_128K => 7,
      CIDR_NVPSIZ_Field_160K => 8,
      CIDR_NVPSIZ_Field_256K => 9,
      CIDR_NVPSIZ_Field_512K => 10,
      CIDR_NVPSIZ_Field_1024K => 12,
      CIDR_NVPSIZ_Field_2048K => 14);

   --  Second Nonvolatile Program Memory Size
   type CIDR_NVPSIZ2_Field is
     (
      --  None
      None,
      --  8 Kbytes
      CIDR_NVPSIZ2_Field_8K,
      --  16 Kbytes
      CIDR_NVPSIZ2_Field_16K,
      --  32 Kbytes
      CIDR_NVPSIZ2_Field_32K,
      --  64 Kbytes
      CIDR_NVPSIZ2_Field_64K,
      --  128 Kbytes
      CIDR_NVPSIZ2_Field_128K,
      --  256 Kbytes
      CIDR_NVPSIZ2_Field_256K,
      --  512 Kbytes
      CIDR_NVPSIZ2_Field_512K,
      --  1024 Kbytes
      CIDR_NVPSIZ2_Field_1024K,
      --  2048 Kbytes
      CIDR_NVPSIZ2_Field_2048K)
     with Size => 4;
   for CIDR_NVPSIZ2_Field use
     (None => 0,
      CIDR_NVPSIZ2_Field_8K => 1,
      CIDR_NVPSIZ2_Field_16K => 2,
      CIDR_NVPSIZ2_Field_32K => 3,
      CIDR_NVPSIZ2_Field_64K => 5,
      CIDR_NVPSIZ2_Field_128K => 7,
      CIDR_NVPSIZ2_Field_256K => 9,
      CIDR_NVPSIZ2_Field_512K => 10,
      CIDR_NVPSIZ2_Field_1024K => 12,
      CIDR_NVPSIZ2_Field_2048K => 14);

   --  Internal SRAM Size
   type CIDR_SRAMSIZ_Field is
     (
      --  48 Kbytes
      CIDR_SRAMSIZ_Field_48K,
      --  192 Kbytes
      CIDR_SRAMSIZ_Field_192K,
      --  384 Kbytes
      CIDR_SRAMSIZ_Field_384K,
      --  6 Kbytes
      CIDR_SRAMSIZ_Field_6K,
      --  24 Kbytes
      CIDR_SRAMSIZ_Field_24K,
      --  4 Kbytes
      CIDR_SRAMSIZ_Field_4K,
      --  80 Kbytes
      CIDR_SRAMSIZ_Field_80K,
      --  160 Kbytes
      CIDR_SRAMSIZ_Field_160K,
      --  8 Kbytes
      CIDR_SRAMSIZ_Field_8K,
      --  16 Kbytes
      CIDR_SRAMSIZ_Field_16K,
      --  32 Kbytes
      CIDR_SRAMSIZ_Field_32K,
      --  64 Kbytes
      CIDR_SRAMSIZ_Field_64K,
      --  128 Kbytes
      CIDR_SRAMSIZ_Field_128K,
      --  256 Kbytes
      CIDR_SRAMSIZ_Field_256K,
      --  96 Kbytes
      CIDR_SRAMSIZ_Field_96K,
      --  512 Kbytes
      CIDR_SRAMSIZ_Field_512K)
     with Size => 4;
   for CIDR_SRAMSIZ_Field use
     (CIDR_SRAMSIZ_Field_48K => 0,
      CIDR_SRAMSIZ_Field_192K => 1,
      CIDR_SRAMSIZ_Field_384K => 2,
      CIDR_SRAMSIZ_Field_6K => 3,
      CIDR_SRAMSIZ_Field_24K => 4,
      CIDR_SRAMSIZ_Field_4K => 5,
      CIDR_SRAMSIZ_Field_80K => 6,
      CIDR_SRAMSIZ_Field_160K => 7,
      CIDR_SRAMSIZ_Field_8K => 8,
      CIDR_SRAMSIZ_Field_16K => 9,
      CIDR_SRAMSIZ_Field_32K => 10,
      CIDR_SRAMSIZ_Field_64K => 11,
      CIDR_SRAMSIZ_Field_128K => 12,
      CIDR_SRAMSIZ_Field_256K => 13,
      CIDR_SRAMSIZ_Field_96K => 14,
      CIDR_SRAMSIZ_Field_512K => 15);

   --  Architecture Identifier
   type CIDR_ARCH_Field is
     (
      --  SAM4CxC (100-pin version)
      Sam4Cxxc)
     with Size => 8;
   for CIDR_ARCH_Field use
     (Sam4Cxxc => 100);

   --  Nonvolatile Program Memory Type
   type CIDR_NVPTYP_Field is
     (
      --  ROM
      Rom,
      --  ROMless or on-chip Flash
      Romless,
      --  Embedded Flash Memory
      Flash,
      --  ROM and Embedded Flash Memory- NVPSIZ is ROM size- NVPSIZ2 is Flash
      --  size
      Rom_Flash,
      --  SRAM emulating ROM
      Sram)
     with Size => 3;
   for CIDR_NVPTYP_Field use
     (Rom => 0,
      Romless => 1,
      Flash => 2,
      Rom_Flash => 3,
      Sram => 4);

   --  Chip ID Register
   type CHIPID_CIDR_Register is record
      --  Read-only. Version of the Device
      VERSION : CHIPID_CIDR_VERSION_Field;
      --  Read-only. Embedded Processor
      EPROC   : CIDR_EPROC_Field;
      --  Read-only. Nonvolatile Program Memory Size
      NVPSIZ  : CIDR_NVPSIZ_Field;
      --  Read-only. Second Nonvolatile Program Memory Size
      NVPSIZ2 : CIDR_NVPSIZ2_Field;
      --  Read-only. Internal SRAM Size
      SRAMSIZ : CIDR_SRAMSIZ_Field;
      --  Read-only. Architecture Identifier
      ARCH    : CIDR_ARCH_Field;
      --  Read-only. Nonvolatile Program Memory Type
      NVPTYP  : CIDR_NVPTYP_Field;
      --  Read-only. Extension Flag
      EXT     : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIPID_CIDR_Register use record
      VERSION at 0 range 0 .. 4;
      EPROC   at 0 range 5 .. 7;
      NVPSIZ  at 0 range 8 .. 11;
      NVPSIZ2 at 0 range 12 .. 15;
      SRAMSIZ at 0 range 16 .. 19;
      ARCH    at 0 range 20 .. 27;
      NVPTYP  at 0 range 28 .. 30;
      EXT     at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Chip Identifier
   type CHIPID_Peripheral is record
      --  Chip ID Register
      CIDR : aliased CHIPID_CIDR_Register;
      --  Chip ID Extension Register
      EXID : aliased HAL.UInt32;
   end record
     with Volatile;

   for CHIPID_Peripheral use record
      CIDR at 16#0# range 0 .. 31;
      EXID at 16#4# range 0 .. 31;
   end record;

   --  Chip Identifier
   CHIPID_Periph : aliased CHIPID_Peripheral
     with Import, Address => CHIPID_Base;

end SAM_SVD.CHIPID;
