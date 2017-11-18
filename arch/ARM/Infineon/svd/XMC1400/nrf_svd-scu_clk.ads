--  This spec has been automatically generated from XMC1400.svd

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
      --  1;
      VALUE2,
      --  2;
      VALUE3,
      --  3;
      VALUE4,
      --  4;
      VALUE5,
      --  Reset value for the field
      Clkcr_Idiv_Field_Reset,
      --  254;
      VALUE6,
      --  255;
      VALUE7)
     with Size => 8;
   for CLKCR_IDIV_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      Clkcr_Idiv_Field_Reset => 6,
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
      --  1 clock cycles of the DCO1, 48MHz clock
      VALUE1,
      --  2 clock cycles of the DCO1, 48MHz clock
      VALUE2,
      --  3 clock cycles of the DCO1, 48MHz clock
      VALUE3,
      --  4 clock cycles of the DCO1, 48MHz clock
      VALUE4,
      --  5 clock cycles of the DCO1, 48MHz clock
      VALUE5,
      --  769 clock cycles of the DCO1, 48MHz clock
      VALUE6,
      --  1023 clock cycles of the DCO1, 48MHz clock
      VALUE7,
      --  1024 clock cycles of the DCO1, 48MHz clock
      VALUE8)
     with Size => 10;
   for CLKCR_CNTADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 768,
      VALUE7 => 1022,
      VALUE8 => 1023);

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
      --  Fractional Divider Selection, FDIV[7:0]
      FDIV      : CLKCR_FDIV_Field := 16#0#;
      --  Divider Selection
      IDIV      : CLKCR_IDIV_Field := Clkcr_Idiv_Field_Reset;
      --  PCLK Clock Select
      PCLKSEL   : CLKCR_PCLKSEL_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  RTC Clock Select
      RTCCLKSEL : CLKCR_RTCCLKSEL_Field := 16#0#;
      --  Counter Adjustment
      CNTADJ    : CLKCR_CNTADJ_Field := NRF_SVD.SCU_CLK.VALUE6;
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

   --  CCU80 Gating Status
   type CGATSTAT0_CCU80_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_CCU80_Field use
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

   --  POSIF0 Gating Status
   type CGATSTAT0_POSIF0_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_POSIF0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MATH Gating Status
   type CGATSTAT0_MATH_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_MATH_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

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

   --  CCU81 Gating Status
   type CGATSTAT0_CCU81_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_CCU81_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CCU41 Gating Status
   type CGATSTAT0_CCU41_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_CCU41_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC1 Gating Status
   type CGATSTAT0_USIC1_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_USIC1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS2 Gating Status
   type CGATSTAT0_LEDTS2_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_LEDTS2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  POSIF1 Gating Status
   type CGATSTAT0_POSIF1_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_POSIF1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MultiCAN Gating Status
   type CGATSTAT0_MCAN0_Field is
     (
      --  gating de-asserted
      VALUE1,
      --  gating asserted
      VALUE2)
     with Size => 1;
   for CGATSTAT0_MCAN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral 0 Clock Gating Status
   type CGATSTAT0_Register is record
      --  Read-only. VADC and SHS Gating Status
      VADC           : CGATSTAT0_VADC_Field;
      --  Read-only. CCU80 Gating Status
      CCU80          : CGATSTAT0_CCU80_Field;
      --  Read-only. CCU40 Gating Status
      CCU40          : CGATSTAT0_CCU40_Field;
      --  Read-only. USIC0 Gating Status
      USIC0          : CGATSTAT0_USIC0_Field;
      --  Read-only. BCCU0 Gating Status
      BCCU0          : CGATSTAT0_BCCU0_Field;
      --  Read-only. LEDTS0 Gating Status
      LEDTS          : CGATSTAT0_LEDTS_Field;
      --  Read-only. POSIF0 Gating Status
      POSIF0         : CGATSTAT0_POSIF0_Field;
      --  Read-only. MATH Gating Status
      MATH           : CGATSTAT0_MATH_Field;
      --  Read-only. WDT Gating Status
      WDT            : CGATSTAT0_WDT_Field;
      --  Read-only. RTC Gating Status
      RTC            : CGATSTAT0_RTC_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. CCU81 Gating Status
      CCU81          : CGATSTAT0_CCU81_Field;
      --  Read-only. CCU41 Gating Status
      CCU41          : CGATSTAT0_CCU41_Field;
      --  Read-only. USIC1 Gating Status
      USIC1          : CGATSTAT0_USIC1_Field;
      --  Read-only. LEDTS2 Gating Status
      LEDTS2         : CGATSTAT0_LEDTS2_Field;
      --  Read-only. POSIF1 Gating Status
      POSIF1         : CGATSTAT0_POSIF1_Field;
      --  Read-only. MultiCAN Gating Status
      MCAN0          : CGATSTAT0_MCAN0_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGATSTAT0_Register use record
      VADC           at 0 range 0 .. 0;
      CCU80          at 0 range 1 .. 1;
      CCU40          at 0 range 2 .. 2;
      USIC0          at 0 range 3 .. 3;
      BCCU0          at 0 range 4 .. 4;
      LEDTS          at 0 range 5 .. 6;
      POSIF0         at 0 range 7 .. 7;
      MATH           at 0 range 8 .. 8;
      WDT            at 0 range 9 .. 9;
      RTC            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CCU81          at 0 range 16 .. 16;
      CCU41          at 0 range 17 .. 17;
      USIC1          at 0 range 18 .. 18;
      LEDTS2         at 0 range 19 .. 19;
      POSIF1         at 0 range 20 .. 20;
      MCAN0          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  CCU80 Gating Set
   type CGATSET0_CCU80_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_CCU80_Field use
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

   --  POSIF0 Gating Set
   type CGATSET0_POSIF0_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_POSIF0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MATH Gating Set
   type CGATSET0_MATH_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_MATH_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

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

   --  CCU81 Gating Set
   type CGATSET0_CCU81_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_CCU81_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CCU41 Gating Set
   type CGATSET0_CCU41_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_CCU41_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC1 Gating Set
   type CGATSET0_USIC1_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_USIC1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS2 Gating Set
   type CGATSET0_LEDTS2_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_LEDTS2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  POSIF1 Gating Set
   type CGATSET0_POSIF1_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_POSIF1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MutliCAN Gating Set
   type CGATSET0_MCAN0_Field is
     (
      --  no effect
      VALUE1,
      --  enable gating
      VALUE2)
     with Size => 1;
   for CGATSET0_MCAN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral 0 Clock Gating Set
   type CGATSET0_Register is record
      --  Write-only. VADC and SHS Gating Set
      VADC           : CGATSET0_VADC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. CCU80 Gating Set
      CCU80          : CGATSET0_CCU80_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. CCU40 Gating Set
      CCU40          : CGATSET0_CCU40_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. USIC0 Gating Set
      USIC0          : CGATSET0_USIC0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. BCCU0 Gating Set
      BCCU0          : CGATSET0_BCCU0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. LEDTS0 Gating Set
      LEDTS          : CGATSET0_LEDTS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. POSIF0 Gating Set
      POSIF0         : CGATSET0_POSIF0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. MATH Gating Set
      MATH           : CGATSET0_MATH_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. WDT Gating Set
      WDT            : CGATSET0_WDT_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. RTC Gating Set
      RTC            : CGATSET0_RTC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Write-only. CCU81 Gating Set
      CCU81          : CGATSET0_CCU81_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. CCU41 Gating Set
      CCU41          : CGATSET0_CCU41_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. USIC1 Gating Set
      USIC1          : CGATSET0_USIC1_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. LEDTS2 Gating Set
      LEDTS2         : CGATSET0_LEDTS2_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. POSIF1 Gating Set
      POSIF1         : CGATSET0_POSIF1_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. MutliCAN Gating Set
      MCAN0          : CGATSET0_MCAN0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGATSET0_Register use record
      VADC           at 0 range 0 .. 0;
      CCU80          at 0 range 1 .. 1;
      CCU40          at 0 range 2 .. 2;
      USIC0          at 0 range 3 .. 3;
      BCCU0          at 0 range 4 .. 4;
      LEDTS          at 0 range 5 .. 6;
      POSIF0         at 0 range 7 .. 7;
      MATH           at 0 range 8 .. 8;
      WDT            at 0 range 9 .. 9;
      RTC            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CCU81          at 0 range 16 .. 16;
      CCU41          at 0 range 17 .. 17;
      USIC1          at 0 range 18 .. 18;
      LEDTS2         at 0 range 19 .. 19;
      POSIF1         at 0 range 20 .. 20;
      MCAN0          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  CCU80 Gating Clear
   type CGATCLR0_CCU80_Field is
     (
      --  no effect
      VALUE1,
      --  disble gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_CCU80_Field use
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

   --  POSIF0 Gating Clear
   type CGATCLR0_POSIF0_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_POSIF0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MATH Gating Clear
   type CGATCLR0_MATH_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_MATH_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WDT Gating Clear
   type CGATCLR0_WDT_Field is
     (
      --  no effect
      VALUE1,
      --  disble gating
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

   --  CCU81 Gating Clear
   type CGATCLR0_CCU81_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_CCU81_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CCU41 Gating Clear
   type CGATCLR0_CCU41_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_CCU41_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  USIC1 Gating Clear
   type CGATCLR0_USIC1_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_USIC1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS2 Gating Clear
   type CGATCLR0_LEDTS2_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_LEDTS2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  POSIF1 Gating Clear
   type CGATCLR0_POSIF1_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_POSIF1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MutliCAN Gating Clear
   type CGATCLR0_MCAN0_Field is
     (
      --  no effect
      VALUE1,
      --  disable gating
      VALUE2)
     with Size => 1;
   for CGATCLR0_MCAN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Peripheral 0 Clock Gating Clear
   type CGATCLR0_Register is record
      --  Write-only. VADC and SHS Gating Clear
      VADC           : CGATCLR0_VADC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. CCU80 Gating Clear
      CCU80          : CGATCLR0_CCU80_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. CCU40 Gating Clear
      CCU40          : CGATCLR0_CCU40_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. USIC0 Gating Clear
      USIC0          : CGATCLR0_USIC0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. BCCU0 Gating Clear
      BCCU0          : CGATCLR0_BCCU0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. LEDTS0 Gating Clear
      LEDTS          : CGATCLR0_LEDTS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. POSIF0 Gating Clear
      POSIF0         : CGATCLR0_POSIF0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. MATH Gating Clear
      MATH           : CGATCLR0_MATH_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. WDT Gating Clear
      WDT            : CGATCLR0_WDT_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. RTC Gating Clear
      RTC            : CGATCLR0_RTC_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Write-only. CCU81 Gating Clear
      CCU81          : CGATCLR0_CCU81_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. CCU41 Gating Clear
      CCU41          : CGATCLR0_CCU41_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. USIC1 Gating Clear
      USIC1          : CGATCLR0_USIC1_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. LEDTS2 Gating Clear
      LEDTS2         : CGATCLR0_LEDTS2_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. POSIF1 Gating Clear
      POSIF1         : CGATCLR0_POSIF1_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Write-only. MutliCAN Gating Clear
      MCAN0          : CGATCLR0_MCAN0_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGATCLR0_Register use record
      VADC           at 0 range 0 .. 0;
      CCU80          at 0 range 1 .. 1;
      CCU40          at 0 range 2 .. 2;
      USIC0          at 0 range 3 .. 3;
      BCCU0          at 0 range 4 .. 4;
      LEDTS          at 0 range 5 .. 6;
      POSIF0         at 0 range 7 .. 7;
      MATH           at 0 range 8 .. 8;
      WDT            at 0 range 9 .. 9;
      RTC            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CCU81          at 0 range 16 .. 16;
      CCU41          at 0 range 17 .. 17;
      USIC1          at 0 range 18 .. 18;
      LEDTS2         at 0 range 19 .. 19;
      POSIF1         at 0 range 20 .. 20;
      MCAN0          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  DCO1 Power down
   type OSCCSR_DCO1PD_Field is
     (
      --  DCO1 is not power down
      VALUE1,
      --  DCO1 power down.
      VALUE2)
     with Size => 1;
   for OSCCSR_DCO1PD_Field use
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

   --  XTAL Oscillator Watchdog Reset
   type OSCCSR_XOWDRES_Field is
     (
      --  The Oscillator Watchdog is not cleared and remains active
      VALUE1,
      --  The Oscillator Watchdog is cleared and restarted.
      VALUE2)
     with Size => 1;
   for OSCCSR_XOWDRES_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  XTAL Oscillator Watchdog Enable
   type OSCCSR_XOWDEN_Field is
     (
      --  The XTAL Oscillator Watchdog is disabled
      VALUE1,
      --  The XTAL Oscillator Watchdog is enabled
      VALUE2)
     with Size => 1;
   for OSCCSR_XOWDEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Oscillator Control and Status Register
   type OSCCSR_Register is record
      --  Read-only. Oscillator Valid Low Status Bit
      OSC2L          : OSCCSR_OSC2L_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Read-only. Oscillator Valid High Status Bit
      OSC2H          : OSCCSR_OSC2H_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  DCO1 Power down
      DCO1PD         : OSCCSR_DCO1PD_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Oscillator Watchdog Reset
      OWDRES         : OSCCSR_OWDRES_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  Oscillator Watchdog Enable
      OWDEN          : OSCCSR_OWDEN_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  XTAL Oscillator Watchdog Reset
      XOWDRES        : OSCCSR_XOWDRES_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  XTAL Oscillator Watchdog Enable
      XOWDEN         : OSCCSR_XOWDEN_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCSR_Register use record
      OSC2L          at 0 range 0 .. 0;
      OSC2H          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      DCO1PD         at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      OWDRES         at 0 range 16 .. 16;
      OWDEN          at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      XOWDRES        at 0 range 24 .. 24;
      XOWDEN         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CLKCR1_FDIV_Field is HAL.UInt2;

   --  ADC Converter Clock Select
   type CLKCR1_ADCCLKSEL_Field is
     (
      --  fCONV= 48MHz
      VALUE1,
      --  fCONV= 32MHz
      VALUE2)
     with Size => 1;
   for CLKCR1_ADCCLKSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Doubler Clock Source Select
   type CLKCR1_DCLKSEL_Field is
     (
      --  DCO1
      VALUE1,
      --  External clock via OSC_HP
      VALUE2)
     with Size => 1;
   for CLKCR1_DCLKSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clock Control Register 1
   type CLKCR1_Register is record
      --  Fractional Divider Selection, FDIV[9:8]
      FDIV           : CLKCR1_FDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  ADC Converter Clock Select
      ADCCLKSEL      : CLKCR1_ADCCLKSEL_Field := NRF_SVD.SCU_CLK.VALUE2;
      --  Doubler Clock Source Select
      DCLKSEL        : CLKCR1_DCLKSEL_Field := NRF_SVD.SCU_CLK.VALUE1;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKCR1_Register use record
      FDIV           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ADCCLKSEL      at 0 range 8 .. 8;
      DCLKSEL        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
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
      --  Clock Control Register 1
      CLKCR1    : aliased CLKCR1_Register;
   end record
     with Volatile;

   for SCU_CLK_Peripheral use record
      CLKCR     at 16#0# range 0 .. 31;
      PWRSVCR   at 16#4# range 0 .. 31;
      CGATSTAT0 at 16#8# range 0 .. 31;
      CGATSET0  at 16#C# range 0 .. 31;
      CGATCLR0  at 16#10# range 0 .. 31;
      OSCCSR    at 16#14# range 0 .. 31;
      CLKCR1    at 16#1C# range 0 .. 31;
   end record;

   --  System Control Unit
   SCU_CLK_Periph : aliased SCU_CLK_Peripheral
     with Import, Address => SCU_CLK_Base;

end NRF_SVD.SCU_CLK;
