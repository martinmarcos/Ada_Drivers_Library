--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FRT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CON_FPRS_Field is HAL.UInt3;

   --  FRT Control Register
   type CON_Register is record
      --  FRT counter enable
      FEN            : Boolean := False;
      --  FRT free-run mode/periodic mode
      FAC            : Boolean := False;
      --  FRT Overflow interrupt
      FOIE           : Boolean := False;
      --  FRT match interrupt enable
      FMIE           : Boolean := False;
      --  FRT clock div
      FPRS           : CON_FPRS_Field := 16#0#;
      --  FRT Select a clock source
      FEC            : Boolean := False;
      --  FRT Overflow event has occurred
      FOF            : Boolean := False;
      --  FRT Match event has occurred
      FMF            : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      FEN            at 0 range 0 .. 0;
      FAC            at 0 range 1 .. 1;
      FOIE           at 0 range 2 .. 2;
      FMIE           at 0 range 3 .. 3;
      FPRS           at 0 range 4 .. 6;
      FEC            at 0 range 7 .. 7;
      FOF            at 0 range 8 .. 8;
      FMF            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Free-Run Timer
   type FRT_Peripheral is record
      --  FRT Period Register
      PRD : aliased HAL.UInt32;
      --  FRT Count Register
      CNT : aliased HAL.UInt32;
      --  FRT Control Register
      CON : aliased CON_Register;
   end record
     with Volatile;

   for FRT_Peripheral use record
      PRD at 16#0# range 0 .. 31;
      CNT at 16#4# range 0 .. 31;
      CON at 16#8# range 0 .. 31;
   end record;

   --  Free-Run Timer
   FRT_Periph : aliased FRT_Peripheral
     with Import, Address => System'To_Address (16#40000500#);

end NRF_SVD.FRT;
