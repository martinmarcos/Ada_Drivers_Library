--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2017 Atmel Corporation,
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

--  This spec has been automatically generated from ATSAMC21G17A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SDADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type SDADC_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run during Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Control
      ONDEMAND     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
   end record;

   --  Reference Selection
   type REFCTRL_REFSELSelect is
     (
      --  Internal Bandgap Reference
      Intref,
      --  External Reference
      Arefb,
      --  Internal DAC Output
      Dac,
      --  VDDANA
      Intvcc)
     with Size => 2;
   for REFCTRL_REFSELSelect use
     (Intref => 0,
      Arefb => 1,
      Dac => 2,
      Intvcc => 3);

   subtype SDADC_REFCTRL_REFRANGE_Field is HAL.UInt2;

   --  Reference Control
   type SDADC_REFCTRL_Register is record
      --  Reference Selection
      REFSEL       : REFCTRL_REFSELSelect := SAM_SVD.SDADC.Intref;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Reference Range
      REFRANGE     : SDADC_REFCTRL_REFRANGE_Field := 16#0#;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Reference Buffer
      ONREFBUF     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_REFCTRL_Register use record
      REFSEL       at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      REFRANGE     at 0 range 4 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      ONREFBUF     at 0 range 7 .. 7;
   end record;

   subtype SDADC_CTRLB_PRESCALER_Field is HAL.UInt8;
   subtype SDADC_CTRLB_OSR_Field is HAL.UInt3;
   subtype SDADC_CTRLB_SKPCNT_Field is HAL.UInt4;

   --  Control B
   type SDADC_CTRLB_Register is record
      --  Prescaler Configuration
      PRESCALER      : SDADC_CTRLB_PRESCALER_Field := 16#0#;
      --  Over Sampling Ratio
      OSR            : SDADC_CTRLB_OSR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Skip Sample Count
      SKPCNT         : SDADC_CTRLB_SKPCNT_Field := 16#2#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SDADC_CTRLB_Register use record
      PRESCALER      at 0 range 0 .. 7;
      OSR            at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SKPCNT         at 0 range 12 .. 15;
   end record;

   --  Event Control
   type SDADC_EVCTRL_Register is record
      --  Flush Event Input Enable
      FLUSHEI      : Boolean := False;
      --  Start Conversion Event Input Enable
      STARTEI      : Boolean := False;
      --  Flush Event Invert Enable
      FLUSHINV     : Boolean := False;
      --  Satrt Event Invert Enable
      STARTINV     : Boolean := False;
      --  Result Ready Event Out
      RESRDYEO     : Boolean := False;
      --  Window Monitor Event Out
      WINMONEO     : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_EVCTRL_Register use record
      FLUSHEI      at 0 range 0 .. 0;
      STARTEI      at 0 range 1 .. 1;
      FLUSHINV     at 0 range 2 .. 2;
      STARTINV     at 0 range 3 .. 3;
      RESRDYEO     at 0 range 4 .. 4;
      WINMONEO     at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Interrupt Enable Clear
   type SDADC_INTENCLR_Register is record
      --  Result Ready Interrupt Disable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Disable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Disable
      WINMON       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_INTENCLR_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Enable Set
   type SDADC_INTENSET_Register is record
      --  Result Ready Interrupt Enable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Enable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Enable
      WINMON       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_INTENSET_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type SDADC_INTFLAG_Register is record
      --  Result Ready Interrupt Flag
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Flag
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Flag
      WINMON       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_INTFLAG_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype SDADC_SEQSTATUS_SEQSTATE_Field is HAL.UInt4;

   --  Sequence Status
   type SDADC_SEQSTATUS_Register is record
      --  Read-only. Sequence State
      SEQSTATE     : SDADC_SEQSTATUS_SEQSTATE_Field;
      --  unspecified
      Reserved_4_6 : HAL.UInt3;
      --  Read-only. Sequence Busy
      SEQBUSY      : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_SEQSTATUS_Register use record
      SEQSTATE     at 0 range 0 .. 3;
      Reserved_4_6 at 0 range 4 .. 6;
      SEQBUSY      at 0 range 7 .. 7;
   end record;

   --  SDADC Input Selection
   type INPUTCTRL_MUXSELSelect is
     (
      --  SDADC AIN0 Pin
      Ain0,
      --  SDADC AIN1 Pin
      Ain1,
      --  SDADC AIN2 Pin
      Ain2)
     with Size => 4;
   for INPUTCTRL_MUXSELSelect use
     (Ain0 => 0,
      Ain1 => 1,
      Ain2 => 2);

   --  Input Control
   type SDADC_INPUTCTRL_Register is record
      --  SDADC Input Selection
      MUXSEL       : INPUTCTRL_MUXSELSelect := SAM_SVD.SDADC.Ain0;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_INPUTCTRL_Register use record
      MUXSEL       at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Control C
   type SDADC_CTRLC_Register is record
      --  Free Running Mode
      FREERUN      : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_CTRLC_Register use record
      FREERUN      at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   subtype SDADC_WINCTRL_WINMODE_Field is HAL.UInt3;

   --  Window Monitor Control
   type SDADC_WINCTRL_Register is record
      --  Window Monitor Mode
      WINMODE      : SDADC_WINCTRL_WINMODE_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_WINCTRL_Register use record
      WINMODE      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype SDADC_WINLT_WINLT_Field is HAL.UInt24;

   --  Window Monitor Lower Threshold
   type SDADC_WINLT_Register is record
      --  Window Lower Threshold
      WINLT          : SDADC_WINLT_WINLT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDADC_WINLT_Register use record
      WINLT          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SDADC_WINUT_WINUT_Field is HAL.UInt24;

   --  Window Monitor Upper Threshold
   type SDADC_WINUT_Register is record
      --  Window Upper Threshold
      WINUT          : SDADC_WINUT_WINUT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDADC_WINUT_Register use record
      WINUT          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SDADC_OFFSETCORR_OFFSETCORR_Field is HAL.UInt24;

   --  Offset Correction
   type SDADC_OFFSETCORR_Register is record
      --  Offset Correction Value
      OFFSETCORR     : SDADC_OFFSETCORR_OFFSETCORR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDADC_OFFSETCORR_Register use record
      OFFSETCORR     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SDADC_GAINCORR_GAINCORR_Field is HAL.UInt14;

   --  Gain Correction
   type SDADC_GAINCORR_Register is record
      --  Gain Correction Value
      GAINCORR       : SDADC_GAINCORR_GAINCORR_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SDADC_GAINCORR_Register use record
      GAINCORR       at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype SDADC_SHIFTCORR_SHIFTCORR_Field is HAL.UInt4;

   --  Shift Correction
   type SDADC_SHIFTCORR_Register is record
      --  Shift Correction Value
      SHIFTCORR    : SDADC_SHIFTCORR_SHIFTCORR_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_SHIFTCORR_Register use record
      SHIFTCORR    at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Software Trigger
   type SDADC_SWTRIG_Register is record
      --  SDADC Flush
      FLUSH        : Boolean := False;
      --  Start SDADC Conversion
      START        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_SWTRIG_Register use record
      FLUSH        at 0 range 0 .. 0;
      START        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Synchronization Busy
   type SDADC_SYNCBUSY_Register is record
      --  Read-only. SWRST Synchronization Busy
      SWRST          : Boolean;
      --  Read-only. ENABLE Synchronization Busy
      ENABLE         : Boolean;
      --  Read-only. CTRLC Synchronization Busy
      CTRLC          : Boolean;
      --  Read-only. INPUTCTRL Synchronization Busy
      INPUTCTRL      : Boolean;
      --  Read-only. WINCTRL Synchronization Busy
      WINCTRL        : Boolean;
      --  Read-only. WINLT Synchronization Busy
      WINLT          : Boolean;
      --  Read-only. WINUT Synchronization Busy
      WINUT          : Boolean;
      --  Read-only. OFFSETCTRL Synchronization Busy
      OFFSETCORR     : Boolean;
      --  Read-only. GAINCORR Synchronization Busy
      GAINCORR       : Boolean;
      --  Read-only. SHIFTCORR Synchronization Busy
      SHIFTCORR      : Boolean;
      --  Read-only. SWTRG Synchronization Busy
      SWTRIG         : Boolean;
      --  Read-only. ANACTRL Synchronization Busy
      ANACTRL        : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDADC_SYNCBUSY_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      CTRLC          at 0 range 2 .. 2;
      INPUTCTRL      at 0 range 3 .. 3;
      WINCTRL        at 0 range 4 .. 4;
      WINLT          at 0 range 5 .. 5;
      WINUT          at 0 range 6 .. 6;
      OFFSETCORR     at 0 range 7 .. 7;
      GAINCORR       at 0 range 8 .. 8;
      SHIFTCORR      at 0 range 9 .. 9;
      SWTRIG         at 0 range 10 .. 10;
      ANACTRL        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SDADC_RESULT_RESULT_Field is HAL.UInt24;
   subtype SDADC_RESULT_RESERVED_Field is HAL.UInt8;

   --  Result
   type SDADC_RESULT_Register is record
      --  Read-only. Result Value
      RESULT   : SDADC_RESULT_RESULT_Field;
      --  Read-only. Reserved
      RESERVED : SDADC_RESULT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDADC_RESULT_Register use record
      RESULT   at 0 range 0 .. 23;
      RESERVED at 0 range 24 .. 31;
   end record;

   subtype SDADC_SEQCTRL_SEQEN_Field is HAL.UInt3;

   --  Sequence Control
   type SDADC_SEQCTRL_Register is record
      --  Enable Positive Input in the Sequence
      SEQEN        : SDADC_SEQCTRL_SEQEN_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_SEQCTRL_Register use record
      SEQEN        at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype SDADC_ANACTRL_CTRSDADC_Field is HAL.UInt6;

   --  Analog Control
   type SDADC_ANACTRL_Register is record
      --  SDADC Control
      CTRSDADC : SDADC_ANACTRL_CTRSDADC_Field := 16#0#;
      --  Chopper
      ONCHOP   : Boolean := False;
      --  BUFTEST
      BUFTEST  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_ANACTRL_Register use record
      CTRSDADC at 0 range 0 .. 5;
      ONCHOP   at 0 range 6 .. 6;
      BUFTEST  at 0 range 7 .. 7;
   end record;

   --  Debug Control
   type SDADC_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SDADC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Sigma-Delta Analog Digital Converter
   type SDADC_Peripheral is record
      --  Control A
      CTRLA      : aliased SDADC_CTRLA_Register;
      --  Reference Control
      REFCTRL    : aliased SDADC_REFCTRL_Register;
      --  Control B
      CTRLB      : aliased SDADC_CTRLB_Register;
      --  Event Control
      EVCTRL     : aliased SDADC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR   : aliased SDADC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased SDADC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG    : aliased SDADC_INTFLAG_Register;
      --  Sequence Status
      SEQSTATUS  : aliased SDADC_SEQSTATUS_Register;
      --  Input Control
      INPUTCTRL  : aliased SDADC_INPUTCTRL_Register;
      --  Control C
      CTRLC      : aliased SDADC_CTRLC_Register;
      --  Window Monitor Control
      WINCTRL    : aliased SDADC_WINCTRL_Register;
      --  Window Monitor Lower Threshold
      WINLT      : aliased SDADC_WINLT_Register;
      --  Window Monitor Upper Threshold
      WINUT      : aliased SDADC_WINUT_Register;
      --  Offset Correction
      OFFSETCORR : aliased SDADC_OFFSETCORR_Register;
      --  Gain Correction
      GAINCORR   : aliased SDADC_GAINCORR_Register;
      --  Shift Correction
      SHIFTCORR  : aliased SDADC_SHIFTCORR_Register;
      --  Software Trigger
      SWTRIG     : aliased SDADC_SWTRIG_Register;
      --  Synchronization Busy
      SYNCBUSY   : aliased SDADC_SYNCBUSY_Register;
      --  Result
      RESULT     : aliased SDADC_RESULT_Register;
      --  Sequence Control
      SEQCTRL    : aliased SDADC_SEQCTRL_Register;
      --  Analog Control
      ANACTRL    : aliased SDADC_ANACTRL_Register;
      --  Debug Control
      DBGCTRL    : aliased SDADC_DBGCTRL_Register;
   end record
     with Volatile;

   for SDADC_Peripheral use record
      CTRLA      at 16#0# range 0 .. 7;
      REFCTRL    at 16#1# range 0 .. 7;
      CTRLB      at 16#2# range 0 .. 15;
      EVCTRL     at 16#4# range 0 .. 7;
      INTENCLR   at 16#5# range 0 .. 7;
      INTENSET   at 16#6# range 0 .. 7;
      INTFLAG    at 16#7# range 0 .. 7;
      SEQSTATUS  at 16#8# range 0 .. 7;
      INPUTCTRL  at 16#9# range 0 .. 7;
      CTRLC      at 16#A# range 0 .. 7;
      WINCTRL    at 16#B# range 0 .. 7;
      WINLT      at 16#C# range 0 .. 31;
      WINUT      at 16#10# range 0 .. 31;
      OFFSETCORR at 16#14# range 0 .. 31;
      GAINCORR   at 16#18# range 0 .. 15;
      SHIFTCORR  at 16#1A# range 0 .. 7;
      SWTRIG     at 16#1C# range 0 .. 7;
      SYNCBUSY   at 16#20# range 0 .. 31;
      RESULT     at 16#24# range 0 .. 31;
      SEQCTRL    at 16#28# range 0 .. 7;
      ANACTRL    at 16#2C# range 0 .. 7;
      DBGCTRL    at 16#2E# range 0 .. 7;
   end record;

   --  Sigma-Delta Analog Digital Converter
   SDADC_Periph : aliased SDADC_Peripheral
     with Import, Address => System'To_Address (16#42004C00#);

end SAM_SVD.SDADC;
