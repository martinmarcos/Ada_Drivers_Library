--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  MCU Reset Generator
package NRF_SVD.RSTGEN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Configuration Register
   type CFG_Register is record
      --  Brown out high (2.1v) reset enable.
      BODHREN       : Boolean := False;
      --  Watchdog Timer Reset Enable. NOTE: The WDT module must also be
      --  configured for WDT reset.
      WDREN         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      BODHREN       at 0 range 0 .. 0;
      WDREN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0x1B generates a software POI reset.
   type SWPOI_SWPOIKEY_Field is
     (
      --  Reset value for the field
      Swpoi_Swpoikey_Field_Reset,
      --  Writing 0x1B key value generates a software POI reset. value.
      Keyvalue)
     with Size => 8;
   for SWPOI_SWPOIKEY_Field use
     (Swpoi_Swpoikey_Field_Reset => 0,
      Keyvalue => 27);

   --  Software POI Reset
   type SWPOI_Register is record
      --  0x1B generates a software POI reset.
      SWPOIKEY      : SWPOI_SWPOIKEY_Field := Swpoi_Swpoikey_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWPOI_Register use record
      SWPOIKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  0xD4 generates a software POR reset.
   type SWPOR_SWPORKEY_Field is
     (
      --  Reset value for the field
      Swpor_Swporkey_Field_Reset,
      --  Writing 0xD4 key value generates a software POR reset. value.
      Keyvalue)
     with Size => 8;
   for SWPOR_SWPORKEY_Field use
     (Swpor_Swporkey_Field_Reset => 0,
      Keyvalue => 212);

   --  Software POR Reset
   type SWPOR_Register is record
      --  0xD4 generates a software POR reset.
      SWPORKEY      : SWPOR_SWPORKEY_Field := Swpor_Swporkey_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWPOR_Register use record
      SWPORKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Status Register
   type STAT_Register is record
      --  Reset was initiated by an External Reset.
      EXRSTAT       : Boolean := False;
      --  Reset was initiated by a Power-On Reset.
      PORSTAT       : Boolean := False;
      --  Reset was initiated by a Brown-Out Reset.
      BORSTAT       : Boolean := False;
      --  Reset was a initiated by SW POR or AIRCR Reset.
      SWRSTAT       : Boolean := False;
      --  Reset was a initiated by Software POI Reset.
      POIRSTAT      : Boolean := False;
      --  Reset was a initiated by Debugger Reset.
      DBGRSTAT      : Boolean := False;
      --  Reset was initiated by a Watchdog Timer Reset.
      WDRSTAT       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      EXRSTAT       at 0 range 0 .. 0;
      PORSTAT       at 0 range 1 .. 1;
      BORSTAT       at 0 range 2 .. 2;
      SWRSTAT       at 0 range 3 .. 3;
      POIRSTAT      at 0 range 4 .. 4;
      DBGRSTAT      at 0 range 5 .. 5;
      WDRSTAT       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Clear the status register
   type CLRSTAT_Register is record
      --  Writing a 1 to this bit clears all bits in the RST_STAT.
      CLRSTAT       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLRSTAT_Register use record
      CLRSTAT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  TPIU reset
   type TPIU_RST_Register is record
      --  Static reset for the TPIU. Write to '1' to assert reset to TPIU.
      --  Write to '0' to clear the reset.
      TPIURST       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TPIU_RST_Register use record
      TPIURST       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Reset Interrupt register: Enable
   type INTEN_Register is record
      --  Enables an interrupt that triggers when VCC is below BODH level.
      BODH          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      BODH          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Reset Interrupt register: Status
   type INTSTAT_Register is record
      --  Enables an interrupt that triggers when VCC is below BODH level.
      BODH          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      BODH          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Reset Interrupt register: Clear
   type INTCLR_Register is record
      --  Enables an interrupt that triggers when VCC is below BODH level.
      BODH          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      BODH          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Reset Interrupt register: Set
   type INTSET_Register is record
      --  Enables an interrupt that triggers when VCC is below BODH level.
      BODH          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      BODH          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MCU Reset Generator
   type RSTGEN_Peripheral is record
      --  Configuration Register
      CFG      : aliased CFG_Register;
      --  Software POI Reset
      SWPOI    : aliased SWPOI_Register;
      --  Software POR Reset
      SWPOR    : aliased SWPOR_Register;
      --  Status Register
      STAT     : aliased STAT_Register;
      --  Clear the status register
      CLRSTAT  : aliased CLRSTAT_Register;
      --  TPIU reset
      TPIU_RST : aliased TPIU_RST_Register;
      --  Reset Interrupt register: Enable
      INTEN    : aliased INTEN_Register;
      --  Reset Interrupt register: Status
      INTSTAT  : aliased INTSTAT_Register;
      --  Reset Interrupt register: Clear
      INTCLR   : aliased INTCLR_Register;
      --  Reset Interrupt register: Set
      INTSET   : aliased INTSET_Register;
   end record
     with Volatile;

   for RSTGEN_Peripheral use record
      CFG      at 16#0# range 0 .. 31;
      SWPOI    at 16#4# range 0 .. 31;
      SWPOR    at 16#8# range 0 .. 31;
      STAT     at 16#C# range 0 .. 31;
      CLRSTAT  at 16#10# range 0 .. 31;
      TPIU_RST at 16#14# range 0 .. 31;
      INTEN    at 16#200# range 0 .. 31;
      INTSTAT  at 16#204# range 0 .. 31;
      INTCLR   at 16#208# range 0 .. 31;
      INTSET   at 16#20C# range 0 .. 31;
   end record;

   --  MCU Reset Generator
   RSTGEN_Periph : aliased RSTGEN_Peripheral
     with Import, Address => RSTGEN_Base;

end NRF_SVD.RSTGEN;
