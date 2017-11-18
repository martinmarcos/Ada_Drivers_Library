--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.IOMUXC_SNVS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MUX Mode Select Field.
   type SW_MUX_CTL_PAD_WAKEUP_MUX_MODE_Field is
     (
      --  Select mux mode: ALT5 mux port: GPIO5_IO00 of instance: gpio5
      Alt5,
      --  Select mux mode: ALT7 mux port: NMI_GLUE_NMI of instance: nmi_glue
      Alt7)
     with Size => 3;
   for SW_MUX_CTL_PAD_WAKEUP_MUX_MODE_Field use
     (Alt5 => 5,
      Alt7 => 7);

   --  Software Input On Field.
   type SW_MUX_CTL_PAD_WAKEUP_SION_Field is
     (
      --  Input Path is determined by functionality
      Disabled,
      --  Force input path of pad WAKEUP
      Enabled)
     with Size => 1;
   for SW_MUX_CTL_PAD_WAKEUP_SION_Field use
     (Disabled => 0,
      Enabled => 1);

   --  SW_MUX_CTL_PAD_WAKEUP SW MUX Control Register
   type IOMUXC_SNVS_SW_MUX_CTL_PAD_WAKEUP_Register is record
      --  MUX Mode Select Field.
      MUX_MODE      : SW_MUX_CTL_PAD_WAKEUP_MUX_MODE_Field :=
                       NRF_SVD.IOMUXC_SNVS.Alt5;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Software Input On Field.
      SION          : SW_MUX_CTL_PAD_WAKEUP_SION_Field :=
                       NRF_SVD.IOMUXC_SNVS.Disabled;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_MUX_CTL_PAD_WAKEUP_Register use record
      MUX_MODE      at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SION          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  MUX Mode Select Field.
   type SW_MUX_CTL_PAD_PMIC_ON_REQ_MUX_MODE_Field is
     (
      --  Select mux mode: ALT0 mux port: SNVS_LP_PMIC_ON_REQ of instance:
      --  snvs_lp
      Alt0,
      --  Select mux mode: ALT5 mux port: GPIO5_IO01 of instance: gpio5
      Alt5)
     with Size => 3;
   for SW_MUX_CTL_PAD_PMIC_ON_REQ_MUX_MODE_Field use
     (Alt0 => 0,
      Alt5 => 5);

   --  Software Input On Field.
   type SW_MUX_CTL_PAD_PMIC_ON_REQ_SION_Field is
     (
      --  Input Path is determined by functionality
      Disabled,
      --  Force input path of pad PMIC_ON_REQ
      Enabled)
     with Size => 1;
   for SW_MUX_CTL_PAD_PMIC_ON_REQ_SION_Field use
     (Disabled => 0,
      Enabled => 1);

   --  SW_MUX_CTL_PAD_PMIC_ON_REQ SW MUX Control Register
   type IOMUXC_SNVS_SW_MUX_CTL_PAD_PMIC_ON_REQ_Register is record
      --  MUX Mode Select Field.
      MUX_MODE      : SW_MUX_CTL_PAD_PMIC_ON_REQ_MUX_MODE_Field :=
                       NRF_SVD.IOMUXC_SNVS.Alt0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Software Input On Field.
      SION          : SW_MUX_CTL_PAD_PMIC_ON_REQ_SION_Field :=
                       NRF_SVD.IOMUXC_SNVS.Disabled;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_MUX_CTL_PAD_PMIC_ON_REQ_Register use record
      MUX_MODE      at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SION          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  MUX Mode Select Field.
   type SW_MUX_CTL_PAD_PMIC_STBY_REQ_MUX_MODE_Field is
     (
      --  Select mux mode: ALT0 mux port: CCM_PMIC_VSTBY_REQ of instance: ccm
      Alt0,
      --  Select mux mode: ALT5 mux port: GPIO5_IO02 of instance: gpio5
      Alt5)
     with Size => 3;
   for SW_MUX_CTL_PAD_PMIC_STBY_REQ_MUX_MODE_Field use
     (Alt0 => 0,
      Alt5 => 5);

   --  Software Input On Field.
   type SW_MUX_CTL_PAD_PMIC_STBY_REQ_SION_Field is
     (
      --  Input Path is determined by functionality
      Disabled,
      --  Force input path of pad PMIC_STBY_REQ
      Enabled)
     with Size => 1;
   for SW_MUX_CTL_PAD_PMIC_STBY_REQ_SION_Field use
     (Disabled => 0,
      Enabled => 1);

   --  SW_MUX_CTL_PAD_PMIC_STBY_REQ SW MUX Control Register
   type IOMUXC_SNVS_SW_MUX_CTL_PAD_PMIC_STBY_REQ_Register is record
      --  MUX Mode Select Field.
      MUX_MODE      : SW_MUX_CTL_PAD_PMIC_STBY_REQ_MUX_MODE_Field :=
                       NRF_SVD.IOMUXC_SNVS.Alt0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Software Input On Field.
      SION          : SW_MUX_CTL_PAD_PMIC_STBY_REQ_SION_Field :=
                       NRF_SVD.IOMUXC_SNVS.Disabled;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_MUX_CTL_PAD_PMIC_STBY_REQ_Register use record
      MUX_MODE      at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SION          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Slew Rate Field
   type SW_PAD_CTL_PAD_TEST_MODE_SRE_Field is
     (
      --  Slow Slew Rate
      Sre_0_Slow_Slew_Rate,
      --  Fast Slew Rate
      Sre_1_Fast_Slew_Rate)
     with Size => 1;
   for SW_PAD_CTL_PAD_TEST_MODE_SRE_Field use
     (Sre_0_Slow_Slew_Rate => 0,
      Sre_1_Fast_Slew_Rate => 1);

   --  Drive Strength Field
   type SW_PAD_CTL_PAD_TEST_MODE_DSE_Field is
     (
      --  output driver disabled;
      Dse_0_OUTPUT_DRIVER_DISABLED,
      --  R0(260 Ohm @ 3.3V, 150 Ohm@1.8V, 240 Ohm for DDR)
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr,
      --  R0/2
      Dse_2_R0_2,
      --  R0/3
      Dse_3_R0_3,
      --  R0/4
      Dse_4_R0_4,
      --  R0/5
      Dse_5_R0_5,
      --  R0/6
      Dse_6_R0_6,
      --  R0/7
      Dse_7_R0_7)
     with Size => 3;
   for SW_PAD_CTL_PAD_TEST_MODE_DSE_Field use
     (Dse_0_OUTPUT_DRIVER_DISABLED => 0,
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr => 1,
      Dse_2_R0_2 => 2,
      Dse_3_R0_3 => 3,
      Dse_4_R0_4 => 4,
      Dse_5_R0_5 => 5,
      Dse_6_R0_6 => 6,
      Dse_7_R0_7 => 7);

   --  Speed Field
   type SW_PAD_CTL_PAD_TEST_MODE_SPEED_Field is
     (
      --  medium(100MHz)
      Speed)
     with Size => 2;
   for SW_PAD_CTL_PAD_TEST_MODE_SPEED_Field use
     (Speed => 2);

   --  Open Drain Enable Field
   type SW_PAD_CTL_PAD_TEST_MODE_ODE_Field is
     (
      --  Open Drain Disabled
      Ode_0_Open_Drain_Disabled,
      --  Open Drain Enabled
      Ode_1_Open_Drain_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_TEST_MODE_ODE_Field use
     (Ode_0_Open_Drain_Disabled => 0,
      Ode_1_Open_Drain_Enabled => 1);

   --  Pull / Keep Enable Field
   type SW_PAD_CTL_PAD_TEST_MODE_PKE_Field is
     (
      --  Pull/Keeper Disabled
      Pke_0_Pull_Keeper_Disabled,
      --  Pull/Keeper Enabled
      Pke_1_Pull_Keeper_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_TEST_MODE_PKE_Field use
     (Pke_0_Pull_Keeper_Disabled => 0,
      Pke_1_Pull_Keeper_Enabled => 1);

   --  Pull / Keep Select Field
   type SW_PAD_CTL_PAD_TEST_MODE_PUE_Field is
     (
      --  Keeper
      Pue_0_Keeper,
      --  Pull
      Pue_1_Pull)
     with Size => 1;
   for SW_PAD_CTL_PAD_TEST_MODE_PUE_Field use
     (Pue_0_Keeper => 0,
      Pue_1_Pull => 1);

   --  Pull Up / Down Config. Field
   type SW_PAD_CTL_PAD_TEST_MODE_PUS_Field is
     (
      --  100K Ohm Pull Down
      Pus_0_100K_Ohm_Pull_Down,
      --  47K Ohm Pull Up
      Pus_1_47K_Ohm_Pull_Up,
      --  100K Ohm Pull Up
      Pus_2_100K_Ohm_Pull_Up,
      --  22K Ohm Pull Up
      Pus_3_22K_Ohm_Pull_Up)
     with Size => 2;
   for SW_PAD_CTL_PAD_TEST_MODE_PUS_Field use
     (Pus_0_100K_Ohm_Pull_Down => 0,
      Pus_1_47K_Ohm_Pull_Up => 1,
      Pus_2_100K_Ohm_Pull_Up => 2,
      Pus_3_22K_Ohm_Pull_Up => 3);

   --  Hyst. Enable Field
   type SW_PAD_CTL_PAD_TEST_MODE_HYS_Field is
     (
      --  Hysteresis Disabled
      Hys_0_Hysteresis_Disabled,
      --  Hysteresis Enabled
      Hys_1_Hysteresis_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_TEST_MODE_HYS_Field use
     (Hys_0_Hysteresis_Disabled => 0,
      Hys_1_Hysteresis_Enabled => 1);

   --  SW_PAD_CTL_PAD_TEST_MODE SW PAD Control Register
   type IOMUXC_SNVS_SW_PAD_CTL_PAD_TEST_MODE_Register is record
      --  Slew Rate Field
      SRE            : SW_PAD_CTL_PAD_TEST_MODE_SRE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Sre_0_Slow_Slew_Rate;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Drive Strength Field
      DSE            : SW_PAD_CTL_PAD_TEST_MODE_DSE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Dse_4_R0_4;
      --  Read-only. Speed Field
      SPEED          : SW_PAD_CTL_PAD_TEST_MODE_SPEED_Field :=
                        NRF_SVD.IOMUXC_SNVS.Speed;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Open Drain Enable Field
      ODE            : SW_PAD_CTL_PAD_TEST_MODE_ODE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Ode_0_Open_Drain_Disabled;
      --  Pull / Keep Enable Field
      PKE            : SW_PAD_CTL_PAD_TEST_MODE_PKE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pke_1_Pull_Keeper_Enabled;
      --  Pull / Keep Select Field
      PUE            : SW_PAD_CTL_PAD_TEST_MODE_PUE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pue_1_Pull;
      --  Pull Up / Down Config. Field
      PUS            : SW_PAD_CTL_PAD_TEST_MODE_PUS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pus_0_100K_Ohm_Pull_Down;
      --  Hyst. Enable Field
      HYS            : SW_PAD_CTL_PAD_TEST_MODE_HYS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Hys_0_Hysteresis_Disabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_PAD_CTL_PAD_TEST_MODE_Register use record
      SRE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DSE            at 0 range 3 .. 5;
      SPEED          at 0 range 6 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ODE            at 0 range 11 .. 11;
      PKE            at 0 range 12 .. 12;
      PUE            at 0 range 13 .. 13;
      PUS            at 0 range 14 .. 15;
      HYS            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Slew Rate Field
   type SW_PAD_CTL_PAD_POR_B_SRE_Field is
     (
      --  Slow Slew Rate
      Sre_0_Slow_Slew_Rate,
      --  Fast Slew Rate
      Sre_1_Fast_Slew_Rate)
     with Size => 1;
   for SW_PAD_CTL_PAD_POR_B_SRE_Field use
     (Sre_0_Slow_Slew_Rate => 0,
      Sre_1_Fast_Slew_Rate => 1);

   --  Drive Strength Field
   type SW_PAD_CTL_PAD_POR_B_DSE_Field is
     (
      --  output driver disabled;
      Dse_0_OUTPUT_DRIVER_DISABLED,
      --  R0(260 Ohm @ 3.3V, 150 Ohm@1.8V, 240 Ohm for DDR)
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr,
      --  R0/2
      Dse_2_R0_2,
      --  R0/3
      Dse_3_R0_3,
      --  R0/4
      Dse_4_R0_4,
      --  R0/5
      Dse_5_R0_5,
      --  R0/6
      Dse_6_R0_6,
      --  R0/7
      Dse_7_R0_7)
     with Size => 3;
   for SW_PAD_CTL_PAD_POR_B_DSE_Field use
     (Dse_0_OUTPUT_DRIVER_DISABLED => 0,
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr => 1,
      Dse_2_R0_2 => 2,
      Dse_3_R0_3 => 3,
      Dse_4_R0_4 => 4,
      Dse_5_R0_5 => 5,
      Dse_6_R0_6 => 6,
      Dse_7_R0_7 => 7);

   --  Speed Field
   type SW_PAD_CTL_PAD_POR_B_SPEED_Field is
     (
      --  medium(100MHz)
      Speed)
     with Size => 2;
   for SW_PAD_CTL_PAD_POR_B_SPEED_Field use
     (Speed => 2);

   --  Open Drain Enable Field
   type SW_PAD_CTL_PAD_POR_B_ODE_Field is
     (
      --  Open Drain Disabled
      Ode_0_Open_Drain_Disabled,
      --  Open Drain Enabled
      Ode_1_Open_Drain_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_POR_B_ODE_Field use
     (Ode_0_Open_Drain_Disabled => 0,
      Ode_1_Open_Drain_Enabled => 1);

   --  Pull / Keep Enable Field
   type SW_PAD_CTL_PAD_POR_B_PKE_Field is
     (
      --  Pull/Keeper Disabled
      Pke_0_Pull_Keeper_Disabled,
      --  Pull/Keeper Enabled
      Pke_1_Pull_Keeper_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_POR_B_PKE_Field use
     (Pke_0_Pull_Keeper_Disabled => 0,
      Pke_1_Pull_Keeper_Enabled => 1);

   --  Pull / Keep Select Field
   type SW_PAD_CTL_PAD_POR_B_PUE_Field is
     (
      --  Keeper
      Pue_0_Keeper,
      --  Pull
      Pue_1_Pull)
     with Size => 1;
   for SW_PAD_CTL_PAD_POR_B_PUE_Field use
     (Pue_0_Keeper => 0,
      Pue_1_Pull => 1);

   --  Pull Up / Down Config. Field
   type SW_PAD_CTL_PAD_POR_B_PUS_Field is
     (
      --  100K Ohm Pull Down
      Pus_0_100K_Ohm_Pull_Down,
      --  47K Ohm Pull Up
      Pus_1_47K_Ohm_Pull_Up,
      --  100K Ohm Pull Up
      Pus_2_100K_Ohm_Pull_Up,
      --  22K Ohm Pull Up
      Pus_3_22K_Ohm_Pull_Up)
     with Size => 2;
   for SW_PAD_CTL_PAD_POR_B_PUS_Field use
     (Pus_0_100K_Ohm_Pull_Down => 0,
      Pus_1_47K_Ohm_Pull_Up => 1,
      Pus_2_100K_Ohm_Pull_Up => 2,
      Pus_3_22K_Ohm_Pull_Up => 3);

   --  Hyst. Enable Field
   type SW_PAD_CTL_PAD_POR_B_HYS_Field is
     (
      --  Hysteresis Disabled
      Hys_0_Hysteresis_Disabled,
      --  Hysteresis Enabled
      Hys_1_Hysteresis_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_POR_B_HYS_Field use
     (Hys_0_Hysteresis_Disabled => 0,
      Hys_1_Hysteresis_Enabled => 1);

   --  SW_PAD_CTL_PAD_POR_B SW PAD Control Register
   type IOMUXC_SNVS_SW_PAD_CTL_PAD_POR_B_Register is record
      --  Slew Rate Field
      SRE            : SW_PAD_CTL_PAD_POR_B_SRE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Sre_0_Slow_Slew_Rate;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Drive Strength Field
      DSE            : SW_PAD_CTL_PAD_POR_B_DSE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Dse_4_R0_4;
      --  Read-only. Speed Field
      SPEED          : SW_PAD_CTL_PAD_POR_B_SPEED_Field :=
                        NRF_SVD.IOMUXC_SNVS.Speed;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Open Drain Enable Field
      ODE            : SW_PAD_CTL_PAD_POR_B_ODE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Ode_0_Open_Drain_Disabled;
      --  Pull / Keep Enable Field
      PKE            : SW_PAD_CTL_PAD_POR_B_PKE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pke_1_Pull_Keeper_Enabled;
      --  Pull / Keep Select Field
      PUE            : SW_PAD_CTL_PAD_POR_B_PUE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pue_1_Pull;
      --  Pull Up / Down Config. Field
      PUS            : SW_PAD_CTL_PAD_POR_B_PUS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pus_2_100K_Ohm_Pull_Up;
      --  Hyst. Enable Field
      HYS            : SW_PAD_CTL_PAD_POR_B_HYS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Hys_1_Hysteresis_Enabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_PAD_CTL_PAD_POR_B_Register use record
      SRE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DSE            at 0 range 3 .. 5;
      SPEED          at 0 range 6 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ODE            at 0 range 11 .. 11;
      PKE            at 0 range 12 .. 12;
      PUE            at 0 range 13 .. 13;
      PUS            at 0 range 14 .. 15;
      HYS            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Slew Rate Field
   type SW_PAD_CTL_PAD_ONOFF_SRE_Field is
     (
      --  Slow Slew Rate
      Sre_0_Slow_Slew_Rate,
      --  Fast Slew Rate
      Sre_1_Fast_Slew_Rate)
     with Size => 1;
   for SW_PAD_CTL_PAD_ONOFF_SRE_Field use
     (Sre_0_Slow_Slew_Rate => 0,
      Sre_1_Fast_Slew_Rate => 1);

   --  Drive Strength Field
   type SW_PAD_CTL_PAD_ONOFF_DSE_Field is
     (
      --  output driver disabled;
      Dse_0_OUTPUT_DRIVER_DISABLED,
      --  R0(260 Ohm @ 3.3V, 150 Ohm@1.8V, 240 Ohm for DDR)
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr,
      --  R0/2
      Dse_2_R0_2,
      --  R0/3
      Dse_3_R0_3,
      --  R0/4
      Dse_4_R0_4,
      --  R0/5
      Dse_5_R0_5,
      --  R0/6
      Dse_6_R0_6,
      --  R0/7
      Dse_7_R0_7)
     with Size => 3;
   for SW_PAD_CTL_PAD_ONOFF_DSE_Field use
     (Dse_0_OUTPUT_DRIVER_DISABLED => 0,
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr => 1,
      Dse_2_R0_2 => 2,
      Dse_3_R0_3 => 3,
      Dse_4_R0_4 => 4,
      Dse_5_R0_5 => 5,
      Dse_6_R0_6 => 6,
      Dse_7_R0_7 => 7);

   --  Speed Field
   type SW_PAD_CTL_PAD_ONOFF_SPEED_Field is
     (
      --  medium(100MHz)
      Speed)
     with Size => 2;
   for SW_PAD_CTL_PAD_ONOFF_SPEED_Field use
     (Speed => 2);

   --  Open Drain Enable Field
   type SW_PAD_CTL_PAD_ONOFF_ODE_Field is
     (
      --  Open Drain Disabled
      Ode_0_Open_Drain_Disabled,
      --  Open Drain Enabled
      Ode_1_Open_Drain_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_ONOFF_ODE_Field use
     (Ode_0_Open_Drain_Disabled => 0,
      Ode_1_Open_Drain_Enabled => 1);

   --  Pull / Keep Enable Field
   type SW_PAD_CTL_PAD_ONOFF_PKE_Field is
     (
      --  Pull/Keeper Disabled
      Pke_0_Pull_Keeper_Disabled,
      --  Pull/Keeper Enabled
      Pke_1_Pull_Keeper_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_ONOFF_PKE_Field use
     (Pke_0_Pull_Keeper_Disabled => 0,
      Pke_1_Pull_Keeper_Enabled => 1);

   --  Pull / Keep Select Field
   type SW_PAD_CTL_PAD_ONOFF_PUE_Field is
     (
      --  Keeper
      Pue_0_Keeper,
      --  Pull
      Pue_1_Pull)
     with Size => 1;
   for SW_PAD_CTL_PAD_ONOFF_PUE_Field use
     (Pue_0_Keeper => 0,
      Pue_1_Pull => 1);

   --  Pull Up / Down Config. Field
   type SW_PAD_CTL_PAD_ONOFF_PUS_Field is
     (
      --  100K Ohm Pull Down
      Pus_0_100K_Ohm_Pull_Down,
      --  47K Ohm Pull Up
      Pus_1_47K_Ohm_Pull_Up,
      --  100K Ohm Pull Up
      Pus_2_100K_Ohm_Pull_Up,
      --  22K Ohm Pull Up
      Pus_3_22K_Ohm_Pull_Up)
     with Size => 2;
   for SW_PAD_CTL_PAD_ONOFF_PUS_Field use
     (Pus_0_100K_Ohm_Pull_Down => 0,
      Pus_1_47K_Ohm_Pull_Up => 1,
      Pus_2_100K_Ohm_Pull_Up => 2,
      Pus_3_22K_Ohm_Pull_Up => 3);

   --  Hyst. Enable Field
   type SW_PAD_CTL_PAD_ONOFF_HYS_Field is
     (
      --  Hysteresis Disabled
      Hys_0_Hysteresis_Disabled,
      --  Hysteresis Enabled
      Hys_1_Hysteresis_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_ONOFF_HYS_Field use
     (Hys_0_Hysteresis_Disabled => 0,
      Hys_1_Hysteresis_Enabled => 1);

   --  SW_PAD_CTL_PAD_ONOFF SW PAD Control Register
   type IOMUXC_SNVS_SW_PAD_CTL_PAD_ONOFF_Register is record
      --  Slew Rate Field
      SRE            : SW_PAD_CTL_PAD_ONOFF_SRE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Sre_0_Slow_Slew_Rate;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Drive Strength Field
      DSE            : SW_PAD_CTL_PAD_ONOFF_DSE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Dse_4_R0_4;
      --  Read-only. Speed Field
      SPEED          : SW_PAD_CTL_PAD_ONOFF_SPEED_Field :=
                        NRF_SVD.IOMUXC_SNVS.Speed;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Open Drain Enable Field
      ODE            : SW_PAD_CTL_PAD_ONOFF_ODE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Ode_0_Open_Drain_Disabled;
      --  Pull / Keep Enable Field
      PKE            : SW_PAD_CTL_PAD_ONOFF_PKE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pke_1_Pull_Keeper_Enabled;
      --  Pull / Keep Select Field
      PUE            : SW_PAD_CTL_PAD_ONOFF_PUE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pue_1_Pull;
      --  Pull Up / Down Config. Field
      PUS            : SW_PAD_CTL_PAD_ONOFF_PUS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pus_2_100K_Ohm_Pull_Up;
      --  Hyst. Enable Field
      HYS            : SW_PAD_CTL_PAD_ONOFF_HYS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Hys_1_Hysteresis_Enabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_PAD_CTL_PAD_ONOFF_Register use record
      SRE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DSE            at 0 range 3 .. 5;
      SPEED          at 0 range 6 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ODE            at 0 range 11 .. 11;
      PKE            at 0 range 12 .. 12;
      PUE            at 0 range 13 .. 13;
      PUS            at 0 range 14 .. 15;
      HYS            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Slew Rate Field
   type SW_PAD_CTL_PAD_WAKEUP_SRE_Field is
     (
      --  Slow Slew Rate
      Sre_0_Slow_Slew_Rate,
      --  Fast Slew Rate
      Sre_1_Fast_Slew_Rate)
     with Size => 1;
   for SW_PAD_CTL_PAD_WAKEUP_SRE_Field use
     (Sre_0_Slow_Slew_Rate => 0,
      Sre_1_Fast_Slew_Rate => 1);

   --  Drive Strength Field
   type SW_PAD_CTL_PAD_WAKEUP_DSE_Field is
     (
      --  output driver disabled;
      Dse_0_OUTPUT_DRIVER_DISABLED,
      --  R0(260 Ohm @ 3.3V, 150 Ohm@1.8V, 240 Ohm for DDR)
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr,
      --  R0/2
      Dse_2_R0_2,
      --  R0/3
      Dse_3_R0_3,
      --  R0/4
      Dse_4_R0_4,
      --  R0/5
      Dse_5_R0_5,
      --  R0/6
      Dse_6_R0_6,
      --  R0/7
      Dse_7_R0_7)
     with Size => 3;
   for SW_PAD_CTL_PAD_WAKEUP_DSE_Field use
     (Dse_0_OUTPUT_DRIVER_DISABLED => 0,
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr => 1,
      Dse_2_R0_2 => 2,
      Dse_3_R0_3 => 3,
      Dse_4_R0_4 => 4,
      Dse_5_R0_5 => 5,
      Dse_6_R0_6 => 6,
      Dse_7_R0_7 => 7);

   --  Speed Field
   type SW_PAD_CTL_PAD_WAKEUP_SPEED_Field is
     (
      --  medium(100MHz)
      Speed)
     with Size => 2;
   for SW_PAD_CTL_PAD_WAKEUP_SPEED_Field use
     (Speed => 2);

   --  Open Drain Enable Field
   type SW_PAD_CTL_PAD_WAKEUP_ODE_Field is
     (
      --  Open Drain Disabled
      Ode_0_Open_Drain_Disabled,
      --  Open Drain Enabled
      Ode_1_Open_Drain_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_WAKEUP_ODE_Field use
     (Ode_0_Open_Drain_Disabled => 0,
      Ode_1_Open_Drain_Enabled => 1);

   --  Pull / Keep Enable Field
   type SW_PAD_CTL_PAD_WAKEUP_PKE_Field is
     (
      --  Pull/Keeper Disabled
      Pke_0_Pull_Keeper_Disabled,
      --  Pull/Keeper Enabled
      Pke_1_Pull_Keeper_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_WAKEUP_PKE_Field use
     (Pke_0_Pull_Keeper_Disabled => 0,
      Pke_1_Pull_Keeper_Enabled => 1);

   --  Pull / Keep Select Field
   type SW_PAD_CTL_PAD_WAKEUP_PUE_Field is
     (
      --  Keeper
      Pue_0_Keeper,
      --  Pull
      Pue_1_Pull)
     with Size => 1;
   for SW_PAD_CTL_PAD_WAKEUP_PUE_Field use
     (Pue_0_Keeper => 0,
      Pue_1_Pull => 1);

   --  Pull Up / Down Config. Field
   type SW_PAD_CTL_PAD_WAKEUP_PUS_Field is
     (
      --  100K Ohm Pull Down
      Pus_0_100K_Ohm_Pull_Down,
      --  47K Ohm Pull Up
      Pus_1_47K_Ohm_Pull_Up,
      --  100K Ohm Pull Up
      Pus_2_100K_Ohm_Pull_Up,
      --  22K Ohm Pull Up
      Pus_3_22K_Ohm_Pull_Up)
     with Size => 2;
   for SW_PAD_CTL_PAD_WAKEUP_PUS_Field use
     (Pus_0_100K_Ohm_Pull_Down => 0,
      Pus_1_47K_Ohm_Pull_Up => 1,
      Pus_2_100K_Ohm_Pull_Up => 2,
      Pus_3_22K_Ohm_Pull_Up => 3);

   --  Hyst. Enable Field
   type SW_PAD_CTL_PAD_WAKEUP_HYS_Field is
     (
      --  Hysteresis Disabled
      Hys_0_Hysteresis_Disabled,
      --  Hysteresis Enabled
      Hys_1_Hysteresis_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_WAKEUP_HYS_Field use
     (Hys_0_Hysteresis_Disabled => 0,
      Hys_1_Hysteresis_Enabled => 1);

   --  SW_PAD_CTL_PAD_WAKEUP SW PAD Control Register
   type IOMUXC_SNVS_SW_PAD_CTL_PAD_WAKEUP_Register is record
      --  Slew Rate Field
      SRE            : SW_PAD_CTL_PAD_WAKEUP_SRE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Sre_0_Slow_Slew_Rate;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Drive Strength Field
      DSE            : SW_PAD_CTL_PAD_WAKEUP_DSE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Dse_4_R0_4;
      --  Read-only. Speed Field
      SPEED          : SW_PAD_CTL_PAD_WAKEUP_SPEED_Field :=
                        NRF_SVD.IOMUXC_SNVS.Speed;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Open Drain Enable Field
      ODE            : SW_PAD_CTL_PAD_WAKEUP_ODE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Ode_0_Open_Drain_Disabled;
      --  Pull / Keep Enable Field
      PKE            : SW_PAD_CTL_PAD_WAKEUP_PKE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pke_1_Pull_Keeper_Enabled;
      --  Pull / Keep Select Field
      PUE            : SW_PAD_CTL_PAD_WAKEUP_PUE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pue_1_Pull;
      --  Pull Up / Down Config. Field
      PUS            : SW_PAD_CTL_PAD_WAKEUP_PUS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pus_2_100K_Ohm_Pull_Up;
      --  Hyst. Enable Field
      HYS            : SW_PAD_CTL_PAD_WAKEUP_HYS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Hys_1_Hysteresis_Enabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_PAD_CTL_PAD_WAKEUP_Register use record
      SRE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DSE            at 0 range 3 .. 5;
      SPEED          at 0 range 6 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ODE            at 0 range 11 .. 11;
      PKE            at 0 range 12 .. 12;
      PUE            at 0 range 13 .. 13;
      PUS            at 0 range 14 .. 15;
      HYS            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Slew Rate Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_SRE_Field is
     (
      --  Slow Slew Rate
      Sre_0_Slow_Slew_Rate,
      --  Fast Slew Rate
      Sre_1_Fast_Slew_Rate)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_SRE_Field use
     (Sre_0_Slow_Slew_Rate => 0,
      Sre_1_Fast_Slew_Rate => 1);

   --  Drive Strength Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_DSE_Field is
     (
      --  output driver disabled;
      Dse_0_OUTPUT_DRIVER_DISABLED,
      --  R0(260 Ohm @ 3.3V, 150 Ohm@1.8V, 240 Ohm for DDR)
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr,
      --  R0/2
      Dse_2_R0_2,
      --  R0/3
      Dse_3_R0_3,
      --  R0/4
      Dse_4_R0_4,
      --  R0/5
      Dse_5_R0_5,
      --  R0/6
      Dse_6_R0_6,
      --  R0/7
      Dse_7_R0_7)
     with Size => 3;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_DSE_Field use
     (Dse_0_OUTPUT_DRIVER_DISABLED => 0,
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr => 1,
      Dse_2_R0_2 => 2,
      Dse_3_R0_3 => 3,
      Dse_4_R0_4 => 4,
      Dse_5_R0_5 => 5,
      Dse_6_R0_6 => 6,
      Dse_7_R0_7 => 7);

   --  Speed Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_SPEED_Field is
     (
      --  medium(100MHz)
      Speed)
     with Size => 2;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_SPEED_Field use
     (Speed => 2);

   --  Open Drain Enable Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_ODE_Field is
     (
      --  Open Drain Disabled
      Ode_0_Open_Drain_Disabled,
      --  Open Drain Enabled
      Ode_1_Open_Drain_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_ODE_Field use
     (Ode_0_Open_Drain_Disabled => 0,
      Ode_1_Open_Drain_Enabled => 1);

   --  Pull / Keep Enable Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_PKE_Field is
     (
      --  Pull/Keeper Disabled
      Pke_0_Pull_Keeper_Disabled,
      --  Pull/Keeper Enabled
      Pke_1_Pull_Keeper_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_PKE_Field use
     (Pke_0_Pull_Keeper_Disabled => 0,
      Pke_1_Pull_Keeper_Enabled => 1);

   --  Pull / Keep Select Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_PUE_Field is
     (
      --  Keeper
      Pue_0_Keeper,
      --  Pull
      Pue_1_Pull)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_PUE_Field use
     (Pue_0_Keeper => 0,
      Pue_1_Pull => 1);

   --  Pull Up / Down Config. Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_PUS_Field is
     (
      --  100K Ohm Pull Down
      Pus_0_100K_Ohm_Pull_Down,
      --  47K Ohm Pull Up
      Pus_1_47K_Ohm_Pull_Up,
      --  100K Ohm Pull Up
      Pus_2_100K_Ohm_Pull_Up,
      --  22K Ohm Pull Up
      Pus_3_22K_Ohm_Pull_Up)
     with Size => 2;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_PUS_Field use
     (Pus_0_100K_Ohm_Pull_Down => 0,
      Pus_1_47K_Ohm_Pull_Up => 1,
      Pus_2_100K_Ohm_Pull_Up => 2,
      Pus_3_22K_Ohm_Pull_Up => 3);

   --  Hyst. Enable Field
   type SW_PAD_CTL_PAD_PMIC_ON_REQ_HYS_Field is
     (
      --  Hysteresis Disabled
      Hys_0_Hysteresis_Disabled,
      --  Hysteresis Enabled
      Hys_1_Hysteresis_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_ON_REQ_HYS_Field use
     (Hys_0_Hysteresis_Disabled => 0,
      Hys_1_Hysteresis_Enabled => 1);

   --  SW_PAD_CTL_PAD_PMIC_ON_REQ SW PAD Control Register
   type IOMUXC_SNVS_SW_PAD_CTL_PAD_PMIC_ON_REQ_Register is record
      --  Slew Rate Field
      SRE            : SW_PAD_CTL_PAD_PMIC_ON_REQ_SRE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Sre_0_Slow_Slew_Rate;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Drive Strength Field
      DSE            : SW_PAD_CTL_PAD_PMIC_ON_REQ_DSE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Dse_4_R0_4;
      --  Read-only. Speed Field
      SPEED          : SW_PAD_CTL_PAD_PMIC_ON_REQ_SPEED_Field :=
                        NRF_SVD.IOMUXC_SNVS.Speed;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Open Drain Enable Field
      ODE            : SW_PAD_CTL_PAD_PMIC_ON_REQ_ODE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Ode_1_Open_Drain_Enabled;
      --  Pull / Keep Enable Field
      PKE            : SW_PAD_CTL_PAD_PMIC_ON_REQ_PKE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pke_1_Pull_Keeper_Enabled;
      --  Pull / Keep Select Field
      PUE            : SW_PAD_CTL_PAD_PMIC_ON_REQ_PUE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pue_1_Pull;
      --  Pull Up / Down Config. Field
      PUS            : SW_PAD_CTL_PAD_PMIC_ON_REQ_PUS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pus_2_100K_Ohm_Pull_Up;
      --  Hyst. Enable Field
      HYS            : SW_PAD_CTL_PAD_PMIC_ON_REQ_HYS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Hys_0_Hysteresis_Disabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_PAD_CTL_PAD_PMIC_ON_REQ_Register use record
      SRE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DSE            at 0 range 3 .. 5;
      SPEED          at 0 range 6 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ODE            at 0 range 11 .. 11;
      PKE            at 0 range 12 .. 12;
      PUE            at 0 range 13 .. 13;
      PUS            at 0 range 14 .. 15;
      HYS            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Slew Rate Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_SRE_Field is
     (
      --  Slow Slew Rate
      Sre_0_Slow_Slew_Rate,
      --  Fast Slew Rate
      Sre_1_Fast_Slew_Rate)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_SRE_Field use
     (Sre_0_Slow_Slew_Rate => 0,
      Sre_1_Fast_Slew_Rate => 1);

   --  Drive Strength Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_DSE_Field is
     (
      --  output driver disabled;
      Dse_0_OUTPUT_DRIVER_DISABLED,
      --  R0(260 Ohm @ 3.3V, 150 Ohm@1.8V, 240 Ohm for DDR)
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr,
      --  R0/2
      Dse_2_R0_2,
      --  R0/3
      Dse_3_R0_3,
      --  R0/4
      Dse_4_R0_4,
      --  R0/5
      Dse_5_R0_5,
      --  R0/6
      Dse_6_R0_6,
      --  R0/7
      Dse_7_R0_7)
     with Size => 3;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_DSE_Field use
     (Dse_0_OUTPUT_DRIVER_DISABLED => 0,
      Dse_1_R0_260_Ohm_3_3V_150_Ohm_1_8V_240_Ohm_FOR_Ddr => 1,
      Dse_2_R0_2 => 2,
      Dse_3_R0_3 => 3,
      Dse_4_R0_4 => 4,
      Dse_5_R0_5 => 5,
      Dse_6_R0_6 => 6,
      Dse_7_R0_7 => 7);

   --  Speed Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_SPEED_Field is
     (
      --  medium(100MHz)
      Speed)
     with Size => 2;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_SPEED_Field use
     (Speed => 2);

   --  Open Drain Enable Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_ODE_Field is
     (
      --  Open Drain Disabled
      Ode_0_Open_Drain_Disabled,
      --  Open Drain Enabled
      Ode_1_Open_Drain_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_ODE_Field use
     (Ode_0_Open_Drain_Disabled => 0,
      Ode_1_Open_Drain_Enabled => 1);

   --  Pull / Keep Enable Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_PKE_Field is
     (
      --  Pull/Keeper Disabled
      Pke_0_Pull_Keeper_Disabled,
      --  Pull/Keeper Enabled
      Pke_1_Pull_Keeper_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_PKE_Field use
     (Pke_0_Pull_Keeper_Disabled => 0,
      Pke_1_Pull_Keeper_Enabled => 1);

   --  Pull / Keep Select Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_PUE_Field is
     (
      --  Keeper
      Pue_0_Keeper,
      --  Pull
      Pue_1_Pull)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_PUE_Field use
     (Pue_0_Keeper => 0,
      Pue_1_Pull => 1);

   --  Pull Up / Down Config. Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_PUS_Field is
     (
      --  100K Ohm Pull Down
      Pus_0_100K_Ohm_Pull_Down,
      --  47K Ohm Pull Up
      Pus_1_47K_Ohm_Pull_Up,
      --  100K Ohm Pull Up
      Pus_2_100K_Ohm_Pull_Up,
      --  22K Ohm Pull Up
      Pus_3_22K_Ohm_Pull_Up)
     with Size => 2;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_PUS_Field use
     (Pus_0_100K_Ohm_Pull_Down => 0,
      Pus_1_47K_Ohm_Pull_Up => 1,
      Pus_2_100K_Ohm_Pull_Up => 2,
      Pus_3_22K_Ohm_Pull_Up => 3);

   --  Hyst. Enable Field
   type SW_PAD_CTL_PAD_PMIC_STBY_REQ_HYS_Field is
     (
      --  Hysteresis Disabled
      Hys_0_Hysteresis_Disabled,
      --  Hysteresis Enabled
      Hys_1_Hysteresis_Enabled)
     with Size => 1;
   for SW_PAD_CTL_PAD_PMIC_STBY_REQ_HYS_Field use
     (Hys_0_Hysteresis_Disabled => 0,
      Hys_1_Hysteresis_Enabled => 1);

   --  SW_PAD_CTL_PAD_PMIC_STBY_REQ SW PAD Control Register
   type IOMUXC_SNVS_SW_PAD_CTL_PAD_PMIC_STBY_REQ_Register is record
      --  Slew Rate Field
      SRE            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_SRE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Sre_0_Slow_Slew_Rate;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Drive Strength Field
      DSE            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_DSE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Dse_4_R0_4;
      --  Read-only. Speed Field
      SPEED          : SW_PAD_CTL_PAD_PMIC_STBY_REQ_SPEED_Field :=
                        NRF_SVD.IOMUXC_SNVS.Speed;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Open Drain Enable Field
      ODE            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_ODE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Ode_0_Open_Drain_Disabled;
      --  Pull / Keep Enable Field
      PKE            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_PKE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pke_0_Pull_Keeper_Disabled;
      --  Pull / Keep Select Field
      PUE            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_PUE_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pue_1_Pull;
      --  Pull Up / Down Config. Field
      PUS            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_PUS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Pus_2_100K_Ohm_Pull_Up;
      --  Hyst. Enable Field
      HYS            : SW_PAD_CTL_PAD_PMIC_STBY_REQ_HYS_Field :=
                        NRF_SVD.IOMUXC_SNVS.Hys_0_Hysteresis_Disabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_SW_PAD_CTL_PAD_PMIC_STBY_REQ_Register use record
      SRE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DSE            at 0 range 3 .. 5;
      SPEED          at 0 range 6 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      ODE            at 0 range 11 .. 11;
      PKE            at 0 range 12 .. 12;
      PUE            at 0 range 13 .. 13;
      PUS            at 0 range 14 .. 15;
      HYS            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IOMUXC_SNVS
   type IOMUXC_SNVS_Peripheral is record
      --  SW_MUX_CTL_PAD_WAKEUP SW MUX Control Register
      SW_MUX_CTL_PAD_WAKEUP        : aliased IOMUXC_SNVS_SW_MUX_CTL_PAD_WAKEUP_Register;
      --  SW_MUX_CTL_PAD_PMIC_ON_REQ SW MUX Control Register
      SW_MUX_CTL_PAD_PMIC_ON_REQ   : aliased IOMUXC_SNVS_SW_MUX_CTL_PAD_PMIC_ON_REQ_Register;
      --  SW_MUX_CTL_PAD_PMIC_STBY_REQ SW MUX Control Register
      SW_MUX_CTL_PAD_PMIC_STBY_REQ : aliased IOMUXC_SNVS_SW_MUX_CTL_PAD_PMIC_STBY_REQ_Register;
      --  SW_PAD_CTL_PAD_TEST_MODE SW PAD Control Register
      SW_PAD_CTL_PAD_TEST_MODE     : aliased IOMUXC_SNVS_SW_PAD_CTL_PAD_TEST_MODE_Register;
      --  SW_PAD_CTL_PAD_POR_B SW PAD Control Register
      SW_PAD_CTL_PAD_POR_B         : aliased IOMUXC_SNVS_SW_PAD_CTL_PAD_POR_B_Register;
      --  SW_PAD_CTL_PAD_ONOFF SW PAD Control Register
      SW_PAD_CTL_PAD_ONOFF         : aliased IOMUXC_SNVS_SW_PAD_CTL_PAD_ONOFF_Register;
      --  SW_PAD_CTL_PAD_WAKEUP SW PAD Control Register
      SW_PAD_CTL_PAD_WAKEUP        : aliased IOMUXC_SNVS_SW_PAD_CTL_PAD_WAKEUP_Register;
      --  SW_PAD_CTL_PAD_PMIC_ON_REQ SW PAD Control Register
      SW_PAD_CTL_PAD_PMIC_ON_REQ   : aliased IOMUXC_SNVS_SW_PAD_CTL_PAD_PMIC_ON_REQ_Register;
      --  SW_PAD_CTL_PAD_PMIC_STBY_REQ SW PAD Control Register
      SW_PAD_CTL_PAD_PMIC_STBY_REQ : aliased IOMUXC_SNVS_SW_PAD_CTL_PAD_PMIC_STBY_REQ_Register;
   end record
     with Volatile;

   for IOMUXC_SNVS_Peripheral use record
      SW_MUX_CTL_PAD_WAKEUP        at 16#0# range 0 .. 31;
      SW_MUX_CTL_PAD_PMIC_ON_REQ   at 16#4# range 0 .. 31;
      SW_MUX_CTL_PAD_PMIC_STBY_REQ at 16#8# range 0 .. 31;
      SW_PAD_CTL_PAD_TEST_MODE     at 16#C# range 0 .. 31;
      SW_PAD_CTL_PAD_POR_B         at 16#10# range 0 .. 31;
      SW_PAD_CTL_PAD_ONOFF         at 16#14# range 0 .. 31;
      SW_PAD_CTL_PAD_WAKEUP        at 16#18# range 0 .. 31;
      SW_PAD_CTL_PAD_PMIC_ON_REQ   at 16#1C# range 0 .. 31;
      SW_PAD_CTL_PAD_PMIC_STBY_REQ at 16#20# range 0 .. 31;
   end record;

   --  IOMUXC_SNVS
   IOMUXC_SNVS_Periph : aliased IOMUXC_SNVS_Peripheral
     with Import, Address => System'To_Address (16#400A8000#);

end NRF_SVD.IOMUXC_SNVS;
