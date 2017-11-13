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

--  This spec has been automatically generated from ATSAMR21G17A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type ADC_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      RUNSTDBY     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Reference Selection
   type REFCTRL_REFSELSelect is
     (
      --  1.0V voltage reference
      Int1V,
      --  1/1.48 VDDANA
      Intvcc0,
      --  1/2 VDDANA (only for VDDANA > 2.0V)
      Intvcc1,
      --  External reference
      Arefa,
      --  External reference
      Arefb)
     with Size => 4;
   for REFCTRL_REFSELSelect use
     (Int1V => 0,
      Intvcc0 => 1,
      Intvcc1 => 2,
      Arefa => 3,
      Arefb => 4);

   --  Reference Control
   type ADC_REFCTRL_Register is record
      --  Reference Selection
      REFSEL       : REFCTRL_REFSELSelect := SAM_SVD.ADC.Int1V;
      --  unspecified
      Reserved_4_6 : HAL.UInt3 := 16#0#;
      --  Reference Buffer Offset Compensation Enable
      REFCOMP      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_REFCTRL_Register use record
      REFSEL       at 0 range 0 .. 3;
      Reserved_4_6 at 0 range 4 .. 6;
      REFCOMP      at 0 range 7 .. 7;
   end record;

   --  Number of Samples to be Collected
   type AVGCTRL_SAMPLENUMSelect is
     (
      --  1 sample
      AVGCTRL_SAMPLENUMSelect_1,
      --  2 samples
      AVGCTRL_SAMPLENUMSelect_2,
      --  4 samples
      AVGCTRL_SAMPLENUMSelect_4,
      --  8 samples
      AVGCTRL_SAMPLENUMSelect_8,
      --  16 samples
      AVGCTRL_SAMPLENUMSelect_16,
      --  32 samples
      AVGCTRL_SAMPLENUMSelect_32,
      --  64 samples
      AVGCTRL_SAMPLENUMSelect_64,
      --  128 samples
      AVGCTRL_SAMPLENUMSelect_128,
      --  256 samples
      AVGCTRL_SAMPLENUMSelect_256,
      --  512 samples
      AVGCTRL_SAMPLENUMSelect_512,
      --  1024 samples
      AVGCTRL_SAMPLENUMSelect_1024)
     with Size => 4;
   for AVGCTRL_SAMPLENUMSelect use
     (AVGCTRL_SAMPLENUMSelect_1 => 0,
      AVGCTRL_SAMPLENUMSelect_2 => 1,
      AVGCTRL_SAMPLENUMSelect_4 => 2,
      AVGCTRL_SAMPLENUMSelect_8 => 3,
      AVGCTRL_SAMPLENUMSelect_16 => 4,
      AVGCTRL_SAMPLENUMSelect_32 => 5,
      AVGCTRL_SAMPLENUMSelect_64 => 6,
      AVGCTRL_SAMPLENUMSelect_128 => 7,
      AVGCTRL_SAMPLENUMSelect_256 => 8,
      AVGCTRL_SAMPLENUMSelect_512 => 9,
      AVGCTRL_SAMPLENUMSelect_1024 => 10);

   subtype ADC_AVGCTRL_ADJRES_Field is HAL.UInt3;

   --  Average Control
   type ADC_AVGCTRL_Register is record
      --  Number of Samples to be Collected
      SAMPLENUM    : AVGCTRL_SAMPLENUMSelect :=
                      SAM_SVD.ADC.AVGCTRL_SAMPLENUMSelect_1;
      --  Adjusting Result / Division Coefficient
      ADJRES       : ADC_AVGCTRL_ADJRES_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_AVGCTRL_Register use record
      SAMPLENUM    at 0 range 0 .. 3;
      ADJRES       at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype ADC_SAMPCTRL_SAMPLEN_Field is HAL.UInt6;

   --  Sampling Time Control
   type ADC_SAMPCTRL_Register is record
      --  Sampling Time Length
      SAMPLEN      : ADC_SAMPCTRL_SAMPLEN_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_SAMPCTRL_Register use record
      SAMPLEN      at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Conversion Result Resolution
   type CTRLB_RESSELSelect is
     (
      --  12-bit result
      CTRLB_RESSELSelect_12Bit,
      --  For averaging mode output
      CTRLB_RESSELSelect_16Bit,
      --  10-bit result
      CTRLB_RESSELSelect_10Bit,
      --  8-bit result
      CTRLB_RESSELSelect_8Bit)
     with Size => 2;
   for CTRLB_RESSELSelect use
     (CTRLB_RESSELSelect_12Bit => 0,
      CTRLB_RESSELSelect_16Bit => 1,
      CTRLB_RESSELSelect_10Bit => 2,
      CTRLB_RESSELSelect_8Bit => 3);

   --  Prescaler Configuration
   type CTRLB_PRESCALERSelect is
     (
      --  Peripheral clock divided by 4
      Div4,
      --  Peripheral clock divided by 8
      Div8,
      --  Peripheral clock divided by 16
      Div16,
      --  Peripheral clock divided by 32
      Div32,
      --  Peripheral clock divided by 64
      Div64,
      --  Peripheral clock divided by 128
      Div128,
      --  Peripheral clock divided by 256
      Div256,
      --  Peripheral clock divided by 512
      Div512)
     with Size => 3;
   for CTRLB_PRESCALERSelect use
     (Div4 => 0,
      Div8 => 1,
      Div16 => 2,
      Div32 => 3,
      Div64 => 4,
      Div128 => 5,
      Div256 => 6,
      Div512 => 7);

   --  Control B
   type ADC_CTRLB_Register is record
      --  Differential Mode
      DIFFMODE       : Boolean := False;
      --  Left-Adjusted Result
      LEFTADJ        : Boolean := False;
      --  Free Running Mode
      FREERUN        : Boolean := False;
      --  Digital Correction Logic Enabled
      CORREN         : Boolean := False;
      --  Conversion Result Resolution
      RESSEL         : CTRLB_RESSELSelect :=
                        SAM_SVD.ADC.CTRLB_RESSELSelect_12Bit;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Prescaler Configuration
      PRESCALER      : CTRLB_PRESCALERSelect := SAM_SVD.ADC.Div4;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CTRLB_Register use record
      DIFFMODE       at 0 range 0 .. 0;
      LEFTADJ        at 0 range 1 .. 1;
      FREERUN        at 0 range 2 .. 2;
      CORREN         at 0 range 3 .. 3;
      RESSEL         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PRESCALER      at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Window Monitor Mode
   type WINCTRL_WINMODESelect is
     (
      --  No window mode (default)
      Disable,
      --  Mode 1: RESULT > WINLT
      Mode1,
      --  Mode 2: RESULT < WINUT
      Mode2,
      --  Mode 3: WINLT < RESULT < WINUT
      Mode3,
      --  Mode 4: !(WINLT < RESULT < WINUT)
      Mode4)
     with Size => 3;
   for WINCTRL_WINMODESelect use
     (Disable => 0,
      Mode1 => 1,
      Mode2 => 2,
      Mode3 => 3,
      Mode4 => 4);

   --  Window Monitor Control
   type ADC_WINCTRL_Register is record
      --  Window Monitor Mode
      WINMODE      : WINCTRL_WINMODESelect := SAM_SVD.ADC.Disable;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_WINCTRL_Register use record
      WINMODE      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Software Trigger
   type ADC_SWTRIG_Register is record
      --  ADC Conversion Flush
      FLUSH        : Boolean := False;
      --  ADC Start Conversion
      START        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_SWTRIG_Register use record
      FLUSH        at 0 range 0 .. 0;
      START        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Positive Mux Input Selection
   type INPUTCTRL_MUXPOSSelect is
     (
      --  ADC AIN0 Pin
      Pin0,
      --  ADC AIN1 Pin
      Pin1,
      --  ADC AIN2 Pin
      Pin2,
      --  ADC AIN3 Pin
      Pin3,
      --  ADC AIN4 Pin
      Pin4,
      --  ADC AIN5 Pin
      Pin5,
      --  ADC AIN6 Pin
      Pin6,
      --  ADC AIN7 Pin
      Pin7,
      --  ADC AIN8 Pin
      Pin8,
      --  ADC AIN9 Pin
      Pin9,
      --  ADC AIN10 Pin
      Pin10,
      --  ADC AIN11 Pin
      Pin11,
      --  ADC AIN12 Pin
      Pin12,
      --  ADC AIN13 Pin
      Pin13,
      --  ADC AIN14 Pin
      Pin14,
      --  ADC AIN15 Pin
      Pin15,
      --  ADC AIN16 Pin
      Pin16,
      --  ADC AIN17 Pin
      Pin17,
      --  ADC AIN18 Pin
      Pin18,
      --  ADC AIN19 Pin
      Pin19,
      --  Temperature Reference
      Temp,
      --  Bandgap Voltage
      Bandgap,
      --  1/4 Scaled Core Supply
      Scaledcorevcc,
      --  1/4 Scaled I/O Supply
      Scalediovcc,
      --  DAC Output
      Dac)
     with Size => 5;
   for INPUTCTRL_MUXPOSSelect use
     (Pin0 => 0,
      Pin1 => 1,
      Pin2 => 2,
      Pin3 => 3,
      Pin4 => 4,
      Pin5 => 5,
      Pin6 => 6,
      Pin7 => 7,
      Pin8 => 8,
      Pin9 => 9,
      Pin10 => 10,
      Pin11 => 11,
      Pin12 => 12,
      Pin13 => 13,
      Pin14 => 14,
      Pin15 => 15,
      Pin16 => 16,
      Pin17 => 17,
      Pin18 => 18,
      Pin19 => 19,
      Temp => 24,
      Bandgap => 25,
      Scaledcorevcc => 26,
      Scalediovcc => 27,
      Dac => 28);

   --  Negative Mux Input Selection
   type INPUTCTRL_MUXNEGSelect is
     (
      --  ADC AIN0 Pin
      Pin0,
      --  ADC AIN1 Pin
      Pin1,
      --  ADC AIN2 Pin
      Pin2,
      --  ADC AIN3 Pin
      Pin3,
      --  ADC AIN4 Pin
      Pin4,
      --  ADC AIN5 Pin
      Pin5,
      --  ADC AIN6 Pin
      Pin6,
      --  ADC AIN7 Pin
      Pin7,
      --  Internal Ground
      Gnd,
      --  I/O Ground
      Iognd)
     with Size => 5;
   for INPUTCTRL_MUXNEGSelect use
     (Pin0 => 0,
      Pin1 => 1,
      Pin2 => 2,
      Pin3 => 3,
      Pin4 => 4,
      Pin5 => 5,
      Pin6 => 6,
      Pin7 => 7,
      Gnd => 24,
      Iognd => 25);

   subtype ADC_INPUTCTRL_INPUTSCAN_Field is HAL.UInt4;
   subtype ADC_INPUTCTRL_INPUTOFFSET_Field is HAL.UInt4;

   --  Gain Factor Selection
   type INPUTCTRL_GAINSelect is
     (
      --  1x
      INPUTCTRL_GAINSelect_1X,
      --  2x
      INPUTCTRL_GAINSelect_2X,
      --  4x
      INPUTCTRL_GAINSelect_4X,
      --  8x
      INPUTCTRL_GAINSelect_8X,
      --  16x
      INPUTCTRL_GAINSelect_16X,
      --  1/2x
      Div2)
     with Size => 4;
   for INPUTCTRL_GAINSelect use
     (INPUTCTRL_GAINSelect_1X => 0,
      INPUTCTRL_GAINSelect_2X => 1,
      INPUTCTRL_GAINSelect_4X => 2,
      INPUTCTRL_GAINSelect_8X => 3,
      INPUTCTRL_GAINSelect_16X => 4,
      Div2 => 15);

   --  Input Control
   type ADC_INPUTCTRL_Register is record
      --  Positive Mux Input Selection
      MUXPOS         : INPUTCTRL_MUXPOSSelect := SAM_SVD.ADC.Pin0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Negative Mux Input Selection
      MUXNEG         : INPUTCTRL_MUXNEGSelect := SAM_SVD.ADC.Pin0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Number of Input Channels Included in Scan
      INPUTSCAN      : ADC_INPUTCTRL_INPUTSCAN_Field := 16#0#;
      --  Positive Mux Setting Offset
      INPUTOFFSET    : ADC_INPUTCTRL_INPUTOFFSET_Field := 16#0#;
      --  Gain Factor Selection
      GAIN           : INPUTCTRL_GAINSelect :=
                        SAM_SVD.ADC.INPUTCTRL_GAINSelect_1X;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_INPUTCTRL_Register use record
      MUXPOS         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUXNEG         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      INPUTSCAN      at 0 range 16 .. 19;
      INPUTOFFSET    at 0 range 20 .. 23;
      GAIN           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Event Control
   type ADC_EVCTRL_Register is record
      --  Start Conversion Event In
      STARTEI      : Boolean := False;
      --  Synchronization Event In
      SYNCEI       : Boolean := False;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Result Ready Event Out
      RESRDYEO     : Boolean := False;
      --  Window Monitor Event Out
      WINMONEO     : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_EVCTRL_Register use record
      STARTEI      at 0 range 0 .. 0;
      SYNCEI       at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      RESRDYEO     at 0 range 4 .. 4;
      WINMONEO     at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Interrupt Enable Clear
   type ADC_INTENCLR_Register is record
      --  Result Ready Interrupt Enable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Enable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Enable
      WINMON       : Boolean := False;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_INTENCLR_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Interrupt Enable Set
   type ADC_INTENSET_Register is record
      --  Result Ready Interrupt Enable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Enable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Enable
      WINMON       : Boolean := False;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_INTENSET_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type ADC_INTFLAG_Register is record
      --  Result Ready
      RESRDY       : Boolean := False;
      --  Overrun
      OVERRUN      : Boolean := False;
      --  Window Monitor
      WINMON       : Boolean := False;
      --  Synchronization Ready
      SYNCRDY      : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_INTFLAG_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Status
   type ADC_STATUS_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_STATUS_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   subtype ADC_GAINCORR_GAINCORR_Field is HAL.UInt12;

   --  Gain Correction
   type ADC_GAINCORR_Register is record
      --  Gain Correction Value
      GAINCORR       : ADC_GAINCORR_GAINCORR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_GAINCORR_Register use record
      GAINCORR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ADC_OFFSETCORR_OFFSETCORR_Field is HAL.UInt12;

   --  Offset Correction
   type ADC_OFFSETCORR_Register is record
      --  Offset Correction Value
      OFFSETCORR     : ADC_OFFSETCORR_OFFSETCORR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_OFFSETCORR_Register use record
      OFFSETCORR     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ADC_CALIB_LINEARITY_CAL_Field is HAL.UInt8;
   subtype ADC_CALIB_BIAS_CAL_Field is HAL.UInt3;

   --  Calibration
   type ADC_CALIB_Register is record
      --  Linearity Calibration Value
      LINEARITY_CAL  : ADC_CALIB_LINEARITY_CAL_Field := 16#0#;
      --  Bias Calibration Value
      BIAS_CAL       : ADC_CALIB_BIAS_CAL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CALIB_Register use record
      LINEARITY_CAL  at 0 range 0 .. 7;
      BIAS_CAL       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Debug Control
   type ADC_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Digital Converter
   type ADC_Peripheral is record
      --  Control A
      CTRLA      : aliased ADC_CTRLA_Register;
      --  Reference Control
      REFCTRL    : aliased ADC_REFCTRL_Register;
      --  Average Control
      AVGCTRL    : aliased ADC_AVGCTRL_Register;
      --  Sampling Time Control
      SAMPCTRL   : aliased ADC_SAMPCTRL_Register;
      --  Control B
      CTRLB      : aliased ADC_CTRLB_Register;
      --  Window Monitor Control
      WINCTRL    : aliased ADC_WINCTRL_Register;
      --  Software Trigger
      SWTRIG     : aliased ADC_SWTRIG_Register;
      --  Input Control
      INPUTCTRL  : aliased ADC_INPUTCTRL_Register;
      --  Event Control
      EVCTRL     : aliased ADC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR   : aliased ADC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased ADC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG    : aliased ADC_INTFLAG_Register;
      --  Status
      STATUS     : aliased ADC_STATUS_Register;
      --  Result
      RESULT     : aliased HAL.UInt16;
      --  Window Monitor Lower Threshold
      WINLT      : aliased HAL.UInt16;
      --  Window Monitor Upper Threshold
      WINUT      : aliased HAL.UInt16;
      --  Gain Correction
      GAINCORR   : aliased ADC_GAINCORR_Register;
      --  Offset Correction
      OFFSETCORR : aliased ADC_OFFSETCORR_Register;
      --  Calibration
      CALIB      : aliased ADC_CALIB_Register;
      --  Debug Control
      DBGCTRL    : aliased ADC_DBGCTRL_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CTRLA      at 16#0# range 0 .. 7;
      REFCTRL    at 16#1# range 0 .. 7;
      AVGCTRL    at 16#2# range 0 .. 7;
      SAMPCTRL   at 16#3# range 0 .. 7;
      CTRLB      at 16#4# range 0 .. 15;
      WINCTRL    at 16#8# range 0 .. 7;
      SWTRIG     at 16#C# range 0 .. 7;
      INPUTCTRL  at 16#10# range 0 .. 31;
      EVCTRL     at 16#14# range 0 .. 7;
      INTENCLR   at 16#16# range 0 .. 7;
      INTENSET   at 16#17# range 0 .. 7;
      INTFLAG    at 16#18# range 0 .. 7;
      STATUS     at 16#19# range 0 .. 7;
      RESULT     at 16#1A# range 0 .. 15;
      WINLT      at 16#1C# range 0 .. 15;
      WINUT      at 16#20# range 0 .. 15;
      GAINCORR   at 16#24# range 0 .. 15;
      OFFSETCORR at 16#26# range 0 .. 15;
      CALIB      at 16#28# range 0 .. 15;
      DBGCTRL    at 16#2A# range 0 .. 7;
   end record;

   --  Analog Digital Converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#42004000#);

end SAM_SVD.ADC;
