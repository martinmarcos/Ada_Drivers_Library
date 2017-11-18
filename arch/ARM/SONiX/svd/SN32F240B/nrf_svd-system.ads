--

--  This spec has been automatically generated from SN32F240B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SYSTEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  IHRC enable
   type ANBCTRL_IHRCEN_Field is
     (
      --  Disable IHRC
      Disable,
      --  Enable IHRC
      Enable)
     with Size => 1;
   for ANBCTRL_IHRCEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 Analog Block Control Register
   type ANBCTRL_Register is record
      --  IHRC enable
      IHRCEN        : ANBCTRL_IHRCEN_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANBCTRL_Register use record
      IHRCEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  IHRC ready flag
   type CSST_IHRCRDY_Field is
     (
      --  IHRC is Not Ready
      CSST_IHRCRDY_Field_0,
      --  IHRC is Ready
      CSST_IHRCRDY_Field_1)
     with Size => 1;
   for CSST_IHRCRDY_Field use
     (CSST_IHRCRDY_Field_0 => 0,
      CSST_IHRCRDY_Field_1 => 1);

   --  Offset:0x08 Clock Source Status Register
   type CSST_Register is record
      --  Read-only. IHRC ready flag
      IHRCRDY       : CSST_IHRCRDY_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSST_Register use record
      IHRCRDY       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  System clock source selection
   type CLKCFG_SYSCLKSEL_Field is
     (
      --  IHRC is system clock
      Ihrc,
      --  ILRC is system clock
      Ilrc)
     with Size => 1;
   for CLKCFG_SYSCLKSEL_Field use
     (Ihrc => 0,
      Ilrc => 1);

   --  System clock switch status
   type CLKCFG_SYSCLKST_Field is
     (
      --  IHRC is used as system clock
      Ihrc,
      --  ILRC is used as system clock
      Ilrc)
     with Size => 1;
   for CLKCFG_SYSCLKST_Field use
     (Ihrc => 0,
      Ilrc => 1);

   --  Offset:0x0C System Clock Configuration Register
   type CLKCFG_Register is record
      --  System clock source selection
      SYSCLKSEL     : CLKCFG_SYSCLKSEL_Field := NRF_SVD.SYSTEM.Ihrc;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. System clock switch status
      SYSCLKST      : CLKCFG_SYSCLKST_Field := NRF_SVD.SYSTEM.Ihrc;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKCFG_Register use record
      SYSCLKSEL     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SYSCLKST      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  AHB clock source prescaler
   type AHBCP_AHBPRE_Field is
     (
      --  FAHB=FSYSCLK/1
      AHBCP_AHBPRE_Field_000,
      --  FAHB=FSYSCLK/2
      AHBCP_AHBPRE_Field_001,
      --  FAHB=FSYSCLK/4
      AHBCP_AHBPRE_Field_010,
      --  FAHB=FSYSCLK/8
      AHBCP_AHBPRE_Field_011,
      --  FAHB=FSYSCLK/16
      AHBCP_AHBPRE_Field_100,
      --  FAHB=FSYSCLK/32
      AHBCP_AHBPRE_Field_101,
      --  FAHB=FSYSCLK/64
      AHBCP_AHBPRE_Field_110,
      --  FAHB=FSYSCLK/128
      AHBCP_AHBPRE_Field_111)
     with Size => 3;
   for AHBCP_AHBPRE_Field use
     (AHBCP_AHBPRE_Field_000 => 0,
      AHBCP_AHBPRE_Field_001 => 1,
      AHBCP_AHBPRE_Field_010 => 2,
      AHBCP_AHBPRE_Field_011 => 3,
      AHBCP_AHBPRE_Field_100 => 4,
      AHBCP_AHBPRE_Field_101 => 5,
      AHBCP_AHBPRE_Field_110 => 6,
      AHBCP_AHBPRE_Field_111 => 7);

   --  Offset:0x10 AHB Clock Prescale Register
   type AHBCP_Register is record
      --  AHB clock source prescaler
      AHBPRE        : AHBCP_AHBPRE_Field :=
                       NRF_SVD.SYSTEM.AHBCP_AHBPRE_Field_010;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCP_Register use record
      AHBPRE        at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Software reset flag
   type RSTST_SWRSTF_Field is
     (
      --  No SW reset occurred
      RSTST_SWRSTF_Field_0,
      --  SW reset occurred
      RSTST_SWRSTF_Field_1)
     with Size => 1;
   for RSTST_SWRSTF_Field use
     (RSTST_SWRSTF_Field_0 => 0,
      RSTST_SWRSTF_Field_1 => 1);

   --  WDT reset flag
   type RSTST_WDTRSTF_Field is
     (
      --  No WDT reset occurred
      RSTST_WDTRSTF_Field_0,
      --  WDT reset occurred
      RSTST_WDTRSTF_Field_1)
     with Size => 1;
   for RSTST_WDTRSTF_Field use
     (RSTST_WDTRSTF_Field_0 => 0,
      RSTST_WDTRSTF_Field_1 => 1);

   --  LVD reset flag
   type RSTST_LVDRSTF_Field is
     (
      --  No LVD reset occurred
      RSTST_LVDRSTF_Field_0,
      --  LVD reset occurred
      RSTST_LVDRSTF_Field_1)
     with Size => 1;
   for RSTST_LVDRSTF_Field use
     (RSTST_LVDRSTF_Field_0 => 0,
      RSTST_LVDRSTF_Field_1 => 1);

   --  External reset flag
   type RSTST_EXTRSTF_Field is
     (
      --  No Extenral reset occurred
      RSTST_EXTRSTF_Field_0,
      --  External reset occurred
      RSTST_EXTRSTF_Field_1)
     with Size => 1;
   for RSTST_EXTRSTF_Field use
     (RSTST_EXTRSTF_Field_0 => 0,
      RSTST_EXTRSTF_Field_1 => 1);

   --  POR reset flag
   type RSTST_PORRSTF_Field is
     (
      --  No POR occurred
      RSTST_PORRSTF_Field_0,
      --  POR occurred
      RSTST_PORRSTF_Field_1)
     with Size => 1;
   for RSTST_PORRSTF_Field use
     (RSTST_PORRSTF_Field_0 => 0,
      RSTST_PORRSTF_Field_1 => 1);

   --  Offset:0x14 System Reset Status Register
   type RSTST_Register is record
      --  Software reset flag
      SWRSTF        : RSTST_SWRSTF_Field :=
                       NRF_SVD.SYSTEM.RSTST_SWRSTF_Field_1;
      --  WDT reset flag
      WDTRSTF       : RSTST_WDTRSTF_Field :=
                       NRF_SVD.SYSTEM.RSTST_WDTRSTF_Field_0;
      --  LVD reset flag
      LVDRSTF       : RSTST_LVDRSTF_Field :=
                       NRF_SVD.SYSTEM.RSTST_LVDRSTF_Field_0;
      --  External reset flag
      EXTRSTF       : RSTST_EXTRSTF_Field :=
                       NRF_SVD.SYSTEM.RSTST_EXTRSTF_Field_0;
      --  POR reset flag
      PORRSTF       : RSTST_PORRSTF_Field :=
                       NRF_SVD.SYSTEM.RSTST_PORRSTF_Field_1;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTST_Register use record
      SWRSTF        at 0 range 0 .. 0;
      WDTRSTF       at 0 range 1 .. 1;
      LVDRSTF       at 0 range 2 .. 2;
      EXTRSTF       at 0 range 3 .. 3;
      PORRSTF       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LVD reset level
   type LVDCTRL_LVDRSTLVL_Field is
     (
      --  LVD reset threshold is 2.40V
      LVDCTRL_LVDRSTLVL_Field_2.40V,
      --  LVD reset threshold is 2.70V
      LVDCTRL_LVDRSTLVL_Field_2.70V,
      --  LVD reset threshold is 3.00V
      LVDCTRL_LVDRSTLVL_Field_3.00V,
      --  LVD reset threshold is 3.60V
      LVDCTRL_LVDRSTLVL_Field_3.60V)
     with Size => 3;
   for LVDCTRL_LVDRSTLVL_Field use
     (LVDCTRL_LVDRSTLVL_Field_2.40V => 2,
      LVDCTRL_LVDRSTLVL_Field_2.70V => 3,
      LVDCTRL_LVDRSTLVL_Field_3.00V => 4,
      LVDCTRL_LVDRSTLVL_Field_3.60V => 5);

   --  LVD interrupt level
   type LVDCTRL_LVDINTLVL_Field is
     (
      --  LVD interrupt threshold is 2.40V
      LVDCTRL_LVDINTLVL_Field_2.40V,
      --  LVD interrupt threshold is 2.70V
      LVDCTRL_LVDINTLVL_Field_2.70V,
      --  LVD interrupt threshold is 3.00V
      LVDCTRL_LVDINTLVL_Field_3.00V,
      --  LVD interrupt threshold is 3.60V
      LVDCTRL_LVDINTLVL_Field_3.60V)
     with Size => 3;
   for LVDCTRL_LVDINTLVL_Field use
     (LVDCTRL_LVDINTLVL_Field_2.40V => 2,
      LVDCTRL_LVDINTLVL_Field_2.70V => 3,
      LVDCTRL_LVDINTLVL_Field_3.00V => 4,
      LVDCTRL_LVDINTLVL_Field_3.60V => 5);

   --  LVD Reset enable
   type LVDCTRL_LVDRSTEN_Field is
     (
      --  Disable LVD reset
      Diable,
      --  Enable LVD reset
      Enable)
     with Size => 1;
   for LVDCTRL_LVDRSTEN_Field use
     (Diable => 0,
      Enable => 1);

   --  LVD enable
   type LVDCTRL_LVDEN_Field is
     (
      --  Disable LVD
      Diable,
      --  Enable LVD
      Enable)
     with Size => 1;
   for LVDCTRL_LVDEN_Field use
     (Diable => 0,
      Enable => 1);

   --  Offset:0x18 LVD Control Register
   type LVDCTRL_Register is record
      --  LVD reset level
      LVDRSTLVL      : LVDCTRL_LVDRSTLVL_Field :=
                        NRF_SVD.SYSTEM.LVDCTRL_LVDRSTLVL_Field_2.40V;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  LVD interrupt level
      LVDINTLVL      : LVDCTRL_LVDINTLVL_Field :=
                        NRF_SVD.SYSTEM.LVDCTRL_LVDINTLVL_Field_2.40V;
      --  unspecified
      Reserved_7_13  : HAL.UInt7 := 16#0#;
      --  LVD Reset enable
      LVDRSTEN       : LVDCTRL_LVDRSTEN_Field := NRF_SVD.SYSTEM.Diable;
      --  LVD enable
      LVDEN          : LVDCTRL_LVDEN_Field := NRF_SVD.SYSTEM.Diable;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDCTRL_Register use record
      LVDRSTLVL      at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LVDINTLVL      at 0 range 4 .. 6;
      Reserved_7_13  at 0 range 7 .. 13;
      LVDRSTEN       at 0 range 14 .. 14;
      LVDEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External reset pin disable
   type EXRSTCTRL_RESETDIS_Field is
     (
      --  P3.7 acts as nRESET pin
      Enable,
      --  P3.7 acts as GPIO pin
      Disable)
     with Size => 1;
   for EXRSTCTRL_RESETDIS_Field use
     (Enable => 0,
      Disable => 1);

   --  Offset:0x1C External Reset Pin Control Register
   type EXRSTCTRL_Register is record
      --  External reset pin disable
      RESETDIS      : EXRSTCTRL_RESETDIS_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXRSTCTRL_Register use record
      RESETDIS      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SWD pin disable
   type SWDCTRL_SWDDIS_Field is
     (
      --  Enable SWD pins
      Enable,
      --  Disable SWD pins
      Disable)
     with Size => 1;
   for SWDCTRL_SWDDIS_Field use
     (Enable => 0,
      Disable => 1);

   --  Offset:0x20 SWD Pin Control Register
   type SWDCTRL_Register is record
      --  SWD pin disable
      SWDDIS        : SWDCTRL_SWDDIS_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWDCTRL_Register use record
      SWDDIS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt table mapping selection
   type IVTM_IVTM_Field is
     (
      --  Map to Boot ROM
      IVTM_IVTM_Field_00,
      --  Map to User ROM
      IVTM_IVTM_Field_01,
      --  Map to SRAM
      IVTM_IVTM_Field_10)
     with Size => 2;
   for IVTM_IVTM_Field use
     (IVTM_IVTM_Field_00 => 0,
      IVTM_IVTM_Field_01 => 1,
      IVTM_IVTM_Field_10 => 2);

   --  IVTM register key
   type IVTM_IVTMKEY_Field is
     (
      --  Reset value for the field
      Ivtm_Ivtmkey_Field_Reset)
     with Size => 16;
   for IVTM_IVTMKEY_Field use
     (Ivtm_Ivtmkey_Field_Reset => 0);

   --  Offset:0x24 Interrupt Vector Table Mapping register
   type IVTM_Register is record
      --  Interrupt table mapping selection
      IVTM          : IVTM_IVTM_Field := NRF_SVD.SYSTEM.IVTM_IVTM_Field_00;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
      --  Write-only. IVTM register key
      IVTMKEY       : IVTM_IVTMKEY_Field := Ivtm_Ivtmkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IVTM_Register use record
      IVTM          at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
      IVTMKEY       at 0 range 16 .. 31;
   end record;

   --  NDT for VDD 5V interrupt enable bit
   type NDTCTRL_NDT5V_IE_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for NDTCTRL_NDT5V_IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x28 Noise Detect Control Register
   type NDTCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  NDT for VDD 5V interrupt enable bit
      NDT5V_IE      : NDTCTRL_NDT5V_IE_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NDTCTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      NDT5V_IE      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Power noise status of NDT5V
   type NDTSTS_NDT5V_DET_Field is
     (
      --  No power noise is detected
      No,
      --  Power noise is detected by NDT5V IP
      Detected)
     with Size => 1;
   for NDTSTS_NDT5V_DET_Field use
     (No => 0,
      Detected => 1);

   --  Offset:0x2C Noise Detect Status Register
   type NDTSTS_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Power noise status of NDT5V
      NDT5V_DET     : NDTSTS_NDT5V_DET_Field := NRF_SVD.SYSTEM.No;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NDTSTS_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      NDT5V_DET     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Anti-EFT ability
   type ANTIEFT_AEFT_Field is
     (
      --  No
      ANTIEFT_AEFT_Field_0,
      --  Low
      ANTIEFT_AEFT_Field_2,
      --  Medium
      ANTIEFT_AEFT_Field_3,
      --  Strong
      ANTIEFT_AEFT_Field_4)
     with Size => 3;
   for ANTIEFT_AEFT_Field use
     (ANTIEFT_AEFT_Field_0 => 0,
      ANTIEFT_AEFT_Field_2 => 2,
      ANTIEFT_AEFT_Field_3 => 3,
      ANTIEFT_AEFT_Field_4 => 4);

   --  Offset:0x30 Anti-EFT Ability Control Register
   type ANTIEFT_Register is record
      --  Anti-EFT ability
      AEFT          : ANTIEFT_AEFT_Field :=
                       NRF_SVD.SYSTEM.ANTIEFT_AEFT_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANTIEFT_Register use record
      AEFT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable AHB clock for P0
   type AHBCLKEN_P0CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_P0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for P1
   type AHBCLKEN_P1CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_P1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for P2
   type AHBCLKEN_P2CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_P2CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for P3
   type AHBCLKEN_P3CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_P3CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for USB
   type AHBCLKEN_USBCLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_USBCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for CT16B0
   type AHBCLKEN_CT16B0CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_CT16B0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for CT16B1
   type AHBCLKEN_CT16B1CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_CT16B1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for ADC
   type AHBCLKEN_ADCCLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_ADCCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for SPI0
   type AHBCLKEN_SPI0CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_SPI0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for UART0
   type AHBCLKEN_UART0CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_UART0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for UART1
   type AHBCLKEN_UART1CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_UART1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for UART2
   type AHBCLKEN_UART2CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_UART2CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for I2C0
   type AHBCLKEN_I2C0CLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_I2C0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for WDT
   type AHBCLKEN_WDTCLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_WDTCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Clock output source selection
   type AHBCLKEN_CLKOUTSEL_Field is
     (
      --  Disable
      AHBCLKEN_CLKOUTSEL_Field_000,
      --  ILRC
      AHBCLKEN_CLKOUTSEL_Field_001,
      --  HCLK
      AHBCLKEN_CLKOUTSEL_Field_100,
      --  IHRC
      AHBCLKEN_CLKOUTSEL_Field_101)
     with Size => 3;
   for AHBCLKEN_CLKOUTSEL_Field use
     (AHBCLKEN_CLKOUTSEL_Field_000 => 0,
      AHBCLKEN_CLKOUTSEL_Field_001 => 1,
      AHBCLKEN_CLKOUTSEL_Field_100 => 4,
      AHBCLKEN_CLKOUTSEL_Field_101 => 5);

   --  Offset:0x00 AHB Clock Enable Register
   type AHBCLKEN_Register is record
      --  Enable AHB clock for P0
      P0CLKEN        : AHBCLKEN_P0CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  Enable AHB clock for P1
      P1CLKEN        : AHBCLKEN_P1CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  Enable AHB clock for P2
      P2CLKEN        : AHBCLKEN_P2CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  Enable AHB clock for P3
      P3CLKEN        : AHBCLKEN_P3CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  Enable AHB clock for USB
      USBCLKEN       : AHBCLKEN_USBCLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Enable AHB clock for CT16B0
      CT16B0CLKEN    : AHBCLKEN_CT16B0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for CT16B1
      CT16B1CLKEN    : AHBCLKEN_CT16B1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Enable AHB clock for ADC
      ADCCLKEN       : AHBCLKEN_ADCCLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for SPI0
      SPI0CLKEN      : AHBCLKEN_SPI0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Enable AHB clock for UART0
      UART0CLKEN     : AHBCLKEN_UART0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for UART1
      UART1CLKEN     : AHBCLKEN_UART1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for UART2
      UART2CLKEN     : AHBCLKEN_UART2CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  Enable AHB clock for I2C0
      I2C0CLKEN      : AHBCLKEN_I2C0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Enable AHB clock for WDT
      WDTCLKEN       : AHBCLKEN_WDTCLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Clock output source selection
      CLKOUTSEL      : AHBCLKEN_CLKOUTSEL_Field :=
                        NRF_SVD.SYSTEM.AHBCLKEN_CLKOUTSEL_Field_000;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKEN_Register use record
      P0CLKEN        at 0 range 0 .. 0;
      P1CLKEN        at 0 range 1 .. 1;
      P2CLKEN        at 0 range 2 .. 2;
      P3CLKEN        at 0 range 3 .. 3;
      USBCLKEN       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CT16B0CLKEN    at 0 range 6 .. 6;
      CT16B1CLKEN    at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ADCCLKEN       at 0 range 11 .. 11;
      SPI0CLKEN      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      UART0CLKEN     at 0 range 16 .. 16;
      UART1CLKEN     at 0 range 17 .. 17;
      UART2CLKEN     at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      I2C0CLKEN      at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      WDTCLKEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CLKOUTSEL      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  WDT APB clock source prescaler
   type APBCP1_WDTPRE_Field is
     (
      --  WDTCLK/1
      APBCP1_WDTPRE_Field_000,
      --  WDTCLK/2
      APBCP1_WDTPRE_Field_001,
      --  WDTCLK/4
      APBCP1_WDTPRE_Field_010,
      --  WDTCLK/8
      APBCP1_WDTPRE_Field_011,
      --  WDTCLK/16
      APBCP1_WDTPRE_Field_100,
      --  WDTCLK/32
      APBCP1_WDTPRE_Field_101)
     with Size => 3;
   for APBCP1_WDTPRE_Field use
     (APBCP1_WDTPRE_Field_000 => 0,
      APBCP1_WDTPRE_Field_001 => 1,
      APBCP1_WDTPRE_Field_010 => 2,
      APBCP1_WDTPRE_Field_011 => 3,
      APBCP1_WDTPRE_Field_100 => 4,
      APBCP1_WDTPRE_Field_101 => 5);

   --  CLKOUT APB clock source prescaler
   type APBCP1_CLKOUTPRE_Field is
     (
      --  FCLKOUT/1
      APBCP1_CLKOUTPRE_Field_000,
      --  FCLKOUT/2
      APBCP1_CLKOUTPRE_Field_001,
      --  FCLKOUT/4
      APBCP1_CLKOUTPRE_Field_010,
      --  FCLKOUT/8
      APBCP1_CLKOUTPRE_Field_011,
      --  FCLKOUT/16
      APBCP1_CLKOUTPRE_Field_100,
      --  FCLKOUT/32
      APBCP1_CLKOUTPRE_Field_101,
      --  FCLKOUT/64
      APBCP1_CLKOUTPRE_Field_110,
      --  FCLKOUT/128
      APBCP1_CLKOUTPRE_Field_111)
     with Size => 3;
   for APBCP1_CLKOUTPRE_Field use
     (APBCP1_CLKOUTPRE_Field_000 => 0,
      APBCP1_CLKOUTPRE_Field_001 => 1,
      APBCP1_CLKOUTPRE_Field_010 => 2,
      APBCP1_CLKOUTPRE_Field_011 => 3,
      APBCP1_CLKOUTPRE_Field_100 => 4,
      APBCP1_CLKOUTPRE_Field_101 => 5,
      APBCP1_CLKOUTPRE_Field_110 => 6,
      APBCP1_CLKOUTPRE_Field_111 => 7);

   --  Offset:0x08 APB Clock Prescale Register 1
   type APBCP1_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  WDT APB clock source prescaler
      WDTPRE         : APBCP1_WDTPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_WDTPRE_Field_000;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  CLKOUT APB clock source prescaler
      CLKOUTPRE      : APBCP1_CLKOUTPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_CLKOUTPRE_Field_000;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APBCP1_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      WDTPRE         at 0 range 20 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      CLKOUTPRE      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Registers
   type SN_SYS0_Peripheral is record
      --  Offset:0x00 Analog Block Control Register
      ANBCTRL   : aliased ANBCTRL_Register;
      --  Offset:0x08 Clock Source Status Register
      CSST      : aliased CSST_Register;
      --  Offset:0x0C System Clock Configuration Register
      CLKCFG    : aliased CLKCFG_Register;
      --  Offset:0x10 AHB Clock Prescale Register
      AHBCP     : aliased AHBCP_Register;
      --  Offset:0x14 System Reset Status Register
      RSTST     : aliased RSTST_Register;
      --  Offset:0x18 LVD Control Register
      LVDCTRL   : aliased LVDCTRL_Register;
      --  Offset:0x1C External Reset Pin Control Register
      EXRSTCTRL : aliased EXRSTCTRL_Register;
      --  Offset:0x20 SWD Pin Control Register
      SWDCTRL   : aliased SWDCTRL_Register;
      --  Offset:0x24 Interrupt Vector Table Mapping register
      IVTM      : aliased IVTM_Register;
      --  Offset:0x28 Noise Detect Control Register
      NDTCTRL   : aliased NDTCTRL_Register;
      --  Offset:0x2C Noise Detect Status Register
      NDTSTS    : aliased NDTSTS_Register;
      --  Offset:0x30 Anti-EFT Ability Control Register
      ANTIEFT   : aliased ANTIEFT_Register;
   end record
     with Volatile;

   for SN_SYS0_Peripheral use record
      ANBCTRL   at 16#0# range 0 .. 31;
      CSST      at 16#8# range 0 .. 31;
      CLKCFG    at 16#C# range 0 .. 31;
      AHBCP     at 16#10# range 0 .. 31;
      RSTST     at 16#14# range 0 .. 31;
      LVDCTRL   at 16#18# range 0 .. 31;
      EXRSTCTRL at 16#1C# range 0 .. 31;
      SWDCTRL   at 16#20# range 0 .. 31;
      IVTM      at 16#24# range 0 .. 31;
      NDTCTRL   at 16#28# range 0 .. 31;
      NDTSTS    at 16#2C# range 0 .. 31;
      ANTIEFT   at 16#30# range 0 .. 31;
   end record;

   --  System Control Registers
   SN_SYS0_Periph : aliased SN_SYS0_Peripheral
     with Import, Address => System'To_Address (16#40060000#);

   --  System Control Registers
   type SN_SYS1_Peripheral is record
      --  Offset:0x00 AHB Clock Enable Register
      AHBCLKEN : aliased AHBCLKEN_Register;
      --  Offset:0x08 APB Clock Prescale Register 1
      APBCP1   : aliased APBCP1_Register;
   end record
     with Volatile;

   for SN_SYS1_Peripheral use record
      AHBCLKEN at 16#0# range 0 .. 31;
      APBCP1   at 16#8# range 0 .. 31;
   end record;

   --  System Control Registers
   SN_SYS1_Periph : aliased SN_SYS1_Peripheral
     with Import, Address => System'To_Address (16#4005E000#);

end NRF_SVD.SYSTEM;
