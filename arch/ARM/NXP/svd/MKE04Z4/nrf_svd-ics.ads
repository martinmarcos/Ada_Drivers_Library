--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKE04Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Clock management
package NRF_SVD.ICS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Internal Reference Stop Enable
   type C1_IREFSTEN_Field is
     (
      --  Internal reference clock is disabled in Stop mode.
      C1_IREFSTEN_Field_0,
      --  Internal reference clock stays enabled in Stop mode if IRCLKEN is
      --  set, or if ICS is in FEI, FBI, or FBILP mode before entering Stop.
      C1_IREFSTEN_Field_1)
     with Size => 1;
   for C1_IREFSTEN_Field use
     (C1_IREFSTEN_Field_0 => 0,
      C1_IREFSTEN_Field_1 => 1);

   --  Internal Reference Clock Enable
   type C1_IRCLKEN_Field is
     (
      --  ICSIRCLK is inactive.
      C1_IRCLKEN_Field_0,
      --  ICSIRCLK is active.
      C1_IRCLKEN_Field_1)
     with Size => 1;
   for C1_IRCLKEN_Field use
     (C1_IRCLKEN_Field_0 => 0,
      C1_IRCLKEN_Field_1 => 1);

   --  Internal Reference Select
   type C1_IREFS_Field is
     (
      --  External reference clock is selected.
      C1_IREFS_Field_0,
      --  Internal reference clock is selected.
      C1_IREFS_Field_1)
     with Size => 1;
   for C1_IREFS_Field use
     (C1_IREFS_Field_0 => 0,
      C1_IREFS_Field_1 => 1);

   subtype ICS_C1_RDIV_Field is HAL.UInt3;

   --  Clock Source Select
   type C1_CLKS_Field is
     (
      --  Output of FLL is selected.
      C1_CLKS_Field_00,
      --  Internal reference clock is selected.
      C1_CLKS_Field_01,
      --  External reference clock is selected.
      C1_CLKS_Field_10,
      --  Reserved, defaults to 00.
      C1_CLKS_Field_11)
     with Size => 2;
   for C1_CLKS_Field use
     (C1_CLKS_Field_00 => 0,
      C1_CLKS_Field_01 => 1,
      C1_CLKS_Field_10 => 2,
      C1_CLKS_Field_11 => 3);

   --  ICS Control Register 1
   type ICS_C1_Register is record
      --  Internal Reference Stop Enable
      IREFSTEN : C1_IREFSTEN_Field := NRF_SVD.ICS.C1_IREFSTEN_Field_0;
      --  Internal Reference Clock Enable
      IRCLKEN  : C1_IRCLKEN_Field := NRF_SVD.ICS.C1_IRCLKEN_Field_0;
      --  Internal Reference Select
      IREFS    : C1_IREFS_Field := NRF_SVD.ICS.C1_IREFS_Field_1;
      --  Reference Divider
      RDIV     : ICS_C1_RDIV_Field := 16#0#;
      --  Clock Source Select
      CLKS     : C1_CLKS_Field := NRF_SVD.ICS.C1_CLKS_Field_00;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ICS_C1_Register use record
      IREFSTEN at 0 range 0 .. 0;
      IRCLKEN  at 0 range 1 .. 1;
      IREFS    at 0 range 2 .. 2;
      RDIV     at 0 range 3 .. 5;
      CLKS     at 0 range 6 .. 7;
   end record;

   --  Low Power Select
   type C2_LP_Field is
     (
      --  FLL is not disabled in bypass mode.
      C2_LP_Field_0,
      --  FLL is disabled in bypass modes unless debug is active.
      C2_LP_Field_1)
     with Size => 1;
   for C2_LP_Field use
     (C2_LP_Field_0 => 0,
      C2_LP_Field_1 => 1);

   --  Bus Frequency Divider
   type C2_BDIV_Field is
     (
      --  Encoding 0-Divides the selected clock by 1.
      C2_BDIV_Field_000,
      --  Encoding 1-Divides the selected clock by 2 (reset default).
      C2_BDIV_Field_001,
      --  Encoding 2-Divides the selected clock by 4.
      C2_BDIV_Field_010,
      --  Encoding 3-Divides the selected clock by 8.
      C2_BDIV_Field_011,
      --  Encoding 4-Divides the selected clock by 16.
      C2_BDIV_Field_100,
      --  Encoding 5-Divides the selected clock by 32.
      C2_BDIV_Field_101,
      --  Encoding 6-Divides the selected clock by 64.
      C2_BDIV_Field_110,
      --  Encoding 7-Divides the selected clock by 128.
      C2_BDIV_Field_111)
     with Size => 3;
   for C2_BDIV_Field use
     (C2_BDIV_Field_000 => 0,
      C2_BDIV_Field_001 => 1,
      C2_BDIV_Field_010 => 2,
      C2_BDIV_Field_011 => 3,
      C2_BDIV_Field_100 => 4,
      C2_BDIV_Field_101 => 5,
      C2_BDIV_Field_110 => 6,
      C2_BDIV_Field_111 => 7);

   --  ICS Control Register 2
   type ICS_C2_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Low Power Select
      LP           : C2_LP_Field := NRF_SVD.ICS.C2_LP_Field_0;
      --  Bus Frequency Divider
      BDIV         : C2_BDIV_Field := NRF_SVD.ICS.C2_BDIV_Field_001;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ICS_C2_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      LP           at 0 range 4 .. 4;
      BDIV         at 0 range 5 .. 7;
   end record;

   --  Clock Monitor Enable
   type C4_CME_Field is
     (
      --  Clock monitor is disabled.
      C4_CME_Field_0,
      --  Generates a reset request on loss of external clock.
      C4_CME_Field_1)
     with Size => 1;
   for C4_CME_Field use
     (C4_CME_Field_0 => 0,
      C4_CME_Field_1 => 1);

   --  Loss of Lock Interrupt
   type C4_LOLIE_Field is
     (
      --  No request on loss of lock.
      C4_LOLIE_Field_0,
      --  Generates an interrupt request on loss of lock.
      C4_LOLIE_Field_1)
     with Size => 1;
   for C4_LOLIE_Field use
     (C4_LOLIE_Field_0 => 0,
      C4_LOLIE_Field_1 => 1);

   --  ICS Control Register 4
   type ICS_C4_Register is record
      --  Slow Internal Reference Clock Fine Trim
      SCFTRIM      : Boolean := False;
      --  unspecified
      Reserved_1_4 : HAL.UInt4 := 16#0#;
      --  Clock Monitor Enable
      CME          : C4_CME_Field := NRF_SVD.ICS.C4_CME_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Loss of Lock Interrupt
      LOLIE        : C4_LOLIE_Field := NRF_SVD.ICS.C4_LOLIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ICS_C4_Register use record
      SCFTRIM      at 0 range 0 .. 0;
      Reserved_1_4 at 0 range 1 .. 4;
      CME          at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      LOLIE        at 0 range 7 .. 7;
   end record;

   --  Clock Mode Status
   type S_CLKST_Field is
     (
      --  Output of FLL is selected.
      S_CLKST_Field_00,
      --  FLL Bypassed, internal reference clock is selected.
      S_CLKST_Field_01,
      --  FLL Bypassed, external reference clock is selected.
      S_CLKST_Field_10)
     with Size => 2;
   for S_CLKST_Field use
     (S_CLKST_Field_00 => 0,
      S_CLKST_Field_01 => 1,
      S_CLKST_Field_10 => 2);

   --  Internal Reference Status
   type S_IREFST_Field is
     (
      --  Source of reference clock is external clock.
      S_IREFST_Field_0,
      --  Source of reference clock is internal clock.
      S_IREFST_Field_1)
     with Size => 1;
   for S_IREFST_Field use
     (S_IREFST_Field_0 => 0,
      S_IREFST_Field_1 => 1);

   --  Lock Status
   type S_LOCK_Field is
     (
      --  FLL is currently unlocked.
      S_LOCK_Field_0,
      --  FLL is currently locked.
      S_LOCK_Field_1)
     with Size => 1;
   for S_LOCK_Field use
     (S_LOCK_Field_0 => 0,
      S_LOCK_Field_1 => 1);

   --  Loss of Lock Status
   type S_LOLS_Field is
     (
      --  FLL has not lost lock since LOLS was last cleared.
      S_LOLS_Field_0,
      --  FLL has lost lock since LOLS was last cleared.
      S_LOLS_Field_1)
     with Size => 1;
   for S_LOLS_Field use
     (S_LOLS_Field_0 => 0,
      S_LOLS_Field_1 => 1);

   --  ICS Status Register
   type ICS_S_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Mode Status
      CLKST        : S_CLKST_Field := NRF_SVD.ICS.S_CLKST_Field_00;
      --  Read-only. Internal Reference Status
      IREFST       : S_IREFST_Field := NRF_SVD.ICS.S_IREFST_Field_1;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Read-only. Lock Status
      LOCK         : S_LOCK_Field := NRF_SVD.ICS.S_LOCK_Field_0;
      --  Loss of Lock Status
      LOLS         : S_LOLS_Field := NRF_SVD.ICS.S_LOLS_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ICS_S_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      CLKST        at 0 range 2 .. 3;
      IREFST       at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      LOCK         at 0 range 6 .. 6;
      LOLS         at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock management
   type ICS_Peripheral is record
      --  ICS Control Register 1
      C1 : aliased ICS_C1_Register;
      --  ICS Control Register 2
      C2 : aliased ICS_C2_Register;
      --  ICS Control Register 3
      C3 : aliased HAL.UInt8;
      --  ICS Control Register 4
      C4 : aliased ICS_C4_Register;
      --  ICS Status Register
      S  : aliased ICS_S_Register;
   end record
     with Volatile;

   for ICS_Peripheral use record
      C1 at 16#0# range 0 .. 7;
      C2 at 16#1# range 0 .. 7;
      C3 at 16#2# range 0 .. 7;
      C4 at 16#3# range 0 .. 7;
      S  at 16#4# range 0 .. 7;
   end record;

   --  Clock management
   ICS_Periph : aliased ICS_Peripheral
     with Import, Address => ICS_Base;

end NRF_SVD.ICS;
