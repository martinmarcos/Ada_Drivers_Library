--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54607.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SCT operation
   type CONFIG_UNIFY_Field is
     (
      --  The SCT operates as two 16-bit counters named COUNTER_L and
      --  COUNTER_H.
      Dual_Counter,
      --  The SCT operates as a unified 32-bit counter.
      Unified_Counter)
     with Size => 1;
   for CONFIG_UNIFY_Field use
     (Dual_Counter => 0,
      Unified_Counter => 1);

   --  SCT clock mode
   type CONFIG_CLKMODE_Field is
     (
      --  System Clock Mode. The system clock clocks the entire SCT module
      --  including the counter(s) and counter prescalers.
      System_Clock_Mode,
      --  Sampled System Clock Mode. The system clock clocks the SCT module,
      --  but the counter and prescalers are only enabled to count when the
      --  designated edge is detected on the input selected by the CKSEL field.
      --  The minimum pulse width on the selected clock-gate input is 1 bus
      --  clock period. This mode is the high-performance, sampled-clock mode.
      Sampled_System_Clock_Mode,
      --  SCT Input Clock Mode. The input/edge selected by the CKSEL field
      --  clocks the SCT module, including the counters and prescalers, after
      --  first being synchronized to the system clock. The minimum pulse width
      --  on the clock input is 1 bus clock period. This mode is the low-power,
      --  sampled-clock mode.
      Sct_Input_Clock_Mode,
      --  Asynchronous Mode. The entire SCT module is clocked directly by the
      --  input/edge selected by the CKSEL field. In this mode, the SCT outputs
      --  are switched synchronously to the SCT input clock - not the system
      --  clock. The input clock rate must be at least half the system clock
      --  rate and can be the same or faster than the system clock.
      Asynchronous_Mode)
     with Size => 2;
   for CONFIG_CLKMODE_Field use
     (System_Clock_Mode => 0,
      Sampled_System_Clock_Mode => 1,
      Sct_Input_Clock_Mode => 2,
      Asynchronous_Mode => 3);

   --  SCT clock select. The specific functionality of the designated
   --  input/edge is dependent on the CLKMODE bit selection in this register.
   type CONFIG_CKSEL_Field is
     (
      --  Rising edges on input 0.
      Input_0_Rising_Edges,
      --  Falling edges on input 0.
      Input_0_Falling_Edge,
      --  Rising edges on input 1.
      Input_1_Rising_Edges,
      --  Falling edges on input 1.
      Input_1_Falling_Edge,
      --  Rising edges on input 2.
      Input_2_Rising_Edges,
      --  Falling edges on input 2.
      Input_2_Falling_Edge,
      --  Rising edges on input 3.
      Input_3_Rising_Edges,
      --  Falling edges on input 3.
      Input_3_Falling_Edge)
     with Size => 4;
   for CONFIG_CKSEL_Field use
     (Input_0_Rising_Edges => 0,
      Input_0_Falling_Edge => 1,
      Input_1_Rising_Edges => 2,
      Input_1_Falling_Edge => 3,
      Input_2_Rising_Edges => 4,
      Input_2_Falling_Edge => 5,
      Input_3_Rising_Edges => 6,
      Input_3_Falling_Edge => 7);

   subtype CONFIG_INSYNC_Field is HAL.UInt4;

   --  SCT configuration register
   type CONFIG_Register is record
      --  SCT operation
      UNIFY          : CONFIG_UNIFY_Field := NRF_SVD.SCT.Dual_Counter;
      --  SCT clock mode
      CLKMODE        : CONFIG_CLKMODE_Field := NRF_SVD.SCT.System_Clock_Mode;
      --  SCT clock select. The specific functionality of the designated
      --  input/edge is dependent on the CLKMODE bit selection in this
      --  register.
      CKSEL          : CONFIG_CKSEL_Field := NRF_SVD.SCT.Input_0_Rising_Edges;
      --  A 1 in this bit prevents the lower match registers from being
      --  reloaded from their respective reload registers. Setting this bit
      --  eliminates the need to write to the reload registers MATCHREL if the
      --  match values are fixed. Software can write to set or clear this bit
      --  at any time. This bit applies to both the higher and lower registers
      --  when the UNIFY bit is set.
      NORELAOD_L     : Boolean := False;
      --  A 1 in this bit prevents the higher match registers from being
      --  reloaded from their respective reload registers. Setting this bit
      --  eliminates the need to write to the reload registers MATCHREL if the
      --  match values are fixed. Software can write to set or clear this bit
      --  at any time. This bit is not used when the UNIFY bit is set.
      NORELOAD_H     : Boolean := False;
      --  Synchronization for input N (bit 9 = input 0, bit 10 = input 1,, bit
      --  12 = input 3); all other bits are reserved. A 1 in one of these bits
      --  subjects the corresponding input to synchronization to the SCT clock,
      --  before it is used to create an event. If an input is known to already
      --  be synchronous to the SCT clock, this bit may be set to 0 for faster
      --  input response. (Note: The SCT clock is the system clock for CKMODEs
      --  0-2. It is the selected, asynchronous SCT input clock for CKMODE3).
      --  Note that the INSYNC field only affects inputs used for event
      --  generation. It does not apply to the clock input specified in the
      --  CKSEL field.
      INSYNC         : CONFIG_INSYNC_Field := 16#F#;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  A one in this bit causes a match on match register 0 to be treated as
      --  a de-facto LIMIT condition without the need to define an associated
      --  event. As with any LIMIT event, this automatic limit causes the
      --  counter to be cleared to zero in unidirectional mode or to change the
      --  direction of count in bi-directional mode. Software can write to set
      --  or clear this bit at any time. This bit applies to both the higher
      --  and lower registers when the UNIFY bit is set.
      AUTOLIMIT_L    : Boolean := False;
      --  A one in this bit will cause a match on match register 0 to be
      --  treated as a de-facto LIMIT condition without the need to define an
      --  associated event. As with any LIMIT event, this automatic limit
      --  causes the counter to be cleared to zero in unidirectional mode or to
      --  change the direction of count in bi-directional mode. Software can
      --  write to set or clear this bit at any time. This bit is not used when
      --  the UNIFY bit is set.
      AUTOLIMIT_H    : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      UNIFY          at 0 range 0 .. 0;
      CLKMODE        at 0 range 1 .. 2;
      CKSEL          at 0 range 3 .. 6;
      NORELAOD_L     at 0 range 7 .. 7;
      NORELOAD_H     at 0 range 8 .. 8;
      INSYNC         at 0 range 9 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      AUTOLIMIT_L    at 0 range 17 .. 17;
      AUTOLIMIT_H    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  L or unified counter direction select
   type CTRL_BIDIR_L_Field is
     (
      --  Up. The counter counts up to a limit condition, then is cleared to
      --  zero.
      Up,
      --  Up-down. The counter counts up to a limit, then counts down to a
      --  limit condition or to 0.
      Up_Down)
     with Size => 1;
   for CTRL_BIDIR_L_Field use
     (Up => 0,
      Up_Down => 1);

   subtype CTRL_PRE_L_Field is HAL.UInt8;

   --  Direction select
   type CTRL_BIDIR_H_Field is
     (
      --  The H counter counts up to its limit condition, then is cleared to
      --  zero.
      Up,
      --  The H counter counts up to its limit, then counts down to a limit
      --  condition or to 0.
      Up_Down)
     with Size => 1;
   for CTRL_BIDIR_H_Field use
     (Up => 0,
      Up_Down => 1);

   subtype CTRL_PRE_H_Field is HAL.UInt8;

   --  SCT control register
   type CTRL_Register is record
      --  This bit is 1 when the L or unified counter is counting down.
      --  Hardware sets this bit when the counter is counting up, counter limit
      --  occurs, and BIDIR = 1.Hardware clears this bit when the counter is
      --  counting down and a limit condition occurs or when the counter
      --  reaches 0.
      DOWN_L         : Boolean := False;
      --  When this bit is 1 and HALT is 0, the L or unified counter does not
      --  run, but I/O events related to the counter can occur. If a designated
      --  start event occurs, this bit is cleared and counting resumes.
      STOP_L         : Boolean := False;
      --  When this bit is 1, the L or unified counter does not run and no
      --  events can occur. A reset sets this bit. When the HALT_L bit is one,
      --  the STOP_L bit is cleared. It is possible to remove the halt
      --  condition while keeping the SCT in the stop condition (not running)
      --  with a single write to this register to simultaneously clear the HALT
      --  bit and set the STOP bit. Once set, only software can clear this bit
      --  to restore counter operation. This bit is set on reset.
      HALT_L         : Boolean := True;
      --  Writing a 1 to this bit clears the L or unified counter. This bit
      --  always reads as 0.
      CLRCTR_L       : Boolean := False;
      --  L or unified counter direction select
      BIDIR_L        : CTRL_BIDIR_L_Field := NRF_SVD.SCT.Up;
      --  Specifies the factor by which the SCT clock is prescaled to produce
      --  the L or unified counter clock. The counter clock is clocked at the
      --  rate of the SCT clock divided by PRE_L+1. Clear the counter (by
      --  writing a 1 to the CLRCTR bit) whenever changing the PRE value.
      PRE_L          : CTRL_PRE_L_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  This bit is 1 when the H counter is counting down. Hardware sets this
      --  bit when the counter is counting, a counter limit condition occurs,
      --  and BIDIR is 1. Hardware clears this bit when the counter is counting
      --  down and a limit condition occurs or when the counter reaches 0.
      DOWN_H         : Boolean := False;
      --  When this bit is 1 and HALT is 0, the H counter does not, run but I/O
      --  events related to the counter can occur. If such an event matches the
      --  mask in the Start register, this bit is cleared and counting resumes.
      STOP_H         : Boolean := False;
      --  When this bit is 1, the H counter does not run and no events can
      --  occur. A reset sets this bit. When the HALT_H bit is one, the STOP_H
      --  bit is cleared. It is possible to remove the halt condition while
      --  keeping the SCT in the stop condition (not running) with a single
      --  write to this register to simultaneously clear the HALT bit and set
      --  the STOP bit. Once set, this bit can only be cleared by software to
      --  restore counter operation. This bit is set on reset.
      HALT_H         : Boolean := True;
      --  Writing a 1 to this bit clears the H counter. This bit always reads
      --  as 0.
      CLRCTR_H       : Boolean := False;
      --  Direction select
      BIDIR_H        : CTRL_BIDIR_H_Field := NRF_SVD.SCT.Up;
      --  Specifies the factor by which the SCT clock is prescaled to produce
      --  the H counter clock. The counter clock is clocked at the rate of the
      --  SCT clock divided by PRELH+1. Clear the counter (by writing a 1 to
      --  the CLRCTR bit) whenever changing the PRE value.
      PRE_H          : CTRL_PRE_H_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      DOWN_L         at 0 range 0 .. 0;
      STOP_L         at 0 range 1 .. 1;
      HALT_L         at 0 range 2 .. 2;
      CLRCTR_L       at 0 range 3 .. 3;
      BIDIR_L        at 0 range 4 .. 4;
      PRE_L          at 0 range 5 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DOWN_H         at 0 range 16 .. 16;
      STOP_H         at 0 range 17 .. 17;
      HALT_H         at 0 range 18 .. 18;
      CLRCTR_H       at 0 range 19 .. 19;
      BIDIR_H        at 0 range 20 .. 20;
      PRE_H          at 0 range 21 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype LIMIT_LIMMSK_L_Field is HAL.UInt16;
   subtype LIMIT_LIMMSK_H_Field is HAL.UInt16;

   --  SCT limit event select register
   type LIMIT_Register is record
      --  If bit n is one, event n is used as a counter limit for the L or
      --  unified counter (event 0 = bit 0, event 1 = bit 1, etc.). The number
      --  of bits = number of events in this SCT.
      LIMMSK_L : LIMIT_LIMMSK_L_Field := 16#0#;
      --  If bit n is one, event n is used as a counter limit for the H counter
      --  (event 0 = bit 16, event 1 = bit 17, etc.). The number of bits =
      --  number of events in this SCT.
      LIMMSK_H : LIMIT_LIMMSK_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIMIT_Register use record
      LIMMSK_L at 0 range 0 .. 15;
      LIMMSK_H at 0 range 16 .. 31;
   end record;

   subtype HALT_HALTMSK_L_Field is HAL.UInt16;
   subtype HALT_HALTMSK_H_Field is HAL.UInt16;

   --  SCT halt event select register
   type HALT_Register is record
      --  If bit n is one, event n sets the HALT_L bit in the CTRL register
      --  (event 0 = bit 0, event 1 = bit 1, etc.). The number of bits = number
      --  of events in this SCT.
      HALTMSK_L : HALT_HALTMSK_L_Field := 16#0#;
      --  If bit n is one, event n sets the HALT_H bit in the CTRL register
      --  (event 0 = bit 16, event 1 = bit 17, etc.). The number of bits =
      --  number of events in this SCT.
      HALTMSK_H : HALT_HALTMSK_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HALT_Register use record
      HALTMSK_L at 0 range 0 .. 15;
      HALTMSK_H at 0 range 16 .. 31;
   end record;

   subtype STOP_STOPMSK_L_Field is HAL.UInt16;
   subtype STOP_STOPMSK_H_Field is HAL.UInt16;

   --  SCT stop event select register
   type STOP_Register is record
      --  If bit n is one, event n sets the STOP_L bit in the CTRL register
      --  (event 0 = bit 0, event 1 = bit 1, etc.). The number of bits = number
      --  of events in this SCT.
      STOPMSK_L : STOP_STOPMSK_L_Field := 16#0#;
      --  If bit n is one, event n sets the STOP_H bit in the CTRL register
      --  (event 0 = bit 16, event 1 = bit 17, etc.). The number of bits =
      --  number of events in this SCT.
      STOPMSK_H : STOP_STOPMSK_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STOP_Register use record
      STOPMSK_L at 0 range 0 .. 15;
      STOPMSK_H at 0 range 16 .. 31;
   end record;

   subtype START_STARTMSK_L_Field is HAL.UInt16;
   subtype START_STARTMSK_H_Field is HAL.UInt16;

   --  SCT start event select register
   type START_Register is record
      --  If bit n is one, event n clears the STOP_L bit in the CTRL register
      --  (event 0 = bit 0, event 1 = bit 1, etc.). The number of bits = number
      --  of events in this SCT.
      STARTMSK_L : START_STARTMSK_L_Field := 16#0#;
      --  If bit n is one, event n clears the STOP_H bit in the CTRL register
      --  (event 0 = bit 16, event 1 = bit 17, etc.). The number of bits =
      --  number of events in this SCT.
      STARTMSK_H : START_STARTMSK_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for START_Register use record
      STARTMSK_L at 0 range 0 .. 15;
      STARTMSK_H at 0 range 16 .. 31;
   end record;

   subtype COUNT_CTR_L_Field is HAL.UInt16;
   subtype COUNT_CTR_H_Field is HAL.UInt16;

   --  SCT counter register
   type COUNT_Register is record
      --  When UNIFY = 0, read or write the 16-bit L counter value. When UNIFY
      --  = 1, read or write the lower 16 bits of the 32-bit unified counter.
      CTR_L : COUNT_CTR_L_Field := 16#0#;
      --  When UNIFY = 0, read or write the 16-bit H counter value. When UNIFY
      --  = 1, read or write the upper 16 bits of the 32-bit unified counter.
      CTR_H : COUNT_CTR_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNT_Register use record
      CTR_L at 0 range 0 .. 15;
      CTR_H at 0 range 16 .. 31;
   end record;

   subtype STATE_STATE_L_Field is HAL.UInt5;
   subtype STATE_STATE_H_Field is HAL.UInt5;

   --  SCT state register
   type STATE_Register is record
      --  State variable.
      STATE_L        : STATE_STATE_L_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  State variable.
      STATE_H        : STATE_STATE_H_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_Register use record
      STATE_L        at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      STATE_H        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  INPUT_AIN array
   type INPUT_AIN_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for INPUT_AIN
   type INPUT_AIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AIN as a value
            Val : HAL.UInt16;
         when True =>
            --  AIN as an array
            Arr : INPUT_AIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for INPUT_AIN_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  INPUT_SIN array
   type INPUT_SIN_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for INPUT_SIN
   type INPUT_SIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SIN as a value
            Val : HAL.UInt16;
         when True =>
            --  SIN as an array
            Arr : INPUT_SIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for INPUT_SIN_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  SCT input register
   type INPUT_Register is record
      --  Read-only. Input 0 state. Input 0 state on the last SCT clock edge.
      AIN : INPUT_AIN_Field;
      --  Read-only. Input 0 state. Input 0 state following the synchronization
      --  specified by INSYNC.
      SIN : INPUT_SIN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUT_Register use record
      AIN at 0 range 0 .. 15;
      SIN at 0 range 16 .. 31;
   end record;

   subtype REGMODE_REGMOD_L_Field is HAL.UInt16;
   subtype REGMODE_REGMOD_H_Field is HAL.UInt16;

   --  SCT match/capture mode register
   type REGMODE_Register is record
      --  Each bit controls one match/capture register (register 0 = bit 0,
      --  register 1 = bit 1, etc.). The number of bits = number of
      --  match/captures in this SCT. 0 = register operates as match register.
      --  1 = register operates as capture register.
      REGMOD_L : REGMODE_REGMOD_L_Field := 16#0#;
      --  Each bit controls one match/capture register (register 0 = bit 16,
      --  register 1 = bit 17, etc.). The number of bits = number of
      --  match/captures in this SCT. 0 = register operates as match registers.
      --  1 = register operates as capture registers.
      REGMOD_H : REGMODE_REGMOD_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGMODE_Register use record
      REGMOD_L at 0 range 0 .. 15;
      REGMOD_H at 0 range 16 .. 31;
   end record;

   subtype OUTPUT_OUT_Field is HAL.UInt16;

   --  SCT output register
   type OUTPUT_Register is record
      --  Writing a 1 to bit n forces the corresponding output HIGH. Writing a
      --  0 forces the corresponding output LOW (output 0 = bit 0, output 1 =
      --  bit 1, etc.). The number of bits = number of outputs in this SCT.
      OUT_k          : OUTPUT_OUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTPUT_Register use record
      OUT_k          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Set/clear operation on output 0. Value 0x3 is reserved. Do not program
   --  this value.
   type OUTPUTDIRCTRL_SETCLR0_Field is
     (
      --  Set and clear do not depend on the direction of any counter.
      Independent,
      --  Set and clear are reversed when counter L or the unified counter is
      --  counting down.
      L_Reversed,
      --  Set and clear are reversed when counter H is counting down. Do not
      --  use if UNIFY = 1.
      H_Reversed)
     with Size => 2;
   for OUTPUTDIRCTRL_SETCLR0_Field use
     (Independent => 0,
      L_Reversed => 1,
      H_Reversed => 2);

   --  OUTPUTDIRCTRL_SETCLR array
   type OUTPUTDIRCTRL_SETCLR_Field_Array is array (0 .. 15)
     of OUTPUTDIRCTRL_SETCLR0_Field
     with Component_Size => 2, Size => 32;

   --  SCT output counter direction control register
   type OUTPUTDIRCTRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETCLR as a value
            Val : HAL.UInt32;
         when True =>
            --  SETCLR as an array
            Arr : OUTPUTDIRCTRL_SETCLR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OUTPUTDIRCTRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Effect of simultaneous set and clear on output 0.
   type RES_O0RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR0 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR0 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O0RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 1.
   type RES_O1RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR1 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR1 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O1RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 2.
   type RES_O2RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR2 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output n (or set based on the SETCLR2 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O2RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 3.
   type RES_O3RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR3 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR3 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O3RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 4.
   type RES_O4RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR4 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR4 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O4RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 5.
   type RES_O5RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR5 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR5 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O5RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 6.
   type RES_O6RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR6 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR6 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O6RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 7.
   type RES_O7RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR7 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output n (or set based on the SETCLR7 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O7RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 8.
   type RES_O8RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR8 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR8 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O8RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 9.
   type RES_O9RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR9 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR9 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O9RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 10.
   type RES_O10RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR10 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR10 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O10RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 11.
   type RES_O11RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR11 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR11 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O11RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 12.
   type RES_O12RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR12 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR12 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O12RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 13.
   type RES_O13RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR13 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR13 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O13RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 14.
   type RES_O14RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR14 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR14 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O14RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  Effect of simultaneous set and clear on output 15.
   type RES_O15RES_Field is
     (
      --  No change.
      No_Change,
      --  Set output (or clear based on the SETCLR15 field in the OUTPUTDIRCTRL
      --  register).
      Set,
      --  Clear output (or set based on the SETCLR15 field).
      Clear,
      --  Toggle output.
      Toggle_Output)
     with Size => 2;
   for RES_O15RES_Field use
     (No_Change => 0,
      Set => 1,
      Clear => 2,
      Toggle_Output => 3);

   --  SCT conflict resolution register
   type RES_Register is record
      --  Effect of simultaneous set and clear on output 0.
      O0RES  : RES_O0RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 1.
      O1RES  : RES_O1RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 2.
      O2RES  : RES_O2RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 3.
      O3RES  : RES_O3RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 4.
      O4RES  : RES_O4RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 5.
      O5RES  : RES_O5RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 6.
      O6RES  : RES_O6RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 7.
      O7RES  : RES_O7RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 8.
      O8RES  : RES_O8RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 9.
      O9RES  : RES_O9RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 10.
      O10RES : RES_O10RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 11.
      O11RES : RES_O11RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 12.
      O12RES : RES_O12RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 13.
      O13RES : RES_O13RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 14.
      O14RES : RES_O14RES_Field := NRF_SVD.SCT.No_Change;
      --  Effect of simultaneous set and clear on output 15.
      O15RES : RES_O15RES_Field := NRF_SVD.SCT.No_Change;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RES_Register use record
      O0RES  at 0 range 0 .. 1;
      O1RES  at 0 range 2 .. 3;
      O2RES  at 0 range 4 .. 5;
      O3RES  at 0 range 6 .. 7;
      O4RES  at 0 range 8 .. 9;
      O5RES  at 0 range 10 .. 11;
      O6RES  at 0 range 12 .. 13;
      O7RES  at 0 range 14 .. 15;
      O8RES  at 0 range 16 .. 17;
      O9RES  at 0 range 18 .. 19;
      O10RES at 0 range 20 .. 21;
      O11RES at 0 range 22 .. 23;
      O12RES at 0 range 24 .. 25;
      O13RES at 0 range 26 .. 27;
      O14RES at 0 range 28 .. 29;
      O15RES at 0 range 30 .. 31;
   end record;

   subtype DMA0REQUEST_DEV_0_Field is HAL.UInt16;

   --  SCT DMA request 0 register
   type DMA0REQUEST_Register is record
      --  If bit n is one, event n triggers DMA request 0 (event 0 = bit 0,
      --  event 1 = bit 1, etc.). The number of bits = number of events in this
      --  SCT.
      DEV_0          : DMA0REQUEST_DEV_0_Field := 16#0#;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  A 1 in this bit triggers DMA request 0 when it loads the
      --  MATCH_L/Unified registers from the RELOAD_L/Unified registers.
      DRL0           : Boolean := False;
      --  This read-only bit indicates the state of DMA Request 0. Note that if
      --  the related DMA channel is enabled and properly set up, it is
      --  unlikely that software will see this flag, it will be cleared rapidly
      --  by the DMA service. The flag remaining set could point to an issue
      --  with DMA setup.
      DRQ0           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA0REQUEST_Register use record
      DEV_0          at 0 range 0 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      DRL0           at 0 range 30 .. 30;
      DRQ0           at 0 range 31 .. 31;
   end record;

   subtype DMA1REQUEST_DEV_1_Field is HAL.UInt16;

   --  SCT DMA request 1 register
   type DMA1REQUEST_Register is record
      --  If bit n is one, event n triggers DMA request 1 (event 0 = bit 0,
      --  event 1 = bit 1, etc.). The number of bits = number of events in this
      --  SCT.
      DEV_1          : DMA1REQUEST_DEV_1_Field := 16#0#;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  A 1 in this bit triggers DMA request 1 when it loads the Match
      --  L/Unified registers from the Reload L/Unified registers.
      DRL1           : Boolean := False;
      --  This read-only bit indicates the state of DMA Request 1. Note that if
      --  the related DMA channel is enabled and properly set up, it is
      --  unlikely that software will see this flag, it will be cleared rapidly
      --  by the DMA service. The flag remaining set could point to an issue
      --  with DMA setup.
      DRQ1           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA1REQUEST_Register use record
      DEV_1          at 0 range 0 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      DRL1           at 0 range 30 .. 30;
      DRQ1           at 0 range 31 .. 31;
   end record;

   subtype EVEN_IEN_Field is HAL.UInt16;

   --  SCT event interrupt enable register
   type EVEN_Register is record
      --  The SCT requests an interrupt when bit n of this register and the
      --  event flag register are both one (event 0 = bit 0, event 1 = bit 1,
      --  etc.). The number of bits = number of events in this SCT.
      IEN            : EVEN_IEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVEN_Register use record
      IEN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EVFLAG_FLAG_Field is HAL.UInt16;

   --  SCT event flag register
   type EVFLAG_Register is record
      --  Bit n is one if event n has occurred since reset or a 1 was last
      --  written to this bit (event 0 = bit 0, event 1 = bit 1, etc.). The
      --  number of bits = number of events in this SCT.
      FLAG           : EVFLAG_FLAG_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFLAG_Register use record
      FLAG           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CONEN_NCEN_Field is HAL.UInt16;

   --  SCT conflict interrupt enable register
   type CONEN_Register is record
      --  The SCT requests an interrupt when bit n of this register and the SCT
      --  conflict flag register are both one (output 0 = bit 0, output 1 = bit
      --  1, etc.). The number of bits = number of outputs in this SCT.
      NCEN           : CONEN_NCEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONEN_Register use record
      NCEN           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CONFLAG_NCFLAG_Field is HAL.UInt16;

   --  SCT conflict flag register
   type CONFLAG_Register is record
      --  Bit n is one if a no-change conflict event occurred on output n since
      --  reset or a 1 was last written to this bit (output 0 = bit 0, output 1
      --  = bit 1, etc.). The number of bits = number of outputs in this SCT.
      NCFLAG         : CONFLAG_NCFLAG_Field := 16#0#;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  The most recent bus error from this SCT involved writing CTR
      --  L/Unified, STATE L/Unified, MATCH L/Unified, or the Output register
      --  when the L/U counter was not halted. A word write to certain L and H
      --  registers can be half successful and half unsuccessful.
      BUSERRL        : Boolean := False;
      --  The most recent bus error from this SCT involved writing CTR H, STATE
      --  H, MATCH H, or the Output register when the H counter was not halted.
      BUSERRH        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFLAG_Register use record
      NCFLAG         at 0 range 0 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      BUSERRL        at 0 range 30 .. 30;
      BUSERRH        at 0 range 31 .. 31;
   end record;

   subtype SCTCAP_CAPn_L_Field is HAL.UInt16;
   subtype SCTCAP_CAPn_H_Field is HAL.UInt16;

   --  SCT capture register of capture channel
   type SCTCAP_Register is record
      --  When UNIFY = 0, read the 16-bit counter value at which this register
      --  was last captured. When UNIFY = 1, read the lower 16 bits of the
      --  32-bit value at which this register was last captured.
      CAPn_L : SCTCAP_CAPn_L_Field := 16#0#;
      --  When UNIFY = 0, read the 16-bit counter value at which this register
      --  was last captured. When UNIFY = 1, read the upper 16 bits of the
      --  32-bit value at which this register was last captured.
      CAPn_H : SCTCAP_CAPn_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTCAP_Register use record
      CAPn_L at 0 range 0 .. 15;
      CAPn_H at 0 range 16 .. 31;
   end record;

   --  SCT capture register of capture channel
   type SCTCAP_Registers is array (0 .. 9) of SCTCAP_Register
     with Volatile;

   subtype SCTMATCH_MATCHn_L_Field is HAL.UInt16;
   subtype SCTMATCH_MATCHn_H_Field is HAL.UInt16;

   --  SCT match value register of match channels
   type SCTMATCH_Register is record
      --  When UNIFY = 0, read or write the 16-bit value to be compared to the
      --  L counter. When UNIFY = 1, read or write the lower 16 bits of the
      --  32-bit value to be compared to the unified counter.
      MATCHn_L : SCTMATCH_MATCHn_L_Field := 16#0#;
      --  When UNIFY = 0, read or write the 16-bit value to be compared to the
      --  H counter. When UNIFY = 1, read or write the upper 16 bits of the
      --  32-bit value to be compared to the unified counter.
      MATCHn_H : SCTMATCH_MATCHn_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTMATCH_Register use record
      MATCHn_L at 0 range 0 .. 15;
      MATCHn_H at 0 range 16 .. 31;
   end record;

   --  SCT match value register of match channels
   type SCTMATCH_Registers is array (0 .. 9) of SCTMATCH_Register
     with Volatile;

   subtype SCTCAPCTRL_CAPCONn_L_Field is HAL.UInt16;
   subtype SCTCAPCTRL_CAPCONn_H_Field is HAL.UInt16;

   --  SCT capture control register
   type SCTCAPCTRL_Register is record
      --  If bit m is one, event m causes the CAPn_L (UNIFY = 0) or the CAPn
      --  (UNIFY = 1) register to be loaded (event 0 = bit 0, event 1 = bit 1,
      --  etc.). The number of bits = number of match/captures in this SCT.
      CAPCONn_L : SCTCAPCTRL_CAPCONn_L_Field := 16#0#;
      --  If bit m is one, event m causes the CAPn_H (UNIFY = 0) register to be
      --  loaded (event 0 = bit 16, event 1 = bit 17, etc.). The number of bits
      --  = number of match/captures in this SCT.
      CAPCONn_H : SCTCAPCTRL_CAPCONn_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTCAPCTRL_Register use record
      CAPCONn_L at 0 range 0 .. 15;
      CAPCONn_H at 0 range 16 .. 31;
   end record;

   --  SCT capture control register
   type SCTCAPCTRL_Registers is array (0 .. 9) of SCTCAPCTRL_Register
     with Volatile;

   subtype SCTMATCHREL_RELOADn_L_Field is HAL.UInt16;
   subtype SCTMATCHREL_RELOADn_H_Field is HAL.UInt16;

   --  SCT match reload value register
   type SCTMATCHREL_Register is record
      --  When UNIFY = 0, specifies the 16-bit value to be loaded into the
      --  MATCHn_L register. When UNIFY = 1, specifies the lower 16 bits of the
      --  32-bit value to be loaded into the MATCHn register.
      RELOADn_L : SCTMATCHREL_RELOADn_L_Field := 16#0#;
      --  When UNIFY = 0, specifies the 16-bit to be loaded into the MATCHn_H
      --  register. When UNIFY = 1, specifies the upper 16 bits of the 32-bit
      --  value to be loaded into the MATCHn register.
      RELOADn_H : SCTMATCHREL_RELOADn_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTMATCHREL_Register use record
      RELOADn_L at 0 range 0 .. 15;
      RELOADn_H at 0 range 16 .. 31;
   end record;

   --  SCT match reload value register
   type SCTMATCHREL_Registers is array (0 .. 9) of SCTMATCHREL_Register
     with Volatile;

   -------------------------------
   -- EVENT cluster's Registers --
   -------------------------------

   subtype STATE_EVENT_STATEMSKn_Field is HAL.UInt16;

   --  SCT event state register 0
   type STATE_EVENT_Register is record
      --  If bit m is one, event n happens in state m of the counter selected
      --  by the HEVENT bit (n = event number, m = state number; state 0 = bit
      --  0, state 1= bit 1, etc.). The number of bits = number of states in
      --  this SCT.
      STATEMSKn      : STATE_EVENT_STATEMSKn_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_EVENT_Register use record
      STATEMSKn      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTRL_EVENT_MATCHSEL_Field is HAL.UInt4;

   --  Select L/H counter. Do not set this bit if UNIFY = 1.
   type CTRL_HEVENT_Field is
     (
      --  Selects the L state and the L match register selected by MATCHSEL.
      L_Counter,
      --  Selects the H state and the H match register selected by MATCHSEL.
      H_Counter)
     with Size => 1;
   for CTRL_HEVENT_Field use
     (L_Counter => 0,
      H_Counter => 1);

   --  Input/output select
   type CTRL_OUTSEL_Field is
     (
      --  Selects the inputs selected by IOSEL.
      Input,
      --  Selects the outputs selected by IOSEL.
      Output)
     with Size => 1;
   for CTRL_OUTSEL_Field use
     (Input => 0,
      Output => 1);

   subtype CTRL_EVENT_IOSEL_Field is HAL.UInt4;

   --  Selects the I/O condition for event n. (The detection of edges on
   --  outputs lag the conditions that switch the outputs by one SCT clock). In
   --  order to guarantee proper edge/state detection, an input must have a
   --  minimum pulse width of at least one SCT clock period .
   type CTRL_IOCOND_Field is
     (
      --  LOW
      Low,
      --  Rise
      Rise,
      --  Fall
      Fall,
      --  HIGH
      High)
     with Size => 2;
   for CTRL_IOCOND_Field use
     (Low => 0,
      Rise => 1,
      Fall => 2,
      High => 3);

   --  Selects how the specified match and I/O condition are used and combined.
   type CTRL_COMBMODE_Field is
     (
      --  OR. The event occurs when either the specified match or I/O condition
      --  occurs.
      Or_k,
      --  MATCH. Uses the specified match only.
      Match,
      --  IO. Uses the specified I/O condition only.
      Io,
      --  AND. The event occurs when the specified match and I/O condition
      --  occur simultaneously.
      And_k)
     with Size => 2;
   for CTRL_COMBMODE_Field use
     (Or_k => 0,
      Match => 1,
      Io => 2,
      And_k => 3);

   --  This bit controls how the STATEV value modifies the state selected by
   --  HEVENT when this event is the highest-numbered event occurring for that
   --  state.
   type CTRL_STATELD_Field is
     (
      --  STATEV value is added into STATE (the carry-out is ignored).
      Add,
      --  STATEV value is loaded into STATE.
      Load)
     with Size => 1;
   for CTRL_STATELD_Field use
     (Add => 0,
      Load => 1);

   subtype CTRL_EVENT_STATEV_Field is HAL.UInt5;

   --  Direction qualifier for event generation. This field only applies when
   --  the counters are operating in BIDIR mode. If BIDIR = 0, the SCT ignores
   --  this field. Value 0x3 is reserved.
   type CTRL_DIRECTION_Field is
     (
      --  Direction independent. This event is triggered regardless of the
      --  count direction.
      Direction_Independent,
      --  Counting up. This event is triggered only during up-counting when
      --  BIDIR = 1.
      Counting_Up,
      --  Counting down. This event is triggered only during down-counting when
      --  BIDIR = 1.
      Counting_Down)
     with Size => 2;
   for CTRL_DIRECTION_Field use
     (Direction_Independent => 0,
      Counting_Up => 1,
      Counting_Down => 2);

   --  SCT event control register 0
   type CTRL_EVENT_Register is record
      --  Selects the Match register associated with this event (if any). A
      --  match can occur only when the counter selected by the HEVENT bit is
      --  running.
      MATCHSEL       : CTRL_EVENT_MATCHSEL_Field := 16#0#;
      --  Select L/H counter. Do not set this bit if UNIFY = 1.
      HEVENT         : CTRL_HEVENT_Field := NRF_SVD.SCT.L_Counter;
      --  Input/output select
      OUTSEL         : CTRL_OUTSEL_Field := NRF_SVD.SCT.Input;
      --  Selects the input or output signal number associated with this event
      --  (if any). Do not select an input in this register if CKMODE is 1x. In
      --  this case the clock input is an implicit ingredient of every event.
      IOSEL          : CTRL_EVENT_IOSEL_Field := 16#0#;
      --  Selects the I/O condition for event n. (The detection of edges on
      --  outputs lag the conditions that switch the outputs by one SCT clock).
      --  In order to guarantee proper edge/state detection, an input must have
      --  a minimum pulse width of at least one SCT clock period .
      IOCOND         : CTRL_IOCOND_Field := NRF_SVD.SCT.Low;
      --  Selects how the specified match and I/O condition are used and
      --  combined.
      COMBMODE       : CTRL_COMBMODE_Field := NRF_SVD.SCT.Or_k;
      --  This bit controls how the STATEV value modifies the state selected by
      --  HEVENT when this event is the highest-numbered event occurring for
      --  that state.
      STATELD        : CTRL_STATELD_Field := NRF_SVD.SCT.Add;
      --  This value is loaded into or added to the state selected by HEVENT,
      --  depending on STATELD, when this event is the highest-numbered event
      --  occurring for that state. If STATELD and STATEV are both zero, there
      --  is no change to the STATE value.
      STATEV         : CTRL_EVENT_STATEV_Field := 16#0#;
      --  If this bit is one and the COMBMODE field specifies a match component
      --  to the triggering of this event, then a match is considered to be
      --  active whenever the counter value is GREATER THAN OR EQUAL TO the
      --  value specified in the match register when counting up, LESS THEN OR
      --  EQUAL TO the match value when counting down. If this bit is zero, a
      --  match is only be active during the cycle when the counter is equal to
      --  the match value.
      MATCHMEM       : Boolean := False;
      --  Direction qualifier for event generation. This field only applies
      --  when the counters are operating in BIDIR mode. If BIDIR = 0, the SCT
      --  ignores this field. Value 0x3 is reserved.
      DIRECTION      : CTRL_DIRECTION_Field :=
                        NRF_SVD.SCT.Direction_Independent;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_EVENT_Register use record
      MATCHSEL       at 0 range 0 .. 3;
      HEVENT         at 0 range 4 .. 4;
      OUTSEL         at 0 range 5 .. 5;
      IOSEL          at 0 range 6 .. 9;
      IOCOND         at 0 range 10 .. 11;
      COMBMODE       at 0 range 12 .. 13;
      STATELD        at 0 range 14 .. 14;
      STATEV         at 0 range 15 .. 19;
      MATCHMEM       at 0 range 20 .. 20;
      DIRECTION      at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  no description available
   type EVENT_Cluster is record
      --  SCT event state register 0
      STATE : aliased STATE_EVENT_Register;
      --  SCT event control register 0
      CTRL  : aliased CTRL_EVENT_Register;
   end record
     with Volatile, Size => 64;

   for EVENT_Cluster use record
      STATE at 16#0# range 0 .. 31;
      CTRL  at 16#4# range 0 .. 31;
   end record;

   --  no description available
   type EVENT_Clusters is array (0 .. 9) of EVENT_Cluster;

   -----------------------------
   -- OUT cluster's Registers --
   -----------------------------

   subtype SET_OUT_SET_Field is HAL.UInt16;

   --  SCT output 0 set register
   type SET_OUT_Register is record
      --  A 1 in bit m selects event m to set output n (or clear it if SETCLRn
      --  = 0x1 or 0x2) output 0 = bit 0, output 1 = bit 1, etc. The number of
      --  bits = number of events in this SCT. When the counter is used in
      --  bi-directional mode, it is possible to reverse the action specified
      --  by the output set and clear registers when counting down, See the
      --  OUTPUTCTRL register.
      SET            : SET_OUT_SET_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_OUT_Register use record
      SET            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CLR_OUT_CLR_Field is HAL.UInt16;

   --  SCT output 0 clear register
   type CLR_OUT_Register is record
      --  A 1 in bit m selects event m to clear output n (or set it if SETCLRn
      --  = 0x1 or 0x2) event 0 = bit 0, event 1 = bit 1, etc. The number of
      --  bits = number of events in this SCT. When the counter is used in
      --  bi-directional mode, it is possible to reverse the action specified
      --  by the output set and clear registers when counting down, See the
      --  OUTPUTCTRL register.
      CLR            : CLR_OUT_CLR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_OUT_Register use record
      CLR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  no description available
   type OUT_Cluster is record
      --  SCT output 0 set register
      SET : aliased SET_OUT_Register;
      --  SCT output 0 clear register
      CLR : aliased CLR_OUT_Register;
   end record
     with Volatile, Size => 64;

   for OUT_Cluster use record
      SET at 16#0# range 0 .. 31;
      CLR at 16#4# range 0 .. 31;
   end record;

   --  no description available
   type OUT_Clusters is array (0 .. 9) of OUT_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   type SCT0_Disc is
     (
      Cap,
      Match,
      Capctrl,
      Matchrel);

   --  LPC5411x SCTimer/PWM (SCT)
   type SCT0_Peripheral
     (Discriminent : SCT0_Disc := Cap)
   is record
      --  SCT configuration register
      CONFIG        : aliased CONFIG_Register;
      --  SCT control register
      CTRL          : aliased CTRL_Register;
      --  SCT limit event select register
      LIMIT         : aliased LIMIT_Register;
      --  SCT halt event select register
      HALT          : aliased HALT_Register;
      --  SCT stop event select register
      STOP          : aliased STOP_Register;
      --  SCT start event select register
      START         : aliased START_Register;
      --  SCT counter register
      COUNT         : aliased COUNT_Register;
      --  SCT state register
      STATE         : aliased STATE_Register;
      --  SCT input register
      INPUT         : aliased INPUT_Register;
      --  SCT match/capture mode register
      REGMODE       : aliased REGMODE_Register;
      --  SCT output register
      OUTPUT        : aliased OUTPUT_Register;
      --  SCT output counter direction control register
      OUTPUTDIRCTRL : aliased OUTPUTDIRCTRL_Register;
      --  SCT conflict resolution register
      RES           : aliased RES_Register;
      --  SCT DMA request 0 register
      DMA0REQUEST   : aliased DMA0REQUEST_Register;
      --  SCT DMA request 1 register
      DMA1REQUEST   : aliased DMA1REQUEST_Register;
      --  SCT event interrupt enable register
      EVEN          : aliased EVEN_Register;
      --  SCT event flag register
      EVFLAG        : aliased EVFLAG_Register;
      --  SCT conflict interrupt enable register
      CONEN         : aliased CONEN_Register;
      --  SCT conflict flag register
      CONFLAG       : aliased CONFLAG_Register;
      --  no description available
      EVENT         : aliased EVENT_Clusters;
      --  no description available
      OUT_k         : aliased OUT_Clusters;
      case Discriminent is
         when Cap =>
            --  SCT capture register of capture channel
            SCTCAP : aliased SCTCAP_Registers;
         when Match =>
            --  SCT match value register of match channels
            SCTMATCH : aliased SCTMATCH_Registers;
         when Capctrl =>
            --  SCT capture control register
            SCTCAPCTRL : aliased SCTCAPCTRL_Registers;
         when Matchrel =>
            --  SCT match reload value register
            SCTMATCHREL : aliased SCTMATCHREL_Registers;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SCT0_Peripheral use record
      CONFIG        at 16#0# range 0 .. 31;
      CTRL          at 16#4# range 0 .. 31;
      LIMIT         at 16#8# range 0 .. 31;
      HALT          at 16#C# range 0 .. 31;
      STOP          at 16#10# range 0 .. 31;
      START         at 16#14# range 0 .. 31;
      COUNT         at 16#40# range 0 .. 31;
      STATE         at 16#44# range 0 .. 31;
      INPUT         at 16#48# range 0 .. 31;
      REGMODE       at 16#4C# range 0 .. 31;
      OUTPUT        at 16#50# range 0 .. 31;
      OUTPUTDIRCTRL at 16#54# range 0 .. 31;
      RES           at 16#58# range 0 .. 31;
      DMA0REQUEST   at 16#5C# range 0 .. 31;
      DMA1REQUEST   at 16#60# range 0 .. 31;
      EVEN          at 16#F0# range 0 .. 31;
      EVFLAG        at 16#F4# range 0 .. 31;
      CONEN         at 16#F8# range 0 .. 31;
      CONFLAG       at 16#FC# range 0 .. 31;
      EVENT         at 16#300# range 0 .. 639;
      OUT_k         at 16#500# range 0 .. 639;
      SCTCAP        at 16#100# range 0 .. 319;
      SCTMATCH      at 16#100# range 0 .. 319;
      SCTCAPCTRL    at 16#200# range 0 .. 319;
      SCTMATCHREL   at 16#200# range 0 .. 319;
   end record;

   --  LPC5411x SCTimer/PWM (SCT)
   SCT0_Periph : aliased SCT0_Peripheral
     with Import, Address => System'To_Address (16#40085000#);

end NRF_SVD.SCT;
