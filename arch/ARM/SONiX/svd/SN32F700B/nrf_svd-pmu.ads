--

--  This spec has been automatically generated from SN32F700B.svd

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

   --  Low Power mode selection
   type CTRL_MODE_Field is
     (
      --  Disable Low-power mode
      Disable,
      --  WFI instruction will make MCU enter Deep Power-down mode
      Deep-Power DOWN MODE,
      --  WFI instruction will make MCU enter Deep-sleep mode
      Deep-SLEEP MODE,
      --  WFI instruction will make MCU enter Sleep mode
      Sleep MODE)
     with Size => 3;
   for CTRL_MODE_Field use
     (Disable => 0,
      Deep-Power DOWN MODE => 1,
      Deep-SLEEP MODE => 2,
      Sleep MODE => 4);

   --  Offset:0x40 PMU Control Register
   type CTRL_Register is record
      --  Low Power mode selection
      MODE          : CTRL_MODE_Field := NRF_SVD.PMU.Disable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      MODE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Latch enable bit
   type LATCHCTRL1_LATCHEN_Field is
     (
      --  No effect
      LATCHCTRL1_LATCHEN_Field_0,
      --  Enable GPIO latch function
      LATCHCTRL1_LATCHEN_Field_1)
     with Size => 1;
   for LATCHCTRL1_LATCHEN_Field use
     (LATCHCTRL1_LATCHEN_Field_0 => 0,
      LATCHCTRL1_LATCHEN_Field_1 => 1);

   subtype LATCHCTRL1_LATCHKEY_Field is HAL.UInt16;

   --  Offset:0x44 PMU Latch Control Register 1
   type LATCHCTRL1_Register is record
      --  Latch enable bit
      LATCHEN       : LATCHCTRL1_LATCHEN_Field :=
                       NRF_SVD.PMU.LATCHCTRL1_LATCHEN_Field_0;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
      --  Write-only. Latch register key
      LATCHKEY      : LATCHCTRL1_LATCHKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LATCHCTRL1_Register use record
      LATCHEN       at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
      LATCHKEY      at 0 range 16 .. 31;
   end record;

   --  Latch disable bit
   type LATCHCTRL2_LATCHDIS_Field is
     (
      --  No effect
      LATCHCTRL2_LATCHDIS_Field_0,
      --  Disable GPIO latch function
      LATCHCTRL2_LATCHDIS_Field_1)
     with Size => 1;
   for LATCHCTRL2_LATCHDIS_Field use
     (LATCHCTRL2_LATCHDIS_Field_0 => 0,
      LATCHCTRL2_LATCHDIS_Field_1 => 1);

   subtype LATCHCTRL2_LATCHKEY_Field is HAL.UInt16;

   --  Offset:0x48 PMU Latch Control Register 2
   type LATCHCTRL2_Register is record
      --  Latch disable bit
      LATCHDIS      : LATCHCTRL2_LATCHDIS_Field :=
                       NRF_SVD.PMU.LATCHCTRL2_LATCHDIS_Field_0;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
      --  Write-only. Latch register key
      LATCHKEY      : LATCHCTRL2_LATCHKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LATCHCTRL2_Register use record
      LATCHDIS      at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
      LATCHKEY      at 0 range 16 .. 31;
   end record;

   --  Latch status
   type LATCHST_LATCHST_Field is
     (
      --  GPIO is Not latched
      Not LATCHED,
      --  GPIO status is latched
      Latched)
     with Size => 1;
   for LATCHST_LATCHST_Field use
     (Not LATCHED => 0,
      Latched => 1);

   --  Offset:0x4C PMU Latch Status Register
   type LATCHST_Register is record
      --  Read-only. Latch status
      LATCHST       : LATCHST_LATCHST_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LATCHST_Register use record
      LATCHST       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management Unit
   type SN_PMU_Peripheral is record
      --  Offset:0x00 PMU Backup Register 0
      BKP0       : aliased BKP_Register;
      --  Offset:0x04 PMU Backup Register 1
      BKP1       : aliased BKP_Register;
      --  Offset:0x08 PMU Backup Register 2
      BKP2       : aliased BKP_Register;
      --  Offset:0x0C PMU Backup Register 3
      BKP3       : aliased BKP_Register;
      --  Offset:0x10 PMU Backup Register 4
      BKP4       : aliased BKP_Register;
      --  Offset:0x14 PMU Backup Register 5
      BKP5       : aliased BKP_Register;
      --  Offset:0x18 PMU Backup Register 6
      BKP6       : aliased BKP_Register;
      --  Offset:0x1C PMU Backup Register 7
      BKP7       : aliased BKP_Register;
      --  Offset:0x40 PMU Control Register
      CTRL       : aliased CTRL_Register;
      --  Offset:0x44 PMU Latch Control Register 1
      LATCHCTRL1 : aliased LATCHCTRL1_Register;
      --  Offset:0x48 PMU Latch Control Register 2
      LATCHCTRL2 : aliased LATCHCTRL2_Register;
      --  Offset:0x4C PMU Latch Status Register
      LATCHST    : aliased LATCHST_Register;
   end record
     with Volatile;

   for SN_PMU_Peripheral use record
      BKP0       at 16#0# range 0 .. 31;
      BKP1       at 16#4# range 0 .. 31;
      BKP2       at 16#8# range 0 .. 31;
      BKP3       at 16#C# range 0 .. 31;
      BKP4       at 16#10# range 0 .. 31;
      BKP5       at 16#14# range 0 .. 31;
      BKP6       at 16#18# range 0 .. 31;
      BKP7       at 16#1C# range 0 .. 31;
      CTRL       at 16#40# range 0 .. 31;
      LATCHCTRL1 at 16#44# range 0 .. 31;
      LATCHCTRL2 at 16#48# range 0 .. 31;
      LATCHST    at 16#4C# range 0 .. 31;
   end record;

   --  Power Management Unit
   SN_PMU_Periph : aliased SN_PMU_Peripheral
     with Import, Address => System'To_Address (16#40032000#);

end NRF_SVD.PMU;
