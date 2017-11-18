--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Oscillator ready counter value
   type CCR_OSCNT_Field is
     (
      --  count 1 ckil
      Oscnt_0,
      --  Reset value for the field
      Ccr_Oscnt_Field_Reset,
      --  count 256 ckil's
      Oscnt_255)
     with Size => 8;
   for CCR_OSCNT_Field use
     (Oscnt_0 => 0,
      Ccr_Oscnt_Field_Reset => 127,
      Oscnt_255 => 255);

   --  On chip oscillator enable bit - this bit value is reflected on the
   --  output cosc_en
   type CCR_COSC_EN_Field is
     (
      --  disable on chip oscillator
      Cosc_En_0,
      --  enable on chip oscillator
      Cosc_En_1)
     with Size => 1;
   for CCR_COSC_EN_Field use
     (Cosc_En_0 => 0,
      Cosc_En_1 => 1);

   --  Counter for analog_reg_bypass signal assertion after standby voltage
   --  request by PMIC_STBY_REQ
   type CCR_REG_BYPASS_COUNT_Field is
     (
      --  no delay
      Reg_Bypass_Count_0,
      --  1 CKIL clock period delay
      Reg_Bypass_Count_1,
      --  Reset value for the field
      Ccr_Reg_Bypass_Count_Field_Reset,
      --  63 CKIL clock periods delay
      Reg_Bypass_Count_63)
     with Size => 6;
   for CCR_REG_BYPASS_COUNT_Field use
     (Reg_Bypass_Count_0 => 0,
      Reg_Bypass_Count_1 => 1,
      Ccr_Reg_Bypass_Count_Field_Reset => 32,
      Reg_Bypass_Count_63 => 63);

   --  Enable for REG_BYPASS_COUNTER
   type CCR_RBC_EN_Field is
     (
      --  REG_BYPASS_COUNTER disabled
      Rbc_En_0,
      --  REG_BYPASS_COUNTER enabled.
      Rbc_En_1)
     with Size => 1;
   for CCR_RBC_EN_Field use
     (Rbc_En_0 => 0,
      Rbc_En_1 => 1);

   --  CCM Control Register
   type CCM_CCR_Register is record
      --  Oscillator ready counter value
      OSCNT            : CCR_OSCNT_Field := Ccr_Oscnt_Field_Reset;
      --  unspecified
      Reserved_8_11    : HAL.UInt4 := 16#6#;
      --  On chip oscillator enable bit - this bit value is reflected on the
      --  output cosc_en
      COSC_EN          : CCR_COSC_EN_Field := NRF_SVD.CCM.Cosc_En_1;
      --  unspecified
      Reserved_13_20   : HAL.UInt8 := 16#8#;
      --  Counter for analog_reg_bypass signal assertion after standby voltage
      --  request by PMIC_STBY_REQ
      REG_BYPASS_COUNT : CCR_REG_BYPASS_COUNT_Field :=
                          Ccr_Reg_Bypass_Count_Field_Reset;
      --  Enable for REG_BYPASS_COUNTER
      RBC_EN           : CCR_RBC_EN_Field := NRF_SVD.CCM.Rbc_En_0;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CCR_Register use record
      OSCNT            at 0 range 0 .. 7;
      Reserved_8_11    at 0 range 8 .. 11;
      COSC_EN          at 0 range 12 .. 12;
      Reserved_13_20   at 0 range 13 .. 20;
      REG_BYPASS_COUNT at 0 range 21 .. 26;
      RBC_EN           at 0 range 27 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  Status of the value of CCM_REF_EN_B output of ccm
   type CSR_REF_EN_B_Field is
     (
      --  value of CCM_REF_EN_B is '0'
      Ref_En_B_0,
      --  value of CCM_REF_EN_B is '1'
      Ref_En_B_1)
     with Size => 1;
   for CSR_REF_EN_B_Field use
     (Ref_En_B_0 => 0,
      Ref_En_B_1 => 1);

   --  Status indication of CAMP2.
   type CSR_CAMP2_READY_Field is
     (
      --  CAMP2 is not ready.
      Camp2_Ready_0,
      --  CAMP2 is ready.
      Camp2_Ready_1)
     with Size => 1;
   for CSR_CAMP2_READY_Field use
     (Camp2_Ready_0 => 0,
      Camp2_Ready_1 => 1);

   --  Status indication of on board oscillator
   type CSR_COSC_READY_Field is
     (
      --  on board oscillator is not ready.
      Cosc_Ready_0,
      --  on board oscillator is ready.
      Cosc_Ready_1)
     with Size => 1;
   for CSR_COSC_READY_Field use
     (Cosc_Ready_0 => 0,
      Cosc_Ready_1 => 1);

   --  CCM Status Register
   type CCM_CSR_Register is record
      --  Read-only. Status of the value of CCM_REF_EN_B output of ccm
      REF_EN_B      : CSR_REF_EN_B_Field;
      --  unspecified
      Reserved_1_2  : HAL.UInt2;
      --  Read-only. Status indication of CAMP2.
      CAMP2_READY   : CSR_CAMP2_READY_Field;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Status indication of on board oscillator
      COSC_READY    : CSR_COSC_READY_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CSR_Register use record
      REF_EN_B      at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      CAMP2_READY   at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      COSC_READY    at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Selects source to generate pll3_sw_clk. This bit should only be used for
   --  testing purposes.
   type CCSR_PLL3_SW_CLK_SEL_Field is
     (
      --  pll3_main_clk
      Pll3_Sw_Clk_Sel_0,
      --  pll3 bypass clock
      Pll3_Sw_Clk_Sel_1)
     with Size => 1;
   for CCSR_PLL3_SW_CLK_SEL_Field use
     (Pll3_Sw_Clk_Sel_0 => 0,
      Pll3_Sw_Clk_Sel_1 => 1);

   --  CCM Clock Switcher Register
   type CCM_CCSR_Register is record
      --  Selects source to generate pll3_sw_clk. This bit should only be used
      --  for testing purposes.
      PLL3_SW_CLK_SEL : CCSR_PLL3_SW_CLK_SEL_Field :=
                         NRF_SVD.CCM.Pll3_Sw_Clk_Sel_0;
      --  unspecified
      Reserved_1_31   : HAL.UInt31 := 16#80#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CCSR_Register use record
      PLL3_SW_CLK_SEL at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Divider for ARM clock root
   type CACRR_ARM_PODF_Field is
     (
      --  divide by 1
      Arm_Podf_0,
      --  divide by 2
      Arm_Podf_1,
      --  divide by 3
      Arm_Podf_2,
      --  divide by 4
      Arm_Podf_3,
      --  divide by 5
      Arm_Podf_4,
      --  divide by 6
      Arm_Podf_5,
      --  divide by 7
      Arm_Podf_6,
      --  divide by 8
      Arm_Podf_7)
     with Size => 3;
   for CACRR_ARM_PODF_Field use
     (Arm_Podf_0 => 0,
      Arm_Podf_1 => 1,
      Arm_Podf_2 => 2,
      Arm_Podf_3 => 3,
      Arm_Podf_4 => 4,
      Arm_Podf_5 => 5,
      Arm_Podf_6 => 6,
      Arm_Podf_7 => 7);

   --  CCM Arm Clock Root Register
   type CCM_CACRR_Register is record
      --  Divider for ARM clock root
      ARM_PODF      : CACRR_ARM_PODF_Field := NRF_SVD.CCM.Arm_Podf_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CACRR_Register use record
      ARM_PODF      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SEMC clock source select
   type CBCDR_SEMC_CLK_SEL_Field is
     (
      --  Periph_clk output will be used as SEMC clock root
      Semc_Clk_Sel_0,
      --  SEMC alternative clock will be used as SEMC clock root
      Semc_Clk_Sel_1)
     with Size => 1;
   for CBCDR_SEMC_CLK_SEL_Field use
     (Semc_Clk_Sel_0 => 0,
      Semc_Clk_Sel_1 => 1);

   --  SEMC alternative clock select
   type CBCDR_SEMC_ALT_CLK_SEL_Field is
     (
      --  PLL2 PFD2 will be selected as alternative clock for SEMC root clock
      Semc_Alt_Clk_Sel_0,
      --  PLL3 PFD1 will be selected as alternative clock for SEMC root clock
      Semc_Alt_Clk_Sel_1)
     with Size => 1;
   for CBCDR_SEMC_ALT_CLK_SEL_Field use
     (Semc_Alt_Clk_Sel_0 => 0,
      Semc_Alt_Clk_Sel_1 => 1);

   --  Divider for ipg podf
   type CBCDR_IPG_PODF_Field is
     (
      --  divide by 1
      Ipg_Podf_0,
      --  divide by 2
      Ipg_Podf_1,
      --  divide by 3
      Ipg_Podf_2,
      --  divide by 4
      Ipg_Podf_3)
     with Size => 2;
   for CBCDR_IPG_PODF_Field use
     (Ipg_Podf_0 => 0,
      Ipg_Podf_1 => 1,
      Ipg_Podf_2 => 2,
      Ipg_Podf_3 => 3);

   --  Divider for AHB PODF
   type CBCDR_AHB_PODF_Field is
     (
      --  divide by 1
      Ahb_Podf_0,
      --  divide by 2
      Ahb_Podf_1,
      --  divide by 3
      Ahb_Podf_2,
      --  divide by 4
      Ahb_Podf_3,
      --  divide by 5
      Ahb_Podf_4,
      --  divide by 6
      Ahb_Podf_5,
      --  divide by 7
      Ahb_Podf_6,
      --  divide by 8
      Ahb_Podf_7)
     with Size => 3;
   for CBCDR_AHB_PODF_Field use
     (Ahb_Podf_0 => 0,
      Ahb_Podf_1 => 1,
      Ahb_Podf_2 => 2,
      Ahb_Podf_3 => 3,
      Ahb_Podf_4 => 4,
      Ahb_Podf_5 => 5,
      Ahb_Podf_6 => 6,
      Ahb_Podf_7 => 7);

   --  Post divider for SEMC clock
   type CBCDR_SEMC_PODF_Field is
     (
      --  divide by 1
      Semc_Podf_0,
      --  divide by 2
      Semc_Podf_1,
      --  divide by 3
      Semc_Podf_2,
      --  divide by 4
      Semc_Podf_3,
      --  divide by 5
      Semc_Podf_4,
      --  divide by 6
      Semc_Podf_5,
      --  divide by 7
      Semc_Podf_6,
      --  divide by 8
      Semc_Podf_7)
     with Size => 3;
   for CBCDR_SEMC_PODF_Field use
     (Semc_Podf_0 => 0,
      Semc_Podf_1 => 1,
      Semc_Podf_2 => 2,
      Semc_Podf_3 => 3,
      Semc_Podf_4 => 4,
      Semc_Podf_5 => 5,
      Semc_Podf_6 => 6,
      Semc_Podf_7 => 7);

   --  Selector for peripheral main clock
   type CBCDR_PERIPH_CLK_SEL_Field is
     (
      --  derive clock from pre_periph_clk_sel
      Periph_Clk_Sel_0,
      --  derive clock from periph_clk2_clk_divided
      Periph_Clk_Sel_1)
     with Size => 1;
   for CBCDR_PERIPH_CLK_SEL_Field use
     (Periph_Clk_Sel_0 => 0,
      Periph_Clk_Sel_1 => 1);

   --  Divider for periph_clk2_podf.
   type CBCDR_PERIPH_CLK2_PODF_Field is
     (
      --  divide by 1
      Periph_Clk2_Podf_0,
      --  divide by 2
      Periph_Clk2_Podf_1,
      --  divide by 3
      Periph_Clk2_Podf_2,
      --  divide by 4
      Periph_Clk2_Podf_3,
      --  divide by 5
      Periph_Clk2_Podf_4,
      --  divide by 6
      Periph_Clk2_Podf_5,
      --  divide by 7
      Periph_Clk2_Podf_6,
      --  divide by 8
      Periph_Clk2_Podf_7)
     with Size => 3;
   for CBCDR_PERIPH_CLK2_PODF_Field use
     (Periph_Clk2_Podf_0 => 0,
      Periph_Clk2_Podf_1 => 1,
      Periph_Clk2_Podf_2 => 2,
      Periph_Clk2_Podf_3 => 3,
      Periph_Clk2_Podf_4 => 4,
      Periph_Clk2_Podf_5 => 5,
      Periph_Clk2_Podf_6 => 6,
      Periph_Clk2_Podf_7 => 7);

   --  CCM Bus Clock Divider Register
   type CCM_CBCDR_Register is record
      --  unspecified
      Reserved_0_5     : HAL.UInt6 := 16#0#;
      --  SEMC clock source select
      SEMC_CLK_SEL     : CBCDR_SEMC_CLK_SEL_Field :=
                          NRF_SVD.CCM.Semc_Clk_Sel_0;
      --  SEMC alternative clock select
      SEMC_ALT_CLK_SEL : CBCDR_SEMC_ALT_CLK_SEL_Field :=
                          NRF_SVD.CCM.Semc_Alt_Clk_Sel_0;
      --  Divider for ipg podf
      IPG_PODF         : CBCDR_IPG_PODF_Field := NRF_SVD.CCM.Ipg_Podf_2;
      --  Divider for AHB PODF
      AHB_PODF         : CBCDR_AHB_PODF_Field := NRF_SVD.CCM.Ahb_Podf_1;
      --  unspecified
      Reserved_13_15   : HAL.UInt3 := 16#4#;
      --  Post divider for SEMC clock
      SEMC_PODF        : CBCDR_SEMC_PODF_Field := NRF_SVD.CCM.Semc_Podf_3;
      --  unspecified
      Reserved_19_24   : HAL.UInt6 := 16#1#;
      --  Selector for peripheral main clock
      PERIPH_CLK_SEL   : CBCDR_PERIPH_CLK_SEL_Field :=
                          NRF_SVD.CCM.Periph_Clk_Sel_0;
      --  unspecified
      Reserved_26_26   : HAL.Bit := 16#0#;
      --  Divider for periph_clk2_podf.
      PERIPH_CLK2_PODF : CBCDR_PERIPH_CLK2_PODF_Field :=
                          NRF_SVD.CCM.Periph_Clk2_Podf_0;
      --  unspecified
      Reserved_30_31   : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CBCDR_Register use record
      Reserved_0_5     at 0 range 0 .. 5;
      SEMC_CLK_SEL     at 0 range 6 .. 6;
      SEMC_ALT_CLK_SEL at 0 range 7 .. 7;
      IPG_PODF         at 0 range 8 .. 9;
      AHB_PODF         at 0 range 10 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      SEMC_PODF        at 0 range 16 .. 18;
      Reserved_19_24   at 0 range 19 .. 24;
      PERIPH_CLK_SEL   at 0 range 25 .. 25;
      Reserved_26_26   at 0 range 26 .. 26;
      PERIPH_CLK2_PODF at 0 range 27 .. 29;
      Reserved_30_31   at 0 range 30 .. 31;
   end record;

   --  Selector for lpspi clock multiplexer
   type CBCMR_LPSPI_CLK_SEL_Field is
     (
      --  derive clock from PLL3 PFD1 clk
      Lpspi_Clk_Sel_0,
      --  derive clock from PLL3 PFD0
      Lpspi_Clk_Sel_1,
      --  derive clock from PLL2
      Lpspi_Clk_Sel_2,
      --  derive clock from PLL2 PFD2
      Lpspi_Clk_Sel_3)
     with Size => 2;
   for CBCMR_LPSPI_CLK_SEL_Field use
     (Lpspi_Clk_Sel_0 => 0,
      Lpspi_Clk_Sel_1 => 1,
      Lpspi_Clk_Sel_2 => 2,
      Lpspi_Clk_Sel_3 => 3);

   --  Selector for peripheral clk2 clock multiplexer
   type CBCMR_PERIPH_CLK2_SEL_Field is
     (
      --  derive clock from pll3_sw_clk
      Periph_Clk2_Sel_0,
      --  derive clock from osc_clk (pll1_ref_clk)
      Periph_Clk2_Sel_1,
      --  derive clock from pll2_bypass_clk
      Periph_Clk2_Sel_2)
     with Size => 2;
   for CBCMR_PERIPH_CLK2_SEL_Field use
     (Periph_Clk2_Sel_0 => 0,
      Periph_Clk2_Sel_1 => 1,
      Periph_Clk2_Sel_2 => 2);

   --  Selector for Trace clock multiplexer
   type CBCMR_TRACE_CLK_SEL_Field is
     (
      --  derive clock from PLL2
      Trace_Clk_Sel_0,
      --  derive clock from PLL2 PFD2
      Trace_Clk_Sel_1,
      --  derive clock from PLL2 PFD0
      Trace_Clk_Sel_2,
      --  derive clock from PLL2 PFD1
      Trace_Clk_Sel_3)
     with Size => 2;
   for CBCMR_TRACE_CLK_SEL_Field use
     (Trace_Clk_Sel_0 => 0,
      Trace_Clk_Sel_1 => 1,
      Trace_Clk_Sel_2 => 2,
      Trace_Clk_Sel_3 => 3);

   --  Selector for pre_periph clock multiplexer
   type CBCMR_PRE_PERIPH_CLK_SEL_Field is
     (
      --  derive clock from PLL2
      Pre_Periph_Clk_Sel_0,
      --  derive clock from PLL2 PFD2
      Pre_Periph_Clk_Sel_1,
      --  derive clock from PLL2 PFD0
      Pre_Periph_Clk_Sel_2,
      --  derive clock from divided PLL1
      Pre_Periph_Clk_Sel_3)
     with Size => 2;
   for CBCMR_PRE_PERIPH_CLK_SEL_Field use
     (Pre_Periph_Clk_Sel_0 => 0,
      Pre_Periph_Clk_Sel_1 => 1,
      Pre_Periph_Clk_Sel_2 => 2,
      Pre_Periph_Clk_Sel_3 => 3);

   --  Post-divider for LCDIF clock.
   type CBCMR_LCDIF_PODF_Field is
     (
      --  divide by 1
      Lcdif_Podf_0,
      --  divide by 2
      Lcdif_Podf_1,
      --  divide by 3
      Lcdif_Podf_2,
      --  divide by 4
      Lcdif_Podf_3,
      --  divide by 5
      Lcdif_Podf_4,
      --  divide by 6
      Lcdif_Podf_5,
      --  divide by 7
      Lcdif_Podf_6,
      --  divide by 8
      Lcdif_Podf_7)
     with Size => 3;
   for CBCMR_LCDIF_PODF_Field use
     (Lcdif_Podf_0 => 0,
      Lcdif_Podf_1 => 1,
      Lcdif_Podf_2 => 2,
      Lcdif_Podf_3 => 3,
      Lcdif_Podf_4 => 4,
      Lcdif_Podf_5 => 5,
      Lcdif_Podf_6 => 6,
      Lcdif_Podf_7 => 7);

   --  Divider for LPSPI. Divider should be updated when output clock is gated.
   type CBCMR_LPSPI_PODF_Field is
     (
      --  divide by 1
      Lpspi_Podf_0,
      --  divide by 2
      Lpspi_Podf_1,
      --  divide by 3
      Lpspi_Podf_2,
      --  divide by 4
      Lpspi_Podf_3,
      --  divide by 5
      Lpspi_Podf_4,
      --  divide by 6
      Lpspi_Podf_5,
      --  divide by 7
      Lpspi_Podf_6,
      --  divide by 8
      Lpspi_Podf_7)
     with Size => 3;
   for CBCMR_LPSPI_PODF_Field use
     (Lpspi_Podf_0 => 0,
      Lpspi_Podf_1 => 1,
      Lpspi_Podf_2 => 2,
      Lpspi_Podf_3 => 3,
      Lpspi_Podf_4 => 4,
      Lpspi_Podf_5 => 5,
      Lpspi_Podf_6 => 6,
      Lpspi_Podf_7 => 7);

   --  CCM Bus Clock Multiplexer Register
   type CCM_CBCMR_Register is record
      --  unspecified
      Reserved_0_3       : HAL.UInt4 := 16#4#;
      --  Selector for lpspi clock multiplexer
      LPSPI_CLK_SEL      : CBCMR_LPSPI_CLK_SEL_Field :=
                            NRF_SVD.CCM.Lpspi_Clk_Sel_2;
      --  unspecified
      Reserved_6_11      : HAL.UInt6 := 16#C#;
      --  Selector for peripheral clk2 clock multiplexer
      PERIPH_CLK2_SEL    : CBCMR_PERIPH_CLK2_SEL_Field :=
                            NRF_SVD.CCM.Periph_Clk2_Sel_0;
      --  Selector for Trace clock multiplexer
      TRACE_CLK_SEL      : CBCMR_TRACE_CLK_SEL_Field :=
                            NRF_SVD.CCM.Trace_Clk_Sel_2;
      --  unspecified
      Reserved_16_17     : HAL.UInt2 := 16#2#;
      --  Selector for pre_periph clock multiplexer
      PRE_PERIPH_CLK_SEL : CBCMR_PRE_PERIPH_CLK_SEL_Field :=
                            NRF_SVD.CCM.Pre_Periph_Clk_Sel_0;
      --  unspecified
      Reserved_20_22     : HAL.UInt3 := 16#2#;
      --  Post-divider for LCDIF clock.
      LCDIF_PODF         : CBCMR_LCDIF_PODF_Field := NRF_SVD.CCM.Lcdif_Podf_3;
      --  Divider for LPSPI. Divider should be updated when output clock is
      --  gated.
      LPSPI_PODF         : CBCMR_LPSPI_PODF_Field := NRF_SVD.CCM.Lpspi_Podf_3;
      --  unspecified
      Reserved_29_31     : HAL.UInt3 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CBCMR_Register use record
      Reserved_0_3       at 0 range 0 .. 3;
      LPSPI_CLK_SEL      at 0 range 4 .. 5;
      Reserved_6_11      at 0 range 6 .. 11;
      PERIPH_CLK2_SEL    at 0 range 12 .. 13;
      TRACE_CLK_SEL      at 0 range 14 .. 15;
      Reserved_16_17     at 0 range 16 .. 17;
      PRE_PERIPH_CLK_SEL at 0 range 18 .. 19;
      Reserved_20_22     at 0 range 20 .. 22;
      LCDIF_PODF         at 0 range 23 .. 25;
      LPSPI_PODF         at 0 range 26 .. 28;
      Reserved_29_31     at 0 range 29 .. 31;
   end record;

   --  Divider for perclk podf.
   type CSCMR1_PERCLK_PODF_Field is
     (
      --  divide by 1
      Perclk_Podf_0,
      --  divide by 2
      Perclk_Podf_1,
      --  divide by 3
      Perclk_Podf_2,
      --  divide by 4
      Perclk_Podf_3,
      --  divide by 5
      Perclk_Podf_4,
      --  divide by 6
      Perclk_Podf_5,
      --  divide by 7
      Perclk_Podf_6,
      --  divide by 64
      Perclk_Podf_63)
     with Size => 6;
   for CSCMR1_PERCLK_PODF_Field use
     (Perclk_Podf_0 => 0,
      Perclk_Podf_1 => 1,
      Perclk_Podf_2 => 2,
      Perclk_Podf_3 => 3,
      Perclk_Podf_4 => 4,
      Perclk_Podf_5 => 5,
      Perclk_Podf_6 => 6,
      Perclk_Podf_63 => 63);

   --  Selector for the perclk clock multiplexor
   type CSCMR1_PERCLK_CLK_SEL_Field is
     (
      --  derive clock from ipg clk root
      Perclk_Clk_Sel_0,
      --  derive clock from osc_clk
      Perclk_Clk_Sel_1)
     with Size => 1;
   for CSCMR1_PERCLK_CLK_SEL_Field use
     (Perclk_Clk_Sel_0 => 0,
      Perclk_Clk_Sel_1 => 1);

   --  Selector for sai1 clock multiplexer
   type CSCMR1_SAI1_CLK_SEL_Field is
     (
      --  derive clock from PLL3 PFD2
      Sai1_Clk_Sel_0,
      --  derive clock from PLL5
      Sai1_Clk_Sel_1,
      --  derive clock from PLL4
      Sai1_Clk_Sel_2)
     with Size => 2;
   for CSCMR1_SAI1_CLK_SEL_Field use
     (Sai1_Clk_Sel_0 => 0,
      Sai1_Clk_Sel_1 => 1,
      Sai1_Clk_Sel_2 => 2);

   --  Selector for sai2 clock multiplexer
   type CSCMR1_SAI2_CLK_SEL_Field is
     (
      --  derive clock from PLL3 PFD2
      Sai2_Clk_Sel_0,
      --  derive clock from PLL5
      Sai2_Clk_Sel_1,
      --  derive clock from PLL4
      Sai2_Clk_Sel_2)
     with Size => 2;
   for CSCMR1_SAI2_CLK_SEL_Field use
     (Sai2_Clk_Sel_0 => 0,
      Sai2_Clk_Sel_1 => 1,
      Sai2_Clk_Sel_2 => 2);

   --  Selector for sai3 clock multiplexer
   type CSCMR1_SAI3_CLK_SEL_Field is
     (
      --  derive clock from PLL3 PFD2
      Sai3_Clk_Sel_0,
      --  derive clock from PLL5
      Sai3_Clk_Sel_1,
      --  derive clock from PLL4
      Sai3_Clk_Sel_2)
     with Size => 2;
   for CSCMR1_SAI3_CLK_SEL_Field use
     (Sai3_Clk_Sel_0 => 0,
      Sai3_Clk_Sel_1 => 1,
      Sai3_Clk_Sel_2 => 2);

   --  Selector for usdhc1 clock multiplexer
   type CSCMR1_USDHC1_CLK_SEL_Field is
     (
      --  derive clock from PLL2 PFD2
      Usdhc1_Clk_Sel_0,
      --  derive clock from PLL2 PFD0
      Usdhc1_Clk_Sel_1)
     with Size => 1;
   for CSCMR1_USDHC1_CLK_SEL_Field use
     (Usdhc1_Clk_Sel_0 => 0,
      Usdhc1_Clk_Sel_1 => 1);

   --  Selector for usdhc2 clock multiplexer
   type CSCMR1_USDHC2_CLK_SEL_Field is
     (
      --  derive clock from PLL2 PFD2
      Usdhc2_Clk_Sel_0,
      --  derive clock from PLL2 PFD0
      Usdhc2_Clk_Sel_1)
     with Size => 1;
   for CSCMR1_USDHC2_CLK_SEL_Field use
     (Usdhc2_Clk_Sel_0 => 0,
      Usdhc2_Clk_Sel_1 => 1);

   --  Divider for flexspi clock root.
   type CSCMR1_FLEXSPI_PODF_Field is
     (
      --  divide by 1
      Flexspi_Podf_0,
      --  divide by 2
      Flexspi_Podf_1,
      --  divide by 3
      Flexspi_Podf_2,
      --  divide by 4
      Flexspi_Podf_3,
      --  divide by 5
      Flexspi_Podf_4,
      --  divide by 6
      Flexspi_Podf_5,
      --  divide by 7
      Flexspi_Podf_6,
      --  divide by 8
      Flexspi_Podf_7)
     with Size => 3;
   for CSCMR1_FLEXSPI_PODF_Field use
     (Flexspi_Podf_0 => 0,
      Flexspi_Podf_1 => 1,
      Flexspi_Podf_2 => 2,
      Flexspi_Podf_3 => 3,
      Flexspi_Podf_4 => 4,
      Flexspi_Podf_5 => 5,
      Flexspi_Podf_6 => 6,
      Flexspi_Podf_7 => 7);

   --  Selector for flexspi clock multiplexer
   type CSCMR1_FLEXSPI_CLK_SEL_Field is
     (
      --  derive clock from semc_clk_root_pre
      Flexspi_Clk_Sel_0,
      --  derive clock from pll3_sw_clk
      Flexspi_Clk_Sel_1,
      --  derive clock from PLL2 PFD2
      Flexspi_Clk_Sel_2,
      --  derive clock from PLL3 PFD0
      Flexspi_Clk_Sel_3)
     with Size => 2;
   for CSCMR1_FLEXSPI_CLK_SEL_Field use
     (Flexspi_Clk_Sel_0 => 0,
      Flexspi_Clk_Sel_1 => 1,
      Flexspi_Clk_Sel_2 => 2,
      Flexspi_Clk_Sel_3 => 3);

   --  CCM Serial Clock Multiplexer Register 1
   type CCM_CSCMR1_Register is record
      --  Divider for perclk podf.
      PERCLK_PODF     : CSCMR1_PERCLK_PODF_Field := NRF_SVD.CCM.Perclk_Podf_0;
      --  Selector for the perclk clock multiplexor
      PERCLK_CLK_SEL  : CSCMR1_PERCLK_CLK_SEL_Field :=
                         NRF_SVD.CCM.Perclk_Clk_Sel_0;
      --  unspecified
      Reserved_7_9    : HAL.UInt3 := 16#1#;
      --  Selector for sai1 clock multiplexer
      SAI1_CLK_SEL    : CSCMR1_SAI1_CLK_SEL_Field :=
                         NRF_SVD.CCM.Sai1_Clk_Sel_0;
      --  Selector for sai2 clock multiplexer
      SAI2_CLK_SEL    : CSCMR1_SAI2_CLK_SEL_Field :=
                         NRF_SVD.CCM.Sai2_Clk_Sel_0;
      --  Selector for sai3 clock multiplexer
      SAI3_CLK_SEL    : CSCMR1_SAI3_CLK_SEL_Field :=
                         NRF_SVD.CCM.Sai3_Clk_Sel_0;
      --  Selector for usdhc1 clock multiplexer
      USDHC1_CLK_SEL  : CSCMR1_USDHC1_CLK_SEL_Field :=
                         NRF_SVD.CCM.Usdhc1_Clk_Sel_0;
      --  Selector for usdhc2 clock multiplexer
      USDHC2_CLK_SEL  : CSCMR1_USDHC2_CLK_SEL_Field :=
                         NRF_SVD.CCM.Usdhc2_Clk_Sel_0;
      --  unspecified
      Reserved_18_22  : HAL.UInt5 := 16#4#;
      --  Divider for flexspi clock root.
      FLEXSPI_PODF    : CSCMR1_FLEXSPI_PODF_Field :=
                         NRF_SVD.CCM.Flexspi_Podf_1;
      --  unspecified
      Reserved_26_28  : HAL.UInt3 := 16#1#;
      --  Selector for flexspi clock multiplexer
      FLEXSPI_CLK_SEL : CSCMR1_FLEXSPI_CLK_SEL_Field :=
                         NRF_SVD.CCM.Flexspi_Clk_Sel_0;
      --  unspecified
      Reserved_31_31  : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CSCMR1_Register use record
      PERCLK_PODF     at 0 range 0 .. 5;
      PERCLK_CLK_SEL  at 0 range 6 .. 6;
      Reserved_7_9    at 0 range 7 .. 9;
      SAI1_CLK_SEL    at 0 range 10 .. 11;
      SAI2_CLK_SEL    at 0 range 12 .. 13;
      SAI3_CLK_SEL    at 0 range 14 .. 15;
      USDHC1_CLK_SEL  at 0 range 16 .. 16;
      USDHC2_CLK_SEL  at 0 range 17 .. 17;
      Reserved_18_22  at 0 range 18 .. 22;
      FLEXSPI_PODF    at 0 range 23 .. 25;
      Reserved_26_28  at 0 range 26 .. 28;
      FLEXSPI_CLK_SEL at 0 range 29 .. 30;
      Reserved_31_31  at 0 range 31 .. 31;
   end record;

   --  Divider for can clock podf.
   type CSCMR2_CAN_CLK_PODF_Field is
     (
      --  divide by 1
      Can_Clk_Podf_0,
      --  Reset value for the field
      Cscmr2_Can_Clk_Podf_Field_Reset,
      --  divide by 8
      Can_Clk_Podf_7,
      --  divide by 2^6
      Can_Clk_Podf_63)
     with Size => 6;
   for CSCMR2_CAN_CLK_PODF_Field use
     (Can_Clk_Podf_0 => 0,
      Cscmr2_Can_Clk_Podf_Field_Reset => 1,
      Can_Clk_Podf_7 => 7,
      Can_Clk_Podf_63 => 63);

   --  Selector for FlexCAN clock multiplexer
   type CSCMR2_CAN_CLK_SEL_Field is
     (
      --  derive clock from pll3_sw_clk divided clock (60M)
      Can_Clk_Sel_0,
      --  derive clock from osc_clk (24M)
      Can_Clk_Sel_1,
      --  derive clock from pll3_sw_clk divided clock (80M)
      Can_Clk_Sel_2)
     with Size => 2;
   for CSCMR2_CAN_CLK_SEL_Field use
     (Can_Clk_Sel_0 => 0,
      Can_Clk_Sel_1 => 1,
      Can_Clk_Sel_2 => 2);

   --  Selector for flexio2 clock multiplexer
   type CSCMR2_FLEXIO2_CLK_SEL_Field is
     (
      --  derive clock from PLL4 divided clock
      Flexio2_Clk_Sel_0,
      --  derive clock from PLL3 PFD2 clock
      Flexio2_Clk_Sel_1,
      --  derive clock from PLL5 clock
      Flexio2_Clk_Sel_2,
      --  derive clock from pll3_sw_clk
      Flexio2_Clk_Sel_3)
     with Size => 2;
   for CSCMR2_FLEXIO2_CLK_SEL_Field use
     (Flexio2_Clk_Sel_0 => 0,
      Flexio2_Clk_Sel_1 => 1,
      Flexio2_Clk_Sel_2 => 2,
      Flexio2_Clk_Sel_3 => 3);

   --  CCM Serial Clock Multiplexer Register 2
   type CCM_CSCMR2_Register is record
      --  unspecified
      Reserved_0_1    : HAL.UInt2 := 16#2#;
      --  Divider for can clock podf.
      CAN_CLK_PODF    : CSCMR2_CAN_CLK_PODF_Field :=
                         Cscmr2_Can_Clk_Podf_Field_Reset;
      --  Selector for FlexCAN clock multiplexer
      CAN_CLK_SEL     : CSCMR2_CAN_CLK_SEL_Field := NRF_SVD.CCM.Can_Clk_Sel_0;
      --  unspecified
      Reserved_10_18  : HAL.UInt9 := 16#4B#;
      --  Selector for flexio2 clock multiplexer
      FLEXIO2_CLK_SEL : CSCMR2_FLEXIO2_CLK_SEL_Field :=
                         NRF_SVD.CCM.Flexio2_Clk_Sel_3;
      --  unspecified
      Reserved_21_31  : HAL.UInt11 := 16#18#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CSCMR2_Register use record
      Reserved_0_1    at 0 range 0 .. 1;
      CAN_CLK_PODF    at 0 range 2 .. 7;
      CAN_CLK_SEL     at 0 range 8 .. 9;
      Reserved_10_18  at 0 range 10 .. 18;
      FLEXIO2_CLK_SEL at 0 range 19 .. 20;
      Reserved_21_31  at 0 range 21 .. 31;
   end record;

   --  Divider for uart clock podf.
   type CSCDR1_UART_CLK_PODF_Field is
     (
      --  divide by 1
      Uart_Clk_Podf_0,
      --  divide by 2^6
      Uart_Clk_Podf_63)
     with Size => 6;
   for CSCDR1_UART_CLK_PODF_Field use
     (Uart_Clk_Podf_0 => 0,
      Uart_Clk_Podf_63 => 63);

   --  Selector for the UART clock multiplexor
   type CSCDR1_UART_CLK_SEL_Field is
     (
      --  derive clock from pll3_80m
      Uart_Clk_Sel_0,
      --  derive clock from osc_clk
      Uart_Clk_Sel_1)
     with Size => 1;
   for CSCDR1_UART_CLK_SEL_Field use
     (Uart_Clk_Sel_0 => 0,
      Uart_Clk_Sel_1 => 1);

   --  Divider for usdhc1 clock podf. Divider should be updated when output
   --  clock is gated.
   type CSCDR1_USDHC1_PODF_Field is
     (
      --  divide by 1
      Usdhc1_Podf_0,
      --  divide by 2
      Usdhc1_Podf_1,
      --  divide by 3
      Usdhc1_Podf_2,
      --  divide by 4
      Usdhc1_Podf_3,
      --  divide by 5
      Usdhc1_Podf_4,
      --  divide by 6
      Usdhc1_Podf_5,
      --  divide by 7
      Usdhc1_Podf_6,
      --  divide by 8
      Usdhc1_Podf_7)
     with Size => 3;
   for CSCDR1_USDHC1_PODF_Field use
     (Usdhc1_Podf_0 => 0,
      Usdhc1_Podf_1 => 1,
      Usdhc1_Podf_2 => 2,
      Usdhc1_Podf_3 => 3,
      Usdhc1_Podf_4 => 4,
      Usdhc1_Podf_5 => 5,
      Usdhc1_Podf_6 => 6,
      Usdhc1_Podf_7 => 7);

   --  Divider for usdhc2 clock. Divider should be updated when output clock is
   --  gated.
   type CSCDR1_USDHC2_PODF_Field is
     (
      --  divide by 1
      Usdhc2_Podf_0,
      --  divide by 2
      Usdhc2_Podf_1,
      --  divide by 3
      Usdhc2_Podf_2,
      --  divide by 4
      Usdhc2_Podf_3,
      --  divide by 5
      Usdhc2_Podf_4,
      --  divide by 6
      Usdhc2_Podf_5,
      --  divide by 7
      Usdhc2_Podf_6,
      --  divide by 8
      Usdhc2_Podf_7)
     with Size => 3;
   for CSCDR1_USDHC2_PODF_Field use
     (Usdhc2_Podf_0 => 0,
      Usdhc2_Podf_1 => 1,
      Usdhc2_Podf_2 => 2,
      Usdhc2_Podf_3 => 3,
      Usdhc2_Podf_4 => 4,
      Usdhc2_Podf_5 => 5,
      Usdhc2_Podf_6 => 6,
      Usdhc2_Podf_7 => 7);

   --  Divider for trace clock. Divider should be updated when output clock is
   --  gated.
   type CSCDR1_TRACE_PODF_Field is
     (
      --  divide by 1
      Trace_Podf_0,
      --  divide by 2
      Trace_Podf_1,
      --  divide by 3
      Trace_Podf_2,
      --  divide by 4
      Trace_Podf_3,
      --  divide by 5
      Trace_Podf_4,
      --  divide by 6
      Trace_Podf_5,
      --  divide by 7
      Trace_Podf_6,
      --  divide by 8
      Trace_Podf_7)
     with Size => 3;
   for CSCDR1_TRACE_PODF_Field use
     (Trace_Podf_0 => 0,
      Trace_Podf_1 => 1,
      Trace_Podf_2 => 2,
      Trace_Podf_3 => 3,
      Trace_Podf_4 => 4,
      Trace_Podf_5 => 5,
      Trace_Podf_6 => 6,
      Trace_Podf_7 => 7);

   --  CCM Serial Clock Divider Register 1
   type CCM_CSCDR1_Register is record
      --  Divider for uart clock podf.
      UART_CLK_PODF  : CSCDR1_UART_CLK_PODF_Field :=
                        NRF_SVD.CCM.Uart_Clk_Podf_0;
      --  Selector for the UART clock multiplexor
      UART_CLK_SEL   : CSCDR1_UART_CLK_SEL_Field :=
                        NRF_SVD.CCM.Uart_Clk_Sel_0;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#6#;
      --  Divider for usdhc1 clock podf. Divider should be updated when output
      --  clock is gated.
      USDHC1_PODF    : CSCDR1_USDHC1_PODF_Field := NRF_SVD.CCM.Usdhc1_Podf_1;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Divider for usdhc2 clock. Divider should be updated when output clock
      --  is gated.
      USDHC2_PODF    : CSCDR1_USDHC2_PODF_Field := NRF_SVD.CCM.Usdhc2_Podf_1;
      --  unspecified
      Reserved_19_24 : HAL.UInt6 := 16#9#;
      --  Divider for trace clock. Divider should be updated when output clock
      --  is gated.
      TRACE_PODF     : CSCDR1_TRACE_PODF_Field := NRF_SVD.CCM.Trace_Podf_0;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CSCDR1_Register use record
      UART_CLK_PODF  at 0 range 0 .. 5;
      UART_CLK_SEL   at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      USDHC1_PODF    at 0 range 11 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      USDHC2_PODF    at 0 range 16 .. 18;
      Reserved_19_24 at 0 range 19 .. 24;
      TRACE_PODF     at 0 range 25 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Divider for sai1 clock podf
   type CS1CDR_SAI1_CLK_PODF_Field is
     (
      --  divide by 1
      Sai1_Clk_Podf_0,
      --  Reset value for the field
      Cs1Cdr_Sai1_Clk_Podf_Field_Reset,
      --  divide by 2^6
      Sai1_Clk_Podf_63)
     with Size => 6;
   for CS1CDR_SAI1_CLK_PODF_Field use
     (Sai1_Clk_Podf_0 => 0,
      Cs1Cdr_Sai1_Clk_Podf_Field_Reset => 1,
      Sai1_Clk_Podf_63 => 63);

   --  Divider for sai1 clock pred.
   type CS1CDR_SAI1_CLK_PRED_Field is
     (
      --  divide by 1
      Sai1_Clk_Pred_0,
      --  divide by 2
      Sai1_Clk_Pred_1,
      --  divide by 3
      Sai1_Clk_Pred_2,
      --  divide by 4
      Sai1_Clk_Pred_3,
      --  divide by 5
      Sai1_Clk_Pred_4,
      --  divide by 6
      Sai1_Clk_Pred_5,
      --  divide by 7
      Sai1_Clk_Pred_6,
      --  divide by 8
      Sai1_Clk_Pred_7)
     with Size => 3;
   for CS1CDR_SAI1_CLK_PRED_Field use
     (Sai1_Clk_Pred_0 => 0,
      Sai1_Clk_Pred_1 => 1,
      Sai1_Clk_Pred_2 => 2,
      Sai1_Clk_Pred_3 => 3,
      Sai1_Clk_Pred_4 => 4,
      Sai1_Clk_Pred_5 => 5,
      Sai1_Clk_Pred_6 => 6,
      Sai1_Clk_Pred_7 => 7);

   --  Divider for flexio2 clock.
   type CS1CDR_FLEXIO2_CLK_PRED_Field is
     (
      --  divide by 1
      Flexio2_Clk_Pred_0,
      --  divide by 2
      Flexio2_Clk_Pred_1,
      --  divide by 3
      Flexio2_Clk_Pred_2,
      --  divide by 4
      Flexio2_Clk_Pred_3,
      --  divide by 5
      Flexio2_Clk_Pred_4,
      --  divide by 6
      Flexio2_Clk_Pred_5,
      --  divide by 7
      Flexio2_Clk_Pred_6,
      --  divide by 8
      Flexio2_Clk_Pred_7)
     with Size => 3;
   for CS1CDR_FLEXIO2_CLK_PRED_Field use
     (Flexio2_Clk_Pred_0 => 0,
      Flexio2_Clk_Pred_1 => 1,
      Flexio2_Clk_Pred_2 => 2,
      Flexio2_Clk_Pred_3 => 3,
      Flexio2_Clk_Pred_4 => 4,
      Flexio2_Clk_Pred_5 => 5,
      Flexio2_Clk_Pred_6 => 6,
      Flexio2_Clk_Pred_7 => 7);

   --  Divider for sai3 clock podf
   type CS1CDR_SAI3_CLK_PODF_Field is
     (
      --  divide by 1
      Sai3_Clk_Podf_0,
      --  Reset value for the field
      Cs1Cdr_Sai3_Clk_Podf_Field_Reset,
      --  divide by 2^6
      Sai3_Clk_Podf_63)
     with Size => 6;
   for CS1CDR_SAI3_CLK_PODF_Field use
     (Sai3_Clk_Podf_0 => 0,
      Cs1Cdr_Sai3_Clk_Podf_Field_Reset => 1,
      Sai3_Clk_Podf_63 => 63);

   --  Divider for sai3 clock pred.
   type CS1CDR_SAI3_CLK_PRED_Field is
     (
      --  divide by 1
      Sai3_Clk_Pred_0,
      --  divide by 2
      Sai3_Clk_Pred_1,
      --  divide by 3
      Sai3_Clk_Pred_2,
      --  divide by 4
      Sai3_Clk_Pred_3,
      --  divide by 5
      Sai3_Clk_Pred_4,
      --  divide by 6
      Sai3_Clk_Pred_5,
      --  divide by 7
      Sai3_Clk_Pred_6,
      --  divide by 8
      Sai3_Clk_Pred_7)
     with Size => 3;
   for CS1CDR_SAI3_CLK_PRED_Field use
     (Sai3_Clk_Pred_0 => 0,
      Sai3_Clk_Pred_1 => 1,
      Sai3_Clk_Pred_2 => 2,
      Sai3_Clk_Pred_3 => 3,
      Sai3_Clk_Pred_4 => 4,
      Sai3_Clk_Pred_5 => 5,
      Sai3_Clk_Pred_6 => 6,
      Sai3_Clk_Pred_7 => 7);

   --  Divider for flexio2 clock.
   type CS1CDR_FLEXIO2_CLK_PODF_Field is
     (
      --  divide by 1
      Flexio2_Clk_Podf_0,
      --  divide by 2
      Flexio2_Clk_Podf_1,
      --  divide by 3
      Flexio2_Clk_Podf_2,
      --  divide by 4
      Flexio2_Clk_Podf_3,
      --  divide by 5
      Flexio2_Clk_Podf_4,
      --  divide by 6
      Flexio2_Clk_Podf_5,
      --  divide by 7
      Flexio2_Clk_Podf_6,
      --  divide by 8
      Flexio2_Clk_Podf_7)
     with Size => 3;
   for CS1CDR_FLEXIO2_CLK_PODF_Field use
     (Flexio2_Clk_Podf_0 => 0,
      Flexio2_Clk_Podf_1 => 1,
      Flexio2_Clk_Podf_2 => 2,
      Flexio2_Clk_Podf_3 => 3,
      Flexio2_Clk_Podf_4 => 4,
      Flexio2_Clk_Podf_5 => 5,
      Flexio2_Clk_Podf_6 => 6,
      Flexio2_Clk_Podf_7 => 7);

   --  CCM Clock Divider Register
   type CCM_CS1CDR_Register is record
      --  Divider for sai1 clock podf
      SAI1_CLK_PODF    : CS1CDR_SAI1_CLK_PODF_Field :=
                          Cs1Cdr_Sai1_Clk_Podf_Field_Reset;
      --  Divider for sai1 clock pred.
      SAI1_CLK_PRED    : CS1CDR_SAI1_CLK_PRED_Field :=
                          NRF_SVD.CCM.Sai1_Clk_Pred_3;
      --  Divider for flexio2 clock.
      FLEXIO2_CLK_PRED : CS1CDR_FLEXIO2_CLK_PRED_Field :=
                          NRF_SVD.CCM.Flexio2_Clk_Pred_1;
      --  unspecified
      Reserved_12_15   : HAL.UInt4 := 16#0#;
      --  Divider for sai3 clock podf
      SAI3_CLK_PODF    : CS1CDR_SAI3_CLK_PODF_Field :=
                          Cs1Cdr_Sai3_Clk_Podf_Field_Reset;
      --  Divider for sai3 clock pred.
      SAI3_CLK_PRED    : CS1CDR_SAI3_CLK_PRED_Field :=
                          NRF_SVD.CCM.Sai3_Clk_Pred_3;
      --  Divider for flexio2 clock.
      FLEXIO2_CLK_PODF : CS1CDR_FLEXIO2_CLK_PODF_Field :=
                          NRF_SVD.CCM.Flexio2_Clk_Podf_7;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CS1CDR_Register use record
      SAI1_CLK_PODF    at 0 range 0 .. 5;
      SAI1_CLK_PRED    at 0 range 6 .. 8;
      FLEXIO2_CLK_PRED at 0 range 9 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      SAI3_CLK_PODF    at 0 range 16 .. 21;
      SAI3_CLK_PRED    at 0 range 22 .. 24;
      FLEXIO2_CLK_PODF at 0 range 25 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  Divider for sai2 clock podf
   type CS2CDR_SAI2_CLK_PODF_Field is
     (
      --  divide by 1
      Sai2_Clk_Podf_0,
      --  Reset value for the field
      Cs2Cdr_Sai2_Clk_Podf_Field_Reset,
      --  divide by 2^6
      Sai2_Clk_Podf_63)
     with Size => 6;
   for CS2CDR_SAI2_CLK_PODF_Field use
     (Sai2_Clk_Podf_0 => 0,
      Cs2Cdr_Sai2_Clk_Podf_Field_Reset => 1,
      Sai2_Clk_Podf_63 => 63);

   --  Divider for sai2 clock pred.Divider should be updated when output clock
   --  is gated.
   type CS2CDR_SAI2_CLK_PRED_Field is
     (
      --  divide by 1
      Sai2_Clk_Pred_0,
      --  divide by 2
      Sai2_Clk_Pred_1,
      --  divide by 3
      Sai2_Clk_Pred_2,
      --  divide by 4
      Sai2_Clk_Pred_3,
      --  divide by 5
      Sai2_Clk_Pred_4,
      --  divide by 6
      Sai2_Clk_Pred_5,
      --  divide by 7
      Sai2_Clk_Pred_6,
      --  divide by 8
      Sai2_Clk_Pred_7)
     with Size => 3;
   for CS2CDR_SAI2_CLK_PRED_Field use
     (Sai2_Clk_Pred_0 => 0,
      Sai2_Clk_Pred_1 => 1,
      Sai2_Clk_Pred_2 => 2,
      Sai2_Clk_Pred_3 => 3,
      Sai2_Clk_Pred_4 => 4,
      Sai2_Clk_Pred_5 => 5,
      Sai2_Clk_Pred_6 => 6,
      Sai2_Clk_Pred_7 => 7);

   --  CCM Clock Divider Register
   type CCM_CS2CDR_Register is record
      --  Divider for sai2 clock podf
      SAI2_CLK_PODF : CS2CDR_SAI2_CLK_PODF_Field :=
                       Cs2Cdr_Sai2_Clk_Podf_Field_Reset;
      --  Divider for sai2 clock pred.Divider should be updated when output
      --  clock is gated.
      SAI2_CLK_PRED : CS2CDR_SAI2_CLK_PRED_Field :=
                       NRF_SVD.CCM.Sai2_Clk_Pred_3;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#19B#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CS2CDR_Register use record
      SAI2_CLK_PODF at 0 range 0 .. 5;
      SAI2_CLK_PRED at 0 range 6 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Selector for flexio1 clock multiplexer
   type CDCDR_FLEXIO1_CLK_SEL_Field is
     (
      --  derive clock from PLL4
      Flexio1_Clk_Sel_0,
      --  derive clock from PLL3 PFD2
      Flexio1_Clk_Sel_1,
      --  derive clock from PLL5
      Flexio1_Clk_Sel_2,
      --  derive clock from pll3_sw_clk
      Flexio1_Clk_Sel_3)
     with Size => 2;
   for CDCDR_FLEXIO1_CLK_SEL_Field use
     (Flexio1_Clk_Sel_0 => 0,
      Flexio1_Clk_Sel_1 => 1,
      Flexio1_Clk_Sel_2 => 2,
      Flexio1_Clk_Sel_3 => 3);

   --  Divider for flexio1 clock podf. Divider should be updated when output
   --  clock is gated.
   type CDCDR_FLEXIO1_CLK_PODF_Field is
     (
      --  divide by 1
      Flexio1_Clk_Podf_0,
      --  divide by 8
      Flexio1_Clk_Podf_7)
     with Size => 3;
   for CDCDR_FLEXIO1_CLK_PODF_Field use
     (Flexio1_Clk_Podf_0 => 0,
      Flexio1_Clk_Podf_7 => 7);

   --  Divider for flexio1 clock pred. Divider should be updated when output
   --  clock is gated.
   type CDCDR_FLEXIO1_CLK_PRED_Field is
     (
      --  divide by 1 (do not use with high input frequencies)
      Flexio1_Clk_Pred_0,
      --  divide by 2
      Flexio1_Clk_Pred_1,
      --  divide by 3
      Flexio1_Clk_Pred_2,
      --  divide by 8
      Flexio1_Clk_Pred_7)
     with Size => 3;
   for CDCDR_FLEXIO1_CLK_PRED_Field use
     (Flexio1_Clk_Pred_0 => 0,
      Flexio1_Clk_Pred_1 => 1,
      Flexio1_Clk_Pred_2 => 2,
      Flexio1_Clk_Pred_7 => 7);

   --  Selector for spdif0 clock multiplexer
   type CDCDR_SPDIF0_CLK_SEL_Field is
     (
      --  derive clock from PLL4
      Spdif0_Clk_Sel_0,
      --  derive clock from PLL3 PFD2
      Spdif0_Clk_Sel_1,
      --  derive clock from PLL5
      Spdif0_Clk_Sel_2,
      --  derive clock from pll3_sw_clk
      Spdif0_Clk_Sel_3)
     with Size => 2;
   for CDCDR_SPDIF0_CLK_SEL_Field use
     (Spdif0_Clk_Sel_0 => 0,
      Spdif0_Clk_Sel_1 => 1,
      Spdif0_Clk_Sel_2 => 2,
      Spdif0_Clk_Sel_3 => 3);

   --  Divider for spdif0 clock podf. Divider should be updated when output
   --  clock is gated.
   type CDCDR_SPDIF0_CLK_PODF_Field is
     (
      --  divide by 1
      Spdif0_Clk_Podf_0,
      --  divide by 8
      Spdif0_Clk_Podf_7)
     with Size => 3;
   for CDCDR_SPDIF0_CLK_PODF_Field use
     (Spdif0_Clk_Podf_0 => 0,
      Spdif0_Clk_Podf_7 => 7);

   --  Divider for spdif0 clock pred. Divider should be updated when output
   --  clock is gated.
   type CDCDR_SPDIF0_CLK_PRED_Field is
     (
      --  divide by 1 (do not use with high input frequencies)
      Spdif0_Clk_Pred_0,
      --  divide by 2
      Spdif0_Clk_Pred_1,
      --  divide by 3
      Spdif0_Clk_Pred_2,
      --  divide by 8
      Spdif0_Clk_Pred_7)
     with Size => 3;
   for CDCDR_SPDIF0_CLK_PRED_Field use
     (Spdif0_Clk_Pred_0 => 0,
      Spdif0_Clk_Pred_1 => 1,
      Spdif0_Clk_Pred_2 => 2,
      Spdif0_Clk_Pred_7 => 7);

   --  CCM D1 Clock Divider Register
   type CCM_CDCDR_Register is record
      --  unspecified
      Reserved_0_6     : HAL.UInt7 := 16#12#;
      --  Selector for flexio1 clock multiplexer
      FLEXIO1_CLK_SEL  : CDCDR_FLEXIO1_CLK_SEL_Field :=
                          NRF_SVD.CCM.Flexio1_Clk_Sel_3;
      --  Divider for flexio1 clock podf. Divider should be updated when output
      --  clock is gated.
      FLEXIO1_CLK_PODF : CDCDR_FLEXIO1_CLK_PODF_Field :=
                          NRF_SVD.CCM.Flexio1_Clk_Podf_7;
      --  Divider for flexio1 clock pred. Divider should be updated when output
      --  clock is gated.
      FLEXIO1_CLK_PRED : CDCDR_FLEXIO1_CLK_PRED_Field :=
                          NRF_SVD.CCM.Flexio1_Clk_Pred_1;
      --  unspecified
      Reserved_15_19   : HAL.UInt5 := 16#E#;
      --  Selector for spdif0 clock multiplexer
      SPDIF0_CLK_SEL   : CDCDR_SPDIF0_CLK_SEL_Field :=
                          NRF_SVD.CCM.Spdif0_Clk_Sel_3;
      --  Divider for spdif0 clock podf. Divider should be updated when output
      --  clock is gated.
      SPDIF0_CLK_PODF  : CDCDR_SPDIF0_CLK_PODF_Field :=
                          NRF_SVD.CCM.Spdif0_Clk_Podf_7;
      --  Divider for spdif0 clock pred. Divider should be updated when output
      --  clock is gated.
      SPDIF0_CLK_PRED  : CDCDR_SPDIF0_CLK_PRED_Field :=
                          NRF_SVD.CCM.Spdif0_Clk_Pred_1;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CDCDR_Register use record
      Reserved_0_6     at 0 range 0 .. 6;
      FLEXIO1_CLK_SEL  at 0 range 7 .. 8;
      FLEXIO1_CLK_PODF at 0 range 9 .. 11;
      FLEXIO1_CLK_PRED at 0 range 12 .. 14;
      Reserved_15_19   at 0 range 15 .. 19;
      SPDIF0_CLK_SEL   at 0 range 20 .. 21;
      SPDIF0_CLK_PODF  at 0 range 22 .. 24;
      SPDIF0_CLK_PRED  at 0 range 25 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  Selector for LCDIF root clock multiplexer
   type CSCDR2_LCDIF_CLK_SEL_Field is
     (
      --  derive clock from divided pre-muxed LCDIF clock
      Lcdif_Clk_Sel_0,
      --  derive clock from ipp_di0_clk
      Lcdif_Clk_Sel_1,
      --  derive clock from ipp_di1_clk
      Lcdif_Clk_Sel_2,
      --  derive clock from ldb_di0_clk
      Lcdif_Clk_Sel_3,
      --  derive clock from ldb_di1_clk
      Lcdif_Clk_Sel_4,
      --  Reset value for the field
      Cscdr2_Lcdif_Clk_Sel_Field_Reset)
     with Size => 3;
   for CSCDR2_LCDIF_CLK_SEL_Field use
     (Lcdif_Clk_Sel_0 => 0,
      Lcdif_Clk_Sel_1 => 1,
      Lcdif_Clk_Sel_2 => 2,
      Lcdif_Clk_Sel_3 => 3,
      Lcdif_Clk_Sel_4 => 4,
      Cscdr2_Lcdif_Clk_Sel_Field_Reset => 5);

   --  Pre-divider for lcdif clock. Divider should be updated when output clock
   --  is gated.
   type CSCDR2_LCDIF_PRED_Field is
     (
      --  divide by 1
      Lcdif_Pred_0,
      --  divide by 2
      Lcdif_Pred_1,
      --  divide by 3
      Lcdif_Pred_2,
      --  divide by 4
      Lcdif_Pred_3,
      --  divide by 5
      Lcdif_Pred_4,
      --  divide by 6
      Lcdif_Pred_5,
      --  divide by 7
      Lcdif_Pred_6,
      --  divide by 8
      Lcdif_Pred_7)
     with Size => 3;
   for CSCDR2_LCDIF_PRED_Field use
     (Lcdif_Pred_0 => 0,
      Lcdif_Pred_1 => 1,
      Lcdif_Pred_2 => 2,
      Lcdif_Pred_3 => 3,
      Lcdif_Pred_4 => 4,
      Lcdif_Pred_5 => 5,
      Lcdif_Pred_6 => 6,
      Lcdif_Pred_7 => 7);

   --  Selector for lcdif root clock pre-multiplexer
   type CSCDR2_LCDIF_PRE_CLK_SEL_Field is
     (
      --  derive clock from PLL2
      Lcdif_Pre_Clk_Sel_0,
      --  derive clock from PLL3 PFD3
      Lcdif_Pre_Clk_Sel_1,
      --  derive clock from PLL5
      Lcdif_Pre_Clk_Sel_2,
      --  derive clock from PLL2 PFD0
      Lcdif_Pre_Clk_Sel_3,
      --  derive clock from PLL2 PFD1
      Lcdif_Pre_Clk_Sel_4,
      --  derive clock from PLL3 PFD1
      Lcdif_Pre_Clk_Sel_5)
     with Size => 3;
   for CSCDR2_LCDIF_PRE_CLK_SEL_Field use
     (Lcdif_Pre_Clk_Sel_0 => 0,
      Lcdif_Pre_Clk_Sel_1 => 1,
      Lcdif_Pre_Clk_Sel_2 => 2,
      Lcdif_Pre_Clk_Sel_3 => 3,
      Lcdif_Pre_Clk_Sel_4 => 4,
      Lcdif_Pre_Clk_Sel_5 => 5);

   --  Selector for the LPI2C clock multiplexor
   type CSCDR2_LPI2C_CLK_SEL_Field is
     (
      --  derive clock from pll3_60m
      Lpi2C_Clk_Sel_0,
      --  derive clock from osc_clk
      Lpi2C_Clk_Sel_1)
     with Size => 1;
   for CSCDR2_LPI2C_CLK_SEL_Field use
     (Lpi2C_Clk_Sel_0 => 0,
      Lpi2C_Clk_Sel_1 => 1);

   --  Divider for lpi2c clock podf
   type CSCDR2_LPI2C_CLK_PODF_Field is
     (
      --  divide by 1
      Lpi2C_Clk_Podf_0,
      --  divide by 2^6
      Lpi2C_Clk_Podf_63)
     with Size => 6;
   for CSCDR2_LPI2C_CLK_PODF_Field use
     (Lpi2C_Clk_Podf_0 => 0,
      Lpi2C_Clk_Podf_63 => 63);

   --  CCM Serial Clock Divider Register 2
   type CCM_CSCDR2_Register is record
      --  unspecified
      Reserved_0_8      : HAL.UInt9 := 16#148#;
      --  Selector for LCDIF root clock multiplexer
      LCDIF_CLK_SEL     : CSCDR2_LCDIF_CLK_SEL_Field :=
                           Cscdr2_Lcdif_Clk_Sel_Field_Reset;
      --  Pre-divider for lcdif clock. Divider should be updated when output
      --  clock is gated.
      LCDIF_PRED        : CSCDR2_LCDIF_PRED_Field := NRF_SVD.CCM.Lcdif_Pred_1;
      --  Selector for lcdif root clock pre-multiplexer
      LCDIF_PRE_CLK_SEL : CSCDR2_LCDIF_PRE_CLK_SEL_Field :=
                           NRF_SVD.CCM.Lcdif_Pre_Clk_Sel_5;
      --  Selector for the LPI2C clock multiplexor
      LPI2C_CLK_SEL     : CSCDR2_LPI2C_CLK_SEL_Field :=
                           NRF_SVD.CCM.Lpi2C_Clk_Sel_0;
      --  Divider for lpi2c clock podf
      LPI2C_CLK_PODF    : CSCDR2_LPI2C_CLK_PODF_Field :=
                           NRF_SVD.CCM.Lpi2C_Clk_Podf_0;
      --  unspecified
      Reserved_25_31    : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CSCDR2_Register use record
      Reserved_0_8      at 0 range 0 .. 8;
      LCDIF_CLK_SEL     at 0 range 9 .. 11;
      LCDIF_PRED        at 0 range 12 .. 14;
      LCDIF_PRE_CLK_SEL at 0 range 15 .. 17;
      LPI2C_CLK_SEL     at 0 range 18 .. 18;
      LPI2C_CLK_PODF    at 0 range 19 .. 24;
      Reserved_25_31    at 0 range 25 .. 31;
   end record;

   --  Selector for csi_mclk multiplexer
   type CSCDR3_CSI_CLK_SEL_Field is
     (
      --  derive clock from osc_clk (24M)
      Csi_Clk_Sel_0,
      --  derive clock from PLL2 PFD2
      Csi_Clk_Sel_1,
      --  derive clock from pll3_120M
      Csi_Clk_Sel_2,
      --  derive clock from PLL3 PFD1
      Csi_Clk_Sel_3)
     with Size => 2;
   for CSCDR3_CSI_CLK_SEL_Field use
     (Csi_Clk_Sel_0 => 0,
      Csi_Clk_Sel_1 => 1,
      Csi_Clk_Sel_2 => 2,
      Csi_Clk_Sel_3 => 3);

   --  Post divider for csi_mclk. Divider should be updated when output clock
   --  is gated.
   type CSCDR3_CSI_PODF_Field is
     (
      --  divide by 1
      Csi_Podf_0,
      --  divide by 2
      Csi_Podf_1,
      --  divide by 3
      Csi_Podf_2,
      --  divide by 4
      Csi_Podf_3,
      --  divide by 5
      Csi_Podf_4,
      --  divide by 6
      Csi_Podf_5,
      --  divide by 7
      Csi_Podf_6,
      --  divide by 8
      Csi_Podf_7)
     with Size => 3;
   for CSCDR3_CSI_PODF_Field use
     (Csi_Podf_0 => 0,
      Csi_Podf_1 => 1,
      Csi_Podf_2 => 2,
      Csi_Podf_3 => 3,
      Csi_Podf_4 => 4,
      Csi_Podf_5 => 5,
      Csi_Podf_6 => 6,
      Csi_Podf_7 => 7);

   --  CCM Serial Clock Divider Register 3
   type CCM_CSCDR3_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#41#;
      --  Selector for csi_mclk multiplexer
      CSI_CLK_SEL    : CSCDR3_CSI_CLK_SEL_Field := NRF_SVD.CCM.Csi_Clk_Sel_0;
      --  Post divider for csi_mclk. Divider should be updated when output
      --  clock is gated.
      CSI_PODF       : CSCDR3_CSI_PODF_Field := NRF_SVD.CCM.Csi_Podf_1;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#5#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CSCDR3_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      CSI_CLK_SEL    at 0 range 9 .. 10;
      CSI_PODF       at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Busy indicator for semc_podf.
   type CDHIPR_SEMC_PODF_BUSY_Field is
     (
      --  divider is not busy and its value represents the actual division.
      Semc_Podf_Busy_0,
      --  divider is busy with handshake process with module. The value read in
      --  the divider represents the previous value of the division factor, and
      --  after the handshake the written value of the semc_podf will be
      --  applied.
      Semc_Podf_Busy_1)
     with Size => 1;
   for CDHIPR_SEMC_PODF_BUSY_Field use
     (Semc_Podf_Busy_0 => 0,
      Semc_Podf_Busy_1 => 1);

   --  Busy indicator for ahb_podf.
   type CDHIPR_AHB_PODF_BUSY_Field is
     (
      --  divider is not busy and its value represents the actual division.
      Ahb_Podf_Busy_0,
      --  divider is busy with handshake process with module. The value read in
      --  the divider represents the previous value of the division factor, and
      --  after the handshake the written value of the ahb_podf will be
      --  applied.
      Ahb_Podf_Busy_1)
     with Size => 1;
   for CDHIPR_AHB_PODF_BUSY_Field use
     (Ahb_Podf_Busy_0 => 0,
      Ahb_Podf_Busy_1 => 1);

   --  Busy indicator for periph2_clk_sel mux control.
   type CDHIPR_PERIPH2_CLK_SEL_BUSY_Field is
     (
      --  mux is not busy and its value represents the actual division.
      Periph2_Clk_Sel_Busy_0,
      --  mux is busy with handshake process with module. The value read in the
      --  periph2_clk_sel represents the previous value of select, and after
      --  the handshake periph2_clk_sel value will be applied.
      Periph2_Clk_Sel_Busy_1)
     with Size => 1;
   for CDHIPR_PERIPH2_CLK_SEL_BUSY_Field use
     (Periph2_Clk_Sel_Busy_0 => 0,
      Periph2_Clk_Sel_Busy_1 => 1);

   --  Busy indicator for periph_clk_sel mux control.
   type CDHIPR_PERIPH_CLK_SEL_BUSY_Field is
     (
      --  mux is not busy and its value represents the actual division.
      Periph_Clk_Sel_Busy_0,
      --  mux is busy with handshake process with module. The value read in the
      --  periph_clk_sel represents the previous value of select, and after the
      --  handshake periph_clk_sel value will be applied.
      Periph_Clk_Sel_Busy_1)
     with Size => 1;
   for CDHIPR_PERIPH_CLK_SEL_BUSY_Field use
     (Periph_Clk_Sel_Busy_0 => 0,
      Periph_Clk_Sel_Busy_1 => 1);

   --  Busy indicator for arm_podf.
   type CDHIPR_ARM_PODF_BUSY_Field is
     (
      --  divider is not busy and its value represents the actual division.
      Arm_Podf_Busy_0,
      --  divider is busy with handshake process with module. The value read in
      --  the divider represents the previous value of the division factor, and
      --  after the handshake the written value of the arm_podf will be
      --  applied.
      Arm_Podf_Busy_1)
     with Size => 1;
   for CDHIPR_ARM_PODF_BUSY_Field use
     (Arm_Podf_Busy_0 => 0,
      Arm_Podf_Busy_1 => 1);

   --  CCM Divider Handshake In-Process Register
   type CCM_CDHIPR_Register is record
      --  Read-only. Busy indicator for semc_podf.
      SEMC_PODF_BUSY       : CDHIPR_SEMC_PODF_BUSY_Field;
      --  Read-only. Busy indicator for ahb_podf.
      AHB_PODF_BUSY        : CDHIPR_AHB_PODF_BUSY_Field;
      --  unspecified
      Reserved_2_2         : HAL.Bit;
      --  Read-only. Busy indicator for periph2_clk_sel mux control.
      PERIPH2_CLK_SEL_BUSY : CDHIPR_PERIPH2_CLK_SEL_BUSY_Field;
      --  unspecified
      Reserved_4_4         : HAL.Bit;
      --  Read-only. Busy indicator for periph_clk_sel mux control.
      PERIPH_CLK_SEL_BUSY  : CDHIPR_PERIPH_CLK_SEL_BUSY_Field;
      --  unspecified
      Reserved_6_15        : HAL.UInt10;
      --  Read-only. Busy indicator for arm_podf.
      ARM_PODF_BUSY        : CDHIPR_ARM_PODF_BUSY_Field;
      --  unspecified
      Reserved_17_31       : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CDHIPR_Register use record
      SEMC_PODF_BUSY       at 0 range 0 .. 0;
      AHB_PODF_BUSY        at 0 range 1 .. 1;
      Reserved_2_2         at 0 range 2 .. 2;
      PERIPH2_CLK_SEL_BUSY at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      PERIPH_CLK_SEL_BUSY  at 0 range 5 .. 5;
      Reserved_6_15        at 0 range 6 .. 15;
      ARM_PODF_BUSY        at 0 range 16 .. 16;
      Reserved_17_31       at 0 range 17 .. 31;
   end record;

   --  Setting the low power mode that system will enter on next assertion of
   --  dsm_request signal.
   type CLPCR_LPM_Field is
     (
      --  Remain in run mode
      Lpm_0,
      --  Transfer to wait mode
      Lpm_1,
      --  Transfer to stop mode
      Lpm_2)
     with Size => 2;
   for CLPCR_LPM_Field use
     (Lpm_0 => 0,
      Lpm_1 => 1,
      Lpm_2 => 2);

   --  Define if ARM clocks (arm_clk, soc_mxclk, soc_pclk, soc_dbg_pclk,
   --  vl_wrck) will be disabled on wait mode
   type CLPCR_ARM_CLK_DIS_ON_LPM_Field is
     (
      --  ARM clock enabled on wait mode.
      Arm_Clk_Dis_On_Lpm_0,
      --  ARM clock disabled on wait mode. .
      Arm_Clk_Dis_On_Lpm_1)
     with Size => 1;
   for CLPCR_ARM_CLK_DIS_ON_LPM_Field use
     (Arm_Clk_Dis_On_Lpm_0 => 0,
      Arm_Clk_Dis_On_Lpm_1 => 1);

   --  Standby clock oscillator bit
   type CLPCR_SBYOS_Field is
     (
      --  On-chip oscillator will not be powered down, after next entrance to
      --  STOP mode. (CCM_REF_EN_B will remain asserted - '0' and cosc_pwrdown
      --  will remain de asserted - '0')
      Sbyos_0,
      --  On-chip oscillator will be powered down, after next entrance to STOP
      --  mode. (CCM_REF_EN_B will be deasserted - '1' and cosc_pwrdown will be
      --  asserted - '1'). When returning from STOP mode, external oscillator
      --  will be enabled again, on-chip oscillator will return to oscillator
      --  mode, and after oscnt count, CCM will continue with the exit from the
      --  STOP mode process.
      Sbyos_1)
     with Size => 1;
   for CLPCR_SBYOS_Field use
     (Sbyos_0 => 0,
      Sbyos_1 => 1);

   --  dis_ref_osc - in run mode, software can manually control closing of
   --  external reference oscillator clock, i
   type CLPCR_DIS_REF_OSC_Field is
     (
      --  external high frequency oscillator will be enabled, i.e. CCM_REF_EN_B
      --  = '0'.
      Dis_Ref_Osc_0,
      --  external high frequency oscillator will be disabled, i.e.
      --  CCM_REF_EN_B = '1'
      Dis_Ref_Osc_1)
     with Size => 1;
   for CLPCR_DIS_REF_OSC_Field use
     (Dis_Ref_Osc_0 => 0,
      Dis_Ref_Osc_1 => 1);

   --  Voltage standby request bit
   type CLPCR_VSTBY_Field is
     (
      --  Voltage will not be changed to standby voltage after next entrance to
      --  STOP mode. ( PMIC_STBY_REQ will remain negated - '0')
      Vstby_0,
      --  Voltage will be requested to change to standby voltage after next
      --  entrance to stop mode. ( PMIC_STBY_REQ will be asserted - '1').
      Vstby_1)
     with Size => 1;
   for CLPCR_VSTBY_Field use
     (Vstby_0 => 0,
      Vstby_1 => 1);

   --  Standby counter definition
   type CLPCR_STBY_COUNT_Field is
     (
      --  CCM will wait (1*pmic_delay_scaler)+1 ckil clock cycles
      Stby_Count_0,
      --  CCM will wait (3*pmic_delay_scaler)+1 ckil clock cycles
      Stby_Count_1,
      --  CCM will wait (7*pmic_delay_scaler)+1 ckil clock cycles
      Stby_Count_2,
      --  CCM will wait (15*pmic_delay_scaler)+1 ckil clock cycles
      Stby_Count_3)
     with Size => 2;
   for CLPCR_STBY_COUNT_Field use
     (Stby_Count_0 => 0,
      Stby_Count_1 => 1,
      Stby_Count_2 => 2,
      Stby_Count_3 => 3);

   --  In run mode, software can manually control powering down of on chip
   --  oscillator, i
   type CLPCR_COSC_PWRDOWN_Field is
     (
      --  On chip oscillator will not be powered down, i.e. cosc_pwrdown = '0'.
      Cosc_Pwrdown_0,
      --  On chip oscillator will be powered down, i.e. cosc_pwrdown = '1'.
      Cosc_Pwrdown_1)
     with Size => 1;
   for CLPCR_COSC_PWRDOWN_Field use
     (Cosc_Pwrdown_0 => 0,
      Cosc_Pwrdown_1 => 1);

   --  Mask WFI of core0 for entering low power mode Assertion of all
   --  bits[27:22] will generate low power mode request
   type CLPCR_MASK_CORE0_WFI_Field is
     (
      --  WFI of core0 is not masked
      Mask_Core0_Wfi_0,
      --  WFI of core0 is masked
      Mask_Core0_Wfi_1)
     with Size => 1;
   for CLPCR_MASK_CORE0_WFI_Field use
     (Mask_Core0_Wfi_0 => 0,
      Mask_Core0_Wfi_1 => 1);

   --  Mask SCU IDLE for entering low power mode Assertion of all bits[27:22]
   --  will generate low power mode request
   type CLPCR_MASK_SCU_IDLE_Field is
     (
      --  SCU IDLE is not masked
      Mask_Scu_Idle_0,
      --  SCU IDLE is masked
      Mask_Scu_Idle_1)
     with Size => 1;
   for CLPCR_MASK_SCU_IDLE_Field use
     (Mask_Scu_Idle_0 => 0,
      Mask_Scu_Idle_1 => 1);

   --  Mask L2CC IDLE for entering low power mode
   type CLPCR_MASK_L2CC_IDLE_Field is
     (
      --  L2CC IDLE is not masked
      Mask_L2Cc_Idle_0,
      --  L2CC IDLE is masked
      Mask_L2Cc_Idle_1)
     with Size => 1;
   for CLPCR_MASK_L2CC_IDLE_Field use
     (Mask_L2Cc_Idle_0 => 0,
      Mask_L2Cc_Idle_1 => 1);

   --  CCM Low Power Control Register
   type CCM_CLPCR_Register is record
      --  Setting the low power mode that system will enter on next assertion
      --  of dsm_request signal.
      LPM                : CLPCR_LPM_Field := NRF_SVD.CCM.Lpm_1;
      --  unspecified
      Reserved_2_4       : HAL.UInt3 := 16#6#;
      --  Define if ARM clocks (arm_clk, soc_mxclk, soc_pclk, soc_dbg_pclk,
      --  vl_wrck) will be disabled on wait mode
      ARM_CLK_DIS_ON_LPM : CLPCR_ARM_CLK_DIS_ON_LPM_Field :=
                            NRF_SVD.CCM.Arm_Clk_Dis_On_Lpm_1;
      --  Standby clock oscillator bit
      SBYOS              : CLPCR_SBYOS_Field := NRF_SVD.CCM.Sbyos_1;
      --  dis_ref_osc - in run mode, software can manually control closing of
      --  external reference oscillator clock, i
      DIS_REF_OSC        : CLPCR_DIS_REF_OSC_Field :=
                            NRF_SVD.CCM.Dis_Ref_Osc_0;
      --  Voltage standby request bit
      VSTBY              : CLPCR_VSTBY_Field := NRF_SVD.CCM.Vstby_0;
      --  Standby counter definition
      STBY_COUNT         : CLPCR_STBY_COUNT_Field := NRF_SVD.CCM.Stby_Count_0;
      --  In run mode, software can manually control powering down of on chip
      --  oscillator, i
      COSC_PWRDOWN       : CLPCR_COSC_PWRDOWN_Field :=
                            NRF_SVD.CCM.Cosc_Pwrdown_0;
      --  unspecified
      Reserved_12_18     : HAL.UInt7 := 16#0#;
      --  Bypass low power mode handshake. This bit should always be set to
      --  1'b1 by software.
      BYPASS_LPM_HS1     : Boolean := False;
      --  unspecified
      Reserved_20_20     : HAL.Bit := 16#0#;
      --  Bypass low power mode handshake. This bit should always be set to
      --  1'b1 by software.
      BYPASS_LPM_HS0     : Boolean := False;
      --  Mask WFI of core0 for entering low power mode Assertion of all
      --  bits[27:22] will generate low power mode request
      MASK_CORE0_WFI     : CLPCR_MASK_CORE0_WFI_Field :=
                            NRF_SVD.CCM.Mask_Core0_Wfi_0;
      --  unspecified
      Reserved_23_25     : HAL.UInt3 := 16#0#;
      --  Mask SCU IDLE for entering low power mode Assertion of all
      --  bits[27:22] will generate low power mode request
      MASK_SCU_IDLE      : CLPCR_MASK_SCU_IDLE_Field :=
                            NRF_SVD.CCM.Mask_Scu_Idle_0;
      --  Mask L2CC IDLE for entering low power mode
      MASK_L2CC_IDLE     : CLPCR_MASK_L2CC_IDLE_Field :=
                            NRF_SVD.CCM.Mask_L2Cc_Idle_0;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CLPCR_Register use record
      LPM                at 0 range 0 .. 1;
      Reserved_2_4       at 0 range 2 .. 4;
      ARM_CLK_DIS_ON_LPM at 0 range 5 .. 5;
      SBYOS              at 0 range 6 .. 6;
      DIS_REF_OSC        at 0 range 7 .. 7;
      VSTBY              at 0 range 8 .. 8;
      STBY_COUNT         at 0 range 9 .. 10;
      COSC_PWRDOWN       at 0 range 11 .. 11;
      Reserved_12_18     at 0 range 12 .. 18;
      BYPASS_LPM_HS1     at 0 range 19 .. 19;
      Reserved_20_20     at 0 range 20 .. 20;
      BYPASS_LPM_HS0     at 0 range 21 .. 21;
      MASK_CORE0_WFI     at 0 range 22 .. 22;
      Reserved_23_25     at 0 range 23 .. 25;
      MASK_SCU_IDLE      at 0 range 26 .. 26;
      MASK_L2CC_IDLE     at 0 range 27 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  CCM interrupt request 2 generated due to lock of all enabled and not
   --  bypaseed PLLs
   type CISR_LRF_PLL_Field is
     (
      --  interrupt is not generated due to lock ready of all enabled and not
      --  bypaseed PLLs
      Lrf_Pll_0,
      --  interrupt generated due to lock ready of all enabled and not bypaseed
      --  PLLs
      Lrf_Pll_1)
     with Size => 1;
   for CISR_LRF_PLL_Field use
     (Lrf_Pll_0 => 0,
      Lrf_Pll_1 => 1);

   --  CCM interrupt request 2 generated due to on board oscillator ready, i
   type CISR_COSC_READY_Field is
     (
      --  interrupt is not generated due to on board oscillator ready
      Cosc_Ready_0,
      --  interrupt generated due to on board oscillator ready
      Cosc_Ready_1)
     with Size => 1;
   for CISR_COSC_READY_Field use
     (Cosc_Ready_0 => 0,
      Cosc_Ready_1 => 1);

   --  CCM interrupt request 1 generated due to frequency change of semc_podf
   type CISR_SEMC_PODF_LOADED_Field is
     (
      --  interrupt is not generated due to frequency change of semc_podf
      Semc_Podf_Loaded_0,
      --  interrupt generated due to frequency change of semc_podf
      Semc_Podf_Loaded_1)
     with Size => 1;
   for CISR_SEMC_PODF_LOADED_Field use
     (Semc_Podf_Loaded_0 => 0,
      Semc_Podf_Loaded_1 => 1);

   --  CCM interrupt request 1 generated due to frequency change of
   --  periph2_clk_sel
   type CISR_PERIPH2_CLK_SEL_LOADED_Field is
     (
      --  interrupt is not generated due to frequency change of periph2_clk_sel
      Periph2_Clk_Sel_Loaded_0,
      --  interrupt generated due to frequency change of periph2_clk_sel
      Periph2_Clk_Sel_Loaded_1)
     with Size => 1;
   for CISR_PERIPH2_CLK_SEL_LOADED_Field use
     (Periph2_Clk_Sel_Loaded_0 => 0,
      Periph2_Clk_Sel_Loaded_1 => 1);

   --  CCM interrupt request 1 generated due to frequency change of ahb_podf
   type CISR_AHB_PODF_LOADED_Field is
     (
      --  interrupt is not generated due to frequency change of ahb_podf
      Ahb_Podf_Loaded_0,
      --  interrupt generated due to frequency change of ahb_podf
      Ahb_Podf_Loaded_1)
     with Size => 1;
   for CISR_AHB_PODF_LOADED_Field use
     (Ahb_Podf_Loaded_0 => 0,
      Ahb_Podf_Loaded_1 => 1);

   --  CCM interrupt request 1 generated due to update of periph_clk_sel.
   type CISR_PERIPH_CLK_SEL_LOADED_Field is
     (
      --  interrupt is not generated due to update of periph_clk_sel.
      Periph_Clk_Sel_Loaded_0,
      --  interrupt generated due to update of periph_clk_sel.
      Periph_Clk_Sel_Loaded_1)
     with Size => 1;
   for CISR_PERIPH_CLK_SEL_LOADED_Field use
     (Periph_Clk_Sel_Loaded_0 => 0,
      Periph_Clk_Sel_Loaded_1 => 1);

   --  CCM interrupt request 1 generated due to frequency change of arm_podf
   type CISR_ARM_PODF_LOADED_Field is
     (
      --  interrupt is not generated due to frequency change of arm_podf
      Arm_Podf_Loaded_0,
      --  interrupt generated due to frequency change of arm_podf
      Arm_Podf_Loaded_1)
     with Size => 1;
   for CISR_ARM_PODF_LOADED_Field use
     (Arm_Podf_Loaded_0 => 0,
      Arm_Podf_Loaded_1 => 1);

   --  CCM Interrupt Status Register
   type CCM_CISR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 2 generated due to lock of all
      --  enabled and not bypaseed PLLs
      LRF_PLL                : CISR_LRF_PLL_Field := NRF_SVD.CCM.Lrf_Pll_0;
      --  unspecified
      Reserved_1_5           : HAL.UInt5 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 2 generated due to on board
      --  oscillator ready, i
      COSC_READY             : CISR_COSC_READY_Field :=
                                NRF_SVD.CCM.Cosc_Ready_0;
      --  unspecified
      Reserved_7_16          : HAL.UInt10 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 1 generated due to frequency
      --  change of semc_podf
      SEMC_PODF_LOADED       : CISR_SEMC_PODF_LOADED_Field :=
                                NRF_SVD.CCM.Semc_Podf_Loaded_0;
      --  unspecified
      Reserved_18_18         : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 1 generated due to frequency
      --  change of periph2_clk_sel
      PERIPH2_CLK_SEL_LOADED : CISR_PERIPH2_CLK_SEL_LOADED_Field :=
                                NRF_SVD.CCM.Periph2_Clk_Sel_Loaded_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 1 generated due to frequency
      --  change of ahb_podf
      AHB_PODF_LOADED        : CISR_AHB_PODF_LOADED_Field :=
                                NRF_SVD.CCM.Ahb_Podf_Loaded_0;
      --  unspecified
      Reserved_21_21         : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 1 generated due to update of
      --  periph_clk_sel.
      PERIPH_CLK_SEL_LOADED  : CISR_PERIPH_CLK_SEL_LOADED_Field :=
                                NRF_SVD.CCM.Periph_Clk_Sel_Loaded_0;
      --  unspecified
      Reserved_23_25         : HAL.UInt3 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. CCM interrupt request 1 generated due to frequency
      --  change of arm_podf
      ARM_PODF_LOADED        : CISR_ARM_PODF_LOADED_Field :=
                                NRF_SVD.CCM.Arm_Podf_Loaded_0;
      --  unspecified
      Reserved_27_31         : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CISR_Register use record
      LRF_PLL                at 0 range 0 .. 0;
      Reserved_1_5           at 0 range 1 .. 5;
      COSC_READY             at 0 range 6 .. 6;
      Reserved_7_16          at 0 range 7 .. 16;
      SEMC_PODF_LOADED       at 0 range 17 .. 17;
      Reserved_18_18         at 0 range 18 .. 18;
      PERIPH2_CLK_SEL_LOADED at 0 range 19 .. 19;
      AHB_PODF_LOADED        at 0 range 20 .. 20;
      Reserved_21_21         at 0 range 21 .. 21;
      PERIPH_CLK_SEL_LOADED  at 0 range 22 .. 22;
      Reserved_23_25         at 0 range 23 .. 25;
      ARM_PODF_LOADED        at 0 range 26 .. 26;
      Reserved_27_31         at 0 range 27 .. 31;
   end record;

   --  mask interrupt generation due to lrf of PLLs
   type CIMR_MASK_LRF_PLL_Field is
     (
      --  don't mask interrupt due to lrf of PLLs - interrupt will be created
      Mask_Lrf_Pll_0,
      --  mask interrupt due to lrf of PLLs
      Mask_Lrf_Pll_1)
     with Size => 1;
   for CIMR_MASK_LRF_PLL_Field use
     (Mask_Lrf_Pll_0 => 0,
      Mask_Lrf_Pll_1 => 1);

   --  mask interrupt generation due to on board oscillator ready
   type CIMR_MASK_COSC_READY_Field is
     (
      --  don't mask interrupt due to on board oscillator ready - interrupt
      --  will be created
      Mask_Cosc_Ready_0,
      --  mask interrupt due to on board oscillator ready
      Mask_Cosc_Ready_1)
     with Size => 1;
   for CIMR_MASK_COSC_READY_Field use
     (Mask_Cosc_Ready_0 => 0,
      Mask_Cosc_Ready_1 => 1);

   --  mask interrupt generation due to frequency change of semc_podf
   type CIMR_MASK_SEMC_PODF_LOADED_Field is
     (
      --  don't mask interrupt due to frequency change of semc_podf - interrupt
      --  will be created
      Mask_Semc_Podf_Loaded_0,
      --  mask interrupt due to frequency change of semc_podf
      Mask_Semc_Podf_Loaded_1)
     with Size => 1;
   for CIMR_MASK_SEMC_PODF_LOADED_Field use
     (Mask_Semc_Podf_Loaded_0 => 0,
      Mask_Semc_Podf_Loaded_1 => 1);

   --  mask interrupt generation due to update of periph2_clk_sel.
   type CIMR_MASK_PERIPH2_CLK_SEL_LOADED_Field is
     (
      --  don't mask interrupt due to update of periph2_clk_sel - interrupt
      --  will be created
      Mask_Periph2_Clk_Sel_Loaded_0,
      --  mask interrupt due to update of periph2_clk_sel
      Mask_Periph2_Clk_Sel_Loaded_1)
     with Size => 1;
   for CIMR_MASK_PERIPH2_CLK_SEL_LOADED_Field use
     (Mask_Periph2_Clk_Sel_Loaded_0 => 0,
      Mask_Periph2_Clk_Sel_Loaded_1 => 1);

   --  mask interrupt generation due to frequency change of ahb_podf
   type CIMR_MASK_AHB_PODF_LOADED_Field is
     (
      --  don't mask interrupt due to frequency change of ahb_podf - interrupt
      --  will be created
      Mask_Ahb_Podf_Loaded_0,
      --  mask interrupt due to frequency change of ahb_podf
      Mask_Ahb_Podf_Loaded_1)
     with Size => 1;
   for CIMR_MASK_AHB_PODF_LOADED_Field use
     (Mask_Ahb_Podf_Loaded_0 => 0,
      Mask_Ahb_Podf_Loaded_1 => 1);

   --  mask interrupt generation due to update of periph_clk_sel.
   type CIMR_MASK_PERIPH_CLK_SEL_LOADED_Field is
     (
      --  don't mask interrupt due to update of periph_clk_sel - interrupt will
      --  be created
      Mask_Periph_Clk_Sel_Loaded_0,
      --  mask interrupt due to update of periph_clk_sel
      Mask_Periph_Clk_Sel_Loaded_1)
     with Size => 1;
   for CIMR_MASK_PERIPH_CLK_SEL_LOADED_Field use
     (Mask_Periph_Clk_Sel_Loaded_0 => 0,
      Mask_Periph_Clk_Sel_Loaded_1 => 1);

   --  mask interrupt generation due to frequency change of arm_podf
   type CIMR_ARM_PODF_LOADED_Field is
     (
      --  don't mask interrupt due to frequency change of arm_podf - interrupt
      --  will be created
      Arm_Podf_Loaded_0,
      --  mask interrupt due to frequency change of arm_podf
      Arm_Podf_Loaded_1)
     with Size => 1;
   for CIMR_ARM_PODF_LOADED_Field use
     (Arm_Podf_Loaded_0 => 0,
      Arm_Podf_Loaded_1 => 1);

   --  CCM Interrupt Mask Register
   type CCM_CIMR_Register is record
      --  mask interrupt generation due to lrf of PLLs
      MASK_LRF_PLL                : CIMR_MASK_LRF_PLL_Field :=
                                     NRF_SVD.CCM.Mask_Lrf_Pll_1;
      --  unspecified
      Reserved_1_5                : HAL.UInt5 := 16#1F#;
      --  mask interrupt generation due to on board oscillator ready
      MASK_COSC_READY             : CIMR_MASK_COSC_READY_Field :=
                                     NRF_SVD.CCM.Mask_Cosc_Ready_1;
      --  unspecified
      Reserved_7_16               : HAL.UInt10 := 16#3FF#;
      --  mask interrupt generation due to frequency change of semc_podf
      MASK_SEMC_PODF_LOADED       : CIMR_MASK_SEMC_PODF_LOADED_Field :=
                                     NRF_SVD.CCM.Mask_Semc_Podf_Loaded_1;
      --  unspecified
      Reserved_18_18              : HAL.Bit := 16#1#;
      --  mask interrupt generation due to update of periph2_clk_sel.
      MASK_PERIPH2_CLK_SEL_LOADED : CIMR_MASK_PERIPH2_CLK_SEL_LOADED_Field :=
                                     NRF_SVD.CCM.Mask_Periph2_Clk_Sel_Loaded_1;
      --  mask interrupt generation due to frequency change of ahb_podf
      MASK_AHB_PODF_LOADED        : CIMR_MASK_AHB_PODF_LOADED_Field :=
                                     NRF_SVD.CCM.Mask_Ahb_Podf_Loaded_1;
      --  unspecified
      Reserved_21_21              : HAL.Bit := 16#1#;
      --  mask interrupt generation due to update of periph_clk_sel.
      MASK_PERIPH_CLK_SEL_LOADED  : CIMR_MASK_PERIPH_CLK_SEL_LOADED_Field :=
                                     NRF_SVD.CCM.Mask_Periph_Clk_Sel_Loaded_1;
      --  unspecified
      Reserved_23_25              : HAL.UInt3 := 16#7#;
      --  mask interrupt generation due to frequency change of arm_podf
      ARM_PODF_LOADED             : CIMR_ARM_PODF_LOADED_Field :=
                                     NRF_SVD.CCM.Arm_Podf_Loaded_1;
      --  unspecified
      Reserved_27_31              : HAL.UInt5 := 16#1F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CIMR_Register use record
      MASK_LRF_PLL                at 0 range 0 .. 0;
      Reserved_1_5                at 0 range 1 .. 5;
      MASK_COSC_READY             at 0 range 6 .. 6;
      Reserved_7_16               at 0 range 7 .. 16;
      MASK_SEMC_PODF_LOADED       at 0 range 17 .. 17;
      Reserved_18_18              at 0 range 18 .. 18;
      MASK_PERIPH2_CLK_SEL_LOADED at 0 range 19 .. 19;
      MASK_AHB_PODF_LOADED        at 0 range 20 .. 20;
      Reserved_21_21              at 0 range 21 .. 21;
      MASK_PERIPH_CLK_SEL_LOADED  at 0 range 22 .. 22;
      Reserved_23_25              at 0 range 23 .. 25;
      ARM_PODF_LOADED             at 0 range 26 .. 26;
      Reserved_27_31              at 0 range 27 .. 31;
   end record;

   --  Selection of the clock to be generated on CCM_CLKO1
   type CCOSR_CLKO1_SEL_Field is
     (
      --  Reset value for the field
      Ccosr_Clko1_Sel_Field_Reset,
      --  semc_clk_root
      Clko1_Sel_5,
      --  enc_clk_root
      Clko1_Sel_6,
      --  lcdif_pix_clk_root
      Clko1_Sel_10,
      --  ahb_clk_root
      Clko1_Sel_11,
      --  ipg_clk_root
      Clko1_Sel_12,
      --  perclk_root
      Clko1_Sel_13,
      --  ckil_sync_clk_root
      Clko1_Sel_14,
      --  pll4_main_clk
      Clko1_Sel_15)
     with Size => 4;
   for CCOSR_CLKO1_SEL_Field use
     (Ccosr_Clko1_Sel_Field_Reset => 1,
      Clko1_Sel_5 => 5,
      Clko1_Sel_6 => 6,
      Clko1_Sel_10 => 10,
      Clko1_Sel_11 => 11,
      Clko1_Sel_12 => 12,
      Clko1_Sel_13 => 13,
      Clko1_Sel_14 => 14,
      Clko1_Sel_15 => 15);

   --  Setting the divider of CCM_CLKO1
   type CCOSR_CLKO1_DIV_Field is
     (
      --  divide by 1
      Clko1_Div_0,
      --  divide by 2
      Clko1_Div_1,
      --  divide by 3
      Clko1_Div_2,
      --  divide by 4
      Clko1_Div_3,
      --  divide by 5
      Clko1_Div_4,
      --  divide by 6
      Clko1_Div_5,
      --  divide by 7
      Clko1_Div_6,
      --  divide by 8
      Clko1_Div_7)
     with Size => 3;
   for CCOSR_CLKO1_DIV_Field use
     (Clko1_Div_0 => 0,
      Clko1_Div_1 => 1,
      Clko1_Div_2 => 2,
      Clko1_Div_3 => 3,
      Clko1_Div_4 => 4,
      Clko1_Div_5 => 5,
      Clko1_Div_6 => 6,
      Clko1_Div_7 => 7);

   --  Enable of CCM_CLKO1 clock
   type CCOSR_CLKO1_EN_Field is
     (
      --  CCM_CLKO1 disabled.
      Clko1_En_0,
      --  CCM_CLKO1 enabled.
      Clko1_En_1)
     with Size => 1;
   for CCOSR_CLKO1_EN_Field use
     (Clko1_En_0 => 0,
      Clko1_En_1 => 1);

   --  CCM_CLKO1 output to reflect CCM_CLKO1 or CCM_CLKO2 clocks
   type CCOSR_CLK_OUT_SEL_Field is
     (
      --  CCM_CLKO1 output drives CCM_CLKO1 clock
      Clk_Out_Sel_0,
      --  CCM_CLKO1 output drives CCM_CLKO2 clock
      Clk_Out_Sel_1)
     with Size => 1;
   for CCOSR_CLK_OUT_SEL_Field use
     (Clk_Out_Sel_0 => 0,
      Clk_Out_Sel_1 => 1);

   --  Selection of the clock to be generated on CCM_CLKO2
   type CCOSR_CLKO2_SEL_Field is
     (
      --  usdhc1_clk_root
      Clko2_Sel_3,
      --  wrck_clk_root
      Clko2_Sel_5,
      --  lpi2c_clk_root
      Clko2_Sel_6,
      --  Reset value for the field
      Ccosr_Clko2_Sel_Field_Reset,
      --  csi_core
      Clko2_Sel_11,
      --  osc_clk
      Clko2_Sel_14,
      --  usdhc2_clk_root
      Clko2_Sel_17,
      --  sai1_clk_root
      Clko2_Sel_18,
      --  sai2_clk_root
      Clko2_Sel_19,
      --  sai3_clk_root
      Clko2_Sel_20,
      --  can_clk_root
      Clko2_Sel_23,
      --  flexspi_clk_root
      Clko2_Sel_27,
      --  uart_clk_root
      Clko2_Sel_28,
      --  spdif0_clk_root
      Clko2_Sel_29)
     with Size => 5;
   for CCOSR_CLKO2_SEL_Field use
     (Clko2_Sel_3 => 3,
      Clko2_Sel_5 => 5,
      Clko2_Sel_6 => 6,
      Ccosr_Clko2_Sel_Field_Reset => 10,
      Clko2_Sel_11 => 11,
      Clko2_Sel_14 => 14,
      Clko2_Sel_17 => 17,
      Clko2_Sel_18 => 18,
      Clko2_Sel_19 => 19,
      Clko2_Sel_20 => 20,
      Clko2_Sel_23 => 23,
      Clko2_Sel_27 => 27,
      Clko2_Sel_28 => 28,
      Clko2_Sel_29 => 29);

   --  Setting the divider of CCM_CLKO2
   type CCOSR_CLKO2_DIV_Field is
     (
      --  divide by 1
      Clko2_Div_0,
      --  divide by 2
      Clko2_Div_1,
      --  divide by 3
      Clko2_Div_2,
      --  divide by 4
      Clko2_Div_3,
      --  divide by 5
      Clko2_Div_4,
      --  divide by 6
      Clko2_Div_5,
      --  divide by 7
      Clko2_Div_6,
      --  divide by 8
      Clko2_Div_7)
     with Size => 3;
   for CCOSR_CLKO2_DIV_Field use
     (Clko2_Div_0 => 0,
      Clko2_Div_1 => 1,
      Clko2_Div_2 => 2,
      Clko2_Div_3 => 3,
      Clko2_Div_4 => 4,
      Clko2_Div_5 => 5,
      Clko2_Div_6 => 6,
      Clko2_Div_7 => 7);

   --  Enable of CCM_CLKO2 clock
   type CCOSR_CLKO2_EN_Field is
     (
      --  CCM_CLKO2 disabled.
      Clko2_En_0,
      --  CCM_CLKO2 enabled.
      Clko2_En_1)
     with Size => 1;
   for CCOSR_CLKO2_EN_Field use
     (Clko2_En_0 => 0,
      Clko2_En_1 => 1);

   --  CCM Clock Output Source Register
   type CCM_CCOSR_Register is record
      --  Selection of the clock to be generated on CCM_CLKO1
      CLKO1_SEL      : CCOSR_CLKO1_SEL_Field := Ccosr_Clko1_Sel_Field_Reset;
      --  Setting the divider of CCM_CLKO1
      CLKO1_DIV      : CCOSR_CLKO1_DIV_Field := NRF_SVD.CCM.Clko1_Div_0;
      --  Enable of CCM_CLKO1 clock
      CLKO1_EN       : CCOSR_CLKO1_EN_Field := NRF_SVD.CCM.Clko1_En_0;
      --  CCM_CLKO1 output to reflect CCM_CLKO1 or CCM_CLKO2 clocks
      CLK_OUT_SEL    : CCOSR_CLK_OUT_SEL_Field := NRF_SVD.CCM.Clk_Out_Sel_0;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Selection of the clock to be generated on CCM_CLKO2
      CLKO2_SEL      : CCOSR_CLKO2_SEL_Field := Ccosr_Clko2_Sel_Field_Reset;
      --  Setting the divider of CCM_CLKO2
      CLKO2_DIV      : CCOSR_CLKO2_DIV_Field := NRF_SVD.CCM.Clko2_Div_0;
      --  Enable of CCM_CLKO2 clock
      CLKO2_EN       : CCOSR_CLKO2_EN_Field := NRF_SVD.CCM.Clko2_En_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CCOSR_Register use record
      CLKO1_SEL      at 0 range 0 .. 3;
      CLKO1_DIV      at 0 range 4 .. 6;
      CLKO1_EN       at 0 range 7 .. 7;
      CLK_OUT_SEL    at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CLKO2_SEL      at 0 range 16 .. 20;
      CLKO2_DIV      at 0 range 21 .. 23;
      CLKO2_EN       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Defines clock dividion of clock for stby_count (pmic delay counter)
   type CGPR_PMIC_DELAY_SCALER_Field is
     (
      --  clock is not divided
      Pmic_Delay_Scaler_0,
      --  clock is divided /8
      Pmic_Delay_Scaler_1)
     with Size => 1;
   for CGPR_PMIC_DELAY_SCALER_Field use
     (Pmic_Delay_Scaler_0 => 0,
      Pmic_Delay_Scaler_1 => 1);

   --  Defines the value of the output signal cgpr_dout[4]. Gate of program
   --  supply for efuse programing
   type CGPR_EFUSE_PROG_SUPPLY_GATE_Field is
     (
      --  fuse programing supply voltage is gated off to the efuse module
      Efuse_Prog_Supply_Gate_0,
      --  allow fuse programing.
      Efuse_Prog_Supply_Gate_1)
     with Size => 1;
   for CGPR_EFUSE_PROG_SUPPLY_GATE_Field use
     (Efuse_Prog_Supply_Gate_0 => 0,
      Efuse_Prog_Supply_Gate_1 => 1);

   --  System memory DS control
   type CGPR_SYS_MEM_DS_CTRL_Field is
     (
      --  Disable memory DS mode always
      Sys_Mem_Ds_Ctrl_0,
      --  Enable memory (outside ARM platform) DS mode when system STOP and PLL
      --  are disabled
      Sys_Mem_Ds_Ctrl_1,
      --  Reset value for the field
      Cgpr_Sys_Mem_Ds_Ctrl_Field_Reset)
     with Size => 2;
   for CGPR_SYS_MEM_DS_CTRL_Field use
     (Sys_Mem_Ds_Ctrl_0 => 0,
      Sys_Mem_Ds_Ctrl_1 => 1,
      Cgpr_Sys_Mem_Ds_Ctrl_Field_Reset => 3);

   --  Fast PLL enable.
   type CGPR_FPL_Field is
     (
      --  Engage PLL enable default way.
      Fpl_0,
      --  Engage PLL enable 3 CKIL clocks earlier at exiting low power mode
      --  (STOP). Should be used only if 24MHz OSC was active in low power
      --  mode.
      Fpl_1)
     with Size => 1;
   for CGPR_FPL_Field use
     (Fpl_0 => 0,
      Fpl_1 => 1);

   --  Control for the Deep Sleep signal to the ARM Platform memories with
   --  additional control logic based on the ARM WFI signal
   type CGPR_INT_MEM_CLK_LPM_Field is
     (
      --  Disable the clock to the ARM platform memories when entering Low
      --  Power Mode
      Int_Mem_Clk_Lpm_0,
      --  Keep the clocks to the ARM platform memories enabled only if an
      --  interrupt is pending when entering Low Power Modes (WAIT and STOP
      --  without power gating)
      Int_Mem_Clk_Lpm_1)
     with Size => 1;
   for CGPR_INT_MEM_CLK_LPM_Field use
     (Int_Mem_Clk_Lpm_0 => 0,
      Int_Mem_Clk_Lpm_1 => 1);

   --  CCM General Purpose Register
   type CCM_CGPR_Register is record
      --  Defines clock dividion of clock for stby_count (pmic delay counter)
      PMIC_DELAY_SCALER      : CGPR_PMIC_DELAY_SCALER_Field :=
                                NRF_SVD.CCM.Pmic_Delay_Scaler_0;
      --  unspecified
      Reserved_1_3           : HAL.UInt3 := 16#1#;
      --  Defines the value of the output signal cgpr_dout[4]. Gate of program
      --  supply for efuse programing
      EFUSE_PROG_SUPPLY_GATE : CGPR_EFUSE_PROG_SUPPLY_GATE_Field :=
                                NRF_SVD.CCM.Efuse_Prog_Supply_Gate_0;
      --  unspecified
      Reserved_5_13          : HAL.UInt9 := 16#1F3#;
      --  System memory DS control
      SYS_MEM_DS_CTRL        : CGPR_SYS_MEM_DS_CTRL_Field :=
                                Cgpr_Sys_Mem_Ds_Ctrl_Field_Reset;
      --  Fast PLL enable.
      FPL                    : CGPR_FPL_Field := NRF_SVD.CCM.Fpl_0;
      --  Control for the Deep Sleep signal to the ARM Platform memories with
      --  additional control logic based on the ARM WFI signal
      INT_MEM_CLK_LPM        : CGPR_INT_MEM_CLK_LPM_Field :=
                                NRF_SVD.CCM.Int_Mem_Clk_Lpm_0;
      --  unspecified
      Reserved_18_31         : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CGPR_Register use record
      PMIC_DELAY_SCALER      at 0 range 0 .. 0;
      Reserved_1_3           at 0 range 1 .. 3;
      EFUSE_PROG_SUPPLY_GATE at 0 range 4 .. 4;
      Reserved_5_13          at 0 range 5 .. 13;
      SYS_MEM_DS_CTRL        at 0 range 14 .. 15;
      FPL                    at 0 range 16 .. 16;
      INT_MEM_CLK_LPM        at 0 range 17 .. 17;
      Reserved_18_31         at 0 range 18 .. 31;
   end record;

   --  CCGR_CG array element
   subtype CCGR_CG_Element is HAL.UInt2;

   --  CCGR_CG array
   type CCGR_CG_Field_Array is array (0 .. 15) of CCGR_CG_Element
     with Component_Size => 2, Size => 32;

   --  CCM Clock Gating Register 0
   type CCGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CG as a value
            Val : HAL.UInt32;
         when True =>
            --  CG as an array
            Arr : CCGR_CG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CCGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Overide clock enable signal from GPT - clock will not be gated based on
   --  GPT's signal 'ipg_enable_clk'
   type CMEOR_MOD_EN_OV_GPT_Field is
     (
      --  don't override module enable signal
      Mod_En_Ov_Gpt_0,
      --  override module enable signal
      Mod_En_Ov_Gpt_1)
     with Size => 1;
   for CMEOR_MOD_EN_OV_GPT_Field use
     (Mod_En_Ov_Gpt_0 => 0,
      Mod_En_Ov_Gpt_1 => 1);

   --  Overide clock enable signal from PIT - clock will not be gated based on
   --  PIT's signal 'ipg_enable_clk'
   type CMEOR_MOD_EN_OV_PIT_Field is
     (
      --  don't override module enable signal
      Mod_En_Ov_Pit_0,
      --  override module enable signal
      Mod_En_Ov_Pit_1)
     with Size => 1;
   for CMEOR_MOD_EN_OV_PIT_Field use
     (Mod_En_Ov_Pit_0 => 0,
      Mod_En_Ov_Pit_1 => 1);

   --  overide clock enable signal from USDHC.
   type CMEOR_MOD_EN_USDHC_Field is
     (
      --  don't override module enable signal
      Mod_En_Usdhc_0,
      --  override module enable signal
      Mod_En_Usdhc_1)
     with Size => 1;
   for CMEOR_MOD_EN_USDHC_Field use
     (Mod_En_Usdhc_0 => 0,
      Mod_En_Usdhc_1 => 1);

   --  Overide clock enable signal from TRNG
   type CMEOR_MOD_EN_OV_TRNG_Field is
     (
      --  don't override module enable signal
      Mod_En_Ov_Trng_0,
      --  override module enable signal
      Mod_En_Ov_Trng_1)
     with Size => 1;
   for CMEOR_MOD_EN_OV_TRNG_Field use
     (Mod_En_Ov_Trng_0 => 0,
      Mod_En_Ov_Trng_1 => 1);

   --  Overide clock enable signal from CAN2 - clock will not be gated based on
   --  CAN's signal 'enable_clk_cpi'
   type CMEOR_MOD_EN_OV_CAN2_CPI_Field is
     (
      --  don't override module enable signal
      Mod_En_Ov_Can2_Cpi_0,
      --  override module enable signal
      Mod_En_Ov_Can2_Cpi_1)
     with Size => 1;
   for CMEOR_MOD_EN_OV_CAN2_CPI_Field use
     (Mod_En_Ov_Can2_Cpi_0 => 0,
      Mod_En_Ov_Can2_Cpi_1 => 1);

   --  Overide clock enable signal from CAN1 - clock will not be gated based on
   --  CAN's signal 'enable_clk_cpi'
   type CMEOR_MOD_EN_OV_CAN1_CPI_Field is
     (
      --  don't overide module enable signal
      Mod_En_Ov_Can1_Cpi_0,
      --  overide module enable signal
      Mod_En_Ov_Can1_Cpi_1)
     with Size => 1;
   for CMEOR_MOD_EN_OV_CAN1_CPI_Field use
     (Mod_En_Ov_Can1_Cpi_0 => 0,
      Mod_En_Ov_Can1_Cpi_1 => 1);

   --  CCM Module Enable Overide Register
   type CCM_CMEOR_Register is record
      --  unspecified
      Reserved_0_4       : HAL.UInt5 := 16#1F#;
      --  Overide clock enable signal from GPT - clock will not be gated based
      --  on GPT's signal 'ipg_enable_clk'
      MOD_EN_OV_GPT      : CMEOR_MOD_EN_OV_GPT_Field :=
                            NRF_SVD.CCM.Mod_En_Ov_Gpt_1;
      --  Overide clock enable signal from PIT - clock will not be gated based
      --  on PIT's signal 'ipg_enable_clk'
      MOD_EN_OV_PIT      : CMEOR_MOD_EN_OV_PIT_Field :=
                            NRF_SVD.CCM.Mod_En_Ov_Pit_1;
      --  overide clock enable signal from USDHC.
      MOD_EN_USDHC       : CMEOR_MOD_EN_USDHC_Field :=
                            NRF_SVD.CCM.Mod_En_Usdhc_1;
      --  unspecified
      Reserved_8_8       : HAL.Bit := 16#1#;
      --  Overide clock enable signal from TRNG
      MOD_EN_OV_TRNG     : CMEOR_MOD_EN_OV_TRNG_Field :=
                            NRF_SVD.CCM.Mod_En_Ov_Trng_1;
      --  unspecified
      Reserved_10_27     : HAL.UInt18 := 16#3FFFF#;
      --  Overide clock enable signal from CAN2 - clock will not be gated based
      --  on CAN's signal 'enable_clk_cpi'
      MOD_EN_OV_CAN2_CPI : CMEOR_MOD_EN_OV_CAN2_CPI_Field :=
                            NRF_SVD.CCM.Mod_En_Ov_Can2_Cpi_1;
      --  unspecified
      Reserved_29_29     : HAL.Bit := 16#1#;
      --  Overide clock enable signal from CAN1 - clock will not be gated based
      --  on CAN's signal 'enable_clk_cpi'
      MOD_EN_OV_CAN1_CPI : CMEOR_MOD_EN_OV_CAN1_CPI_Field :=
                            NRF_SVD.CCM.Mod_En_Ov_Can1_Cpi_1;
      --  unspecified
      Reserved_31_31     : HAL.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_CMEOR_Register use record
      Reserved_0_4       at 0 range 0 .. 4;
      MOD_EN_OV_GPT      at 0 range 5 .. 5;
      MOD_EN_OV_PIT      at 0 range 6 .. 6;
      MOD_EN_USDHC       at 0 range 7 .. 7;
      Reserved_8_8       at 0 range 8 .. 8;
      MOD_EN_OV_TRNG     at 0 range 9 .. 9;
      Reserved_10_27     at 0 range 10 .. 27;
      MOD_EN_OV_CAN2_CPI at 0 range 28 .. 28;
      Reserved_29_29     at 0 range 29 .. 29;
      MOD_EN_OV_CAN1_CPI at 0 range 30 .. 30;
      Reserved_31_31     at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CCM
   type CCM_Peripheral is record
      --  CCM Control Register
      CCR    : aliased CCM_CCR_Register;
      --  CCM Status Register
      CSR    : aliased CCM_CSR_Register;
      --  CCM Clock Switcher Register
      CCSR   : aliased CCM_CCSR_Register;
      --  CCM Arm Clock Root Register
      CACRR  : aliased CCM_CACRR_Register;
      --  CCM Bus Clock Divider Register
      CBCDR  : aliased CCM_CBCDR_Register;
      --  CCM Bus Clock Multiplexer Register
      CBCMR  : aliased CCM_CBCMR_Register;
      --  CCM Serial Clock Multiplexer Register 1
      CSCMR1 : aliased CCM_CSCMR1_Register;
      --  CCM Serial Clock Multiplexer Register 2
      CSCMR2 : aliased CCM_CSCMR2_Register;
      --  CCM Serial Clock Divider Register 1
      CSCDR1 : aliased CCM_CSCDR1_Register;
      --  CCM Clock Divider Register
      CS1CDR : aliased CCM_CS1CDR_Register;
      --  CCM Clock Divider Register
      CS2CDR : aliased CCM_CS2CDR_Register;
      --  CCM D1 Clock Divider Register
      CDCDR  : aliased CCM_CDCDR_Register;
      --  CCM Serial Clock Divider Register 2
      CSCDR2 : aliased CCM_CSCDR2_Register;
      --  CCM Serial Clock Divider Register 3
      CSCDR3 : aliased CCM_CSCDR3_Register;
      --  CCM Divider Handshake In-Process Register
      CDHIPR : aliased CCM_CDHIPR_Register;
      --  CCM Low Power Control Register
      CLPCR  : aliased CCM_CLPCR_Register;
      --  CCM Interrupt Status Register
      CISR   : aliased CCM_CISR_Register;
      --  CCM Interrupt Mask Register
      CIMR   : aliased CCM_CIMR_Register;
      --  CCM Clock Output Source Register
      CCOSR  : aliased CCM_CCOSR_Register;
      --  CCM General Purpose Register
      CGPR   : aliased CCM_CGPR_Register;
      --  CCM Clock Gating Register 0
      CCGR0  : aliased CCGR_Register;
      --  CCM Clock Gating Register 1
      CCGR1  : aliased CCGR_Register;
      --  CCM Clock Gating Register 2
      CCGR2  : aliased CCGR_Register;
      --  CCM Clock Gating Register 3
      CCGR3  : aliased CCGR_Register;
      --  CCM Clock Gating Register 4
      CCGR4  : aliased CCGR_Register;
      --  CCM Clock Gating Register 5
      CCGR5  : aliased CCGR_Register;
      --  CCM Clock Gating Register 6
      CCGR6  : aliased CCGR_Register;
      --  CCM Module Enable Overide Register
      CMEOR  : aliased CCM_CMEOR_Register;
   end record
     with Volatile;

   for CCM_Peripheral use record
      CCR    at 16#0# range 0 .. 31;
      CSR    at 16#8# range 0 .. 31;
      CCSR   at 16#C# range 0 .. 31;
      CACRR  at 16#10# range 0 .. 31;
      CBCDR  at 16#14# range 0 .. 31;
      CBCMR  at 16#18# range 0 .. 31;
      CSCMR1 at 16#1C# range 0 .. 31;
      CSCMR2 at 16#20# range 0 .. 31;
      CSCDR1 at 16#24# range 0 .. 31;
      CS1CDR at 16#28# range 0 .. 31;
      CS2CDR at 16#2C# range 0 .. 31;
      CDCDR  at 16#30# range 0 .. 31;
      CSCDR2 at 16#38# range 0 .. 31;
      CSCDR3 at 16#3C# range 0 .. 31;
      CDHIPR at 16#48# range 0 .. 31;
      CLPCR  at 16#54# range 0 .. 31;
      CISR   at 16#58# range 0 .. 31;
      CIMR   at 16#5C# range 0 .. 31;
      CCOSR  at 16#60# range 0 .. 31;
      CGPR   at 16#64# range 0 .. 31;
      CCGR0  at 16#68# range 0 .. 31;
      CCGR1  at 16#6C# range 0 .. 31;
      CCGR2  at 16#70# range 0 .. 31;
      CCGR3  at 16#74# range 0 .. 31;
      CCGR4  at 16#78# range 0 .. 31;
      CCGR5  at 16#7C# range 0 .. 31;
      CCGR6  at 16#80# range 0 .. 31;
      CMEOR  at 16#88# range 0 .. 31;
   end record;

   --  CCM
   CCM_Periph : aliased CCM_Peripheral
     with Import, Address => System'To_Address (16#400FC000#);

end NRF_SVD.CCM;
