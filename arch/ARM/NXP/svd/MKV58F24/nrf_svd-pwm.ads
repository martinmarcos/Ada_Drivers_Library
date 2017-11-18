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

--  This spec has been automatically generated from MKV58F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Clock Source Select
   type SMCTRL20_CLK_SEL_Field is
     (
      --  The IPBus clock is used as the clock for the local prescaler and
      --  counter.
      SMCTRL20_CLK_SEL_Field_00,
      --  EXT_CLK is used as the clock for the local prescaler and counter.
      SMCTRL20_CLK_SEL_Field_01,
      --  Submodule 0's clock (AUX_CLK) is used as the source clock for the
      --  local prescaler and counter. This setting should not be used in
      --  submodule 0 as it will force the clock to logic 0.
      SMCTRL20_CLK_SEL_Field_10)
     with Size => 2;
   for SMCTRL20_CLK_SEL_Field use
     (SMCTRL20_CLK_SEL_Field_00 => 0,
      SMCTRL20_CLK_SEL_Field_01 => 1,
      SMCTRL20_CLK_SEL_Field_10 => 2);

   --  Reload Source Select
   type SMCTRL20_RELOAD_SEL_Field is
     (
      --  The local RELOAD signal is used to reload registers.
      SMCTRL20_RELOAD_SEL_Field_0,
      --  The master RELOAD signal (from submodule 0) is used to reload
      --  registers. This setting should not be used in submodule 0 as it will
      --  force the RELOAD signal to logic 0.
      SMCTRL20_RELOAD_SEL_Field_1)
     with Size => 1;
   for SMCTRL20_RELOAD_SEL_Field use
     (SMCTRL20_RELOAD_SEL_Field_0 => 0,
      SMCTRL20_RELOAD_SEL_Field_1 => 1);

   --  This read/write bit determines the source of the FORCE OUTPUT signal for
   --  this submodule.
   type SMCTRL20_FORCE_SEL_Field is
     (
      --  The local force signal, CTRL2[FORCE], from this submodule is used to
      --  force updates.
      SMCTRL20_FORCE_SEL_Field_000,
      --  The master force signal from submodule 0 is used to force updates.
      --  This setting should not be used in submodule 0 as it will hold the
      --  FORCE OUTPUT signal to logic 0.
      SMCTRL20_FORCE_SEL_Field_001,
      --  The local reload signal from this submodule is used to force updates
      --  without regard to the state of LDOK.
      SMCTRL20_FORCE_SEL_Field_010,
      --  The master reload signal from submodule0 is used to force updates if
      --  LDOK is set. This setting should not be used in submodule0 as it will
      --  hold the FORCE OUTPUT signal to logic 0.
      SMCTRL20_FORCE_SEL_Field_011,
      --  The local sync signal from this submodule is used to force updates.
      SMCTRL20_FORCE_SEL_Field_100,
      --  The master sync signal from submodule0 is used to force updates. This
      --  setting should not be used in submodule0 as it will hold the FORCE
      --  OUTPUT signal to logic 0.
      SMCTRL20_FORCE_SEL_Field_101,
      --  The external force signal, EXT_FORCE, from outside the PWM module
      --  causes updates.
      SMCTRL20_FORCE_SEL_Field_110,
      --  The external sync signal, EXT_SYNC, from outside the PWM module
      --  causes updates.
      SMCTRL20_FORCE_SEL_Field_111)
     with Size => 3;
   for SMCTRL20_FORCE_SEL_Field use
     (SMCTRL20_FORCE_SEL_Field_000 => 0,
      SMCTRL20_FORCE_SEL_Field_001 => 1,
      SMCTRL20_FORCE_SEL_Field_010 => 2,
      SMCTRL20_FORCE_SEL_Field_011 => 3,
      SMCTRL20_FORCE_SEL_Field_100 => 4,
      SMCTRL20_FORCE_SEL_Field_101 => 5,
      SMCTRL20_FORCE_SEL_Field_110 => 6,
      SMCTRL20_FORCE_SEL_Field_111 => 7);

   --  This bit allows the CTRL2[FORCE] signal to initialize the counter
   --  without regard to the signal selected by CTRL2[INIT_SEL]
   type SMCTRL20_FRCEN_Field is
     (
      --  Initialization from a FORCE_OUT is disabled.
      SMCTRL20_FRCEN_Field_0,
      --  Initialization from a FORCE_OUT is enabled.
      SMCTRL20_FRCEN_Field_1)
     with Size => 1;
   for SMCTRL20_FRCEN_Field use
     (SMCTRL20_FRCEN_Field_0 => 0,
      SMCTRL20_FRCEN_Field_1 => 1);

   --  Initialization Control Select
   type SMCTRL20_INIT_SEL_Field is
     (
      --  Local sync (PWM_X) causes initialization.
      SMCTRL20_INIT_SEL_Field_00,
      --  Master reload from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0. The submodule counter will only reinitialize when a master
      --  reload occurs.
      SMCTRL20_INIT_SEL_Field_01,
      --  Master sync from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0.
      SMCTRL20_INIT_SEL_Field_10,
      --  EXT_SYNC causes initialization.
      SMCTRL20_INIT_SEL_Field_11)
     with Size => 2;
   for SMCTRL20_INIT_SEL_Field use
     (SMCTRL20_INIT_SEL_Field_00 => 0,
      SMCTRL20_INIT_SEL_Field_01 => 1,
      SMCTRL20_INIT_SEL_Field_10 => 2,
      SMCTRL20_INIT_SEL_Field_11 => 3);

   --  Independent or Complementary Pair Operation
   type SMCTRL20_INDEP_Field is
     (
      --  PWM_A and PWM_B form a complementary PWM pair.
      SMCTRL20_INDEP_Field_0,
      --  PWM_A and PWM_B outputs are independent PWMs.
      SMCTRL20_INDEP_Field_1)
     with Size => 1;
   for SMCTRL20_INDEP_Field use
     (SMCTRL20_INDEP_Field_0 => 0,
      SMCTRL20_INDEP_Field_1 => 1);

   --  Control 2 Register
   type SMCTRL_Register is record
      --  Clock Source Select
      CLK_SEL    : SMCTRL20_CLK_SEL_Field :=
                    NRF_SVD.PWM.SMCTRL20_CLK_SEL_Field_00;
      --  Reload Source Select
      RELOAD_SEL : SMCTRL20_RELOAD_SEL_Field :=
                    NRF_SVD.PWM.SMCTRL20_RELOAD_SEL_Field_0;
      --  This read/write bit determines the source of the FORCE OUTPUT signal
      --  for this submodule.
      FORCE_SEL  : SMCTRL20_FORCE_SEL_Field :=
                    NRF_SVD.PWM.SMCTRL20_FORCE_SEL_Field_000;
      --  Write-only. Force Initialization
      FORCE      : Boolean := False;
      --  This bit allows the CTRL2[FORCE] signal to initialize the counter
      --  without regard to the signal selected by CTRL2[INIT_SEL]
      FRCEN      : SMCTRL20_FRCEN_Field := NRF_SVD.PWM.SMCTRL20_FRCEN_Field_0;
      --  Initialization Control Select
      INIT_SEL   : SMCTRL20_INIT_SEL_Field :=
                    NRF_SVD.PWM.SMCTRL20_INIT_SEL_Field_00;
      --  PWM_X Initial Value
      PWMX_INIT  : Boolean := False;
      --  PWM45 Initial Value
      PWM45_INIT : Boolean := False;
      --  PWM23 Initial Value
      PWM23_INIT : Boolean := False;
      --  Independent or Complementary Pair Operation
      INDEP      : SMCTRL20_INDEP_Field := NRF_SVD.PWM.SMCTRL20_INDEP_Field_0;
      --  WAIT Enable
      WAITEN     : Boolean := False;
      --  Debug Enable
      DBGEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCTRL_Register use record
      CLK_SEL    at 0 range 0 .. 1;
      RELOAD_SEL at 0 range 2 .. 2;
      FORCE_SEL  at 0 range 3 .. 5;
      FORCE      at 0 range 6 .. 6;
      FRCEN      at 0 range 7 .. 7;
      INIT_SEL   at 0 range 8 .. 9;
      PWMX_INIT  at 0 range 10 .. 10;
      PWM45_INIT at 0 range 11 .. 11;
      PWM23_INIT at 0 range 12 .. 12;
      INDEP      at 0 range 13 .. 13;
      WAITEN     at 0 range 14 .. 14;
      DBGEN      at 0 range 15 .. 15;
   end record;

   --  Double Switching Enable
   type SMCTRL0_DBLEN_Field is
     (
      --  Double switching disabled.
      SMCTRL0_DBLEN_Field_0,
      --  Double switching enabled.
      SMCTRL0_DBLEN_Field_1)
     with Size => 1;
   for SMCTRL0_DBLEN_Field use
     (SMCTRL0_DBLEN_Field_0 => 0,
      SMCTRL0_DBLEN_Field_1 => 1);

   --  PWMX Double Switching Enable
   type SMCTRL0_DBLX_Field is
     (
      --  PWMX double pulse disabled.
      SMCTRL0_DBLX_Field_0,
      --  PWMX double pulse enabled.
      SMCTRL0_DBLX_Field_1)
     with Size => 1;
   for SMCTRL0_DBLX_Field use
     (SMCTRL0_DBLX_Field_0 => 0,
      SMCTRL0_DBLX_Field_1 => 1);

   --  Load Mode Select
   type SMCTRL0_LDMOD_Field is
     (
      --  Buffered registers of this submodule are loaded and take effect at
      --  the next PWM reload if MCTRL0[LDOK] is set.
      SMCTRL0_LDMOD_Field_0,
      --  Buffered registers of this submodule are loaded and take effect
      --  immediately upon MCTRL0[LDOK] being set. In this case it is not
      --  necessary to set CTRL[FULL] or CTRL[HALF].
      SMCTRL0_LDMOD_Field_1)
     with Size => 1;
   for SMCTRL0_LDMOD_Field use
     (SMCTRL0_LDMOD_Field_0 => 0,
      SMCTRL0_LDMOD_Field_1 => 1);

   --  Prescaler
   type SMCTRL0_PRSC_Field is
     (
      --  PWM clock frequency = fclk
      SMCTRL0_PRSC_Field_000,
      --  PWM clock frequency = fclk/2
      SMCTRL0_PRSC_Field_001,
      --  PWM clock frequency = fclk/4
      SMCTRL0_PRSC_Field_010,
      --  PWM clock frequency = fclk/8
      SMCTRL0_PRSC_Field_011,
      --  PWM clock frequency = fclk/16
      SMCTRL0_PRSC_Field_100,
      --  PWM clock frequency = fclk/32
      SMCTRL0_PRSC_Field_101,
      --  PWM clock frequency = fclk/64
      SMCTRL0_PRSC_Field_110,
      --  PWM clock frequency = fclk/128
      SMCTRL0_PRSC_Field_111)
     with Size => 3;
   for SMCTRL0_PRSC_Field use
     (SMCTRL0_PRSC_Field_000 => 0,
      SMCTRL0_PRSC_Field_001 => 1,
      SMCTRL0_PRSC_Field_010 => 2,
      SMCTRL0_PRSC_Field_011 => 3,
      SMCTRL0_PRSC_Field_100 => 4,
      SMCTRL0_PRSC_Field_101 => 5,
      SMCTRL0_PRSC_Field_110 => 6,
      SMCTRL0_PRSC_Field_111 => 7);

   subtype SMCTRL_DT_Field is HAL.UInt2;

   --  Full Cycle Reload
   type SMCTRL0_FULL_Field is
     (
      --  Full-cycle reloads disabled.
      SMCTRL0_FULL_Field_0,
      --  Full-cycle reloads enabled.
      SMCTRL0_FULL_Field_1)
     with Size => 1;
   for SMCTRL0_FULL_Field use
     (SMCTRL0_FULL_Field_0 => 0,
      SMCTRL0_FULL_Field_1 => 1);

   --  Half Cycle Reload
   type SMCTRL0_HALF_Field is
     (
      --  Half-cycle reloads disabled.
      SMCTRL0_HALF_Field_0,
      --  Half-cycle reloads enabled.
      SMCTRL0_HALF_Field_1)
     with Size => 1;
   for SMCTRL0_HALF_Field use
     (SMCTRL0_HALF_Field_0 => 0,
      SMCTRL0_HALF_Field_1 => 1);

   --  Load Frequency
   type SMCTRL0_LDFQ_Field is
     (
      --  Every PWM opportunity
      SMCTRL0_LDFQ_Field_0000,
      --  Every 2 PWM opportunities
      SMCTRL0_LDFQ_Field_0001,
      --  Every 3 PWM opportunities
      SMCTRL0_LDFQ_Field_0010,
      --  Every 4 PWM opportunities
      SMCTRL0_LDFQ_Field_0011,
      --  Every 5 PWM opportunities
      SMCTRL0_LDFQ_Field_0100,
      --  Every 6 PWM opportunities
      SMCTRL0_LDFQ_Field_0101,
      --  Every 7 PWM opportunities
      SMCTRL0_LDFQ_Field_0110,
      --  Every 8 PWM opportunities
      SMCTRL0_LDFQ_Field_0111,
      --  Every 9 PWM opportunities
      SMCTRL0_LDFQ_Field_1000,
      --  Every 10 PWM opportunities
      SMCTRL0_LDFQ_Field_1001,
      --  Every 11 PWM opportunities
      SMCTRL0_LDFQ_Field_1010,
      --  Every 12 PWM opportunities
      SMCTRL0_LDFQ_Field_1011,
      --  Every 13 PWM opportunities
      SMCTRL0_LDFQ_Field_1100,
      --  Every 14 PWM opportunities
      SMCTRL0_LDFQ_Field_1101,
      --  Every 15 PWM opportunities
      SMCTRL0_LDFQ_Field_1110,
      --  Every 16 PWM opportunities
      SMCTRL0_LDFQ_Field_1111)
     with Size => 4;
   for SMCTRL0_LDFQ_Field use
     (SMCTRL0_LDFQ_Field_0000 => 0,
      SMCTRL0_LDFQ_Field_0001 => 1,
      SMCTRL0_LDFQ_Field_0010 => 2,
      SMCTRL0_LDFQ_Field_0011 => 3,
      SMCTRL0_LDFQ_Field_0100 => 4,
      SMCTRL0_LDFQ_Field_0101 => 5,
      SMCTRL0_LDFQ_Field_0110 => 6,
      SMCTRL0_LDFQ_Field_0111 => 7,
      SMCTRL0_LDFQ_Field_1000 => 8,
      SMCTRL0_LDFQ_Field_1001 => 9,
      SMCTRL0_LDFQ_Field_1010 => 10,
      SMCTRL0_LDFQ_Field_1011 => 11,
      SMCTRL0_LDFQ_Field_1100 => 12,
      SMCTRL0_LDFQ_Field_1101 => 13,
      SMCTRL0_LDFQ_Field_1110 => 14,
      SMCTRL0_LDFQ_Field_1111 => 15);

   --  Control Register
   type SMCTRL_Register_1 is record
      --  Double Switching Enable
      DBLEN        : SMCTRL0_DBLEN_Field := NRF_SVD.PWM.SMCTRL0_DBLEN_Field_0;
      --  PWMX Double Switching Enable
      DBLX         : SMCTRL0_DBLX_Field := NRF_SVD.PWM.SMCTRL0_DBLX_Field_0;
      --  Load Mode Select
      LDMOD        : SMCTRL0_LDMOD_Field := NRF_SVD.PWM.SMCTRL0_LDMOD_Field_0;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Prescaler
      PRSC         : SMCTRL0_PRSC_Field := NRF_SVD.PWM.SMCTRL0_PRSC_Field_000;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
      --  Read-only. Deadtime
      DT           : SMCTRL_DT_Field := 16#0#;
      --  Full Cycle Reload
      FULL         : SMCTRL0_FULL_Field := NRF_SVD.PWM.SMCTRL0_FULL_Field_1;
      --  Half Cycle Reload
      HALF         : SMCTRL0_HALF_Field := NRF_SVD.PWM.SMCTRL0_HALF_Field_0;
      --  Load Frequency
      LDFQ         : SMCTRL0_LDFQ_Field :=
                      NRF_SVD.PWM.SMCTRL0_LDFQ_Field_0000;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCTRL_Register_1 use record
      DBLEN        at 0 range 0 .. 0;
      DBLX         at 0 range 1 .. 1;
      LDMOD        at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      PRSC         at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      DT           at 0 range 8 .. 9;
      FULL         at 0 range 10 .. 10;
      HALF         at 0 range 11 .. 11;
      LDFQ         at 0 range 12 .. 15;
   end record;

   subtype SMFRACVAL_FRACVAL1_Field is HAL.UInt5;

   --  Fractional Value Register 1
   type SMFRACVAL_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 1 Register
      FRACVAL1      : SMFRACVAL_FRACVAL1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMFRACVAL_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL1      at 0 range 11 .. 15;
   end record;

   subtype SMFRACVAL_FRACVAL2_Field is HAL.UInt5;

   --  Fractional Value Register 2
   type SMFRACVAL_Register_1 is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 2
      FRACVAL2      : SMFRACVAL_FRACVAL2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMFRACVAL_Register_1 use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL2      at 0 range 11 .. 15;
   end record;

   subtype SMFRACVAL_FRACVAL3_Field is HAL.UInt5;

   --  Fractional Value Register 3
   type SMFRACVAL_Register_2 is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 3
      FRACVAL3      : SMFRACVAL_FRACVAL3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMFRACVAL_Register_2 use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL3      at 0 range 11 .. 15;
   end record;

   subtype SMFRACVAL_FRACVAL4_Field is HAL.UInt5;

   --  Fractional Value Register 4
   type SMFRACVAL_Register_3 is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 4
      FRACVAL4      : SMFRACVAL_FRACVAL4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMFRACVAL_Register_3 use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL4      at 0 range 11 .. 15;
   end record;

   subtype SMFRACVAL_FRACVAL5_Field is HAL.UInt5;

   --  Fractional Value Register 5
   type SMFRACVAL_Register_4 is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 5
      FRACVAL5      : SMFRACVAL_FRACVAL5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMFRACVAL_Register_4 use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL5      at 0 range 11 .. 15;
   end record;

   --  Fractional Cycle PWM Period Enable
   type SMFRCTRL0_FRAC1_EN_Field is
     (
      --  Disable fractional cycle length for the PWM period.
      SMFRCTRL0_FRAC1_EN_Field_0,
      --  Enable fractional cycle length for the PWM period.
      SMFRCTRL0_FRAC1_EN_Field_1)
     with Size => 1;
   for SMFRCTRL0_FRAC1_EN_Field use
     (SMFRCTRL0_FRAC1_EN_Field_0 => 0,
      SMFRCTRL0_FRAC1_EN_Field_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_A
   type SMFRCTRL0_FRAC23_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_A.
      SMFRCTRL0_FRAC23_EN_Field_0,
      --  Enable fractional cycle placement for PWM_A.
      SMFRCTRL0_FRAC23_EN_Field_1)
     with Size => 1;
   for SMFRCTRL0_FRAC23_EN_Field use
     (SMFRCTRL0_FRAC23_EN_Field_0 => 0,
      SMFRCTRL0_FRAC23_EN_Field_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_B
   type SMFRCTRL0_FRAC45_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_B.
      SMFRCTRL0_FRAC45_EN_Field_0,
      --  Enable fractional cycle placement for PWM_B.
      SMFRCTRL0_FRAC45_EN_Field_1)
     with Size => 1;
   for SMFRCTRL0_FRAC45_EN_Field use
     (SMFRCTRL0_FRAC45_EN_Field_0 => 0,
      SMFRCTRL0_FRAC45_EN_Field_1 => 1);

   --  Fractional Delay Circuit Power Up
   type SMFRCTRL0_FRAC_PU_Field is
     (
      --  Turn off fractional delay logic.
      SMFRCTRL0_FRAC_PU_Field_0,
      --  Power up fractional delay logic.
      SMFRCTRL0_FRAC_PU_Field_1)
     with Size => 1;
   for SMFRCTRL0_FRAC_PU_Field use
     (SMFRCTRL0_FRAC_PU_Field_0 => 0,
      SMFRCTRL0_FRAC_PU_Field_1 => 1);

   --  Fractional Control Register
   type SMFRCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Fractional Cycle PWM Period Enable
      FRAC1_EN      : SMFRCTRL0_FRAC1_EN_Field :=
                       NRF_SVD.PWM.SMFRCTRL0_FRAC1_EN_Field_0;
      --  Fractional Cycle Placement Enable for PWM_A
      FRAC23_EN     : SMFRCTRL0_FRAC23_EN_Field :=
                       NRF_SVD.PWM.SMFRCTRL0_FRAC23_EN_Field_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Fractional Cycle Placement Enable for PWM_B
      FRAC45_EN     : SMFRCTRL0_FRAC45_EN_Field :=
                       NRF_SVD.PWM.SMFRCTRL0_FRAC45_EN_Field_0;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Fractional Delay Circuit Power Up
      FRAC_PU       : SMFRCTRL0_FRAC_PU_Field :=
                       NRF_SVD.PWM.SMFRCTRL0_FRAC_PU_Field_0;
      --  unspecified
      Reserved_9_14 : HAL.UInt6 := 16#0#;
      --  Read-only. Test Status Bit
      TEST          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMFRCTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FRAC1_EN      at 0 range 1 .. 1;
      FRAC23_EN     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      FRAC45_EN     at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      FRAC_PU       at 0 range 8 .. 8;
      Reserved_9_14 at 0 range 9 .. 14;
      TEST          at 0 range 15 .. 15;
   end record;

   --  PWM_X Fault State
   type SMOCTRL0_PWMXFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      SMOCTRL0_PWMXFS_Field_00,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      SMOCTRL0_PWMXFS_Field_01,
      --  Output is tristated.
      SMOCTRL0_PWMXFS_Field_10,
      --  Output is tristated.
      SMOCTRL0_PWMXFS_Field_11)
     with Size => 2;
   for SMOCTRL0_PWMXFS_Field use
     (SMOCTRL0_PWMXFS_Field_00 => 0,
      SMOCTRL0_PWMXFS_Field_01 => 1,
      SMOCTRL0_PWMXFS_Field_10 => 2,
      SMOCTRL0_PWMXFS_Field_11 => 3);

   --  PWM_B Fault State
   type SMOCTRL0_PWMBFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      SMOCTRL0_PWMBFS_Field_00,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      SMOCTRL0_PWMBFS_Field_01,
      --  Output is tristated.
      SMOCTRL0_PWMBFS_Field_10,
      --  Output is tristated.
      SMOCTRL0_PWMBFS_Field_11)
     with Size => 2;
   for SMOCTRL0_PWMBFS_Field use
     (SMOCTRL0_PWMBFS_Field_00 => 0,
      SMOCTRL0_PWMBFS_Field_01 => 1,
      SMOCTRL0_PWMBFS_Field_10 => 2,
      SMOCTRL0_PWMBFS_Field_11 => 3);

   --  PWM_A Fault State
   type SMOCTRL0_PWMAFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      SMOCTRL0_PWMAFS_Field_00,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      SMOCTRL0_PWMAFS_Field_01,
      --  Output is tristated.
      SMOCTRL0_PWMAFS_Field_10,
      --  Output is tristated.
      SMOCTRL0_PWMAFS_Field_11)
     with Size => 2;
   for SMOCTRL0_PWMAFS_Field use
     (SMOCTRL0_PWMAFS_Field_00 => 0,
      SMOCTRL0_PWMAFS_Field_01 => 1,
      SMOCTRL0_PWMAFS_Field_10 => 2,
      SMOCTRL0_PWMAFS_Field_11 => 3);

   --  PWM_X Output Polarity
   type SMOCTRL0_POLX_Field is
     (
      --  PWM_X output not inverted. A high level on the PWM_X pin represents
      --  the "on" or "active" state.
      SMOCTRL0_POLX_Field_0,
      --  PWM_X output inverted. A low level on the PWM_X pin represents the
      --  "on" or "active" state.
      SMOCTRL0_POLX_Field_1)
     with Size => 1;
   for SMOCTRL0_POLX_Field use
     (SMOCTRL0_POLX_Field_0 => 0,
      SMOCTRL0_POLX_Field_1 => 1);

   --  PWM_B Output Polarity
   type SMOCTRL0_POLB_Field is
     (
      --  PWM_B output not inverted. A high level on the PWM_B pin represents
      --  the "on" or "active" state.
      SMOCTRL0_POLB_Field_0,
      --  PWM_B output inverted. A low level on the PWM_B pin represents the
      --  "on" or "active" state.
      SMOCTRL0_POLB_Field_1)
     with Size => 1;
   for SMOCTRL0_POLB_Field use
     (SMOCTRL0_POLB_Field_0 => 0,
      SMOCTRL0_POLB_Field_1 => 1);

   --  PWM_A Output Polarity
   type SMOCTRL0_POLA_Field is
     (
      --  PWM_A output not inverted. A high level on the PWM_A pin represents
      --  the "on" or "active" state.
      SMOCTRL0_POLA_Field_0,
      --  PWM_A output inverted. A low level on the PWM_A pin represents the
      --  "on" or "active" state.
      SMOCTRL0_POLA_Field_1)
     with Size => 1;
   for SMOCTRL0_POLA_Field use
     (SMOCTRL0_POLA_Field_0 => 0,
      SMOCTRL0_POLA_Field_1 => 1);

   --  Output Control Register
   type SMOCTRL_Register is record
      --  PWM_X Fault State
      PWMXFS         : SMOCTRL0_PWMXFS_Field :=
                        NRF_SVD.PWM.SMOCTRL0_PWMXFS_Field_00;
      --  PWM_B Fault State
      PWMBFS         : SMOCTRL0_PWMBFS_Field :=
                        NRF_SVD.PWM.SMOCTRL0_PWMBFS_Field_00;
      --  PWM_A Fault State
      PWMAFS         : SMOCTRL0_PWMAFS_Field :=
                        NRF_SVD.PWM.SMOCTRL0_PWMAFS_Field_00;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PWM_X Output Polarity
      POLX           : SMOCTRL0_POLX_Field :=
                        NRF_SVD.PWM.SMOCTRL0_POLX_Field_0;
      --  PWM_B Output Polarity
      POLB           : SMOCTRL0_POLB_Field :=
                        NRF_SVD.PWM.SMOCTRL0_POLB_Field_0;
      --  PWM_A Output Polarity
      POLA           : SMOCTRL0_POLA_Field :=
                        NRF_SVD.PWM.SMOCTRL0_POLA_Field_0;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Read-only. PWM_X Input
      PWMX_IN        : Boolean := False;
      --  Read-only. PWM_B Input
      PWMB_IN        : Boolean := False;
      --  Read-only. PWM_A Input
      PWMA_IN        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMOCTRL_Register use record
      PWMXFS         at 0 range 0 .. 1;
      PWMBFS         at 0 range 2 .. 3;
      PWMAFS         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      POLX           at 0 range 8 .. 8;
      POLB           at 0 range 9 .. 9;
      POLA           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PWMX_IN        at 0 range 13 .. 13;
      PWMB_IN        at 0 range 14 .. 14;
      PWMA_IN        at 0 range 15 .. 15;
   end record;

   --  Compare Flags
   type SMSTS0_CMPF_Field is
     (
      --  No compare event has occurred for a particular VALx value.
      SMSTS0_CMPF_Field_0,
      --  A compare event has occurred for a particular VALx value.
      SMSTS0_CMPF_Field_1)
     with Size => 6;
   for SMSTS0_CMPF_Field use
     (SMSTS0_CMPF_Field_0 => 0,
      SMSTS0_CMPF_Field_1 => 1);

   --  SMSTS_CFX array
   type SMSTS_CFX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SMSTS_CFX
   type SMSTS_CFX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFX as a value
            Val : HAL.UInt2;
         when True =>
            --  CFX as an array
            Arr : SMSTS_CFX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SMSTS_CFX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SMSTS_CFB array
   type SMSTS_CFB_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SMSTS_CFB
   type SMSTS_CFB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFB as a value
            Val : HAL.UInt2;
         when True =>
            --  CFB as an array
            Arr : SMSTS_CFB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SMSTS_CFB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SMSTS_CFA array
   type SMSTS_CFA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SMSTS_CFA
   type SMSTS_CFA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFA as a value
            Val : HAL.UInt2;
         when True =>
            --  CFA as an array
            Arr : SMSTS_CFA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SMSTS_CFA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Reload Flag
   type SMSTS0_RF_Field is
     (
      --  No new reload cycle since last STS[RF] clearing
      SMSTS0_RF_Field_0,
      --  New reload cycle since last STS[RF] clearing
      SMSTS0_RF_Field_1)
     with Size => 1;
   for SMSTS0_RF_Field use
     (SMSTS0_RF_Field_0 => 0,
      SMSTS0_RF_Field_1 => 1);

   --  Reload Error Flag
   type SMSTS0_REF_Field is
     (
      --  No reload error occurred.
      SMSTS0_REF_Field_0,
      --  Reload signal occurred with non-coherent data and MCTRL0[LDOK] = 0.
      SMSTS0_REF_Field_1)
     with Size => 1;
   for SMSTS0_REF_Field use
     (SMSTS0_REF_Field_0 => 0,
      SMSTS0_REF_Field_1 => 1);

   --  Registers Updated Flag
   type SMSTS0_RUF_Field is
     (
      --  No register update has occurred since last reload.
      SMSTS0_RUF_Field_0,
      --  At least one of the double buffered registers has been updated since
      --  the last reload.
      SMSTS0_RUF_Field_1)
     with Size => 1;
   for SMSTS0_RUF_Field use
     (SMSTS0_RUF_Field_0 => 0,
      SMSTS0_RUF_Field_1 => 1);

   --  Status Register
   type SMSTS_Register is record
      --  Compare Flags
      CMPF           : SMSTS0_CMPF_Field := NRF_SVD.PWM.SMSTS0_CMPF_Field_0;
      --  Capture Flag X0
      CFX            : SMSTS_CFX_Field := (As_Array => False, Val => 16#0#);
      --  Capture Flag B0
      CFB            : SMSTS_CFB_Field := (As_Array => False, Val => 16#0#);
      --  Capture Flag A0
      CFA            : SMSTS_CFA_Field := (As_Array => False, Val => 16#0#);
      --  Reload Flag
      RF             : SMSTS0_RF_Field := NRF_SVD.PWM.SMSTS0_RF_Field_0;
      --  Reload Error Flag
      REF            : SMSTS0_REF_Field := NRF_SVD.PWM.SMSTS0_REF_Field_0;
      --  Read-only. Registers Updated Flag
      RUF            : SMSTS0_RUF_Field := NRF_SVD.PWM.SMSTS0_RUF_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMSTS_Register use record
      CMPF           at 0 range 0 .. 5;
      CFX            at 0 range 6 .. 7;
      CFB            at 0 range 8 .. 9;
      CFA            at 0 range 10 .. 11;
      RF             at 0 range 12 .. 12;
      REF            at 0 range 13 .. 13;
      RUF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  Compare Interrupt Enables
   type SMINTEN0_CMPIE_Field is
     (
      --  The corresponding STS[CMPF] bit will not cause an interrupt request.
      SMINTEN0_CMPIE_Field_0,
      --  The corresponding STS[CMPF] bit will cause an interrupt request.
      SMINTEN0_CMPIE_Field_1)
     with Size => 6;
   for SMINTEN0_CMPIE_Field use
     (SMINTEN0_CMPIE_Field_0 => 0,
      SMINTEN0_CMPIE_Field_1 => 1);

   --  Capture X 0 Interrupt Enable
   type SMINTEN0_CX0IE_Field is
     (
      --  Interrupt request disabled for STS[CFX0].
      SMINTEN0_CX0IE_Field_0,
      --  Interrupt request enabled for STS[CFX0].
      SMINTEN0_CX0IE_Field_1)
     with Size => 1;
   for SMINTEN0_CX0IE_Field use
     (SMINTEN0_CX0IE_Field_0 => 0,
      SMINTEN0_CX0IE_Field_1 => 1);

   --  Capture X 1 Interrupt Enable
   type SMINTEN0_CX1IE_Field is
     (
      --  Interrupt request disabled for STS[CFX1].
      SMINTEN0_CX1IE_Field_0,
      --  Interrupt request enabled for STS[CFX1].
      SMINTEN0_CX1IE_Field_1)
     with Size => 1;
   for SMINTEN0_CX1IE_Field use
     (SMINTEN0_CX1IE_Field_0 => 0,
      SMINTEN0_CX1IE_Field_1 => 1);

   --  Capture B 0 Interrupt Enable
   type SMINTEN0_CB0IE_Field is
     (
      --  Interrupt request disabled for STS[CFB0].
      SMINTEN0_CB0IE_Field_0,
      --  Interrupt request enabled for STS[CFB0].
      SMINTEN0_CB0IE_Field_1)
     with Size => 1;
   for SMINTEN0_CB0IE_Field use
     (SMINTEN0_CB0IE_Field_0 => 0,
      SMINTEN0_CB0IE_Field_1 => 1);

   --  Capture B 1 Interrupt Enable
   type SMINTEN0_CB1IE_Field is
     (
      --  Interrupt request disabled for STS[CFB1].
      SMINTEN0_CB1IE_Field_0,
      --  Interrupt request enabled for STS[CFB1].
      SMINTEN0_CB1IE_Field_1)
     with Size => 1;
   for SMINTEN0_CB1IE_Field use
     (SMINTEN0_CB1IE_Field_0 => 0,
      SMINTEN0_CB1IE_Field_1 => 1);

   --  Capture A 0 Interrupt Enable
   type SMINTEN0_CA0IE_Field is
     (
      --  Interrupt request disabled for STS[CFA0].
      SMINTEN0_CA0IE_Field_0,
      --  Interrupt request enabled for STS[CFA0].
      SMINTEN0_CA0IE_Field_1)
     with Size => 1;
   for SMINTEN0_CA0IE_Field use
     (SMINTEN0_CA0IE_Field_0 => 0,
      SMINTEN0_CA0IE_Field_1 => 1);

   --  Capture A 1 Interrupt Enable
   type SMINTEN0_CA1IE_Field is
     (
      --  Interrupt request disabled for STS[CFA1].
      SMINTEN0_CA1IE_Field_0,
      --  Interrupt request enabled for STS[CFA1].
      SMINTEN0_CA1IE_Field_1)
     with Size => 1;
   for SMINTEN0_CA1IE_Field use
     (SMINTEN0_CA1IE_Field_0 => 0,
      SMINTEN0_CA1IE_Field_1 => 1);

   --  Reload Interrupt Enable
   type SMINTEN0_RIE_Field is
     (
      --  STS[RF] CPU interrupt requests disabled
      SMINTEN0_RIE_Field_0,
      --  STS[RF] CPU interrupt requests enabled
      SMINTEN0_RIE_Field_1)
     with Size => 1;
   for SMINTEN0_RIE_Field use
     (SMINTEN0_RIE_Field_0 => 0,
      SMINTEN0_RIE_Field_1 => 1);

   --  Reload Error Interrupt Enable
   type SMINTEN0_REIE_Field is
     (
      --  STS[REF] CPU interrupt requests disabled
      SMINTEN0_REIE_Field_0,
      --  STS[REF] CPU interrupt requests enabled
      SMINTEN0_REIE_Field_1)
     with Size => 1;
   for SMINTEN0_REIE_Field use
     (SMINTEN0_REIE_Field_0 => 0,
      SMINTEN0_REIE_Field_1 => 1);

   --  Interrupt Enable Register
   type SMINTEN_Register is record
      --  Compare Interrupt Enables
      CMPIE          : SMINTEN0_CMPIE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CMPIE_Field_0;
      --  Capture X 0 Interrupt Enable
      CX0IE          : SMINTEN0_CX0IE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CX0IE_Field_0;
      --  Capture X 1 Interrupt Enable
      CX1IE          : SMINTEN0_CX1IE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CX1IE_Field_0;
      --  Capture B 0 Interrupt Enable
      CB0IE          : SMINTEN0_CB0IE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CB0IE_Field_0;
      --  Capture B 1 Interrupt Enable
      CB1IE          : SMINTEN0_CB1IE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CB1IE_Field_0;
      --  Capture A 0 Interrupt Enable
      CA0IE          : SMINTEN0_CA0IE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CA0IE_Field_0;
      --  Capture A 1 Interrupt Enable
      CA1IE          : SMINTEN0_CA1IE_Field :=
                        NRF_SVD.PWM.SMINTEN0_CA1IE_Field_0;
      --  Reload Interrupt Enable
      RIE            : SMINTEN0_RIE_Field := NRF_SVD.PWM.SMINTEN0_RIE_Field_0;
      --  Reload Error Interrupt Enable
      REIE           : SMINTEN0_REIE_Field :=
                        NRF_SVD.PWM.SMINTEN0_REIE_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMINTEN_Register use record
      CMPIE          at 0 range 0 .. 5;
      CX0IE          at 0 range 6 .. 6;
      CX1IE          at 0 range 7 .. 7;
      CB0IE          at 0 range 8 .. 8;
      CB1IE          at 0 range 9 .. 9;
      CA0IE          at 0 range 10 .. 10;
      CA1IE          at 0 range 11 .. 11;
      RIE            at 0 range 12 .. 12;
      REIE           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Capture DMA Enable Source Select
   type SMDMAEN0_CAPTDE_Field is
     (
      --  Read DMA requests disabled.
      SMDMAEN0_CAPTDE_Field_00,
      --  Exceeding a FIFO watermark sets the DMA read request. This requires
      --  at least one of DMAEN[CA1DE], DMAEN[CA0DE], DMAEN[CB1DE],
      --  DMAEN[CB0DE], DMAEN[CX1DE], or DMAEN[CX0DE] to also be set in order
      --  to determine to which watermark(s) the DMA request is sensitive.
      SMDMAEN0_CAPTDE_Field_01,
      --  A local sync (VAL1 matches counter) sets the read DMA request.
      SMDMAEN0_CAPTDE_Field_10,
      --  A local reload (STS[RF] being set) sets the read DMA request.
      SMDMAEN0_CAPTDE_Field_11)
     with Size => 2;
   for SMDMAEN0_CAPTDE_Field use
     (SMDMAEN0_CAPTDE_Field_00 => 0,
      SMDMAEN0_CAPTDE_Field_01 => 1,
      SMDMAEN0_CAPTDE_Field_10 => 2,
      SMDMAEN0_CAPTDE_Field_11 => 3);

   --  FIFO Watermark AND Control
   type SMDMAEN0_FAND_Field is
     (
      --  Selected FIFO watermarks are OR'ed together.
      SMDMAEN0_FAND_Field_0,
      --  Selected FIFO watermarks are AND'ed together.
      SMDMAEN0_FAND_Field_1)
     with Size => 1;
   for SMDMAEN0_FAND_Field use
     (SMDMAEN0_FAND_Field_0 => 0,
      SMDMAEN0_FAND_Field_1 => 1);

   --  Value Registers DMA Enable
   type SMDMAEN0_VALDE_Field is
     (
      --  DMA write requests disabled
      SMDMAEN0_VALDE_Field_0,
      --  DMA write requests for the VALx and FRACVALx registers enabled
      SMDMAEN0_VALDE_Field_1)
     with Size => 1;
   for SMDMAEN0_VALDE_Field use
     (SMDMAEN0_VALDE_Field_0 => 0,
      SMDMAEN0_VALDE_Field_1 => 1);

   --  DMA Enable Register
   type SMDMAEN_Register is record
      --  Capture X0 FIFO DMA Enable
      CX0DE          : Boolean := False;
      --  Capture X1 FIFO DMA Enable
      CX1DE          : Boolean := False;
      --  Capture B0 FIFO DMA Enable
      CB0DE          : Boolean := False;
      --  Capture B1 FIFO DMA Enable
      CB1DE          : Boolean := False;
      --  Capture A0 FIFO DMA Enable
      CA0DE          : Boolean := False;
      --  Capture A1 FIFO DMA Enable
      CA1DE          : Boolean := False;
      --  Capture DMA Enable Source Select
      CAPTDE         : SMDMAEN0_CAPTDE_Field :=
                        NRF_SVD.PWM.SMDMAEN0_CAPTDE_Field_00;
      --  FIFO Watermark AND Control
      FAND           : SMDMAEN0_FAND_Field :=
                        NRF_SVD.PWM.SMDMAEN0_FAND_Field_0;
      --  Value Registers DMA Enable
      VALDE          : SMDMAEN0_VALDE_Field :=
                        NRF_SVD.PWM.SMDMAEN0_VALDE_Field_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMDMAEN_Register use record
      CX0DE          at 0 range 0 .. 0;
      CX1DE          at 0 range 1 .. 1;
      CB0DE          at 0 range 2 .. 2;
      CB1DE          at 0 range 3 .. 3;
      CA0DE          at 0 range 4 .. 4;
      CA1DE          at 0 range 5 .. 5;
      CAPTDE         at 0 range 6 .. 7;
      FAND           at 0 range 8 .. 8;
      VALDE          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Output Trigger Enables
   type SMTCTRL0_OUT_TRIG_EN_Field is
     (
      --  PWM_OUT_TRIGx will not set when the counter value matches the VALx
      --  value.
      SMTCTRL0_OUT_TRIG_EN_Field_0,
      --  PWM_OUT_TRIGx will set when the counter value matches the VALx value.
      SMTCTRL0_OUT_TRIG_EN_Field_1)
     with Size => 6;
   for SMTCTRL0_OUT_TRIG_EN_Field use
     (SMTCTRL0_OUT_TRIG_EN_Field_0 => 0,
      SMTCTRL0_OUT_TRIG_EN_Field_1 => 1);

   --  Trigger frequency
   type SMTCTRL0_TRGFRQ_Field is
     (
      --  Trigger outputs are generated during every PWM period even if the PWM
      --  is not reloaded every period due to CTRL[LDFQ] being non-zero.
      SMTCTRL0_TRGFRQ_Field_0,
      --  Trigger outputs are generated only during the final PWM period prior
      --  to a reload opportunity when the PWM is not reloaded every period due
      --  to CTRL[LDFQ] being non-zero.
      SMTCTRL0_TRGFRQ_Field_1)
     with Size => 1;
   for SMTCTRL0_TRGFRQ_Field use
     (SMTCTRL0_TRGFRQ_Field_0 => 0,
      SMTCTRL0_TRGFRQ_Field_1 => 1);

   --  Output Trigger 1 Source Select
   type SMTCTRL0_PWBOT1_Field is
     (
      --  Route the PWM_OUT_TRIG1 signal to PWM_OUT_TRIG1 port.
      SMTCTRL0_PWBOT1_Field_0,
      --  Route the PWM1 output to the PWM_OUT_TRIG1 port.
      SMTCTRL0_PWBOT1_Field_1)
     with Size => 1;
   for SMTCTRL0_PWBOT1_Field use
     (SMTCTRL0_PWBOT1_Field_0 => 0,
      SMTCTRL0_PWBOT1_Field_1 => 1);

   --  Output Trigger 0 Source Select
   type SMTCTRL0_PWAOT0_Field is
     (
      --  Route the PWM_OUT_TRIG0 signal to PWM_OUT_TRIG0 port.
      SMTCTRL0_PWAOT0_Field_0,
      --  Route the PWM0 output to the PWM_OUT_TRIG0 port.
      SMTCTRL0_PWAOT0_Field_1)
     with Size => 1;
   for SMTCTRL0_PWAOT0_Field use
     (SMTCTRL0_PWAOT0_Field_0 => 0,
      SMTCTRL0_PWAOT0_Field_1 => 1);

   --  Output Trigger Control Register
   type SMTCTRL_Register is record
      --  Output Trigger Enables
      OUT_TRIG_EN    : SMTCTRL0_OUT_TRIG_EN_Field :=
                        NRF_SVD.PWM.SMTCTRL0_OUT_TRIG_EN_Field_0;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Trigger frequency
      TRGFRQ         : SMTCTRL0_TRGFRQ_Field :=
                        NRF_SVD.PWM.SMTCTRL0_TRGFRQ_Field_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Output Trigger 1 Source Select
      PWBOT1         : SMTCTRL0_PWBOT1_Field :=
                        NRF_SVD.PWM.SMTCTRL0_PWBOT1_Field_0;
      --  Output Trigger 0 Source Select
      PWAOT0         : SMTCTRL0_PWAOT0_Field :=
                        NRF_SVD.PWM.SMTCTRL0_PWAOT0_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMTCTRL_Register use record
      OUT_TRIG_EN    at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TRGFRQ         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PWBOT1         at 0 range 14 .. 14;
      PWAOT0         at 0 range 15 .. 15;
   end record;

   subtype SMDISMAP_DIS0A_Field is HAL.UInt4;
   subtype SMDISMAP_DIS0B_Field is HAL.UInt4;
   subtype SMDISMAP_DIS0X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 0
   type SMDISMAP_Register is record
      --  PWM_A Fault Disable Mask 0
      DIS0A          : SMDISMAP_DIS0A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 0
      DIS0B          : SMDISMAP_DIS0B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 0
      DIS0X          : SMDISMAP_DIS0X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMDISMAP_Register use record
      DIS0A          at 0 range 0 .. 3;
      DIS0B          at 0 range 4 .. 7;
      DIS0X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Arm A
   type SMCAPTCTRLA0_ARMA_Field is
     (
      --  Input capture operation is disabled.
      SMCAPTCTRLA0_ARMA_Field_0,
      --  Input capture operation as specified by CAPTCTRLA[EDGAx] is enabled.
      SMCAPTCTRLA0_ARMA_Field_1)
     with Size => 1;
   for SMCAPTCTRLA0_ARMA_Field use
     (SMCAPTCTRLA0_ARMA_Field_0 => 0,
      SMCAPTCTRLA0_ARMA_Field_1 => 1);

   --  One Shot Mode A
   type SMCAPTCTRLA0_ONESHOTA_Field is
     (
      --  Free running mode is selected. If both capture circuits are enabled,
      --  then capture circuit 0 is armed first after CAPTCTRLA[ARMA] is set.
      --  Once a capture occurs, capture circuit 0 is disarmed and capture
      --  circuit 1 is armed. After capture circuit 1 performs a capture, it is
      --  disarmed and capture circuit 0 is re-armed. The process continues
      --  indefinitely. If only one of the capture circuits is enabled, then
      --  captures continue indefinitely on the enabled capture circuit.
      SMCAPTCTRLA0_ONESHOTA_Field_0,
      --  One shot mode is selected. If both capture circuits are enabled, then
      --  capture circuit 0 is armed first after CAPTCTRLA[ARMA] is set. Once a
      --  capture occurs, capture circuit 0 is disarmed and capture circuit 1
      --  is armed. After capture circuit 1 performs a capture, it is disarmed
      --  and CAPTCTRLA[ARMA] is cleared. No further captures will be performed
      --  until CAPTCTRLA[ARMA] is set again. If only one of the capture
      --  circuits is enabled, then a single capture will occur on the enabled
      --  capture circuit and CAPTCTRLA[ARMA] is then cleared.
      SMCAPTCTRLA0_ONESHOTA_Field_1)
     with Size => 1;
   for SMCAPTCTRLA0_ONESHOTA_Field use
     (SMCAPTCTRLA0_ONESHOTA_Field_0 => 0,
      SMCAPTCTRLA0_ONESHOTA_Field_1 => 1);

   --  Edge A 0
   type SMCAPTCTRLA0_EDGA0_Field is
     (
      --  Disabled
      SMCAPTCTRLA0_EDGA0_Field_00,
      --  Capture falling edges
      SMCAPTCTRLA0_EDGA0_Field_01,
      --  Capture rising edges
      SMCAPTCTRLA0_EDGA0_Field_10,
      --  Capture any edge
      SMCAPTCTRLA0_EDGA0_Field_11)
     with Size => 2;
   for SMCAPTCTRLA0_EDGA0_Field use
     (SMCAPTCTRLA0_EDGA0_Field_00 => 0,
      SMCAPTCTRLA0_EDGA0_Field_01 => 1,
      SMCAPTCTRLA0_EDGA0_Field_10 => 2,
      SMCAPTCTRLA0_EDGA0_Field_11 => 3);

   --  SMCAPTCTRLA_EDGA array
   type SMCAPTCTRLA_EDGA_Field_Array is array (0 .. 1)
     of SMCAPTCTRLA0_EDGA0_Field
     with Component_Size => 2, Size => 4;

   --  Type definition for SMCAPTCTRLA_EDGA
   type SMCAPTCTRLA_EDGA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EDGA as a value
            Val : HAL.UInt4;
         when True =>
            --  EDGA as an array
            Arr : SMCAPTCTRLA_EDGA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SMCAPTCTRLA_EDGA_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Input Select A
   type SMCAPTCTRLA0_INP_SELA_Field is
     (
      --  Raw PWM_A input signal selected as source.
      SMCAPTCTRLA0_INP_SELA_Field_0,
      --  Output of edge counter/compare selected as source. When this bitfield
      --  is set to 1, the internal edge counter is enabled and the rising
      --  and/or falling edges specified by the CAPTCTRLA[EDGA0] and
      --  CAPTCTRLA[EDGA1] fields are ignored. The software must still place a
      --  value other than 00 in either or both of the CAPTCTLRA[EDGA0] and/or
      --  CAPTCTRLA[EDGA1] fields in order to enable one or both of the capture
      --  registers.
      SMCAPTCTRLA0_INP_SELA_Field_1)
     with Size => 1;
   for SMCAPTCTRLA0_INP_SELA_Field use
     (SMCAPTCTRLA0_INP_SELA_Field_0 => 0,
      SMCAPTCTRLA0_INP_SELA_Field_1 => 1);

   --  Edge Counter A Enable
   type SMCAPTCTRLA0_EDGCNTA_EN_Field is
     (
      --  Edge counter disabled and held in reset
      SMCAPTCTRLA0_EDGCNTA_EN_Field_0,
      --  Edge counter enabled
      SMCAPTCTRLA0_EDGCNTA_EN_Field_1)
     with Size => 1;
   for SMCAPTCTRLA0_EDGCNTA_EN_Field use
     (SMCAPTCTRLA0_EDGCNTA_EN_Field_0 => 0,
      SMCAPTCTRLA0_EDGCNTA_EN_Field_1 => 1);

   subtype SMCAPTCTRLA_CFAWM_Field is HAL.UInt2;
   subtype SMCAPTCTRLA_CA0CNT_Field is HAL.UInt3;
   subtype SMCAPTCTRLA_CA1CNT_Field is HAL.UInt3;

   --  Capture Control A Register
   type SMCAPTCTRLA_Register is record
      --  Arm A
      ARMA       : SMCAPTCTRLA0_ARMA_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLA0_ARMA_Field_0;
      --  One Shot Mode A
      ONESHOTA   : SMCAPTCTRLA0_ONESHOTA_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLA0_ONESHOTA_Field_0;
      --  Edge A 0
      EDGA       : SMCAPTCTRLA_EDGA_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Input Select A
      INP_SELA   : SMCAPTCTRLA0_INP_SELA_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLA0_INP_SELA_Field_0;
      --  Edge Counter A Enable
      EDGCNTA_EN : SMCAPTCTRLA0_EDGCNTA_EN_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLA0_EDGCNTA_EN_Field_0;
      --  Capture A FIFOs Water Mark
      CFAWM      : SMCAPTCTRLA_CFAWM_Field := 16#0#;
      --  Read-only. Capture A0 FIFO Word Count
      CA0CNT     : SMCAPTCTRLA_CA0CNT_Field := 16#0#;
      --  Read-only. Capture A1 FIFO Word Count
      CA1CNT     : SMCAPTCTRLA_CA1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCAPTCTRLA_Register use record
      ARMA       at 0 range 0 .. 0;
      ONESHOTA   at 0 range 1 .. 1;
      EDGA       at 0 range 2 .. 5;
      INP_SELA   at 0 range 6 .. 6;
      EDGCNTA_EN at 0 range 7 .. 7;
      CFAWM      at 0 range 8 .. 9;
      CA0CNT     at 0 range 10 .. 12;
      CA1CNT     at 0 range 13 .. 15;
   end record;

   subtype SMCAPTCOMPA_EDGCMPA_Field is HAL.UInt8;
   subtype SMCAPTCOMPA_EDGCNTA_Field is HAL.UInt8;

   --  Capture Compare A Register
   type SMCAPTCOMPA_Register is record
      --  Edge Compare A
      EDGCMPA : SMCAPTCOMPA_EDGCMPA_Field := 16#0#;
      --  Read-only. Edge Counter A
      EDGCNTA : SMCAPTCOMPA_EDGCNTA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCAPTCOMPA_Register use record
      EDGCMPA at 0 range 0 .. 7;
      EDGCNTA at 0 range 8 .. 15;
   end record;

   --  Arm B
   type SMCAPTCTRLB0_ARMB_Field is
     (
      --  Input capture operation is disabled.
      SMCAPTCTRLB0_ARMB_Field_0,
      --  Input capture operation as specified by CAPTCTRLB[EDGBx] is enabled.
      SMCAPTCTRLB0_ARMB_Field_1)
     with Size => 1;
   for SMCAPTCTRLB0_ARMB_Field use
     (SMCAPTCTRLB0_ARMB_Field_0 => 0,
      SMCAPTCTRLB0_ARMB_Field_1 => 1);

   --  One Shot Mode B
   type SMCAPTCTRLB0_ONESHOTB_Field is
     (
      --  Free running mode is selected. If both capture circuits are enabled,
      --  then capture circuit 0 is armed first after CAPTCTRLB[ARMB] is set.
      --  Once a capture occurs, capture circuit 0 is disarmed and capture
      --  circuit 1 is armed. After capture circuit 1 performs a capture, it is
      --  disarmed and capture circuit 0 is re-armed. The process continues
      --  indefinitely. If only one of the capture circuits is enabled, then
      --  captures continue indefinitely on the enabled capture circuit.
      SMCAPTCTRLB0_ONESHOTB_Field_0,
      --  One shot mode is selected. If both capture circuits are enabled, then
      --  capture circuit 0 is armed first after CAPTCTRLB[ARMB] is set. Once a
      --  capture occurs, capture circuit 0 is disarmed and capture circuit 1
      --  is armed. After capture circuit 1 performs a capture, it is disarmed
      --  and CAPTCTRLB[ARMB] is cleared. No further captures will be performed
      --  until CAPTCTRLB[ARMB] is set again. If only one of the capture
      --  circuits is enabled, then a single capture will occur on the enabled
      --  capture circuit and CAPTCTRLB[ARMB] is then cleared.
      SMCAPTCTRLB0_ONESHOTB_Field_1)
     with Size => 1;
   for SMCAPTCTRLB0_ONESHOTB_Field use
     (SMCAPTCTRLB0_ONESHOTB_Field_0 => 0,
      SMCAPTCTRLB0_ONESHOTB_Field_1 => 1);

   --  Edge B 0
   type SMCAPTCTRLB0_EDGB0_Field is
     (
      --  Disabled
      SMCAPTCTRLB0_EDGB0_Field_00,
      --  Capture falling edges
      SMCAPTCTRLB0_EDGB0_Field_01,
      --  Capture rising edges
      SMCAPTCTRLB0_EDGB0_Field_10,
      --  Capture any edge
      SMCAPTCTRLB0_EDGB0_Field_11)
     with Size => 2;
   for SMCAPTCTRLB0_EDGB0_Field use
     (SMCAPTCTRLB0_EDGB0_Field_00 => 0,
      SMCAPTCTRLB0_EDGB0_Field_01 => 1,
      SMCAPTCTRLB0_EDGB0_Field_10 => 2,
      SMCAPTCTRLB0_EDGB0_Field_11 => 3);

   --  SMCAPTCTRLB_EDGB array
   type SMCAPTCTRLB_EDGB_Field_Array is array (0 .. 1)
     of SMCAPTCTRLB0_EDGB0_Field
     with Component_Size => 2, Size => 4;

   --  Type definition for SMCAPTCTRLB_EDGB
   type SMCAPTCTRLB_EDGB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EDGB as a value
            Val : HAL.UInt4;
         when True =>
            --  EDGB as an array
            Arr : SMCAPTCTRLB_EDGB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SMCAPTCTRLB_EDGB_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Input Select B
   type SMCAPTCTRLB0_INP_SELB_Field is
     (
      --  Raw PWM_B input signal selected as source.
      SMCAPTCTRLB0_INP_SELB_Field_0,
      --  Output of edge counter/compare selected as source. When this bitfield
      --  is set to 1, the internal edge counter is enabled and the rising
      --  and/or falling edges specified by the CAPTCTRLB[EDGB0] and
      --  CAPTCTRLB[EDGB1] fields are ignored. The software must still place a
      --  value other than 00 in either or both of the CAPTCTLRB[EDGB0] and/or
      --  CAPTCTRLB[EDGB1] fields in order to enable one or both of the capture
      --  registers.
      SMCAPTCTRLB0_INP_SELB_Field_1)
     with Size => 1;
   for SMCAPTCTRLB0_INP_SELB_Field use
     (SMCAPTCTRLB0_INP_SELB_Field_0 => 0,
      SMCAPTCTRLB0_INP_SELB_Field_1 => 1);

   --  Edge Counter B Enable
   type SMCAPTCTRLB0_EDGCNTB_EN_Field is
     (
      --  Edge counter disabled and held in reset
      SMCAPTCTRLB0_EDGCNTB_EN_Field_0,
      --  Edge counter enabled
      SMCAPTCTRLB0_EDGCNTB_EN_Field_1)
     with Size => 1;
   for SMCAPTCTRLB0_EDGCNTB_EN_Field use
     (SMCAPTCTRLB0_EDGCNTB_EN_Field_0 => 0,
      SMCAPTCTRLB0_EDGCNTB_EN_Field_1 => 1);

   subtype SMCAPTCTRLB_CFBWM_Field is HAL.UInt2;
   subtype SMCAPTCTRLB_CB0CNT_Field is HAL.UInt3;
   subtype SMCAPTCTRLB_CB1CNT_Field is HAL.UInt3;

   --  Capture Control B Register
   type SMCAPTCTRLB_Register is record
      --  Arm B
      ARMB       : SMCAPTCTRLB0_ARMB_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLB0_ARMB_Field_0;
      --  One Shot Mode B
      ONESHOTB   : SMCAPTCTRLB0_ONESHOTB_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLB0_ONESHOTB_Field_0;
      --  Edge B 0
      EDGB       : SMCAPTCTRLB_EDGB_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Input Select B
      INP_SELB   : SMCAPTCTRLB0_INP_SELB_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLB0_INP_SELB_Field_0;
      --  Edge Counter B Enable
      EDGCNTB_EN : SMCAPTCTRLB0_EDGCNTB_EN_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLB0_EDGCNTB_EN_Field_0;
      --  Capture B FIFOs Water Mark
      CFBWM      : SMCAPTCTRLB_CFBWM_Field := 16#0#;
      --  Read-only. Capture B0 FIFO Word Count
      CB0CNT     : SMCAPTCTRLB_CB0CNT_Field := 16#0#;
      --  Read-only. Capture B1 FIFO Word Count
      CB1CNT     : SMCAPTCTRLB_CB1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCAPTCTRLB_Register use record
      ARMB       at 0 range 0 .. 0;
      ONESHOTB   at 0 range 1 .. 1;
      EDGB       at 0 range 2 .. 5;
      INP_SELB   at 0 range 6 .. 6;
      EDGCNTB_EN at 0 range 7 .. 7;
      CFBWM      at 0 range 8 .. 9;
      CB0CNT     at 0 range 10 .. 12;
      CB1CNT     at 0 range 13 .. 15;
   end record;

   subtype SMCAPTCOMPB_EDGCMPB_Field is HAL.UInt8;
   subtype SMCAPTCOMPB_EDGCNTB_Field is HAL.UInt8;

   --  Capture Compare B Register
   type SMCAPTCOMPB_Register is record
      --  Edge Compare B
      EDGCMPB : SMCAPTCOMPB_EDGCMPB_Field := 16#0#;
      --  Read-only. Edge Counter B
      EDGCNTB : SMCAPTCOMPB_EDGCNTB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCAPTCOMPB_Register use record
      EDGCMPB at 0 range 0 .. 7;
      EDGCNTB at 0 range 8 .. 15;
   end record;

   --  Arm X
   type SMCAPTCTRLX0_ARMX_Field is
     (
      --  Input capture operation is disabled.
      SMCAPTCTRLX0_ARMX_Field_0,
      --  Input capture operation as specified by CAPTCTRLX[EDGXx] is enabled.
      SMCAPTCTRLX0_ARMX_Field_1)
     with Size => 1;
   for SMCAPTCTRLX0_ARMX_Field use
     (SMCAPTCTRLX0_ARMX_Field_0 => 0,
      SMCAPTCTRLX0_ARMX_Field_1 => 1);

   --  One Shot Mode Aux
   type SMCAPTCTRLX0_ONESHOTX_Field is
     (
      --  Free running mode is selected. If both capture circuits are enabled,
      --  then capture circuit 0 is armed first after the ARMX bit is set. Once
      --  a capture occurs, capture circuit 0 is disarmed and capture circuit 1
      --  is armed. After capture circuit 1 performs a capture, it is disarmed
      --  and capture circuit 0 is re-armed. The process continues
      --  indefinitely. If only one of the capture circuits is enabled, then
      --  captures continue indefinitely on the enabled capture circuit.
      SMCAPTCTRLX0_ONESHOTX_Field_0,
      --  One shot mode is selected. If both capture circuits are enabled, then
      --  capture circuit 0 is armed first after the ARMX bit is set. Once a
      --  capture occurs, capture circuit 0 is disarmed and capture circuit 1
      --  is armed. After capture circuit 1 performs a capture, it is disarmed
      --  and the ARMX bit is cleared. No further captures will be performed
      --  until the ARMX bit is set again. If only one of the capture circuits
      --  is enabled, then a single capture will occur on the enabled capture
      --  circuit and the ARMX bit is then cleared.
      SMCAPTCTRLX0_ONESHOTX_Field_1)
     with Size => 1;
   for SMCAPTCTRLX0_ONESHOTX_Field use
     (SMCAPTCTRLX0_ONESHOTX_Field_0 => 0,
      SMCAPTCTRLX0_ONESHOTX_Field_1 => 1);

   --  Edge X 0
   type SMCAPTCTRLX0_EDGX0_Field is
     (
      --  Disabled
      SMCAPTCTRLX0_EDGX0_Field_00,
      --  Capture falling edges
      SMCAPTCTRLX0_EDGX0_Field_01,
      --  Capture rising edges
      SMCAPTCTRLX0_EDGX0_Field_10,
      --  Capture any edge
      SMCAPTCTRLX0_EDGX0_Field_11)
     with Size => 2;
   for SMCAPTCTRLX0_EDGX0_Field use
     (SMCAPTCTRLX0_EDGX0_Field_00 => 0,
      SMCAPTCTRLX0_EDGX0_Field_01 => 1,
      SMCAPTCTRLX0_EDGX0_Field_10 => 2,
      SMCAPTCTRLX0_EDGX0_Field_11 => 3);

   --  SMCAPTCTRLX_EDGX array
   type SMCAPTCTRLX_EDGX_Field_Array is array (0 .. 1)
     of SMCAPTCTRLX0_EDGX0_Field
     with Component_Size => 2, Size => 4;

   --  Type definition for SMCAPTCTRLX_EDGX
   type SMCAPTCTRLX_EDGX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EDGX as a value
            Val : HAL.UInt4;
         when True =>
            --  EDGX as an array
            Arr : SMCAPTCTRLX_EDGX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SMCAPTCTRLX_EDGX_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Input Select X
   type SMCAPTCTRLX0_INP_SELX_Field is
     (
      --  Raw PWM_X input signal selected as source.
      SMCAPTCTRLX0_INP_SELX_Field_0,
      --  Output of edge counter/compare selected as source. When this bitfield
      --  is set to 1, the internal edge counter is enabled and the rising
      --  and/or falling edges specified by the CAPTCTRLX[EDGX0] and
      --  CAPTCTRLX[EDGX1] fields are ignored. The software must still place a
      --  value other than 00 in either or both of the CAPTCTLRX[EDGX0] and/or
      --  CAPTCTRLX[EDGX1] fields in order to enable one or both of the capture
      --  registers.
      SMCAPTCTRLX0_INP_SELX_Field_1)
     with Size => 1;
   for SMCAPTCTRLX0_INP_SELX_Field use
     (SMCAPTCTRLX0_INP_SELX_Field_0 => 0,
      SMCAPTCTRLX0_INP_SELX_Field_1 => 1);

   --  Edge Counter X Enable
   type SMCAPTCTRLX0_EDGCNTX_EN_Field is
     (
      --  Edge counter disabled and held in reset
      SMCAPTCTRLX0_EDGCNTX_EN_Field_0,
      --  Edge counter enabled
      SMCAPTCTRLX0_EDGCNTX_EN_Field_1)
     with Size => 1;
   for SMCAPTCTRLX0_EDGCNTX_EN_Field use
     (SMCAPTCTRLX0_EDGCNTX_EN_Field_0 => 0,
      SMCAPTCTRLX0_EDGCNTX_EN_Field_1 => 1);

   subtype SMCAPTCTRLX_CFXWM_Field is HAL.UInt2;
   subtype SMCAPTCTRLX_CX0CNT_Field is HAL.UInt3;
   subtype SMCAPTCTRLX_CX1CNT_Field is HAL.UInt3;

   --  Capture Control X Register
   type SMCAPTCTRLX_Register is record
      --  Arm X
      ARMX       : SMCAPTCTRLX0_ARMX_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLX0_ARMX_Field_0;
      --  One Shot Mode Aux
      ONESHOTX   : SMCAPTCTRLX0_ONESHOTX_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLX0_ONESHOTX_Field_0;
      --  Edge X 0
      EDGX       : SMCAPTCTRLX_EDGX_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Input Select X
      INP_SELX   : SMCAPTCTRLX0_INP_SELX_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLX0_INP_SELX_Field_0;
      --  Edge Counter X Enable
      EDGCNTX_EN : SMCAPTCTRLX0_EDGCNTX_EN_Field :=
                    NRF_SVD.PWM.SMCAPTCTRLX0_EDGCNTX_EN_Field_0;
      --  Capture X FIFOs Water Mark
      CFXWM      : SMCAPTCTRLX_CFXWM_Field := 16#0#;
      --  Read-only. Capture X0 FIFO Word Count
      CX0CNT     : SMCAPTCTRLX_CX0CNT_Field := 16#0#;
      --  Read-only. Capture X1 FIFO Word Count
      CX1CNT     : SMCAPTCTRLX_CX1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCAPTCTRLX_Register use record
      ARMX       at 0 range 0 .. 0;
      ONESHOTX   at 0 range 1 .. 1;
      EDGX       at 0 range 2 .. 5;
      INP_SELX   at 0 range 6 .. 6;
      EDGCNTX_EN at 0 range 7 .. 7;
      CFXWM      at 0 range 8 .. 9;
      CX0CNT     at 0 range 10 .. 12;
      CX1CNT     at 0 range 13 .. 15;
   end record;

   subtype SMCAPTCOMPX_EDGCMPX_Field is HAL.UInt8;
   subtype SMCAPTCOMPX_EDGCNTX_Field is HAL.UInt8;

   --  Capture Compare X Register
   type SMCAPTCOMPX_Register is record
      --  Edge Compare X
      EDGCMPX : SMCAPTCOMPX_EDGCMPX_Field := 16#0#;
      --  Read-only. Edge Counter X
      EDGCNTX : SMCAPTCOMPX_EDGCNTX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCAPTCOMPX_Register use record
      EDGCMPX at 0 range 0 .. 7;
      EDGCNTX at 0 range 8 .. 15;
   end record;

   subtype SMCVAL0CYC_CVAL0CYC_Field is HAL.UInt4;

   --  Capture Value 0 Cycle Register
   type SMCVAL0CYC_Register is record
      --  Read-only. This read-only register stores the cycle number
      --  corresponding to the value captured in CVAL0
      CVAL0CYC      : SMCVAL0CYC_CVAL0CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCVAL0CYC_Register use record
      CVAL0CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SMCVAL1CYC_CVAL1CYC_Field is HAL.UInt4;

   --  Capture Value 1 Cycle Register
   type SMCVAL1CYC_Register is record
      --  Read-only. This read-only register stores the cycle number
      --  corresponding to the value captured in CVAL1
      CVAL1CYC      : SMCVAL1CYC_CVAL1CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCVAL1CYC_Register use record
      CVAL1CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SMCVAL2CYC_CVAL2CYC_Field is HAL.UInt4;

   --  Capture Value 2 Cycle Register
   type SMCVAL2CYC_Register is record
      --  Read-only. This read-only register stores the cycle number
      --  corresponding to the value captured in CVAL2
      CVAL2CYC      : SMCVAL2CYC_CVAL2CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCVAL2CYC_Register use record
      CVAL2CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SMCVAL3CYC_CVAL3CYC_Field is HAL.UInt4;

   --  Capture Value 3 Cycle Register
   type SMCVAL3CYC_Register is record
      --  Read-only. This read-only register stores the cycle number
      --  corresponding to the value captured in CVAL3
      CVAL3CYC      : SMCVAL3CYC_CVAL3CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCVAL3CYC_Register use record
      CVAL3CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SMCVAL4CYC_CVAL4CYC_Field is HAL.UInt4;

   --  Capture Value 4 Cycle Register
   type SMCVAL4CYC_Register is record
      --  Read-only. This read-only register stores the cycle number
      --  corresponding to the value captured in CVAL4
      CVAL4CYC      : SMCVAL4CYC_CVAL4CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCVAL4CYC_Register use record
      CVAL4CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SMCVAL5CYC_CVAL5CYC_Field is HAL.UInt4;

   --  Capture Value 5 Cycle Register
   type SMCVAL5CYC_Register is record
      --  Read-only. This read-only register stores the cycle number
      --  corresponding to the value captured in CVAL5
      CVAL5CYC      : SMCVAL5CYC_CVAL5CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SMCVAL5CYC_Register use record
      CVAL5CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  PWM_X Output Enables
   type OUTEN_PWMX_EN_Field is
     (
      --  PWM_X output disabled.
      OUTEN_PWMX_EN_Field_0,
      --  PWM_X output enabled.
      OUTEN_PWMX_EN_Field_1)
     with Size => 4;
   for OUTEN_PWMX_EN_Field use
     (OUTEN_PWMX_EN_Field_0 => 0,
      OUTEN_PWMX_EN_Field_1 => 1);

   --  PWM_B Output Enables
   type OUTEN_PWMB_EN_Field is
     (
      --  PWM_B output disabled.
      OUTEN_PWMB_EN_Field_0,
      --  PWM_B output enabled.
      OUTEN_PWMB_EN_Field_1)
     with Size => 4;
   for OUTEN_PWMB_EN_Field use
     (OUTEN_PWMB_EN_Field_0 => 0,
      OUTEN_PWMB_EN_Field_1 => 1);

   --  PWM_A Output Enables
   type OUTEN_PWMA_EN_Field is
     (
      --  PWM_A output disabled.
      OUTEN_PWMA_EN_Field_0,
      --  PWM_A output enabled.
      OUTEN_PWMA_EN_Field_1)
     with Size => 4;
   for OUTEN_PWMA_EN_Field use
     (OUTEN_PWMA_EN_Field_0 => 0,
      OUTEN_PWMA_EN_Field_1 => 1);

   --  Output Enable Register
   type PWM0_OUTEN_Register is record
      --  PWM_X Output Enables
      PWMX_EN        : OUTEN_PWMX_EN_Field :=
                        NRF_SVD.PWM.OUTEN_PWMX_EN_Field_0;
      --  PWM_B Output Enables
      PWMB_EN        : OUTEN_PWMB_EN_Field :=
                        NRF_SVD.PWM.OUTEN_PWMB_EN_Field_0;
      --  PWM_A Output Enables
      PWMA_EN        : OUTEN_PWMA_EN_Field :=
                        NRF_SVD.PWM.OUTEN_PWMA_EN_Field_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_OUTEN_Register use record
      PWMX_EN        at 0 range 0 .. 3;
      PWMB_EN        at 0 range 4 .. 7;
      PWMA_EN        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  PWM_X Masks
   type MASK_MASKX_Field is
     (
      --  PWM_X output normal.
      MASK_MASKX_Field_0,
      --  PWM_X output masked.
      MASK_MASKX_Field_1)
     with Size => 4;
   for MASK_MASKX_Field use
     (MASK_MASKX_Field_0 => 0,
      MASK_MASKX_Field_1 => 1);

   --  PWM_B Masks
   type MASK_MASKB_Field is
     (
      --  PWM_B output normal.
      MASK_MASKB_Field_0,
      --  PWM_B output masked.
      MASK_MASKB_Field_1)
     with Size => 4;
   for MASK_MASKB_Field use
     (MASK_MASKB_Field_0 => 0,
      MASK_MASKB_Field_1 => 1);

   --  PWM_A Masks
   type MASK_MASKA_Field is
     (
      --  PWM_A output normal.
      MASK_MASKA_Field_0,
      --  PWM_A output masked.
      MASK_MASKA_Field_1)
     with Size => 4;
   for MASK_MASKA_Field use
     (MASK_MASKA_Field_0 => 0,
      MASK_MASKA_Field_1 => 1);

   --  Update Mask Bits Immediately
   type MASK_UPDATE_MASK_Field is
     (
      --  Normal operation. MASK* bits within the corresponding submodule are
      --  not updated until a FORCE_OUT event occurs within the submodule.
      MASK_UPDATE_MASK_Field_0,
      --  Immediate operation. MASK* bits within the corresponding submodule
      --  are updated on the following clock edge after setting this bit.
      MASK_UPDATE_MASK_Field_1)
     with Size => 4;
   for MASK_UPDATE_MASK_Field use
     (MASK_UPDATE_MASK_Field_0 => 0,
      MASK_UPDATE_MASK_Field_1 => 1);

   --  Mask Register
   type PWM0_MASK_Register is record
      --  PWM_X Masks
      MASKX       : MASK_MASKX_Field := NRF_SVD.PWM.MASK_MASKX_Field_0;
      --  PWM_B Masks
      MASKB       : MASK_MASKB_Field := NRF_SVD.PWM.MASK_MASKB_Field_0;
      --  PWM_A Masks
      MASKA       : MASK_MASKA_Field := NRF_SVD.PWM.MASK_MASKA_Field_0;
      --  Write-only. Update Mask Bits Immediately
      UPDATE_MASK : MASK_UPDATE_MASK_Field :=
                     NRF_SVD.PWM.MASK_UPDATE_MASK_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_MASK_Register use record
      MASKX       at 0 range 0 .. 3;
      MASKB       at 0 range 4 .. 7;
      MASKA       at 0 range 8 .. 11;
      UPDATE_MASK at 0 range 12 .. 15;
   end record;

   --  Submodule 0 Software Controlled Output 45
   type SWCOUT_SM0OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 0
      --  instead of PWM45.
      SWCOUT_SM0OUT45_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 0
      --  instead of PWM45.
      SWCOUT_SM0OUT45_Field_1)
     with Size => 1;
   for SWCOUT_SM0OUT45_Field use
     (SWCOUT_SM0OUT45_Field_0 => 0,
      SWCOUT_SM0OUT45_Field_1 => 1);

   --  Submodule 0 Software Controlled Output 23
   type SWCOUT_SM0OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 0
      --  instead of PWM23.
      SWCOUT_SM0OUT23_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 0
      --  instead of PWM23.
      SWCOUT_SM0OUT23_Field_1)
     with Size => 1;
   for SWCOUT_SM0OUT23_Field use
     (SWCOUT_SM0OUT23_Field_0 => 0,
      SWCOUT_SM0OUT23_Field_1 => 1);

   --  Submodule 1 Software Controlled Output 45
   type SWCOUT_SM1OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 1
      --  instead of PWM45.
      SWCOUT_SM1OUT45_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 1
      --  instead of PWM45.
      SWCOUT_SM1OUT45_Field_1)
     with Size => 1;
   for SWCOUT_SM1OUT45_Field use
     (SWCOUT_SM1OUT45_Field_0 => 0,
      SWCOUT_SM1OUT45_Field_1 => 1);

   --  Submodule 1 Software Controlled Output 23
   type SWCOUT_SM1OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 1
      --  instead of PWM23.
      SWCOUT_SM1OUT23_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 1
      --  instead of PWM23.
      SWCOUT_SM1OUT23_Field_1)
     with Size => 1;
   for SWCOUT_SM1OUT23_Field use
     (SWCOUT_SM1OUT23_Field_0 => 0,
      SWCOUT_SM1OUT23_Field_1 => 1);

   --  Submodule 2 Software Controlled Output 45
   type SWCOUT_SM2OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 2
      --  instead of PWM45.
      SWCOUT_SM2OUT45_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 2
      --  instead of PWM45.
      SWCOUT_SM2OUT45_Field_1)
     with Size => 1;
   for SWCOUT_SM2OUT45_Field use
     (SWCOUT_SM2OUT45_Field_0 => 0,
      SWCOUT_SM2OUT45_Field_1 => 1);

   --  Submodule 2 Software Controlled Output 23
   type SWCOUT_SM2OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 2
      --  instead of PWM23.
      SWCOUT_SM2OUT23_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 2
      --  instead of PWM23.
      SWCOUT_SM2OUT23_Field_1)
     with Size => 1;
   for SWCOUT_SM2OUT23_Field use
     (SWCOUT_SM2OUT23_Field_0 => 0,
      SWCOUT_SM2OUT23_Field_1 => 1);

   --  Submodule 3 Software Controlled Output 45
   type SWCOUT_SM3OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 3
      --  instead of PWM45.
      SWCOUT_SM3OUT45_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 3
      --  instead of PWM45.
      SWCOUT_SM3OUT45_Field_1)
     with Size => 1;
   for SWCOUT_SM3OUT45_Field use
     (SWCOUT_SM3OUT45_Field_0 => 0,
      SWCOUT_SM3OUT45_Field_1 => 1);

   --  Submodule 3 Software Controlled Output 23
   type SWCOUT_SM3OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 3
      --  instead of PWM23.
      SWCOUT_SM3OUT23_Field_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 3
      --  instead of PWM23.
      SWCOUT_SM3OUT23_Field_1)
     with Size => 1;
   for SWCOUT_SM3OUT23_Field use
     (SWCOUT_SM3OUT23_Field_0 => 0,
      SWCOUT_SM3OUT23_Field_1 => 1);

   --  Software Controlled Output Register
   type PWM0_SWCOUT_Register is record
      --  Submodule 0 Software Controlled Output 45
      SM0OUT45      : SWCOUT_SM0OUT45_Field :=
                       NRF_SVD.PWM.SWCOUT_SM0OUT45_Field_0;
      --  Submodule 0 Software Controlled Output 23
      SM0OUT23      : SWCOUT_SM0OUT23_Field :=
                       NRF_SVD.PWM.SWCOUT_SM0OUT23_Field_0;
      --  Submodule 1 Software Controlled Output 45
      SM1OUT45      : SWCOUT_SM1OUT45_Field :=
                       NRF_SVD.PWM.SWCOUT_SM1OUT45_Field_0;
      --  Submodule 1 Software Controlled Output 23
      SM1OUT23      : SWCOUT_SM1OUT23_Field :=
                       NRF_SVD.PWM.SWCOUT_SM1OUT23_Field_0;
      --  Submodule 2 Software Controlled Output 45
      SM2OUT45      : SWCOUT_SM2OUT45_Field :=
                       NRF_SVD.PWM.SWCOUT_SM2OUT45_Field_0;
      --  Submodule 2 Software Controlled Output 23
      SM2OUT23      : SWCOUT_SM2OUT23_Field :=
                       NRF_SVD.PWM.SWCOUT_SM2OUT23_Field_0;
      --  Submodule 3 Software Controlled Output 45
      SM3OUT45      : SWCOUT_SM3OUT45_Field :=
                       NRF_SVD.PWM.SWCOUT_SM3OUT45_Field_0;
      --  Submodule 3 Software Controlled Output 23
      SM3OUT23      : SWCOUT_SM3OUT23_Field :=
                       NRF_SVD.PWM.SWCOUT_SM3OUT23_Field_0;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_SWCOUT_Register use record
      SM0OUT45      at 0 range 0 .. 0;
      SM0OUT23      at 0 range 1 .. 1;
      SM1OUT45      at 0 range 2 .. 2;
      SM1OUT23      at 0 range 3 .. 3;
      SM2OUT45      at 0 range 4 .. 4;
      SM2OUT23      at 0 range 5 .. 5;
      SM3OUT45      at 0 range 6 .. 6;
      SM3OUT23      at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Submodule 0 PWM45 Control Select
   type DTSRCSEL_SM0SEL45_Field is
     (
      --  Generated SM0PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM0SEL45_Field_00,
      --  Inverted generated SM0PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM0SEL45_Field_01,
      --  SWCOUT[SM0OUT45] is used by the deadtime logic.
      DTSRCSEL_SM0SEL45_Field_10,
      --  PWMx_EXTB0 signal is used by the deadtime logic.
      DTSRCSEL_SM0SEL45_Field_11)
     with Size => 2;
   for DTSRCSEL_SM0SEL45_Field use
     (DTSRCSEL_SM0SEL45_Field_00 => 0,
      DTSRCSEL_SM0SEL45_Field_01 => 1,
      DTSRCSEL_SM0SEL45_Field_10 => 2,
      DTSRCSEL_SM0SEL45_Field_11 => 3);

   --  Submodule 0 PWM23 Control Select
   type DTSRCSEL_SM0SEL23_Field is
     (
      --  Generated SM0PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM0SEL23_Field_00,
      --  Inverted generated SM0PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM0SEL23_Field_01,
      --  SWCOUT[SM0OUT23] is used by the deadtime logic.
      DTSRCSEL_SM0SEL23_Field_10,
      --  PWMx_EXTA0 signal is used by the deadtime logic.
      DTSRCSEL_SM0SEL23_Field_11)
     with Size => 2;
   for DTSRCSEL_SM0SEL23_Field use
     (DTSRCSEL_SM0SEL23_Field_00 => 0,
      DTSRCSEL_SM0SEL23_Field_01 => 1,
      DTSRCSEL_SM0SEL23_Field_10 => 2,
      DTSRCSEL_SM0SEL23_Field_11 => 3);

   --  Submodule 1 PWM45 Control Select
   type DTSRCSEL_SM1SEL45_Field is
     (
      --  Generated SM1PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM1SEL45_Field_00,
      --  Inverted generated SM1PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM1SEL45_Field_01,
      --  SWCOUT[SM1OUT45] is used by the deadtime logic.
      DTSRCSEL_SM1SEL45_Field_10,
      --  PWMx_EXTB1 signal is used by the deadtime logic.
      DTSRCSEL_SM1SEL45_Field_11)
     with Size => 2;
   for DTSRCSEL_SM1SEL45_Field use
     (DTSRCSEL_SM1SEL45_Field_00 => 0,
      DTSRCSEL_SM1SEL45_Field_01 => 1,
      DTSRCSEL_SM1SEL45_Field_10 => 2,
      DTSRCSEL_SM1SEL45_Field_11 => 3);

   --  Submodule 1 PWM23 Control Select
   type DTSRCSEL_SM1SEL23_Field is
     (
      --  Generated SM1PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM1SEL23_Field_00,
      --  Inverted generated SM1PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM1SEL23_Field_01,
      --  SWCOUT[SM1OUT23] is used by the deadtime logic.
      DTSRCSEL_SM1SEL23_Field_10,
      --  PWMx_EXTA1 signal is used by the deadtime logic.
      DTSRCSEL_SM1SEL23_Field_11)
     with Size => 2;
   for DTSRCSEL_SM1SEL23_Field use
     (DTSRCSEL_SM1SEL23_Field_00 => 0,
      DTSRCSEL_SM1SEL23_Field_01 => 1,
      DTSRCSEL_SM1SEL23_Field_10 => 2,
      DTSRCSEL_SM1SEL23_Field_11 => 3);

   --  Submodule 2 PWM45 Control Select
   type DTSRCSEL_SM2SEL45_Field is
     (
      --  Generated SM2PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM2SEL45_Field_00,
      --  Inverted generated SM2PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM2SEL45_Field_01,
      --  SWCOUT[SM2OUT45] is used by the deadtime logic.
      DTSRCSEL_SM2SEL45_Field_10,
      --  PWMx_EXTB2 signal is used by the deadtime logic.
      DTSRCSEL_SM2SEL45_Field_11)
     with Size => 2;
   for DTSRCSEL_SM2SEL45_Field use
     (DTSRCSEL_SM2SEL45_Field_00 => 0,
      DTSRCSEL_SM2SEL45_Field_01 => 1,
      DTSRCSEL_SM2SEL45_Field_10 => 2,
      DTSRCSEL_SM2SEL45_Field_11 => 3);

   --  Submodule 2 PWM23 Control Select
   type DTSRCSEL_SM2SEL23_Field is
     (
      --  Generated SM2PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM2SEL23_Field_00,
      --  Inverted generated SM2PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM2SEL23_Field_01,
      --  SWCOUT[SM2OUT23] is used by the deadtime logic.
      DTSRCSEL_SM2SEL23_Field_10,
      --  PWMx_EXTA2 signal is used by the deadtime logic.
      DTSRCSEL_SM2SEL23_Field_11)
     with Size => 2;
   for DTSRCSEL_SM2SEL23_Field use
     (DTSRCSEL_SM2SEL23_Field_00 => 0,
      DTSRCSEL_SM2SEL23_Field_01 => 1,
      DTSRCSEL_SM2SEL23_Field_10 => 2,
      DTSRCSEL_SM2SEL23_Field_11 => 3);

   --  Submodule 3 PWM45 Control Select
   type DTSRCSEL_SM3SEL45_Field is
     (
      --  Generated SM3PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM3SEL45_Field_00,
      --  Inverted generated SM3PWM45 signal is used by the deadtime logic.
      DTSRCSEL_SM3SEL45_Field_01,
      --  SWCOUT[SM3OUT45] is used by the deadtime logic.
      DTSRCSEL_SM3SEL45_Field_10,
      --  PWMx_EXTB3 signal is used by the deadtime logic.
      DTSRCSEL_SM3SEL45_Field_11)
     with Size => 2;
   for DTSRCSEL_SM3SEL45_Field use
     (DTSRCSEL_SM3SEL45_Field_00 => 0,
      DTSRCSEL_SM3SEL45_Field_01 => 1,
      DTSRCSEL_SM3SEL45_Field_10 => 2,
      DTSRCSEL_SM3SEL45_Field_11 => 3);

   --  Submodule 3 PWM23 Control Select
   type DTSRCSEL_SM3SEL23_Field is
     (
      --  Generated SM3PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM3SEL23_Field_00,
      --  Inverted generated SM3PWM23 signal is used by the deadtime logic.
      DTSRCSEL_SM3SEL23_Field_01,
      --  SWCOUT[SM3OUT23] is used by the deadtime logic.
      DTSRCSEL_SM3SEL23_Field_10,
      --  PWMx_EXTA3 signal is used by the deadtime logic.
      DTSRCSEL_SM3SEL23_Field_11)
     with Size => 2;
   for DTSRCSEL_SM3SEL23_Field use
     (DTSRCSEL_SM3SEL23_Field_00 => 0,
      DTSRCSEL_SM3SEL23_Field_01 => 1,
      DTSRCSEL_SM3SEL23_Field_10 => 2,
      DTSRCSEL_SM3SEL23_Field_11 => 3);

   --  PWM Source Select Register
   type PWM0_DTSRCSEL_Register is record
      --  Submodule 0 PWM45 Control Select
      SM0SEL45 : DTSRCSEL_SM0SEL45_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM0SEL45_Field_00;
      --  Submodule 0 PWM23 Control Select
      SM0SEL23 : DTSRCSEL_SM0SEL23_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM0SEL23_Field_00;
      --  Submodule 1 PWM45 Control Select
      SM1SEL45 : DTSRCSEL_SM1SEL45_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM1SEL45_Field_00;
      --  Submodule 1 PWM23 Control Select
      SM1SEL23 : DTSRCSEL_SM1SEL23_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM1SEL23_Field_00;
      --  Submodule 2 PWM45 Control Select
      SM2SEL45 : DTSRCSEL_SM2SEL45_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM2SEL45_Field_00;
      --  Submodule 2 PWM23 Control Select
      SM2SEL23 : DTSRCSEL_SM2SEL23_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM2SEL23_Field_00;
      --  Submodule 3 PWM45 Control Select
      SM3SEL45 : DTSRCSEL_SM3SEL45_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM3SEL45_Field_00;
      --  Submodule 3 PWM23 Control Select
      SM3SEL23 : DTSRCSEL_SM3SEL23_Field :=
                  NRF_SVD.PWM.DTSRCSEL_SM3SEL23_Field_00;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_DTSRCSEL_Register use record
      SM0SEL45 at 0 range 0 .. 1;
      SM0SEL23 at 0 range 2 .. 3;
      SM1SEL45 at 0 range 4 .. 5;
      SM1SEL23 at 0 range 6 .. 7;
      SM2SEL45 at 0 range 8 .. 9;
      SM2SEL23 at 0 range 10 .. 11;
      SM3SEL45 at 0 range 12 .. 13;
      SM3SEL23 at 0 range 14 .. 15;
   end record;

   --  Load Okay
   type MCTRL0_LDOK_Field is
     (
      --  Do not load new values.
      MCTRL0_LDOK_Field_0,
      --  Load prescaler, modulus, and PWM values of the corresponding
      --  submodule.
      MCTRL0_LDOK_Field_1)
     with Size => 4;
   for MCTRL0_LDOK_Field use
     (MCTRL0_LDOK_Field_0 => 0,
      MCTRL0_LDOK_Field_1 => 1);

   subtype PWM0_MCTRL0_CLDOK_Field is HAL.UInt4;

   --  Run
   type MCTRL0_RUN_Field is
     (
      --  PWM generator is disabled in the corresponding submodule.
      MCTRL0_RUN_Field_0,
      --  PWM generator is enabled in the corresponding submodule.
      MCTRL0_RUN_Field_1)
     with Size => 4;
   for MCTRL0_RUN_Field use
     (MCTRL0_RUN_Field_0 => 0,
      MCTRL0_RUN_Field_1 => 1);

   --  Current Polarity
   type MCTRL0_IPOL_Field is
     (
      --  PWM23 is used to generate complementary PWM pair in the corresponding
      --  submodule.
      MCTRL0_IPOL_Field_0,
      --  PWM45 is used to generate complementary PWM pair in the corresponding
      --  submodule.
      MCTRL0_IPOL_Field_1)
     with Size => 4;
   for MCTRL0_IPOL_Field use
     (MCTRL0_IPOL_Field_0 => 0,
      MCTRL0_IPOL_Field_1 => 1);

   --  Master Control Register 0
   type PWM0_MCTRL0_Register is record
      --  Load Okay
      LDOK  : MCTRL0_LDOK_Field := NRF_SVD.PWM.MCTRL0_LDOK_Field_0;
      --  Write-only. Clear Load Okay
      CLDOK : PWM0_MCTRL0_CLDOK_Field := 16#0#;
      --  Run
      RUN   : MCTRL0_RUN_Field := NRF_SVD.PWM.MCTRL0_RUN_Field_0;
      --  Current Polarity
      IPOL  : MCTRL0_IPOL_Field := NRF_SVD.PWM.MCTRL0_IPOL_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_MCTRL0_Register use record
      LDOK  at 0 range 0 .. 3;
      CLDOK at 0 range 4 .. 7;
      RUN   at 0 range 8 .. 11;
      IPOL  at 0 range 12 .. 15;
   end record;

   --  Monitor PLL State
   type MCTRL1_MONPLL_Field is
     (
      --  Not locked. Do not monitor PLL operation. Resetting of the fractional
      --  delay block in case of PLL losing lock will be controlled by
      --  software.
      MCTRL1_MONPLL_Field_00,
      --  Not locked. Monitor PLL operation to automatically disable the
      --  fractional delay block when the PLL encounters problems.
      MCTRL1_MONPLL_Field_01,
      --  Locked. Do not monitor PLL operation. Resetting of the fractional
      --  delay block in case of PLL losing lock will be controlled by
      --  software. These bits are write protected until the next reset.
      MCTRL1_MONPLL_Field_10,
      --  Locked. Monitor PLL operation to automatically disable the fractional
      --  delay block when the PLL encounters problems. These bits are write
      --  protected until the next reset.
      MCTRL1_MONPLL_Field_11)
     with Size => 2;
   for MCTRL1_MONPLL_Field use
     (MCTRL1_MONPLL_Field_00 => 0,
      MCTRL1_MONPLL_Field_01 => 1,
      MCTRL1_MONPLL_Field_10 => 2,
      MCTRL1_MONPLL_Field_11 => 3);

   --  Master Control Register 1
   type PWM0_MCTRL1_Register is record
      --  Monitor PLL State
      MONPLL        : MCTRL1_MONPLL_Field :=
                       NRF_SVD.PWM.MCTRL1_MONPLL_Field_00;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_MCTRL1_Register use record
      MONPLL        at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  Fault Interrupt Enables
   type FCTRL_FIE_Field is
     (
      --  FAULTx CPU interrupt requests disabled.
      FCTRL_FIE_Field_0,
      --  FAULTx CPU interrupt requests enabled.
      FCTRL_FIE_Field_1)
     with Size => 4;
   for FCTRL_FIE_Field use
     (FCTRL_FIE_Field_0 => 0,
      FCTRL_FIE_Field_1 => 1);

   --  Fault Safety Mode
   type FCTRL_FSAFE_Field is
     (
      --  Normal mode. PWM outputs disabled by this fault are not enabled until
      --  FSTS[FFLAGx] is clear at the start of a half cycle or full cycle
      --  depending on the state of FSTS[FFULL] without regard to the state of
      --  FSTS[FFPINx]. The PWM outputs disabled by this fault input will not
      --  be re-enabled until the actual FAULTx input signal de-asserts since
      --  the fault input will combinationally disable the PWM outputs (as
      --  programmed in DISMAPn).
      FCTRL_FSAFE_Field_0,
      --  Safe mode. PWM outputs disabled by this fault are not enabled until
      --  FSTS[FFLAGx] is clear and FSTS[FFPINx] is clear at the start of a
      --  half cycle or full cycle depending on the state of FSTS[FFULL].
      FCTRL_FSAFE_Field_1)
     with Size => 4;
   for FCTRL_FSAFE_Field use
     (FCTRL_FSAFE_Field_0 => 0,
      FCTRL_FSAFE_Field_1 => 1);

   --  Automatic Fault Clearing
   type FCTRL_FAUTO_Field is
     (
      --  Manual fault clearing. PWM outputs disabled by this fault are not
      --  enabled until FSTS[FFLAGx] is clear at the start of a half cycle or
      --  full cycle depending the state of FSTS[FFULL]. This is further
      --  controlled by FCTRL[FSAFE].
      FCTRL_FAUTO_Field_0,
      --  Automatic fault clearing. PWM outputs disabled by this fault are
      --  enabled when FSTS[FFPINx] is clear at the start of a half cycle or
      --  full cycle depending on the state of FSTS[FFULL] without regard to
      --  the state of FSTS[FFLAGx].
      FCTRL_FAUTO_Field_1)
     with Size => 4;
   for FCTRL_FAUTO_Field use
     (FCTRL_FAUTO_Field_0 => 0,
      FCTRL_FAUTO_Field_1 => 1);

   --  Fault Level
   type FCTRL_FLVL_Field is
     (
      --  A logic 0 on the fault input indicates a fault condition.
      FCTRL_FLVL_Field_0,
      --  A logic 1 on the fault input indicates a fault condition.
      FCTRL_FLVL_Field_1)
     with Size => 4;
   for FCTRL_FLVL_Field use
     (FCTRL_FLVL_Field_0 => 0,
      FCTRL_FLVL_Field_1 => 1);

   --  Fault Control Register
   type PWM0_FCTRL_Register is record
      --  Fault Interrupt Enables
      FIE   : FCTRL_FIE_Field := NRF_SVD.PWM.FCTRL_FIE_Field_0;
      --  Fault Safety Mode
      FSAFE : FCTRL_FSAFE_Field := NRF_SVD.PWM.FCTRL_FSAFE_Field_0;
      --  Automatic Fault Clearing
      FAUTO : FCTRL_FAUTO_Field := NRF_SVD.PWM.FCTRL_FAUTO_Field_0;
      --  Fault Level
      FLVL  : FCTRL_FLVL_Field := NRF_SVD.PWM.FCTRL_FLVL_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_FCTRL_Register use record
      FIE   at 0 range 0 .. 3;
      FSAFE at 0 range 4 .. 7;
      FAUTO at 0 range 8 .. 11;
      FLVL  at 0 range 12 .. 15;
   end record;

   --  Fault Flags
   type FSTS_FFLAG_Field is
     (
      --  No fault on the FAULTx pin.
      FSTS_FFLAG_Field_0,
      --  Fault on the FAULTx pin.
      FSTS_FFLAG_Field_1)
     with Size => 4;
   for FSTS_FFLAG_Field use
     (FSTS_FFLAG_Field_0 => 0,
      FSTS_FFLAG_Field_1 => 1);

   --  Full Cycle
   type FSTS_FFULL_Field is
     (
      --  PWM outputs are not re-enabled at the start of a full cycle
      FSTS_FFULL_Field_0,
      --  PWM outputs are re-enabled at the start of a full cycle
      FSTS_FFULL_Field_1)
     with Size => 4;
   for FSTS_FFULL_Field use
     (FSTS_FFULL_Field_0 => 0,
      FSTS_FFULL_Field_1 => 1);

   subtype PWM0_FSTS_FFPIN_Field is HAL.UInt4;

   --  Half Cycle Fault Recovery
   type FSTS_FHALF_Field is
     (
      --  PWM outputs are not re-enabled at the start of a half cycle.
      FSTS_FHALF_Field_0,
      --  PWM outputs are re-enabled at the start of a half cycle (as defined
      --  by VAL0).
      FSTS_FHALF_Field_1)
     with Size => 4;
   for FSTS_FHALF_Field use
     (FSTS_FHALF_Field_0 => 0,
      FSTS_FHALF_Field_1 => 1);

   --  Fault Status Register
   type PWM0_FSTS_Register is record
      --  Fault Flags
      FFLAG : FSTS_FFLAG_Field := NRF_SVD.PWM.FSTS_FFLAG_Field_0;
      --  Full Cycle
      FFULL : FSTS_FFULL_Field := NRF_SVD.PWM.FSTS_FFULL_Field_0;
      --  Read-only. Filtered Fault Pins
      FFPIN : PWM0_FSTS_FFPIN_Field := 16#0#;
      --  Half Cycle Fault Recovery
      FHALF : FSTS_FHALF_Field := NRF_SVD.PWM.FSTS_FHALF_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_FSTS_Register use record
      FFLAG at 0 range 0 .. 3;
      FFULL at 0 range 4 .. 7;
      FFPIN at 0 range 8 .. 11;
      FHALF at 0 range 12 .. 15;
   end record;

   subtype PWM0_FFILT_FILT_PER_Field is HAL.UInt8;
   subtype PWM0_FFILT_FILT_CNT_Field is HAL.UInt3;

   --  Fault Glitch Stretch Enable
   type FFILT_GSTR_Field is
     (
      --  Fault input glitch stretching is disabled.
      FFILT_GSTR_Field_0,
      --  Input fault signals will be stretched to at least 2 IPBus clock
      --  cycles.
      FFILT_GSTR_Field_1)
     with Size => 1;
   for FFILT_GSTR_Field use
     (FFILT_GSTR_Field_0 => 0,
      FFILT_GSTR_Field_1 => 1);

   --  Fault Filter Register
   type PWM0_FFILT_Register is record
      --  Fault Filter Period
      FILT_PER       : PWM0_FFILT_FILT_PER_Field := 16#0#;
      --  Fault Filter Count
      FILT_CNT       : PWM0_FFILT_FILT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Fault Glitch Stretch Enable
      GSTR           : FFILT_GSTR_Field := NRF_SVD.PWM.FFILT_GSTR_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_FFILT_Register use record
      FILT_PER       at 0 range 0 .. 7;
      FILT_CNT       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      GSTR           at 0 range 15 .. 15;
   end record;

   --  Fault Test
   type FTST_FTEST_Field is
     (
      --  No fault
      FTST_FTEST_Field_0,
      --  Cause a simulated fault
      FTST_FTEST_Field_1)
     with Size => 1;
   for FTST_FTEST_Field use
     (FTST_FTEST_Field_0 => 0,
      FTST_FTEST_Field_1 => 1);

   --  Fault Test Register
   type PWM0_FTST_Register is record
      --  Fault Test
      FTEST         : FTST_FTEST_Field := NRF_SVD.PWM.FTST_FTEST_Field_0;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_FTST_Register use record
      FTEST         at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  No Combinational Path From Fault Input To PWM Output
   type FCTRL2_NOCOMB_Field is
     (
      --  There is a combinational link from the fault inputs to the PWM
      --  outputs. The fault inputs are combined with the filtered and latched
      --  fault signals to disable the PWM outputs.
      FCTRL2_NOCOMB_Field_0,
      --  The direct combinational path from the fault inputs to the PWM
      --  outputs is disabled and the filtered and latched fault signals are
      --  used to disable the PWM outputs.
      FCTRL2_NOCOMB_Field_1)
     with Size => 4;
   for FCTRL2_NOCOMB_Field use
     (FCTRL2_NOCOMB_Field_0 => 0,
      FCTRL2_NOCOMB_Field_1 => 1);

   --  Fault Control 2 Register
   type PWM0_FCTRL2_Register is record
      --  No Combinational Path From Fault Input To PWM Output
      NOCOMB        : FCTRL2_NOCOMB_Field :=
                       NRF_SVD.PWM.FCTRL2_NOCOMB_Field_0;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWM0_FCTRL2_Register use record
      NOCOMB        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Width Modulator with nano edge placement
   type PWM_Peripheral is record
      --  Counter Register
      SMCNT0       : aliased HAL.UInt16;
      --  Initial Count Register
      SMINIT0      : aliased HAL.UInt16;
      --  Control 2 Register
      SMCTRL20     : aliased SMCTRL_Register;
      --  Control Register
      SMCTRL0      : aliased SMCTRL_Register_1;
      --  Value Register 0
      SMVAL00      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SMFRACVAL10  : aliased SMFRACVAL_Register;
      --  Value Register 1
      SMVAL10      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SMFRACVAL20  : aliased SMFRACVAL_Register_1;
      --  Value Register 2
      SMVAL20      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SMFRACVAL30  : aliased SMFRACVAL_Register_2;
      --  Value Register 3
      SMVAL30      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SMFRACVAL40  : aliased SMFRACVAL_Register_3;
      --  Value Register 4
      SMVAL40      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SMFRACVAL50  : aliased SMFRACVAL_Register_4;
      --  Value Register 5
      SMVAL50      : aliased HAL.UInt16;
      --  Fractional Control Register
      SMFRCTRL0    : aliased SMFRCTRL_Register;
      --  Output Control Register
      SMOCTRL0     : aliased SMOCTRL_Register;
      --  Status Register
      SMSTS0       : aliased SMSTS_Register;
      --  Interrupt Enable Register
      SMINTEN0     : aliased SMINTEN_Register;
      --  DMA Enable Register
      SMDMAEN0     : aliased SMDMAEN_Register;
      --  Output Trigger Control Register
      SMTCTRL0     : aliased SMTCTRL_Register;
      --  Fault Disable Mapping Register 0
      SMDISMAP00   : aliased SMDISMAP_Register;
      --  Deadtime Count Register 0
      SMDTCNT00    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SMDTCNT10    : aliased HAL.UInt16;
      --  Capture Control A Register
      SMCAPTCTRLA0 : aliased SMCAPTCTRLA_Register;
      --  Capture Compare A Register
      SMCAPTCOMPA0 : aliased SMCAPTCOMPA_Register;
      --  Capture Control B Register
      SMCAPTCTRLB0 : aliased SMCAPTCTRLB_Register;
      --  Capture Compare B Register
      SMCAPTCOMPB0 : aliased SMCAPTCOMPB_Register;
      --  Capture Control X Register
      SMCAPTCTRLX0 : aliased SMCAPTCTRLX_Register;
      --  Capture Compare X Register
      SMCAPTCOMPX0 : aliased SMCAPTCOMPX_Register;
      --  Capture Value 0 Register
      SMCVAL00     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SMCVAL0CYC0  : aliased SMCVAL0CYC_Register;
      --  Capture Value 1 Register
      SMCVAL10     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SMCVAL1CYC0  : aliased SMCVAL1CYC_Register;
      --  Capture Value 2 Register
      SMCVAL20     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SMCVAL2CYC0  : aliased SMCVAL2CYC_Register;
      --  Capture Value 3 Register
      SMCVAL30     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SMCVAL3CYC0  : aliased SMCVAL3CYC_Register;
      --  Capture Value 4 Register
      SMCVAL40     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SMCVAL4CYC0  : aliased SMCVAL4CYC_Register;
      --  Capture Value 5 Register
      SMCVAL50     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SMCVAL5CYC0  : aliased SMCVAL5CYC_Register;
      --  Counter Register
      SMCNT1       : aliased HAL.UInt16;
      --  Initial Count Register
      SMINIT1      : aliased HAL.UInt16;
      --  Control 2 Register
      SMCTRL21     : aliased SMCTRL_Register;
      --  Control Register
      SMCTRL1      : aliased SMCTRL_Register_1;
      --  Value Register 0
      SMVAL01      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SMFRACVAL11  : aliased SMFRACVAL_Register;
      --  Value Register 1
      SMVAL11      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SMFRACVAL21  : aliased SMFRACVAL_Register_1;
      --  Value Register 2
      SMVAL21      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SMFRACVAL31  : aliased SMFRACVAL_Register_2;
      --  Value Register 3
      SMVAL31      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SMFRACVAL41  : aliased SMFRACVAL_Register_3;
      --  Value Register 4
      SMVAL41      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SMFRACVAL51  : aliased SMFRACVAL_Register_4;
      --  Value Register 5
      SMVAL51      : aliased HAL.UInt16;
      --  Fractional Control Register
      SMFRCTRL1    : aliased SMFRCTRL_Register;
      --  Output Control Register
      SMOCTRL1     : aliased SMOCTRL_Register;
      --  Status Register
      SMSTS1       : aliased SMSTS_Register;
      --  Interrupt Enable Register
      SMINTEN1     : aliased SMINTEN_Register;
      --  DMA Enable Register
      SMDMAEN1     : aliased SMDMAEN_Register;
      --  Output Trigger Control Register
      SMTCTRL1     : aliased SMTCTRL_Register;
      --  Fault Disable Mapping Register 0
      SMDISMAP01   : aliased SMDISMAP_Register;
      --  Deadtime Count Register 0
      SMDTCNT01    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SMDTCNT11    : aliased HAL.UInt16;
      --  Capture Control A Register
      SMCAPTCTRLA1 : aliased SMCAPTCTRLA_Register;
      --  Capture Compare A Register
      SMCAPTCOMPA1 : aliased SMCAPTCOMPA_Register;
      --  Capture Control B Register
      SMCAPTCTRLB1 : aliased SMCAPTCTRLB_Register;
      --  Capture Compare B Register
      SMCAPTCOMPB1 : aliased SMCAPTCOMPB_Register;
      --  Capture Control X Register
      SMCAPTCTRLX1 : aliased SMCAPTCTRLX_Register;
      --  Capture Compare X Register
      SMCAPTCOMPX1 : aliased SMCAPTCOMPX_Register;
      --  Capture Value 0 Register
      SMCVAL01     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SMCVAL0CYC1  : aliased SMCVAL0CYC_Register;
      --  Capture Value 1 Register
      SMCVAL11     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SMCVAL1CYC1  : aliased SMCVAL1CYC_Register;
      --  Capture Value 2 Register
      SMCVAL21     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SMCVAL2CYC1  : aliased SMCVAL2CYC_Register;
      --  Capture Value 3 Register
      SMCVAL31     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SMCVAL3CYC1  : aliased SMCVAL3CYC_Register;
      --  Capture Value 4 Register
      SMCVAL41     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SMCVAL4CYC1  : aliased SMCVAL4CYC_Register;
      --  Capture Value 5 Register
      SMCVAL51     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SMCVAL5CYC1  : aliased SMCVAL5CYC_Register;
      --  Counter Register
      SMCNT2       : aliased HAL.UInt16;
      --  Initial Count Register
      SMINIT2      : aliased HAL.UInt16;
      --  Control 2 Register
      SMCTRL22     : aliased SMCTRL_Register;
      --  Control Register
      SMCTRL2      : aliased SMCTRL_Register_1;
      --  Value Register 0
      SMVAL02      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SMFRACVAL12  : aliased SMFRACVAL_Register;
      --  Value Register 1
      SMVAL12      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SMFRACVAL22  : aliased SMFRACVAL_Register_1;
      --  Value Register 2
      SMVAL22      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SMFRACVAL32  : aliased SMFRACVAL_Register_2;
      --  Value Register 3
      SMVAL32      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SMFRACVAL42  : aliased SMFRACVAL_Register_3;
      --  Value Register 4
      SMVAL42      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SMFRACVAL52  : aliased SMFRACVAL_Register_4;
      --  Value Register 5
      SMVAL52      : aliased HAL.UInt16;
      --  Fractional Control Register
      SMFRCTRL2    : aliased SMFRCTRL_Register;
      --  Output Control Register
      SMOCTRL2     : aliased SMOCTRL_Register;
      --  Status Register
      SMSTS2       : aliased SMSTS_Register;
      --  Interrupt Enable Register
      SMINTEN2     : aliased SMINTEN_Register;
      --  DMA Enable Register
      SMDMAEN2     : aliased SMDMAEN_Register;
      --  Output Trigger Control Register
      SMTCTRL2     : aliased SMTCTRL_Register;
      --  Fault Disable Mapping Register 0
      SMDISMAP02   : aliased SMDISMAP_Register;
      --  Deadtime Count Register 0
      SMDTCNT02    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SMDTCNT12    : aliased HAL.UInt16;
      --  Capture Control A Register
      SMCAPTCTRLA2 : aliased SMCAPTCTRLA_Register;
      --  Capture Compare A Register
      SMCAPTCOMPA2 : aliased SMCAPTCOMPA_Register;
      --  Capture Control B Register
      SMCAPTCTRLB2 : aliased SMCAPTCTRLB_Register;
      --  Capture Compare B Register
      SMCAPTCOMPB2 : aliased SMCAPTCOMPB_Register;
      --  Capture Control X Register
      SMCAPTCTRLX2 : aliased SMCAPTCTRLX_Register;
      --  Capture Compare X Register
      SMCAPTCOMPX2 : aliased SMCAPTCOMPX_Register;
      --  Capture Value 0 Register
      SMCVAL02     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SMCVAL0CYC2  : aliased SMCVAL0CYC_Register;
      --  Capture Value 1 Register
      SMCVAL12     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SMCVAL1CYC2  : aliased SMCVAL1CYC_Register;
      --  Capture Value 2 Register
      SMCVAL22     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SMCVAL2CYC2  : aliased SMCVAL2CYC_Register;
      --  Capture Value 3 Register
      SMCVAL32     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SMCVAL3CYC2  : aliased SMCVAL3CYC_Register;
      --  Capture Value 4 Register
      SMCVAL42     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SMCVAL4CYC2  : aliased SMCVAL4CYC_Register;
      --  Capture Value 5 Register
      SMCVAL52     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SMCVAL5CYC2  : aliased SMCVAL5CYC_Register;
      --  Counter Register
      SMCNT3       : aliased HAL.UInt16;
      --  Initial Count Register
      SMINIT3      : aliased HAL.UInt16;
      --  Control 2 Register
      SMCTRL23     : aliased SMCTRL_Register;
      --  Control Register
      SMCTRL3      : aliased SMCTRL_Register_1;
      --  Value Register 0
      SMVAL03      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SMFRACVAL13  : aliased SMFRACVAL_Register;
      --  Value Register 1
      SMVAL13      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SMFRACVAL23  : aliased SMFRACVAL_Register_1;
      --  Value Register 2
      SMVAL23      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SMFRACVAL33  : aliased SMFRACVAL_Register_2;
      --  Value Register 3
      SMVAL33      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SMFRACVAL43  : aliased SMFRACVAL_Register_3;
      --  Value Register 4
      SMVAL43      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SMFRACVAL53  : aliased SMFRACVAL_Register_4;
      --  Value Register 5
      SMVAL53      : aliased HAL.UInt16;
      --  Fractional Control Register
      SMFRCTRL3    : aliased SMFRCTRL_Register;
      --  Output Control Register
      SMOCTRL3     : aliased SMOCTRL_Register;
      --  Status Register
      SMSTS3       : aliased SMSTS_Register;
      --  Interrupt Enable Register
      SMINTEN3     : aliased SMINTEN_Register;
      --  DMA Enable Register
      SMDMAEN3     : aliased SMDMAEN_Register;
      --  Output Trigger Control Register
      SMTCTRL3     : aliased SMTCTRL_Register;
      --  Fault Disable Mapping Register 0
      SMDISMAP03   : aliased SMDISMAP_Register;
      --  Deadtime Count Register 0
      SMDTCNT03    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SMDTCNT13    : aliased HAL.UInt16;
      --  Capture Control A Register
      SMCAPTCTRLA3 : aliased SMCAPTCTRLA_Register;
      --  Capture Compare A Register
      SMCAPTCOMPA3 : aliased SMCAPTCOMPA_Register;
      --  Capture Control B Register
      SMCAPTCTRLB3 : aliased SMCAPTCTRLB_Register;
      --  Capture Compare B Register
      SMCAPTCOMPB3 : aliased SMCAPTCOMPB_Register;
      --  Capture Control X Register
      SMCAPTCTRLX3 : aliased SMCAPTCTRLX_Register;
      --  Capture Compare X Register
      SMCAPTCOMPX3 : aliased SMCAPTCOMPX_Register;
      --  Capture Value 0 Register
      SMCVAL03     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SMCVAL0CYC3  : aliased SMCVAL0CYC_Register;
      --  Capture Value 1 Register
      SMCVAL13     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SMCVAL1CYC3  : aliased SMCVAL1CYC_Register;
      --  Capture Value 2 Register
      SMCVAL23     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SMCVAL2CYC3  : aliased SMCVAL2CYC_Register;
      --  Capture Value 3 Register
      SMCVAL33     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SMCVAL3CYC3  : aliased SMCVAL3CYC_Register;
      --  Capture Value 4 Register
      SMCVAL43     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SMCVAL4CYC3  : aliased SMCVAL4CYC_Register;
      --  Capture Value 5 Register
      SMCVAL53     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SMCVAL5CYC3  : aliased SMCVAL5CYC_Register;
      --  Output Enable Register
      OUTEN        : aliased PWM0_OUTEN_Register;
      --  Mask Register
      MASK         : aliased PWM0_MASK_Register;
      --  Software Controlled Output Register
      SWCOUT       : aliased PWM0_SWCOUT_Register;
      --  PWM Source Select Register
      DTSRCSEL     : aliased PWM0_DTSRCSEL_Register;
      --  Master Control Register 0
      MCTRL0       : aliased PWM0_MCTRL0_Register;
      --  Master Control Register 1
      MCTRL1       : aliased PWM0_MCTRL1_Register;
      --  Fault Control Register
      FCTRL        : aliased PWM0_FCTRL_Register;
      --  Fault Status Register
      FSTS         : aliased PWM0_FSTS_Register;
      --  Fault Filter Register
      FFILT        : aliased PWM0_FFILT_Register;
      --  Fault Test Register
      FTST         : aliased PWM0_FTST_Register;
      --  Fault Control 2 Register
      FCTRL2       : aliased PWM0_FCTRL2_Register;
   end record
     with Volatile;

   for PWM_Peripheral use record
      SMCNT0       at 16#0# range 0 .. 15;
      SMINIT0      at 16#2# range 0 .. 15;
      SMCTRL20     at 16#4# range 0 .. 15;
      SMCTRL0      at 16#6# range 0 .. 15;
      SMVAL00      at 16#A# range 0 .. 15;
      SMFRACVAL10  at 16#C# range 0 .. 15;
      SMVAL10      at 16#E# range 0 .. 15;
      SMFRACVAL20  at 16#10# range 0 .. 15;
      SMVAL20      at 16#12# range 0 .. 15;
      SMFRACVAL30  at 16#14# range 0 .. 15;
      SMVAL30      at 16#16# range 0 .. 15;
      SMFRACVAL40  at 16#18# range 0 .. 15;
      SMVAL40      at 16#1A# range 0 .. 15;
      SMFRACVAL50  at 16#1C# range 0 .. 15;
      SMVAL50      at 16#1E# range 0 .. 15;
      SMFRCTRL0    at 16#20# range 0 .. 15;
      SMOCTRL0     at 16#22# range 0 .. 15;
      SMSTS0       at 16#24# range 0 .. 15;
      SMINTEN0     at 16#26# range 0 .. 15;
      SMDMAEN0     at 16#28# range 0 .. 15;
      SMTCTRL0     at 16#2A# range 0 .. 15;
      SMDISMAP00   at 16#2C# range 0 .. 15;
      SMDTCNT00    at 16#30# range 0 .. 15;
      SMDTCNT10    at 16#32# range 0 .. 15;
      SMCAPTCTRLA0 at 16#34# range 0 .. 15;
      SMCAPTCOMPA0 at 16#36# range 0 .. 15;
      SMCAPTCTRLB0 at 16#38# range 0 .. 15;
      SMCAPTCOMPB0 at 16#3A# range 0 .. 15;
      SMCAPTCTRLX0 at 16#3C# range 0 .. 15;
      SMCAPTCOMPX0 at 16#3E# range 0 .. 15;
      SMCVAL00     at 16#40# range 0 .. 15;
      SMCVAL0CYC0  at 16#42# range 0 .. 15;
      SMCVAL10     at 16#44# range 0 .. 15;
      SMCVAL1CYC0  at 16#46# range 0 .. 15;
      SMCVAL20     at 16#48# range 0 .. 15;
      SMCVAL2CYC0  at 16#4A# range 0 .. 15;
      SMCVAL30     at 16#4C# range 0 .. 15;
      SMCVAL3CYC0  at 16#4E# range 0 .. 15;
      SMCVAL40     at 16#50# range 0 .. 15;
      SMCVAL4CYC0  at 16#52# range 0 .. 15;
      SMCVAL50     at 16#54# range 0 .. 15;
      SMCVAL5CYC0  at 16#56# range 0 .. 15;
      SMCNT1       at 16#60# range 0 .. 15;
      SMINIT1      at 16#62# range 0 .. 15;
      SMCTRL21     at 16#64# range 0 .. 15;
      SMCTRL1      at 16#66# range 0 .. 15;
      SMVAL01      at 16#6A# range 0 .. 15;
      SMFRACVAL11  at 16#6C# range 0 .. 15;
      SMVAL11      at 16#6E# range 0 .. 15;
      SMFRACVAL21  at 16#70# range 0 .. 15;
      SMVAL21      at 16#72# range 0 .. 15;
      SMFRACVAL31  at 16#74# range 0 .. 15;
      SMVAL31      at 16#76# range 0 .. 15;
      SMFRACVAL41  at 16#78# range 0 .. 15;
      SMVAL41      at 16#7A# range 0 .. 15;
      SMFRACVAL51  at 16#7C# range 0 .. 15;
      SMVAL51      at 16#7E# range 0 .. 15;
      SMFRCTRL1    at 16#80# range 0 .. 15;
      SMOCTRL1     at 16#82# range 0 .. 15;
      SMSTS1       at 16#84# range 0 .. 15;
      SMINTEN1     at 16#86# range 0 .. 15;
      SMDMAEN1     at 16#88# range 0 .. 15;
      SMTCTRL1     at 16#8A# range 0 .. 15;
      SMDISMAP01   at 16#8C# range 0 .. 15;
      SMDTCNT01    at 16#90# range 0 .. 15;
      SMDTCNT11    at 16#92# range 0 .. 15;
      SMCAPTCTRLA1 at 16#94# range 0 .. 15;
      SMCAPTCOMPA1 at 16#96# range 0 .. 15;
      SMCAPTCTRLB1 at 16#98# range 0 .. 15;
      SMCAPTCOMPB1 at 16#9A# range 0 .. 15;
      SMCAPTCTRLX1 at 16#9C# range 0 .. 15;
      SMCAPTCOMPX1 at 16#9E# range 0 .. 15;
      SMCVAL01     at 16#A0# range 0 .. 15;
      SMCVAL0CYC1  at 16#A2# range 0 .. 15;
      SMCVAL11     at 16#A4# range 0 .. 15;
      SMCVAL1CYC1  at 16#A6# range 0 .. 15;
      SMCVAL21     at 16#A8# range 0 .. 15;
      SMCVAL2CYC1  at 16#AA# range 0 .. 15;
      SMCVAL31     at 16#AC# range 0 .. 15;
      SMCVAL3CYC1  at 16#AE# range 0 .. 15;
      SMCVAL41     at 16#B0# range 0 .. 15;
      SMCVAL4CYC1  at 16#B2# range 0 .. 15;
      SMCVAL51     at 16#B4# range 0 .. 15;
      SMCVAL5CYC1  at 16#B6# range 0 .. 15;
      SMCNT2       at 16#C0# range 0 .. 15;
      SMINIT2      at 16#C2# range 0 .. 15;
      SMCTRL22     at 16#C4# range 0 .. 15;
      SMCTRL2      at 16#C6# range 0 .. 15;
      SMVAL02      at 16#CA# range 0 .. 15;
      SMFRACVAL12  at 16#CC# range 0 .. 15;
      SMVAL12      at 16#CE# range 0 .. 15;
      SMFRACVAL22  at 16#D0# range 0 .. 15;
      SMVAL22      at 16#D2# range 0 .. 15;
      SMFRACVAL32  at 16#D4# range 0 .. 15;
      SMVAL32      at 16#D6# range 0 .. 15;
      SMFRACVAL42  at 16#D8# range 0 .. 15;
      SMVAL42      at 16#DA# range 0 .. 15;
      SMFRACVAL52  at 16#DC# range 0 .. 15;
      SMVAL52      at 16#DE# range 0 .. 15;
      SMFRCTRL2    at 16#E0# range 0 .. 15;
      SMOCTRL2     at 16#E2# range 0 .. 15;
      SMSTS2       at 16#E4# range 0 .. 15;
      SMINTEN2     at 16#E6# range 0 .. 15;
      SMDMAEN2     at 16#E8# range 0 .. 15;
      SMTCTRL2     at 16#EA# range 0 .. 15;
      SMDISMAP02   at 16#EC# range 0 .. 15;
      SMDTCNT02    at 16#F0# range 0 .. 15;
      SMDTCNT12    at 16#F2# range 0 .. 15;
      SMCAPTCTRLA2 at 16#F4# range 0 .. 15;
      SMCAPTCOMPA2 at 16#F6# range 0 .. 15;
      SMCAPTCTRLB2 at 16#F8# range 0 .. 15;
      SMCAPTCOMPB2 at 16#FA# range 0 .. 15;
      SMCAPTCTRLX2 at 16#FC# range 0 .. 15;
      SMCAPTCOMPX2 at 16#FE# range 0 .. 15;
      SMCVAL02     at 16#100# range 0 .. 15;
      SMCVAL0CYC2  at 16#102# range 0 .. 15;
      SMCVAL12     at 16#104# range 0 .. 15;
      SMCVAL1CYC2  at 16#106# range 0 .. 15;
      SMCVAL22     at 16#108# range 0 .. 15;
      SMCVAL2CYC2  at 16#10A# range 0 .. 15;
      SMCVAL32     at 16#10C# range 0 .. 15;
      SMCVAL3CYC2  at 16#10E# range 0 .. 15;
      SMCVAL42     at 16#110# range 0 .. 15;
      SMCVAL4CYC2  at 16#112# range 0 .. 15;
      SMCVAL52     at 16#114# range 0 .. 15;
      SMCVAL5CYC2  at 16#116# range 0 .. 15;
      SMCNT3       at 16#120# range 0 .. 15;
      SMINIT3      at 16#122# range 0 .. 15;
      SMCTRL23     at 16#124# range 0 .. 15;
      SMCTRL3      at 16#126# range 0 .. 15;
      SMVAL03      at 16#12A# range 0 .. 15;
      SMFRACVAL13  at 16#12C# range 0 .. 15;
      SMVAL13      at 16#12E# range 0 .. 15;
      SMFRACVAL23  at 16#130# range 0 .. 15;
      SMVAL23      at 16#132# range 0 .. 15;
      SMFRACVAL33  at 16#134# range 0 .. 15;
      SMVAL33      at 16#136# range 0 .. 15;
      SMFRACVAL43  at 16#138# range 0 .. 15;
      SMVAL43      at 16#13A# range 0 .. 15;
      SMFRACVAL53  at 16#13C# range 0 .. 15;
      SMVAL53      at 16#13E# range 0 .. 15;
      SMFRCTRL3    at 16#140# range 0 .. 15;
      SMOCTRL3     at 16#142# range 0 .. 15;
      SMSTS3       at 16#144# range 0 .. 15;
      SMINTEN3     at 16#146# range 0 .. 15;
      SMDMAEN3     at 16#148# range 0 .. 15;
      SMTCTRL3     at 16#14A# range 0 .. 15;
      SMDISMAP03   at 16#14C# range 0 .. 15;
      SMDTCNT03    at 16#150# range 0 .. 15;
      SMDTCNT13    at 16#152# range 0 .. 15;
      SMCAPTCTRLA3 at 16#154# range 0 .. 15;
      SMCAPTCOMPA3 at 16#156# range 0 .. 15;
      SMCAPTCTRLB3 at 16#158# range 0 .. 15;
      SMCAPTCOMPB3 at 16#15A# range 0 .. 15;
      SMCAPTCTRLX3 at 16#15C# range 0 .. 15;
      SMCAPTCOMPX3 at 16#15E# range 0 .. 15;
      SMCVAL03     at 16#160# range 0 .. 15;
      SMCVAL0CYC3  at 16#162# range 0 .. 15;
      SMCVAL13     at 16#164# range 0 .. 15;
      SMCVAL1CYC3  at 16#166# range 0 .. 15;
      SMCVAL23     at 16#168# range 0 .. 15;
      SMCVAL2CYC3  at 16#16A# range 0 .. 15;
      SMCVAL33     at 16#16C# range 0 .. 15;
      SMCVAL3CYC3  at 16#16E# range 0 .. 15;
      SMCVAL43     at 16#170# range 0 .. 15;
      SMCVAL4CYC3  at 16#172# range 0 .. 15;
      SMCVAL53     at 16#174# range 0 .. 15;
      SMCVAL5CYC3  at 16#176# range 0 .. 15;
      OUTEN        at 16#180# range 0 .. 15;
      MASK         at 16#182# range 0 .. 15;
      SWCOUT       at 16#184# range 0 .. 15;
      DTSRCSEL     at 16#186# range 0 .. 15;
      MCTRL0       at 16#188# range 0 .. 15;
      MCTRL1       at 16#18A# range 0 .. 15;
      FCTRL        at 16#18C# range 0 .. 15;
      FSTS         at 16#18E# range 0 .. 15;
      FFILT        at 16#190# range 0 .. 15;
      FTST         at 16#192# range 0 .. 15;
      FCTRL2       at 16#194# range 0 .. 15;
   end record;

   --  Pulse Width Modulator with nano edge placement
   PWM0_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40033000#);

   --  Pulse Width Modulator with nano edge placement
   PWM1_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#400B3000#);

end NRF_SVD.PWM;
