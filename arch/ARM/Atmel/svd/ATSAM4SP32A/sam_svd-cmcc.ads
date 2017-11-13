--  This spec has been automatically generated from ATSAM4SP32A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Cortex M Cache Controller
package SAM_SVD.CMCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Number of Way
   type TYPE_WAYNUM_Field is
     (
      --  Direct Mapped Cache
      Dmapped,
      --  2-WAY set associative
      Arch2Way,
      --  4-WAY set associative
      Arch4Way,
      --  8-WAY set associative
      Arch8Way)
     with Size => 2;
   for TYPE_WAYNUM_Field use
     (Dmapped => 0,
      Arch2Way => 1,
      Arch4Way => 2,
      Arch8Way => 3);

   --  Cache Size
   type TYPE_CSIZE_Field is
     (
      --  Cache Size 1 Kbytes
      Csize_1Kb,
      --  Cache Size 2 Kbytes
      Csize_2Kb,
      --  Cache Size 4 Kbytes
      Csize_4Kb,
      --  Cache Size 8 Kbytes
      Csize_8Kb)
     with Size => 3;
   for TYPE_CSIZE_Field use
     (Csize_1Kb => 0,
      Csize_2Kb => 1,
      Csize_4Kb => 2,
      Csize_8Kb => 3);

   --  Cache Size
   type TYPE_CLSIZE_Field is
     (
      --  4 bytes
      Clsize_1Kb,
      --  8 bytes
      Clsize_2Kb,
      --  16 bytes
      Clsize_4Kb,
      --  32 bytes
      Clsize_8Kb)
     with Size => 3;
   for TYPE_CLSIZE_Field use
     (Clsize_1Kb => 0,
      Clsize_2Kb => 1,
      Clsize_4Kb => 2,
      Clsize_8Kb => 3);

   --  Cache Type Register
   type CMCC_TYPE_Register is record
      --  Read-only. Access Port Access Allowed
      AP             : Boolean;
      --  Read-only. Dynamic Clock Gating Supported
      GCLK           : Boolean;
      --  Read-only. Random Selection Policy Supported
      RANDP          : Boolean;
      --  Read-only. Least Recently Used Policy Supported
      LRUP           : Boolean;
      --  Read-only. Random Selection Policy Supported
      RRP            : Boolean;
      --  Read-only. Number of Way
      WAYNUM         : TYPE_WAYNUM_Field;
      --  Read-only. Lock Down Supported
      LCKDOWN        : Boolean;
      --  Read-only. Cache Size
      CSIZE          : TYPE_CSIZE_Field;
      --  Read-only. Cache Size
      CLSIZE         : TYPE_CLSIZE_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_TYPE_Register use record
      AP             at 0 range 0 .. 0;
      GCLK           at 0 range 1 .. 1;
      RANDP          at 0 range 2 .. 2;
      LRUP           at 0 range 3 .. 3;
      RRP            at 0 range 4 .. 4;
      WAYNUM         at 0 range 5 .. 6;
      LCKDOWN        at 0 range 7 .. 7;
      CSIZE          at 0 range 8 .. 10;
      CLSIZE         at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Cache Configuration Register
   type CMCC_CFG_Register is record
      --  Disable Clock Gating
      GCLKDIS       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_CFG_Register use record
      GCLKDIS       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Control Register
   type CMCC_CTRL_Register is record
      --  Write-only. Cache Controller Enable
      CEN           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_CTRL_Register use record
      CEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Status Register
   type CMCC_SR_Register is record
      --  Read-only. Cache Controller Status
      CSTS          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_SR_Register use record
      CSTS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Maintenance Register 0
   type CMCC_MAINT0_Register is record
      --  Write-only. Cache Controller Invalidate All
      INVALL        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MAINT0_Register use record
      INVALL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_MAINT1_INDEX_Field is HAL.UInt5;

   --  Invalidate Way
   type MAINT1_WAY_Field is
     (
      --  Way 0 is selection for index invalidation
      Way0,
      --  Way 1 is selection for index invalidation
      Way1,
      --  Way 2 is selection for index invalidation
      Way2,
      --  Way 3 is selection for index invalidation
      Way3)
     with Size => 2;
   for MAINT1_WAY_Field use
     (Way0 => 0,
      Way1 => 1,
      Way2 => 2,
      Way3 => 3);

   --  Cache Maintenance Register 1
   type CMCC_MAINT1_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Write-only. Invalidate Index
      INDEX         : CMCC_MAINT1_INDEX_Field := 16#0#;
      --  unspecified
      Reserved_9_29 : HAL.UInt21 := 16#0#;
      --  Write-only. Invalidate Way
      WAY           : MAINT1_WAY_Field := SAM_SVD.CMCC.Way0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MAINT1_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      INDEX         at 0 range 4 .. 8;
      Reserved_9_29 at 0 range 9 .. 29;
      WAY           at 0 range 30 .. 31;
   end record;

   --  Cache Controller Monitor Counter Mode
   type MCFG_MODE_Field is
     (
      --  Cycle counter
      Cycle_Count,
      --  Instruction hit counter
      Ihit_Count,
      --  Data hit counter
      Dhit_Count)
     with Size => 2;
   for MCFG_MODE_Field use
     (Cycle_Count => 0,
      Ihit_Count => 1,
      Dhit_Count => 2);

   --  Cache Monitor Configuration Register
   type CMCC_MCFG_Register is record
      --  Cache Controller Monitor Counter Mode
      MODE          : MCFG_MODE_Field := SAM_SVD.CMCC.Cycle_Count;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MCFG_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Cache Monitor Enable Register
   type CMCC_MEN_Register is record
      --  Cache Controller Monitor Enable
      MENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MEN_Register use record
      MENABLE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cache Monitor Control Register
   type CMCC_MCTRL_Register is record
      --  Write-only. Monitor
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MCTRL_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex M Cache Controller
   type CMCC_Peripheral is record
      --  Cache Type Register
      TYPE_k : aliased CMCC_TYPE_Register;
      --  Cache Configuration Register
      CFG    : aliased CMCC_CFG_Register;
      --  Cache Control Register
      CTRL   : aliased CMCC_CTRL_Register;
      --  Cache Status Register
      SR     : aliased CMCC_SR_Register;
      --  Cache Maintenance Register 0
      MAINT0 : aliased CMCC_MAINT0_Register;
      --  Cache Maintenance Register 1
      MAINT1 : aliased CMCC_MAINT1_Register;
      --  Cache Monitor Configuration Register
      MCFG   : aliased CMCC_MCFG_Register;
      --  Cache Monitor Enable Register
      MEN    : aliased CMCC_MEN_Register;
      --  Cache Monitor Control Register
      MCTRL  : aliased CMCC_MCTRL_Register;
      --  Cache Monitor Status Register
      MSR    : aliased HAL.UInt32;
   end record
     with Volatile;

   for CMCC_Peripheral use record
      TYPE_k at 16#0# range 0 .. 31;
      CFG    at 16#4# range 0 .. 31;
      CTRL   at 16#8# range 0 .. 31;
      SR     at 16#C# range 0 .. 31;
      MAINT0 at 16#20# range 0 .. 31;
      MAINT1 at 16#24# range 0 .. 31;
      MCFG   at 16#28# range 0 .. 31;
      MEN    at 16#2C# range 0 .. 31;
      MCTRL  at 16#30# range 0 .. 31;
      MSR    at 16#34# range 0 .. 31;
   end record;

   --  Cortex M Cache Controller
   CMCC_Periph : aliased CMCC_Peripheral
     with Import, Address => CMCC_Base;

end SAM_SVD.CMCC;
