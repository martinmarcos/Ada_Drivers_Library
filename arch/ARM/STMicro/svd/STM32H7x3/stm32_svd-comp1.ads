--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.COMP1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Comparator status register
   type COMP1_SR_Register is record
      --  Read-only. COMP channel 1 output status bit
      C1VAL          : Boolean;
      --  Read-only. COMP channel 2 output status bit
      C2VAL          : Boolean;
      --  unspecified
      Reserved_2_15  : HAL.UInt14;
      --  Read-only. COMP channel 1 Interrupt Flag
      C1IF           : Boolean;
      --  Read-only. COMP channel 2 Interrupt Flag
      C2IF           : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_SR_Register use record
      C1VAL          at 0 range 0 .. 0;
      C2VAL          at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      C1IF           at 0 range 16 .. 16;
      C2IF           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Comparator interrupt clear flag register
   type COMP1_ICFR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Write-only. Clear COMP channel 1 Interrupt Flag
      CC1IF          : Boolean := False;
      --  Write-only. Clear COMP channel 2 Interrupt Flag
      CC2IF          : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_ICFR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CC1IF          at 0 range 16 .. 16;
      CC2IF          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype COMP1_OR_AFOP_Field is HAL.UInt11;
   subtype COMP1_OR_OR_Field is HAL.UInt21;

   --  Comparator option register
   type COMP1_OR_Register is record
      --  Selection of source for alternate function of output ports
      AFOP : COMP1_OR_AFOP_Field := 16#0#;
      --  Option Register
      OR_k : COMP1_OR_OR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_OR_Register use record
      AFOP at 0 range 0 .. 10;
      OR_k at 0 range 11 .. 31;
   end record;

   subtype COMP1_CFGR1_HYST_Field is HAL.UInt2;
   subtype COMP1_CFGR1_PWRMODE_Field is HAL.UInt2;
   subtype COMP1_CFGR1_INMSEL_Field is HAL.UInt3;
   subtype COMP1_CFGR1_BLANKING_Field is HAL.UInt4;

   --  Comparator configuration register 1
   type COMP1_CFGR1_Register is record
      --  COMP channel 1 enable bit
      EN             : Boolean := False;
      --  Scaler bridge enable
      BRGEN          : Boolean := False;
      --  Voltage scaler enable bit
      SCALEN         : Boolean := False;
      --  COMP channel 1 polarity selection bit
      POLARITY       : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  COMP channel 1 interrupt enable
      ITEN           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  COMP channel 1 hysteresis selection bits
      HYST           : COMP1_CFGR1_HYST_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Power Mode of the COMP channel 1
      PWRMODE        : COMP1_CFGR1_PWRMODE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  COMP channel 1 inverting input selection field
      INMSEL         : COMP1_CFGR1_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  COMP channel 1 non-inverting input selection bit
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  COMP channel 1 blanking source selection bits
      BLANKING       : COMP1_CFGR1_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Lock bit
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CFGR1_Register use record
      EN             at 0 range 0 .. 0;
      BRGEN          at 0 range 1 .. 1;
      SCALEN         at 0 range 2 .. 2;
      POLARITY       at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      ITEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HYST           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PWRMODE        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INMSEL         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      INPSEL         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BLANKING       at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP1_CFGR2_HYST_Field is HAL.UInt2;
   subtype COMP1_CFGR2_PWRMODE_Field is HAL.UInt2;
   subtype COMP1_CFGR2_INMSEL_Field is HAL.UInt3;
   subtype COMP1_CFGR2_BLANKING_Field is HAL.UInt4;

   --  Comparator configuration register 2
   type COMP1_CFGR2_Register is record
      --  COMP channel 1 enable bit
      EN             : Boolean := False;
      --  Scaler bridge enable
      BRGEN          : Boolean := False;
      --  Voltage scaler enable bit
      SCALEN         : Boolean := False;
      --  COMP channel 1 polarity selection bit
      POLARITY       : Boolean := False;
      --  Window comparator mode selection bit
      WINMODE        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  COMP channel 1 interrupt enable
      ITEN           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  COMP channel 1 hysteresis selection bits
      HYST           : COMP1_CFGR2_HYST_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Power Mode of the COMP channel 1
      PWRMODE        : COMP1_CFGR2_PWRMODE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  COMP channel 1 inverting input selection field
      INMSEL         : COMP1_CFGR2_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  COMP channel 1 non-inverting input selection bit
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  COMP channel 1 blanking source selection bits
      BLANKING       : COMP1_CFGR2_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Lock bit
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CFGR2_Register use record
      EN             at 0 range 0 .. 0;
      BRGEN          at 0 range 1 .. 1;
      SCALEN         at 0 range 2 .. 2;
      POLARITY       at 0 range 3 .. 3;
      WINMODE        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ITEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HYST           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PWRMODE        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INMSEL         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      INPSEL         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BLANKING       at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  COMP1
   type COMP1_Peripheral is record
      --  Comparator status register
      COMP1_SR    : aliased COMP1_SR_Register;
      --  Comparator interrupt clear flag register
      COMP1_ICFR  : aliased COMP1_ICFR_Register;
      --  Comparator option register
      COMP1_OR    : aliased COMP1_OR_Register;
      --  Comparator configuration register 1
      COMP1_CFGR1 : aliased COMP1_CFGR1_Register;
      --  Comparator configuration register 2
      COMP1_CFGR2 : aliased COMP1_CFGR2_Register;
   end record
     with Volatile;

   for COMP1_Peripheral use record
      COMP1_SR    at 16#0# range 0 .. 31;
      COMP1_ICFR  at 16#4# range 0 .. 31;
      COMP1_OR    at 16#8# range 0 .. 31;
      COMP1_CFGR1 at 16#C# range 0 .. 31;
      COMP1_CFGR2 at 16#10# range 0 .. 31;
   end record;

   --  COMP1
   COMP1_Periph : aliased COMP1_Peripheral
     with Import, Address => System'To_Address (16#58003800#);

end STM32_SVD.COMP1;
