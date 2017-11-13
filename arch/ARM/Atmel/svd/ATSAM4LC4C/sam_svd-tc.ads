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

--  This spec has been automatically generated from ATSAM4LC4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Counter Clock Enable Command
   type CCR0_CLKENSelect is
     (
      --  No effect.
      CCR0_CLKENSelect_0,
      --  Enables the clock if CLKDIS is not 1.
      CCR0_CLKENSelect_1)
     with Size => 1;
   for CCR0_CLKENSelect use
     (CCR0_CLKENSelect_0 => 0,
      CCR0_CLKENSelect_1 => 1);

   --  Counter Clock Disable Command
   type CCR0_CLKDISSelect is
     (
      --  No effect.
      CCR0_CLKDISSelect_0,
      --  Disables the clock.
      CCR0_CLKDISSelect_1)
     with Size => 1;
   for CCR0_CLKDISSelect use
     (CCR0_CLKDISSelect_0 => 0,
      CCR0_CLKDISSelect_1 => 1);

   --  Software Trigger Command
   type CCR0_SWTRGSelect is
     (
      --  No effect.
      CCR0_SWTRGSelect_0,
      --  A software trigger is performed:the counter is reset and clock is
      --  started.
      CCR0_SWTRGSelect_1)
     with Size => 1;
   for CCR0_SWTRGSelect use
     (CCR0_SWTRGSelect_0 => 0,
      CCR0_SWTRGSelect_1 => 1);

   --  Channel Control Register Channel
   type CCR_Register is record
      --  Write-only. Counter Clock Enable Command
      CLKEN         : CCR0_CLKENSelect := SAM_SVD.TC.CCR0_CLKENSelect_0;
      --  Write-only. Counter Clock Disable Command
      CLKDIS        : CCR0_CLKDISSelect := SAM_SVD.TC.CCR0_CLKDISSelect_0;
      --  Write-only. Software Trigger Command
      SWTRG         : CCR0_SWTRGSelect := SAM_SVD.TC.CCR0_SWTRGSelect_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CLKEN         at 0 range 0 .. 0;
      CLKDIS        at 0 range 1 .. 1;
      SWTRG         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Selection
   type CMR_CAPTURE0_TCCLKSSelect is
     (
      --  TIMER_CLOCK1
      Timer_Clock1,
      --  TIMER_CLOCK2
      Timer_Clock2,
      --  TIMER_CLOCK3
      Timer_Clock3,
      --  TIMER_CLOCK4
      Timer_Clock4,
      --  TIMER_CLOCK5
      Timer_Clock5,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 3;
   for CMR_CAPTURE0_TCCLKSSelect use
     (Timer_Clock1 => 0,
      Timer_Clock2 => 1,
      Timer_Clock3 => 2,
      Timer_Clock4 => 3,
      Timer_Clock5 => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Clock Invert
   type CMR_CAPTURE0_CLKISelect is
     (
      --  Counter is incremented on rising edge of the clock.
      CMR_CAPTURE0_CLKISelect_0,
      --  Counter is incremented on falling edge of the clock.
      CMR_CAPTURE0_CLKISelect_1)
     with Size => 1;
   for CMR_CAPTURE0_CLKISelect use
     (CMR_CAPTURE0_CLKISelect_0 => 0,
      CMR_CAPTURE0_CLKISelect_1 => 1);

   --  Burst Signal Selection
   type CMR_CAPTURE0_BURSTSelect is
     (
      --  The clock is not gated by an external signal.
      Not_Gated,
      --  XC0 is ANDed with the selected clock.
      Clk_And_Xc0,
      --  XC1 is ANDed with the selected clock.
      Clk_And_Xc1,
      --  XC2 is ANDed with the selected clock.
      Clk_And_Xc2)
     with Size => 2;
   for CMR_CAPTURE0_BURSTSelect use
     (Not_Gated => 0,
      Clk_And_Xc0 => 1,
      Clk_And_Xc1 => 2,
      Clk_And_Xc2 => 3);

   --  Counter Clock Stopped with RB Loading
   type CMR_CAPTURE0_LDBSTOPSelect is
     (
      --  Counter clock is not stopped when RB loading occurs.
      CMR_CAPTURE0_LDBSTOPSelect_0,
      --  Counter clock is stopped when RB loading occurs.
      CMR_CAPTURE0_LDBSTOPSelect_1)
     with Size => 1;
   for CMR_CAPTURE0_LDBSTOPSelect use
     (CMR_CAPTURE0_LDBSTOPSelect_0 => 0,
      CMR_CAPTURE0_LDBSTOPSelect_1 => 1);

   --  Counter Clock Disable with RB Loading
   type CMR_CAPTURE0_LDBDISSelect is
     (
      --  Counter clock is not disabled when RB loading occurs.
      CMR_CAPTURE0_LDBDISSelect_0,
      --  Counter clock is disabled when RB loading occurs.
      CMR_CAPTURE0_LDBDISSelect_1)
     with Size => 1;
   for CMR_CAPTURE0_LDBDISSelect use
     (CMR_CAPTURE0_LDBDISSelect_0 => 0,
      CMR_CAPTURE0_LDBDISSelect_1 => 1);

   --  External Trigger Edge Selection
   type CMR_CAPTURE0_ETRGEDGSelect is
     (
      --  none
      No_Edge,
      --  rising edge
      Pos_Edge,
      --  falling edge
      Neg_Edge,
      --  each edge
      Both_Edges)
     with Size => 2;
   for CMR_CAPTURE0_ETRGEDGSelect use
     (No_Edge => 0,
      Pos_Edge => 1,
      Neg_Edge => 2,
      Both_Edges => 3);

   --  TIOA or TIOB External Trigger Selection
   type CMR_CAPTURE0_ABETRGSelect is
     (
      --  TIOB is used as an external trigger.
      CMR_CAPTURE0_ABETRGSelect_0,
      --  TIOA is used as an external trigger.
      CMR_CAPTURE0_ABETRGSelect_1)
     with Size => 1;
   for CMR_CAPTURE0_ABETRGSelect use
     (CMR_CAPTURE0_ABETRGSelect_0 => 0,
      CMR_CAPTURE0_ABETRGSelect_1 => 1);

   --  RC Compare Trigger Enable
   type CMR_CAPTURE0_CPCTRGSelect is
     (
      --  RC Compare has no effect on the counter and its clock.
      CMR_CAPTURE0_CPCTRGSelect_0,
      --  RC Compare resets the counter and starts the counter clock.
      CMR_CAPTURE0_CPCTRGSelect_1)
     with Size => 1;
   for CMR_CAPTURE0_CPCTRGSelect use
     (CMR_CAPTURE0_CPCTRGSelect_0 => 0,
      CMR_CAPTURE0_CPCTRGSelect_1 => 1);

   --  Wave
   type CMR_CAPTURE0_WAVESelect is
     (
      --  Capture Mode is enabled.
      CMR_CAPTURE0_WAVESelect_0,
      --  Capture Mode is disabled (Waveform Mode is enabled).
      CMR_CAPTURE0_WAVESelect_1)
     with Size => 1;
   for CMR_CAPTURE0_WAVESelect use
     (CMR_CAPTURE0_WAVESelect_0 => 0,
      CMR_CAPTURE0_WAVESelect_1 => 1);

   --  RA Loading Selection
   type CMR_CAPTURE0_LDRASelect is
     (
      --  none
      No_Edge,
      --  rising edge of TIOA
      Pos_Edge_Tioa,
      --  falling edge of TIOA
      Neg_Edge_Tioa,
      --  each edge of TIOA
      Both_Edges_Tioa)
     with Size => 2;
   for CMR_CAPTURE0_LDRASelect use
     (No_Edge => 0,
      Pos_Edge_Tioa => 1,
      Neg_Edge_Tioa => 2,
      Both_Edges_Tioa => 3);

   --  RB Loading Selection
   type CMR_CAPTURE0_LDRBSelect is
     (
      --  none
      No_Edge,
      --  rising edge of TIOA
      Pos_Edge_Tioa,
      --  falling edge of TIOA
      Neg_Edge_Tioa,
      --  each edge of TIOA
      Both_Edges_Tioa)
     with Size => 2;
   for CMR_CAPTURE0_LDRBSelect use
     (No_Edge => 0,
      Pos_Edge_Tioa => 1,
      Neg_Edge_Tioa => 2,
      Both_Edges_Tioa => 3);

   --  Channel Mode Register Channel
   type CMR_CAPTURE_Register is record
      --  Clock Selection
      TCCLKS         : CMR_CAPTURE0_TCCLKSSelect := SAM_SVD.TC.Timer_Clock1;
      --  Clock Invert
      CLKI           : CMR_CAPTURE0_CLKISelect :=
                        SAM_SVD.TC.CMR_CAPTURE0_CLKISelect_0;
      --  Burst Signal Selection
      BURST          : CMR_CAPTURE0_BURSTSelect := SAM_SVD.TC.Not_Gated;
      --  Counter Clock Stopped with RB Loading
      LDBSTOP        : CMR_CAPTURE0_LDBSTOPSelect :=
                        SAM_SVD.TC.CMR_CAPTURE0_LDBSTOPSelect_0;
      --  Counter Clock Disable with RB Loading
      LDBDIS         : CMR_CAPTURE0_LDBDISSelect :=
                        SAM_SVD.TC.CMR_CAPTURE0_LDBDISSelect_0;
      --  External Trigger Edge Selection
      ETRGEDG        : CMR_CAPTURE0_ETRGEDGSelect := SAM_SVD.TC.No_Edge;
      --  TIOA or TIOB External Trigger Selection
      ABETRG         : CMR_CAPTURE0_ABETRGSelect :=
                        SAM_SVD.TC.CMR_CAPTURE0_ABETRGSelect_0;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  RC Compare Trigger Enable
      CPCTRG         : CMR_CAPTURE0_CPCTRGSelect :=
                        SAM_SVD.TC.CMR_CAPTURE0_CPCTRGSelect_0;
      --  Wave
      WAVE           : CMR_CAPTURE0_WAVESelect :=
                        SAM_SVD.TC.CMR_CAPTURE0_WAVESelect_0;
      --  RA Loading Selection
      LDRA           : CMR_CAPTURE0_LDRASelect := SAM_SVD.TC.No_Edge;
      --  RB Loading Selection
      LDRB           : CMR_CAPTURE0_LDRBSelect := SAM_SVD.TC.No_Edge;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_CAPTURE_Register use record
      TCCLKS         at 0 range 0 .. 2;
      CLKI           at 0 range 3 .. 3;
      BURST          at 0 range 4 .. 5;
      LDBSTOP        at 0 range 6 .. 6;
      LDBDIS         at 0 range 7 .. 7;
      ETRGEDG        at 0 range 8 .. 9;
      ABETRG         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CPCTRG         at 0 range 14 .. 14;
      WAVE           at 0 range 15 .. 15;
      LDRA           at 0 range 16 .. 17;
      LDRB           at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Clock Selection
   type CMR_WAVEFORM0_TCCLKSSelect is
     (
      --  TIMER_DIV1_CLOCK
      Timer_Div1_Clock,
      --  TIMER_DIV2_CLOCK
      Timer_Div2_Clock,
      --  TIMER_DIV3_CLOCK
      Timer_Div3_Clock,
      --  TIMER_DIV4_CLOCK
      Timer_Div4_Clock,
      --  TIMER_DIV5_CLOCK
      Timer_Div5_Clock,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 3;
   for CMR_WAVEFORM0_TCCLKSSelect use
     (Timer_Div1_Clock => 0,
      Timer_Div2_Clock => 1,
      Timer_Div3_Clock => 2,
      Timer_Div4_Clock => 3,
      Timer_Div5_Clock => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Clock Invert
   type CMR_WAVEFORM0_CLKISelect is
     (
      --  Counter is incremented on rising edge of the clock.
      CMR_WAVEFORM0_CLKISelect_0,
      --  Counter is incremented on falling edge of the clock.
      CMR_WAVEFORM0_CLKISelect_1)
     with Size => 1;
   for CMR_WAVEFORM0_CLKISelect use
     (CMR_WAVEFORM0_CLKISelect_0 => 0,
      CMR_WAVEFORM0_CLKISelect_1 => 1);

   --  Burst Signal Selection
   type CMR_WAVEFORM0_BURSTSelect is
     (
      --  The clock is not gated by an external signal.
      Not_Gated,
      --  XC0 is ANDed with the selected clock.
      Clk_And_Xc0,
      --  XC1 is ANDed with the selected clock.
      Clk_And_Xc1,
      --  XC2 is ANDed with the selected clock.
      Clk_And_Xc2)
     with Size => 2;
   for CMR_WAVEFORM0_BURSTSelect use
     (Not_Gated => 0,
      Clk_And_Xc0 => 1,
      Clk_And_Xc1 => 2,
      Clk_And_Xc2 => 3);

   --  Counter Clock Stopped with RC Compare
   type CMR_WAVEFORM0_CPCSTOPSelect is
     (
      --  Counter clock is not stopped when counter reaches RC.
      CMR_WAVEFORM0_CPCSTOPSelect_0,
      --  Counter clock is stopped when counter reaches RC.
      CMR_WAVEFORM0_CPCSTOPSelect_1)
     with Size => 1;
   for CMR_WAVEFORM0_CPCSTOPSelect use
     (CMR_WAVEFORM0_CPCSTOPSelect_0 => 0,
      CMR_WAVEFORM0_CPCSTOPSelect_1 => 1);

   --  Counter Clock Disable with RC Compare
   type CMR_WAVEFORM0_CPCDISSelect is
     (
      --  Counter clock is not disabled when counter reaches RC.
      CMR_WAVEFORM0_CPCDISSelect_0,
      --  Counter clock is disabled when counter reaches RC.
      CMR_WAVEFORM0_CPCDISSelect_1)
     with Size => 1;
   for CMR_WAVEFORM0_CPCDISSelect use
     (CMR_WAVEFORM0_CPCDISSelect_0 => 0,
      CMR_WAVEFORM0_CPCDISSelect_1 => 1);

   --  External Event Edge Selection
   type CMR_WAVEFORM0_EEVTEDGSelect is
     (
      --  none
      No_Edge,
      --  rising edge
      Pos_Edge,
      --  falling edge
      Neg_Edge,
      --  each edge
      Both_Edges)
     with Size => 2;
   for CMR_WAVEFORM0_EEVTEDGSelect use
     (No_Edge => 0,
      Pos_Edge => 1,
      Neg_Edge => 2,
      Both_Edges => 3);

   --  External Event Selection
   type CMR_WAVEFORM0_EEVTSelect is
     (
      --  TIOB input. If TIOB is chosen as the external event signal, it is
      --  configured as an input and no longer generates waveforms.
      Tiob_Input,
      --  XC0 output
      Xc0_Output,
      --  XC1 output
      Xc1_Output,
      --  XC2 output
      Xc2_Output)
     with Size => 2;
   for CMR_WAVEFORM0_EEVTSelect use
     (Tiob_Input => 0,
      Xc0_Output => 1,
      Xc1_Output => 2,
      Xc2_Output => 3);

   --  External Event Trigger Enable
   type CMR_WAVEFORM0_ENETRGSelect is
     (
      --  The external event has no effect on the counter and its clock. In
      --  this case, the selected external event only controls the TIOA output.
      CMR_WAVEFORM0_ENETRGSelect_0,
      --  The external event resets the counter and starts the counter clock.
      CMR_WAVEFORM0_ENETRGSelect_1)
     with Size => 1;
   for CMR_WAVEFORM0_ENETRGSelect use
     (CMR_WAVEFORM0_ENETRGSelect_0 => 0,
      CMR_WAVEFORM0_ENETRGSelect_1 => 1);

   --  Waveform Selection
   type CMR_WAVEFORM0_WAVSELSelect is
     (
      --  UP mode without automatic trigger on RC Compare
      Up_No_Auto,
      --  UPDOWN mode without automatic trigger on RC Compare
      Updown_No_Auto,
      --  UP mode with automatic trigger on RC Compare
      Up_Auto,
      --  UPDOWN mode with automatic trigger on RC Compare
      Updown_Auto)
     with Size => 2;
   for CMR_WAVEFORM0_WAVSELSelect use
     (Up_No_Auto => 0,
      Updown_No_Auto => 1,
      Up_Auto => 2,
      Updown_Auto => 3);

   --  WAVE
   type CMR_WAVEFORM0_WAVESelect is
     (
      --  Waveform Mode is disabled (Capture Mode is enabled).
      CMR_WAVEFORM0_WAVESelect_0,
      --  Waveform Mode is enabled.
      CMR_WAVEFORM0_WAVESelect_1)
     with Size => 1;
   for CMR_WAVEFORM0_WAVESelect use
     (CMR_WAVEFORM0_WAVESelect_0 => 0,
      CMR_WAVEFORM0_WAVESelect_1 => 1);

   --  RA Compare Effect on TIOA
   type CMR_WAVEFORM0_ACPASelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_ACPASelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOA
   type CMR_WAVEFORM0_ACPCSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_ACPCSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOA
   type CMR_WAVEFORM0_AEEVTSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_AEEVTSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOA
   type CMR_WAVEFORM0_ASWTRGSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_ASWTRGSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RB Compare Effect on TIOB
   type CMR_WAVEFORM0_BCPBSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_BCPBSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOB
   type CMR_WAVEFORM0_BCPCSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_BCPCSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOB
   type CMR_WAVEFORM0_BEEVTSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_BEEVTSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOB
   type CMR_WAVEFORM0_BSWTRGSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for CMR_WAVEFORM0_BSWTRGSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Channel Mode Register Channel
   type CMR_WAVEFORM_Register is record
      --  Clock Selection
      TCCLKS  : CMR_WAVEFORM0_TCCLKSSelect := SAM_SVD.TC.Timer_Div1_Clock;
      --  Clock Invert
      CLKI    : CMR_WAVEFORM0_CLKISelect :=
                 SAM_SVD.TC.CMR_WAVEFORM0_CLKISelect_0;
      --  Burst Signal Selection
      BURST   : CMR_WAVEFORM0_BURSTSelect := SAM_SVD.TC.Not_Gated;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : CMR_WAVEFORM0_CPCSTOPSelect :=
                 SAM_SVD.TC.CMR_WAVEFORM0_CPCSTOPSelect_0;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : CMR_WAVEFORM0_CPCDISSelect :=
                 SAM_SVD.TC.CMR_WAVEFORM0_CPCDISSelect_0;
      --  External Event Edge Selection
      EEVTEDG : CMR_WAVEFORM0_EEVTEDGSelect := SAM_SVD.TC.No_Edge;
      --  External Event Selection
      EEVT    : CMR_WAVEFORM0_EEVTSelect := SAM_SVD.TC.Tiob_Input;
      --  External Event Trigger Enable
      ENETRG  : CMR_WAVEFORM0_ENETRGSelect :=
                 SAM_SVD.TC.CMR_WAVEFORM0_ENETRGSelect_0;
      --  Waveform Selection
      WAVSEL  : CMR_WAVEFORM0_WAVSELSelect := SAM_SVD.TC.Up_No_Auto;
      --  WAVE
      WAVE    : CMR_WAVEFORM0_WAVESelect :=
                 SAM_SVD.TC.CMR_WAVEFORM0_WAVESelect_0;
      --  RA Compare Effect on TIOA
      ACPA    : CMR_WAVEFORM0_ACPASelect := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOA
      ACPC    : CMR_WAVEFORM0_ACPCSelect := SAM_SVD.TC.None;
      --  External Event Effect on TIOA
      AEEVT   : CMR_WAVEFORM0_AEEVTSelect := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR_WAVEFORM0_ASWTRGSelect := SAM_SVD.TC.None;
      --  RB Compare Effect on TIOB
      BCPB    : CMR_WAVEFORM0_BCPBSelect := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOB
      BCPC    : CMR_WAVEFORM0_BCPCSelect := SAM_SVD.TC.None;
      --  External Event Effect on TIOB
      BEEVT   : CMR_WAVEFORM0_BEEVTSelect := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR_WAVEFORM0_BSWTRGSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_WAVEFORM_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Stepper Motor Mode Register
   type SMMR_Register is record
      --  Gray Count Enable
      GCEN          : Boolean := False;
      --  Down Count
      DOWN          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMMR_Register use record
      GCEN          at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CV_CV_Field is HAL.UInt16;

   --  Counter Value Channel
   type CV_Register is record
      --  Read-only. Counter Value
      CV             : CV_CV_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CV_Register use record
      CV             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RA_RA_Field is HAL.UInt16;

   --  Register A Channel
   type RA_Register is record
      --  Register A
      RA             : RA_RA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RA_Register use record
      RA             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RB_RB_Field is HAL.UInt16;

   --  Register B Channel
   type RB_Register is record
      --  Register B
      RB             : RB_RB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RB_Register use record
      RB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RC_RC_Field is HAL.UInt16;

   --  Register C Channel
   type RC_Register is record
      --  Register C
      RC             : RC_RC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RC_Register use record
      RC             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter Overflow Status
   type SR0_COVFSSelect is
     (
      --  No counter overflow has occurred since the last read of the Status
      --  Register.
      SR0_COVFSSelect_0,
      --  A counter overflow has occurred since the last read of the Status
      --  Register.
      SR0_COVFSSelect_1)
     with Size => 1;
   for SR0_COVFSSelect use
     (SR0_COVFSSelect_0 => 0,
      SR0_COVFSSelect_1 => 1);

   --  Load Overrun Status
   type SR0_LOVRSSelect is
     (
      --  Load overrun has not occurred since the last read of the Status
      --  Register or WAVE:1.
      SR0_LOVRSSelect_0,
      --  RA or RB have been loaded at least twice without any read of the
      --  corresponding register since the last read of the StatusRegister, if
      --  WAVE:0.
      SR0_LOVRSSelect_1)
     with Size => 1;
   for SR0_LOVRSSelect use
     (SR0_LOVRSSelect_0 => 0,
      SR0_LOVRSSelect_1 => 1);

   --  RA Compare Status
   type SR0_CPASSelect is
     (
      --  RA Compare has not occurred since the last read of the Status
      --  Register or WAVE:0.
      SR0_CPASSelect_0,
      --  RA Compare has occurred since the last read of the Status Register,
      --  if WAVE:1.
      SR0_CPASSelect_1)
     with Size => 1;
   for SR0_CPASSelect use
     (SR0_CPASSelect_0 => 0,
      SR0_CPASSelect_1 => 1);

   --  RB Compare Status
   type SR0_CPBSSelect is
     (
      --  RB Compare has not occurred since the last read of the Status
      --  Register or WAVE:0.
      SR0_CPBSSelect_0,
      --  RB Compare has occurred since the last read of the Status Register,
      --  if WAVE:1.
      SR0_CPBSSelect_1)
     with Size => 1;
   for SR0_CPBSSelect use
     (SR0_CPBSSelect_0 => 0,
      SR0_CPBSSelect_1 => 1);

   --  RC Compare Status
   type SR0_CPCSSelect is
     (
      --  RC Compare has not occurred since the last read of the Status
      --  Register.
      SR0_CPCSSelect_0,
      --  RC Compare has occurred since the last read of the Status Register.
      SR0_CPCSSelect_1)
     with Size => 1;
   for SR0_CPCSSelect use
     (SR0_CPCSSelect_0 => 0,
      SR0_CPCSSelect_1 => 1);

   --  RA Loading Status
   type SR0_LDRASSelect is
     (
      --  RA Load has not occurred since the last read of the Status Register
      --  or WAVE:1.
      SR0_LDRASSelect_0,
      --  RA Load has occurred since the last read of the Status Register, if
      --  WAVE:0.
      SR0_LDRASSelect_1)
     with Size => 1;
   for SR0_LDRASSelect use
     (SR0_LDRASSelect_0 => 0,
      SR0_LDRASSelect_1 => 1);

   --  RB Loading Status
   type SR0_LDRBSSelect is
     (
      --  RB Load has not occurred since the last read of the Status Register
      --  or WAVE:1.
      SR0_LDRBSSelect_0,
      --  RB Load has occurred since the last read of the Status Register, if
      --  WAVE:0.
      SR0_LDRBSSelect_1)
     with Size => 1;
   for SR0_LDRBSSelect use
     (SR0_LDRBSSelect_0 => 0,
      SR0_LDRBSSelect_1 => 1);

   --  External Trigger Status
   type SR0_ETRGSSelect is
     (
      --  External trigger has not occurred since the last read of the Status
      --  Register.
      SR0_ETRGSSelect_0,
      --  External trigger has occurred since the last read of the Status
      --  Register.
      SR0_ETRGSSelect_1)
     with Size => 1;
   for SR0_ETRGSSelect use
     (SR0_ETRGSSelect_0 => 0,
      SR0_ETRGSSelect_1 => 1);

   --  Clock Enabling Status
   type SR0_CLKSTASelect is
     (
      --  Clock is disabled.
      SR0_CLKSTASelect_0,
      --  Clock is enabled.
      SR0_CLKSTASelect_1)
     with Size => 1;
   for SR0_CLKSTASelect use
     (SR0_CLKSTASelect_0 => 0,
      SR0_CLKSTASelect_1 => 1);

   --  TIOA Mirror
   type SR0_MTIOASelect is
     (
      --  TIOA is low. If WAVE:0, this means that TIOA pin is low. If WAVE:1,
      --  this means that TIOA is driven low.
      SR0_MTIOASelect_0,
      --  TIOA is high. If WAVE:0, this means that TIOA pin is high. If WAVE:1,
      --  this means that TIOA is driven high.
      SR0_MTIOASelect_1)
     with Size => 1;
   for SR0_MTIOASelect use
     (SR0_MTIOASelect_0 => 0,
      SR0_MTIOASelect_1 => 1);

   --  TIOB Mirror
   type SR0_MTIOBSelect is
     (
      --  TIOB is low. If WAVE:0, this means that TIOB pin is low. If WAVE:1,
      --  this means that TIOB is driven low.
      SR0_MTIOBSelect_0,
      --  TIOB is high. If WAVE:0, this means that TIOB pin is high. If WAVE:1,
      --  this means that TIOB is driven high.
      SR0_MTIOBSelect_1)
     with Size => 1;
   for SR0_MTIOBSelect use
     (SR0_MTIOBSelect_0 => 0,
      SR0_MTIOBSelect_1 => 1);

   --  Status Register Channel
   type SR_Register is record
      --  Read-only. Counter Overflow Status
      COVFS          : SR0_COVFSSelect;
      --  Read-only. Load Overrun Status
      LOVRS          : SR0_LOVRSSelect;
      --  Read-only. RA Compare Status
      CPAS           : SR0_CPASSelect;
      --  Read-only. RB Compare Status
      CPBS           : SR0_CPBSSelect;
      --  Read-only. RC Compare Status
      CPCS           : SR0_CPCSSelect;
      --  Read-only. RA Loading Status
      LDRAS          : SR0_LDRASSelect;
      --  Read-only. RB Loading Status
      LDRBS          : SR0_LDRBSSelect;
      --  Read-only. External Trigger Status
      ETRGS          : SR0_ETRGSSelect;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Clock Enabling Status
      CLKSTA         : SR0_CLKSTASelect;
      --  Read-only. TIOA Mirror
      MTIOA          : SR0_MTIOASelect;
      --  Read-only. TIOB Mirror
      MTIOB          : SR0_MTIOBSelect;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CLKSTA         at 0 range 16 .. 16;
      MTIOA          at 0 range 17 .. 17;
      MTIOB          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Counter Overflow
   type IER0_COVFSSelect is
     (
      --  No effect.
      IER0_COVFSSelect_0,
      --  Enables the Counter Overflow Interrupt.
      IER0_COVFSSelect_1)
     with Size => 1;
   for IER0_COVFSSelect use
     (IER0_COVFSSelect_0 => 0,
      IER0_COVFSSelect_1 => 1);

   --  Load Overrun
   type IER0_LOVRSSelect is
     (
      --  No effect.
      IER0_LOVRSSelect_0,
      --  Enables the Load Overrun Interrupt.
      IER0_LOVRSSelect_1)
     with Size => 1;
   for IER0_LOVRSSelect use
     (IER0_LOVRSSelect_0 => 0,
      IER0_LOVRSSelect_1 => 1);

   --  RA Compare
   type IER0_CPASSelect is
     (
      --  No effect.
      IER0_CPASSelect_0,
      --  Enables the RA Compare Interrupt.
      IER0_CPASSelect_1)
     with Size => 1;
   for IER0_CPASSelect use
     (IER0_CPASSelect_0 => 0,
      IER0_CPASSelect_1 => 1);

   --  RB Compare
   type IER0_CPBSSelect is
     (
      --  No effect.
      IER0_CPBSSelect_0,
      --  Enables the RB Compare Interrupt.
      IER0_CPBSSelect_1)
     with Size => 1;
   for IER0_CPBSSelect use
     (IER0_CPBSSelect_0 => 0,
      IER0_CPBSSelect_1 => 1);

   --  RC Compare
   type IER0_CPCSSelect is
     (
      --  No effect.
      IER0_CPCSSelect_0,
      --  Enables the RC Compare Interrupt.
      IER0_CPCSSelect_1)
     with Size => 1;
   for IER0_CPCSSelect use
     (IER0_CPCSSelect_0 => 0,
      IER0_CPCSSelect_1 => 1);

   --  RA Loading
   type IER0_LDRASSelect is
     (
      --  No effect.
      IER0_LDRASSelect_0,
      --  Enables the RA Load Interrupt.
      IER0_LDRASSelect_1)
     with Size => 1;
   for IER0_LDRASSelect use
     (IER0_LDRASSelect_0 => 0,
      IER0_LDRASSelect_1 => 1);

   --  RB Loading
   type IER0_LDRBSSelect is
     (
      --  No effect.
      IER0_LDRBSSelect_0,
      --  Enables the RB Load Interrupt.
      IER0_LDRBSSelect_1)
     with Size => 1;
   for IER0_LDRBSSelect use
     (IER0_LDRBSSelect_0 => 0,
      IER0_LDRBSSelect_1 => 1);

   --  External Trigger
   type IER0_ETRGSSelect is
     (
      --  No effect.
      IER0_ETRGSSelect_0,
      --  Enables the External Trigger Interrupt.
      IER0_ETRGSSelect_1)
     with Size => 1;
   for IER0_ETRGSSelect use
     (IER0_ETRGSSelect_0 => 0,
      IER0_ETRGSSelect_1 => 1);

   --  Interrupt Enable Register Channel
   type IER_Register is record
      --  Write-only. Counter Overflow
      COVFS         : IER0_COVFSSelect := SAM_SVD.TC.IER0_COVFSSelect_0;
      --  Write-only. Load Overrun
      LOVRS         : IER0_LOVRSSelect := SAM_SVD.TC.IER0_LOVRSSelect_0;
      --  Write-only. RA Compare
      CPAS          : IER0_CPASSelect := SAM_SVD.TC.IER0_CPASSelect_0;
      --  Write-only. RB Compare
      CPBS          : IER0_CPBSSelect := SAM_SVD.TC.IER0_CPBSSelect_0;
      --  Write-only. RC Compare
      CPCS          : IER0_CPCSSelect := SAM_SVD.TC.IER0_CPCSSelect_0;
      --  Write-only. RA Loading
      LDRAS         : IER0_LDRASSelect := SAM_SVD.TC.IER0_LDRASSelect_0;
      --  Write-only. RB Loading
      LDRBS         : IER0_LDRBSSelect := SAM_SVD.TC.IER0_LDRBSSelect_0;
      --  Write-only. External Trigger
      ETRGS         : IER0_ETRGSSelect := SAM_SVD.TC.IER0_ETRGSSelect_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Counter Overflow
   type IDR0_COVFSSelect is
     (
      --  No effect.
      IDR0_COVFSSelect_0,
      --  Disables the Counter Overflow Interrupt.
      IDR0_COVFSSelect_1)
     with Size => 1;
   for IDR0_COVFSSelect use
     (IDR0_COVFSSelect_0 => 0,
      IDR0_COVFSSelect_1 => 1);

   --  Load Overrun
   type IDR0_LOVRSSelect is
     (
      --  No effect.
      IDR0_LOVRSSelect_0,
      --  Disables the Load Overrun Interrupt (if WAVE:0).
      IDR0_LOVRSSelect_1)
     with Size => 1;
   for IDR0_LOVRSSelect use
     (IDR0_LOVRSSelect_0 => 0,
      IDR0_LOVRSSelect_1 => 1);

   --  RA Compare
   type IDR0_CPASSelect is
     (
      --  No effect.
      IDR0_CPASSelect_0,
      --  Disables the RA Compare Interrupt (if WAVE:1).
      IDR0_CPASSelect_1)
     with Size => 1;
   for IDR0_CPASSelect use
     (IDR0_CPASSelect_0 => 0,
      IDR0_CPASSelect_1 => 1);

   --  RB Compare
   type IDR0_CPBSSelect is
     (
      --  No effect.
      IDR0_CPBSSelect_0,
      --  Disables the RB Compare Interrupt (if WAVE:1).
      IDR0_CPBSSelect_1)
     with Size => 1;
   for IDR0_CPBSSelect use
     (IDR0_CPBSSelect_0 => 0,
      IDR0_CPBSSelect_1 => 1);

   --  RC Compare
   type IDR0_CPCSSelect is
     (
      --  No effect.
      IDR0_CPCSSelect_0,
      --  Disables the RC Compare Interrupt.
      IDR0_CPCSSelect_1)
     with Size => 1;
   for IDR0_CPCSSelect use
     (IDR0_CPCSSelect_0 => 0,
      IDR0_CPCSSelect_1 => 1);

   --  RA Loading
   type IDR0_LDRASSelect is
     (
      --  No effect.
      IDR0_LDRASSelect_0,
      --  Disables the RA Load Interrupt (if WAVE:0).
      IDR0_LDRASSelect_1)
     with Size => 1;
   for IDR0_LDRASSelect use
     (IDR0_LDRASSelect_0 => 0,
      IDR0_LDRASSelect_1 => 1);

   --  RB Loading
   type IDR0_LDRBSSelect is
     (
      --  No effect.
      IDR0_LDRBSSelect_0,
      --  Disables the RB Load Interrupt (if WAVE:0).
      IDR0_LDRBSSelect_1)
     with Size => 1;
   for IDR0_LDRBSSelect use
     (IDR0_LDRBSSelect_0 => 0,
      IDR0_LDRBSSelect_1 => 1);

   --  External Trigger
   type IDR0_ETRGSSelect is
     (
      --  No effect.
      IDR0_ETRGSSelect_0,
      --  Disables the External Trigger Interrupt.
      IDR0_ETRGSSelect_1)
     with Size => 1;
   for IDR0_ETRGSSelect use
     (IDR0_ETRGSSelect_0 => 0,
      IDR0_ETRGSSelect_1 => 1);

   --  Interrupt Disable Register Channel
   type IDR_Register is record
      --  Write-only. Counter Overflow
      COVFS         : IDR0_COVFSSelect := SAM_SVD.TC.IDR0_COVFSSelect_0;
      --  Write-only. Load Overrun
      LOVRS         : IDR0_LOVRSSelect := SAM_SVD.TC.IDR0_LOVRSSelect_0;
      --  Write-only. RA Compare
      CPAS          : IDR0_CPASSelect := SAM_SVD.TC.IDR0_CPASSelect_0;
      --  Write-only. RB Compare
      CPBS          : IDR0_CPBSSelect := SAM_SVD.TC.IDR0_CPBSSelect_0;
      --  Write-only. RC Compare
      CPCS          : IDR0_CPCSSelect := SAM_SVD.TC.IDR0_CPCSSelect_0;
      --  Write-only. RA Loading
      LDRAS         : IDR0_LDRASSelect := SAM_SVD.TC.IDR0_LDRASSelect_0;
      --  Write-only. RB Loading
      LDRBS         : IDR0_LDRBSSelect := SAM_SVD.TC.IDR0_LDRBSSelect_0;
      --  Write-only. External Trigger
      ETRGS         : IDR0_ETRGSSelect := SAM_SVD.TC.IDR0_ETRGSSelect_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Counter Overflow
   type IMR0_COVFSSelect is
     (
      --  The Counter Overflow Interrupt is disabled.
      IMR0_COVFSSelect_0,
      --  The Counter Overflow Interrupt is enabled.
      IMR0_COVFSSelect_1)
     with Size => 1;
   for IMR0_COVFSSelect use
     (IMR0_COVFSSelect_0 => 0,
      IMR0_COVFSSelect_1 => 1);

   --  Load Overrun
   type IMR0_LOVRSSelect is
     (
      --  The Load Overrun Interrupt is disabled.
      IMR0_LOVRSSelect_0,
      --  The Load Overrun Interrupt is enabled.
      IMR0_LOVRSSelect_1)
     with Size => 1;
   for IMR0_LOVRSSelect use
     (IMR0_LOVRSSelect_0 => 0,
      IMR0_LOVRSSelect_1 => 1);

   --  RA Compare
   type IMR0_CPASSelect is
     (
      --  The RA Compare Interrupt is disabled.
      IMR0_CPASSelect_0,
      --  The RA Compare Interrupt is enabled.
      IMR0_CPASSelect_1)
     with Size => 1;
   for IMR0_CPASSelect use
     (IMR0_CPASSelect_0 => 0,
      IMR0_CPASSelect_1 => 1);

   --  RB Compare
   type IMR0_CPBSSelect is
     (
      --  The RB Compare Interrupt is disabled.
      IMR0_CPBSSelect_0,
      --  The RB Compare Interrupt is enabled.
      IMR0_CPBSSelect_1)
     with Size => 1;
   for IMR0_CPBSSelect use
     (IMR0_CPBSSelect_0 => 0,
      IMR0_CPBSSelect_1 => 1);

   --  RC Compare
   type IMR0_CPCSSelect is
     (
      --  The RC Compare Interrupt is disabled.
      IMR0_CPCSSelect_0,
      --  The RC Compare Interrupt is enabled.
      IMR0_CPCSSelect_1)
     with Size => 1;
   for IMR0_CPCSSelect use
     (IMR0_CPCSSelect_0 => 0,
      IMR0_CPCSSelect_1 => 1);

   --  RA Loading
   type IMR0_LDRASSelect is
     (
      --  The Load RA Interrupt is disabled.
      IMR0_LDRASSelect_0,
      --  The Load RA Interrupt is enabled.
      IMR0_LDRASSelect_1)
     with Size => 1;
   for IMR0_LDRASSelect use
     (IMR0_LDRASSelect_0 => 0,
      IMR0_LDRASSelect_1 => 1);

   --  RB Loading
   type IMR0_LDRBSSelect is
     (
      --  The Load RB Interrupt is disabled.
      IMR0_LDRBSSelect_0,
      --  The Load RB Interrupt is enabled.
      IMR0_LDRBSSelect_1)
     with Size => 1;
   for IMR0_LDRBSSelect use
     (IMR0_LDRBSSelect_0 => 0,
      IMR0_LDRBSSelect_1 => 1);

   --  External Trigger
   type IMR0_ETRGSSelect is
     (
      --  The External Trigger Interrupt is disabled.
      IMR0_ETRGSSelect_0,
      --  The External Trigger Interrupt is enabled.
      IMR0_ETRGSSelect_1)
     with Size => 1;
   for IMR0_ETRGSSelect use
     (IMR0_ETRGSSelect_0 => 0,
      IMR0_ETRGSSelect_1 => 1);

   --  Interrupt Mask Register Channel
   type IMR_Register is record
      --  Read-only. Counter Overflow
      COVFS         : IMR0_COVFSSelect;
      --  Read-only. Load Overrun
      LOVRS         : IMR0_LOVRSSelect;
      --  Read-only. RA Compare
      CPAS          : IMR0_CPASSelect;
      --  Read-only. RB Compare
      CPBS          : IMR0_CPBSSelect;
      --  Read-only. RC Compare
      CPCS          : IMR0_CPCSSelect;
      --  Read-only. RA Loading
      LDRAS         : IMR0_LDRASSelect;
      --  Read-only. RB Loading
      LDRBS         : IMR0_LDRBSSelect;
      --  Read-only. External Trigger
      ETRGS         : IMR0_ETRGSSelect;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Synchro Command
   type BCR_SYNCSelect is
     (
      --  No effect.
      BCR_SYNCSelect_0,
      --  Asserts the SYNC signal which generates a software trigger
      --  simultaneously for each of the channels.
      BCR_SYNCSelect_1)
     with Size => 1;
   for BCR_SYNCSelect use
     (BCR_SYNCSelect_0 => 0,
      BCR_SYNCSelect_1 => 1);

   --  TC Block Control Register
   type TC_BCR_Register is record
      --  Write-only. Synchro Command
      SYNC          : BCR_SYNCSelect := SAM_SVD.TC.BCR_SYNCSelect_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_BCR_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  External Clock Signal 0 Selection
   type BMR_TC0XC0SSelect is
     (
      --  Select TCLK0 as clock signal 0.
      Tclk0,
      --  Select no clock as clock signal 0.
      No_Clk,
      --  Select TIOA1 as clock signal 0.
      Tioa1,
      --  Select TIOA2 as clock signal 0.
      Tioa2)
     with Size => 2;
   for BMR_TC0XC0SSelect use
     (Tclk0 => 0,
      No_Clk => 1,
      Tioa1 => 2,
      Tioa2 => 3);

   --  External Clock Signal 1 Selection
   type BMR_TC1XC1SSelect is
     (
      --  Select TCLK1 as clock signal 1.
      Tclk1,
      --  Select no clock as clock signal 1.
      No_Clk,
      --  Select TIOA0 as clock signal 1.
      Tioa0,
      --  Select TIOA2 as clock signal 1.
      Tioa2)
     with Size => 2;
   for BMR_TC1XC1SSelect use
     (Tclk1 => 0,
      No_Clk => 1,
      Tioa0 => 2,
      Tioa2 => 3);

   --  External Clock Signal 2 Selection
   type BMR_TC2XC2SSelect is
     (
      --  Select TCLK2 as clock signal 2.
      Tclk2,
      --  Select no clock as clock signal 2.
      No_Clk,
      --  Select TIOA0 as clock signal 2.
      Tioa0,
      --  Select TIOA1 as clock signal 2.
      Tioa1)
     with Size => 2;
   for BMR_TC2XC2SSelect use
     (Tclk2 => 0,
      No_Clk => 1,
      Tioa0 => 2,
      Tioa1 => 3);

   --  TC Block Mode Register
   type TC_BMR_Register is record
      --  External Clock Signal 0 Selection
      TC0XC0S       : BMR_TC0XC0SSelect := SAM_SVD.TC.Tclk0;
      --  External Clock Signal 1 Selection
      TC1XC1S       : BMR_TC1XC1SSelect := SAM_SVD.TC.Tclk1;
      --  External Clock Signal 2 Selection
      TC2XC2S       : BMR_TC2XC2SSelect := SAM_SVD.TC.Tclk2;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_BMR_Register use record
      TC0XC0S       at 0 range 0 .. 1;
      TC1XC1S       at 0 range 2 .. 3;
      TC2XC2S       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype TC_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type TC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : TC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype TC_FEATURES_CTRSIZE_Field is HAL.UInt8;

   --  Features Register
   type TC_FEATURES_Register is record
      --  Read-only. Counter Size
      CTRSIZE        : TC_FEATURES_CTRSIZE_Field;
      --  Read-only. Up Down is Implemented
      UPDNIMPL       : Boolean;
      --  Read-only. Bridge Type is PB to HSB
      BRPBHSB        : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_FEATURES_Register use record
      CTRSIZE        at 0 range 0 .. 7;
      UPDNIMPL       at 0 range 8 .. 8;
      BRPBHSB        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TC_VERSION_VERSION_Field is HAL.UInt12;
   subtype TC_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type TC_VERSION_Register is record
      --  Read-only. Reserved. Value subject to change. No functionality
      --  associated. This is the Atmel internal version of the macrocell.
      VERSION        : TC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Reserved. Value subject to change. No functionality
      --  associated.
      VARIANT        : TC_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TC0_Disc is
     (
      Capture0,
      Waveform0,
      Capture1,
      Waveform1,
      Capture2,
      Waveform2);

   --  Timer/Counter 0
   type TC_Peripheral
     (Discriminent : TC0_Disc := Capture0)
   is record
      --  Channel Control Register Channel
      CCR0          : aliased CCR_Register;
      --  Stepper Motor Mode Register
      SMMR0         : aliased SMMR_Register;
      --  Counter Value Channel
      CV0           : aliased CV_Register;
      --  Register A Channel
      RA0           : aliased RA_Register;
      --  Register B Channel
      RB0           : aliased RB_Register;
      --  Register C Channel
      RC0           : aliased RC_Register;
      --  Status Register Channel
      SR0           : aliased SR_Register;
      --  Interrupt Enable Register Channel
      IER0          : aliased IER_Register;
      --  Interrupt Disable Register Channel
      IDR0          : aliased IDR_Register;
      --  Interrupt Mask Register Channel
      IMR0          : aliased IMR_Register;
      --  Channel Control Register Channel
      CCR1          : aliased CCR_Register;
      --  Stepper Motor Mode Register
      SMMR1         : aliased SMMR_Register;
      --  Counter Value Channel
      CV1           : aliased CV_Register;
      --  Register A Channel
      RA1           : aliased RA_Register;
      --  Register B Channel
      RB1           : aliased RB_Register;
      --  Register C Channel
      RC1           : aliased RC_Register;
      --  Status Register Channel
      SR1           : aliased SR_Register;
      --  Interrupt Enable Register Channel
      IER1          : aliased IER_Register;
      --  Interrupt Disable Register Channel
      IDR1          : aliased IDR_Register;
      --  Interrupt Mask Register Channel
      IMR1          : aliased IMR_Register;
      --  Channel Control Register Channel
      CCR2          : aliased CCR_Register;
      --  Stepper Motor Mode Register
      SMMR2         : aliased SMMR_Register;
      --  Counter Value Channel
      CV2           : aliased CV_Register;
      --  Register A Channel
      RA2           : aliased RA_Register;
      --  Register B Channel
      RB2           : aliased RB_Register;
      --  Register C Channel
      RC2           : aliased RC_Register;
      --  Status Register Channel
      SR2           : aliased SR_Register;
      --  Interrupt Enable Register Channel
      IER2          : aliased IER_Register;
      --  Interrupt Disable Register Channel
      IDR2          : aliased IDR_Register;
      --  Interrupt Mask Register Channel
      IMR2          : aliased IMR_Register;
      --  TC Block Control Register
      BCR           : aliased TC_BCR_Register;
      --  TC Block Mode Register
      BMR           : aliased TC_BMR_Register;
      --  Write Protect Mode Register
      WPMR          : aliased TC_WPMR_Register;
      --  Features Register
      FEATURES      : aliased TC_FEATURES_Register;
      --  Version Register
      VERSION       : aliased TC_VERSION_Register;
      case Discriminent is
         when Capture0 =>
            --  Channel Mode Register Channel
            CMR_CAPTURE0 : aliased CMR_CAPTURE_Register;
         when Waveform0 =>
            --  Channel Mode Register Channel
            CMR_WAVEFORM0 : aliased CMR_WAVEFORM_Register;
         when Capture1 =>
            --  Channel Mode Register Channel
            CMR_CAPTURE1 : aliased CMR_CAPTURE_Register;
         when Waveform1 =>
            --  Channel Mode Register Channel
            CMR_WAVEFORM1 : aliased CMR_WAVEFORM_Register;
         when Capture2 =>
            --  Channel Mode Register Channel
            CMR_CAPTURE2 : aliased CMR_CAPTURE_Register;
         when Waveform2 =>
            --  Channel Mode Register Channel
            CMR_WAVEFORM2 : aliased CMR_WAVEFORM_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC_Peripheral use record
      CCR0          at 16#0# range 0 .. 31;
      SMMR0         at 16#8# range 0 .. 31;
      CV0           at 16#10# range 0 .. 31;
      RA0           at 16#14# range 0 .. 31;
      RB0           at 16#18# range 0 .. 31;
      RC0           at 16#1C# range 0 .. 31;
      SR0           at 16#20# range 0 .. 31;
      IER0          at 16#24# range 0 .. 31;
      IDR0          at 16#28# range 0 .. 31;
      IMR0          at 16#2C# range 0 .. 31;
      CCR1          at 16#40# range 0 .. 31;
      SMMR1         at 16#48# range 0 .. 31;
      CV1           at 16#50# range 0 .. 31;
      RA1           at 16#54# range 0 .. 31;
      RB1           at 16#58# range 0 .. 31;
      RC1           at 16#5C# range 0 .. 31;
      SR1           at 16#60# range 0 .. 31;
      IER1          at 16#64# range 0 .. 31;
      IDR1          at 16#68# range 0 .. 31;
      IMR1          at 16#6C# range 0 .. 31;
      CCR2          at 16#80# range 0 .. 31;
      SMMR2         at 16#88# range 0 .. 31;
      CV2           at 16#90# range 0 .. 31;
      RA2           at 16#94# range 0 .. 31;
      RB2           at 16#98# range 0 .. 31;
      RC2           at 16#9C# range 0 .. 31;
      SR2           at 16#A0# range 0 .. 31;
      IER2          at 16#A4# range 0 .. 31;
      IDR2          at 16#A8# range 0 .. 31;
      IMR2          at 16#AC# range 0 .. 31;
      BCR           at 16#C0# range 0 .. 31;
      BMR           at 16#C4# range 0 .. 31;
      WPMR          at 16#E4# range 0 .. 31;
      FEATURES      at 16#F8# range 0 .. 31;
      VERSION       at 16#FC# range 0 .. 31;
      CMR_CAPTURE0  at 16#4# range 0 .. 31;
      CMR_WAVEFORM0 at 16#4# range 0 .. 31;
      CMR_CAPTURE1  at 16#44# range 0 .. 31;
      CMR_WAVEFORM1 at 16#44# range 0 .. 31;
      CMR_CAPTURE2  at 16#84# range 0 .. 31;
      CMR_WAVEFORM2 at 16#84# range 0 .. 31;
   end record;

   --  Timer/Counter 0
   TC0_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

   --  Timer/Counter 1
   TC1_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#40014000#);

end SAM_SVD.TC;
