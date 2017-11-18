--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MBOX0_PORT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Port 0 Control Register
   type CTL_Register is record
      --  Enable Error Interrupt
      EERR           : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Enable Software Interrupt
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
      Reserved_1_15  at 0 range 1 .. 15;
      SWINT          at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Port 0 Force IRQ Register
   type FORCEIRQ_Register is record
      --  Initiate Software Interrupt to Port 1
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

   --  Port 0 Status Register
   type STAT_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Software Interrupt Status
      SWINT         : Boolean := False;
      --  Read-only. Port 0 Exclusive Write Status
      EXWR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SWINT         at 0 range 1 .. 1;
      EXWR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ESTAT_EERRADDR_Field is HAL.UInt10;

   --  Port 0 ECC Status Register
   type ESTAT_Register is record
      --  ECC Multi-bit Error
      EERR           : Boolean := False;
      --  Multiple ECC Multi-bit Errors Detected
      MEERR          : Boolean := False;
      --  unspecified
      Reserved_2_9   : HAL.UInt8 := 16#0#;
      --  Read-only. EEC Error Address
      EERRADDR       : ESTAT_EERRADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESTAT_Register use record
      EERR           at 0 range 0 .. 0;
      MEERR          at 0 range 1 .. 1;
      Reserved_2_9   at 0 range 2 .. 9;
      EERRADDR       at 0 range 10 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MBOX Port 0 register map
   type MBOX0_PORT0_Peripheral is record
      --  Port 0 Control Register
      CTL      : aliased CTL_Register;
      --  Port 0 Force IRQ Register
      FORCEIRQ : aliased FORCEIRQ_Register;
      --  Port 0 Status Register
      STAT     : aliased STAT_Register;
      --  Port 0 ECC Status Register
      ESTAT    : aliased ESTAT_Register;
   end record
     with Volatile;

   for MBOX0_PORT0_Peripheral use record
      CTL      at 16#0# range 0 .. 31;
      FORCEIRQ at 16#4# range 0 .. 31;
      STAT     at 16#8# range 0 .. 31;
      ESTAT    at 16#C# range 0 .. 31;
   end record;

   --  MBOX Port 0 register map
   MBOX0_PORT0_Periph : aliased MBOX0_PORT0_Peripheral
     with Import, Address => System'To_Address (16#400D0000#);

end NRF_SVD.MBOX0_PORT0;
