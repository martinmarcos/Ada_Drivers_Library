--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MK22F12810.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Multipurpose Clock Generator module
package NRF_SVD.MCG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Internal Reference Stop Enable
   type C1_IREFSTEN_Field is
     (
      --  Internal reference clock is disabled in Stop mode.
      C1_IREFSTEN_Field_0,
      --  Internal reference clock is enabled in Stop mode if IRCLKEN is set or
      --  if MCG is in FEI, FBI, or BLPI modes before entering Stop mode.
      C1_IREFSTEN_Field_1)
     with Size => 1;
   for C1_IREFSTEN_Field use
     (C1_IREFSTEN_Field_0 => 0,
      C1_IREFSTEN_Field_1 => 1);

   --  Internal Reference Clock Enable
   type C1_IRCLKEN_Field is
     (
      --  MCGIRCLK inactive.
      C1_IRCLKEN_Field_0,
      --  MCGIRCLK active.
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
      --  The slow internal reference clock is selected.
      C1_IREFS_Field_1)
     with Size => 1;
   for C1_IREFS_Field use
     (C1_IREFS_Field_0 => 0,
      C1_IREFS_Field_1 => 1);

   --  FLL External Reference Divider
   type C1_FRDIV_Field is
     (
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 1; for all other RANGE
      --  values, Divide Factor is 32.
      C1_FRDIV_Field_000,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 2; for all other RANGE
      --  values, Divide Factor is 64.
      C1_FRDIV_Field_001,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 4; for all other RANGE
      --  values, Divide Factor is 128.
      C1_FRDIV_Field_010,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 8; for all other RANGE
      --  values, Divide Factor is 256.
      C1_FRDIV_Field_011,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 16; for all other RANGE
      --  values, Divide Factor is 512.
      C1_FRDIV_Field_100,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 32; for all other RANGE
      --  values, Divide Factor is 1024.
      C1_FRDIV_Field_101,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 64; for all other RANGE
      --  values, Divide Factor is 1280 .
      C1_FRDIV_Field_110,
      --  If RANGE = 0 or OSCSEL=1 , Divide Factor is 128; for all other RANGE
      --  values, Divide Factor is 1536 .
      C1_FRDIV_Field_111)
     with Size => 3;
   for C1_FRDIV_Field use
     (C1_FRDIV_Field_000 => 0,
      C1_FRDIV_Field_001 => 1,
      C1_FRDIV_Field_010 => 2,
      C1_FRDIV_Field_011 => 3,
      C1_FRDIV_Field_100 => 4,
      C1_FRDIV_Field_101 => 5,
      C1_FRDIV_Field_110 => 6,
      C1_FRDIV_Field_111 => 7);

   --  Clock Source Select
   type C1_CLKS_Field is
     (
      --  Encoding 0 - Output of FLL is selected.
      C1_CLKS_Field_00,
      --  Encoding 1 - Internal reference clock is selected.
      C1_CLKS_Field_01,
      --  Encoding 2 - External reference clock is selected.
      C1_CLKS_Field_10,
      --  Encoding 3 - Reserved.
      C1_CLKS_Field_11)
     with Size => 2;
   for C1_CLKS_Field use
     (C1_CLKS_Field_00 => 0,
      C1_CLKS_Field_01 => 1,
      C1_CLKS_Field_10 => 2,
      C1_CLKS_Field_11 => 3);

   --  MCG Control 1 Register
   type MCG_C1_Register is record
      --  Internal Reference Stop Enable
      IREFSTEN : C1_IREFSTEN_Field := NRF_SVD.MCG.C1_IREFSTEN_Field_0;
      --  Internal Reference Clock Enable
      IRCLKEN  : C1_IRCLKEN_Field := NRF_SVD.MCG.C1_IRCLKEN_Field_0;
      --  Internal Reference Select
      IREFS    : C1_IREFS_Field := NRF_SVD.MCG.C1_IREFS_Field_1;
      --  FLL External Reference Divider
      FRDIV    : C1_FRDIV_Field := NRF_SVD.MCG.C1_FRDIV_Field_000;
      --  Clock Source Select
      CLKS     : C1_CLKS_Field := NRF_SVD.MCG.C1_CLKS_Field_00;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C1_Register use record
      IREFSTEN at 0 range 0 .. 0;
      IRCLKEN  at 0 range 1 .. 1;
      IREFS    at 0 range 2 .. 2;
      FRDIV    at 0 range 3 .. 5;
      CLKS     at 0 range 6 .. 7;
   end record;

   --  Internal Reference Clock Select
   type C2_IRCS_Field is
     (
      --  Slow internal reference clock selected.
      C2_IRCS_Field_0,
      --  Fast internal reference clock selected.
      C2_IRCS_Field_1)
     with Size => 1;
   for C2_IRCS_Field use
     (C2_IRCS_Field_0 => 0,
      C2_IRCS_Field_1 => 1);

   --  Low Power Select
   type C2_LP_Field is
     (
      --  FLL is not disabled in bypass modes.
      C2_LP_Field_0,
      --  FLL is disabled in bypass modes (lower power)
      C2_LP_Field_1)
     with Size => 1;
   for C2_LP_Field use
     (C2_LP_Field_0 => 0,
      C2_LP_Field_1 => 1);

   --  External Reference Select
   type C2_EREFS_Field is
     (
      --  External reference clock requested.
      C2_EREFS_Field_0,
      --  Oscillator requested.
      C2_EREFS_Field_1)
     with Size => 1;
   for C2_EREFS_Field use
     (C2_EREFS_Field_0 => 0,
      C2_EREFS_Field_1 => 1);

   --  High Gain Oscillator Select
   type C2_HGO_Field is
     (
      --  Configure crystal oscillator for low-power operation.
      C2_HGO_Field_0,
      --  Configure crystal oscillator for high-gain operation.
      C2_HGO_Field_1)
     with Size => 1;
   for C2_HGO_Field use
     (C2_HGO_Field_0 => 0,
      C2_HGO_Field_1 => 1);

   --  Frequency Range Select
   type C2_RANGE_Field is
     (
      --  Encoding 0 - Low frequency range selected for the crystal oscillator
      --  .
      C2_RANGE_Field_00,
      --  Encoding 1 - High frequency range selected for the crystal oscillator
      --  .
      C2_RANGE_Field_01)
     with Size => 2;
   for C2_RANGE_Field use
     (C2_RANGE_Field_00 => 0,
      C2_RANGE_Field_01 => 1);

   --  Loss of Clock Reset Enable
   type C2_LOCRE0_Field is
     (
      --  Interrupt request is generated on a loss of OSC0 external reference
      --  clock.
      C2_LOCRE0_Field_0,
      --  Generate a reset request on a loss of OSC0 external reference clock.
      C2_LOCRE0_Field_1)
     with Size => 1;
   for C2_LOCRE0_Field use
     (C2_LOCRE0_Field_0 => 0,
      C2_LOCRE0_Field_1 => 1);

   --  MCG Control 2 Register
   type MCG_C2_Register is record
      --  Internal Reference Clock Select
      IRCS    : C2_IRCS_Field := NRF_SVD.MCG.C2_IRCS_Field_0;
      --  Low Power Select
      LP      : C2_LP_Field := NRF_SVD.MCG.C2_LP_Field_0;
      --  External Reference Select
      EREFS   : C2_EREFS_Field := NRF_SVD.MCG.C2_EREFS_Field_0;
      --  High Gain Oscillator Select
      HGO     : C2_HGO_Field := NRF_SVD.MCG.C2_HGO_Field_0;
      --  Frequency Range Select
      RANGE_k : C2_RANGE_Field := NRF_SVD.MCG.C2_RANGE_Field_00;
      --  Fast Internal Reference Clock Fine Trim
      FCFTRIM : Boolean := False;
      --  Loss of Clock Reset Enable
      LOCRE0  : C2_LOCRE0_Field := NRF_SVD.MCG.C2_LOCRE0_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C2_Register use record
      IRCS    at 0 range 0 .. 0;
      LP      at 0 range 1 .. 1;
      EREFS   at 0 range 2 .. 2;
      HGO     at 0 range 3 .. 3;
      RANGE_k at 0 range 4 .. 5;
      FCFTRIM at 0 range 6 .. 6;
      LOCRE0  at 0 range 7 .. 7;
   end record;

   subtype MCG_C4_FCTRIM_Field is HAL.UInt4;

   --  DCO Range Select
   type C4_DRST_DRS_Field is
     (
      --  Encoding 0 - Low range (reset default).
      C4_DRST_DRS_Field_00,
      --  Encoding 1 - Mid range.
      C4_DRST_DRS_Field_01,
      --  Encoding 2 - Mid-high range.
      C4_DRST_DRS_Field_10,
      --  Encoding 3 - High range.
      C4_DRST_DRS_Field_11)
     with Size => 2;
   for C4_DRST_DRS_Field use
     (C4_DRST_DRS_Field_00 => 0,
      C4_DRST_DRS_Field_01 => 1,
      C4_DRST_DRS_Field_10 => 2,
      C4_DRST_DRS_Field_11 => 3);

   --  DCO Maximum Frequency with 32.768 kHz Reference
   type C4_DMX32_Field is
     (
      --  DCO has a default range of 25%.
      C4_DMX32_Field_0,
      --  DCO is fine-tuned for maximum frequency with 32.768 kHz reference.
      C4_DMX32_Field_1)
     with Size => 1;
   for C4_DMX32_Field use
     (C4_DMX32_Field_0 => 0,
      C4_DMX32_Field_1 => 1);

   --  MCG Control 4 Register
   type MCG_C4_Register is record
      --  Slow Internal Reference Clock Fine Trim
      SCFTRIM  : Boolean := False;
      --  Fast Internal Reference Clock Trim Setting
      FCTRIM   : MCG_C4_FCTRIM_Field := 16#0#;
      --  DCO Range Select
      DRST_DRS : C4_DRST_DRS_Field := NRF_SVD.MCG.C4_DRST_DRS_Field_00;
      --  DCO Maximum Frequency with 32.768 kHz Reference
      DMX32    : C4_DMX32_Field := NRF_SVD.MCG.C4_DMX32_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C4_Register use record
      SCFTRIM  at 0 range 0 .. 0;
      FCTRIM   at 0 range 1 .. 4;
      DRST_DRS at 0 range 5 .. 6;
      DMX32    at 0 range 7 .. 7;
   end record;

   --  Clock Monitor Enable
   type C6_CME_Field is
     (
      --  External clock monitor is disabled.
      C6_CME_Field_0,
      --  Generate a reset request on loss of external clock.
      C6_CME_Field_1)
     with Size => 1;
   for C6_CME_Field use
     (C6_CME_Field_0 => 0,
      C6_CME_Field_1 => 1);

   --  MCG Control 6 Register
   type MCG_C6_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Clock Monitor Enable
      CME          : C6_CME_Field := NRF_SVD.MCG.C6_CME_Field_0;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C6_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      CME          at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Internal Reference Clock Status
   type S_IRCST_Field is
     (
      --  Source of internal reference clock is the slow clock (32 kHz IRC).
      S_IRCST_Field_0,
      --  Source of internal reference clock is the fast clock (4 MHz IRC).
      S_IRCST_Field_1)
     with Size => 1;
   for S_IRCST_Field use
     (S_IRCST_Field_0 => 0,
      S_IRCST_Field_1 => 1);

   --  Clock Mode Status
   type S_CLKST_Field is
     (
      --  Encoding 0 - Output of the FLL is selected (reset default).
      S_CLKST_Field_00,
      --  Encoding 1 - Internal reference clock is selected.
      S_CLKST_Field_01,
      --  Encoding 2 - External reference clock is selected.
      S_CLKST_Field_10)
     with Size => 2;
   for S_CLKST_Field use
     (S_CLKST_Field_00 => 0,
      S_CLKST_Field_01 => 1,
      S_CLKST_Field_10 => 2);

   --  Internal Reference Status
   type S_IREFST_Field is
     (
      --  Source of FLL reference clock is the external reference clock.
      S_IREFST_Field_0,
      --  Source of FLL reference clock is the internal reference clock.
      S_IREFST_Field_1)
     with Size => 1;
   for S_IREFST_Field use
     (S_IREFST_Field_0 => 0,
      S_IREFST_Field_1 => 1);

   --  MCG Status Register
   type MCG_S_Register is record
      --  Read-only. Internal Reference Clock Status
      IRCST        : S_IRCST_Field;
      --  Read-only. OSC Initialization
      OSCINIT0     : Boolean;
      --  Read-only. Clock Mode Status
      CLKST        : S_CLKST_Field;
      --  Read-only. Internal Reference Status
      IREFST       : S_IREFST_Field;
      --  unspecified
      Reserved_5_7 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_S_Register use record
      IRCST        at 0 range 0 .. 0;
      OSCINIT0     at 0 range 1 .. 1;
      CLKST        at 0 range 2 .. 3;
      IREFST       at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  OSC0 Loss of Clock Status
   type SC_LOCS0_Field is
     (
      --  Loss of OSC0 has not occurred.
      SC_LOCS0_Field_0,
      --  Loss of OSC0 has occurred.
      SC_LOCS0_Field_1)
     with Size => 1;
   for SC_LOCS0_Field use
     (SC_LOCS0_Field_0 => 0,
      SC_LOCS0_Field_1 => 1);

   --  Fast Clock Internal Reference Divider
   type SC_FCRDIV_Field is
     (
      --  Divide Factor is 1
      SC_FCRDIV_Field_000,
      --  Divide Factor is 2.
      SC_FCRDIV_Field_001,
      --  Divide Factor is 4.
      SC_FCRDIV_Field_010,
      --  Divide Factor is 8.
      SC_FCRDIV_Field_011,
      --  Divide Factor is 16
      SC_FCRDIV_Field_100,
      --  Divide Factor is 32
      SC_FCRDIV_Field_101,
      --  Divide Factor is 64
      SC_FCRDIV_Field_110,
      --  Divide Factor is 128.
      SC_FCRDIV_Field_111)
     with Size => 3;
   for SC_FCRDIV_Field use
     (SC_FCRDIV_Field_000 => 0,
      SC_FCRDIV_Field_001 => 1,
      SC_FCRDIV_Field_010 => 2,
      SC_FCRDIV_Field_011 => 3,
      SC_FCRDIV_Field_100 => 4,
      SC_FCRDIV_Field_101 => 5,
      SC_FCRDIV_Field_110 => 6,
      SC_FCRDIV_Field_111 => 7);

   --  FLL Filter Preserve Enable
   type SC_FLTPRSRV_Field is
     (
      --  FLL filter and FLL frequency will reset on changes to currect clock
      --  mode.
      SC_FLTPRSRV_Field_0,
      --  Fll filter and FLL frequency retain their previous values during new
      --  clock mode change.
      SC_FLTPRSRV_Field_1)
     with Size => 1;
   for SC_FLTPRSRV_Field use
     (SC_FLTPRSRV_Field_0 => 0,
      SC_FLTPRSRV_Field_1 => 1);

   --  Automatic Trim Machine Fail Flag
   type SC_ATMF_Field is
     (
      --  Automatic Trim Machine completed normally.
      SC_ATMF_Field_0,
      --  Automatic Trim Machine failed.
      SC_ATMF_Field_1)
     with Size => 1;
   for SC_ATMF_Field use
     (SC_ATMF_Field_0 => 0,
      SC_ATMF_Field_1 => 1);

   --  Automatic Trim Machine Select
   type SC_ATMS_Field is
     (
      --  32 kHz Internal Reference Clock selected.
      SC_ATMS_Field_0,
      --  4 MHz Internal Reference Clock selected.
      SC_ATMS_Field_1)
     with Size => 1;
   for SC_ATMS_Field use
     (SC_ATMS_Field_0 => 0,
      SC_ATMS_Field_1 => 1);

   --  Automatic Trim Machine Enable
   type SC_ATME_Field is
     (
      --  Auto Trim Machine disabled.
      SC_ATME_Field_0,
      --  Auto Trim Machine enabled.
      SC_ATME_Field_1)
     with Size => 1;
   for SC_ATME_Field use
     (SC_ATME_Field_0 => 0,
      SC_ATME_Field_1 => 1);

   --  MCG Status and Control Register
   type MCG_SC_Register is record
      --  OSC0 Loss of Clock Status
      LOCS0    : SC_LOCS0_Field := NRF_SVD.MCG.SC_LOCS0_Field_0;
      --  Fast Clock Internal Reference Divider
      FCRDIV   : SC_FCRDIV_Field := NRF_SVD.MCG.SC_FCRDIV_Field_001;
      --  FLL Filter Preserve Enable
      FLTPRSRV : SC_FLTPRSRV_Field := NRF_SVD.MCG.SC_FLTPRSRV_Field_0;
      --  Automatic Trim Machine Fail Flag
      ATMF     : SC_ATMF_Field := NRF_SVD.MCG.SC_ATMF_Field_0;
      --  Automatic Trim Machine Select
      ATMS     : SC_ATMS_Field := NRF_SVD.MCG.SC_ATMS_Field_0;
      --  Automatic Trim Machine Enable
      ATME     : SC_ATME_Field := NRF_SVD.MCG.SC_ATME_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_SC_Register use record
      LOCS0    at 0 range 0 .. 0;
      FCRDIV   at 0 range 1 .. 3;
      FLTPRSRV at 0 range 4 .. 4;
      ATMF     at 0 range 5 .. 5;
      ATMS     at 0 range 6 .. 6;
      ATME     at 0 range 7 .. 7;
   end record;

   --  MCG OSC Clock Select
   type C7_OSCSEL_Field is
     (
      --  Selects Oscillator (OSCCLK0).
      C7_OSCSEL_Field_00,
      --  Selects 32 kHz RTC Oscillator.
      C7_OSCSEL_Field_01,
      --  Selects Oscillator (OSCCLK1).
      C7_OSCSEL_Field_10)
     with Size => 2;
   for C7_OSCSEL_Field use
     (C7_OSCSEL_Field_00 => 0,
      C7_OSCSEL_Field_01 => 1,
      C7_OSCSEL_Field_10 => 2);

   --  MCG Control 7 Register
   type MCG_C7_Register is record
      --  MCG OSC Clock Select
      OSCSEL       : C7_OSCSEL_Field := NRF_SVD.MCG.C7_OSCSEL_Field_00;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C7_Register use record
      OSCSEL       at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  RTC Loss of Clock Status
   type C8_LOCS1_Field is
     (
      --  Loss of RTC has not occur.
      C8_LOCS1_Field_0,
      --  Loss of RTC has occur
      C8_LOCS1_Field_1)
     with Size => 1;
   for C8_LOCS1_Field use
     (C8_LOCS1_Field_0 => 0,
      C8_LOCS1_Field_1 => 1);

   --  Clock Monitor Enable1
   type C8_CME1_Field is
     (
      --  External clock monitor is disabled for RTC clock.
      C8_CME1_Field_0,
      --  External clock monitor is enabled for RTC clock.
      C8_CME1_Field_1)
     with Size => 1;
   for C8_CME1_Field use
     (C8_CME1_Field_0 => 0,
      C8_CME1_Field_1 => 1);

   --  Loss of Clock Reset Enable
   type C8_LOCRE1_Field is
     (
      --  Interrupt request is generated on a loss of RTC external reference
      --  clock.
      C8_LOCRE1_Field_0,
      --  Generate a reset request on a loss of RTC external reference clock
      C8_LOCRE1_Field_1)
     with Size => 1;
   for C8_LOCRE1_Field use
     (C8_LOCRE1_Field_0 => 0,
      C8_LOCRE1_Field_1 => 1);

   --  MCG Control 8 Register
   type MCG_C8_Register is record
      --  RTC Loss of Clock Status
      LOCS1        : C8_LOCS1_Field := NRF_SVD.MCG.C8_LOCS1_Field_0;
      --  unspecified
      Reserved_1_4 : HAL.UInt4 := 16#0#;
      --  Clock Monitor Enable1
      CME1         : C8_CME1_Field := NRF_SVD.MCG.C8_CME1_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Loss of Clock Reset Enable
      LOCRE1       : C8_LOCRE1_Field := NRF_SVD.MCG.C8_LOCRE1_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C8_Register use record
      LOCS1        at 0 range 0 .. 0;
      Reserved_1_4 at 0 range 1 .. 4;
      CME1         at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      LOCRE1       at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Multipurpose Clock Generator module
   type MCG_Peripheral is record
      --  MCG Control 1 Register
      C1    : aliased MCG_C1_Register;
      --  MCG Control 2 Register
      C2    : aliased MCG_C2_Register;
      --  MCG Control 3 Register
      C3    : aliased HAL.UInt8;
      --  MCG Control 4 Register
      C4    : aliased MCG_C4_Register;
      --  MCG Control 5 Register
      C5    : aliased HAL.UInt8;
      --  MCG Control 6 Register
      C6    : aliased MCG_C6_Register;
      --  MCG Status Register
      S     : aliased MCG_S_Register;
      --  MCG Status and Control Register
      SC    : aliased MCG_SC_Register;
      --  MCG Auto Trim Compare Value High Register
      ATCVH : aliased HAL.UInt8;
      --  MCG Auto Trim Compare Value Low Register
      ATCVL : aliased HAL.UInt8;
      --  MCG Control 7 Register
      C7    : aliased MCG_C7_Register;
      --  MCG Control 8 Register
      C8    : aliased MCG_C8_Register;
   end record
     with Volatile;

   for MCG_Peripheral use record
      C1    at 16#0# range 0 .. 7;
      C2    at 16#1# range 0 .. 7;
      C3    at 16#2# range 0 .. 7;
      C4    at 16#3# range 0 .. 7;
      C5    at 16#4# range 0 .. 7;
      C6    at 16#5# range 0 .. 7;
      S     at 16#6# range 0 .. 7;
      SC    at 16#8# range 0 .. 7;
      ATCVH at 16#A# range 0 .. 7;
      ATCVL at 16#B# range 0 .. 7;
      C7    at 16#C# range 0 .. 7;
      C8    at 16#D# range 0 .. 7;
   end record;

   --  Multipurpose Clock Generator module
   MCG_Periph : aliased MCG_Peripheral
     with Import, Address => MCG_Base;

end NRF_SVD.MCG;
