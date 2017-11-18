--

--  This spec has been automatically generated from apollo1.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Voltage Comparator
package NRF_SVD.VCOMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  This bitfield selects the positive input to the comparator.
   type CFG_PSEL_Field is
     (
      --  Use VDDADJ for the positive input. value.
      Vddadj,
      --  Use the temperature sensor output for the positive input. value.
      Vtemp,
      --  Use external voltage 1 for positive input. value.
      Vext1,
      --  Use external voltage 1 for positive input. value.
      Vext2)
     with Size => 2;
   for CFG_PSEL_Field use
     (Vddadj => 0,
      Vtemp => 1,
      Vext1 => 2,
      Vext2 => 3);

   --  This bitfield selects the negative input to the comparator.
   type CFG_NSEL_Field is
     (
      --  Use external reference 1 for reference input. value.
      Vrefext1,
      --  Use external reference 2 for reference input. value.
      Vrefext2,
      --  Use external reference 3 for reference input. value.
      Vrefext3)
     with Size => 2;
   for CFG_NSEL_Field use
     (Vrefext1 => 0,
      Vrefext2 => 1,
      Vrefext3 => 3);

   --  When the reference input NSEL is set to NSEL_DAC, this bitfield selects
   --  the voltage level for the negative input to the comparator.
   type CFG_LVLSEL_Field is
     (
      --  Set Reference input to 0.58 Volts. value.
      CFG_LVLSEL_Field_0P58V,
      --  Set Reference input to 0.77 Volts. value.
      CFG_LVLSEL_Field_0P77V,
      --  Set Reference input to 0.97 Volts. value.
      CFG_LVLSEL_Field_0P97V,
      --  Set Reference input to 1.16 Volts. value.
      CFG_LVLSEL_Field_1P16V,
      --  Set Reference input to 1.35 Volts. value.
      CFG_LVLSEL_Field_1P35V,
      --  Set Reference input to 1.55 Volts. value.
      CFG_LVLSEL_Field_1P55V,
      --  Set Reference input to 1.74 Volts. value.
      CFG_LVLSEL_Field_1P74V,
      --  Set Reference input to 1.93 Volts. value.
      CFG_LVLSEL_Field_1P93V,
      --  Set Reference input to 2.13 Volts. value.
      CFG_LVLSEL_Field_2P13V,
      --  Set Reference input to 2.32 Volts. value.
      CFG_LVLSEL_Field_2P32V,
      --  Set Reference input to 2.51 Volts. value.
      CFG_LVLSEL_Field_2P51V,
      --  Set Reference input to 2.71 Volts. value.
      CFG_LVLSEL_Field_2P71V,
      --  Set Reference input to 2.90 Volts. value.
      CFG_LVLSEL_Field_2P90V,
      --  Set Reference input to 3.09 Volts. value.
      CFG_LVLSEL_Field_3P09V,
      --  Set Reference input to 3.29 Volts. value.
      CFG_LVLSEL_Field_3P29V,
      --  Set Reference input to 3.48 Volts. value.
      CFG_LVLSEL_Field_3P48V)
     with Size => 4;
   for CFG_LVLSEL_Field use
     (CFG_LVLSEL_Field_0P58V => 0,
      CFG_LVLSEL_Field_0P77V => 1,
      CFG_LVLSEL_Field_0P97V => 2,
      CFG_LVLSEL_Field_1P16V => 3,
      CFG_LVLSEL_Field_1P35V => 4,
      CFG_LVLSEL_Field_1P55V => 5,
      CFG_LVLSEL_Field_1P74V => 6,
      CFG_LVLSEL_Field_1P93V => 7,
      CFG_LVLSEL_Field_2P13V => 8,
      CFG_LVLSEL_Field_2P32V => 9,
      CFG_LVLSEL_Field_2P51V => 10,
      CFG_LVLSEL_Field_2P71V => 11,
      CFG_LVLSEL_Field_2P90V => 12,
      CFG_LVLSEL_Field_3P09V => 13,
      CFG_LVLSEL_Field_3P29V => 14,
      CFG_LVLSEL_Field_3P48V => 15);

   --  Configuration Register
   type CFG_Register is record
      --  This bitfield selects the positive input to the comparator.
      PSEL           : CFG_PSEL_Field := NRF_SVD.VCOMP.Vddadj;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  This bitfield selects the negative input to the comparator.
      NSEL           : CFG_NSEL_Field := NRF_SVD.VCOMP.Vrefext1;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  When the reference input NSEL is set to NSEL_DAC, this bitfield
      --  selects the voltage level for the negative input to the comparator.
      LVLSEL         : CFG_LVLSEL_Field :=
                        NRF_SVD.VCOMP.CFG_LVLSEL_Field_0P58V;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      PSEL           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      NSEL           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      LVLSEL         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  This bit is 1 if the positive input of the comparator is greater than
   --  the negative input.
   type STAT_CMPOUT_Field is
     (
      --  The negative input of the comparator is greater than the positive
      --  input. value.
      Vout_Low,
      --  The positive input of the comparator is greater than the negative
      --  input. value.
      Vout_High)
     with Size => 1;
   for STAT_CMPOUT_Field use
     (Vout_Low => 0,
      Vout_High => 1);

   --  This bit indicates the power down state of the voltage comparator.
   type STAT_PWDSTAT_Field is
     (
      --  Reset value for the field
      Stat_Pwdstat_Field_Reset,
      --  The voltage comparator is powered down. value.
      Powered_Down)
     with Size => 1;
   for STAT_PWDSTAT_Field use
     (Stat_Pwdstat_Field_Reset => 0,
      Powered_Down => 1);

   --  Status Register
   type STAT_Register is record
      --  This bit is 1 if the positive input of the comparator is greater than
      --  the negative input.
      CMPOUT        : STAT_CMPOUT_Field := NRF_SVD.VCOMP.Vout_Low;
      --  This bit indicates the power down state of the voltage comparator.
      PWDSTAT       : STAT_PWDSTAT_Field := Stat_Pwdstat_Field_Reset;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      CMPOUT        at 0 range 0 .. 0;
      PWDSTAT       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Voltage Comparator Interrupt registers: Enable
   type INTEN_Register is record
      --  This bit is the vcompout low interrupt.
      OUTLOW        : Boolean := False;
      --  This bit is the vcompout high interrupt.
      OUTHI         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      OUTLOW        at 0 range 0 .. 0;
      OUTHI         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Voltage Comparator Interrupt registers: Status
   type INTSTAT_Register is record
      --  This bit is the vcompout low interrupt.
      OUTLOW        : Boolean := False;
      --  This bit is the vcompout high interrupt.
      OUTHI         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      OUTLOW        at 0 range 0 .. 0;
      OUTHI         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Voltage Comparator Interrupt registers: Clear
   type INTCLR_Register is record
      --  This bit is the vcompout low interrupt.
      OUTLOW        : Boolean := False;
      --  This bit is the vcompout high interrupt.
      OUTHI         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      OUTLOW        at 0 range 0 .. 0;
      OUTHI         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Voltage Comparator Interrupt registers: Set
   type INTSET_Register is record
      --  This bit is the vcompout low interrupt.
      OUTLOW        : Boolean := False;
      --  This bit is the vcompout high interrupt.
      OUTHI         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      OUTLOW        at 0 range 0 .. 0;
      OUTHI         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Voltage Comparator
   type VCOMP_Peripheral is record
      --  Configuration Register
      CFG     : aliased CFG_Register;
      --  Status Register
      STAT    : aliased STAT_Register;
      --  Key Register for Powering Down the Voltage Comparator
      PWDKEY  : aliased HAL.UInt32;
      --  Voltage Comparator Interrupt registers: Enable
      INTEN   : aliased INTEN_Register;
      --  Voltage Comparator Interrupt registers: Status
      INTSTAT : aliased INTSTAT_Register;
      --  Voltage Comparator Interrupt registers: Clear
      INTCLR  : aliased INTCLR_Register;
      --  Voltage Comparator Interrupt registers: Set
      INTSET  : aliased INTSET_Register;
   end record
     with Volatile;

   for VCOMP_Peripheral use record
      CFG     at 16#0# range 0 .. 31;
      STAT    at 16#4# range 0 .. 31;
      PWDKEY  at 16#8# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  Voltage Comparator
   VCOMP_Periph : aliased VCOMP_Peripheral
     with Import, Address => VCOMP_Base;

end NRF_SVD.VCOMP;
