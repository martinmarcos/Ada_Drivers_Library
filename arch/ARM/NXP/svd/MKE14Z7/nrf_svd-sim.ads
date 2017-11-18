--  This spec has been automatically generated from MKE14Z7.xml

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
      Disabled)
     with Size => 2;
   for CHIPCTL_ADC_INTERLEAVE_EN_Field use
     (Disabled => 0);

   --  CLKOUT divider ratio
   type CHIPCTL_CLKOUTDIV_Field is
     (
      --  Divided by 1
      Div1,
      --  Divided by 2
      Div2,
      --  Divided by 4
      Div4,
      --  Divided by 8
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
      --  SCGCLKOUT(SIRC/FIRC/SOSC/LPFLL), see SCG_CLKOUTCNFG register.
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

   --  PDB back-to-back select
   type CHIPCTL_PDB_BB_SEL_Field is
     (
      --  PDB0 channel 0 back-to-back operation with ADC0 COCO[1:0] and PDB0
      --  channel 1 back-to-back operation with ADC1 COCO[1:0]
      Pdb0,
      --  PDB0 Channel 0 back-to-back operation with COCO[0] of ADC0 and
      --  COCO[1] of ADC1 ; PDB0 Channel 1 back-to-back operation with COCO[0]
      --  of ADC1 and COCO[1] of ADC0
      Pdbx)
     with Size => 1;
   for CHIPCTL_PDB_BB_SEL_Field use
     (Pdb0 => 0,
      Pdbx => 1);

   --  PWT clock source select
   type CHIPCTL_PWTCLKSEL_Field is
     (
      --  PWT alternative clock is from the TCLK0 pin.
      Tclk0,
      --  PWT alternative clock is from the TCLK1 pin.
      Tclk1,
      --  PWT alternative clock is from the TCLK2 pin.
      Tclk2)
     with Size => 2;
   for CHIPCTL_PWTCLKSEL_Field use
     (Tclk0 => 0,
      Tclk1 => 1,
      Tclk2 => 2);

   --  RTC 32K clock input select
   type CHIPCTL_RTC32KCLKSEL_Field is
     (
      --  OSC32 clock output
      Osc32K,
      --  RTC_CLKIN
      Rtc_Clkin)
     with Size => 2;
   for CHIPCTL_RTC32KCLKSEL_Field use
     (Osc32K => 0,
      Rtc_Clkin => 1);

   --  Chip Control register
   type SIM_CHIPCTL_Register is record
      --  ADC interleave channel enable
      ADC_INTERLEAVE_EN : CHIPCTL_ADC_INTERLEAVE_EN_Field :=
                           NRF_SVD.SIM.Disabled;
      --  unspecified
      Reserved_2_3      : HAL.UInt2 := 16#0#;
      --  CLKOUT divider ratio
      CLKOUTDIV         : CHIPCTL_CLKOUTDIV_Field := NRF_SVD.SIM.Div1;
      --  CLKOUT Select
      CLKOUTSEL         : CHIPCTL_CLKOUTSEL_Field :=
                           Chipctl_Clkoutsel_Field_Reset;
      --  unspecified
      Reserved_8_12     : HAL.UInt5 := 16#0#;
      --  PDB back-to-back select
      PDB_BB_SEL        : CHIPCTL_PDB_BB_SEL_Field := NRF_SVD.SIM.Pdb0;
      --  unspecified
      Reserved_14_15    : HAL.UInt2 := 16#0#;
      --  PWT clock source select
      PWTCLKSEL         : CHIPCTL_PWTCLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  RTC 32K clock input select
      RTC32KCLKSEL      : CHIPCTL_RTC32KCLKSEL_Field := NRF_SVD.SIM.Osc32K;
      --  unspecified
      Reserved_20_31    : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CHIPCTL_Register use record
      ADC_INTERLEAVE_EN at 0 range 0 .. 1;
      Reserved_2_3      at 0 range 2 .. 3;
      CLKOUTDIV         at 0 range 4 .. 5;
      CLKOUTSEL         at 0 range 6 .. 7;
      Reserved_8_12     at 0 range 8 .. 12;
      PDB_BB_SEL        at 0 range 13 .. 13;
      Reserved_14_15    at 0 range 14 .. 15;
      PWTCLKSEL         at 0 range 16 .. 17;
      RTC32KCLKSEL      at 0 range 18 .. 19;
      Reserved_20_31    at 0 range 20 .. 31;
   end record;

   subtype SIM_FTMOPT0_FTM0FLTxSEL_Field is HAL.UInt3;

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

   --  FTM Option Register 0
   type SIM_FTMOPT0_Register is record
      --  FTM0 Fault x Select
      FTM0FLTxSEL    : SIM_FTMOPT0_FTM0FLTxSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_23  : HAL.UInt21 := 16#0#;
      --  FTM0 External Clock Pin Select
      FTM0CLKSEL     : FTMOPT0_FTM0CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  FTM1 External Clock Pin Select
      FTM1CLKSEL     : FTMOPT0_FTM1CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  FTM2 External Clock Pin Select
      FTM2CLKSEL     : FTMOPT0_FTM2CLKSEL_Field := NRF_SVD.SIM.Tclk0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FTMOPT0_Register use record
      FTM0FLTxSEL    at 0 range 0 .. 2;
      Reserved_3_23  at 0 range 3 .. 23;
      FTM0CLKSEL     at 0 range 24 .. 25;
      FTM1CLKSEL     at 0 range 26 .. 27;
      FTM2CLKSEL     at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
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
      --  disabled
      Disabled0,
      --  software pre-trigger 0
      Pretr0,
      --  software pre-trigger 1
      Pretr1,
      --  disabled
      Disabled1)
     with Size => 2;
   for ADCOPT_ADC0SWPRETRG_Field use
     (Disabled0 => 0,
      Pretr0 => 1,
      Pretr1 => 2,
      Disabled1 => 3);

   --  ADC0 pre-trigger source select
   type ADCOPT_ADC0PRETRGSEL_Field is
     (
      --  PDB output
      Pdb,
      --  TRGMUX output
      Trgmux,
      --  ADC0 software pre-trigger
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
      --  disabled
      Disabled0,
      --  software pre-trigger 0
      Pretr0,
      --  software pre-trigger 1
      Pretr1,
      --  disabled
      Disabled1)
     with Size => 2;
   for ADCOPT_ADC1SWPRETRG_Field use
     (Disabled0 => 0,
      Pretr0 => 1,
      Pretr1 => 2,
      Disabled1 => 3);

   --  ADC1 pre-trigger source select
   type ADCOPT_ADC1PRETRGSEL_Field is
     (
      --  PDB output
      Pdb,
      --  TRGMUX output
      Trgmux,
      --  ADC1 software pre-trigger
      Softwr)
     with Size => 2;
   for ADCOPT_ADC1PRETRGSEL_Field use
     (Pdb => 0,
      Trgmux => 1,
      Softwr => 2);

   --  ADC Options Register
   type SIM_ADCOPT_Register is record
      --  ADC0 trigger source select
      ADC0TRGSEL     : ADCOPT_ADC0TRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  ADC0 software pre-trigger sources
      ADC0SWPRETRG   : ADCOPT_ADC0SWPRETRG_Field := NRF_SVD.SIM.Disabled0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  ADC0 pre-trigger source select
      ADC0PRETRGSEL  : ADCOPT_ADC0PRETRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  ADC1 trigger source select
      ADC1TRGSEL     : ADCOPT_ADC1TRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  ADC1 software pre-trigger sources
      ADC1SWPRETRG   : ADCOPT_ADC1SWPRETRG_Field := NRF_SVD.SIM.Disabled0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  ADC1 pre-trigger source select
      ADC1PRETRGSEL  : ADCOPT_ADC1PRETRGSEL_Field := NRF_SVD.SIM.Pdb;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_ADCOPT_Register use record
      ADC0TRGSEL     at 0 range 0 .. 0;
      ADC0SWPRETRG   at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ADC0PRETRGSEL  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC1TRGSEL     at 0 range 8 .. 8;
      ADC1SWPRETRG   at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ADC1PRETRGSEL  at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
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

   --  FTM1 CH0 Select
   type FTMOPT1_FTM1CH0SEL_Field is
     (
      --  FTM1_CH0 input
      Ftm1Ch0,
      --  CMP0 output
      Cmp0,
      --  CMP1 output
      Cmp1)
     with Size => 2;
   for FTMOPT1_FTM1CH0SEL_Field use
     (Ftm1Ch0 => 0,
      Cmp0 => 1,
      Cmp1 => 2);

   --  FTM2 CH0 Select
   type FTMOPT1_FTM2CH0SEL_Field is
     (
      --  FTM2_CH0 input
      Ftm2Ch0,
      --  CMP0 output
      Cmp0,
      --  CMP1 output
      Cmp1)
     with Size => 2;
   for FTMOPT1_FTM2CH0SEL_Field use
     (Ftm2Ch0 => 0,
      Cmp0 => 1,
      Cmp1 => 2);

   --  FTM2 CH1 Select
   type FTMOPT1_FTM2CH1SEL_Field is
     (
      --  FTM2_CH1 input
      Ftm2_Ch1,
      --  exclusive OR of FTM2_CH0, FTM2_CH1, and FTM1_CH1
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

   --  FTM Option Register 1
   type SIM_FTMOPT1_Register is record
      --  FTM0 Sync Bit
      FTM0SYNCBIT    : FTMOPT1_FTM0SYNCBIT_Field := NRF_SVD.SIM.None;
      --  FTM1 Sync Bit
      FTM1SYNCBIT    : FTMOPT1_FTM1SYNCBIT_Field := NRF_SVD.SIM.None;
      --  FTM2 Sync Bit
      FTM2SYNCBIT    : FTMOPT1_FTM2SYNCBIT_Field := NRF_SVD.SIM.None;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  FTM1 CH0 Select
      FTM1CH0SEL     : FTMOPT1_FTM1CH0SEL_Field := NRF_SVD.SIM.Ftm1Ch0;
      --  FTM2 CH0 Select
      FTM2CH0SEL     : FTMOPT1_FTM2CH0SEL_Field := NRF_SVD.SIM.Ftm2Ch0;
      --  FTM2 CH1 Select
      FTM2CH1SEL     : FTMOPT1_FTM2CH1SEL_Field := NRF_SVD.SIM.Ftm2_Ch1;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  FTM0 channel modulation select with FTM1_CH1
      FTM0_OUTSEL    : FTMOPT1_FTM0_OUTSEL_Field := NRF_SVD.SIM.None;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_FTMOPT1_Register use record
      FTM0SYNCBIT    at 0 range 0 .. 0;
      FTM1SYNCBIT    at 0 range 1 .. 1;
      FTM2SYNCBIT    at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FTM1CH0SEL     at 0 range 4 .. 5;
      FTM2CH0SEL     at 0 range 6 .. 7;
      FTM2CH1SEL     at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FTM0_OUTSEL    at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
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
      --  16 KB
      Size16Kb,
      --  32 KB
      Size32Kb)
     with Size => 4;
   for SDID_RAMSIZE_Field use
     (Size16Kb => 5,
      Size32Kb => 6);

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
      --  Flash remains enabled during Doze mode
      Flash_En,
      --  Flash is disabled for the duration of Doze mode
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
      --  Reset value for the field
      Fcfg1_Pfsize_Field_Reset,
      --  128 KB of program flash memory, 4 KB protection region
      Size128K,
      --  256 KB of program flash memory, 8 KB protection region
      Size256K)
     with Size => 4;
   for FCFG1_PFSIZE_Field use
     (Fcfg1_Pfsize_Field_Reset => 0,
      Size128K => 7,
      Size256K => 9);

   --  FlexNVM size
   type FCFG1_NVMSIZE_Field is
     (
      --  0 KB of FlexNVM
      M0K,
      --  32 KB of FlexNVM
      M32K)
     with Size => 4;
   for FCFG1_NVMSIZE_Field use
     (M0K => 0,
      M32K => 3);

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
      PFSIZE         : FCFG1_PFSIZE_Field := Fcfg1_Pfsize_Field_Reset;
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

   subtype SIM_MISCTRL_DMA_INT_SEL_Field is HAL.UInt4;

   --  UART0 Open Drain Enable
   type MISCTRL_UART0ODE_Field is
     (
      --  Open drain is disabled on UART0
      Uart0Ode_0,
      --  Open drain is enabled on UART0
      Uart0Ode_1)
     with Size => 1;
   for MISCTRL_UART0ODE_Field use
     (Uart0Ode_0 => 0,
      Uart0Ode_1 => 1);

   --  UART1 Open Drain Enable
   type MISCTRL_UART1ODE_Field is
     (
      --  Open drain is disabled on UART1
      Uart1Ode_0,
      --  Open drain is enabled on UART1
      Uart1Ode_1)
     with Size => 1;
   for MISCTRL_UART1ODE_Field use
     (Uart1Ode_0 => 0,
      Uart1Ode_1 => 1);

   --  UART2 Open Drain Enable
   type MISCTRL_UART2ODE_Field is
     (
      --  Open drain is disabled on UART2
      Uart2Ode_0,
      --  Open drain is enabled on UART2
      Uart2Ode_1)
     with Size => 1;
   for MISCTRL_UART2ODE_Field use
     (Uart2Ode_0 => 0,
      Uart2Ode_1 => 1);

   --  Miscellaneous Control register
   type SIM_MISCTRL_Register is record
      --  Software Trigger bit to TRGMUX
      SW_TRG         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  DMA channel interrupt OR select
      DMA_INT_SEL    : SIM_MISCTRL_DMA_INT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  UART0 Open Drain Enable
      UART0ODE       : MISCTRL_UART0ODE_Field := NRF_SVD.SIM.Uart0Ode_0;
      --  UART1 Open Drain Enable
      UART1ODE       : MISCTRL_UART1ODE_Field := NRF_SVD.SIM.Uart1Ode_0;
      --  UART2 Open Drain Enable
      UART2ODE       : MISCTRL_UART2ODE_Field := NRF_SVD.SIM.Uart2Ode_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_MISCTRL_Register use record
      SW_TRG         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DMA_INT_SEL    at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      UART0ODE       at 0 range 16 .. 16;
      UART1ODE       at 0 range 17 .. 17;
      UART2ODE       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
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
      FCFG1   at 16#4C# range 0 .. 31;
      FCFG2   at 16#50# range 0 .. 31;
      UIDH    at 16#54# range 0 .. 31;
      UIDMH   at 16#58# range 0 .. 31;
      UIDML   at 16#5C# range 0 .. 31;
      UIDL    at 16#60# range 0 .. 31;
      MISCTRL at 16#6C# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => System'To_Address (16#40048000#);

end NRF_SVD.SIM;
