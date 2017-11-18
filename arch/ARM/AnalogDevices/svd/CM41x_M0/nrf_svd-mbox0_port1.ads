--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MBOX0_PORT1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Select ECC Map Mode
   type CTL_MAP_Field is
     (
      --  Enable ECC normal mode.
      Normal,
      --  Enable ECC Map Data Mode.
      Map_Data,
      --  Enable ECC map parity mode.
      Map_Ecc)
     with Size => 2;
   for CTL_MAP_Field use
     (Normal => 0,
      Map_Data => 2,
      Map_Ecc => 3);

   --  Port 1 Control Register
   type CTL_Register is record
      --  Enable Interrupt on ECC Error
      EERR           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Select ECC Map Mode
      MAP            : CTL_MAP_Field := NRF_SVD.MBOX0_PORT1.Normal;
      --  Enable Auto-Refresh of ECC States
      RFR            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Enable Memory Initialization
      INIT           : Boolean := False;
      --  Enable Interrupt on Memory Initialization Completion
      INITDONE       : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Enable Software Interrupt to Port 1
      SWINT          : Boolean := False;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Lock Enable
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EERR           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      MAP            at 0 range 2 .. 3;
      RFR            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      INIT           at 0 range 8 .. 8;
      INITDONE       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SWINT          at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Port 1 Force IRQ Register
   type FORCEIRQ_Register is record
      --  Initiate Software Interrupt to Port 0
      SWIRQ         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FORCEIRQ_Register use record
      SWIRQ         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Port 1 Status Register
   type STAT_Register is record
      --  Read-only. Initialization Pending Status
      INITPND       : Boolean := False;
      --  Initialization Done Interrupt Status
      INITDONE      : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Software Interrupt Status to Port 1
      SWINT         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      INITPND       at 0 range 0 .. 0;
      INITDONE      at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SWINT         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype ESTAT_EERRADDR_Field is HAL.UInt10;

   --  Port 1 ECC Status Register
   type ESTAT_Register is record
      --  ECC Multi-bit Error
      EERR           : Boolean := False;
      --  Multiple ECC Multi-bit Errors Detected
      MEERR          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Read-only. ECC Multi-bit Error Access Type
      EERRTYPE       : Boolean := False;
      --  Read-only. ECC Single Bit Error Access Type
      EWRNTYPE       : Boolean := False;
      --  unspecified
      Reserved_6_9   : HAL.UInt4 := 16#0#;
      --  Read-only. Bits [11:2] of the Address
      EERRADDR       : ESTAT_EERRADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESTAT_Register use record
      EERR           at 0 range 0 .. 0;
      MEERR          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EERRTYPE       at 0 range 4 .. 4;
      EWRNTYPE       at 0 range 5 .. 5;
      Reserved_6_9   at 0 range 6 .. 9;
      EERRADDR       at 0 range 10 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype RFRADDR_VALUE_Field is HAL.UInt10;

   --  Auto-refresh Address Register
   type RFRADDR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Auto-refresh Address Value
      VALUE          : RFRADDR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RFRADDR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      VALUE          at 0 range 2 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MBOX Port 1 register map
   type MBOX0_PORT1_Peripheral is record
      --  Port 1 Control Register
      CTL      : aliased CTL_Register;
      --  Port 1 Force IRQ Register
      FORCEIRQ : aliased FORCEIRQ_Register;
      --  Port 1 Status Register
      STAT     : aliased STAT_Register;
      --  Port 1 ECC Status Register
      ESTAT    : aliased ESTAT_Register;
      --  Auto-refresh Period Register
      RFRPER   : aliased HAL.UInt32;
      --  Auto-refresh Address Register
      RFRADDR  : aliased RFRADDR_Register;
      --  Auto-refresh Counter Register
      RFRCNT   : aliased HAL.UInt32;
   end record
     with Volatile;

   for MBOX0_PORT1_Peripheral use record
      CTL      at 16#0# range 0 .. 31;
      FORCEIRQ at 16#4# range 0 .. 31;
      STAT     at 16#8# range 0 .. 31;
      ESTAT    at 16#C# range 0 .. 31;
      RFRPER   at 16#10# range 0 .. 31;
      RFRADDR  at 16#14# range 0 .. 31;
      RFRCNT   at 16#18# range 0 .. 31;
   end record;

   --  MBOX Port 1 register map
   MBOX0_PORT1_Periph : aliased MBOX0_PORT1_Peripheral
     with Import, Address => System'To_Address (16#400D1000#);

end NRF_SVD.MBOX0_PORT1;
