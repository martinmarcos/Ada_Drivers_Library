--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TRU1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SSR_SSR_Field is HAL.UInt7;

   --  Slave Select Register
   type SSR_Register is record
      --  SSRn Slave Select
      SSR           : SSR_SSR_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  SSRn Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSR_Register use record
      SSR           at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Slave Select Register
   type SSR_Registers is array (0 .. 134) of SSR_Register
     with Volatile;

   subtype MTR_MTR0_Field is HAL.UInt7;
   subtype MTR_MTR1_Field is HAL.UInt7;
   subtype MTR_MTR2_Field is HAL.UInt7;
   subtype MTR_MTR3_Field is HAL.UInt7;

   --  Master Trigger Register
   type MTR_Register is record
      --  Master Trigger Register 0
      MTR0           : MTR_MTR0_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Master Trigger Register 1
      MTR1           : MTR_MTR1_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Master Trigger Register 2
      MTR2           : MTR_MTR2_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Master Trigger Register 3
      MTR3           : MTR_MTR3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTR_Register use record
      MTR0           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MTR1           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MTR2           at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MTR3           at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ERRADDR_ADDR_Field is HAL.UInt12;

   --  Error Address Register
   type ERRADDR_Register is record
      --  Error Address
      ADDR           : ERRADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRADDR_Register use record
      ADDR           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Status Information Register
   type STAT_Register is record
      --  Lock Write Error Status
      LWERR         : Boolean := False;
      --  Address Error Status
      ADDRERR       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      LWERR         at 0 range 0 .. 0;
      ADDRERR       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Global Control Register
   type GCTL_Register is record
      --  Non-MMR Enable
      EN            : Boolean := False;
      --  Soft Reset
      RESET         : Boolean := False;
      --  MTR Lock Bit
      MTRL          : Boolean := False;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  GCTL Lock Bit
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCTL_Register use record
      EN            at 0 range 0 .. 0;
      RESET         at 0 range 1 .. 1;
      MTRL          at 0 range 2 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger Routing Unit
   type TRU1_Peripheral is record
      --  Slave Select Register
      SSR     : aliased SSR_Registers;
      --  Master Trigger Register
      MTR     : aliased MTR_Register;
      --  Error Address Register
      ERRADDR : aliased ERRADDR_Register;
      --  Status Information Register
      STAT    : aliased STAT_Register;
      --  Global Control Register
      GCTL    : aliased GCTL_Register;
   end record
     with Volatile;

   for TRU1_Peripheral use record
      SSR     at 16#0# range 0 .. 4319;
      MTR     at 16#7E0# range 0 .. 31;
      ERRADDR at 16#7E8# range 0 .. 31;
      STAT    at 16#7EC# range 0 .. 31;
      GCTL    at 16#7F4# range 0 .. 31;
   end record;

   --  Trigger Routing Unit
   TRU1_Periph : aliased TRU1_Peripheral
     with Import, Address => System'To_Address (16#40020000#);

end NRF_SVD.TRU1;
