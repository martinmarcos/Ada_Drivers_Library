--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54113.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ITM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Stimulus Port Register 0 (for reading)
   type ITM_STIM0_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM0_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 1 (for reading)
   type ITM_STIM1_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM1_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 2 (for reading)
   type ITM_STIM2_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM2_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 3 (for reading)
   type ITM_STIM3_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM3_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 4 (for reading)
   type ITM_STIM4_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM4_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 5 (for reading)
   type ITM_STIM5_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM5_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 6 (for reading)
   type ITM_STIM6_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM6_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 7 (for reading)
   type ITM_STIM7_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM7_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 8 (for reading)
   type ITM_STIM8_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM8_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 9 (for reading)
   type ITM_STIM9_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM9_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 10 (for reading)
   type ITM_STIM10_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM10_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 11 (for reading)
   type ITM_STIM11_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM11_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 12 (for reading)
   type ITM_STIM12_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM12_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 13 (for reading)
   type ITM_STIM13_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM13_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 14 (for reading)
   type ITM_STIM14_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM14_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 15 (for reading)
   type ITM_STIM15_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM15_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 16 (for reading)
   type ITM_STIM16_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM16_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 17 (for reading)
   type ITM_STIM17_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM17_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 18 (for reading)
   type ITM_STIM18_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM18_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 19 (for reading)
   type ITM_STIM19_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM19_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 20 (for reading)
   type ITM_STIM20_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM20_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 21 (for reading)
   type ITM_STIM21_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM21_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 22 (for reading)
   type ITM_STIM22_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM22_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 23 (for reading)
   type ITM_STIM23_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM23_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 24 (for reading)
   type ITM_STIM24_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM24_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 25 (for reading)
   type ITM_STIM25_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM25_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 26 (for reading)
   type ITM_STIM26_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM26_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 27 (for reading)
   type ITM_STIM27_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM27_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 28 (for reading)
   type ITM_STIM28_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM28_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 29 (for reading)
   type ITM_STIM29_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM29_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 30 (for reading)
   type ITM_STIM30_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM30_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stimulus Port Register 31 (for reading)
   type ITM_STIM31_READ_Register is record
      --  no description available
      FIFOREADY     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_STIM31_READ_Register use record
      FIFOREADY     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ITM_TPR_PRIVMASK_Field is HAL.UInt4;

   --  Trace Privilege Register
   type ITM_TPR_Register is record
      --  Bit mask to enable tracing on ITM stimulus ports: Bit [0] = stimulus
      --  port [7:0] Bit [1] = stimulus port [15:8] Bit [2] = stimulus port
      --  [23:16] Bit [3] = stimulus port [31:24]
      PRIVMASK      : ITM_TPR_PRIVMASK_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_TPR_Register use record
      PRIVMASK      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  no description available
   type TCR_ITMENA_Field is
     (
      --  Disabled.
      Itmena_0,
      --  Enabled.
      Itmena_1)
     with Size => 1;
   for TCR_ITMENA_Field use
     (Itmena_0 => 0,
      Itmena_1 => 1);

   --  no description available
   type TCR_TSENA_Field is
     (
      --  Disabled.
      Tsena_0,
      --  Enabled.
      Tsena_1)
     with Size => 1;
   for TCR_TSENA_Field use
     (Tsena_0 => 0,
      Tsena_1 => 1);

   --  no description available
   type TCR_SYNCENA_Field is
     (
      --  Disabled.
      Syncena_0,
      --  Enabled.
      Syncena_1)
     with Size => 1;
   for TCR_SYNCENA_Field use
     (Syncena_0 => 0,
      Syncena_1 => 1);

   --  no description available
   type TCR_TXENA_Field is
     (
      --  Disabled.
      Txena_0,
      --  Enabled.
      Txena_1)
     with Size => 1;
   for TCR_TXENA_Field use
     (Txena_0 => 0,
      Txena_1 => 1);

   --  no description available
   type TCR_SWOENA_Field is
     (
      --  Timestamp counter uses the processor system clock.
      Swoena_0,
      --  Timestamp counter uses asynchronous clock from the TPIU interface.
      Swoena_1)
     with Size => 1;
   for TCR_SWOENA_Field use
     (Swoena_0 => 0,
      Swoena_1 => 1);

   --  Local timestamp prescaler, used with the trace packet reference clock.
   type TCR_TSPrescale_Field is
     (
      --  No prescaling.
      Tsprescale_0,
      --  Divide by 4.
      Tsprescale_1,
      --  Divide by 16.
      Tsprescale_2,
      --  Divide by 64.
      Tsprescale_3)
     with Size => 2;
   for TCR_TSPrescale_Field use
     (Tsprescale_0 => 0,
      Tsprescale_1 => 1,
      Tsprescale_2 => 2,
      Tsprescale_3 => 3);

   --  Global timestamp frequency. Defines how often the ITM generates a global
   --  timestamp, based on the global timestamp clock frequency, or disables
   --  generation of global timestamps.
   type TCR_GTSFREQ_Field is
     (
      --  Disable generation of global timestamps.
      Gtsfreq_0,
      --  Generate timestamp request whenever the ITM detects a change in
      --  global timestamp counter bits [47:7]. This is approximately every 128
      --  cycles.
      Gtsfreq_1,
      --  Generate timestamp request whenever the ITM detects a change in
      --  global timestamp counter bits [47:13]. This is approximately every
      --  8192 cycles.
      Gtsfreq_2,
      --  Generate a timestamp after every packet, if the output FIFO is empty.
      Gtsfreq_3)
     with Size => 2;
   for TCR_GTSFREQ_Field use
     (Gtsfreq_0 => 0,
      Gtsfreq_1 => 1,
      Gtsfreq_2 => 2,
      Gtsfreq_3 => 3);

   subtype ITM_TCR_TraceBusID_Field is HAL.UInt7;

   --  Indicates whether the ITM is currently processing events: 0: ITM is not
   --  processing any events. 1: ITM events present and being drained.
   type TCR_BUSY_Field is
     (
      --  ITM is not processing any events.
      Busy_0,
      --  ITM events present and beeing drained.
      Busy_1)
     with Size => 1;
   for TCR_BUSY_Field use
     (Busy_0 => 0,
      Busy_1 => 1);

   --  Trace Control Register
   type ITM_TCR_Register is record
      --  no description available
      ITMENA         : TCR_ITMENA_Field := NRF_SVD.ITM.Itmena_0;
      --  no description available
      TSENA          : TCR_TSENA_Field := NRF_SVD.ITM.Tsena_0;
      --  no description available
      SYNCENA        : TCR_SYNCENA_Field := NRF_SVD.ITM.Syncena_0;
      --  no description available
      TXENA          : TCR_TXENA_Field := NRF_SVD.ITM.Txena_0;
      --  no description available
      SWOENA         : TCR_SWOENA_Field := NRF_SVD.ITM.Swoena_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Local timestamp prescaler, used with the trace packet reference
      --  clock.
      TSPrescale     : TCR_TSPrescale_Field := NRF_SVD.ITM.Tsprescale_0;
      --  Global timestamp frequency. Defines how often the ITM generates a
      --  global timestamp, based on the global timestamp clock frequency, or
      --  disables generation of global timestamps.
      GTSFREQ        : TCR_GTSFREQ_Field := NRF_SVD.ITM.Gtsfreq_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Identifier for multi-source trace stream formatting. If multi-source
      --  trace is in use, the debugger must write a non-zero value to this
      --  field.
      TraceBusID     : ITM_TCR_TraceBusID_Field := 16#0#;
      --  Read-only. Indicates whether the ITM is currently processing events:
      --  0: ITM is not processing any events. 1: ITM events present and being
      --  drained.
      BUSY           : TCR_BUSY_Field := NRF_SVD.ITM.Busy_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_TCR_Register use record
      ITMENA         at 0 range 0 .. 0;
      TSENA          at 0 range 1 .. 1;
      SYNCENA        at 0 range 2 .. 2;
      TXENA          at 0 range 3 .. 3;
      SWOENA         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TSPrescale     at 0 range 8 .. 9;
      GTSFREQ        at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TraceBusID     at 0 range 16 .. 22;
      BUSY           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Lock Status Register
   type ITM_LSR_Register is record
      --  Read-only. Lock mechanism is implemented. This bit always reads 1.
      IMP           : Boolean;
      --  Read-only. Lock Status. This bit is HIGH when the device is locked,
      --  and LOW when unlocked.
      STATUS        : Boolean;
      --  Read-only. Access Lock Register size. This bit reads 0 to indicate a
      --  32-bit register is present.
      s8BIT         : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_LSR_Register use record
      IMP           at 0 range 0 .. 0;
      STATUS        at 0 range 1 .. 1;
      s8BIT         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ITM_PID4_JEP106_Field is HAL.UInt4;
   subtype ITM_PID4_c4KB_Field is HAL.UInt4;

   --  Peripheral Identification Register 4.
   type ITM_PID4_Register is record
      --  Read-only. JEP106 continuation code.
      JEP106        : ITM_PID4_JEP106_Field;
      --  Read-only. 4KB Count
      c4KB          : ITM_PID4_c4KB_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_PID4_Register use record
      JEP106        at 0 range 0 .. 3;
      c4KB          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ITM_PID0_PartNumber_Field is HAL.UInt8;

   --  Peripheral Identification Register 0.
   type ITM_PID0_Register is record
      --  Read-only. Part Number [7:0]
      PartNumber    : ITM_PID0_PartNumber_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_PID0_Register use record
      PartNumber    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ITM_PID1_PartNumber_Field is HAL.UInt4;
   subtype ITM_PID1_JEP106_identity_code_Field is HAL.UInt4;

   --  Peripheral Identification Register 1.
   type ITM_PID1_Register is record
      --  Read-only. Part Number [11:8]
      PartNumber           : ITM_PID1_PartNumber_Field;
      --  Read-only. JEP106 identity code [3:0]
      JEP106_identity_code : ITM_PID1_JEP106_identity_code_Field;
      --  unspecified
      Reserved_8_31        : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_PID1_Register use record
      PartNumber           at 0 range 0 .. 3;
      JEP106_identity_code at 0 range 4 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   subtype ITM_PID2_JEP106_identity_code_Field is HAL.UInt3;
   subtype ITM_PID2_Revision_Field is HAL.UInt4;

   --  Peripheral Identification Register 2.
   type ITM_PID2_Register is record
      --  Read-only. JEP106 identity code [6:4]
      JEP106_identity_code : ITM_PID2_JEP106_identity_code_Field;
      --  unspecified
      Reserved_3_3         : HAL.Bit;
      --  Read-only. Revision
      Revision             : ITM_PID2_Revision_Field;
      --  unspecified
      Reserved_8_31        : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_PID2_Register use record
      JEP106_identity_code at 0 range 0 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      Revision             at 0 range 4 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   subtype ITM_PID3_CustomerModified_Field is HAL.UInt4;
   subtype ITM_PID3_RevAnd_Field is HAL.UInt4;

   --  Peripheral Identification Register 3.
   type ITM_PID3_Register is record
      --  Read-only. Customer Modified.
      CustomerModified : ITM_PID3_CustomerModified_Field;
      --  Read-only. RevAnd
      RevAnd           : ITM_PID3_RevAnd_Field;
      --  unspecified
      Reserved_8_31    : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_PID3_Register use record
      CustomerModified at 0 range 0 .. 3;
      RevAnd           at 0 range 4 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   subtype CID_Preamble_Field is HAL.UInt8;

   --  Component Identification Register 0.
   type CID_Register is record
      --  Read-only. Preamble
      Preamble      : CID_Preamble_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CID_Register use record
      Preamble      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ITM_CID1_Preamble_Field is HAL.UInt4;

   --  Component class
   type CID1_ComponentClass_Field is
     (
      --  ROM table.
      Componentclass_1,
      --  CoreSight component.
      Componentclass_9,
      --  PrimeCell of system component with no standardized register layout,
      --  for backward compatibility.
      Componentclass_15)
     with Size => 4;
   for CID1_ComponentClass_Field use
     (Componentclass_1 => 1,
      Componentclass_9 => 9,
      Componentclass_15 => 15);

   --  Component Identification Register 1.
   type ITM_CID1_Register is record
      --  Read-only. Preamble
      Preamble       : ITM_CID1_Preamble_Field;
      --  Read-only. Component class
      ComponentClass : CID1_ComponentClass_Field;
      --  unspecified
      Reserved_8_31  : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITM_CID1_Register use record
      Preamble       at 0 range 0 .. 3;
      ComponentClass at 0 range 4 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type ITM_Disc is
     (
      Read,
      Write);

   --  Instrumentation Trace Macrocell Registers
   type ITM_Peripheral
     (Discriminent : ITM_Disc := Read)
   is record
      --  Trace Enable Register
      TER          : aliased HAL.UInt32;
      --  Trace Privilege Register
      TPR          : aliased ITM_TPR_Register;
      --  Trace Control Register
      TCR          : aliased ITM_TCR_Register;
      --  Lock Access Register
      LAR          : aliased HAL.UInt32;
      --  Lock Status Register
      LSR          : aliased ITM_LSR_Register;
      --  Peripheral Identification Register 4.
      PID4         : aliased ITM_PID4_Register;
      --  Peripheral Identification Register 5.
      PID5         : aliased HAL.UInt32;
      --  Peripheral Identification Register 6.
      PID6         : aliased HAL.UInt32;
      --  Peripheral Identification Register 7.
      PID7         : aliased HAL.UInt32;
      --  Peripheral Identification Register 0.
      PID0         : aliased ITM_PID0_Register;
      --  Peripheral Identification Register 1.
      PID1         : aliased ITM_PID1_Register;
      --  Peripheral Identification Register 2.
      PID2         : aliased ITM_PID2_Register;
      --  Peripheral Identification Register 3.
      PID3         : aliased ITM_PID3_Register;
      --  Component Identification Register 0.
      CID0         : aliased CID_Register;
      --  Component Identification Register 1.
      CID1         : aliased ITM_CID1_Register;
      --  Component Identification Register 2.
      CID2         : aliased CID_Register;
      --  Component Identification Register 3.
      CID3         : aliased CID_Register;
      case Discriminent is
         when Read =>
            --  Stimulus Port Register 0 (for reading)
            STIM0_READ : aliased ITM_STIM0_READ_Register;
            --  Stimulus Port Register 1 (for reading)
            STIM1_READ : aliased ITM_STIM1_READ_Register;
            --  Stimulus Port Register 2 (for reading)
            STIM2_READ : aliased ITM_STIM2_READ_Register;
            --  Stimulus Port Register 3 (for reading)
            STIM3_READ : aliased ITM_STIM3_READ_Register;
            --  Stimulus Port Register 4 (for reading)
            STIM4_READ : aliased ITM_STIM4_READ_Register;
            --  Stimulus Port Register 5 (for reading)
            STIM5_READ : aliased ITM_STIM5_READ_Register;
            --  Stimulus Port Register 6 (for reading)
            STIM6_READ : aliased ITM_STIM6_READ_Register;
            --  Stimulus Port Register 7 (for reading)
            STIM7_READ : aliased ITM_STIM7_READ_Register;
            --  Stimulus Port Register 8 (for reading)
            STIM8_READ : aliased ITM_STIM8_READ_Register;
            --  Stimulus Port Register 9 (for reading)
            STIM9_READ : aliased ITM_STIM9_READ_Register;
            --  Stimulus Port Register 10 (for reading)
            STIM10_READ : aliased ITM_STIM10_READ_Register;
            --  Stimulus Port Register 11 (for reading)
            STIM11_READ : aliased ITM_STIM11_READ_Register;
            --  Stimulus Port Register 12 (for reading)
            STIM12_READ : aliased ITM_STIM12_READ_Register;
            --  Stimulus Port Register 13 (for reading)
            STIM13_READ : aliased ITM_STIM13_READ_Register;
            --  Stimulus Port Register 14 (for reading)
            STIM14_READ : aliased ITM_STIM14_READ_Register;
            --  Stimulus Port Register 15 (for reading)
            STIM15_READ : aliased ITM_STIM15_READ_Register;
            --  Stimulus Port Register 16 (for reading)
            STIM16_READ : aliased ITM_STIM16_READ_Register;
            --  Stimulus Port Register 17 (for reading)
            STIM17_READ : aliased ITM_STIM17_READ_Register;
            --  Stimulus Port Register 18 (for reading)
            STIM18_READ : aliased ITM_STIM18_READ_Register;
            --  Stimulus Port Register 19 (for reading)
            STIM19_READ : aliased ITM_STIM19_READ_Register;
            --  Stimulus Port Register 20 (for reading)
            STIM20_READ : aliased ITM_STIM20_READ_Register;
            --  Stimulus Port Register 21 (for reading)
            STIM21_READ : aliased ITM_STIM21_READ_Register;
            --  Stimulus Port Register 22 (for reading)
            STIM22_READ : aliased ITM_STIM22_READ_Register;
            --  Stimulus Port Register 23 (for reading)
            STIM23_READ : aliased ITM_STIM23_READ_Register;
            --  Stimulus Port Register 24 (for reading)
            STIM24_READ : aliased ITM_STIM24_READ_Register;
            --  Stimulus Port Register 25 (for reading)
            STIM25_READ : aliased ITM_STIM25_READ_Register;
            --  Stimulus Port Register 26 (for reading)
            STIM26_READ : aliased ITM_STIM26_READ_Register;
            --  Stimulus Port Register 27 (for reading)
            STIM27_READ : aliased ITM_STIM27_READ_Register;
            --  Stimulus Port Register 28 (for reading)
            STIM28_READ : aliased ITM_STIM28_READ_Register;
            --  Stimulus Port Register 29 (for reading)
            STIM29_READ : aliased ITM_STIM29_READ_Register;
            --  Stimulus Port Register 30 (for reading)
            STIM30_READ : aliased ITM_STIM30_READ_Register;
            --  Stimulus Port Register 31 (for reading)
            STIM31_READ : aliased ITM_STIM31_READ_Register;
         when Write =>
            --  Stimulus Port Register 0 (for writing)
            STIM0_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 1 (for writing)
            STIM1_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 2 (for writing)
            STIM2_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 3 (for writing)
            STIM3_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 4 (for writing)
            STIM4_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 5 (for writing)
            STIM5_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 6 (for writing)
            STIM6_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 7 (for writing)
            STIM7_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 8 (for writing)
            STIM8_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 9 (for writing)
            STIM9_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 10 (for writing)
            STIM10_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 11 (for writing)
            STIM11_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 12 (for writing)
            STIM12_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 13 (for writing)
            STIM13_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 14 (for writing)
            STIM14_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 15 (for writing)
            STIM15_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 16 (for writing)
            STIM16_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 17 (for writing)
            STIM17_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 18 (for writing)
            STIM18_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 19 (for writing)
            STIM19_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 20 (for writing)
            STIM20_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 21 (for writing)
            STIM21_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 22 (for writing)
            STIM22_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 23 (for writing)
            STIM23_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 24 (for writing)
            STIM24_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 25 (for writing)
            STIM25_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 26 (for writing)
            STIM26_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 27 (for writing)
            STIM27_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 28 (for writing)
            STIM28_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 29 (for writing)
            STIM29_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 30 (for writing)
            STIM30_WRITE : aliased HAL.UInt32;
            --  Stimulus Port Register 31 (for writing)
            STIM31_WRITE : aliased HAL.UInt32;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for ITM_Peripheral use record
      TER          at 16#E00# range 0 .. 31;
      TPR          at 16#E40# range 0 .. 31;
      TCR          at 16#E80# range 0 .. 31;
      LAR          at 16#FB0# range 0 .. 31;
      LSR          at 16#FB4# range 0 .. 31;
      PID4         at 16#FD0# range 0 .. 31;
      PID5         at 16#FD4# range 0 .. 31;
      PID6         at 16#FD8# range 0 .. 31;
      PID7         at 16#FDC# range 0 .. 31;
      PID0         at 16#FE0# range 0 .. 31;
      PID1         at 16#FE4# range 0 .. 31;
      PID2         at 16#FE8# range 0 .. 31;
      PID3         at 16#FEC# range 0 .. 31;
      CID0         at 16#FF0# range 0 .. 31;
      CID1         at 16#FF4# range 0 .. 31;
      CID2         at 16#FF8# range 0 .. 31;
      CID3         at 16#FFC# range 0 .. 31;
      STIM0_READ   at 16#0# range 0 .. 31;
      STIM1_READ   at 16#4# range 0 .. 31;
      STIM2_READ   at 16#8# range 0 .. 31;
      STIM3_READ   at 16#C# range 0 .. 31;
      STIM4_READ   at 16#10# range 0 .. 31;
      STIM5_READ   at 16#14# range 0 .. 31;
      STIM6_READ   at 16#18# range 0 .. 31;
      STIM7_READ   at 16#1C# range 0 .. 31;
      STIM8_READ   at 16#20# range 0 .. 31;
      STIM9_READ   at 16#24# range 0 .. 31;
      STIM10_READ  at 16#28# range 0 .. 31;
      STIM11_READ  at 16#2C# range 0 .. 31;
      STIM12_READ  at 16#30# range 0 .. 31;
      STIM13_READ  at 16#34# range 0 .. 31;
      STIM14_READ  at 16#38# range 0 .. 31;
      STIM15_READ  at 16#3C# range 0 .. 31;
      STIM16_READ  at 16#40# range 0 .. 31;
      STIM17_READ  at 16#44# range 0 .. 31;
      STIM18_READ  at 16#48# range 0 .. 31;
      STIM19_READ  at 16#4C# range 0 .. 31;
      STIM20_READ  at 16#50# range 0 .. 31;
      STIM21_READ  at 16#54# range 0 .. 31;
      STIM22_READ  at 16#58# range 0 .. 31;
      STIM23_READ  at 16#5C# range 0 .. 31;
      STIM24_READ  at 16#60# range 0 .. 31;
      STIM25_READ  at 16#64# range 0 .. 31;
      STIM26_READ  at 16#68# range 0 .. 31;
      STIM27_READ  at 16#6C# range 0 .. 31;
      STIM28_READ  at 16#70# range 0 .. 31;
      STIM29_READ  at 16#74# range 0 .. 31;
      STIM30_READ  at 16#78# range 0 .. 31;
      STIM31_READ  at 16#7C# range 0 .. 31;
      STIM0_WRITE  at 16#0# range 0 .. 31;
      STIM1_WRITE  at 16#4# range 0 .. 31;
      STIM2_WRITE  at 16#8# range 0 .. 31;
      STIM3_WRITE  at 16#C# range 0 .. 31;
      STIM4_WRITE  at 16#10# range 0 .. 31;
      STIM5_WRITE  at 16#14# range 0 .. 31;
      STIM6_WRITE  at 16#18# range 0 .. 31;
      STIM7_WRITE  at 16#1C# range 0 .. 31;
      STIM8_WRITE  at 16#20# range 0 .. 31;
      STIM9_WRITE  at 16#24# range 0 .. 31;
      STIM10_WRITE at 16#28# range 0 .. 31;
      STIM11_WRITE at 16#2C# range 0 .. 31;
      STIM12_WRITE at 16#30# range 0 .. 31;
      STIM13_WRITE at 16#34# range 0 .. 31;
      STIM14_WRITE at 16#38# range 0 .. 31;
      STIM15_WRITE at 16#3C# range 0 .. 31;
      STIM16_WRITE at 16#40# range 0 .. 31;
      STIM17_WRITE at 16#44# range 0 .. 31;
      STIM18_WRITE at 16#48# range 0 .. 31;
      STIM19_WRITE at 16#4C# range 0 .. 31;
      STIM20_WRITE at 16#50# range 0 .. 31;
      STIM21_WRITE at 16#54# range 0 .. 31;
      STIM22_WRITE at 16#58# range 0 .. 31;
      STIM23_WRITE at 16#5C# range 0 .. 31;
      STIM24_WRITE at 16#60# range 0 .. 31;
      STIM25_WRITE at 16#64# range 0 .. 31;
      STIM26_WRITE at 16#68# range 0 .. 31;
      STIM27_WRITE at 16#6C# range 0 .. 31;
      STIM28_WRITE at 16#70# range 0 .. 31;
      STIM29_WRITE at 16#74# range 0 .. 31;
      STIM30_WRITE at 16#78# range 0 .. 31;
      STIM31_WRITE at 16#7C# range 0 .. 31;
   end record;

   --  Instrumentation Trace Macrocell Registers
   ITM_Periph : aliased ITM_Peripheral
     with Import, Address => System'To_Address (16#E0000000#);

end NRF_SVD.ITM;
