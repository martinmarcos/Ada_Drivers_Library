--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

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
   type SM0CTRL2_CLK_SEL_Field is
     (
      --  The IPBus clock is used as the clock for the local prescaler and
      --  counter.
      Clk_Sel_0,
      --  EXT_CLK is used as the clock for the local prescaler and counter.
      Clk_Sel_1,
      --  Submodule 0's clock (AUX_CLK) is used as the source clock for the
      --  local prescaler and counter. This setting should not be used in
      --  submodule 0 as it will force the clock to logic 0.
      Clk_Sel_2)
     with Size => 2;
   for SM0CTRL2_CLK_SEL_Field use
     (Clk_Sel_0 => 0,
      Clk_Sel_1 => 1,
      Clk_Sel_2 => 2);

   --  Reload Source Select
   type SM0CTRL2_RELOAD_SEL_Field is
     (
      --  The local RELOAD signal is used to reload registers.
      Reload_Sel_0,
      --  The master RELOAD signal (from submodule 0) is used to reload
      --  registers. This setting should not be used in submodule 0 as it will
      --  force the RELOAD signal to logic 0.
      Reload_Sel_1)
     with Size => 1;
   for SM0CTRL2_RELOAD_SEL_Field use
     (Reload_Sel_0 => 0,
      Reload_Sel_1 => 1);

   --  This read/write bit determines the source of the FORCE OUTPUT signal for
   --  this submodule.
   type SM0CTRL2_FORCE_SEL_Field is
     (
      --  The local force signal, CTRL2[FORCE], from this submodule is used to
      --  force updates.
      Force_Sel_0,
      --  The master force signal from submodule 0 is used to force updates.
      --  This setting should not be used in submodule 0 as it will hold the
      --  FORCE OUTPUT signal to logic 0.
      Force_Sel_1,
      --  The local reload signal from this submodule is used to force updates
      --  without regard to the state of LDOK.
      Force_Sel_2,
      --  The master reload signal from submodule0 is used to force updates if
      --  LDOK is set. This setting should not be used in submodule0 as it will
      --  hold the FORCE OUTPUT signal to logic 0.
      Force_Sel_3,
      --  The local sync signal from this submodule is used to force updates.
      Force_Sel_4,
      --  The master sync signal from submodule0 is used to force updates. This
      --  setting should not be used in submodule0 as it will hold the FORCE
      --  OUTPUT signal to logic 0.
      Force_Sel_5,
      --  The external force signal, EXT_FORCE, from outside the PWM module
      --  causes updates.
      Force_Sel_6,
      --  The external sync signal, EXT_SYNC, from outside the PWM module
      --  causes updates.
      Force_Sel_7)
     with Size => 3;
   for SM0CTRL2_FORCE_SEL_Field use
     (Force_Sel_0 => 0,
      Force_Sel_1 => 1,
      Force_Sel_2 => 2,
      Force_Sel_3 => 3,
      Force_Sel_4 => 4,
      Force_Sel_5 => 5,
      Force_Sel_6 => 6,
      Force_Sel_7 => 7);

   --  FRCEN
   type SM0CTRL2_FRCEN_Field is
     (
      --  Initialization from a FORCE_OUT is disabled.
      Frcen_0,
      --  Initialization from a FORCE_OUT is enabled.
      Frcen_1)
     with Size => 1;
   for SM0CTRL2_FRCEN_Field use
     (Frcen_0 => 0,
      Frcen_1 => 1);

   --  Initialization Control Select
   type SM0CTRL2_INIT_SEL_Field is
     (
      --  Local sync (PWM_X) causes initialization.
      Init_Sel_0,
      --  Master reload from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0. The submodule counter will only reinitialize when a master
      --  reload occurs.
      Init_Sel_1,
      --  Master sync from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0.
      Init_Sel_2,
      --  EXT_SYNC causes initialization.
      Init_Sel_3)
     with Size => 2;
   for SM0CTRL2_INIT_SEL_Field use
     (Init_Sel_0 => 0,
      Init_Sel_1 => 1,
      Init_Sel_2 => 2,
      Init_Sel_3 => 3);

   --  Independent or Complementary Pair Operation
   type SM0CTRL2_INDEP_Field is
     (
      --  PWM_A and PWM_B form a complementary PWM pair.
      Indep_0,
      --  PWM_A and PWM_B outputs are independent PWMs.
      Indep_1)
     with Size => 1;
   for SM0CTRL2_INDEP_Field use
     (Indep_0 => 0,
      Indep_1 => 1);

   --  Control 2 Register
   type SM0CTRL2_Register is record
      --  Clock Source Select
      CLK_SEL    : SM0CTRL2_CLK_SEL_Field := NRF_SVD.PWM.Clk_Sel_0;
      --  Reload Source Select
      RELOAD_SEL : SM0CTRL2_RELOAD_SEL_Field := NRF_SVD.PWM.Reload_Sel_0;
      --  This read/write bit determines the source of the FORCE OUTPUT signal
      --  for this submodule.
      FORCE_SEL  : SM0CTRL2_FORCE_SEL_Field := NRF_SVD.PWM.Force_Sel_0;
      --  Write-only. Force Initialization
      FORCE      : Boolean := False;
      --  FRCEN
      FRCEN      : SM0CTRL2_FRCEN_Field := NRF_SVD.PWM.Frcen_0;
      --  Initialization Control Select
      INIT_SEL   : SM0CTRL2_INIT_SEL_Field := NRF_SVD.PWM.Init_Sel_0;
      --  PWM_X Initial Value
      PWMX_INIT  : Boolean := False;
      --  PWM45 Initial Value
      PWM45_INIT : Boolean := False;
      --  PWM23 Initial Value
      PWM23_INIT : Boolean := False;
      --  Independent or Complementary Pair Operation
      INDEP      : SM0CTRL2_INDEP_Field := NRF_SVD.PWM.Indep_0;
      --  WAIT Enable
      WAITEN     : Boolean := False;
      --  Debug Enable
      DBGEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CTRL2_Register use record
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
   type SM0CTRL_DBLEN_Field is
     (
      --  Double switching disabled.
      Dblen_0,
      --  Double switching enabled.
      Dblen_1)
     with Size => 1;
   for SM0CTRL_DBLEN_Field use
     (Dblen_0 => 0,
      Dblen_1 => 1);

   --  PWMX Double Switching Enable
   type SM0CTRL_DBLX_Field is
     (
      --  PWMX double pulse disabled.
      Dblx_0,
      --  PWMX double pulse enabled.
      Dblx_1)
     with Size => 1;
   for SM0CTRL_DBLX_Field use
     (Dblx_0 => 0,
      Dblx_1 => 1);

   --  Load Mode Select
   type SM0CTRL_LDMOD_Field is
     (
      --  Buffered registers of this submodule are loaded and take effect at
      --  the next PWM reload if MCTRL[LDOK] is set.
      Ldmod_0,
      --  Buffered registers of this submodule are loaded and take effect
      --  immediately upon MCTRL[LDOK] being set. In this case it is not
      --  necessary to set CTRL[FULL] or CTRL[HALF].
      Ldmod_1)
     with Size => 1;
   for SM0CTRL_LDMOD_Field use
     (Ldmod_0 => 0,
      Ldmod_1 => 1);

   --  Split the DBLPWM signal to PWMA and PWMB
   type SM0CTRL_SPLIT_Field is
     (
      --  DBLPWM is not split. PWMA and PWMB each have double pulses.
      Split_0,
      --  DBLPWM is split to PWMA and PWMB.
      Split_1)
     with Size => 1;
   for SM0CTRL_SPLIT_Field use
     (Split_0 => 0,
      Split_1 => 1);

   --  Prescaler
   type SM0CTRL_PRSC_Field is
     (
      --  no description available
      Prsc_0,
      --  no description available
      Prsc_1,
      --  no description available
      Prsc_2,
      --  no description available
      Prsc_3,
      --  no description available
      Prsc_4,
      --  no description available
      Prsc_5,
      --  no description available
      Prsc_6,
      --  no description available
      Prsc_7)
     with Size => 3;
   for SM0CTRL_PRSC_Field use
     (Prsc_0 => 0,
      Prsc_1 => 1,
      Prsc_2 => 2,
      Prsc_3 => 3,
      Prsc_4 => 4,
      Prsc_5 => 5,
      Prsc_6 => 6,
      Prsc_7 => 7);

   --  Compare Mode
   type SM0CTRL_COMPMODE_Field is
     (
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to" method. This means that PWM edges are only produced when the
      --  counter is equal to one of the VAL* register values. This implies
      --  that a PWMA output that is high at the end of a period will maintain
      --  this state until a match with VAL3 clears the output in the following
      --  period.
      Compmode_0,
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to or greater than" method. This means that PWM edges are produced
      --  when the counter is equal to or greater than one of the VAL* register
      --  values. This implies that a PWMA output that is high at the end of a
      --  period could go low at the start of the next period if the starting
      --  counter value is greater than (but not necessarily equal to) the new
      --  VAL3 value.
      Compmode_1)
     with Size => 1;
   for SM0CTRL_COMPMODE_Field use
     (Compmode_0 => 0,
      Compmode_1 => 1);

   subtype SM0CTRL_DT_Field is HAL.UInt2;

   --  Full Cycle Reload
   type SM0CTRL_FULL_Field is
     (
      --  Full-cycle reloads disabled.
      Full_0,
      --  Full-cycle reloads enabled.
      Full_1)
     with Size => 1;
   for SM0CTRL_FULL_Field use
     (Full_0 => 0,
      Full_1 => 1);

   --  Half Cycle Reload
   type SM0CTRL_HALF_Field is
     (
      --  Half-cycle reloads disabled.
      Half_0,
      --  Half-cycle reloads enabled.
      Half_1)
     with Size => 1;
   for SM0CTRL_HALF_Field use
     (Half_0 => 0,
      Half_1 => 1);

   --  Load Frequency
   type SM0CTRL_LDFQ_Field is
     (
      --  Every PWM opportunity
      Ldfq_0,
      --  Every 2 PWM opportunities
      Ldfq_1,
      --  Every 3 PWM opportunities
      Ldfq_2,
      --  Every 4 PWM opportunities
      Ldfq_3,
      --  Every 5 PWM opportunities
      Ldfq_4,
      --  Every 6 PWM opportunities
      Ldfq_5,
      --  Every 7 PWM opportunities
      Ldfq_6,
      --  Every 8 PWM opportunities
      Ldfq_7,
      --  Every 9 PWM opportunities
      Ldfq_8,
      --  Every 10 PWM opportunities
      Ldfq_9,
      --  Every 11 PWM opportunities
      Ldfq_10,
      --  Every 12 PWM opportunities
      Ldfq_11,
      --  Every 13 PWM opportunities
      Ldfq_12,
      --  Every 14 PWM opportunities
      Ldfq_13,
      --  Every 15 PWM opportunities
      Ldfq_14,
      --  Every 16 PWM opportunities
      Ldfq_15)
     with Size => 4;
   for SM0CTRL_LDFQ_Field use
     (Ldfq_0 => 0,
      Ldfq_1 => 1,
      Ldfq_2 => 2,
      Ldfq_3 => 3,
      Ldfq_4 => 4,
      Ldfq_5 => 5,
      Ldfq_6 => 6,
      Ldfq_7 => 7,
      Ldfq_8 => 8,
      Ldfq_9 => 9,
      Ldfq_10 => 10,
      Ldfq_11 => 11,
      Ldfq_12 => 12,
      Ldfq_13 => 13,
      Ldfq_14 => 14,
      Ldfq_15 => 15);

   --  Control Register
   type SM0CTRL_Register is record
      --  Double Switching Enable
      DBLEN    : SM0CTRL_DBLEN_Field := NRF_SVD.PWM.Dblen_0;
      --  PWMX Double Switching Enable
      DBLX     : SM0CTRL_DBLX_Field := NRF_SVD.PWM.Dblx_0;
      --  Load Mode Select
      LDMOD    : SM0CTRL_LDMOD_Field := NRF_SVD.PWM.Ldmod_0;
      --  Split the DBLPWM signal to PWMA and PWMB
      SPLIT    : SM0CTRL_SPLIT_Field := NRF_SVD.PWM.Split_0;
      --  Prescaler
      PRSC     : SM0CTRL_PRSC_Field := NRF_SVD.PWM.Prsc_0;
      --  Compare Mode
      COMPMODE : SM0CTRL_COMPMODE_Field := NRF_SVD.PWM.Compmode_0;
      --  Read-only. Deadtime
      DT       : SM0CTRL_DT_Field := 16#0#;
      --  Full Cycle Reload
      FULL     : SM0CTRL_FULL_Field := NRF_SVD.PWM.Full_1;
      --  Half Cycle Reload
      HALF     : SM0CTRL_HALF_Field := NRF_SVD.PWM.Half_0;
      --  Load Frequency
      LDFQ     : SM0CTRL_LDFQ_Field := NRF_SVD.PWM.Ldfq_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CTRL_Register use record
      DBLEN    at 0 range 0 .. 0;
      DBLX     at 0 range 1 .. 1;
      LDMOD    at 0 range 2 .. 2;
      SPLIT    at 0 range 3 .. 3;
      PRSC     at 0 range 4 .. 6;
      COMPMODE at 0 range 7 .. 7;
      DT       at 0 range 8 .. 9;
      FULL     at 0 range 10 .. 10;
      HALF     at 0 range 11 .. 11;
      LDFQ     at 0 range 12 .. 15;
   end record;

   subtype SM0FRACVAL1_FRACVAL1_Field is HAL.UInt5;

   --  Fractional Value Register 1
   type SM0FRACVAL1_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 1 Register
      FRACVAL1      : SM0FRACVAL1_FRACVAL1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0FRACVAL1_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL1      at 0 range 11 .. 15;
   end record;

   subtype SM0FRACVAL2_FRACVAL2_Field is HAL.UInt5;

   --  Fractional Value Register 2
   type SM0FRACVAL2_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 2
      FRACVAL2      : SM0FRACVAL2_FRACVAL2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0FRACVAL2_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL2      at 0 range 11 .. 15;
   end record;

   subtype SM0FRACVAL3_FRACVAL3_Field is HAL.UInt5;

   --  Fractional Value Register 3
   type SM0FRACVAL3_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 3
      FRACVAL3      : SM0FRACVAL3_FRACVAL3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0FRACVAL3_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL3      at 0 range 11 .. 15;
   end record;

   subtype SM0FRACVAL4_FRACVAL4_Field is HAL.UInt5;

   --  Fractional Value Register 4
   type SM0FRACVAL4_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 4
      FRACVAL4      : SM0FRACVAL4_FRACVAL4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0FRACVAL4_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL4      at 0 range 11 .. 15;
   end record;

   subtype SM0FRACVAL5_FRACVAL5_Field is HAL.UInt5;

   --  Fractional Value Register 5
   type SM0FRACVAL5_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 5
      FRACVAL5      : SM0FRACVAL5_FRACVAL5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0FRACVAL5_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL5      at 0 range 11 .. 15;
   end record;

   --  Fractional Cycle PWM Period Enable
   type SM0FRCTRL_FRAC1_EN_Field is
     (
      --  Disable fractional cycle length for the PWM period.
      Frac1_En_0,
      --  Enable fractional cycle length for the PWM period.
      Frac1_En_1)
     with Size => 1;
   for SM0FRCTRL_FRAC1_EN_Field use
     (Frac1_En_0 => 0,
      Frac1_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_A
   type SM0FRCTRL_FRAC23_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_A.
      Frac23_En_0,
      --  Enable fractional cycle placement for PWM_A.
      Frac23_En_1)
     with Size => 1;
   for SM0FRCTRL_FRAC23_EN_Field use
     (Frac23_En_0 => 0,
      Frac23_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_B
   type SM0FRCTRL_FRAC45_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_B.
      Frac45_En_0,
      --  Enable fractional cycle placement for PWM_B.
      Frac45_En_1)
     with Size => 1;
   for SM0FRCTRL_FRAC45_EN_Field use
     (Frac45_En_0 => 0,
      Frac45_En_1 => 1);

   --  Fractional Delay Circuit Power Up
   type SM0FRCTRL_FRAC_PU_Field is
     (
      --  Turn off fractional delay logic.
      Frac_Pu_0,
      --  Power up fractional delay logic.
      Frac_Pu_1)
     with Size => 1;
   for SM0FRCTRL_FRAC_PU_Field use
     (Frac_Pu_0 => 0,
      Frac_Pu_1 => 1);

   --  Fractional Control Register
   type SM0FRCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Fractional Cycle PWM Period Enable
      FRAC1_EN      : SM0FRCTRL_FRAC1_EN_Field := NRF_SVD.PWM.Frac1_En_0;
      --  Fractional Cycle Placement Enable for PWM_A
      FRAC23_EN     : SM0FRCTRL_FRAC23_EN_Field := NRF_SVD.PWM.Frac23_En_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Fractional Cycle Placement Enable for PWM_B
      FRAC45_EN     : SM0FRCTRL_FRAC45_EN_Field := NRF_SVD.PWM.Frac45_En_0;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Fractional Delay Circuit Power Up
      FRAC_PU       : SM0FRCTRL_FRAC_PU_Field := NRF_SVD.PWM.Frac_Pu_0;
      --  unspecified
      Reserved_9_14 : HAL.UInt6 := 16#0#;
      --  Read-only. Test Status Bit
      TEST          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0FRCTRL_Register use record
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
   type SM0OCTRL_PWMXFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmxfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmxfs_1,
      --  Output is tristated.
      Pwmxfs_2,
      --  Output is tristated.
      Pwmxfs_3)
     with Size => 2;
   for SM0OCTRL_PWMXFS_Field use
     (Pwmxfs_0 => 0,
      Pwmxfs_1 => 1,
      Pwmxfs_2 => 2,
      Pwmxfs_3 => 3);

   --  PWM_B Fault State
   type SM0OCTRL_PWMBFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmbfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmbfs_1,
      --  Output is tristated.
      Pwmbfs_2,
      --  Output is tristated.
      Pwmbfs_3)
     with Size => 2;
   for SM0OCTRL_PWMBFS_Field use
     (Pwmbfs_0 => 0,
      Pwmbfs_1 => 1,
      Pwmbfs_2 => 2,
      Pwmbfs_3 => 3);

   --  PWM_A Fault State
   type SM0OCTRL_PWMAFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmafs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmafs_1,
      --  Output is tristated.
      Pwmafs_2,
      --  Output is tristated.
      Pwmafs_3)
     with Size => 2;
   for SM0OCTRL_PWMAFS_Field use
     (Pwmafs_0 => 0,
      Pwmafs_1 => 1,
      Pwmafs_2 => 2,
      Pwmafs_3 => 3);

   --  PWM_X Output Polarity
   type SM0OCTRL_POLX_Field is
     (
      --  PWM_X output not inverted. A high level on the PWM_X pin represents
      --  the "on" or "active" state.
      Polx_0,
      --  PWM_X output inverted. A low level on the PWM_X pin represents the
      --  "on" or "active" state.
      Polx_1)
     with Size => 1;
   for SM0OCTRL_POLX_Field use
     (Polx_0 => 0,
      Polx_1 => 1);

   --  PWM_B Output Polarity
   type SM0OCTRL_POLB_Field is
     (
      --  PWM_B output not inverted. A high level on the PWM_B pin represents
      --  the "on" or "active" state.
      Polb_0,
      --  PWM_B output inverted. A low level on the PWM_B pin represents the
      --  "on" or "active" state.
      Polb_1)
     with Size => 1;
   for SM0OCTRL_POLB_Field use
     (Polb_0 => 0,
      Polb_1 => 1);

   --  PWM_A Output Polarity
   type SM0OCTRL_POLA_Field is
     (
      --  PWM_A output not inverted. A high level on the PWM_A pin represents
      --  the "on" or "active" state.
      Pola_0,
      --  PWM_A output inverted. A low level on the PWM_A pin represents the
      --  "on" or "active" state.
      Pola_1)
     with Size => 1;
   for SM0OCTRL_POLA_Field use
     (Pola_0 => 0,
      Pola_1 => 1);

   --  Output Control Register
   type SM0OCTRL_Register is record
      --  PWM_X Fault State
      PWMXFS         : SM0OCTRL_PWMXFS_Field := NRF_SVD.PWM.Pwmxfs_0;
      --  PWM_B Fault State
      PWMBFS         : SM0OCTRL_PWMBFS_Field := NRF_SVD.PWM.Pwmbfs_0;
      --  PWM_A Fault State
      PWMAFS         : SM0OCTRL_PWMAFS_Field := NRF_SVD.PWM.Pwmafs_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PWM_X Output Polarity
      POLX           : SM0OCTRL_POLX_Field := NRF_SVD.PWM.Polx_0;
      --  PWM_B Output Polarity
      POLB           : SM0OCTRL_POLB_Field := NRF_SVD.PWM.Polb_0;
      --  PWM_A Output Polarity
      POLA           : SM0OCTRL_POLA_Field := NRF_SVD.PWM.Pola_0;
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

   for SM0OCTRL_Register use record
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
   type SM0STS_CMPF_Field is
     (
      --  No compare event has occurred for a particular VALx value.
      Cmpf_0,
      --  A compare event has occurred for a particular VALx value.
      Cmpf_1)
     with Size => 6;
   for SM0STS_CMPF_Field use
     (Cmpf_0 => 0,
      Cmpf_1 => 1);

   --  SM0STS_CFX array
   type SM0STS_CFX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM0STS_CFX
   type SM0STS_CFX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFX as a value
            Val : HAL.UInt2;
         when True =>
            --  CFX as an array
            Arr : SM0STS_CFX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM0STS_CFX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM0STS_CFB array
   type SM0STS_CFB_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM0STS_CFB
   type SM0STS_CFB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFB as a value
            Val : HAL.UInt2;
         when True =>
            --  CFB as an array
            Arr : SM0STS_CFB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM0STS_CFB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM0STS_CFA array
   type SM0STS_CFA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM0STS_CFA
   type SM0STS_CFA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFA as a value
            Val : HAL.UInt2;
         when True =>
            --  CFA as an array
            Arr : SM0STS_CFA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM0STS_CFA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Reload Flag
   type SM0STS_RF_Field is
     (
      --  No new reload cycle since last STS[RF] clearing
      Rf_0,
      --  New reload cycle since last STS[RF] clearing
      Rf_1)
     with Size => 1;
   for SM0STS_RF_Field use
     (Rf_0 => 0,
      Rf_1 => 1);

   --  Reload Error Flag
   type SM0STS_REF_Field is
     (
      --  No reload error occurred.
      Ref_0,
      --  Reload signal occurred with non-coherent data and MCTRL[LDOK] = 0.
      Ref_1)
     with Size => 1;
   for SM0STS_REF_Field use
     (Ref_0 => 0,
      Ref_1 => 1);

   --  Registers Updated Flag
   type SM0STS_RUF_Field is
     (
      --  No register update has occurred since last reload.
      Ruf_0,
      --  At least one of the double buffered registers has been updated since
      --  the last reload.
      Ruf_1)
     with Size => 1;
   for SM0STS_RUF_Field use
     (Ruf_0 => 0,
      Ruf_1 => 1);

   --  Status Register
   type SM0STS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Compare Flags
      CMPF           : SM0STS_CMPF_Field := NRF_SVD.PWM.Cmpf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag X0
      CFX            : SM0STS_CFX_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag B0
      CFB            : SM0STS_CFB_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag A0
      CFA            : SM0STS_CFA_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Flag
      RF             : SM0STS_RF_Field := NRF_SVD.PWM.Rf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Error Flag
      REF            : SM0STS_REF_Field := NRF_SVD.PWM.Ref_0;
      --  Read-only. Registers Updated Flag
      RUF            : SM0STS_RUF_Field := NRF_SVD.PWM.Ruf_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0STS_Register use record
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
   type SM0INTEN_CMPIE_Field is
     (
      --  The corresponding STS[CMPF] bit will not cause an interrupt request.
      Cmpie_0,
      --  The corresponding STS[CMPF] bit will cause an interrupt request.
      Cmpie_1)
     with Size => 6;
   for SM0INTEN_CMPIE_Field use
     (Cmpie_0 => 0,
      Cmpie_1 => 1);

   --  Capture X 0 Interrupt Enable
   type SM0INTEN_CX0IE_Field is
     (
      --  Interrupt request disabled for STS[CFX0].
      Cx0Ie_0,
      --  Interrupt request enabled for STS[CFX0].
      Cx0Ie_1)
     with Size => 1;
   for SM0INTEN_CX0IE_Field use
     (Cx0Ie_0 => 0,
      Cx0Ie_1 => 1);

   --  Capture X 1 Interrupt Enable
   type SM0INTEN_CX1IE_Field is
     (
      --  Interrupt request disabled for STS[CFX1].
      Cx1Ie_0,
      --  Interrupt request enabled for STS[CFX1].
      Cx1Ie_1)
     with Size => 1;
   for SM0INTEN_CX1IE_Field use
     (Cx1Ie_0 => 0,
      Cx1Ie_1 => 1);

   --  Capture B 0 Interrupt Enable
   type SM0INTEN_CB0IE_Field is
     (
      --  Interrupt request disabled for STS[CFB0].
      Cb0Ie_0,
      --  Interrupt request enabled for STS[CFB0].
      Cb0Ie_1)
     with Size => 1;
   for SM0INTEN_CB0IE_Field use
     (Cb0Ie_0 => 0,
      Cb0Ie_1 => 1);

   --  Capture B 1 Interrupt Enable
   type SM0INTEN_CB1IE_Field is
     (
      --  Interrupt request disabled for STS[CFB1].
      Cb1Ie_0,
      --  Interrupt request enabled for STS[CFB1].
      Cb1Ie_1)
     with Size => 1;
   for SM0INTEN_CB1IE_Field use
     (Cb1Ie_0 => 0,
      Cb1Ie_1 => 1);

   --  Capture A 0 Interrupt Enable
   type SM0INTEN_CA0IE_Field is
     (
      --  Interrupt request disabled for STS[CFA0].
      Ca0Ie_0,
      --  Interrupt request enabled for STS[CFA0].
      Ca0Ie_1)
     with Size => 1;
   for SM0INTEN_CA0IE_Field use
     (Ca0Ie_0 => 0,
      Ca0Ie_1 => 1);

   --  Capture A 1 Interrupt Enable
   type SM0INTEN_CA1IE_Field is
     (
      --  Interrupt request disabled for STS[CFA1].
      Ca1Ie_0,
      --  Interrupt request enabled for STS[CFA1].
      Ca1Ie_1)
     with Size => 1;
   for SM0INTEN_CA1IE_Field use
     (Ca1Ie_0 => 0,
      Ca1Ie_1 => 1);

   --  Reload Interrupt Enable
   type SM0INTEN_RIE_Field is
     (
      --  STS[RF] CPU interrupt requests disabled
      Rie_0,
      --  STS[RF] CPU interrupt requests enabled
      Rie_1)
     with Size => 1;
   for SM0INTEN_RIE_Field use
     (Rie_0 => 0,
      Rie_1 => 1);

   --  Reload Error Interrupt Enable
   type SM0INTEN_REIE_Field is
     (
      --  STS[REF] CPU interrupt requests disabled
      Reie_0,
      --  STS[REF] CPU interrupt requests enabled
      Reie_1)
     with Size => 1;
   for SM0INTEN_REIE_Field use
     (Reie_0 => 0,
      Reie_1 => 1);

   --  Interrupt Enable Register
   type SM0INTEN_Register is record
      --  Compare Interrupt Enables
      CMPIE          : SM0INTEN_CMPIE_Field := NRF_SVD.PWM.Cmpie_0;
      --  Capture X 0 Interrupt Enable
      CX0IE          : SM0INTEN_CX0IE_Field := NRF_SVD.PWM.Cx0Ie_0;
      --  Capture X 1 Interrupt Enable
      CX1IE          : SM0INTEN_CX1IE_Field := NRF_SVD.PWM.Cx1Ie_0;
      --  Capture B 0 Interrupt Enable
      CB0IE          : SM0INTEN_CB0IE_Field := NRF_SVD.PWM.Cb0Ie_0;
      --  Capture B 1 Interrupt Enable
      CB1IE          : SM0INTEN_CB1IE_Field := NRF_SVD.PWM.Cb1Ie_0;
      --  Capture A 0 Interrupt Enable
      CA0IE          : SM0INTEN_CA0IE_Field := NRF_SVD.PWM.Ca0Ie_0;
      --  Capture A 1 Interrupt Enable
      CA1IE          : SM0INTEN_CA1IE_Field := NRF_SVD.PWM.Ca1Ie_0;
      --  Reload Interrupt Enable
      RIE            : SM0INTEN_RIE_Field := NRF_SVD.PWM.Rie_0;
      --  Reload Error Interrupt Enable
      REIE           : SM0INTEN_REIE_Field := NRF_SVD.PWM.Reie_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0INTEN_Register use record
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
   type SM0DMAEN_CAPTDE_Field is
     (
      --  Read DMA requests disabled.
      Captde_0,
      --  Exceeding a FIFO watermark sets the DMA read request. This requires
      --  at least one of DMAEN[CA1DE], DMAEN[CA0DE], DMAEN[CB1DE],
      --  DMAEN[CB0DE], DMAEN[CX1DE], or DMAEN[CX0DE] to also be set in order
      --  to determine to which watermark(s) the DMA request is sensitive.
      Captde_1,
      --  A local sync (VAL1 matches counter) sets the read DMA request.
      Captde_2,
      --  A local reload (STS[RF] being set) sets the read DMA request.
      Captde_3)
     with Size => 2;
   for SM0DMAEN_CAPTDE_Field use
     (Captde_0 => 0,
      Captde_1 => 1,
      Captde_2 => 2,
      Captde_3 => 3);

   --  FIFO Watermark AND Control
   type SM0DMAEN_FAND_Field is
     (
      --  Selected FIFO watermarks are OR'ed together.
      Fand_0,
      --  Selected FIFO watermarks are AND'ed together.
      Fand_1)
     with Size => 1;
   for SM0DMAEN_FAND_Field use
     (Fand_0 => 0,
      Fand_1 => 1);

   --  Value Registers DMA Enable
   type SM0DMAEN_VALDE_Field is
     (
      --  DMA write requests disabled
      Valde_0,
      --  no description available
      Valde_1)
     with Size => 1;
   for SM0DMAEN_VALDE_Field use
     (Valde_0 => 0,
      Valde_1 => 1);

   --  DMA Enable Register
   type SM0DMAEN_Register is record
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
      CAPTDE         : SM0DMAEN_CAPTDE_Field := NRF_SVD.PWM.Captde_0;
      --  FIFO Watermark AND Control
      FAND           : SM0DMAEN_FAND_Field := NRF_SVD.PWM.Fand_0;
      --  Value Registers DMA Enable
      VALDE          : SM0DMAEN_VALDE_Field := NRF_SVD.PWM.Valde_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0DMAEN_Register use record
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
   type SM0TCTRL_OUT_TRIG_EN_Field is
     (
      --  PWM_OUT_TRIGx will not set when the counter value matches the VALx
      --  value.
      Out_Trig_En_0,
      --  PWM_OUT_TRIGx will set when the counter value matches the VALx value.
      Out_Trig_En_1)
     with Size => 6;
   for SM0TCTRL_OUT_TRIG_EN_Field use
     (Out_Trig_En_0 => 0,
      Out_Trig_En_1 => 1);

   --  Trigger frequency
   type SM0TCTRL_TRGFRQ_Field is
     (
      --  Trigger outputs are generated during every PWM period even if the PWM
      --  is not reloaded every period due to CTRL[LDFQ] being non-zero.
      Trgfrq_0,
      --  Trigger outputs are generated only during the final PWM period prior
      --  to a reload opportunity when the PWM is not reloaded every period due
      --  to CTRL[LDFQ] being non-zero.
      Trgfrq_1)
     with Size => 1;
   for SM0TCTRL_TRGFRQ_Field use
     (Trgfrq_0 => 0,
      Trgfrq_1 => 1);

   --  Output Trigger 1 Source Select
   type SM0TCTRL_PWBOT1_Field is
     (
      --  Route the PWM_OUT_TRIG1 signal to PWM_OUT_TRIG1 port.
      Pwbot1_0,
      --  Route the PWMB output to the PWM_OUT_TRIG1 port.
      Pwbot1_1)
     with Size => 1;
   for SM0TCTRL_PWBOT1_Field use
     (Pwbot1_0 => 0,
      Pwbot1_1 => 1);

   --  Output Trigger 0 Source Select
   type SM0TCTRL_PWAOT0_Field is
     (
      --  Route the PWM_OUT_TRIG0 signal to PWM_OUT_TRIG0 port.
      Pwaot0_0,
      --  Route the PWMA output to the PWM_OUT_TRIG0 port.
      Pwaot0_1)
     with Size => 1;
   for SM0TCTRL_PWAOT0_Field use
     (Pwaot0_0 => 0,
      Pwaot0_1 => 1);

   --  Output Trigger Control Register
   type SM0TCTRL_Register is record
      --  Output Trigger Enables
      OUT_TRIG_EN    : SM0TCTRL_OUT_TRIG_EN_Field :=
                        NRF_SVD.PWM.Out_Trig_En_0;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Trigger frequency
      TRGFRQ         : SM0TCTRL_TRGFRQ_Field := NRF_SVD.PWM.Trgfrq_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Output Trigger 1 Source Select
      PWBOT1         : SM0TCTRL_PWBOT1_Field := NRF_SVD.PWM.Pwbot1_0;
      --  Output Trigger 0 Source Select
      PWAOT0         : SM0TCTRL_PWAOT0_Field := NRF_SVD.PWM.Pwaot0_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0TCTRL_Register use record
      OUT_TRIG_EN    at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TRGFRQ         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PWBOT1         at 0 range 14 .. 14;
      PWAOT0         at 0 range 15 .. 15;
   end record;

   subtype SM0DISMAP0_DIS0A_Field is HAL.UInt4;
   subtype SM0DISMAP0_DIS0B_Field is HAL.UInt4;
   subtype SM0DISMAP0_DIS0X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 0
   type SM0DISMAP0_Register is record
      --  PWM_A Fault Disable Mask 0
      DIS0A          : SM0DISMAP0_DIS0A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 0
      DIS0B          : SM0DISMAP0_DIS0B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 0
      DIS0X          : SM0DISMAP0_DIS0X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0DISMAP0_Register use record
      DIS0A          at 0 range 0 .. 3;
      DIS0B          at 0 range 4 .. 7;
      DIS0X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype SM0DISMAP1_DIS1A_Field is HAL.UInt4;
   subtype SM0DISMAP1_DIS1B_Field is HAL.UInt4;
   subtype SM0DISMAP1_DIS1X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 1
   type SM0DISMAP1_Register is record
      --  PWM_A Fault Disable Mask 1
      DIS1A          : SM0DISMAP1_DIS1A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 1
      DIS1B          : SM0DISMAP1_DIS1B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 1
      DIS1X          : SM0DISMAP1_DIS1X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0DISMAP1_Register use record
      DIS1A          at 0 range 0 .. 3;
      DIS1B          at 0 range 4 .. 7;
      DIS1X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Arm A
   type SM0CAPTCTRLA_ARMA_Field is
     (
      --  Input capture operation is disabled.
      Arma_0,
      --  Input capture operation as specified by CAPTCTRLA[EDGAx] is enabled.
      Arma_1)
     with Size => 1;
   for SM0CAPTCTRLA_ARMA_Field use
     (Arma_0 => 0,
      Arma_1 => 1);

   --  One Shot Mode A
   type SM0CAPTCTRLA_ONESHOTA_Field is
     (
      --  no description available
      Oneshota_0,
      --  no description available
      Oneshota_1)
     with Size => 1;
   for SM0CAPTCTRLA_ONESHOTA_Field use
     (Oneshota_0 => 0,
      Oneshota_1 => 1);

   --  Edge A 0
   type SM0CAPTCTRLA_EDGA0_Field is
     (
      --  Disabled
      Edga0_0,
      --  Capture falling edges
      Edga0_1,
      --  Capture rising edges
      Edga0_2,
      --  Capture any edge
      Edga0_3)
     with Size => 2;
   for SM0CAPTCTRLA_EDGA0_Field use
     (Edga0_0 => 0,
      Edga0_1 => 1,
      Edga0_2 => 2,
      Edga0_3 => 3);

   --  Edge A 1
   type SM0CAPTCTRLA_EDGA1_Field is
     (
      --  Disabled
      Edga1_0,
      --  Capture falling edges
      Edga1_1,
      --  Capture rising edges
      Edga1_2,
      --  Capture any edge
      Edga1_3)
     with Size => 2;
   for SM0CAPTCTRLA_EDGA1_Field use
     (Edga1_0 => 0,
      Edga1_1 => 1,
      Edga1_2 => 2,
      Edga1_3 => 3);

   --  Input Select A
   type SM0CAPTCTRLA_INP_SELA_Field is
     (
      --  Raw PWM_A input signal selected as source.
      Inp_Sela_0,
      --  no description available
      Inp_Sela_1)
     with Size => 1;
   for SM0CAPTCTRLA_INP_SELA_Field use
     (Inp_Sela_0 => 0,
      Inp_Sela_1 => 1);

   --  Edge Counter A Enable
   type SM0CAPTCTRLA_EDGCNTA_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcnta_En_0,
      --  Edge counter enabled
      Edgcnta_En_1)
     with Size => 1;
   for SM0CAPTCTRLA_EDGCNTA_EN_Field use
     (Edgcnta_En_0 => 0,
      Edgcnta_En_1 => 1);

   subtype SM0CAPTCTRLA_CFAWM_Field is HAL.UInt2;
   subtype SM0CAPTCTRLA_CA0CNT_Field is HAL.UInt3;
   subtype SM0CAPTCTRLA_CA1CNT_Field is HAL.UInt3;

   --  Capture Control A Register
   type SM0CAPTCTRLA_Register is record
      --  Arm A
      ARMA       : SM0CAPTCTRLA_ARMA_Field := NRF_SVD.PWM.Arma_0;
      --  One Shot Mode A
      ONESHOTA   : SM0CAPTCTRLA_ONESHOTA_Field := NRF_SVD.PWM.Oneshota_0;
      --  Edge A 0
      EDGA0      : SM0CAPTCTRLA_EDGA0_Field := NRF_SVD.PWM.Edga0_0;
      --  Edge A 1
      EDGA1      : SM0CAPTCTRLA_EDGA1_Field := NRF_SVD.PWM.Edga1_0;
      --  Input Select A
      INP_SELA   : SM0CAPTCTRLA_INP_SELA_Field := NRF_SVD.PWM.Inp_Sela_0;
      --  Edge Counter A Enable
      EDGCNTA_EN : SM0CAPTCTRLA_EDGCNTA_EN_Field := NRF_SVD.PWM.Edgcnta_En_0;
      --  Capture A FIFOs Water Mark
      CFAWM      : SM0CAPTCTRLA_CFAWM_Field := 16#0#;
      --  Read-only. Capture A0 FIFO Word Count
      CA0CNT     : SM0CAPTCTRLA_CA0CNT_Field := 16#0#;
      --  Read-only. Capture A1 FIFO Word Count
      CA1CNT     : SM0CAPTCTRLA_CA1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CAPTCTRLA_Register use record
      ARMA       at 0 range 0 .. 0;
      ONESHOTA   at 0 range 1 .. 1;
      EDGA0      at 0 range 2 .. 3;
      EDGA1      at 0 range 4 .. 5;
      INP_SELA   at 0 range 6 .. 6;
      EDGCNTA_EN at 0 range 7 .. 7;
      CFAWM      at 0 range 8 .. 9;
      CA0CNT     at 0 range 10 .. 12;
      CA1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM0CAPTCOMPA_EDGCMPA_Field is HAL.UInt8;
   subtype SM0CAPTCOMPA_EDGCNTA_Field is HAL.UInt8;

   --  Capture Compare A Register
   type SM0CAPTCOMPA_Register is record
      --  Edge Compare A
      EDGCMPA : SM0CAPTCOMPA_EDGCMPA_Field := 16#0#;
      --  Read-only. Edge Counter A
      EDGCNTA : SM0CAPTCOMPA_EDGCNTA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CAPTCOMPA_Register use record
      EDGCMPA at 0 range 0 .. 7;
      EDGCNTA at 0 range 8 .. 15;
   end record;

   --  Arm B
   type SM0CAPTCTRLB_ARMB_Field is
     (
      --  Input capture operation is disabled.
      Armb_0,
      --  Input capture operation as specified by CAPTCTRLB[EDGBx] is enabled.
      Armb_1)
     with Size => 1;
   for SM0CAPTCTRLB_ARMB_Field use
     (Armb_0 => 0,
      Armb_1 => 1);

   --  One Shot Mode B
   type SM0CAPTCTRLB_ONESHOTB_Field is
     (
      --  no description available
      Oneshotb_0,
      --  no description available
      Oneshotb_1)
     with Size => 1;
   for SM0CAPTCTRLB_ONESHOTB_Field use
     (Oneshotb_0 => 0,
      Oneshotb_1 => 1);

   --  Edge B 0
   type SM0CAPTCTRLB_EDGB0_Field is
     (
      --  Disabled
      Edgb0_0,
      --  Capture falling edges
      Edgb0_1,
      --  Capture rising edges
      Edgb0_2,
      --  Capture any edge
      Edgb0_3)
     with Size => 2;
   for SM0CAPTCTRLB_EDGB0_Field use
     (Edgb0_0 => 0,
      Edgb0_1 => 1,
      Edgb0_2 => 2,
      Edgb0_3 => 3);

   --  Edge B 1
   type SM0CAPTCTRLB_EDGB1_Field is
     (
      --  Disabled
      Edgb1_0,
      --  Capture falling edges
      Edgb1_1,
      --  Capture rising edges
      Edgb1_2,
      --  Capture any edge
      Edgb1_3)
     with Size => 2;
   for SM0CAPTCTRLB_EDGB1_Field use
     (Edgb1_0 => 0,
      Edgb1_1 => 1,
      Edgb1_2 => 2,
      Edgb1_3 => 3);

   --  Input Select B
   type SM0CAPTCTRLB_INP_SELB_Field is
     (
      --  Raw PWM_B input signal selected as source.
      Inp_Selb_0,
      --  no description available
      Inp_Selb_1)
     with Size => 1;
   for SM0CAPTCTRLB_INP_SELB_Field use
     (Inp_Selb_0 => 0,
      Inp_Selb_1 => 1);

   --  Edge Counter B Enable
   type SM0CAPTCTRLB_EDGCNTB_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntb_En_0,
      --  Edge counter enabled
      Edgcntb_En_1)
     with Size => 1;
   for SM0CAPTCTRLB_EDGCNTB_EN_Field use
     (Edgcntb_En_0 => 0,
      Edgcntb_En_1 => 1);

   subtype SM0CAPTCTRLB_CFBWM_Field is HAL.UInt2;
   subtype SM0CAPTCTRLB_CB0CNT_Field is HAL.UInt3;
   subtype SM0CAPTCTRLB_CB1CNT_Field is HAL.UInt3;

   --  Capture Control B Register
   type SM0CAPTCTRLB_Register is record
      --  Arm B
      ARMB       : SM0CAPTCTRLB_ARMB_Field := NRF_SVD.PWM.Armb_0;
      --  One Shot Mode B
      ONESHOTB   : SM0CAPTCTRLB_ONESHOTB_Field := NRF_SVD.PWM.Oneshotb_0;
      --  Edge B 0
      EDGB0      : SM0CAPTCTRLB_EDGB0_Field := NRF_SVD.PWM.Edgb0_0;
      --  Edge B 1
      EDGB1      : SM0CAPTCTRLB_EDGB1_Field := NRF_SVD.PWM.Edgb1_0;
      --  Input Select B
      INP_SELB   : SM0CAPTCTRLB_INP_SELB_Field := NRF_SVD.PWM.Inp_Selb_0;
      --  Edge Counter B Enable
      EDGCNTB_EN : SM0CAPTCTRLB_EDGCNTB_EN_Field := NRF_SVD.PWM.Edgcntb_En_0;
      --  Capture B FIFOs Water Mark
      CFBWM      : SM0CAPTCTRLB_CFBWM_Field := 16#0#;
      --  Read-only. Capture B0 FIFO Word Count
      CB0CNT     : SM0CAPTCTRLB_CB0CNT_Field := 16#0#;
      --  Read-only. Capture B1 FIFO Word Count
      CB1CNT     : SM0CAPTCTRLB_CB1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CAPTCTRLB_Register use record
      ARMB       at 0 range 0 .. 0;
      ONESHOTB   at 0 range 1 .. 1;
      EDGB0      at 0 range 2 .. 3;
      EDGB1      at 0 range 4 .. 5;
      INP_SELB   at 0 range 6 .. 6;
      EDGCNTB_EN at 0 range 7 .. 7;
      CFBWM      at 0 range 8 .. 9;
      CB0CNT     at 0 range 10 .. 12;
      CB1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM0CAPTCOMPB_EDGCMPB_Field is HAL.UInt8;
   subtype SM0CAPTCOMPB_EDGCNTB_Field is HAL.UInt8;

   --  Capture Compare B Register
   type SM0CAPTCOMPB_Register is record
      --  Edge Compare B
      EDGCMPB : SM0CAPTCOMPB_EDGCMPB_Field := 16#0#;
      --  Read-only. Edge Counter B
      EDGCNTB : SM0CAPTCOMPB_EDGCNTB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CAPTCOMPB_Register use record
      EDGCMPB at 0 range 0 .. 7;
      EDGCNTB at 0 range 8 .. 15;
   end record;

   --  Arm X
   type SM0CAPTCTRLX_ARMX_Field is
     (
      --  Input capture operation is disabled.
      Armx_0,
      --  Input capture operation as specified by CAPTCTRLX[EDGXx] is enabled.
      Armx_1)
     with Size => 1;
   for SM0CAPTCTRLX_ARMX_Field use
     (Armx_0 => 0,
      Armx_1 => 1);

   --  One Shot Mode Aux
   type SM0CAPTCTRLX_ONESHOTX_Field is
     (
      --  no description available
      Oneshotx_0,
      --  no description available
      Oneshotx_1)
     with Size => 1;
   for SM0CAPTCTRLX_ONESHOTX_Field use
     (Oneshotx_0 => 0,
      Oneshotx_1 => 1);

   --  Edge X 0
   type SM0CAPTCTRLX_EDGX0_Field is
     (
      --  Disabled
      Edgx0_0,
      --  Capture falling edges
      Edgx0_1,
      --  Capture rising edges
      Edgx0_2,
      --  Capture any edge
      Edgx0_3)
     with Size => 2;
   for SM0CAPTCTRLX_EDGX0_Field use
     (Edgx0_0 => 0,
      Edgx0_1 => 1,
      Edgx0_2 => 2,
      Edgx0_3 => 3);

   --  Edge X 1
   type SM0CAPTCTRLX_EDGX1_Field is
     (
      --  Disabled
      Edgx1_0,
      --  Capture falling edges
      Edgx1_1,
      --  Capture rising edges
      Edgx1_2,
      --  Capture any edge
      Edgx1_3)
     with Size => 2;
   for SM0CAPTCTRLX_EDGX1_Field use
     (Edgx1_0 => 0,
      Edgx1_1 => 1,
      Edgx1_2 => 2,
      Edgx1_3 => 3);

   --  Input Select X
   type SM0CAPTCTRLX_INP_SELX_Field is
     (
      --  Raw PWM_X input signal selected as source.
      Inp_Selx_0,
      --  no description available
      Inp_Selx_1)
     with Size => 1;
   for SM0CAPTCTRLX_INP_SELX_Field use
     (Inp_Selx_0 => 0,
      Inp_Selx_1 => 1);

   --  Edge Counter X Enable
   type SM0CAPTCTRLX_EDGCNTX_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntx_En_0,
      --  Edge counter enabled
      Edgcntx_En_1)
     with Size => 1;
   for SM0CAPTCTRLX_EDGCNTX_EN_Field use
     (Edgcntx_En_0 => 0,
      Edgcntx_En_1 => 1);

   subtype SM0CAPTCTRLX_CFXWM_Field is HAL.UInt2;
   subtype SM0CAPTCTRLX_CX0CNT_Field is HAL.UInt3;
   subtype SM0CAPTCTRLX_CX1CNT_Field is HAL.UInt3;

   --  Capture Control X Register
   type SM0CAPTCTRLX_Register is record
      --  Arm X
      ARMX       : SM0CAPTCTRLX_ARMX_Field := NRF_SVD.PWM.Armx_0;
      --  One Shot Mode Aux
      ONESHOTX   : SM0CAPTCTRLX_ONESHOTX_Field := NRF_SVD.PWM.Oneshotx_0;
      --  Edge X 0
      EDGX0      : SM0CAPTCTRLX_EDGX0_Field := NRF_SVD.PWM.Edgx0_0;
      --  Edge X 1
      EDGX1      : SM0CAPTCTRLX_EDGX1_Field := NRF_SVD.PWM.Edgx1_0;
      --  Input Select X
      INP_SELX   : SM0CAPTCTRLX_INP_SELX_Field := NRF_SVD.PWM.Inp_Selx_0;
      --  Edge Counter X Enable
      EDGCNTX_EN : SM0CAPTCTRLX_EDGCNTX_EN_Field := NRF_SVD.PWM.Edgcntx_En_0;
      --  Capture X FIFOs Water Mark
      CFXWM      : SM0CAPTCTRLX_CFXWM_Field := 16#0#;
      --  Read-only. Capture X0 FIFO Word Count
      CX0CNT     : SM0CAPTCTRLX_CX0CNT_Field := 16#0#;
      --  Read-only. Capture X1 FIFO Word Count
      CX1CNT     : SM0CAPTCTRLX_CX1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CAPTCTRLX_Register use record
      ARMX       at 0 range 0 .. 0;
      ONESHOTX   at 0 range 1 .. 1;
      EDGX0      at 0 range 2 .. 3;
      EDGX1      at 0 range 4 .. 5;
      INP_SELX   at 0 range 6 .. 6;
      EDGCNTX_EN at 0 range 7 .. 7;
      CFXWM      at 0 range 8 .. 9;
      CX0CNT     at 0 range 10 .. 12;
      CX1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM0CAPTCOMPX_EDGCMPX_Field is HAL.UInt8;
   subtype SM0CAPTCOMPX_EDGCNTX_Field is HAL.UInt8;

   --  Capture Compare X Register
   type SM0CAPTCOMPX_Register is record
      --  Edge Compare X
      EDGCMPX : SM0CAPTCOMPX_EDGCMPX_Field := 16#0#;
      --  Read-only. Edge Counter X
      EDGCNTX : SM0CAPTCOMPX_EDGCNTX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CAPTCOMPX_Register use record
      EDGCMPX at 0 range 0 .. 7;
      EDGCNTX at 0 range 8 .. 15;
   end record;

   subtype SM0CVAL0CYC_CVAL0CYC_Field is HAL.UInt4;

   --  Capture Value 0 Cycle Register
   type SM0CVAL0CYC_Register is record
      --  Read-only. CVAL0CYC
      CVAL0CYC      : SM0CVAL0CYC_CVAL0CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CVAL0CYC_Register use record
      CVAL0CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM0CVAL1CYC_CVAL1CYC_Field is HAL.UInt4;

   --  Capture Value 1 Cycle Register
   type SM0CVAL1CYC_Register is record
      --  Read-only. CVAL1CYC
      CVAL1CYC      : SM0CVAL1CYC_CVAL1CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CVAL1CYC_Register use record
      CVAL1CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM0CVAL2CYC_CVAL2CYC_Field is HAL.UInt4;

   --  Capture Value 2 Cycle Register
   type SM0CVAL2CYC_Register is record
      --  Read-only. CVAL2CYC
      CVAL2CYC      : SM0CVAL2CYC_CVAL2CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CVAL2CYC_Register use record
      CVAL2CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM0CVAL3CYC_CVAL3CYC_Field is HAL.UInt4;

   --  Capture Value 3 Cycle Register
   type SM0CVAL3CYC_Register is record
      --  Read-only. CVAL3CYC
      CVAL3CYC      : SM0CVAL3CYC_CVAL3CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CVAL3CYC_Register use record
      CVAL3CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM0CVAL4CYC_CVAL4CYC_Field is HAL.UInt4;

   --  Capture Value 4 Cycle Register
   type SM0CVAL4CYC_Register is record
      --  Read-only. CVAL4CYC
      CVAL4CYC      : SM0CVAL4CYC_CVAL4CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CVAL4CYC_Register use record
      CVAL4CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM0CVAL5CYC_CVAL5CYC_Field is HAL.UInt4;

   --  Capture Value 5 Cycle Register
   type SM0CVAL5CYC_Register is record
      --  Read-only. CVAL5CYC
      CVAL5CYC      : SM0CVAL5CYC_CVAL5CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM0CVAL5CYC_Register use record
      CVAL5CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  Clock Source Select
   type SM1CTRL2_CLK_SEL_Field is
     (
      --  The IPBus clock is used as the clock for the local prescaler and
      --  counter.
      Clk_Sel_0,
      --  EXT_CLK is used as the clock for the local prescaler and counter.
      Clk_Sel_1,
      --  Submodule 0's clock (AUX_CLK) is used as the source clock for the
      --  local prescaler and counter. This setting should not be used in
      --  submodule 0 as it will force the clock to logic 0.
      Clk_Sel_2)
     with Size => 2;
   for SM1CTRL2_CLK_SEL_Field use
     (Clk_Sel_0 => 0,
      Clk_Sel_1 => 1,
      Clk_Sel_2 => 2);

   --  Reload Source Select
   type SM1CTRL2_RELOAD_SEL_Field is
     (
      --  The local RELOAD signal is used to reload registers.
      Reload_Sel_0,
      --  The master RELOAD signal (from submodule 0) is used to reload
      --  registers. This setting should not be used in submodule 0 as it will
      --  force the RELOAD signal to logic 0.
      Reload_Sel_1)
     with Size => 1;
   for SM1CTRL2_RELOAD_SEL_Field use
     (Reload_Sel_0 => 0,
      Reload_Sel_1 => 1);

   --  This read/write bit determines the source of the FORCE OUTPUT signal for
   --  this submodule.
   type SM1CTRL2_FORCE_SEL_Field is
     (
      --  The local force signal, CTRL2[FORCE], from this submodule is used to
      --  force updates.
      Force_Sel_0,
      --  The master force signal from submodule 0 is used to force updates.
      --  This setting should not be used in submodule 0 as it will hold the
      --  FORCE OUTPUT signal to logic 0.
      Force_Sel_1,
      --  The local reload signal from this submodule is used to force updates
      --  without regard to the state of LDOK.
      Force_Sel_2,
      --  The master reload signal from submodule0 is used to force updates if
      --  LDOK is set. This setting should not be used in submodule0 as it will
      --  hold the FORCE OUTPUT signal to logic 0.
      Force_Sel_3,
      --  The local sync signal from this submodule is used to force updates.
      Force_Sel_4,
      --  The master sync signal from submodule0 is used to force updates. This
      --  setting should not be used in submodule0 as it will hold the FORCE
      --  OUTPUT signal to logic 0.
      Force_Sel_5,
      --  The external force signal, EXT_FORCE, from outside the PWM module
      --  causes updates.
      Force_Sel_6,
      --  The external sync signal, EXT_SYNC, from outside the PWM module
      --  causes updates.
      Force_Sel_7)
     with Size => 3;
   for SM1CTRL2_FORCE_SEL_Field use
     (Force_Sel_0 => 0,
      Force_Sel_1 => 1,
      Force_Sel_2 => 2,
      Force_Sel_3 => 3,
      Force_Sel_4 => 4,
      Force_Sel_5 => 5,
      Force_Sel_6 => 6,
      Force_Sel_7 => 7);

   --  FRCEN
   type SM1CTRL2_FRCEN_Field is
     (
      --  Initialization from a FORCE_OUT is disabled.
      Frcen_0,
      --  Initialization from a FORCE_OUT is enabled.
      Frcen_1)
     with Size => 1;
   for SM1CTRL2_FRCEN_Field use
     (Frcen_0 => 0,
      Frcen_1 => 1);

   --  Initialization Control Select
   type SM1CTRL2_INIT_SEL_Field is
     (
      --  Local sync (PWM_X) causes initialization.
      Init_Sel_0,
      --  Master reload from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0. The submodule counter will only reinitialize when a master
      --  reload occurs.
      Init_Sel_1,
      --  Master sync from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0.
      Init_Sel_2,
      --  EXT_SYNC causes initialization.
      Init_Sel_3)
     with Size => 2;
   for SM1CTRL2_INIT_SEL_Field use
     (Init_Sel_0 => 0,
      Init_Sel_1 => 1,
      Init_Sel_2 => 2,
      Init_Sel_3 => 3);

   --  Independent or Complementary Pair Operation
   type SM1CTRL2_INDEP_Field is
     (
      --  PWM_A and PWM_B form a complementary PWM pair.
      Indep_0,
      --  PWM_A and PWM_B outputs are independent PWMs.
      Indep_1)
     with Size => 1;
   for SM1CTRL2_INDEP_Field use
     (Indep_0 => 0,
      Indep_1 => 1);

   --  Control 2 Register
   type SM1CTRL2_Register is record
      --  Clock Source Select
      CLK_SEL    : SM1CTRL2_CLK_SEL_Field := NRF_SVD.PWM.Clk_Sel_0;
      --  Reload Source Select
      RELOAD_SEL : SM1CTRL2_RELOAD_SEL_Field := NRF_SVD.PWM.Reload_Sel_0;
      --  This read/write bit determines the source of the FORCE OUTPUT signal
      --  for this submodule.
      FORCE_SEL  : SM1CTRL2_FORCE_SEL_Field := NRF_SVD.PWM.Force_Sel_0;
      --  Write-only. Force Initialization
      FORCE      : Boolean := False;
      --  FRCEN
      FRCEN      : SM1CTRL2_FRCEN_Field := NRF_SVD.PWM.Frcen_0;
      --  Initialization Control Select
      INIT_SEL   : SM1CTRL2_INIT_SEL_Field := NRF_SVD.PWM.Init_Sel_0;
      --  PWM_X Initial Value
      PWMX_INIT  : Boolean := False;
      --  PWM45 Initial Value
      PWM45_INIT : Boolean := False;
      --  PWM23 Initial Value
      PWM23_INIT : Boolean := False;
      --  Independent or Complementary Pair Operation
      INDEP      : SM1CTRL2_INDEP_Field := NRF_SVD.PWM.Indep_0;
      --  WAIT Enable
      WAITEN     : Boolean := False;
      --  Debug Enable
      DBGEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CTRL2_Register use record
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
   type SM1CTRL_DBLEN_Field is
     (
      --  Double switching disabled.
      Dblen_0,
      --  Double switching enabled.
      Dblen_1)
     with Size => 1;
   for SM1CTRL_DBLEN_Field use
     (Dblen_0 => 0,
      Dblen_1 => 1);

   --  PWMX Double Switching Enable
   type SM1CTRL_DBLX_Field is
     (
      --  PWMX double pulse disabled.
      Dblx_0,
      --  PWMX double pulse enabled.
      Dblx_1)
     with Size => 1;
   for SM1CTRL_DBLX_Field use
     (Dblx_0 => 0,
      Dblx_1 => 1);

   --  Load Mode Select
   type SM1CTRL_LDMOD_Field is
     (
      --  Buffered registers of this submodule are loaded and take effect at
      --  the next PWM reload if MCTRL[LDOK] is set.
      Ldmod_0,
      --  Buffered registers of this submodule are loaded and take effect
      --  immediately upon MCTRL[LDOK] being set. In this case it is not
      --  necessary to set CTRL[FULL] or CTRL[HALF].
      Ldmod_1)
     with Size => 1;
   for SM1CTRL_LDMOD_Field use
     (Ldmod_0 => 0,
      Ldmod_1 => 1);

   --  Split the DBLPWM signal to PWMA and PWMB
   type SM1CTRL_SPLIT_Field is
     (
      --  DBLPWM is not split. PWMA and PWMB each have double pulses.
      Split_0,
      --  DBLPWM is split to PWMA and PWMB.
      Split_1)
     with Size => 1;
   for SM1CTRL_SPLIT_Field use
     (Split_0 => 0,
      Split_1 => 1);

   --  Prescaler
   type SM1CTRL_PRSC_Field is
     (
      --  no description available
      Prsc_0,
      --  no description available
      Prsc_1,
      --  no description available
      Prsc_2,
      --  no description available
      Prsc_3,
      --  no description available
      Prsc_4,
      --  no description available
      Prsc_5,
      --  no description available
      Prsc_6,
      --  no description available
      Prsc_7)
     with Size => 3;
   for SM1CTRL_PRSC_Field use
     (Prsc_0 => 0,
      Prsc_1 => 1,
      Prsc_2 => 2,
      Prsc_3 => 3,
      Prsc_4 => 4,
      Prsc_5 => 5,
      Prsc_6 => 6,
      Prsc_7 => 7);

   --  Compare Mode
   type SM1CTRL_COMPMODE_Field is
     (
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to" method. This means that PWM edges are only produced when the
      --  counter is equal to one of the VAL* register values. This implies
      --  that a PWMA output that is high at the end of a period will maintain
      --  this state until a match with VAL3 clears the output in the following
      --  period.
      Compmode_0,
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to or greater than" method. This means that PWM edges are produced
      --  when the counter is equal to or greater than one of the VAL* register
      --  values. This implies that a PWMA output that is high at the end of a
      --  period could go low at the start of the next period if the starting
      --  counter value is greater than (but not necessarily equal to) the new
      --  VAL3 value.
      Compmode_1)
     with Size => 1;
   for SM1CTRL_COMPMODE_Field use
     (Compmode_0 => 0,
      Compmode_1 => 1);

   subtype SM1CTRL_DT_Field is HAL.UInt2;

   --  Full Cycle Reload
   type SM1CTRL_FULL_Field is
     (
      --  Full-cycle reloads disabled.
      Full_0,
      --  Full-cycle reloads enabled.
      Full_1)
     with Size => 1;
   for SM1CTRL_FULL_Field use
     (Full_0 => 0,
      Full_1 => 1);

   --  Half Cycle Reload
   type SM1CTRL_HALF_Field is
     (
      --  Half-cycle reloads disabled.
      Half_0,
      --  Half-cycle reloads enabled.
      Half_1)
     with Size => 1;
   for SM1CTRL_HALF_Field use
     (Half_0 => 0,
      Half_1 => 1);

   --  Load Frequency
   type SM1CTRL_LDFQ_Field is
     (
      --  Every PWM opportunity
      Ldfq_0,
      --  Every 2 PWM opportunities
      Ldfq_1,
      --  Every 3 PWM opportunities
      Ldfq_2,
      --  Every 4 PWM opportunities
      Ldfq_3,
      --  Every 5 PWM opportunities
      Ldfq_4,
      --  Every 6 PWM opportunities
      Ldfq_5,
      --  Every 7 PWM opportunities
      Ldfq_6,
      --  Every 8 PWM opportunities
      Ldfq_7,
      --  Every 9 PWM opportunities
      Ldfq_8,
      --  Every 10 PWM opportunities
      Ldfq_9,
      --  Every 11 PWM opportunities
      Ldfq_10,
      --  Every 12 PWM opportunities
      Ldfq_11,
      --  Every 13 PWM opportunities
      Ldfq_12,
      --  Every 14 PWM opportunities
      Ldfq_13,
      --  Every 15 PWM opportunities
      Ldfq_14,
      --  Every 16 PWM opportunities
      Ldfq_15)
     with Size => 4;
   for SM1CTRL_LDFQ_Field use
     (Ldfq_0 => 0,
      Ldfq_1 => 1,
      Ldfq_2 => 2,
      Ldfq_3 => 3,
      Ldfq_4 => 4,
      Ldfq_5 => 5,
      Ldfq_6 => 6,
      Ldfq_7 => 7,
      Ldfq_8 => 8,
      Ldfq_9 => 9,
      Ldfq_10 => 10,
      Ldfq_11 => 11,
      Ldfq_12 => 12,
      Ldfq_13 => 13,
      Ldfq_14 => 14,
      Ldfq_15 => 15);

   --  Control Register
   type SM1CTRL_Register is record
      --  Double Switching Enable
      DBLEN    : SM1CTRL_DBLEN_Field := NRF_SVD.PWM.Dblen_0;
      --  PWMX Double Switching Enable
      DBLX     : SM1CTRL_DBLX_Field := NRF_SVD.PWM.Dblx_0;
      --  Load Mode Select
      LDMOD    : SM1CTRL_LDMOD_Field := NRF_SVD.PWM.Ldmod_0;
      --  Split the DBLPWM signal to PWMA and PWMB
      SPLIT    : SM1CTRL_SPLIT_Field := NRF_SVD.PWM.Split_0;
      --  Prescaler
      PRSC     : SM1CTRL_PRSC_Field := NRF_SVD.PWM.Prsc_0;
      --  Compare Mode
      COMPMODE : SM1CTRL_COMPMODE_Field := NRF_SVD.PWM.Compmode_0;
      --  Read-only. Deadtime
      DT       : SM1CTRL_DT_Field := 16#0#;
      --  Full Cycle Reload
      FULL     : SM1CTRL_FULL_Field := NRF_SVD.PWM.Full_1;
      --  Half Cycle Reload
      HALF     : SM1CTRL_HALF_Field := NRF_SVD.PWM.Half_0;
      --  Load Frequency
      LDFQ     : SM1CTRL_LDFQ_Field := NRF_SVD.PWM.Ldfq_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CTRL_Register use record
      DBLEN    at 0 range 0 .. 0;
      DBLX     at 0 range 1 .. 1;
      LDMOD    at 0 range 2 .. 2;
      SPLIT    at 0 range 3 .. 3;
      PRSC     at 0 range 4 .. 6;
      COMPMODE at 0 range 7 .. 7;
      DT       at 0 range 8 .. 9;
      FULL     at 0 range 10 .. 10;
      HALF     at 0 range 11 .. 11;
      LDFQ     at 0 range 12 .. 15;
   end record;

   subtype SM1FRACVAL1_FRACVAL1_Field is HAL.UInt5;

   --  Fractional Value Register 1
   type SM1FRACVAL1_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 1 Register
      FRACVAL1      : SM1FRACVAL1_FRACVAL1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1FRACVAL1_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL1      at 0 range 11 .. 15;
   end record;

   subtype SM1FRACVAL2_FRACVAL2_Field is HAL.UInt5;

   --  Fractional Value Register 2
   type SM1FRACVAL2_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 2
      FRACVAL2      : SM1FRACVAL2_FRACVAL2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1FRACVAL2_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL2      at 0 range 11 .. 15;
   end record;

   subtype SM1FRACVAL3_FRACVAL3_Field is HAL.UInt5;

   --  Fractional Value Register 3
   type SM1FRACVAL3_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 3
      FRACVAL3      : SM1FRACVAL3_FRACVAL3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1FRACVAL3_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL3      at 0 range 11 .. 15;
   end record;

   subtype SM1FRACVAL4_FRACVAL4_Field is HAL.UInt5;

   --  Fractional Value Register 4
   type SM1FRACVAL4_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 4
      FRACVAL4      : SM1FRACVAL4_FRACVAL4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1FRACVAL4_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL4      at 0 range 11 .. 15;
   end record;

   subtype SM1FRACVAL5_FRACVAL5_Field is HAL.UInt5;

   --  Fractional Value Register 5
   type SM1FRACVAL5_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 5
      FRACVAL5      : SM1FRACVAL5_FRACVAL5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1FRACVAL5_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL5      at 0 range 11 .. 15;
   end record;

   --  Fractional Cycle PWM Period Enable
   type SM1FRCTRL_FRAC1_EN_Field is
     (
      --  Disable fractional cycle length for the PWM period.
      Frac1_En_0,
      --  Enable fractional cycle length for the PWM period.
      Frac1_En_1)
     with Size => 1;
   for SM1FRCTRL_FRAC1_EN_Field use
     (Frac1_En_0 => 0,
      Frac1_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_A
   type SM1FRCTRL_FRAC23_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_A.
      Frac23_En_0,
      --  Enable fractional cycle placement for PWM_A.
      Frac23_En_1)
     with Size => 1;
   for SM1FRCTRL_FRAC23_EN_Field use
     (Frac23_En_0 => 0,
      Frac23_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_B
   type SM1FRCTRL_FRAC45_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_B.
      Frac45_En_0,
      --  Enable fractional cycle placement for PWM_B.
      Frac45_En_1)
     with Size => 1;
   for SM1FRCTRL_FRAC45_EN_Field use
     (Frac45_En_0 => 0,
      Frac45_En_1 => 1);

   --  Fractional Delay Circuit Power Up
   type SM1FRCTRL_FRAC_PU_Field is
     (
      --  Turn off fractional delay logic.
      Frac_Pu_0,
      --  Power up fractional delay logic.
      Frac_Pu_1)
     with Size => 1;
   for SM1FRCTRL_FRAC_PU_Field use
     (Frac_Pu_0 => 0,
      Frac_Pu_1 => 1);

   --  Fractional Control Register
   type SM1FRCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Fractional Cycle PWM Period Enable
      FRAC1_EN      : SM1FRCTRL_FRAC1_EN_Field := NRF_SVD.PWM.Frac1_En_0;
      --  Fractional Cycle Placement Enable for PWM_A
      FRAC23_EN     : SM1FRCTRL_FRAC23_EN_Field := NRF_SVD.PWM.Frac23_En_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Fractional Cycle Placement Enable for PWM_B
      FRAC45_EN     : SM1FRCTRL_FRAC45_EN_Field := NRF_SVD.PWM.Frac45_En_0;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Fractional Delay Circuit Power Up
      FRAC_PU       : SM1FRCTRL_FRAC_PU_Field := NRF_SVD.PWM.Frac_Pu_0;
      --  unspecified
      Reserved_9_14 : HAL.UInt6 := 16#0#;
      --  Read-only. Test Status Bit
      TEST          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1FRCTRL_Register use record
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
   type SM1OCTRL_PWMXFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmxfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmxfs_1,
      --  Output is tristated.
      Pwmxfs_2,
      --  Output is tristated.
      Pwmxfs_3)
     with Size => 2;
   for SM1OCTRL_PWMXFS_Field use
     (Pwmxfs_0 => 0,
      Pwmxfs_1 => 1,
      Pwmxfs_2 => 2,
      Pwmxfs_3 => 3);

   --  PWM_B Fault State
   type SM1OCTRL_PWMBFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmbfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmbfs_1,
      --  Output is tristated.
      Pwmbfs_2,
      --  Output is tristated.
      Pwmbfs_3)
     with Size => 2;
   for SM1OCTRL_PWMBFS_Field use
     (Pwmbfs_0 => 0,
      Pwmbfs_1 => 1,
      Pwmbfs_2 => 2,
      Pwmbfs_3 => 3);

   --  PWM_A Fault State
   type SM1OCTRL_PWMAFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmafs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmafs_1,
      --  Output is tristated.
      Pwmafs_2,
      --  Output is tristated.
      Pwmafs_3)
     with Size => 2;
   for SM1OCTRL_PWMAFS_Field use
     (Pwmafs_0 => 0,
      Pwmafs_1 => 1,
      Pwmafs_2 => 2,
      Pwmafs_3 => 3);

   --  PWM_X Output Polarity
   type SM1OCTRL_POLX_Field is
     (
      --  PWM_X output not inverted. A high level on the PWM_X pin represents
      --  the "on" or "active" state.
      Polx_0,
      --  PWM_X output inverted. A low level on the PWM_X pin represents the
      --  "on" or "active" state.
      Polx_1)
     with Size => 1;
   for SM1OCTRL_POLX_Field use
     (Polx_0 => 0,
      Polx_1 => 1);

   --  PWM_B Output Polarity
   type SM1OCTRL_POLB_Field is
     (
      --  PWM_B output not inverted. A high level on the PWM_B pin represents
      --  the "on" or "active" state.
      Polb_0,
      --  PWM_B output inverted. A low level on the PWM_B pin represents the
      --  "on" or "active" state.
      Polb_1)
     with Size => 1;
   for SM1OCTRL_POLB_Field use
     (Polb_0 => 0,
      Polb_1 => 1);

   --  PWM_A Output Polarity
   type SM1OCTRL_POLA_Field is
     (
      --  PWM_A output not inverted. A high level on the PWM_A pin represents
      --  the "on" or "active" state.
      Pola_0,
      --  PWM_A output inverted. A low level on the PWM_A pin represents the
      --  "on" or "active" state.
      Pola_1)
     with Size => 1;
   for SM1OCTRL_POLA_Field use
     (Pola_0 => 0,
      Pola_1 => 1);

   --  Output Control Register
   type SM1OCTRL_Register is record
      --  PWM_X Fault State
      PWMXFS         : SM1OCTRL_PWMXFS_Field := NRF_SVD.PWM.Pwmxfs_0;
      --  PWM_B Fault State
      PWMBFS         : SM1OCTRL_PWMBFS_Field := NRF_SVD.PWM.Pwmbfs_0;
      --  PWM_A Fault State
      PWMAFS         : SM1OCTRL_PWMAFS_Field := NRF_SVD.PWM.Pwmafs_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PWM_X Output Polarity
      POLX           : SM1OCTRL_POLX_Field := NRF_SVD.PWM.Polx_0;
      --  PWM_B Output Polarity
      POLB           : SM1OCTRL_POLB_Field := NRF_SVD.PWM.Polb_0;
      --  PWM_A Output Polarity
      POLA           : SM1OCTRL_POLA_Field := NRF_SVD.PWM.Pola_0;
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

   for SM1OCTRL_Register use record
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
   type SM1STS_CMPF_Field is
     (
      --  No compare event has occurred for a particular VALx value.
      Cmpf_0,
      --  A compare event has occurred for a particular VALx value.
      Cmpf_1)
     with Size => 6;
   for SM1STS_CMPF_Field use
     (Cmpf_0 => 0,
      Cmpf_1 => 1);

   --  SM1STS_CFX array
   type SM1STS_CFX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM1STS_CFX
   type SM1STS_CFX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFX as a value
            Val : HAL.UInt2;
         when True =>
            --  CFX as an array
            Arr : SM1STS_CFX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM1STS_CFX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM1STS_CFB array
   type SM1STS_CFB_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM1STS_CFB
   type SM1STS_CFB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFB as a value
            Val : HAL.UInt2;
         when True =>
            --  CFB as an array
            Arr : SM1STS_CFB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM1STS_CFB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM1STS_CFA array
   type SM1STS_CFA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM1STS_CFA
   type SM1STS_CFA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFA as a value
            Val : HAL.UInt2;
         when True =>
            --  CFA as an array
            Arr : SM1STS_CFA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM1STS_CFA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Reload Flag
   type SM1STS_RF_Field is
     (
      --  No new reload cycle since last STS[RF] clearing
      Rf_0,
      --  New reload cycle since last STS[RF] clearing
      Rf_1)
     with Size => 1;
   for SM1STS_RF_Field use
     (Rf_0 => 0,
      Rf_1 => 1);

   --  Reload Error Flag
   type SM1STS_REF_Field is
     (
      --  No reload error occurred.
      Ref_0,
      --  Reload signal occurred with non-coherent data and MCTRL[LDOK] = 0.
      Ref_1)
     with Size => 1;
   for SM1STS_REF_Field use
     (Ref_0 => 0,
      Ref_1 => 1);

   --  Registers Updated Flag
   type SM1STS_RUF_Field is
     (
      --  No register update has occurred since last reload.
      Ruf_0,
      --  At least one of the double buffered registers has been updated since
      --  the last reload.
      Ruf_1)
     with Size => 1;
   for SM1STS_RUF_Field use
     (Ruf_0 => 0,
      Ruf_1 => 1);

   --  Status Register
   type SM1STS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Compare Flags
      CMPF           : SM1STS_CMPF_Field := NRF_SVD.PWM.Cmpf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag X0
      CFX            : SM1STS_CFX_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag B0
      CFB            : SM1STS_CFB_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag A0
      CFA            : SM1STS_CFA_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Flag
      RF             : SM1STS_RF_Field := NRF_SVD.PWM.Rf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Error Flag
      REF            : SM1STS_REF_Field := NRF_SVD.PWM.Ref_0;
      --  Read-only. Registers Updated Flag
      RUF            : SM1STS_RUF_Field := NRF_SVD.PWM.Ruf_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1STS_Register use record
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
   type SM1INTEN_CMPIE_Field is
     (
      --  The corresponding STS[CMPF] bit will not cause an interrupt request.
      Cmpie_0,
      --  The corresponding STS[CMPF] bit will cause an interrupt request.
      Cmpie_1)
     with Size => 6;
   for SM1INTEN_CMPIE_Field use
     (Cmpie_0 => 0,
      Cmpie_1 => 1);

   --  Capture X 0 Interrupt Enable
   type SM1INTEN_CX0IE_Field is
     (
      --  Interrupt request disabled for STS[CFX0].
      Cx0Ie_0,
      --  Interrupt request enabled for STS[CFX0].
      Cx0Ie_1)
     with Size => 1;
   for SM1INTEN_CX0IE_Field use
     (Cx0Ie_0 => 0,
      Cx0Ie_1 => 1);

   --  Capture X 1 Interrupt Enable
   type SM1INTEN_CX1IE_Field is
     (
      --  Interrupt request disabled for STS[CFX1].
      Cx1Ie_0,
      --  Interrupt request enabled for STS[CFX1].
      Cx1Ie_1)
     with Size => 1;
   for SM1INTEN_CX1IE_Field use
     (Cx1Ie_0 => 0,
      Cx1Ie_1 => 1);

   --  Capture B 0 Interrupt Enable
   type SM1INTEN_CB0IE_Field is
     (
      --  Interrupt request disabled for STS[CFB0].
      Cb0Ie_0,
      --  Interrupt request enabled for STS[CFB0].
      Cb0Ie_1)
     with Size => 1;
   for SM1INTEN_CB0IE_Field use
     (Cb0Ie_0 => 0,
      Cb0Ie_1 => 1);

   --  Capture B 1 Interrupt Enable
   type SM1INTEN_CB1IE_Field is
     (
      --  Interrupt request disabled for STS[CFB1].
      Cb1Ie_0,
      --  Interrupt request enabled for STS[CFB1].
      Cb1Ie_1)
     with Size => 1;
   for SM1INTEN_CB1IE_Field use
     (Cb1Ie_0 => 0,
      Cb1Ie_1 => 1);

   --  Capture A 0 Interrupt Enable
   type SM1INTEN_CA0IE_Field is
     (
      --  Interrupt request disabled for STS[CFA0].
      Ca0Ie_0,
      --  Interrupt request enabled for STS[CFA0].
      Ca0Ie_1)
     with Size => 1;
   for SM1INTEN_CA0IE_Field use
     (Ca0Ie_0 => 0,
      Ca0Ie_1 => 1);

   --  Capture A 1 Interrupt Enable
   type SM1INTEN_CA1IE_Field is
     (
      --  Interrupt request disabled for STS[CFA1].
      Ca1Ie_0,
      --  Interrupt request enabled for STS[CFA1].
      Ca1Ie_1)
     with Size => 1;
   for SM1INTEN_CA1IE_Field use
     (Ca1Ie_0 => 0,
      Ca1Ie_1 => 1);

   --  Reload Interrupt Enable
   type SM1INTEN_RIE_Field is
     (
      --  STS[RF] CPU interrupt requests disabled
      Rie_0,
      --  STS[RF] CPU interrupt requests enabled
      Rie_1)
     with Size => 1;
   for SM1INTEN_RIE_Field use
     (Rie_0 => 0,
      Rie_1 => 1);

   --  Reload Error Interrupt Enable
   type SM1INTEN_REIE_Field is
     (
      --  STS[REF] CPU interrupt requests disabled
      Reie_0,
      --  STS[REF] CPU interrupt requests enabled
      Reie_1)
     with Size => 1;
   for SM1INTEN_REIE_Field use
     (Reie_0 => 0,
      Reie_1 => 1);

   --  Interrupt Enable Register
   type SM1INTEN_Register is record
      --  Compare Interrupt Enables
      CMPIE          : SM1INTEN_CMPIE_Field := NRF_SVD.PWM.Cmpie_0;
      --  Capture X 0 Interrupt Enable
      CX0IE          : SM1INTEN_CX0IE_Field := NRF_SVD.PWM.Cx0Ie_0;
      --  Capture X 1 Interrupt Enable
      CX1IE          : SM1INTEN_CX1IE_Field := NRF_SVD.PWM.Cx1Ie_0;
      --  Capture B 0 Interrupt Enable
      CB0IE          : SM1INTEN_CB0IE_Field := NRF_SVD.PWM.Cb0Ie_0;
      --  Capture B 1 Interrupt Enable
      CB1IE          : SM1INTEN_CB1IE_Field := NRF_SVD.PWM.Cb1Ie_0;
      --  Capture A 0 Interrupt Enable
      CA0IE          : SM1INTEN_CA0IE_Field := NRF_SVD.PWM.Ca0Ie_0;
      --  Capture A 1 Interrupt Enable
      CA1IE          : SM1INTEN_CA1IE_Field := NRF_SVD.PWM.Ca1Ie_0;
      --  Reload Interrupt Enable
      RIE            : SM1INTEN_RIE_Field := NRF_SVD.PWM.Rie_0;
      --  Reload Error Interrupt Enable
      REIE           : SM1INTEN_REIE_Field := NRF_SVD.PWM.Reie_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1INTEN_Register use record
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
   type SM1DMAEN_CAPTDE_Field is
     (
      --  Read DMA requests disabled.
      Captde_0,
      --  Exceeding a FIFO watermark sets the DMA read request. This requires
      --  at least one of DMAEN[CA1DE], DMAEN[CA0DE], DMAEN[CB1DE],
      --  DMAEN[CB0DE], DMAEN[CX1DE], or DMAEN[CX0DE] to also be set in order
      --  to determine to which watermark(s) the DMA request is sensitive.
      Captde_1,
      --  A local sync (VAL1 matches counter) sets the read DMA request.
      Captde_2,
      --  A local reload (STS[RF] being set) sets the read DMA request.
      Captde_3)
     with Size => 2;
   for SM1DMAEN_CAPTDE_Field use
     (Captde_0 => 0,
      Captde_1 => 1,
      Captde_2 => 2,
      Captde_3 => 3);

   --  FIFO Watermark AND Control
   type SM1DMAEN_FAND_Field is
     (
      --  Selected FIFO watermarks are OR'ed together.
      Fand_0,
      --  Selected FIFO watermarks are AND'ed together.
      Fand_1)
     with Size => 1;
   for SM1DMAEN_FAND_Field use
     (Fand_0 => 0,
      Fand_1 => 1);

   --  Value Registers DMA Enable
   type SM1DMAEN_VALDE_Field is
     (
      --  DMA write requests disabled
      Valde_0,
      --  no description available
      Valde_1)
     with Size => 1;
   for SM1DMAEN_VALDE_Field use
     (Valde_0 => 0,
      Valde_1 => 1);

   --  DMA Enable Register
   type SM1DMAEN_Register is record
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
      CAPTDE         : SM1DMAEN_CAPTDE_Field := NRF_SVD.PWM.Captde_0;
      --  FIFO Watermark AND Control
      FAND           : SM1DMAEN_FAND_Field := NRF_SVD.PWM.Fand_0;
      --  Value Registers DMA Enable
      VALDE          : SM1DMAEN_VALDE_Field := NRF_SVD.PWM.Valde_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1DMAEN_Register use record
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
   type SM1TCTRL_OUT_TRIG_EN_Field is
     (
      --  PWM_OUT_TRIGx will not set when the counter value matches the VALx
      --  value.
      Out_Trig_En_0,
      --  PWM_OUT_TRIGx will set when the counter value matches the VALx value.
      Out_Trig_En_1)
     with Size => 6;
   for SM1TCTRL_OUT_TRIG_EN_Field use
     (Out_Trig_En_0 => 0,
      Out_Trig_En_1 => 1);

   --  Trigger frequency
   type SM1TCTRL_TRGFRQ_Field is
     (
      --  Trigger outputs are generated during every PWM period even if the PWM
      --  is not reloaded every period due to CTRL[LDFQ] being non-zero.
      Trgfrq_0,
      --  Trigger outputs are generated only during the final PWM period prior
      --  to a reload opportunity when the PWM is not reloaded every period due
      --  to CTRL[LDFQ] being non-zero.
      Trgfrq_1)
     with Size => 1;
   for SM1TCTRL_TRGFRQ_Field use
     (Trgfrq_0 => 0,
      Trgfrq_1 => 1);

   --  Output Trigger 1 Source Select
   type SM1TCTRL_PWBOT1_Field is
     (
      --  Route the PWM_OUT_TRIG1 signal to PWM_OUT_TRIG1 port.
      Pwbot1_0,
      --  Route the PWMB output to the PWM_OUT_TRIG1 port.
      Pwbot1_1)
     with Size => 1;
   for SM1TCTRL_PWBOT1_Field use
     (Pwbot1_0 => 0,
      Pwbot1_1 => 1);

   --  Output Trigger 0 Source Select
   type SM1TCTRL_PWAOT0_Field is
     (
      --  Route the PWM_OUT_TRIG0 signal to PWM_OUT_TRIG0 port.
      Pwaot0_0,
      --  Route the PWMA output to the PWM_OUT_TRIG0 port.
      Pwaot0_1)
     with Size => 1;
   for SM1TCTRL_PWAOT0_Field use
     (Pwaot0_0 => 0,
      Pwaot0_1 => 1);

   --  Output Trigger Control Register
   type SM1TCTRL_Register is record
      --  Output Trigger Enables
      OUT_TRIG_EN    : SM1TCTRL_OUT_TRIG_EN_Field :=
                        NRF_SVD.PWM.Out_Trig_En_0;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Trigger frequency
      TRGFRQ         : SM1TCTRL_TRGFRQ_Field := NRF_SVD.PWM.Trgfrq_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Output Trigger 1 Source Select
      PWBOT1         : SM1TCTRL_PWBOT1_Field := NRF_SVD.PWM.Pwbot1_0;
      --  Output Trigger 0 Source Select
      PWAOT0         : SM1TCTRL_PWAOT0_Field := NRF_SVD.PWM.Pwaot0_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1TCTRL_Register use record
      OUT_TRIG_EN    at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TRGFRQ         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PWBOT1         at 0 range 14 .. 14;
      PWAOT0         at 0 range 15 .. 15;
   end record;

   subtype SM1DISMAP0_DIS0A_Field is HAL.UInt4;
   subtype SM1DISMAP0_DIS0B_Field is HAL.UInt4;
   subtype SM1DISMAP0_DIS0X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 0
   type SM1DISMAP0_Register is record
      --  PWM_A Fault Disable Mask 0
      DIS0A          : SM1DISMAP0_DIS0A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 0
      DIS0B          : SM1DISMAP0_DIS0B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 0
      DIS0X          : SM1DISMAP0_DIS0X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1DISMAP0_Register use record
      DIS0A          at 0 range 0 .. 3;
      DIS0B          at 0 range 4 .. 7;
      DIS0X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype SM1DISMAP1_DIS1A_Field is HAL.UInt4;
   subtype SM1DISMAP1_DIS1B_Field is HAL.UInt4;
   subtype SM1DISMAP1_DIS1X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 1
   type SM1DISMAP1_Register is record
      --  PWM_A Fault Disable Mask 1
      DIS1A          : SM1DISMAP1_DIS1A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 1
      DIS1B          : SM1DISMAP1_DIS1B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 1
      DIS1X          : SM1DISMAP1_DIS1X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1DISMAP1_Register use record
      DIS1A          at 0 range 0 .. 3;
      DIS1B          at 0 range 4 .. 7;
      DIS1X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Arm A
   type SM1CAPTCTRLA_ARMA_Field is
     (
      --  Input capture operation is disabled.
      Arma_0,
      --  Input capture operation as specified by CAPTCTRLA[EDGAx] is enabled.
      Arma_1)
     with Size => 1;
   for SM1CAPTCTRLA_ARMA_Field use
     (Arma_0 => 0,
      Arma_1 => 1);

   --  One Shot Mode A
   type SM1CAPTCTRLA_ONESHOTA_Field is
     (
      --  no description available
      Oneshota_0,
      --  no description available
      Oneshota_1)
     with Size => 1;
   for SM1CAPTCTRLA_ONESHOTA_Field use
     (Oneshota_0 => 0,
      Oneshota_1 => 1);

   --  Edge A 0
   type SM1CAPTCTRLA_EDGA0_Field is
     (
      --  Disabled
      Edga0_0,
      --  Capture falling edges
      Edga0_1,
      --  Capture rising edges
      Edga0_2,
      --  Capture any edge
      Edga0_3)
     with Size => 2;
   for SM1CAPTCTRLA_EDGA0_Field use
     (Edga0_0 => 0,
      Edga0_1 => 1,
      Edga0_2 => 2,
      Edga0_3 => 3);

   --  Edge A 1
   type SM1CAPTCTRLA_EDGA1_Field is
     (
      --  Disabled
      Edga1_0,
      --  Capture falling edges
      Edga1_1,
      --  Capture rising edges
      Edga1_2,
      --  Capture any edge
      Edga1_3)
     with Size => 2;
   for SM1CAPTCTRLA_EDGA1_Field use
     (Edga1_0 => 0,
      Edga1_1 => 1,
      Edga1_2 => 2,
      Edga1_3 => 3);

   --  Input Select A
   type SM1CAPTCTRLA_INP_SELA_Field is
     (
      --  Raw PWM_A input signal selected as source.
      Inp_Sela_0,
      --  no description available
      Inp_Sela_1)
     with Size => 1;
   for SM1CAPTCTRLA_INP_SELA_Field use
     (Inp_Sela_0 => 0,
      Inp_Sela_1 => 1);

   --  Edge Counter A Enable
   type SM1CAPTCTRLA_EDGCNTA_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcnta_En_0,
      --  Edge counter enabled
      Edgcnta_En_1)
     with Size => 1;
   for SM1CAPTCTRLA_EDGCNTA_EN_Field use
     (Edgcnta_En_0 => 0,
      Edgcnta_En_1 => 1);

   subtype SM1CAPTCTRLA_CFAWM_Field is HAL.UInt2;
   subtype SM1CAPTCTRLA_CA0CNT_Field is HAL.UInt3;
   subtype SM1CAPTCTRLA_CA1CNT_Field is HAL.UInt3;

   --  Capture Control A Register
   type SM1CAPTCTRLA_Register is record
      --  Arm A
      ARMA       : SM1CAPTCTRLA_ARMA_Field := NRF_SVD.PWM.Arma_0;
      --  One Shot Mode A
      ONESHOTA   : SM1CAPTCTRLA_ONESHOTA_Field := NRF_SVD.PWM.Oneshota_0;
      --  Edge A 0
      EDGA0      : SM1CAPTCTRLA_EDGA0_Field := NRF_SVD.PWM.Edga0_0;
      --  Edge A 1
      EDGA1      : SM1CAPTCTRLA_EDGA1_Field := NRF_SVD.PWM.Edga1_0;
      --  Input Select A
      INP_SELA   : SM1CAPTCTRLA_INP_SELA_Field := NRF_SVD.PWM.Inp_Sela_0;
      --  Edge Counter A Enable
      EDGCNTA_EN : SM1CAPTCTRLA_EDGCNTA_EN_Field := NRF_SVD.PWM.Edgcnta_En_0;
      --  Capture A FIFOs Water Mark
      CFAWM      : SM1CAPTCTRLA_CFAWM_Field := 16#0#;
      --  Read-only. Capture A0 FIFO Word Count
      CA0CNT     : SM1CAPTCTRLA_CA0CNT_Field := 16#0#;
      --  Read-only. Capture A1 FIFO Word Count
      CA1CNT     : SM1CAPTCTRLA_CA1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CAPTCTRLA_Register use record
      ARMA       at 0 range 0 .. 0;
      ONESHOTA   at 0 range 1 .. 1;
      EDGA0      at 0 range 2 .. 3;
      EDGA1      at 0 range 4 .. 5;
      INP_SELA   at 0 range 6 .. 6;
      EDGCNTA_EN at 0 range 7 .. 7;
      CFAWM      at 0 range 8 .. 9;
      CA0CNT     at 0 range 10 .. 12;
      CA1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM1CAPTCOMPA_EDGCMPA_Field is HAL.UInt8;
   subtype SM1CAPTCOMPA_EDGCNTA_Field is HAL.UInt8;

   --  Capture Compare A Register
   type SM1CAPTCOMPA_Register is record
      --  Edge Compare A
      EDGCMPA : SM1CAPTCOMPA_EDGCMPA_Field := 16#0#;
      --  Read-only. Edge Counter A
      EDGCNTA : SM1CAPTCOMPA_EDGCNTA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CAPTCOMPA_Register use record
      EDGCMPA at 0 range 0 .. 7;
      EDGCNTA at 0 range 8 .. 15;
   end record;

   --  Arm B
   type SM1CAPTCTRLB_ARMB_Field is
     (
      --  Input capture operation is disabled.
      Armb_0,
      --  Input capture operation as specified by CAPTCTRLB[EDGBx] is enabled.
      Armb_1)
     with Size => 1;
   for SM1CAPTCTRLB_ARMB_Field use
     (Armb_0 => 0,
      Armb_1 => 1);

   --  One Shot Mode B
   type SM1CAPTCTRLB_ONESHOTB_Field is
     (
      --  no description available
      Oneshotb_0,
      --  no description available
      Oneshotb_1)
     with Size => 1;
   for SM1CAPTCTRLB_ONESHOTB_Field use
     (Oneshotb_0 => 0,
      Oneshotb_1 => 1);

   --  Edge B 0
   type SM1CAPTCTRLB_EDGB0_Field is
     (
      --  Disabled
      Edgb0_0,
      --  Capture falling edges
      Edgb0_1,
      --  Capture rising edges
      Edgb0_2,
      --  Capture any edge
      Edgb0_3)
     with Size => 2;
   for SM1CAPTCTRLB_EDGB0_Field use
     (Edgb0_0 => 0,
      Edgb0_1 => 1,
      Edgb0_2 => 2,
      Edgb0_3 => 3);

   --  Edge B 1
   type SM1CAPTCTRLB_EDGB1_Field is
     (
      --  Disabled
      Edgb1_0,
      --  Capture falling edges
      Edgb1_1,
      --  Capture rising edges
      Edgb1_2,
      --  Capture any edge
      Edgb1_3)
     with Size => 2;
   for SM1CAPTCTRLB_EDGB1_Field use
     (Edgb1_0 => 0,
      Edgb1_1 => 1,
      Edgb1_2 => 2,
      Edgb1_3 => 3);

   --  Input Select B
   type SM1CAPTCTRLB_INP_SELB_Field is
     (
      --  Raw PWM_B input signal selected as source.
      Inp_Selb_0,
      --  no description available
      Inp_Selb_1)
     with Size => 1;
   for SM1CAPTCTRLB_INP_SELB_Field use
     (Inp_Selb_0 => 0,
      Inp_Selb_1 => 1);

   --  Edge Counter B Enable
   type SM1CAPTCTRLB_EDGCNTB_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntb_En_0,
      --  Edge counter enabled
      Edgcntb_En_1)
     with Size => 1;
   for SM1CAPTCTRLB_EDGCNTB_EN_Field use
     (Edgcntb_En_0 => 0,
      Edgcntb_En_1 => 1);

   subtype SM1CAPTCTRLB_CFBWM_Field is HAL.UInt2;
   subtype SM1CAPTCTRLB_CB0CNT_Field is HAL.UInt3;
   subtype SM1CAPTCTRLB_CB1CNT_Field is HAL.UInt3;

   --  Capture Control B Register
   type SM1CAPTCTRLB_Register is record
      --  Arm B
      ARMB       : SM1CAPTCTRLB_ARMB_Field := NRF_SVD.PWM.Armb_0;
      --  One Shot Mode B
      ONESHOTB   : SM1CAPTCTRLB_ONESHOTB_Field := NRF_SVD.PWM.Oneshotb_0;
      --  Edge B 0
      EDGB0      : SM1CAPTCTRLB_EDGB0_Field := NRF_SVD.PWM.Edgb0_0;
      --  Edge B 1
      EDGB1      : SM1CAPTCTRLB_EDGB1_Field := NRF_SVD.PWM.Edgb1_0;
      --  Input Select B
      INP_SELB   : SM1CAPTCTRLB_INP_SELB_Field := NRF_SVD.PWM.Inp_Selb_0;
      --  Edge Counter B Enable
      EDGCNTB_EN : SM1CAPTCTRLB_EDGCNTB_EN_Field := NRF_SVD.PWM.Edgcntb_En_0;
      --  Capture B FIFOs Water Mark
      CFBWM      : SM1CAPTCTRLB_CFBWM_Field := 16#0#;
      --  Read-only. Capture B0 FIFO Word Count
      CB0CNT     : SM1CAPTCTRLB_CB0CNT_Field := 16#0#;
      --  Read-only. Capture B1 FIFO Word Count
      CB1CNT     : SM1CAPTCTRLB_CB1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CAPTCTRLB_Register use record
      ARMB       at 0 range 0 .. 0;
      ONESHOTB   at 0 range 1 .. 1;
      EDGB0      at 0 range 2 .. 3;
      EDGB1      at 0 range 4 .. 5;
      INP_SELB   at 0 range 6 .. 6;
      EDGCNTB_EN at 0 range 7 .. 7;
      CFBWM      at 0 range 8 .. 9;
      CB0CNT     at 0 range 10 .. 12;
      CB1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM1CAPTCOMPB_EDGCMPB_Field is HAL.UInt8;
   subtype SM1CAPTCOMPB_EDGCNTB_Field is HAL.UInt8;

   --  Capture Compare B Register
   type SM1CAPTCOMPB_Register is record
      --  Edge Compare B
      EDGCMPB : SM1CAPTCOMPB_EDGCMPB_Field := 16#0#;
      --  Read-only. Edge Counter B
      EDGCNTB : SM1CAPTCOMPB_EDGCNTB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CAPTCOMPB_Register use record
      EDGCMPB at 0 range 0 .. 7;
      EDGCNTB at 0 range 8 .. 15;
   end record;

   --  Arm X
   type SM1CAPTCTRLX_ARMX_Field is
     (
      --  Input capture operation is disabled.
      Armx_0,
      --  Input capture operation as specified by CAPTCTRLX[EDGXx] is enabled.
      Armx_1)
     with Size => 1;
   for SM1CAPTCTRLX_ARMX_Field use
     (Armx_0 => 0,
      Armx_1 => 1);

   --  One Shot Mode Aux
   type SM1CAPTCTRLX_ONESHOTX_Field is
     (
      --  no description available
      Oneshotx_0,
      --  no description available
      Oneshotx_1)
     with Size => 1;
   for SM1CAPTCTRLX_ONESHOTX_Field use
     (Oneshotx_0 => 0,
      Oneshotx_1 => 1);

   --  Edge X 0
   type SM1CAPTCTRLX_EDGX0_Field is
     (
      --  Disabled
      Edgx0_0,
      --  Capture falling edges
      Edgx0_1,
      --  Capture rising edges
      Edgx0_2,
      --  Capture any edge
      Edgx0_3)
     with Size => 2;
   for SM1CAPTCTRLX_EDGX0_Field use
     (Edgx0_0 => 0,
      Edgx0_1 => 1,
      Edgx0_2 => 2,
      Edgx0_3 => 3);

   --  Edge X 1
   type SM1CAPTCTRLX_EDGX1_Field is
     (
      --  Disabled
      Edgx1_0,
      --  Capture falling edges
      Edgx1_1,
      --  Capture rising edges
      Edgx1_2,
      --  Capture any edge
      Edgx1_3)
     with Size => 2;
   for SM1CAPTCTRLX_EDGX1_Field use
     (Edgx1_0 => 0,
      Edgx1_1 => 1,
      Edgx1_2 => 2,
      Edgx1_3 => 3);

   --  Input Select X
   type SM1CAPTCTRLX_INP_SELX_Field is
     (
      --  Raw PWM_X input signal selected as source.
      Inp_Selx_0,
      --  no description available
      Inp_Selx_1)
     with Size => 1;
   for SM1CAPTCTRLX_INP_SELX_Field use
     (Inp_Selx_0 => 0,
      Inp_Selx_1 => 1);

   --  Edge Counter X Enable
   type SM1CAPTCTRLX_EDGCNTX_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntx_En_0,
      --  Edge counter enabled
      Edgcntx_En_1)
     with Size => 1;
   for SM1CAPTCTRLX_EDGCNTX_EN_Field use
     (Edgcntx_En_0 => 0,
      Edgcntx_En_1 => 1);

   subtype SM1CAPTCTRLX_CFXWM_Field is HAL.UInt2;
   subtype SM1CAPTCTRLX_CX0CNT_Field is HAL.UInt3;
   subtype SM1CAPTCTRLX_CX1CNT_Field is HAL.UInt3;

   --  Capture Control X Register
   type SM1CAPTCTRLX_Register is record
      --  Arm X
      ARMX       : SM1CAPTCTRLX_ARMX_Field := NRF_SVD.PWM.Armx_0;
      --  One Shot Mode Aux
      ONESHOTX   : SM1CAPTCTRLX_ONESHOTX_Field := NRF_SVD.PWM.Oneshotx_0;
      --  Edge X 0
      EDGX0      : SM1CAPTCTRLX_EDGX0_Field := NRF_SVD.PWM.Edgx0_0;
      --  Edge X 1
      EDGX1      : SM1CAPTCTRLX_EDGX1_Field := NRF_SVD.PWM.Edgx1_0;
      --  Input Select X
      INP_SELX   : SM1CAPTCTRLX_INP_SELX_Field := NRF_SVD.PWM.Inp_Selx_0;
      --  Edge Counter X Enable
      EDGCNTX_EN : SM1CAPTCTRLX_EDGCNTX_EN_Field := NRF_SVD.PWM.Edgcntx_En_0;
      --  Capture X FIFOs Water Mark
      CFXWM      : SM1CAPTCTRLX_CFXWM_Field := 16#0#;
      --  Read-only. Capture X0 FIFO Word Count
      CX0CNT     : SM1CAPTCTRLX_CX0CNT_Field := 16#0#;
      --  Read-only. Capture X1 FIFO Word Count
      CX1CNT     : SM1CAPTCTRLX_CX1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CAPTCTRLX_Register use record
      ARMX       at 0 range 0 .. 0;
      ONESHOTX   at 0 range 1 .. 1;
      EDGX0      at 0 range 2 .. 3;
      EDGX1      at 0 range 4 .. 5;
      INP_SELX   at 0 range 6 .. 6;
      EDGCNTX_EN at 0 range 7 .. 7;
      CFXWM      at 0 range 8 .. 9;
      CX0CNT     at 0 range 10 .. 12;
      CX1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM1CAPTCOMPX_EDGCMPX_Field is HAL.UInt8;
   subtype SM1CAPTCOMPX_EDGCNTX_Field is HAL.UInt8;

   --  Capture Compare X Register
   type SM1CAPTCOMPX_Register is record
      --  Edge Compare X
      EDGCMPX : SM1CAPTCOMPX_EDGCMPX_Field := 16#0#;
      --  Read-only. Edge Counter X
      EDGCNTX : SM1CAPTCOMPX_EDGCNTX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CAPTCOMPX_Register use record
      EDGCMPX at 0 range 0 .. 7;
      EDGCNTX at 0 range 8 .. 15;
   end record;

   subtype SM1CVAL0CYC_CVAL0CYC_Field is HAL.UInt4;

   --  Capture Value 0 Cycle Register
   type SM1CVAL0CYC_Register is record
      --  Read-only. CVAL0CYC
      CVAL0CYC      : SM1CVAL0CYC_CVAL0CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CVAL0CYC_Register use record
      CVAL0CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM1CVAL1CYC_CVAL1CYC_Field is HAL.UInt4;

   --  Capture Value 1 Cycle Register
   type SM1CVAL1CYC_Register is record
      --  Read-only. CVAL1CYC
      CVAL1CYC      : SM1CVAL1CYC_CVAL1CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CVAL1CYC_Register use record
      CVAL1CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM1CVAL2CYC_CVAL2CYC_Field is HAL.UInt4;

   --  Capture Value 2 Cycle Register
   type SM1CVAL2CYC_Register is record
      --  Read-only. CVAL2CYC
      CVAL2CYC      : SM1CVAL2CYC_CVAL2CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CVAL2CYC_Register use record
      CVAL2CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM1CVAL3CYC_CVAL3CYC_Field is HAL.UInt4;

   --  Capture Value 3 Cycle Register
   type SM1CVAL3CYC_Register is record
      --  Read-only. CVAL3CYC
      CVAL3CYC      : SM1CVAL3CYC_CVAL3CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CVAL3CYC_Register use record
      CVAL3CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM1CVAL4CYC_CVAL4CYC_Field is HAL.UInt4;

   --  Capture Value 4 Cycle Register
   type SM1CVAL4CYC_Register is record
      --  Read-only. CVAL4CYC
      CVAL4CYC      : SM1CVAL4CYC_CVAL4CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CVAL4CYC_Register use record
      CVAL4CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM1CVAL5CYC_CVAL5CYC_Field is HAL.UInt4;

   --  Capture Value 5 Cycle Register
   type SM1CVAL5CYC_Register is record
      --  Read-only. CVAL5CYC
      CVAL5CYC      : SM1CVAL5CYC_CVAL5CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM1CVAL5CYC_Register use record
      CVAL5CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  Clock Source Select
   type SM2CTRL2_CLK_SEL_Field is
     (
      --  The IPBus clock is used as the clock for the local prescaler and
      --  counter.
      Clk_Sel_0,
      --  EXT_CLK is used as the clock for the local prescaler and counter.
      Clk_Sel_1,
      --  Submodule 0's clock (AUX_CLK) is used as the source clock for the
      --  local prescaler and counter. This setting should not be used in
      --  submodule 0 as it will force the clock to logic 0.
      Clk_Sel_2)
     with Size => 2;
   for SM2CTRL2_CLK_SEL_Field use
     (Clk_Sel_0 => 0,
      Clk_Sel_1 => 1,
      Clk_Sel_2 => 2);

   --  Reload Source Select
   type SM2CTRL2_RELOAD_SEL_Field is
     (
      --  The local RELOAD signal is used to reload registers.
      Reload_Sel_0,
      --  The master RELOAD signal (from submodule 0) is used to reload
      --  registers. This setting should not be used in submodule 0 as it will
      --  force the RELOAD signal to logic 0.
      Reload_Sel_1)
     with Size => 1;
   for SM2CTRL2_RELOAD_SEL_Field use
     (Reload_Sel_0 => 0,
      Reload_Sel_1 => 1);

   --  This read/write bit determines the source of the FORCE OUTPUT signal for
   --  this submodule.
   type SM2CTRL2_FORCE_SEL_Field is
     (
      --  The local force signal, CTRL2[FORCE], from this submodule is used to
      --  force updates.
      Force_Sel_0,
      --  The master force signal from submodule 0 is used to force updates.
      --  This setting should not be used in submodule 0 as it will hold the
      --  FORCE OUTPUT signal to logic 0.
      Force_Sel_1,
      --  The local reload signal from this submodule is used to force updates
      --  without regard to the state of LDOK.
      Force_Sel_2,
      --  The master reload signal from submodule0 is used to force updates if
      --  LDOK is set. This setting should not be used in submodule0 as it will
      --  hold the FORCE OUTPUT signal to logic 0.
      Force_Sel_3,
      --  The local sync signal from this submodule is used to force updates.
      Force_Sel_4,
      --  The master sync signal from submodule0 is used to force updates. This
      --  setting should not be used in submodule0 as it will hold the FORCE
      --  OUTPUT signal to logic 0.
      Force_Sel_5,
      --  The external force signal, EXT_FORCE, from outside the PWM module
      --  causes updates.
      Force_Sel_6,
      --  The external sync signal, EXT_SYNC, from outside the PWM module
      --  causes updates.
      Force_Sel_7)
     with Size => 3;
   for SM2CTRL2_FORCE_SEL_Field use
     (Force_Sel_0 => 0,
      Force_Sel_1 => 1,
      Force_Sel_2 => 2,
      Force_Sel_3 => 3,
      Force_Sel_4 => 4,
      Force_Sel_5 => 5,
      Force_Sel_6 => 6,
      Force_Sel_7 => 7);

   --  FRCEN
   type SM2CTRL2_FRCEN_Field is
     (
      --  Initialization from a FORCE_OUT is disabled.
      Frcen_0,
      --  Initialization from a FORCE_OUT is enabled.
      Frcen_1)
     with Size => 1;
   for SM2CTRL2_FRCEN_Field use
     (Frcen_0 => 0,
      Frcen_1 => 1);

   --  Initialization Control Select
   type SM2CTRL2_INIT_SEL_Field is
     (
      --  Local sync (PWM_X) causes initialization.
      Init_Sel_0,
      --  Master reload from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0. The submodule counter will only reinitialize when a master
      --  reload occurs.
      Init_Sel_1,
      --  Master sync from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0.
      Init_Sel_2,
      --  EXT_SYNC causes initialization.
      Init_Sel_3)
     with Size => 2;
   for SM2CTRL2_INIT_SEL_Field use
     (Init_Sel_0 => 0,
      Init_Sel_1 => 1,
      Init_Sel_2 => 2,
      Init_Sel_3 => 3);

   --  Independent or Complementary Pair Operation
   type SM2CTRL2_INDEP_Field is
     (
      --  PWM_A and PWM_B form a complementary PWM pair.
      Indep_0,
      --  PWM_A and PWM_B outputs are independent PWMs.
      Indep_1)
     with Size => 1;
   for SM2CTRL2_INDEP_Field use
     (Indep_0 => 0,
      Indep_1 => 1);

   --  Control 2 Register
   type SM2CTRL2_Register is record
      --  Clock Source Select
      CLK_SEL    : SM2CTRL2_CLK_SEL_Field := NRF_SVD.PWM.Clk_Sel_0;
      --  Reload Source Select
      RELOAD_SEL : SM2CTRL2_RELOAD_SEL_Field := NRF_SVD.PWM.Reload_Sel_0;
      --  This read/write bit determines the source of the FORCE OUTPUT signal
      --  for this submodule.
      FORCE_SEL  : SM2CTRL2_FORCE_SEL_Field := NRF_SVD.PWM.Force_Sel_0;
      --  Write-only. Force Initialization
      FORCE      : Boolean := False;
      --  FRCEN
      FRCEN      : SM2CTRL2_FRCEN_Field := NRF_SVD.PWM.Frcen_0;
      --  Initialization Control Select
      INIT_SEL   : SM2CTRL2_INIT_SEL_Field := NRF_SVD.PWM.Init_Sel_0;
      --  PWM_X Initial Value
      PWMX_INIT  : Boolean := False;
      --  PWM45 Initial Value
      PWM45_INIT : Boolean := False;
      --  PWM23 Initial Value
      PWM23_INIT : Boolean := False;
      --  Independent or Complementary Pair Operation
      INDEP      : SM2CTRL2_INDEP_Field := NRF_SVD.PWM.Indep_0;
      --  WAIT Enable
      WAITEN     : Boolean := False;
      --  Debug Enable
      DBGEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CTRL2_Register use record
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
   type SM2CTRL_DBLEN_Field is
     (
      --  Double switching disabled.
      Dblen_0,
      --  Double switching enabled.
      Dblen_1)
     with Size => 1;
   for SM2CTRL_DBLEN_Field use
     (Dblen_0 => 0,
      Dblen_1 => 1);

   --  PWMX Double Switching Enable
   type SM2CTRL_DBLX_Field is
     (
      --  PWMX double pulse disabled.
      Dblx_0,
      --  PWMX double pulse enabled.
      Dblx_1)
     with Size => 1;
   for SM2CTRL_DBLX_Field use
     (Dblx_0 => 0,
      Dblx_1 => 1);

   --  Load Mode Select
   type SM2CTRL_LDMOD_Field is
     (
      --  Buffered registers of this submodule are loaded and take effect at
      --  the next PWM reload if MCTRL[LDOK] is set.
      Ldmod_0,
      --  Buffered registers of this submodule are loaded and take effect
      --  immediately upon MCTRL[LDOK] being set. In this case it is not
      --  necessary to set CTRL[FULL] or CTRL[HALF].
      Ldmod_1)
     with Size => 1;
   for SM2CTRL_LDMOD_Field use
     (Ldmod_0 => 0,
      Ldmod_1 => 1);

   --  Split the DBLPWM signal to PWMA and PWMB
   type SM2CTRL_SPLIT_Field is
     (
      --  DBLPWM is not split. PWMA and PWMB each have double pulses.
      Split_0,
      --  DBLPWM is split to PWMA and PWMB.
      Split_1)
     with Size => 1;
   for SM2CTRL_SPLIT_Field use
     (Split_0 => 0,
      Split_1 => 1);

   --  Prescaler
   type SM2CTRL_PRSC_Field is
     (
      --  no description available
      Prsc_0,
      --  no description available
      Prsc_1,
      --  no description available
      Prsc_2,
      --  no description available
      Prsc_3,
      --  no description available
      Prsc_4,
      --  no description available
      Prsc_5,
      --  no description available
      Prsc_6,
      --  no description available
      Prsc_7)
     with Size => 3;
   for SM2CTRL_PRSC_Field use
     (Prsc_0 => 0,
      Prsc_1 => 1,
      Prsc_2 => 2,
      Prsc_3 => 3,
      Prsc_4 => 4,
      Prsc_5 => 5,
      Prsc_6 => 6,
      Prsc_7 => 7);

   --  Compare Mode
   type SM2CTRL_COMPMODE_Field is
     (
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to" method. This means that PWM edges are only produced when the
      --  counter is equal to one of the VAL* register values. This implies
      --  that a PWMA output that is high at the end of a period will maintain
      --  this state until a match with VAL3 clears the output in the following
      --  period.
      Compmode_0,
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to or greater than" method. This means that PWM edges are produced
      --  when the counter is equal to or greater than one of the VAL* register
      --  values. This implies that a PWMA output that is high at the end of a
      --  period could go low at the start of the next period if the starting
      --  counter value is greater than (but not necessarily equal to) the new
      --  VAL3 value.
      Compmode_1)
     with Size => 1;
   for SM2CTRL_COMPMODE_Field use
     (Compmode_0 => 0,
      Compmode_1 => 1);

   subtype SM2CTRL_DT_Field is HAL.UInt2;

   --  Full Cycle Reload
   type SM2CTRL_FULL_Field is
     (
      --  Full-cycle reloads disabled.
      Full_0,
      --  Full-cycle reloads enabled.
      Full_1)
     with Size => 1;
   for SM2CTRL_FULL_Field use
     (Full_0 => 0,
      Full_1 => 1);

   --  Half Cycle Reload
   type SM2CTRL_HALF_Field is
     (
      --  Half-cycle reloads disabled.
      Half_0,
      --  Half-cycle reloads enabled.
      Half_1)
     with Size => 1;
   for SM2CTRL_HALF_Field use
     (Half_0 => 0,
      Half_1 => 1);

   --  Load Frequency
   type SM2CTRL_LDFQ_Field is
     (
      --  Every PWM opportunity
      Ldfq_0,
      --  Every 2 PWM opportunities
      Ldfq_1,
      --  Every 3 PWM opportunities
      Ldfq_2,
      --  Every 4 PWM opportunities
      Ldfq_3,
      --  Every 5 PWM opportunities
      Ldfq_4,
      --  Every 6 PWM opportunities
      Ldfq_5,
      --  Every 7 PWM opportunities
      Ldfq_6,
      --  Every 8 PWM opportunities
      Ldfq_7,
      --  Every 9 PWM opportunities
      Ldfq_8,
      --  Every 10 PWM opportunities
      Ldfq_9,
      --  Every 11 PWM opportunities
      Ldfq_10,
      --  Every 12 PWM opportunities
      Ldfq_11,
      --  Every 13 PWM opportunities
      Ldfq_12,
      --  Every 14 PWM opportunities
      Ldfq_13,
      --  Every 15 PWM opportunities
      Ldfq_14,
      --  Every 16 PWM opportunities
      Ldfq_15)
     with Size => 4;
   for SM2CTRL_LDFQ_Field use
     (Ldfq_0 => 0,
      Ldfq_1 => 1,
      Ldfq_2 => 2,
      Ldfq_3 => 3,
      Ldfq_4 => 4,
      Ldfq_5 => 5,
      Ldfq_6 => 6,
      Ldfq_7 => 7,
      Ldfq_8 => 8,
      Ldfq_9 => 9,
      Ldfq_10 => 10,
      Ldfq_11 => 11,
      Ldfq_12 => 12,
      Ldfq_13 => 13,
      Ldfq_14 => 14,
      Ldfq_15 => 15);

   --  Control Register
   type SM2CTRL_Register is record
      --  Double Switching Enable
      DBLEN    : SM2CTRL_DBLEN_Field := NRF_SVD.PWM.Dblen_0;
      --  PWMX Double Switching Enable
      DBLX     : SM2CTRL_DBLX_Field := NRF_SVD.PWM.Dblx_0;
      --  Load Mode Select
      LDMOD    : SM2CTRL_LDMOD_Field := NRF_SVD.PWM.Ldmod_0;
      --  Split the DBLPWM signal to PWMA and PWMB
      SPLIT    : SM2CTRL_SPLIT_Field := NRF_SVD.PWM.Split_0;
      --  Prescaler
      PRSC     : SM2CTRL_PRSC_Field := NRF_SVD.PWM.Prsc_0;
      --  Compare Mode
      COMPMODE : SM2CTRL_COMPMODE_Field := NRF_SVD.PWM.Compmode_0;
      --  Read-only. Deadtime
      DT       : SM2CTRL_DT_Field := 16#0#;
      --  Full Cycle Reload
      FULL     : SM2CTRL_FULL_Field := NRF_SVD.PWM.Full_1;
      --  Half Cycle Reload
      HALF     : SM2CTRL_HALF_Field := NRF_SVD.PWM.Half_0;
      --  Load Frequency
      LDFQ     : SM2CTRL_LDFQ_Field := NRF_SVD.PWM.Ldfq_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CTRL_Register use record
      DBLEN    at 0 range 0 .. 0;
      DBLX     at 0 range 1 .. 1;
      LDMOD    at 0 range 2 .. 2;
      SPLIT    at 0 range 3 .. 3;
      PRSC     at 0 range 4 .. 6;
      COMPMODE at 0 range 7 .. 7;
      DT       at 0 range 8 .. 9;
      FULL     at 0 range 10 .. 10;
      HALF     at 0 range 11 .. 11;
      LDFQ     at 0 range 12 .. 15;
   end record;

   subtype SM2FRACVAL1_FRACVAL1_Field is HAL.UInt5;

   --  Fractional Value Register 1
   type SM2FRACVAL1_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 1 Register
      FRACVAL1      : SM2FRACVAL1_FRACVAL1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2FRACVAL1_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL1      at 0 range 11 .. 15;
   end record;

   subtype SM2FRACVAL2_FRACVAL2_Field is HAL.UInt5;

   --  Fractional Value Register 2
   type SM2FRACVAL2_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 2
      FRACVAL2      : SM2FRACVAL2_FRACVAL2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2FRACVAL2_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL2      at 0 range 11 .. 15;
   end record;

   subtype SM2FRACVAL3_FRACVAL3_Field is HAL.UInt5;

   --  Fractional Value Register 3
   type SM2FRACVAL3_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 3
      FRACVAL3      : SM2FRACVAL3_FRACVAL3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2FRACVAL3_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL3      at 0 range 11 .. 15;
   end record;

   subtype SM2FRACVAL4_FRACVAL4_Field is HAL.UInt5;

   --  Fractional Value Register 4
   type SM2FRACVAL4_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 4
      FRACVAL4      : SM2FRACVAL4_FRACVAL4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2FRACVAL4_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL4      at 0 range 11 .. 15;
   end record;

   subtype SM2FRACVAL5_FRACVAL5_Field is HAL.UInt5;

   --  Fractional Value Register 5
   type SM2FRACVAL5_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 5
      FRACVAL5      : SM2FRACVAL5_FRACVAL5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2FRACVAL5_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL5      at 0 range 11 .. 15;
   end record;

   --  Fractional Cycle PWM Period Enable
   type SM2FRCTRL_FRAC1_EN_Field is
     (
      --  Disable fractional cycle length for the PWM period.
      Frac1_En_0,
      --  Enable fractional cycle length for the PWM period.
      Frac1_En_1)
     with Size => 1;
   for SM2FRCTRL_FRAC1_EN_Field use
     (Frac1_En_0 => 0,
      Frac1_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_A
   type SM2FRCTRL_FRAC23_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_A.
      Frac23_En_0,
      --  Enable fractional cycle placement for PWM_A.
      Frac23_En_1)
     with Size => 1;
   for SM2FRCTRL_FRAC23_EN_Field use
     (Frac23_En_0 => 0,
      Frac23_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_B
   type SM2FRCTRL_FRAC45_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_B.
      Frac45_En_0,
      --  Enable fractional cycle placement for PWM_B.
      Frac45_En_1)
     with Size => 1;
   for SM2FRCTRL_FRAC45_EN_Field use
     (Frac45_En_0 => 0,
      Frac45_En_1 => 1);

   --  Fractional Delay Circuit Power Up
   type SM2FRCTRL_FRAC_PU_Field is
     (
      --  Turn off fractional delay logic.
      Frac_Pu_0,
      --  Power up fractional delay logic.
      Frac_Pu_1)
     with Size => 1;
   for SM2FRCTRL_FRAC_PU_Field use
     (Frac_Pu_0 => 0,
      Frac_Pu_1 => 1);

   --  Fractional Control Register
   type SM2FRCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Fractional Cycle PWM Period Enable
      FRAC1_EN      : SM2FRCTRL_FRAC1_EN_Field := NRF_SVD.PWM.Frac1_En_0;
      --  Fractional Cycle Placement Enable for PWM_A
      FRAC23_EN     : SM2FRCTRL_FRAC23_EN_Field := NRF_SVD.PWM.Frac23_En_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Fractional Cycle Placement Enable for PWM_B
      FRAC45_EN     : SM2FRCTRL_FRAC45_EN_Field := NRF_SVD.PWM.Frac45_En_0;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Fractional Delay Circuit Power Up
      FRAC_PU       : SM2FRCTRL_FRAC_PU_Field := NRF_SVD.PWM.Frac_Pu_0;
      --  unspecified
      Reserved_9_14 : HAL.UInt6 := 16#0#;
      --  Read-only. Test Status Bit
      TEST          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2FRCTRL_Register use record
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
   type SM2OCTRL_PWMXFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmxfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmxfs_1,
      --  Output is tristated.
      Pwmxfs_2,
      --  Output is tristated.
      Pwmxfs_3)
     with Size => 2;
   for SM2OCTRL_PWMXFS_Field use
     (Pwmxfs_0 => 0,
      Pwmxfs_1 => 1,
      Pwmxfs_2 => 2,
      Pwmxfs_3 => 3);

   --  PWM_B Fault State
   type SM2OCTRL_PWMBFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmbfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmbfs_1,
      --  Output is tristated.
      Pwmbfs_2,
      --  Output is tristated.
      Pwmbfs_3)
     with Size => 2;
   for SM2OCTRL_PWMBFS_Field use
     (Pwmbfs_0 => 0,
      Pwmbfs_1 => 1,
      Pwmbfs_2 => 2,
      Pwmbfs_3 => 3);

   --  PWM_A Fault State
   type SM2OCTRL_PWMAFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmafs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmafs_1,
      --  Output is tristated.
      Pwmafs_2,
      --  Output is tristated.
      Pwmafs_3)
     with Size => 2;
   for SM2OCTRL_PWMAFS_Field use
     (Pwmafs_0 => 0,
      Pwmafs_1 => 1,
      Pwmafs_2 => 2,
      Pwmafs_3 => 3);

   --  PWM_X Output Polarity
   type SM2OCTRL_POLX_Field is
     (
      --  PWM_X output not inverted. A high level on the PWM_X pin represents
      --  the "on" or "active" state.
      Polx_0,
      --  PWM_X output inverted. A low level on the PWM_X pin represents the
      --  "on" or "active" state.
      Polx_1)
     with Size => 1;
   for SM2OCTRL_POLX_Field use
     (Polx_0 => 0,
      Polx_1 => 1);

   --  PWM_B Output Polarity
   type SM2OCTRL_POLB_Field is
     (
      --  PWM_B output not inverted. A high level on the PWM_B pin represents
      --  the "on" or "active" state.
      Polb_0,
      --  PWM_B output inverted. A low level on the PWM_B pin represents the
      --  "on" or "active" state.
      Polb_1)
     with Size => 1;
   for SM2OCTRL_POLB_Field use
     (Polb_0 => 0,
      Polb_1 => 1);

   --  PWM_A Output Polarity
   type SM2OCTRL_POLA_Field is
     (
      --  PWM_A output not inverted. A high level on the PWM_A pin represents
      --  the "on" or "active" state.
      Pola_0,
      --  PWM_A output inverted. A low level on the PWM_A pin represents the
      --  "on" or "active" state.
      Pola_1)
     with Size => 1;
   for SM2OCTRL_POLA_Field use
     (Pola_0 => 0,
      Pola_1 => 1);

   --  Output Control Register
   type SM2OCTRL_Register is record
      --  PWM_X Fault State
      PWMXFS         : SM2OCTRL_PWMXFS_Field := NRF_SVD.PWM.Pwmxfs_0;
      --  PWM_B Fault State
      PWMBFS         : SM2OCTRL_PWMBFS_Field := NRF_SVD.PWM.Pwmbfs_0;
      --  PWM_A Fault State
      PWMAFS         : SM2OCTRL_PWMAFS_Field := NRF_SVD.PWM.Pwmafs_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PWM_X Output Polarity
      POLX           : SM2OCTRL_POLX_Field := NRF_SVD.PWM.Polx_0;
      --  PWM_B Output Polarity
      POLB           : SM2OCTRL_POLB_Field := NRF_SVD.PWM.Polb_0;
      --  PWM_A Output Polarity
      POLA           : SM2OCTRL_POLA_Field := NRF_SVD.PWM.Pola_0;
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

   for SM2OCTRL_Register use record
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
   type SM2STS_CMPF_Field is
     (
      --  No compare event has occurred for a particular VALx value.
      Cmpf_0,
      --  A compare event has occurred for a particular VALx value.
      Cmpf_1)
     with Size => 6;
   for SM2STS_CMPF_Field use
     (Cmpf_0 => 0,
      Cmpf_1 => 1);

   --  SM2STS_CFX array
   type SM2STS_CFX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM2STS_CFX
   type SM2STS_CFX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFX as a value
            Val : HAL.UInt2;
         when True =>
            --  CFX as an array
            Arr : SM2STS_CFX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM2STS_CFX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM2STS_CFB array
   type SM2STS_CFB_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM2STS_CFB
   type SM2STS_CFB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFB as a value
            Val : HAL.UInt2;
         when True =>
            --  CFB as an array
            Arr : SM2STS_CFB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM2STS_CFB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM2STS_CFA array
   type SM2STS_CFA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM2STS_CFA
   type SM2STS_CFA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFA as a value
            Val : HAL.UInt2;
         when True =>
            --  CFA as an array
            Arr : SM2STS_CFA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM2STS_CFA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Reload Flag
   type SM2STS_RF_Field is
     (
      --  No new reload cycle since last STS[RF] clearing
      Rf_0,
      --  New reload cycle since last STS[RF] clearing
      Rf_1)
     with Size => 1;
   for SM2STS_RF_Field use
     (Rf_0 => 0,
      Rf_1 => 1);

   --  Reload Error Flag
   type SM2STS_REF_Field is
     (
      --  No reload error occurred.
      Ref_0,
      --  Reload signal occurred with non-coherent data and MCTRL[LDOK] = 0.
      Ref_1)
     with Size => 1;
   for SM2STS_REF_Field use
     (Ref_0 => 0,
      Ref_1 => 1);

   --  Registers Updated Flag
   type SM2STS_RUF_Field is
     (
      --  No register update has occurred since last reload.
      Ruf_0,
      --  At least one of the double buffered registers has been updated since
      --  the last reload.
      Ruf_1)
     with Size => 1;
   for SM2STS_RUF_Field use
     (Ruf_0 => 0,
      Ruf_1 => 1);

   --  Status Register
   type SM2STS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Compare Flags
      CMPF           : SM2STS_CMPF_Field := NRF_SVD.PWM.Cmpf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag X0
      CFX            : SM2STS_CFX_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag B0
      CFB            : SM2STS_CFB_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag A0
      CFA            : SM2STS_CFA_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Flag
      RF             : SM2STS_RF_Field := NRF_SVD.PWM.Rf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Error Flag
      REF            : SM2STS_REF_Field := NRF_SVD.PWM.Ref_0;
      --  Read-only. Registers Updated Flag
      RUF            : SM2STS_RUF_Field := NRF_SVD.PWM.Ruf_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2STS_Register use record
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
   type SM2INTEN_CMPIE_Field is
     (
      --  The corresponding STS[CMPF] bit will not cause an interrupt request.
      Cmpie_0,
      --  The corresponding STS[CMPF] bit will cause an interrupt request.
      Cmpie_1)
     with Size => 6;
   for SM2INTEN_CMPIE_Field use
     (Cmpie_0 => 0,
      Cmpie_1 => 1);

   --  Capture X 0 Interrupt Enable
   type SM2INTEN_CX0IE_Field is
     (
      --  Interrupt request disabled for STS[CFX0].
      Cx0Ie_0,
      --  Interrupt request enabled for STS[CFX0].
      Cx0Ie_1)
     with Size => 1;
   for SM2INTEN_CX0IE_Field use
     (Cx0Ie_0 => 0,
      Cx0Ie_1 => 1);

   --  Capture X 1 Interrupt Enable
   type SM2INTEN_CX1IE_Field is
     (
      --  Interrupt request disabled for STS[CFX1].
      Cx1Ie_0,
      --  Interrupt request enabled for STS[CFX1].
      Cx1Ie_1)
     with Size => 1;
   for SM2INTEN_CX1IE_Field use
     (Cx1Ie_0 => 0,
      Cx1Ie_1 => 1);

   --  Capture B 0 Interrupt Enable
   type SM2INTEN_CB0IE_Field is
     (
      --  Interrupt request disabled for STS[CFB0].
      Cb0Ie_0,
      --  Interrupt request enabled for STS[CFB0].
      Cb0Ie_1)
     with Size => 1;
   for SM2INTEN_CB0IE_Field use
     (Cb0Ie_0 => 0,
      Cb0Ie_1 => 1);

   --  Capture B 1 Interrupt Enable
   type SM2INTEN_CB1IE_Field is
     (
      --  Interrupt request disabled for STS[CFB1].
      Cb1Ie_0,
      --  Interrupt request enabled for STS[CFB1].
      Cb1Ie_1)
     with Size => 1;
   for SM2INTEN_CB1IE_Field use
     (Cb1Ie_0 => 0,
      Cb1Ie_1 => 1);

   --  Capture A 0 Interrupt Enable
   type SM2INTEN_CA0IE_Field is
     (
      --  Interrupt request disabled for STS[CFA0].
      Ca0Ie_0,
      --  Interrupt request enabled for STS[CFA0].
      Ca0Ie_1)
     with Size => 1;
   for SM2INTEN_CA0IE_Field use
     (Ca0Ie_0 => 0,
      Ca0Ie_1 => 1);

   --  Capture A 1 Interrupt Enable
   type SM2INTEN_CA1IE_Field is
     (
      --  Interrupt request disabled for STS[CFA1].
      Ca1Ie_0,
      --  Interrupt request enabled for STS[CFA1].
      Ca1Ie_1)
     with Size => 1;
   for SM2INTEN_CA1IE_Field use
     (Ca1Ie_0 => 0,
      Ca1Ie_1 => 1);

   --  Reload Interrupt Enable
   type SM2INTEN_RIE_Field is
     (
      --  STS[RF] CPU interrupt requests disabled
      Rie_0,
      --  STS[RF] CPU interrupt requests enabled
      Rie_1)
     with Size => 1;
   for SM2INTEN_RIE_Field use
     (Rie_0 => 0,
      Rie_1 => 1);

   --  Reload Error Interrupt Enable
   type SM2INTEN_REIE_Field is
     (
      --  STS[REF] CPU interrupt requests disabled
      Reie_0,
      --  STS[REF] CPU interrupt requests enabled
      Reie_1)
     with Size => 1;
   for SM2INTEN_REIE_Field use
     (Reie_0 => 0,
      Reie_1 => 1);

   --  Interrupt Enable Register
   type SM2INTEN_Register is record
      --  Compare Interrupt Enables
      CMPIE          : SM2INTEN_CMPIE_Field := NRF_SVD.PWM.Cmpie_0;
      --  Capture X 0 Interrupt Enable
      CX0IE          : SM2INTEN_CX0IE_Field := NRF_SVD.PWM.Cx0Ie_0;
      --  Capture X 1 Interrupt Enable
      CX1IE          : SM2INTEN_CX1IE_Field := NRF_SVD.PWM.Cx1Ie_0;
      --  Capture B 0 Interrupt Enable
      CB0IE          : SM2INTEN_CB0IE_Field := NRF_SVD.PWM.Cb0Ie_0;
      --  Capture B 1 Interrupt Enable
      CB1IE          : SM2INTEN_CB1IE_Field := NRF_SVD.PWM.Cb1Ie_0;
      --  Capture A 0 Interrupt Enable
      CA0IE          : SM2INTEN_CA0IE_Field := NRF_SVD.PWM.Ca0Ie_0;
      --  Capture A 1 Interrupt Enable
      CA1IE          : SM2INTEN_CA1IE_Field := NRF_SVD.PWM.Ca1Ie_0;
      --  Reload Interrupt Enable
      RIE            : SM2INTEN_RIE_Field := NRF_SVD.PWM.Rie_0;
      --  Reload Error Interrupt Enable
      REIE           : SM2INTEN_REIE_Field := NRF_SVD.PWM.Reie_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2INTEN_Register use record
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
   type SM2DMAEN_CAPTDE_Field is
     (
      --  Read DMA requests disabled.
      Captde_0,
      --  Exceeding a FIFO watermark sets the DMA read request. This requires
      --  at least one of DMAEN[CA1DE], DMAEN[CA0DE], DMAEN[CB1DE],
      --  DMAEN[CB0DE], DMAEN[CX1DE], or DMAEN[CX0DE] to also be set in order
      --  to determine to which watermark(s) the DMA request is sensitive.
      Captde_1,
      --  A local sync (VAL1 matches counter) sets the read DMA request.
      Captde_2,
      --  A local reload (STS[RF] being set) sets the read DMA request.
      Captde_3)
     with Size => 2;
   for SM2DMAEN_CAPTDE_Field use
     (Captde_0 => 0,
      Captde_1 => 1,
      Captde_2 => 2,
      Captde_3 => 3);

   --  FIFO Watermark AND Control
   type SM2DMAEN_FAND_Field is
     (
      --  Selected FIFO watermarks are OR'ed together.
      Fand_0,
      --  Selected FIFO watermarks are AND'ed together.
      Fand_1)
     with Size => 1;
   for SM2DMAEN_FAND_Field use
     (Fand_0 => 0,
      Fand_1 => 1);

   --  Value Registers DMA Enable
   type SM2DMAEN_VALDE_Field is
     (
      --  DMA write requests disabled
      Valde_0,
      --  no description available
      Valde_1)
     with Size => 1;
   for SM2DMAEN_VALDE_Field use
     (Valde_0 => 0,
      Valde_1 => 1);

   --  DMA Enable Register
   type SM2DMAEN_Register is record
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
      CAPTDE         : SM2DMAEN_CAPTDE_Field := NRF_SVD.PWM.Captde_0;
      --  FIFO Watermark AND Control
      FAND           : SM2DMAEN_FAND_Field := NRF_SVD.PWM.Fand_0;
      --  Value Registers DMA Enable
      VALDE          : SM2DMAEN_VALDE_Field := NRF_SVD.PWM.Valde_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2DMAEN_Register use record
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
   type SM2TCTRL_OUT_TRIG_EN_Field is
     (
      --  PWM_OUT_TRIGx will not set when the counter value matches the VALx
      --  value.
      Out_Trig_En_0,
      --  PWM_OUT_TRIGx will set when the counter value matches the VALx value.
      Out_Trig_En_1)
     with Size => 6;
   for SM2TCTRL_OUT_TRIG_EN_Field use
     (Out_Trig_En_0 => 0,
      Out_Trig_En_1 => 1);

   --  Trigger frequency
   type SM2TCTRL_TRGFRQ_Field is
     (
      --  Trigger outputs are generated during every PWM period even if the PWM
      --  is not reloaded every period due to CTRL[LDFQ] being non-zero.
      Trgfrq_0,
      --  Trigger outputs are generated only during the final PWM period prior
      --  to a reload opportunity when the PWM is not reloaded every period due
      --  to CTRL[LDFQ] being non-zero.
      Trgfrq_1)
     with Size => 1;
   for SM2TCTRL_TRGFRQ_Field use
     (Trgfrq_0 => 0,
      Trgfrq_1 => 1);

   --  Output Trigger 1 Source Select
   type SM2TCTRL_PWBOT1_Field is
     (
      --  Route the PWM_OUT_TRIG1 signal to PWM_OUT_TRIG1 port.
      Pwbot1_0,
      --  Route the PWMB output to the PWM_OUT_TRIG1 port.
      Pwbot1_1)
     with Size => 1;
   for SM2TCTRL_PWBOT1_Field use
     (Pwbot1_0 => 0,
      Pwbot1_1 => 1);

   --  Output Trigger 0 Source Select
   type SM2TCTRL_PWAOT0_Field is
     (
      --  Route the PWM_OUT_TRIG0 signal to PWM_OUT_TRIG0 port.
      Pwaot0_0,
      --  Route the PWMA output to the PWM_OUT_TRIG0 port.
      Pwaot0_1)
     with Size => 1;
   for SM2TCTRL_PWAOT0_Field use
     (Pwaot0_0 => 0,
      Pwaot0_1 => 1);

   --  Output Trigger Control Register
   type SM2TCTRL_Register is record
      --  Output Trigger Enables
      OUT_TRIG_EN    : SM2TCTRL_OUT_TRIG_EN_Field :=
                        NRF_SVD.PWM.Out_Trig_En_0;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Trigger frequency
      TRGFRQ         : SM2TCTRL_TRGFRQ_Field := NRF_SVD.PWM.Trgfrq_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Output Trigger 1 Source Select
      PWBOT1         : SM2TCTRL_PWBOT1_Field := NRF_SVD.PWM.Pwbot1_0;
      --  Output Trigger 0 Source Select
      PWAOT0         : SM2TCTRL_PWAOT0_Field := NRF_SVD.PWM.Pwaot0_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2TCTRL_Register use record
      OUT_TRIG_EN    at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TRGFRQ         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PWBOT1         at 0 range 14 .. 14;
      PWAOT0         at 0 range 15 .. 15;
   end record;

   subtype SM2DISMAP0_DIS0A_Field is HAL.UInt4;
   subtype SM2DISMAP0_DIS0B_Field is HAL.UInt4;
   subtype SM2DISMAP0_DIS0X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 0
   type SM2DISMAP0_Register is record
      --  PWM_A Fault Disable Mask 0
      DIS0A          : SM2DISMAP0_DIS0A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 0
      DIS0B          : SM2DISMAP0_DIS0B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 0
      DIS0X          : SM2DISMAP0_DIS0X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2DISMAP0_Register use record
      DIS0A          at 0 range 0 .. 3;
      DIS0B          at 0 range 4 .. 7;
      DIS0X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype SM2DISMAP1_DIS1A_Field is HAL.UInt4;
   subtype SM2DISMAP1_DIS1B_Field is HAL.UInt4;
   subtype SM2DISMAP1_DIS1X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 1
   type SM2DISMAP1_Register is record
      --  PWM_A Fault Disable Mask 1
      DIS1A          : SM2DISMAP1_DIS1A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 1
      DIS1B          : SM2DISMAP1_DIS1B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 1
      DIS1X          : SM2DISMAP1_DIS1X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2DISMAP1_Register use record
      DIS1A          at 0 range 0 .. 3;
      DIS1B          at 0 range 4 .. 7;
      DIS1X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Arm A
   type SM2CAPTCTRLA_ARMA_Field is
     (
      --  Input capture operation is disabled.
      Arma_0,
      --  Input capture operation as specified by CAPTCTRLA[EDGAx] is enabled.
      Arma_1)
     with Size => 1;
   for SM2CAPTCTRLA_ARMA_Field use
     (Arma_0 => 0,
      Arma_1 => 1);

   --  One Shot Mode A
   type SM2CAPTCTRLA_ONESHOTA_Field is
     (
      --  no description available
      Oneshota_0,
      --  no description available
      Oneshota_1)
     with Size => 1;
   for SM2CAPTCTRLA_ONESHOTA_Field use
     (Oneshota_0 => 0,
      Oneshota_1 => 1);

   --  Edge A 0
   type SM2CAPTCTRLA_EDGA0_Field is
     (
      --  Disabled
      Edga0_0,
      --  Capture falling edges
      Edga0_1,
      --  Capture rising edges
      Edga0_2,
      --  Capture any edge
      Edga0_3)
     with Size => 2;
   for SM2CAPTCTRLA_EDGA0_Field use
     (Edga0_0 => 0,
      Edga0_1 => 1,
      Edga0_2 => 2,
      Edga0_3 => 3);

   --  Edge A 1
   type SM2CAPTCTRLA_EDGA1_Field is
     (
      --  Disabled
      Edga1_0,
      --  Capture falling edges
      Edga1_1,
      --  Capture rising edges
      Edga1_2,
      --  Capture any edge
      Edga1_3)
     with Size => 2;
   for SM2CAPTCTRLA_EDGA1_Field use
     (Edga1_0 => 0,
      Edga1_1 => 1,
      Edga1_2 => 2,
      Edga1_3 => 3);

   --  Input Select A
   type SM2CAPTCTRLA_INP_SELA_Field is
     (
      --  Raw PWM_A input signal selected as source.
      Inp_Sela_0,
      --  no description available
      Inp_Sela_1)
     with Size => 1;
   for SM2CAPTCTRLA_INP_SELA_Field use
     (Inp_Sela_0 => 0,
      Inp_Sela_1 => 1);

   --  Edge Counter A Enable
   type SM2CAPTCTRLA_EDGCNTA_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcnta_En_0,
      --  Edge counter enabled
      Edgcnta_En_1)
     with Size => 1;
   for SM2CAPTCTRLA_EDGCNTA_EN_Field use
     (Edgcnta_En_0 => 0,
      Edgcnta_En_1 => 1);

   subtype SM2CAPTCTRLA_CFAWM_Field is HAL.UInt2;
   subtype SM2CAPTCTRLA_CA0CNT_Field is HAL.UInt3;
   subtype SM2CAPTCTRLA_CA1CNT_Field is HAL.UInt3;

   --  Capture Control A Register
   type SM2CAPTCTRLA_Register is record
      --  Arm A
      ARMA       : SM2CAPTCTRLA_ARMA_Field := NRF_SVD.PWM.Arma_0;
      --  One Shot Mode A
      ONESHOTA   : SM2CAPTCTRLA_ONESHOTA_Field := NRF_SVD.PWM.Oneshota_0;
      --  Edge A 0
      EDGA0      : SM2CAPTCTRLA_EDGA0_Field := NRF_SVD.PWM.Edga0_0;
      --  Edge A 1
      EDGA1      : SM2CAPTCTRLA_EDGA1_Field := NRF_SVD.PWM.Edga1_0;
      --  Input Select A
      INP_SELA   : SM2CAPTCTRLA_INP_SELA_Field := NRF_SVD.PWM.Inp_Sela_0;
      --  Edge Counter A Enable
      EDGCNTA_EN : SM2CAPTCTRLA_EDGCNTA_EN_Field := NRF_SVD.PWM.Edgcnta_En_0;
      --  Capture A FIFOs Water Mark
      CFAWM      : SM2CAPTCTRLA_CFAWM_Field := 16#0#;
      --  Read-only. Capture A0 FIFO Word Count
      CA0CNT     : SM2CAPTCTRLA_CA0CNT_Field := 16#0#;
      --  Read-only. Capture A1 FIFO Word Count
      CA1CNT     : SM2CAPTCTRLA_CA1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CAPTCTRLA_Register use record
      ARMA       at 0 range 0 .. 0;
      ONESHOTA   at 0 range 1 .. 1;
      EDGA0      at 0 range 2 .. 3;
      EDGA1      at 0 range 4 .. 5;
      INP_SELA   at 0 range 6 .. 6;
      EDGCNTA_EN at 0 range 7 .. 7;
      CFAWM      at 0 range 8 .. 9;
      CA0CNT     at 0 range 10 .. 12;
      CA1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM2CAPTCOMPA_EDGCMPA_Field is HAL.UInt8;
   subtype SM2CAPTCOMPA_EDGCNTA_Field is HAL.UInt8;

   --  Capture Compare A Register
   type SM2CAPTCOMPA_Register is record
      --  Edge Compare A
      EDGCMPA : SM2CAPTCOMPA_EDGCMPA_Field := 16#0#;
      --  Read-only. Edge Counter A
      EDGCNTA : SM2CAPTCOMPA_EDGCNTA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CAPTCOMPA_Register use record
      EDGCMPA at 0 range 0 .. 7;
      EDGCNTA at 0 range 8 .. 15;
   end record;

   --  Arm B
   type SM2CAPTCTRLB_ARMB_Field is
     (
      --  Input capture operation is disabled.
      Armb_0,
      --  Input capture operation as specified by CAPTCTRLB[EDGBx] is enabled.
      Armb_1)
     with Size => 1;
   for SM2CAPTCTRLB_ARMB_Field use
     (Armb_0 => 0,
      Armb_1 => 1);

   --  One Shot Mode B
   type SM2CAPTCTRLB_ONESHOTB_Field is
     (
      --  no description available
      Oneshotb_0,
      --  no description available
      Oneshotb_1)
     with Size => 1;
   for SM2CAPTCTRLB_ONESHOTB_Field use
     (Oneshotb_0 => 0,
      Oneshotb_1 => 1);

   --  Edge B 0
   type SM2CAPTCTRLB_EDGB0_Field is
     (
      --  Disabled
      Edgb0_0,
      --  Capture falling edges
      Edgb0_1,
      --  Capture rising edges
      Edgb0_2,
      --  Capture any edge
      Edgb0_3)
     with Size => 2;
   for SM2CAPTCTRLB_EDGB0_Field use
     (Edgb0_0 => 0,
      Edgb0_1 => 1,
      Edgb0_2 => 2,
      Edgb0_3 => 3);

   --  Edge B 1
   type SM2CAPTCTRLB_EDGB1_Field is
     (
      --  Disabled
      Edgb1_0,
      --  Capture falling edges
      Edgb1_1,
      --  Capture rising edges
      Edgb1_2,
      --  Capture any edge
      Edgb1_3)
     with Size => 2;
   for SM2CAPTCTRLB_EDGB1_Field use
     (Edgb1_0 => 0,
      Edgb1_1 => 1,
      Edgb1_2 => 2,
      Edgb1_3 => 3);

   --  Input Select B
   type SM2CAPTCTRLB_INP_SELB_Field is
     (
      --  Raw PWM_B input signal selected as source.
      Inp_Selb_0,
      --  no description available
      Inp_Selb_1)
     with Size => 1;
   for SM2CAPTCTRLB_INP_SELB_Field use
     (Inp_Selb_0 => 0,
      Inp_Selb_1 => 1);

   --  Edge Counter B Enable
   type SM2CAPTCTRLB_EDGCNTB_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntb_En_0,
      --  Edge counter enabled
      Edgcntb_En_1)
     with Size => 1;
   for SM2CAPTCTRLB_EDGCNTB_EN_Field use
     (Edgcntb_En_0 => 0,
      Edgcntb_En_1 => 1);

   subtype SM2CAPTCTRLB_CFBWM_Field is HAL.UInt2;
   subtype SM2CAPTCTRLB_CB0CNT_Field is HAL.UInt3;
   subtype SM2CAPTCTRLB_CB1CNT_Field is HAL.UInt3;

   --  Capture Control B Register
   type SM2CAPTCTRLB_Register is record
      --  Arm B
      ARMB       : SM2CAPTCTRLB_ARMB_Field := NRF_SVD.PWM.Armb_0;
      --  One Shot Mode B
      ONESHOTB   : SM2CAPTCTRLB_ONESHOTB_Field := NRF_SVD.PWM.Oneshotb_0;
      --  Edge B 0
      EDGB0      : SM2CAPTCTRLB_EDGB0_Field := NRF_SVD.PWM.Edgb0_0;
      --  Edge B 1
      EDGB1      : SM2CAPTCTRLB_EDGB1_Field := NRF_SVD.PWM.Edgb1_0;
      --  Input Select B
      INP_SELB   : SM2CAPTCTRLB_INP_SELB_Field := NRF_SVD.PWM.Inp_Selb_0;
      --  Edge Counter B Enable
      EDGCNTB_EN : SM2CAPTCTRLB_EDGCNTB_EN_Field := NRF_SVD.PWM.Edgcntb_En_0;
      --  Capture B FIFOs Water Mark
      CFBWM      : SM2CAPTCTRLB_CFBWM_Field := 16#0#;
      --  Read-only. Capture B0 FIFO Word Count
      CB0CNT     : SM2CAPTCTRLB_CB0CNT_Field := 16#0#;
      --  Read-only. Capture B1 FIFO Word Count
      CB1CNT     : SM2CAPTCTRLB_CB1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CAPTCTRLB_Register use record
      ARMB       at 0 range 0 .. 0;
      ONESHOTB   at 0 range 1 .. 1;
      EDGB0      at 0 range 2 .. 3;
      EDGB1      at 0 range 4 .. 5;
      INP_SELB   at 0 range 6 .. 6;
      EDGCNTB_EN at 0 range 7 .. 7;
      CFBWM      at 0 range 8 .. 9;
      CB0CNT     at 0 range 10 .. 12;
      CB1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM2CAPTCOMPB_EDGCMPB_Field is HAL.UInt8;
   subtype SM2CAPTCOMPB_EDGCNTB_Field is HAL.UInt8;

   --  Capture Compare B Register
   type SM2CAPTCOMPB_Register is record
      --  Edge Compare B
      EDGCMPB : SM2CAPTCOMPB_EDGCMPB_Field := 16#0#;
      --  Read-only. Edge Counter B
      EDGCNTB : SM2CAPTCOMPB_EDGCNTB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CAPTCOMPB_Register use record
      EDGCMPB at 0 range 0 .. 7;
      EDGCNTB at 0 range 8 .. 15;
   end record;

   --  Arm X
   type SM2CAPTCTRLX_ARMX_Field is
     (
      --  Input capture operation is disabled.
      Armx_0,
      --  Input capture operation as specified by CAPTCTRLX[EDGXx] is enabled.
      Armx_1)
     with Size => 1;
   for SM2CAPTCTRLX_ARMX_Field use
     (Armx_0 => 0,
      Armx_1 => 1);

   --  One Shot Mode Aux
   type SM2CAPTCTRLX_ONESHOTX_Field is
     (
      --  no description available
      Oneshotx_0,
      --  no description available
      Oneshotx_1)
     with Size => 1;
   for SM2CAPTCTRLX_ONESHOTX_Field use
     (Oneshotx_0 => 0,
      Oneshotx_1 => 1);

   --  Edge X 0
   type SM2CAPTCTRLX_EDGX0_Field is
     (
      --  Disabled
      Edgx0_0,
      --  Capture falling edges
      Edgx0_1,
      --  Capture rising edges
      Edgx0_2,
      --  Capture any edge
      Edgx0_3)
     with Size => 2;
   for SM2CAPTCTRLX_EDGX0_Field use
     (Edgx0_0 => 0,
      Edgx0_1 => 1,
      Edgx0_2 => 2,
      Edgx0_3 => 3);

   --  Edge X 1
   type SM2CAPTCTRLX_EDGX1_Field is
     (
      --  Disabled
      Edgx1_0,
      --  Capture falling edges
      Edgx1_1,
      --  Capture rising edges
      Edgx1_2,
      --  Capture any edge
      Edgx1_3)
     with Size => 2;
   for SM2CAPTCTRLX_EDGX1_Field use
     (Edgx1_0 => 0,
      Edgx1_1 => 1,
      Edgx1_2 => 2,
      Edgx1_3 => 3);

   --  Input Select X
   type SM2CAPTCTRLX_INP_SELX_Field is
     (
      --  Raw PWM_X input signal selected as source.
      Inp_Selx_0,
      --  no description available
      Inp_Selx_1)
     with Size => 1;
   for SM2CAPTCTRLX_INP_SELX_Field use
     (Inp_Selx_0 => 0,
      Inp_Selx_1 => 1);

   --  Edge Counter X Enable
   type SM2CAPTCTRLX_EDGCNTX_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntx_En_0,
      --  Edge counter enabled
      Edgcntx_En_1)
     with Size => 1;
   for SM2CAPTCTRLX_EDGCNTX_EN_Field use
     (Edgcntx_En_0 => 0,
      Edgcntx_En_1 => 1);

   subtype SM2CAPTCTRLX_CFXWM_Field is HAL.UInt2;
   subtype SM2CAPTCTRLX_CX0CNT_Field is HAL.UInt3;
   subtype SM2CAPTCTRLX_CX1CNT_Field is HAL.UInt3;

   --  Capture Control X Register
   type SM2CAPTCTRLX_Register is record
      --  Arm X
      ARMX       : SM2CAPTCTRLX_ARMX_Field := NRF_SVD.PWM.Armx_0;
      --  One Shot Mode Aux
      ONESHOTX   : SM2CAPTCTRLX_ONESHOTX_Field := NRF_SVD.PWM.Oneshotx_0;
      --  Edge X 0
      EDGX0      : SM2CAPTCTRLX_EDGX0_Field := NRF_SVD.PWM.Edgx0_0;
      --  Edge X 1
      EDGX1      : SM2CAPTCTRLX_EDGX1_Field := NRF_SVD.PWM.Edgx1_0;
      --  Input Select X
      INP_SELX   : SM2CAPTCTRLX_INP_SELX_Field := NRF_SVD.PWM.Inp_Selx_0;
      --  Edge Counter X Enable
      EDGCNTX_EN : SM2CAPTCTRLX_EDGCNTX_EN_Field := NRF_SVD.PWM.Edgcntx_En_0;
      --  Capture X FIFOs Water Mark
      CFXWM      : SM2CAPTCTRLX_CFXWM_Field := 16#0#;
      --  Read-only. Capture X0 FIFO Word Count
      CX0CNT     : SM2CAPTCTRLX_CX0CNT_Field := 16#0#;
      --  Read-only. Capture X1 FIFO Word Count
      CX1CNT     : SM2CAPTCTRLX_CX1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CAPTCTRLX_Register use record
      ARMX       at 0 range 0 .. 0;
      ONESHOTX   at 0 range 1 .. 1;
      EDGX0      at 0 range 2 .. 3;
      EDGX1      at 0 range 4 .. 5;
      INP_SELX   at 0 range 6 .. 6;
      EDGCNTX_EN at 0 range 7 .. 7;
      CFXWM      at 0 range 8 .. 9;
      CX0CNT     at 0 range 10 .. 12;
      CX1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM2CAPTCOMPX_EDGCMPX_Field is HAL.UInt8;
   subtype SM2CAPTCOMPX_EDGCNTX_Field is HAL.UInt8;

   --  Capture Compare X Register
   type SM2CAPTCOMPX_Register is record
      --  Edge Compare X
      EDGCMPX : SM2CAPTCOMPX_EDGCMPX_Field := 16#0#;
      --  Read-only. Edge Counter X
      EDGCNTX : SM2CAPTCOMPX_EDGCNTX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CAPTCOMPX_Register use record
      EDGCMPX at 0 range 0 .. 7;
      EDGCNTX at 0 range 8 .. 15;
   end record;

   subtype SM2CVAL0CYC_CVAL0CYC_Field is HAL.UInt4;

   --  Capture Value 0 Cycle Register
   type SM2CVAL0CYC_Register is record
      --  Read-only. CVAL0CYC
      CVAL0CYC      : SM2CVAL0CYC_CVAL0CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CVAL0CYC_Register use record
      CVAL0CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM2CVAL1CYC_CVAL1CYC_Field is HAL.UInt4;

   --  Capture Value 1 Cycle Register
   type SM2CVAL1CYC_Register is record
      --  Read-only. CVAL1CYC
      CVAL1CYC      : SM2CVAL1CYC_CVAL1CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CVAL1CYC_Register use record
      CVAL1CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM2CVAL2CYC_CVAL2CYC_Field is HAL.UInt4;

   --  Capture Value 2 Cycle Register
   type SM2CVAL2CYC_Register is record
      --  Read-only. CVAL2CYC
      CVAL2CYC      : SM2CVAL2CYC_CVAL2CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CVAL2CYC_Register use record
      CVAL2CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM2CVAL3CYC_CVAL3CYC_Field is HAL.UInt4;

   --  Capture Value 3 Cycle Register
   type SM2CVAL3CYC_Register is record
      --  Read-only. CVAL3CYC
      CVAL3CYC      : SM2CVAL3CYC_CVAL3CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CVAL3CYC_Register use record
      CVAL3CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM2CVAL4CYC_CVAL4CYC_Field is HAL.UInt4;

   --  Capture Value 4 Cycle Register
   type SM2CVAL4CYC_Register is record
      --  Read-only. CVAL4CYC
      CVAL4CYC      : SM2CVAL4CYC_CVAL4CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CVAL4CYC_Register use record
      CVAL4CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM2CVAL5CYC_CVAL5CYC_Field is HAL.UInt4;

   --  Capture Value 5 Cycle Register
   type SM2CVAL5CYC_Register is record
      --  Read-only. CVAL5CYC
      CVAL5CYC      : SM2CVAL5CYC_CVAL5CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM2CVAL5CYC_Register use record
      CVAL5CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  Clock Source Select
   type SM3CTRL2_CLK_SEL_Field is
     (
      --  The IPBus clock is used as the clock for the local prescaler and
      --  counter.
      Clk_Sel_0,
      --  EXT_CLK is used as the clock for the local prescaler and counter.
      Clk_Sel_1,
      --  Submodule 0's clock (AUX_CLK) is used as the source clock for the
      --  local prescaler and counter. This setting should not be used in
      --  submodule 0 as it will force the clock to logic 0.
      Clk_Sel_2)
     with Size => 2;
   for SM3CTRL2_CLK_SEL_Field use
     (Clk_Sel_0 => 0,
      Clk_Sel_1 => 1,
      Clk_Sel_2 => 2);

   --  Reload Source Select
   type SM3CTRL2_RELOAD_SEL_Field is
     (
      --  The local RELOAD signal is used to reload registers.
      Reload_Sel_0,
      --  The master RELOAD signal (from submodule 0) is used to reload
      --  registers. This setting should not be used in submodule 0 as it will
      --  force the RELOAD signal to logic 0.
      Reload_Sel_1)
     with Size => 1;
   for SM3CTRL2_RELOAD_SEL_Field use
     (Reload_Sel_0 => 0,
      Reload_Sel_1 => 1);

   --  This read/write bit determines the source of the FORCE OUTPUT signal for
   --  this submodule.
   type SM3CTRL2_FORCE_SEL_Field is
     (
      --  The local force signal, CTRL2[FORCE], from this submodule is used to
      --  force updates.
      Force_Sel_0,
      --  The master force signal from submodule 0 is used to force updates.
      --  This setting should not be used in submodule 0 as it will hold the
      --  FORCE OUTPUT signal to logic 0.
      Force_Sel_1,
      --  The local reload signal from this submodule is used to force updates
      --  without regard to the state of LDOK.
      Force_Sel_2,
      --  The master reload signal from submodule0 is used to force updates if
      --  LDOK is set. This setting should not be used in submodule0 as it will
      --  hold the FORCE OUTPUT signal to logic 0.
      Force_Sel_3,
      --  The local sync signal from this submodule is used to force updates.
      Force_Sel_4,
      --  The master sync signal from submodule0 is used to force updates. This
      --  setting should not be used in submodule0 as it will hold the FORCE
      --  OUTPUT signal to logic 0.
      Force_Sel_5,
      --  The external force signal, EXT_FORCE, from outside the PWM module
      --  causes updates.
      Force_Sel_6,
      --  The external sync signal, EXT_SYNC, from outside the PWM module
      --  causes updates.
      Force_Sel_7)
     with Size => 3;
   for SM3CTRL2_FORCE_SEL_Field use
     (Force_Sel_0 => 0,
      Force_Sel_1 => 1,
      Force_Sel_2 => 2,
      Force_Sel_3 => 3,
      Force_Sel_4 => 4,
      Force_Sel_5 => 5,
      Force_Sel_6 => 6,
      Force_Sel_7 => 7);

   --  FRCEN
   type SM3CTRL2_FRCEN_Field is
     (
      --  Initialization from a FORCE_OUT is disabled.
      Frcen_0,
      --  Initialization from a FORCE_OUT is enabled.
      Frcen_1)
     with Size => 1;
   for SM3CTRL2_FRCEN_Field use
     (Frcen_0 => 0,
      Frcen_1 => 1);

   --  Initialization Control Select
   type SM3CTRL2_INIT_SEL_Field is
     (
      --  Local sync (PWM_X) causes initialization.
      Init_Sel_0,
      --  Master reload from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0. The submodule counter will only reinitialize when a master
      --  reload occurs.
      Init_Sel_1,
      --  Master sync from submodule 0 causes initialization. This setting
      --  should not be used in submodule 0 as it will force the INIT signal to
      --  logic 0.
      Init_Sel_2,
      --  EXT_SYNC causes initialization.
      Init_Sel_3)
     with Size => 2;
   for SM3CTRL2_INIT_SEL_Field use
     (Init_Sel_0 => 0,
      Init_Sel_1 => 1,
      Init_Sel_2 => 2,
      Init_Sel_3 => 3);

   --  Independent or Complementary Pair Operation
   type SM3CTRL2_INDEP_Field is
     (
      --  PWM_A and PWM_B form a complementary PWM pair.
      Indep_0,
      --  PWM_A and PWM_B outputs are independent PWMs.
      Indep_1)
     with Size => 1;
   for SM3CTRL2_INDEP_Field use
     (Indep_0 => 0,
      Indep_1 => 1);

   --  Control 2 Register
   type SM3CTRL2_Register is record
      --  Clock Source Select
      CLK_SEL    : SM3CTRL2_CLK_SEL_Field := NRF_SVD.PWM.Clk_Sel_0;
      --  Reload Source Select
      RELOAD_SEL : SM3CTRL2_RELOAD_SEL_Field := NRF_SVD.PWM.Reload_Sel_0;
      --  This read/write bit determines the source of the FORCE OUTPUT signal
      --  for this submodule.
      FORCE_SEL  : SM3CTRL2_FORCE_SEL_Field := NRF_SVD.PWM.Force_Sel_0;
      --  Write-only. Force Initialization
      FORCE      : Boolean := False;
      --  FRCEN
      FRCEN      : SM3CTRL2_FRCEN_Field := NRF_SVD.PWM.Frcen_0;
      --  Initialization Control Select
      INIT_SEL   : SM3CTRL2_INIT_SEL_Field := NRF_SVD.PWM.Init_Sel_0;
      --  PWM_X Initial Value
      PWMX_INIT  : Boolean := False;
      --  PWM45 Initial Value
      PWM45_INIT : Boolean := False;
      --  PWM23 Initial Value
      PWM23_INIT : Boolean := False;
      --  Independent or Complementary Pair Operation
      INDEP      : SM3CTRL2_INDEP_Field := NRF_SVD.PWM.Indep_0;
      --  WAIT Enable
      WAITEN     : Boolean := False;
      --  Debug Enable
      DBGEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CTRL2_Register use record
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
   type SM3CTRL_DBLEN_Field is
     (
      --  Double switching disabled.
      Dblen_0,
      --  Double switching enabled.
      Dblen_1)
     with Size => 1;
   for SM3CTRL_DBLEN_Field use
     (Dblen_0 => 0,
      Dblen_1 => 1);

   --  PWMX Double Switching Enable
   type SM3CTRL_DBLX_Field is
     (
      --  PWMX double pulse disabled.
      Dblx_0,
      --  PWMX double pulse enabled.
      Dblx_1)
     with Size => 1;
   for SM3CTRL_DBLX_Field use
     (Dblx_0 => 0,
      Dblx_1 => 1);

   --  Load Mode Select
   type SM3CTRL_LDMOD_Field is
     (
      --  Buffered registers of this submodule are loaded and take effect at
      --  the next PWM reload if MCTRL[LDOK] is set.
      Ldmod_0,
      --  Buffered registers of this submodule are loaded and take effect
      --  immediately upon MCTRL[LDOK] being set. In this case it is not
      --  necessary to set CTRL[FULL] or CTRL[HALF].
      Ldmod_1)
     with Size => 1;
   for SM3CTRL_LDMOD_Field use
     (Ldmod_0 => 0,
      Ldmod_1 => 1);

   --  Split the DBLPWM signal to PWMA and PWMB
   type SM3CTRL_SPLIT_Field is
     (
      --  DBLPWM is not split. PWMA and PWMB each have double pulses.
      Split_0,
      --  DBLPWM is split to PWMA and PWMB.
      Split_1)
     with Size => 1;
   for SM3CTRL_SPLIT_Field use
     (Split_0 => 0,
      Split_1 => 1);

   --  Prescaler
   type SM3CTRL_PRSC_Field is
     (
      --  no description available
      Prsc_0,
      --  no description available
      Prsc_1,
      --  no description available
      Prsc_2,
      --  no description available
      Prsc_3,
      --  no description available
      Prsc_4,
      --  no description available
      Prsc_5,
      --  no description available
      Prsc_6,
      --  no description available
      Prsc_7)
     with Size => 3;
   for SM3CTRL_PRSC_Field use
     (Prsc_0 => 0,
      Prsc_1 => 1,
      Prsc_2 => 2,
      Prsc_3 => 3,
      Prsc_4 => 4,
      Prsc_5 => 5,
      Prsc_6 => 6,
      Prsc_7 => 7);

   --  Compare Mode
   type SM3CTRL_COMPMODE_Field is
     (
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to" method. This means that PWM edges are only produced when the
      --  counter is equal to one of the VAL* register values. This implies
      --  that a PWMA output that is high at the end of a period will maintain
      --  this state until a match with VAL3 clears the output in the following
      --  period.
      Compmode_0,
      --  The VAL* registers and the PWM counter are compared using an "equal
      --  to or greater than" method. This means that PWM edges are produced
      --  when the counter is equal to or greater than one of the VAL* register
      --  values. This implies that a PWMA output that is high at the end of a
      --  period could go low at the start of the next period if the starting
      --  counter value is greater than (but not necessarily equal to) the new
      --  VAL3 value.
      Compmode_1)
     with Size => 1;
   for SM3CTRL_COMPMODE_Field use
     (Compmode_0 => 0,
      Compmode_1 => 1);

   subtype SM3CTRL_DT_Field is HAL.UInt2;

   --  Full Cycle Reload
   type SM3CTRL_FULL_Field is
     (
      --  Full-cycle reloads disabled.
      Full_0,
      --  Full-cycle reloads enabled.
      Full_1)
     with Size => 1;
   for SM3CTRL_FULL_Field use
     (Full_0 => 0,
      Full_1 => 1);

   --  Half Cycle Reload
   type SM3CTRL_HALF_Field is
     (
      --  Half-cycle reloads disabled.
      Half_0,
      --  Half-cycle reloads enabled.
      Half_1)
     with Size => 1;
   for SM3CTRL_HALF_Field use
     (Half_0 => 0,
      Half_1 => 1);

   --  Load Frequency
   type SM3CTRL_LDFQ_Field is
     (
      --  Every PWM opportunity
      Ldfq_0,
      --  Every 2 PWM opportunities
      Ldfq_1,
      --  Every 3 PWM opportunities
      Ldfq_2,
      --  Every 4 PWM opportunities
      Ldfq_3,
      --  Every 5 PWM opportunities
      Ldfq_4,
      --  Every 6 PWM opportunities
      Ldfq_5,
      --  Every 7 PWM opportunities
      Ldfq_6,
      --  Every 8 PWM opportunities
      Ldfq_7,
      --  Every 9 PWM opportunities
      Ldfq_8,
      --  Every 10 PWM opportunities
      Ldfq_9,
      --  Every 11 PWM opportunities
      Ldfq_10,
      --  Every 12 PWM opportunities
      Ldfq_11,
      --  Every 13 PWM opportunities
      Ldfq_12,
      --  Every 14 PWM opportunities
      Ldfq_13,
      --  Every 15 PWM opportunities
      Ldfq_14,
      --  Every 16 PWM opportunities
      Ldfq_15)
     with Size => 4;
   for SM3CTRL_LDFQ_Field use
     (Ldfq_0 => 0,
      Ldfq_1 => 1,
      Ldfq_2 => 2,
      Ldfq_3 => 3,
      Ldfq_4 => 4,
      Ldfq_5 => 5,
      Ldfq_6 => 6,
      Ldfq_7 => 7,
      Ldfq_8 => 8,
      Ldfq_9 => 9,
      Ldfq_10 => 10,
      Ldfq_11 => 11,
      Ldfq_12 => 12,
      Ldfq_13 => 13,
      Ldfq_14 => 14,
      Ldfq_15 => 15);

   --  Control Register
   type SM3CTRL_Register is record
      --  Double Switching Enable
      DBLEN    : SM3CTRL_DBLEN_Field := NRF_SVD.PWM.Dblen_0;
      --  PWMX Double Switching Enable
      DBLX     : SM3CTRL_DBLX_Field := NRF_SVD.PWM.Dblx_0;
      --  Load Mode Select
      LDMOD    : SM3CTRL_LDMOD_Field := NRF_SVD.PWM.Ldmod_0;
      --  Split the DBLPWM signal to PWMA and PWMB
      SPLIT    : SM3CTRL_SPLIT_Field := NRF_SVD.PWM.Split_0;
      --  Prescaler
      PRSC     : SM3CTRL_PRSC_Field := NRF_SVD.PWM.Prsc_0;
      --  Compare Mode
      COMPMODE : SM3CTRL_COMPMODE_Field := NRF_SVD.PWM.Compmode_0;
      --  Read-only. Deadtime
      DT       : SM3CTRL_DT_Field := 16#0#;
      --  Full Cycle Reload
      FULL     : SM3CTRL_FULL_Field := NRF_SVD.PWM.Full_1;
      --  Half Cycle Reload
      HALF     : SM3CTRL_HALF_Field := NRF_SVD.PWM.Half_0;
      --  Load Frequency
      LDFQ     : SM3CTRL_LDFQ_Field := NRF_SVD.PWM.Ldfq_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CTRL_Register use record
      DBLEN    at 0 range 0 .. 0;
      DBLX     at 0 range 1 .. 1;
      LDMOD    at 0 range 2 .. 2;
      SPLIT    at 0 range 3 .. 3;
      PRSC     at 0 range 4 .. 6;
      COMPMODE at 0 range 7 .. 7;
      DT       at 0 range 8 .. 9;
      FULL     at 0 range 10 .. 10;
      HALF     at 0 range 11 .. 11;
      LDFQ     at 0 range 12 .. 15;
   end record;

   subtype SM3FRACVAL1_FRACVAL1_Field is HAL.UInt5;

   --  Fractional Value Register 1
   type SM3FRACVAL1_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 1 Register
      FRACVAL1      : SM3FRACVAL1_FRACVAL1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3FRACVAL1_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL1      at 0 range 11 .. 15;
   end record;

   subtype SM3FRACVAL2_FRACVAL2_Field is HAL.UInt5;

   --  Fractional Value Register 2
   type SM3FRACVAL2_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 2
      FRACVAL2      : SM3FRACVAL2_FRACVAL2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3FRACVAL2_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL2      at 0 range 11 .. 15;
   end record;

   subtype SM3FRACVAL3_FRACVAL3_Field is HAL.UInt5;

   --  Fractional Value Register 3
   type SM3FRACVAL3_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 3
      FRACVAL3      : SM3FRACVAL3_FRACVAL3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3FRACVAL3_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL3      at 0 range 11 .. 15;
   end record;

   subtype SM3FRACVAL4_FRACVAL4_Field is HAL.UInt5;

   --  Fractional Value Register 4
   type SM3FRACVAL4_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 4
      FRACVAL4      : SM3FRACVAL4_FRACVAL4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3FRACVAL4_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL4      at 0 range 11 .. 15;
   end record;

   subtype SM3FRACVAL5_FRACVAL5_Field is HAL.UInt5;

   --  Fractional Value Register 5
   type SM3FRACVAL5_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Fractional Value 5
      FRACVAL5      : SM3FRACVAL5_FRACVAL5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3FRACVAL5_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL5      at 0 range 11 .. 15;
   end record;

   --  Fractional Cycle PWM Period Enable
   type SM3FRCTRL_FRAC1_EN_Field is
     (
      --  Disable fractional cycle length for the PWM period.
      Frac1_En_0,
      --  Enable fractional cycle length for the PWM period.
      Frac1_En_1)
     with Size => 1;
   for SM3FRCTRL_FRAC1_EN_Field use
     (Frac1_En_0 => 0,
      Frac1_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_A
   type SM3FRCTRL_FRAC23_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_A.
      Frac23_En_0,
      --  Enable fractional cycle placement for PWM_A.
      Frac23_En_1)
     with Size => 1;
   for SM3FRCTRL_FRAC23_EN_Field use
     (Frac23_En_0 => 0,
      Frac23_En_1 => 1);

   --  Fractional Cycle Placement Enable for PWM_B
   type SM3FRCTRL_FRAC45_EN_Field is
     (
      --  Disable fractional cycle placement for PWM_B.
      Frac45_En_0,
      --  Enable fractional cycle placement for PWM_B.
      Frac45_En_1)
     with Size => 1;
   for SM3FRCTRL_FRAC45_EN_Field use
     (Frac45_En_0 => 0,
      Frac45_En_1 => 1);

   --  Fractional Delay Circuit Power Up
   type SM3FRCTRL_FRAC_PU_Field is
     (
      --  Turn off fractional delay logic.
      Frac_Pu_0,
      --  Power up fractional delay logic.
      Frac_Pu_1)
     with Size => 1;
   for SM3FRCTRL_FRAC_PU_Field use
     (Frac_Pu_0 => 0,
      Frac_Pu_1 => 1);

   --  Fractional Control Register
   type SM3FRCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Fractional Cycle PWM Period Enable
      FRAC1_EN      : SM3FRCTRL_FRAC1_EN_Field := NRF_SVD.PWM.Frac1_En_0;
      --  Fractional Cycle Placement Enable for PWM_A
      FRAC23_EN     : SM3FRCTRL_FRAC23_EN_Field := NRF_SVD.PWM.Frac23_En_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Fractional Cycle Placement Enable for PWM_B
      FRAC45_EN     : SM3FRCTRL_FRAC45_EN_Field := NRF_SVD.PWM.Frac45_En_0;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Fractional Delay Circuit Power Up
      FRAC_PU       : SM3FRCTRL_FRAC_PU_Field := NRF_SVD.PWM.Frac_Pu_0;
      --  unspecified
      Reserved_9_14 : HAL.UInt6 := 16#0#;
      --  Read-only. Test Status Bit
      TEST          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3FRCTRL_Register use record
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
   type SM3OCTRL_PWMXFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmxfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmxfs_1,
      --  Output is tristated.
      Pwmxfs_2,
      --  Output is tristated.
      Pwmxfs_3)
     with Size => 2;
   for SM3OCTRL_PWMXFS_Field use
     (Pwmxfs_0 => 0,
      Pwmxfs_1 => 1,
      Pwmxfs_2 => 2,
      Pwmxfs_3 => 3);

   --  PWM_B Fault State
   type SM3OCTRL_PWMBFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmbfs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmbfs_1,
      --  Output is tristated.
      Pwmbfs_2,
      --  Output is tristated.
      Pwmbfs_3)
     with Size => 2;
   for SM3OCTRL_PWMBFS_Field use
     (Pwmbfs_0 => 0,
      Pwmbfs_1 => 1,
      Pwmbfs_2 => 2,
      Pwmbfs_3 => 3);

   --  PWM_A Fault State
   type SM3OCTRL_PWMAFS_Field is
     (
      --  Output is forced to logic 0 state prior to consideration of output
      --  polarity control.
      Pwmafs_0,
      --  Output is forced to logic 1 state prior to consideration of output
      --  polarity control.
      Pwmafs_1,
      --  Output is tristated.
      Pwmafs_2,
      --  Output is tristated.
      Pwmafs_3)
     with Size => 2;
   for SM3OCTRL_PWMAFS_Field use
     (Pwmafs_0 => 0,
      Pwmafs_1 => 1,
      Pwmafs_2 => 2,
      Pwmafs_3 => 3);

   --  PWM_X Output Polarity
   type SM3OCTRL_POLX_Field is
     (
      --  PWM_X output not inverted. A high level on the PWM_X pin represents
      --  the "on" or "active" state.
      Polx_0,
      --  PWM_X output inverted. A low level on the PWM_X pin represents the
      --  "on" or "active" state.
      Polx_1)
     with Size => 1;
   for SM3OCTRL_POLX_Field use
     (Polx_0 => 0,
      Polx_1 => 1);

   --  PWM_B Output Polarity
   type SM3OCTRL_POLB_Field is
     (
      --  PWM_B output not inverted. A high level on the PWM_B pin represents
      --  the "on" or "active" state.
      Polb_0,
      --  PWM_B output inverted. A low level on the PWM_B pin represents the
      --  "on" or "active" state.
      Polb_1)
     with Size => 1;
   for SM3OCTRL_POLB_Field use
     (Polb_0 => 0,
      Polb_1 => 1);

   --  PWM_A Output Polarity
   type SM3OCTRL_POLA_Field is
     (
      --  PWM_A output not inverted. A high level on the PWM_A pin represents
      --  the "on" or "active" state.
      Pola_0,
      --  PWM_A output inverted. A low level on the PWM_A pin represents the
      --  "on" or "active" state.
      Pola_1)
     with Size => 1;
   for SM3OCTRL_POLA_Field use
     (Pola_0 => 0,
      Pola_1 => 1);

   --  Output Control Register
   type SM3OCTRL_Register is record
      --  PWM_X Fault State
      PWMXFS         : SM3OCTRL_PWMXFS_Field := NRF_SVD.PWM.Pwmxfs_0;
      --  PWM_B Fault State
      PWMBFS         : SM3OCTRL_PWMBFS_Field := NRF_SVD.PWM.Pwmbfs_0;
      --  PWM_A Fault State
      PWMAFS         : SM3OCTRL_PWMAFS_Field := NRF_SVD.PWM.Pwmafs_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PWM_X Output Polarity
      POLX           : SM3OCTRL_POLX_Field := NRF_SVD.PWM.Polx_0;
      --  PWM_B Output Polarity
      POLB           : SM3OCTRL_POLB_Field := NRF_SVD.PWM.Polb_0;
      --  PWM_A Output Polarity
      POLA           : SM3OCTRL_POLA_Field := NRF_SVD.PWM.Pola_0;
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

   for SM3OCTRL_Register use record
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
   type SM3STS_CMPF_Field is
     (
      --  No compare event has occurred for a particular VALx value.
      Cmpf_0,
      --  A compare event has occurred for a particular VALx value.
      Cmpf_1)
     with Size => 6;
   for SM3STS_CMPF_Field use
     (Cmpf_0 => 0,
      Cmpf_1 => 1);

   --  SM3STS_CFX array
   type SM3STS_CFX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM3STS_CFX
   type SM3STS_CFX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFX as a value
            Val : HAL.UInt2;
         when True =>
            --  CFX as an array
            Arr : SM3STS_CFX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM3STS_CFX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM3STS_CFB array
   type SM3STS_CFB_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM3STS_CFB
   type SM3STS_CFB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFB as a value
            Val : HAL.UInt2;
         when True =>
            --  CFB as an array
            Arr : SM3STS_CFB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM3STS_CFB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SM3STS_CFA array
   type SM3STS_CFA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SM3STS_CFA
   type SM3STS_CFA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFA as a value
            Val : HAL.UInt2;
         when True =>
            --  CFA as an array
            Arr : SM3STS_CFA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SM3STS_CFA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Reload Flag
   type SM3STS_RF_Field is
     (
      --  No new reload cycle since last STS[RF] clearing
      Rf_0,
      --  New reload cycle since last STS[RF] clearing
      Rf_1)
     with Size => 1;
   for SM3STS_RF_Field use
     (Rf_0 => 0,
      Rf_1 => 1);

   --  Reload Error Flag
   type SM3STS_REF_Field is
     (
      --  No reload error occurred.
      Ref_0,
      --  Reload signal occurred with non-coherent data and MCTRL[LDOK] = 0.
      Ref_1)
     with Size => 1;
   for SM3STS_REF_Field use
     (Ref_0 => 0,
      Ref_1 => 1);

   --  Registers Updated Flag
   type SM3STS_RUF_Field is
     (
      --  No register update has occurred since last reload.
      Ruf_0,
      --  At least one of the double buffered registers has been updated since
      --  the last reload.
      Ruf_1)
     with Size => 1;
   for SM3STS_RUF_Field use
     (Ruf_0 => 0,
      Ruf_1 => 1);

   --  Status Register
   type SM3STS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Compare Flags
      CMPF           : SM3STS_CMPF_Field := NRF_SVD.PWM.Cmpf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag X0
      CFX            : SM3STS_CFX_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag B0
      CFB            : SM3STS_CFB_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Capture Flag A0
      CFA            : SM3STS_CFA_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Flag
      RF             : SM3STS_RF_Field := NRF_SVD.PWM.Rf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reload Error Flag
      REF            : SM3STS_REF_Field := NRF_SVD.PWM.Ref_0;
      --  Read-only. Registers Updated Flag
      RUF            : SM3STS_RUF_Field := NRF_SVD.PWM.Ruf_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3STS_Register use record
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
   type SM3INTEN_CMPIE_Field is
     (
      --  The corresponding STS[CMPF] bit will not cause an interrupt request.
      Cmpie_0,
      --  The corresponding STS[CMPF] bit will cause an interrupt request.
      Cmpie_1)
     with Size => 6;
   for SM3INTEN_CMPIE_Field use
     (Cmpie_0 => 0,
      Cmpie_1 => 1);

   --  Capture X 0 Interrupt Enable
   type SM3INTEN_CX0IE_Field is
     (
      --  Interrupt request disabled for STS[CFX0].
      Cx0Ie_0,
      --  Interrupt request enabled for STS[CFX0].
      Cx0Ie_1)
     with Size => 1;
   for SM3INTEN_CX0IE_Field use
     (Cx0Ie_0 => 0,
      Cx0Ie_1 => 1);

   --  Capture X 1 Interrupt Enable
   type SM3INTEN_CX1IE_Field is
     (
      --  Interrupt request disabled for STS[CFX1].
      Cx1Ie_0,
      --  Interrupt request enabled for STS[CFX1].
      Cx1Ie_1)
     with Size => 1;
   for SM3INTEN_CX1IE_Field use
     (Cx1Ie_0 => 0,
      Cx1Ie_1 => 1);

   --  Capture B 0 Interrupt Enable
   type SM3INTEN_CB0IE_Field is
     (
      --  Interrupt request disabled for STS[CFB0].
      Cb0Ie_0,
      --  Interrupt request enabled for STS[CFB0].
      Cb0Ie_1)
     with Size => 1;
   for SM3INTEN_CB0IE_Field use
     (Cb0Ie_0 => 0,
      Cb0Ie_1 => 1);

   --  Capture B 1 Interrupt Enable
   type SM3INTEN_CB1IE_Field is
     (
      --  Interrupt request disabled for STS[CFB1].
      Cb1Ie_0,
      --  Interrupt request enabled for STS[CFB1].
      Cb1Ie_1)
     with Size => 1;
   for SM3INTEN_CB1IE_Field use
     (Cb1Ie_0 => 0,
      Cb1Ie_1 => 1);

   --  Capture A 0 Interrupt Enable
   type SM3INTEN_CA0IE_Field is
     (
      --  Interrupt request disabled for STS[CFA0].
      Ca0Ie_0,
      --  Interrupt request enabled for STS[CFA0].
      Ca0Ie_1)
     with Size => 1;
   for SM3INTEN_CA0IE_Field use
     (Ca0Ie_0 => 0,
      Ca0Ie_1 => 1);

   --  Capture A 1 Interrupt Enable
   type SM3INTEN_CA1IE_Field is
     (
      --  Interrupt request disabled for STS[CFA1].
      Ca1Ie_0,
      --  Interrupt request enabled for STS[CFA1].
      Ca1Ie_1)
     with Size => 1;
   for SM3INTEN_CA1IE_Field use
     (Ca1Ie_0 => 0,
      Ca1Ie_1 => 1);

   --  Reload Interrupt Enable
   type SM3INTEN_RIE_Field is
     (
      --  STS[RF] CPU interrupt requests disabled
      Rie_0,
      --  STS[RF] CPU interrupt requests enabled
      Rie_1)
     with Size => 1;
   for SM3INTEN_RIE_Field use
     (Rie_0 => 0,
      Rie_1 => 1);

   --  Reload Error Interrupt Enable
   type SM3INTEN_REIE_Field is
     (
      --  STS[REF] CPU interrupt requests disabled
      Reie_0,
      --  STS[REF] CPU interrupt requests enabled
      Reie_1)
     with Size => 1;
   for SM3INTEN_REIE_Field use
     (Reie_0 => 0,
      Reie_1 => 1);

   --  Interrupt Enable Register
   type SM3INTEN_Register is record
      --  Compare Interrupt Enables
      CMPIE          : SM3INTEN_CMPIE_Field := NRF_SVD.PWM.Cmpie_0;
      --  Capture X 0 Interrupt Enable
      CX0IE          : SM3INTEN_CX0IE_Field := NRF_SVD.PWM.Cx0Ie_0;
      --  Capture X 1 Interrupt Enable
      CX1IE          : SM3INTEN_CX1IE_Field := NRF_SVD.PWM.Cx1Ie_0;
      --  Capture B 0 Interrupt Enable
      CB0IE          : SM3INTEN_CB0IE_Field := NRF_SVD.PWM.Cb0Ie_0;
      --  Capture B 1 Interrupt Enable
      CB1IE          : SM3INTEN_CB1IE_Field := NRF_SVD.PWM.Cb1Ie_0;
      --  Capture A 0 Interrupt Enable
      CA0IE          : SM3INTEN_CA0IE_Field := NRF_SVD.PWM.Ca0Ie_0;
      --  Capture A 1 Interrupt Enable
      CA1IE          : SM3INTEN_CA1IE_Field := NRF_SVD.PWM.Ca1Ie_0;
      --  Reload Interrupt Enable
      RIE            : SM3INTEN_RIE_Field := NRF_SVD.PWM.Rie_0;
      --  Reload Error Interrupt Enable
      REIE           : SM3INTEN_REIE_Field := NRF_SVD.PWM.Reie_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3INTEN_Register use record
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
   type SM3DMAEN_CAPTDE_Field is
     (
      --  Read DMA requests disabled.
      Captde_0,
      --  Exceeding a FIFO watermark sets the DMA read request. This requires
      --  at least one of DMAEN[CA1DE], DMAEN[CA0DE], DMAEN[CB1DE],
      --  DMAEN[CB0DE], DMAEN[CX1DE], or DMAEN[CX0DE] to also be set in order
      --  to determine to which watermark(s) the DMA request is sensitive.
      Captde_1,
      --  A local sync (VAL1 matches counter) sets the read DMA request.
      Captde_2,
      --  A local reload (STS[RF] being set) sets the read DMA request.
      Captde_3)
     with Size => 2;
   for SM3DMAEN_CAPTDE_Field use
     (Captde_0 => 0,
      Captde_1 => 1,
      Captde_2 => 2,
      Captde_3 => 3);

   --  FIFO Watermark AND Control
   type SM3DMAEN_FAND_Field is
     (
      --  Selected FIFO watermarks are OR'ed together.
      Fand_0,
      --  Selected FIFO watermarks are AND'ed together.
      Fand_1)
     with Size => 1;
   for SM3DMAEN_FAND_Field use
     (Fand_0 => 0,
      Fand_1 => 1);

   --  Value Registers DMA Enable
   type SM3DMAEN_VALDE_Field is
     (
      --  DMA write requests disabled
      Valde_0,
      --  no description available
      Valde_1)
     with Size => 1;
   for SM3DMAEN_VALDE_Field use
     (Valde_0 => 0,
      Valde_1 => 1);

   --  DMA Enable Register
   type SM3DMAEN_Register is record
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
      CAPTDE         : SM3DMAEN_CAPTDE_Field := NRF_SVD.PWM.Captde_0;
      --  FIFO Watermark AND Control
      FAND           : SM3DMAEN_FAND_Field := NRF_SVD.PWM.Fand_0;
      --  Value Registers DMA Enable
      VALDE          : SM3DMAEN_VALDE_Field := NRF_SVD.PWM.Valde_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3DMAEN_Register use record
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
   type SM3TCTRL_OUT_TRIG_EN_Field is
     (
      --  PWM_OUT_TRIGx will not set when the counter value matches the VALx
      --  value.
      Out_Trig_En_0,
      --  PWM_OUT_TRIGx will set when the counter value matches the VALx value.
      Out_Trig_En_1)
     with Size => 6;
   for SM3TCTRL_OUT_TRIG_EN_Field use
     (Out_Trig_En_0 => 0,
      Out_Trig_En_1 => 1);

   --  Trigger frequency
   type SM3TCTRL_TRGFRQ_Field is
     (
      --  Trigger outputs are generated during every PWM period even if the PWM
      --  is not reloaded every period due to CTRL[LDFQ] being non-zero.
      Trgfrq_0,
      --  Trigger outputs are generated only during the final PWM period prior
      --  to a reload opportunity when the PWM is not reloaded every period due
      --  to CTRL[LDFQ] being non-zero.
      Trgfrq_1)
     with Size => 1;
   for SM3TCTRL_TRGFRQ_Field use
     (Trgfrq_0 => 0,
      Trgfrq_1 => 1);

   --  Output Trigger 1 Source Select
   type SM3TCTRL_PWBOT1_Field is
     (
      --  Route the PWM_OUT_TRIG1 signal to PWM_OUT_TRIG1 port.
      Pwbot1_0,
      --  Route the PWMB output to the PWM_OUT_TRIG1 port.
      Pwbot1_1)
     with Size => 1;
   for SM3TCTRL_PWBOT1_Field use
     (Pwbot1_0 => 0,
      Pwbot1_1 => 1);

   --  Output Trigger 0 Source Select
   type SM3TCTRL_PWAOT0_Field is
     (
      --  Route the PWM_OUT_TRIG0 signal to PWM_OUT_TRIG0 port.
      Pwaot0_0,
      --  Route the PWMA output to the PWM_OUT_TRIG0 port.
      Pwaot0_1)
     with Size => 1;
   for SM3TCTRL_PWAOT0_Field use
     (Pwaot0_0 => 0,
      Pwaot0_1 => 1);

   --  Output Trigger Control Register
   type SM3TCTRL_Register is record
      --  Output Trigger Enables
      OUT_TRIG_EN    : SM3TCTRL_OUT_TRIG_EN_Field :=
                        NRF_SVD.PWM.Out_Trig_En_0;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Trigger frequency
      TRGFRQ         : SM3TCTRL_TRGFRQ_Field := NRF_SVD.PWM.Trgfrq_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Output Trigger 1 Source Select
      PWBOT1         : SM3TCTRL_PWBOT1_Field := NRF_SVD.PWM.Pwbot1_0;
      --  Output Trigger 0 Source Select
      PWAOT0         : SM3TCTRL_PWAOT0_Field := NRF_SVD.PWM.Pwaot0_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3TCTRL_Register use record
      OUT_TRIG_EN    at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TRGFRQ         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PWBOT1         at 0 range 14 .. 14;
      PWAOT0         at 0 range 15 .. 15;
   end record;

   subtype SM3DISMAP0_DIS0A_Field is HAL.UInt4;
   subtype SM3DISMAP0_DIS0B_Field is HAL.UInt4;
   subtype SM3DISMAP0_DIS0X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 0
   type SM3DISMAP0_Register is record
      --  PWM_A Fault Disable Mask 0
      DIS0A          : SM3DISMAP0_DIS0A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 0
      DIS0B          : SM3DISMAP0_DIS0B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 0
      DIS0X          : SM3DISMAP0_DIS0X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3DISMAP0_Register use record
      DIS0A          at 0 range 0 .. 3;
      DIS0B          at 0 range 4 .. 7;
      DIS0X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype SM3DISMAP1_DIS1A_Field is HAL.UInt4;
   subtype SM3DISMAP1_DIS1B_Field is HAL.UInt4;
   subtype SM3DISMAP1_DIS1X_Field is HAL.UInt4;

   --  Fault Disable Mapping Register 1
   type SM3DISMAP1_Register is record
      --  PWM_A Fault Disable Mask 1
      DIS1A          : SM3DISMAP1_DIS1A_Field := 16#F#;
      --  PWM_B Fault Disable Mask 1
      DIS1B          : SM3DISMAP1_DIS1B_Field := 16#F#;
      --  PWM_X Fault Disable Mask 1
      DIS1X          : SM3DISMAP1_DIS1X_Field := 16#F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3DISMAP1_Register use record
      DIS1A          at 0 range 0 .. 3;
      DIS1B          at 0 range 4 .. 7;
      DIS1X          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Arm A
   type SM3CAPTCTRLA_ARMA_Field is
     (
      --  Input capture operation is disabled.
      Arma_0,
      --  Input capture operation as specified by CAPTCTRLA[EDGAx] is enabled.
      Arma_1)
     with Size => 1;
   for SM3CAPTCTRLA_ARMA_Field use
     (Arma_0 => 0,
      Arma_1 => 1);

   --  One Shot Mode A
   type SM3CAPTCTRLA_ONESHOTA_Field is
     (
      --  no description available
      Oneshota_0,
      --  no description available
      Oneshota_1)
     with Size => 1;
   for SM3CAPTCTRLA_ONESHOTA_Field use
     (Oneshota_0 => 0,
      Oneshota_1 => 1);

   --  Edge A 0
   type SM3CAPTCTRLA_EDGA0_Field is
     (
      --  Disabled
      Edga0_0,
      --  Capture falling edges
      Edga0_1,
      --  Capture rising edges
      Edga0_2,
      --  Capture any edge
      Edga0_3)
     with Size => 2;
   for SM3CAPTCTRLA_EDGA0_Field use
     (Edga0_0 => 0,
      Edga0_1 => 1,
      Edga0_2 => 2,
      Edga0_3 => 3);

   --  Edge A 1
   type SM3CAPTCTRLA_EDGA1_Field is
     (
      --  Disabled
      Edga1_0,
      --  Capture falling edges
      Edga1_1,
      --  Capture rising edges
      Edga1_2,
      --  Capture any edge
      Edga1_3)
     with Size => 2;
   for SM3CAPTCTRLA_EDGA1_Field use
     (Edga1_0 => 0,
      Edga1_1 => 1,
      Edga1_2 => 2,
      Edga1_3 => 3);

   --  Input Select A
   type SM3CAPTCTRLA_INP_SELA_Field is
     (
      --  Raw PWM_A input signal selected as source.
      Inp_Sela_0,
      --  no description available
      Inp_Sela_1)
     with Size => 1;
   for SM3CAPTCTRLA_INP_SELA_Field use
     (Inp_Sela_0 => 0,
      Inp_Sela_1 => 1);

   --  Edge Counter A Enable
   type SM3CAPTCTRLA_EDGCNTA_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcnta_En_0,
      --  Edge counter enabled
      Edgcnta_En_1)
     with Size => 1;
   for SM3CAPTCTRLA_EDGCNTA_EN_Field use
     (Edgcnta_En_0 => 0,
      Edgcnta_En_1 => 1);

   subtype SM3CAPTCTRLA_CFAWM_Field is HAL.UInt2;
   subtype SM3CAPTCTRLA_CA0CNT_Field is HAL.UInt3;
   subtype SM3CAPTCTRLA_CA1CNT_Field is HAL.UInt3;

   --  Capture Control A Register
   type SM3CAPTCTRLA_Register is record
      --  Arm A
      ARMA       : SM3CAPTCTRLA_ARMA_Field := NRF_SVD.PWM.Arma_0;
      --  One Shot Mode A
      ONESHOTA   : SM3CAPTCTRLA_ONESHOTA_Field := NRF_SVD.PWM.Oneshota_0;
      --  Edge A 0
      EDGA0      : SM3CAPTCTRLA_EDGA0_Field := NRF_SVD.PWM.Edga0_0;
      --  Edge A 1
      EDGA1      : SM3CAPTCTRLA_EDGA1_Field := NRF_SVD.PWM.Edga1_0;
      --  Input Select A
      INP_SELA   : SM3CAPTCTRLA_INP_SELA_Field := NRF_SVD.PWM.Inp_Sela_0;
      --  Edge Counter A Enable
      EDGCNTA_EN : SM3CAPTCTRLA_EDGCNTA_EN_Field := NRF_SVD.PWM.Edgcnta_En_0;
      --  Capture A FIFOs Water Mark
      CFAWM      : SM3CAPTCTRLA_CFAWM_Field := 16#0#;
      --  Read-only. Capture A0 FIFO Word Count
      CA0CNT     : SM3CAPTCTRLA_CA0CNT_Field := 16#0#;
      --  Read-only. Capture A1 FIFO Word Count
      CA1CNT     : SM3CAPTCTRLA_CA1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CAPTCTRLA_Register use record
      ARMA       at 0 range 0 .. 0;
      ONESHOTA   at 0 range 1 .. 1;
      EDGA0      at 0 range 2 .. 3;
      EDGA1      at 0 range 4 .. 5;
      INP_SELA   at 0 range 6 .. 6;
      EDGCNTA_EN at 0 range 7 .. 7;
      CFAWM      at 0 range 8 .. 9;
      CA0CNT     at 0 range 10 .. 12;
      CA1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM3CAPTCOMPA_EDGCMPA_Field is HAL.UInt8;
   subtype SM3CAPTCOMPA_EDGCNTA_Field is HAL.UInt8;

   --  Capture Compare A Register
   type SM3CAPTCOMPA_Register is record
      --  Edge Compare A
      EDGCMPA : SM3CAPTCOMPA_EDGCMPA_Field := 16#0#;
      --  Read-only. Edge Counter A
      EDGCNTA : SM3CAPTCOMPA_EDGCNTA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CAPTCOMPA_Register use record
      EDGCMPA at 0 range 0 .. 7;
      EDGCNTA at 0 range 8 .. 15;
   end record;

   --  Arm B
   type SM3CAPTCTRLB_ARMB_Field is
     (
      --  Input capture operation is disabled.
      Armb_0,
      --  Input capture operation as specified by CAPTCTRLB[EDGBx] is enabled.
      Armb_1)
     with Size => 1;
   for SM3CAPTCTRLB_ARMB_Field use
     (Armb_0 => 0,
      Armb_1 => 1);

   --  One Shot Mode B
   type SM3CAPTCTRLB_ONESHOTB_Field is
     (
      --  no description available
      Oneshotb_0,
      --  no description available
      Oneshotb_1)
     with Size => 1;
   for SM3CAPTCTRLB_ONESHOTB_Field use
     (Oneshotb_0 => 0,
      Oneshotb_1 => 1);

   --  Edge B 0
   type SM3CAPTCTRLB_EDGB0_Field is
     (
      --  Disabled
      Edgb0_0,
      --  Capture falling edges
      Edgb0_1,
      --  Capture rising edges
      Edgb0_2,
      --  Capture any edge
      Edgb0_3)
     with Size => 2;
   for SM3CAPTCTRLB_EDGB0_Field use
     (Edgb0_0 => 0,
      Edgb0_1 => 1,
      Edgb0_2 => 2,
      Edgb0_3 => 3);

   --  Edge B 1
   type SM3CAPTCTRLB_EDGB1_Field is
     (
      --  Disabled
      Edgb1_0,
      --  Capture falling edges
      Edgb1_1,
      --  Capture rising edges
      Edgb1_2,
      --  Capture any edge
      Edgb1_3)
     with Size => 2;
   for SM3CAPTCTRLB_EDGB1_Field use
     (Edgb1_0 => 0,
      Edgb1_1 => 1,
      Edgb1_2 => 2,
      Edgb1_3 => 3);

   --  Input Select B
   type SM3CAPTCTRLB_INP_SELB_Field is
     (
      --  Raw PWM_B input signal selected as source.
      Inp_Selb_0,
      --  no description available
      Inp_Selb_1)
     with Size => 1;
   for SM3CAPTCTRLB_INP_SELB_Field use
     (Inp_Selb_0 => 0,
      Inp_Selb_1 => 1);

   --  Edge Counter B Enable
   type SM3CAPTCTRLB_EDGCNTB_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntb_En_0,
      --  Edge counter enabled
      Edgcntb_En_1)
     with Size => 1;
   for SM3CAPTCTRLB_EDGCNTB_EN_Field use
     (Edgcntb_En_0 => 0,
      Edgcntb_En_1 => 1);

   subtype SM3CAPTCTRLB_CFBWM_Field is HAL.UInt2;
   subtype SM3CAPTCTRLB_CB0CNT_Field is HAL.UInt3;
   subtype SM3CAPTCTRLB_CB1CNT_Field is HAL.UInt3;

   --  Capture Control B Register
   type SM3CAPTCTRLB_Register is record
      --  Arm B
      ARMB       : SM3CAPTCTRLB_ARMB_Field := NRF_SVD.PWM.Armb_0;
      --  One Shot Mode B
      ONESHOTB   : SM3CAPTCTRLB_ONESHOTB_Field := NRF_SVD.PWM.Oneshotb_0;
      --  Edge B 0
      EDGB0      : SM3CAPTCTRLB_EDGB0_Field := NRF_SVD.PWM.Edgb0_0;
      --  Edge B 1
      EDGB1      : SM3CAPTCTRLB_EDGB1_Field := NRF_SVD.PWM.Edgb1_0;
      --  Input Select B
      INP_SELB   : SM3CAPTCTRLB_INP_SELB_Field := NRF_SVD.PWM.Inp_Selb_0;
      --  Edge Counter B Enable
      EDGCNTB_EN : SM3CAPTCTRLB_EDGCNTB_EN_Field := NRF_SVD.PWM.Edgcntb_En_0;
      --  Capture B FIFOs Water Mark
      CFBWM      : SM3CAPTCTRLB_CFBWM_Field := 16#0#;
      --  Read-only. Capture B0 FIFO Word Count
      CB0CNT     : SM3CAPTCTRLB_CB0CNT_Field := 16#0#;
      --  Read-only. Capture B1 FIFO Word Count
      CB1CNT     : SM3CAPTCTRLB_CB1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CAPTCTRLB_Register use record
      ARMB       at 0 range 0 .. 0;
      ONESHOTB   at 0 range 1 .. 1;
      EDGB0      at 0 range 2 .. 3;
      EDGB1      at 0 range 4 .. 5;
      INP_SELB   at 0 range 6 .. 6;
      EDGCNTB_EN at 0 range 7 .. 7;
      CFBWM      at 0 range 8 .. 9;
      CB0CNT     at 0 range 10 .. 12;
      CB1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM3CAPTCOMPB_EDGCMPB_Field is HAL.UInt8;
   subtype SM3CAPTCOMPB_EDGCNTB_Field is HAL.UInt8;

   --  Capture Compare B Register
   type SM3CAPTCOMPB_Register is record
      --  Edge Compare B
      EDGCMPB : SM3CAPTCOMPB_EDGCMPB_Field := 16#0#;
      --  Read-only. Edge Counter B
      EDGCNTB : SM3CAPTCOMPB_EDGCNTB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CAPTCOMPB_Register use record
      EDGCMPB at 0 range 0 .. 7;
      EDGCNTB at 0 range 8 .. 15;
   end record;

   --  Arm X
   type SM3CAPTCTRLX_ARMX_Field is
     (
      --  Input capture operation is disabled.
      Armx_0,
      --  Input capture operation as specified by CAPTCTRLX[EDGXx] is enabled.
      Armx_1)
     with Size => 1;
   for SM3CAPTCTRLX_ARMX_Field use
     (Armx_0 => 0,
      Armx_1 => 1);

   --  One Shot Mode Aux
   type SM3CAPTCTRLX_ONESHOTX_Field is
     (
      --  no description available
      Oneshotx_0,
      --  no description available
      Oneshotx_1)
     with Size => 1;
   for SM3CAPTCTRLX_ONESHOTX_Field use
     (Oneshotx_0 => 0,
      Oneshotx_1 => 1);

   --  Edge X 0
   type SM3CAPTCTRLX_EDGX0_Field is
     (
      --  Disabled
      Edgx0_0,
      --  Capture falling edges
      Edgx0_1,
      --  Capture rising edges
      Edgx0_2,
      --  Capture any edge
      Edgx0_3)
     with Size => 2;
   for SM3CAPTCTRLX_EDGX0_Field use
     (Edgx0_0 => 0,
      Edgx0_1 => 1,
      Edgx0_2 => 2,
      Edgx0_3 => 3);

   --  Edge X 1
   type SM3CAPTCTRLX_EDGX1_Field is
     (
      --  Disabled
      Edgx1_0,
      --  Capture falling edges
      Edgx1_1,
      --  Capture rising edges
      Edgx1_2,
      --  Capture any edge
      Edgx1_3)
     with Size => 2;
   for SM3CAPTCTRLX_EDGX1_Field use
     (Edgx1_0 => 0,
      Edgx1_1 => 1,
      Edgx1_2 => 2,
      Edgx1_3 => 3);

   --  Input Select X
   type SM3CAPTCTRLX_INP_SELX_Field is
     (
      --  Raw PWM_X input signal selected as source.
      Inp_Selx_0,
      --  no description available
      Inp_Selx_1)
     with Size => 1;
   for SM3CAPTCTRLX_INP_SELX_Field use
     (Inp_Selx_0 => 0,
      Inp_Selx_1 => 1);

   --  Edge Counter X Enable
   type SM3CAPTCTRLX_EDGCNTX_EN_Field is
     (
      --  Edge counter disabled and held in reset
      Edgcntx_En_0,
      --  Edge counter enabled
      Edgcntx_En_1)
     with Size => 1;
   for SM3CAPTCTRLX_EDGCNTX_EN_Field use
     (Edgcntx_En_0 => 0,
      Edgcntx_En_1 => 1);

   subtype SM3CAPTCTRLX_CFXWM_Field is HAL.UInt2;
   subtype SM3CAPTCTRLX_CX0CNT_Field is HAL.UInt3;
   subtype SM3CAPTCTRLX_CX1CNT_Field is HAL.UInt3;

   --  Capture Control X Register
   type SM3CAPTCTRLX_Register is record
      --  Arm X
      ARMX       : SM3CAPTCTRLX_ARMX_Field := NRF_SVD.PWM.Armx_0;
      --  One Shot Mode Aux
      ONESHOTX   : SM3CAPTCTRLX_ONESHOTX_Field := NRF_SVD.PWM.Oneshotx_0;
      --  Edge X 0
      EDGX0      : SM3CAPTCTRLX_EDGX0_Field := NRF_SVD.PWM.Edgx0_0;
      --  Edge X 1
      EDGX1      : SM3CAPTCTRLX_EDGX1_Field := NRF_SVD.PWM.Edgx1_0;
      --  Input Select X
      INP_SELX   : SM3CAPTCTRLX_INP_SELX_Field := NRF_SVD.PWM.Inp_Selx_0;
      --  Edge Counter X Enable
      EDGCNTX_EN : SM3CAPTCTRLX_EDGCNTX_EN_Field := NRF_SVD.PWM.Edgcntx_En_0;
      --  Capture X FIFOs Water Mark
      CFXWM      : SM3CAPTCTRLX_CFXWM_Field := 16#0#;
      --  Read-only. Capture X0 FIFO Word Count
      CX0CNT     : SM3CAPTCTRLX_CX0CNT_Field := 16#0#;
      --  Read-only. Capture X1 FIFO Word Count
      CX1CNT     : SM3CAPTCTRLX_CX1CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CAPTCTRLX_Register use record
      ARMX       at 0 range 0 .. 0;
      ONESHOTX   at 0 range 1 .. 1;
      EDGX0      at 0 range 2 .. 3;
      EDGX1      at 0 range 4 .. 5;
      INP_SELX   at 0 range 6 .. 6;
      EDGCNTX_EN at 0 range 7 .. 7;
      CFXWM      at 0 range 8 .. 9;
      CX0CNT     at 0 range 10 .. 12;
      CX1CNT     at 0 range 13 .. 15;
   end record;

   subtype SM3CAPTCOMPX_EDGCMPX_Field is HAL.UInt8;
   subtype SM3CAPTCOMPX_EDGCNTX_Field is HAL.UInt8;

   --  Capture Compare X Register
   type SM3CAPTCOMPX_Register is record
      --  Edge Compare X
      EDGCMPX : SM3CAPTCOMPX_EDGCMPX_Field := 16#0#;
      --  Read-only. Edge Counter X
      EDGCNTX : SM3CAPTCOMPX_EDGCNTX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CAPTCOMPX_Register use record
      EDGCMPX at 0 range 0 .. 7;
      EDGCNTX at 0 range 8 .. 15;
   end record;

   subtype SM3CVAL0CYC_CVAL0CYC_Field is HAL.UInt4;

   --  Capture Value 0 Cycle Register
   type SM3CVAL0CYC_Register is record
      --  Read-only. CVAL0CYC
      CVAL0CYC      : SM3CVAL0CYC_CVAL0CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CVAL0CYC_Register use record
      CVAL0CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM3CVAL1CYC_CVAL1CYC_Field is HAL.UInt4;

   --  Capture Value 1 Cycle Register
   type SM3CVAL1CYC_Register is record
      --  Read-only. CVAL1CYC
      CVAL1CYC      : SM3CVAL1CYC_CVAL1CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CVAL1CYC_Register use record
      CVAL1CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM3CVAL2CYC_CVAL2CYC_Field is HAL.UInt4;

   --  Capture Value 2 Cycle Register
   type SM3CVAL2CYC_Register is record
      --  Read-only. CVAL2CYC
      CVAL2CYC      : SM3CVAL2CYC_CVAL2CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CVAL2CYC_Register use record
      CVAL2CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM3CVAL3CYC_CVAL3CYC_Field is HAL.UInt4;

   --  Capture Value 3 Cycle Register
   type SM3CVAL3CYC_Register is record
      --  Read-only. CVAL3CYC
      CVAL3CYC      : SM3CVAL3CYC_CVAL3CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CVAL3CYC_Register use record
      CVAL3CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM3CVAL4CYC_CVAL4CYC_Field is HAL.UInt4;

   --  Capture Value 4 Cycle Register
   type SM3CVAL4CYC_Register is record
      --  Read-only. CVAL4CYC
      CVAL4CYC      : SM3CVAL4CYC_CVAL4CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CVAL4CYC_Register use record
      CVAL4CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype SM3CVAL5CYC_CVAL5CYC_Field is HAL.UInt4;

   --  Capture Value 5 Cycle Register
   type SM3CVAL5CYC_Register is record
      --  Read-only. CVAL5CYC
      CVAL5CYC      : SM3CVAL5CYC_CVAL5CYC_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SM3CVAL5CYC_Register use record
      CVAL5CYC      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  PWM_X Output Enables
   type OUTEN_PWMX_EN_Field is
     (
      --  PWM_X output disabled.
      Pwmx_En_0,
      --  PWM_X output enabled.
      Pwmx_En_1)
     with Size => 4;
   for OUTEN_PWMX_EN_Field use
     (Pwmx_En_0 => 0,
      Pwmx_En_1 => 1);

   --  PWM_B Output Enables
   type OUTEN_PWMB_EN_Field is
     (
      --  PWM_B output disabled.
      Pwmb_En_0,
      --  PWM_B output enabled.
      Pwmb_En_1)
     with Size => 4;
   for OUTEN_PWMB_EN_Field use
     (Pwmb_En_0 => 0,
      Pwmb_En_1 => 1);

   --  PWM_A Output Enables
   type OUTEN_PWMA_EN_Field is
     (
      --  PWM_A output disabled.
      Pwma_En_0,
      --  PWM_A output enabled.
      Pwma_En_1)
     with Size => 4;
   for OUTEN_PWMA_EN_Field use
     (Pwma_En_0 => 0,
      Pwma_En_1 => 1);

   --  Output Enable Register
   type OUTEN_Register is record
      --  PWM_X Output Enables
      PWMX_EN        : OUTEN_PWMX_EN_Field := NRF_SVD.PWM.Pwmx_En_0;
      --  PWM_B Output Enables
      PWMB_EN        : OUTEN_PWMB_EN_Field := NRF_SVD.PWM.Pwmb_En_0;
      --  PWM_A Output Enables
      PWMA_EN        : OUTEN_PWMA_EN_Field := NRF_SVD.PWM.Pwma_En_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for OUTEN_Register use record
      PWMX_EN        at 0 range 0 .. 3;
      PWMB_EN        at 0 range 4 .. 7;
      PWMA_EN        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  PWM_X Masks
   type MASK_MASKX_Field is
     (
      --  PWM_X output normal.
      Maskx_0,
      --  PWM_X output masked.
      Maskx_1)
     with Size => 4;
   for MASK_MASKX_Field use
     (Maskx_0 => 0,
      Maskx_1 => 1);

   --  PWM_B Masks
   type MASK_MASKB_Field is
     (
      --  PWM_B output normal.
      Maskb_0,
      --  PWM_B output masked.
      Maskb_1)
     with Size => 4;
   for MASK_MASKB_Field use
     (Maskb_0 => 0,
      Maskb_1 => 1);

   --  PWM_A Masks
   type MASK_MASKA_Field is
     (
      --  PWM_A output normal.
      Maska_0,
      --  PWM_A output masked.
      Maska_1)
     with Size => 4;
   for MASK_MASKA_Field use
     (Maska_0 => 0,
      Maska_1 => 1);

   --  Update Mask Bits Immediately
   type MASK_UPDATE_MASK_Field is
     (
      --  Normal operation. MASK* bits within the corresponding submodule are
      --  not updated until a FORCE_OUT event occurs within the submodule.
      Update_Mask_0,
      --  Immediate operation. MASK* bits within the corresponding submodule
      --  are updated on the following clock edge after setting this bit.
      Update_Mask_1)
     with Size => 4;
   for MASK_UPDATE_MASK_Field use
     (Update_Mask_0 => 0,
      Update_Mask_1 => 1);

   --  Mask Register
   type MASK_Register is record
      --  PWM_X Masks
      MASKX       : MASK_MASKX_Field := NRF_SVD.PWM.Maskx_0;
      --  PWM_B Masks
      MASKB       : MASK_MASKB_Field := NRF_SVD.PWM.Maskb_0;
      --  PWM_A Masks
      MASKA       : MASK_MASKA_Field := NRF_SVD.PWM.Maska_0;
      --  Write-only. Update Mask Bits Immediately
      UPDATE_MASK : MASK_UPDATE_MASK_Field := NRF_SVD.PWM.Update_Mask_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MASK_Register use record
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
      Sm0Out45_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 0
      --  instead of PWM45.
      Sm0Out45_1)
     with Size => 1;
   for SWCOUT_SM0OUT45_Field use
     (Sm0Out45_0 => 0,
      Sm0Out45_1 => 1);

   --  Submodule 0 Software Controlled Output 23
   type SWCOUT_SM0OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 0
      --  instead of PWM23.
      Sm0Out23_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 0
      --  instead of PWM23.
      Sm0Out23_1)
     with Size => 1;
   for SWCOUT_SM0OUT23_Field use
     (Sm0Out23_0 => 0,
      Sm0Out23_1 => 1);

   --  Submodule 1 Software Controlled Output 45
   type SWCOUT_SM1OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 1
      --  instead of PWM45.
      Sm1Out45_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 1
      --  instead of PWM45.
      Sm1Out45_1)
     with Size => 1;
   for SWCOUT_SM1OUT45_Field use
     (Sm1Out45_0 => 0,
      Sm1Out45_1 => 1);

   --  Submodule 1 Software Controlled Output 23
   type SWCOUT_SM1OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 1
      --  instead of PWM23.
      Sm1Out23_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 1
      --  instead of PWM23.
      Sm1Out23_1)
     with Size => 1;
   for SWCOUT_SM1OUT23_Field use
     (Sm1Out23_0 => 0,
      Sm1Out23_1 => 1);

   --  Submodule 2 Software Controlled Output 45
   type SWCOUT_SM2OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 2
      --  instead of PWM45.
      Sm2Out45_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 2
      --  instead of PWM45.
      Sm2Out45_1)
     with Size => 1;
   for SWCOUT_SM2OUT45_Field use
     (Sm2Out45_0 => 0,
      Sm2Out45_1 => 1);

   --  Submodule 2 Software Controlled Output 23
   type SWCOUT_SM2OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 2
      --  instead of PWM23.
      Sm2Out23_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 2
      --  instead of PWM23.
      Sm2Out23_1)
     with Size => 1;
   for SWCOUT_SM2OUT23_Field use
     (Sm2Out23_0 => 0,
      Sm2Out23_1 => 1);

   --  Submodule 3 Software Controlled Output 45
   type SWCOUT_SM3OUT45_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 3
      --  instead of PWM45.
      Sm3Out45_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 3
      --  instead of PWM45.
      Sm3Out45_1)
     with Size => 1;
   for SWCOUT_SM3OUT45_Field use
     (Sm3Out45_0 => 0,
      Sm3Out45_1 => 1);

   --  Submodule 3 Software Controlled Output 23
   type SWCOUT_SM3OUT23_Field is
     (
      --  A logic 0 is supplied to the deadtime generator of submodule 3
      --  instead of PWM23.
      Sm3Out23_0,
      --  A logic 1 is supplied to the deadtime generator of submodule 3
      --  instead of PWM23.
      Sm3Out23_1)
     with Size => 1;
   for SWCOUT_SM3OUT23_Field use
     (Sm3Out23_0 => 0,
      Sm3Out23_1 => 1);

   --  Software Controlled Output Register
   type SWCOUT_Register is record
      --  Submodule 0 Software Controlled Output 45
      SM0OUT45      : SWCOUT_SM0OUT45_Field := NRF_SVD.PWM.Sm0Out45_0;
      --  Submodule 0 Software Controlled Output 23
      SM0OUT23      : SWCOUT_SM0OUT23_Field := NRF_SVD.PWM.Sm0Out23_0;
      --  Submodule 1 Software Controlled Output 45
      SM1OUT45      : SWCOUT_SM1OUT45_Field := NRF_SVD.PWM.Sm1Out45_0;
      --  Submodule 1 Software Controlled Output 23
      SM1OUT23      : SWCOUT_SM1OUT23_Field := NRF_SVD.PWM.Sm1Out23_0;
      --  Submodule 2 Software Controlled Output 45
      SM2OUT45      : SWCOUT_SM2OUT45_Field := NRF_SVD.PWM.Sm2Out45_0;
      --  Submodule 2 Software Controlled Output 23
      SM2OUT23      : SWCOUT_SM2OUT23_Field := NRF_SVD.PWM.Sm2Out23_0;
      --  Submodule 3 Software Controlled Output 45
      SM3OUT45      : SWCOUT_SM3OUT45_Field := NRF_SVD.PWM.Sm3Out45_0;
      --  Submodule 3 Software Controlled Output 23
      SM3OUT23      : SWCOUT_SM3OUT23_Field := NRF_SVD.PWM.Sm3Out23_0;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SWCOUT_Register use record
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
      Sm0Sel45_0,
      --  Inverted generated SM0PWM45 signal is used by the deadtime logic.
      Sm0Sel45_1,
      --  SWCOUT[SM0OUT45] is used by the deadtime logic.
      Sm0Sel45_2,
      --  PWM0_EXTB signal is used by the deadtime logic.
      Sm0Sel45_3)
     with Size => 2;
   for DTSRCSEL_SM0SEL45_Field use
     (Sm0Sel45_0 => 0,
      Sm0Sel45_1 => 1,
      Sm0Sel45_2 => 2,
      Sm0Sel45_3 => 3);

   --  Submodule 0 PWM23 Control Select
   type DTSRCSEL_SM0SEL23_Field is
     (
      --  Generated SM0PWM23 signal is used by the deadtime logic.
      Sm0Sel23_0,
      --  Inverted generated SM0PWM23 signal is used by the deadtime logic.
      Sm0Sel23_1,
      --  SWCOUT[SM0OUT23] is used by the deadtime logic.
      Sm0Sel23_2,
      --  PWM0_EXTA signal is used by the deadtime logic.
      Sm0Sel23_3)
     with Size => 2;
   for DTSRCSEL_SM0SEL23_Field use
     (Sm0Sel23_0 => 0,
      Sm0Sel23_1 => 1,
      Sm0Sel23_2 => 2,
      Sm0Sel23_3 => 3);

   --  Submodule 1 PWM45 Control Select
   type DTSRCSEL_SM1SEL45_Field is
     (
      --  Generated SM1PWM45 signal is used by the deadtime logic.
      Sm1Sel45_0,
      --  Inverted generated SM1PWM45 signal is used by the deadtime logic.
      Sm1Sel45_1,
      --  SWCOUT[SM1OUT45] is used by the deadtime logic.
      Sm1Sel45_2,
      --  PWM1_EXTB signal is used by the deadtime logic.
      Sm1Sel45_3)
     with Size => 2;
   for DTSRCSEL_SM1SEL45_Field use
     (Sm1Sel45_0 => 0,
      Sm1Sel45_1 => 1,
      Sm1Sel45_2 => 2,
      Sm1Sel45_3 => 3);

   --  Submodule 1 PWM23 Control Select
   type DTSRCSEL_SM1SEL23_Field is
     (
      --  Generated SM1PWM23 signal is used by the deadtime logic.
      Sm1Sel23_0,
      --  Inverted generated SM1PWM23 signal is used by the deadtime logic.
      Sm1Sel23_1,
      --  SWCOUT[SM1OUT23] is used by the deadtime logic.
      Sm1Sel23_2,
      --  PWM1_EXTA signal is used by the deadtime logic.
      Sm1Sel23_3)
     with Size => 2;
   for DTSRCSEL_SM1SEL23_Field use
     (Sm1Sel23_0 => 0,
      Sm1Sel23_1 => 1,
      Sm1Sel23_2 => 2,
      Sm1Sel23_3 => 3);

   --  Submodule 2 PWM45 Control Select
   type DTSRCSEL_SM2SEL45_Field is
     (
      --  Generated SM2PWM45 signal is used by the deadtime logic.
      Sm2Sel45_0,
      --  Inverted generated SM2PWM45 signal is used by the deadtime logic.
      Sm2Sel45_1,
      --  SWCOUT[SM2OUT45] is used by the deadtime logic.
      Sm2Sel45_2,
      --  PWM2_EXTB signal is used by the deadtime logic.
      Sm2Sel45_3)
     with Size => 2;
   for DTSRCSEL_SM2SEL45_Field use
     (Sm2Sel45_0 => 0,
      Sm2Sel45_1 => 1,
      Sm2Sel45_2 => 2,
      Sm2Sel45_3 => 3);

   --  Submodule 2 PWM23 Control Select
   type DTSRCSEL_SM2SEL23_Field is
     (
      --  Generated SM2PWM23 signal is used by the deadtime logic.
      Sm2Sel23_0,
      --  Inverted generated SM2PWM23 signal is used by the deadtime logic.
      Sm2Sel23_1,
      --  SWCOUT[SM2OUT23] is used by the deadtime logic.
      Sm2Sel23_2,
      --  PWM2_EXTA signal is used by the deadtime logic.
      Sm2Sel23_3)
     with Size => 2;
   for DTSRCSEL_SM2SEL23_Field use
     (Sm2Sel23_0 => 0,
      Sm2Sel23_1 => 1,
      Sm2Sel23_2 => 2,
      Sm2Sel23_3 => 3);

   --  Submodule 3 PWM45 Control Select
   type DTSRCSEL_SM3SEL45_Field is
     (
      --  Generated SM3PWM45 signal is used by the deadtime logic.
      Sm3Sel45_0,
      --  Inverted generated SM3PWM45 signal is used by the deadtime logic.
      Sm3Sel45_1,
      --  SWCOUT[SM3OUT45] is used by the deadtime logic.
      Sm3Sel45_2,
      --  PWM3_EXTB signal is used by the deadtime logic.
      Sm3Sel45_3)
     with Size => 2;
   for DTSRCSEL_SM3SEL45_Field use
     (Sm3Sel45_0 => 0,
      Sm3Sel45_1 => 1,
      Sm3Sel45_2 => 2,
      Sm3Sel45_3 => 3);

   --  Submodule 3 PWM23 Control Select
   type DTSRCSEL_SM3SEL23_Field is
     (
      --  Generated SM3PWM23 signal is used by the deadtime logic.
      Sm3Sel23_0,
      --  Inverted generated SM3PWM23 signal is used by the deadtime logic.
      Sm3Sel23_1,
      --  SWCOUT[SM3OUT23] is used by the deadtime logic.
      Sm3Sel23_2,
      --  PWM3_EXTA signal is used by the deadtime logic.
      Sm3Sel23_3)
     with Size => 2;
   for DTSRCSEL_SM3SEL23_Field use
     (Sm3Sel23_0 => 0,
      Sm3Sel23_1 => 1,
      Sm3Sel23_2 => 2,
      Sm3Sel23_3 => 3);

   --  PWM Source Select Register
   type DTSRCSEL_Register is record
      --  Submodule 0 PWM45 Control Select
      SM0SEL45 : DTSRCSEL_SM0SEL45_Field := NRF_SVD.PWM.Sm0Sel45_0;
      --  Submodule 0 PWM23 Control Select
      SM0SEL23 : DTSRCSEL_SM0SEL23_Field := NRF_SVD.PWM.Sm0Sel23_0;
      --  Submodule 1 PWM45 Control Select
      SM1SEL45 : DTSRCSEL_SM1SEL45_Field := NRF_SVD.PWM.Sm1Sel45_0;
      --  Submodule 1 PWM23 Control Select
      SM1SEL23 : DTSRCSEL_SM1SEL23_Field := NRF_SVD.PWM.Sm1Sel23_0;
      --  Submodule 2 PWM45 Control Select
      SM2SEL45 : DTSRCSEL_SM2SEL45_Field := NRF_SVD.PWM.Sm2Sel45_0;
      --  Submodule 2 PWM23 Control Select
      SM2SEL23 : DTSRCSEL_SM2SEL23_Field := NRF_SVD.PWM.Sm2Sel23_0;
      --  Submodule 3 PWM45 Control Select
      SM3SEL45 : DTSRCSEL_SM3SEL45_Field := NRF_SVD.PWM.Sm3Sel45_0;
      --  Submodule 3 PWM23 Control Select
      SM3SEL23 : DTSRCSEL_SM3SEL23_Field := NRF_SVD.PWM.Sm3Sel23_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DTSRCSEL_Register use record
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
   type MCTRL_LDOK_Field is
     (
      --  Do not load new values.
      Ldok_0,
      --  Load prescaler, modulus, and PWM values of the corresponding
      --  submodule.
      Ldok_1)
     with Size => 4;
   for MCTRL_LDOK_Field use
     (Ldok_0 => 0,
      Ldok_1 => 1);

   subtype MCTRL_CLDOK_Field is HAL.UInt4;

   --  Run
   type MCTRL_RUN_Field is
     (
      --  PWM generator is disabled in the corresponding submodule.
      Run_0,
      --  PWM generator is enabled in the corresponding submodule.
      Run_1)
     with Size => 4;
   for MCTRL_RUN_Field use
     (Run_0 => 0,
      Run_1 => 1);

   --  Current Polarity
   type MCTRL_IPOL_Field is
     (
      --  PWM23 is used to generate complementary PWM pair in the corresponding
      --  submodule.
      Ipol_0,
      --  PWM45 is used to generate complementary PWM pair in the corresponding
      --  submodule.
      Ipol_1)
     with Size => 4;
   for MCTRL_IPOL_Field use
     (Ipol_0 => 0,
      Ipol_1 => 1);

   --  Master Control Register
   type MCTRL_Register is record
      --  Load Okay
      LDOK  : MCTRL_LDOK_Field := NRF_SVD.PWM.Ldok_0;
      --  Write-only. Clear Load Okay
      CLDOK : MCTRL_CLDOK_Field := 16#0#;
      --  Run
      RUN   : MCTRL_RUN_Field := NRF_SVD.PWM.Run_0;
      --  Current Polarity
      IPOL  : MCTRL_IPOL_Field := NRF_SVD.PWM.Ipol_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCTRL_Register use record
      LDOK  at 0 range 0 .. 3;
      CLDOK at 0 range 4 .. 7;
      RUN   at 0 range 8 .. 11;
      IPOL  at 0 range 12 .. 15;
   end record;

   --  Monitor PLL State
   type MCTRL2_MONPLL_Field is
     (
      --  Not locked. Do not monitor PLL operation. Resetting of the fractional
      --  delay block in case of PLL losing lock will be controlled by
      --  software.
      Monpll_0,
      --  Not locked. Monitor PLL operation to automatically disable the
      --  fractional delay block when the PLL encounters problems.
      Monpll_1,
      --  Locked. Do not monitor PLL operation. Resetting of the fractional
      --  delay block in case of PLL losing lock will be controlled by
      --  software. These bits are write protected until the next reset.
      Monpll_2,
      --  Locked. Monitor PLL operation to automatically disable the fractional
      --  delay block when the PLL encounters problems. These bits are write
      --  protected until the next reset.
      Monpll_3)
     with Size => 2;
   for MCTRL2_MONPLL_Field use
     (Monpll_0 => 0,
      Monpll_1 => 1,
      Monpll_2 => 2,
      Monpll_3 => 3);

   --  Master Control 2 Register
   type MCTRL2_Register is record
      --  Monitor PLL State
      MONPLL        : MCTRL2_MONPLL_Field := NRF_SVD.PWM.Monpll_0;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCTRL2_Register use record
      MONPLL        at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  Fault Interrupt Enables
   type FCTRL0_FIE_Field is
     (
      --  FAULTx CPU interrupt requests disabled.
      Fie_0,
      --  FAULTx CPU interrupt requests enabled.
      Fie_1)
     with Size => 4;
   for FCTRL0_FIE_Field use
     (Fie_0 => 0,
      Fie_1 => 1);

   --  Fault Safety Mode
   type FCTRL0_FSAFE_Field is
     (
      --  Normal mode. PWM outputs disabled by this fault are not enabled until
      --  FSTS[FFLAGx] is clear at the start of a half cycle or full cycle
      --  depending on the state of FSTS[FFULL] without regard to the state of
      --  FSTS[FFPINx]. The PWM outputs disabled by this fault input will not
      --  be re-enabled until the actual FAULTx input signal de-asserts since
      --  the fault input will combinationally disable the PWM outputs (as
      --  programmed in DISMAPn).
      Fsafe_0,
      --  Safe mode. PWM outputs disabled by this fault are not enabled until
      --  FSTS[FFLAGx] is clear and FSTS[FFPINx] is clear at the start of a
      --  half cycle or full cycle depending on the state of FSTS[FFULL].
      Fsafe_1)
     with Size => 4;
   for FCTRL0_FSAFE_Field use
     (Fsafe_0 => 0,
      Fsafe_1 => 1);

   --  Automatic Fault Clearing
   type FCTRL0_FAUTO_Field is
     (
      --  Manual fault clearing. PWM outputs disabled by this fault are not
      --  enabled until FSTS[FFLAGx] is clear at the start of a half cycle or
      --  full cycle depending the state of FSTS[FFULL]. This is further
      --  controlled by FCTRL[FSAFE].
      Fauto_0,
      --  Automatic fault clearing. PWM outputs disabled by this fault are
      --  enabled when FSTS[FFPINx] is clear at the start of a half cycle or
      --  full cycle depending on the state of FSTS[FFULL] without regard to
      --  the state of FSTS[FFLAGx].
      Fauto_1)
     with Size => 4;
   for FCTRL0_FAUTO_Field use
     (Fauto_0 => 0,
      Fauto_1 => 1);

   --  Fault Level
   type FCTRL0_FLVL_Field is
     (
      --  A logic 0 on the fault input indicates a fault condition.
      Flvl_0,
      --  A logic 1 on the fault input indicates a fault condition.
      Flvl_1)
     with Size => 4;
   for FCTRL0_FLVL_Field use
     (Flvl_0 => 0,
      Flvl_1 => 1);

   --  Fault Control Register
   type FCTRL0_Register is record
      --  Fault Interrupt Enables
      FIE   : FCTRL0_FIE_Field := NRF_SVD.PWM.Fie_0;
      --  Fault Safety Mode
      FSAFE : FCTRL0_FSAFE_Field := NRF_SVD.PWM.Fsafe_0;
      --  Automatic Fault Clearing
      FAUTO : FCTRL0_FAUTO_Field := NRF_SVD.PWM.Fauto_0;
      --  Fault Level
      FLVL  : FCTRL0_FLVL_Field := NRF_SVD.PWM.Flvl_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FCTRL0_Register use record
      FIE   at 0 range 0 .. 3;
      FSAFE at 0 range 4 .. 7;
      FAUTO at 0 range 8 .. 11;
      FLVL  at 0 range 12 .. 15;
   end record;

   --  Fault Flags
   type FSTS0_FFLAG_Field is
     (
      --  No fault on the FAULTx pin.
      Fflag_0,
      --  Fault on the FAULTx pin.
      Fflag_1)
     with Size => 4;
   for FSTS0_FFLAG_Field use
     (Fflag_0 => 0,
      Fflag_1 => 1);

   --  Full Cycle
   type FSTS0_FFULL_Field is
     (
      --  PWM outputs are not re-enabled at the start of a full cycle
      Ffull_0,
      --  PWM outputs are re-enabled at the start of a full cycle
      Ffull_1)
     with Size => 4;
   for FSTS0_FFULL_Field use
     (Ffull_0 => 0,
      Ffull_1 => 1);

   subtype FSTS0_FFPIN_Field is HAL.UInt4;

   --  Half Cycle Fault Recovery
   type FSTS0_FHALF_Field is
     (
      --  PWM outputs are not re-enabled at the start of a half cycle.
      Fhalf_0,
      --  PWM outputs are re-enabled at the start of a half cycle (as defined
      --  by VAL0).
      Fhalf_1)
     with Size => 4;
   for FSTS0_FHALF_Field use
     (Fhalf_0 => 0,
      Fhalf_1 => 1);

   --  Fault Status Register
   type FSTS0_Register is record
      --  Fault Flags
      FFLAG : FSTS0_FFLAG_Field := NRF_SVD.PWM.Fflag_0;
      --  Full Cycle
      FFULL : FSTS0_FFULL_Field := NRF_SVD.PWM.Ffull_0;
      --  Read-only. Filtered Fault Pins
      FFPIN : FSTS0_FFPIN_Field := 16#0#;
      --  Half Cycle Fault Recovery
      FHALF : FSTS0_FHALF_Field := NRF_SVD.PWM.Fhalf_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FSTS0_Register use record
      FFLAG at 0 range 0 .. 3;
      FFULL at 0 range 4 .. 7;
      FFPIN at 0 range 8 .. 11;
      FHALF at 0 range 12 .. 15;
   end record;

   subtype FFILT0_FILT_PER_Field is HAL.UInt8;
   subtype FFILT0_FILT_CNT_Field is HAL.UInt3;

   --  Fault Glitch Stretch Enable
   type FFILT0_GSTR_Field is
     (
      --  Fault input glitch stretching is disabled.
      Gstr_0,
      --  Input fault signals will be stretched to at least 2 IPBus clock
      --  cycles.
      Gstr_1)
     with Size => 1;
   for FFILT0_GSTR_Field use
     (Gstr_0 => 0,
      Gstr_1 => 1);

   --  Fault Filter Register
   type FFILT0_Register is record
      --  Fault Filter Period
      FILT_PER       : FFILT0_FILT_PER_Field := 16#0#;
      --  Fault Filter Count
      FILT_CNT       : FFILT0_FILT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Fault Glitch Stretch Enable
      GSTR           : FFILT0_GSTR_Field := NRF_SVD.PWM.Gstr_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FFILT0_Register use record
      FILT_PER       at 0 range 0 .. 7;
      FILT_CNT       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      GSTR           at 0 range 15 .. 15;
   end record;

   --  Fault Test
   type FTST0_FTEST_Field is
     (
      --  No fault
      Ftest_0,
      --  Cause a simulated fault
      Ftest_1)
     with Size => 1;
   for FTST0_FTEST_Field use
     (Ftest_0 => 0,
      Ftest_1 => 1);

   --  Fault Test Register
   type FTST0_Register is record
      --  Fault Test
      FTEST         : FTST0_FTEST_Field := NRF_SVD.PWM.Ftest_0;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FTST0_Register use record
      FTEST         at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  No Combinational Path From Fault Input To PWM Output
   type FCTRL20_NOCOMB_Field is
     (
      --  There is a combinational link from the fault inputs to the PWM
      --  outputs. The fault inputs are combined with the filtered and latched
      --  fault signals to disable the PWM outputs.
      Nocomb_0,
      --  The direct combinational path from the fault inputs to the PWM
      --  outputs is disabled and the filtered and latched fault signals are
      --  used to disable the PWM outputs.
      Nocomb_1)
     with Size => 4;
   for FCTRL20_NOCOMB_Field use
     (Nocomb_0 => 0,
      Nocomb_1 => 1);

   --  Fault Control 2 Register
   type FCTRL20_Register is record
      --  No Combinational Path From Fault Input To PWM Output
      NOCOMB        : FCTRL20_NOCOMB_Field := NRF_SVD.PWM.Nocomb_0;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FCTRL20_Register use record
      NOCOMB        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWM
   type PWM_Peripheral is record
      --  Counter Register
      SM0CNT       : aliased HAL.UInt16;
      --  Initial Count Register
      SM0INIT      : aliased HAL.UInt16;
      --  Control 2 Register
      SM0CTRL2     : aliased SM0CTRL2_Register;
      --  Control Register
      SM0CTRL      : aliased SM0CTRL_Register;
      --  Value Register 0
      SM0VAL0      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SM0FRACVAL1  : aliased SM0FRACVAL1_Register;
      --  Value Register 1
      SM0VAL1      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SM0FRACVAL2  : aliased SM0FRACVAL2_Register;
      --  Value Register 2
      SM0VAL2      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SM0FRACVAL3  : aliased SM0FRACVAL3_Register;
      --  Value Register 3
      SM0VAL3      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SM0FRACVAL4  : aliased SM0FRACVAL4_Register;
      --  Value Register 4
      SM0VAL4      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SM0FRACVAL5  : aliased SM0FRACVAL5_Register;
      --  Value Register 5
      SM0VAL5      : aliased HAL.UInt16;
      --  Fractional Control Register
      SM0FRCTRL    : aliased SM0FRCTRL_Register;
      --  Output Control Register
      SM0OCTRL     : aliased SM0OCTRL_Register;
      --  Status Register
      SM0STS       : aliased SM0STS_Register;
      --  Interrupt Enable Register
      SM0INTEN     : aliased SM0INTEN_Register;
      --  DMA Enable Register
      SM0DMAEN     : aliased SM0DMAEN_Register;
      --  Output Trigger Control Register
      SM0TCTRL     : aliased SM0TCTRL_Register;
      --  Fault Disable Mapping Register 0
      SM0DISMAP0   : aliased SM0DISMAP0_Register;
      --  Fault Disable Mapping Register 1
      SM0DISMAP1   : aliased SM0DISMAP1_Register;
      --  Deadtime Count Register 0
      SM0DTCNT0    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SM0DTCNT1    : aliased HAL.UInt16;
      --  Capture Control A Register
      SM0CAPTCTRLA : aliased SM0CAPTCTRLA_Register;
      --  Capture Compare A Register
      SM0CAPTCOMPA : aliased SM0CAPTCOMPA_Register;
      --  Capture Control B Register
      SM0CAPTCTRLB : aliased SM0CAPTCTRLB_Register;
      --  Capture Compare B Register
      SM0CAPTCOMPB : aliased SM0CAPTCOMPB_Register;
      --  Capture Control X Register
      SM0CAPTCTRLX : aliased SM0CAPTCTRLX_Register;
      --  Capture Compare X Register
      SM0CAPTCOMPX : aliased SM0CAPTCOMPX_Register;
      --  Capture Value 0 Register
      SM0CVAL0     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SM0CVAL0CYC  : aliased SM0CVAL0CYC_Register;
      --  Capture Value 1 Register
      SM0CVAL1     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SM0CVAL1CYC  : aliased SM0CVAL1CYC_Register;
      --  Capture Value 2 Register
      SM0CVAL2     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SM0CVAL2CYC  : aliased SM0CVAL2CYC_Register;
      --  Capture Value 3 Register
      SM0CVAL3     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SM0CVAL3CYC  : aliased SM0CVAL3CYC_Register;
      --  Capture Value 4 Register
      SM0CVAL4     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SM0CVAL4CYC  : aliased SM0CVAL4CYC_Register;
      --  Capture Value 5 Register
      SM0CVAL5     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SM0CVAL5CYC  : aliased SM0CVAL5CYC_Register;
      --  Counter Register
      SM1CNT       : aliased HAL.UInt16;
      --  Initial Count Register
      SM1INIT      : aliased HAL.UInt16;
      --  Control 2 Register
      SM1CTRL2     : aliased SM1CTRL2_Register;
      --  Control Register
      SM1CTRL      : aliased SM1CTRL_Register;
      --  Value Register 0
      SM1VAL0      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SM1FRACVAL1  : aliased SM1FRACVAL1_Register;
      --  Value Register 1
      SM1VAL1      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SM1FRACVAL2  : aliased SM1FRACVAL2_Register;
      --  Value Register 2
      SM1VAL2      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SM1FRACVAL3  : aliased SM1FRACVAL3_Register;
      --  Value Register 3
      SM1VAL3      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SM1FRACVAL4  : aliased SM1FRACVAL4_Register;
      --  Value Register 4
      SM1VAL4      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SM1FRACVAL5  : aliased SM1FRACVAL5_Register;
      --  Value Register 5
      SM1VAL5      : aliased HAL.UInt16;
      --  Fractional Control Register
      SM1FRCTRL    : aliased SM1FRCTRL_Register;
      --  Output Control Register
      SM1OCTRL     : aliased SM1OCTRL_Register;
      --  Status Register
      SM1STS       : aliased SM1STS_Register;
      --  Interrupt Enable Register
      SM1INTEN     : aliased SM1INTEN_Register;
      --  DMA Enable Register
      SM1DMAEN     : aliased SM1DMAEN_Register;
      --  Output Trigger Control Register
      SM1TCTRL     : aliased SM1TCTRL_Register;
      --  Fault Disable Mapping Register 0
      SM1DISMAP0   : aliased SM1DISMAP0_Register;
      --  Fault Disable Mapping Register 1
      SM1DISMAP1   : aliased SM1DISMAP1_Register;
      --  Deadtime Count Register 0
      SM1DTCNT0    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SM1DTCNT1    : aliased HAL.UInt16;
      --  Capture Control A Register
      SM1CAPTCTRLA : aliased SM1CAPTCTRLA_Register;
      --  Capture Compare A Register
      SM1CAPTCOMPA : aliased SM1CAPTCOMPA_Register;
      --  Capture Control B Register
      SM1CAPTCTRLB : aliased SM1CAPTCTRLB_Register;
      --  Capture Compare B Register
      SM1CAPTCOMPB : aliased SM1CAPTCOMPB_Register;
      --  Capture Control X Register
      SM1CAPTCTRLX : aliased SM1CAPTCTRLX_Register;
      --  Capture Compare X Register
      SM1CAPTCOMPX : aliased SM1CAPTCOMPX_Register;
      --  Capture Value 0 Register
      SM1CVAL0     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SM1CVAL0CYC  : aliased SM1CVAL0CYC_Register;
      --  Capture Value 1 Register
      SM1CVAL1     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SM1CVAL1CYC  : aliased SM1CVAL1CYC_Register;
      --  Capture Value 2 Register
      SM1CVAL2     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SM1CVAL2CYC  : aliased SM1CVAL2CYC_Register;
      --  Capture Value 3 Register
      SM1CVAL3     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SM1CVAL3CYC  : aliased SM1CVAL3CYC_Register;
      --  Capture Value 4 Register
      SM1CVAL4     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SM1CVAL4CYC  : aliased SM1CVAL4CYC_Register;
      --  Capture Value 5 Register
      SM1CVAL5     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SM1CVAL5CYC  : aliased SM1CVAL5CYC_Register;
      --  Counter Register
      SM2CNT       : aliased HAL.UInt16;
      --  Initial Count Register
      SM2INIT      : aliased HAL.UInt16;
      --  Control 2 Register
      SM2CTRL2     : aliased SM2CTRL2_Register;
      --  Control Register
      SM2CTRL      : aliased SM2CTRL_Register;
      --  Value Register 0
      SM2VAL0      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SM2FRACVAL1  : aliased SM2FRACVAL1_Register;
      --  Value Register 1
      SM2VAL1      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SM2FRACVAL2  : aliased SM2FRACVAL2_Register;
      --  Value Register 2
      SM2VAL2      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SM2FRACVAL3  : aliased SM2FRACVAL3_Register;
      --  Value Register 3
      SM2VAL3      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SM2FRACVAL4  : aliased SM2FRACVAL4_Register;
      --  Value Register 4
      SM2VAL4      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SM2FRACVAL5  : aliased SM2FRACVAL5_Register;
      --  Value Register 5
      SM2VAL5      : aliased HAL.UInt16;
      --  Fractional Control Register
      SM2FRCTRL    : aliased SM2FRCTRL_Register;
      --  Output Control Register
      SM2OCTRL     : aliased SM2OCTRL_Register;
      --  Status Register
      SM2STS       : aliased SM2STS_Register;
      --  Interrupt Enable Register
      SM2INTEN     : aliased SM2INTEN_Register;
      --  DMA Enable Register
      SM2DMAEN     : aliased SM2DMAEN_Register;
      --  Output Trigger Control Register
      SM2TCTRL     : aliased SM2TCTRL_Register;
      --  Fault Disable Mapping Register 0
      SM2DISMAP0   : aliased SM2DISMAP0_Register;
      --  Fault Disable Mapping Register 1
      SM2DISMAP1   : aliased SM2DISMAP1_Register;
      --  Deadtime Count Register 0
      SM2DTCNT0    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SM2DTCNT1    : aliased HAL.UInt16;
      --  Capture Control A Register
      SM2CAPTCTRLA : aliased SM2CAPTCTRLA_Register;
      --  Capture Compare A Register
      SM2CAPTCOMPA : aliased SM2CAPTCOMPA_Register;
      --  Capture Control B Register
      SM2CAPTCTRLB : aliased SM2CAPTCTRLB_Register;
      --  Capture Compare B Register
      SM2CAPTCOMPB : aliased SM2CAPTCOMPB_Register;
      --  Capture Control X Register
      SM2CAPTCTRLX : aliased SM2CAPTCTRLX_Register;
      --  Capture Compare X Register
      SM2CAPTCOMPX : aliased SM2CAPTCOMPX_Register;
      --  Capture Value 0 Register
      SM2CVAL0     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SM2CVAL0CYC  : aliased SM2CVAL0CYC_Register;
      --  Capture Value 1 Register
      SM2CVAL1     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SM2CVAL1CYC  : aliased SM2CVAL1CYC_Register;
      --  Capture Value 2 Register
      SM2CVAL2     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SM2CVAL2CYC  : aliased SM2CVAL2CYC_Register;
      --  Capture Value 3 Register
      SM2CVAL3     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SM2CVAL3CYC  : aliased SM2CVAL3CYC_Register;
      --  Capture Value 4 Register
      SM2CVAL4     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SM2CVAL4CYC  : aliased SM2CVAL4CYC_Register;
      --  Capture Value 5 Register
      SM2CVAL5     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SM2CVAL5CYC  : aliased SM2CVAL5CYC_Register;
      --  Counter Register
      SM3CNT       : aliased HAL.UInt16;
      --  Initial Count Register
      SM3INIT      : aliased HAL.UInt16;
      --  Control 2 Register
      SM3CTRL2     : aliased SM3CTRL2_Register;
      --  Control Register
      SM3CTRL      : aliased SM3CTRL_Register;
      --  Value Register 0
      SM3VAL0      : aliased HAL.UInt16;
      --  Fractional Value Register 1
      SM3FRACVAL1  : aliased SM3FRACVAL1_Register;
      --  Value Register 1
      SM3VAL1      : aliased HAL.UInt16;
      --  Fractional Value Register 2
      SM3FRACVAL2  : aliased SM3FRACVAL2_Register;
      --  Value Register 2
      SM3VAL2      : aliased HAL.UInt16;
      --  Fractional Value Register 3
      SM3FRACVAL3  : aliased SM3FRACVAL3_Register;
      --  Value Register 3
      SM3VAL3      : aliased HAL.UInt16;
      --  Fractional Value Register 4
      SM3FRACVAL4  : aliased SM3FRACVAL4_Register;
      --  Value Register 4
      SM3VAL4      : aliased HAL.UInt16;
      --  Fractional Value Register 5
      SM3FRACVAL5  : aliased SM3FRACVAL5_Register;
      --  Value Register 5
      SM3VAL5      : aliased HAL.UInt16;
      --  Fractional Control Register
      SM3FRCTRL    : aliased SM3FRCTRL_Register;
      --  Output Control Register
      SM3OCTRL     : aliased SM3OCTRL_Register;
      --  Status Register
      SM3STS       : aliased SM3STS_Register;
      --  Interrupt Enable Register
      SM3INTEN     : aliased SM3INTEN_Register;
      --  DMA Enable Register
      SM3DMAEN     : aliased SM3DMAEN_Register;
      --  Output Trigger Control Register
      SM3TCTRL     : aliased SM3TCTRL_Register;
      --  Fault Disable Mapping Register 0
      SM3DISMAP0   : aliased SM3DISMAP0_Register;
      --  Fault Disable Mapping Register 1
      SM3DISMAP1   : aliased SM3DISMAP1_Register;
      --  Deadtime Count Register 0
      SM3DTCNT0    : aliased HAL.UInt16;
      --  Deadtime Count Register 1
      SM3DTCNT1    : aliased HAL.UInt16;
      --  Capture Control A Register
      SM3CAPTCTRLA : aliased SM3CAPTCTRLA_Register;
      --  Capture Compare A Register
      SM3CAPTCOMPA : aliased SM3CAPTCOMPA_Register;
      --  Capture Control B Register
      SM3CAPTCTRLB : aliased SM3CAPTCTRLB_Register;
      --  Capture Compare B Register
      SM3CAPTCOMPB : aliased SM3CAPTCOMPB_Register;
      --  Capture Control X Register
      SM3CAPTCTRLX : aliased SM3CAPTCTRLX_Register;
      --  Capture Compare X Register
      SM3CAPTCOMPX : aliased SM3CAPTCOMPX_Register;
      --  Capture Value 0 Register
      SM3CVAL0     : aliased HAL.UInt16;
      --  Capture Value 0 Cycle Register
      SM3CVAL0CYC  : aliased SM3CVAL0CYC_Register;
      --  Capture Value 1 Register
      SM3CVAL1     : aliased HAL.UInt16;
      --  Capture Value 1 Cycle Register
      SM3CVAL1CYC  : aliased SM3CVAL1CYC_Register;
      --  Capture Value 2 Register
      SM3CVAL2     : aliased HAL.UInt16;
      --  Capture Value 2 Cycle Register
      SM3CVAL2CYC  : aliased SM3CVAL2CYC_Register;
      --  Capture Value 3 Register
      SM3CVAL3     : aliased HAL.UInt16;
      --  Capture Value 3 Cycle Register
      SM3CVAL3CYC  : aliased SM3CVAL3CYC_Register;
      --  Capture Value 4 Register
      SM3CVAL4     : aliased HAL.UInt16;
      --  Capture Value 4 Cycle Register
      SM3CVAL4CYC  : aliased SM3CVAL4CYC_Register;
      --  Capture Value 5 Register
      SM3CVAL5     : aliased HAL.UInt16;
      --  Capture Value 5 Cycle Register
      SM3CVAL5CYC  : aliased SM3CVAL5CYC_Register;
      --  Output Enable Register
      OUTEN        : aliased OUTEN_Register;
      --  Mask Register
      MASK         : aliased MASK_Register;
      --  Software Controlled Output Register
      SWCOUT       : aliased SWCOUT_Register;
      --  PWM Source Select Register
      DTSRCSEL     : aliased DTSRCSEL_Register;
      --  Master Control Register
      MCTRL        : aliased MCTRL_Register;
      --  Master Control 2 Register
      MCTRL2       : aliased MCTRL2_Register;
      --  Fault Control Register
      FCTRL0       : aliased FCTRL0_Register;
      --  Fault Status Register
      FSTS0        : aliased FSTS0_Register;
      --  Fault Filter Register
      FFILT0       : aliased FFILT0_Register;
      --  Fault Test Register
      FTST0        : aliased FTST0_Register;
      --  Fault Control 2 Register
      FCTRL20      : aliased FCTRL20_Register;
   end record
     with Volatile;

   for PWM_Peripheral use record
      SM0CNT       at 16#0# range 0 .. 15;
      SM0INIT      at 16#2# range 0 .. 15;
      SM0CTRL2     at 16#4# range 0 .. 15;
      SM0CTRL      at 16#6# range 0 .. 15;
      SM0VAL0      at 16#A# range 0 .. 15;
      SM0FRACVAL1  at 16#C# range 0 .. 15;
      SM0VAL1      at 16#E# range 0 .. 15;
      SM0FRACVAL2  at 16#10# range 0 .. 15;
      SM0VAL2      at 16#12# range 0 .. 15;
      SM0FRACVAL3  at 16#14# range 0 .. 15;
      SM0VAL3      at 16#16# range 0 .. 15;
      SM0FRACVAL4  at 16#18# range 0 .. 15;
      SM0VAL4      at 16#1A# range 0 .. 15;
      SM0FRACVAL5  at 16#1C# range 0 .. 15;
      SM0VAL5      at 16#1E# range 0 .. 15;
      SM0FRCTRL    at 16#20# range 0 .. 15;
      SM0OCTRL     at 16#22# range 0 .. 15;
      SM0STS       at 16#24# range 0 .. 15;
      SM0INTEN     at 16#26# range 0 .. 15;
      SM0DMAEN     at 16#28# range 0 .. 15;
      SM0TCTRL     at 16#2A# range 0 .. 15;
      SM0DISMAP0   at 16#2C# range 0 .. 15;
      SM0DISMAP1   at 16#2E# range 0 .. 15;
      SM0DTCNT0    at 16#30# range 0 .. 15;
      SM0DTCNT1    at 16#32# range 0 .. 15;
      SM0CAPTCTRLA at 16#34# range 0 .. 15;
      SM0CAPTCOMPA at 16#36# range 0 .. 15;
      SM0CAPTCTRLB at 16#38# range 0 .. 15;
      SM0CAPTCOMPB at 16#3A# range 0 .. 15;
      SM0CAPTCTRLX at 16#3C# range 0 .. 15;
      SM0CAPTCOMPX at 16#3E# range 0 .. 15;
      SM0CVAL0     at 16#40# range 0 .. 15;
      SM0CVAL0CYC  at 16#42# range 0 .. 15;
      SM0CVAL1     at 16#44# range 0 .. 15;
      SM0CVAL1CYC  at 16#46# range 0 .. 15;
      SM0CVAL2     at 16#48# range 0 .. 15;
      SM0CVAL2CYC  at 16#4A# range 0 .. 15;
      SM0CVAL3     at 16#4C# range 0 .. 15;
      SM0CVAL3CYC  at 16#4E# range 0 .. 15;
      SM0CVAL4     at 16#50# range 0 .. 15;
      SM0CVAL4CYC  at 16#52# range 0 .. 15;
      SM0CVAL5     at 16#54# range 0 .. 15;
      SM0CVAL5CYC  at 16#56# range 0 .. 15;
      SM1CNT       at 16#60# range 0 .. 15;
      SM1INIT      at 16#62# range 0 .. 15;
      SM1CTRL2     at 16#64# range 0 .. 15;
      SM1CTRL      at 16#66# range 0 .. 15;
      SM1VAL0      at 16#6A# range 0 .. 15;
      SM1FRACVAL1  at 16#6C# range 0 .. 15;
      SM1VAL1      at 16#6E# range 0 .. 15;
      SM1FRACVAL2  at 16#70# range 0 .. 15;
      SM1VAL2      at 16#72# range 0 .. 15;
      SM1FRACVAL3  at 16#74# range 0 .. 15;
      SM1VAL3      at 16#76# range 0 .. 15;
      SM1FRACVAL4  at 16#78# range 0 .. 15;
      SM1VAL4      at 16#7A# range 0 .. 15;
      SM1FRACVAL5  at 16#7C# range 0 .. 15;
      SM1VAL5      at 16#7E# range 0 .. 15;
      SM1FRCTRL    at 16#80# range 0 .. 15;
      SM1OCTRL     at 16#82# range 0 .. 15;
      SM1STS       at 16#84# range 0 .. 15;
      SM1INTEN     at 16#86# range 0 .. 15;
      SM1DMAEN     at 16#88# range 0 .. 15;
      SM1TCTRL     at 16#8A# range 0 .. 15;
      SM1DISMAP0   at 16#8C# range 0 .. 15;
      SM1DISMAP1   at 16#8E# range 0 .. 15;
      SM1DTCNT0    at 16#90# range 0 .. 15;
      SM1DTCNT1    at 16#92# range 0 .. 15;
      SM1CAPTCTRLA at 16#94# range 0 .. 15;
      SM1CAPTCOMPA at 16#96# range 0 .. 15;
      SM1CAPTCTRLB at 16#98# range 0 .. 15;
      SM1CAPTCOMPB at 16#9A# range 0 .. 15;
      SM1CAPTCTRLX at 16#9C# range 0 .. 15;
      SM1CAPTCOMPX at 16#9E# range 0 .. 15;
      SM1CVAL0     at 16#A0# range 0 .. 15;
      SM1CVAL0CYC  at 16#A2# range 0 .. 15;
      SM1CVAL1     at 16#A4# range 0 .. 15;
      SM1CVAL1CYC  at 16#A6# range 0 .. 15;
      SM1CVAL2     at 16#A8# range 0 .. 15;
      SM1CVAL2CYC  at 16#AA# range 0 .. 15;
      SM1CVAL3     at 16#AC# range 0 .. 15;
      SM1CVAL3CYC  at 16#AE# range 0 .. 15;
      SM1CVAL4     at 16#B0# range 0 .. 15;
      SM1CVAL4CYC  at 16#B2# range 0 .. 15;
      SM1CVAL5     at 16#B4# range 0 .. 15;
      SM1CVAL5CYC  at 16#B6# range 0 .. 15;
      SM2CNT       at 16#C0# range 0 .. 15;
      SM2INIT      at 16#C2# range 0 .. 15;
      SM2CTRL2     at 16#C4# range 0 .. 15;
      SM2CTRL      at 16#C6# range 0 .. 15;
      SM2VAL0      at 16#CA# range 0 .. 15;
      SM2FRACVAL1  at 16#CC# range 0 .. 15;
      SM2VAL1      at 16#CE# range 0 .. 15;
      SM2FRACVAL2  at 16#D0# range 0 .. 15;
      SM2VAL2      at 16#D2# range 0 .. 15;
      SM2FRACVAL3  at 16#D4# range 0 .. 15;
      SM2VAL3      at 16#D6# range 0 .. 15;
      SM2FRACVAL4  at 16#D8# range 0 .. 15;
      SM2VAL4      at 16#DA# range 0 .. 15;
      SM2FRACVAL5  at 16#DC# range 0 .. 15;
      SM2VAL5      at 16#DE# range 0 .. 15;
      SM2FRCTRL    at 16#E0# range 0 .. 15;
      SM2OCTRL     at 16#E2# range 0 .. 15;
      SM2STS       at 16#E4# range 0 .. 15;
      SM2INTEN     at 16#E6# range 0 .. 15;
      SM2DMAEN     at 16#E8# range 0 .. 15;
      SM2TCTRL     at 16#EA# range 0 .. 15;
      SM2DISMAP0   at 16#EC# range 0 .. 15;
      SM2DISMAP1   at 16#EE# range 0 .. 15;
      SM2DTCNT0    at 16#F0# range 0 .. 15;
      SM2DTCNT1    at 16#F2# range 0 .. 15;
      SM2CAPTCTRLA at 16#F4# range 0 .. 15;
      SM2CAPTCOMPA at 16#F6# range 0 .. 15;
      SM2CAPTCTRLB at 16#F8# range 0 .. 15;
      SM2CAPTCOMPB at 16#FA# range 0 .. 15;
      SM2CAPTCTRLX at 16#FC# range 0 .. 15;
      SM2CAPTCOMPX at 16#FE# range 0 .. 15;
      SM2CVAL0     at 16#100# range 0 .. 15;
      SM2CVAL0CYC  at 16#102# range 0 .. 15;
      SM2CVAL1     at 16#104# range 0 .. 15;
      SM2CVAL1CYC  at 16#106# range 0 .. 15;
      SM2CVAL2     at 16#108# range 0 .. 15;
      SM2CVAL2CYC  at 16#10A# range 0 .. 15;
      SM2CVAL3     at 16#10C# range 0 .. 15;
      SM2CVAL3CYC  at 16#10E# range 0 .. 15;
      SM2CVAL4     at 16#110# range 0 .. 15;
      SM2CVAL4CYC  at 16#112# range 0 .. 15;
      SM2CVAL5     at 16#114# range 0 .. 15;
      SM2CVAL5CYC  at 16#116# range 0 .. 15;
      SM3CNT       at 16#120# range 0 .. 15;
      SM3INIT      at 16#122# range 0 .. 15;
      SM3CTRL2     at 16#124# range 0 .. 15;
      SM3CTRL      at 16#126# range 0 .. 15;
      SM3VAL0      at 16#12A# range 0 .. 15;
      SM3FRACVAL1  at 16#12C# range 0 .. 15;
      SM3VAL1      at 16#12E# range 0 .. 15;
      SM3FRACVAL2  at 16#130# range 0 .. 15;
      SM3VAL2      at 16#132# range 0 .. 15;
      SM3FRACVAL3  at 16#134# range 0 .. 15;
      SM3VAL3      at 16#136# range 0 .. 15;
      SM3FRACVAL4  at 16#138# range 0 .. 15;
      SM3VAL4      at 16#13A# range 0 .. 15;
      SM3FRACVAL5  at 16#13C# range 0 .. 15;
      SM3VAL5      at 16#13E# range 0 .. 15;
      SM3FRCTRL    at 16#140# range 0 .. 15;
      SM3OCTRL     at 16#142# range 0 .. 15;
      SM3STS       at 16#144# range 0 .. 15;
      SM3INTEN     at 16#146# range 0 .. 15;
      SM3DMAEN     at 16#148# range 0 .. 15;
      SM3TCTRL     at 16#14A# range 0 .. 15;
      SM3DISMAP0   at 16#14C# range 0 .. 15;
      SM3DISMAP1   at 16#14E# range 0 .. 15;
      SM3DTCNT0    at 16#150# range 0 .. 15;
      SM3DTCNT1    at 16#152# range 0 .. 15;
      SM3CAPTCTRLA at 16#154# range 0 .. 15;
      SM3CAPTCOMPA at 16#156# range 0 .. 15;
      SM3CAPTCTRLB at 16#158# range 0 .. 15;
      SM3CAPTCOMPB at 16#15A# range 0 .. 15;
      SM3CAPTCTRLX at 16#15C# range 0 .. 15;
      SM3CAPTCOMPX at 16#15E# range 0 .. 15;
      SM3CVAL0     at 16#160# range 0 .. 15;
      SM3CVAL0CYC  at 16#162# range 0 .. 15;
      SM3CVAL1     at 16#164# range 0 .. 15;
      SM3CVAL1CYC  at 16#166# range 0 .. 15;
      SM3CVAL2     at 16#168# range 0 .. 15;
      SM3CVAL2CYC  at 16#16A# range 0 .. 15;
      SM3CVAL3     at 16#16C# range 0 .. 15;
      SM3CVAL3CYC  at 16#16E# range 0 .. 15;
      SM3CVAL4     at 16#170# range 0 .. 15;
      SM3CVAL4CYC  at 16#172# range 0 .. 15;
      SM3CVAL5     at 16#174# range 0 .. 15;
      SM3CVAL5CYC  at 16#176# range 0 .. 15;
      OUTEN        at 16#180# range 0 .. 15;
      MASK         at 16#182# range 0 .. 15;
      SWCOUT       at 16#184# range 0 .. 15;
      DTSRCSEL     at 16#186# range 0 .. 15;
      MCTRL        at 16#188# range 0 .. 15;
      MCTRL2       at 16#18A# range 0 .. 15;
      FCTRL0       at 16#18C# range 0 .. 15;
      FSTS0        at 16#18E# range 0 .. 15;
      FFILT0       at 16#190# range 0 .. 15;
      FTST0        at 16#192# range 0 .. 15;
      FCTRL20      at 16#194# range 0 .. 15;
   end record;

   --  PWM
   PWM1_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#403DC000#);

   --  PWM
   PWM2_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#403E0000#);

   --  PWM
   PWM3_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#403E4000#);

   --  PWM
   PWM4_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#403E8000#);

end NRF_SVD.PWM;
