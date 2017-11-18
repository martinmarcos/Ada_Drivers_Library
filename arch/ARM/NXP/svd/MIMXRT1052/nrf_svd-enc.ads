--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ENC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Compare Interrupt Enable
   type CTRL_CMPIE_Field is
     (
      --  Compare interrupt is disabled
      Cmpie_0,
      --  Compare interrupt is enabled
      Cmpie_1)
     with Size => 1;
   for CTRL_CMPIE_Field use
     (Cmpie_0 => 0,
      Cmpie_1 => 1);

   --  Compare Interrupt Request
   type CTRL_CMPIRQ_Field is
     (
      --  No match has occurred
      Cmpirq_0,
      --  COMP match has occurred
      Cmpirq_1)
     with Size => 1;
   for CTRL_CMPIRQ_Field use
     (Cmpirq_0 => 0,
      Cmpirq_1 => 1);

   --  Watchdog Enable
   type CTRL_WDE_Field is
     (
      --  Watchdog timer is disabled
      Wde_0,
      --  Watchdog timer is enabled
      Wde_1)
     with Size => 1;
   for CTRL_WDE_Field use
     (Wde_0 => 0,
      Wde_1 => 1);

   --  Watchdog Timeout Interrupt Enable
   type CTRL_DIE_Field is
     (
      --  Watchdog timer interrupt is disabled
      Die_0,
      --  Watchdog timer interrupt is enabled
      Die_1)
     with Size => 1;
   for CTRL_DIE_Field use
     (Die_0 => 0,
      Die_1 => 1);

   --  Watchdog Timeout Interrupt Request
   type CTRL_DIRQ_Field is
     (
      --  No interrupt has occurred
      Dirq_0,
      --  Watchdog timeout interrupt has occurred
      Dirq_1)
     with Size => 1;
   for CTRL_DIRQ_Field use
     (Dirq_0 => 0,
      Dirq_1 => 1);

   --  Use Negative Edge of INDEX Pulse
   type CTRL_XNE_Field is
     (
      --  Use positive transition edge of INDEX pulse
      Xne_0,
      --  Use negative transition edge of INDEX pulse
      Xne_1)
     with Size => 1;
   for CTRL_XNE_Field use
     (Xne_0 => 0,
      Xne_1 => 1);

   --  INDEX Triggered Initialization of Position Counters UPOS and LPOS
   type CTRL_XIP_Field is
     (
      --  No action
      Xip_0,
      --  INDEX pulse initializes the position counter
      Xip_1)
     with Size => 1;
   for CTRL_XIP_Field use
     (Xip_0 => 0,
      Xip_1 => 1);

   --  INDEX Pulse Interrupt Enable
   type CTRL_XIE_Field is
     (
      --  INDEX pulse interrupt is disabled
      Xie_0,
      --  INDEX pulse interrupt is enabled
      Xie_1)
     with Size => 1;
   for CTRL_XIE_Field use
     (Xie_0 => 0,
      Xie_1 => 1);

   --  INDEX Pulse Interrupt Request
   type CTRL_XIRQ_Field is
     (
      --  No interrupt has occurred
      Xirq_0,
      --  INDEX pulse interrupt has occurred
      Xirq_1)
     with Size => 1;
   for CTRL_XIRQ_Field use
     (Xirq_0 => 0,
      Xirq_1 => 1);

   --  Enable Signal Phase Count Mode
   type CTRL_PH1_Field is
     (
      --  Use standard quadrature decoder where PHASEA and PHASEB represent a
      --  two phase quadrature signal.
      Ph1_0,
      --  Bypass the quadrature decoder. A positive transition of the PHASEA
      --  input generates a count signal. The PHASEB input and the REV bit
      --  control the counter direction. If CTRL[REV] = 0, PHASEB = 0, then
      --  count up If CTRL[REV] = 0, PHASEB = 1, then count down If CTRL[REV] =
      --  1, PHASEB = 0, then count down If CTRL[REV] = 1, PHASEB = 1, then
      --  count up
      Ph1_1)
     with Size => 1;
   for CTRL_PH1_Field use
     (Ph1_0 => 0,
      Ph1_1 => 1);

   --  Enable Reverse Direction Counting
   type CTRL_REV_Field is
     (
      --  Count normally
      Rev_0,
      --  Count in the reverse direction
      Rev_1)
     with Size => 1;
   for CTRL_REV_Field use
     (Rev_0 => 0,
      Rev_1 => 1);

   --  Software Triggered Initialization of Position Counters UPOS and LPOS
   type CTRL_SWIP_Field is
     (
      --  No action
      Swip_0,
      --  Initialize position counter
      Swip_1)
     with Size => 1;
   for CTRL_SWIP_Field use
     (Swip_0 => 0,
      Swip_1 => 1);

   --  Use Negative Edge of HOME Input
   type CTRL_HNE_Field is
     (
      --  Use positive going edge-to-trigger initialization of position
      --  counters UPOS and LPOS
      Hne_0,
      --  Use negative going edge-to-trigger initialization of position
      --  counters UPOS and LPOS
      Hne_1)
     with Size => 1;
   for CTRL_HNE_Field use
     (Hne_0 => 0,
      Hne_1 => 1);

   --  Enable HOME to Initialize Position Counters UPOS and LPOS
   type CTRL_HIP_Field is
     (
      --  No action
      Hip_0,
      --  HOME signal initializes the position counter
      Hip_1)
     with Size => 1;
   for CTRL_HIP_Field use
     (Hip_0 => 0,
      Hip_1 => 1);

   --  HOME Interrupt Enable
   type CTRL_HIE_Field is
     (
      --  Disable HOME interrupts
      Hie_0,
      --  Enable HOME interrupts
      Hie_1)
     with Size => 1;
   for CTRL_HIE_Field use
     (Hie_0 => 0,
      Hie_1 => 1);

   --  HOME Signal Transition Interrupt Request
   type CTRL_HIRQ_Field is
     (
      --  No interrupt
      Hirq_0,
      --  HOME signal transition interrupt request
      Hirq_1)
     with Size => 1;
   for CTRL_HIRQ_Field use
     (Hirq_0 => 0,
      Hirq_1 => 1);

   --  Control Register
   type ENC1_CTRL_Register is record
      --  Compare Interrupt Enable
      CMPIE  : CTRL_CMPIE_Field := NRF_SVD.ENC.Cmpie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Compare Interrupt Request
      CMPIRQ : CTRL_CMPIRQ_Field := NRF_SVD.ENC.Cmpirq_0;
      --  Watchdog Enable
      WDE    : CTRL_WDE_Field := NRF_SVD.ENC.Wde_0;
      --  Watchdog Timeout Interrupt Enable
      DIE    : CTRL_DIE_Field := NRF_SVD.ENC.Die_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Watchdog Timeout Interrupt Request
      DIRQ   : CTRL_DIRQ_Field := NRF_SVD.ENC.Dirq_0;
      --  Use Negative Edge of INDEX Pulse
      XNE    : CTRL_XNE_Field := NRF_SVD.ENC.Xne_0;
      --  INDEX Triggered Initialization of Position Counters UPOS and LPOS
      XIP    : CTRL_XIP_Field := NRF_SVD.ENC.Xip_0;
      --  INDEX Pulse Interrupt Enable
      XIE    : CTRL_XIE_Field := NRF_SVD.ENC.Xie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. INDEX Pulse Interrupt Request
      XIRQ   : CTRL_XIRQ_Field := NRF_SVD.ENC.Xirq_0;
      --  Enable Signal Phase Count Mode
      PH1    : CTRL_PH1_Field := NRF_SVD.ENC.Ph1_0;
      --  Enable Reverse Direction Counting
      REV    : CTRL_REV_Field := NRF_SVD.ENC.Rev_0;
      --  Write-only. Software Triggered Initialization of Position Counters
      --  UPOS and LPOS
      SWIP   : CTRL_SWIP_Field := NRF_SVD.ENC.Swip_0;
      --  Use Negative Edge of HOME Input
      HNE    : CTRL_HNE_Field := NRF_SVD.ENC.Hne_0;
      --  Enable HOME to Initialize Position Counters UPOS and LPOS
      HIP    : CTRL_HIP_Field := NRF_SVD.ENC.Hip_0;
      --  HOME Interrupt Enable
      HIE    : CTRL_HIE_Field := NRF_SVD.ENC.Hie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. HOME Signal Transition Interrupt Request
      HIRQ   : CTRL_HIRQ_Field := NRF_SVD.ENC.Hirq_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC1_CTRL_Register use record
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

   subtype ENC1_FILT_FILT_PER_Field is HAL.UInt8;
   subtype ENC1_FILT_FILT_CNT_Field is HAL.UInt3;

   --  Input Filter Register
   type ENC1_FILT_Register is record
      --  Input Filter Sample Period
      FILT_PER       : ENC1_FILT_FILT_PER_Field := 16#0#;
      --  Input Filter Sample Count
      FILT_CNT       : ENC1_FILT_FILT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC1_FILT_Register use record
      FILT_PER       at 0 range 0 .. 7;
      FILT_CNT       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Input Monitor Register
   type ENC1_IMR_Register is record
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

   for ENC1_IMR_Register use record
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

   subtype ENC1_TST_TEST_COUNT_Field is HAL.UInt8;
   subtype ENC1_TST_TEST_PERIOD_Field is HAL.UInt5;

   --  Quadrature Decoder Negative Signal
   type TST_QDN_Field is
     (
      --  Leaves quadrature decoder signal in a positive direction
      Qdn_0,
      --  Generates a negative quadrature decoder signal
      Qdn_1)
     with Size => 1;
   for TST_QDN_Field use
     (Qdn_0 => 0,
      Qdn_1 => 1);

   --  Test Counter Enable
   type TST_TCE_Field is
     (
      --  Test count is not enabled
      Tce_0,
      --  Test count is enabled
      Tce_1)
     with Size => 1;
   for TST_TCE_Field use
     (Tce_0 => 0,
      Tce_1 => 1);

   --  Test Mode Enable
   type TST_TEN_Field is
     (
      --  Test module is not enabled
      Ten_0,
      --  Test module is enabled
      Ten_1)
     with Size => 1;
   for TST_TEN_Field use
     (Ten_0 => 0,
      Ten_1 => 1);

   --  Test Register
   type ENC1_TST_Register is record
      --  These bits hold the number of quadrature advances to generate.
      TEST_COUNT  : ENC1_TST_TEST_COUNT_Field := 16#0#;
      --  These bits hold the period of quadrature phase in IPBus clock cycles.
      TEST_PERIOD : ENC1_TST_TEST_PERIOD_Field := 16#0#;
      --  Quadrature Decoder Negative Signal
      QDN         : TST_QDN_Field := NRF_SVD.ENC.Qdn_0;
      --  Test Counter Enable
      TCE         : TST_TCE_Field := NRF_SVD.ENC.Tce_0;
      --  Test Mode Enable
      TEN         : TST_TEN_Field := NRF_SVD.ENC.Ten_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC1_TST_Register use record
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
      Updhld_0,
      --  Enable updates of hold registers on rising edge of TRIGGER
      Updhld_1)
     with Size => 1;
   for CTRL2_UPDHLD_Field use
     (Updhld_0 => 0,
      Updhld_1 => 1);

   --  Update Position Registers
   type CTRL2_UPDPOS_Field is
     (
      --  No action for POSD, REV, UPOS and LPOS on rising edge of TRIGGER
      Updpos_0,
      --  Clear POSD, REV, UPOS and LPOS on rising edge of TRIGGER
      Updpos_1)
     with Size => 1;
   for CTRL2_UPDPOS_Field use
     (Updpos_0 => 0,
      Updpos_1 => 1);

   --  Enable Modulo Counting
   type CTRL2_MOD_Field is
     (
      --  Disable modulo counting
      Mod_0,
      --  Enable modulo counting
      Mod_1)
     with Size => 1;
   for CTRL2_MOD_Field use
     (Mod_0 => 0,
      Mod_1 => 1);

   --  Count Direction Flag
   type CTRL2_DIR_Field is
     (
      --  Last count was in the down direction
      Dir_0,
      --  Last count was in the up direction
      Dir_1)
     with Size => 1;
   for CTRL2_DIR_Field use
     (Dir_0 => 0,
      Dir_1 => 1);

   --  Roll-under Interrupt Enable
   type CTRL2_RUIE_Field is
     (
      --  Roll-under interrupt is disabled
      Ruie_0,
      --  Roll-under interrupt is enabled
      Ruie_1)
     with Size => 1;
   for CTRL2_RUIE_Field use
     (Ruie_0 => 0,
      Ruie_1 => 1);

   --  Roll-under Interrupt Request
   type CTRL2_RUIRQ_Field is
     (
      --  No roll-under has occurred
      Ruirq_0,
      --  Roll-under has occurred
      Ruirq_1)
     with Size => 1;
   for CTRL2_RUIRQ_Field use
     (Ruirq_0 => 0,
      Ruirq_1 => 1);

   --  Roll-over Interrupt Enable
   type CTRL2_ROIE_Field is
     (
      --  Roll-over interrupt is disabled
      Roie_0,
      --  Roll-over interrupt is enabled
      Roie_1)
     with Size => 1;
   for CTRL2_ROIE_Field use
     (Roie_0 => 0,
      Roie_1 => 1);

   --  Roll-over Interrupt Request
   type CTRL2_ROIRQ_Field is
     (
      --  No roll-over has occurred
      Roirq_0,
      --  Roll-over has occurred
      Roirq_1)
     with Size => 1;
   for CTRL2_ROIRQ_Field use
     (Roirq_0 => 0,
      Roirq_1 => 1);

   --  Revolution Counter Modulus Enable
   type CTRL2_REVMOD_Field is
     (
      --  Use INDEX pulse to increment/decrement revolution counter (REV).
      Revmod_0,
      --  Use modulus counting roll-over/under to increment/decrement
      --  revolution counter (REV).
      Revmod_1)
     with Size => 1;
   for CTRL2_REVMOD_Field use
     (Revmod_0 => 0,
      Revmod_1 => 1);

   --  Output Control
   type CTRL2_OUTCTL_Field is
     (
      --  POSMATCH pulses when a match occurs between the position counters
      --  (POS) and the compare value (COMP).
      Outctl_0,
      --  POSMATCH pulses when the UPOS, LPOS, REV, or POSD registers are read.
      Outctl_1)
     with Size => 1;
   for CTRL2_OUTCTL_Field use
     (Outctl_0 => 0,
      Outctl_1 => 1);

   --  Simultaneous PHASEA and PHASEB Change Interrupt Enable
   type CTRL2_SABIE_Field is
     (
      --  Simultaneous PHASEA and PHASEB change interrupt disabled.
      Sabie_0,
      --  Simultaneous PHASEA and PHASEB change interrupt enabled.
      Sabie_1)
     with Size => 1;
   for CTRL2_SABIE_Field use
     (Sabie_0 => 0,
      Sabie_1 => 1);

   --  Simultaneous PHASEA and PHASEB Change Interrupt Request
   type CTRL2_SABIRQ_Field is
     (
      --  No simultaneous change of PHASEA and PHASEB has occurred.
      Sabirq_0,
      --  A simultaneous change of PHASEA and PHASEB has occurred.
      Sabirq_1)
     with Size => 1;
   for CTRL2_SABIRQ_Field use
     (Sabirq_0 => 0,
      Sabirq_1 => 1);

   --  Control 2 Register
   type ENC1_CTRL2_Register is record
      --  Update Hold Registers
      UPDHLD         : CTRL2_UPDHLD_Field := NRF_SVD.ENC.Updhld_0;
      --  Update Position Registers
      UPDPOS         : CTRL2_UPDPOS_Field := NRF_SVD.ENC.Updpos_0;
      --  Enable Modulo Counting
      MOD_k          : CTRL2_MOD_Field := NRF_SVD.ENC.Mod_0;
      --  Read-only. Count Direction Flag
      DIR            : CTRL2_DIR_Field := NRF_SVD.ENC.Dir_0;
      --  Roll-under Interrupt Enable
      RUIE           : CTRL2_RUIE_Field := NRF_SVD.ENC.Ruie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Roll-under Interrupt Request
      RUIRQ          : CTRL2_RUIRQ_Field := NRF_SVD.ENC.Ruirq_0;
      --  Roll-over Interrupt Enable
      ROIE           : CTRL2_ROIE_Field := NRF_SVD.ENC.Roie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Roll-over Interrupt Request
      ROIRQ          : CTRL2_ROIRQ_Field := NRF_SVD.ENC.Roirq_0;
      --  Revolution Counter Modulus Enable
      REVMOD         : CTRL2_REVMOD_Field := NRF_SVD.ENC.Revmod_0;
      --  Output Control
      OUTCTL         : CTRL2_OUTCTL_Field := NRF_SVD.ENC.Outctl_0;
      --  Simultaneous PHASEA and PHASEB Change Interrupt Enable
      SABIE          : CTRL2_SABIE_Field := NRF_SVD.ENC.Sabie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Simultaneous PHASEA and PHASEB Change Interrupt Request
      SABIRQ         : CTRL2_SABIRQ_Field := NRF_SVD.ENC.Sabirq_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ENC1_CTRL2_Register use record
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
   type ENC_Peripheral is record
      --  Control Register
      CTRL  : aliased ENC1_CTRL_Register;
      --  Input Filter Register
      FILT  : aliased ENC1_FILT_Register;
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
      IMR   : aliased ENC1_IMR_Register;
      --  Test Register
      TST   : aliased ENC1_TST_Register;
      --  Control 2 Register
      CTRL2 : aliased ENC1_CTRL2_Register;
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

   for ENC_Peripheral use record
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
   ENC1_Periph : aliased ENC_Peripheral
     with Import, Address => System'To_Address (16#403C8000#);

   --  Quadrature Decoder
   ENC2_Periph : aliased ENC_Peripheral
     with Import, Address => System'To_Address (16#403CC000#);

   --  Quadrature Decoder
   ENC3_Periph : aliased ENC_Peripheral
     with Import, Address => System'To_Address (16#403D0000#);

   --  Quadrature Decoder
   ENC4_Periph : aliased ENC_Peripheral
     with Import, Address => System'To_Address (16#403D4000#);

end NRF_SVD.ENC;
