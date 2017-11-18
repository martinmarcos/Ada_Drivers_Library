--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CGU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_MSEL_Field is HAL.UInt7;

   --  Control Register
   type CTL_Register is record
      --  Divide Frequency
      DF             : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Multiplier Select
      MSEL           : CTL_MSEL_Field := 16#12#;
      --  unspecified
      Reserved_15_29 : HAL.UInt15 := 16#0#;
      --  Wait For Idle
      WFI            : Boolean := False;
      --  Lock
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      DF             at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MSEL           at 0 range 8 .. 14;
      Reserved_15_29 at 0 range 15 .. 29;
      WFI            at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  PLL Control Register
   type PLLCTL_Register is record
      --  PLL Bypass Set
      PLLBPST       : Boolean := False;
      --  PLL Bypass Clear
      PLLBPCL       : Boolean := False;
      --  PLL Disable
      PLLDIS        : Boolean := False;
      --  PLL Enable
      PLLEN         : Boolean := False;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCTL_Register use record
      PLLBPST       at 0 range 0 .. 0;
      PLLBPCL       at 0 range 1 .. 1;
      PLLDIS        at 0 range 2 .. 2;
      PLLEN         at 0 range 3 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype STAT_OSCWDSTATFC_Field is HAL.UInt3;

   --  Status Register
   type STAT_Register is record
      --  Read-only. PLL Enable
      PLLEN          : Boolean := True;
      --  Read-only. PLL Bypass
      PLLBP          : Boolean := True;
      --  Read-only. PLL Lock
      PLOCK          : Boolean := True;
      --  Read-only. Clock Alignment
      CLKSALGN       : Boolean := True;
      --  unspecified
      Reserved_4_11  : HAL.UInt8 := 16#0#;
      --  Read-only. Oscillator Watchdog Status Fault Code
      OSCWDSTATFC    : STAT_OSCWDSTATFC_Field := 16#0#;
      --  Read-only. Oscillator Watchdog Status Fault
      OSCWDSTATF     : Boolean := False;
      --  Address Error
      ADDRERR        : Boolean := False;
      --  Lock Write Error
      LWERR          : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write to DF or MSEL Error
      WDFMSERR       : Boolean := False;
      --  Write to DIV Error
      WDIVERR        : Boolean := False;
      --  PLL Configuration Error
      PCFGERR        : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      PLLEN          at 0 range 0 .. 0;
      PLLBP          at 0 range 1 .. 1;
      PLOCK          at 0 range 2 .. 2;
      CLKSALGN       at 0 range 3 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      OSCWDSTATFC    at 0 range 12 .. 14;
      OSCWDSTATF     at 0 range 15 .. 15;
      ADDRERR        at 0 range 16 .. 16;
      LWERR          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      WDFMSERR       at 0 range 19 .. 19;
      WDIVERR        at 0 range 20 .. 20;
      PCFGERR        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DIV_CSEL_Field is HAL.UInt5;
   subtype DIV_S0SEL_Field is HAL.UInt3;
   subtype DIV_SYSSEL_Field is HAL.UInt5;
   subtype DIV_S1SEL_Field is HAL.UInt3;
   subtype DIV_DSEL_Field is HAL.UInt5;
   subtype DIV_OSEL_Field is HAL.UInt7;

   --  Clocks Divisor Register
   type DIV_Register is record
      --  CCLK Divisor
      CSEL           : DIV_CSEL_Field := 16#6#;
      --  SCLK 0 Divisor
      S0SEL          : DIV_S0SEL_Field := 16#1#;
      --  SYSCLK Divisor
      SYSSEL         : DIV_SYSSEL_Field := 16#9#;
      --  Short Clocks Alignment Time
      S1SEL          : DIV_S1SEL_Field := 16#1#;
      --  DCLK Divisor
      DSEL           : DIV_DSEL_Field := 16#F#;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  OUTCLK Divisor
      OSEL           : DIV_OSEL_Field := 16#5A#;
      --  Align
      ALGN           : Boolean := False;
      --  Update Clock Divisors
      UPDT           : Boolean := False;
      --  Lock
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_Register use record
      CSEL           at 0 range 0 .. 4;
      S0SEL          at 0 range 5 .. 7;
      SYSSEL         at 0 range 8 .. 12;
      S1SEL          at 0 range 13 .. 15;
      DSEL           at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      OSEL           at 0 range 22 .. 28;
      ALGN           at 0 range 29 .. 29;
      UPDT           at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CLKOUTSEL_CLKOUTSEL_Field is HAL.UInt5;

   --  CLKOUT Select Register
   type CLKOUTSEL_Register is record
      --  CLKOUT Select
      CLKOUTSEL     : CLKOUTSEL_CLKOUTSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTSEL_Register use record
      CLKOUTSEL     at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype OSCWDCTL_HODF_Field is HAL.UInt6;
   subtype OSCWDCTL_BOUF_Field is HAL.UInt5;

   --  Oscillator Watchdog Register
   type OSCWDCTL_Register is record
      --  Watchdog lower frequency limit
      HODF           : OSCWDCTL_HODF_Field := 16#0#;
      --  Harmonic Oscillation Detection enabled
      HODEN          : Boolean := False;
      --  Clock not Good enabled
      CNGEN          : Boolean := False;
      --  Bad Oscillator Upper Frequency limit
      BOUF           : OSCWDCTL_BOUF_Field := 16#16#;
      --  Bad Oscillator Upper Frequency limit detection enabled
      BOUEN          : Boolean := True;
      --  Fault enabled
      FAULTEN        : Boolean := True;
      --  Oscillator Watchdog Monitor functions disabled
      MONDIS         : Boolean := False;
      --  unspecified
      Reserved_16_22 : HAL.UInt7 := 16#0#;
      --  Fault Pin disabled
      FAULTPINDIS    : Boolean := False;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  Lock
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCWDCTL_Register use record
      HODF           at 0 range 0 .. 5;
      HODEN          at 0 range 6 .. 6;
      CNGEN          at 0 range 7 .. 7;
      BOUF           at 0 range 8 .. 12;
      BOUEN          at 0 range 13 .. 13;
      FAULTEN        at 0 range 14 .. 14;
      MONDIS         at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      FAULTPINDIS    at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype TSCTL_TSDIV_Field is HAL.UInt4;

   --  Time Stamp Control Register
   type TSCTL_Register is record
      --  Counter Enable
      EN            : Boolean := False;
      --  Load Counter
      LOAD          : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Counter's Clock Divider
      TSDIV         : TSCTL_TSDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_30 : HAL.UInt23 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSCTL_Register use record
      EN            at 0 range 0 .. 0;
      LOAD          at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TSDIV         at 0 range 4 .. 7;
      Reserved_8_30 at 0 range 8 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Core Clock Buffer Disable Register
   type CCBF_DIS_Register is record
      --  Core Clock Buffer 0
      CCBF0         : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCBF_DIS_Register use record
      CCBF0         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Core Clock Buffer Status Register
   type CCBF_STAT_Register is record
      --  Read-only. Core Clock Buffer 0
      CCBF0         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCBF_STAT_Register use record
      CCBF0         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  System Clock Buffer Disable Register
   type SCBF_DIS_Register is record
      --  System Clock 0 Buffer
      SCLK0BF       : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  DCLK Buffer
      DCLKBF        : Boolean := False;
      --  Output Clock Buffer
      OUTCLKBF      : Boolean := False;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCBF_DIS_Register use record
      SCLK0BF       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCLKBF        at 0 range 2 .. 2;
      OUTCLKBF      at 0 range 3 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  System Clock Buffer Status Register
   type SCBF_STAT_Register is record
      --  Read-only. System Clock 0 Buffer
      SCLK0BF       : Boolean;
      --  unspecified
      Reserved_1_1  : HAL.Bit;
      --  Read-only. DClock 1 Buffer
      DCLKBF        : Boolean;
      --  Read-only. Output Clock 1 Buffer
      OCLKBF        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCBF_STAT_Register use record
      SCLK0BF       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCLKBF        at 0 range 2 .. 2;
      OCLKBF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype REVID_REV_Field is HAL.UInt4;
   subtype REVID_MAJOR_Field is HAL.UInt4;

   --  Revision ID Register
   type REVID_Register is record
      --  Read-only. Incremental Version ID
      REV           : REVID_REV_Field;
      --  Read-only. Major Version
      MAJOR         : REVID_MAJOR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REVID_Register use record
      REV           at 0 range 0 .. 3;
      MAJOR         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Generation Unit
   type CGU0_Peripheral is record
      --  Control Register
      CTL       : aliased CTL_Register;
      --  PLL Control Register
      PLLCTL    : aliased PLLCTL_Register;
      --  Status Register
      STAT      : aliased STAT_Register;
      --  Clocks Divisor Register
      DIV       : aliased DIV_Register;
      --  CLKOUT Select Register
      CLKOUTSEL : aliased CLKOUTSEL_Register;
      --  Oscillator Watchdog Register
      OSCWDCTL  : aliased OSCWDCTL_Register;
      --  Time Stamp Control Register
      TSCTL     : aliased TSCTL_Register;
      --  Time Stamp Counter Initial 32 LSB Value Register
      TSVALUE0  : aliased HAL.UInt32;
      --  Time Stamp Counter Initial MSB Value Register
      TSVALUE1  : aliased HAL.UInt32;
      --  Time Stamp Counter 32 LSB Register
      TSCOUNT0  : aliased HAL.UInt32;
      --  Time Stamp Counter 32 MSB Register
      TSCOUNT1  : aliased HAL.UInt32;
      --  Core Clock Buffer Disable Register
      CCBF_DIS  : aliased CCBF_DIS_Register;
      --  Core Clock Buffer Status Register
      CCBF_STAT : aliased CCBF_STAT_Register;
      --  System Clock Buffer Disable Register
      SCBF_DIS  : aliased SCBF_DIS_Register;
      --  System Clock Buffer Status Register
      SCBF_STAT : aliased SCBF_STAT_Register;
      --  Revision ID Register
      REVID     : aliased REVID_Register;
   end record
     with Volatile;

   for CGU0_Peripheral use record
      CTL       at 16#0# range 0 .. 31;
      PLLCTL    at 16#4# range 0 .. 31;
      STAT      at 16#8# range 0 .. 31;
      DIV       at 16#C# range 0 .. 31;
      CLKOUTSEL at 16#10# range 0 .. 31;
      OSCWDCTL  at 16#14# range 0 .. 31;
      TSCTL     at 16#18# range 0 .. 31;
      TSVALUE0  at 16#1C# range 0 .. 31;
      TSVALUE1  at 16#20# range 0 .. 31;
      TSCOUNT0  at 16#24# range 0 .. 31;
      TSCOUNT1  at 16#28# range 0 .. 31;
      CCBF_DIS  at 16#2C# range 0 .. 31;
      CCBF_STAT at 16#30# range 0 .. 31;
      SCBF_DIS  at 16#38# range 0 .. 31;
      SCBF_STAT at 16#3C# range 0 .. 31;
      REVID     at 16#48# range 0 .. 31;
   end record;

   --  Clock Generation Unit
   CGU0_Periph : aliased CGU0_Peripheral
     with Import, Address => System'To_Address (16#40014000#);

end NRF_SVD.CGU0;
