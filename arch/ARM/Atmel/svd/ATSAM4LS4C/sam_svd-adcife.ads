--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAM4LS4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ADCIFE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ADCIFE_CR_Register is record
      --  Write-only. Software reset
      SWRST          : Boolean := False;
      --  Write-only. Internal timer stop bit
      TSTOP          : Boolean := False;
      --  Write-only. Internal timer start bit
      TSTART         : Boolean := False;
      --  Write-only. Sequencer trigger
      STRIG          : Boolean := False;
      --  Write-only. Reference buffer enable
      REFBUFEN       : Boolean := False;
      --  Write-only. Reference buffer disable
      REFBUFDIS      : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. ADCIFD enable
      EN             : Boolean := False;
      --  Write-only. ADCIFD disable
      DIS            : Boolean := False;
      --  Write-only. Bandgap buffer request enable
      BGREQEN        : Boolean := False;
      --  Write-only. Bandgap buffer request disable
      BGREQDIS       : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CR_Register use record
      SWRST          at 0 range 0 .. 0;
      TSTOP          at 0 range 1 .. 1;
      TSTART         at 0 range 2 .. 2;
      STRIG          at 0 range 3 .. 3;
      REFBUFEN       at 0 range 4 .. 4;
      REFBUFDIS      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EN             at 0 range 8 .. 8;
      DIS            at 0 range 9 .. 9;
      BGREQEN        at 0 range 10 .. 10;
      BGREQDIS       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADCIFE_CFG_REFSEL_Field is HAL.UInt3;
   subtype ADCIFE_CFG_SPEED_Field is HAL.UInt2;
   subtype ADCIFE_CFG_PRESCAL_Field is HAL.UInt3;

   --  Configuration Register
   type ADCIFE_CFG_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  ADC Reference Selection
      REFSEL         : ADCIFE_CFG_REFSEL_Field := 16#0#;
      --  ADC current reduction
      SPEED          : ADCIFE_CFG_SPEED_Field := 16#0#;
      --  Clock Selection for sequencer/ADC cell
      CLKSEL         : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Prescaler Rate Selection
      PRESCAL        : ADCIFE_CFG_PRESCAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CFG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      REFSEL         at 0 range 1 .. 3;
      SPEED          at 0 range 4 .. 5;
      CLKSEL         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESCAL        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Status Register
   type ADCIFE_SR_Register is record
      --  Read-only. Sequencer end of conversion
      SEOC           : Boolean;
      --  Read-only. Sequencer last converted value overrun
      LOVR           : Boolean;
      --  Read-only. Window monitor
      WM             : Boolean;
      --  Read-only. Sequencer missed trigger event
      SMTRG          : Boolean;
      --  Read-only. Start-up time done
      SUTD           : Boolean;
      --  Read-only. Timer time-out
      TTO            : Boolean;
      --  unspecified
      Reserved_6_23  : HAL.UInt18;
      --  Read-only. Enable Status
      EN             : Boolean;
      --  Read-only. Timer busy
      TBUSY          : Boolean;
      --  Read-only. Sequencer busy
      SBUSY          : Boolean;
      --  Read-only. Conversion busy
      CBUSY          : Boolean;
      --  Read-only. Reference buffer status
      REFBUF         : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_SR_Register use record
      SEOC           at 0 range 0 .. 0;
      LOVR           at 0 range 1 .. 1;
      WM             at 0 range 2 .. 2;
      SMTRG          at 0 range 3 .. 3;
      SUTD           at 0 range 4 .. 4;
      TTO            at 0 range 5 .. 5;
      Reserved_6_23  at 0 range 6 .. 23;
      EN             at 0 range 24 .. 24;
      TBUSY          at 0 range 25 .. 25;
      SBUSY          at 0 range 26 .. 26;
      CBUSY          at 0 range 27 .. 27;
      REFBUF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Status Clear Register
   type ADCIFE_SCR_Register is record
      --  Write-only. Sequencer end of conversion
      SEOC          : Boolean := False;
      --  Write-only. Sequencer last converted value overrun
      LOVR          : Boolean := False;
      --  Write-only. Window monitor
      WM            : Boolean := False;
      --  Write-only. Sequencer missed trigger event
      SMTRG         : Boolean := False;
      --  Write-only. Start-up time done
      SUTD          : Boolean := False;
      --  Write-only. Timer time-out
      TTO           : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_SCR_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      SUTD          at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ADCIFE_SEQCFG_GAIN_Field is HAL.UInt3;
   subtype ADCIFE_SEQCFG_TRGSEL_Field is HAL.UInt3;
   subtype ADCIFE_SEQCFG_INTERNAL_Field is HAL.UInt2;
   subtype ADCIFE_SEQCFG_MUXPOS_Field is HAL.UInt4;
   subtype ADCIFE_SEQCFG_MUXNEG_Field is HAL.UInt3;
   subtype ADCIFE_SEQCFG_ZOOMRANGE_Field is HAL.UInt3;

   --  Sequencer Configuration Register
   type ADCIFE_SEQCFG_Register is record
      --  Half word left adjust
      HWLA           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Bipolar Mode
      BIPOLAR        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Gain factor
      GAIN           : ADCIFE_SEQCFG_GAIN_Field := 16#0#;
      --  Gain Compensation
      GCOMP          : Boolean := False;
      --  Trigger selection
      TRGSEL         : ADCIFE_SEQCFG_TRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Resolution
      RES            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Internal Voltage Source Selection
      INTERNAL       : ADCIFE_SEQCFG_INTERNAL_Field := 16#0#;
      --  MUX selection on Positive ADC input channel
      MUXPOS         : ADCIFE_SEQCFG_MUXPOS_Field := 16#0#;
      --  MUX selection on Negative ADC input channel
      MUXNEG         : ADCIFE_SEQCFG_MUXNEG_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  Zoom shift/unipolar reference source selection
      ZOOMRANGE      : ADCIFE_SEQCFG_ZOOMRANGE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_SEQCFG_Register use record
      HWLA           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      BIPOLAR        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GAIN           at 0 range 4 .. 6;
      GCOMP          at 0 range 7 .. 7;
      TRGSEL         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RES            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      INTERNAL       at 0 range 14 .. 15;
      MUXPOS         at 0 range 16 .. 19;
      MUXNEG         at 0 range 20 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      ZOOMRANGE      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ADCIFE_CDMA_FIRST_DMA_WORD_GAIN_Field is HAL.UInt3;
   subtype ADCIFE_CDMA_FIRST_DMA_WORD_INTERNAL_Field is HAL.UInt2;
   subtype ADCIFE_CDMA_FIRST_DMA_WORD_MUXPOS_Field is HAL.UInt4;
   subtype ADCIFE_CDMA_FIRST_DMA_WORD_MUXNEG_Field is HAL.UInt3;
   subtype ADCIFE_CDMA_FIRST_DMA_WORD_ZOOMRANGE_Field is HAL.UInt3;

   --  Configuration Direct Memory Access Register
   type ADCIFE_CDMA_FIRST_DMA_WORD_Register is record
      --  Write-only. Half word left adjust
      HWLA           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Write-only. Bipolar Mode
      BIPOLAR        : Boolean := False;
      --  Write-only. Sequencer Trigger Event
      STRIG          : Boolean := False;
      --  Write-only. Gain factor
      GAIN           : ADCIFE_CDMA_FIRST_DMA_WORD_GAIN_Field := 16#0#;
      --  Write-only. Gain Compensation
      GCOMP          : Boolean := False;
      --  Write-only. Enable Start-Up Time
      ENSTUP         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. Resolution
      RES            : Boolean := False;
      --  Write-only. Internal timer start or stop bit
      TSS            : Boolean := False;
      --  Write-only. Internal Voltage Source Selection
      INTERNAL       : ADCIFE_CDMA_FIRST_DMA_WORD_INTERNAL_Field := 16#0#;
      --  Write-only. MUX selection on Positive ADC input channel
      MUXPOS         : ADCIFE_CDMA_FIRST_DMA_WORD_MUXPOS_Field := 16#0#;
      --  Write-only. MUX selection on Negative ADC input channel
      MUXNEG         : ADCIFE_CDMA_FIRST_DMA_WORD_MUXNEG_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  Write-only. Zoom shift/unipolar reference source selection
      ZOOMRANGE      : ADCIFE_CDMA_FIRST_DMA_WORD_ZOOMRANGE_Field := 16#0#;
      --  Write-only. Double Word transmitting
      DW             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CDMA_FIRST_DMA_WORD_Register use record
      HWLA           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      BIPOLAR        at 0 range 2 .. 2;
      STRIG          at 0 range 3 .. 3;
      GAIN           at 0 range 4 .. 6;
      GCOMP          at 0 range 7 .. 7;
      ENSTUP         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RES            at 0 range 12 .. 12;
      TSS            at 0 range 13 .. 13;
      INTERNAL       at 0 range 14 .. 15;
      MUXPOS         at 0 range 16 .. 19;
      MUXNEG         at 0 range 20 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      ZOOMRANGE      at 0 range 28 .. 30;
      DW             at 0 range 31 .. 31;
   end record;

   subtype ADCIFE_CDMA_SECOND_DMA_WORD_LT_Field is HAL.UInt12;
   subtype ADCIFE_CDMA_SECOND_DMA_WORD_WM_Field is HAL.UInt3;
   subtype ADCIFE_CDMA_SECOND_DMA_WORD_HT_Field is HAL.UInt12;

   --  Configuration Direct Memory Access Register
   type ADCIFE_CDMA_SECOND_DMA_WORD_Register is record
      --  Write-only. Low Threshold
      LT             : ADCIFE_CDMA_SECOND_DMA_WORD_LT_Field := 16#0#;
      --  Write-only. Window Monitor Mode
      WM             : ADCIFE_CDMA_SECOND_DMA_WORD_WM_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. High Threshold
      HT             : ADCIFE_CDMA_SECOND_DMA_WORD_HT_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Write-only. Double Word transmitting
      DW             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CDMA_SECOND_DMA_WORD_Register use record
      LT             at 0 range 0 .. 11;
      WM             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HT             at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      DW             at 0 range 31 .. 31;
   end record;

   subtype ADCIFE_TIM_STARTUP_Field is HAL.UInt5;

   --  Timing Configuration Register
   type ADCIFE_TIM_Register is record
      --  Startup time
      STARTUP       : ADCIFE_TIM_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Enable Startup
      ENSTUP        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_TIM_Register use record
      STARTUP       at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      ENSTUP        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ADCIFE_ITIMER_ITMC_Field is HAL.UInt16;

   --  Internal Timer Register
   type ADCIFE_ITIMER_Register is record
      --  Internal timer max counter
      ITMC           : ADCIFE_ITIMER_ITMC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_ITIMER_Register use record
      ITMC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADCIFE_WCFG_WM_Field is HAL.UInt3;

   --  Window Monitor Configuration Register
   type ADCIFE_WCFG_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Window Monitor Mode
      WM             : ADCIFE_WCFG_WM_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_WCFG_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      WM             at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype ADCIFE_WTH_LT_Field is HAL.UInt12;
   subtype ADCIFE_WTH_HT_Field is HAL.UInt12;

   --  Window Monitor Threshold Configuration Register
   type ADCIFE_WTH_Register is record
      --  Low threshold
      LT             : ADCIFE_WTH_LT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  High Threshold
      HT             : ADCIFE_WTH_HT_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_WTH_Register use record
      LT             at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HT             at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ADCIFE_LCV_LCV_Field is HAL.UInt16;
   subtype ADCIFE_LCV_LCPC_Field is HAL.UInt4;
   subtype ADCIFE_LCV_LCNC_Field is HAL.UInt3;

   --  Sequencer Last Converted Value Register
   type ADCIFE_LCV_Register is record
      --  Read-only. Last converted value
      LCV            : ADCIFE_LCV_LCV_Field;
      --  Read-only. Last converted positive channel
      LCPC           : ADCIFE_LCV_LCPC_Field;
      --  Read-only. Last converted negative channel
      LCNC           : ADCIFE_LCV_LCNC_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_LCV_Register use record
      LCV            at 0 range 0 .. 15;
      LCPC           at 0 range 16 .. 19;
      LCNC           at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Interrupt Enable Register
   type ADCIFE_IER_Register is record
      --  Write-only. Sequencer end of conversion Interrupt Enable
      SEOC          : Boolean := False;
      --  Write-only. Sequencer last converted value overrun Interrupt Enable
      LOVR          : Boolean := False;
      --  Write-only. Window monitor Interrupt Enable
      WM            : Boolean := False;
      --  Write-only. Sequencer missed trigger event Interrupt Enable
      SMTRG         : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Write-only. Timer time-out Interrupt Enable
      TTO           : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_IER_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Disable Register
   type ADCIFE_IDR_Register is record
      --  Write-only. Sequencer end of conversion Interrupt Disable
      SEOC          : Boolean := False;
      --  Write-only. Sequencer last converted value overrun Interrupt Disable
      LOVR          : Boolean := False;
      --  Write-only. Window monitor Interrupt Disable
      WM            : Boolean := False;
      --  Write-only. Sequencer missed trigger event Interrupt Disable
      SMTRG         : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Write-only. Timer time-out Interrupt Disable
      TTO           : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_IDR_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Mask Register
   type ADCIFE_IMR_Register is record
      --  Read-only. Sequencer end of conversion Interrupt Mask
      SEOC          : Boolean;
      --  Read-only. Sequencer last converted value overrun Interrupt Mask
      LOVR          : Boolean;
      --  Read-only. Window monitor Interrupt Mask
      WM            : Boolean;
      --  Read-only. Sequencer missed trigger event Interrupt Mask
      SMTRG         : Boolean;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Timer time-out Interrupt Mask
      TTO           : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_IMR_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ADCIFE_CALIB_CALIB_Field is HAL.UInt8;
   subtype ADCIFE_CALIB_BIASCAL_Field is HAL.UInt4;

   --  Calibration Register
   type ADCIFE_CALIB_Register is record
      --  Calibration Value
      CALIB          : ADCIFE_CALIB_CALIB_Field := 16#0#;
      --  Select bias mode
      BIASSEL        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Bias Calibration
      BIASCAL        : ADCIFE_CALIB_BIASCAL_Field := 16#0#;
      --  Flash Calibration Done
      FCD            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CALIB_Register use record
      CALIB          at 0 range 0 .. 7;
      BIASSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      BIASCAL        at 0 range 12 .. 15;
      FCD            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype ADCIFE_VERSION_VERSION_Field is HAL.UInt12;
   subtype ADCIFE_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type ADCIFE_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : ADCIFE_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : ADCIFE_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADCIFE_PARAMETER_N_Field is HAL.UInt8;

   --  Parameter Register
   type ADCIFE_PARAMETER_Register is record
      --  Read-only. Number of channels
      N             : ADCIFE_PARAMETER_N_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_PARAMETER_Register use record
      N             at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type ADCIFE_Disc is
     (
      First_Dma_Word,
      Second_Dma_Word);

   --  ADC controller interface
   type ADCIFE_Peripheral
     (Discriminent : ADCIFE_Disc := First_Dma_Word)
   is record
      --  Control Register
      CR                   : aliased ADCIFE_CR_Register;
      --  Configuration Register
      CFG                  : aliased ADCIFE_CFG_Register;
      --  Status Register
      SR                   : aliased ADCIFE_SR_Register;
      --  Status Clear Register
      SCR                  : aliased ADCIFE_SCR_Register;
      --  Resistive Touch Screen Register
      RTS                  : aliased HAL.UInt32;
      --  Sequencer Configuration Register
      SEQCFG               : aliased ADCIFE_SEQCFG_Register;
      --  Timing Configuration Register
      TIM                  : aliased ADCIFE_TIM_Register;
      --  Internal Timer Register
      ITIMER               : aliased ADCIFE_ITIMER_Register;
      --  Window Monitor Configuration Register
      WCFG                 : aliased ADCIFE_WCFG_Register;
      --  Window Monitor Threshold Configuration Register
      WTH                  : aliased ADCIFE_WTH_Register;
      --  Sequencer Last Converted Value Register
      LCV                  : aliased ADCIFE_LCV_Register;
      --  Interrupt Enable Register
      IER                  : aliased ADCIFE_IER_Register;
      --  Interrupt Disable Register
      IDR                  : aliased ADCIFE_IDR_Register;
      --  Interrupt Mask Register
      IMR                  : aliased ADCIFE_IMR_Register;
      --  Calibration Register
      CALIB                : aliased ADCIFE_CALIB_Register;
      --  Version Register
      VERSION              : aliased ADCIFE_VERSION_Register;
      --  Parameter Register
      PARAMETER            : aliased ADCIFE_PARAMETER_Register;
      case Discriminent is
         when First_Dma_Word =>
            --  Configuration Direct Memory Access Register
            CDMA_FIRST_DMA_WORD : aliased ADCIFE_CDMA_FIRST_DMA_WORD_Register;
         when Second_Dma_Word =>
            --  Configuration Direct Memory Access Register
            CDMA_SECOND_DMA_WORD : aliased ADCIFE_CDMA_SECOND_DMA_WORD_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for ADCIFE_Peripheral use record
      CR                   at 16#0# range 0 .. 31;
      CFG                  at 16#4# range 0 .. 31;
      SR                   at 16#8# range 0 .. 31;
      SCR                  at 16#C# range 0 .. 31;
      RTS                  at 16#10# range 0 .. 31;
      SEQCFG               at 16#14# range 0 .. 31;
      TIM                  at 16#1C# range 0 .. 31;
      ITIMER               at 16#20# range 0 .. 31;
      WCFG                 at 16#24# range 0 .. 31;
      WTH                  at 16#28# range 0 .. 31;
      LCV                  at 16#2C# range 0 .. 31;
      IER                  at 16#30# range 0 .. 31;
      IDR                  at 16#34# range 0 .. 31;
      IMR                  at 16#38# range 0 .. 31;
      CALIB                at 16#3C# range 0 .. 31;
      VERSION              at 16#40# range 0 .. 31;
      PARAMETER            at 16#44# range 0 .. 31;
      CDMA_FIRST_DMA_WORD  at 16#18# range 0 .. 31;
      CDMA_SECOND_DMA_WORD at 16#18# range 0 .. 31;
   end record;

   --  ADC controller interface
   ADCIFE_Periph : aliased ADCIFE_Peripheral
     with Import, Address => System'To_Address (16#40038000#);

end SAM_SVD.ADCIFE;
