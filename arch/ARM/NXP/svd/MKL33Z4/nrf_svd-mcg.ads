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

--  This spec has been automatically generated from MKL33Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Multipurpose Clock Generator Lite
package NRF_SVD.MCG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Internal Reference Stop Enable
   type C1_IREFSTEN_Field is
     (
      --  LIRC is disabled in Stop mode.
      C1_IREFSTEN_Field_0,
      --  LIRC is enabled in Stop mode, if IRCLKEN is set.
      C1_IREFSTEN_Field_1)
     with Size => 1;
   for C1_IREFSTEN_Field use
     (C1_IREFSTEN_Field_0 => 0,
      C1_IREFSTEN_Field_1 => 1);

   --  Internal Reference Clock Enable
   type C1_IRCLKEN_Field is
     (
      --  LIRC is disabled.
      C1_IRCLKEN_Field_0,
      --  LIRC is enabled.
      C1_IRCLKEN_Field_1)
     with Size => 1;
   for C1_IRCLKEN_Field use
     (C1_IRCLKEN_Field_0 => 0,
      C1_IRCLKEN_Field_1 => 1);

   --  Clock Source Select
   type C1_CLKS_Field is
     (
      --  Selects HIRC clock as the main clock source. This is HIRC mode.
      C1_CLKS_Field_00,
      --  Selects LIRC clock as the main clock source. This is LIRC2M or LIRC8M
      --  mode.
      C1_CLKS_Field_01,
      --  Selects external clock as the main clock source. This is EXT mode.
      C1_CLKS_Field_10,
      --  Reserved. Writing 11 takes no effect.
      C1_CLKS_Field_11)
     with Size => 2;
   for C1_CLKS_Field use
     (C1_CLKS_Field_00 => 0,
      C1_CLKS_Field_01 => 1,
      C1_CLKS_Field_10 => 2,
      C1_CLKS_Field_11 => 3);

   --  MCG Control Register 1
   type MCG_C1_Register is record
      --  Internal Reference Stop Enable
      IREFSTEN     : C1_IREFSTEN_Field := NRF_SVD.MCG.C1_IREFSTEN_Field_0;
      --  Internal Reference Clock Enable
      IRCLKEN      : C1_IRCLKEN_Field := NRF_SVD.MCG.C1_IRCLKEN_Field_0;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Clock Source Select
      CLKS         : C1_CLKS_Field := NRF_SVD.MCG.C1_CLKS_Field_01;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C1_Register use record
      IREFSTEN     at 0 range 0 .. 0;
      IRCLKEN      at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      CLKS         at 0 range 6 .. 7;
   end record;

   --  Low-frequency Internal Reference Clock Select
   type C2_IRCS_Field is
     (
      --  LIRC is in 2 MHz mode.
      C2_IRCS_Field_0,
      --  LIRC is in 8 MHz mode.
      C2_IRCS_Field_1)
     with Size => 1;
   for C2_IRCS_Field use
     (C2_IRCS_Field_0 => 0,
      C2_IRCS_Field_1 => 1);

   --  External Clock Source Select
   type C2_EREFS0_Field is
     (
      --  External clock requested.
      C2_EREFS0_Field_0,
      --  Oscillator requested.
      C2_EREFS0_Field_1)
     with Size => 1;
   for C2_EREFS0_Field use
     (C2_EREFS0_Field_0 => 0,
      C2_EREFS0_Field_1 => 1);

   --  Crystal Oscillator Operation Mode Select
   type C2_HGO0_Field is
     (
      --  Configure crystal oscillator for low-power operation.
      C2_HGO0_Field_0,
      --  Configure crystal oscillator for high-gain operation.
      C2_HGO0_Field_1)
     with Size => 1;
   for C2_HGO0_Field use
     (C2_HGO0_Field_0 => 0,
      C2_HGO0_Field_1 => 1);

   --  External Clock Source Frequency Range Select
   type C2_RANGE0_Field is
     (
      --  Low frequency range selected for the crystal oscillator or the
      --  external clock source.
      C2_RANGE0_Field_00,
      --  High frequency range selected for the crystal oscillator or the
      --  external clock source.
      C2_RANGE0_Field_01,
      --  Very high frequency range selected for the crystal oscillator or the
      --  external clock source.
      C2_RANGE0_Field_10,
      --  Very high frequency range selected for the crystal oscillator or the
      --  external clock source. Same effect as 10.
      C2_RANGE0_Field_11)
     with Size => 2;
   for C2_RANGE0_Field use
     (C2_RANGE0_Field_00 => 0,
      C2_RANGE0_Field_01 => 1,
      C2_RANGE0_Field_10 => 2,
      C2_RANGE0_Field_11 => 3);

   --  MCG Control Register 2
   type MCG_C2_Register is record
      --  Low-frequency Internal Reference Clock Select
      IRCS         : C2_IRCS_Field := NRF_SVD.MCG.C2_IRCS_Field_1;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  External Clock Source Select
      EREFS0       : C2_EREFS0_Field := NRF_SVD.MCG.C2_EREFS0_Field_0;
      --  Crystal Oscillator Operation Mode Select
      HGO0         : C2_HGO0_Field := NRF_SVD.MCG.C2_HGO0_Field_0;
      --  External Clock Source Frequency Range Select
      RANGE0       : C2_RANGE0_Field := NRF_SVD.MCG.C2_RANGE0_Field_00;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_C2_Register use record
      IRCS         at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      EREFS0       at 0 range 2 .. 2;
      HGO0         at 0 range 3 .. 3;
      RANGE0       at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  OSC Initialization Status
   type S_OSCINIT0_Field is
     (
      --  OSC is not ready.
      S_OSCINIT0_Field_0,
      --  OSC clock is ready.
      S_OSCINIT0_Field_1)
     with Size => 1;
   for S_OSCINIT0_Field use
     (S_OSCINIT0_Field_0 => 0,
      S_OSCINIT0_Field_1 => 1);

   --  Clock Mode Status
   type S_CLKST_Field is
     (
      --  HIRC clock is selected as the main clock source, and MCG_Lite works
      --  at HIRC mode.
      S_CLKST_Field_00,
      --  LIRC clock is selected as the main clock source, and MCG_Lite works
      --  at LIRC2M or LIRC8M mode.
      S_CLKST_Field_01,
      --  External clock is selected as the main clock source, and MCG_Lite
      --  works at EXT mode.
      S_CLKST_Field_10)
     with Size => 2;
   for S_CLKST_Field use
     (S_CLKST_Field_00 => 0,
      S_CLKST_Field_01 => 1,
      S_CLKST_Field_10 => 2);

   --  MCG Status Register
   type MCG_S_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit;
      --  Read-only. OSC Initialization Status
      OSCINIT0     : S_OSCINIT0_Field;
      --  Read-only. Clock Mode Status
      CLKST        : S_CLKST_Field;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_S_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      OSCINIT0     at 0 range 1 .. 1;
      CLKST        at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Low-frequency Internal Reference Clock Divider
   type SC_FCRDIV_Field is
     (
      --  Division factor is 1.
      SC_FCRDIV_Field_000,
      --  Division factor is 2.
      SC_FCRDIV_Field_001,
      --  Division factor is 4.
      SC_FCRDIV_Field_010,
      --  Division factor is 8.
      SC_FCRDIV_Field_011,
      --  Division factor is 16.
      SC_FCRDIV_Field_100,
      --  Division factor is 32.
      SC_FCRDIV_Field_101,
      --  Division factor is 64.
      SC_FCRDIV_Field_110,
      --  Division factor is 128.
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

   --  MCG Status and Control Register
   type MCG_SC_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Low-frequency Internal Reference Clock Divider
      FCRDIV       : SC_FCRDIV_Field := NRF_SVD.MCG.SC_FCRDIV_Field_000;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_SC_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      FCRDIV       at 0 range 1 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype MCG_HCTRIM_COARSE_TRIM_Field is HAL.UInt6;

   --  MCG High-frequency IRC Coarse Trim Register
   type MCG_HCTRIM_Register is record
      --  Read-only. High-frequency IRC Coarse Trim
      COARSE_TRIM  : MCG_HCTRIM_COARSE_TRIM_Field;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_HCTRIM_Register use record
      COARSE_TRIM  at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   subtype MCG_HTTRIM_TEMPCO_TRIM_Field is HAL.UInt5;

   --  MCG High-frequency IRC Tempco (Temperature Coefficient) Trim Register
   type MCG_HTTRIM_Register is record
      --  Read-only. High-frequency IRC Tempco Trim
      TEMPCO_TRIM  : MCG_HTTRIM_TEMPCO_TRIM_Field;
      --  unspecified
      Reserved_5_7 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_HTTRIM_Register use record
      TEMPCO_TRIM  at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   subtype MCG_HFTRIM_FINE_TRIM_Field is HAL.UInt7;

   --  MCG High-frequency IRC Fine Trim Register
   type MCG_HFTRIM_Register is record
      --  Read-only. High-frequency IRC Fine Trim
      FINE_TRIM    : MCG_HFTRIM_FINE_TRIM_Field;
      --  unspecified
      Reserved_7_7 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_HFTRIM_Register use record
      FINE_TRIM    at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Second Low-frequency Internal Reference Clock Divider
   type MC_LIRC_DIV2_Field is
     (
      --  Division factor is 1.
      MC_LIRC_DIV2_Field_000,
      --  Division factor is 2.
      MC_LIRC_DIV2_Field_001,
      --  Division factor is 4.
      MC_LIRC_DIV2_Field_010,
      --  Division factor is 8.
      MC_LIRC_DIV2_Field_011,
      --  Division factor is 16.
      MC_LIRC_DIV2_Field_100,
      --  Division factor is 32.
      MC_LIRC_DIV2_Field_101,
      --  Division factor is 64.
      MC_LIRC_DIV2_Field_110,
      --  Division factor is 128.
      MC_LIRC_DIV2_Field_111)
     with Size => 3;
   for MC_LIRC_DIV2_Field use
     (MC_LIRC_DIV2_Field_000 => 0,
      MC_LIRC_DIV2_Field_001 => 1,
      MC_LIRC_DIV2_Field_010 => 2,
      MC_LIRC_DIV2_Field_011 => 3,
      MC_LIRC_DIV2_Field_100 => 4,
      MC_LIRC_DIV2_Field_101 => 5,
      MC_LIRC_DIV2_Field_110 => 6,
      MC_LIRC_DIV2_Field_111 => 7);

   --  High-frequency IRC Enable
   type MC_HIRCEN_Field is
     (
      --  HIRC source is not enabled.
      MC_HIRCEN_Field_0,
      --  HIRC source is enabled.
      MC_HIRCEN_Field_1)
     with Size => 1;
   for MC_HIRCEN_Field use
     (MC_HIRCEN_Field_0 => 0,
      MC_HIRCEN_Field_1 => 1);

   --  MCG Miscellaneous Control Register
   type MCG_MC_Register is record
      --  Second Low-frequency Internal Reference Clock Divider
      LIRC_DIV2    : MC_LIRC_DIV2_Field := NRF_SVD.MCG.MC_LIRC_DIV2_Field_000;
      --  unspecified
      Reserved_3_6 : HAL.UInt4 := 16#0#;
      --  High-frequency IRC Enable
      HIRCEN       : MC_HIRCEN_Field := NRF_SVD.MCG.MC_HIRCEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_MC_Register use record
      LIRC_DIV2    at 0 range 0 .. 2;
      Reserved_3_6 at 0 range 3 .. 6;
      HIRCEN       at 0 range 7 .. 7;
   end record;

   --  LIRC Slow TRIM (2 MHz) Range
   type LTRIMRNG_STRIMRNG_Field is
     (
      --  Frequency shift by 10%.
      LTRIMRNG_STRIMRNG_Field_00,
      --  No frequency shift.
      LTRIMRNG_STRIMRNG_Field_01,
      --  No frequency shift.
      LTRIMRNG_STRIMRNG_Field_10,
      --  Frequency shift by -10%.
      LTRIMRNG_STRIMRNG_Field_11)
     with Size => 2;
   for LTRIMRNG_STRIMRNG_Field use
     (LTRIMRNG_STRIMRNG_Field_00 => 0,
      LTRIMRNG_STRIMRNG_Field_01 => 1,
      LTRIMRNG_STRIMRNG_Field_10 => 2,
      LTRIMRNG_STRIMRNG_Field_11 => 3);

   --  LIRC Fast TRIM (8 MHz) Range
   type LTRIMRNG_FTRIMRNG_Field is
     (
      --  Frequency shift by 10%.
      LTRIMRNG_FTRIMRNG_Field_00,
      --  No frequency shift.
      LTRIMRNG_FTRIMRNG_Field_01,
      --  No frequency shift.
      LTRIMRNG_FTRIMRNG_Field_10,
      --  Frequency shift by -10%.
      LTRIMRNG_FTRIMRNG_Field_11)
     with Size => 2;
   for LTRIMRNG_FTRIMRNG_Field use
     (LTRIMRNG_FTRIMRNG_Field_00 => 0,
      LTRIMRNG_FTRIMRNG_Field_01 => 1,
      LTRIMRNG_FTRIMRNG_Field_10 => 2,
      LTRIMRNG_FTRIMRNG_Field_11 => 3);

   --  MCG Low-frequency IRC Trim Range Register
   type MCG_LTRIMRNG_Register is record
      --  Read-only. LIRC Slow TRIM (2 MHz) Range
      STRIMRNG     : LTRIMRNG_STRIMRNG_Field;
      --  Read-only. LIRC Fast TRIM (8 MHz) Range
      FTRIMRNG     : LTRIMRNG_FTRIMRNG_Field;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_LTRIMRNG_Register use record
      STRIMRNG     at 0 range 0 .. 1;
      FTRIMRNG     at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype MCG_LFTRIM_LIRC_FTRIM_Field is HAL.UInt7;

   --  MCG Low-frequency IRC8M Trim Register
   type MCG_LFTRIM_Register is record
      --  Read-only. LIRC8M TRIM
      LIRC_FTRIM   : MCG_LFTRIM_LIRC_FTRIM_Field;
      --  unspecified
      Reserved_7_7 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_LFTRIM_Register use record
      LIRC_FTRIM   at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype MCG_LSTRIM_LIRC_STRIM_Field is HAL.UInt7;

   --  MCG Low-frequency IRC2M Trim Register
   type MCG_LSTRIM_Register is record
      --  Read-only. LIRC2M TRIM
      LIRC_STRIM   : MCG_LSTRIM_LIRC_STRIM_Field;
      --  unspecified
      Reserved_7_7 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MCG_LSTRIM_Register use record
      LIRC_STRIM   at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Multipurpose Clock Generator Lite
   type MCG_Peripheral is record
      --  MCG Control Register 1
      C1       : aliased MCG_C1_Register;
      --  MCG Control Register 2
      C2       : aliased MCG_C2_Register;
      --  MCG Status Register
      S        : aliased MCG_S_Register;
      --  MCG Status and Control Register
      SC       : aliased MCG_SC_Register;
      --  MCG High-frequency IRC Coarse Trim Register
      HCTRIM   : aliased MCG_HCTRIM_Register;
      --  MCG High-frequency IRC Tempco (Temperature Coefficient) Trim Register
      HTTRIM   : aliased MCG_HTTRIM_Register;
      --  MCG High-frequency IRC Fine Trim Register
      HFTRIM   : aliased MCG_HFTRIM_Register;
      --  MCG Miscellaneous Control Register
      MC       : aliased MCG_MC_Register;
      --  MCG Low-frequency IRC Trim Range Register
      LTRIMRNG : aliased MCG_LTRIMRNG_Register;
      --  MCG Low-frequency IRC8M Trim Register
      LFTRIM   : aliased MCG_LFTRIM_Register;
      --  MCG Low-frequency IRC2M Trim Register
      LSTRIM   : aliased MCG_LSTRIM_Register;
   end record
     with Volatile;

   for MCG_Peripheral use record
      C1       at 16#0# range 0 .. 7;
      C2       at 16#1# range 0 .. 7;
      S        at 16#6# range 0 .. 7;
      SC       at 16#8# range 0 .. 7;
      HCTRIM   at 16#14# range 0 .. 7;
      HTTRIM   at 16#15# range 0 .. 7;
      HFTRIM   at 16#16# range 0 .. 7;
      MC       at 16#18# range 0 .. 7;
      LTRIMRNG at 16#19# range 0 .. 7;
      LFTRIM   at 16#1A# range 0 .. 7;
      LSTRIM   at 16#1B# range 0 .. 7;
   end record;

   --  Multipurpose Clock Generator Lite
   MCG_Periph : aliased MCG_Peripheral
     with Import, Address => MCG_Base;

end NRF_SVD.MCG;
