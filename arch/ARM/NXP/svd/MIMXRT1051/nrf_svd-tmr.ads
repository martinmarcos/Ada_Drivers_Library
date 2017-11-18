--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TMR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Output Mode
   type CTRL0_OUTMODE_Field is
     (
      --  Asserted while counter is active
      Outmode_0,
      --  Clear OFLAG output on successful compare
      Outmode_1,
      --  Set OFLAG output on successful compare
      Outmode_2,
      --  Toggle OFLAG output on successful compare
      Outmode_3,
      --  Toggle OFLAG output using alternating compare registers
      Outmode_4,
      --  Set on compare, cleared on secondary source input edge
      Outmode_5,
      --  Set on compare, cleared on counter rollover
      Outmode_6,
      --  Enable gated clock output while counter is active
      Outmode_7)
     with Size => 3;
   for CTRL0_OUTMODE_Field use
     (Outmode_0 => 0,
      Outmode_1 => 1,
      Outmode_2 => 2,
      Outmode_3 => 3,
      Outmode_4 => 4,
      Outmode_5 => 5,
      Outmode_6 => 6,
      Outmode_7 => 7);

   --  Co-Channel Initialization
   type CTRL0_COINIT_Field is
     (
      --  Co-channel counter/timers cannot force a re-initialization of this
      --  counter/timer
      Coinit_0,
      --  Co-channel counter/timers may force a re-initialization of this
      --  counter/timer
      Coinit_1)
     with Size => 1;
   for CTRL0_COINIT_Field use
     (Coinit_0 => 0,
      Coinit_1 => 1);

   --  Count Direction
   type CTRL0_DIR_Field is
     (
      --  Count up.
      Dir_0,
      --  Count down.
      Dir_1)
     with Size => 1;
   for CTRL0_DIR_Field use
     (Dir_0 => 0,
      Dir_1 => 1);

   --  Count Length
   type CTRL0_LENGTH_Field is
     (
      --  Count until roll over at $FFFF and continue from $0000.
      Length_0,
      --  Count until compare, then re-initialize. If counting up, a successful
      --  compare occurs when the counter reaches a COMP1 value. If counting
      --  down, a successful compare occurs when the counter reaches a COMP2
      --  value. When output mode $4 is used, alternating values of COMP1 and
      --  COMP2 are used to generate successful comparisons. For example, the
      --  counter counts until a COMP1 value is reached, re-initializes, counts
      --  until COMP2 value is reached, re-initializes, counts until COMP1
      --  value is reached, and so on.
      Length_1)
     with Size => 1;
   for CTRL0_LENGTH_Field use
     (Length_0 => 0,
      Length_1 => 1);

   --  Count Once
   type CTRL0_ONCE_Field is
     (
      --  Count repeatedly.
      Once_0,
      --  Count until compare and then stop. If counting up, a successful
      --  compare occurs when the counter reaches a COMP1 value. If counting
      --  down, a successful compare occurs when the counter reaches a COMP2
      --  value. When output mode $4 is used, the counter re-initializes after
      --  reaching the COMP1 value, continues to count to the COMP2 value, and
      --  then stops.
      Once_1)
     with Size => 1;
   for CTRL0_ONCE_Field use
     (Once_0 => 0,
      Once_1 => 1);

   --  Secondary Count Source
   type CTRL0_SCS_Field is
     (
      --  Counter 0 input pin
      Scs_0,
      --  Counter 1 input pin
      Scs_1,
      --  Counter 2 input pin
      Scs_2,
      --  Counter 3 input pin
      Scs_3)
     with Size => 2;
   for CTRL0_SCS_Field use
     (Scs_0 => 0,
      Scs_1 => 1,
      Scs_2 => 2,
      Scs_3 => 3);

   --  Primary Count Source
   type CTRL0_PCS_Field is
     (
      --  Counter 0 input pin
      Pcs_0,
      --  Counter 1 input pin
      Pcs_1,
      --  Counter 2 input pin
      Pcs_2,
      --  Counter 3 input pin
      Pcs_3,
      --  Counter 0 output
      Pcs_4,
      --  Counter 1 output
      Pcs_5,
      --  Counter 2 output
      Pcs_6,
      --  Counter 3 output
      Pcs_7,
      --  IP bus clock divide by 1 prescaler
      Pcs_8,
      --  IP bus clock divide by 2 prescaler
      Pcs_9,
      --  IP bus clock divide by 4 prescaler
      Pcs_10,
      --  IP bus clock divide by 8 prescaler
      Pcs_11,
      --  IP bus clock divide by 16 prescaler
      Pcs_12,
      --  IP bus clock divide by 32 prescaler
      Pcs_13,
      --  IP bus clock divide by 64 prescaler
      Pcs_14,
      --  IP bus clock divide by 128 prescaler
      Pcs_15)
     with Size => 4;
   for CTRL0_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_4 => 4,
      Pcs_5 => 5,
      Pcs_6 => 6,
      Pcs_7 => 7,
      Pcs_8 => 8,
      Pcs_9 => 9,
      Pcs_10 => 10,
      Pcs_11 => 11,
      Pcs_12 => 12,
      Pcs_13 => 13,
      Pcs_14 => 14,
      Pcs_15 => 15);

   --  Count Mode
   type CTRL0_CM_Field is
     (
      --  No operation
      Cm_0,
      --  Count rising edges of primary sourceRising edges are counted only
      --  when SCTRL[IPS] = 0. Falling edges are counted when SCTRL[IPS] = 1.
      --  If the primary count source is IP bus clock divide by 1, only rising
      --  edges are counted regardless of the value of SCTRL[IPS].
      Cm_1,
      --  Count rising and falling edges of primary sourceIP bus clock divide
      --  by 1 cannot be used as a primary count source in edge count mode.
      Cm_2,
      --  Count rising edges of primary source while secondary input high
      --  active
      Cm_3,
      --  Quadrature count mode, uses primary and secondary sources
      Cm_4,
      --  Count rising edges of primary source; secondary source specifies
      --  directionRising edges are counted only when SCTRL[IPS] = 0. Falling
      --  edges are counted when SCTRL[IPS] = 1.
      Cm_5,
      --  Edge of secondary source triggers primary count until compare
      Cm_6,
      --  Cascaded counter mode (up/down)The primary count source must be set
      --  to one of the counter outputs.
      Cm_7)
     with Size => 3;
   for CTRL0_CM_Field use
     (Cm_0 => 0,
      Cm_1 => 1,
      Cm_2 => 2,
      Cm_3 => 3,
      Cm_4 => 4,
      Cm_5 => 5,
      Cm_6 => 6,
      Cm_7 => 7);

   --  Timer Channel Control Register
   type CTRL_Register is record
      --  Output Mode
      OUTMODE : CTRL0_OUTMODE_Field := NRF_SVD.TMR.Outmode_0;
      --  Co-Channel Initialization
      COINIT  : CTRL0_COINIT_Field := NRF_SVD.TMR.Coinit_0;
      --  Count Direction
      DIR     : CTRL0_DIR_Field := NRF_SVD.TMR.Dir_0;
      --  Count Length
      LENGTH  : CTRL0_LENGTH_Field := NRF_SVD.TMR.Length_0;
      --  Count Once
      ONCE    : CTRL0_ONCE_Field := NRF_SVD.TMR.Once_0;
      --  Secondary Count Source
      SCS     : CTRL0_SCS_Field := NRF_SVD.TMR.Scs_0;
      --  Primary Count Source
      PCS     : CTRL0_PCS_Field := NRF_SVD.TMR.Pcs_0;
      --  Count Mode
      CM      : CTRL0_CM_Field := NRF_SVD.TMR.Cm_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      OUTMODE at 0 range 0 .. 2;
      COINIT  at 0 range 3 .. 3;
      DIR     at 0 range 4 .. 4;
      LENGTH  at 0 range 5 .. 5;
      ONCE    at 0 range 6 .. 6;
      SCS     at 0 range 7 .. 8;
      PCS     at 0 range 9 .. 12;
      CM      at 0 range 13 .. 15;
   end record;

   --  Output Enable
   type SCTRL0_OEN_Field is
     (
      --  The external pin is configured as an input.
      Oen_0,
      --  The OFLAG output signal is driven on the external pin. Other timer
      --  groups using this external pin as their input see the driven value.
      --  The polarity of the signal is determined by OPS.
      Oen_1)
     with Size => 1;
   for SCTRL0_OEN_Field use
     (Oen_0 => 0,
      Oen_1 => 1);

   --  Output Polarity Select
   type SCTRL0_OPS_Field is
     (
      --  True polarity.
      Ops_0,
      --  Inverted polarity.
      Ops_1)
     with Size => 1;
   for SCTRL0_OPS_Field use
     (Ops_0 => 0,
      Ops_1 => 1);

   --  Input Capture Mode
   type SCTRL0_CAPTURE_MODE_Field is
     (
      --  Capture function is disabled
      Capture_Mode_0,
      --  Load capture register on rising edge (when IPS=0) or falling edge
      --  (when IPS=1) of input
      Capture_Mode_1,
      --  Load capture register on falling edge (when IPS=0) or rising edge
      --  (when IPS=1) of input
      Capture_Mode_2,
      --  Load capture register on both edges of input
      Capture_Mode_3)
     with Size => 2;
   for SCTRL0_CAPTURE_MODE_Field use
     (Capture_Mode_0 => 0,
      Capture_Mode_1 => 1,
      Capture_Mode_2 => 2,
      Capture_Mode_3 => 3);

   --  Timer Channel Status and Control Register
   type SCTRL_Register is record
      --  Output Enable
      OEN          : SCTRL0_OEN_Field := NRF_SVD.TMR.Oen_0;
      --  Output Polarity Select
      OPS          : SCTRL0_OPS_Field := NRF_SVD.TMR.Ops_0;
      --  Write-only. Force OFLAG Output
      FORCE        : Boolean := False;
      --  Forced OFLAG Value
      VAL          : Boolean := False;
      --  Enable External OFLAG Force
      EEOF         : Boolean := False;
      --  Master Mode
      MSTR         : Boolean := False;
      --  Input Capture Mode
      CAPTURE_MODE : SCTRL0_CAPTURE_MODE_Field := NRF_SVD.TMR.Capture_Mode_0;
      --  Read-only. External Input Signal
      INPUT        : Boolean := False;
      --  Input Polarity Select
      IPS          : Boolean := False;
      --  Input Edge Flag Interrupt Enable
      IEFIE        : Boolean := False;
      --  Input Edge Flag
      IEF          : Boolean := False;
      --  Timer Overflow Flag Interrupt Enable
      TOFIE        : Boolean := False;
      --  Timer Overflow Flag
      TOF          : Boolean := False;
      --  Timer Compare Flag Interrupt Enable
      TCFIE        : Boolean := False;
      --  Timer Compare Flag
      TCF          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SCTRL_Register use record
      OEN          at 0 range 0 .. 0;
      OPS          at 0 range 1 .. 1;
      FORCE        at 0 range 2 .. 2;
      VAL          at 0 range 3 .. 3;
      EEOF         at 0 range 4 .. 4;
      MSTR         at 0 range 5 .. 5;
      CAPTURE_MODE at 0 range 6 .. 7;
      INPUT        at 0 range 8 .. 8;
      IPS          at 0 range 9 .. 9;
      IEFIE        at 0 range 10 .. 10;
      IEF          at 0 range 11 .. 11;
      TOFIE        at 0 range 12 .. 12;
      TOF          at 0 range 13 .. 13;
      TCFIE        at 0 range 14 .. 14;
      TCF          at 0 range 15 .. 15;
   end record;

   --  Compare Load Control 1
   type CSCTRL0_CL1_Field is
     (
      --  Never preload
      Cl1_0,
      --  Load upon successful compare with the value in COMP1
      Cl1_1,
      --  Load upon successful compare with the value in COMP2
      Cl1_2)
     with Size => 2;
   for CSCTRL0_CL1_Field use
     (Cl1_0 => 0,
      Cl1_1 => 1,
      Cl1_2 => 2);

   --  Compare Load Control 2
   type CSCTRL0_CL2_Field is
     (
      --  Never preload
      Cl2_0,
      --  Load upon successful compare with the value in COMP1
      Cl2_1,
      --  Load upon successful compare with the value in COMP2
      Cl2_2)
     with Size => 2;
   for CSCTRL0_CL2_Field use
     (Cl2_0 => 0,
      Cl2_1 => 1,
      Cl2_2 => 2);

   --  CSCTRL_TCF array
   type CSCTRL_TCF_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CSCTRL_TCF
   type CSCTRL_TCF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCF as a value
            Val : HAL.UInt2;
         when True =>
            --  TCF as an array
            Arr : CSCTRL_TCF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CSCTRL_TCF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Counting Direction Indicator
   type CSCTRL0_UP_Field is
     (
      --  The last count was in the DOWN direction.
      Up_0,
      --  The last count was in the UP direction.
      Up_1)
     with Size => 1;
   for CSCTRL0_UP_Field use
     (Up_0 => 0,
      Up_1 => 1);

   --  Triggered Count Initialization Control
   type CSCTRL0_TCI_Field is
     (
      --  Stop counter upon receiving a second trigger event while still
      --  counting from the first trigger event.
      Tci_0,
      --  Reload the counter upon receiving a second trigger event while still
      --  counting from the first trigger event.
      Tci_1)
     with Size => 1;
   for CSCTRL0_TCI_Field use
     (Tci_0 => 0,
      Tci_1 => 1);

   --  Reload on Capture
   type CSCTRL0_ROC_Field is
     (
      --  Do not reload the counter on a capture event.
      Roc_0,
      --  Reload the counter on a capture event.
      Roc_1)
     with Size => 1;
   for CSCTRL0_ROC_Field use
     (Roc_0 => 0,
      Roc_1 => 1);

   --  Alternative Load Enable
   type CSCTRL0_ALT_LOAD_Field is
     (
      --  Counter can be re-initialized only with the LOAD register.
      Alt_Load_0,
      --  Counter can be re-initialized with the LOAD or CMPLD2 registers
      --  depending on count direction.
      Alt_Load_1)
     with Size => 1;
   for CSCTRL0_ALT_LOAD_Field use
     (Alt_Load_0 => 0,
      Alt_Load_1 => 1);

   --  Fault Enable
   type CSCTRL0_FAULT_Field is
     (
      --  Fault function disabled.
      Fault_0,
      --  Fault function enabled.
      Fault_1)
     with Size => 1;
   for CSCTRL0_FAULT_Field use
     (Fault_0 => 0,
      Fault_1 => 1);

   --  Debug Actions Enable
   type CSCTRL0_DBG_EN_Field is
     (
      --  Continue with normal operation during debug mode. (default)
      Dbg_En_0,
      --  Halt TMR counter during debug mode.
      Dbg_En_1,
      --  Force TMR output to logic 0 (prior to consideration of SCTRL[OPS]).
      Dbg_En_2,
      --  Both halt counter and force output to 0 during debug mode.
      Dbg_En_3)
     with Size => 2;
   for CSCTRL0_DBG_EN_Field use
     (Dbg_En_0 => 0,
      Dbg_En_1 => 1,
      Dbg_En_2 => 2,
      Dbg_En_3 => 3);

   --  Timer Channel Comparator Status and Control Register
   type CSCTRL_Register is record
      --  Compare Load Control 1
      CL1          : CSCTRL0_CL1_Field := NRF_SVD.TMR.Cl1_0;
      --  Compare Load Control 2
      CL2          : CSCTRL0_CL2_Field := NRF_SVD.TMR.Cl2_0;
      --  Timer Compare 1 Interrupt Flag
      TCF          : CSCTRL_TCF_Field := (As_Array => False, Val => 16#0#);
      --  Timer Compare 1 Interrupt Enable
      TCF1EN       : Boolean := False;
      --  Timer Compare 2 Interrupt Enable
      TCF2EN       : Boolean := False;
      --  unspecified
      Reserved_8_8 : HAL.Bit := 16#0#;
      --  Read-only. Counting Direction Indicator
      UP           : CSCTRL0_UP_Field := NRF_SVD.TMR.Up_0;
      --  Triggered Count Initialization Control
      TCI          : CSCTRL0_TCI_Field := NRF_SVD.TMR.Tci_0;
      --  Reload on Capture
      ROC          : CSCTRL0_ROC_Field := NRF_SVD.TMR.Roc_0;
      --  Alternative Load Enable
      ALT_LOAD     : CSCTRL0_ALT_LOAD_Field := NRF_SVD.TMR.Alt_Load_0;
      --  Fault Enable
      FAULT        : CSCTRL0_FAULT_Field := NRF_SVD.TMR.Fault_0;
      --  Debug Actions Enable
      DBG_EN       : CSCTRL0_DBG_EN_Field := NRF_SVD.TMR.Dbg_En_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CSCTRL_Register use record
      CL1          at 0 range 0 .. 1;
      CL2          at 0 range 2 .. 3;
      TCF          at 0 range 4 .. 5;
      TCF1EN       at 0 range 6 .. 6;
      TCF2EN       at 0 range 7 .. 7;
      Reserved_8_8 at 0 range 8 .. 8;
      UP           at 0 range 9 .. 9;
      TCI          at 0 range 10 .. 10;
      ROC          at 0 range 11 .. 11;
      ALT_LOAD     at 0 range 12 .. 12;
      FAULT        at 0 range 13 .. 13;
      DBG_EN       at 0 range 14 .. 15;
   end record;

   subtype FILT_FILT_PER_Field is HAL.UInt8;
   subtype FILT_FILT_CNT_Field is HAL.UInt3;

   --  Timer Channel Input Filter Register
   type FILT_Register is record
      --  Input Filter Sample Period
      FILT_PER       : FILT_FILT_PER_Field := 16#0#;
      --  Input Filter Sample Count
      FILT_CNT       : FILT_FILT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FILT_Register use record
      FILT_PER       at 0 range 0 .. 7;
      FILT_CNT       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Timer Channel DMA Enable Register
   type DMA_Register is record
      --  Input Edge Flag DMA Enable
      IEFDE         : Boolean := False;
      --  Comparator Preload Register 1 DMA Enable
      CMPLD1DE      : Boolean := False;
      --  Comparator Preload Register 2 DMA Enable
      CMPLD2DE      : Boolean := False;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMA_Register use record
      IEFDE         at 0 range 0 .. 0;
      CMPLD1DE      at 0 range 1 .. 1;
      CMPLD2DE      at 0 range 2 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   --  Timer Channel Enable
   type ENBL_ENBL_Field is
     (
      --  Timer channel is disabled.
      Enbl_0,
      --  Timer channel is enabled. (default)
      Enbl_1,
      --  Reset value for the field
      Enbl_Enbl_Field_Reset)
     with Size => 4;
   for ENBL_ENBL_Field use
     (Enbl_0 => 0,
      Enbl_1 => 1,
      Enbl_Enbl_Field_Reset => 15);

   --  Timer Channel Enable Register
   type TMR1_ENBL_Register is record
      --  Timer Channel Enable
      ENBL          : ENBL_ENBL_Field := Enbl_Enbl_Field_Reset;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TMR1_ENBL_Register use record
      ENBL          at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Quad Timer
   type TMR_Peripheral is record
      --  Timer Channel Compare Register 1
      COMP10  : aliased HAL.UInt16;
      --  Timer Channel Compare Register 2
      COMP20  : aliased HAL.UInt16;
      --  Timer Channel Capture Register
      CAPT0   : aliased HAL.UInt16;
      --  Timer Channel Load Register
      LOAD0   : aliased HAL.UInt16;
      --  Timer Channel Hold Register
      HOLD0   : aliased HAL.UInt16;
      --  Timer Channel Counter Register
      CNTR0   : aliased HAL.UInt16;
      --  Timer Channel Control Register
      CTRL0   : aliased CTRL_Register;
      --  Timer Channel Status and Control Register
      SCTRL0  : aliased SCTRL_Register;
      --  Timer Channel Comparator Load Register 1
      CMPLD10 : aliased HAL.UInt16;
      --  Timer Channel Comparator Load Register 2
      CMPLD20 : aliased HAL.UInt16;
      --  Timer Channel Comparator Status and Control Register
      CSCTRL0 : aliased CSCTRL_Register;
      --  Timer Channel Input Filter Register
      FILT0   : aliased FILT_Register;
      --  Timer Channel DMA Enable Register
      DMA0    : aliased DMA_Register;
      --  Timer Channel Enable Register
      ENBL    : aliased TMR1_ENBL_Register;
      --  Timer Channel Compare Register 1
      COMP11  : aliased HAL.UInt16;
      --  Timer Channel Compare Register 2
      COMP21  : aliased HAL.UInt16;
      --  Timer Channel Capture Register
      CAPT1   : aliased HAL.UInt16;
      --  Timer Channel Load Register
      LOAD1   : aliased HAL.UInt16;
      --  Timer Channel Hold Register
      HOLD1   : aliased HAL.UInt16;
      --  Timer Channel Counter Register
      CNTR1   : aliased HAL.UInt16;
      --  Timer Channel Control Register
      CTRL1   : aliased CTRL_Register;
      --  Timer Channel Status and Control Register
      SCTRL1  : aliased SCTRL_Register;
      --  Timer Channel Comparator Load Register 1
      CMPLD11 : aliased HAL.UInt16;
      --  Timer Channel Comparator Load Register 2
      CMPLD21 : aliased HAL.UInt16;
      --  Timer Channel Comparator Status and Control Register
      CSCTRL1 : aliased CSCTRL_Register;
      --  Timer Channel Input Filter Register
      FILT1   : aliased FILT_Register;
      --  Timer Channel DMA Enable Register
      DMA1    : aliased DMA_Register;
      --  Timer Channel Compare Register 1
      COMP12  : aliased HAL.UInt16;
      --  Timer Channel Compare Register 2
      COMP22  : aliased HAL.UInt16;
      --  Timer Channel Capture Register
      CAPT2   : aliased HAL.UInt16;
      --  Timer Channel Load Register
      LOAD2   : aliased HAL.UInt16;
      --  Timer Channel Hold Register
      HOLD2   : aliased HAL.UInt16;
      --  Timer Channel Counter Register
      CNTR2   : aliased HAL.UInt16;
      --  Timer Channel Control Register
      CTRL2   : aliased CTRL_Register;
      --  Timer Channel Status and Control Register
      SCTRL2  : aliased SCTRL_Register;
      --  Timer Channel Comparator Load Register 1
      CMPLD12 : aliased HAL.UInt16;
      --  Timer Channel Comparator Load Register 2
      CMPLD22 : aliased HAL.UInt16;
      --  Timer Channel Comparator Status and Control Register
      CSCTRL2 : aliased CSCTRL_Register;
      --  Timer Channel Input Filter Register
      FILT2   : aliased FILT_Register;
      --  Timer Channel DMA Enable Register
      DMA2    : aliased DMA_Register;
      --  Timer Channel Compare Register 1
      COMP13  : aliased HAL.UInt16;
      --  Timer Channel Compare Register 2
      COMP23  : aliased HAL.UInt16;
      --  Timer Channel Capture Register
      CAPT3   : aliased HAL.UInt16;
      --  Timer Channel Load Register
      LOAD3   : aliased HAL.UInt16;
      --  Timer Channel Hold Register
      HOLD3   : aliased HAL.UInt16;
      --  Timer Channel Counter Register
      CNTR3   : aliased HAL.UInt16;
      --  Timer Channel Control Register
      CTRL3   : aliased CTRL_Register;
      --  Timer Channel Status and Control Register
      SCTRL3  : aliased SCTRL_Register;
      --  Timer Channel Comparator Load Register 1
      CMPLD13 : aliased HAL.UInt16;
      --  Timer Channel Comparator Load Register 2
      CMPLD23 : aliased HAL.UInt16;
      --  Timer Channel Comparator Status and Control Register
      CSCTRL3 : aliased CSCTRL_Register;
      --  Timer Channel Input Filter Register
      FILT3   : aliased FILT_Register;
      --  Timer Channel DMA Enable Register
      DMA3    : aliased DMA_Register;
   end record
     with Volatile;

   for TMR_Peripheral use record
      COMP10  at 16#0# range 0 .. 15;
      COMP20  at 16#2# range 0 .. 15;
      CAPT0   at 16#4# range 0 .. 15;
      LOAD0   at 16#6# range 0 .. 15;
      HOLD0   at 16#8# range 0 .. 15;
      CNTR0   at 16#A# range 0 .. 15;
      CTRL0   at 16#C# range 0 .. 15;
      SCTRL0  at 16#E# range 0 .. 15;
      CMPLD10 at 16#10# range 0 .. 15;
      CMPLD20 at 16#12# range 0 .. 15;
      CSCTRL0 at 16#14# range 0 .. 15;
      FILT0   at 16#16# range 0 .. 15;
      DMA0    at 16#18# range 0 .. 15;
      ENBL    at 16#1E# range 0 .. 15;
      COMP11  at 16#20# range 0 .. 15;
      COMP21  at 16#22# range 0 .. 15;
      CAPT1   at 16#24# range 0 .. 15;
      LOAD1   at 16#26# range 0 .. 15;
      HOLD1   at 16#28# range 0 .. 15;
      CNTR1   at 16#2A# range 0 .. 15;
      CTRL1   at 16#2C# range 0 .. 15;
      SCTRL1  at 16#2E# range 0 .. 15;
      CMPLD11 at 16#30# range 0 .. 15;
      CMPLD21 at 16#32# range 0 .. 15;
      CSCTRL1 at 16#34# range 0 .. 15;
      FILT1   at 16#36# range 0 .. 15;
      DMA1    at 16#38# range 0 .. 15;
      COMP12  at 16#40# range 0 .. 15;
      COMP22  at 16#42# range 0 .. 15;
      CAPT2   at 16#44# range 0 .. 15;
      LOAD2   at 16#46# range 0 .. 15;
      HOLD2   at 16#48# range 0 .. 15;
      CNTR2   at 16#4A# range 0 .. 15;
      CTRL2   at 16#4C# range 0 .. 15;
      SCTRL2  at 16#4E# range 0 .. 15;
      CMPLD12 at 16#50# range 0 .. 15;
      CMPLD22 at 16#52# range 0 .. 15;
      CSCTRL2 at 16#54# range 0 .. 15;
      FILT2   at 16#56# range 0 .. 15;
      DMA2    at 16#58# range 0 .. 15;
      COMP13  at 16#60# range 0 .. 15;
      COMP23  at 16#62# range 0 .. 15;
      CAPT3   at 16#64# range 0 .. 15;
      LOAD3   at 16#66# range 0 .. 15;
      HOLD3   at 16#68# range 0 .. 15;
      CNTR3   at 16#6A# range 0 .. 15;
      CTRL3   at 16#6C# range 0 .. 15;
      SCTRL3  at 16#6E# range 0 .. 15;
      CMPLD13 at 16#70# range 0 .. 15;
      CMPLD23 at 16#72# range 0 .. 15;
      CSCTRL3 at 16#74# range 0 .. 15;
      FILT3   at 16#76# range 0 .. 15;
      DMA3    at 16#78# range 0 .. 15;
   end record;

   --  Quad Timer
   TMR1_Periph : aliased TMR_Peripheral
     with Import, Address => System'To_Address (16#401DC000#);

   --  Quad Timer
   TMR2_Periph : aliased TMR_Peripheral
     with Import, Address => System'To_Address (16#401E0000#);

   --  Quad Timer
   TMR3_Periph : aliased TMR_Peripheral
     with Import, Address => System'To_Address (16#401E4000#);

   --  Quad Timer
   TMR4_Periph : aliased TMR_Peripheral
     with Import, Address => System'To_Address (16#401E8000#);

end NRF_SVD.TMR;
