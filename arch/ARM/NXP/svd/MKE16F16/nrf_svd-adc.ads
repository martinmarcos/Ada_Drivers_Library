--  This spec has been automatically generated from MKE16F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Input channel select
   type SC1_ADCH_Field is
     (
      --  AD0 is selected as input.
      Adch_0,
      --  AD1 is selected as input.
      Adch_1,
      --  AD2 is selected as input.
      Adch_2,
      --  AD3 is selected as input.
      Adch_3,
      --  AD4 is selected as input.
      Adch_4,
      --  AD5 is selected as input.
      Adch_5,
      --  AD6 is selected as input.
      Adch_6,
      --  AD7 is selected as input.
      Adch_7,
      --  AD8 is selected as input.
      Adch_8,
      --  AD9 is selected as input.
      Adch_9,
      --  AD10 is selected as input.
      Adch_10,
      --  AD11 is selected as input.
      Adch_11,
      --  AD12 is selected as input.
      Adch_12,
      --  AD13 is selected as input.
      Adch_13,
      --  AD14 is selected as input.
      Adch_14,
      --  AD15 is selected as input.
      Adch_15,
      --  AD18 is selected as input.
      Adch_18,
      --  AD19 is selected as input.
      Adch_19,
      --  AD21 is selected as input.
      Adch_21,
      --  AD22 is selected as input.
      Adch_22,
      --  AD23 is selected as input.
      Adch_23,
      --  Temp Sensor
      Adch_26,
      --  Band Gap
      Adch_27,
      --  AD28 is selected as input.
      Adch_28,
      --  VREFSH is selected as input. Voltage reference selected is determined
      --  by SC2[REFSEL].
      Adch_29,
      --  VREFSL is selected as input. Voltage reference selected is determined
      --  by SC2[REFSEL].
      Adch_30,
      --  Module is disabled
      Adch_31)
     with Size => 5;
   for SC1_ADCH_Field use
     (Adch_0 => 0,
      Adch_1 => 1,
      Adch_2 => 2,
      Adch_3 => 3,
      Adch_4 => 4,
      Adch_5 => 5,
      Adch_6 => 6,
      Adch_7 => 7,
      Adch_8 => 8,
      Adch_9 => 9,
      Adch_10 => 10,
      Adch_11 => 11,
      Adch_12 => 12,
      Adch_13 => 13,
      Adch_14 => 14,
      Adch_15 => 15,
      Adch_18 => 18,
      Adch_19 => 19,
      Adch_21 => 21,
      Adch_22 => 22,
      Adch_23 => 23,
      Adch_26 => 26,
      Adch_27 => 27,
      Adch_28 => 28,
      Adch_29 => 29,
      Adch_30 => 30,
      Adch_31 => 31);

   --  Interrupt Enable
   type SC1_AIEN_Field is
     (
      --  Conversion complete interrupt is disabled.
      Aien_0,
      --  Conversion complete interrupt is enabled.
      Aien_1)
     with Size => 1;
   for SC1_AIEN_Field use
     (Aien_0 => 0,
      Aien_1 => 1);

   --  Conversion Complete Flag
   type SC1_COCO_Field is
     (
      --  Conversion is not completed.
      Coco_0,
      --  Conversion is completed.
      Coco_1)
     with Size => 1;
   for SC1_COCO_Field use
     (Coco_0 => 0,
      Coco_1 => 1);

   --  ADC Status and Control Register 1
   type ADC0_SC1_Register is record
      --  Input channel select
      ADCH          : SC1_ADCH_Field := NRF_SVD.ADC.Adch_31;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Interrupt Enable
      AIEN          : SC1_AIEN_Field := NRF_SVD.ADC.Aien_0;
      --  Read-only. Conversion Complete Flag
      COCO          : SC1_COCO_Field := NRF_SVD.ADC.Coco_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_SC1_Register use record
      ADCH          at 0 range 0 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      AIEN          at 0 range 6 .. 6;
      COCO          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC Status and Control Register 1
   type ADC0_SC1_Registers is array (0 .. 7) of ADC0_SC1_Register
     with Volatile;

   --  Input Clock Select
   type CFG1_ADICLK_Field is
     (
      --  Alternate clock 1 (ADC_ALTCLK1)
      Adiclk_0,
      --  Alternate clock 2 (ADC_ALTCLK2)
      Adiclk_1,
      --  Alternate clock 3 (ADC_ALTCLK3)
      Adiclk_2,
      --  Alternate clock 4 (ADC_ALTCLK4)
      Adiclk_3)
     with Size => 2;
   for CFG1_ADICLK_Field use
     (Adiclk_0 => 0,
      Adiclk_1 => 1,
      Adiclk_2 => 2,
      Adiclk_3 => 3);

   --  Conversion mode selection
   type CFG1_MODE_Field is
     (
      --  8-bit conversion.
      Mode_0,
      --  12-bit conversion.
      Mode_1,
      --  10-bit conversion.
      Mode_2)
     with Size => 2;
   for CFG1_MODE_Field use
     (Mode_0 => 0,
      Mode_1 => 1,
      Mode_2 => 2);

   --  Clock Divide Select
   type CFG1_ADIV_Field is
     (
      --  The divide ratio is 1 and the clock rate is input clock.
      Adiv_0,
      --  The divide ratio is 2 and the clock rate is (input clock)/2.
      Adiv_1,
      --  The divide ratio is 4 and the clock rate is (input clock)/4.
      Adiv_2,
      --  The divide ratio is 8 and the clock rate is (input clock)/8.
      Adiv_3)
     with Size => 2;
   for CFG1_ADIV_Field use
     (Adiv_0 => 0,
      Adiv_1 => 1,
      Adiv_2 => 2,
      Adiv_3 => 3);

   --  ADC Configuration Register 1
   type ADC0_CFG1_Register is record
      --  Input Clock Select
      ADICLK        : CFG1_ADICLK_Field := NRF_SVD.ADC.Adiclk_0;
      --  Conversion mode selection
      MODE          : CFG1_MODE_Field := NRF_SVD.ADC.Mode_0;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Clock Divide Select
      ADIV          : CFG1_ADIV_Field := NRF_SVD.ADC.Adiv_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CFG1_Register use record
      ADICLK        at 0 range 0 .. 1;
      MODE          at 0 range 2 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      ADIV          at 0 range 5 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ADC0_CFG2_SMPLTS_Field is HAL.UInt8;

   --  ADC Configuration Register 2
   type ADC0_CFG2_Register is record
      --  Sample Time Select
      SMPLTS        : ADC0_CFG2_SMPLTS_Field := 16#C#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CFG2_Register use record
      SMPLTS        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC0_R_D_Field is HAL.UInt12;

   --  ADC Data Result Registers
   type ADC0_R_Register is record
      --  Read-only. Data result
      D              : ADC0_R_D_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_R_Register use record
      D              at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  ADC Data Result Registers
   type ADC0_R_Registers is array (0 .. 7) of ADC0_R_Register
     with Volatile;

   subtype ADC0_CV_CV_Field is HAL.UInt16;

   --  Compare Value Registers
   type ADC0_CV_Register is record
      --  Compare Value.
      CV             : ADC0_CV_CV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CV_Register use record
      CV             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Compare Value Registers
   type ADC0_CV_Registers is array (0 .. 1) of ADC0_CV_Register
     with Volatile;

   --  Voltage Reference Selection
   type SC2_REFSEL_Field is
     (
      --  Default voltage reference pin pair, that is, external pins VREFH and
      --  VREFL
      Refsel_0,
      --  Alternate reference voltage, that is, VALTH. This voltage may be
      --  additional external pin or internal source depending on the MCU
      --  configuration. See the chip configuration information for details
      --  specific to this MCU.
      Refsel_1)
     with Size => 2;
   for SC2_REFSEL_Field use
     (Refsel_0 => 0,
      Refsel_1 => 1);

   --  DMA Enable
   type SC2_DMAEN_Field is
     (
      --  DMA is disabled.
      Dmaen_0,
      --  DMA is enabled and will assert the ADC DMA request during an ADC
      --  conversion complete event , which is indicated when any SC1n[COCO]
      --  flag is asserted.
      Dmaen_1)
     with Size => 1;
   for SC2_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  Compare Function Enable
   type SC2_ACFE_Field is
     (
      --  Compare function disabled.
      Acfe_0,
      --  Compare function enabled.
      Acfe_1)
     with Size => 1;
   for SC2_ACFE_Field use
     (Acfe_0 => 0,
      Acfe_1 => 1);

   --  Conversion Trigger Select
   type SC2_ADTRG_Field is
     (
      --  Software trigger selected.
      Adtrg_0,
      --  Hardware trigger selected.
      Adtrg_1)
     with Size => 1;
   for SC2_ADTRG_Field use
     (Adtrg_0 => 0,
      Adtrg_1 => 1);

   --  Conversion Active
   type SC2_ADACT_Field is
     (
      --  Conversion not in progress.
      Adact_0,
      --  Conversion in progress.
      Adact_1)
     with Size => 1;
   for SC2_ADACT_Field use
     (Adact_0 => 0,
      Adact_1 => 1);

   --  Status and Control Register 2
   type ADC0_SC2_Register is record
      --  Voltage Reference Selection
      REFSEL        : SC2_REFSEL_Field := NRF_SVD.ADC.Refsel_0;
      --  DMA Enable
      DMAEN         : SC2_DMAEN_Field := NRF_SVD.ADC.Dmaen_0;
      --  Compare Function Range Enable
      ACREN         : Boolean := False;
      --  Compare Function Greater Than Enable
      ACFGT         : Boolean := False;
      --  Compare Function Enable
      ACFE          : SC2_ACFE_Field := NRF_SVD.ADC.Acfe_0;
      --  Conversion Trigger Select
      ADTRG         : SC2_ADTRG_Field := NRF_SVD.ADC.Adtrg_0;
      --  Read-only. Conversion Active
      ADACT         : SC2_ADACT_Field := NRF_SVD.ADC.Adact_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_SC2_Register use record
      REFSEL        at 0 range 0 .. 1;
      DMAEN         at 0 range 2 .. 2;
      ACREN         at 0 range 3 .. 3;
      ACFGT         at 0 range 4 .. 4;
      ACFE          at 0 range 5 .. 5;
      ADTRG         at 0 range 6 .. 6;
      ADACT         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Hardware Average Select
   type SC3_AVGS_Field is
     (
      --  4 samples averaged.
      Avgs_0,
      --  8 samples averaged.
      Avgs_1,
      --  16 samples averaged.
      Avgs_2,
      --  32 samples averaged.
      Avgs_3)
     with Size => 2;
   for SC3_AVGS_Field use
     (Avgs_0 => 0,
      Avgs_1 => 1,
      Avgs_2 => 2,
      Avgs_3 => 3);

   --  Hardware Average Enable
   type SC3_AVGE_Field is
     (
      --  Hardware average function disabled.
      Avge_0,
      --  Hardware average function enabled.
      Avge_1)
     with Size => 1;
   for SC3_AVGE_Field use
     (Avge_0 => 0,
      Avge_1 => 1);

   --  Continuous Conversion Enable
   type SC3_ADCO_Field is
     (
      --  One conversion will be performed (or one set of conversions, if AVGE
      --  is set) after a conversion is initiated.
      Adco_0,
      --  Continuous conversions will be performed (or continuous sets of
      --  conversions, if AVGE is set) after a conversion is initiated.
      Adco_1)
     with Size => 1;
   for SC3_ADCO_Field use
     (Adco_0 => 0,
      Adco_1 => 1);

   --  Status and Control Register 3
   type ADC0_SC3_Register is record
      --  Hardware Average Select
      AVGS          : SC3_AVGS_Field := NRF_SVD.ADC.Avgs_0;
      --  Hardware Average Enable
      AVGE          : SC3_AVGE_Field := NRF_SVD.ADC.Avge_0;
      --  Continuous Conversion Enable
      ADCO          : SC3_ADCO_Field := NRF_SVD.ADC.Adco_0;
      --  unspecified
      Reserved_4_6  : HAL.UInt3 := 16#0#;
      --  Calibration
      CAL           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_SC3_Register use record
      AVGS          at 0 range 0 .. 1;
      AVGE          at 0 range 2 .. 2;
      ADCO          at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      CAL           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC0_BASE_OFS_BA_OFS_Field is HAL.UInt8;

   --  BASE Offset Register
   type ADC0_BASE_OFS_Register is record
      --  Base Offset Error Correction Value
      BA_OFS        : ADC0_BASE_OFS_BA_OFS_Field := 16#40#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_BASE_OFS_Register use record
      BA_OFS        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC0_OFS_OFS_Field is HAL.UInt16;

   --  ADC Offset Correction Register
   type ADC0_OFS_Register is record
      --  Offset Error Correction Value
      OFS            : ADC0_OFS_OFS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_OFS_Register use record
      OFS            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC0_USR_OFS_USR_OFS_Field is HAL.UInt8;

   --  USER Offset Correction Register
   type ADC0_USR_OFS_Register is record
      --  USER Offset Error Correction Value
      USR_OFS       : ADC0_USR_OFS_USR_OFS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_USR_OFS_Register use record
      USR_OFS       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC0_XOFS_XOFS_Field is HAL.UInt6;

   --  ADC X Offset Correction Register
   type ADC0_XOFS_Register is record
      --  X offset error correction value
      XOFS          : ADC0_XOFS_XOFS_Field := 16#30#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_XOFS_Register use record
      XOFS          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ADC0_YOFS_YOFS_Field is HAL.UInt8;

   --  ADC Y Offset Correction Register
   type ADC0_YOFS_Register is record
      --  Y offset error correction value
      YOFS          : ADC0_YOFS_YOFS_Field := 16#37#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_YOFS_Register use record
      YOFS          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC0_G_G_Field is HAL.UInt11;

   --  ADC Gain Register
   type ADC0_G_Register is record
      --  Gain error adjustment factor for the overall conversion
      G              : ADC0_G_G_Field := 16#2F0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_G_Register use record
      G              at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype ADC0_UG_UG_Field is HAL.UInt10;

   --  ADC User Gain Register
   type ADC0_UG_Register is record
      --  User gain error correction value
      UG             : ADC0_UG_UG_Field := 16#4#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_UG_Register use record
      UG             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ADC0_CLPS_CLPS_Field is HAL.UInt7;

   --  ADC General Calibration Value Register S
   type ADC0_CLPS_Register is record
      --  Calibration Value
      CLPS          : ADC0_CLPS_CLPS_Field := 16#2E#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLPS_Register use record
      CLPS          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ADC0_CLP3_CLP3_Field is HAL.UInt10;

   --  ADC Plus-Side General Calibration Value Register 3
   type ADC0_CLP3_Register is record
      --  Calibration Value
      CLP3           : ADC0_CLP3_CLP3_Field := 16#180#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP3_Register use record
      CLP3           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ADC0_CLP2_CLP2_Field is HAL.UInt10;

   --  ADC Plus-Side General Calibration Value Register 2
   type ADC0_CLP2_Register is record
      --  Calibration Value
      CLP2           : ADC0_CLP2_CLP2_Field := 16#B8#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP2_Register use record
      CLP2           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ADC0_CLP1_CLP1_Field is HAL.UInt9;

   --  ADC Plus-Side General Calibration Value Register 1
   type ADC0_CLP1_Register is record
      --  Calibration Value
      CLP1          : ADC0_CLP1_CLP1_Field := 16#5C#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP1_Register use record
      CLP1          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ADC0_CLP0_CLP0_Field is HAL.UInt8;

   --  ADC Plus-Side General Calibration Value Register 0
   type ADC0_CLP0_Register is record
      --  Calibration Value
      CLP0          : ADC0_CLP0_CLP0_Field := 16#2E#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP0_Register use record
      CLP0          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC0_CLPX_CLPX_Field is HAL.UInt7;

   --  ADC Plus-Side General Calibration Value Register X
   type ADC0_CLPX_Register is record
      --  Calibration Value
      CLPX          : ADC0_CLPX_CLPX_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLPX_Register use record
      CLPX          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ADC0_CLP9_CLP9_Field is HAL.UInt7;

   --  ADC Plus-Side General Calibration Value Register 9
   type ADC0_CLP9_Register is record
      --  Calibration Value
      CLP9          : ADC0_CLP9_CLP9_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP9_Register use record
      CLP9          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ADC0_CLPS_OFS_CLPS_OFS_Field is HAL.UInt4;

   --  ADC General Calibration Offset Value Register S
   type ADC0_CLPS_OFS_Register is record
      --  CLPS Offset
      CLPS_OFS      : ADC0_CLPS_OFS_CLPS_OFS_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLPS_OFS_Register use record
      CLPS_OFS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADC0_CLP3_OFS_CLP3_OFS_Field is HAL.UInt4;

   --  ADC Plus-Side General Calibration Offset Value Register 3
   type ADC0_CLP3_OFS_Register is record
      --  CLP3 Offset
      CLP3_OFS      : ADC0_CLP3_OFS_CLP3_OFS_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP3_OFS_Register use record
      CLP3_OFS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADC0_CLP2_OFS_CLP2_OFS_Field is HAL.UInt4;

   --  ADC Plus-Side General Calibration Offset Value Register 2
   type ADC0_CLP2_OFS_Register is record
      --  CLP2 Offset
      CLP2_OFS      : ADC0_CLP2_OFS_CLP2_OFS_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP2_OFS_Register use record
      CLP2_OFS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADC0_CLP1_OFS_CLP1_OFS_Field is HAL.UInt4;

   --  ADC Plus-Side General Calibration Offset Value Register 1
   type ADC0_CLP1_OFS_Register is record
      --  CLP1 Offset
      CLP1_OFS      : ADC0_CLP1_OFS_CLP1_OFS_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP1_OFS_Register use record
      CLP1_OFS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADC0_CLP0_OFS_CLP0_OFS_Field is HAL.UInt4;

   --  ADC Plus-Side General Calibration Offset Value Register 0
   type ADC0_CLP0_OFS_Register is record
      --  CLP0 Offset
      CLP0_OFS      : ADC0_CLP0_OFS_CLP0_OFS_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP0_OFS_Register use record
      CLP0_OFS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADC0_CLPX_OFS_CLPX_OFS_Field is HAL.UInt12;

   --  ADC Plus-Side General Calibration Offset Value Register X
   type ADC0_CLPX_OFS_Register is record
      --  CLPX Offset
      CLPX_OFS       : ADC0_CLPX_OFS_CLPX_OFS_Field := 16#440#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLPX_OFS_Register use record
      CLPX_OFS       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADC0_CLP9_OFS_CLP9_OFS_Field is HAL.UInt12;

   --  ADC Plus-Side General Calibration Offset Value Register 9
   type ADC0_CLP9_OFS_Register is record
      --  CLP9 Offset
      CLP9_OFS       : ADC0_CLP9_OFS_CLP9_OFS_Field := 16#240#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLP9_OFS_Register use record
      CLP9_OFS       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter
   type ADC_Peripheral is record
      --  ADC Status and Control Register 1
      SC1      : aliased ADC0_SC1_Registers;
      --  ADC Configuration Register 1
      CFG1     : aliased ADC0_CFG1_Register;
      --  ADC Configuration Register 2
      CFG2     : aliased ADC0_CFG2_Register;
      --  ADC Data Result Registers
      R        : aliased ADC0_R_Registers;
      --  Compare Value Registers
      CV       : aliased ADC0_CV_Registers;
      --  Status and Control Register 2
      SC2      : aliased ADC0_SC2_Register;
      --  Status and Control Register 3
      SC3      : aliased ADC0_SC3_Register;
      --  BASE Offset Register
      BASE_OFS : aliased ADC0_BASE_OFS_Register;
      --  ADC Offset Correction Register
      OFS      : aliased ADC0_OFS_Register;
      --  USER Offset Correction Register
      USR_OFS  : aliased ADC0_USR_OFS_Register;
      --  ADC X Offset Correction Register
      XOFS     : aliased ADC0_XOFS_Register;
      --  ADC Y Offset Correction Register
      YOFS     : aliased ADC0_YOFS_Register;
      --  ADC Gain Register
      G        : aliased ADC0_G_Register;
      --  ADC User Gain Register
      UG       : aliased ADC0_UG_Register;
      --  ADC General Calibration Value Register S
      CLPS     : aliased ADC0_CLPS_Register;
      --  ADC Plus-Side General Calibration Value Register 3
      CLP3     : aliased ADC0_CLP3_Register;
      --  ADC Plus-Side General Calibration Value Register 2
      CLP2     : aliased ADC0_CLP2_Register;
      --  ADC Plus-Side General Calibration Value Register 1
      CLP1     : aliased ADC0_CLP1_Register;
      --  ADC Plus-Side General Calibration Value Register 0
      CLP0     : aliased ADC0_CLP0_Register;
      --  ADC Plus-Side General Calibration Value Register X
      CLPX     : aliased ADC0_CLPX_Register;
      --  ADC Plus-Side General Calibration Value Register 9
      CLP9     : aliased ADC0_CLP9_Register;
      --  ADC General Calibration Offset Value Register S
      CLPS_OFS : aliased ADC0_CLPS_OFS_Register;
      --  ADC Plus-Side General Calibration Offset Value Register 3
      CLP3_OFS : aliased ADC0_CLP3_OFS_Register;
      --  ADC Plus-Side General Calibration Offset Value Register 2
      CLP2_OFS : aliased ADC0_CLP2_OFS_Register;
      --  ADC Plus-Side General Calibration Offset Value Register 1
      CLP1_OFS : aliased ADC0_CLP1_OFS_Register;
      --  ADC Plus-Side General Calibration Offset Value Register 0
      CLP0_OFS : aliased ADC0_CLP0_OFS_Register;
      --  ADC Plus-Side General Calibration Offset Value Register X
      CLPX_OFS : aliased ADC0_CLPX_OFS_Register;
      --  ADC Plus-Side General Calibration Offset Value Register 9
      CLP9_OFS : aliased ADC0_CLP9_OFS_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      SC1      at 16#0# range 0 .. 255;
      CFG1     at 16#40# range 0 .. 31;
      CFG2     at 16#44# range 0 .. 31;
      R        at 16#48# range 0 .. 255;
      CV       at 16#88# range 0 .. 63;
      SC2      at 16#90# range 0 .. 31;
      SC3      at 16#94# range 0 .. 31;
      BASE_OFS at 16#98# range 0 .. 31;
      OFS      at 16#9C# range 0 .. 31;
      USR_OFS  at 16#A0# range 0 .. 31;
      XOFS     at 16#A4# range 0 .. 31;
      YOFS     at 16#A8# range 0 .. 31;
      G        at 16#AC# range 0 .. 31;
      UG       at 16#B0# range 0 .. 31;
      CLPS     at 16#B4# range 0 .. 31;
      CLP3     at 16#B8# range 0 .. 31;
      CLP2     at 16#BC# range 0 .. 31;
      CLP1     at 16#C0# range 0 .. 31;
      CLP0     at 16#C4# range 0 .. 31;
      CLPX     at 16#C8# range 0 .. 31;
      CLP9     at 16#CC# range 0 .. 31;
      CLPS_OFS at 16#D0# range 0 .. 31;
      CLP3_OFS at 16#D4# range 0 .. 31;
      CLP2_OFS at 16#D8# range 0 .. 31;
      CLP1_OFS at 16#DC# range 0 .. 31;
      CLP0_OFS at 16#E0# range 0 .. 31;
      CLPX_OFS at 16#E4# range 0 .. 31;
      CLP9_OFS at 16#E8# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC0_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4003B000#);

   --  Analog-to-Digital Converter
   ADC1_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#40027000#);

   --  Analog-to-Digital Converter
   ADC2_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#4003C000#);

end NRF_SVD.ADC;
