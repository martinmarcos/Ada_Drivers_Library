--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.EFUSE_MISC_REGS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  All individual software controllable resets. 0: Reset the selected
   --  function. 1: Normal operation.
   type EFUSE_GLOBAL_RESET_Register is record
      --  Global Reset
      GLOBAL_RSTN  : Boolean := True;
      --  EFUSE 1 Reset
      EFUSE_1_RSTN : Boolean := True;
      --  EFUSE 2 Reset
      EFUSE_2_RSTN : Boolean := True;
      --  EFUSE 3 Reset
      EFUSE_3_RSTN : Boolean := True;
      --  EFUSE 4 Reset
      EFUSE_4_RSTN : Boolean := True;
      --  EFUSE 5 Reset
      EFUSE_5_RSTN : Boolean := True;
      --  EFUSE 6 Reset
      EFUSE_6_RSTN : Boolean := True;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EFUSE_GLOBAL_RESET_Register use record
      GLOBAL_RSTN  at 0 range 0 .. 0;
      EFUSE_1_RSTN at 0 range 1 .. 1;
      EFUSE_2_RSTN at 0 range 2 .. 2;
      EFUSE_3_RSTN at 0 range 3 .. 3;
      EFUSE_4_RSTN at 0 range 4 .. 4;
      EFUSE_5_RSTN at 0 range 5 .. 5;
      EFUSE_6_RSTN at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype EFUSE_1_CONTROL_FIRST_READ_COUNT_Field is HAL.UInt9;
   subtype EFUSE_1_CONTROL_FIRST_PROG_COUNT_Field is HAL.UInt4;
   subtype EFUSE_1_CONTROL_PROG_CLK_H_COUNT_Field is HAL.UInt9;
   subtype EFUSE_1_CONTROL_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  EFUSE 1 Control Register
   type EFUSE_1_CONTROL_Register is record
      --  Efuse Control Force Load
      FORCE_LOAD       : Boolean := False;
      --  When set to 1 will start programming EFUSE
      START_PROGRAM    : Boolean := False;
      --  First Read Count
      FIRST_READ_COUNT : EFUSE_1_CONTROL_FIRST_READ_COUNT_Field := 16#FF#;
      --  First Program Count
      FIRST_PROG_COUNT : EFUSE_1_CONTROL_FIRST_PROG_COUNT_Field := 16#0#;
      --  First Clock High Count
      PROG_CLK_H_COUNT : EFUSE_1_CONTROL_PROG_CLK_H_COUNT_Field := 16#0#;
      --  EFUSE Debug Bus Selection
      DEBUG_BUS_SEL    : EFUSE_1_CONTROL_DEBUG_BUS_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  Read-only. Efuse Load Done Indication
      EFUSE_LOAD_DONE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_1_CONTROL_Register use record
      FORCE_LOAD       at 0 range 0 .. 0;
      START_PROGRAM    at 0 range 1 .. 1;
      FIRST_READ_COUNT at 0 range 2 .. 10;
      FIRST_PROG_COUNT at 0 range 11 .. 14;
      PROG_CLK_H_COUNT at 0 range 15 .. 23;
      DEBUG_BUS_SEL    at 0 range 24 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      EFUSE_LOAD_DONE  at 0 range 31 .. 31;
   end record;

   subtype EFUSE_2_CONTROL_FIRST_READ_COUNT_Field is HAL.UInt9;
   subtype EFUSE_2_CONTROL_FIRST_PROG_COUNT_Field is HAL.UInt4;
   subtype EFUSE_2_CONTROL_PROG_CLK_H_COUNT_Field is HAL.UInt9;
   subtype EFUSE_2_CONTROL_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  EFUSE 2 Control Register
   type EFUSE_2_CONTROL_Register is record
      --  Efuse Control Force Load
      FORCE_LOAD       : Boolean := False;
      --  When set to 1 will start programming EFUSE
      START_PROGRAM    : Boolean := False;
      --  First Read Count
      FIRST_READ_COUNT : EFUSE_2_CONTROL_FIRST_READ_COUNT_Field := 16#FF#;
      --  First Program Count
      FIRST_PROG_COUNT : EFUSE_2_CONTROL_FIRST_PROG_COUNT_Field := 16#0#;
      --  First Clock High Count
      PROG_CLK_H_COUNT : EFUSE_2_CONTROL_PROG_CLK_H_COUNT_Field := 16#0#;
      --  EFUSE Debug Bus Selection
      DEBUG_BUS_SEL    : EFUSE_2_CONTROL_DEBUG_BUS_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  Read-only. Efuse Load Done Indication
      EFUSE_LOAD_DONE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_2_CONTROL_Register use record
      FORCE_LOAD       at 0 range 0 .. 0;
      START_PROGRAM    at 0 range 1 .. 1;
      FIRST_READ_COUNT at 0 range 2 .. 10;
      FIRST_PROG_COUNT at 0 range 11 .. 14;
      PROG_CLK_H_COUNT at 0 range 15 .. 23;
      DEBUG_BUS_SEL    at 0 range 24 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      EFUSE_LOAD_DONE  at 0 range 31 .. 31;
   end record;

   subtype EFUSE_3_CONTROL_FIRST_READ_COUNT_Field is HAL.UInt9;
   subtype EFUSE_3_CONTROL_FIRST_PROG_COUNT_Field is HAL.UInt4;
   subtype EFUSE_3_CONTROL_PROG_CLK_H_COUNT_Field is HAL.UInt9;
   subtype EFUSE_3_CONTROL_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  EFUSE 3 Control Register
   type EFUSE_3_CONTROL_Register is record
      --  Efuse Control Force Load
      FORCE_LOAD       : Boolean := False;
      --  When set to 1 will start programming EFUSE
      START_PROGRAM    : Boolean := False;
      --  First Read Count
      FIRST_READ_COUNT : EFUSE_3_CONTROL_FIRST_READ_COUNT_Field := 16#FF#;
      --  First Program Count
      FIRST_PROG_COUNT : EFUSE_3_CONTROL_FIRST_PROG_COUNT_Field := 16#0#;
      --  First Clock High Count
      PROG_CLK_H_COUNT : EFUSE_3_CONTROL_PROG_CLK_H_COUNT_Field := 16#0#;
      --  EFUSE Debug Bus Selection
      DEBUG_BUS_SEL    : EFUSE_3_CONTROL_DEBUG_BUS_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  Read-only. Efuse Load Done Indication
      EFUSE_LOAD_DONE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_3_CONTROL_Register use record
      FORCE_LOAD       at 0 range 0 .. 0;
      START_PROGRAM    at 0 range 1 .. 1;
      FIRST_READ_COUNT at 0 range 2 .. 10;
      FIRST_PROG_COUNT at 0 range 11 .. 14;
      PROG_CLK_H_COUNT at 0 range 15 .. 23;
      DEBUG_BUS_SEL    at 0 range 24 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      EFUSE_LOAD_DONE  at 0 range 31 .. 31;
   end record;

   subtype EFUSE_4_CONTROL_FIRST_READ_COUNT_Field is HAL.UInt9;
   subtype EFUSE_4_CONTROL_FIRST_PROG_COUNT_Field is HAL.UInt4;
   subtype EFUSE_4_CONTROL_PROG_CLK_H_COUNT_Field is HAL.UInt9;
   subtype EFUSE_4_CONTROL_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  EFUSE 4 Control Register
   type EFUSE_4_CONTROL_Register is record
      --  Efuse Control Force Load
      FORCE_LOAD       : Boolean := False;
      --  When set to 1 will start programming EFUSE
      START_PROGRAM    : Boolean := False;
      --  First Read Count
      FIRST_READ_COUNT : EFUSE_4_CONTROL_FIRST_READ_COUNT_Field := 16#FF#;
      --  First Program Count
      FIRST_PROG_COUNT : EFUSE_4_CONTROL_FIRST_PROG_COUNT_Field := 16#0#;
      --  First Clock High Count
      PROG_CLK_H_COUNT : EFUSE_4_CONTROL_PROG_CLK_H_COUNT_Field := 16#0#;
      --  EFUSE Debug Bus Selection
      DEBUG_BUS_SEL    : EFUSE_4_CONTROL_DEBUG_BUS_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  Read-only. Efuse Load Done Indication
      EFUSE_LOAD_DONE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_4_CONTROL_Register use record
      FORCE_LOAD       at 0 range 0 .. 0;
      START_PROGRAM    at 0 range 1 .. 1;
      FIRST_READ_COUNT at 0 range 2 .. 10;
      FIRST_PROG_COUNT at 0 range 11 .. 14;
      PROG_CLK_H_COUNT at 0 range 15 .. 23;
      DEBUG_BUS_SEL    at 0 range 24 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      EFUSE_LOAD_DONE  at 0 range 31 .. 31;
   end record;

   subtype EFUSE_5_CONTROL_FIRST_READ_COUNT_Field is HAL.UInt9;
   subtype EFUSE_5_CONTROL_FIRST_PROG_COUNT_Field is HAL.UInt4;
   subtype EFUSE_5_CONTROL_PROG_CLK_H_COUNT_Field is HAL.UInt9;
   subtype EFUSE_5_CONTROL_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  EFUSE 5 Control Register
   type EFUSE_5_CONTROL_Register is record
      --  Efuse Control Force Load
      FORCE_LOAD       : Boolean := False;
      --  When set to 1 will start programming EFUSE
      START_PROGRAM    : Boolean := False;
      --  First Read Count
      FIRST_READ_COUNT : EFUSE_5_CONTROL_FIRST_READ_COUNT_Field := 16#FF#;
      --  First Program Count
      FIRST_PROG_COUNT : EFUSE_5_CONTROL_FIRST_PROG_COUNT_Field := 16#0#;
      --  First Clock High Count
      PROG_CLK_H_COUNT : EFUSE_5_CONTROL_PROG_CLK_H_COUNT_Field := 16#0#;
      --  EFUSE Debug Bus Selection
      DEBUG_BUS_SEL    : EFUSE_5_CONTROL_DEBUG_BUS_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  Read-only. Efuse Load Done Indication
      EFUSE_LOAD_DONE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_5_CONTROL_Register use record
      FORCE_LOAD       at 0 range 0 .. 0;
      START_PROGRAM    at 0 range 1 .. 1;
      FIRST_READ_COUNT at 0 range 2 .. 10;
      FIRST_PROG_COUNT at 0 range 11 .. 14;
      PROG_CLK_H_COUNT at 0 range 15 .. 23;
      DEBUG_BUS_SEL    at 0 range 24 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      EFUSE_LOAD_DONE  at 0 range 31 .. 31;
   end record;

   subtype EFUSE_6_CONTROL_FIRST_READ_COUNT_Field is HAL.UInt9;
   subtype EFUSE_6_CONTROL_FIRST_PROG_COUNT_Field is HAL.UInt4;
   subtype EFUSE_6_CONTROL_PROG_CLK_H_COUNT_Field is HAL.UInt9;
   subtype EFUSE_6_CONTROL_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  EFUSE 6 Control Register
   type EFUSE_6_CONTROL_Register is record
      --  Efuse Control Force Load
      FORCE_LOAD       : Boolean := False;
      --  When set to 1 will start programming EFUSE
      START_PROGRAM    : Boolean := False;
      --  First Read Count
      FIRST_READ_COUNT : EFUSE_6_CONTROL_FIRST_READ_COUNT_Field := 16#FF#;
      --  First Program Count
      FIRST_PROG_COUNT : EFUSE_6_CONTROL_FIRST_PROG_COUNT_Field := 16#0#;
      --  First Clock High Count
      PROG_CLK_H_COUNT : EFUSE_6_CONTROL_PROG_CLK_H_COUNT_Field := 16#0#;
      --  EFUSE Debug Bus Selection
      DEBUG_BUS_SEL    : EFUSE_6_CONTROL_DEBUG_BUS_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  Read-only. Efuse Load Done Indication
      EFUSE_LOAD_DONE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_6_CONTROL_Register use record
      FORCE_LOAD       at 0 range 0 .. 0;
      START_PROGRAM    at 0 range 1 .. 1;
      FIRST_READ_COUNT at 0 range 2 .. 10;
      FIRST_PROG_COUNT at 0 range 11 .. 14;
      PROG_CLK_H_COUNT at 0 range 15 .. 23;
      DEBUG_BUS_SEL    at 0 range 24 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      EFUSE_LOAD_DONE  at 0 range 31 .. 31;
   end record;

   --  EFUSE 6 Control Register
   type EFUSE_MISC_CTRL_Register is record
      --  Read-only. Read back the status of the eFuse out of reset
      OUT_OF_RESET : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EFUSE_MISC_CTRL_Register use record
      OUT_OF_RESET at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EFUSE Misc Registers
   type EFUSE_MISC_REGS0_Peripheral is record
      --  All individual software controllable resets. 0: Reset the selected
      --  function. 1: Normal operation.
      EFUSE_GLOBAL_RESET : aliased EFUSE_GLOBAL_RESET_Register;
      --  EFUSE 1 Control Register
      EFUSE_1_CONTROL    : aliased EFUSE_1_CONTROL_Register;
      --  EFUSE 2 Control Register
      EFUSE_2_CONTROL    : aliased EFUSE_2_CONTROL_Register;
      --  EFUSE 3 Control Register
      EFUSE_3_CONTROL    : aliased EFUSE_3_CONTROL_Register;
      --  EFUSE 4 Control Register
      EFUSE_4_CONTROL    : aliased EFUSE_4_CONTROL_Register;
      --  EFUSE 5 Control Register
      EFUSE_5_CONTROL    : aliased EFUSE_5_CONTROL_Register;
      --  EFUSE 6 Control Register
      EFUSE_6_CONTROL    : aliased EFUSE_6_CONTROL_Register;
      --  EFUSE_1_0 Program Register
      EFUSE_1_PROG_0     : aliased HAL.UInt32;
      --  EFUSE_1_1 Program Register
      EFUSE_1_PROG_1     : aliased HAL.UInt32;
      --  EFUSE_1_2 Program Register
      EFUSE_1_PROG_2     : aliased HAL.UInt32;
      --  EFUSE_1_3 Program Register
      EFUSE_1_PROG_3     : aliased HAL.UInt32;
      --  EFUSE_1_0 Status
      EFUSE_1_STATUS_0   : aliased HAL.UInt32;
      --  EFUSE_1_1 Status
      EFUSE_1_STATUS_1   : aliased HAL.UInt32;
      --  EFUSE_1_2 Status
      EFUSE_1_STATUS_2   : aliased HAL.UInt32;
      --  EFUSE_1_3 Status
      EFUSE_1_STATUS_3   : aliased HAL.UInt32;
      --  EFUSE_2_0 Program Register
      EFUSE_2_PROG_0     : aliased HAL.UInt32;
      --  EFUSE_2_1 Program Register
      EFUSE_2_PROG_1     : aliased HAL.UInt32;
      --  EFUSE_2_2 Program Register
      EFUSE_2_PROG_2     : aliased HAL.UInt32;
      --  EFUSE_2_3 Program Register
      EFUSE_2_PROG_3     : aliased HAL.UInt32;
      --  EFUSE_2_0 Status
      EFUSE_2_STATUS_0   : aliased HAL.UInt32;
      --  EFUSE_2_1 Status
      EFUSE_2_STATUS_1   : aliased HAL.UInt32;
      --  EFUSE_2_2 Status
      EFUSE_2_STATUS_2   : aliased HAL.UInt32;
      --  EFUSE_2_3 Status
      EFUSE_2_STATUS_3   : aliased HAL.UInt32;
      --  EFUSE_3_0 Program Register
      EFUSE_3_PROG_0     : aliased HAL.UInt32;
      --  EFUSE_3_1 Program Register
      EFUSE_3_PROG_1     : aliased HAL.UInt32;
      --  EFUSE_3_2 Program Register
      EFUSE_3_PROG_2     : aliased HAL.UInt32;
      --  EFUSE_3_3 Program Register
      EFUSE_3_PROG_3     : aliased HAL.UInt32;
      --  EFUSE_3_0 Status
      EFUSE_3_STATUS_0   : aliased HAL.UInt32;
      --  EFUSE_3_1 Status
      EFUSE_3_STATUS_1   : aliased HAL.UInt32;
      --  EFUSE_3_2 Status
      EFUSE_3_STATUS_2   : aliased HAL.UInt32;
      --  EFUSE_3_3 Status
      EFUSE_3_STATUS_3   : aliased HAL.UInt32;
      --  EFUSE_4_0 Program Register
      EFUSE_4_PROG_0     : aliased HAL.UInt32;
      --  EFUSE_4_1 Program Register
      EFUSE_4_PROG_1     : aliased HAL.UInt32;
      --  EFUSE_4_2 Program Register
      EFUSE_4_PROG_2     : aliased HAL.UInt32;
      --  EFUSE_4_3 Program Register
      EFUSE_4_PROG_3     : aliased HAL.UInt32;
      --  EFUSE_4_0 Status
      EFUSE_4_STATUS_0   : aliased HAL.UInt32;
      --  EFUSE_4_1 Status
      EFUSE_4_STATUS_1   : aliased HAL.UInt32;
      --  EFUSE_4_2 Status
      EFUSE_4_STATUS_2   : aliased HAL.UInt32;
      --  EFUSE_4_3 Status
      EFUSE_4_STATUS_3   : aliased HAL.UInt32;
      --  EFUSE_4_0 Program Register
      EFUSE_5_PROG_0     : aliased HAL.UInt32;
      --  EFUSE_5_1 Program Register
      EFUSE_5_PROG_1     : aliased HAL.UInt32;
      --  EFUSE_5_2 Program Register
      EFUSE_5_PROG_2     : aliased HAL.UInt32;
      --  EFUSE_5_3 Program Register
      EFUSE_5_PROG_3     : aliased HAL.UInt32;
      --  EFUSE_5_0 Status
      EFUSE_5_STATUS_0   : aliased HAL.UInt32;
      --  EFUSE_5_1 Status
      EFUSE_5_STATUS_1   : aliased HAL.UInt32;
      --  EFUSE_5_2 Status
      EFUSE_5_STATUS_2   : aliased HAL.UInt32;
      --  EFUSE_5_3 Status
      EFUSE_5_STATUS_3   : aliased HAL.UInt32;
      --  EFUSE_6_0 Program Register
      EFUSE_6_PROG_0     : aliased HAL.UInt32;
      --  EFUSE_6_1 Program Register
      EFUSE_6_PROG_1     : aliased HAL.UInt32;
      --  EFUSE_6_2 Program Register
      EFUSE_6_PROG_2     : aliased HAL.UInt32;
      --  EFUSE_6_3 Program Register
      EFUSE_6_PROG_3     : aliased HAL.UInt32;
      --  EFUSE_6_0 Status
      EFUSE_6_STATUS_0   : aliased HAL.UInt32;
      --  EFUSE_6_1 Status
      EFUSE_6_STATUS_1   : aliased HAL.UInt32;
      --  EFUSE_6_2 Status
      EFUSE_6_STATUS_2   : aliased HAL.UInt32;
      --  EFUSE_6_3 Status
      EFUSE_6_STATUS_3   : aliased HAL.UInt32;
      --  EFUSE 6 Control Register
      EFUSE_MISC_CTRL    : aliased EFUSE_MISC_CTRL_Register;
   end record
     with Volatile;

   for EFUSE_MISC_REGS0_Peripheral use record
      EFUSE_GLOBAL_RESET at 16#0# range 0 .. 7;
      EFUSE_1_CONTROL    at 16#4# range 0 .. 31;
      EFUSE_2_CONTROL    at 16#8# range 0 .. 31;
      EFUSE_3_CONTROL    at 16#C# range 0 .. 31;
      EFUSE_4_CONTROL    at 16#10# range 0 .. 31;
      EFUSE_5_CONTROL    at 16#14# range 0 .. 31;
      EFUSE_6_CONTROL    at 16#18# range 0 .. 31;
      EFUSE_1_PROG_0     at 16#1C# range 0 .. 31;
      EFUSE_1_PROG_1     at 16#20# range 0 .. 31;
      EFUSE_1_PROG_2     at 16#24# range 0 .. 31;
      EFUSE_1_PROG_3     at 16#28# range 0 .. 31;
      EFUSE_1_STATUS_0   at 16#2C# range 0 .. 31;
      EFUSE_1_STATUS_1   at 16#30# range 0 .. 31;
      EFUSE_1_STATUS_2   at 16#34# range 0 .. 31;
      EFUSE_1_STATUS_3   at 16#38# range 0 .. 31;
      EFUSE_2_PROG_0     at 16#3C# range 0 .. 31;
      EFUSE_2_PROG_1     at 16#40# range 0 .. 31;
      EFUSE_2_PROG_2     at 16#44# range 0 .. 31;
      EFUSE_2_PROG_3     at 16#48# range 0 .. 31;
      EFUSE_2_STATUS_0   at 16#4C# range 0 .. 31;
      EFUSE_2_STATUS_1   at 16#50# range 0 .. 31;
      EFUSE_2_STATUS_2   at 16#54# range 0 .. 31;
      EFUSE_2_STATUS_3   at 16#58# range 0 .. 31;
      EFUSE_3_PROG_0     at 16#5C# range 0 .. 31;
      EFUSE_3_PROG_1     at 16#60# range 0 .. 31;
      EFUSE_3_PROG_2     at 16#64# range 0 .. 31;
      EFUSE_3_PROG_3     at 16#68# range 0 .. 31;
      EFUSE_3_STATUS_0   at 16#6C# range 0 .. 31;
      EFUSE_3_STATUS_1   at 16#70# range 0 .. 31;
      EFUSE_3_STATUS_2   at 16#74# range 0 .. 31;
      EFUSE_3_STATUS_3   at 16#78# range 0 .. 31;
      EFUSE_4_PROG_0     at 16#7C# range 0 .. 31;
      EFUSE_4_PROG_1     at 16#80# range 0 .. 31;
      EFUSE_4_PROG_2     at 16#84# range 0 .. 31;
      EFUSE_4_PROG_3     at 16#88# range 0 .. 31;
      EFUSE_4_STATUS_0   at 16#8C# range 0 .. 31;
      EFUSE_4_STATUS_1   at 16#90# range 0 .. 31;
      EFUSE_4_STATUS_2   at 16#94# range 0 .. 31;
      EFUSE_4_STATUS_3   at 16#98# range 0 .. 31;
      EFUSE_5_PROG_0     at 16#9C# range 0 .. 31;
      EFUSE_5_PROG_1     at 16#A0# range 0 .. 31;
      EFUSE_5_PROG_2     at 16#A4# range 0 .. 31;
      EFUSE_5_PROG_3     at 16#A8# range 0 .. 31;
      EFUSE_5_STATUS_0   at 16#AC# range 0 .. 31;
      EFUSE_5_STATUS_1   at 16#B0# range 0 .. 31;
      EFUSE_5_STATUS_2   at 16#B4# range 0 .. 31;
      EFUSE_5_STATUS_3   at 16#B8# range 0 .. 31;
      EFUSE_6_PROG_0     at 16#BC# range 0 .. 31;
      EFUSE_6_PROG_1     at 16#C0# range 0 .. 31;
      EFUSE_6_PROG_2     at 16#C4# range 0 .. 31;
      EFUSE_6_PROG_3     at 16#C8# range 0 .. 31;
      EFUSE_6_STATUS_0   at 16#CC# range 0 .. 31;
      EFUSE_6_STATUS_1   at 16#D0# range 0 .. 31;
      EFUSE_6_STATUS_2   at 16#D4# range 0 .. 31;
      EFUSE_6_STATUS_3   at 16#D8# range 0 .. 31;
      EFUSE_MISC_CTRL    at 16#DC# range 0 .. 7;
   end record;

   --  EFUSE Misc Registers
   EFUSE_MISC_REGS0_Periph : aliased EFUSE_MISC_REGS0_Peripheral
     with Import, Address => System'To_Address (16#4000A000#);

end SAM_SVD.EFUSE_MISC_REGS;
