--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.IOMUXC_GPR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SAI1 MCLK1 source select
   type GPR1_SAI1_MCLK1_SEL_Field is
     (
      --  ccm.ssi1_clk_root
      Sai1_Mclk1_Sel_0,
      --  ccm.ssi2_clk_root
      Sai1_Mclk1_Sel_1,
      --  ccm.ssi3_clk_root
      Sai1_Mclk1_Sel_2,
      --  iomux.sai1_ipg_clk_sai_mclk[2]
      Sai1_Mclk1_Sel_3,
      --  iomux.sai2_ipg_clk_sai_mclk[2]
      Sai1_Mclk1_Sel_4,
      --  iomux.sai3_ipg_clk_sai_mclk[2]
      Sai1_Mclk1_Sel_5)
     with Size => 3;
   for GPR1_SAI1_MCLK1_SEL_Field use
     (Sai1_Mclk1_Sel_0 => 0,
      Sai1_Mclk1_Sel_1 => 1,
      Sai1_Mclk1_Sel_2 => 2,
      Sai1_Mclk1_Sel_3 => 3,
      Sai1_Mclk1_Sel_4 => 4,
      Sai1_Mclk1_Sel_5 => 5);

   --  SAI1 MCLK2 source select
   type GPR1_SAI1_MCLK2_SEL_Field is
     (
      --  ccm.ssi1_clk_root
      Sai1_Mclk2_Sel_0,
      --  ccm.ssi2_clk_root
      Sai1_Mclk2_Sel_1,
      --  ccm.ssi3_clk_root
      Sai1_Mclk2_Sel_2,
      --  iomux.sai1_ipg_clk_sai_mclk[2]
      Sai1_Mclk2_Sel_3,
      --  iomux.sai2_ipg_clk_sai_mclk[2]
      Sai1_Mclk2_Sel_4,
      --  iomux.sai3_ipg_clk_sai_mclk[2]
      Sai1_Mclk2_Sel_5)
     with Size => 3;
   for GPR1_SAI1_MCLK2_SEL_Field use
     (Sai1_Mclk2_Sel_0 => 0,
      Sai1_Mclk2_Sel_1 => 1,
      Sai1_Mclk2_Sel_2 => 2,
      Sai1_Mclk2_Sel_3 => 3,
      Sai1_Mclk2_Sel_4 => 4,
      Sai1_Mclk2_Sel_5 => 5);

   --  SAI1 MCLK3 source select
   type GPR1_SAI1_MCLK3_SEL_Field is
     (
      --  ccm.spdif0_clk_root
      Sai1_Mclk3_Sel_0,
      --  iomux.spdif_tx_clk2
      Sai1_Mclk3_Sel_1,
      --  spdif.spdif_srclk
      Sai1_Mclk3_Sel_2,
      --  spdif.spdif_outclock
      Sai1_Mclk3_Sel_3)
     with Size => 2;
   for GPR1_SAI1_MCLK3_SEL_Field use
     (Sai1_Mclk3_Sel_0 => 0,
      Sai1_Mclk3_Sel_1 => 1,
      Sai1_Mclk3_Sel_2 => 2,
      Sai1_Mclk3_Sel_3 => 3);

   --  SAI2 MCLK3 source select
   type GPR1_SAI2_MCLK3_SEL_Field is
     (
      --  ccm.spdif0_clk_root
      Sai2_Mclk3_Sel_0,
      --  iomux.spdif_tx_clk2
      Sai2_Mclk3_Sel_1,
      --  spdif.spdif_srclk
      Sai2_Mclk3_Sel_2,
      --  spdif.spdif_outclock
      Sai2_Mclk3_Sel_3)
     with Size => 2;
   for GPR1_SAI2_MCLK3_SEL_Field use
     (Sai2_Mclk3_Sel_0 => 0,
      Sai2_Mclk3_Sel_1 => 1,
      Sai2_Mclk3_Sel_2 => 2,
      Sai2_Mclk3_Sel_3 => 3);

   --  SAI3 MCLK3 source select
   type GPR1_SAI3_MCLK3_SEL_Field is
     (
      --  ccm.spdif0_clk_root
      Sai3_Mclk3_Sel_0,
      --  iomux.spdif_tx_clk2
      Sai3_Mclk3_Sel_1,
      --  spdif.spdif_srclk
      Sai3_Mclk3_Sel_2,
      --  spdif.spdif_outclock
      Sai3_Mclk3_Sel_3)
     with Size => 2;
   for GPR1_SAI3_MCLK3_SEL_Field use
     (Sai3_Mclk3_Sel_0 => 0,
      Sai3_Mclk3_Sel_1 => 1,
      Sai3_Mclk3_Sel_2 => 2,
      Sai3_Mclk3_Sel_3 => 3);

   --  Global interrupt "0" bit (connected to ARM M7 IRQ#0 and GPC)
   type GPR1_GINT_Field is
     (
      --  Global interrupt request is not asserted.
      Gint_0,
      --  Global interrupt request is asserted.
      Gint_1)
     with Size => 1;
   for GPR1_GINT_Field use
     (Gint_0 => 0,
      Gint_1 => 1);

   --  ENET1 reference clock mode select.
   type GPR1_ENET1_CLK_SEL_Field is
     (
      --  ENET1 TX reference clock driven by ref_enetpll. This clock is also
      --  output to pins via the IOMUX. ENET_REF_CLK1 function.
      Enet1_Clk_Sel_0,
      --  Gets ENET1 TX reference clock from the ENET1_TX_CLK pin. In this use
      --  case, an external OSC provides the clock for both the external PHY
      --  and the internal controller.
      Enet1_Clk_Sel_1)
     with Size => 1;
   for GPR1_ENET1_CLK_SEL_Field use
     (Enet1_Clk_Sel_0 => 0,
      Enet1_Clk_Sel_1 => 1);

   --  USB Exposure mode
   type GPR1_USB_EXP_MODE_Field is
     (
      --  Exposure mode is disabled.
      Usb_Exp_Mode_0,
      --  Exposure mode is enabled.
      Usb_Exp_Mode_1)
     with Size => 1;
   for GPR1_USB_EXP_MODE_Field use
     (Usb_Exp_Mode_0 => 0,
      Usb_Exp_Mode_1 => 1);

   --  ENET1_TX_CLK data direction control when anatop. ENET_REF_CLK1 is
   --  selected (ALT1)
   type GPR1_ENET1_TX_CLK_DIR_Field is
     (
      --  ENET1_TX_CLK output driver is disabled when configured for ALT1
      Enet1_Tx_Clk_Dir_0,
      --  ENET1_TX_CLK output driver is enabled when configured for ALT1
      Enet1_Tx_Clk_Dir_1)
     with Size => 1;
   for GPR1_ENET1_TX_CLK_DIR_Field use
     (Enet1_Tx_Clk_Dir_0 => 0,
      Enet1_Tx_Clk_Dir_1 => 1);

   --  LCD_DATA00 data direction control when sai1.MCLK is selected (ALT8)
   type GPR1_SAI1_MCLK_DIR_Field is
     (
      --  LCD_DATA00 output driver is disabled when configured for ALT8
      Sai1_Mclk_Dir_0,
      --  LCD_DATA00 output driver is enabled when configured for ALT8
      Sai1_Mclk_Dir_1)
     with Size => 1;
   for GPR1_SAI1_MCLK_DIR_Field use
     (Sai1_Mclk_Dir_0 => 0,
      Sai1_Mclk_Dir_1 => 1);

   --  SD1_CLK data direction control when sai2.MCLK is selected (ALT2)
   type GPR1_SAI2_MCLK_DIR_Field is
     (
      --  SD1_CLK output driver is disabled when configured for ALT2
      Sai2_Mclk_Dir_0,
      --  SD1_CLK output driver is enabled when configured for ALT2
      Sai2_Mclk_Dir_1)
     with Size => 1;
   for GPR1_SAI2_MCLK_DIR_Field use
     (Sai2_Mclk_Dir_0 => 0,
      Sai2_Mclk_Dir_1 => 1);

   --  LCD_CLK data direction control when sai3.MCLK is selected (ALT3)
   type GPR1_SAI3_MCLK_DIR_Field is
     (
      --  LCD_CLK output driver is disabled when configured for ALT3
      Sai3_Mclk_Dir_0,
      --  LCD_CLK output driver is enabled when configured for ALT3
      Sai3_Mclk_Dir_1)
     with Size => 1;
   for GPR1_SAI3_MCLK_DIR_Field use
     (Sai3_Mclk_Dir_0 => 0,
      Sai3_Mclk_Dir_1 => 1);

   --  Exclusive monitor response select of illegal command
   type GPR1_EXC_MON_Field is
     (
      --  OKAY response
      Exc_Mon_0,
      --  SLVError response (default)
      Exc_Mon_1)
     with Size => 1;
   for GPR1_EXC_MON_Field use
     (Exc_Mon_0 => 0,
      Exc_Mon_1 => 1);

   --  ENET ipg_clk_s clock gating enable
   type GPR1_ENET_IPG_CLK_S_EN_Field is
     (
      --  ipg_clk_s is gated when there is no IPS access
      Enet_Ipg_Clk_S_En_0,
      --  ipg_clk_s is always on
      Enet_Ipg_Clk_S_En_1)
     with Size => 1;
   for GPR1_ENET_IPG_CLK_S_EN_Field use
     (Enet_Ipg_Clk_S_En_0 => 0,
      Enet_Ipg_Clk_S_En_1 => 1);

   --  ARM CM7 platform AHB clock enable
   type GPR1_CM7_FORCE_HCLK_EN_Field is
     (
      --  AHB clock is not running (gated)
      Cm7_Force_Hclk_En_0,
      --  AHB clock is running (enabled)
      Cm7_Force_Hclk_En_1)
     with Size => 1;
   for GPR1_CM7_FORCE_HCLK_EN_Field use
     (Cm7_Force_Hclk_En_0 => 0,
      Cm7_Force_Hclk_En_1 => 1);

   --  GPR1 General Purpose Register
   type IOMUXC_GPR_GPR1_Register is record
      --  SAI1 MCLK1 source select
      SAI1_MCLK1_SEL    : GPR1_SAI1_MCLK1_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai1_Mclk1_Sel_0;
      --  SAI1 MCLK2 source select
      SAI1_MCLK2_SEL    : GPR1_SAI1_MCLK2_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai1_Mclk2_Sel_0;
      --  SAI1 MCLK3 source select
      SAI1_MCLK3_SEL    : GPR1_SAI1_MCLK3_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai1_Mclk3_Sel_0;
      --  SAI2 MCLK3 source select
      SAI2_MCLK3_SEL    : GPR1_SAI2_MCLK3_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai2_Mclk3_Sel_0;
      --  SAI3 MCLK3 source select
      SAI3_MCLK3_SEL    : GPR1_SAI3_MCLK3_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai3_Mclk3_Sel_0;
      --  Global interrupt "0" bit (connected to ARM M7 IRQ#0 and GPC)
      GINT              : GPR1_GINT_Field := NRF_SVD.IOMUXC_GPR.Gint_0;
      --  ENET1 reference clock mode select.
      ENET1_CLK_SEL     : GPR1_ENET1_CLK_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Enet1_Clk_Sel_0;
      --  unspecified
      Reserved_14_14    : HAL.Bit := 16#0#;
      --  USB Exposure mode
      USB_EXP_MODE      : GPR1_USB_EXP_MODE_Field :=
                           NRF_SVD.IOMUXC_GPR.Usb_Exp_Mode_0;
      --  unspecified
      Reserved_16_16    : HAL.Bit := 16#0#;
      --  ENET1_TX_CLK data direction control when anatop. ENET_REF_CLK1 is
      --  selected (ALT1)
      ENET1_TX_CLK_DIR  : GPR1_ENET1_TX_CLK_DIR_Field :=
                           NRF_SVD.IOMUXC_GPR.Enet1_Tx_Clk_Dir_0;
      --  unspecified
      Reserved_18_18    : HAL.Bit := 16#0#;
      --  LCD_DATA00 data direction control when sai1.MCLK is selected (ALT8)
      SAI1_MCLK_DIR     : GPR1_SAI1_MCLK_DIR_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai1_Mclk_Dir_0;
      --  SD1_CLK data direction control when sai2.MCLK is selected (ALT2)
      SAI2_MCLK_DIR     : GPR1_SAI2_MCLK_DIR_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai2_Mclk_Dir_0;
      --  LCD_CLK data direction control when sai3.MCLK is selected (ALT3)
      SAI3_MCLK_DIR     : GPR1_SAI3_MCLK_DIR_Field :=
                           NRF_SVD.IOMUXC_GPR.Sai3_Mclk_Dir_0;
      --  Exclusive monitor response select of illegal command
      EXC_MON           : GPR1_EXC_MON_Field := NRF_SVD.IOMUXC_GPR.Exc_Mon_0;
      --  ENET ipg_clk_s clock gating enable
      ENET_IPG_CLK_S_EN : GPR1_ENET_IPG_CLK_S_EN_Field :=
                           NRF_SVD.IOMUXC_GPR.Enet_Ipg_Clk_S_En_0;
      --  unspecified
      Reserved_24_30    : HAL.UInt7 := 16#0#;
      --  ARM CM7 platform AHB clock enable
      CM7_FORCE_HCLK_EN : GPR1_CM7_FORCE_HCLK_EN_Field :=
                           NRF_SVD.IOMUXC_GPR.Cm7_Force_Hclk_En_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR1_Register use record
      SAI1_MCLK1_SEL    at 0 range 0 .. 2;
      SAI1_MCLK2_SEL    at 0 range 3 .. 5;
      SAI1_MCLK3_SEL    at 0 range 6 .. 7;
      SAI2_MCLK3_SEL    at 0 range 8 .. 9;
      SAI3_MCLK3_SEL    at 0 range 10 .. 11;
      GINT              at 0 range 12 .. 12;
      ENET1_CLK_SEL     at 0 range 13 .. 13;
      Reserved_14_14    at 0 range 14 .. 14;
      USB_EXP_MODE      at 0 range 15 .. 15;
      Reserved_16_16    at 0 range 16 .. 16;
      ENET1_TX_CLK_DIR  at 0 range 17 .. 17;
      Reserved_18_18    at 0 range 18 .. 18;
      SAI1_MCLK_DIR     at 0 range 19 .. 19;
      SAI2_MCLK_DIR     at 0 range 20 .. 20;
      SAI3_MCLK_DIR     at 0 range 21 .. 21;
      EXC_MON           at 0 range 22 .. 22;
      ENET_IPG_CLK_S_EN at 0 range 23 .. 23;
      Reserved_24_30    at 0 range 24 .. 30;
      CM7_FORCE_HCLK_EN at 0 range 31 .. 31;
   end record;

   --  enable power saving features on L2 memory
   type GPR2_L2_MEM_EN_POWERSAVING_Field is
     (
      --  none memory power saving features enabled,
      --  SHUTDOWN/DEEPSLEEP/LIGHTSLEEP will have no effect
      L2_Mem_En_Powersaving_0,
      --  memory power saving features enabled, set
      --  SHUTDOWN/DEEPSLEEP/LIGHTSLEEP(priority high to low) to enable power
      --  saving levels
      L2_Mem_En_Powersaving_1)
     with Size => 1;
   for GPR2_L2_MEM_EN_POWERSAVING_Field use
     (L2_Mem_En_Powersaving_0 => 0,
      L2_Mem_En_Powersaving_1 => 1);

   --  control how memory enter Deep Sleep mode (shutdown periphery power, but
   --  maintain memory contents, outputs of memory are pulled low)
   type GPR2_L2_MEM_DEEPSLEEP_Field is
     (
      --  no force sleep control supported, memory deep sleep mode only entered
      --  when whole system in stop mode
      L2_Mem_Deepsleep_0,
      --  force memory into deep sleep mode
      L2_Mem_Deepsleep_1)
     with Size => 1;
   for GPR2_L2_MEM_DEEPSLEEP_Field use
     (L2_Mem_Deepsleep_0 => 0,
      L2_Mem_Deepsleep_1 => 1);

   --  Divider ratio control for mclk from hmclk. mclk frequency = 1/(n+1) *
   --  hmclk frequency.
   type GPR2_MQS_CLK_DIV_Field is
     (
      --  mclk frequency = hmclk frequency
      Mqs_Clk_Div_0,
      --  mclk frequency = 1/2 * hmclk frequency
      Mqs_Clk_Div_1,
      --  mclk frequency = 1/3 * hmclk frequency
      Mqs_Clk_Div_2,
      --  mclk frequency = 1/256 * hmclk frequency
      Mqs_Clk_Div_255)
     with Size => 8;
   for GPR2_MQS_CLK_DIV_Field use
     (Mqs_Clk_Div_0 => 0,
      Mqs_Clk_Div_1 => 1,
      Mqs_Clk_Div_2 => 2,
      Mqs_Clk_Div_255 => 255);

   --  MQS software reset
   type GPR2_MQS_SW_RST_Field is
     (
      --  Exit software reset for MQS
      Mqs_Sw_Rst_0,
      --  Enable software reset for MQS
      Mqs_Sw_Rst_1)
     with Size => 1;
   for GPR2_MQS_SW_RST_Field use
     (Mqs_Sw_Rst_0 => 0,
      Mqs_Sw_Rst_1 => 1);

   --  MQS enable.
   type GPR2_MQS_EN_Field is
     (
      --  Disable MQS
      Mqs_En_0,
      --  Enable MQS
      Mqs_En_1)
     with Size => 1;
   for GPR2_MQS_EN_Field use
     (Mqs_En_0 => 0,
      Mqs_En_1 => 1);

   --  Used to control the PWM oversampling rate compared with mclk.
   type GPR2_MQS_OVERSAMPLE_Field is
     (
      --  32
      Mqs_Oversample_0,
      --  64
      Mqs_Oversample_1)
     with Size => 1;
   for GPR2_MQS_OVERSAMPLE_Field use
     (Mqs_Oversample_0 => 0,
      Mqs_Oversample_1 => 1);

   --  QTIMER1 timer counter freeze
   type GPR2_QTIMER1_TMR_CNTS_FREEZE_Field is
     (
      --  timer counter work normally
      Qtimer1_Tmr_Cnts_Freeze_0,
      --  reset counter and ouput flags
      Qtimer1_Tmr_Cnts_Freeze_1)
     with Size => 1;
   for GPR2_QTIMER1_TMR_CNTS_FREEZE_Field use
     (Qtimer1_Tmr_Cnts_Freeze_0 => 0,
      Qtimer1_Tmr_Cnts_Freeze_1 => 1);

   --  QTIMER2 timer counter freeze
   type GPR2_QTIMER2_TMR_CNTS_FREEZE_Field is
     (
      --  timer counter work normally
      Qtimer2_Tmr_Cnts_Freeze_0,
      --  reset counter and ouput flags
      Qtimer2_Tmr_Cnts_Freeze_1)
     with Size => 1;
   for GPR2_QTIMER2_TMR_CNTS_FREEZE_Field use
     (Qtimer2_Tmr_Cnts_Freeze_0 => 0,
      Qtimer2_Tmr_Cnts_Freeze_1 => 1);

   --  QTIMER3 timer counter freeze
   type GPR2_QTIMER3_TMR_CNTS_FREEZE_Field is
     (
      --  timer counter work normally
      Qtimer3_Tmr_Cnts_Freeze_0,
      --  reset counter and ouput flags
      Qtimer3_Tmr_Cnts_Freeze_1)
     with Size => 1;
   for GPR2_QTIMER3_TMR_CNTS_FREEZE_Field use
     (Qtimer3_Tmr_Cnts_Freeze_0 => 0,
      Qtimer3_Tmr_Cnts_Freeze_1 => 1);

   --  QTIMER4 timer counter freeze
   type GPR2_QTIMER4_TMR_CNTS_FREEZE_Field is
     (
      --  timer counter work normally
      Qtimer4_Tmr_Cnts_Freeze_0,
      --  reset counter and ouput flags
      Qtimer4_Tmr_Cnts_Freeze_1)
     with Size => 1;
   for GPR2_QTIMER4_TMR_CNTS_FREEZE_Field use
     (Qtimer4_Tmr_Cnts_Freeze_0 => 0,
      Qtimer4_Tmr_Cnts_Freeze_1 => 1);

   --  GPR2 General Purpose Register
   type IOMUXC_GPR_GPR2_Register is record
      --  unspecified
      Reserved_0_11           : HAL.UInt12 := 16#0#;
      --  enable power saving features on L2 memory
      L2_MEM_EN_POWERSAVING   : GPR2_L2_MEM_EN_POWERSAVING_Field :=
                                 NRF_SVD.IOMUXC_GPR.L2_Mem_En_Powersaving_0;
      --  unspecified
      Reserved_13_13          : HAL.Bit := 16#0#;
      --  control how memory enter Deep Sleep mode (shutdown periphery power,
      --  but maintain memory contents, outputs of memory are pulled low)
      L2_MEM_DEEPSLEEP        : GPR2_L2_MEM_DEEPSLEEP_Field :=
                                 NRF_SVD.IOMUXC_GPR.L2_Mem_Deepsleep_0;
      --  unspecified
      Reserved_15_15          : HAL.Bit := 16#0#;
      --  Divider ratio control for mclk from hmclk. mclk frequency = 1/(n+1) *
      --  hmclk frequency.
      MQS_CLK_DIV             : GPR2_MQS_CLK_DIV_Field :=
                                 NRF_SVD.IOMUXC_GPR.Mqs_Clk_Div_0;
      --  MQS software reset
      MQS_SW_RST              : GPR2_MQS_SW_RST_Field :=
                                 NRF_SVD.IOMUXC_GPR.Mqs_Sw_Rst_0;
      --  MQS enable.
      MQS_EN                  : GPR2_MQS_EN_Field :=
                                 NRF_SVD.IOMUXC_GPR.Mqs_En_0;
      --  Used to control the PWM oversampling rate compared with mclk.
      MQS_OVERSAMPLE          : GPR2_MQS_OVERSAMPLE_Field :=
                                 NRF_SVD.IOMUXC_GPR.Mqs_Oversample_0;
      --  unspecified
      Reserved_27_27          : HAL.Bit := 16#0#;
      --  QTIMER1 timer counter freeze
      QTIMER1_TMR_CNTS_FREEZE : GPR2_QTIMER1_TMR_CNTS_FREEZE_Field :=
                                 NRF_SVD.IOMUXC_GPR.Qtimer1_Tmr_Cnts_Freeze_0;
      --  QTIMER2 timer counter freeze
      QTIMER2_TMR_CNTS_FREEZE : GPR2_QTIMER2_TMR_CNTS_FREEZE_Field :=
                                 NRF_SVD.IOMUXC_GPR.Qtimer2_Tmr_Cnts_Freeze_0;
      --  QTIMER3 timer counter freeze
      QTIMER3_TMR_CNTS_FREEZE : GPR2_QTIMER3_TMR_CNTS_FREEZE_Field :=
                                 NRF_SVD.IOMUXC_GPR.Qtimer3_Tmr_Cnts_Freeze_0;
      --  QTIMER4 timer counter freeze
      QTIMER4_TMR_CNTS_FREEZE : GPR2_QTIMER4_TMR_CNTS_FREEZE_Field :=
                                 NRF_SVD.IOMUXC_GPR.Qtimer4_Tmr_Cnts_Freeze_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR2_Register use record
      Reserved_0_11           at 0 range 0 .. 11;
      L2_MEM_EN_POWERSAVING   at 0 range 12 .. 12;
      Reserved_13_13          at 0 range 13 .. 13;
      L2_MEM_DEEPSLEEP        at 0 range 14 .. 14;
      Reserved_15_15          at 0 range 15 .. 15;
      MQS_CLK_DIV             at 0 range 16 .. 23;
      MQS_SW_RST              at 0 range 24 .. 24;
      MQS_EN                  at 0 range 25 .. 25;
      MQS_OVERSAMPLE          at 0 range 26 .. 26;
      Reserved_27_27          at 0 range 27 .. 27;
      QTIMER1_TMR_CNTS_FREEZE at 0 range 28 .. 28;
      QTIMER2_TMR_CNTS_FREEZE at 0 range 29 .. 29;
      QTIMER3_TMR_CNTS_FREEZE at 0 range 30 .. 30;
      QTIMER4_TMR_CNTS_FREEZE at 0 range 31 .. 31;
   end record;

   subtype IOMUXC_GPR_GPR3_OCRAM_CTL_Field is HAL.UInt4;

   --  Select 128-bit dcp key from 256-bit key from snvs/ocotp
   type GPR3_DCP_KEY_SEL_Field is
     (
      --  Select [127:0] from snvs/ocotp key as dcp key
      Dcp_Key_Sel_0,
      --  Select [255:128] from snvs/ocotp key as dcp key
      Dcp_Key_Sel_1)
     with Size => 1;
   for GPR3_DCP_KEY_SEL_Field use
     (Dcp_Key_Sel_0 => 0,
      Dcp_Key_Sel_1 => 1);

   --  This field shows the OCRAM pipeline settings status, controlled by
   --  OCRAM_CTL bits respectively
   type GPR3_OCRAM_STATUS_Field is
     (
      --  read data pipeline configuration valid
      Ocram_Status_0,
      --  read data pipeline control bit changed
      Ocram_Status_1)
     with Size => 4;
   for GPR3_OCRAM_STATUS_Field use
     (Ocram_Status_0 => 0,
      Ocram_Status_1 => 1);

   --  GPR3 General Purpose Register
   type IOMUXC_GPR_GPR3_Register is record
      --  OCRAM_CTL[3] - write address pipeline control bit
      OCRAM_CTL      : IOMUXC_GPR_GPR3_OCRAM_CTL_Field := 16#0#;
      --  Select 128-bit dcp key from 256-bit key from snvs/ocotp
      DCP_KEY_SEL    : GPR3_DCP_KEY_SEL_Field :=
                        NRF_SVD.IOMUXC_GPR.Dcp_Key_Sel_1;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#7F#;
      --  Read-only. This field shows the OCRAM pipeline settings status,
      --  controlled by OCRAM_CTL bits respectively
      OCRAM_STATUS   : GPR3_OCRAM_STATUS_Field :=
                        NRF_SVD.IOMUXC_GPR.Ocram_Status_0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR3_Register use record
      OCRAM_CTL      at 0 range 0 .. 3;
      DCP_KEY_SEL    at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      OCRAM_STATUS   at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  EDMA stop request.
   type GPR4_EDMA_STOP_REQ_Field is
     (
      --  stop request off
      Edma_Stop_Req_0,
      --  stop request on
      Edma_Stop_Req_1)
     with Size => 1;
   for GPR4_EDMA_STOP_REQ_Field use
     (Edma_Stop_Req_0 => 0,
      Edma_Stop_Req_1 => 1);

   --  CAN1 stop request.
   type GPR4_CAN1_STOP_REQ_Field is
     (
      --  stop request off
      Can1_Stop_Req_0,
      --  stop request on
      Can1_Stop_Req_1)
     with Size => 1;
   for GPR4_CAN1_STOP_REQ_Field use
     (Can1_Stop_Req_0 => 0,
      Can1_Stop_Req_1 => 1);

   --  CAN2 stop request.
   type GPR4_CAN2_STOP_REQ_Field is
     (
      --  stop request off
      Can2_Stop_Req_0,
      --  stop request on
      Can2_Stop_Req_1)
     with Size => 1;
   for GPR4_CAN2_STOP_REQ_Field use
     (Can2_Stop_Req_0 => 0,
      Can2_Stop_Req_1 => 1);

   --  TRNG stop request.
   type GPR4_TRNG_STOP_REQ_Field is
     (
      --  stop request off
      Trng_Stop_Req_0,
      --  stop request on
      Trng_Stop_Req_1)
     with Size => 1;
   for GPR4_TRNG_STOP_REQ_Field use
     (Trng_Stop_Req_0 => 0,
      Trng_Stop_Req_1 => 1);

   --  ENET stop request.
   type GPR4_ENET_STOP_REQ_Field is
     (
      --  stop request off
      Enet_Stop_Req_0,
      --  stop request on
      Enet_Stop_Req_1)
     with Size => 1;
   for GPR4_ENET_STOP_REQ_Field use
     (Enet_Stop_Req_0 => 0,
      Enet_Stop_Req_1 => 1);

   --  SAI1 stop request.
   type GPR4_SAI1_STOP_REQ_Field is
     (
      --  stop request off
      Sai1_Stop_Req_0,
      --  stop request on
      Sai1_Stop_Req_1)
     with Size => 1;
   for GPR4_SAI1_STOP_REQ_Field use
     (Sai1_Stop_Req_0 => 0,
      Sai1_Stop_Req_1 => 1);

   --  SAI2 stop request.
   type GPR4_SAI2_STOP_REQ_Field is
     (
      --  stop request off
      Sai2_Stop_Req_0,
      --  stop request on
      Sai2_Stop_Req_1)
     with Size => 1;
   for GPR4_SAI2_STOP_REQ_Field use
     (Sai2_Stop_Req_0 => 0,
      Sai2_Stop_Req_1 => 1);

   --  SAI3 stop request.
   type GPR4_SAI3_STOP_REQ_Field is
     (
      --  stop request off
      Sai3_Stop_Req_0,
      --  stop request on
      Sai3_Stop_Req_1)
     with Size => 1;
   for GPR4_SAI3_STOP_REQ_Field use
     (Sai3_Stop_Req_0 => 0,
      Sai3_Stop_Req_1 => 1);

   --  SEMC stop request.
   type GPR4_SEMC_STOP_REQ_Field is
     (
      --  stop request off
      Semc_Stop_Req_0,
      --  stop request on
      Semc_Stop_Req_1)
     with Size => 1;
   for GPR4_SEMC_STOP_REQ_Field use
     (Semc_Stop_Req_0 => 0,
      Semc_Stop_Req_1 => 1);

   --  PIT stop request.
   type GPR4_PIT_STOP_REQ_Field is
     (
      --  stop request off
      Pit_Stop_Req_0,
      --  stop request on
      Pit_Stop_Req_1)
     with Size => 1;
   for GPR4_PIT_STOP_REQ_Field use
     (Pit_Stop_Req_0 => 0,
      Pit_Stop_Req_1 => 1);

   --  FlexSPI stop request.
   type GPR4_FLEXSPI_STOP_REQ_Field is
     (
      --  stop request off
      Flexspi_Stop_Req_0,
      --  stop request on
      Flexspi_Stop_Req_1)
     with Size => 1;
   for GPR4_FLEXSPI_STOP_REQ_Field use
     (Flexspi_Stop_Req_0 => 0,
      Flexspi_Stop_Req_1 => 1);

   --  FlexIO1 stop request.
   type GPR4_FLEXIO1_STOP_REQ_Field is
     (
      --  stop request off
      Flexio1_Stop_Req_0,
      --  stop request on
      Flexio1_Stop_Req_1)
     with Size => 1;
   for GPR4_FLEXIO1_STOP_REQ_Field use
     (Flexio1_Stop_Req_0 => 0,
      Flexio1_Stop_Req_1 => 1);

   --  FlexIO2 stop request.
   type GPR4_FLEXIO2_STOP_REQ_Field is
     (
      --  stop request off
      Flexio2_Stop_Req_0,
      --  stop request on
      Flexio2_Stop_Req_1)
     with Size => 1;
   for GPR4_FLEXIO2_STOP_REQ_Field use
     (Flexio2_Stop_Req_0 => 0,
      Flexio2_Stop_Req_1 => 1);

   --  EDMA stop acknowledge. This is a status (read-only) bit
   type GPR4_EDMA_STOP_ACK_Field is
     (
      --  EDMA stop acknowledge is not asserted
      Edma_Stop_Ack_0,
      --  EDMA stop acknowledge is asserted (EDMA is in STOP mode).
      Edma_Stop_Ack_1)
     with Size => 1;
   for GPR4_EDMA_STOP_ACK_Field use
     (Edma_Stop_Ack_0 => 0,
      Edma_Stop_Ack_1 => 1);

   --  CAN1 stop acknowledge.
   type GPR4_CAN1_STOP_ACK_Field is
     (
      --  CAN1 stop acknowledge is not asserted
      Can1_Stop_Ack_0,
      --  CAN1 stop acknowledge is asserted
      Can1_Stop_Ack_1)
     with Size => 1;
   for GPR4_CAN1_STOP_ACK_Field use
     (Can1_Stop_Ack_0 => 0,
      Can1_Stop_Ack_1 => 1);

   --  CAN2 stop acknowledge.
   type GPR4_CAN2_STOP_ACK_Field is
     (
      --  CAN2 stop acknowledge is not asserted
      Can2_Stop_Ack_0,
      --  CAN2 stop acknowledge is asserted
      Can2_Stop_Ack_1)
     with Size => 1;
   for GPR4_CAN2_STOP_ACK_Field use
     (Can2_Stop_Ack_0 => 0,
      Can2_Stop_Ack_1 => 1);

   --  TRNG stop acknowledge
   type GPR4_TRNG_STOP_ACK_Field is
     (
      --  ENET1 stop acknowledge is not asserted
      Trng_Stop_Ack_0,
      --  ENET1 stop acknowledge is asserted
      Trng_Stop_Ack_1)
     with Size => 1;
   for GPR4_TRNG_STOP_ACK_Field use
     (Trng_Stop_Ack_0 => 0,
      Trng_Stop_Ack_1 => 1);

   --  ENET stop acknowledge.
   type GPR4_ENET_STOP_ACK_Field is
     (
      --  ENET2 stop acknowledge is not asserted
      Enet_Stop_Ack_0,
      --  ENET2 stop acknowledge is asserted
      Enet_Stop_Ack_1)
     with Size => 1;
   for GPR4_ENET_STOP_ACK_Field use
     (Enet_Stop_Ack_0 => 0,
      Enet_Stop_Ack_1 => 1);

   --  SAI1 stop acknowledge
   type GPR4_SAI1_STOP_ACK_Field is
     (
      --  SAI1 stop acknowledge is not asserted
      Sai1_Stop_Ack_0,
      --  SAI1 stop acknowledge is asserted
      Sai1_Stop_Ack_1)
     with Size => 1;
   for GPR4_SAI1_STOP_ACK_Field use
     (Sai1_Stop_Ack_0 => 0,
      Sai1_Stop_Ack_1 => 1);

   --  SAI2 stop acknowledge
   type GPR4_SAI2_STOP_ACK_Field is
     (
      --  SAI2 stop acknowledge is not asserted
      Sai2_Stop_Ack_0,
      --  SAI2 stop acknowledge is asserted
      Sai2_Stop_Ack_1)
     with Size => 1;
   for GPR4_SAI2_STOP_ACK_Field use
     (Sai2_Stop_Ack_0 => 0,
      Sai2_Stop_Ack_1 => 1);

   --  SAI3 stop acknowledge
   type GPR4_SAI3_STOP_ACK_Field is
     (
      --  SAI3 stop acknowledge is not asserted
      Sai3_Stop_Ack_0,
      --  SAI3 stop acknowledge is asserted
      Sai3_Stop_Ack_1)
     with Size => 1;
   for GPR4_SAI3_STOP_ACK_Field use
     (Sai3_Stop_Ack_0 => 0,
      Sai3_Stop_Ack_1 => 1);

   --  SEMC stop acknowledge
   type GPR4_SEMC_STOP_ACK_Field is
     (
      --  SEMC stop acknowledge is not asserted
      Semc_Stop_Ack_0,
      --  SEMC stop acknowledge is asserted
      Semc_Stop_Ack_1)
     with Size => 1;
   for GPR4_SEMC_STOP_ACK_Field use
     (Semc_Stop_Ack_0 => 0,
      Semc_Stop_Ack_1 => 1);

   --  PIT stop acknowledge
   type GPR4_PIT_STOP_ACK_Field is
     (
      --  PIT stop acknowledge is not asserted
      Pit_Stop_Ack_0,
      --  PIT stop acknowledge is asserted
      Pit_Stop_Ack_1)
     with Size => 1;
   for GPR4_PIT_STOP_ACK_Field use
     (Pit_Stop_Ack_0 => 0,
      Pit_Stop_Ack_1 => 1);

   --  FLEXSPI stop acknowledge
   type GPR4_FLEXSPI_STOP_ACK_Field is
     (
      --  FLEXSPI stop acknowledge is not asserted
      Flexspi_Stop_Ack_0,
      --  FLEXSPI stop acknowledge is asserted
      Flexspi_Stop_Ack_1)
     with Size => 1;
   for GPR4_FLEXSPI_STOP_ACK_Field use
     (Flexspi_Stop_Ack_0 => 0,
      Flexspi_Stop_Ack_1 => 1);

   --  FLEXIO1 stop acknowledge
   type GPR4_FLEXIO1_STOP_ACK_Field is
     (
      --  FLEXIO1 stop acknowledge is not asserted
      Flexio1_Stop_Ack_0,
      --  FLEXIO1 stop acknowledge is asserted
      Flexio1_Stop_Ack_1)
     with Size => 1;
   for GPR4_FLEXIO1_STOP_ACK_Field use
     (Flexio1_Stop_Ack_0 => 0,
      Flexio1_Stop_Ack_1 => 1);

   --  FLEXIO2 stop acknowledge
   type GPR4_FLEXIO2_STOP_ACK_Field is
     (
      --  FLEXIO2 stop acknowledge is not asserted
      Flexio2_Stop_Ack_0,
      --  FLEXIO2 stop acknowledge is asserted (FLEXIO2 is in STOP mode)
      Flexio2_Stop_Ack_1)
     with Size => 1;
   for GPR4_FLEXIO2_STOP_ACK_Field use
     (Flexio2_Stop_Ack_0 => 0,
      Flexio2_Stop_Ack_1 => 1);

   --  GPR4 General Purpose Register
   type IOMUXC_GPR_GPR4_Register is record
      --  EDMA stop request.
      EDMA_STOP_REQ    : GPR4_EDMA_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Edma_Stop_Req_0;
      --  CAN1 stop request.
      CAN1_STOP_REQ    : GPR4_CAN1_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Can1_Stop_Req_0;
      --  CAN2 stop request.
      CAN2_STOP_REQ    : GPR4_CAN2_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Can2_Stop_Req_0;
      --  TRNG stop request.
      TRNG_STOP_REQ    : GPR4_TRNG_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Trng_Stop_Req_0;
      --  ENET stop request.
      ENET_STOP_REQ    : GPR4_ENET_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Enet_Stop_Req_0;
      --  SAI1 stop request.
      SAI1_STOP_REQ    : GPR4_SAI1_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Sai1_Stop_Req_0;
      --  SAI2 stop request.
      SAI2_STOP_REQ    : GPR4_SAI2_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Sai2_Stop_Req_0;
      --  SAI3 stop request.
      SAI3_STOP_REQ    : GPR4_SAI3_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Sai3_Stop_Req_0;
      --  unspecified
      Reserved_8_8     : HAL.Bit := 16#0#;
      --  SEMC stop request.
      SEMC_STOP_REQ    : GPR4_SEMC_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Semc_Stop_Req_0;
      --  PIT stop request.
      PIT_STOP_REQ     : GPR4_PIT_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Pit_Stop_Req_0;
      --  FlexSPI stop request.
      FLEXSPI_STOP_REQ : GPR4_FLEXSPI_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Flexspi_Stop_Req_0;
      --  FlexIO1 stop request.
      FLEXIO1_STOP_REQ : GPR4_FLEXIO1_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Flexio1_Stop_Req_0;
      --  FlexIO2 stop request.
      FLEXIO2_STOP_REQ : GPR4_FLEXIO2_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Flexio2_Stop_Req_0;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Read-only. EDMA stop acknowledge. This is a status (read-only) bit
      EDMA_STOP_ACK    : GPR4_EDMA_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Edma_Stop_Ack_0;
      --  Read-only. CAN1 stop acknowledge.
      CAN1_STOP_ACK    : GPR4_CAN1_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Can1_Stop_Ack_0;
      --  Read-only. CAN2 stop acknowledge.
      CAN2_STOP_ACK    : GPR4_CAN2_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Can2_Stop_Ack_0;
      --  Read-only. TRNG stop acknowledge
      TRNG_STOP_ACK    : GPR4_TRNG_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Trng_Stop_Ack_0;
      --  Read-only. ENET stop acknowledge.
      ENET_STOP_ACK    : GPR4_ENET_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Enet_Stop_Ack_0;
      --  Read-only. SAI1 stop acknowledge
      SAI1_STOP_ACK    : GPR4_SAI1_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Sai1_Stop_Ack_0;
      --  Read-only. SAI2 stop acknowledge
      SAI2_STOP_ACK    : GPR4_SAI2_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Sai2_Stop_Ack_0;
      --  Read-only. SAI3 stop acknowledge
      SAI3_STOP_ACK    : GPR4_SAI3_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Sai3_Stop_Ack_0;
      --  unspecified
      Reserved_24_24   : HAL.Bit := 16#0#;
      --  Read-only. SEMC stop acknowledge
      SEMC_STOP_ACK    : GPR4_SEMC_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Semc_Stop_Ack_0;
      --  Read-only. PIT stop acknowledge
      PIT_STOP_ACK     : GPR4_PIT_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Pit_Stop_Ack_0;
      --  Read-only. FLEXSPI stop acknowledge
      FLEXSPI_STOP_ACK : GPR4_FLEXSPI_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Flexspi_Stop_Ack_0;
      --  Read-only. FLEXIO1 stop acknowledge
      FLEXIO1_STOP_ACK : GPR4_FLEXIO1_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Flexio1_Stop_Ack_0;
      --  Read-only. FLEXIO2 stop acknowledge
      FLEXIO2_STOP_ACK : GPR4_FLEXIO2_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Flexio2_Stop_Ack_0;
      --  unspecified
      Reserved_30_31   : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR4_Register use record
      EDMA_STOP_REQ    at 0 range 0 .. 0;
      CAN1_STOP_REQ    at 0 range 1 .. 1;
      CAN2_STOP_REQ    at 0 range 2 .. 2;
      TRNG_STOP_REQ    at 0 range 3 .. 3;
      ENET_STOP_REQ    at 0 range 4 .. 4;
      SAI1_STOP_REQ    at 0 range 5 .. 5;
      SAI2_STOP_REQ    at 0 range 6 .. 6;
      SAI3_STOP_REQ    at 0 range 7 .. 7;
      Reserved_8_8     at 0 range 8 .. 8;
      SEMC_STOP_REQ    at 0 range 9 .. 9;
      PIT_STOP_REQ     at 0 range 10 .. 10;
      FLEXSPI_STOP_REQ at 0 range 11 .. 11;
      FLEXIO1_STOP_REQ at 0 range 12 .. 12;
      FLEXIO2_STOP_REQ at 0 range 13 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      EDMA_STOP_ACK    at 0 range 16 .. 16;
      CAN1_STOP_ACK    at 0 range 17 .. 17;
      CAN2_STOP_ACK    at 0 range 18 .. 18;
      TRNG_STOP_ACK    at 0 range 19 .. 19;
      ENET_STOP_ACK    at 0 range 20 .. 20;
      SAI1_STOP_ACK    at 0 range 21 .. 21;
      SAI2_STOP_ACK    at 0 range 22 .. 22;
      SAI3_STOP_ACK    at 0 range 23 .. 23;
      Reserved_24_24   at 0 range 24 .. 24;
      SEMC_STOP_ACK    at 0 range 25 .. 25;
      PIT_STOP_ACK     at 0 range 26 .. 26;
      FLEXSPI_STOP_ACK at 0 range 27 .. 27;
      FLEXIO1_STOP_ACK at 0 range 28 .. 28;
      FLEXIO2_STOP_ACK at 0 range 29 .. 29;
      Reserved_30_31   at 0 range 30 .. 31;
   end record;

   --  WDOG1 Timeout Mask
   type GPR5_WDOG1_MASK_Field is
     (
      --  WDOG1 Timeout behaves normally
      Wdog1_Mask_0,
      --  WDOG1 Timeout is masked
      Wdog1_Mask_1)
     with Size => 1;
   for GPR5_WDOG1_MASK_Field use
     (Wdog1_Mask_0 => 0,
      Wdog1_Mask_1 => 1);

   --  WDOG2 Timeout Mask
   type GPR5_WDOG2_MASK_Field is
     (
      --  WDOG2 Timeout behaves normally
      Wdog2_Mask_0,
      --  WDOG2 Timeout is masked
      Wdog2_Mask_1)
     with Size => 1;
   for GPR5_WDOG2_MASK_Field use
     (Wdog2_Mask_0 => 0,
      Wdog2_Mask_1 => 1);

   --  GPT2 input capture channel 1 source select
   type GPR5_GPT2_CAPIN1_SEL_Field is
     (
      --  source from pad
      Gpt2_Capin1_Sel_0,
      --  source from enet1.ipp_do_mac0_timer[3]
      Gpt2_Capin1_Sel_1)
     with Size => 1;
   for GPR5_GPT2_CAPIN1_SEL_Field use
     (Gpt2_Capin1_Sel_0 => 0,
      Gpt2_Capin1_Sel_1 => 1);

   --  GPT2 input capture channel 2 source select
   type GPR5_GPT2_CAPIN2_SEL_Field is
     (
      --  source from pad
      Gpt2_Capin2_Sel_0,
      --  source from enet2.ipp_do_mac0_timer[3]
      Gpt2_Capin2_Sel_1)
     with Size => 1;
   for GPR5_GPT2_CAPIN2_SEL_Field use
     (Gpt2_Capin2_Sel_0 => 0,
      Gpt2_Capin2_Sel_1 => 1);

   --  ENET input timer event3 source select
   type GPR5_ENET_EVENT3IN_SEL_Field is
     (
      --  event3 source input from pad
      Enet_Event3In_Sel_0,
      --  event3 source input from gpt2.ipp_do_cmpout1
      Enet_Event3In_Sel_1)
     with Size => 1;
   for GPR5_ENET_EVENT3IN_SEL_Field use
     (Enet_Event3In_Sel_0 => 0,
      Enet_Event3In_Sel_1 => 1);

   --  GPT1 1 MHz clock source select
   type GPR5_VREF_1M_CLK_GPT1_Field is
     (
      --  GPT1 ipg_clk_highfreq driven by IPG_PERCLK
      Vref_1M_Clk_Gpt1_0,
      --  GPT1 ipg_clk_highfreq driven by anatop 1 MHz clock
      Vref_1M_Clk_Gpt1_1)
     with Size => 1;
   for GPR5_VREF_1M_CLK_GPT1_Field use
     (Vref_1M_Clk_Gpt1_0 => 0,
      Vref_1M_Clk_Gpt1_1 => 1);

   --  GPT2 1 MHz clock source select
   type GPR5_VREF_1M_CLK_GPT2_Field is
     (
      --  GPT2 ipg_clk_highfreq driven by IPG_PERCLK
      Vref_1M_Clk_Gpt2_0,
      --  GPT2 ipg_clk_highfreq driven by anatop 1 MHz clock
      Vref_1M_Clk_Gpt2_1)
     with Size => 1;
   for GPR5_VREF_1M_CLK_GPT2_Field use
     (Vref_1M_Clk_Gpt2_0 => 0,
      Vref_1M_Clk_Gpt2_1 => 1);

   --  GPR5 General Purpose Register
   type IOMUXC_GPR_GPR5_Register is record
      --  unspecified
      Reserved_0_5      : HAL.UInt6 := 16#0#;
      --  WDOG1 Timeout Mask
      WDOG1_MASK        : GPR5_WDOG1_MASK_Field :=
                           NRF_SVD.IOMUXC_GPR.Wdog1_Mask_0;
      --  WDOG2 Timeout Mask
      WDOG2_MASK        : GPR5_WDOG2_MASK_Field :=
                           NRF_SVD.IOMUXC_GPR.Wdog2_Mask_0;
      --  unspecified
      Reserved_8_22     : HAL.UInt15 := 16#0#;
      --  GPT2 input capture channel 1 source select
      GPT2_CAPIN1_SEL   : GPR5_GPT2_CAPIN1_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Gpt2_Capin1_Sel_0;
      --  GPT2 input capture channel 2 source select
      GPT2_CAPIN2_SEL   : GPR5_GPT2_CAPIN2_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Gpt2_Capin2_Sel_0;
      --  ENET input timer event3 source select
      ENET_EVENT3IN_SEL : GPR5_ENET_EVENT3IN_SEL_Field :=
                           NRF_SVD.IOMUXC_GPR.Enet_Event3In_Sel_0;
      --  unspecified
      Reserved_26_27    : HAL.UInt2 := 16#0#;
      --  GPT1 1 MHz clock source select
      VREF_1M_CLK_GPT1  : GPR5_VREF_1M_CLK_GPT1_Field :=
                           NRF_SVD.IOMUXC_GPR.Vref_1M_Clk_Gpt1_0;
      --  GPT2 1 MHz clock source select
      VREF_1M_CLK_GPT2  : GPR5_VREF_1M_CLK_GPT2_Field :=
                           NRF_SVD.IOMUXC_GPR.Vref_1M_Clk_Gpt2_0;
      --  unspecified
      Reserved_30_31    : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR5_Register use record
      Reserved_0_5      at 0 range 0 .. 5;
      WDOG1_MASK        at 0 range 6 .. 6;
      WDOG2_MASK        at 0 range 7 .. 7;
      Reserved_8_22     at 0 range 8 .. 22;
      GPT2_CAPIN1_SEL   at 0 range 23 .. 23;
      GPT2_CAPIN2_SEL   at 0 range 24 .. 24;
      ENET_EVENT3IN_SEL at 0 range 25 .. 25;
      Reserved_26_27    at 0 range 26 .. 27;
      VREF_1M_CLK_GPT1  at 0 range 28 .. 28;
      VREF_1M_CLK_GPT2  at 0 range 29 .. 29;
      Reserved_30_31    at 0 range 30 .. 31;
   end record;

   --  QTIMER1 TMR0 input select
   type GPR6_QTIMER1_TRM0_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer1_Trm0_Input_Sel_0,
      --  input from XBAR
      Qtimer1_Trm0_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER1_TRM0_INPUT_SEL_Field use
     (Qtimer1_Trm0_Input_Sel_0 => 0,
      Qtimer1_Trm0_Input_Sel_1 => 1);

   --  QTIMER1 TMR1 input select
   type GPR6_QTIMER1_TRM1_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer1_Trm1_Input_Sel_0,
      --  input from XBAR
      Qtimer1_Trm1_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER1_TRM1_INPUT_SEL_Field use
     (Qtimer1_Trm1_Input_Sel_0 => 0,
      Qtimer1_Trm1_Input_Sel_1 => 1);

   --  QTIMER1 TMR2 input select
   type GPR6_QTIMER1_TRM2_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer1_Trm2_Input_Sel_0,
      --  input from XBAR
      Qtimer1_Trm2_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER1_TRM2_INPUT_SEL_Field use
     (Qtimer1_Trm2_Input_Sel_0 => 0,
      Qtimer1_Trm2_Input_Sel_1 => 1);

   --  QTIMER1 TMR3 input select
   type GPR6_QTIMER1_TRM3_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer1_Trm3_Input_Sel_0,
      --  input from XBAR
      Qtimer1_Trm3_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER1_TRM3_INPUT_SEL_Field use
     (Qtimer1_Trm3_Input_Sel_0 => 0,
      Qtimer1_Trm3_Input_Sel_1 => 1);

   --  QTIMER2 TMR0 input select
   type GPR6_QTIMER2_TRM0_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer2_Trm0_Input_Sel_0,
      --  input from XBAR
      Qtimer2_Trm0_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER2_TRM0_INPUT_SEL_Field use
     (Qtimer2_Trm0_Input_Sel_0 => 0,
      Qtimer2_Trm0_Input_Sel_1 => 1);

   --  QTIMER2 TMR1 input select
   type GPR6_QTIMER2_TRM1_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer2_Trm1_Input_Sel_0,
      --  input from XBAR
      Qtimer2_Trm1_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER2_TRM1_INPUT_SEL_Field use
     (Qtimer2_Trm1_Input_Sel_0 => 0,
      Qtimer2_Trm1_Input_Sel_1 => 1);

   --  QTIMER2 TMR2 input select
   type GPR6_QTIMER2_TRM2_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer2_Trm2_Input_Sel_0,
      --  input from XBAR
      Qtimer2_Trm2_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER2_TRM2_INPUT_SEL_Field use
     (Qtimer2_Trm2_Input_Sel_0 => 0,
      Qtimer2_Trm2_Input_Sel_1 => 1);

   --  QTIMER2 TMR3 input select
   type GPR6_QTIMER2_TRM3_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer2_Trm3_Input_Sel_0,
      --  input from XBAR
      Qtimer2_Trm3_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER2_TRM3_INPUT_SEL_Field use
     (Qtimer2_Trm3_Input_Sel_0 => 0,
      Qtimer2_Trm3_Input_Sel_1 => 1);

   --  QTIMER3 TMR0 input select
   type GPR6_QTIMER3_TRM0_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer3_Trm0_Input_Sel_0,
      --  input from XBAR
      Qtimer3_Trm0_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER3_TRM0_INPUT_SEL_Field use
     (Qtimer3_Trm0_Input_Sel_0 => 0,
      Qtimer3_Trm0_Input_Sel_1 => 1);

   --  QTIMER3 TMR1 input select
   type GPR6_QTIMER3_TRM1_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer3_Trm1_Input_Sel_0,
      --  input from XBAR
      Qtimer3_Trm1_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER3_TRM1_INPUT_SEL_Field use
     (Qtimer3_Trm1_Input_Sel_0 => 0,
      Qtimer3_Trm1_Input_Sel_1 => 1);

   --  QTIMER3 TMR2 input select
   type GPR6_QTIMER3_TRM2_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer3_Trm2_Input_Sel_0,
      --  input from XBAR
      Qtimer3_Trm2_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER3_TRM2_INPUT_SEL_Field use
     (Qtimer3_Trm2_Input_Sel_0 => 0,
      Qtimer3_Trm2_Input_Sel_1 => 1);

   --  QTIMER3 TMR3 input select
   type GPR6_QTIMER3_TRM3_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer3_Trm3_Input_Sel_0,
      --  input from XBAR
      Qtimer3_Trm3_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER3_TRM3_INPUT_SEL_Field use
     (Qtimer3_Trm3_Input_Sel_0 => 0,
      Qtimer3_Trm3_Input_Sel_1 => 1);

   --  QTIMER4 TMR0 input select
   type GPR6_QTIMER4_TRM0_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer4_Trm0_Input_Sel_0,
      --  input from XBAR
      Qtimer4_Trm0_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER4_TRM0_INPUT_SEL_Field use
     (Qtimer4_Trm0_Input_Sel_0 => 0,
      Qtimer4_Trm0_Input_Sel_1 => 1);

   --  QTIMER4 TMR1 input select
   type GPR6_QTIMER4_TRM1_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer4_Trm1_Input_Sel_0,
      --  input from XBAR
      Qtimer4_Trm1_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER4_TRM1_INPUT_SEL_Field use
     (Qtimer4_Trm1_Input_Sel_0 => 0,
      Qtimer4_Trm1_Input_Sel_1 => 1);

   --  QTIMER4 TMR2 input select
   type GPR6_QTIMER4_TRM2_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer4_Trm2_Input_Sel_0,
      --  input from XBAR
      Qtimer4_Trm2_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER4_TRM2_INPUT_SEL_Field use
     (Qtimer4_Trm2_Input_Sel_0 => 0,
      Qtimer4_Trm2_Input_Sel_1 => 1);

   --  QTIMER4 TMR3 input select
   type GPR6_QTIMER4_TRM3_INPUT_SEL_Field is
     (
      --  input from IOMUX
      Qtimer4_Trm3_Input_Sel_0,
      --  input from XBAR
      Qtimer4_Trm3_Input_Sel_1)
     with Size => 1;
   for GPR6_QTIMER4_TRM3_INPUT_SEL_Field use
     (Qtimer4_Trm3_Input_Sel_0 => 0,
      Qtimer4_Trm3_Input_Sel_1 => 1);

   --  IOMUXC XBAR_INOUT4 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_4_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_4_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_4_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_4_Field use
     (Iomuxc_Xbar_Dir_Sel_4_0 => 0,
      Iomuxc_Xbar_Dir_Sel_4_1 => 1);

   --  IOMUXC XBAR_INOUT5 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_5_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_5_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_5_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_5_Field use
     (Iomuxc_Xbar_Dir_Sel_5_0 => 0,
      Iomuxc_Xbar_Dir_Sel_5_1 => 1);

   --  IOMUXC XBAR_INOUT6 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_6_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_6_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_6_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_6_Field use
     (Iomuxc_Xbar_Dir_Sel_6_0 => 0,
      Iomuxc_Xbar_Dir_Sel_6_1 => 1);

   --  IOMUXC XBAR_INOUT7 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_7_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_7_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_7_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_7_Field use
     (Iomuxc_Xbar_Dir_Sel_7_0 => 0,
      Iomuxc_Xbar_Dir_Sel_7_1 => 1);

   --  IOMUXC XBAR_INOUT8 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_8_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_8_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_8_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_8_Field use
     (Iomuxc_Xbar_Dir_Sel_8_0 => 0,
      Iomuxc_Xbar_Dir_Sel_8_1 => 1);

   --  IOMUXC XBAR_INOUT9 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_9_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_9_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_9_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_9_Field use
     (Iomuxc_Xbar_Dir_Sel_9_0 => 0,
      Iomuxc_Xbar_Dir_Sel_9_1 => 1);

   --  IOMUXC XBAR_INOUT10 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_10_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_10_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_10_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_10_Field use
     (Iomuxc_Xbar_Dir_Sel_10_0 => 0,
      Iomuxc_Xbar_Dir_Sel_10_1 => 1);

   --  IOMUXC XBAR_INOUT11 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_11_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_11_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_11_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_11_Field use
     (Iomuxc_Xbar_Dir_Sel_11_0 => 0,
      Iomuxc_Xbar_Dir_Sel_11_1 => 1);

   --  IOMUXC XBAR_INOUT12 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_12_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_12_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_12_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_12_Field use
     (Iomuxc_Xbar_Dir_Sel_12_0 => 0,
      Iomuxc_Xbar_Dir_Sel_12_1 => 1);

   --  IOMUXC XBAR_INOUT13 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_13_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_13_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_13_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_13_Field use
     (Iomuxc_Xbar_Dir_Sel_13_0 => 0,
      Iomuxc_Xbar_Dir_Sel_13_1 => 1);

   --  IOMUXC XBAR_INOUT14 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_14_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_14_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_14_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_14_Field use
     (Iomuxc_Xbar_Dir_Sel_14_0 => 0,
      Iomuxc_Xbar_Dir_Sel_14_1 => 1);

   --  IOMUXC XBAR_INOUT15 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_15_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_15_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_15_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_15_Field use
     (Iomuxc_Xbar_Dir_Sel_15_0 => 0,
      Iomuxc_Xbar_Dir_Sel_15_1 => 1);

   --  IOMUXC XBAR_INOUT16 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_16_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_16_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_16_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_16_Field use
     (Iomuxc_Xbar_Dir_Sel_16_0 => 0,
      Iomuxc_Xbar_Dir_Sel_16_1 => 1);

   --  IOMUXC XBAR_INOUT17 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_17_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_17_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_17_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_17_Field use
     (Iomuxc_Xbar_Dir_Sel_17_0 => 0,
      Iomuxc_Xbar_Dir_Sel_17_1 => 1);

   --  IOMUXC XBAR_INOUT18 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_18_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_18_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_18_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_18_Field use
     (Iomuxc_Xbar_Dir_Sel_18_0 => 0,
      Iomuxc_Xbar_Dir_Sel_18_1 => 1);

   --  IOMUXC XBAR_INOUT19 function direction select
   type GPR6_IOMUXC_XBAR_DIR_SEL_19_Field is
     (
      --  XBAR_INOUT as input
      Iomuxc_Xbar_Dir_Sel_19_0,
      --  XBAR_INOUT as output
      Iomuxc_Xbar_Dir_Sel_19_1)
     with Size => 1;
   for GPR6_IOMUXC_XBAR_DIR_SEL_19_Field use
     (Iomuxc_Xbar_Dir_Sel_19_0 => 0,
      Iomuxc_Xbar_Dir_Sel_19_1 => 1);

   --  GPR6 General Purpose Register
   type IOMUXC_GPR_GPR6_Register is record
      --  QTIMER1 TMR0 input select
      QTIMER1_TRM0_INPUT_SEL : GPR6_QTIMER1_TRM0_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer1_Trm0_Input_Sel_0;
      --  QTIMER1 TMR1 input select
      QTIMER1_TRM1_INPUT_SEL : GPR6_QTIMER1_TRM1_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer1_Trm1_Input_Sel_0;
      --  QTIMER1 TMR2 input select
      QTIMER1_TRM2_INPUT_SEL : GPR6_QTIMER1_TRM2_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer1_Trm2_Input_Sel_0;
      --  QTIMER1 TMR3 input select
      QTIMER1_TRM3_INPUT_SEL : GPR6_QTIMER1_TRM3_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer1_Trm3_Input_Sel_0;
      --  QTIMER2 TMR0 input select
      QTIMER2_TRM0_INPUT_SEL : GPR6_QTIMER2_TRM0_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer2_Trm0_Input_Sel_0;
      --  QTIMER2 TMR1 input select
      QTIMER2_TRM1_INPUT_SEL : GPR6_QTIMER2_TRM1_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer2_Trm1_Input_Sel_0;
      --  QTIMER2 TMR2 input select
      QTIMER2_TRM2_INPUT_SEL : GPR6_QTIMER2_TRM2_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer2_Trm2_Input_Sel_0;
      --  QTIMER2 TMR3 input select
      QTIMER2_TRM3_INPUT_SEL : GPR6_QTIMER2_TRM3_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer2_Trm3_Input_Sel_0;
      --  QTIMER3 TMR0 input select
      QTIMER3_TRM0_INPUT_SEL : GPR6_QTIMER3_TRM0_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer3_Trm0_Input_Sel_0;
      --  QTIMER3 TMR1 input select
      QTIMER3_TRM1_INPUT_SEL : GPR6_QTIMER3_TRM1_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer3_Trm1_Input_Sel_0;
      --  QTIMER3 TMR2 input select
      QTIMER3_TRM2_INPUT_SEL : GPR6_QTIMER3_TRM2_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer3_Trm2_Input_Sel_0;
      --  QTIMER3 TMR3 input select
      QTIMER3_TRM3_INPUT_SEL : GPR6_QTIMER3_TRM3_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer3_Trm3_Input_Sel_0;
      --  QTIMER4 TMR0 input select
      QTIMER4_TRM0_INPUT_SEL : GPR6_QTIMER4_TRM0_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer4_Trm0_Input_Sel_0;
      --  QTIMER4 TMR1 input select
      QTIMER4_TRM1_INPUT_SEL : GPR6_QTIMER4_TRM1_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer4_Trm1_Input_Sel_0;
      --  QTIMER4 TMR2 input select
      QTIMER4_TRM2_INPUT_SEL : GPR6_QTIMER4_TRM2_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer4_Trm2_Input_Sel_0;
      --  QTIMER4 TMR3 input select
      QTIMER4_TRM3_INPUT_SEL : GPR6_QTIMER4_TRM3_INPUT_SEL_Field :=
                                NRF_SVD.IOMUXC_GPR.Qtimer4_Trm3_Input_Sel_0;
      --  IOMUXC XBAR_INOUT4 function direction select
      IOMUXC_XBAR_DIR_SEL_4  : GPR6_IOMUXC_XBAR_DIR_SEL_4_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_4_0;
      --  IOMUXC XBAR_INOUT5 function direction select
      IOMUXC_XBAR_DIR_SEL_5  : GPR6_IOMUXC_XBAR_DIR_SEL_5_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_5_0;
      --  IOMUXC XBAR_INOUT6 function direction select
      IOMUXC_XBAR_DIR_SEL_6  : GPR6_IOMUXC_XBAR_DIR_SEL_6_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_6_0;
      --  IOMUXC XBAR_INOUT7 function direction select
      IOMUXC_XBAR_DIR_SEL_7  : GPR6_IOMUXC_XBAR_DIR_SEL_7_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_7_0;
      --  IOMUXC XBAR_INOUT8 function direction select
      IOMUXC_XBAR_DIR_SEL_8  : GPR6_IOMUXC_XBAR_DIR_SEL_8_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_8_0;
      --  IOMUXC XBAR_INOUT9 function direction select
      IOMUXC_XBAR_DIR_SEL_9  : GPR6_IOMUXC_XBAR_DIR_SEL_9_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_9_0;
      --  IOMUXC XBAR_INOUT10 function direction select
      IOMUXC_XBAR_DIR_SEL_10 : GPR6_IOMUXC_XBAR_DIR_SEL_10_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_10_0;
      --  IOMUXC XBAR_INOUT11 function direction select
      IOMUXC_XBAR_DIR_SEL_11 : GPR6_IOMUXC_XBAR_DIR_SEL_11_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_11_0;
      --  IOMUXC XBAR_INOUT12 function direction select
      IOMUXC_XBAR_DIR_SEL_12 : GPR6_IOMUXC_XBAR_DIR_SEL_12_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_12_0;
      --  IOMUXC XBAR_INOUT13 function direction select
      IOMUXC_XBAR_DIR_SEL_13 : GPR6_IOMUXC_XBAR_DIR_SEL_13_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_13_0;
      --  IOMUXC XBAR_INOUT14 function direction select
      IOMUXC_XBAR_DIR_SEL_14 : GPR6_IOMUXC_XBAR_DIR_SEL_14_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_14_0;
      --  IOMUXC XBAR_INOUT15 function direction select
      IOMUXC_XBAR_DIR_SEL_15 : GPR6_IOMUXC_XBAR_DIR_SEL_15_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_15_0;
      --  IOMUXC XBAR_INOUT16 function direction select
      IOMUXC_XBAR_DIR_SEL_16 : GPR6_IOMUXC_XBAR_DIR_SEL_16_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_16_0;
      --  IOMUXC XBAR_INOUT17 function direction select
      IOMUXC_XBAR_DIR_SEL_17 : GPR6_IOMUXC_XBAR_DIR_SEL_17_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_17_0;
      --  IOMUXC XBAR_INOUT18 function direction select
      IOMUXC_XBAR_DIR_SEL_18 : GPR6_IOMUXC_XBAR_DIR_SEL_18_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_18_0;
      --  IOMUXC XBAR_INOUT19 function direction select
      IOMUXC_XBAR_DIR_SEL_19 : GPR6_IOMUXC_XBAR_DIR_SEL_19_Field :=
                                NRF_SVD.IOMUXC_GPR.Iomuxc_Xbar_Dir_Sel_19_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR6_Register use record
      QTIMER1_TRM0_INPUT_SEL at 0 range 0 .. 0;
      QTIMER1_TRM1_INPUT_SEL at 0 range 1 .. 1;
      QTIMER1_TRM2_INPUT_SEL at 0 range 2 .. 2;
      QTIMER1_TRM3_INPUT_SEL at 0 range 3 .. 3;
      QTIMER2_TRM0_INPUT_SEL at 0 range 4 .. 4;
      QTIMER2_TRM1_INPUT_SEL at 0 range 5 .. 5;
      QTIMER2_TRM2_INPUT_SEL at 0 range 6 .. 6;
      QTIMER2_TRM3_INPUT_SEL at 0 range 7 .. 7;
      QTIMER3_TRM0_INPUT_SEL at 0 range 8 .. 8;
      QTIMER3_TRM1_INPUT_SEL at 0 range 9 .. 9;
      QTIMER3_TRM2_INPUT_SEL at 0 range 10 .. 10;
      QTIMER3_TRM3_INPUT_SEL at 0 range 11 .. 11;
      QTIMER4_TRM0_INPUT_SEL at 0 range 12 .. 12;
      QTIMER4_TRM1_INPUT_SEL at 0 range 13 .. 13;
      QTIMER4_TRM2_INPUT_SEL at 0 range 14 .. 14;
      QTIMER4_TRM3_INPUT_SEL at 0 range 15 .. 15;
      IOMUXC_XBAR_DIR_SEL_4  at 0 range 16 .. 16;
      IOMUXC_XBAR_DIR_SEL_5  at 0 range 17 .. 17;
      IOMUXC_XBAR_DIR_SEL_6  at 0 range 18 .. 18;
      IOMUXC_XBAR_DIR_SEL_7  at 0 range 19 .. 19;
      IOMUXC_XBAR_DIR_SEL_8  at 0 range 20 .. 20;
      IOMUXC_XBAR_DIR_SEL_9  at 0 range 21 .. 21;
      IOMUXC_XBAR_DIR_SEL_10 at 0 range 22 .. 22;
      IOMUXC_XBAR_DIR_SEL_11 at 0 range 23 .. 23;
      IOMUXC_XBAR_DIR_SEL_12 at 0 range 24 .. 24;
      IOMUXC_XBAR_DIR_SEL_13 at 0 range 25 .. 25;
      IOMUXC_XBAR_DIR_SEL_14 at 0 range 26 .. 26;
      IOMUXC_XBAR_DIR_SEL_15 at 0 range 27 .. 27;
      IOMUXC_XBAR_DIR_SEL_16 at 0 range 28 .. 28;
      IOMUXC_XBAR_DIR_SEL_17 at 0 range 29 .. 29;
      IOMUXC_XBAR_DIR_SEL_18 at 0 range 30 .. 30;
      IOMUXC_XBAR_DIR_SEL_19 at 0 range 31 .. 31;
   end record;

   --  LPI2C1 stop request
   type GPR7_LPI2C1_STOP_REQ_Field is
     (
      --  stop request off
      Lpi2C1_Stop_Req_0,
      --  stop request on
      Lpi2C1_Stop_Req_1)
     with Size => 1;
   for GPR7_LPI2C1_STOP_REQ_Field use
     (Lpi2C1_Stop_Req_0 => 0,
      Lpi2C1_Stop_Req_1 => 1);

   --  LPI2C2 stop request
   type GPR7_LPI2C2_STOP_REQ_Field is
     (
      --  stop request off
      Lpi2C2_Stop_Req_0,
      --  stop request on
      Lpi2C2_Stop_Req_1)
     with Size => 1;
   for GPR7_LPI2C2_STOP_REQ_Field use
     (Lpi2C2_Stop_Req_0 => 0,
      Lpi2C2_Stop_Req_1 => 1);

   --  LPI2C3 stop request
   type GPR7_LPI2C3_STOP_REQ_Field is
     (
      --  stop request off
      Lpi2C3_Stop_Req_0,
      --  stop request on
      Lpi2C3_Stop_Req_1)
     with Size => 1;
   for GPR7_LPI2C3_STOP_REQ_Field use
     (Lpi2C3_Stop_Req_0 => 0,
      Lpi2C3_Stop_Req_1 => 1);

   --  LPI2C4 stop request
   type GPR7_LPI2C4_STOP_REQ_Field is
     (
      --  stop request off
      Lpi2C4_Stop_Req_0,
      --  stop request on
      Lpi2C4_Stop_Req_1)
     with Size => 1;
   for GPR7_LPI2C4_STOP_REQ_Field use
     (Lpi2C4_Stop_Req_0 => 0,
      Lpi2C4_Stop_Req_1 => 1);

   --  LPSPI1 stop request
   type GPR7_LPSPI1_STOP_REQ_Field is
     (
      --  stop request off
      Lpspi1_Stop_Req_0,
      --  stop request on
      Lpspi1_Stop_Req_1)
     with Size => 1;
   for GPR7_LPSPI1_STOP_REQ_Field use
     (Lpspi1_Stop_Req_0 => 0,
      Lpspi1_Stop_Req_1 => 1);

   --  LPSPI2 stop request
   type GPR7_LPSPI2_STOP_REQ_Field is
     (
      --  stop request off
      Lpspi2_Stop_Req_0,
      --  stop request on
      Lpspi2_Stop_Req_1)
     with Size => 1;
   for GPR7_LPSPI2_STOP_REQ_Field use
     (Lpspi2_Stop_Req_0 => 0,
      Lpspi2_Stop_Req_1 => 1);

   --  LPSPI3 stop request
   type GPR7_LPSPI3_STOP_REQ_Field is
     (
      --  stop request off
      Lpspi3_Stop_Req_0,
      --  stop request on
      Lpspi3_Stop_Req_1)
     with Size => 1;
   for GPR7_LPSPI3_STOP_REQ_Field use
     (Lpspi3_Stop_Req_0 => 0,
      Lpspi3_Stop_Req_1 => 1);

   --  LPSPI4 stop request
   type GPR7_LPSPI4_STOP_REQ_Field is
     (
      --  stop request off
      Lpspi4_Stop_Req_0,
      --  stop request on
      Lpspi4_Stop_Req_1)
     with Size => 1;
   for GPR7_LPSPI4_STOP_REQ_Field use
     (Lpspi4_Stop_Req_0 => 0,
      Lpspi4_Stop_Req_1 => 1);

   --  LPUART1 stop request
   type GPR7_LPUART1_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart1_Stop_Req_0,
      --  stop request on
      Lpuart1_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART1_STOP_REQ_Field use
     (Lpuart1_Stop_Req_0 => 0,
      Lpuart1_Stop_Req_1 => 1);

   --  LPUART1 stop request
   type GPR7_LPUART2_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart2_Stop_Req_0,
      --  stop request on
      Lpuart2_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART2_STOP_REQ_Field use
     (Lpuart2_Stop_Req_0 => 0,
      Lpuart2_Stop_Req_1 => 1);

   --  LPUART3 stop request
   type GPR7_LPUART3_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart3_Stop_Req_0,
      --  stop request on
      Lpuart3_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART3_STOP_REQ_Field use
     (Lpuart3_Stop_Req_0 => 0,
      Lpuart3_Stop_Req_1 => 1);

   --  LPUART4 stop request
   type GPR7_LPUART4_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart4_Stop_Req_0,
      --  stop request on
      Lpuart4_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART4_STOP_REQ_Field use
     (Lpuart4_Stop_Req_0 => 0,
      Lpuart4_Stop_Req_1 => 1);

   --  LPUART5 stop request
   type GPR7_LPUART5_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart5_Stop_Req_0,
      --  stop request on
      Lpuart5_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART5_STOP_REQ_Field use
     (Lpuart5_Stop_Req_0 => 0,
      Lpuart5_Stop_Req_1 => 1);

   --  LPUART6 stop request
   type GPR7_LPUART6_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart6_Stop_Req_0,
      --  stop request on
      Lpuart6_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART6_STOP_REQ_Field use
     (Lpuart6_Stop_Req_0 => 0,
      Lpuart6_Stop_Req_1 => 1);

   --  LPUART7 stop request
   type GPR7_LPUART7_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart7_Stop_Req_0,
      --  stop request on
      Lpuart7_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART7_STOP_REQ_Field use
     (Lpuart7_Stop_Req_0 => 0,
      Lpuart7_Stop_Req_1 => 1);

   --  LPUART8 stop request
   type GPR7_LPUART8_STOP_REQ_Field is
     (
      --  stop request off
      Lpuart8_Stop_Req_0,
      --  stop request on
      Lpuart8_Stop_Req_1)
     with Size => 1;
   for GPR7_LPUART8_STOP_REQ_Field use
     (Lpuart8_Stop_Req_0 => 0,
      Lpuart8_Stop_Req_1 => 1);

   --  LPI2C1 stop acknowledge
   type GPR7_LPI2C1_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpi2C1_Stop_Ack_0,
      --  stop acknowledge is asserted (the module is in Stop mode)
      Lpi2C1_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPI2C1_STOP_ACK_Field use
     (Lpi2C1_Stop_Ack_0 => 0,
      Lpi2C1_Stop_Ack_1 => 1);

   --  LPI2C2 stop acknowledge
   type GPR7_LPI2C2_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpi2C2_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpi2C2_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPI2C2_STOP_ACK_Field use
     (Lpi2C2_Stop_Ack_0 => 0,
      Lpi2C2_Stop_Ack_1 => 1);

   --  LPI2C3 stop acknowledge
   type GPR7_LPI2C3_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpi2C3_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpi2C3_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPI2C3_STOP_ACK_Field use
     (Lpi2C3_Stop_Ack_0 => 0,
      Lpi2C3_Stop_Ack_1 => 1);

   --  LPI2C4 stop acknowledge
   type GPR7_LPI2C4_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpi2C4_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpi2C4_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPI2C4_STOP_ACK_Field use
     (Lpi2C4_Stop_Ack_0 => 0,
      Lpi2C4_Stop_Ack_1 => 1);

   --  LPSPI1 stop acknowledge
   type GPR7_LPSPI1_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpspi1_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpspi1_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPSPI1_STOP_ACK_Field use
     (Lpspi1_Stop_Ack_0 => 0,
      Lpspi1_Stop_Ack_1 => 1);

   --  LPSPI2 stop acknowledge
   type GPR7_LPSPI2_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpspi2_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpspi2_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPSPI2_STOP_ACK_Field use
     (Lpspi2_Stop_Ack_0 => 0,
      Lpspi2_Stop_Ack_1 => 1);

   --  LPSPI3 stop acknowledge
   type GPR7_LPSPI3_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpspi3_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpspi3_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPSPI3_STOP_ACK_Field use
     (Lpspi3_Stop_Ack_0 => 0,
      Lpspi3_Stop_Ack_1 => 1);

   --  LPSPI4 stop acknowledge
   type GPR7_LPSPI4_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpspi4_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpspi4_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPSPI4_STOP_ACK_Field use
     (Lpspi4_Stop_Ack_0 => 0,
      Lpspi4_Stop_Ack_1 => 1);

   --  LPUART1 stop acknowledge
   type GPR7_LPUART1_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart1_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart1_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART1_STOP_ACK_Field use
     (Lpuart1_Stop_Ack_0 => 0,
      Lpuart1_Stop_Ack_1 => 1);

   --  LPUART1 stop acknowledge
   type GPR7_LPUART2_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart2_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart2_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART2_STOP_ACK_Field use
     (Lpuart2_Stop_Ack_0 => 0,
      Lpuart2_Stop_Ack_1 => 1);

   --  LPUART3 stop acknowledge
   type GPR7_LPUART3_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart3_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart3_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART3_STOP_ACK_Field use
     (Lpuart3_Stop_Ack_0 => 0,
      Lpuart3_Stop_Ack_1 => 1);

   --  LPUART4 stop acknowledge
   type GPR7_LPUART4_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart4_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart4_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART4_STOP_ACK_Field use
     (Lpuart4_Stop_Ack_0 => 0,
      Lpuart4_Stop_Ack_1 => 1);

   --  LPUART5 stop acknowledge
   type GPR7_LPUART5_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart5_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart5_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART5_STOP_ACK_Field use
     (Lpuart5_Stop_Ack_0 => 0,
      Lpuart5_Stop_Ack_1 => 1);

   --  LPUART6 stop acknowledge
   type GPR7_LPUART6_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart6_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart6_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART6_STOP_ACK_Field use
     (Lpuart6_Stop_Ack_0 => 0,
      Lpuart6_Stop_Ack_1 => 1);

   --  LPUART7 stop acknowledge
   type GPR7_LPUART7_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart7_Stop_Ack_0,
      --  stop acknowledge is asserted
      Lpuart7_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART7_STOP_ACK_Field use
     (Lpuart7_Stop_Ack_0 => 0,
      Lpuart7_Stop_Ack_1 => 1);

   --  LPUART8 stop acknowledge
   type GPR7_LPUART8_STOP_ACK_Field is
     (
      --  stop acknowledge is not asserted
      Lpuart8_Stop_Ack_0,
      --  stop acknowledge is asserted (the module is in Stop mode)
      Lpuart8_Stop_Ack_1)
     with Size => 1;
   for GPR7_LPUART8_STOP_ACK_Field use
     (Lpuart8_Stop_Ack_0 => 0,
      Lpuart8_Stop_Ack_1 => 1);

   --  GPR7 General Purpose Register
   type IOMUXC_GPR_GPR7_Register is record
      --  LPI2C1 stop request
      LPI2C1_STOP_REQ  : GPR7_LPI2C1_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C1_Stop_Req_0;
      --  LPI2C2 stop request
      LPI2C2_STOP_REQ  : GPR7_LPI2C2_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C2_Stop_Req_0;
      --  LPI2C3 stop request
      LPI2C3_STOP_REQ  : GPR7_LPI2C3_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C3_Stop_Req_0;
      --  LPI2C4 stop request
      LPI2C4_STOP_REQ  : GPR7_LPI2C4_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C4_Stop_Req_0;
      --  LPSPI1 stop request
      LPSPI1_STOP_REQ  : GPR7_LPSPI1_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi1_Stop_Req_0;
      --  LPSPI2 stop request
      LPSPI2_STOP_REQ  : GPR7_LPSPI2_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi2_Stop_Req_0;
      --  LPSPI3 stop request
      LPSPI3_STOP_REQ  : GPR7_LPSPI3_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi3_Stop_Req_0;
      --  LPSPI4 stop request
      LPSPI4_STOP_REQ  : GPR7_LPSPI4_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi4_Stop_Req_0;
      --  LPUART1 stop request
      LPUART1_STOP_REQ : GPR7_LPUART1_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart1_Stop_Req_0;
      --  LPUART1 stop request
      LPUART2_STOP_REQ : GPR7_LPUART2_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart2_Stop_Req_0;
      --  LPUART3 stop request
      LPUART3_STOP_REQ : GPR7_LPUART3_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart3_Stop_Req_0;
      --  LPUART4 stop request
      LPUART4_STOP_REQ : GPR7_LPUART4_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart4_Stop_Req_0;
      --  LPUART5 stop request
      LPUART5_STOP_REQ : GPR7_LPUART5_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart5_Stop_Req_0;
      --  LPUART6 stop request
      LPUART6_STOP_REQ : GPR7_LPUART6_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart6_Stop_Req_0;
      --  LPUART7 stop request
      LPUART7_STOP_REQ : GPR7_LPUART7_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart7_Stop_Req_0;
      --  LPUART8 stop request
      LPUART8_STOP_REQ : GPR7_LPUART8_STOP_REQ_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart8_Stop_Req_0;
      --  Read-only. LPI2C1 stop acknowledge
      LPI2C1_STOP_ACK  : GPR7_LPI2C1_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C1_Stop_Ack_0;
      --  Read-only. LPI2C2 stop acknowledge
      LPI2C2_STOP_ACK  : GPR7_LPI2C2_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C2_Stop_Ack_0;
      --  Read-only. LPI2C3 stop acknowledge
      LPI2C3_STOP_ACK  : GPR7_LPI2C3_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C3_Stop_Ack_0;
      --  Read-only. LPI2C4 stop acknowledge
      LPI2C4_STOP_ACK  : GPR7_LPI2C4_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpi2C4_Stop_Ack_0;
      --  Read-only. LPSPI1 stop acknowledge
      LPSPI1_STOP_ACK  : GPR7_LPSPI1_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi1_Stop_Ack_0;
      --  Read-only. LPSPI2 stop acknowledge
      LPSPI2_STOP_ACK  : GPR7_LPSPI2_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi2_Stop_Ack_0;
      --  Read-only. LPSPI3 stop acknowledge
      LPSPI3_STOP_ACK  : GPR7_LPSPI3_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi3_Stop_Ack_0;
      --  Read-only. LPSPI4 stop acknowledge
      LPSPI4_STOP_ACK  : GPR7_LPSPI4_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpspi4_Stop_Ack_0;
      --  Read-only. LPUART1 stop acknowledge
      LPUART1_STOP_ACK : GPR7_LPUART1_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart1_Stop_Ack_0;
      --  Read-only. LPUART1 stop acknowledge
      LPUART2_STOP_ACK : GPR7_LPUART2_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart2_Stop_Ack_0;
      --  Read-only. LPUART3 stop acknowledge
      LPUART3_STOP_ACK : GPR7_LPUART3_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart3_Stop_Ack_0;
      --  Read-only. LPUART4 stop acknowledge
      LPUART4_STOP_ACK : GPR7_LPUART4_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart4_Stop_Ack_0;
      --  Read-only. LPUART5 stop acknowledge
      LPUART5_STOP_ACK : GPR7_LPUART5_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart5_Stop_Ack_0;
      --  Read-only. LPUART6 stop acknowledge
      LPUART6_STOP_ACK : GPR7_LPUART6_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart6_Stop_Ack_0;
      --  Read-only. LPUART7 stop acknowledge
      LPUART7_STOP_ACK : GPR7_LPUART7_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart7_Stop_Ack_0;
      --  Read-only. LPUART8 stop acknowledge
      LPUART8_STOP_ACK : GPR7_LPUART8_STOP_ACK_Field :=
                          NRF_SVD.IOMUXC_GPR.Lpuart8_Stop_Ack_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR7_Register use record
      LPI2C1_STOP_REQ  at 0 range 0 .. 0;
      LPI2C2_STOP_REQ  at 0 range 1 .. 1;
      LPI2C3_STOP_REQ  at 0 range 2 .. 2;
      LPI2C4_STOP_REQ  at 0 range 3 .. 3;
      LPSPI1_STOP_REQ  at 0 range 4 .. 4;
      LPSPI2_STOP_REQ  at 0 range 5 .. 5;
      LPSPI3_STOP_REQ  at 0 range 6 .. 6;
      LPSPI4_STOP_REQ  at 0 range 7 .. 7;
      LPUART1_STOP_REQ at 0 range 8 .. 8;
      LPUART2_STOP_REQ at 0 range 9 .. 9;
      LPUART3_STOP_REQ at 0 range 10 .. 10;
      LPUART4_STOP_REQ at 0 range 11 .. 11;
      LPUART5_STOP_REQ at 0 range 12 .. 12;
      LPUART6_STOP_REQ at 0 range 13 .. 13;
      LPUART7_STOP_REQ at 0 range 14 .. 14;
      LPUART8_STOP_REQ at 0 range 15 .. 15;
      LPI2C1_STOP_ACK  at 0 range 16 .. 16;
      LPI2C2_STOP_ACK  at 0 range 17 .. 17;
      LPI2C3_STOP_ACK  at 0 range 18 .. 18;
      LPI2C4_STOP_ACK  at 0 range 19 .. 19;
      LPSPI1_STOP_ACK  at 0 range 20 .. 20;
      LPSPI2_STOP_ACK  at 0 range 21 .. 21;
      LPSPI3_STOP_ACK  at 0 range 22 .. 22;
      LPSPI4_STOP_ACK  at 0 range 23 .. 23;
      LPUART1_STOP_ACK at 0 range 24 .. 24;
      LPUART2_STOP_ACK at 0 range 25 .. 25;
      LPUART3_STOP_ACK at 0 range 26 .. 26;
      LPUART4_STOP_ACK at 0 range 27 .. 27;
      LPUART5_STOP_ACK at 0 range 28 .. 28;
      LPUART6_STOP_ACK at 0 range 29 .. 29;
      LPUART7_STOP_ACK at 0 range 30 .. 30;
      LPUART8_STOP_ACK at 0 range 31 .. 31;
   end record;

   --  LPI2C1 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPI2C1_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpi2C1_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpi2C1_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPI2C1_IPG_STOP_MODE_Field use
     (Lpi2C1_Ipg_Stop_Mode_0 => 0,
      Lpi2C1_Ipg_Stop_Mode_1 => 1);

   --  LPI2C1 ipg_doze mode
   type GPR8_LPI2C1_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpi2C1_Ipg_Doze_0,
      --  in doze mode
      Lpi2C1_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPI2C1_IPG_DOZE_Field use
     (Lpi2C1_Ipg_Doze_0 => 0,
      Lpi2C1_Ipg_Doze_1 => 1);

   --  LPI2C2 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPI2C2_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpi2C2_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpi2C2_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPI2C2_IPG_STOP_MODE_Field use
     (Lpi2C2_Ipg_Stop_Mode_0 => 0,
      Lpi2C2_Ipg_Stop_Mode_1 => 1);

   --  LPI2C2 ipg_doze mode
   type GPR8_LPI2C2_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpi2C2_Ipg_Doze_0,
      --  in doze mode
      Lpi2C2_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPI2C2_IPG_DOZE_Field use
     (Lpi2C2_Ipg_Doze_0 => 0,
      Lpi2C2_Ipg_Doze_1 => 1);

   --  LPI2C3 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPI2C3_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpi2C3_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpi2C3_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPI2C3_IPG_STOP_MODE_Field use
     (Lpi2C3_Ipg_Stop_Mode_0 => 0,
      Lpi2C3_Ipg_Stop_Mode_1 => 1);

   --  LPI2C3 ipg_doze mode
   type GPR8_LPI2C3_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpi2C3_Ipg_Doze_0,
      --  in doze mode
      Lpi2C3_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPI2C3_IPG_DOZE_Field use
     (Lpi2C3_Ipg_Doze_0 => 0,
      Lpi2C3_Ipg_Doze_1 => 1);

   --  LPI2C4 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPI2C4_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpi2C4_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpi2C4_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPI2C4_IPG_STOP_MODE_Field use
     (Lpi2C4_Ipg_Stop_Mode_0 => 0,
      Lpi2C4_Ipg_Stop_Mode_1 => 1);

   --  LPI2C4 ipg_doze mode
   type GPR8_LPI2C4_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpi2C4_Ipg_Doze_0,
      --  in doze mode
      Lpi2C4_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPI2C4_IPG_DOZE_Field use
     (Lpi2C4_Ipg_Doze_0 => 0,
      Lpi2C4_Ipg_Doze_1 => 1);

   --  LPSPI1 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPSPI1_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpspi1_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpspi1_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPSPI1_IPG_STOP_MODE_Field use
     (Lpspi1_Ipg_Stop_Mode_0 => 0,
      Lpspi1_Ipg_Stop_Mode_1 => 1);

   --  LPSPI1 ipg_doze mode
   type GPR8_LPSPI1_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpspi1_Ipg_Doze_0,
      --  in doze mode
      Lpspi1_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPSPI1_IPG_DOZE_Field use
     (Lpspi1_Ipg_Doze_0 => 0,
      Lpspi1_Ipg_Doze_1 => 1);

   --  LPSPI2 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPSPI2_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpspi2_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpspi2_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPSPI2_IPG_STOP_MODE_Field use
     (Lpspi2_Ipg_Stop_Mode_0 => 0,
      Lpspi2_Ipg_Stop_Mode_1 => 1);

   --  LPSPI2 ipg_doze mode
   type GPR8_LPSPI2_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpspi2_Ipg_Doze_0,
      --  in doze mode
      Lpspi2_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPSPI2_IPG_DOZE_Field use
     (Lpspi2_Ipg_Doze_0 => 0,
      Lpspi2_Ipg_Doze_1 => 1);

   --  LPSPI3 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPSPI3_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpspi3_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpspi3_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPSPI3_IPG_STOP_MODE_Field use
     (Lpspi3_Ipg_Stop_Mode_0 => 0,
      Lpspi3_Ipg_Stop_Mode_1 => 1);

   --  LPSPI3 ipg_doze mode
   type GPR8_LPSPI3_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpspi3_Ipg_Doze_0,
      --  in doze mode
      Lpspi3_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPSPI3_IPG_DOZE_Field use
     (Lpspi3_Ipg_Doze_0 => 0,
      Lpspi3_Ipg_Doze_1 => 1);

   --  LPSPI4 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPSPI4_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpspi4_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpspi4_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPSPI4_IPG_STOP_MODE_Field use
     (Lpspi4_Ipg_Stop_Mode_0 => 0,
      Lpspi4_Ipg_Stop_Mode_1 => 1);

   --  LPSPI4 ipg_doze mode
   type GPR8_LPSPI4_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpspi4_Ipg_Doze_0,
      --  in doze mode
      Lpspi4_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPSPI4_IPG_DOZE_Field use
     (Lpspi4_Ipg_Doze_0 => 0,
      Lpspi4_Ipg_Doze_1 => 1);

   --  LPUART1 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART1_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart1_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart1_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART1_IPG_STOP_MODE_Field use
     (Lpuart1_Ipg_Stop_Mode_0 => 0,
      Lpuart1_Ipg_Stop_Mode_1 => 1);

   --  LPUART1 ipg_doze mode
   type GPR8_LPUART1_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart1_Ipg_Doze_0,
      --  in doze mode
      Lpuart1_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART1_IPG_DOZE_Field use
     (Lpuart1_Ipg_Doze_0 => 0,
      Lpuart1_Ipg_Doze_1 => 1);

   --  LPUART2 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART2_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart2_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart2_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART2_IPG_STOP_MODE_Field use
     (Lpuart2_Ipg_Stop_Mode_0 => 0,
      Lpuart2_Ipg_Stop_Mode_1 => 1);

   --  LPUART2 ipg_doze mode
   type GPR8_LPUART2_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart2_Ipg_Doze_0,
      --  in doze mode
      Lpuart2_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART2_IPG_DOZE_Field use
     (Lpuart2_Ipg_Doze_0 => 0,
      Lpuart2_Ipg_Doze_1 => 1);

   --  LPUART3 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART3_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart3_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart3_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART3_IPG_STOP_MODE_Field use
     (Lpuart3_Ipg_Stop_Mode_0 => 0,
      Lpuart3_Ipg_Stop_Mode_1 => 1);

   --  LPUART3 ipg_doze mode
   type GPR8_LPUART3_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart3_Ipg_Doze_0,
      --  in doze mode
      Lpuart3_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART3_IPG_DOZE_Field use
     (Lpuart3_Ipg_Doze_0 => 0,
      Lpuart3_Ipg_Doze_1 => 1);

   --  LPUART4 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART4_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart4_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart4_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART4_IPG_STOP_MODE_Field use
     (Lpuart4_Ipg_Stop_Mode_0 => 0,
      Lpuart4_Ipg_Stop_Mode_1 => 1);

   --  LPUART4 ipg_doze mode
   type GPR8_LPUART4_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart4_Ipg_Doze_0,
      --  in doze mode
      Lpuart4_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART4_IPG_DOZE_Field use
     (Lpuart4_Ipg_Doze_0 => 0,
      Lpuart4_Ipg_Doze_1 => 1);

   --  LPUART5 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART5_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart5_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart5_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART5_IPG_STOP_MODE_Field use
     (Lpuart5_Ipg_Stop_Mode_0 => 0,
      Lpuart5_Ipg_Stop_Mode_1 => 1);

   --  LPUART5 ipg_doze mode
   type GPR8_LPUART5_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart5_Ipg_Doze_0,
      --  in doze mode
      Lpuart5_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART5_IPG_DOZE_Field use
     (Lpuart5_Ipg_Doze_0 => 0,
      Lpuart5_Ipg_Doze_1 => 1);

   --  LPUART6 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART6_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart6_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart6_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART6_IPG_STOP_MODE_Field use
     (Lpuart6_Ipg_Stop_Mode_0 => 0,
      Lpuart6_Ipg_Stop_Mode_1 => 1);

   --  LPUART6 ipg_doze mode
   type GPR8_LPUART6_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart6_Ipg_Doze_0,
      --  in doze mode
      Lpuart6_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART6_IPG_DOZE_Field use
     (Lpuart6_Ipg_Doze_0 => 0,
      Lpuart6_Ipg_Doze_1 => 1);

   --  LPUART7 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART7_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart7_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart7_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART7_IPG_STOP_MODE_Field use
     (Lpuart7_Ipg_Stop_Mode_0 => 0,
      Lpuart7_Ipg_Stop_Mode_1 => 1);

   --  LPUART7 ipg_doze mode
   type GPR8_LPUART7_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart7_Ipg_Doze_0,
      --  in doze mode
      Lpuart7_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART7_IPG_DOZE_Field use
     (Lpuart7_Ipg_Doze_0 => 0,
      Lpuart7_Ipg_Doze_1 => 1);

   --  LPUART8 stop mode selection, cannot change when ipg_stop is asserted.
   type GPR8_LPUART8_IPG_STOP_MODE_Field is
     (
      --  the module is functional in Stop mode
      Lpuart8_Ipg_Stop_Mode_0,
      --  the module is NOT functional in Stop mode, when this bit is equal to
      --  1 and ipg_stop is asserted
      Lpuart8_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR8_LPUART8_IPG_STOP_MODE_Field use
     (Lpuart8_Ipg_Stop_Mode_0 => 0,
      Lpuart8_Ipg_Stop_Mode_1 => 1);

   --  LPUART8 ipg_doze mode
   type GPR8_LPUART8_IPG_DOZE_Field is
     (
      --  not in doze mode
      Lpuart8_Ipg_Doze_0,
      --  in doze mode
      Lpuart8_Ipg_Doze_1)
     with Size => 1;
   for GPR8_LPUART8_IPG_DOZE_Field use
     (Lpuart8_Ipg_Doze_0 => 0,
      Lpuart8_Ipg_Doze_1 => 1);

   --  GPR8 General Purpose Register
   type IOMUXC_GPR_GPR8_Register is record
      --  LPI2C1 stop mode selection, cannot change when ipg_stop is asserted.
      LPI2C1_IPG_STOP_MODE  : GPR8_LPI2C1_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C1_Ipg_Stop_Mode_0;
      --  LPI2C1 ipg_doze mode
      LPI2C1_IPG_DOZE       : GPR8_LPI2C1_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C1_Ipg_Doze_0;
      --  LPI2C2 stop mode selection, cannot change when ipg_stop is asserted.
      LPI2C2_IPG_STOP_MODE  : GPR8_LPI2C2_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C2_Ipg_Stop_Mode_0;
      --  LPI2C2 ipg_doze mode
      LPI2C2_IPG_DOZE       : GPR8_LPI2C2_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C2_Ipg_Doze_0;
      --  LPI2C3 stop mode selection, cannot change when ipg_stop is asserted.
      LPI2C3_IPG_STOP_MODE  : GPR8_LPI2C3_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C3_Ipg_Stop_Mode_0;
      --  LPI2C3 ipg_doze mode
      LPI2C3_IPG_DOZE       : GPR8_LPI2C3_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C3_Ipg_Doze_0;
      --  LPI2C4 stop mode selection, cannot change when ipg_stop is asserted.
      LPI2C4_IPG_STOP_MODE  : GPR8_LPI2C4_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C4_Ipg_Stop_Mode_0;
      --  LPI2C4 ipg_doze mode
      LPI2C4_IPG_DOZE       : GPR8_LPI2C4_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpi2C4_Ipg_Doze_0;
      --  LPSPI1 stop mode selection, cannot change when ipg_stop is asserted.
      LPSPI1_IPG_STOP_MODE  : GPR8_LPSPI1_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi1_Ipg_Stop_Mode_0;
      --  LPSPI1 ipg_doze mode
      LPSPI1_IPG_DOZE       : GPR8_LPSPI1_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi1_Ipg_Doze_0;
      --  LPSPI2 stop mode selection, cannot change when ipg_stop is asserted.
      LPSPI2_IPG_STOP_MODE  : GPR8_LPSPI2_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi2_Ipg_Stop_Mode_0;
      --  LPSPI2 ipg_doze mode
      LPSPI2_IPG_DOZE       : GPR8_LPSPI2_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi2_Ipg_Doze_0;
      --  LPSPI3 stop mode selection, cannot change when ipg_stop is asserted.
      LPSPI3_IPG_STOP_MODE  : GPR8_LPSPI3_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi3_Ipg_Stop_Mode_0;
      --  LPSPI3 ipg_doze mode
      LPSPI3_IPG_DOZE       : GPR8_LPSPI3_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi3_Ipg_Doze_0;
      --  LPSPI4 stop mode selection, cannot change when ipg_stop is asserted.
      LPSPI4_IPG_STOP_MODE  : GPR8_LPSPI4_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi4_Ipg_Stop_Mode_0;
      --  LPSPI4 ipg_doze mode
      LPSPI4_IPG_DOZE       : GPR8_LPSPI4_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpspi4_Ipg_Doze_0;
      --  LPUART1 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART1_IPG_STOP_MODE : GPR8_LPUART1_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart1_Ipg_Stop_Mode_0;
      --  LPUART1 ipg_doze mode
      LPUART1_IPG_DOZE      : GPR8_LPUART1_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart1_Ipg_Doze_0;
      --  LPUART2 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART2_IPG_STOP_MODE : GPR8_LPUART2_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart2_Ipg_Stop_Mode_0;
      --  LPUART2 ipg_doze mode
      LPUART2_IPG_DOZE      : GPR8_LPUART2_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart2_Ipg_Doze_0;
      --  LPUART3 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART3_IPG_STOP_MODE : GPR8_LPUART3_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart3_Ipg_Stop_Mode_0;
      --  LPUART3 ipg_doze mode
      LPUART3_IPG_DOZE      : GPR8_LPUART3_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart3_Ipg_Doze_0;
      --  LPUART4 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART4_IPG_STOP_MODE : GPR8_LPUART4_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart4_Ipg_Stop_Mode_0;
      --  LPUART4 ipg_doze mode
      LPUART4_IPG_DOZE      : GPR8_LPUART4_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart4_Ipg_Doze_0;
      --  LPUART5 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART5_IPG_STOP_MODE : GPR8_LPUART5_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart5_Ipg_Stop_Mode_0;
      --  LPUART5 ipg_doze mode
      LPUART5_IPG_DOZE      : GPR8_LPUART5_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart5_Ipg_Doze_0;
      --  LPUART6 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART6_IPG_STOP_MODE : GPR8_LPUART6_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart6_Ipg_Stop_Mode_0;
      --  LPUART6 ipg_doze mode
      LPUART6_IPG_DOZE      : GPR8_LPUART6_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart6_Ipg_Doze_0;
      --  LPUART7 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART7_IPG_STOP_MODE : GPR8_LPUART7_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart7_Ipg_Stop_Mode_0;
      --  LPUART7 ipg_doze mode
      LPUART7_IPG_DOZE      : GPR8_LPUART7_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart7_Ipg_Doze_0;
      --  LPUART8 stop mode selection, cannot change when ipg_stop is asserted.
      LPUART8_IPG_STOP_MODE : GPR8_LPUART8_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart8_Ipg_Stop_Mode_0;
      --  LPUART8 ipg_doze mode
      LPUART8_IPG_DOZE      : GPR8_LPUART8_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Lpuart8_Ipg_Doze_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR8_Register use record
      LPI2C1_IPG_STOP_MODE  at 0 range 0 .. 0;
      LPI2C1_IPG_DOZE       at 0 range 1 .. 1;
      LPI2C2_IPG_STOP_MODE  at 0 range 2 .. 2;
      LPI2C2_IPG_DOZE       at 0 range 3 .. 3;
      LPI2C3_IPG_STOP_MODE  at 0 range 4 .. 4;
      LPI2C3_IPG_DOZE       at 0 range 5 .. 5;
      LPI2C4_IPG_STOP_MODE  at 0 range 6 .. 6;
      LPI2C4_IPG_DOZE       at 0 range 7 .. 7;
      LPSPI1_IPG_STOP_MODE  at 0 range 8 .. 8;
      LPSPI1_IPG_DOZE       at 0 range 9 .. 9;
      LPSPI2_IPG_STOP_MODE  at 0 range 10 .. 10;
      LPSPI2_IPG_DOZE       at 0 range 11 .. 11;
      LPSPI3_IPG_STOP_MODE  at 0 range 12 .. 12;
      LPSPI3_IPG_DOZE       at 0 range 13 .. 13;
      LPSPI4_IPG_STOP_MODE  at 0 range 14 .. 14;
      LPSPI4_IPG_DOZE       at 0 range 15 .. 15;
      LPUART1_IPG_STOP_MODE at 0 range 16 .. 16;
      LPUART1_IPG_DOZE      at 0 range 17 .. 17;
      LPUART2_IPG_STOP_MODE at 0 range 18 .. 18;
      LPUART2_IPG_DOZE      at 0 range 19 .. 19;
      LPUART3_IPG_STOP_MODE at 0 range 20 .. 20;
      LPUART3_IPG_DOZE      at 0 range 21 .. 21;
      LPUART4_IPG_STOP_MODE at 0 range 22 .. 22;
      LPUART4_IPG_DOZE      at 0 range 23 .. 23;
      LPUART5_IPG_STOP_MODE at 0 range 24 .. 24;
      LPUART5_IPG_DOZE      at 0 range 25 .. 25;
      LPUART6_IPG_STOP_MODE at 0 range 26 .. 26;
      LPUART6_IPG_DOZE      at 0 range 27 .. 27;
      LPUART7_IPG_STOP_MODE at 0 range 28 .. 28;
      LPUART7_IPG_DOZE      at 0 range 29 .. 29;
      LPUART8_IPG_STOP_MODE at 0 range 30 .. 30;
      LPUART8_IPG_DOZE      at 0 range 31 .. 31;
   end record;

   --  ARM non-secure (non-invasive) debug enable
   type GPR10_NIDEN_Field is
     (
      --  Debug turned off.
      Niden_0,
      --  Debug enabled (default).
      Niden_1)
     with Size => 1;
   for GPR10_NIDEN_Field use
     (Niden_0 => 0,
      Niden_1 => 1);

   --  ARM invasive debug enable
   type GPR10_DBG_EN_Field is
     (
      --  Debug turned off.
      Dbg_En_0,
      --  Debug enabled (default).
      Dbg_En_1)
     with Size => 1;
   for GPR10_DBG_EN_Field use
     (Dbg_En_0 => 0,
      Dbg_En_1 => 1);

   --  Security error response enable for all security gaskets (on both AHB and
   --  AXI buses)
   type GPR10_SEC_ERR_RESP_Field is
     (
      --  OKEY response
      Sec_Err_Resp_0,
      --  SLVError (default)
      Sec_Err_Resp_1)
     with Size => 1;
   for GPR10_SEC_ERR_RESP_Field use
     (Sec_Err_Resp_0 => 0,
      Sec_Err_Resp_1 => 1);

   --  DCP Key selection bit.
   type GPR10_DCPKEY_OCOTP_OR_KEYMUX_Field is
     (
      --  Select key from Key MUX (SNVS/OTPMK).
      Dcpkey_Ocotp_Or_Keymux_0,
      --  Select key from OCOTP (SW_GP2).
      Dcpkey_Ocotp_Or_Keymux_1)
     with Size => 1;
   for GPR10_DCPKEY_OCOTP_OR_KEYMUX_Field use
     (Dcpkey_Ocotp_Or_Keymux_0 => 0,
      Dcpkey_Ocotp_Or_Keymux_1 => 1);

   --  OCRAM TrustZone (TZ) enable.
   type GPR10_OCRAM_TZ_EN_Field is
     (
      --  The TrustZone feature is disabled. Entire OCRAM space is available
      --  for all access types (secure/non-secure/user/supervisor).
      Ocram_Tz_En_0,
      --  The TrustZone feature is enabled. Access to address in the range
      --  specified by [ENDADDR:STARTADDR] follows the execution mode access
      --  policy described in CSU chapter.
      Ocram_Tz_En_1)
     with Size => 1;
   for GPR10_OCRAM_TZ_EN_Field use
     (Ocram_Tz_En_0 => 0,
      Ocram_Tz_En_1 => 1);

   subtype IOMUXC_GPR_GPR10_OCRAM_TZ_ADDR_Field is HAL.UInt7;

   --  Lock NIDEN field for changes
   type GPR10_LOCK_NIDEN_Field is
     (
      --  Field is not locked
      Lock_Niden_0,
      --  Field is locked (read access only)
      Lock_Niden_1)
     with Size => 1;
   for GPR10_LOCK_NIDEN_Field use
     (Lock_Niden_0 => 0,
      Lock_Niden_1 => 1);

   --  Lock DBG_EN field for changes
   type GPR10_LOCK_DBG_EN_Field is
     (
      --  Field is not locked
      Lock_Dbg_En_0,
      --  Field is locked (read access only)
      Lock_Dbg_En_1)
     with Size => 1;
   for GPR10_LOCK_DBG_EN_Field use
     (Lock_Dbg_En_0 => 0,
      Lock_Dbg_En_1 => 1);

   --  Lock SEC_ERR_RESP field for changes
   type GPR10_LOCK_SEC_ERR_RESP_Field is
     (
      --  Field is not locked
      Lock_Sec_Err_Resp_0,
      --  Field is locked (read access only)
      Lock_Sec_Err_Resp_1)
     with Size => 1;
   for GPR10_LOCK_SEC_ERR_RESP_Field use
     (Lock_Sec_Err_Resp_0 => 0,
      Lock_Sec_Err_Resp_1 => 1);

   --  Lock DCP Key OCOTP/Key MUX selection bit
   type GPR10_LOCK_DCPKEY_OCOTP_OR_KEYMUX_Field is
     (
      --  Field is not locked
      Lock_Dcpkey_Ocotp_Or_Keymux_0,
      --  Field is locked (read access only)
      Lock_Dcpkey_Ocotp_Or_Keymux_1)
     with Size => 1;
   for GPR10_LOCK_DCPKEY_OCOTP_OR_KEYMUX_Field use
     (Lock_Dcpkey_Ocotp_Or_Keymux_0 => 0,
      Lock_Dcpkey_Ocotp_Or_Keymux_1 => 1);

   --  Lock OCRAM_TZ_EN field for changes
   type GPR10_LOCK_OCRAM_TZ_EN_Field is
     (
      --  Field is not locked
      Lock_Ocram_Tz_En_0,
      --  Field is locked (read access only)
      Lock_Ocram_Tz_En_1)
     with Size => 1;
   for GPR10_LOCK_OCRAM_TZ_EN_Field use
     (Lock_Ocram_Tz_En_0 => 0,
      Lock_Ocram_Tz_En_1 => 1);

   --  Lock OCRAM_TZ_ADDR field for changes
   type GPR10_LOCK_OCRAM_TZ_ADDR_Field is
     (
      --  Field is not locked
      Lock_Ocram_Tz_Addr_0,
      --  Field is locked (read access only)
      Lock_Ocram_Tz_Addr_1)
     with Size => 7;
   for GPR10_LOCK_OCRAM_TZ_ADDR_Field use
     (Lock_Ocram_Tz_Addr_0 => 0,
      Lock_Ocram_Tz_Addr_1 => 1);

   --  GPR10 General Purpose Register
   type IOMUXC_GPR_GPR10_Register is record
      --  ARM non-secure (non-invasive) debug enable
      NIDEN                       : GPR10_NIDEN_Field :=
                                     NRF_SVD.IOMUXC_GPR.Niden_1;
      --  ARM invasive debug enable
      DBG_EN                      : GPR10_DBG_EN_Field :=
                                     NRF_SVD.IOMUXC_GPR.Dbg_En_1;
      --  Security error response enable for all security gaskets (on both AHB
      --  and AXI buses)
      SEC_ERR_RESP                : GPR10_SEC_ERR_RESP_Field :=
                                     NRF_SVD.IOMUXC_GPR.Sec_Err_Resp_1;
      --  unspecified
      Reserved_3_3                : HAL.Bit := 16#0#;
      --  DCP Key selection bit.
      DCPKEY_OCOTP_OR_KEYMUX      : GPR10_DCPKEY_OCOTP_OR_KEYMUX_Field :=
                                     NRF_SVD.IOMUXC_GPR.Dcpkey_Ocotp_Or_Keymux_0;
      --  unspecified
      Reserved_5_7                : HAL.UInt3 := 16#0#;
      --  OCRAM TrustZone (TZ) enable.
      OCRAM_TZ_EN                 : GPR10_OCRAM_TZ_EN_Field :=
                                     NRF_SVD.IOMUXC_GPR.Ocram_Tz_En_0;
      --  OCRAM TrustZone (TZ) start address
      OCRAM_TZ_ADDR               : IOMUXC_GPR_GPR10_OCRAM_TZ_ADDR_Field :=
                                     16#0#;
      --  Lock NIDEN field for changes
      LOCK_NIDEN                  : GPR10_LOCK_NIDEN_Field :=
                                     NRF_SVD.IOMUXC_GPR.Lock_Niden_0;
      --  Lock DBG_EN field for changes
      LOCK_DBG_EN                 : GPR10_LOCK_DBG_EN_Field :=
                                     NRF_SVD.IOMUXC_GPR.Lock_Dbg_En_0;
      --  Lock SEC_ERR_RESP field for changes
      LOCK_SEC_ERR_RESP           : GPR10_LOCK_SEC_ERR_RESP_Field :=
                                     NRF_SVD.IOMUXC_GPR.Lock_Sec_Err_Resp_0;
      --  unspecified
      Reserved_19_19              : HAL.Bit := 16#0#;
      --  Lock DCP Key OCOTP/Key MUX selection bit
      LOCK_DCPKEY_OCOTP_OR_KEYMUX : GPR10_LOCK_DCPKEY_OCOTP_OR_KEYMUX_Field :=
                                     NRF_SVD.IOMUXC_GPR.Lock_Dcpkey_Ocotp_Or_Keymux_0;
      --  unspecified
      Reserved_21_23              : HAL.UInt3 := 16#0#;
      --  Lock OCRAM_TZ_EN field for changes
      LOCK_OCRAM_TZ_EN            : GPR10_LOCK_OCRAM_TZ_EN_Field :=
                                     NRF_SVD.IOMUXC_GPR.Lock_Ocram_Tz_En_0;
      --  Lock OCRAM_TZ_ADDR field for changes
      LOCK_OCRAM_TZ_ADDR          : GPR10_LOCK_OCRAM_TZ_ADDR_Field :=
                                     NRF_SVD.IOMUXC_GPR.Lock_Ocram_Tz_Addr_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR10_Register use record
      NIDEN                       at 0 range 0 .. 0;
      DBG_EN                      at 0 range 1 .. 1;
      SEC_ERR_RESP                at 0 range 2 .. 2;
      Reserved_3_3                at 0 range 3 .. 3;
      DCPKEY_OCOTP_OR_KEYMUX      at 0 range 4 .. 4;
      Reserved_5_7                at 0 range 5 .. 7;
      OCRAM_TZ_EN                 at 0 range 8 .. 8;
      OCRAM_TZ_ADDR               at 0 range 9 .. 15;
      LOCK_NIDEN                  at 0 range 16 .. 16;
      LOCK_DBG_EN                 at 0 range 17 .. 17;
      LOCK_SEC_ERR_RESP           at 0 range 18 .. 18;
      Reserved_19_19              at 0 range 19 .. 19;
      LOCK_DCPKEY_OCOTP_OR_KEYMUX at 0 range 20 .. 20;
      Reserved_21_23              at 0 range 21 .. 23;
      LOCK_OCRAM_TZ_EN            at 0 range 24 .. 24;
      LOCK_OCRAM_TZ_ADDR          at 0 range 25 .. 31;
   end record;

   --  Access control of memory region-0
   type GPR11_M7_APC_AC_R0_CTRL_Field is
     (
      --  No access protection
      M7_Apc_Ac_R0_Ctrl_0,
      --  M7 debug protection enabled
      M7_Apc_Ac_R0_Ctrl_1,
      --  FlexSPI access protection
      M7_Apc_Ac_R0_Ctrl_2,
      --  Both M7 debug and FlexSPI access are protected
      M7_Apc_Ac_R0_Ctrl_3)
     with Size => 2;
   for GPR11_M7_APC_AC_R0_CTRL_Field use
     (M7_Apc_Ac_R0_Ctrl_0 => 0,
      M7_Apc_Ac_R0_Ctrl_1 => 1,
      M7_Apc_Ac_R0_Ctrl_2 => 2,
      M7_Apc_Ac_R0_Ctrl_3 => 3);

   --  Access control of memory region-1
   type GPR11_M7_APC_AC_R1_CTRL_Field is
     (
      --  No access protection
      M7_Apc_Ac_R1_Ctrl_0,
      --  M7 debug protection enabled
      M7_Apc_Ac_R1_Ctrl_1,
      --  FlexSPI access protection
      M7_Apc_Ac_R1_Ctrl_2,
      --  Both M7 debug and FlexSPI access are protected
      M7_Apc_Ac_R1_Ctrl_3)
     with Size => 2;
   for GPR11_M7_APC_AC_R1_CTRL_Field use
     (M7_Apc_Ac_R1_Ctrl_0 => 0,
      M7_Apc_Ac_R1_Ctrl_1 => 1,
      M7_Apc_Ac_R1_Ctrl_2 => 2,
      M7_Apc_Ac_R1_Ctrl_3 => 3);

   --  Access control of memory region-2
   type GPR11_M7_APC_AC_R2_CTRL_Field is
     (
      --  No access protection
      M7_Apc_Ac_R2_Ctrl_0,
      --  M7 debug protection enabled
      M7_Apc_Ac_R2_Ctrl_1,
      --  FlexSPI access protection
      M7_Apc_Ac_R2_Ctrl_2,
      --  Both M7 debug and FlexSPI access are protected
      M7_Apc_Ac_R2_Ctrl_3)
     with Size => 2;
   for GPR11_M7_APC_AC_R2_CTRL_Field use
     (M7_Apc_Ac_R2_Ctrl_0 => 0,
      M7_Apc_Ac_R2_Ctrl_1 => 1,
      M7_Apc_Ac_R2_Ctrl_2 => 2,
      M7_Apc_Ac_R2_Ctrl_3 => 3);

   --  Access control of memory region-3
   type GPR11_M7_APC_AC_R3_CTRL_Field is
     (
      --  No access protection
      M7_Apc_Ac_R3_Ctrl_0,
      --  M7 debug protection enabled
      M7_Apc_Ac_R3_Ctrl_1,
      --  FlexSPI access protection
      M7_Apc_Ac_R3_Ctrl_2,
      --  Both M7 debug and FlexSPI access are protected
      M7_Apc_Ac_R3_Ctrl_3)
     with Size => 2;
   for GPR11_M7_APC_AC_R3_CTRL_Field use
     (M7_Apc_Ac_R3_Ctrl_0 => 0,
      M7_Apc_Ac_R3_Ctrl_1 => 1,
      M7_Apc_Ac_R3_Ctrl_2 => 2,
      M7_Apc_Ac_R3_Ctrl_3 => 3);

   subtype IOMUXC_GPR_GPR11_BEE_DE_RX_EN_Field is HAL.UInt4;
   subtype IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R0_CTRL_Field is HAL.UInt2;
   subtype IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R1_CTRL_Field is HAL.UInt2;
   subtype IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R2_CTRL_Field is HAL.UInt2;
   subtype IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R3_CTRL_Field is HAL.UInt2;
   subtype IOMUXC_GPR_GPR11_LOCK_BEE_DE_RX_EN_Field is HAL.UInt4;

   --  GPR11 General Purpose Register
   type IOMUXC_GPR_GPR11_Register is record
      --  Access control of memory region-0
      M7_APC_AC_R0_CTRL      : GPR11_M7_APC_AC_R0_CTRL_Field :=
                                NRF_SVD.IOMUXC_GPR.M7_Apc_Ac_R0_Ctrl_0;
      --  Access control of memory region-1
      M7_APC_AC_R1_CTRL      : GPR11_M7_APC_AC_R1_CTRL_Field :=
                                NRF_SVD.IOMUXC_GPR.M7_Apc_Ac_R1_Ctrl_0;
      --  Access control of memory region-2
      M7_APC_AC_R2_CTRL      : GPR11_M7_APC_AC_R2_CTRL_Field :=
                                NRF_SVD.IOMUXC_GPR.M7_Apc_Ac_R2_Ctrl_0;
      --  Access control of memory region-3
      M7_APC_AC_R3_CTRL      : GPR11_M7_APC_AC_R3_CTRL_Field :=
                                NRF_SVD.IOMUXC_GPR.M7_Apc_Ac_R3_Ctrl_0;
      --  BEE data decryption of memory region-n (n = 3 to 0)
      BEE_DE_RX_EN           : IOMUXC_GPR_GPR11_BEE_DE_RX_EN_Field := 16#0#;
      --  unspecified
      Reserved_12_15         : HAL.UInt4 := 16#0#;
      --  Lock M7_APC_AC_R0_CTRL field for changes
      LOCK_M7_APC_AC_R0_CTRL : IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R0_CTRL_Field :=
                                16#0#;
      --  Lock M7_APC_AC_R1_CTRL field for changes
      LOCK_M7_APC_AC_R1_CTRL : IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R1_CTRL_Field :=
                                16#0#;
      --  Lock M7_APC_AC_R2_CTRL field for changes
      LOCK_M7_APC_AC_R2_CTRL : IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R2_CTRL_Field :=
                                16#0#;
      --  Lock M7_APC_AC_R3_CTRL field for changes
      LOCK_M7_APC_AC_R3_CTRL : IOMUXC_GPR_GPR11_LOCK_M7_APC_AC_R3_CTRL_Field :=
                                16#0#;
      --  Lock BEE_DE_RX_EN[n] (n = 3 to 0) field for changes
      LOCK_BEE_DE_RX_EN      : IOMUXC_GPR_GPR11_LOCK_BEE_DE_RX_EN_Field :=
                                16#0#;
      --  unspecified
      Reserved_28_31         : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR11_Register use record
      M7_APC_AC_R0_CTRL      at 0 range 0 .. 1;
      M7_APC_AC_R1_CTRL      at 0 range 2 .. 3;
      M7_APC_AC_R2_CTRL      at 0 range 4 .. 5;
      M7_APC_AC_R3_CTRL      at 0 range 6 .. 7;
      BEE_DE_RX_EN           at 0 range 8 .. 11;
      Reserved_12_15         at 0 range 12 .. 15;
      LOCK_M7_APC_AC_R0_CTRL at 0 range 16 .. 17;
      LOCK_M7_APC_AC_R1_CTRL at 0 range 18 .. 19;
      LOCK_M7_APC_AC_R2_CTRL at 0 range 20 .. 21;
      LOCK_M7_APC_AC_R3_CTRL at 0 range 22 .. 23;
      LOCK_BEE_DE_RX_EN      at 0 range 24 .. 27;
      Reserved_28_31         at 0 range 28 .. 31;
   end record;

   --  FlexIO1 stop mode selection. Cannot change when ipg_stop is asserted.
   type GPR12_FLEXIO1_IPG_STOP_MODE_Field is
     (
      --  FlexIO1 is functional in Stop mode.
      Flexio1_Ipg_Stop_Mode_0,
      --  When this bit is equal to 1'b1 and ipg_stop is asserted, FlexIO1 is
      --  not functional in Stop mode.
      Flexio1_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR12_FLEXIO1_IPG_STOP_MODE_Field use
     (Flexio1_Ipg_Stop_Mode_0 => 0,
      Flexio1_Ipg_Stop_Mode_1 => 1);

   --  FLEXIO1 ipg_doze mode
   type GPR12_FLEXIO1_IPG_DOZE_Field is
     (
      --  FLEXIO1 is not in doze mode
      Flexio1_Ipg_Doze_0,
      --  FLEXIO1 is in doze mode
      Flexio1_Ipg_Doze_1)
     with Size => 1;
   for GPR12_FLEXIO1_IPG_DOZE_Field use
     (Flexio1_Ipg_Doze_0 => 0,
      Flexio1_Ipg_Doze_1 => 1);

   --  FlexIO2 stop mode selection. Cannot change when ipg_stop is asserted.
   type GPR12_FLEXIO2_IPG_STOP_MODE_Field is
     (
      --  FlexIO2 is functional in Stop mode.
      Flexio2_Ipg_Stop_Mode_0,
      --  When this bit is equal to 1'b1 and ipg_stop is asserted, FlexIO2 is
      --  not functional in Stop mode.
      Flexio2_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR12_FLEXIO2_IPG_STOP_MODE_Field use
     (Flexio2_Ipg_Stop_Mode_0 => 0,
      Flexio2_Ipg_Stop_Mode_1 => 1);

   --  FLEXIO2 ipg_doze mode
   type GPR12_FLEXIO2_IPG_DOZE_Field is
     (
      --  FLEXIO2 is not in doze mode
      Flexio2_Ipg_Doze_0,
      --  FLEXIO2 is in doze mode
      Flexio2_Ipg_Doze_1)
     with Size => 1;
   for GPR12_FLEXIO2_IPG_DOZE_Field use
     (Flexio2_Ipg_Doze_0 => 0,
      Flexio2_Ipg_Doze_1 => 1);

   --  ACMP stop mode selection. Cannot change when ipg_stop is asserted.
   type GPR12_ACMP_IPG_STOP_MODE_Field is
     (
      --  ACMP is functional in Stop mode.
      Acmp_Ipg_Stop_Mode_0,
      --  When this bit is equal to 1'b1 and ipg_stop is asserted, ACMP is not
      --  functional in Stop mode.
      Acmp_Ipg_Stop_Mode_1)
     with Size => 1;
   for GPR12_ACMP_IPG_STOP_MODE_Field use
     (Acmp_Ipg_Stop_Mode_0 => 0,
      Acmp_Ipg_Stop_Mode_1 => 1);

   --  GPR12 General Purpose Register
   type IOMUXC_GPR_GPR12_Register is record
      --  FlexIO1 stop mode selection. Cannot change when ipg_stop is asserted.
      FLEXIO1_IPG_STOP_MODE : GPR12_FLEXIO1_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Flexio1_Ipg_Stop_Mode_0;
      --  FLEXIO1 ipg_doze mode
      FLEXIO1_IPG_DOZE      : GPR12_FLEXIO1_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Flexio1_Ipg_Doze_0;
      --  FlexIO2 stop mode selection. Cannot change when ipg_stop is asserted.
      FLEXIO2_IPG_STOP_MODE : GPR12_FLEXIO2_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Flexio2_Ipg_Stop_Mode_0;
      --  FLEXIO2 ipg_doze mode
      FLEXIO2_IPG_DOZE      : GPR12_FLEXIO2_IPG_DOZE_Field :=
                               NRF_SVD.IOMUXC_GPR.Flexio2_Ipg_Doze_0;
      --  ACMP stop mode selection. Cannot change when ipg_stop is asserted.
      ACMP_IPG_STOP_MODE    : GPR12_ACMP_IPG_STOP_MODE_Field :=
                               NRF_SVD.IOMUXC_GPR.Acmp_Ipg_Stop_Mode_0;
      --  unspecified
      Reserved_5_31         : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR12_Register use record
      FLEXIO1_IPG_STOP_MODE at 0 range 0 .. 0;
      FLEXIO1_IPG_DOZE      at 0 range 1 .. 1;
      FLEXIO2_IPG_STOP_MODE at 0 range 2 .. 2;
      FLEXIO2_IPG_DOZE      at 0 range 3 .. 3;
      ACMP_IPG_STOP_MODE    at 0 range 4 .. 4;
      Reserved_5_31         at 0 range 5 .. 31;
   end record;

   --  uSDHC block cacheable attribute value of AXI read transactions
   type GPR13_ARCACHE_USDHC_Field is
     (
      --  Cacheable attribute is off for read transactions.
      Arcache_Usdhc_0,
      --  Cacheable attribute is on for read transactions.
      Arcache_Usdhc_1)
     with Size => 1;
   for GPR13_ARCACHE_USDHC_Field use
     (Arcache_Usdhc_0 => 0,
      Arcache_Usdhc_1 => 1);

   --  uSDHC block cacheable attribute value of AXI write transactions
   type GPR13_AWCACHE_USDHC_Field is
     (
      --  Cacheable attribute is off for write transactions.
      Awcache_Usdhc_0,
      --  Cacheable attribute is on for write transactions.
      Awcache_Usdhc_1)
     with Size => 1;
   for GPR13_AWCACHE_USDHC_Field use
     (Awcache_Usdhc_0 => 0,
      Awcache_Usdhc_1 => 1);

   --  ENET block cacheable attribute value of AXI transactions
   type GPR13_CACHE_ENET_Field is
     (
      --  Cacheable attribute is off for read/write transactions.
      Cache_Enet_0,
      --  Cacheable attribute is on for read/write transactions.
      Cache_Enet_1)
     with Size => 1;
   for GPR13_CACHE_ENET_Field use
     (Cache_Enet_0 => 0,
      Cache_Enet_1 => 1);

   --  USB block cacheable attribute value of AXI transactions
   type GPR13_CACHE_USB_Field is
     (
      --  Cacheable attribute is off for read/write transactions.
      Cache_Usb_0,
      --  Cacheable attribute is on for read/write transactions.
      Cache_Usb_1)
     with Size => 1;
   for GPR13_CACHE_USB_Field use
     (Cache_Usb_0 => 0,
      Cache_Usb_1 => 1);

   --  GPR13 General Purpose Register
   type IOMUXC_GPR_GPR13_Register is record
      --  uSDHC block cacheable attribute value of AXI read transactions
      ARCACHE_USDHC  : GPR13_ARCACHE_USDHC_Field :=
                        NRF_SVD.IOMUXC_GPR.Arcache_Usdhc_0;
      --  uSDHC block cacheable attribute value of AXI write transactions
      AWCACHE_USDHC  : GPR13_AWCACHE_USDHC_Field :=
                        NRF_SVD.IOMUXC_GPR.Awcache_Usdhc_0;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  ENET block cacheable attribute value of AXI transactions
      CACHE_ENET     : GPR13_CACHE_ENET_Field :=
                        NRF_SVD.IOMUXC_GPR.Cache_Enet_0;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  USB block cacheable attribute value of AXI transactions
      CACHE_USB      : GPR13_CACHE_USB_Field :=
                        NRF_SVD.IOMUXC_GPR.Cache_Usb_0;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR13_Register use record
      ARCACHE_USDHC  at 0 range 0 .. 0;
      AWCACHE_USDHC  at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      CACHE_ENET     at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      CACHE_USB      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  reduces ACMP1 internal bias current by 30%
   type GPR14_ACMP1_CMP_IGEN_TRIM_DN_Field is
     (
      --  no reduce
      Acmp1_Cmp_Igen_Trim_Dn_0,
      --  reduces
      Acmp1_Cmp_Igen_Trim_Dn_1)
     with Size => 1;
   for GPR14_ACMP1_CMP_IGEN_TRIM_DN_Field use
     (Acmp1_Cmp_Igen_Trim_Dn_0 => 0,
      Acmp1_Cmp_Igen_Trim_Dn_1 => 1);

   --  reduces ACMP2 internal bias current by 30%
   type GPR14_ACMP2_CMP_IGEN_TRIM_DN_Field is
     (
      --  no reduce
      Acmp2_Cmp_Igen_Trim_Dn_0,
      --  reduces
      Acmp2_Cmp_Igen_Trim_Dn_1)
     with Size => 1;
   for GPR14_ACMP2_CMP_IGEN_TRIM_DN_Field use
     (Acmp2_Cmp_Igen_Trim_Dn_0 => 0,
      Acmp2_Cmp_Igen_Trim_Dn_1 => 1);

   --  reduces ACMP3 internal bias current by 30%
   type GPR14_ACMP3_CMP_IGEN_TRIM_DN_Field is
     (
      --  no reduce
      Acmp3_Cmp_Igen_Trim_Dn_0,
      --  reduces
      Acmp3_Cmp_Igen_Trim_Dn_1)
     with Size => 1;
   for GPR14_ACMP3_CMP_IGEN_TRIM_DN_Field use
     (Acmp3_Cmp_Igen_Trim_Dn_0 => 0,
      Acmp3_Cmp_Igen_Trim_Dn_1 => 1);

   --  reduces ACMP4 internal bias current by 30%
   type GPR14_ACMP4_CMP_IGEN_TRIM_DN_Field is
     (
      --  no reduce
      Acmp4_Cmp_Igen_Trim_Dn_0,
      --  reduces
      Acmp4_Cmp_Igen_Trim_Dn_1)
     with Size => 1;
   for GPR14_ACMP4_CMP_IGEN_TRIM_DN_Field use
     (Acmp4_Cmp_Igen_Trim_Dn_0 => 0,
      Acmp4_Cmp_Igen_Trim_Dn_1 => 1);

   --  increases ACMP1 internal bias current by 30%
   type GPR14_ACMP1_CMP_IGEN_TRIM_UP_Field is
     (
      --  no increase
      Acmp1_Cmp_Igen_Trim_Up_0,
      --  increases
      Acmp1_Cmp_Igen_Trim_Up_1)
     with Size => 1;
   for GPR14_ACMP1_CMP_IGEN_TRIM_UP_Field use
     (Acmp1_Cmp_Igen_Trim_Up_0 => 0,
      Acmp1_Cmp_Igen_Trim_Up_1 => 1);

   --  increases ACMP2 internal bias current by 30%
   type GPR14_ACMP2_CMP_IGEN_TRIM_UP_Field is
     (
      --  no increase
      Acmp2_Cmp_Igen_Trim_Up_0,
      --  increases
      Acmp2_Cmp_Igen_Trim_Up_1)
     with Size => 1;
   for GPR14_ACMP2_CMP_IGEN_TRIM_UP_Field use
     (Acmp2_Cmp_Igen_Trim_Up_0 => 0,
      Acmp2_Cmp_Igen_Trim_Up_1 => 1);

   --  increases ACMP3 internal bias current by 30%
   type GPR14_ACMP3_CMP_IGEN_TRIM_UP_Field is
     (
      --  no increase
      Acmp3_Cmp_Igen_Trim_Up_0,
      --  increases
      Acmp3_Cmp_Igen_Trim_Up_1)
     with Size => 1;
   for GPR14_ACMP3_CMP_IGEN_TRIM_UP_Field use
     (Acmp3_Cmp_Igen_Trim_Up_0 => 0,
      Acmp3_Cmp_Igen_Trim_Up_1 => 1);

   --  increases ACMP4 internal bias current by 30%
   type GPR14_ACMP4_CMP_IGEN_TRIM_UP_Field is
     (
      --  no increase
      Acmp4_Cmp_Igen_Trim_Up_0,
      --  increases
      Acmp4_Cmp_Igen_Trim_Up_1)
     with Size => 1;
   for GPR14_ACMP4_CMP_IGEN_TRIM_UP_Field use
     (Acmp4_Cmp_Igen_Trim_Up_0 => 0,
      Acmp4_Cmp_Igen_Trim_Up_1 => 1);

   --  ACMP1 sample_lv source select
   type GPR14_ACMP1_SAMPLE_SYNC_EN_Field is
     (
      --  select XBAR output
      Acmp1_Sample_Sync_En_0,
      --  select synced sample_lv
      Acmp1_Sample_Sync_En_1)
     with Size => 1;
   for GPR14_ACMP1_SAMPLE_SYNC_EN_Field use
     (Acmp1_Sample_Sync_En_0 => 0,
      Acmp1_Sample_Sync_En_1 => 1);

   --  ACMP2 sample_lv source select
   type GPR14_ACMP2_SAMPLE_SYNC_EN_Field is
     (
      --  select XBAR output
      Acmp2_Sample_Sync_En_0,
      --  select synced sample_lv
      Acmp2_Sample_Sync_En_1)
     with Size => 1;
   for GPR14_ACMP2_SAMPLE_SYNC_EN_Field use
     (Acmp2_Sample_Sync_En_0 => 0,
      Acmp2_Sample_Sync_En_1 => 1);

   --  ACMP3 sample_lv source select
   type GPR14_ACMP3_SAMPLE_SYNC_EN_Field is
     (
      --  select XBAR output
      Acmp3_Sample_Sync_En_0,
      --  select synced sample_lv
      Acmp3_Sample_Sync_En_1)
     with Size => 1;
   for GPR14_ACMP3_SAMPLE_SYNC_EN_Field use
     (Acmp3_Sample_Sync_En_0 => 0,
      Acmp3_Sample_Sync_En_1 => 1);

   --  ACMP4 sample_lv source select
   type GPR14_ACMP4_SAMPLE_SYNC_EN_Field is
     (
      --  select XBAR output
      Acmp4_Sample_Sync_En_0,
      --  select synced sample_lv
      Acmp4_Sample_Sync_En_1)
     with Size => 1;
   for GPR14_ACMP4_SAMPLE_SYNC_EN_Field use
     (Acmp4_Sample_Sync_En_0 => 0,
      Acmp4_Sample_Sync_En_1 => 1);

   --  ITCM total size configuration
   type GPR14_CM7_MX6RT_CFGITCMSZ_Field is
     (
      --  0 KB (No ITCM)
      Cm7_Mx6Rt_Cfgitcmsz_0,
      --  4 KB
      Cm7_Mx6Rt_Cfgitcmsz_3,
      --  8 KB
      Cm7_Mx6Rt_Cfgitcmsz_4,
      --  16 KB
      Cm7_Mx6Rt_Cfgitcmsz_5,
      --  32 KB
      Cm7_Mx6Rt_Cfgitcmsz_6,
      --  64 KB
      Cm7_Mx6Rt_Cfgitcmsz_7,
      --  128 KB
      Cm7_Mx6Rt_Cfgitcmsz_8,
      --  256 KB
      Cm7_Mx6Rt_Cfgitcmsz_9,
      --  512 KB
      Cm7_Mx6Rt_Cfgitcmsz_10)
     with Size => 4;
   for GPR14_CM7_MX6RT_CFGITCMSZ_Field use
     (Cm7_Mx6Rt_Cfgitcmsz_0 => 0,
      Cm7_Mx6Rt_Cfgitcmsz_3 => 3,
      Cm7_Mx6Rt_Cfgitcmsz_4 => 4,
      Cm7_Mx6Rt_Cfgitcmsz_5 => 5,
      Cm7_Mx6Rt_Cfgitcmsz_6 => 6,
      Cm7_Mx6Rt_Cfgitcmsz_7 => 7,
      Cm7_Mx6Rt_Cfgitcmsz_8 => 8,
      Cm7_Mx6Rt_Cfgitcmsz_9 => 9,
      Cm7_Mx6Rt_Cfgitcmsz_10 => 10);

   --  DTCM total size configuration
   type GPR14_CM7_MX6RT_CFGDTCMSZ_Field is
     (
      --  0 KB (No DTCM)
      Cm7_Mx6Rt_Cfgdtcmsz_0,
      --  4 KB
      Cm7_Mx6Rt_Cfgdtcmsz_3,
      --  8 KB
      Cm7_Mx6Rt_Cfgdtcmsz_4,
      --  16 KB
      Cm7_Mx6Rt_Cfgdtcmsz_5,
      --  32 KB
      Cm7_Mx6Rt_Cfgdtcmsz_6,
      --  64 KB
      Cm7_Mx6Rt_Cfgdtcmsz_7,
      --  128 KB
      Cm7_Mx6Rt_Cfgdtcmsz_8,
      --  256 KB
      Cm7_Mx6Rt_Cfgdtcmsz_9,
      --  512 KB
      Cm7_Mx6Rt_Cfgdtcmsz_10)
     with Size => 4;
   for GPR14_CM7_MX6RT_CFGDTCMSZ_Field use
     (Cm7_Mx6Rt_Cfgdtcmsz_0 => 0,
      Cm7_Mx6Rt_Cfgdtcmsz_3 => 3,
      Cm7_Mx6Rt_Cfgdtcmsz_4 => 4,
      Cm7_Mx6Rt_Cfgdtcmsz_5 => 5,
      Cm7_Mx6Rt_Cfgdtcmsz_6 => 6,
      Cm7_Mx6Rt_Cfgdtcmsz_7 => 7,
      Cm7_Mx6Rt_Cfgdtcmsz_8 => 8,
      Cm7_Mx6Rt_Cfgdtcmsz_9 => 9,
      Cm7_Mx6Rt_Cfgdtcmsz_10 => 10);

   --  GPR14 General Purpose Register
   type IOMUXC_GPR_GPR14_Register is record
      --  reduces ACMP1 internal bias current by 30%
      ACMP1_CMP_IGEN_TRIM_DN : GPR14_ACMP1_CMP_IGEN_TRIM_DN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp1_Cmp_Igen_Trim_Dn_0;
      --  reduces ACMP2 internal bias current by 30%
      ACMP2_CMP_IGEN_TRIM_DN : GPR14_ACMP2_CMP_IGEN_TRIM_DN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp2_Cmp_Igen_Trim_Dn_0;
      --  reduces ACMP3 internal bias current by 30%
      ACMP3_CMP_IGEN_TRIM_DN : GPR14_ACMP3_CMP_IGEN_TRIM_DN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp3_Cmp_Igen_Trim_Dn_0;
      --  reduces ACMP4 internal bias current by 30%
      ACMP4_CMP_IGEN_TRIM_DN : GPR14_ACMP4_CMP_IGEN_TRIM_DN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp4_Cmp_Igen_Trim_Dn_0;
      --  increases ACMP1 internal bias current by 30%
      ACMP1_CMP_IGEN_TRIM_UP : GPR14_ACMP1_CMP_IGEN_TRIM_UP_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp1_Cmp_Igen_Trim_Up_0;
      --  increases ACMP2 internal bias current by 30%
      ACMP2_CMP_IGEN_TRIM_UP : GPR14_ACMP2_CMP_IGEN_TRIM_UP_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp2_Cmp_Igen_Trim_Up_0;
      --  increases ACMP3 internal bias current by 30%
      ACMP3_CMP_IGEN_TRIM_UP : GPR14_ACMP3_CMP_IGEN_TRIM_UP_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp3_Cmp_Igen_Trim_Up_0;
      --  increases ACMP4 internal bias current by 30%
      ACMP4_CMP_IGEN_TRIM_UP : GPR14_ACMP4_CMP_IGEN_TRIM_UP_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp4_Cmp_Igen_Trim_Up_0;
      --  ACMP1 sample_lv source select
      ACMP1_SAMPLE_SYNC_EN   : GPR14_ACMP1_SAMPLE_SYNC_EN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp1_Sample_Sync_En_0;
      --  ACMP2 sample_lv source select
      ACMP2_SAMPLE_SYNC_EN   : GPR14_ACMP2_SAMPLE_SYNC_EN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp2_Sample_Sync_En_0;
      --  ACMP3 sample_lv source select
      ACMP3_SAMPLE_SYNC_EN   : GPR14_ACMP3_SAMPLE_SYNC_EN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp3_Sample_Sync_En_0;
      --  ACMP4 sample_lv source select
      ACMP4_SAMPLE_SYNC_EN   : GPR14_ACMP4_SAMPLE_SYNC_EN_Field :=
                                NRF_SVD.IOMUXC_GPR.Acmp4_Sample_Sync_En_0;
      --  unspecified
      Reserved_12_15         : HAL.UInt4 := 16#0#;
      --  ITCM total size configuration
      CM7_MX6RT_CFGITCMSZ    : GPR14_CM7_MX6RT_CFGITCMSZ_Field :=
                                NRF_SVD.IOMUXC_GPR.Cm7_Mx6Rt_Cfgitcmsz_0;
      --  DTCM total size configuration
      CM7_MX6RT_CFGDTCMSZ    : GPR14_CM7_MX6RT_CFGDTCMSZ_Field :=
                                NRF_SVD.IOMUXC_GPR.Cm7_Mx6Rt_Cfgdtcmsz_0;
      --  unspecified
      Reserved_24_31         : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR14_Register use record
      ACMP1_CMP_IGEN_TRIM_DN at 0 range 0 .. 0;
      ACMP2_CMP_IGEN_TRIM_DN at 0 range 1 .. 1;
      ACMP3_CMP_IGEN_TRIM_DN at 0 range 2 .. 2;
      ACMP4_CMP_IGEN_TRIM_DN at 0 range 3 .. 3;
      ACMP1_CMP_IGEN_TRIM_UP at 0 range 4 .. 4;
      ACMP2_CMP_IGEN_TRIM_UP at 0 range 5 .. 5;
      ACMP3_CMP_IGEN_TRIM_UP at 0 range 6 .. 6;
      ACMP4_CMP_IGEN_TRIM_UP at 0 range 7 .. 7;
      ACMP1_SAMPLE_SYNC_EN   at 0 range 8 .. 8;
      ACMP2_SAMPLE_SYNC_EN   at 0 range 9 .. 9;
      ACMP3_SAMPLE_SYNC_EN   at 0 range 10 .. 10;
      ACMP4_SAMPLE_SYNC_EN   at 0 range 11 .. 11;
      Reserved_12_15         at 0 range 12 .. 15;
      CM7_MX6RT_CFGITCMSZ    at 0 range 16 .. 19;
      CM7_MX6RT_CFGDTCMSZ    at 0 range 20 .. 23;
      Reserved_24_31         at 0 range 24 .. 31;
   end record;

   --  ITCM enable initialization out of reset
   type GPR16_INIT_ITCM_EN_Field is
     (
      --  ITCM is disabled
      Init_Itcm_En_0,
      --  ITCM is enabled
      Init_Itcm_En_1)
     with Size => 1;
   for GPR16_INIT_ITCM_EN_Field use
     (Init_Itcm_En_0 => 0,
      Init_Itcm_En_1 => 1);

   --  DTCM enable initialization out of reset
   type GPR16_INIT_DTCM_EN_Field is
     (
      --  DTCM is disabled
      Init_Dtcm_En_0,
      --  DTCM is enabled
      Init_Dtcm_En_1)
     with Size => 1;
   for GPR16_INIT_DTCM_EN_Field use
     (Init_Dtcm_En_0 => 0,
      Init_Dtcm_En_1 => 1);

   --  FlexRAM bank config source select
   type GPR16_FLEXRAM_BANK_CFG_SEL_Field is
     (
      --  use fuse value to config
      Flexram_Bank_Cfg_Sel_0,
      --  use FLEXRAM_BANK_CFG to config
      Flexram_Bank_Cfg_Sel_1)
     with Size => 1;
   for GPR16_FLEXRAM_BANK_CFG_SEL_Field use
     (Flexram_Bank_Cfg_Sel_0 => 0,
      Flexram_Bank_Cfg_Sel_1 => 1);

   subtype IOMUXC_GPR_GPR16_CM7_INIT_VTOR_Field is HAL.UInt25;

   --  GPR16 General Purpose Register
   type IOMUXC_GPR_GPR16_Register is record
      --  ITCM enable initialization out of reset
      INIT_ITCM_EN         : GPR16_INIT_ITCM_EN_Field :=
                              NRF_SVD.IOMUXC_GPR.Init_Itcm_En_1;
      --  DTCM enable initialization out of reset
      INIT_DTCM_EN         : GPR16_INIT_DTCM_EN_Field :=
                              NRF_SVD.IOMUXC_GPR.Init_Dtcm_En_1;
      --  FlexRAM bank config source select
      FLEXRAM_BANK_CFG_SEL : GPR16_FLEXRAM_BANK_CFG_SEL_Field :=
                              NRF_SVD.IOMUXC_GPR.Flexram_Bank_Cfg_Sel_0;
      --  unspecified
      Reserved_3_6         : HAL.UInt4 := 16#0#;
      --  Vector table offset register out of reset
      CM7_INIT_VTOR        : IOMUXC_GPR_GPR16_CM7_INIT_VTOR_Field := 16#4000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR16_Register use record
      INIT_ITCM_EN         at 0 range 0 .. 0;
      INIT_DTCM_EN         at 0 range 1 .. 1;
      FLEXRAM_BANK_CFG_SEL at 0 range 2 .. 2;
      Reserved_3_6         at 0 range 3 .. 6;
      CM7_INIT_VTOR        at 0 range 7 .. 31;
   end record;

   --  lock M7_APC_AC_R0_BOT field for changes
   type GPR18_LOCK_M7_APC_AC_R0_BOT_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R0_Bot_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R0_Bot_1)
     with Size => 1;
   for GPR18_LOCK_M7_APC_AC_R0_BOT_Field use
     (Lock_M7_Apc_Ac_R0_Bot_0 => 0,
      Lock_M7_Apc_Ac_R0_Bot_1 => 1);

   subtype IOMUXC_GPR_GPR18_M7_APC_AC_R0_BOT_Field is HAL.UInt29;

   --  GPR18 General Purpose Register
   type IOMUXC_GPR_GPR18_Register is record
      --  lock M7_APC_AC_R0_BOT field for changes
      LOCK_M7_APC_AC_R0_BOT : GPR18_LOCK_M7_APC_AC_R0_BOT_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R0_Bot_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC end address of memory region-0
      M7_APC_AC_R0_BOT      : IOMUXC_GPR_GPR18_M7_APC_AC_R0_BOT_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR18_Register use record
      LOCK_M7_APC_AC_R0_BOT at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R0_BOT      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R0_TOP field for changes
   type GPR19_LOCK_M7_APC_AC_R0_TOP_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R0_Top_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R0_Top_1)
     with Size => 1;
   for GPR19_LOCK_M7_APC_AC_R0_TOP_Field use
     (Lock_M7_Apc_Ac_R0_Top_0 => 0,
      Lock_M7_Apc_Ac_R0_Top_1 => 1);

   subtype IOMUXC_GPR_GPR19_M7_APC_AC_R0_TOP_Field is HAL.UInt29;

   --  GPR19 General Purpose Register
   type IOMUXC_GPR_GPR19_Register is record
      --  lock M7_APC_AC_R0_TOP field for changes
      LOCK_M7_APC_AC_R0_TOP : GPR19_LOCK_M7_APC_AC_R0_TOP_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R0_Top_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC start address of memory region-0
      M7_APC_AC_R0_TOP      : IOMUXC_GPR_GPR19_M7_APC_AC_R0_TOP_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR19_Register use record
      LOCK_M7_APC_AC_R0_TOP at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R0_TOP      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R1_BOT field for changes
   type GPR20_LOCK_M7_APC_AC_R1_BOT_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R1_Bot_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R1_Bot_1)
     with Size => 1;
   for GPR20_LOCK_M7_APC_AC_R1_BOT_Field use
     (Lock_M7_Apc_Ac_R1_Bot_0 => 0,
      Lock_M7_Apc_Ac_R1_Bot_1 => 1);

   subtype IOMUXC_GPR_GPR20_M7_APC_AC_R1_BOT_Field is HAL.UInt29;

   --  GPR20 General Purpose Register
   type IOMUXC_GPR_GPR20_Register is record
      --  lock M7_APC_AC_R1_BOT field for changes
      LOCK_M7_APC_AC_R1_BOT : GPR20_LOCK_M7_APC_AC_R1_BOT_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R1_Bot_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC end address of memory region-1
      M7_APC_AC_R1_BOT      : IOMUXC_GPR_GPR20_M7_APC_AC_R1_BOT_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR20_Register use record
      LOCK_M7_APC_AC_R1_BOT at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R1_BOT      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R1_TOP field for changes
   type GPR21_LOCK_M7_APC_AC_R1_TOP_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R1_Top_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R1_Top_1)
     with Size => 1;
   for GPR21_LOCK_M7_APC_AC_R1_TOP_Field use
     (Lock_M7_Apc_Ac_R1_Top_0 => 0,
      Lock_M7_Apc_Ac_R1_Top_1 => 1);

   subtype IOMUXC_GPR_GPR21_M7_APC_AC_R1_TOP_Field is HAL.UInt29;

   --  GPR21 General Purpose Register
   type IOMUXC_GPR_GPR21_Register is record
      --  lock M7_APC_AC_R1_TOP field for changes
      LOCK_M7_APC_AC_R1_TOP : GPR21_LOCK_M7_APC_AC_R1_TOP_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R1_Top_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC start address of memory region-1
      M7_APC_AC_R1_TOP      : IOMUXC_GPR_GPR21_M7_APC_AC_R1_TOP_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR21_Register use record
      LOCK_M7_APC_AC_R1_TOP at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R1_TOP      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R2_BOT field for changes
   type GPR22_LOCK_M7_APC_AC_R2_BOT_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R2_Bot_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R2_Bot_1)
     with Size => 1;
   for GPR22_LOCK_M7_APC_AC_R2_BOT_Field use
     (Lock_M7_Apc_Ac_R2_Bot_0 => 0,
      Lock_M7_Apc_Ac_R2_Bot_1 => 1);

   subtype IOMUXC_GPR_GPR22_M7_APC_AC_R2_BOT_Field is HAL.UInt29;

   --  GPR22 General Purpose Register
   type IOMUXC_GPR_GPR22_Register is record
      --  lock M7_APC_AC_R2_BOT field for changes
      LOCK_M7_APC_AC_R2_BOT : GPR22_LOCK_M7_APC_AC_R2_BOT_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R2_Bot_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC end address of memory region-2
      M7_APC_AC_R2_BOT      : IOMUXC_GPR_GPR22_M7_APC_AC_R2_BOT_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR22_Register use record
      LOCK_M7_APC_AC_R2_BOT at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R2_BOT      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R2_TOP field for changes
   type GPR23_LOCK_M7_APC_AC_R1_TOP_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R1_Top_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R1_Top_1)
     with Size => 1;
   for GPR23_LOCK_M7_APC_AC_R1_TOP_Field use
     (Lock_M7_Apc_Ac_R1_Top_0 => 0,
      Lock_M7_Apc_Ac_R1_Top_1 => 1);

   subtype IOMUXC_GPR_GPR23_M7_APC_AC_R2_TOP_Field is HAL.UInt29;

   --  GPR23 General Purpose Register
   type IOMUXC_GPR_GPR23_Register is record
      --  lock M7_APC_AC_R2_TOP field for changes
      LOCK_M7_APC_AC_R1_TOP : GPR23_LOCK_M7_APC_AC_R1_TOP_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R1_Top_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC start address of memory region-2
      M7_APC_AC_R2_TOP      : IOMUXC_GPR_GPR23_M7_APC_AC_R2_TOP_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR23_Register use record
      LOCK_M7_APC_AC_R1_TOP at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R2_TOP      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R3_BOT field for changes
   type GPR24_LOCK_M7_APC_AC_R3_BOT_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R3_Bot_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R3_Bot_1)
     with Size => 1;
   for GPR24_LOCK_M7_APC_AC_R3_BOT_Field use
     (Lock_M7_Apc_Ac_R3_Bot_0 => 0,
      Lock_M7_Apc_Ac_R3_Bot_1 => 1);

   subtype IOMUXC_GPR_GPR24_M7_APC_AC_R2_BOT_Field is HAL.UInt29;

   --  GPR24 General Purpose Register
   type IOMUXC_GPR_GPR24_Register is record
      --  lock M7_APC_AC_R3_BOT field for changes
      LOCK_M7_APC_AC_R3_BOT : GPR24_LOCK_M7_APC_AC_R3_BOT_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R3_Bot_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC end address of memory region-3
      M7_APC_AC_R2_BOT      : IOMUXC_GPR_GPR24_M7_APC_AC_R2_BOT_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR24_Register use record
      LOCK_M7_APC_AC_R3_BOT at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R2_BOT      at 0 range 3 .. 31;
   end record;

   --  lock M7_APC_AC_R3_TOP field for changes
   type GPR25_LOCK_M7_APC_AC_R3_TOP_Field is
     (
      --  Register field [31:1] is not locked
      Lock_M7_Apc_Ac_R3_Top_0,
      --  Register field [31:1] is locked (read access only)
      Lock_M7_Apc_Ac_R3_Top_1)
     with Size => 1;
   for GPR25_LOCK_M7_APC_AC_R3_TOP_Field use
     (Lock_M7_Apc_Ac_R3_Top_0 => 0,
      Lock_M7_Apc_Ac_R3_Top_1 => 1);

   subtype IOMUXC_GPR_GPR25_M7_APC_AC_R3_TOP_Field is HAL.UInt29;

   --  GPR25 General Purpose Register
   type IOMUXC_GPR_GPR25_Register is record
      --  lock M7_APC_AC_R3_TOP field for changes
      LOCK_M7_APC_AC_R3_TOP : GPR25_LOCK_M7_APC_AC_R3_TOP_Field :=
                               NRF_SVD.IOMUXC_GPR.Lock_M7_Apc_Ac_R3_Top_0;
      --  unspecified
      Reserved_1_2          : HAL.UInt2 := 16#0#;
      --  APC start address of memory region-3
      M7_APC_AC_R3_TOP      : IOMUXC_GPR_GPR25_M7_APC_AC_R3_TOP_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_GPR_GPR25_Register use record
      LOCK_M7_APC_AC_R3_TOP at 0 range 0 .. 0;
      Reserved_1_2          at 0 range 1 .. 2;
      M7_APC_AC_R3_TOP      at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IOMUXC_GPR
   type IOMUXC_GPR_Peripheral is record
      --  GPR0 General Purpose Register
      GPR0  : aliased HAL.UInt32;
      --  GPR1 General Purpose Register
      GPR1  : aliased IOMUXC_GPR_GPR1_Register;
      --  GPR2 General Purpose Register
      GPR2  : aliased IOMUXC_GPR_GPR2_Register;
      --  GPR3 General Purpose Register
      GPR3  : aliased IOMUXC_GPR_GPR3_Register;
      --  GPR4 General Purpose Register
      GPR4  : aliased IOMUXC_GPR_GPR4_Register;
      --  GPR5 General Purpose Register
      GPR5  : aliased IOMUXC_GPR_GPR5_Register;
      --  GPR6 General Purpose Register
      GPR6  : aliased IOMUXC_GPR_GPR6_Register;
      --  GPR7 General Purpose Register
      GPR7  : aliased IOMUXC_GPR_GPR7_Register;
      --  GPR8 General Purpose Register
      GPR8  : aliased IOMUXC_GPR_GPR8_Register;
      --  GPR9 General Purpose Register
      GPR9  : aliased HAL.UInt32;
      --  GPR10 General Purpose Register
      GPR10 : aliased IOMUXC_GPR_GPR10_Register;
      --  GPR11 General Purpose Register
      GPR11 : aliased IOMUXC_GPR_GPR11_Register;
      --  GPR12 General Purpose Register
      GPR12 : aliased IOMUXC_GPR_GPR12_Register;
      --  GPR13 General Purpose Register
      GPR13 : aliased IOMUXC_GPR_GPR13_Register;
      --  GPR14 General Purpose Register
      GPR14 : aliased IOMUXC_GPR_GPR14_Register;
      --  GPR15 General Purpose Register
      GPR15 : aliased HAL.UInt32;
      --  GPR16 General Purpose Register
      GPR16 : aliased IOMUXC_GPR_GPR16_Register;
      --  GPR17 General Purpose Register
      GPR17 : aliased HAL.UInt32;
      --  GPR18 General Purpose Register
      GPR18 : aliased IOMUXC_GPR_GPR18_Register;
      --  GPR19 General Purpose Register
      GPR19 : aliased IOMUXC_GPR_GPR19_Register;
      --  GPR20 General Purpose Register
      GPR20 : aliased IOMUXC_GPR_GPR20_Register;
      --  GPR21 General Purpose Register
      GPR21 : aliased IOMUXC_GPR_GPR21_Register;
      --  GPR22 General Purpose Register
      GPR22 : aliased IOMUXC_GPR_GPR22_Register;
      --  GPR23 General Purpose Register
      GPR23 : aliased IOMUXC_GPR_GPR23_Register;
      --  GPR24 General Purpose Register
      GPR24 : aliased IOMUXC_GPR_GPR24_Register;
      --  GPR25 General Purpose Register
      GPR25 : aliased IOMUXC_GPR_GPR25_Register;
   end record
     with Volatile;

   for IOMUXC_GPR_Peripheral use record
      GPR0  at 16#0# range 0 .. 31;
      GPR1  at 16#4# range 0 .. 31;
      GPR2  at 16#8# range 0 .. 31;
      GPR3  at 16#C# range 0 .. 31;
      GPR4  at 16#10# range 0 .. 31;
      GPR5  at 16#14# range 0 .. 31;
      GPR6  at 16#18# range 0 .. 31;
      GPR7  at 16#1C# range 0 .. 31;
      GPR8  at 16#20# range 0 .. 31;
      GPR9  at 16#24# range 0 .. 31;
      GPR10 at 16#28# range 0 .. 31;
      GPR11 at 16#2C# range 0 .. 31;
      GPR12 at 16#30# range 0 .. 31;
      GPR13 at 16#34# range 0 .. 31;
      GPR14 at 16#38# range 0 .. 31;
      GPR15 at 16#3C# range 0 .. 31;
      GPR16 at 16#40# range 0 .. 31;
      GPR17 at 16#44# range 0 .. 31;
      GPR18 at 16#48# range 0 .. 31;
      GPR19 at 16#4C# range 0 .. 31;
      GPR20 at 16#50# range 0 .. 31;
      GPR21 at 16#54# range 0 .. 31;
      GPR22 at 16#58# range 0 .. 31;
      GPR23 at 16#5C# range 0 .. 31;
      GPR24 at 16#60# range 0 .. 31;
      GPR25 at 16#64# range 0 .. 31;
   end record;

   --  IOMUXC_GPR
   IOMUXC_GPR_Periph : aliased IOMUXC_GPR_Peripheral
     with Import, Address => System'To_Address (16#400AC000#);

end NRF_SVD.IOMUXC_GPR;
