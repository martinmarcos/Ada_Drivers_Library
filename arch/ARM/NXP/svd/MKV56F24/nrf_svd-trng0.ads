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

--  This spec has been automatically generated from MKV56F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  RNG
package NRF_SVD.TRNG0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Sample Mode
   type TRNG0_MCTL_SAMP_MODE_Field is
     (
      --  use Von Neumann data into both Entropy shifter and Statistical
      --  Checker
      TRNG0_MCTL_SAMP_MODE_Field_00,
      --  use raw data into both Entropy shifter and Statistical Checker
      TRNG0_MCTL_SAMP_MODE_Field_01,
      --  use Von Neumann data into Entropy shifter. Use raw data into
      --  Statistical Checker
      TRNG0_MCTL_SAMP_MODE_Field_10)
     with Size => 2;
   for TRNG0_MCTL_SAMP_MODE_Field use
     (TRNG0_MCTL_SAMP_MODE_Field_00 => 0,
      TRNG0_MCTL_SAMP_MODE_Field_01 => 1,
      TRNG0_MCTL_SAMP_MODE_Field_10 => 2);

   --  Oscillator Divide
   type TRNG0_MCTL_OSC_DIV_Field is
     (
      --  use ring oscillator with no divide
      TRNG0_MCTL_OSC_DIV_Field_00,
      --  use ring oscillator divided-by-2
      TRNG0_MCTL_OSC_DIV_Field_01,
      --  use ring oscillator divided-by-4
      TRNG0_MCTL_OSC_DIV_Field_10,
      --  use ring oscillator divided-by-8
      TRNG0_MCTL_OSC_DIV_Field_11)
     with Size => 2;
   for TRNG0_MCTL_OSC_DIV_Field use
     (TRNG0_MCTL_OSC_DIV_Field_00 => 0,
      TRNG0_MCTL_OSC_DIV_Field_01 => 1,
      TRNG0_MCTL_OSC_DIV_Field_10 => 2,
      TRNG0_MCTL_OSC_DIV_Field_11 => 3);

   --  RNG Miscellaneous Control Register
   type TRNG0_MCTL_Register is record
      --  Sample Mode
      SAMP_MODE      : TRNG0_MCTL_SAMP_MODE_Field :=
                        NRF_SVD.TRNG0.TRNG0_MCTL_SAMP_MODE_Field_01;
      --  Oscillator Divide
      OSC_DIV        : TRNG0_MCTL_OSC_DIV_Field :=
                        NRF_SVD.TRNG0.TRNG0_MCTL_OSC_DIV_Field_00;
      --  This bit is unused but write-able. Must be left as zero.
      UNUSED         : Boolean := False;
      --  TRNG Access Mode
      TRNG_ACC       : Boolean := False;
      --  Write-only. Reset Defaults
      RST_DEF        : Boolean := False;
      --  Force System Clock
      FOR_SCLK       : Boolean := False;
      --  Read-only. Read only: Frequency Count Fail
      FCT_FAIL       : Boolean := False;
      --  Read-only. Read only: Frequency Count Valid. Indicates that a valid
      --  frequency count may be read from FRQCNT.
      FCT_VAL        : Boolean := False;
      --  Read-only. Read only: Entropy Valid
      ENT_VAL        : Boolean := False;
      --  Read-only. Read only: Test point inside ring oscillator.
      TST_OUT        : Boolean := False;
      --  Read: Error status
      ERR            : Boolean := False;
      --  Read-only. TRNG_OK_TO_STOP
      TSTOP_OK       : Boolean := True;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Programming Mode Select
      PRGM           : Boolean := True;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_MCTL_Register use record
      SAMP_MODE      at 0 range 0 .. 1;
      OSC_DIV        at 0 range 2 .. 3;
      UNUSED         at 0 range 4 .. 4;
      TRNG_ACC       at 0 range 5 .. 5;
      RST_DEF        at 0 range 6 .. 6;
      FOR_SCLK       at 0 range 7 .. 7;
      FCT_FAIL       at 0 range 8 .. 8;
      FCT_VAL        at 0 range 9 .. 9;
      ENT_VAL        at 0 range 10 .. 10;
      TST_OUT        at 0 range 11 .. 11;
      ERR            at 0 range 12 .. 12;
      TSTOP_OK       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PRGM           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRNG0_SCMISC_LRUN_MAX_Field is HAL.UInt8;
   subtype TRNG0_SCMISC_RTY_CT_Field is HAL.UInt4;

   --  RNG Statistical Check Miscellaneous Register
   type TRNG0_SCMISC_Register is record
      --  LONG RUN MAX LIMIT
      LRUN_MAX       : TRNG0_SCMISC_LRUN_MAX_Field := 16#1F#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  RETRY COUNT
      RTY_CT         : TRNG0_SCMISC_RTY_CT_Field := 16#1#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCMISC_Register use record
      LRUN_MAX       at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RTY_CT         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TRNG0_PKRRNG_PKR_RNG_Field is HAL.UInt16;

   --  RNG Poker Range Register
   type TRNG0_PKRRNG_Register is record
      --  Poker Range
      PKR_RNG        : TRNG0_PKRRNG_PKR_RNG_Field := 16#9A3#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRRNG_Register use record
      PKR_RNG        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRMAX_PKR_MAX_Field is HAL.UInt24;

   --  RNG Poker Maximum Limit Register
   type TRNG0_PKRMAX_Register is record
      --  Poker Maximum Limit
      PKR_MAX        : TRNG0_PKRMAX_PKR_MAX_Field := 16#6920#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRMAX_Register use record
      PKR_MAX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TRNG0_PKRSQ_PKR_SQ_Field is HAL.UInt24;

   --  RNG Poker Square Calculation Result Register
   type TRNG0_PKRSQ_Register is record
      --  Read-only. Poker Square Calculation Result
      PKR_SQ         : TRNG0_PKRSQ_PKR_SQ_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRSQ_Register use record
      PKR_SQ         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TRNG0_SDCTL_SAMP_SIZE_Field is HAL.UInt16;
   subtype TRNG0_SDCTL_ENT_DLY_Field is HAL.UInt16;

   --  RNG Seed Control Register
   type TRNG0_SDCTL_Register is record
      --  Sample Size
      SAMP_SIZE : TRNG0_SDCTL_SAMP_SIZE_Field := 16#9C4#;
      --  Entropy Delay
      ENT_DLY   : TRNG0_SDCTL_ENT_DLY_Field := 16#C80#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SDCTL_Register use record
      SAMP_SIZE at 0 range 0 .. 15;
      ENT_DLY   at 0 range 16 .. 31;
   end record;

   subtype TRNG0_SBLIM_SB_LIM_Field is HAL.UInt10;

   --  RNG Sparse Bit Limit Register
   type TRNG0_SBLIM_Register is record
      --  Sparse Bit Limit
      SB_LIM         : TRNG0_SBLIM_SB_LIM_Field := 16#3F#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SBLIM_Register use record
      SB_LIM         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TRNG0_TOTSAM_TOT_SAM_Field is HAL.UInt20;

   --  RNG Total Samples Register
   type TRNG0_TOTSAM_Register is record
      --  Read-only. Total Samples
      TOT_SAM        : TRNG0_TOTSAM_TOT_SAM_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_TOTSAM_Register use record
      TOT_SAM        at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TRNG0_FRQMIN_FRQ_MIN_Field is HAL.UInt22;

   --  RNG Frequency Count Minimum Limit Register
   type TRNG0_FRQMIN_Register is record
      --  Frequency Count Minimum Limit
      FRQ_MIN        : TRNG0_FRQMIN_FRQ_MIN_Field := 16#640#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_FRQMIN_Register use record
      FRQ_MIN        at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TRNG0_FRQCNT_FRQ_CT_Field is HAL.UInt22;

   --  RNG Frequency Count Register
   type TRNG0_FRQCNT_Register is record
      --  Read-only. Frequency Count
      FRQ_CT         : TRNG0_FRQCNT_FRQ_CT_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_FRQCNT_Register use record
      FRQ_CT         at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TRNG0_FRQMAX_FRQ_MAX_Field is HAL.UInt22;

   --  RNG Frequency Count Maximum Limit Register
   type TRNG0_FRQMAX_Register is record
      --  Frequency Counter Maximum Limit
      FRQ_MAX        : TRNG0_FRQMAX_FRQ_MAX_Field := 16#6400#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_FRQMAX_Register use record
      FRQ_MAX        at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TRNG0_SCMC_MONO_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Monobit Count Register
   type TRNG0_SCMC_Register is record
      --  Read-only. Monobit Count
      MONO_CT        : TRNG0_SCMC_MONO_CT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCMC_Register use record
      MONO_CT        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRNG0_SCML_MONO_MAX_Field is HAL.UInt16;
   subtype TRNG0_SCML_MONO_RNG_Field is HAL.UInt16;

   --  RNG Statistical Check Monobit Limit Register
   type TRNG0_SCML_Register is record
      --  Monobit Maximum Limit
      MONO_MAX : TRNG0_SCML_MONO_MAX_Field := 16#568#;
      --  Monobit Range
      MONO_RNG : TRNG0_SCML_MONO_RNG_Field := 16#10C#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCML_Register use record
      MONO_MAX at 0 range 0 .. 15;
      MONO_RNG at 0 range 16 .. 31;
   end record;

   subtype TRNG0_SCR1C_R1_0_CT_Field is HAL.UInt15;
   subtype TRNG0_SCR1C_R1_1_CT_Field is HAL.UInt15;

   --  RNG Statistical Check Run Length 1 Count Register
   type TRNG0_SCR1C_Register is record
      --  Read-only. Runs of Zero, Length 1 Count
      R1_0_CT        : TRNG0_SCR1C_R1_0_CT_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Runs of One, Length 1 Count
      R1_1_CT        : TRNG0_SCR1C_R1_1_CT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR1C_Register use record
      R1_0_CT        at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      R1_1_CT        at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRNG0_SCR1L_RUN1_MAX_Field is HAL.UInt15;
   subtype TRNG0_SCR1L_RUN1_RNG_Field is HAL.UInt15;

   --  RNG Statistical Check Run Length 1 Limit Register
   type TRNG0_SCR1L_Register is record
      --  Run Length 1 Maximum Limit
      RUN1_MAX       : TRNG0_SCR1L_RUN1_MAX_Field := 16#195#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Run Length 1 Range
      RUN1_RNG       : TRNG0_SCR1L_RUN1_RNG_Field := 16#B2#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR1L_Register use record
      RUN1_MAX       at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RUN1_RNG       at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRNG0_SCR2C_R2_0_CT_Field is HAL.UInt14;
   subtype TRNG0_SCR2C_R2_1_CT_Field is HAL.UInt14;

   --  RNG Statistical Check Run Length 2 Count Register
   type TRNG0_SCR2C_Register is record
      --  Read-only. Runs of Zero, Length 2 Count
      R2_0_CT        : TRNG0_SCR2C_R2_0_CT_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Runs of One, Length 2 Count
      R2_1_CT        : TRNG0_SCR2C_R2_1_CT_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR2C_Register use record
      R2_0_CT        at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      R2_1_CT        at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TRNG0_SCR2L_RUN2_MAX_Field is HAL.UInt14;
   subtype TRNG0_SCR2L_RUN2_RNG_Field is HAL.UInt14;

   --  RNG Statistical Check Run Length 2 Limit Register
   type TRNG0_SCR2L_Register is record
      --  Run Length 2 Maximum Limit
      RUN2_MAX       : TRNG0_SCR2L_RUN2_MAX_Field := 16#DC#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Run Length 2 Range
      RUN2_RNG       : TRNG0_SCR2L_RUN2_RNG_Field := 16#7A#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR2L_Register use record
      RUN2_MAX       at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RUN2_RNG       at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TRNG0_SCR3C_R3_0_CT_Field is HAL.UInt13;
   subtype TRNG0_SCR3C_R3_1_CT_Field is HAL.UInt13;

   --  RNG Statistical Check Run Length 3 Count Register
   type TRNG0_SCR3C_Register is record
      --  Read-only. Runs of Zeroes, Length 3 Count
      R3_0_CT        : TRNG0_SCR3C_R3_0_CT_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Runs of Ones, Length 3 Count
      R3_1_CT        : TRNG0_SCR3C_R3_1_CT_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR3C_Register use record
      R3_0_CT        at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      R3_1_CT        at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TRNG0_SCR3L_RUN3_MAX_Field is HAL.UInt13;
   subtype TRNG0_SCR3L_RUN3_RNG_Field is HAL.UInt13;

   --  RNG Statistical Check Run Length 3 Limit Register
   type TRNG0_SCR3L_Register is record
      --  Run Length 3 Maximum Limit
      RUN3_MAX       : TRNG0_SCR3L_RUN3_MAX_Field := 16#7D#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Run Length 3 Range
      RUN3_RNG       : TRNG0_SCR3L_RUN3_RNG_Field := 16#58#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR3L_Register use record
      RUN3_MAX       at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RUN3_RNG       at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TRNG0_SCR4C_R4_0_CT_Field is HAL.UInt12;
   subtype TRNG0_SCR4C_R4_1_CT_Field is HAL.UInt12;

   --  RNG Statistical Check Run Length 4 Count Register
   type TRNG0_SCR4C_Register is record
      --  Read-only. Runs of Zero, Length 4 Count
      R4_0_CT        : TRNG0_SCR4C_R4_0_CT_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Runs of One, Length 4 Count
      R4_1_CT        : TRNG0_SCR4C_R4_1_CT_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR4C_Register use record
      R4_0_CT        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      R4_1_CT        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRNG0_SCR4L_RUN4_MAX_Field is HAL.UInt12;
   subtype TRNG0_SCR4L_RUN4_RNG_Field is HAL.UInt12;

   --  RNG Statistical Check Run Length 4 Limit Register
   type TRNG0_SCR4L_Register is record
      --  Run Length 4 Maximum Limit
      RUN4_MAX       : TRNG0_SCR4L_RUN4_MAX_Field := 16#4B#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Run Length 4 Range
      RUN4_RNG       : TRNG0_SCR4L_RUN4_RNG_Field := 16#40#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR4L_Register use record
      RUN4_MAX       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RUN4_RNG       at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRNG0_SCR5C_R5_0_CT_Field is HAL.UInt11;
   subtype TRNG0_SCR5C_R5_1_CT_Field is HAL.UInt11;

   --  RNG Statistical Check Run Length 5 Count Register
   type TRNG0_SCR5C_Register is record
      --  Read-only. Runs of Zero, Length 5 Count
      R5_0_CT        : TRNG0_SCR5C_R5_0_CT_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Runs of One, Length 5 Count
      R5_1_CT        : TRNG0_SCR5C_R5_1_CT_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR5C_Register use record
      R5_0_CT        at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      R5_1_CT        at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TRNG0_SCR5L_RUN5_MAX_Field is HAL.UInt11;
   subtype TRNG0_SCR5L_RUN5_RNG_Field is HAL.UInt11;

   --  RNG Statistical Check Run Length 5 Limit Register
   type TRNG0_SCR5L_Register is record
      --  Run Length 5 Maximum Limit
      RUN5_MAX       : TRNG0_SCR5L_RUN5_MAX_Field := 16#2F#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Run Length 5 Range
      RUN5_RNG       : TRNG0_SCR5L_RUN5_RNG_Field := 16#2E#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR5L_Register use record
      RUN5_MAX       at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RUN5_RNG       at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TRNG0_SCR6PC_R6P_0_CT_Field is HAL.UInt11;
   subtype TRNG0_SCR6PC_R6P_1_CT_Field is HAL.UInt11;

   --  RNG Statistical Check Run Length 6+ Count Register
   type TRNG0_SCR6PC_Register is record
      --  Read-only. Runs of Zero, Length 6+ Count
      R6P_0_CT       : TRNG0_SCR6PC_R6P_0_CT_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Runs of One, Length 6+ Count
      R6P_1_CT       : TRNG0_SCR6PC_R6P_1_CT_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR6PC_Register use record
      R6P_0_CT       at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      R6P_1_CT       at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TRNG0_SCR6PL_RUN6P_MAX_Field is HAL.UInt11;
   subtype TRNG0_SCR6PL_RUN6P_RNG_Field is HAL.UInt11;

   --  RNG Statistical Check Run Length 6+ Limit Register
   type TRNG0_SCR6PL_Register is record
      --  Run Length 6+ Maximum Limit
      RUN6P_MAX      : TRNG0_SCR6PL_RUN6P_MAX_Field := 16#2F#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Run Length 6+ Range
      RUN6P_RNG      : TRNG0_SCR6PL_RUN6P_RNG_Field := 16#2E#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SCR6PL_Register use record
      RUN6P_MAX      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RUN6P_RNG      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  TRNG0_STATUS_TF1BR array
   type TRNG0_STATUS_TF1BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TRNG0_STATUS_TF1BR
   type TRNG0_STATUS_TF1BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF1BR as a value
            Val : HAL.UInt2;
         when True =>
            --  TF1BR as an array
            Arr : TRNG0_STATUS_TF1BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TRNG0_STATUS_TF1BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TRNG0_STATUS_TF2BR array
   type TRNG0_STATUS_TF2BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TRNG0_STATUS_TF2BR
   type TRNG0_STATUS_TF2BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF2BR as a value
            Val : HAL.UInt2;
         when True =>
            --  TF2BR as an array
            Arr : TRNG0_STATUS_TF2BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TRNG0_STATUS_TF2BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TRNG0_STATUS_TF3BR array
   type TRNG0_STATUS_TF3BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TRNG0_STATUS_TF3BR
   type TRNG0_STATUS_TF3BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF3BR as a value
            Val : HAL.UInt2;
         when True =>
            --  TF3BR as an array
            Arr : TRNG0_STATUS_TF3BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TRNG0_STATUS_TF3BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TRNG0_STATUS_TF4BR array
   type TRNG0_STATUS_TF4BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TRNG0_STATUS_TF4BR
   type TRNG0_STATUS_TF4BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF4BR as a value
            Val : HAL.UInt2;
         when True =>
            --  TF4BR as an array
            Arr : TRNG0_STATUS_TF4BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TRNG0_STATUS_TF4BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TRNG0_STATUS_TF5BR array
   type TRNG0_STATUS_TF5BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TRNG0_STATUS_TF5BR
   type TRNG0_STATUS_TF5BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF5BR as a value
            Val : HAL.UInt2;
         when True =>
            --  TF5BR as an array
            Arr : TRNG0_STATUS_TF5BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TRNG0_STATUS_TF5BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TRNG0_STATUS_TF6PBR array
   type TRNG0_STATUS_TF6PBR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TRNG0_STATUS_TF6PBR
   type TRNG0_STATUS_TF6PBR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF6PBR as a value
            Val : HAL.UInt2;
         when True =>
            --  TF6PBR as an array
            Arr : TRNG0_STATUS_TF6PBR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TRNG0_STATUS_TF6PBR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype TRNG0_STATUS_RETRY_CT_Field is HAL.UInt4;

   --  RNG Status Register
   type TRNG0_STATUS_Register is record
      --  Read-only. Test Fail, 1-Bit Run, Sampling 0s. If TF1BR0=1, the 1-Bit
      --  Run, Sampling 0s Test has failed.
      TF1BR          : TRNG0_STATUS_TF1BR_Field;
      --  Read-only. Test Fail, 2-Bit Run, Sampling 0s. If TF2BR0=1, the 2-Bit
      --  Run, Sampling 0s Test has failed.
      TF2BR          : TRNG0_STATUS_TF2BR_Field;
      --  Read-only. Test Fail, 3-Bit Run, Sampling 0s. If TF3BR0=1, the 3-Bit
      --  Run, Sampling 0s Test has failed.
      TF3BR          : TRNG0_STATUS_TF3BR_Field;
      --  Read-only. Test Fail, 4-Bit Run, Sampling 0s. If TF4BR0=1, the 4-Bit
      --  Run, Sampling 0s Test has failed.
      TF4BR          : TRNG0_STATUS_TF4BR_Field;
      --  Read-only. Test Fail, 5-Bit Run, Sampling 0s. If TF5BR0=1, the 5-Bit
      --  Run, Sampling 0s Test has failed.
      TF5BR          : TRNG0_STATUS_TF5BR_Field;
      --  Read-only. Test Fail, 6 Plus Bit Run, Sampling 0s
      TF6PBR         : TRNG0_STATUS_TF6PBR_Field;
      --  Read-only. Test Fail, Sparse Bit. If TFSB=1, the Sparse Bit Test has
      --  failed.
      TFSB           : Boolean;
      --  Read-only. Test Fail, Long Run. If TFLR=1, the Long Run Test has
      --  failed.
      TFLR           : Boolean;
      --  Read-only. Test Fail, Poker. If TFP=1, the Poker Test has failed.
      TFP            : Boolean;
      --  Read-only. Test Fail, Mono Bit. If TFMB=1, the Mono Bit Test has
      --  failed.
      TFMB           : Boolean;
      --  Read-only. RETRY COUNT
      RETRY_CT       : TRNG0_STATUS_RETRY_CT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_STATUS_Register use record
      TF1BR          at 0 range 0 .. 1;
      TF2BR          at 0 range 2 .. 3;
      TF3BR          at 0 range 4 .. 5;
      TF4BR          at 0 range 6 .. 7;
      TF5BR          at 0 range 8 .. 9;
      TF6PBR         at 0 range 10 .. 11;
      TFSB           at 0 range 12 .. 12;
      TFLR           at 0 range 13 .. 13;
      TFP            at 0 range 14 .. 14;
      TFMB           at 0 range 15 .. 15;
      RETRY_CT       at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TRNG0_PKRCNT10_PKR_0_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNT10_PKR_1_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count 1 and 0 Register
   type TRNG0_PKRCNT10_Register is record
      --  Read-only. Poker 0h Count
      PKR_0_CT : TRNG0_PKRCNT10_PKR_0_CT_Field;
      --  Read-only. Poker 1h Count
      PKR_1_CT : TRNG0_PKRCNT10_PKR_1_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNT10_Register use record
      PKR_0_CT at 0 range 0 .. 15;
      PKR_1_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNT32_PKR_2_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNT32_PKR_3_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count 3 and 2 Register
   type TRNG0_PKRCNT32_Register is record
      --  Read-only. Poker 2h Count
      PKR_2_CT : TRNG0_PKRCNT32_PKR_2_CT_Field;
      --  Read-only. Poker 3h Count
      PKR_3_CT : TRNG0_PKRCNT32_PKR_3_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNT32_Register use record
      PKR_2_CT at 0 range 0 .. 15;
      PKR_3_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNT54_PKR_4_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNT54_PKR_5_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count 5 and 4 Register
   type TRNG0_PKRCNT54_Register is record
      --  Read-only. Poker 4h Count
      PKR_4_CT : TRNG0_PKRCNT54_PKR_4_CT_Field;
      --  Read-only. Poker 5h Count
      PKR_5_CT : TRNG0_PKRCNT54_PKR_5_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNT54_Register use record
      PKR_4_CT at 0 range 0 .. 15;
      PKR_5_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNT76_PKR_6_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNT76_PKR_7_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count 7 and 6 Register
   type TRNG0_PKRCNT76_Register is record
      --  Read-only. Poker 6h Count
      PKR_6_CT : TRNG0_PKRCNT76_PKR_6_CT_Field;
      --  Read-only. Poker 7h Count
      PKR_7_CT : TRNG0_PKRCNT76_PKR_7_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNT76_Register use record
      PKR_6_CT at 0 range 0 .. 15;
      PKR_7_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNT98_PKR_8_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNT98_PKR_9_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count 9 and 8 Register
   type TRNG0_PKRCNT98_Register is record
      --  Read-only. Poker 8h Count
      PKR_8_CT : TRNG0_PKRCNT98_PKR_8_CT_Field;
      --  Read-only. Poker 9h Count
      PKR_9_CT : TRNG0_PKRCNT98_PKR_9_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNT98_Register use record
      PKR_8_CT at 0 range 0 .. 15;
      PKR_9_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNTBA_PKR_A_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNTBA_PKR_B_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count B and A Register
   type TRNG0_PKRCNTBA_Register is record
      --  Read-only. Poker Ah Count
      PKR_A_CT : TRNG0_PKRCNTBA_PKR_A_CT_Field;
      --  Read-only. Poker Bh Count
      PKR_B_CT : TRNG0_PKRCNTBA_PKR_B_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNTBA_Register use record
      PKR_A_CT at 0 range 0 .. 15;
      PKR_B_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNTDC_PKR_C_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNTDC_PKR_D_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count D and C Register
   type TRNG0_PKRCNTDC_Register is record
      --  Read-only. Poker Ch Count
      PKR_C_CT : TRNG0_PKRCNTDC_PKR_C_CT_Field;
      --  Read-only. Poker Dh Count
      PKR_D_CT : TRNG0_PKRCNTDC_PKR_D_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNTDC_Register use record
      PKR_C_CT at 0 range 0 .. 15;
      PKR_D_CT at 0 range 16 .. 31;
   end record;

   subtype TRNG0_PKRCNTFE_PKR_E_CT_Field is HAL.UInt16;
   subtype TRNG0_PKRCNTFE_PKR_F_CT_Field is HAL.UInt16;

   --  RNG Statistical Check Poker Count F and E Register
   type TRNG0_PKRCNTFE_Register is record
      --  Read-only. Poker Eh Count
      PKR_E_CT : TRNG0_PKRCNTFE_PKR_E_CT_Field;
      --  Read-only. Poker Fh Count
      PKR_F_CT : TRNG0_PKRCNTFE_PKR_F_CT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_PKRCNTFE_Register use record
      PKR_E_CT at 0 range 0 .. 15;
      PKR_F_CT at 0 range 16 .. 31;
   end record;

   --  Reserved. DRNG specific, not applicable to this version.
   type TRNG0_SEC_CFG_SH0_Field is
     (
      --  See DRNG version.
      TRNG0_SEC_CFG_SH0_Field_0,
      --  See DRNG version.
      TRNG0_SEC_CFG_SH0_Field_1)
     with Size => 1;
   for TRNG0_SEC_CFG_SH0_Field use
     (TRNG0_SEC_CFG_SH0_Field_0 => 0,
      TRNG0_SEC_CFG_SH0_Field_1 => 1);

   --  If set the TRNG registers cannot be programmed
   type TRNG0_SEC_CFG_NO_PRGM_Field is
     (
      --  Programability of registers controlled only by the RNG Miscellaneous
      --  Control Register's access mode bit.
      TRNG0_SEC_CFG_NO_PRGM_Field_0,
      --  Overides RNG Miscellaneous Control Register access mode and prevents
      --  TRNG register programming.
      TRNG0_SEC_CFG_NO_PRGM_Field_1)
     with Size => 1;
   for TRNG0_SEC_CFG_NO_PRGM_Field use
     (TRNG0_SEC_CFG_NO_PRGM_Field_0 => 0,
      TRNG0_SEC_CFG_NO_PRGM_Field_1 => 1);

   --  Reserved. DRNG-specific, not applicable to this version.
   type TRNG0_SEC_CFG_SK_VAL_Field is
     (
      --  See DRNG version.
      TRNG0_SEC_CFG_SK_VAL_Field_0,
      --  See DRNG version.
      TRNG0_SEC_CFG_SK_VAL_Field_1)
     with Size => 1;
   for TRNG0_SEC_CFG_SK_VAL_Field use
     (TRNG0_SEC_CFG_SK_VAL_Field_0 => 0,
      TRNG0_SEC_CFG_SK_VAL_Field_1 => 1);

   --  RNG Security Configuration Register
   type TRNG0_SEC_CFG_Register is record
      --  Reserved. DRNG specific, not applicable to this version.
      SH0           : TRNG0_SEC_CFG_SH0_Field :=
                       NRF_SVD.TRNG0.TRNG0_SEC_CFG_SH0_Field_0;
      --  If set the TRNG registers cannot be programmed
      NO_PRGM       : TRNG0_SEC_CFG_NO_PRGM_Field :=
                       NRF_SVD.TRNG0.TRNG0_SEC_CFG_NO_PRGM_Field_0;
      --  Reserved. DRNG-specific, not applicable to this version.
      SK_VAL        : TRNG0_SEC_CFG_SK_VAL_Field :=
                       NRF_SVD.TRNG0.TRNG0_SEC_CFG_SK_VAL_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_SEC_CFG_Register use record
      SH0           at 0 range 0 .. 0;
      NO_PRGM       at 0 range 1 .. 1;
      SK_VAL        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Bit position that can be cleared if corresponding bit of INT_STATUS has
   --  been asserted.
   type TRNG0_INT_CTRL_HW_ERR_Field is
     (
      --  Corresponding bit of INT_STATUS cleared.
      TRNG0_INT_CTRL_HW_ERR_Field_0,
      --  Corresponding bit of INT_STATUS active.
      TRNG0_INT_CTRL_HW_ERR_Field_1)
     with Size => 1;
   for TRNG0_INT_CTRL_HW_ERR_Field use
     (TRNG0_INT_CTRL_HW_ERR_Field_0 => 0,
      TRNG0_INT_CTRL_HW_ERR_Field_1 => 1);

   --  Same behavior as bit 0 above.
   type TRNG0_INT_CTRL_ENT_VAL_Field is
     (
      --  Same behavior as bit 0 above.
      TRNG0_INT_CTRL_ENT_VAL_Field_0,
      --  Same behavior as bit 0 above.
      TRNG0_INT_CTRL_ENT_VAL_Field_1)
     with Size => 1;
   for TRNG0_INT_CTRL_ENT_VAL_Field use
     (TRNG0_INT_CTRL_ENT_VAL_Field_0 => 0,
      TRNG0_INT_CTRL_ENT_VAL_Field_1 => 1);

   --  Same behavior as bit 0 above.
   type TRNG0_INT_CTRL_FRQ_CT_FAIL_Field is
     (
      --  Same behavior as bit 0 above.
      TRNG0_INT_CTRL_FRQ_CT_FAIL_Field_0,
      --  Same behavior as bit 0 above.
      TRNG0_INT_CTRL_FRQ_CT_FAIL_Field_1)
     with Size => 1;
   for TRNG0_INT_CTRL_FRQ_CT_FAIL_Field use
     (TRNG0_INT_CTRL_FRQ_CT_FAIL_Field_0 => 0,
      TRNG0_INT_CTRL_FRQ_CT_FAIL_Field_1 => 1);

   subtype TRNG0_INT_CTRL_UNUSED_Field is HAL.UInt29;

   --  RNG Interrupt Control Register
   type TRNG0_INT_CTRL_Register is record
      --  Bit position that can be cleared if corresponding bit of INT_STATUS
      --  has been asserted.
      HW_ERR      : TRNG0_INT_CTRL_HW_ERR_Field :=
                     NRF_SVD.TRNG0.TRNG0_INT_CTRL_HW_ERR_Field_1;
      --  Same behavior as bit 0 above.
      ENT_VAL     : TRNG0_INT_CTRL_ENT_VAL_Field :=
                     NRF_SVD.TRNG0.TRNG0_INT_CTRL_ENT_VAL_Field_1;
      --  Same behavior as bit 0 above.
      FRQ_CT_FAIL : TRNG0_INT_CTRL_FRQ_CT_FAIL_Field :=
                     NRF_SVD.TRNG0.TRNG0_INT_CTRL_FRQ_CT_FAIL_Field_1;
      --  Reserved but writeable.
      UNUSED      : TRNG0_INT_CTRL_UNUSED_Field := 16#1FFFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_INT_CTRL_Register use record
      HW_ERR      at 0 range 0 .. 0;
      ENT_VAL     at 0 range 1 .. 1;
      FRQ_CT_FAIL at 0 range 2 .. 2;
      UNUSED      at 0 range 3 .. 31;
   end record;

   --  Bit position that can be cleared if corresponding bit of INT_STATUS has
   --  been asserted.
   type TRNG0_INT_MASK_HW_ERR_Field is
     (
      --  Corresponding interrupt of INT_STATUS is masked.
      TRNG0_INT_MASK_HW_ERR_Field_0,
      --  Corresponding bit of INT_STATUS is active.
      TRNG0_INT_MASK_HW_ERR_Field_1)
     with Size => 1;
   for TRNG0_INT_MASK_HW_ERR_Field use
     (TRNG0_INT_MASK_HW_ERR_Field_0 => 0,
      TRNG0_INT_MASK_HW_ERR_Field_1 => 1);

   --  Same behavior as bit 0 above.
   type TRNG0_INT_MASK_ENT_VAL_Field is
     (
      --  Same behavior as bit 0 above.
      TRNG0_INT_MASK_ENT_VAL_Field_0,
      --  Same behavior as bit 0 above.
      TRNG0_INT_MASK_ENT_VAL_Field_1)
     with Size => 1;
   for TRNG0_INT_MASK_ENT_VAL_Field use
     (TRNG0_INT_MASK_ENT_VAL_Field_0 => 0,
      TRNG0_INT_MASK_ENT_VAL_Field_1 => 1);

   --  Same behavior as bit 0 above.
   type TRNG0_INT_MASK_FRQ_CT_FAIL_Field is
     (
      --  Same behavior as bit 0 above.
      TRNG0_INT_MASK_FRQ_CT_FAIL_Field_0,
      --  Same behavior as bit 0 above.
      TRNG0_INT_MASK_FRQ_CT_FAIL_Field_1)
     with Size => 1;
   for TRNG0_INT_MASK_FRQ_CT_FAIL_Field use
     (TRNG0_INT_MASK_FRQ_CT_FAIL_Field_0 => 0,
      TRNG0_INT_MASK_FRQ_CT_FAIL_Field_1 => 1);

   --  RNG Mask Register
   type TRNG0_INT_MASK_Register is record
      --  Bit position that can be cleared if corresponding bit of INT_STATUS
      --  has been asserted.
      HW_ERR        : TRNG0_INT_MASK_HW_ERR_Field :=
                       NRF_SVD.TRNG0.TRNG0_INT_MASK_HW_ERR_Field_0;
      --  Same behavior as bit 0 above.
      ENT_VAL       : TRNG0_INT_MASK_ENT_VAL_Field :=
                       NRF_SVD.TRNG0.TRNG0_INT_MASK_ENT_VAL_Field_0;
      --  Same behavior as bit 0 above.
      FRQ_CT_FAIL   : TRNG0_INT_MASK_FRQ_CT_FAIL_Field :=
                       NRF_SVD.TRNG0.TRNG0_INT_MASK_FRQ_CT_FAIL_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_INT_MASK_Register use record
      HW_ERR        at 0 range 0 .. 0;
      ENT_VAL       at 0 range 1 .. 1;
      FRQ_CT_FAIL   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Read: Error status
   type TRNG0_INT_STATUS_HW_ERR_Field is
     (
      --  no error
      TRNG0_INT_STATUS_HW_ERR_Field_0,
      --  error detected.
      TRNG0_INT_STATUS_HW_ERR_Field_1)
     with Size => 1;
   for TRNG0_INT_STATUS_HW_ERR_Field use
     (TRNG0_INT_STATUS_HW_ERR_Field_0 => 0,
      TRNG0_INT_STATUS_HW_ERR_Field_1 => 1);

   --  Read only: Entropy Valid
   type TRNG0_INT_STATUS_ENT_VAL_Field is
     (
      --  Busy generation entropy. Any value read is invalid.
      TRNG0_INT_STATUS_ENT_VAL_Field_0,
      --  TRNG can be stopped and entropy is valid if read.
      TRNG0_INT_STATUS_ENT_VAL_Field_1)
     with Size => 1;
   for TRNG0_INT_STATUS_ENT_VAL_Field use
     (TRNG0_INT_STATUS_ENT_VAL_Field_0 => 0,
      TRNG0_INT_STATUS_ENT_VAL_Field_1 => 1);

   --  Read only: Frequency Count Fail
   type TRNG0_INT_STATUS_FRQ_CT_FAIL_Field is
     (
      --  No hardware nor self test frequency errors.
      TRNG0_INT_STATUS_FRQ_CT_FAIL_Field_0,
      --  The frequency counter has detected a failure.
      TRNG0_INT_STATUS_FRQ_CT_FAIL_Field_1)
     with Size => 1;
   for TRNG0_INT_STATUS_FRQ_CT_FAIL_Field use
     (TRNG0_INT_STATUS_FRQ_CT_FAIL_Field_0 => 0,
      TRNG0_INT_STATUS_FRQ_CT_FAIL_Field_1 => 1);

   --  RNG Interrupt Status Register
   type TRNG0_INT_STATUS_Register is record
      --  Read-only. Read: Error status
      HW_ERR        : TRNG0_INT_STATUS_HW_ERR_Field :=
                       NRF_SVD.TRNG0.TRNG0_INT_STATUS_HW_ERR_Field_0;
      --  Read-only. Read only: Entropy Valid
      ENT_VAL       : TRNG0_INT_STATUS_ENT_VAL_Field :=
                       NRF_SVD.TRNG0.TRNG0_INT_STATUS_ENT_VAL_Field_0;
      --  Read only: Frequency Count Fail
      FRQ_CT_FAIL   : TRNG0_INT_STATUS_FRQ_CT_FAIL_Field :=
                       NRF_SVD.TRNG0.TRNG0_INT_STATUS_FRQ_CT_FAIL_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_INT_STATUS_Register use record
      HW_ERR        at 0 range 0 .. 0;
      ENT_VAL       at 0 range 1 .. 1;
      FRQ_CT_FAIL   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Shows the Freescale IP's Minor revision of the TRNG.
   type TRNG0_VID1_RNG_MIN_REV_Field is
     (
      --  Minor revision number for TRNG.
      TRNG0_VID1_RNG_MIN_REV_Field_0X00)
     with Size => 8;
   for TRNG0_VID1_RNG_MIN_REV_Field use
     (TRNG0_VID1_RNG_MIN_REV_Field_0X00 => 0);

   --  Shows the Freescale IP's Major revision of the TRNG.
   type TRNG0_VID1_RNG_MAJ_REV_Field is
     (
      --  Major revision number for TRNG.
      TRNG0_VID1_RNG_MAJ_REV_Field_0X01)
     with Size => 8;
   for TRNG0_VID1_RNG_MAJ_REV_Field use
     (TRNG0_VID1_RNG_MAJ_REV_Field_0X01 => 1);

   subtype TRNG0_VID1_RNG_IP_ID_Field is HAL.UInt16;

   --  RNG Version ID Register (MS)
   type TRNG0_VID1_Register is record
      --  Read-only. Shows the Freescale IP's Minor revision of the TRNG.
      RNG_MIN_REV : TRNG0_VID1_RNG_MIN_REV_Field;
      --  Read-only. Shows the Freescale IP's Major revision of the TRNG.
      RNG_MAJ_REV : TRNG0_VID1_RNG_MAJ_REV_Field;
      --  Read-only. Shows the Freescale IP ID.
      RNG_IP_ID   : TRNG0_VID1_RNG_IP_ID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_VID1_Register use record
      RNG_MIN_REV at 0 range 0 .. 7;
      RNG_MAJ_REV at 0 range 8 .. 15;
      RNG_IP_ID   at 0 range 16 .. 31;
   end record;

   --  Shows the Freescale IP's Configuaration options for the TRNG.
   type TRNG0_VID2_RNG_CONFIG_OPT_Field is
     (
      --  TRNG_CONFIG_OPT for TRNG.
      TRNG0_VID2_RNG_CONFIG_OPT_Field_0X00)
     with Size => 8;
   for TRNG0_VID2_RNG_CONFIG_OPT_Field use
     (TRNG0_VID2_RNG_CONFIG_OPT_Field_0X00 => 0);

   --  Shows the Freescale IP's ECO revision of the TRNG.
   type TRNG0_VID2_RNG_ECO_REV_Field is
     (
      --  TRNG_ECO_REV for TRNG.
      TRNG0_VID2_RNG_ECO_REV_Field_0X00)
     with Size => 8;
   for TRNG0_VID2_RNG_ECO_REV_Field use
     (TRNG0_VID2_RNG_ECO_REV_Field_0X00 => 0);

   --  Shows the Freescale integration options for the TRNG.
   type TRNG0_VID2_RNG_INTG_OPT_Field is
     (
      --  INTG_OPT for TRNG.
      TRNG0_VID2_RNG_INTG_OPT_Field_0X00)
     with Size => 8;
   for TRNG0_VID2_RNG_INTG_OPT_Field use
     (TRNG0_VID2_RNG_INTG_OPT_Field_0X00 => 0);

   --  Shows the Freescale compile options for the TRNG.
   type TRNG0_VID2_RNG_ERA_Field is
     (
      --  COMPILE_OPT for TRNG.
      TRNG0_VID2_RNG_ERA_Field_0X00)
     with Size => 8;
   for TRNG0_VID2_RNG_ERA_Field use
     (TRNG0_VID2_RNG_ERA_Field_0X00 => 0);

   --  RNG Version ID Register (LS)
   type TRNG0_VID2_Register is record
      --  Read-only. Shows the Freescale IP's Configuaration options for the
      --  TRNG.
      RNG_CONFIG_OPT : TRNG0_VID2_RNG_CONFIG_OPT_Field;
      --  Read-only. Shows the Freescale IP's ECO revision of the TRNG.
      RNG_ECO_REV    : TRNG0_VID2_RNG_ECO_REV_Field;
      --  Read-only. Shows the Freescale integration options for the TRNG.
      RNG_INTG_OPT   : TRNG0_VID2_RNG_INTG_OPT_Field;
      --  Read-only. Shows the Freescale compile options for the TRNG.
      RNG_ERA        : TRNG0_VID2_RNG_ERA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG0_VID2_Register use record
      RNG_CONFIG_OPT at 0 range 0 .. 7;
      RNG_ECO_REV    at 0 range 8 .. 15;
      RNG_INTG_OPT   at 0 range 16 .. 23;
      RNG_ERA        at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TRNG0_Disc is
     (
      Max,
      Sq,
      Sblim,
      Totsam,
      Cnt,
      C,
      L);

   --  RNG
   type TRNG0_Peripheral
     (Discriminent : TRNG0_Disc := Max)
   is record
      --  RNG Miscellaneous Control Register
      TRNG0_MCTL       : aliased TRNG0_MCTL_Register;
      --  RNG Statistical Check Miscellaneous Register
      TRNG0_SCMISC     : aliased TRNG0_SCMISC_Register;
      --  RNG Poker Range Register
      TRNG0_PKRRNG     : aliased TRNG0_PKRRNG_Register;
      --  RNG Seed Control Register
      TRNG0_SDCTL      : aliased TRNG0_SDCTL_Register;
      --  RNG Frequency Count Minimum Limit Register
      TRNG0_FRQMIN     : aliased TRNG0_FRQMIN_Register;
      --  RNG Status Register
      TRNG0_STATUS     : aliased TRNG0_STATUS_Register;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT0       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT1       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT2       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT3       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT4       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT5       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT6       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT7       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT8       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT9       : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT10      : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT11      : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT12      : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT13      : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT14      : aliased HAL.UInt32;
      --  RNG TRNG Entropy Read Register
      TRNG0_ENT15      : aliased HAL.UInt32;
      --  RNG Statistical Check Poker Count 1 and 0 Register
      TRNG0_PKRCNT10   : aliased TRNG0_PKRCNT10_Register;
      --  RNG Statistical Check Poker Count 3 and 2 Register
      TRNG0_PKRCNT32   : aliased TRNG0_PKRCNT32_Register;
      --  RNG Statistical Check Poker Count 5 and 4 Register
      TRNG0_PKRCNT54   : aliased TRNG0_PKRCNT54_Register;
      --  RNG Statistical Check Poker Count 7 and 6 Register
      TRNG0_PKRCNT76   : aliased TRNG0_PKRCNT76_Register;
      --  RNG Statistical Check Poker Count 9 and 8 Register
      TRNG0_PKRCNT98   : aliased TRNG0_PKRCNT98_Register;
      --  RNG Statistical Check Poker Count B and A Register
      TRNG0_PKRCNTBA   : aliased TRNG0_PKRCNTBA_Register;
      --  RNG Statistical Check Poker Count D and C Register
      TRNG0_PKRCNTDC   : aliased TRNG0_PKRCNTDC_Register;
      --  RNG Statistical Check Poker Count F and E Register
      TRNG0_PKRCNTFE   : aliased TRNG0_PKRCNTFE_Register;
      --  RNG Security Configuration Register
      TRNG0_SEC_CFG    : aliased TRNG0_SEC_CFG_Register;
      --  RNG Interrupt Control Register
      TRNG0_INT_CTRL   : aliased TRNG0_INT_CTRL_Register;
      --  RNG Mask Register
      TRNG0_INT_MASK   : aliased TRNG0_INT_MASK_Register;
      --  RNG Interrupt Status Register
      TRNG0_INT_STATUS : aliased TRNG0_INT_STATUS_Register;
      --  RNG Version ID Register (MS)
      TRNG0_VID1       : aliased TRNG0_VID1_Register;
      --  RNG Version ID Register (LS)
      TRNG0_VID2       : aliased TRNG0_VID2_Register;
      case Discriminent is
         when Max =>
            --  RNG Poker Maximum Limit Register
            TRNG0_PKRMAX : aliased TRNG0_PKRMAX_Register;
            --  RNG Frequency Count Maximum Limit Register
            TRNG0_FRQMAX : aliased TRNG0_FRQMAX_Register;
         when Sq =>
            --  RNG Poker Square Calculation Result Register
            TRNG0_PKRSQ : aliased TRNG0_PKRSQ_Register;
         when Sblim =>
            --  RNG Sparse Bit Limit Register
            TRNG0_SBLIM : aliased TRNG0_SBLIM_Register;
         when Totsam =>
            --  RNG Total Samples Register
            TRNG0_TOTSAM : aliased TRNG0_TOTSAM_Register;
         when Cnt =>
            --  RNG Frequency Count Register
            TRNG0_FRQCNT : aliased TRNG0_FRQCNT_Register;
         when C =>
            --  RNG Statistical Check Monobit Count Register
            TRNG0_SCMC : aliased TRNG0_SCMC_Register;
            --  RNG Statistical Check Run Length 1 Count Register
            TRNG0_SCR1C : aliased TRNG0_SCR1C_Register;
            --  RNG Statistical Check Run Length 2 Count Register
            TRNG0_SCR2C : aliased TRNG0_SCR2C_Register;
            --  RNG Statistical Check Run Length 3 Count Register
            TRNG0_SCR3C : aliased TRNG0_SCR3C_Register;
            --  RNG Statistical Check Run Length 4 Count Register
            TRNG0_SCR4C : aliased TRNG0_SCR4C_Register;
            --  RNG Statistical Check Run Length 5 Count Register
            TRNG0_SCR5C : aliased TRNG0_SCR5C_Register;
            --  RNG Statistical Check Run Length 6+ Count Register
            TRNG0_SCR6PC : aliased TRNG0_SCR6PC_Register;
         when L =>
            --  RNG Statistical Check Monobit Limit Register
            TRNG0_SCML : aliased TRNG0_SCML_Register;
            --  RNG Statistical Check Run Length 1 Limit Register
            TRNG0_SCR1L : aliased TRNG0_SCR1L_Register;
            --  RNG Statistical Check Run Length 2 Limit Register
            TRNG0_SCR2L : aliased TRNG0_SCR2L_Register;
            --  RNG Statistical Check Run Length 3 Limit Register
            TRNG0_SCR3L : aliased TRNG0_SCR3L_Register;
            --  RNG Statistical Check Run Length 4 Limit Register
            TRNG0_SCR4L : aliased TRNG0_SCR4L_Register;
            --  RNG Statistical Check Run Length 5 Limit Register
            TRNG0_SCR5L : aliased TRNG0_SCR5L_Register;
            --  RNG Statistical Check Run Length 6+ Limit Register
            TRNG0_SCR6PL : aliased TRNG0_SCR6PL_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TRNG0_Peripheral use record
      TRNG0_MCTL       at 16#0# range 0 .. 31;
      TRNG0_SCMISC     at 16#4# range 0 .. 31;
      TRNG0_PKRRNG     at 16#8# range 0 .. 31;
      TRNG0_SDCTL      at 16#10# range 0 .. 31;
      TRNG0_FRQMIN     at 16#18# range 0 .. 31;
      TRNG0_STATUS     at 16#3C# range 0 .. 31;
      TRNG0_ENT0       at 16#40# range 0 .. 31;
      TRNG0_ENT1       at 16#44# range 0 .. 31;
      TRNG0_ENT2       at 16#48# range 0 .. 31;
      TRNG0_ENT3       at 16#4C# range 0 .. 31;
      TRNG0_ENT4       at 16#50# range 0 .. 31;
      TRNG0_ENT5       at 16#54# range 0 .. 31;
      TRNG0_ENT6       at 16#58# range 0 .. 31;
      TRNG0_ENT7       at 16#5C# range 0 .. 31;
      TRNG0_ENT8       at 16#60# range 0 .. 31;
      TRNG0_ENT9       at 16#64# range 0 .. 31;
      TRNG0_ENT10      at 16#68# range 0 .. 31;
      TRNG0_ENT11      at 16#6C# range 0 .. 31;
      TRNG0_ENT12      at 16#70# range 0 .. 31;
      TRNG0_ENT13      at 16#74# range 0 .. 31;
      TRNG0_ENT14      at 16#78# range 0 .. 31;
      TRNG0_ENT15      at 16#7C# range 0 .. 31;
      TRNG0_PKRCNT10   at 16#80# range 0 .. 31;
      TRNG0_PKRCNT32   at 16#84# range 0 .. 31;
      TRNG0_PKRCNT54   at 16#88# range 0 .. 31;
      TRNG0_PKRCNT76   at 16#8C# range 0 .. 31;
      TRNG0_PKRCNT98   at 16#90# range 0 .. 31;
      TRNG0_PKRCNTBA   at 16#94# range 0 .. 31;
      TRNG0_PKRCNTDC   at 16#98# range 0 .. 31;
      TRNG0_PKRCNTFE   at 16#9C# range 0 .. 31;
      TRNG0_SEC_CFG    at 16#B0# range 0 .. 31;
      TRNG0_INT_CTRL   at 16#B4# range 0 .. 31;
      TRNG0_INT_MASK   at 16#B8# range 0 .. 31;
      TRNG0_INT_STATUS at 16#BC# range 0 .. 31;
      TRNG0_VID1       at 16#F0# range 0 .. 31;
      TRNG0_VID2       at 16#F4# range 0 .. 31;
      TRNG0_PKRMAX     at 16#C# range 0 .. 31;
      TRNG0_FRQMAX     at 16#1C# range 0 .. 31;
      TRNG0_PKRSQ      at 16#C# range 0 .. 31;
      TRNG0_SBLIM      at 16#14# range 0 .. 31;
      TRNG0_TOTSAM     at 16#14# range 0 .. 31;
      TRNG0_FRQCNT     at 16#1C# range 0 .. 31;
      TRNG0_SCMC       at 16#20# range 0 .. 31;
      TRNG0_SCR1C      at 16#24# range 0 .. 31;
      TRNG0_SCR2C      at 16#28# range 0 .. 31;
      TRNG0_SCR3C      at 16#2C# range 0 .. 31;
      TRNG0_SCR4C      at 16#30# range 0 .. 31;
      TRNG0_SCR5C      at 16#34# range 0 .. 31;
      TRNG0_SCR6PC     at 16#38# range 0 .. 31;
      TRNG0_SCML       at 16#20# range 0 .. 31;
      TRNG0_SCR1L      at 16#24# range 0 .. 31;
      TRNG0_SCR2L      at 16#28# range 0 .. 31;
      TRNG0_SCR3L      at 16#2C# range 0 .. 31;
      TRNG0_SCR4L      at 16#30# range 0 .. 31;
      TRNG0_SCR5L      at 16#34# range 0 .. 31;
      TRNG0_SCR6PL     at 16#38# range 0 .. 31;
   end record;

   --  RNG
   TRNG0_Periph : aliased TRNG0_Peripheral
     with Import, Address => TRNG0_Base;

end NRF_SVD.TRNG0;
