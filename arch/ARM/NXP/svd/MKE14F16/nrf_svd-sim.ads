--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADC interleave channel enable
   type CHIPCTL_ADC_INTERLEAVE_EN_Field is
     (
      --  No interleave channel
      Disabled,
      --  PTB0 to ADC0_SE4 and ADC1_SE14
      Ptb0,
      --  PTB1 to ADC0_SE5 and ADC1_SE15
      Ptb1,
      --  PTB13 to ADC1_SE8 and ADC2_SE8
      Ptb13,
      --  PTB14 to ADC1_SE9 and ADC2_SE9
      Ptb14)
     with Size => 4;
   for CHIPCTL_ADC_INTERLEAVE_EN_Field use
     (Disabled => 0,
      Ptb0 => 1,
      Ptb1 => 2,
      Ptb13 => 4,
      Ptb14 => 8);

   --  CLKOUT divider
   type CHIPCTL_CLKOUTDIV_Field is
     (
      --  no divider
      Div1,
      --  div 2
      Div2,
      --  div 4
      Div4,
      --  div 8
      Div8)
     with Size => 2;
   for CHIPCTL_CLKOUTDIV_Field use
     (Div1 => 0,
      Div2 => 1,
      Div4 => 2,
      Div8 => 3);

   --  CLKOUT Select
   type CHIPCTL_CLKOUTSEL_Field is
     (
      --  Reset value for the field
      Chipctl_Clkoutsel_Field_Reset,
      --  SCGCLKOUT(SIRC/FIRC/SOSC/LPFLL), see the SCG_CLKOUTCNFG register
      Scgclkout,
      --  RTC oscillator (OSC32) clock (32 kHz)
      Rtc32,
      --  LPO clock (128 kHz)
      Lpo)
     with Size => 2;
   for CHIPCTL_CLKOUTSEL_Field use
     (Chipctl_Clkoutsel_Field_Reset => 0,
      Scgclkout => 1,
      Rtc32 => 2,
      Lpo => 3);

   --  Debug trace clock select
   type CHIPCTL_TRACECLK_SEL_Field is
     (
      --  core clock
      Coreclk,
      --  platform clock
      Platform)
     with Size => 1;
   for CHIPCTL_TRACECLK_SEL_Field use
     (Coreclk => 0,
      Platform => 1);

   --  PDB back-to-back select
   type CHIPCTL_PDB_BB_SEL_Field is
     (
      --  PDB0 channel 0 back-to-back operation with ADC0 COCO[7:0]; PDB1
      --  channel 0 back-to-back operation with ADC1 COCO[7:0] ; PDB2 channel 0
      --  back-to-back operation with ADC2 COCO[7:0].
      Pdb0,
      --  Channel 0 of PDB0, PDB1 and PDB2 back-to-back operation with
      --  COCO[7:0] of ADC0, ADC1 and ADC2.
      Pdbx)
     with Size => 1;
   for CHIPCTL_PDB_BB_SEL_Field use
     (Pdb0 => 0,
      Pdbx => 1);

   --  CAN filter clock select
   type CHIPCTL_CAN_FLT_CLK_SEL_Field is
     (
      --  LPO clock
      Lpo_Clk,
      --  SIRC clock
      Sirc_Clk)
     with Size => 1;
   for CHIPCTL_CAN_FLT_CLK_SEL_Field use
     (Lpo_Clk => 0,
      Sirc_Clk => 1);

   --  PWT clock select
   type CHIPCTL_PWT_CLKSEL_Field is
     (
      --  TCLK0
      Tclk0,
      --  TCLK1
      Tclk1,
      --  TCLK2
      Tclk2)
     with Size => 2;
   for CHIPCTL_PWT_CLKSEL_Field use
     (Tclk0 => 0,
      Tclk1 => 1,
      Tclk2 => 2);

   --  RTC clock select
   type CHIPCTL_RTC_CLKSEL_Field is
     (
      --  OSC32_CLK
      Osc32K,
      --  RTC_CLKIN
      Rtc_Clkin,
      --  SOSC_CLK
      Sosc_Clk)
     with Size => 2;
   for CHIPCTL_RTC_CLKSEL_Field use
     (Osc32K => 0,
      Rtc_Clkin => 1,
      Sosc_Clk => 2);

   --  Chip Control register
   type SIM_CHIPCTL_Register is record
      --  ADC interleave channel enable
      ADC_INTERLEAVE_EN : CHIPCTL_ADC_INTERLEAVE_EN_Field :=
                           NRF_SVD.SIM.Disabled;
      --  CLKOUT divider
      CLKOUTDIV         : CHIPCTL_CLKOUTDIV_Field := NRF_SVD.SIM.Div1;
      --  CLKOUT Select
      CLKOUTSEL         : CHIPCTL_CLKOUTSEL_Field :=
                           Chipctl_Clkoutsel_Field_Reset;
      --  unspecified
      Reserved_8_11     : HAL.UInt4 := 16#0#;
      --  Debug trace clock select
      TRACECLK_SEL      : CHIPCTL_TRACECLK_SEL_Field := NRF_SVD.SIM.Coreclk;
      --  PDB back-to-back select
      PDB_BB_SEL        : CHIPCTL_PDB_BB_SEL_Field := NRF_SVD.SIM.Pdb0;
      --  unspecified
      Reserved_14_14    : HAL.Bit := 16#0#;
      --  CAN filter clock select
      CAN_FLT_CLK_SEL   : CHIPCTL_CAN_FLT_CLK_SEL_Field :=
                           NRF_SVD.SIM.Lpo_Clk;
      --  PWT clock select
      PWT_CLKSEL        : CHIPCTL_PWT_CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  RTC clock select
      RTC_CLKSEL        : CHIPCTL_RTC_CLKSEL_Field := NRF_SVD.SIM.Osc32K;
      --  unspecified
      Reserved_20_31    : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CHIPCTL_Register use record
      ADC_INTERLEAVE_EN at 0 range 0 .. 3;
      CLKOUTDIV         at 0 range 4 .. 5;
      CLKOUTSEL         at 0 range 6 .. 7;
      Reserved_8_11     at 0 range 8 .. 11;
      TRACECLK_SEL      at 0 range 12 .. 12;
      PDB_BB_SEL        at 0 range 13 .. 13;
      Reserved_14_14    at 0 range 14 .. 14;
      CAN_FLT_CLK_SEL   at 0 range 15 .. 15;
      PWT_CLKSEL        at 0 range 16 .. 17;
      RTC_CLKSEL        at 0 range 18 .. 19;
      Reserved_20_31    at 0 range 20 .. 31;
   end record;

   subtype SIM_FTMOPT0_FTM0FLTxSEL_Field is HAL.UInt3;
   subtype SIM_FTMOPT0_FTM1FLTxSEL_Field is HAL.UInt3;
   subtype SIM_FTMOPT0_FTM2FLTxSEL_Field is HAL.UInt3;
   subtype SIM_FTMOPT0_FTM3FLTxSEL_Field is HAL.UInt3;

   --  FTM0 External Clock Pin Select
   type FTMOPT0_FTM0CLKSEL_Field is
     (
      --  FTM0 external clock driven by TCLK0 pin.
      Tclk0,
      --  FTM0 external clock driven by TCLK1 pin.
      Tclk1,
      --  FTM0 external clock driven by TCLK2 pin.
      Tclk2,
      --  No clock input
      None)
     with Size => 2;
   for FTMOPT0_FTM0CLKSEL_Field use
     (Tclk0 => 0,
      Tclk1 => 1,
      Tclk2 => 2,
      None => 3);

   --  FTM1 External Clock Pin Select
   type FTMOPT0_FTM1CLKSEL_Field is
     (
      --  FTM1 external clock driven by TCLK0 pin.
      Tclk0,
      --  FTM1 external clock driven by TCLK1 pin.
      Tclk1,
      --  FTM1 external clock driven by TCLK2 pin.
      Tclk2,
      --  No clock input
      None)
     with Size => 2;
   for FTMOPT0_FTM1CLKSEL_Field use
     (Tclk0 => 0,
      Tclk1 => 1,
      Tclk2 => 2,
      None => 3);

   --  FTM2 External Clock Pin Select
   type FTMOPT0_FTM2CLKSEL_Field is
     (
      --  FTM2 external clock driven by TCLK0 pin.
      Tclk0,
      --  FTM2 external clock driven by TCLK1 pin.
      Tclk1,
      --  FTM2 external clock driven by TCLK2 pin.
      Tclk2,
      --  No clock input
      None)
     with Size => 2;
   for FTMOPT0_FTM2CLKSEL_Field use
     (Tclk0 => 0,
      Tclk1 => 1,
      Tclk2 => 2,
      None => 3);

   --  FTM3 External Clock Pin Select
   type FTMOPT0_FTM3CLKSEL_Field is
     (
      --  FTM3 external clock driven by TCLK0 pin.
      Tclk0,
      --  FTM3 external clock driven by TCLK1 pin.
      Tclk1,
      --  FTM3 external clock driven by TCLK2 pin.
      Tclk2,
      --  No clock input
      None)
     with Size => 2;
   for FTMOPT0_FTM3CLKSEL_Field use
     (Tclk0 => 0,
      Tclk1 => 1,
      Tclk2 => 2,
      None => 3);

   --  FTM Option Register 0
   type SIM_FTMOPT0_Register is record
      --  FTM0 Fault X Select
      FTM0FLTxSEL    : SIM_FTMOPT0_FTM0FLTxSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  FTM1 Fault X Select
      FTM1FLTxSEL    : SIM_FTMOPT0_FTM1FLTxSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  FTM2 Fault X Select
      FTM2FLTxSEL    : SIM_FTMOPT0_FTM2FLTxSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  FTM3 Fault X Select
      FTM3FLTxSEL    : SIM_FTMOPT0_FTM3FLTxSEL_Field := 16#0#;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  FTM0 External Clock Pin Select
      FTM0CLKSEL     : FTMOPT0_FTM0CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  FTM1 External Clock Pin Select
      FTM1CLKSEL     : FTMOPT0_FTM1CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  FTM2 External Clock Pin Select
      FTM2CLKSEL     : FTMOPT0_FTM2CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  FTM3 External Clock Pin Select
      FTM3CLKSEL     : FTMOPT0_FTM3CLKSEL_Field := NRF_SVD.SIM.Tclk0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FTMOPT0_Register use record
      FTM0FLTxSEL    at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FTM1FLTxSEL    at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FTM2FLTxSEL    at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      FTM3FLTxSEL    at 0 range 12 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      FTM0CLKSEL     at 0 range 24 .. 25;
      FTM1CLKSEL     at 0 range 26 .. 27;
      FTM2CLKSEL     at 0 range 28 .. 29;
      FTM3CLKSEL     at 0 range 30 .. 31;
   end record;

   --  ADC0 trigger source select
   type ADCOPT_ADC0TRGSEL_Field is
     (
      --  PDB output
      Pdb,
      --  TRGMUX output
      Trgmux)
     with Size => 1;
   for ADCOPT_ADC0TRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1);

   --  ADC0 software pre-trigger sources
   type ADCOPT_ADC0SWPRETRG_Field is
     (
      --  software pre-trigger disabled
      Disabled,
      --  software pre-trigger 0
      Pretr0,
      --  software pre-trigger 1
      Pretr1,
      --  software pre-trigger 2
      Pretr2,
      --  software pre-trigger 3
      Pretr3)
     with Size => 3;
   for ADCOPT_ADC0SWPRETRG_Field use
     (Disabled => 0,
      Pretr0 => 4,
      Pretr1 => 5,
      Pretr2 => 6,
      Pretr3 => 7);

   --  ADC0 pre-trigger source select
   type ADCOPT_ADC0PRETRGSEL_Field is
     (
      --  PDB pre-trigger (default)
      Pdb,
      --  TRGMUX pre-trigger
      Trgmux,
      --  Software pre-trigger
      Softwr)
     with Size => 2;
   for ADCOPT_ADC0PRETRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1,
      Softwr => 2);

   --  ADC1 trigger source select
   type ADCOPT_ADC1TRGSEL_Field is
     (
      --  PDB output
      Pdb,
      --  TRGMUX output
      Trgmux)
     with Size => 1;
   for ADCOPT_ADC1TRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1);

   --  ADC1 software pre-trigger sources
   type ADCOPT_ADC1SWPRETRG_Field is
     (
      --  software pre-trigger disabled
      Disabled,
      --  software pre-trigger 0
      Pretr0,
      --  software pre-trigger 1
      Pretr1,
      --  software pre-trigger 2
      Pretr2,
      --  software pre-trigger 3
      Pretr3)
     with Size => 3;
   for ADCOPT_ADC1SWPRETRG_Field use
     (Disabled => 0,
      Pretr0 => 4,
      Pretr1 => 5,
      Pretr2 => 6,
      Pretr3 => 7);

   --  ADC1 pre-trigger source select
   type ADCOPT_ADC1PRETRGSEL_Field is
     (
      --  PDB pre-trigger (default)
      Pdb,
      --  TRGMUX pre-trigger
      Trgmux,
      --  Software pre-trigger
      Softwr)
     with Size => 2;
   for ADCOPT_ADC1PRETRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1,
      Softwr => 2);

   --  ADC2 trigger source select
   type ADCOPT_ADC2TRGSEL_Field is
     (
      --  PDB output
      Pdb,
      --  TRGMUX output
      Trgmux)
     with Size => 1;
   for ADCOPT_ADC2TRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1);

   --  ADC2 software pre-trigger sources
   type ADCOPT_ADC2SWPRETRG_Field is
     (
      --  software pre-trigger disabled
      Disabled,
      --  software pre-trigger 0
      Pretr0,
      --  software pre-trigger 1
      Pretr1,
      --  software pre-trigger 2
      Pretr2,
      --  software pre-trigger 3
      Pretr3)
     with Size => 3;
   for ADCOPT_ADC2SWPRETRG_Field use
     (Disabled => 0,
      Pretr0 => 4,
      Pretr1 => 5,
      Pretr2 => 6,
      Pretr3 => 7);

   --  ADC2 pre-trigger source select
   type ADCOPT_ADC2PRETRGSEL_Field is
     (
      --  PDB pre-trigger (default)
      Pdb,
      --  TRGMUX pre-trigger
      Trgmux,
      --  Software pre-trigger
      Softwr)
     with Size => 2;
   for ADCOPT_ADC2PRETRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1,
      Softwr => 2);

   --  ADC Options Register
   type SIM_ADCOPT_Register is record
      --  ADC0 trigger source select
      ADC0TRGSEL     : ADCOPT_ADC0TRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  ADC0 software pre-trigger sources
      ADC0SWPRETRG   : ADCOPT_ADC0SWPRETRG_Field := NRF_SVD.SIM.Disabled;
      --  ADC0 pre-trigger source select
      ADC0PRETRGSEL  : ADCOPT_ADC0PRETRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  ADC1 trigger source select
      ADC1TRGSEL     : ADCOPT_ADC1TRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  ADC1 software pre-trigger sources
      ADC1SWPRETRG   : ADCOPT_ADC1SWPRETRG_Field := NRF_SVD.SIM.Disabled;
      --  ADC1 pre-trigger source select
      ADC1PRETRGSEL  : ADCOPT_ADC1PRETRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  ADC2 trigger source select
      ADC2TRGSEL     : ADCOPT_ADC2TRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  ADC2 software pre-trigger sources
      ADC2SWPRETRG   : ADCOPT_ADC2SWPRETRG_Field := NRF_SVD.SIM.Disabled;
      --  ADC2 pre-trigger source select
      ADC2PRETRGSEL  : ADCOPT_ADC2PRETRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_ADCOPT_Register use record
      ADC0TRGSEL     at 0 range 0 .. 0;
      ADC0SWPRETRG   at 0 range 1 .. 3;
      ADC0PRETRGSEL  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC1TRGSEL     at 0 range 8 .. 8;
      ADC1SWPRETRG   at 0 range 9 .. 11;
      ADC1PRETRGSEL  at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ADC2TRGSEL     at 0 range 16 .. 16;
      ADC2SWPRETRG   at 0 range 17 .. 19;
      ADC2PRETRGSEL  at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  FTM0 Sync Bit
   type FTMOPT1_FTM0SYNCBIT_Field is
     (
      --  No effect.
      None,
      --  Write 1 to assert the TRIG1 input to FTM0. Software must clear this
      --  bit to allow other trigger sources to assert.
      Ftm0)
     with Size => 1;
   for FTMOPT1_FTM0SYNCBIT_Field use
     (None => 0,
      Ftm0 => 1);

   --  FTM1 Sync Bit
   type FTMOPT1_FTM1SYNCBIT_Field is
     (
      --  No effect.
      None,
      --  Write 1 to assert the TRIG1 input to FTM1. Software must clear this
      --  bit to allow other trigger sources to assert.
      Ftm1)
     with Size => 1;
   for FTMOPT1_FTM1SYNCBIT_Field use
     (None => 0,
      Ftm1 => 1);

   --  FTM2 Sync Bit
   type FTMOPT1_FTM2SYNCBIT_Field is
     (
      --  No effect.
      None,
      --  Write 1 to assert the TRIG1 input to FTM2. Software must clear this
      --  bit to allow other trigger sources to assert.
      Ftm2)
     with Size => 1;
   for FTMOPT1_FTM2SYNCBIT_Field use
     (None => 0,
      Ftm2 => 1);

   --  FTM3 Sync Bit
   type FTMOPT1_FTM3SYNCBIT_Field is
     (
      --  No effect.
      None,
      --  Write 1 to assert the TRIG1 input to FTM3. Software must clear this
      --  bit to allow other trigger sources to assert.
      Ftm3)
     with Size => 1;
   for FTMOPT1_FTM3SYNCBIT_Field use
     (None => 0,
      Ftm3 => 1);

   --  FTM1 CH0 Select
   type FTMOPT1_FTM1CH0SEL_Field is
     (
      --  FTM1_CH0 input
      Ftm1Ch0,
      --  CMP0 output
      Cmp0,
      --  CMP1 output
      Cmp1,
      --  CMP2 output
      Cmp2)
     with Size => 2;
   for FTMOPT1_FTM1CH0SEL_Field use
     (Ftm1Ch0 => 0,
      Cmp0 => 1,
      Cmp1 => 2,
      Cmp2 => 3);

   --  FTM2 CH0 Select
   type FTMOPT1_FTM2CH0SEL_Field is
     (
      --  FTM2_CH0 input
      Ftm2Ch0,
      --  CMP0 output
      Cmp0,
      --  CMP1 output
      Cmp1,
      --  CMP2 output
      Cmp2)
     with Size => 2;
   for FTMOPT1_FTM2CH0SEL_Field use
     (Ftm2Ch0 => 0,
      Cmp0 => 1,
      Cmp1 => 2,
      Cmp2 => 3);

   --  FTM2 CH1 Select
   type FTMOPT1_FTM2CH1SEL_Field is
     (
      --  FTM2_CH1 input
      Ftm2_Ch1,
      --  exclusive OR of FTM2_CH0,FTM2_CH1, and FTM1_CH1
      Xor_Ftmxchx)
     with Size => 1;
   for FTMOPT1_FTM2CH1SEL_Field use
     (Ftm2_Ch1 => 0,
      Xor_Ftmxchx => 1);

   --  FTM0 channel modulation select with FTM1_CH1
   type FTMOPT1_FTM0_OUTSEL_Field is
     (
      --  No modulation with FTM1_CH1
      None,
      --  Modulation with FTM1_CH1
      Ftm1Ch1)
     with Size => 8;
   for FTMOPT1_FTM0_OUTSEL_Field use
     (None => 0,
      Ftm1Ch1 => 1);

   --  FTM3 channel modulation select with FTM2_CH1
   type FTMOPT1_FTM3_OUTSEL_Field is
     (
      --  No modulation with FTM2_CH1
      None,
      --  Modulation with FTM2_CH1
      Ftm2Ch1)
     with Size => 8;
   for FTMOPT1_FTM3_OUTSEL_Field use
     (None => 0,
      Ftm2Ch1 => 1);

   --  FTM Option Register 1
   type SIM_FTMOPT1_Register is record
      --  FTM0 Sync Bit
      FTM0SYNCBIT   : FTMOPT1_FTM0SYNCBIT_Field := NRF_SVD.SIM.None;
      --  FTM1 Sync Bit
      FTM1SYNCBIT   : FTMOPT1_FTM1SYNCBIT_Field := NRF_SVD.SIM.None;
      --  FTM2 Sync Bit
      FTM2SYNCBIT   : FTMOPT1_FTM2SYNCBIT_Field := NRF_SVD.SIM.None;
      --  FTM3 Sync Bit
      FTM3SYNCBIT   : FTMOPT1_FTM3SYNCBIT_Field := NRF_SVD.SIM.None;
      --  FTM1 CH0 Select
      FTM1CH0SEL    : FTMOPT1_FTM1CH0SEL_Field := NRF_SVD.SIM.Ftm1Ch0;
      --  FTM2 CH0 Select
      FTM2CH0SEL    : FTMOPT1_FTM2CH0SEL_Field := NRF_SVD.SIM.Ftm2Ch0;
      --  FTM2 CH1 Select
      FTM2CH1SEL    : FTMOPT1_FTM2CH1SEL_Field := NRF_SVD.SIM.Ftm2_Ch1;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
      --  FTM0 channel modulation select with FTM1_CH1
      FTM0_OUTSEL   : FTMOPT1_FTM0_OUTSEL_Field := NRF_SVD.SIM.None;
      --  FTM3 channel modulation select with FTM2_CH1
      FTM3_OUTSEL   : FTMOPT1_FTM3_OUTSEL_Field := NRF_SVD.SIM.None;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FTMOPT1_Register use record
      FTM0SYNCBIT   at 0 range 0 .. 0;
      FTM1SYNCBIT   at 0 range 1 .. 1;
      FTM2SYNCBIT   at 0 range 2 .. 2;
      FTM3SYNCBIT   at 0 range 3 .. 3;
      FTM1CH0SEL    at 0 range 4 .. 5;
      FTM2CH0SEL    at 0 range 6 .. 7;
      FTM2CH1SEL    at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
      FTM0_OUTSEL   at 0 range 16 .. 23;
      FTM3_OUTSEL   at 0 range 24 .. 31;
   end record;

   --  Pin identification
   type SDID_PINID_Field is
     (
      --  64-pin
      Pin64,
      --  100-pin
      Pin100)
     with Size => 7;
   for SDID_PINID_Field use
     (Pin64 => 7,
      Pin100 => 10);

   subtype SIM_SDID_PROJECTID_Field is HAL.UInt5;
   subtype SIM_SDID_REVID_Field is HAL.UInt4;

   --  RAM size
   type SDID_RAMSIZE_Field is
     (
      --  32 KB
      Size16Kb,
      --  64 KB
      Size64Kb)
     with Size => 4;
   for SDID_RAMSIZE_Field use
     (Size16Kb => 5,
      Size64Kb => 7);

   --  Kinetis Series ID
   type SDID_SERIESID_Field is
     (
      --  Kinetis E+ series
      Seriesid_2)
     with Size => 4;
   for SDID_SERIESID_Field use
     (Seriesid_2 => 2);

   subtype SIM_SDID_SUBFAMID_Field is HAL.UInt4;

   --  Kinetis E-series Family ID
   type SDID_FAMILYID_Field is
     (
      --  KE1x Family (Enhanced features)
      Ke1X)
     with Size => 4;
   for SDID_FAMILYID_Field use
     (Ke1X => 1);

   --  System Device Identification Register
   type SIM_SDID_Register is record
      --  Read-only. Pin identification
      PINID     : SDID_PINID_Field;
      --  Read-only. Project ID
      PROJECTID : SIM_SDID_PROJECTID_Field;
      --  Read-only. Device revision number
      REVID     : SIM_SDID_REVID_Field;
      --  Read-only. RAM size
      RAMSIZE   : SDID_RAMSIZE_Field;
      --  Read-only. Kinetis Series ID
      SERIESID  : SDID_SERIESID_Field;
      --  Read-only. Kinetis E-series Sub-Family ID
      SUBFAMID  : SIM_SDID_SUBFAMID_Field;
      --  Read-only. Kinetis E-series Family ID
      FAMILYID  : SDID_FAMILYID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SDID_Register use record
      PINID     at 0 range 0 .. 6;
      PROJECTID at 0 range 7 .. 11;
      REVID     at 0 range 12 .. 15;
      RAMSIZE   at 0 range 16 .. 19;
      SERIESID  at 0 range 20 .. 23;
      SUBFAMID  at 0 range 24 .. 27;
      FAMILYID  at 0 range 28 .. 31;
   end record;

   --  MSCM Clock Gating Control
   type PLATCGC_CGCMSCM_Field is
     (
      --  Clock disabled
      Disabled,
      --  Clock enabled
      Enabled)
     with Size => 1;
   for PLATCGC_CGCMSCM_Field use
     (Disabled => 0,
      Enabled => 1);

   --  MPU Clock Gating Control
   type PLATCGC_CGCMPU_Field is
     (
      --  Clock disabled
      Disabled,
      --  Clock enabled
      Enabled)
     with Size => 1;
   for PLATCGC_CGCMPU_Field use
     (Disabled => 0,
      Enabled => 1);

   --  DMA Clock Gating Control
   type PLATCGC_CGCDMA_Field is
     (
      --  Clock disabled
      Cgcdma_0,
      --  Clock enabled
      Cgcdma_1)
     with Size => 1;
   for PLATCGC_CGCDMA_Field use
     (Cgcdma_0 => 0,
      Cgcdma_1 => 1);

   --  Platform Clock Gating Control Register
   type SIM_PLATCGC_Register is record
      --  MSCM Clock Gating Control
      CGCMSCM       : PLATCGC_CGCMSCM_Field := NRF_SVD.SIM.Enabled;
      --  MPU Clock Gating Control
      CGCMPU        : PLATCGC_CGCMPU_Field := NRF_SVD.SIM.Enabled;
      --  DMA Clock Gating Control
      CGCDMA        : PLATCGC_CGCDMA_Field := NRF_SVD.SIM.Cgcdma_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_PLATCGC_Register use record
      CGCMSCM       at 0 range 0 .. 0;
      CGCMPU        at 0 range 1 .. 1;
      CGCDMA        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flash Disable
   type FCFG1_FLASHDIS_Field is
     (
      --  Flash is enabled
      Flash_En,
      --  Flash is disabled
      Flash_Dis)
     with Size => 1;
   for FCFG1_FLASHDIS_Field use
     (Flash_En => 0,
      Flash_Dis => 1);

   --  Flash Doze
   type FCFG1_FLASHDOZE_Field is
     (
      --  Flash remains enabled during Wait mode
      Flash_En,
      --  Flash is disabled for the duration of Wait mode
      Flash_Dis)
     with Size => 1;
   for FCFG1_FLASHDOZE_Field use
     (Flash_En => 0,
      Flash_Dis => 1);

   subtype SIM_FCFG1_DEPART_Field is HAL.UInt4;

   --  EEE SRAM SIZE
   type FCFG1_EEERAMSIZE_Field is
     (
      --  Reset value for the field
      Fcfg1_Eeeramsize_Field_Reset,
      --  4 KB
      Eeeramsize_2,
      --  2 KB
      Eeeramsize_3,
      --  1 KB
      Eeeramsize_4,
      --  512 Bytes
      Eeeramsize_5,
      --  256 Bytes
      Eeeramsize_6,
      --  128 Bytes
      Eeeramsize_7,
      --  64 Bytes
      Eeeramsize_8,
      --  32 Bytes
      Eeeramsize_9)
     with Size => 4;
   for FCFG1_EEERAMSIZE_Field use
     (Fcfg1_Eeeramsize_Field_Reset => 0,
      Eeeramsize_2 => 2,
      Eeeramsize_3 => 3,
      Eeeramsize_4 => 4,
      Eeeramsize_5 => 5,
      Eeeramsize_6 => 6,
      Eeeramsize_7 => 7,
      Eeeramsize_8 => 8,
      Eeeramsize_9 => 9);

   --  Program flash size
   type FCFG1_PFSIZE_Field is
     (
      --  8 KB of program flash memory, 0.25 KB protection region
      Size8K,
      --  16 KB of program flash memory, 0.5 KB protection region
      Size16K,
      --  32 KB of program flash memory, 1 KB protection region
      Size32K,
      --  64 KB of program flash memory, 2 KB protection region
      Size64K,
      --  128 KB of program flash memory, 4 KB protection region
      Size128K,
      --  256 KB of program flash memory, 8 KB protection region
      Size256K)
     with Size => 4;
   for FCFG1_PFSIZE_Field use
     (Size8K => 0,
      Size16K => 1,
      Size32K => 3,
      Size64K => 5,
      Size128K => 7,
      Size256K => 9);

   --  FlexNVM size
   type FCFG1_NVMSIZE_Field is
     (
      --  0 KB of FlexNVM
      M0K,
      --  32 KB of FlexNVM
      M32K,
      --  64 KB of FlexNVM
      M64K,
      --  64 KB of FlexNVM
      Mk512K)
     with Size => 4;
   for FCFG1_NVMSIZE_Field use
     (M0K => 0,
      M32K => 3,
      M64K => 5,
      Mk512K => 15);

   --  Flash Configuration Register 1
   type SIM_FCFG1_Register is record
      --  Flash Disable
      FLASHDIS       : FCFG1_FLASHDIS_Field := NRF_SVD.SIM.Flash_En;
      --  Flash Doze
      FLASHDOZE      : FCFG1_FLASHDOZE_Field := NRF_SVD.SIM.Flash_En;
      --  unspecified
      Reserved_2_11  : HAL.UInt10 := 16#0#;
      --  Read-only. FlexNVM partition
      DEPART         : SIM_FCFG1_DEPART_Field := 16#0#;
      --  Read-only. EEE SRAM SIZE
      EEERAMSIZE     : FCFG1_EEERAMSIZE_Field := Fcfg1_Eeeramsize_Field_Reset;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Read-only. Program flash size
      PFSIZE         : FCFG1_PFSIZE_Field := NRF_SVD.SIM.Size8K;
      --  Read-only. FlexNVM size
      NVMSIZE        : FCFG1_NVMSIZE_Field := NRF_SVD.SIM.M0K;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FCFG1_Register use record
      FLASHDIS       at 0 range 0 .. 0;
      FLASHDOZE      at 0 range 1 .. 1;
      Reserved_2_11  at 0 range 2 .. 11;
      DEPART         at 0 range 12 .. 15;
      EEERAMSIZE     at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PFSIZE         at 0 range 24 .. 27;
      NVMSIZE        at 0 range 28 .. 31;
   end record;

   subtype SIM_FCFG2_MAXADDR1_Field is HAL.UInt7;
   subtype SIM_FCFG2_MAXADDR0_Field is HAL.UInt7;

   --  Flash Configuration Register 2
   type SIM_FCFG2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. Max address block 1
      MAXADDR1       : SIM_FCFG2_MAXADDR1_Field;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Max address block 0
      MAXADDR0       : SIM_FCFG2_MAXADDR0_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FCFG2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MAXADDR1       at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MAXADDR0       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SIM_CLKDIV4_TRACEDIV_Field is HAL.UInt3;

   --  Debug Trace Divider Control
   type CLKDIV4_TRACEDIVEN_Field is
     (
      --  Debug trace divider disabled
      Disabled,
      --  Debug trace divider enabled
      Enabled)
     with Size => 1;
   for CLKDIV4_TRACEDIVEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System Clock Divider Register 4
   type SIM_CLKDIV4_Register is record
      --  Trace clock divider fraction To configure TRACEDIV and TRACEFRAC, the
      --  user must clear TRACEDIVEN at first to disable the trace clock divide
      --  function.
      TRACEFRAC      : Boolean := False;
      --  Trace clock divider divisor To configure TRACEDIV, the user must
      --  disable TRACEDIVEN at first, and then enable it after setting
      --  TRACEDIV.
      TRACEDIV       : SIM_CLKDIV4_TRACEDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_27  : HAL.UInt24 := 16#0#;
      --  Debug Trace Divider Control
      TRACEDIVEN     : CLKDIV4_TRACEDIVEN_Field := NRF_SVD.SIM.Enabled;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV4_Register use record
      TRACEFRAC      at 0 range 0 .. 0;
      TRACEDIV       at 0 range 1 .. 3;
      Reserved_4_27  at 0 range 4 .. 27;
      TRACEDIVEN     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Software Interrupt
   type MISCTRL_SW_INTERRUPT_Field is
     (
      --  Disables software interrupt.
      Disabled,
      --  Software can send an interrupt to CPU.
      Enabled)
     with Size => 1;
   for MISCTRL_SW_INTERRUPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Miscellaneous Control register
   type SIM_MISCTRL_Register is record
      --  Software Trigger bit to TRGMUX
      SW_TRG         : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Software Interrupt
      SW_INTERRUPT   : MISCTRL_SW_INTERRUPT_Field := NRF_SVD.SIM.Disabled;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_MISCTRL_Register use record
      SW_TRG         at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      SW_INTERRUPT   at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  Chip Control register
      CHIPCTL : aliased SIM_CHIPCTL_Register;
      --  FTM Option Register 0
      FTMOPT0 : aliased SIM_FTMOPT0_Register;
      --  ADC Options Register
      ADCOPT  : aliased SIM_ADCOPT_Register;
      --  FTM Option Register 1
      FTMOPT1 : aliased SIM_FTMOPT1_Register;
      --  System Device Identification Register
      SDID    : aliased SIM_SDID_Register;
      --  Platform Clock Gating Control Register
      PLATCGC : aliased SIM_PLATCGC_Register;
      --  Flash Configuration Register 1
      FCFG1   : aliased SIM_FCFG1_Register;
      --  Flash Configuration Register 2
      FCFG2   : aliased SIM_FCFG2_Register;
      --  Unique Identification Register High
      UIDH    : aliased HAL.UInt32;
      --  Unique Identification Register Mid-High
      UIDMH   : aliased HAL.UInt32;
      --  Unique Identification Register Mid Low
      UIDML   : aliased HAL.UInt32;
      --  Unique Identification Register Low
      UIDL    : aliased HAL.UInt32;
      --  System Clock Divider Register 4
      CLKDIV4 : aliased SIM_CLKDIV4_Register;
      --  Miscellaneous Control register
      MISCTRL : aliased SIM_MISCTRL_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      CHIPCTL at 16#4# range 0 .. 31;
      FTMOPT0 at 16#C# range 0 .. 31;
      ADCOPT  at 16#18# range 0 .. 31;
      FTMOPT1 at 16#1C# range 0 .. 31;
      SDID    at 16#24# range 0 .. 31;
      PLATCGC at 16#40# range 0 .. 31;
      FCFG1   at 16#4C# range 0 .. 31;
      FCFG2   at 16#50# range 0 .. 31;
      UIDH    at 16#54# range 0 .. 31;
      UIDMH   at 16#58# range 0 .. 31;
      UIDML   at 16#5C# range 0 .. 31;
      UIDL    at 16#60# range 0 .. 31;
      CLKDIV4 at 16#68# range 0 .. 31;
      MISCTRL at 16#6C# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => System'To_Address (16#40048000#);

end NRF_SVD.SIM;
