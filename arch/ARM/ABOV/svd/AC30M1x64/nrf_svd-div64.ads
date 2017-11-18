--

--  This spec has been automatically generated from AC30M1x64.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DIV64 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Divider Control Register
   type CR_Register is record
      --  Divide operation start command.
      START          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Start operation mode
      MODE           : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Divider operation done flag
      DONE           : Boolean := False;
      --  Divider is now under operating
      BUSY           : Boolean := False;
      --  Divide by zero flag
      I_ERROR        : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      START          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MODE           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DONE           at 0 range 8 .. 8;
      BUSY           at 0 range 9 .. 9;
      I_ERROR        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DIVIDER
   type DIV64_Peripheral is record
      --  Divider Control Register
      CR    : aliased CR_Register;
      --  AREGL (Dividend) Low 32bit Register
      AREGL : aliased HAL.UInt32;
      --  AREG (Dividend) High 32bit Register
      AREGH : aliased HAL.UInt32;
      --  BREG (Divisor) Register
      BREG  : aliased HAL.UInt32;
      --  QREG (Quotient) Low 32bit Register
      QREGL : aliased HAL.UInt32;
      --  QREG (Quotient) High 32bit Register
      QREGH : aliased HAL.UInt32;
      --  RREG (Remainter) Register
      RREG  : aliased HAL.UInt32;
   end record
     with Volatile;

   for DIV64_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      AREGL at 16#4# range 0 .. 31;
      AREGH at 16#8# range 0 .. 31;
      BREG  at 16#C# range 0 .. 31;
      QREGL at 16#10# range 0 .. 31;
      QREGH at 16#14# range 0 .. 31;
      RREG  at 16#18# range 0 .. 31;
   end record;

   --  DIVIDER
   DIV64_Periph : aliased DIV64_Peripheral
     with Import, Address => System'To_Address (16#40000500#);

end NRF_SVD.DIV64;
