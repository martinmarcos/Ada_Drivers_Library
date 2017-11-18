--

--  This spec has been automatically generated from apollo1.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  MCU Miscellaneous Control Logic
package NRF_SVD.MCUCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Device qualified.
   type CHIP_INFO_QUAL_Field is
     (
      --  Prototype device. value.
      Prototype,
      --  Fully qualified device. value.
      Qualified)
     with Size => 1;
   for CHIP_INFO_QUAL_Field use
     (Prototype => 0,
      Qualified => 1);

   --  Device temperature range.
   type CHIP_INFO_TEMP_Field is
     (
      --  Commercial temperature range. value.
      Commercial,
      --  Reset value for the field
      Chip_Info_Temp_Field_Reset)
     with Size => 2;
   for CHIP_INFO_TEMP_Field use
     (Commercial => 0,
      Chip_Info_Temp_Field_Reset => 1);

   --  Number of pins.
   type CHIP_INFO_PINS_Field is
     (
      --  41 package pins total. value.
      CHIP_INFO_PINS_Field_41Pins)
     with Size => 3;
   for CHIP_INFO_PINS_Field use
     (CHIP_INFO_PINS_Field_41Pins => 1);

   --  Device package type.
   type CHIP_INFO_PKG_Field is
     (
      --  Reset value for the field
      Chip_Info_Pkg_Field_Reset,
      --  Ball grid array. value.
      Bga,
      --  Chip-scale package. value.
      Csp)
     with Size => 2;
   for CHIP_INFO_PKG_Field use
     (Chip_Info_Pkg_Field_Reset => 1,
      Bga => 2,
      Csp => 3);

   subtype CHIP_INFO_MINORREV_Field is HAL.UInt4;
   subtype CHIP_INFO_MAJORREV_Field is HAL.UInt4;

   --  Device RAM size.
   type CHIP_INFO_RAM_Field is
     (
      --  32K of available SRAM. value.
      CHIP_INFO_RAM_Field_32K,
      --  64K of available SRAM. value.
      CHIP_INFO_RAM_Field_64K)
     with Size => 4;
   for CHIP_INFO_RAM_Field use
     (CHIP_INFO_RAM_Field_32K => 0,
      CHIP_INFO_RAM_Field_64K => 1);

   --  Device flash size.
   type CHIP_INFO_FLASH_Field is
     (
      --  256K of available flash. value.
      CHIP_INFO_FLASH_Field_256K,
      --  512K of available flash. value.
      CHIP_INFO_FLASH_Field_512K)
     with Size => 4;
   for CHIP_INFO_FLASH_Field use
     (CHIP_INFO_FLASH_Field_256K => 3,
      CHIP_INFO_FLASH_Field_512K => 4);

   --  Device class.
   type CHIP_INFO_CLASS_Field is
     (
      --  APOLLO value.
      Apollo)
     with Size => 8;
   for CHIP_INFO_CLASS_Field use
     (Apollo => 1);

   --  Chip Information Register
   type CHIP_INFO_Register is record
      --  Device qualified.
      QUAL     : CHIP_INFO_QUAL_Field := NRF_SVD.MCUCTRL.Qualified;
      --  Device temperature range.
      TEMP     : CHIP_INFO_TEMP_Field := Chip_Info_Temp_Field_Reset;
      --  Number of pins.
      PINS     : CHIP_INFO_PINS_Field :=
                  NRF_SVD.MCUCTRL.CHIP_INFO_PINS_Field_41Pins;
      --  Device package type.
      PKG      : CHIP_INFO_PKG_Field := Chip_Info_Pkg_Field_Reset;
      --  Minor device revision number.
      MINORREV : CHIP_INFO_MINORREV_Field := 16#1#;
      --  Major device revision number.
      MAJORREV : CHIP_INFO_MAJORREV_Field := 16#1#;
      --  Device RAM size.
      RAM      : CHIP_INFO_RAM_Field :=
                  NRF_SVD.MCUCTRL.CHIP_INFO_RAM_Field_64K;
      --  Device flash size.
      FLASH    : CHIP_INFO_FLASH_Field :=
                  NRF_SVD.MCUCTRL.CHIP_INFO_FLASH_Field_512K;
      --  Device class.
      CLASS    : CHIP_INFO_CLASS_Field := NRF_SVD.MCUCTRL.Apollo;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIP_INFO_Register use record
      QUAL     at 0 range 0 .. 0;
      TEMP     at 0 range 1 .. 2;
      PINS     at 0 range 3 .. 5;
      PKG      at 0 range 6 .. 7;
      MINORREV at 0 range 8 .. 11;
      MAJORREV at 0 range 12 .. 15;
      RAM      at 0 range 16 .. 19;
      FLASH    at 0 range 20 .. 23;
      CLASS    at 0 range 24 .. 31;
   end record;

   --  Chip Revision Number.
   type CHIPREV_REVISION_Field is
     (
      --  Apollo CHIPREV. value.
      Apollo)
     with Size => 8;
   for CHIPREV_REVISION_Field use
     (Apollo => 0);

   --  Chip Revision
   type CHIPREV_Register is record
      --  Chip Revision Number.
      REVISION      : CHIPREV_REVISION_Field := NRF_SVD.MCUCTRL.Apollo;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIPREV_Register use record
      REVISION      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enables and select the Memory Buck as the supply for the Flash and SRAM
   --  power domain.
   type SUPPLYSRC_MEMBUCKEN_Field is
     (
      --  Reset value for the field
      Supplysrc_Membucken_Field_Reset,
      --  Enable the Memory Buck as the supply for flash and SRAM. value.
      En)
     with Size => 1;
   for SUPPLYSRC_MEMBUCKEN_Field use
     (Supplysrc_Membucken_Field_Reset => 0,
      En => 1);

   --  Enables and Selects the Core Buck as the supply for the low-voltage
   --  power domain.
   type SUPPLYSRC_COREBUCKEN_Field is
     (
      --  Reset value for the field
      Supplysrc_Corebucken_Field_Reset,
      --  Enable the Core Buck for the low-voltage power domain. value.
      En)
     with Size => 1;
   for SUPPLYSRC_COREBUCKEN_Field use
     (Supplysrc_Corebucken_Field_Reset => 0,
      En => 1);

   --  Memory and Core Voltage Supply Source Select Register
   type SUPPLYSRC_Register is record
      --  Enables and select the Memory Buck as the supply for the Flash and
      --  SRAM power domain.
      MEMBUCKEN     : SUPPLYSRC_MEMBUCKEN_Field :=
                       Supplysrc_Membucken_Field_Reset;
      --  Enables and Selects the Core Buck as the supply for the low-voltage
      --  power domain.
      COREBUCKEN    : SUPPLYSRC_COREBUCKEN_Field :=
                       Supplysrc_Corebucken_Field_Reset;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPPLYSRC_Register use record
      MEMBUCKEN     at 0 range 0 .. 0;
      COREBUCKEN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Indicate whether the Memory power domain is supplied from the LDO or the
   --  Buck.
   type SUPPLYSTATUS_MEMBUCKON_Field is
     (
      --  Indicates the LDO is supplying the memory power domain. value.
      Ldo,
      --  Indicates the Buck is supplying the memory power domain. value.
      Buck)
     with Size => 1;
   for SUPPLYSTATUS_MEMBUCKON_Field use
     (Ldo => 0,
      Buck => 1);

   --  Indicates whether the Core low-voltage domain is supplied from the LDO
   --  or the Buck.
   type SUPPLYSTATUS_COREBUCKON_Field is
     (
      --  Indicates the the LDO is supplying the Core low-voltage. value.
      Ldo,
      --  Indicates the the Buck is supplying the Core low-voltage. value.
      Buck)
     with Size => 1;
   for SUPPLYSTATUS_COREBUCKON_Field use
     (Ldo => 0,
      Buck => 1);

   --  Memory and Core Voltage Supply Source Status Register
   type SUPPLYSTATUS_Register is record
      --  Indicate whether the Memory power domain is supplied from the LDO or
      --  the Buck.
      MEMBUCKON     : SUPPLYSTATUS_MEMBUCKON_Field := NRF_SVD.MCUCTRL.Ldo;
      --  Indicates whether the Core low-voltage domain is supplied from the
      --  LDO or the Buck.
      COREBUCKON    : SUPPLYSTATUS_COREBUCKON_Field := NRF_SVD.MCUCTRL.Ldo;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPPLYSTATUS_Register use record
      MEMBUCKON     at 0 range 0 .. 0;
      COREBUCKON    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Bandgap Enable
   type BANDGAPEN_BGPEN_Field is
     (
      --  Bandgap disable. value.
      Dis,
      --  Bandgap enable. value.
      En)
     with Size => 1;
   for BANDGAPEN_BGPEN_Field use
     (Dis => 0,
      En => 1);

   --  Band Gap Enable
   type BANDGAPEN_Register is record
      --  Bandgap Enable
      BGPEN         : BANDGAPEN_BGPEN_Field := NRF_SVD.MCUCTRL.Dis;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BANDGAPEN_Register use record
      BGPEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Force SRAM Bank 0 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK0_Field is
     (
      --  SRAM Bank 0 normal operation. value.
      Normal,
      --  SRAM Bank 0 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK0_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 1 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK1_Field is
     (
      --  SRAM Bank 1 normal operation. value.
      Normal,
      --  SRAM Bank 1 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK1_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 2 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK2_Field is
     (
      --  SRAM Bank 2 normal operation. value.
      Normal,
      --  SRAM Bank 2 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK2_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 3 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK3_Field is
     (
      --  SRAM Bank 3 normal operation. value.
      Normal,
      --  SRAM Bank 3 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK3_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 4 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK4_Field is
     (
      --  SRAM Bank 4 normal operation. value.
      Normal,
      --  SRAM Bank 4 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK4_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 5 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK5_Field is
     (
      --  SRAM Bank 5 normal operation. value.
      Normal,
      --  SRAM Bank 5 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK5_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 6 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK6_Field is
     (
      --  SRAM Bank 6 normal operation. value.
      Normal,
      --  SRAM Bank 6 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK6_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Force SRAM Bank 7 to powerdown in deep sleep mode, causing the contents
   --  of the bank to be lost.
   type SRAMPWDINSLEEP_BANK7_Field is
     (
      --  SRAM Bank 7 normal operation. value.
      Normal,
      --  SRAM Bank 7 deep sleep. value.
      Pwrdn_In_Deepsleep)
     with Size => 1;
   for SRAMPWDINSLEEP_BANK7_Field use
     (Normal => 0,
      Pwrdn_In_Deepsleep => 1);

   --  Powerdown an SRAM Bank in Deep Sleep mode
   type SRAMPWDINSLEEP_Register is record
      --  Force SRAM Bank 0 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK0         : SRAMPWDINSLEEP_BANK0_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 1 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK1         : SRAMPWDINSLEEP_BANK1_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 2 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK2         : SRAMPWDINSLEEP_BANK2_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 3 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK3         : SRAMPWDINSLEEP_BANK3_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 4 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK4         : SRAMPWDINSLEEP_BANK4_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 5 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK5         : SRAMPWDINSLEEP_BANK5_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 6 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK6         : SRAMPWDINSLEEP_BANK6_Field := NRF_SVD.MCUCTRL.Normal;
      --  Force SRAM Bank 7 to powerdown in deep sleep mode, causing the
      --  contents of the bank to be lost.
      BANK7         : SRAMPWDINSLEEP_BANK7_Field := NRF_SVD.MCUCTRL.Normal;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMPWDINSLEEP_Register use record
      BANK0         at 0 range 0 .. 0;
      BANK1         at 0 range 1 .. 1;
      BANK2         at 0 range 2 .. 2;
      BANK3         at 0 range 3 .. 3;
      BANK4         at 0 range 4 .. 4;
      BANK5         at 0 range 5 .. 5;
      BANK6         at 0 range 6 .. 6;
      BANK7         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Remove power from SRAM Bank 0 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK0_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank0_Field_Reset,
      --  Disable SRAM Bank 0. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK0_Field use
     (Srampwrdis_Bank0_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 1 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK1_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank1_Field_Reset,
      --  Disable SRAM Bank 1. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK1_Field use
     (Srampwrdis_Bank1_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 2 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK2_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank2_Field_Reset,
      --  Disable SRAM Bank 2. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK2_Field use
     (Srampwrdis_Bank2_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 3 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK3_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank3_Field_Reset,
      --  Disable SRAM Bank 3. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK3_Field use
     (Srampwrdis_Bank3_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 4 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK4_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank4_Field_Reset,
      --  Disable SRAM Bank 4. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK4_Field use
     (Srampwrdis_Bank4_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 5 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK5_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank5_Field_Reset,
      --  Disable SRAM Bank 5. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK5_Field use
     (Srampwrdis_Bank5_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 6 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK6_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank6_Field_Reset,
      --  Disable SRAM Bank 6. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK6_Field use
     (Srampwrdis_Bank6_Field_Reset => 0,
      Dis => 1);

   --  Remove power from SRAM Bank 7 which will cause an access to its address
   --  space to generate a Hard Fault.
   type SRAMPWRDIS_BANK7_Field is
     (
      --  Reset value for the field
      Srampwrdis_Bank7_Field_Reset,
      --  Disable SRAM Bank 7. value.
      Dis)
     with Size => 1;
   for SRAMPWRDIS_BANK7_Field use
     (Srampwrdis_Bank7_Field_Reset => 0,
      Dis => 1);

   --  Disables individual banks of the SRAM array
   type SRAMPWRDIS_Register is record
      --  Remove power from SRAM Bank 0 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK0         : SRAMPWRDIS_BANK0_Field := Srampwrdis_Bank0_Field_Reset;
      --  Remove power from SRAM Bank 1 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK1         : SRAMPWRDIS_BANK1_Field := Srampwrdis_Bank1_Field_Reset;
      --  Remove power from SRAM Bank 2 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK2         : SRAMPWRDIS_BANK2_Field := Srampwrdis_Bank2_Field_Reset;
      --  Remove power from SRAM Bank 3 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK3         : SRAMPWRDIS_BANK3_Field := Srampwrdis_Bank3_Field_Reset;
      --  Remove power from SRAM Bank 4 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK4         : SRAMPWRDIS_BANK4_Field := Srampwrdis_Bank4_Field_Reset;
      --  Remove power from SRAM Bank 5 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK5         : SRAMPWRDIS_BANK5_Field := Srampwrdis_Bank5_Field_Reset;
      --  Remove power from SRAM Bank 6 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK6         : SRAMPWRDIS_BANK6_Field := Srampwrdis_Bank6_Field_Reset;
      --  Remove power from SRAM Bank 7 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK7         : SRAMPWRDIS_BANK7_Field := Srampwrdis_Bank7_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMPWRDIS_Register use record
      BANK0         at 0 range 0 .. 0;
      BANK1         at 0 range 1 .. 1;
      BANK2         at 0 range 2 .. 2;
      BANK3         at 0 range 3 .. 3;
      BANK4         at 0 range 4 .. 4;
      BANK5         at 0 range 5 .. 5;
      BANK6         at 0 range 6 .. 6;
      BANK7         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Remove power from Flash Bank 0 which will cause an access to its address
   --  space to generate a Hard Fault.
   type FLASHPWRDIS_BANK0_Field is
     (
      --  Reset value for the field
      Flashpwrdis_Bank0_Field_Reset,
      --  Disable Flash instance 0. value.
      Dis)
     with Size => 1;
   for FLASHPWRDIS_BANK0_Field use
     (Flashpwrdis_Bank0_Field_Reset => 0,
      Dis => 1);

   --  Remove power from Flash Bank 1 which will cause an access to its address
   --  space to generate a Hard Fault.
   type FLASHPWRDIS_BANK1_Field is
     (
      --  Reset value for the field
      Flashpwrdis_Bank1_Field_Reset,
      --  Disable Flash instance 1. value.
      Dis)
     with Size => 1;
   for FLASHPWRDIS_BANK1_Field use
     (Flashpwrdis_Bank1_Field_Reset => 0,
      Dis => 1);

   --  Disables individual banks of the Flash array
   type FLASHPWRDIS_Register is record
      --  Remove power from Flash Bank 0 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK0         : FLASHPWRDIS_BANK0_Field :=
                       Flashpwrdis_Bank0_Field_Reset;
      --  Remove power from Flash Bank 1 which will cause an access to its
      --  address space to generate a Hard Fault.
      BANK1         : FLASHPWRDIS_BANK1_Field :=
                       Flashpwrdis_Bank1_Field_Reset;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHPWRDIS_Register use record
      BANK0         at 0 range 0 .. 0;
      BANK1         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  The ICODE Bus Decoder Fault Detected bit. When set, a fault has been
   --  detected, and the ICODEFAULTADDR register will contain the bus address
   --  which generated the fault.
   type FAULTSTATUS_ICODE_Field is
     (
      --  No ICODE fault has been detected. value.
      Nofault,
      --  ICODE fault detected. value.
      Fault)
     with Size => 1;
   for FAULTSTATUS_ICODE_Field use
     (Nofault => 0,
      Fault => 1);

   --  DCODE Bus Decoder Fault Detected bit. When set, a fault has been
   --  detected, and the DCODEFAULTADDR register will contain the bus address
   --  which generated the fault.
   type FAULTSTATUS_DCODE_Field is
     (
      --  No DCODE fault has been detected. value.
      Nofault,
      --  DCODE fault detected. value.
      Fault)
     with Size => 1;
   for FAULTSTATUS_DCODE_Field use
     (Nofault => 0,
      Fault => 1);

   --  SYS Bus Decoder Fault Detected bit. When set, a fault has been detected,
   --  and the SYSFAULTADDR register will contain the bus address which
   --  generated the fault.
   type FAULTSTATUS_SYS_Field is
     (
      --  No bus fault has been detected. value.
      Nofault,
      --  Bus fault detected. value.
      Fault)
     with Size => 1;
   for FAULTSTATUS_SYS_Field use
     (Nofault => 0,
      Fault => 1);

   --  Reflects the status of the bus decoders' fault detection. Any write to
   --  this register will clear all of the status bits within the register.
   type FAULTSTATUS_Register is record
      --  The ICODE Bus Decoder Fault Detected bit. When set, a fault has been
      --  detected, and the ICODEFAULTADDR register will contain the bus
      --  address which generated the fault.
      ICODE         : FAULTSTATUS_ICODE_Field := NRF_SVD.MCUCTRL.Nofault;
      --  DCODE Bus Decoder Fault Detected bit. When set, a fault has been
      --  detected, and the DCODEFAULTADDR register will contain the bus
      --  address which generated the fault.
      DCODE         : FAULTSTATUS_DCODE_Field := NRF_SVD.MCUCTRL.Nofault;
      --  SYS Bus Decoder Fault Detected bit. When set, a fault has been
      --  detected, and the SYSFAULTADDR register will contain the bus address
      --  which generated the fault.
      SYS           : FAULTSTATUS_SYS_Field := NRF_SVD.MCUCTRL.Nofault;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FAULTSTATUS_Register use record
      ICODE         at 0 range 0 .. 0;
      DCODE         at 0 range 1 .. 1;
      SYS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Fault Capture Enable field. When set, the Fault Capture monitors are
   --  enabled and addresses which generate a hard fault are captured into the
   --  FAULTADDR registers.
   type FAULTCAPTUREEN_ENABLE_Field is
     (
      --  Disable fault capture. value.
      Dis,
      --  Enable fault capture. value.
      En)
     with Size => 1;
   for FAULTCAPTUREEN_ENABLE_Field use
     (Dis => 0,
      En => 1);

   --  Enable the fault capture registers
   type FAULTCAPTUREEN_Register is record
      --  Fault Capture Enable field. When set, the Fault Capture monitors are
      --  enabled and addresses which generate a hard fault are captured into
      --  the FAULTADDR registers.
      ENABLE        : FAULTCAPTUREEN_ENABLE_Field := NRF_SVD.MCUCTRL.Dis;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FAULTCAPTUREEN_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  TPIU Enable field. When set, the ARM M4 TPIU is enabled and data can be
   --  streamed out of the MCU's SWO port using the ARM ITM and TPIU modules.
   type TPIUCTRL_ENABLE_Field is
     (
      --  Disable the TPIU. value.
      Dis,
      --  Enable the TPIU. value.
      En)
     with Size => 1;
   for TPIUCTRL_ENABLE_Field use
     (Dis => 0,
      En => 1);

   --  This field selects the frequency of the ARM M4 TPIU port.
   type TPIUCTRL_CLKSEL_Field is
     (
      --  Low power state. value.
      Low_Pwr,
      --  Selects 6MHz frequency. value.
      TPIUCTRL_CLKSEL_Field_6Mhz,
      --  Selects 3MHz frequency. value.
      TPIUCTRL_CLKSEL_Field_3Mhz,
      --  Selects 1.5 MHz frequency. value.
      TPIUCTRL_CLKSEL_Field_1_5Mhz)
     with Size => 2;
   for TPIUCTRL_CLKSEL_Field use
     (Low_Pwr => 0,
      TPIUCTRL_CLKSEL_Field_6Mhz => 1,
      TPIUCTRL_CLKSEL_Field_3Mhz => 2,
      TPIUCTRL_CLKSEL_Field_1_5Mhz => 3);

   --  TPIU Control Register. Determines the clock enable and frequency for the
   --  M4's TPIU interface.
   type TPIUCTRL_Register is record
      --  TPIU Enable field. When set, the ARM M4 TPIU is enabled and data can
      --  be streamed out of the MCU's SWO port using the ARM ITM and TPIU
      --  modules.
      ENABLE         : TPIUCTRL_ENABLE_Field := NRF_SVD.MCUCTRL.Dis;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  This field selects the frequency of the ARM M4 TPIU port.
      CLKSEL         : TPIUCTRL_CLKSEL_Field := NRF_SVD.MCUCTRL.Low_Pwr;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TPIUCTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CLKSEL         at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MCU Miscellaneous Control Logic
   type MCUCTRL_Peripheral is record
      --  Chip Information Register
      CHIP_INFO      : aliased CHIP_INFO_Register;
      --  Unique Chip ID 0
      CHIPID0        : aliased HAL.UInt32;
      --  Unique Chip ID 1
      CHIPID1        : aliased HAL.UInt32;
      --  Chip Revision
      CHIPREV        : aliased CHIPREV_Register;
      --  Memory and Core Voltage Supply Source Select Register
      SUPPLYSRC      : aliased SUPPLYSRC_Register;
      --  Memory and Core Voltage Supply Source Status Register
      SUPPLYSTATUS   : aliased SUPPLYSTATUS_Register;
      --  Band Gap Enable
      BANDGAPEN      : aliased BANDGAPEN_Register;
      --  Powerdown an SRAM Bank in Deep Sleep mode
      SRAMPWDINSLEEP : aliased SRAMPWDINSLEEP_Register;
      --  Disables individual banks of the SRAM array
      SRAMPWRDIS     : aliased SRAMPWRDIS_Register;
      --  Disables individual banks of the Flash array
      FLASHPWRDIS    : aliased FLASHPWRDIS_Register;
      --  ICODE bus address which was present when a bus fault occurred.
      ICODEFAULTADDR : aliased HAL.UInt32;
      --  DCODE bus address which was present when a bus fault occurred.
      DCODEFAULTADDR : aliased HAL.UInt32;
      --  System bus address which was present when a bus fault occurred.
      SYSFAULTADDR   : aliased HAL.UInt32;
      --  Reflects the status of the bus decoders' fault detection. Any write
      --  to this register will clear all of the status bits within the
      --  register.
      FAULTSTATUS    : aliased FAULTSTATUS_Register;
      --  Enable the fault capture registers
      FAULTCAPTUREEN : aliased FAULTCAPTUREEN_Register;
      --  TPIU Control Register. Determines the clock enable and frequency for
      --  the M4's TPIU interface.
      TPIUCTRL       : aliased TPIUCTRL_Register;
   end record
     with Volatile;

   for MCUCTRL_Peripheral use record
      CHIP_INFO      at 16#0# range 0 .. 31;
      CHIPID0        at 16#4# range 0 .. 31;
      CHIPID1        at 16#8# range 0 .. 31;
      CHIPREV        at 16#C# range 0 .. 31;
      SUPPLYSRC      at 16#10# range 0 .. 31;
      SUPPLYSTATUS   at 16#14# range 0 .. 31;
      BANDGAPEN      at 16#FC# range 0 .. 31;
      SRAMPWDINSLEEP at 16#140# range 0 .. 31;
      SRAMPWRDIS     at 16#144# range 0 .. 31;
      FLASHPWRDIS    at 16#148# range 0 .. 31;
      ICODEFAULTADDR at 16#1C0# range 0 .. 31;
      DCODEFAULTADDR at 16#1C4# range 0 .. 31;
      SYSFAULTADDR   at 16#1C8# range 0 .. 31;
      FAULTSTATUS    at 16#1CC# range 0 .. 31;
      FAULTCAPTUREEN at 16#1D0# range 0 .. 31;
      TPIUCTRL       at 16#250# range 0 .. 31;
   end record;

   --  MCU Miscellaneous Control Logic
   MCUCTRL_Periph : aliased MCUCTRL_Peripheral
     with Import, Address => MCUCTRL_Base;

end NRF_SVD.MCUCTRL;
