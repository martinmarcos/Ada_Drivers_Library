--  This spec has been automatically generated from XMC1200.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Control Unit
package NRF_SVD.SCU_CLK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CLKCR_FDIV_Field is HAL.UInt8;

   --  Divider Selection
   type CLKCR_IDIV_Field is
     (
      --  Divider is bypassed.
      VALUE1,
      --  1; MCLK = 32 MHz
      VALUE2,
      --  2; MCLK = 16 MHz
      VALUE3,
      --  3; MCLK = 10.67 MHz
      VALUE4,
      --  4; MCLK = 8 MHz
      VALUE5,
      --  254; MCLK = 126 kHz
      VALUE6,
      --  255; MCLK = 125.5 kHz
      VALUE7)
     with Size => 8;
   for CLKCR_IDIV_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 254,
      VALUE7 => 255);

   --  PCLK Clock Select
   type CLKCR_PCLKSEL_Field is
     (
      --  PCLK = MCLK
      VALUE1,
      --  PCLK = 2 x MCLK
      VALUE2)
     with Size => 1;
   for CLKCR_PCLKSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype CLKCR_RTCCLKSEL_Field is HAL.UInt3;

   --  Counter Adjustment
   type CLKCR_CNTADJ_Field is
     (
      --  1 clock cycles of the DCO1, 64MHz clock
      VALUE1,
      --  2 clock cycles of the DCO1, 64MHz clock
      VALUE2,
      --  3 clock cycles of the DCO1, 64MHz clock
      VALUE3,
      --  4 clock cycles of the DCO1, 64MHz clock
      VALUE4,
      --  5 clock cycles of the DCO1, 64MHz clock
      VALUE5,
      --  1023 clock cycles of the DCO1, 64MHz clock
      VALUE6,
      --  1024 clock cycles of the DCO1, 64MHz clock
      VALUE7)
     with Size => 10;
   for CLKCR_CNTADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 1022,
      VALUE7 => 1023);

   --  VDDC too low
   type CLKCR_VDDC2LOW_Field is
     (
      --  VDDC is not too low and the fractional divider input clock is running
      --  at the targeted frequency
      VALUE1,
      --  VDDC is too low and the fractional divider input clock is not running
      --  at the targeted frequency
      VALUE2)
     with Size => 1;
   for CLKCR_VDDC2LOW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  VDDC too high
   type CLKCR_VDDC2HIGH_Field is
     (
      --  VDDC is not too high
      VALUE1,
      --  VDDC is too high
      VALUE2)
     with Size => 1;
   for CLKCR_VDDC2HIGH_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clock Control Register
   type CLKCR_Register is record
      --  Fractional Divider Selection
      FDIV      : CLKCR_FDIV_Field := 16#0#;
      --  Divider Selection
      IDIV      : CLKCR_IDIV_Field := NRF_SVD.SCU_CLK.VALUE5;
      --  PCLK Clock Select
      PCLKSEL   : CLKCR_PCLKSEL_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  RTC Clock Select
      RTCCLKSEL : CLKCR_RTCCLKSEL_Field := 16#0#;
      --  Counter Adjustment
      CNTADJ    : CLKCR_CNTADJ_Field := NRF_SVD.SCU_CLK.VALUE7;
      --  Read-only. VDDC too low
      VDDC2LOW  : CLKCR_VDDC2LOW_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Read-only. VDDC too high
      VDDC2HIGH : CLKCR_VDDC2HIGH_Field := NRF_SVD.SCU_CLK.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKCR_Register use record
      FDIV      at 0 range 0 .. 7;
      IDIV      at 0 range 8 .. 15;
      PCLKSEL   at 0 range 16 .. 16;
      RTCCLKSEL at 0 range 17 .. 19;
      CNTADJ    at 0 range 20 .. 29;
      VDDC2LOW  at 0 range 30 .. 30;
      VDDC2HIGH at 0 range 31 .. 31;
   end record;

   --  Flash Power Down
   type PWRSVCR_FPD_Field is
     (
      --  no effect
      VALUE1,
      --  Flash power down when entering power save mode. Upon wake-up, CPU is
      --  able to fetch code from flash.
      VALUE2)
     with Size => 1;
   for PWRSVCR_FPD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Power Save Control Register
   type PWRSVCR_Register is record
      --  Flash Power Down
      FPD           : PWRSVCR_FPD_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRSVCR_Register use record
      FPD           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  VADC and SHS Gating Status
   type CGATSTAT0_VADC_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_VADC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CCU40 Gating Status
   type CGATSTAT0_CCU40_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_CCU40_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC0 Gating Status
   type CGATSTAT0_USIC0_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_USIC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BCCU0 Gating Status
   type CGATSTAT0_BCCU0_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_BCCU0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS0 Gating Status
   type CGATSTAT0_LEDTS0_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_LEDTS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CGATSTAT0_LEDTS array
   type CGATSTAT0_LEDTS_Field_Array is array (0 .. 1)
     of CGATSTAT0_LEDTS0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for CGATSTAT0_LEDTS
   type CGATSTAT0_LEDTS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LEDTS as a value
            Val : HAL.UInt2;
         when True =>
            --  LEDTS as an array
            Arr : CGATSTAT0_LEDTS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CGATSTAT0_LEDTS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  WDT Gating Status
   type CGATSTAT0_WDT_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_WDT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RTC Gating Status
   type CGATSTAT0_RTC_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_RTC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral 0 Clock Gating Status
   type CGATSTAT0_Register is record
      --  Read-only. VADC and SHS Gating Status
      VADC           : CGATSTAT0_VADC_Field;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only. CCU40 Gating Status
      CCU40          : CGATSTAT0_CCU40_Field;
      --  Read-only. USIC0 Gating Status
      USIC0          : CGATSTAT0_USIC0_Field;
      --  Read-only. BCCU0 Gating Status
      BCCU0          : CGATSTAT0_BCCU0_Field;
      --  Read-only. LEDTS0 Gating Status
      LEDTS          : CGATSTAT0_LEDTS_Field;
      --  unspecified
      Reserved_7_8   : HAL.UInt2;
      --  Read-only. WDT Gating Status
      WDT            : CGATSTAT0_WDT_Field;
      --  Read-only. RTC Gating Status
      RTC            : CGATSTAT0_RTC_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGATSTAT0_Register use record
      VADC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCU40          at 0 range 2 .. 2;
      USIC0          at 0 range 3 .. 3;
      BCCU0          at 0 range 4 .. 4;
      LEDTS          at 0 range 5 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      WDT            at 0 range 9 .. 9;
      RTC            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  VADC and SHS Gating Set
   type CGATSET0_VADC_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_VADC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CCU40 Gating Set
   type CGATSET0_CCU40_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_CCU40_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC0 Gating Set
   type CGATSET0_USIC0_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_USIC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BCCU0 Gating Set
   type CGATSET0_BCCU0_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_BCCU0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS0 Gating Set
   type CGATSET0_LEDTS0_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_LEDTS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CGATSET0_LEDTS array
   type CGATSET0_LEDTS_Field_Array is array (0 .. 1) of CGATSET0_LEDTS0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for CGATSET0_LEDTS
   type CGATSET0_LEDTS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LEDTS as a value
            Val : HAL.UInt2;
         when True =>
            --  LEDTS as an array
            Arr : CGATSET0_LEDTS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CGATSET0_LEDTS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  WDT Gating Set
   type CGATSET0_WDT_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_WDT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RTC Gating Set
   type CGATSET0_RTC_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_RTC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral 0 Clock Gating Set
   type CGATSET0_Register is record
      --  Write-only. VADC and SHS Gating Set
      VADC           : CGATSET0_VADC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Write-only. CCU40 Gating Set
      CCU40          : CGATSET0_CCU40_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. USIC0 Gating Set
      USIC0          : CGATSET0_USIC0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. BCCU0 Gating Set
      BCCU0          : CGATSET0_BCCU0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. LEDTS0 Gating Set
      LEDTS          : CGATSET0_LEDTS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. WDT Gating Set
      WDT            : CGATSET0_WDT_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. RTC Gating Set
      RTC            : CGATSET0_RTC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGATSET0_Register use record
      VADC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCU40          at 0 range 2 .. 2;
      USIC0          at 0 range 3 .. 3;
      BCCU0          at 0 range 4 .. 4;
      LEDTS          at 0 range 5 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      WDT            at 0 range 9 .. 9;
      RTC            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  VADC and SHS Gating Clear
   type CGATCLR0_VADC_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_VADC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CCU40 Gating Clear
   type CGATCLR0_CCU40_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_CCU40_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC0 Gating Clear
   type CGATCLR0_USIC0_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_USIC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BCCU0 Gating Clear
   type CGATCLR0_BCCU0_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_BCCU0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS0 Gating Clear
   type CGATCLR0_LEDTS0_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_LEDTS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CGATCLR0_LEDTS array
   type CGATCLR0_LEDTS_Field_Array is array (0 .. 1) of CGATCLR0_LEDTS0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for CGATCLR0_LEDTS
   type CGATCLR0_LEDTS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LEDTS as a value
            Val : HAL.UInt2;
         when True =>
            --  LEDTS as an array
            Arr : CGATCLR0_LEDTS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CGATCLR0_LEDTS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  WDT Gating Clear
   type CGATCLR0_WDT_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_WDT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RTC Gating Clear
   type CGATCLR0_RTC_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_RTC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral 0 Clock Gating Clear
   type CGATCLR0_Register is record
      --  Write-only. VADC and SHS Gating Clear
      VADC           : CGATCLR0_VADC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Write-only. CCU40 Gating Clear
      CCU40          : CGATCLR0_CCU40_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. USIC0 Gating Clear
      USIC0          : CGATCLR0_USIC0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. BCCU0 Gating Clear
      BCCU0          : CGATCLR0_BCCU0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. LEDTS0 Gating Clear
      LEDTS          : CGATCLR0_LEDTS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. WDT Gating Clear
      WDT            : CGATCLR0_WDT_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. RTC Gating Clear
      RTC            : CGATCLR0_RTC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGATCLR0_Register use record
      VADC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCU40          at 0 range 2 .. 2;
      USIC0          at 0 range 3 .. 3;
      BCCU0          at 0 range 4 .. 4;
      LEDTS          at 0 range 5 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      WDT            at 0 range 9 .. 9;
      RTC            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Oscillator Valid Low Status Bit
   type OSCCSR_OSC2L_Field is
     (
      --  The OSC frequency is usable
      VALUE1,
      --  The OSC frequency is not usable. Frequency is too low.
      VALUE2)
     with Size => 1;
   for OSCCSR_OSC2L_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Oscillator Valid High Status Bit
   type OSCCSR_OSC2H_Field is
     (
      --  The OSC frequency is usable
      VALUE1,
      --  The OSC frequency is not usable. Frequency is too high.
      VALUE2)
     with Size => 1;
   for OSCCSR_OSC2H_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Oscillator Watchdog Reset
   type OSCCSR_OWDRES_Field is
     (
      --  The Oscillator Watchdog is not cleared and remains active
      VALUE1,
      --  The Oscillator Watchdog is cleared and restarted. The OSC2L and OSC2H
      --  flag will be held in the last value until it is updated after 3
      --  standby clock cycles.
      VALUE2)
     with Size => 1;
   for OSCCSR_OWDRES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Oscillator Watchdog Enable
   type OSCCSR_OWDEN_Field is
     (
      --  The Oscillator Watchdog is disabled
      VALUE1,
      --  The Oscillator Watchdog is enabled
      VALUE2)
     with Size => 1;
   for OSCCSR_OWDEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Oscillator Control and Status Register
   type OSCCSR_Register is record
      --  Read-only. Oscillator Valid Low Status Bit
      OSC2L          : OSCCSR_OSC2L_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Read-only. Oscillator Valid High Status Bit
      OSC2H          : OSCCSR_OSC2H_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Oscillator Watchdog Reset
      OWDRES         : OSCCSR_OWDRES_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Oscillator Watchdog Enable
      OWDEN          : OSCCSR_OWDEN_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCSR_Register use record
      OSC2L          at 0 range 0 .. 0;
      OSC2H          at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      OWDRES         at 0 range 16 .. 16;
      OWDEN          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type SCU_CLK_Peripheral is record
      --  Clock Control Register
      CLKCR     : aliased CLKCR_Register;
      --  Power Save Control Register
      PWRSVCR   : aliased PWRSVCR_Register;
      --  Peripheral 0 Clock Gating Status
      CGATSTAT0 : aliased CGATSTAT0_Register;
      --  Peripheral 0 Clock Gating Set
      CGATSET0  : aliased CGATSET0_Register;
      --  Peripheral 0 Clock Gating Clear
      CGATCLR0  : aliased CGATCLR0_Register;
      --  Oscillator Control and Status Register
      OSCCSR    : aliased OSCCSR_Register;
   end record
     with Volatile;

   for SCU_CLK_Peripheral use record
      CLKCR     at 16#0# range 0 .. 31;
      PWRSVCR   at 16#4# range 0 .. 31;
      CGATSTAT0 at 16#8# range 0 .. 31;
      CGATSET0  at 16#C# range 0 .. 31;
      CGATCLR0  at 16#10# range 0 .. 31;
      OSCCSR    at 16#14# range 0 .. 31;
   end record;

   --  System Control Unit
   SCU_CLK_Periph : aliased SCU_CLK_Peripheral
     with Import, Address => SCU_CLK_Base;

end NRF_SVD.SCU_CLK;
