--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DCDC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype REG0_CUR_SNS_THRSH_Field is HAL.UInt3;
   subtype REG0_OVERCUR_TRIG_ADJ_Field is HAL.UInt2;
   subtype REG0_ADJ_POSLIMIT_BUCK_Field is HAL.UInt4;
   subtype REG0_LP_OVERLOAD_THRSH_Field is HAL.UInt2;

   --  DCDC Register 0
   type REG0_Register is record
      --  power down the zero cross detection function for discontinuous
      --  conductor mode
      PWD_ZCD                 : Boolean := True;
      --  Disable automatic clock switch from internal osc to xtal clock.
      DISABLE_AUTO_CLK_SWITCH : Boolean := False;
      --  select 24 MHz Crystal clock for DCDC, when
      --  dcdc_disable_auto_clk_switch is set.
      SEL_CLK                 : Boolean := False;
      --  Power down internal osc. Only set this bit, when 24 MHz crystal osc
      --  is available
      PWD_OSC_INT             : Boolean := False;
      --  The power down signal of the current detector.
      PWD_CUR_SNS_CMP         : Boolean := True;
      --  Set the threshold of current detector, if the peak current of the
      --  inductor exceeds the threshold, the current detector will assert
      CUR_SNS_THRSH           : REG0_CUR_SNS_THRSH_Field := 16#0#;
      --  power down overcurrent detection comparator
      PWD_OVERCUR_DET         : Boolean := True;
      --  The threshold of over current detection in run mode and power save
      --  mode: run mode power save mode 0x0 1 A 0
      OVERCUR_TRIG_ADJ        : REG0_OVERCUR_TRIG_ADJ_Field := 16#0#;
      --  set to "1" to power down the low voltage detection comparator
      PWD_CMP_BATT_DET        : Boolean := False;
      --  adjust value to poslimit_buck register
      ADJ_POSLIMIT_BUCK       : REG0_ADJ_POSLIMIT_BUCK_Field := 16#0#;
      --  enable the overload detection in power save mode, if current is
      --  larger than the overloading threshold (typical value is 50 mA), DCDC
      --  will switch to the run mode automatically
      EN_LP_OVERLOAD_SNS      : Boolean := True;
      --  power down overvoltage detection comparator
      PWD_HIGH_VOLT_DET       : Boolean := True;
      --  the threshold of the counting number of charging times during the
      --  period that lp_overload_freq_sel sets in power save mode
      LP_OVERLOAD_THRSH       : REG0_LP_OVERLOAD_THRSH_Field := 16#0#;
      --  the period of counting the charging times in power save mode 0: eight
      --  32k cycle 1: sixteen 32k cycle
      LP_OVERLOAD_FREQ_SEL    : Boolean := False;
      --  Adjust hysteretic value in low power from 12.5mV to 25mV
      LP_HIGH_HYS             : Boolean := False;
      --  unspecified
      Reserved_22_25          : HAL.UInt4 := 16#0#;
      --  power down output range comparator
      PWD_CMP_OFFSET          : Boolean := True;
      --  1'b1: Disable xtalok detection circuit 1'b0: Enable xtalok detection
      --  circuit
      XTALOK_DISABLE          : Boolean := False;
      --  reset current alert signal
      CURRENT_ALERT_RESET     : Boolean := True;
      --  set to 1 to switch internal ring osc to xtal 24M
      XTAL_24M_OK             : Boolean := False;
      --  unspecified
      Reserved_30_30          : HAL.Bit := 16#0#;
      --  Read-only. Status register to indicate DCDC status. 1'b1: DCDC
      --  already settled 1'b0: DCDC is settling
      STS_DC_OK               : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REG0_Register use record
      PWD_ZCD                 at 0 range 0 .. 0;
      DISABLE_AUTO_CLK_SWITCH at 0 range 1 .. 1;
      SEL_CLK                 at 0 range 2 .. 2;
      PWD_OSC_INT             at 0 range 3 .. 3;
      PWD_CUR_SNS_CMP         at 0 range 4 .. 4;
      CUR_SNS_THRSH           at 0 range 5 .. 7;
      PWD_OVERCUR_DET         at 0 range 8 .. 8;
      OVERCUR_TRIG_ADJ        at 0 range 9 .. 10;
      PWD_CMP_BATT_DET        at 0 range 11 .. 11;
      ADJ_POSLIMIT_BUCK       at 0 range 12 .. 15;
      EN_LP_OVERLOAD_SNS      at 0 range 16 .. 16;
      PWD_HIGH_VOLT_DET       at 0 range 17 .. 17;
      LP_OVERLOAD_THRSH       at 0 range 18 .. 19;
      LP_OVERLOAD_FREQ_SEL    at 0 range 20 .. 20;
      LP_HIGH_HYS             at 0 range 21 .. 21;
      Reserved_22_25          at 0 range 22 .. 25;
      PWD_CMP_OFFSET          at 0 range 26 .. 26;
      XTALOK_DISABLE          at 0 range 27 .. 27;
      CURRENT_ALERT_RESET     at 0 range 28 .. 28;
      XTAL_24M_OK             at 0 range 29 .. 29;
      Reserved_30_30          at 0 range 30 .. 30;
      STS_DC_OK               at 0 range 31 .. 31;
   end record;

   subtype REG1_REG_FBK_SEL_Field is HAL.UInt2;
   subtype REG1_LP_CMP_ISRC_SEL_Field is HAL.UInt2;
   subtype REG1_VBG_TRIM_Field is HAL.UInt5;

   --  DCDC Register 1
   type REG1_Register is record
      --  unspecified
      Reserved_0_6        : HAL.UInt7 := 16#1C#;
      --  select the feedback point of the internal regulator
      REG_FBK_SEL         : REG1_REG_FBK_SEL_Field := 16#1#;
      --  control the load resistor of the internal regulator of DCDC, the load
      --  resistor is connected as default "1", and need set to "0" to
      --  disconnect the load resistor
      REG_RLOAD_SW        : Boolean := True;
      --  unspecified
      Reserved_10_11      : HAL.UInt2 := 16#0#;
      --  set the current bias of low power comparator 0x0: 50 nA 0x1: 100 nA
      --  0x2: 200 nA 0x3: 400 nA
      LP_CMP_ISRC_SEL     : REG1_LP_CMP_ISRC_SEL_Field := 16#2#;
      --  unspecified
      Reserved_14_20      : HAL.UInt7 := 16#6E#;
      --  increase the threshold detection for common mode analog comparator
      LOOPCTRL_HST_THRESH : Boolean := False;
      --  unspecified
      Reserved_22_22      : HAL.Bit := 16#0#;
      --  Enable hysteresis in switching converter common mode analog
      --  comparators
      LOOPCTRL_EN_HYST    : Boolean := False;
      --  trim bandgap voltage
      VBG_TRIM            : REG1_VBG_TRIM_Field := 16#11#;
      --  unspecified
      Reserved_29_31      : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REG1_Register use record
      Reserved_0_6        at 0 range 0 .. 6;
      REG_FBK_SEL         at 0 range 7 .. 8;
      REG_RLOAD_SW        at 0 range 9 .. 9;
      Reserved_10_11      at 0 range 10 .. 11;
      LP_CMP_ISRC_SEL     at 0 range 12 .. 13;
      Reserved_14_20      at 0 range 14 .. 20;
      LOOPCTRL_HST_THRESH at 0 range 21 .. 21;
      Reserved_22_22      at 0 range 22 .. 22;
      LOOPCTRL_EN_HYST    at 0 range 23 .. 23;
      VBG_TRIM            at 0 range 24 .. 28;
      Reserved_29_31      at 0 range 29 .. 31;
   end record;

   subtype REG2_LOOPCTRL_DC_C_Field is HAL.UInt2;
   subtype REG2_LOOPCTRL_DC_R_Field is HAL.UInt4;
   subtype REG2_LOOPCTRL_DC_FF_Field is HAL.UInt3;
   subtype REG2_LOOPCTRL_EN_RCSCALE_Field is HAL.UInt3;

   --  DCDC Register 2
   type REG2_Register is record
      --  Ratio of integral control parameter to proportional control parameter
      --  in the switching DC-DC converter, and can be used to optimize
      --  efficiency and loop response
      LOOPCTRL_DC_C          : REG2_LOOPCTRL_DC_C_Field := 16#1#;
      --  Magnitude of proportional control parameter in the switching DC-DC
      --  converter control loop.
      LOOPCTRL_DC_R          : REG2_LOOPCTRL_DC_R_Field := 16#2#;
      --  Two's complement feed forward step in duty cycle in the switching
      --  DC-DC converter
      LOOPCTRL_DC_FF         : REG2_LOOPCTRL_DC_FF_Field := 16#0#;
      --  Enable analog circuit of DC-DC converter to respond faster under
      --  transient load conditions.
      LOOPCTRL_EN_RCSCALE    : REG2_LOOPCTRL_EN_RCSCALE_Field := 16#0#;
      --  Increase the threshold detection for RC scale circuit.
      LOOPCTRL_RCSCALE_THRSH : Boolean := False;
      --  Invert the sign of the hysteresis in DC-DC analog comparators.
      LOOPCTRL_HYST_SIGN     : Boolean := False;
      --  unspecified
      Reserved_14_26         : HAL.UInt13 := 16#1#;
      --  Set to "0" : stop charging if the duty cycle is lower than what set
      --  by dcdc_neglimit_in
      DISABLE_PULSE_SKIP     : Boolean := False;
      --  Set high to improve the transition from heavy load to light load
      DCM_SET_CTRL           : Boolean := False;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REG2_Register use record
      LOOPCTRL_DC_C          at 0 range 0 .. 1;
      LOOPCTRL_DC_R          at 0 range 2 .. 5;
      LOOPCTRL_DC_FF         at 0 range 6 .. 8;
      LOOPCTRL_EN_RCSCALE    at 0 range 9 .. 11;
      LOOPCTRL_RCSCALE_THRSH at 0 range 12 .. 12;
      LOOPCTRL_HYST_SIGN     at 0 range 13 .. 13;
      Reserved_14_26         at 0 range 14 .. 26;
      DISABLE_PULSE_SKIP     at 0 range 27 .. 27;
      DCM_SET_CTRL           at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   subtype REG3_TRG_Field is HAL.UInt5;
   subtype REG3_TARGET_LP_Field is HAL.UInt3;

   --  DCDC Register 3
   type REG3_Register is record
      --  Target value of VDD_SOC, 25 mV each step 0x0: 0.8V 0xE: 1.15V
      --  0x1F:1.575V
      TRG                   : REG3_TRG_Field := 16#E#;
      --  unspecified
      Reserved_5_7          : HAL.UInt3 := 16#0#;
      --  Target value of standby (low power) mode 0x0: 0
      TARGET_LP             : REG3_TARGET_LP_Field := 16#1#;
      --  unspecified
      Reserved_11_23        : HAL.UInt13 := 16#0#;
      --  Set DCDC clock to half freqeuncy for continuous mode
      MINPWR_DC_HALFCLK     : Boolean := False;
      --  unspecified
      Reserved_25_26        : HAL.UInt2 := 16#0#;
      --  Ajust delay to reduce ground noise
      MISC_DELAY_TIMING     : Boolean := False;
      --  Reserved
      MISC_DISABLEFET_LOGIC : Boolean := False;
      --  unspecified
      Reserved_29_29        : HAL.Bit := 16#0#;
      --  Disable stepping for the output VDD_SOC of DCDC
      DISABLE_STEP          : Boolean := False;
      --  unspecified
      Reserved_31_31        : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REG3_Register use record
      TRG                   at 0 range 0 .. 4;
      Reserved_5_7          at 0 range 5 .. 7;
      TARGET_LP             at 0 range 8 .. 10;
      Reserved_11_23        at 0 range 11 .. 23;
      MINPWR_DC_HALFCLK     at 0 range 24 .. 24;
      Reserved_25_26        at 0 range 25 .. 26;
      MISC_DELAY_TIMING     at 0 range 27 .. 27;
      MISC_DISABLEFET_LOGIC at 0 range 28 .. 28;
      Reserved_29_29        at 0 range 29 .. 29;
      DISABLE_STEP          at 0 range 30 .. 30;
      Reserved_31_31        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DCDC
   type DCDC_Peripheral is record
      --  DCDC Register 0
      REG0 : aliased REG0_Register;
      --  DCDC Register 1
      REG1 : aliased REG1_Register;
      --  DCDC Register 2
      REG2 : aliased REG2_Register;
      --  DCDC Register 3
      REG3 : aliased REG3_Register;
   end record
     with Volatile;

   for DCDC_Peripheral use record
      REG0 at 16#0# range 0 .. 31;
      REG1 at 16#4# range 0 .. 31;
      REG2 at 16#8# range 0 .. 31;
      REG3 at 16#C# range 0 .. 31;
   end record;

   --  DCDC
   DCDC_Periph : aliased DCDC_Peripheral
     with Import, Address => System'To_Address (16#40080000#);

end NRF_SVD.DCDC;
