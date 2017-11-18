--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  PAU Unit
package NRF_SVD.PAU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RAM Block 1 Availability Flag
   type AVAIL0_AVAIL5_Field is
     (
      --  RAM block 1 is not available.
      VALUE1,
      --  RAM block 1 is available.
      VALUE2)
     with Size => 1;
   for AVAIL0_AVAIL5_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RAM Block 2 Availability Flag
   type AVAIL0_AVAIL6_Field is
     (
      --  RAM block 2 is not available.
      VALUE1,
      --  RAM block 2 is available.
      VALUE2)
     with Size => 1;
   for AVAIL0_AVAIL6_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RAM Block 3 Availability Flag
   type AVAIL0_AVAIL7_Field is
     (
      --  RAM block 3 is not available.
      VALUE1,
      --  RAM block 3 is available.
      VALUE2)
     with Size => 1;
   for AVAIL0_AVAIL7_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Port 0 Availability Flag
   type AVAIL0_AVAIL22_Field is
     (
      --  Port 0 is not available.
      VALUE1,
      --  Port 0 is available.
      VALUE2)
     with Size => 1;
   for AVAIL0_AVAIL22_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Port 1 Availability Flag
   type AVAIL0_AVAIL23_Field is
     (
      --  Port 1 is not available.
      VALUE1,
      --  Port 1 is available.
      VALUE2)
     with Size => 1;
   for AVAIL0_AVAIL23_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Port 0 Availability Flag
   type AVAIL0_AVAIL24_Field is
     (
      --  Port 2 is not available.
      VALUE1,
      --  Port 2 is available.
      VALUE2)
     with Size => 1;
   for AVAIL0_AVAIL24_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral Availability Register 0
   type AVAIL0_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5;
      --  Read-only. RAM Block 1 Availability Flag
      AVAIL5         : AVAIL0_AVAIL5_Field;
      --  Read-only. RAM Block 2 Availability Flag
      AVAIL6         : AVAIL0_AVAIL6_Field;
      --  Read-only. RAM Block 3 Availability Flag
      AVAIL7         : AVAIL0_AVAIL7_Field;
      --  unspecified
      Reserved_8_21  : HAL.UInt14;
      --  Read-only. Port 0 Availability Flag
      AVAIL22        : AVAIL0_AVAIL22_Field;
      --  Read-only. Port 1 Availability Flag
      AVAIL23        : AVAIL0_AVAIL23_Field;
      --  Read-only. Port 0 Availability Flag
      AVAIL24        : AVAIL0_AVAIL24_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AVAIL0_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      AVAIL5         at 0 range 5 .. 5;
      AVAIL6         at 0 range 6 .. 6;
      AVAIL7         at 0 range 7 .. 7;
      Reserved_8_21  at 0 range 8 .. 21;
      AVAIL22        at 0 range 22 .. 22;
      AVAIL23        at 0 range 23 .. 23;
      AVAIL24        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USIC0 Channel 0 Availability Flag
   type AVAIL1_AVAIL0_Field is
     (
      --  USIC0 Channel 0 is not available.
      VALUE1,
      --  USIC0 Channel 0 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC0 Channel 1 Availability Flag
   type AVAIL1_AVAIL1_Field is
     (
      --  USIC0 Channel 1 is not available.
      VALUE1,
      --  USIC0 Channel 1 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PRNG Availability Flag
   type AVAIL1_AVAIL4_Field is
     (
      --  PRNG is not available.
      VALUE1,
      --  PRNG is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL4_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  VADC0 Basic SFRs Availability Flag
   type AVAIL1_AVAIL5_Field is
     (
      --  VADC0 Basic SFRs are not available.
      VALUE1,
      --  VADC0 Basic SFRs are available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL5_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SHS0 Availability Flag
   type AVAIL1_AVAIL8_Field is
     (
      --  SHS0 is not available.
      VALUE1,
      --  SHS0 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL8_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC40 Availability Flag
   type AVAIL1_AVAIL9_Field is
     (
      --  CC40 is not available.
      VALUE1,
      --  CC40 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL9_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC41 Availability Flag
   type AVAIL1_AVAIL10_Field is
     (
      --  CC41 is not available.
      VALUE1,
      --  CC41 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL10_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC42 Availability Flag
   type AVAIL1_AVAIL11_Field is
     (
      --  CC42 is not available.
      VALUE1,
      --  CC42 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL11_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC43 Availability Flag
   type AVAIL1_AVAIL12_Field is
     (
      --  CC43 is not available.
      VALUE1,
      --  CC43 is available.
      VALUE2)
     with Size => 1;
   for AVAIL1_AVAIL12_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral Availability Register 1
   type AVAIL1_Register is record
      --  Read-only. USIC0 Channel 0 Availability Flag
      AVAIL0         : AVAIL1_AVAIL0_Field;
      --  Read-only. USIC0 Channel 1 Availability Flag
      AVAIL1         : AVAIL1_AVAIL1_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. PRNG Availability Flag
      AVAIL4         : AVAIL1_AVAIL4_Field;
      --  Read-only. VADC0 Basic SFRs Availability Flag
      AVAIL5         : AVAIL1_AVAIL5_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. SHS0 Availability Flag
      AVAIL8         : AVAIL1_AVAIL8_Field;
      --  Read-only. CC40 Availability Flag
      AVAIL9         : AVAIL1_AVAIL9_Field;
      --  Read-only. CC41 Availability Flag
      AVAIL10        : AVAIL1_AVAIL10_Field;
      --  Read-only. CC42 Availability Flag
      AVAIL11        : AVAIL1_AVAIL11_Field;
      --  Read-only. CC43 Availability Flag
      AVAIL12        : AVAIL1_AVAIL12_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AVAIL1_Register use record
      AVAIL0         at 0 range 0 .. 0;
      AVAIL1         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      AVAIL4         at 0 range 4 .. 4;
      AVAIL5         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AVAIL8         at 0 range 8 .. 8;
      AVAIL9         at 0 range 9 .. 9;
      AVAIL10        at 0 range 10 .. 10;
      AVAIL11        at 0 range 11 .. 11;
      AVAIL12        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Flash SFRs Privilege Disable Flag
   type PRIVDIS0_PDIS2_Field is
     (
      --  Flash SFRs are accessible.
      VALUE1,
      --  Flash SFRs are not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RAM Block 1 Privilege Disable Flag
   type PRIVDIS0_PDIS5_Field is
     (
      --  RAM Block 1 is accessible.
      VALUE1,
      --  RAM Block 1 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS5_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RAM Block 2 Privilege Disable Flag
   type PRIVDIS0_PDIS6_Field is
     (
      --  RAM Block 2 is accessible.
      VALUE1,
      --  RAM Block 2 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS6_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RAM Block 3 Privilege Disable Flag
   type PRIVDIS0_PDIS7_Field is
     (
      --  RAM Block 3 is accessible.
      VALUE1,
      --  RAM Block 3 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS7_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WDT Privilege Disable Flag
   type PRIVDIS0_PDIS19_Field is
     (
      --  WDT is accessible.
      VALUE1,
      --  WDT is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS19_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Port 0 Privilege Disable Flag
   type PRIVDIS0_PDIS22_Field is
     (
      --  Port 0 is accessible.
      VALUE1,
      --  Port 0 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS22_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Port 1 Privilege Disable Flag
   type PRIVDIS0_PDIS23_Field is
     (
      --  Port 1 is accessible.
      VALUE1,
      --  Port 1 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS23_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Port 2 Privilege Disable Flag
   type PRIVDIS0_PDIS24_Field is
     (
      --  Port 2 is accessible.
      VALUE1,
      --  Port 2 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS0_PDIS24_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral Privilege Access Register 0
   type PRIVDIS0_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Flash SFRs Privilege Disable Flag
      PDIS2          : PRIVDIS0_PDIS2_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  RAM Block 1 Privilege Disable Flag
      PDIS5          : PRIVDIS0_PDIS5_Field := NRF_SVD.PAU.VALUE1;
      --  RAM Block 2 Privilege Disable Flag
      PDIS6          : PRIVDIS0_PDIS6_Field := NRF_SVD.PAU.VALUE1;
      --  RAM Block 3 Privilege Disable Flag
      PDIS7          : PRIVDIS0_PDIS7_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_8_18  : HAL.UInt11 := 16#0#;
      --  WDT Privilege Disable Flag
      PDIS19         : PRIVDIS0_PDIS19_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Port 0 Privilege Disable Flag
      PDIS22         : PRIVDIS0_PDIS22_Field := NRF_SVD.PAU.VALUE1;
      --  Port 1 Privilege Disable Flag
      PDIS23         : PRIVDIS0_PDIS23_Field := NRF_SVD.PAU.VALUE1;
      --  Port 2 Privilege Disable Flag
      PDIS24         : PRIVDIS0_PDIS24_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRIVDIS0_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PDIS2          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      PDIS5          at 0 range 5 .. 5;
      PDIS6          at 0 range 6 .. 6;
      PDIS7          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      PDIS19         at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      PDIS22         at 0 range 22 .. 22;
      PDIS23         at 0 range 23 .. 23;
      PDIS24         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USIC0 Channel 0 Privilege Disable Flag
   type PRIVDIS1_PDIS0_Field is
     (
      --  USIC0 Channel 0 is accessible.
      VALUE1,
      --  USIC0 Channel 0 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC0 Channel 1 Privilege Disable Flag
   type PRIVDIS1_PDIS1_Field is
     (
      --  USIC0 Channel 1 is accessible.
      VALUE1,
      --  USIC0 Channel 1 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  VADC0 Basic SFRs Privilege Disable Flag
   type PRIVDIS1_PDIS5_Field is
     (
      --  VADC0 Basic SFRs are accessible.
      VALUE1,
      --  VADC0 Basic SFRs are not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS5_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SHS0 Privilege Disable Flag
   type PRIVDIS1_PDIS8_Field is
     (
      --  SHS is accessible.
      VALUE1,
      --  SHS is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS8_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC40 and CCU40 Kernel SFRs Privilege Disable Flag
   type PRIVDIS1_PDIS9_Field is
     (
      --  CC40 and CCU40 Kernel SFRs are accessible.
      VALUE1,
      --  CC40 and CCU40 Kernel SFRs are not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS9_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC41 Privilege Disable Flag
   type PRIVDIS1_PDIS10_Field is
     (
      --  CC41 is accessible.
      VALUE1,
      --  CC41 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS10_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC42 Privilege Disable Flag
   type PRIVDIS1_PDIS11_Field is
     (
      --  CC42 is accessible.
      VALUE1,
      --  CC42 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS11_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC43 Privilege Disable Flag
   type PRIVDIS1_PDIS12_Field is
     (
      --  CC43 is accessible.
      VALUE1,
      --  CC43 is not accessible.
      VALUE2)
     with Size => 1;
   for PRIVDIS1_PDIS12_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral Privilege Access Register 1
   type PRIVDIS1_Register is record
      --  USIC0 Channel 0 Privilege Disable Flag
      PDIS0          : PRIVDIS1_PDIS0_Field := NRF_SVD.PAU.VALUE1;
      --  USIC0 Channel 1 Privilege Disable Flag
      PDIS1          : PRIVDIS1_PDIS1_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  VADC0 Basic SFRs Privilege Disable Flag
      PDIS5          : PRIVDIS1_PDIS5_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  SHS0 Privilege Disable Flag
      PDIS8          : PRIVDIS1_PDIS8_Field := NRF_SVD.PAU.VALUE1;
      --  CC40 and CCU40 Kernel SFRs Privilege Disable Flag
      PDIS9          : PRIVDIS1_PDIS9_Field := NRF_SVD.PAU.VALUE1;
      --  CC41 Privilege Disable Flag
      PDIS10         : PRIVDIS1_PDIS10_Field := NRF_SVD.PAU.VALUE1;
      --  CC42 Privilege Disable Flag
      PDIS11         : PRIVDIS1_PDIS11_Field := NRF_SVD.PAU.VALUE1;
      --  CC43 Privilege Disable Flag
      PDIS12         : PRIVDIS1_PDIS12_Field := NRF_SVD.PAU.VALUE1;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRIVDIS1_Register use record
      PDIS0          at 0 range 0 .. 0;
      PDIS1          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      PDIS5          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PDIS8          at 0 range 8 .. 8;
      PDIS9          at 0 range 9 .. 9;
      PDIS10         at 0 range 10 .. 10;
      PDIS11         at 0 range 11 .. 11;
      PDIS12         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype ROMSIZE_ADDR_Field is HAL.UInt6;

   --  ROM Size Register
   type ROMSIZE_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. ROM Size
      ADDR           : ROMSIZE_ADDR_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROMSIZE_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      ADDR           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype FLSIZE_ADDR_Field is HAL.UInt6;

   --  Flash Size Register
   type FLSIZE_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12;
      --  Read-only. Flash Size
      ADDR           : FLSIZE_ADDR_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLSIZE_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      ADDR           at 0 range 12 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RAM0SIZE_ADDR_Field is HAL.UInt5;

   --  RAM0 Size Register
   type RAM0SIZE_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. RAM0 Size
      ADDR           : RAM0SIZE_ADDR_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAM0SIZE_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      ADDR           at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PAU Unit
   type PAU_Peripheral is record
      --  Peripheral Availability Register 0
      AVAIL0   : aliased AVAIL0_Register;
      --  Peripheral Availability Register 1
      AVAIL1   : aliased AVAIL1_Register;
      --  Peripheral Availability Register 2
      AVAIL2   : aliased HAL.UInt32;
      --  Peripheral Privilege Access Register 0
      PRIVDIS0 : aliased PRIVDIS0_Register;
      --  Peripheral Privilege Access Register 1
      PRIVDIS1 : aliased PRIVDIS1_Register;
      --  ROM Size Register
      ROMSIZE  : aliased ROMSIZE_Register;
      --  Flash Size Register
      FLSIZE   : aliased FLSIZE_Register;
      --  RAM0 Size Register
      RAM0SIZE : aliased RAM0SIZE_Register;
   end record
     with Volatile;

   for PAU_Peripheral use record
      AVAIL0   at 16#40# range 0 .. 31;
      AVAIL1   at 16#44# range 0 .. 31;
      AVAIL2   at 16#48# range 0 .. 31;
      PRIVDIS0 at 16#80# range 0 .. 31;
      PRIVDIS1 at 16#84# range 0 .. 31;
      ROMSIZE  at 16#400# range 0 .. 31;
      FLSIZE   at 16#404# range 0 .. 31;
      RAM0SIZE at 16#410# range 0 .. 31;
   end record;

   --  PAU Unit
   PAU_Periph : aliased PAU_Peripheral
     with Import, Address => PAU_Base;

end NRF_SVD.PAU;
