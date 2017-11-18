--

--  This spec has been automatically generated from SN32F100.svd

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
      Disable,
      Enable)
     with Size => 1;
   for ANBCTRL_IHRCEN_Field use
     (Disable => 0,
      Enable => 1);

   --  ELS XTAL enable
   type ANBCTRL_ELSEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ANBCTRL_ELSEN_Field use
     (Disable => 0,
      Enable => 1);

   --  EHS XTAL enable
   type ANBCTRL_EHSEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ANBCTRL_EHSEN_Field use
     (Disable => 0,
      Enable => 1);

   --  EHS XTAL frequency range
   type ANBCTRL_EHSFREQ_Field is
     (
      --  Less equal than 12MHz
      Low,
      --  Greater than 12MHz
      High)
     with Size => 1;
   for ANBCTRL_EHSFREQ_Field use
     (Low => 0,
      High => 1);

   --  Audio external high-speed clock enable
   type ANBCTRL_AUEHSEN_Field is
     (
      --  Disable AUEHS X'TAL
      Disable,
      --  Enable AUEHS X'TAL
      Enable)
     with Size => 1;
   for ANBCTRL_AUEHSEN_Field use
     (Disable => 0,
      Enable => 1);

   --  AUEHS X'TAL Frequency range
   type ANBCTRL_AUEHSFREQ_Field is
     (
      Auehs X'Tal LESS EQUAL THAN 12Mhz ,
      Auehs X'Tal MORE THAN 12Mhz )
     with Size => 1;
   for ANBCTRL_AUEHSFREQ_Field use
     (Auehs X'Tal LESS EQUAL THAN 12Mhz  => 0,
      Auehs X'Tal MORE THAN 12Mhz  => 1);

   --  Offset:0x00 Analog Block Control Register
   type ANBCTRL_Register is record
      --  IHRC enable
      IHRCEN         : ANBCTRL_IHRCEN_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  ELS XTAL enable
      ELSEN          : ANBCTRL_ELSEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  EHS XTAL enable
      EHSEN          : ANBCTRL_EHSEN_Field := NRF_SVD.SYSTEM.Disable;
      --  EHS XTAL frequency range
      EHSFREQ        : ANBCTRL_EHSFREQ_Field := NRF_SVD.SYSTEM.Low;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Audio external high-speed clock enable
      AUEHSEN        : ANBCTRL_AUEHSEN_Field := NRF_SVD.SYSTEM.Disable;
      --  AUEHS X'TAL Frequency range
      AUEHSFREQ      : ANBCTRL_AUEHSFREQ_Field :=
                        NRF_SVD.SYSTEM.Auehs X'Tal LESS EQUAL THAN 12Mhz ;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANBCTRL_Register use record
      IHRCEN         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      ELSEN          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EHSEN          at 0 range 4 .. 4;
      EHSFREQ        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AUEHSEN        at 0 range 8 .. 8;
      AUEHSFREQ      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype PLLCTRL_MSEL_Field is HAL.UInt5;

   --  P=PSEL*2
   type PLLCTRL_PSEL_Field is
     (
      --  P=6
      PLLCTRL_PSEL_Field_011,
      --  P=8
      PLLCTRL_PSEL_Field_100,
      --  P=10
      PLLCTRL_PSEL_Field_101,
      --  P=12
      PLLCTRL_PSEL_Field_110,
      --  P=14
      PLLCTRL_PSEL_Field_111)
     with Size => 3;
   for PLLCTRL_PSEL_Field use
     (PLLCTRL_PSEL_Field_011 => 3,
      PLLCTRL_PSEL_Field_100 => 4,
      PLLCTRL_PSEL_Field_101 => 5,
      PLLCTRL_PSEL_Field_110 => 6,
      PLLCTRL_PSEL_Field_111 => 7);

   --  F=POWER(2, FSEL)
   type PLLCTRL_FSEL_Field is
     (
      F=1,
      F=2)
     with Size => 1;
   for PLLCTRL_FSEL_Field use
     (F=1 => 0,
      F=2 => 1);

   --  PLL clock source
   type PLLCTRL_PLLCLKSEL_Field is
     (
      Ihrc,
      --  10MHz~25MHz
      Ehs Xtal)
     with Size => 2;
   for PLLCTRL_PLLCLKSEL_Field use
     (Ihrc => 0,
      Ehs Xtal => 1);

   --  PLL enable
   type PLLCTRL_PLLEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for PLLCTRL_PLLEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x04 PLL Control Register
   type PLLCTRL_Register is record
      --  M: 3~31
      MSEL           : PLLCTRL_MSEL_Field := 16#3#;
      --  P=PSEL*2
      PSEL           : PLLCTRL_PSEL_Field :=
                        NRF_SVD.SYSTEM.PLLCTRL_PSEL_Field_011;
      --  F=POWER(2, FSEL)
      FSEL           : PLLCTRL_FSEL_Field := NRF_SVD.SYSTEM.F=1;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  PLL clock source
      PLLCLKSEL      : PLLCTRL_PLLCLKSEL_Field := NRF_SVD.SYSTEM.Ihrc;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  PLL enable
      PLLEN          : PLLCTRL_PLLEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCTRL_Register use record
      MSEL           at 0 range 0 .. 4;
      PSEL           at 0 range 5 .. 7;
      FSEL           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PLLCLKSEL      at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PLLEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IHRC ready flag
   type CSST_IHRCRDY_Field is
     (
      Ihrc Not Ready,
      Ihrc Ready)
     with Size => 1;
   for CSST_IHRCRDY_Field use
     (Ihrc Not Ready => 0,
      Ihrc Ready => 1);

   --  ELS XTAL ready flag
   type CSST_ELSRDY_Field is
     (
      Els Xtal Not Ready,
      Els Xtal Ready)
     with Size => 1;
   for CSST_ELSRDY_Field use
     (Els Xtal Not Ready => 0,
      Els Xtal Ready => 1);

   --  EHS XTAL ready flag
   type CSST_EHSRDY_Field is
     (
      Ehs Xtal Not Ready,
      Ehs Xtal Ready)
     with Size => 1;
   for CSST_EHSRDY_Field use
     (Ehs Xtal Not Ready => 0,
      Ehs Xtal Ready => 1);

   --  PLL ready flag
   type CSST_PLLRDY_Field is
     (
      Pll UNLOCKED,
      Pll LOCKED)
     with Size => 1;
   for CSST_PLLRDY_Field use
     (Pll UNLOCKED => 0,
      Pll LOCKED => 1);

   --  Audio external high-speed clock ready flag
   type CSST_AUEHSRDY_Field is
     (
      Auehs NOT READY,
      Auehs READY)
     with Size => 1;
   for CSST_AUEHSRDY_Field use
     (Auehs NOT READY => 0,
      Auehs READY => 1);

   --  Offset:0x08 Clock Source Status Register
   type CSST_Register is record
      --  Read-only. IHRC ready flag
      IHRCRDY       : CSST_IHRCRDY_Field;
      --  unspecified
      Reserved_1_1  : HAL.Bit;
      --  Read-only. ELS XTAL ready flag
      ELSRDY        : CSST_ELSRDY_Field;
      --  unspecified
      Reserved_3_3  : HAL.Bit;
      --  Read-only. EHS XTAL ready flag
      EHSRDY        : CSST_EHSRDY_Field;
      --  unspecified
      Reserved_5_5  : HAL.Bit;
      --  Read-only. PLL ready flag
      PLLRDY        : CSST_PLLRDY_Field;
      --  unspecified
      Reserved_7_7  : HAL.Bit;
      --  Read-only. Audio external high-speed clock ready flag
      AUEHSRDY      : CSST_AUEHSRDY_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSST_Register use record
      IHRCRDY       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      ELSRDY        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      EHSRDY        at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      PLLRDY        at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      AUEHSRDY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  System clock source selection
   type CLKCFG_SYSCLKSEL_Field is
     (
      Ihrc,
      Ilrc,
      Ehs Xtal,
      Els Xtal,
      Pll Output)
     with Size => 3;
   for CLKCFG_SYSCLKSEL_Field use
     (Ihrc => 0,
      Ilrc => 1,
      Ehs Xtal => 2,
      Els Xtal => 3,
      Pll Output => 4);

   --  System clock switch status
   type CLKCFG_SYSCLKST_Field is
     (
      --  IHRC is used as system clock
      Ihrc,
      --  ILRC is used as system clock
      Ilrc,
      --  EHS XTAL is used as system clock
      Ehs Xtal,
      --  ELS XTAL is used as system clock
      Els Xtal,
      --  PLL output is used as system clock
      Pll)
     with Size => 3;
   for CLKCFG_SYSCLKST_Field use
     (Ihrc => 0,
      Ilrc => 1,
      Ehs Xtal => 2,
      Els Xtal => 3,
      Pll => 4);

   --  Offset:0x0C System Clock Configuration Register
   type CLKCFG_Register is record
      --  System clock source selection
      SYSCLKSEL     : CLKCFG_SYSCLKSEL_Field := NRF_SVD.SYSTEM.Ihrc;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Read-only. System clock switch status
      SYSCLKST      : CLKCFG_SYSCLKST_Field := NRF_SVD.SYSTEM.Ihrc;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKCFG_Register use record
      SYSCLKSEL     at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SYSCLKST      at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  AHB clock source prescaler
   type AHBCP_AHBPRE_Field is
     (
      --  FAHB=FSYSCLK/1
      AHBCP_AHBPRE_Field_0000,
      --  FAHB=FSYSCLK/2
      AHBCP_AHBPRE_Field_0001,
      --  FAHB=FSYSCLK/4
      AHBCP_AHBPRE_Field_0010,
      --  FAHB=FSYSCLK/8
      AHBCP_AHBPRE_Field_0011,
      --  FAHB=FSYSCLK/16
      AHBCP_AHBPRE_Field_0100,
      --  FAHB=FSYSCLK/32
      AHBCP_AHBPRE_Field_0101,
      --  FAHB=FSYSCLK/64
      AHBCP_AHBPRE_Field_0110,
      --  FAHB=FSYSCLK/128
      AHBCP_AHBPRE_Field_0111,
      --  FAHB=FSYSCLK/256
      AHBCP_AHBPRE_Field_1000,
      --  FAHB=FSYSCLK/512
      AHBCP_AHBPRE_Field_1001)
     with Size => 4;
   for AHBCP_AHBPRE_Field use
     (AHBCP_AHBPRE_Field_0000 => 0,
      AHBCP_AHBPRE_Field_0001 => 1,
      AHBCP_AHBPRE_Field_0010 => 2,
      AHBCP_AHBPRE_Field_0011 => 3,
      AHBCP_AHBPRE_Field_0100 => 4,
      AHBCP_AHBPRE_Field_0101 => 5,
      AHBCP_AHBPRE_Field_0110 => 6,
      AHBCP_AHBPRE_Field_0111 => 7,
      AHBCP_AHBPRE_Field_1000 => 8,
      AHBCP_AHBPRE_Field_1001 => 9);

   --  Offset:0x10 AHB Clock Prescale Register
   type AHBCP_Register is record
      --  AHB clock source prescaler
      AHBPRE        : AHBCP_AHBPRE_Field :=
                       NRF_SVD.SYSTEM.AHBCP_AHBPRE_Field_0000;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCP_Register use record
      AHBPRE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Software reset flag
   type RSTST_SWRSTF_Field is
     (
      No Sw RESET OCCURRED,
      Sw RESET OCCURERED)
     with Size => 1;
   for RSTST_SWRSTF_Field use
     (No Sw RESET OCCURRED => 0,
      Sw RESET OCCURERED => 1);

   --  WDT reset flag
   type RSTST_WDTRSTF_Field is
     (
      No Wdt RESET OCCURRED,
      Wdt RESET OCCURERED)
     with Size => 1;
   for RSTST_WDTRSTF_Field use
     (No Wdt RESET OCCURRED => 0,
      Wdt RESET OCCURERED => 1);

   --  LVD reset flag
   type RSTST_LVDRSTF_Field is
     (
      No Lvd RESET OCCURRED,
      Lvd RESET OCCURERED)
     with Size => 1;
   for RSTST_LVDRSTF_Field use
     (No Lvd RESET OCCURRED => 0,
      Lvd RESET OCCURERED => 1);

   --  External reset flag
   type RSTST_EXTRSTF_Field is
     (
      No EXTERNAL RESET OCCURRED,
      External RESET OCCURERED)
     with Size => 1;
   for RSTST_EXTRSTF_Field use
     (No EXTERNAL RESET OCCURRED => 0,
      External RESET OCCURERED => 1);

   --  POR reset flag
   type RSTST_PORRSTF_Field is
     (
      No Por RESET OCCURRED,
      Por RESET OCCURERED)
     with Size => 1;
   for RSTST_PORRSTF_Field use
     (No Por RESET OCCURRED => 0,
      Por RESET OCCURERED => 1);

   --  Offset:0x14 System Reset Status Register
   type RSTST_Register is record
      --  Software reset flag
      SWRSTF        : RSTST_SWRSTF_Field :=
                       NRF_SVD.SYSTEM.No Sw RESET OCCURRED;
      --  WDT reset flag
      WDTRSTF       : RSTST_WDTRSTF_Field :=
                       NRF_SVD.SYSTEM.No Wdt RESET OCCURRED;
      --  LVD reset flag
      LVDRSTF       : RSTST_LVDRSTF_Field :=
                       NRF_SVD.SYSTEM.No Lvd RESET OCCURRED;
      --  External reset flag
      EXTRSTF       : RSTST_EXTRSTF_Field :=
                       NRF_SVD.SYSTEM.No EXTERNAL RESET OCCURRED;
      --  POR reset flag
      PORRSTF       : RSTST_PORRSTF_Field :=
                       NRF_SVD.SYSTEM.Por RESET OCCURERED;
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
      --  LVD reset threshold is 2.00V
      LVDCTRL_LVDRSTLVL_Field_2.00V,
      --  LVD reset threshold is 2.40V
      LVDCTRL_LVDRSTLVL_Field_2.40V,
      --  LVD reset threshold is 2.70V
      LVDCTRL_LVDRSTLVL_Field_2.70V)
     with Size => 2;
   for LVDCTRL_LVDRSTLVL_Field use
     (LVDCTRL_LVDRSTLVL_Field_2.00V => 0,
      LVDCTRL_LVDRSTLVL_Field_2.40V => 1,
      LVDCTRL_LVDRSTLVL_Field_2.70V => 2);

   --  LVD interrupt level
   type LVDCTRL_LVDINTLVL_Field is
     (
      --  LVD interrupt threshold is 2.00V
      LVDCTRL_LVDINTLVL_Field_2.00V,
      --  LVD interrupt threshold is 2.40V
      LVDCTRL_LVDINTLVL_Field_2.40V,
      --  LVD interrupt threshold is 2.70V
      LVDCTRL_LVDINTLVL_Field_2.70V,
      --  LVD interrupt threshold is 3.00V
      LVDCTRL_LVDINTLVL_Field_3.00V)
     with Size => 2;
   for LVDCTRL_LVDINTLVL_Field use
     (LVDCTRL_LVDINTLVL_Field_2.00V => 0,
      LVDCTRL_LVDINTLVL_Field_2.40V => 1,
      LVDCTRL_LVDINTLVL_Field_2.70V => 2,
      LVDCTRL_LVDINTLVL_Field_3.00V => 3);

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
                        NRF_SVD.SYSTEM.LVDCTRL_LVDRSTLVL_Field_2.00V;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  LVD interrupt level
      LVDINTLVL      : LVDCTRL_LVDINTLVL_Field :=
                        NRF_SVD.SYSTEM.LVDCTRL_LVDINTLVL_Field_2.00V;
      --  unspecified
      Reserved_6_13  : HAL.UInt8 := 16#0#;
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
      LVDRSTLVL      at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      LVDINTLVL      at 0 range 4 .. 5;
      Reserved_6_13  at 0 range 6 .. 13;
      LVDRSTEN       at 0 range 14 .. 14;
      LVDEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External reset pin disable
   type EXRSTCTRL_RESETDIS_Field is
     (
      --  P0.15 acts as External Reset pin
      Enable,
      --  P0.15 acts as GPIO pin
      Disable)
     with Size => 1;
   for EXRSTCTRL_RESETDIS_Field use
     (Enable => 0,
      Disable => 1);

   --  Offset:0x1C External Reset Pin Control Register
   type EXRSTCTRL_Register is record
      --  External reset pin disable
      RESETDIS      : EXRSTCTRL_RESETDIS_Field := NRF_SVD.SYSTEM.Enable;
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
      --  Enable SWD pin
      Enable,
      --  Disable SWD pin
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

   --  HW anti-EFT ability
   type ANTIEFT_AEFT_Field is
     (
      --  No
      No,
      --  Low
      Low,
      --  Medium
      Medium,
      --  Strong
      Strong)
     with Size => 3;
   for ANTIEFT_AEFT_Field use
     (No => 0,
      Low => 2,
      Medium => 3,
      Strong => 4);

   --  Offset:0x30 Anti-EFT Ability Control Register
   type ANTIEFT_Register is record
      --  HW anti-EFT ability
      AEFT          : ANTIEFT_AEFT_Field := NRF_SVD.SYSTEM.No;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANTIEFT_Register use record
      AEFT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable AHB clock for GPIO
   type AHBCLKEN_GPIOCLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_GPIOCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for CT16B0
   type AHBCLKEN_CT16B0CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_CT16B0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for CT16B1
   type AHBCLKEN_CT16B1CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_CT16B1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for CT32B0
   type AHBCLKEN_CT32B0CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_CT32B0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for CT32B1
   type AHBCLKEN_CT32B1CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_CT32B1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for comparator
   type AHBCLKEN_CMPCLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_CMPCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for SSP0
   type AHBCLKEN_SSP0CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_SSP0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for SSP1
   type AHBCLKEN_SSP1CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_SSP1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for UART0
   type AHBCLKEN_UART0CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_UART0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for UART1
   type AHBCLKEN_UART1CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_UART1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for I2C1
   type AHBCLKEN_I2C1CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_I2C1CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for I2C0
   type AHBCLKEN_I2C0CLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_I2C0CLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for I2S
   type AHBCLKEN_I2SCLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_I2SCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for RTC
   type AHBCLKEN_RTCCLKEN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for AHBCLKEN_RTCCLKEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable AHB clock for WDT
   type AHBCLKEN_WDTCLKEN_Field is
     (
      Disable,
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
      --  HCLK clock output
      AHBCLKEN_CLKOUTSEL_Field_001,
      --  PLL clock output
      AHBCLKEN_CLKOUTSEL_Field_010,
      --  ILRC clock output
      AHBCLKEN_CLKOUTSEL_Field_011,
      --  IHRC clock output
      AHBCLKEN_CLKOUTSEL_Field_100,
      --  ELS clock output
      AHBCLKEN_CLKOUTSEL_Field_101,
      --  EHS XTAL
      AHBCLKEN_CLKOUTSEL_Field_110,
      --  AUEHS XTAL
      AHBCLKEN_CLKOUTSEL_Field_111)
     with Size => 3;
   for AHBCLKEN_CLKOUTSEL_Field use
     (AHBCLKEN_CLKOUTSEL_Field_000 => 0,
      AHBCLKEN_CLKOUTSEL_Field_001 => 1,
      AHBCLKEN_CLKOUTSEL_Field_010 => 2,
      AHBCLKEN_CLKOUTSEL_Field_011 => 3,
      AHBCLKEN_CLKOUTSEL_Field_100 => 4,
      AHBCLKEN_CLKOUTSEL_Field_101 => 5,
      AHBCLKEN_CLKOUTSEL_Field_110 => 6,
      AHBCLKEN_CLKOUTSEL_Field_111 => 7);

   --  Offset:0x00 AHB Clock Enable Register
   type AHBCLKEN_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Enable AHB clock for GPIO
      GPIOCLKEN      : AHBCLKEN_GPIOCLKEN_Field := NRF_SVD.SYSTEM.Enable;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Enable AHB clock for CT16B0
      CT16B0CLKEN    : AHBCLKEN_CT16B0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for CT16B1
      CT16B1CLKEN    : AHBCLKEN_CT16B1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for CT32B0
      CT32B0CLKEN    : AHBCLKEN_CT32B0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for CT32B1
      CT32B1CLKEN    : AHBCLKEN_CT32B1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Enable AHB clock for comparator
      CMPCLKEN       : AHBCLKEN_CMPCLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for SSP0
      SSP0CLKEN      : AHBCLKEN_SSP0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for SSP1
      SSP1CLKEN      : AHBCLKEN_SSP1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Enable AHB clock for UART0
      UART0CLKEN     : AHBCLKEN_UART0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for UART1
      UART1CLKEN     : AHBCLKEN_UART1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Enable AHB clock for I2C1
      I2C1CLKEN      : AHBCLKEN_I2C1CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for I2C0
      I2C0CLKEN      : AHBCLKEN_I2C0CLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for I2S
      I2SCLKEN       : AHBCLKEN_I2SCLKEN_Field := NRF_SVD.SYSTEM.Disable;
      --  Enable AHB clock for RTC
      RTCCLKEN       : AHBCLKEN_RTCCLKEN_Field := NRF_SVD.SYSTEM.Disable;
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
      Reserved_0_2   at 0 range 0 .. 2;
      GPIOCLKEN      at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      CT16B0CLKEN    at 0 range 6 .. 6;
      CT16B1CLKEN    at 0 range 7 .. 7;
      CT32B0CLKEN    at 0 range 8 .. 8;
      CT32B1CLKEN    at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CMPCLKEN       at 0 range 11 .. 11;
      SSP0CLKEN      at 0 range 12 .. 12;
      SSP1CLKEN      at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      UART0CLKEN     at 0 range 16 .. 16;
      UART1CLKEN     at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      I2C1CLKEN      at 0 range 20 .. 20;
      I2C0CLKEN      at 0 range 21 .. 21;
      I2SCLKEN       at 0 range 22 .. 22;
      RTCCLKEN       at 0 range 23 .. 23;
      WDTCLKEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CLKOUTSEL      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CT16B0 APB clock source prescaler
   type APBCP0_CT16B0PRE_Field is
     (
      --  HCLK/1
      APBCP0_CT16B0PRE_Field_000,
      --  HCLK/2
      APBCP0_CT16B0PRE_Field_001,
      --  HCLK/4
      APBCP0_CT16B0PRE_Field_010,
      --  HCLK/8
      APBCP0_CT16B0PRE_Field_011,
      --  HCLK/16
      APBCP0_CT16B0PRE_Field_100)
     with Size => 3;
   for APBCP0_CT16B0PRE_Field use
     (APBCP0_CT16B0PRE_Field_000 => 0,
      APBCP0_CT16B0PRE_Field_001 => 1,
      APBCP0_CT16B0PRE_Field_010 => 2,
      APBCP0_CT16B0PRE_Field_011 => 3,
      APBCP0_CT16B0PRE_Field_100 => 4);

   --  CT16B1 APB clock source prescaler
   type APBCP0_CT16B1PRE_Field is
     (
      --  HCLK/1
      APBCP0_CT16B1PRE_Field_000,
      --  HCLK/2
      APBCP0_CT16B1PRE_Field_001,
      --  HCLK/4
      APBCP0_CT16B1PRE_Field_010,
      --  HCLK/8
      APBCP0_CT16B1PRE_Field_011,
      --  HCLK/16
      APBCP0_CT16B1PRE_Field_100)
     with Size => 3;
   for APBCP0_CT16B1PRE_Field use
     (APBCP0_CT16B1PRE_Field_000 => 0,
      APBCP0_CT16B1PRE_Field_001 => 1,
      APBCP0_CT16B1PRE_Field_010 => 2,
      APBCP0_CT16B1PRE_Field_011 => 3,
      APBCP0_CT16B1PRE_Field_100 => 4);

   --  CT32B0 APB clock source prescaler
   type APBCP0_CT32B0PRE_Field is
     (
      --  HCLK/1
      APBCP0_CT32B0PRE_Field_000,
      --  HCLK/2
      APBCP0_CT32B0PRE_Field_001,
      --  HCLK/4
      APBCP0_CT32B0PRE_Field_010,
      --  HCLK/8
      APBCP0_CT32B0PRE_Field_011,
      --  HCLK/16
      APBCP0_CT32B0PRE_Field_100)
     with Size => 3;
   for APBCP0_CT32B0PRE_Field use
     (APBCP0_CT32B0PRE_Field_000 => 0,
      APBCP0_CT32B0PRE_Field_001 => 1,
      APBCP0_CT32B0PRE_Field_010 => 2,
      APBCP0_CT32B0PRE_Field_011 => 3,
      APBCP0_CT32B0PRE_Field_100 => 4);

   --  CT32B1 APB clock source prescaler
   type APBCP0_CT32B1PRE_Field is
     (
      --  HCLK/1
      APBCP0_CT32B1PRE_Field_000,
      --  HCLK/2
      APBCP0_CT32B1PRE_Field_001,
      --  HCLK/4
      APBCP0_CT32B1PRE_Field_010,
      --  HCLK/8
      APBCP0_CT32B1PRE_Field_011,
      --  HCLK/16
      APBCP0_CT32B1PRE_Field_100)
     with Size => 3;
   for APBCP0_CT32B1PRE_Field use
     (APBCP0_CT32B1PRE_Field_000 => 0,
      APBCP0_CT32B1PRE_Field_001 => 1,
      APBCP0_CT32B1PRE_Field_010 => 2,
      APBCP0_CT32B1PRE_Field_011 => 3,
      APBCP0_CT32B1PRE_Field_100 => 4);

   --  Comparator clock source prescaler
   type APBCP0_CMPPRE_Field is
     (
      --  HCLK/1
      APBCP0_CMPPRE_Field_000,
      --  HCLK/2
      APBCP0_CMPPRE_Field_001,
      --  HCLK/4
      APBCP0_CMPPRE_Field_010,
      --  HCLK/8
      APBCP0_CMPPRE_Field_011,
      --  HCLK/16
      APBCP0_CMPPRE_Field_100)
     with Size => 3;
   for APBCP0_CMPPRE_Field use
     (APBCP0_CMPPRE_Field_000 => 0,
      APBCP0_CMPPRE_Field_001 => 1,
      APBCP0_CMPPRE_Field_010 => 2,
      APBCP0_CMPPRE_Field_011 => 3,
      APBCP0_CMPPRE_Field_100 => 4);

   --  SSP0 APB clock source prescaler
   type APBCP0_SSP0PRE_Field is
     (
      --  HCLK/1
      APBCP0_SSP0PRE_Field_000,
      --  HCLK/2
      APBCP0_SSP0PRE_Field_001,
      --  HCLK/4
      APBCP0_SSP0PRE_Field_010,
      --  HCLK/8
      APBCP0_SSP0PRE_Field_011,
      --  HCLK/16
      APBCP0_SSP0PRE_Field_100)
     with Size => 3;
   for APBCP0_SSP0PRE_Field use
     (APBCP0_SSP0PRE_Field_000 => 0,
      APBCP0_SSP0PRE_Field_001 => 1,
      APBCP0_SSP0PRE_Field_010 => 2,
      APBCP0_SSP0PRE_Field_011 => 3,
      APBCP0_SSP0PRE_Field_100 => 4);

   --  SSP1 APB clock source prescaler
   type APBCP0_SSP1PRE_Field is
     (
      --  HCLK/1
      APBCP0_SSP1PRE_Field_000,
      --  HCLK/2
      APBCP0_SSP1PRE_Field_001,
      --  HCLK/4
      APBCP0_SSP1PRE_Field_010,
      --  HCLK/8
      APBCP0_SSP1PRE_Field_011,
      --  HCLK/16
      APBCP0_SSP1PRE_Field_100)
     with Size => 3;
   for APBCP0_SSP1PRE_Field use
     (APBCP0_SSP1PRE_Field_000 => 0,
      APBCP0_SSP1PRE_Field_001 => 1,
      APBCP0_SSP1PRE_Field_010 => 2,
      APBCP0_SSP1PRE_Field_011 => 3,
      APBCP0_SSP1PRE_Field_100 => 4);

   --  Audio external high clock source prescaler
   type APBCP0_ AUEHSPRE_Field is
     (
      --  HCLK/1
      APBCP0_ AUEHSPRE_Field_000,
      --  HCLK/2
      APBCP0_ AUEHSPRE_Field_001,
      --  HCLK/4
      APBCP0_ AUEHSPRE_Field_010,
      --  HCLK/8
      APBCP0_ AUEHSPRE_Field_011,
      --  HCLK/16
      APBCP0_ AUEHSPRE_Field_100)
     with Size => 3;
   for APBCP0_ AUEHSPRE_Field use
     (APBCP0_ AUEHSPRE_Field_000 => 0,
      APBCP0_ AUEHSPRE_Field_001 => 1,
      APBCP0_ AUEHSPRE_Field_010 => 2,
      APBCP0_ AUEHSPRE_Field_011 => 3,
      APBCP0_ AUEHSPRE_Field_100 => 4);

   --  Offset:0x04 APB Clock Prescale Register 0
   type APBCP0_Register is record
      --  CT16B0 APB clock source prescaler
      CT16B0PRE                 : APBCP0_CT16B0PRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_CT16B0PRE_Field_000;
      --  unspecified
      Reserved_3_3              : HAL.Bit := 16#0#;
      --  CT16B1 APB clock source prescaler
      CT16B1PRE                 : APBCP0_CT16B1PRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_CT16B1PRE_Field_000;
      --  unspecified
      Reserved_7_7              : HAL.Bit := 16#0#;
      --  CT32B0 APB clock source prescaler
      CT32B0PRE                 : APBCP0_CT32B0PRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_CT32B0PRE_Field_000;
      --  unspecified
      Reserved_11_11            : HAL.Bit := 16#0#;
      --  CT32B1 APB clock source prescaler
      CT32B1PRE                 : APBCP0_CT32B1PRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_CT32B1PRE_Field_000;
      --  unspecified
      Reserved_15_15            : HAL.Bit := 16#0#;
      --  Comparator clock source prescaler
      CMPPRE                    : APBCP0_CMPPRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_CMPPRE_Field_000;
      --  unspecified
      Reserved_19_19            : HAL.Bit := 16#0#;
      --  SSP0 APB clock source prescaler
      SSP0PRE                   : APBCP0_SSP0PRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_SSP0PRE_Field_000;
      --  unspecified
      Reserved_23_23            : HAL.Bit := 16#0#;
      --  SSP1 APB clock source prescaler
      SSP1PRE                   : APBCP0_SSP1PRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_SSP1PRE_Field_000;
      --  unspecified
      Reserved_27_27            : HAL.Bit := 16#0#;
      --  Audio external high clock source prescaler
      APBCP0_Register_ AUEHSPRE : APBCP0_ AUEHSPRE_Field :=
                                   NRF_SVD.SYSTEM.APBCP0_ AUEHSPRE_Field_000;
      --  unspecified
      Reserved_31_31            : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APBCP0_Register use record
      CT16B0PRE                 at 0 range 0 .. 2;
      Reserved_3_3              at 0 range 3 .. 3;
      CT16B1PRE                 at 0 range 4 .. 6;
      Reserved_7_7              at 0 range 7 .. 7;
      CT32B0PRE                 at 0 range 8 .. 10;
      Reserved_11_11            at 0 range 11 .. 11;
      CT32B1PRE                 at 0 range 12 .. 14;
      Reserved_15_15            at 0 range 15 .. 15;
      CMPPRE                    at 0 range 16 .. 18;
      Reserved_19_19            at 0 range 19 .. 19;
      SSP0PRE                   at 0 range 20 .. 22;
      Reserved_23_23            at 0 range 23 .. 23;
      SSP1PRE                   at 0 range 24 .. 26;
      Reserved_27_27            at 0 range 27 .. 27;
      APBCP0_Register_ AUEHSPRE at 0 range 28 .. 30;
      Reserved_31_31            at 0 range 31 .. 31;
   end record;

   --  UART0 APB clock source prescaler
   type APBCP1_UART0PRE_Field is
     (
      --  HCLK/1
      APBCP1_UART0PRE_Field_000,
      --  HCLK/2
      APBCP1_UART0PRE_Field_001,
      --  HCLK/4
      APBCP1_UART0PRE_Field_010,
      --  HCLK/8
      APBCP1_UART0PRE_Field_011,
      --  HCLK/16
      APBCP1_UART0PRE_Field_100)
     with Size => 3;
   for APBCP1_UART0PRE_Field use
     (APBCP1_UART0PRE_Field_000 => 0,
      APBCP1_UART0PRE_Field_001 => 1,
      APBCP1_UART0PRE_Field_010 => 2,
      APBCP1_UART0PRE_Field_011 => 3,
      APBCP1_UART0PRE_Field_100 => 4);

   --  UART1 APB clock source prescaler
   type APBCP1_UART1PRE_Field is
     (
      --  HCLK/1
      APBCP1_UART1PRE_Field_000,
      --  HCLK/2
      APBCP1_UART1PRE_Field_001,
      --  HCLK/4
      APBCP1_UART1PRE_Field_010,
      --  HCLK/8
      APBCP1_UART1PRE_Field_011,
      --  HCLK/16
      APBCP1_UART1PRE_Field_100)
     with Size => 3;
   for APBCP1_UART1PRE_Field use
     (APBCP1_UART1PRE_Field_000 => 0,
      APBCP1_UART1PRE_Field_001 => 1,
      APBCP1_UART1PRE_Field_010 => 2,
      APBCP1_UART1PRE_Field_011 => 3,
      APBCP1_UART1PRE_Field_100 => 4);

   --  I2C0 APB clock source prescaler
   type APBCP1_I2C0PRE_Field is
     (
      --  HCLK/1
      APBCP1_I2C0PRE_Field_000,
      --  HCLK/2
      APBCP1_I2C0PRE_Field_001,
      --  HCLK/4
      APBCP1_I2C0PRE_Field_010,
      --  HCLK/8
      APBCP1_I2C0PRE_Field_011,
      --  HCLK/16
      APBCP1_I2C0PRE_Field_100)
     with Size => 3;
   for APBCP1_I2C0PRE_Field use
     (APBCP1_I2C0PRE_Field_000 => 0,
      APBCP1_I2C0PRE_Field_001 => 1,
      APBCP1_I2C0PRE_Field_010 => 2,
      APBCP1_I2C0PRE_Field_011 => 3,
      APBCP1_I2C0PRE_Field_100 => 4);

   --  I2S APB clock source prescaler
   type APBCP1_I2SPRE_Field is
     (
      --  HCLK/1
      APBCP1_I2SPRE_Field_000,
      --  HCLK/2
      APBCP1_I2SPRE_Field_001,
      --  HCLK/4
      APBCP1_I2SPRE_Field_010,
      --  HCLK/8
      APBCP1_I2SPRE_Field_011,
      --  HCLK/16
      APBCP1_I2SPRE_Field_100)
     with Size => 3;
   for APBCP1_I2SPRE_Field use
     (APBCP1_I2SPRE_Field_000 => 0,
      APBCP1_I2SPRE_Field_001 => 1,
      APBCP1_I2SPRE_Field_010 => 2,
      APBCP1_I2SPRE_Field_011 => 3,
      APBCP1_I2SPRE_Field_100 => 4);

   --  SysTick APB clock source prescaler
   type APBCP1_SYSTICKPRE_Field is
     (
      --  HCLK/1
      APBCP1_SYSTICKPRE_Field_00,
      --  HCLK/2
      APBCP1_SYSTICKPRE_Field_01,
      --  HCLK/4
      APBCP1_SYSTICKPRE_Field_10,
      --  HCLK/8
      APBCP1_SYSTICKPRE_Field_11)
     with Size => 2;
   for APBCP1_SYSTICKPRE_Field use
     (APBCP1_SYSTICKPRE_Field_00 => 0,
      APBCP1_SYSTICKPRE_Field_01 => 1,
      APBCP1_SYSTICKPRE_Field_10 => 2,
      APBCP1_SYSTICKPRE_Field_11 => 3);

   --  WDT APB clock source prescaler
   type APBCP1_WDTPRE_Field is
     (
      --  HCLK/1
      APBCP1_WDTPRE_Field_000,
      --  HCLK/2
      APBCP1_WDTPRE_Field_001,
      --  HCLK/4
      APBCP1_WDTPRE_Field_010,
      --  HCLK/8
      APBCP1_WDTPRE_Field_011,
      --  HCLK/16
      APBCP1_WDTPRE_Field_100,
      --  HCLK/32
      APBCP1_WDTPRE_Field_101)
     with Size => 3;
   for APBCP1_WDTPRE_Field use
     (APBCP1_WDTPRE_Field_000 => 0,
      APBCP1_WDTPRE_Field_001 => 1,
      APBCP1_WDTPRE_Field_010 => 2,
      APBCP1_WDTPRE_Field_011 => 3,
      APBCP1_WDTPRE_Field_100 => 4,
      APBCP1_WDTPRE_Field_101 => 5);

   --  I2C1 APB clock source prescaler
   type APBCP1_I2C1PRE_Field is
     (
      --  HCLK/1
      APBCP1_I2C1PRE_Field_000,
      --  HCLK/2
      APBCP1_I2C1PRE_Field_001,
      --  HCLK/4
      APBCP1_I2C1PRE_Field_010,
      --  HCLK/8
      APBCP1_I2C1PRE_Field_011,
      --  HCLK/16
      APBCP1_I2C1PRE_Field_100)
     with Size => 3;
   for APBCP1_I2C1PRE_Field use
     (APBCP1_I2C1PRE_Field_000 => 0,
      APBCP1_I2C1PRE_Field_001 => 1,
      APBCP1_I2C1PRE_Field_010 => 2,
      APBCP1_I2C1PRE_Field_011 => 3,
      APBCP1_I2C1PRE_Field_100 => 4);

   --  CLKOUT APB clock source prescaler
   type APBCP1_CLKOUTPRE_Field is
     (
      --  FCLKOUT/1
      APBCP1_CLKOUTPRE_Field_0000,
      --  FCLKOUT/2
      APBCP1_CLKOUTPRE_Field_0001,
      --  FCLKOUT/4
      APBCP1_CLKOUTPRE_Field_0010,
      --  FCLKOUT/8
      APBCP1_CLKOUTPRE_Field_0011,
      --  FCLKOUT/16
      APBCP1_CLKOUTPRE_Field_0100,
      --  FCLKOUT/32
      APBCP1_CLKOUTPRE_Field_0101,
      --  FCLKOUT/64
      APBCP1_CLKOUTPRE_Field_0110,
      --  FCLKOUT/128
      APBCP1_CLKOUTPRE_Field_0111,
      --  FCLKOUT/256
      APBCP1_CLKOUTPRE_Field_1000,
      --  FCLKOUT/512
      APBCP1_CLKOUTPRE_Field_1001)
     with Size => 4;
   for APBCP1_CLKOUTPRE_Field use
     (APBCP1_CLKOUTPRE_Field_0000 => 0,
      APBCP1_CLKOUTPRE_Field_0001 => 1,
      APBCP1_CLKOUTPRE_Field_0010 => 2,
      APBCP1_CLKOUTPRE_Field_0011 => 3,
      APBCP1_CLKOUTPRE_Field_0100 => 4,
      APBCP1_CLKOUTPRE_Field_0101 => 5,
      APBCP1_CLKOUTPRE_Field_0110 => 6,
      APBCP1_CLKOUTPRE_Field_0111 => 7,
      APBCP1_CLKOUTPRE_Field_1000 => 8,
      APBCP1_CLKOUTPRE_Field_1001 => 9);

   --  Offset:0x08 APB Clock Prescale Register 1
   type APBCP1_Register is record
      --  UART0 APB clock source prescaler
      UART0PRE       : APBCP1_UART0PRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_UART0PRE_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  UART1 APB clock source prescaler
      UART1PRE       : APBCP1_UART1PRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_UART1PRE_Field_000;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  I2C0 APB clock source prescaler
      I2C0PRE        : APBCP1_I2C0PRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_I2C0PRE_Field_000;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  I2S APB clock source prescaler
      I2SPRE         : APBCP1_I2SPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_I2SPRE_Field_000;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  SysTick APB clock source prescaler
      SYSTICKPRE     : APBCP1_SYSTICKPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_SYSTICKPRE_Field_00;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  WDT APB clock source prescaler
      WDTPRE         : APBCP1_WDTPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_WDTPRE_Field_000;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  I2C1 APB clock source prescaler
      I2C1PRE        : APBCP1_I2C1PRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_I2C1PRE_Field_000;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  CLKOUT APB clock source prescaler
      CLKOUTPRE      : APBCP1_CLKOUTPRE_Field :=
                        NRF_SVD.SYSTEM.APBCP1_CLKOUTPRE_Field_0000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APBCP1_Register use record
      UART0PRE       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      UART1PRE       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      I2C0PRE        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      I2SPRE         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYSTICKPRE     at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      WDTPRE         at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      I2C1PRE        at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CLKOUTPRE      at 0 range 28 .. 31;
   end record;

   --  GPIO0 Reset
   type PRST_GPIO0RST_Field is
     (
      No EFFECT,
      Reset Gpio0)
     with Size => 1;
   for PRST_GPIO0RST_Field use
     (No EFFECT => 0,
      Reset Gpio0 => 1);

   --  GPIO1 Reset
   type PRST_GPIO1RST_Field is
     (
      No EFFECT,
      Reset Gpio1)
     with Size => 1;
   for PRST_GPIO1RST_Field use
     (No EFFECT => 0,
      Reset Gpio1 => 1);

   --  GPIO2 Reset
   type PRST_GPIO2RST_Field is
     (
      No EFFECT,
      Reset Gpio2)
     with Size => 1;
   for PRST_GPIO2RST_Field use
     (No EFFECT => 0,
      Reset Gpio2 => 1);

   --  GPIO3 Reset
   type PRST_GPIO3RST_Field is
     (
      No EFFECT,
      Reset Gpio3)
     with Size => 1;
   for PRST_GPIO3RST_Field use
     (No EFFECT => 0,
      Reset Gpio3 => 1);

   --  CT16B0 Reset
   type PRST_CT16B0RST_Field is
     (
      No EFFECT,
      Reset Ct16B0)
     with Size => 1;
   for PRST_CT16B0RST_Field use
     (No EFFECT => 0,
      Reset Ct16B0 => 1);

   --  CT16B1 Reset
   type PRST_CT16B1RST_Field is
     (
      No EFFECT,
      Reset Ct16B1)
     with Size => 1;
   for PRST_CT16B1RST_Field use
     (No EFFECT => 0,
      Reset Ct16B1 => 1);

   --  CT32B0 Reset
   type PRST_CT32B0RST_Field is
     (
      No EFFECT,
      Reset Ct32B0)
     with Size => 1;
   for PRST_CT32B0RST_Field use
     (No EFFECT => 0,
      Reset Ct32B0 => 1);

   --  CT32B1 Reset
   type PRST_CT32B1RST_Field is
     (
      No EFFECT,
      Reset Ct32B1)
     with Size => 1;
   for PRST_CT32B1RST_Field use
     (No EFFECT => 0,
      Reset Ct32B1 => 1);

   --  Comparator Reset
   type PRST_CMPRST_Field is
     (
      No EFFECT,
      Reset Adc)
     with Size => 1;
   for PRST_CMPRST_Field use
     (No EFFECT => 0,
      Reset Adc => 1);

   --  SSP0 Reset
   type PRST_SSP0RST_Field is
     (
      No EFFECT,
      Reset Ssp0)
     with Size => 1;
   for PRST_SSP0RST_Field use
     (No EFFECT => 0,
      Reset Ssp0 => 1);

   --  SSP1 Reset
   type PRST_SSP1RST_Field is
     (
      No EFFECT,
      Reset Ssp1)
     with Size => 1;
   for PRST_SSP1RST_Field use
     (No EFFECT => 0,
      Reset Ssp1 => 1);

   --  UART0 Reset
   type PRST_UART0RST_Field is
     (
      No EFFECT,
      Reset Uart0)
     with Size => 1;
   for PRST_UART0RST_Field use
     (No EFFECT => 0,
      Reset Uart0 => 1);

   --  UART1 Reset
   type PRST_UART1RST_Field is
     (
      No EFFECT,
      Reset Uart1)
     with Size => 1;
   for PRST_UART1RST_Field use
     (No EFFECT => 0,
      Reset Uart1 => 1);

   --  I2C1 Reset
   type PRST_I2C1RST_Field is
     (
      No EFFECT,
      Reset I2C1)
     with Size => 1;
   for PRST_I2C1RST_Field use
     (No EFFECT => 0,
      Reset I2C1 => 1);

   --  I2C0 Reset
   type PRST_I2C0RST_Field is
     (
      No EFFECT,
      Reset I2C0)
     with Size => 1;
   for PRST_I2C0RST_Field use
     (No EFFECT => 0,
      Reset I2C0 => 1);

   --  I2S Reset
   type PRST_I2SRST_Field is
     (
      No EFFECT,
      Reset I2S)
     with Size => 1;
   for PRST_I2SRST_Field use
     (No EFFECT => 0,
      Reset I2S => 1);

   --  RTC Reset
   type PRST_RTCRST_Field is
     (
      No EFFECT,
      Reset Rtc)
     with Size => 1;
   for PRST_RTCRST_Field use
     (No EFFECT => 0,
      Reset Rtc => 1);

   --  WDT Reset
   type PRST_WDTRST_Field is
     (
      No EFFECT,
      Reset Wdt)
     with Size => 1;
   for PRST_WDTRST_Field use
     (No EFFECT => 0,
      Reset Wdt => 1);

   --  Codec DAC reset
   type PRST_CODECDARST_Field is
     (
      No EFFECT,
      Reset Wdt)
     with Size => 1;
   for PRST_CODECDARST_Field use
     (No EFFECT => 0,
      Reset Wdt => 1);

   --  Codec ADC reset
   type PRST_CODECADRST_Field is
     (
      No EFFECT,
      Reset Wdt)
     with Size => 1;
   for PRST_CODECADRST_Field use
     (No EFFECT => 0,
      Reset Wdt => 1);

   --  Offset:0x0C Peripheral Reset Register
   type PRST_Register is record
      --  GPIO0 Reset
      GPIO0RST       : PRST_GPIO0RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  GPIO1 Reset
      GPIO1RST       : PRST_GPIO1RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  GPIO2 Reset
      GPIO2RST       : PRST_GPIO2RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  GPIO3 Reset
      GPIO3RST       : PRST_GPIO3RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  CT16B0 Reset
      CT16B0RST      : PRST_CT16B0RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  CT16B1 Reset
      CT16B1RST      : PRST_CT16B1RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  CT32B0 Reset
      CT32B0RST      : PRST_CT32B0RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  CT32B1 Reset
      CT32B1RST      : PRST_CT32B1RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Comparator Reset
      CMPRST         : PRST_CMPRST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  SSP0 Reset
      SSP0RST        : PRST_SSP0RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  SSP1 Reset
      SSP1RST        : PRST_SSP1RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  UART0 Reset
      UART0RST       : PRST_UART0RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  UART1 Reset
      UART1RST       : PRST_UART1RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  I2C1 Reset
      I2C1RST        : PRST_I2C1RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  I2C0 Reset
      I2C0RST        : PRST_I2C0RST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  I2S Reset
      I2SRST         : PRST_I2SRST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  RTC Reset
      RTCRST         : PRST_RTCRST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  WDT Reset
      WDTRST         : PRST_WDTRST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  Codec DAC reset
      CODECDARST     : PRST_CODECDARST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  Codec ADC reset
      CODECADRST     : PRST_CODECADRST_Field := NRF_SVD.SYSTEM.No EFFECT;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRST_Register use record
      GPIO0RST       at 0 range 0 .. 0;
      GPIO1RST       at 0 range 1 .. 1;
      GPIO2RST       at 0 range 2 .. 2;
      GPIO3RST       at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      CT16B0RST      at 0 range 6 .. 6;
      CT16B1RST      at 0 range 7 .. 7;
      CT32B0RST      at 0 range 8 .. 8;
      CT32B1RST      at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CMPRST         at 0 range 11 .. 11;
      SSP0RST        at 0 range 12 .. 12;
      SSP1RST        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      UART0RST       at 0 range 16 .. 16;
      UART1RST       at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      I2C1RST        at 0 range 20 .. 20;
      I2C0RST        at 0 range 21 .. 21;
      I2SRST         at 0 range 22 .. 22;
      RTCRST         at 0 range 23 .. 23;
      WDTRST         at 0 range 24 .. 24;
      CODECDARST     at 0 range 25 .. 25;
      CODECADRST     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Registers
   type SN_SYS0_Peripheral is record
      --  Offset:0x00 Analog Block Control Register
      ANBCTRL   : aliased ANBCTRL_Register;
      --  Offset:0x04 PLL Control Register
      PLLCTRL   : aliased PLLCTRL_Register;
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
      --  Offset:0x30 Anti-EFT Ability Control Register
      ANTIEFT   : aliased ANTIEFT_Register;
   end record
     with Volatile;

   for SN_SYS0_Peripheral use record
      ANBCTRL   at 16#0# range 0 .. 31;
      PLLCTRL   at 16#4# range 0 .. 31;
      CSST      at 16#8# range 0 .. 31;
      CLKCFG    at 16#C# range 0 .. 31;
      AHBCP     at 16#10# range 0 .. 31;
      RSTST     at 16#14# range 0 .. 31;
      LVDCTRL   at 16#18# range 0 .. 31;
      EXRSTCTRL at 16#1C# range 0 .. 31;
      SWDCTRL   at 16#20# range 0 .. 31;
      ANTIEFT   at 16#30# range 0 .. 31;
   end record;

   --  System Control Registers
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
      --  Offset:0x0C Peripheral Reset Register
      PRST     : aliased PRST_Register;
   end record
     with Volatile;

   for SN_SYS1_Peripheral use record
      AHBCLKEN at 16#0# range 0 .. 31;
      APBCP0   at 16#4# range 0 .. 31;
      APBCP1   at 16#8# range 0 .. 31;
      PRST     at 16#C# range 0 .. 31;
   end record;

   --  System Control Registers
   SN_SYS1_Periph : aliased SN_SYS1_Peripheral
     with Import, Address => System'To_Address (16#4005E000#);

end NRF_SVD.SYSTEM;
