--  This spec has been automatically generated from ATSAM4SA16B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Cortex-M Cache Controller
package SAM_SVD.CMCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Number of Ways
   type TYPE_WAYNUM_Field is
     (
      --  Direct Mapped Cache
      Dmapped,
      --  2-way set associative
      Arch2Way,
      --  4-way set associative
      Arch4Way,
      --  8-way set associative
      Arch8Way)
     with Size => 2;
   for TYPE_WAYNUM_Field use
     (Dmapped => 0,
      Arch2Way => 1,
      Arch4Way => 2,
      Arch8Way => 3);

   --  Data Cache Size
   type TYPE_CSIZE_Field is
     (
      --  Data cache size is 1 Kbyte
      Csize_1Kb,
      --  Data cache size is 2 Kbytes
      Csize_2Kb,
      --  Data cache size is 4 Kbytes
      Csize_4Kb,
      --  Data cache size is 8 Kbytes
      Csize_8Kb)
     with Size => 3;
   for TYPE_CSIZE_Field use
     (Csize_1Kb => 0,
      Csize_2Kb => 1,
      Csize_4Kb => 2,
      Csize_8Kb => 3);

   --  Cache LIne Size
   type TYPE_CLSIZE_Field is
     (
      --  Cache line size is 4 bytes
      Clsize_1Kb,
      --  Cache line size is 8 bytes
      Clsize_2Kb,
      --  Cache line size is 16 bytes
      Clsize_4Kb,
      --  Cache line size is 32 bytes
      Clsize_8Kb)
     with Size => 3;
   for TYPE_CLSIZE_Field use
     (Clsize_1Kb => 0,
      Clsize_2Kb => 1,
      Clsize_4Kb => 2,
      Clsize_8Kb => 3);

   --  Cache Controller Type Register
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
      --  Read-only. Number of Ways
      WAYNUM         : TYPE_WAYNUM_Field;
      --  Read-only. Lockdown Supported
      LCKDOWN        : Boolean;
      --  Read-only. Data Cache Size
      CSIZE          : TYPE_CSIZE_Field;
      --  Read-only. Cache LIne Size
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

   --  Cache Controller Configuration Register
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

   --  Cache Controller Control Register
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

   --  Cache Controller Status Register
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

   --  Cache Controller Maintenance Register 0
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

   --  Cache Controller Maintenance Register 1
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

   --  Cache Controller Monitor Configuration Register
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

   --  Cache Controller Monitor Enable Register
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

   --  Cache Controller Monitor Control Register
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

   --  Cortex-M Cache Controller
   type CMCC_Peripheral is record
      --  Cache Controller Type Register
      TYPE_k : aliased CMCC_TYPE_Register;
      --  Cache Controller Configuration Register
      CFG    : aliased CMCC_CFG_Register;
      --  Cache Controller Control Register
      CTRL   : aliased CMCC_CTRL_Register;
      --  Cache Controller Status Register
      SR     : aliased CMCC_SR_Register;
      --  Cache Controller Maintenance Register 0
      MAINT0 : aliased CMCC_MAINT0_Register;
      --  Cache Controller Maintenance Register 1
      MAINT1 : aliased CMCC_MAINT1_Register;
      --  Cache Controller Monitor Configuration Register
      MCFG   : aliased CMCC_MCFG_Register;
      --  Cache Controller Monitor Enable Register
      MEN    : aliased CMCC_MEN_Register;
      --  Cache Controller Monitor Control Register
      MCTRL  : aliased CMCC_MCTRL_Register;
      --  Cache Controller Monitor Status Register
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

   --  Cortex-M Cache Controller
   CMCC_Periph : aliased CMCC_Peripheral
     with Import, Address => CMCC_Base;

end SAM_SVD.CMCC;
