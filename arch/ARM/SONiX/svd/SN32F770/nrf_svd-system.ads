--

--  This spec has been automatically generated from SN32F770.svd

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
      --  Enable IHRC 12MHz for HCLK
      Ihrc 12Mhz,
      --  Enable IHRC 24MHz for HCLK
      Ihrc 24Mhz,
      --  Enable IHRC 48MHz for HCLK
      Ihrc 48Mhz)
     with Size => 3;
   for ANBCTRL_IHRCEN_Field use
     (Disable => 0,
      Ihrc 12Mhz => 1,
      Ihrc 24Mhz => 2,
      Ihrc 48Mhz => 4);

   --  Offset:0x00 Analog Block Control Register
   type ANBCTRL_Register is record
      --  IHRC enable
      IHRCEN        : ANBCTRL_IHRCEN_Field := NRF_SVD.SYSTEM.Ihrc 12Mhz;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANBCTRL_Register use record
      IHRCEN        at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
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
      --  HCLK=IHRC
      Ihrc,
      --  HCLK=ILRC
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
      AHBCP_AHBPRE_Field_000B,
      --  FAHB=FSYSCLK/2
      AHBCP_AHBPRE_Field_001B,
      --  FAHB=FSYSCLK/4
      AHBCP_AHBPRE_Field_010B,
      --  FAHB=FSYSCLK/8
      AHBCP_AHBPRE_Field_011B,
      --  FAHB=FSYSCLK/16
      AHBCP_AHBPRE_Field_100B,
      --  FAHB=FSYSCLK/32
      AHBCP_AHBPRE_Field_101B,
      --  FAHB=FSYSCLK/64
      AHBCP_AHBPRE_Field_110B,
      --  FAHB=FSYSCLK/128
      AHBCP_AHBPRE_Field_111B)
     with Size => 3;
   for AHBCP_AHBPRE_Field use
     (AHBCP_AHBPRE_Field_000B => 0,
      AHBCP_AHBPRE_Field_001B => 1,
      AHBCP_AHBPRE_Field_010B => 2,
      AHBCP_AHBPRE_Field_011B => 3,
      AHBCP_AHBPRE_Field_100B => 4,
      AHBCP_AHBPRE_Field_101B => 5,
      AHBCP_AHBPRE_Field_110B => 6,
      AHBCP_AHBPRE_Field_111B => 7);

   --  SYSCLK prescaler
   type AHBCP_DIV1P5_Field is
     (
      --  SYSCLK = SYSCLK/1
      Div1,
      --  SYSCLK = SYSCLK/1.5
      Div1P5)
     with Size => 1;
   for AHBCP_DIV1P5_Field use
     (Div1 => 0,
      Div1P5 => 1);

   --  Offset:0x10 AHB Clock Prescale Register
   type AHBCP_Register is record
      --  AHB clock source prescaler
      AHBPRE        : AHBCP_AHBPRE_Field :=
                       NRF_SVD.SYSTEM.AHBCP_AHBPRE_Field_000B;
      --  SYSCLK prescaler
      DIV1P5        : AHBCP_DIV1P5_Field := NRF_SVD.SYSTEM.Div1;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCP_Register use record
      AHBPRE        at 0 range 0 .. 2;
      DIV1P5        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
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
      --  LVD reset threshold is 2.70V
      LVDCTRL_LVDRSTLVL_Field_2.70V,
      --  LVD reset threshold is 3.00V
      LVDCTRL_LVDRSTLVL_Field_3.00V,
      --  LVD reset threshold is 3.60V
      LVDCTRL_LVDRSTLVL_Field_3.60V)
     with Size => 3;
   for LVDCTRL_LVDRSTLVL_Field use
     (LVDCTRL_LVDRSTLVL_Field_2.70V => 3,
      LVDCTRL_LVDRSTLVL_Field_3.00V => 4,
      LVDCTRL_LVDRSTLVL_Field_3.60V => 5);

   --  LVD interrupt level
   type LVDCTRL_LVDINTLVL_Field is
     (
      --  LVD interrupt threshold is 2.70V
      LVDCTRL_LVDINTLVL_Field_2.70V,
      --  LVD interrupt threshold is 3.00V
      LVDCTRL_LVDINTLVL_Field_3.00V,
      --  LVD interrupt threshold is 3.60V
      LVDCTRL_LVDINTLVL_Field_3.60V)
     with Size => 3;
   for LVDCTRL_LVDINTLVL_Field use
     (LVDCTRL_LVDINTLVL_Field_2.70V => 3,
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
                        NRF_SVD.SYSTEM.LVDCTRL_LVDRSTLVL_Field_2.70V;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  LVD interrupt level
      LVDINTLVL      : LVDCTRL_LVDINTLVL_Field :=
                        NRF_SVD.SYSTEM.LVDCTRL_LVDINTLVL_Field_2.70V;
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
      --  P0.7 acts as nRESET pin
      Enable,
      --  P0.7 acts as GPIO pin
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

   --  IHRC frequency adjustment enable bit
   type IHRCADJ_ADJEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for IHRCADJ_ADJEN_Field use
     (Disable => 0,
      Enable => 1);

   --  IHRC frequency adjusting direction bit
   type IHRCADJ_DIR_Field is
     (
      --  Positive
      Positive,
      --  Negative
      Negative)
     with Size => 1;
   for IHRCADJ_DIR_Field use
     (Positive => 0,
      Negative => 1);

   subtype IHRCADJ_ADJ_Field is HAL.UInt8;
   subtype IHRCADJ_SYSKEY_Field is HAL.UInt16;

   --  Offset:0x34 IHRC Frequency Adjustment register
   type IHRCADJ_Register is record
      --  IHRC frequency adjustment enable bit
      ADJEN          : IHRCADJ_ADJEN_Field := NRF_SVD.SYSTEM.Disable;
      --  IHRC frequency adjusting direction bit
      DIR            : IHRCADJ_DIR_Field := NRF_SVD.SYSTEM.Positive;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  IHRC frequency adjusting bits
      ADJ            : IHRCADJ_ADJ_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. System register key
      SYSKEY         : IHRCADJ_SYSKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IHRCADJ_Register use record
      ADJEN          at 0 range 0 .. 0;
      DIR            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ADJ            at 0 range 4 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SYSKEY         at 0 range 16 .. 31;
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

   --  Enable AHB clock for CMP
   type AHBCLKEN_CMPCLKEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for AHBCLKEN_CMPCLKEN_Field use
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
      AHBCLKEN_CLKOUTSEL_Field_000B,
      --  ILRC
      AHBCLKEN_CLKOUTSEL_Field_001B,
      --  HCLK
      AHBCLKEN_CLKOUTSEL_Field_100B,
      --  IHRC
      AHBCLKEN_CLKOUTSEL_Field_101B)
     with Size => 3;
   for AHBCLKEN_CLKOUTSEL_Field use
     (AHBCLKEN_CLKOUTSEL_Field_000B => 0,
      AHBCLKEN_CLKOUTSEL_Field_001B => 1,
      AHBCLKEN_CLKOUTSEL_Field_100B => 4,
      AHBCLKEN_CLKOUTSEL_Field_101B => 5);

   --  Offset:0x00 AHB Clock Enable Register
   type AHBCLKEN_Register is record
      --  Enable AHB clock for P0
      P0CLKEN        : AHBCLKEN_P0CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  Enable AHB clock for P1
      P1CLKEN        : AHBCLKEN_P1CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  Enable AHB clock for P2
      P2CLKEN        : AHBCLKEN_P2CLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Enable AHB clock for CT16B0
      CT16B0CLKEN    : AHBCLKEN_CT16B0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for CT16B1
      CT16B1CLKEN    : AHBCLKEN_CT16B1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Enable AHB clock for ADC
      ADCCLKEN       : AHBCLKEN_ADCCLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Enable AHB clock for CMP
      CMPCLKEN       : AHBCLKEN_CMPCLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Enable AHB clock for UART0
      UART0CLKEN     : AHBCLKEN_UART0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Enable AHB clock for WDT
      WDTCLKEN       : AHBCLKEN_WDTCLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Clock output source selection
      CLKOUTSEL      : AHBCLKEN_CLKOUTSEL_Field :=
                        NRF_SVD.SYSTEM.AHBCLKEN_CLKOUTSEL_Field_000B;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKEN_Register use record
      P0CLKEN        at 0 range 0 .. 0;
      P1CLKEN        at 0 range 1 .. 1;
      P2CLKEN        at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      CT16B0CLKEN    at 0 range 6 .. 6;
      CT16B1CLKEN    at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ADCCLKEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CMPCLKEN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      UART0CLKEN     at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      WDTCLKEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CLKOUTSEL      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  ADC APB clock source prescaler
   type APBCP0_ADCPRE_Field is
     (
      --  HCLK/1
      APBCP0_ADCPRE_Field_000B,
      --  HCLK/2
      APBCP0_ADCPRE_Field_001B,
      --  HCLK/4
      APBCP0_ADCPRE_Field_010B,
      --  HCLK/8
      APBCP0_ADCPRE_Field_011B,
      --  HCLK/16
      APBCP0_ADCPRE_Field_100B)
     with Size => 3;
   for APBCP0_ADCPRE_Field use
     (APBCP0_ADCPRE_Field_000B => 0,
      APBCP0_ADCPRE_Field_001B => 1,
      APBCP0_ADCPRE_Field_010B => 2,
      APBCP0_ADCPRE_Field_011B => 3,
      APBCP0_ADCPRE_Field_100B => 4);

   --  Offset:0x04 APB Clock Prescale Register 0
   type APBCP0_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ADC APB clock source prescaler
      ADCPRE         : APBCP0_ADCPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP0_ADCPRE_Field_000B;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APBCP0_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ADCPRE         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  WDT APB clock source prescaler
   type APBCP1_WDTPRE_Field is
     (
      --  WDT_PCLK = WDT clock source / 1
      APBCP1_WDTPRE_Field_000B,
      --  WDT_PCLK = WDT clock source / 2
      APBCP1_WDTPRE_Field_001B,
      --  WDT_PCLK = WDT clock source / 4
      APBCP1_WDTPRE_Field_010B,
      --  WDT_PCLK = WDT clock source / 8
      APBCP1_WDTPRE_Field_011B,
      --  WDT_PCLK = WDT clock source / 16
      APBCP1_WDTPRE_Field_100B,
      --  WDT_PCLK = WDT clock source / 32
      APBCP1_WDTPRE_Field_101B)
     with Size => 3;
   for APBCP1_WDTPRE_Field use
     (APBCP1_WDTPRE_Field_000B => 0,
      APBCP1_WDTPRE_Field_001B => 1,
      APBCP1_WDTPRE_Field_010B => 2,
      APBCP1_WDTPRE_Field_011B => 3,
      APBCP1_WDTPRE_Field_100B => 4,
      APBCP1_WDTPRE_Field_101B => 5);

   --  CLKOUT APB clock source prescaler
   type APBCP1_CLKOUTPRE_Field is
     (
      --  FCLKOUT/1
      APBCP1_CLKOUTPRE_Field_000B,
      --  FCLKOUT/2
      APBCP1_CLKOUTPRE_Field_001B,
      --  FCLKOUT/4
      APBCP1_CLKOUTPRE_Field_010B,
      --  FCLKOUT/8
      APBCP1_CLKOUTPRE_Field_011B,
      --  FCLKOUT/16
      APBCP1_CLKOUTPRE_Field_100B,
      --  FCLKOUT/32
      APBCP1_CLKOUTPRE_Field_101B,
      --  FCLKOUT/64
      APBCP1_CLKOUTPRE_Field_110B,
      --  FCLKOUT/128
      APBCP1_CLKOUTPRE_Field_111B)
     with Size => 3;
   for APBCP1_CLKOUTPRE_Field use
     (APBCP1_CLKOUTPRE_Field_000B => 0,
      APBCP1_CLKOUTPRE_Field_001B => 1,
      APBCP1_CLKOUTPRE_Field_010B => 2,
      APBCP1_CLKOUTPRE_Field_011B => 3,
      APBCP1_CLKOUTPRE_Field_100B => 4,
      APBCP1_CLKOUTPRE_Field_101B => 5,
      APBCP1_CLKOUTPRE_Field_110B => 6,
      APBCP1_CLKOUTPRE_Field_111B => 7);

   --  Offset:0x08 APB Clock Prescale Register 1
   type APBCP1_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  WDT APB clock source prescaler
      WDTPRE         : APBCP1_WDTPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_WDTPRE_Field_000B;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  CLKOUT APB clock source prescaler
      CLKOUTPRE      : APBCP1_CLKOUTPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_CLKOUTPRE_Field_000B;
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

   --  System Control Registers 0
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
      --  Offset:0x34 IHRC Frequency Adjustment register
      IHRCADJ   : aliased IHRCADJ_Register;
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
      IHRCADJ   at 16#34# range 0 .. 31;
   end record;

   --  System Control Registers 0
   SN_SYS0_Periph : aliased SN_SYS0_Peripheral
     with Import, Address => System'To_Address (16#40060000#);

   --  System Control Registers
   type SN_SYS1_Peripheral is record
      --  Offset:0x00 AHB Clock Enable Register
      AHBCLKEN : aliased AHBCLKEN_Register;
      --  Offset:0x04 APB Clock Prescale Register 0
      APBCP0   : aliased APBCP0_Register;
      --  Offset:0x08 APB Clock Prescale Register 1
      APBCP1   : aliased APBCP1_Register;
   end record
     with Volatile;

   for SN_SYS1_Peripheral use record
      AHBCLKEN at 16#0# range 0 .. 31;
      APBCP0   at 16#4# range 0 .. 31;
      APBCP1   at 16#8# range 0 .. 31;
   end record;

   --  System Control Registers
   SN_SYS1_Periph : aliased SN_SYS1_Peripheral
     with Import, Address => System'To_Address (16#4005E000#);

end NRF_SVD.SYSTEM;
