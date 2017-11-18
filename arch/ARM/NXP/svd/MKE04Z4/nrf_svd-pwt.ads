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

--  Pulse Width Timer
package NRF_SVD.PWT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  PWT Counter Overflow
   type R1_PWTOV_Field is
     (
      --  PWT counter no overflow.
      R1_PWTOV_Field_0,
      --  PWT counter runs from 0xFFFF to 0x0000.
      R1_PWTOV_Field_1)
     with Size => 1;
   for R1_PWTOV_Field use
     (R1_PWTOV_Field_0 => 0,
      R1_PWTOV_Field_1 => 1);

   --  PWT Pulse Width Valid
   type R1_PWTRDY_Field is
     (
      --  PWT pulse width register(s) is not up-to-date.
      R1_PWTRDY_Field_0,
      --  PWT pulse width register(s) has been updated.
      R1_PWTRDY_Field_1)
     with Size => 1;
   for R1_PWTRDY_Field use
     (R1_PWTRDY_Field_0 => 0,
      R1_PWTRDY_Field_1 => 1);

   --  PWT Soft Reset
   type R1_PWTSR_Field is
     (
      --  No action taken.
      R1_PWTSR_Field_0,
      --  Writing 1 to this field will perform soft reset to PWT.
      R1_PWTSR_Field_1)
     with Size => 1;
   for R1_PWTSR_Field use
     (R1_PWTSR_Field_0 => 0,
      R1_PWTSR_Field_1 => 1);

   --  PWT Counter Overflow Interrupt Enable
   type R1_POVIE_Field is
     (
      --  Disable PWT to generate interrupt when PWTOV is set.
      R1_POVIE_Field_0,
      --  Enable PWT to generate interrupt when PWTOV is set.
      R1_POVIE_Field_1)
     with Size => 1;
   for R1_POVIE_Field use
     (R1_POVIE_Field_0 => 0,
      R1_POVIE_Field_1 => 1);

   --  PWT Pulse Width Data Ready Interrupt Enable
   type R1_PRDYIE_Field is
     (
      --  Disable PWT to generate interrupt when PWTRDY is set.
      R1_PRDYIE_Field_0,
      --  Enable PWT to generate interrupt when PWTRDY is set.
      R1_PRDYIE_Field_1)
     with Size => 1;
   for R1_PRDYIE_Field use
     (R1_PRDYIE_Field_0 => 0,
      R1_PRDYIE_Field_1 => 1);

   --  PWT Module Interrupt Enable
   type R1_PWTIE_Field is
     (
      --  Disables the PWT to generate interrupt.
      R1_PWTIE_Field_0,
      --  Enables the PWT to generate interrupt.
      R1_PWTIE_Field_1)
     with Size => 1;
   for R1_PWTIE_Field use
     (R1_PWTIE_Field_0 => 0,
      R1_PWTIE_Field_1 => 1);

   --  PWT Module Enable
   type R1_PWTEN_Field is
     (
      --  The PWT is disabled.
      R1_PWTEN_Field_0,
      --  The PWT is enabled.
      R1_PWTEN_Field_1)
     with Size => 1;
   for R1_PWTEN_Field use
     (R1_PWTEN_Field_0 => 0,
      R1_PWTEN_Field_1 => 1);

   --  PWT Clock Prescaler (CLKPRE) Setting
   type R1_PRE_Field is
     (
      --  Clock divided by 1.
      R1_PRE_Field_000,
      --  Clock divided by 2.
      R1_PRE_Field_001,
      --  Clock divided by 4.
      R1_PRE_Field_010,
      --  Clock divided by 8.
      R1_PRE_Field_011,
      --  Clock divided by 16.
      R1_PRE_Field_100,
      --  Clock divided by 32.
      R1_PRE_Field_101,
      --  Clock divided by 64.
      R1_PRE_Field_110,
      --  Clock divided by 128.
      R1_PRE_Field_111)
     with Size => 3;
   for R1_PRE_Field use
     (R1_PRE_Field_000 => 0,
      R1_PRE_Field_001 => 1,
      R1_PRE_Field_010 => 2,
      R1_PRE_Field_011 => 3,
      R1_PRE_Field_100 => 4,
      R1_PRE_Field_101 => 5,
      R1_PRE_Field_110 => 6,
      R1_PRE_Field_111 => 7);

   --  PWT Input Edge Sensitivity
   type R1_EDGE_Field is
     (
      --  The first falling-edge starts the pulse width measurement, and on all
      --  the subsequent falling edges, the pulse width is captured.
      R1_EDGE_Field_00,
      --  The first rising edge starts the pulse width measurement, and on all
      --  the subsequent rising and falling edges, the pulse width is captured.
      R1_EDGE_Field_01,
      --  The first falling edge starts the pulse width measurement, and on all
      --  the subsequent rising and falling edges, the pulse width is captured.
      R1_EDGE_Field_10,
      --  The first-rising edge starts the pulse width measurement, and on all
      --  the subsequent rising edges, the pulse width is captured.
      R1_EDGE_Field_11)
     with Size => 2;
   for R1_EDGE_Field use
     (R1_EDGE_Field_00 => 0,
      R1_EDGE_Field_01 => 1,
      R1_EDGE_Field_10 => 2,
      R1_EDGE_Field_11 => 3);

   --  PWT Pulse Inputs Selection
   type R1_PINSEL_Field is
     (
      --  PWTIN[0] is enabled.
      R1_PINSEL_Field_00,
      --  PWTIN[1] is enabled.
      R1_PINSEL_Field_01,
      --  PWTIN[2] enabled.
      R1_PINSEL_Field_10,
      --  PWTIN[3] enabled.
      R1_PINSEL_Field_11)
     with Size => 2;
   for R1_PINSEL_Field use
     (R1_PINSEL_Field_00 => 0,
      R1_PINSEL_Field_01 => 1,
      R1_PINSEL_Field_10 => 2,
      R1_PINSEL_Field_11 => 3);

   --  PWT Clock Source Selection
   type R1_PCLKS_Field is
     (
      --  TIMER_CLK is selected as the clock source of PWT counter.
      R1_PCLKS_Field_0,
      --  Alternative clock is selected as the clock source of PWT counter.
      R1_PCLKS_Field_1)
     with Size => 1;
   for R1_PCLKS_Field use
     (R1_PCLKS_Field_0 => 0,
      R1_PCLKS_Field_1 => 1);

   subtype PWT_R1_PPW_Field is HAL.UInt16;

   --  Pulse Width Timer Register 1
   type PWT_R1_Register is record
      --  PWT Counter Overflow
      PWTOV        : R1_PWTOV_Field := NRF_SVD.PWT.R1_PWTOV_Field_0;
      --  PWT Pulse Width Valid
      PWTRDY       : R1_PWTRDY_Field := NRF_SVD.PWT.R1_PWTRDY_Field_0;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Write-only. PWT Soft Reset
      PWTSR        : R1_PWTSR_Field := NRF_SVD.PWT.R1_PWTSR_Field_0;
      --  PWT Counter Overflow Interrupt Enable
      POVIE        : R1_POVIE_Field := NRF_SVD.PWT.R1_POVIE_Field_0;
      --  PWT Pulse Width Data Ready Interrupt Enable
      PRDYIE       : R1_PRDYIE_Field := NRF_SVD.PWT.R1_PRDYIE_Field_0;
      --  PWT Module Interrupt Enable
      PWTIE        : R1_PWTIE_Field := NRF_SVD.PWT.R1_PWTIE_Field_0;
      --  PWT Module Enable
      PWTEN        : R1_PWTEN_Field := NRF_SVD.PWT.R1_PWTEN_Field_0;
      --  PWT Clock Prescaler (CLKPRE) Setting
      PRE          : R1_PRE_Field := NRF_SVD.PWT.R1_PRE_Field_000;
      --  PWT Input Edge Sensitivity
      EDGE         : R1_EDGE_Field := NRF_SVD.PWT.R1_EDGE_Field_00;
      --  PWT Pulse Inputs Selection
      PINSEL       : R1_PINSEL_Field := NRF_SVD.PWT.R1_PINSEL_Field_00;
      --  PWT Clock Source Selection
      PCLKS        : R1_PCLKS_Field := NRF_SVD.PWT.R1_PCLKS_Field_0;
      --  Read-only. Positive Pulse Width
      PPW          : PWT_R1_PPW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWT_R1_Register use record
      PWTOV        at 0 range 0 .. 0;
      PWTRDY       at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      PWTSR        at 0 range 3 .. 3;
      POVIE        at 0 range 4 .. 4;
      PRDYIE       at 0 range 5 .. 5;
      PWTIE        at 0 range 6 .. 6;
      PWTEN        at 0 range 7 .. 7;
      PRE          at 0 range 8 .. 10;
      EDGE         at 0 range 11 .. 12;
      PINSEL       at 0 range 13 .. 14;
      PCLKS        at 0 range 15 .. 15;
      PPW          at 0 range 16 .. 31;
   end record;

   subtype PWT_R2_NPW_Field is HAL.UInt16;
   subtype PWT_R2_PWTC_Field is HAL.UInt16;

   --  Pulse Width Timer Register 2
   type PWT_R2_Register is record
      --  Read-only. Negative Pulse Width. It is suggested to use half-word
      --  (16-bit) or word (32-bit) to read out this value.
      NPW  : PWT_R2_NPW_Field;
      --  Read-only. PWT Counter. It is suggested to use half-word (16-bit) or
      --  word (32-bit) to read out this value.
      PWTC : PWT_R2_PWTC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWT_R2_Register use record
      NPW  at 0 range 0 .. 15;
      PWTC at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Width Timer
   type PWT_Peripheral is record
      --  Pulse Width Timer Register 1
      R1 : aliased PWT_R1_Register;
      --  Pulse Width Timer Register 2
      R2 : aliased PWT_R2_Register;
   end record
     with Volatile;

   for PWT_Peripheral use record
      R1 at 16#0# range 0 .. 31;
      R2 at 16#4# range 0 .. 31;
   end record;

   --  Pulse Width Timer
   PWT_Periph : aliased PWT_Peripheral
     with Import, Address => PWT_Base;

end NRF_SVD.PWT;
