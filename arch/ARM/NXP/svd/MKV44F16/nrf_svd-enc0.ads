--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKV44F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Quadrature Decoder
package NRF_SVD.ENC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Compare Interrupt Enable
   type CTRL_CMPIE_Field is
     (
      --  Compare interrupt is disabled
      CTRL_CMPIE_Field_0,
      --  Compare interrupt is enabled
      CTRL_CMPIE_Field_1)
     with Size => 1;
   for CTRL_CMPIE_Field use
     (CTRL_CMPIE_Field_0 => 0,
      CTRL_CMPIE_Field_1 => 1);

   --  Compare Interrupt Request
   type CTRL_CMPIRQ_Field is
     (
      --  No match has occurred
      CTRL_CMPIRQ_Field_0,
      --  COMP match has occurred
      CTRL_CMPIRQ_Field_1)
     with Size => 1;
   for CTRL_CMPIRQ_Field use
     (CTRL_CMPIRQ_Field_0 => 0,
      CTRL_CMPIRQ_Field_1 => 1);

   --  Watchdog Enable
   type CTRL_WDE_Field is
     (
      --  Watchdog timer is disabled
      CTRL_WDE_Field_0,
      --  Watchdog timer is enabled
      CTRL_WDE_Field_1)
     with Size => 1;
   for CTRL_WDE_Field use
     (CTRL_WDE_Field_0 => 0,
      CTRL_WDE_Field_1 => 1);

   --  Watchdog Timeout Interrupt Enable
   type CTRL_DIE_Field is
     (
      --  Watchdog timer interrupt is disabled
      CTRL_DIE_Field_0,
      --  Watchdog timer interrupt is enabled
      CTRL_DIE_Field_1)
     with Size => 1;
   for CTRL_DIE_Field use
     (CTRL_DIE_Field_0 => 0,
      CTRL_DIE_Field_1 => 1);

   --  Watchdog Timeout Interrupt Request
   type CTRL_DIRQ_Field is
     (
      --  No interrupt has occurred
      CTRL_DIRQ_Field_0,
      --  Watchdog timeout interrupt has occurred
      CTRL_DIRQ_Field_1)
     with Size => 1;
   for CTRL_DIRQ_Field use
     (CTRL_DIRQ_Field_0 => 0,
      CTRL_DIRQ_Field_1 => 1);

   --  Use Negative Edge of INDEX Pulse
   type CTRL_XNE_Field is
     (
      --  Use positive transition edge of INDEX pulse
      CTRL_XNE_Field_0,
      --  Use negative transition edge of INDEX pulse
      CTRL_XNE_Field_1)
     with Size => 1;
   for CTRL_XNE_Field use
     (CTRL_XNE_Field_0 => 0,
      CTRL_XNE_Field_1 => 1);

   --  INDEX Triggered Initialization of Position Counters UPOS and LPOS
   type CTRL_XIP_Field is
     (
      --  No action
      CTRL_XIP_Field_0,
      --  INDEX pulse initializes the position counter
      CTRL_XIP_Field_1)
     with Size => 1;
   for CTRL_XIP_Field use
     (CTRL_XIP_Field_0 => 0,
      CTRL_XIP_Field_1 => 1);

   --  INDEX Pulse Interrupt Enable
   type CTRL_XIE_Field is
     (
      --  INDEX pulse interrupt is disabled
      CTRL_XIE_Field_0,
      --  INDEX pulse interrupt is enabled
      CTRL_XIE_Field_1)
     with Size => 1;
   for CTRL_XIE_Field use
     (CTRL_XIE_Field_0 => 0,
      CTRL_XIE_Field_1 => 1);

   --  INDEX Pulse Interrupt Request
   type CTRL_XIRQ_Field is
     (
      --  No interrupt has occurred
      CTRL_XIRQ_Field_0,
      --  INDEX pulse interrupt has occurred
      CTRL_XIRQ_Field_1)
     with Size => 1;
   for CTRL_XIRQ_Field use
     (CTRL_XIRQ_Field_0 => 0,
      CTRL_XIRQ_Field_1 => 1);

   --  Enable Signal Phase Count Mode
   type CTRL_PH1_Field is
     (
      --  Use standard quadrature decoder where PHASEA and PHASEB represent a
      --  two phase quadrature signal.
      CTRL_PH1_Field_0,
      --  Bypass the quadrature decoder. A positive transition of the PHASEA
      --  input generates a count signal. The PHASEB input and the REV bit
      --  control the counter direction. If CTRL[REV] = 0, PHASEB = 0, then
      --  count up If CTRL[REV] = 0, PHASEB = 1, then count down If CTRL[REV] =
      --  1, PHASEB = 0, then count down If CTRL[REV] = 1, PHASEB = 1, then
      --  count up
      CTRL_PH1_Field_1)
     with Size => 1;
   for CTRL_PH1_Field use
     (CTRL_PH1_Field_0 => 0,
      CTRL_PH1_Field_1 => 1);

   --  Enable Reverse Direction Counting
   type CTRL_REV_Field is
     (
      --  Count normally
      CTRL_REV_Field_0,
      --  Count in the reverse direction
      CTRL_REV_Field_1)
     with Size => 1;
   for CTRL_REV_Field use
     (CTRL_REV_Field_0 => 0,
      CTRL_REV_Field_1 => 1);

   --  Software Triggered Initialization of Position Counters UPOS and LPOS
   type CTRL_SWIP_Field is
     (
      --  No action
      CTRL_SWIP_Field_0,
      --  Initialize position counter
      CTRL_SWIP_Field_1)
     with Size => 1;
   for CTRL_SWIP_Field use
     (CTRL_SWIP_Field_0 => 0,
      CTRL_SWIP_Field_1 => 1);

   --  Use Negative Edge of HOME Input
   type CTRL_HNE_Field is
     (
      --  Use positive going edge-to-trigger initialization of position
      --  counters UPOS and LPOS
      CTRL_HNE_Field_0,
      --  Use negative going edge-to-trigger initialization of position
      --  counters UPOS and LPOS
      CTRL_HNE_Field_1)
     with Size => 1;
   for CTRL_HNE_Field use
     (CTRL_HNE_Field_0 => 0,
      CTRL_HNE_Field_1 => 1);

   --  Enable HOME to Initialize Position Counters UPOS and LPOS
   type CTRL_HIP_Field is
     (
      --  No action
      CTRL_HIP_Field_0,
      --  HOME signal initializes the position counter
      CTRL_HIP_Field_1)
     with Size => 1;
   for CTRL_HIP_Field use
     (CTRL_HIP_Field_0 => 0,
      CTRL_HIP_Field_1 => 1);

   --  HOME Interrupt Enable
   type CTRL_HIE_Field is
     (
      --  Disable HOME interrupts
      CTRL_HIE_Field_0,
      --  Enable HOME interrupts
      CTRL_HIE_Field_1)
     with Size => 1;
   for CTRL_HIE_Field use
     (CTRL_HIE_Field_0 => 0,
      CTRL_HIE_Field_1 => 1);

   --  HOME Signal Transition Interrupt Request
   type CTRL_HIRQ_Field is
     (
      --  No interrupt
      CTRL_HIRQ_Field_0,
      --  HOME signal transition interrupt request
      CTRL_HIRQ_Field_1)
     with Size => 1;
   for CTRL_HIRQ_Field use
     (CTRL_HIRQ_Field_0 => 0,
      CTRL_HIRQ_Field_1 => 1);

   --  Control Register
   type ENC0_CTRL_Register is record
      --  Compare Interrupt Enable
      CMPIE  : CTRL_CMPIE_Field := NRF_SVD.ENC0.CTRL_CMPIE_Field_0;
      --  Compare Interrupt Request
      CMPIRQ : CTRL_CMPIRQ_Field := NRF_SVD.ENC0.CTRL_CMPIRQ_Field_0;
      --  Watchdog Enable
      WDE    : CTRL_WDE_Field := NRF_SVD.ENC0.CTRL_WDE_Field_0;
      --  Watchdog Timeout Interrupt Enable
      DIE    : CTRL_DIE_Field := NRF_SVD.ENC0.CTRL_DIE_Field_0;
      --  Watchdog Timeout Interrupt Request
      DIRQ   : CTRL_DIRQ_Field := NRF_SVD.ENC0.CTRL_DIRQ_Field_0;
      --  Use Negative Edge of INDEX Pulse
      XNE    : CTRL_XNE_Field := NRF_SVD.ENC0.CTRL_XNE_Field_0;
      --  INDEX Triggered Initialization of Position Counters UPOS and LPOS
      XIP    : CTRL_XIP_Field := NRF_SVD.ENC0.CTRL_XIP_Field_0;
      --  INDEX Pulse Interrupt Enable
      XIE    : CTRL_XIE_Field := NRF_SVD.ENC0.CTRL_XIE_Field_0;
      --  INDEX Pulse Interrupt Request
      XIRQ   : CTRL_XIRQ_Field := NRF_SVD.ENC0.CTRL_XIRQ_Field_0;
      --  Enable Signal Phase Count Mode
      PH1    : CTRL_PH1_Field := NRF_SVD.ENC0.CTRL_PH1_Field_0;
      --  Enable Reverse Direction Counting
      REV    : CTRL_REV_Field := NRF_SVD.ENC0.CTRL_REV_Field_0;
      --  Write-only. Software Triggered Initialization of Position Counters
      --  UPOS and LPOS
      SWIP   : CTRL_SWIP_Field := NRF_SVD.ENC0.CTRL_SWIP_Field_0;
      --  Use Negative Edge of HOME Input
      HNE    : CTRL_HNE_Field := NRF_SVD.ENC0.CTRL_HNE_Field_0;
      --  Enable HOME to Initialize Position Counters UPOS and LPOS
      HIP    : CTRL_HIP_Field := NRF_SVD.ENC0.CTRL_HIP_Field_0;
      --  HOME Interrupt Enable
      HIE    : CTRL_HIE_Field := NRF_SVD.ENC0.CTRL_HIE_Field_0;
      --  HOME Signal Transition Interrupt Request
      HIRQ   : CTRL_HIRQ_Field := NRF_SVD.ENC0.CTRL_HIRQ_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC0_CTRL_Register use record
      CMPIE  at 0 range 0 .. 0;
      CMPIRQ at 0 range 1 .. 1;
      WDE    at 0 range 2 .. 2;
      DIE    at 0 range 3 .. 3;
      DIRQ   at 0 range 4 .. 4;
      XNE    at 0 range 5 .. 5;
      XIP    at 0 range 6 .. 6;
      XIE    at 0 range 7 .. 7;
      XIRQ   at 0 range 8 .. 8;
      PH1    at 0 range 9 .. 9;
      REV    at 0 range 10 .. 10;
      SWIP   at 0 range 11 .. 11;
      HNE    at 0 range 12 .. 12;
      HIP    at 0 range 13 .. 13;
      HIE    at 0 range 14 .. 14;
      HIRQ   at 0 range 15 .. 15;
   end record;

   subtype ENC0_FILT_FILT_PER_Field is HAL.UInt8;
   subtype ENC0_FILT_FILT_CNT_Field is HAL.UInt3;

   --  Input Filter Register
   type ENC0_FILT_Register is record
      --  Input Filter Sample Period
      FILT_PER       : ENC0_FILT_FILT_PER_Field := 16#0#;
      --  Input Filter Sample Count
      FILT_CNT       : ENC0_FILT_FILT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC0_FILT_Register use record
      FILT_PER       at 0 range 0 .. 7;
      FILT_CNT       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Input Monitor Register
   type ENC0_IMR_Register is record
      --  Read-only. This is the raw HOME input.
      HOME          : Boolean;
      --  Read-only. This is the raw INDEX input.
      INDEX         : Boolean;
      --  Read-only. This is the raw PHASEB input.
      PHB           : Boolean;
      --  Read-only. This is the raw PHASEA input.
      PHA           : Boolean;
      --  Read-only. This is the filtered version of HOME input.
      FHOM          : Boolean;
      --  Read-only. This is the filtered version of INDEX input.
      FIND          : Boolean;
      --  Read-only. This is the filtered version of PHASEB input.
      FPHB          : Boolean;
      --  Read-only. This is the filtered version of PHASEA input.
      FPHA          : Boolean;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC0_IMR_Register use record
      HOME          at 0 range 0 .. 0;
      INDEX         at 0 range 1 .. 1;
      PHB           at 0 range 2 .. 2;
      PHA           at 0 range 3 .. 3;
      FHOM          at 0 range 4 .. 4;
      FIND          at 0 range 5 .. 5;
      FPHB          at 0 range 6 .. 6;
      FPHA          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ENC0_TST_TEST_COUNT_Field is HAL.UInt8;
   subtype ENC0_TST_TEST_PERIOD_Field is HAL.UInt5;

   --  Quadrature Decoder Negative Signal
   type TST_QDN_Field is
     (
      --  Leaves quadrature decoder signal in a positive direction
      TST_QDN_Field_0,
      --  Generates a negative quadrature decoder signal
      TST_QDN_Field_1)
     with Size => 1;
   for TST_QDN_Field use
     (TST_QDN_Field_0 => 0,
      TST_QDN_Field_1 => 1);

   --  Test Counter Enable
   type TST_TCE_Field is
     (
      --  Test count is not enabled
      TST_TCE_Field_0,
      --  Test count is enabled
      TST_TCE_Field_1)
     with Size => 1;
   for TST_TCE_Field use
     (TST_TCE_Field_0 => 0,
      TST_TCE_Field_1 => 1);

   --  Test Mode Enable
   type TST_TEN_Field is
     (
      --  Test module is not enabled
      TST_TEN_Field_0,
      --  Test module is enabled
      TST_TEN_Field_1)
     with Size => 1;
   for TST_TEN_Field use
     (TST_TEN_Field_0 => 0,
      TST_TEN_Field_1 => 1);

   --  Test Register
   type ENC0_TST_Register is record
      --  These bits hold the number of quadrature advances to generate.
      TEST_COUNT  : ENC0_TST_TEST_COUNT_Field := 16#0#;
      --  These bits hold the period of quadrature phase in IPBus clock cycles.
      TEST_PERIOD : ENC0_TST_TEST_PERIOD_Field := 16#0#;
      --  Quadrature Decoder Negative Signal
      QDN         : TST_QDN_Field := NRF_SVD.ENC0.TST_QDN_Field_0;
      --  Test Counter Enable
      TCE         : TST_TCE_Field := NRF_SVD.ENC0.TST_TCE_Field_0;
      --  Test Mode Enable
      TEN         : TST_TEN_Field := NRF_SVD.ENC0.TST_TEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC0_TST_Register use record
      TEST_COUNT  at 0 range 0 .. 7;
      TEST_PERIOD at 0 range 8 .. 12;
      QDN         at 0 range 13 .. 13;
      TCE         at 0 range 14 .. 14;
      TEN         at 0 range 15 .. 15;
   end record;

   --  Update Hold Registers
   type CTRL2_UPDHLD_Field is
     (
      --  Disable updates of hold registers on rising edge of TRIGGER
      CTRL2_UPDHLD_Field_0,
      --  Enable updates of hold registers on rising edge of TRIGGER
      CTRL2_UPDHLD_Field_1)
     with Size => 1;
   for CTRL2_UPDHLD_Field use
     (CTRL2_UPDHLD_Field_0 => 0,
      CTRL2_UPDHLD_Field_1 => 1);

   --  Update Position Registers
   type CTRL2_UPDPOS_Field is
     (
      --  No action for POSD, REV, UPOS and LPOS on rising edge of TRIGGER
      CTRL2_UPDPOS_Field_0,
      --  Clear POSD, REV, UPOS and LPOS on rising edge of TRIGGER
      CTRL2_UPDPOS_Field_1)
     with Size => 1;
   for CTRL2_UPDPOS_Field use
     (CTRL2_UPDPOS_Field_0 => 0,
      CTRL2_UPDPOS_Field_1 => 1);

   --  Enable Modulo Counting
   type CTRL2_MOD_Field is
     (
      --  Disable modulo counting
      CTRL2_MOD_Field_0,
      --  Enable modulo counting
      CTRL2_MOD_Field_1)
     with Size => 1;
   for CTRL2_MOD_Field use
     (CTRL2_MOD_Field_0 => 0,
      CTRL2_MOD_Field_1 => 1);

   --  Count Direction Flag
   type CTRL2_DIR_Field is
     (
      --  Last count was in the down direction
      CTRL2_DIR_Field_0,
      --  Last count was in the up direction
      CTRL2_DIR_Field_1)
     with Size => 1;
   for CTRL2_DIR_Field use
     (CTRL2_DIR_Field_0 => 0,
      CTRL2_DIR_Field_1 => 1);

   --  Roll-under Interrupt Enable
   type CTRL2_RUIE_Field is
     (
      --  Roll-under interrupt is disabled
      CTRL2_RUIE_Field_0,
      --  Roll-under interrupt is enabled
      CTRL2_RUIE_Field_1)
     with Size => 1;
   for CTRL2_RUIE_Field use
     (CTRL2_RUIE_Field_0 => 0,
      CTRL2_RUIE_Field_1 => 1);

   --  Roll-under Interrupt Request
   type CTRL2_RUIRQ_Field is
     (
      --  No roll-under has occurred
      CTRL2_RUIRQ_Field_0,
      --  Roll-under has occurred
      CTRL2_RUIRQ_Field_1)
     with Size => 1;
   for CTRL2_RUIRQ_Field use
     (CTRL2_RUIRQ_Field_0 => 0,
      CTRL2_RUIRQ_Field_1 => 1);

   --  Roll-over Interrupt Enable
   type CTRL2_ROIE_Field is
     (
      --  Roll-over interrupt is disabled
      CTRL2_ROIE_Field_0,
      --  Roll-over interrupt is enabled
      CTRL2_ROIE_Field_1)
     with Size => 1;
   for CTRL2_ROIE_Field use
     (CTRL2_ROIE_Field_0 => 0,
      CTRL2_ROIE_Field_1 => 1);

   --  Roll-over Interrupt Request
   type CTRL2_ROIRQ_Field is
     (
      --  No roll-over has occurred
      CTRL2_ROIRQ_Field_0,
      --  Roll-over has occurred
      CTRL2_ROIRQ_Field_1)
     with Size => 1;
   for CTRL2_ROIRQ_Field use
     (CTRL2_ROIRQ_Field_0 => 0,
      CTRL2_ROIRQ_Field_1 => 1);

   --  Revolution Counter Modulus Enable
   type CTRL2_REVMOD_Field is
     (
      --  Use INDEX pulse to increment/decrement revolution counter (REV).
      CTRL2_REVMOD_Field_0,
      --  Use modulus counting roll-over/under to increment/decrement
      --  revolution counter (REV).
      CTRL2_REVMOD_Field_1)
     with Size => 1;
   for CTRL2_REVMOD_Field use
     (CTRL2_REVMOD_Field_0 => 0,
      CTRL2_REVMOD_Field_1 => 1);

   --  Output Control
   type CTRL2_OUTCTL_Field is
     (
      --  POSMATCH pulses when a match occurs between the position counters
      --  (POS) and the compare value (COMP).
      CTRL2_OUTCTL_Field_0,
      --  POSMATCH pulses when the UPOS, LPOS, REV, or POSD registers are read.
      CTRL2_OUTCTL_Field_1)
     with Size => 1;
   for CTRL2_OUTCTL_Field use
     (CTRL2_OUTCTL_Field_0 => 0,
      CTRL2_OUTCTL_Field_1 => 1);

   --  Simultaneous PHASEA and PHASEB Change Interrupt Enable
   type CTRL2_SABIE_Field is
     (
      --  Simultaneous PHASEA and PHASEB change interrupt disabled.
      CTRL2_SABIE_Field_0,
      --  Simultaneous PHASEA and PHASEB change interrupt enabled.
      CTRL2_SABIE_Field_1)
     with Size => 1;
   for CTRL2_SABIE_Field use
     (CTRL2_SABIE_Field_0 => 0,
      CTRL2_SABIE_Field_1 => 1);

   --  Simultaneous PHASEA and PHASEB Change Interrupt Request
   type CTRL2_SABIRQ_Field is
     (
      --  No simultaneous change of PHASEA and PHASEB has occurred.
      CTRL2_SABIRQ_Field_0,
      --  A simultaneous change of PHASEA and PHASEB has occurred.
      CTRL2_SABIRQ_Field_1)
     with Size => 1;
   for CTRL2_SABIRQ_Field use
     (CTRL2_SABIRQ_Field_0 => 0,
      CTRL2_SABIRQ_Field_1 => 1);

   --  Control 2 Register
   type ENC0_CTRL2_Register is record
      --  Update Hold Registers
      UPDHLD         : CTRL2_UPDHLD_Field :=
                        NRF_SVD.ENC0.CTRL2_UPDHLD_Field_0;
      --  Update Position Registers
      UPDPOS         : CTRL2_UPDPOS_Field :=
                        NRF_SVD.ENC0.CTRL2_UPDPOS_Field_0;
      --  Enable Modulo Counting
      MOD_k          : CTRL2_MOD_Field := NRF_SVD.ENC0.CTRL2_MOD_Field_0;
      --  Read-only. Count Direction Flag
      DIR            : CTRL2_DIR_Field := NRF_SVD.ENC0.CTRL2_DIR_Field_0;
      --  Roll-under Interrupt Enable
      RUIE           : CTRL2_RUIE_Field := NRF_SVD.ENC0.CTRL2_RUIE_Field_0;
      --  Roll-under Interrupt Request
      RUIRQ          : CTRL2_RUIRQ_Field := NRF_SVD.ENC0.CTRL2_RUIRQ_Field_0;
      --  Roll-over Interrupt Enable
      ROIE           : CTRL2_ROIE_Field := NRF_SVD.ENC0.CTRL2_ROIE_Field_0;
      --  Roll-over Interrupt Request
      ROIRQ          : CTRL2_ROIRQ_Field := NRF_SVD.ENC0.CTRL2_ROIRQ_Field_0;
      --  Revolution Counter Modulus Enable
      REVMOD         : CTRL2_REVMOD_Field :=
                        NRF_SVD.ENC0.CTRL2_REVMOD_Field_0;
      --  Output Control
      OUTCTL         : CTRL2_OUTCTL_Field :=
                        NRF_SVD.ENC0.CTRL2_OUTCTL_Field_0;
      --  Simultaneous PHASEA and PHASEB Change Interrupt Enable
      SABIE          : CTRL2_SABIE_Field := NRF_SVD.ENC0.CTRL2_SABIE_Field_0;
      --  Simultaneous PHASEA and PHASEB Change Interrupt Request
      SABIRQ         : CTRL2_SABIRQ_Field :=
                        NRF_SVD.ENC0.CTRL2_SABIRQ_Field_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC0_CTRL2_Register use record
      UPDHLD         at 0 range 0 .. 0;
      UPDPOS         at 0 range 1 .. 1;
      MOD_k          at 0 range 2 .. 2;
      DIR            at 0 range 3 .. 3;
      RUIE           at 0 range 4 .. 4;
      RUIRQ          at 0 range 5 .. 5;
      ROIE           at 0 range 6 .. 6;
      ROIRQ          at 0 range 7 .. 7;
      REVMOD         at 0 range 8 .. 8;
      OUTCTL         at 0 range 9 .. 9;
      SABIE          at 0 range 10 .. 10;
      SABIRQ         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Quadrature Decoder
   type ENC0_Peripheral is record
      --  Control Register
      CTRL  : aliased ENC0_CTRL_Register;
      --  Input Filter Register
      FILT  : aliased ENC0_FILT_Register;
      --  Watchdog Timeout Register
      WTR   : aliased HAL.UInt16;
      --  Position Difference Counter Register
      POSD  : aliased HAL.UInt16;
      --  Position Difference Hold Register
      POSDH : aliased HAL.UInt16;
      --  Revolution Counter Register
      REV   : aliased HAL.UInt16;
      --  Revolution Hold Register
      REVH  : aliased HAL.UInt16;
      --  Upper Position Counter Register
      UPOS  : aliased HAL.UInt16;
      --  Lower Position Counter Register
      LPOS  : aliased HAL.UInt16;
      --  Upper Position Hold Register
      UPOSH : aliased HAL.UInt16;
      --  Lower Position Hold Register
      LPOSH : aliased HAL.UInt16;
      --  Upper Initialization Register
      UINIT : aliased HAL.UInt16;
      --  Lower Initialization Register
      LINIT : aliased HAL.UInt16;
      --  Input Monitor Register
      IMR   : aliased ENC0_IMR_Register;
      --  Test Register
      TST   : aliased ENC0_TST_Register;
      --  Control 2 Register
      CTRL2 : aliased ENC0_CTRL2_Register;
      --  Upper Modulus Register
      UMOD  : aliased HAL.UInt16;
      --  Lower Modulus Register
      LMOD  : aliased HAL.UInt16;
      --  Upper Position Compare Register
      UCOMP : aliased HAL.UInt16;
      --  Lower Position Compare Register
      LCOMP : aliased HAL.UInt16;
   end record
     with Volatile;

   for ENC0_Peripheral use record
      CTRL  at 16#0# range 0 .. 15;
      FILT  at 16#2# range 0 .. 15;
      WTR   at 16#4# range 0 .. 15;
      POSD  at 16#6# range 0 .. 15;
      POSDH at 16#8# range 0 .. 15;
      REV   at 16#A# range 0 .. 15;
      REVH  at 16#C# range 0 .. 15;
      UPOS  at 16#E# range 0 .. 15;
      LPOS  at 16#10# range 0 .. 15;
      UPOSH at 16#12# range 0 .. 15;
      LPOSH at 16#14# range 0 .. 15;
      UINIT at 16#16# range 0 .. 15;
      LINIT at 16#18# range 0 .. 15;
      IMR   at 16#1A# range 0 .. 15;
      TST   at 16#1C# range 0 .. 15;
      CTRL2 at 16#1E# range 0 .. 15;
      UMOD  at 16#20# range 0 .. 15;
      LMOD  at 16#22# range 0 .. 15;
      UCOMP at 16#24# range 0 .. 15;
      LCOMP at 16#26# range 0 .. 15;
   end record;

   --  Quadrature Decoder
   ENC0_Periph : aliased ENC0_Peripheral
     with Import, Address => ENC0_Base;

end NRF_SVD.ENC0;
