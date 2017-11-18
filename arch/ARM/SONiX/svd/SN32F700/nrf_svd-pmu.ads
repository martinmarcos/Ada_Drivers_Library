--

--  This spec has been automatically generated from SN32F700.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BKP_BACKUPDATA_Field is HAL.UInt8;

   --  Offset:0x00 PMU Backup Register 0
   type BKP_Register is record
      --  Data retained during Deep power-down mode
      BACKUPDATA    : BKP_BACKUPDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BKP_Register use record
      BACKUPDATA    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Deep Power-down mode Enable
   type CTRL_DPDEN_Field is
     (
      --  No effect
      Disable,
      --  WFI instruction will make MCU enter Deep Power-down mode
      Enable)
     with Size => 1;
   for CTRL_DPDEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Deep Sleep mode Enable
   type CTRL_DSLEEPEN_Field is
     (
      --  No effect
      Disable,
      --  WFI instruction will make MCU enter Deep-sleep mode
      Enable)
     with Size => 1;
   for CTRL_DSLEEPEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Sleep mode Enable
   type CTRL_SLEEPEN_Field is
     (
      --  No effect
      Disable,
      --  WFI instruction will make MCU enter Sleep mode
      Enable)
     with Size => 1;
   for CTRL_SLEEPEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x40 PMU Control Register
   type CTRL_Register is record
      --  Deep Power-down mode Enable
      DPDEN         : CTRL_DPDEN_Field := NRF_SVD.PMU.Disable;
      --  Deep Sleep mode Enable
      DSLEEPEN      : CTRL_DSLEEPEN_Field := NRF_SVD.PMU.Disable;
      --  Sleep mode Enable
      SLEEPEN       : CTRL_SLEEPEN_Field := NRF_SVD.PMU.Disable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      DPDEN         at 0 range 0 .. 0;
      DSLEEPEN      at 0 range 1 .. 1;
      SLEEPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management Unit
   type SN_PMU_Peripheral is record
      --  Offset:0x00 PMU Backup Register 0
      BKP0  : aliased BKP_Register;
      --  Offset:0x04 PMU Backup Register 1
      BKP1  : aliased BKP_Register;
      --  Offset:0x08 PMU Backup Register 2
      BKP2  : aliased BKP_Register;
      --  Offset:0x0C PMU Backup Register 3
      BKP3  : aliased BKP_Register;
      --  Offset:0x10 PMU Backup Register 4
      BKP4  : aliased BKP_Register;
      --  Offset:0x14 PMU Backup Register 5
      BKP5  : aliased BKP_Register;
      --  Offset:0x18 PMU Backup Register 6
      BKP6  : aliased BKP_Register;
      --  Offset:0x1C PMU Backup Register 7
      BKP7  : aliased BKP_Register;
      --  Offset:0x20 PMU Backup Register 8
      BKP8  : aliased BKP_Register;
      --  Offset:0x24 PMU Backup Register 9
      BKP9  : aliased BKP_Register;
      --  Offset:0x28 PMU Backup Register 10
      BKP10 : aliased BKP_Register;
      --  Offset:0x2C PMU Backup Register 11
      BKP11 : aliased BKP_Register;
      --  Offset:0x30 PMU Backup Register 12
      BKP12 : aliased BKP_Register;
      --  Offset:0x34 PMU Backup Register 13
      BKP13 : aliased BKP_Register;
      --  Offset:0x38 PMU Backup Register 14
      BKP14 : aliased BKP_Register;
      --  Offset:0x3C PMU Backup Register 15
      BKP15 : aliased BKP_Register;
      --  Offset:0x40 PMU Control Register
      CTRL  : aliased CTRL_Register;
   end record
     with Volatile;

   for SN_PMU_Peripheral use record
      BKP0  at 16#0# range 0 .. 31;
      BKP1  at 16#4# range 0 .. 31;
      BKP2  at 16#8# range 0 .. 31;
      BKP3  at 16#C# range 0 .. 31;
      BKP4  at 16#10# range 0 .. 31;
      BKP5  at 16#14# range 0 .. 31;
      BKP6  at 16#18# range 0 .. 31;
      BKP7  at 16#1C# range 0 .. 31;
      BKP8  at 16#20# range 0 .. 31;
      BKP9  at 16#24# range 0 .. 31;
      BKP10 at 16#28# range 0 .. 31;
      BKP11 at 16#2C# range 0 .. 31;
      BKP12 at 16#30# range 0 .. 31;
      BKP13 at 16#34# range 0 .. 31;
      BKP14 at 16#38# range 0 .. 31;
      BKP15 at 16#3C# range 0 .. 31;
      CTRL  at 16#40# range 0 .. 31;
   end record;

   --  Power Management Unit
   SN_PMU_Periph : aliased SN_PMU_Peripheral
     with Import, Address => System'To_Address (16#40032000#);

end NRF_SVD.PMU;
