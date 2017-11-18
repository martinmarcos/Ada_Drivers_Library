--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_ADSEL_Field is HAL.UInt4;

   --  ADC Control Register
   type CR_Register is record
      --  Select ADC input channel
      ADSEL         : CR_ADSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  A/D Converter interrupt Flag
      ADIF          : Boolean := False;
      --  A/D Conversion Status Flag (Read-Only)
      AFLAG         : Boolean := False;
      --  A/D Conversion Start
      ADST          : Boolean := False;
      --  A/D Conversion Status (Read/Write)
      ADEOC         : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ADSEL         at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      ADIF          at 0 range 5 .. 5;
      AFLAG         at 0 range 6 .. 6;
      ADST          at 0 range 7 .. 7;
      ADEOC         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype MR_ADCS_Field is HAL.UInt8;
   subtype MR_TSEL_Field is HAL.UInt3;

   --  ADC Mode Register
   type MR_Register is record
      --  Select A/D conversion clock
      ADCS           : MR_ADCS_Field := 16#0#;
      --  SOC trigger source
      TSEL           : MR_TSEL_Field := 16#0#;
      --  Select external trigger condition for start conversion
      EXTRG          : Boolean := False;
      --  Select End-of-Conversion interrupt
      ADIE           : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Select ADC Stand-by mode
      ADSTBY         : Boolean := False;
      --  Select ADC Enable
      ADCEN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      ADCS           at 0 range 0 .. 7;
      TSEL           at 0 range 8 .. 10;
      EXTRG          at 0 range 11 .. 11;
      ADIE           at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      ADSTBY         at 0 range 14 .. 14;
      ADCEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DR_ADLR_Field is HAL.UInt4;
   subtype DR_ADHR_Field is HAL.UInt8;

   --  A/D Data Register
   type DR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. Lower byte of A/D conversion data
      ADLR           : DR_ADLR_Field;
      --  Read-only. Upper byte of A/D conversion data
      ADHR           : DR_ADHR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADLR           at 0 range 4 .. 7;
      ADHR           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  12-BIT A/D CONVERTER
   type ADC_Peripheral is record
      --  ADC Control Register
      CR : aliased CR_Register;
      --  ADC Mode Register
      MR : aliased MR_Register;
      --  A/D Data Register
      DR : aliased DR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CR at 16#0# range 0 .. 31;
      MR at 16#4# range 0 .. 31;
      DR at 16#8# range 0 .. 31;
   end record;

   --  12-BIT A/D CONVERTER
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#40000E00#);

end NRF_SVD.ADC;
