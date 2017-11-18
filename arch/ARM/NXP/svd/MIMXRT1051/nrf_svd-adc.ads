--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

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

   --  Input Channel Select
   type HC0_ADCH_Field is
     (
      --  External channel selection from ADC_ETC
      Adch_16,
      --  VREFSH = internal channel, for ADC self-test, hard connected to VRH
      --  internally
      Adch_25,
      --  Conversion Disabled. Hardware Triggers will not initiate any
      --  conversion.
      Adch_31)
     with Size => 5;
   for HC0_ADCH_Field use
     (Adch_16 => 16,
      Adch_25 => 25,
      Adch_31 => 31);

   --  Conversion Complete Interrupt Enable/Disable Control
   type HC0_AIEN_Field is
     (
      --  Conversion complete interrupt disabled
      Aien_0,
      --  Conversion complete interrupt enabled
      Aien_1)
     with Size => 1;
   for HC0_AIEN_Field use
     (Aien_0 => 0,
      Aien_1 => 1);

   --  Control register for hardware triggers
   type ADC1_HC0_Register is record
      --  Input Channel Select
      ADCH          : HC0_ADCH_Field := NRF_SVD.ADC.Adch_31;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  Conversion Complete Interrupt Enable/Disable Control
      AIEN          : HC0_AIEN_Field := NRF_SVD.ADC.Aien_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_HC0_Register use record
      ADCH          at 0 range 0 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      AIEN          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Input Channel Select
   type HC_ADCH_Field is
     (
      --  External channel selection from ADC_ETC
      Adch_16,
      --  VREFSH = internal channel, for ADC self-test, hard connected to VRH
      --  internally
      Adch_25,
      --  Conversion Disabled. Hardware Triggers will not initiate any
      --  conversion.
      Adch_31)
     with Size => 5;
   for HC_ADCH_Field use
     (Adch_16 => 16,
      Adch_25 => 25,
      Adch_31 => 31);

   --  Conversion Complete Interrupt Enable/Disable Control
   type HC_AIEN_Field is
     (
      --  Conversion complete interrupt disabled
      Aien_0,
      --  Conversion complete interrupt enabled
      Aien_1)
     with Size => 1;
   for HC_AIEN_Field use
     (Aien_0 => 0,
      Aien_1 => 1);

   --  Control register for hardware triggers
   type ADC1_HC_Register is record
      --  Input Channel Select
      ADCH          : HC_ADCH_Field := NRF_SVD.ADC.Adch_31;
      --  unspecified
      Reserved_5_6  : HAL.UInt2 := 16#0#;
      --  Conversion Complete Interrupt Enable/Disable Control
      AIEN          : HC_AIEN_Field := NRF_SVD.ADC.Aien_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_HC_Register use record
      ADCH          at 0 range 0 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      AIEN          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Control register for hardware triggers
   type ADC1_HC_Registers is array (0 .. 6) of ADC1_HC_Register
     with Volatile;

   --  Status register for HW triggers
   type ADC1_HS_Register is record
      --  Read-only. Conversion Complete Flag
      COCO0         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_HS_Register use record
      COCO0         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ADC1_R0_CDATA_Field is HAL.UInt12;

   --  Data result register for HW triggers
   type ADC1_R0_Register is record
      --  Read-only. Data (result of an ADC conversion)
      CDATA          : ADC1_R0_CDATA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_R0_Register use record
      CDATA          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADC1_R_CDATA_Field is HAL.UInt12;

   --  Data result register for HW triggers
   type ADC1_R_Register is record
      --  Read-only. Data (result of an ADC conversion)
      CDATA          : ADC1_R_CDATA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_R_Register use record
      CDATA          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Data result register for HW triggers
   type ADC1_R_Registers is array (0 .. 6) of ADC1_R_Register
     with Volatile;

   --  Input Clock Select
   type CFG_ADICLK_Field is
     (
      --  IPG clock
      Adiclk_0,
      --  IPG clock divided by 2
      Adiclk_1,
      --  Asynchronous clock (ADACK)
      Adiclk_3)
     with Size => 2;
   for CFG_ADICLK_Field use
     (Adiclk_0 => 0,
      Adiclk_1 => 1,
      Adiclk_3 => 3);

   --  Conversion Mode Selection
   type CFG_MODE_Field is
     (
      --  8-bit conversion
      Mode_0,
      --  10-bit conversion
      Mode_1,
      --  12-bit conversion
      Mode_2)
     with Size => 2;
   for CFG_MODE_Field use
     (Mode_0 => 0,
      Mode_1 => 1,
      Mode_2 => 2);

   --  Long Sample Time Configuration
   type CFG_ADLSMP_Field is
     (
      --  Short sample mode.
      Adlsmp_0,
      --  Long sample mode.
      Adlsmp_1)
     with Size => 1;
   for CFG_ADLSMP_Field use
     (Adlsmp_0 => 0,
      Adlsmp_1 => 1);

   --  Clock Divide Select
   type CFG_ADIV_Field is
     (
      --  Input clock
      Adiv_0,
      --  Input clock / 2
      Adiv_1,
      --  Input clock / 4
      Adiv_2,
      --  Input clock / 8
      Adiv_3)
     with Size => 2;
   for CFG_ADIV_Field use
     (Adiv_0 => 0,
      Adiv_1 => 1,
      Adiv_2 => 2,
      Adiv_3 => 3);

   --  Low-Power Configuration
   type CFG_ADLPC_Field is
     (
      --  ADC hard block not in low power mode.
      Adlpc_0,
      --  ADC hard block in low power mode.
      Adlpc_1)
     with Size => 1;
   for CFG_ADLPC_Field use
     (Adlpc_0 => 0,
      Adlpc_1 => 1);

   --  Defines the sample time duration
   type CFG_ADSTS_Field is
     (
      --  Sample period (ADC clocks) = 2 if ADLSMP=0b Sample period (ADC
      --  clocks) = 12 if ADLSMP=1b
      Adsts_0,
      --  Sample period (ADC clocks) = 4 if ADLSMP=0b Sample period (ADC
      --  clocks) = 16 if ADLSMP=1b
      Adsts_1,
      --  Sample period (ADC clocks) = 6 if ADLSMP=0b Sample period (ADC
      --  clocks) = 20 if ADLSMP=1b
      Adsts_2,
      --  Sample period (ADC clocks) = 8 if ADLSMP=0b Sample period (ADC
      --  clocks) = 24 if ADLSMP=1b
      Adsts_3)
     with Size => 2;
   for CFG_ADSTS_Field use
     (Adsts_0 => 0,
      Adsts_1 => 1,
      Adsts_2 => 2,
      Adsts_3 => 3);

   --  High Speed Configuration
   type CFG_ADHSC_Field is
     (
      --  Normal conversion selected.
      Adhsc_0,
      --  High speed conversion selected.
      Adhsc_1)
     with Size => 1;
   for CFG_ADHSC_Field use
     (Adhsc_0 => 0,
      Adhsc_1 => 1);

   --  Voltage Reference Selection
   type CFG_REFSEL_Field is
     (
      --  Selects VREFH/VREFL as reference voltage.
      Refsel_0)
     with Size => 2;
   for CFG_REFSEL_Field use
     (Refsel_0 => 0);

   --  Conversion Trigger Select
   type CFG_ADTRG_Field is
     (
      --  Software trigger selected
      Adtrg_0,
      --  Hardware trigger selected
      Adtrg_1)
     with Size => 1;
   for CFG_ADTRG_Field use
     (Adtrg_0 => 0,
      Adtrg_1 => 1);

   --  Hardware Average select
   type CFG_AVGS_Field is
     (
      --  4 samples averaged
      Avgs_0,
      --  8 samples averaged
      Avgs_1,
      --  16 samples averaged
      Avgs_2,
      --  32 samples averaged
      Avgs_3)
     with Size => 2;
   for CFG_AVGS_Field use
     (Avgs_0 => 0,
      Avgs_1 => 1,
      Avgs_2 => 2,
      Avgs_3 => 3);

   --  Data Overwrite Enable
   type CFG_OVWREN_Field is
     (
      --  Disable the overwriting. Existing Data in Data result register will
      --  not be overwritten by subsequent converted data.
      Ovwren_0,
      --  Enable the overwriting.
      Ovwren_1)
     with Size => 1;
   for CFG_OVWREN_Field use
     (Ovwren_0 => 0,
      Ovwren_1 => 1);

   --  Configuration register
   type ADC1_CFG_Register is record
      --  Input Clock Select
      ADICLK         : CFG_ADICLK_Field := NRF_SVD.ADC.Adiclk_0;
      --  Conversion Mode Selection
      MODE           : CFG_MODE_Field := NRF_SVD.ADC.Mode_0;
      --  Long Sample Time Configuration
      ADLSMP         : CFG_ADLSMP_Field := NRF_SVD.ADC.Adlsmp_0;
      --  Clock Divide Select
      ADIV           : CFG_ADIV_Field := NRF_SVD.ADC.Adiv_0;
      --  Low-Power Configuration
      ADLPC          : CFG_ADLPC_Field := NRF_SVD.ADC.Adlpc_0;
      --  Defines the sample time duration
      ADSTS          : CFG_ADSTS_Field := NRF_SVD.ADC.Adsts_2;
      --  High Speed Configuration
      ADHSC          : CFG_ADHSC_Field := NRF_SVD.ADC.Adhsc_0;
      --  Voltage Reference Selection
      REFSEL         : CFG_REFSEL_Field := NRF_SVD.ADC.Refsel_0;
      --  Conversion Trigger Select
      ADTRG          : CFG_ADTRG_Field := NRF_SVD.ADC.Adtrg_0;
      --  Hardware Average select
      AVGS           : CFG_AVGS_Field := NRF_SVD.ADC.Avgs_0;
      --  Data Overwrite Enable
      OVWREN         : CFG_OVWREN_Field := NRF_SVD.ADC.Ovwren_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_CFG_Register use record
      ADICLK         at 0 range 0 .. 1;
      MODE           at 0 range 2 .. 3;
      ADLSMP         at 0 range 4 .. 4;
      ADIV           at 0 range 5 .. 6;
      ADLPC          at 0 range 7 .. 7;
      ADSTS          at 0 range 8 .. 9;
      ADHSC          at 0 range 10 .. 10;
      REFSEL         at 0 range 11 .. 12;
      ADTRG          at 0 range 13 .. 13;
      AVGS           at 0 range 14 .. 15;
      OVWREN         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Asynchronous clock output enable
   type GC_ADACKEN_Field is
     (
      --  Asynchronous clock output disabled; Asynchronous clock only enabled
      --  if selected by ADICLK and a conversion is active.
      Adacken_0,
      --  Asynchronous clock and clock output enabled regardless of the state
      --  of the ADC
      Adacken_1)
     with Size => 1;
   for GC_ADACKEN_Field use
     (Adacken_0 => 0,
      Adacken_1 => 1);

   --  DMA Enable
   type GC_DMAEN_Field is
     (
      --  DMA disabled (default)
      Dmaen_0,
      --  DMA enabled
      Dmaen_1)
     with Size => 1;
   for GC_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  Compare Function Range Enable
   type GC_ACREN_Field is
     (
      --  Range function disabled. Only the compare value 1 of ADC_CV register
      --  (CV1) is compared.
      Acren_0,
      --  Range function enabled. Both compare values of ADC_CV registers (CV1
      --  and CV2) are compared.
      Acren_1)
     with Size => 1;
   for GC_ACREN_Field use
     (Acren_0 => 0,
      Acren_1 => 1);

   --  Compare Function Greater Than Enable
   type GC_ACFGT_Field is
     (
      --  Configures "Less Than Threshold, Outside Range Not Inclusive and
      --  Inside Range Not Inclusive" functionality based on the values placed
      --  in the ADC_CV register.
      Acfgt_0,
      --  Configures "Greater Than Or Equal To Threshold, Outside Range
      --  Inclusive and Inside Range Inclusive" functionality based on the
      --  values placed in the ADC_CV registers.
      Acfgt_1)
     with Size => 1;
   for GC_ACFGT_Field use
     (Acfgt_0 => 0,
      Acfgt_1 => 1);

   --  Compare Function Enable
   type GC_ACFE_Field is
     (
      --  Compare function disabled
      Acfe_0,
      --  Compare function enabled
      Acfe_1)
     with Size => 1;
   for GC_ACFE_Field use
     (Acfe_0 => 0,
      Acfe_1 => 1);

   --  Hardware average enable
   type GC_AVGE_Field is
     (
      --  Hardware average function disabled
      Avge_0,
      --  Hardware average function enabled
      Avge_1)
     with Size => 1;
   for GC_AVGE_Field use
     (Avge_0 => 0,
      Avge_1 => 1);

   --  Continuous Conversion Enable
   type GC_ADCO_Field is
     (
      --  One conversion or one set of conversions if the hardware average
      --  function is enabled (AVGE=1) after initiating a conversion.
      Adco_0,
      --  Continuous conversions or sets of conversions if the hardware average
      --  function is enabled (AVGE=1) after initiating a conversion.
      Adco_1)
     with Size => 1;
   for GC_ADCO_Field use
     (Adco_0 => 0,
      Adco_1 => 1);

   --  General control register
   type ADC1_GC_Register is record
      --  Asynchronous clock output enable
      ADACKEN       : GC_ADACKEN_Field := NRF_SVD.ADC.Adacken_0;
      --  DMA Enable
      DMAEN         : GC_DMAEN_Field := NRF_SVD.ADC.Dmaen_0;
      --  Compare Function Range Enable
      ACREN         : GC_ACREN_Field := NRF_SVD.ADC.Acren_0;
      --  Compare Function Greater Than Enable
      ACFGT         : GC_ACFGT_Field := NRF_SVD.ADC.Acfgt_0;
      --  Compare Function Enable
      ACFE          : GC_ACFE_Field := NRF_SVD.ADC.Acfe_0;
      --  Hardware average enable
      AVGE          : GC_AVGE_Field := NRF_SVD.ADC.Avge_0;
      --  Continuous Conversion Enable
      ADCO          : GC_ADCO_Field := NRF_SVD.ADC.Adco_0;
      --  Calibration
      CAL           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_GC_Register use record
      ADACKEN       at 0 range 0 .. 0;
      DMAEN         at 0 range 1 .. 1;
      ACREN         at 0 range 2 .. 2;
      ACFGT         at 0 range 3 .. 3;
      ACFE          at 0 range 4 .. 4;
      AVGE          at 0 range 5 .. 5;
      ADCO          at 0 range 6 .. 6;
      CAL           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Conversion Active
   type GS_ADACT_Field is
     (
      --  Conversion not in progress.
      Adact_0,
      --  Conversion in progress.
      Adact_1)
     with Size => 1;
   for GS_ADACT_Field use
     (Adact_0 => 0,
      Adact_1 => 1);

   --  Calibration Failed Flag
   type GS_CALF_Field is
     (
      --  Calibration completed normally.
      Calf_0,
      --  Calibration failed. ADC accuracy specifications are not guaranteed.
      Calf_1)
     with Size => 1;
   for GS_CALF_Field use
     (Calf_0 => 0,
      Calf_1 => 1);

   --  Asynchronous wakeup interrupt status
   type GS_AWKST_Field is
     (
      --  No asynchronous interrupt.
      Awkst_0,
      --  Asynchronous wake up interrupt occurred in stop mode.
      Awkst_1)
     with Size => 1;
   for GS_AWKST_Field use
     (Awkst_0 => 0,
      Awkst_1 => 1);

   --  General status register
   type ADC1_GS_Register is record
      --  Read-only. Conversion Active
      ADACT         : GS_ADACT_Field := NRF_SVD.ADC.Adact_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Calibration Failed Flag
      CALF          : GS_CALF_Field := NRF_SVD.ADC.Calf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Asynchronous wakeup interrupt status
      AWKST         : GS_AWKST_Field := NRF_SVD.ADC.Awkst_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_GS_Register use record
      ADACT         at 0 range 0 .. 0;
      CALF          at 0 range 1 .. 1;
      AWKST         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ADC1_CV_CV1_Field is HAL.UInt12;
   subtype ADC1_CV_CV2_Field is HAL.UInt12;

   --  Compare value register
   type ADC1_CV_Register is record
      --  Compare Value 1
      CV1            : ADC1_CV_CV1_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Compare Value 2
      CV2            : ADC1_CV_CV2_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_CV_Register use record
      CV1            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      CV2            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ADC1_OFS_OFS_Field is HAL.UInt12;

   --  Sign bit
   type OFS_SIGN_Field is
     (
      --  The offset value is added with the raw result
      Sign_0,
      --  The offset value is subtracted from the raw converted value
      Sign_1)
     with Size => 1;
   for OFS_SIGN_Field use
     (Sign_0 => 0,
      Sign_1 => 1);

   --  Offset correction value register
   type ADC1_OFS_Register is record
      --  Offset value
      OFS            : ADC1_OFS_OFS_Field := 16#0#;
      --  Sign bit
      SIGN           : OFS_SIGN_Field := NRF_SVD.ADC.Sign_0;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_OFS_Register use record
      OFS            at 0 range 0 .. 11;
      SIGN           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype ADC1_CAL_CAL_CODE_Field is HAL.UInt4;

   --  Calibration value register
   type ADC1_CAL_Register is record
      --  Calibration Result Value
      CAL_CODE      : ADC1_CAL_CAL_CODE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1_CAL_Register use record
      CAL_CODE      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter
   type ADC_Peripheral is record
      --  Control register for hardware triggers
      HC0 : aliased ADC1_HC0_Register;
      --  Control register for hardware triggers
      HC  : aliased ADC1_HC_Registers;
      --  Status register for HW triggers
      HS  : aliased ADC1_HS_Register;
      --  Data result register for HW triggers
      R0  : aliased ADC1_R0_Register;
      --  Data result register for HW triggers
      R   : aliased ADC1_R_Registers;
      --  Configuration register
      CFG : aliased ADC1_CFG_Register;
      --  General control register
      GC  : aliased ADC1_GC_Register;
      --  General status register
      GS  : aliased ADC1_GS_Register;
      --  Compare value register
      CV  : aliased ADC1_CV_Register;
      --  Offset correction value register
      OFS : aliased ADC1_OFS_Register;
      --  Calibration value register
      CAL : aliased ADC1_CAL_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      HC0 at 16#0# range 0 .. 31;
      HC  at 16#4# range 0 .. 223;
      HS  at 16#20# range 0 .. 31;
      R0  at 16#24# range 0 .. 31;
      R   at 16#28# range 0 .. 223;
      CFG at 16#44# range 0 .. 31;
      GC  at 16#48# range 0 .. 31;
      GS  at 16#4C# range 0 .. 31;
      CV  at 16#50# range 0 .. 31;
      OFS at 16#54# range 0 .. 31;
      CAL at 16#58# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC1_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#400C4000#);

   --  Analog-to-Digital Converter
   ADC2_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#400C8000#);

end NRF_SVD.ADC;
