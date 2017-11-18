--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.NV is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash Security
   type FSEC_SEC_Field is
     (
      --  MCU security status is unsecure
      Sec_2,
      --  MCU security status is secure
      Sec_3)
     with Size => 2;
   for FSEC_SEC_Field use
     (Sec_2 => 2,
      Sec_3 => 3);

   --  Freescale Failure Analysis Access Code
   type FSEC_FSLACC_Field is
     (
      --  Freescale factory access denied
      Fslacc_2,
      --  Freescale factory access granted
      Fslacc_3)
     with Size => 2;
   for FSEC_FSLACC_Field use
     (Fslacc_2 => 2,
      Fslacc_3 => 3);

   --  no description available
   type FSEC_MEEN_Field is
     (
      --  Mass erase is disabled
      Meen_2,
      --  Mass erase is enabled
      Meen_3)
     with Size => 2;
   for FSEC_MEEN_Field use
     (Meen_2 => 2,
      Meen_3 => 3);

   --  Backdoor Key Security Enable
   type FSEC_KEYEN_Field is
     (
      --  Backdoor key access enabled
      Keyen_2,
      --  Backdoor key access disabled
      Keyen_3)
     with Size => 2;
   for FSEC_KEYEN_Field use
     (Keyen_2 => 2,
      Keyen_3 => 3);

   --  Non-volatile Flash Security Register
   type NV_FSEC_Register is record
      --  Read-only. Flash Security
      SEC    : FSEC_SEC_Field;
      --  Read-only. Freescale Failure Analysis Access Code
      FSLACC : FSEC_FSLACC_Field;
      --  Read-only. no description available
      MEEN   : FSEC_MEEN_Field;
      --  Read-only. Backdoor Key Security Enable
      KEYEN  : FSEC_KEYEN_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NV_FSEC_Register use record
      SEC    at 0 range 0 .. 1;
      FSLACC at 0 range 2 .. 3;
      MEEN   at 0 range 4 .. 5;
      KEYEN  at 0 range 6 .. 7;
   end record;

   --  no description available
   type FOPT_LPBOOT_Field is
     (
      --  Low-power boot
      Lpboot_0,
      --  Normal boot
      Lpboot_1)
     with Size => 1;
   for FOPT_LPBOOT_Field use
     (Lpboot_0 => 0,
      Lpboot_1 => 1);

   --  no description available
   type FOPT_BOOTPIN_OPT_Field is
     (
      --  Force Boot from ROM if BOOTCFG0 asserted, where BOOTCFG0 is the boot
      --  config function which is muxed with NMI pin
      Bootpin_Opt_0,
      --  Boot source configured by FOPT (BOOTSRC_SEL) bits
      Bootpin_Opt_1)
     with Size => 1;
   for FOPT_BOOTPIN_OPT_Field use
     (Bootpin_Opt_0 => 0,
      Bootpin_Opt_1 => 1);

   --  no description available
   type FOPT_NMI_DIS_Field is
     (
      --  NMI interrupts are always blocked
      Nmi_Dis_0,
      --  NMI_b pin/interrupts reset default to enabled
      Nmi_Dis_1)
     with Size => 1;
   for FOPT_NMI_DIS_Field use
     (Nmi_Dis_0 => 0,
      Nmi_Dis_1 => 1);

   --  no description available
   type FOPT_RESET_PIN_CFG_Field is
     (
      --  RESET pin is disabled following a POR and cannot be enabled as reset
      --  function
      Reset_Pin_Cfg_0,
      --  RESET_b pin is dedicated
      Reset_Pin_Cfg_1)
     with Size => 1;
   for FOPT_RESET_PIN_CFG_Field use
     (Reset_Pin_Cfg_0 => 0,
      Reset_Pin_Cfg_1 => 1);

   --  Boot source selection
   type FOPT_BOOTSRC_SEL_Field is
     (
      --  Boot from Flash
      Bootsrc_Sel_0,
      --  Boot from ROM
      Bootsrc_Sel_2,
      --  Boot from ROM
      Bootsrc_Sel_3)
     with Size => 2;
   for FOPT_BOOTSRC_SEL_Field use
     (Bootsrc_Sel_0 => 0,
      Bootsrc_Sel_2 => 2,
      Bootsrc_Sel_3 => 3);

   --  Non-volatile Flash Option Register
   type NV_FOPT_Register is record
      --  Read-only. no description available
      LPBOOT        : FOPT_LPBOOT_Field;
      --  Read-only. no description available
      BOOTPIN_OPT   : FOPT_BOOTPIN_OPT_Field;
      --  Read-only. no description available
      NMI_DIS       : FOPT_NMI_DIS_Field;
      --  Read-only. no description available
      RESET_PIN_CFG : FOPT_RESET_PIN_CFG_Field;
      --  unspecified
      Reserved_4_5  : HAL.UInt2;
      --  Read-only. Boot source selection
      BOOTSRC_SEL   : FOPT_BOOTSRC_SEL_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NV_FOPT_Register use record
      LPBOOT        at 0 range 0 .. 0;
      BOOTPIN_OPT   at 0 range 1 .. 1;
      NMI_DIS       at 0 range 2 .. 2;
      RESET_PIN_CFG at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      BOOTSRC_SEL   at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash configuration field
   type FTFE_FlashConfig_Peripheral is record
      --  Backdoor Comparison Key 3.
      BACKKEY3 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 2.
      BACKKEY2 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 1.
      BACKKEY1 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 0.
      BACKKEY0 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 7.
      BACKKEY7 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 6.
      BACKKEY6 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 5.
      BACKKEY5 : aliased HAL.UInt8;
      --  Backdoor Comparison Key 4.
      BACKKEY4 : aliased HAL.UInt8;
      --  Non-volatile P-Flash Protection 1 - Low Register
      FPROT3   : aliased HAL.UInt8;
      --  Non-volatile P-Flash Protection 1 - High Register
      FPROT2   : aliased HAL.UInt8;
      --  Non-volatile P-Flash Protection 0 - Low Register
      FPROT1   : aliased HAL.UInt8;
      --  Non-volatile P-Flash Protection 0 - High Register
      FPROT0   : aliased HAL.UInt8;
      --  Non-volatile Flash Security Register
      FSEC     : aliased NV_FSEC_Register;
      --  Non-volatile Flash Option Register
      FOPT     : aliased NV_FOPT_Register;
      --  Non-volatile EERAM Protection Register
      FEPROT   : aliased HAL.UInt8;
      --  Non-volatile D-Flash Protection Register
      FDPROT   : aliased HAL.UInt8;
   end record
     with Volatile;

   for FTFE_FlashConfig_Peripheral use record
      BACKKEY3 at 16#0# range 0 .. 7;
      BACKKEY2 at 16#1# range 0 .. 7;
      BACKKEY1 at 16#2# range 0 .. 7;
      BACKKEY0 at 16#3# range 0 .. 7;
      BACKKEY7 at 16#4# range 0 .. 7;
      BACKKEY6 at 16#5# range 0 .. 7;
      BACKKEY5 at 16#6# range 0 .. 7;
      BACKKEY4 at 16#7# range 0 .. 7;
      FPROT3   at 16#8# range 0 .. 7;
      FPROT2   at 16#9# range 0 .. 7;
      FPROT1   at 16#A# range 0 .. 7;
      FPROT0   at 16#B# range 0 .. 7;
      FSEC     at 16#C# range 0 .. 7;
      FOPT     at 16#D# range 0 .. 7;
      FEPROT   at 16#E# range 0 .. 7;
      FDPROT   at 16#F# range 0 .. 7;
   end record;

   --  Flash configuration field
   FTFE_FlashConfig_Periph : aliased FTFE_FlashConfig_Peripheral
     with Import, Address => System'To_Address (16#400#);

end NRF_SVD.NV;
