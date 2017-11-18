--

--  This spec has been automatically generated from SN32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Normal mode/Fast Start-up select
   type SET1_VMIDSEL_Field is
     (
      Normal MODE,
      Fast Start-UP MODE)
     with Size => 1;
   for SET1_VMIDSEL_Field use
     (Normal MODE => 0,
      Fast Start-UP MODE => 1);

   --  VREF Circuit Power-down enable
   type SET1_PD_VREF_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET1_PD_VREF_Field use
     (Disable => 0,
      Enable => 1);

   --  IREF Circuit Power-down enable
   type SET1_PD_IREF_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET1_PD_IREF_Field use
     (Disable => 0,
      Enable => 1);

   --  CKGEN Power-down enable
   type SET1_PD_CLK_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET1_PD_CLK_Field use
     (Disable => 0,
      Enable => 1);

   --  DAC Power-down enable
   type SET1_PD_DAC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET1_PD_DAC_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x000 DAC Setting 1 Register
   type SET1_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#1#;
      --  Normal mode/Fast Start-up select
      VMIDSEL       : SET1_VMIDSEL_Field := NRF_SVD.DAC.Normal MODE;
      --  VREF Circuit Power-down enable
      PD_VREF       : SET1_PD_VREF_Field := NRF_SVD.DAC.Enable;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#1#;
      --  IREF Circuit Power-down enable
      PD_IREF       : SET1_PD_IREF_Field := NRF_SVD.DAC.Enable;
      --  CKGEN Power-down enable
      PD_CLK        : SET1_PD_CLK_Field := NRF_SVD.DAC.Enable;
      --  DAC Power-down enable
      PD_DAC        : SET1_PD_DAC_Field := NRF_SVD.DAC.Enable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET1_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VMIDSEL       at 0 range 1 .. 1;
      PD_VREF       at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      PD_IREF       at 0 range 5 .. 5;
      PD_CLK        at 0 range 6 .. 6;
      PD_DAC        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Software reset digital circuit(one MCLK pulse trigger)
   type SET2_SOFT_RSTN_Field is
     (
      Reset,
      Not Reset)
     with Size => 1;
   for SET2_SOFT_RSTN_Field use
     (Reset => 0,
      Not Reset => 1);

   --  DAC Enable
   type SET2_DAC_EN_IN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET2_DAC_EN_IN_Field use
     (Disable => 0,
      Enable => 1);

   --  Mute ON/OFF
   type SET2_MUTX_Field is
     (
      Mute OFF,
      Mute ON)
     with Size => 1;
   for SET2_MUTX_Field use
     (Mute OFF => 0,
      Mute ON => 1);

   --  Attenuation ramp rate
   type SET2_RMP_Field is
     (
      SET2_RMP_Field_1*Lrck,
      SET2_RMP_Field_2*Lrck,
      SET2_RMP_Field_4*Lrck,
      SET2_RMP_Field_8*Lrck)
     with Size => 2;
   for SET2_RMP_Field use
     (SET2_RMP_Field_1*Lrck => 0,
      SET2_RMP_Field_2*Lrck => 1,
      SET2_RMP_Field_4*Lrck => 2,
      SET2_RMP_Field_8*Lrck => 3);

   --  Offset:0x010 DAC Setting 2 Register
   type SET2_Register is record
      --  Software reset digital circuit(one MCLK pulse trigger)
      SOFT_RSTN     : SET2_SOFT_RSTN_Field := NRF_SVD.DAC.Not Reset;
      --  DAC Enable
      DAC_EN_IN     : SET2_DAC_EN_IN_Field := NRF_SVD.DAC.Disable;
      --  Mute ON/OFF
      MUTX          : SET2_MUTX_Field := NRF_SVD.DAC.Mute ON;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#4#;
      --  Attenuation ramp rate
      RMP           : SET2_RMP_Field := NRF_SVD.DAC.SET2_RMP_Field_1*Lrck;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET2_Register use record
      SOFT_RSTN     at 0 range 0 .. 0;
      DAC_EN_IN     at 0 range 1 .. 1;
      MUTX          at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      RMP           at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET3_VOL_Field is HAL.UInt8;

   --  Offset:0x020 DAC Setting 3 Register
   type SET3_Register is record
      --  DAC VOL setting
      VOL           : SET3_VOL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET3_Register use record
      VOL           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Initialize RAM enable
   type SET4_INI_RAM_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET4_INI_RAM_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Select the DAC de-emphasis response curve
   type SET4_DEMS_Field is
     (
      --  Reset value for the field
      Set4_Dems_Field_Reset,
      De-EMPHASIS FOR 48Khz,
      De-EMPHASIS FOR 44.1Khz,
      De-EMPHASIS FOR 32Khz)
     with Size => 2;
   for SET4_DEMS_Field use
     (Set4_Dems_Field_Reset => 0,
      De-EMPHASIS FOR 48Khz => 1,
      De-EMPHASIS FOR 44.1Khz => 2,
      De-EMPHASIS FOR 32Khz => 3);

   --  Driver Power-down enable
   type SET4_PD_DRV_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET4_PD_DRV_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x030 DAC Setting 4 Register
   type SET4_Register is record
      --  Initialize RAM enable
      INI_RAM_EN    : SET4_INI_RAM_EN_Field := NRF_SVD.DAC.Disable;
      --  Select the DAC de-emphasis response curve
      DEMS          : SET4_DEMS_Field := Set4_Dems_Field_Reset;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  Driver Power-down enable
      PD_DRV        : SET4_PD_DRV_Field := NRF_SVD.DAC.Enable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET4_Register use record
      INI_RAM_EN    at 0 range 0 .. 0;
      DEMS          at 0 range 1 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PD_DRV        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Initialize RAM ready
   type STATUS_Ini_RAM_Ready_Field is
     (
      Not READY,
      Ready)
     with Size => 1;
   for STATUS_Ini_RAM_Ready_Field use
     (Not READY => 0,
      Ready => 1);

   --  Offset:0x040 DAC Status Register
   type STATUS_Register is record
      --  Read-only. Initialize RAM ready
      Ini_RAM_Ready : STATUS_Ini_RAM_Ready_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      Ini_RAM_Ready at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Codec DAC Control Registers
   type SN_DAC_Peripheral is record
      --  Offset:0x000 DAC Setting 1 Register
      SET1   : aliased SET1_Register;
      --  Offset:0x010 DAC Setting 2 Register
      SET2   : aliased SET2_Register;
      --  Offset:0x020 DAC Setting 3 Register
      SET3   : aliased SET3_Register;
      --  Offset:0x030 DAC Setting 4 Register
      SET4   : aliased SET4_Register;
      --  Offset:0x040 DAC Status Register
      STATUS : aliased STATUS_Register;
   end record
     with Volatile;

   for SN_DAC_Peripheral use record
      SET1   at 16#0# range 0 .. 31;
      SET2   at 16#10# range 0 .. 31;
      SET3   at 16#20# range 0 .. 31;
      SET4   at 16#30# range 0 .. 31;
      STATUS at 16#40# range 0 .. 31;
   end record;

   --  Codec DAC Control Registers
   SN_DAC_Periph : aliased SN_DAC_Peripheral
     with Import, Address => System'To_Address (16#40065000#);

end NRF_SVD.DAC;
