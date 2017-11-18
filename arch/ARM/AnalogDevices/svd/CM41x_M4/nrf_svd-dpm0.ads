--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DPM0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type CTL_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  Deep Sleep
      DEEPSLEEP     : Boolean := False;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      DEEPSLEEP     at 0 range 3 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype STAT_CURMODE_Field is HAL.UInt4;
   subtype STAT_PRVMODE_Field is HAL.UInt4;

   --  Status Register
   type STAT_Register is record
      --  Read-only. Current Mode
      CURMODE        : STAT_CURMODE_Field := 16#1#;
      --  Read-only. Previous Mode
      PRVMODE        : STAT_PRVMODE_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Read-only. HV Busy
      HVBSY          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Address Error
      ADDRERR        : Boolean := False;
      --  Lock Write Error
      LWERR          : Boolean := False;
      --  HV Busy Error
      HVBSYERR       : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      CURMODE        at 0 range 0 .. 3;
      PRVMODE        at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      HVBSY          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      ADDRERR        at 0 range 16 .. 16;
      LWERR          at 0 range 17 .. 17;
      HVBSYERR       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype WAKE_EN_WSn_Field is HAL.UInt5;

   --  Wakeup Enable Register
   type WAKE_EN_Register is record
      --  Wakeup Source n Enable
      WSn           : WAKE_EN_WSn_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAKE_EN_Register use record
      WSn           at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype WAKE_POL_WSn_Field is HAL.UInt5;

   --  Wakeup Polarity Register
   type WAKE_POL_Register is record
      --  Wakeup Source n Polarity
      WSn           : WAKE_POL_WSn_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAKE_POL_Register use record
      WSn           at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype WAKE_STAT_WSn_Field is HAL.UInt5;

   --  Wakeup Status Register
   type WAKE_STAT_Register is record
      --  Wakeup Source n Status
      WSn           : WAKE_STAT_WSn_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAKE_STAT_Register use record
      WSn           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Peripherals Disable Register 0
   type PER_DIS0_Register is record
      --  Peripheral Disable
      VALUE         : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Lock Bit
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER_DIS0_Register use record
      VALUE         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype REVID_REV_Field is HAL.UInt4;
   subtype REVID_MAJOR_Field is HAL.UInt4;

   --  Revision ID
   type REVID_Register is record
      --  Read-only. Incremental Version ID
      REV           : REVID_REV_Field;
      --  Read-only. Major Version ID
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

   --  Dynamic Power Management
   type DPM0_Peripheral is record
      --  Control Register
      CTL       : aliased CTL_Register;
      --  Status Register
      STAT      : aliased STAT_Register;
      --  Wakeup Enable Register
      WAKE_EN   : aliased WAKE_EN_Register;
      --  Wakeup Polarity Register
      WAKE_POL  : aliased WAKE_POL_Register;
      --  Wakeup Status Register
      WAKE_STAT : aliased WAKE_STAT_Register;
      --  Peripherals Disable Register 0
      PER_DIS0  : aliased PER_DIS0_Register;
      --  Revision ID
      REVID     : aliased REVID_Register;
   end record
     with Volatile;

   for DPM0_Peripheral use record
      CTL       at 16#0# range 0 .. 31;
      STAT      at 16#4# range 0 .. 31;
      WAKE_EN   at 16#1C# range 0 .. 31;
      WAKE_POL  at 16#20# range 0 .. 31;
      WAKE_STAT at 16#24# range 0 .. 31;
      PER_DIS0  at 16#70# range 0 .. 31;
      REVID     at 16#84# range 0 .. 31;
   end record;

   --  Dynamic Power Management
   DPM0_Periph : aliased DPM0_Peripheral
     with Import, Address => System'To_Address (16#40013000#);

end NRF_SVD.DPM0;
