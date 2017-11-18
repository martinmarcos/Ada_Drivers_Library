--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TTU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_CNTRENn_Field is HAL.UInt4;
   subtype CTL_EMURUNn_Field is HAL.UInt4;

   --  TTU Control Register
   type CTL_Register is record
      --  Enable Counter n.
      CNTRENn        : CTL_CNTRENn_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Debug Emulation Run Mode.
      EMURUNn        : CTL_EMURUNn_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Configuration Lock Bit
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      CNTRENn        at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      EMURUNn        at 0 range 16 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype REVID_REV_Field is HAL.UInt4;
   subtype REVID_MAJOR_Field is HAL.UInt4;

   --  Revision ID Register
   type REVID_Register is record
      --  Read-only. Minor Revision Level
      REV           : REVID_REV_Field;
      --  Read-only. Major Revision Level
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

   subtype STOP_STOPREQn_Field is HAL.UInt4;

   --  Counter Stop Request Register
   type STOP_Register is record
      --  Stop Counter Request
      STOPREQn      : STOP_STOPREQn_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STOP_Register use record
      STOPREQn      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype STAT_RUNn_Field is HAL.UInt4;

   --  Counter Status Register
   type STAT_Register is record
      --  Read-only. Counter Running Status
      RUNn          : STAT_RUNn_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      RUNn          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CHK_VALUE_Field is HAL.UInt24;

   --  Counter Check Register
   type CHK_Register is record
      --  Counter Check
      VALUE          : CHK_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHK_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CNT_VALUE_Field is HAL.UInt24;

   --  Counter Current Value
   type CNT_Register is record
      --  Read-only. Trigger Counter Value
      VALUE          : CNT_VALUE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Counter Current Value
   type CNT_Registers is array (0 .. 3) of CNT_Register
     with Volatile;

   subtype PER_VALUE_Field is HAL.UInt24;

   --  Counter Period Register
   type PER_Register is record
      --  Counter Period
      VALUE          : PER_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Counter Period Register
   type PER_Registers is array (0 .. 3) of PER_Register
     with Volatile;

   subtype DLY_VALUE_Field is HAL.UInt24;
   subtype DLY_DSEXT_Field is HAL.UInt7;

   --  Trigger Output Delay Register
   type DLY_Register is record
      --  Trigger output delay
      VALUE : DLY_VALUE_Field := 16#0#;
      --  Read-only. Trigger output sign extension
      DSEXT : DLY_DSEXT_Field := 16#0#;
      --  Trigger output delay sign
      DSIGN : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLY_Register use record
      VALUE at 0 range 0 .. 23;
      DSEXT at 0 range 24 .. 30;
      DSIGN at 0 range 31 .. 31;
   end record;

   --  Trigger Output Delay Register
   type DLY_Registers is array (0 .. 7) of DLY_Register
     with Volatile;

   subtype DGRP_VALUE_Field is HAL.UInt2;

   --  Trigger Output Counter Assignment
   type DGRP_Register is record
      --  Trigger Output Counter Assignment
      VALUE         : DGRP_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Enable trigger output
      TRIGEN        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DGRP_Register use record
      VALUE         at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TRIGEN        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Trigger Output Counter Assignment
   type DGRP_Registers is array (0 .. 7) of DGRP_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger Timing Unit
   type TTU0_Peripheral is record
      --  TTU Control Register
      CTL   : aliased CTL_Register;
      --  Revision ID Register
      REVID : aliased REVID_Register;
      --  Counter Stop Request Register
      STOP  : aliased STOP_Register;
      --  Counter Status Register
      STAT  : aliased STAT_Register;
      --  Counter Check Register
      CHK   : aliased CHK_Register;
      --  Counter Current Value
      CNT   : aliased CNT_Registers;
      --  Counter Period Register
      PER   : aliased PER_Registers;
      --  Trigger Output Delay Register
      DLY   : aliased DLY_Registers;
      --  Trigger Output Counter Assignment
      DGRP  : aliased DGRP_Registers;
   end record
     with Volatile;

   for TTU0_Peripheral use record
      CTL   at 16#0# range 0 .. 31;
      REVID at 16#4# range 0 .. 31;
      STOP  at 16#8# range 0 .. 31;
      STAT  at 16#C# range 0 .. 31;
      CHK   at 16#10# range 0 .. 31;
      CNT   at 16#20# range 0 .. 127;
      PER   at 16#40# range 0 .. 127;
      DLY   at 16#80# range 0 .. 255;
      DGRP  at 16#C0# range 0 .. 255;
   end record;

   --  Trigger Timing Unit
   TTU0_Periph : aliased TTU0_Peripheral
     with Import, Address => System'To_Address (16#4002C000#);

end NRF_SVD.TTU0;
