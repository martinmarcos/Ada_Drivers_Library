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

--  This spec has been automatically generated from MK26F18.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CAN0_MCR_MAXMB_Field is HAL.UInt7;

   --  ID Acceptance Mode
   type MCR_IDAM_Field is
     (
      --  Format A: One full ID (standard and extended) per ID Filter Table
      --  element.
      MCR_IDAM_Field_00,
      --  Format B: Two full standard IDs or two partial 14-bit (standard and
      --  extended) IDs per ID Filter Table element.
      MCR_IDAM_Field_01,
      --  Format C: Four partial 8-bit Standard IDs per ID Filter Table
      --  element.
      MCR_IDAM_Field_10,
      --  Format D: All frames rejected.
      MCR_IDAM_Field_11)
     with Size => 2;
   for MCR_IDAM_Field use
     (MCR_IDAM_Field_00 => 0,
      MCR_IDAM_Field_01 => 1,
      MCR_IDAM_Field_10 => 2,
      MCR_IDAM_Field_11 => 3);

   --  Abort Enable
   type MCR_AEN_Field is
     (
      --  Abort disabled.
      MCR_AEN_Field_0,
      --  Abort enabled.
      MCR_AEN_Field_1)
     with Size => 1;
   for MCR_AEN_Field use
     (MCR_AEN_Field_0 => 0,
      MCR_AEN_Field_1 => 1);

   --  Local Priority Enable
   type MCR_LPRIOEN_Field is
     (
      --  Local Priority disabled.
      MCR_LPRIOEN_Field_0,
      --  Local Priority enabled.
      MCR_LPRIOEN_Field_1)
     with Size => 1;
   for MCR_LPRIOEN_Field use
     (MCR_LPRIOEN_Field_0 => 0,
      MCR_LPRIOEN_Field_1 => 1);

   --  Individual Rx Masking And Queue Enable
   type MCR_IRMQ_Field is
     (
      --  Individual Rx masking and queue feature are disabled. For backward
      --  compatibility with legacy applications, the reading of C/S word locks
      --  the MB even if it is EMPTY.
      MCR_IRMQ_Field_0,
      --  Individual Rx masking and queue feature are enabled.
      MCR_IRMQ_Field_1)
     with Size => 1;
   for MCR_IRMQ_Field use
     (MCR_IRMQ_Field_0 => 0,
      MCR_IRMQ_Field_1 => 1);

   --  Self Reception Disable
   type MCR_SRXDIS_Field is
     (
      --  Self reception enabled.
      MCR_SRXDIS_Field_0,
      --  Self reception disabled.
      MCR_SRXDIS_Field_1)
     with Size => 1;
   for MCR_SRXDIS_Field use
     (MCR_SRXDIS_Field_0 => 0,
      MCR_SRXDIS_Field_1 => 1);

   --  Wake Up Source
   type MCR_WAKSRC_Field is
     (
      --  FlexCAN uses the unfiltered Rx input to detect recessive to dominant
      --  edges on the CAN bus.
      MCR_WAKSRC_Field_0,
      --  FlexCAN uses the filtered Rx input to detect recessive to dominant
      --  edges on the CAN bus.
      MCR_WAKSRC_Field_1)
     with Size => 1;
   for MCR_WAKSRC_Field use
     (MCR_WAKSRC_Field_0 => 0,
      MCR_WAKSRC_Field_1 => 1);

   --  Low-Power Mode Acknowledge
   type MCR_LPMACK_Field is
     (
      --  FlexCAN is not in a low-power mode.
      MCR_LPMACK_Field_0,
      --  FlexCAN is in a low-power mode.
      MCR_LPMACK_Field_1)
     with Size => 1;
   for MCR_LPMACK_Field use
     (MCR_LPMACK_Field_0 => 0,
      MCR_LPMACK_Field_1 => 1);

   --  Warning Interrupt Enable
   type MCR_WRNEN_Field is
     (
      --  TWRNINT and RWRNINT bits are zero, independent of the values in the
      --  error counters.
      MCR_WRNEN_Field_0,
      --  TWRNINT and RWRNINT bits are set when the respective error counter
      --  transitions from less than 96 to greater than or equal to 96.
      MCR_WRNEN_Field_1)
     with Size => 1;
   for MCR_WRNEN_Field use
     (MCR_WRNEN_Field_0 => 0,
      MCR_WRNEN_Field_1 => 1);

   --  Self Wake Up
   type MCR_SLFWAK_Field is
     (
      --  FlexCAN Self Wake Up feature is disabled.
      MCR_SLFWAK_Field_0,
      --  FlexCAN Self Wake Up feature is enabled.
      MCR_SLFWAK_Field_1)
     with Size => 1;
   for MCR_SLFWAK_Field use
     (MCR_SLFWAK_Field_0 => 0,
      MCR_SLFWAK_Field_1 => 1);

   --  Supervisor Mode
   type MCR_SUPV_Field is
     (
      --  FlexCAN is in User mode. Affected registers allow both Supervisor and
      --  Unrestricted accesses .
      MCR_SUPV_Field_0,
      --  FlexCAN is in Supervisor mode. Affected registers allow only
      --  Supervisor access. Unrestricted access behaves as though the access
      --  was done to an unimplemented register location .
      MCR_SUPV_Field_1)
     with Size => 1;
   for MCR_SUPV_Field use
     (MCR_SUPV_Field_0 => 0,
      MCR_SUPV_Field_1 => 1);

   --  Freeze Mode Acknowledge
   type MCR_FRZACK_Field is
     (
      --  FlexCAN not in Freeze mode, prescaler running.
      MCR_FRZACK_Field_0,
      --  FlexCAN in Freeze mode, prescaler stopped.
      MCR_FRZACK_Field_1)
     with Size => 1;
   for MCR_FRZACK_Field use
     (MCR_FRZACK_Field_0 => 0,
      MCR_FRZACK_Field_1 => 1);

   --  Soft Reset
   type MCR_SOFTRST_Field is
     (
      --  No reset request.
      MCR_SOFTRST_Field_0,
      --  Resets the registers affected by soft reset.
      MCR_SOFTRST_Field_1)
     with Size => 1;
   for MCR_SOFTRST_Field use
     (MCR_SOFTRST_Field_0 => 0,
      MCR_SOFTRST_Field_1 => 1);

   --  Wake Up Interrupt Mask
   type MCR_WAKMSK_Field is
     (
      --  Wake Up Interrupt is disabled.
      MCR_WAKMSK_Field_0,
      --  Wake Up Interrupt is enabled.
      MCR_WAKMSK_Field_1)
     with Size => 1;
   for MCR_WAKMSK_Field use
     (MCR_WAKMSK_Field_0 => 0,
      MCR_WAKMSK_Field_1 => 1);

   --  FlexCAN Not Ready
   type MCR_NOTRDY_Field is
     (
      --  FlexCAN module is either in Normal mode, Listen-Only mode or
      --  Loop-Back mode.
      MCR_NOTRDY_Field_0,
      --  FlexCAN module is either in Disable mode , Stop mode or Freeze mode.
      MCR_NOTRDY_Field_1)
     with Size => 1;
   for MCR_NOTRDY_Field use
     (MCR_NOTRDY_Field_0 => 0,
      MCR_NOTRDY_Field_1 => 1);

   --  Halt FlexCAN
   type MCR_HALT_Field is
     (
      --  No Freeze mode request.
      MCR_HALT_Field_0,
      --  Enters Freeze mode if the FRZ bit is asserted.
      MCR_HALT_Field_1)
     with Size => 1;
   for MCR_HALT_Field use
     (MCR_HALT_Field_0 => 0,
      MCR_HALT_Field_1 => 1);

   --  Rx FIFO Enable
   type MCR_RFEN_Field is
     (
      --  Rx FIFO not enabled.
      MCR_RFEN_Field_0,
      --  Rx FIFO enabled.
      MCR_RFEN_Field_1)
     with Size => 1;
   for MCR_RFEN_Field use
     (MCR_RFEN_Field_0 => 0,
      MCR_RFEN_Field_1 => 1);

   --  Freeze Enable
   type MCR_FRZ_Field is
     (
      --  Not enabled to enter Freeze mode.
      MCR_FRZ_Field_0,
      --  Enabled to enter Freeze mode.
      MCR_FRZ_Field_1)
     with Size => 1;
   for MCR_FRZ_Field use
     (MCR_FRZ_Field_0 => 0,
      MCR_FRZ_Field_1 => 1);

   --  Module Disable
   type MCR_MDIS_Field is
     (
      --  Enable the FlexCAN module.
      MCR_MDIS_Field_0,
      --  Disable the FlexCAN module.
      MCR_MDIS_Field_1)
     with Size => 1;
   for MCR_MDIS_Field use
     (MCR_MDIS_Field_0 => 0,
      MCR_MDIS_Field_1 => 1);

   --  Module Configuration Register
   type CAN0_MCR_Register is record
      --  Number Of The Last Message Buffer
      MAXMB          : CAN0_MCR_MAXMB_Field := 16#F#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ID Acceptance Mode
      IDAM           : MCR_IDAM_Field := NRF_SVD.CAN.MCR_IDAM_Field_00;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Abort Enable
      AEN            : MCR_AEN_Field := NRF_SVD.CAN.MCR_AEN_Field_0;
      --  Local Priority Enable
      LPRIOEN        : MCR_LPRIOEN_Field := NRF_SVD.CAN.MCR_LPRIOEN_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Individual Rx Masking And Queue Enable
      IRMQ           : MCR_IRMQ_Field := NRF_SVD.CAN.MCR_IRMQ_Field_0;
      --  Self Reception Disable
      SRXDIS         : MCR_SRXDIS_Field := NRF_SVD.CAN.MCR_SRXDIS_Field_0;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Wake Up Source
      WAKSRC         : MCR_WAKSRC_Field := NRF_SVD.CAN.MCR_WAKSRC_Field_0;
      --  Read-only. Low-Power Mode Acknowledge
      LPMACK         : MCR_LPMACK_Field := NRF_SVD.CAN.MCR_LPMACK_Field_1;
      --  Warning Interrupt Enable
      WRNEN          : MCR_WRNEN_Field := NRF_SVD.CAN.MCR_WRNEN_Field_0;
      --  Self Wake Up
      SLFWAK         : MCR_SLFWAK_Field := NRF_SVD.CAN.MCR_SLFWAK_Field_0;
      --  Supervisor Mode
      SUPV           : MCR_SUPV_Field := NRF_SVD.CAN.MCR_SUPV_Field_1;
      --  Read-only. Freeze Mode Acknowledge
      FRZACK         : MCR_FRZACK_Field := NRF_SVD.CAN.MCR_FRZACK_Field_0;
      --  Soft Reset
      SOFTRST        : MCR_SOFTRST_Field := NRF_SVD.CAN.MCR_SOFTRST_Field_0;
      --  Wake Up Interrupt Mask
      WAKMSK         : MCR_WAKMSK_Field := NRF_SVD.CAN.MCR_WAKMSK_Field_0;
      --  Read-only. FlexCAN Not Ready
      NOTRDY         : MCR_NOTRDY_Field := NRF_SVD.CAN.MCR_NOTRDY_Field_1;
      --  Halt FlexCAN
      HALT           : MCR_HALT_Field := NRF_SVD.CAN.MCR_HALT_Field_1;
      --  Rx FIFO Enable
      RFEN           : MCR_RFEN_Field := NRF_SVD.CAN.MCR_RFEN_Field_0;
      --  Freeze Enable
      FRZ            : MCR_FRZ_Field := NRF_SVD.CAN.MCR_FRZ_Field_1;
      --  Module Disable
      MDIS           : MCR_MDIS_Field := NRF_SVD.CAN.MCR_MDIS_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_MCR_Register use record
      MAXMB          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      IDAM           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      AEN            at 0 range 12 .. 12;
      LPRIOEN        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      IRMQ           at 0 range 16 .. 16;
      SRXDIS         at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      WAKSRC         at 0 range 19 .. 19;
      LPMACK         at 0 range 20 .. 20;
      WRNEN          at 0 range 21 .. 21;
      SLFWAK         at 0 range 22 .. 22;
      SUPV           at 0 range 23 .. 23;
      FRZACK         at 0 range 24 .. 24;
      SOFTRST        at 0 range 25 .. 25;
      WAKMSK         at 0 range 26 .. 26;
      NOTRDY         at 0 range 27 .. 27;
      HALT           at 0 range 28 .. 28;
      RFEN           at 0 range 29 .. 29;
      FRZ            at 0 range 30 .. 30;
      MDIS           at 0 range 31 .. 31;
   end record;

   subtype CAN0_CTRL1_PROPSEG_Field is HAL.UInt3;

   --  Listen-Only Mode
   type CTRL1_LOM_Field is
     (
      --  Listen-Only mode is deactivated.
      CTRL1_LOM_Field_0,
      --  FlexCAN module operates in Listen-Only mode.
      CTRL1_LOM_Field_1)
     with Size => 1;
   for CTRL1_LOM_Field use
     (CTRL1_LOM_Field_0 => 0,
      CTRL1_LOM_Field_1 => 1);

   --  Lowest Buffer Transmitted First
   type CTRL1_LBUF_Field is
     (
      --  Buffer with highest priority is transmitted first.
      CTRL1_LBUF_Field_0,
      --  Lowest number buffer is transmitted first.
      CTRL1_LBUF_Field_1)
     with Size => 1;
   for CTRL1_LBUF_Field use
     (CTRL1_LBUF_Field_0 => 0,
      CTRL1_LBUF_Field_1 => 1);

   --  Timer Sync
   type CTRL1_TSYN_Field is
     (
      --  Timer Sync feature disabled
      CTRL1_TSYN_Field_0,
      --  Timer Sync feature enabled
      CTRL1_TSYN_Field_1)
     with Size => 1;
   for CTRL1_TSYN_Field use
     (CTRL1_TSYN_Field_0 => 0,
      CTRL1_TSYN_Field_1 => 1);

   --  Bus Off Recovery
   type CTRL1_BOFFREC_Field is
     (
      --  Automatic recovering from Bus Off state enabled, according to CAN
      --  Spec 2.0 part B.
      CTRL1_BOFFREC_Field_0,
      --  Automatic recovering from Bus Off state disabled.
      CTRL1_BOFFREC_Field_1)
     with Size => 1;
   for CTRL1_BOFFREC_Field use
     (CTRL1_BOFFREC_Field_0 => 0,
      CTRL1_BOFFREC_Field_1 => 1);

   --  CAN Bit Sampling
   type CTRL1_SMP_Field is
     (
      --  Just one sample is used to determine the bit value.
      CTRL1_SMP_Field_0,
      --  Three samples are used to determine the value of the received bit:
      --  the regular one (sample point) and 2 preceding samples; a majority
      --  rule is used.
      CTRL1_SMP_Field_1)
     with Size => 1;
   for CTRL1_SMP_Field use
     (CTRL1_SMP_Field_0 => 0,
      CTRL1_SMP_Field_1 => 1);

   --  Rx Warning Interrupt Mask
   type CTRL1_RWRNMSK_Field is
     (
      --  Rx Warning Interrupt disabled.
      CTRL1_RWRNMSK_Field_0,
      --  Rx Warning Interrupt enabled.
      CTRL1_RWRNMSK_Field_1)
     with Size => 1;
   for CTRL1_RWRNMSK_Field use
     (CTRL1_RWRNMSK_Field_0 => 0,
      CTRL1_RWRNMSK_Field_1 => 1);

   --  Tx Warning Interrupt Mask
   type CTRL1_TWRNMSK_Field is
     (
      --  Tx Warning Interrupt disabled.
      CTRL1_TWRNMSK_Field_0,
      --  Tx Warning Interrupt enabled.
      CTRL1_TWRNMSK_Field_1)
     with Size => 1;
   for CTRL1_TWRNMSK_Field use
     (CTRL1_TWRNMSK_Field_0 => 0,
      CTRL1_TWRNMSK_Field_1 => 1);

   --  Loop Back Mode
   type CTRL1_LPB_Field is
     (
      --  Loop Back disabled.
      CTRL1_LPB_Field_0,
      --  Loop Back enabled.
      CTRL1_LPB_Field_1)
     with Size => 1;
   for CTRL1_LPB_Field use
     (CTRL1_LPB_Field_0 => 0,
      CTRL1_LPB_Field_1 => 1);

   --  CAN Engine Clock Source
   type CTRL1_CLKSRC_Field is
     (
      --  The CAN engine clock source is the oscillator clock. Under this
      --  condition, the oscillator clock frequency must be lower than the bus
      --  clock.
      CTRL1_CLKSRC_Field_0,
      --  The CAN engine clock source is the peripheral clock.
      CTRL1_CLKSRC_Field_1)
     with Size => 1;
   for CTRL1_CLKSRC_Field use
     (CTRL1_CLKSRC_Field_0 => 0,
      CTRL1_CLKSRC_Field_1 => 1);

   --  Error Mask
   type CTRL1_ERRMSK_Field is
     (
      --  Error interrupt disabled.
      CTRL1_ERRMSK_Field_0,
      --  Error interrupt enabled.
      CTRL1_ERRMSK_Field_1)
     with Size => 1;
   for CTRL1_ERRMSK_Field use
     (CTRL1_ERRMSK_Field_0 => 0,
      CTRL1_ERRMSK_Field_1 => 1);

   --  Bus Off Mask
   type CTRL1_BOFFMSK_Field is
     (
      --  Bus Off interrupt disabled.
      CTRL1_BOFFMSK_Field_0,
      --  Bus Off interrupt enabled.
      CTRL1_BOFFMSK_Field_1)
     with Size => 1;
   for CTRL1_BOFFMSK_Field use
     (CTRL1_BOFFMSK_Field_0 => 0,
      CTRL1_BOFFMSK_Field_1 => 1);

   subtype CAN0_CTRL1_PSEG2_Field is HAL.UInt3;
   subtype CAN0_CTRL1_PSEG1_Field is HAL.UInt3;
   subtype CAN0_CTRL1_RJW_Field is HAL.UInt2;
   subtype CAN0_CTRL1_PRESDIV_Field is HAL.UInt8;

   --  Control 1 register
   type CAN0_CTRL1_Register is record
      --  Propagation Segment
      PROPSEG      : CAN0_CTRL1_PROPSEG_Field := 16#0#;
      --  Listen-Only Mode
      LOM          : CTRL1_LOM_Field := NRF_SVD.CAN.CTRL1_LOM_Field_0;
      --  Lowest Buffer Transmitted First
      LBUF         : CTRL1_LBUF_Field := NRF_SVD.CAN.CTRL1_LBUF_Field_0;
      --  Timer Sync
      TSYN         : CTRL1_TSYN_Field := NRF_SVD.CAN.CTRL1_TSYN_Field_0;
      --  Bus Off Recovery
      BOFFREC      : CTRL1_BOFFREC_Field := NRF_SVD.CAN.CTRL1_BOFFREC_Field_0;
      --  CAN Bit Sampling
      SMP          : CTRL1_SMP_Field := NRF_SVD.CAN.CTRL1_SMP_Field_0;
      --  unspecified
      Reserved_8_9 : HAL.UInt2 := 16#0#;
      --  Rx Warning Interrupt Mask
      RWRNMSK      : CTRL1_RWRNMSK_Field := NRF_SVD.CAN.CTRL1_RWRNMSK_Field_0;
      --  Tx Warning Interrupt Mask
      TWRNMSK      : CTRL1_TWRNMSK_Field := NRF_SVD.CAN.CTRL1_TWRNMSK_Field_0;
      --  Loop Back Mode
      LPB          : CTRL1_LPB_Field := NRF_SVD.CAN.CTRL1_LPB_Field_0;
      --  CAN Engine Clock Source
      CLKSRC       : CTRL1_CLKSRC_Field := NRF_SVD.CAN.CTRL1_CLKSRC_Field_0;
      --  Error Mask
      ERRMSK       : CTRL1_ERRMSK_Field := NRF_SVD.CAN.CTRL1_ERRMSK_Field_0;
      --  Bus Off Mask
      BOFFMSK      : CTRL1_BOFFMSK_Field := NRF_SVD.CAN.CTRL1_BOFFMSK_Field_0;
      --  Phase Segment 2
      PSEG2        : CAN0_CTRL1_PSEG2_Field := 16#0#;
      --  Phase Segment 1
      PSEG1        : CAN0_CTRL1_PSEG1_Field := 16#0#;
      --  Resync Jump Width
      RJW          : CAN0_CTRL1_RJW_Field := 16#0#;
      --  Prescaler Division Factor
      PRESDIV      : CAN0_CTRL1_PRESDIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_CTRL1_Register use record
      PROPSEG      at 0 range 0 .. 2;
      LOM          at 0 range 3 .. 3;
      LBUF         at 0 range 4 .. 4;
      TSYN         at 0 range 5 .. 5;
      BOFFREC      at 0 range 6 .. 6;
      SMP          at 0 range 7 .. 7;
      Reserved_8_9 at 0 range 8 .. 9;
      RWRNMSK      at 0 range 10 .. 10;
      TWRNMSK      at 0 range 11 .. 11;
      LPB          at 0 range 12 .. 12;
      CLKSRC       at 0 range 13 .. 13;
      ERRMSK       at 0 range 14 .. 14;
      BOFFMSK      at 0 range 15 .. 15;
      PSEG2        at 0 range 16 .. 18;
      PSEG1        at 0 range 19 .. 21;
      RJW          at 0 range 22 .. 23;
      PRESDIV      at 0 range 24 .. 31;
   end record;

   subtype CAN0_TIMER_TIMER_Field is HAL.UInt16;

   --  Free Running Timer
   type CAN0_TIMER_Register is record
      --  Timer Value
      TIMER          : CAN0_TIMER_TIMER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_TIMER_Register use record
      TIMER          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN0_ECR_TXERRCNT_Field is HAL.UInt8;
   subtype CAN0_ECR_RXERRCNT_Field is HAL.UInt8;

   --  Error Counter
   type CAN0_ECR_Register is record
      --  Transmit Error Counter
      TXERRCNT       : CAN0_ECR_TXERRCNT_Field := 16#0#;
      --  Receive Error Counter
      RXERRCNT       : CAN0_ECR_RXERRCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_ECR_Register use record
      TXERRCNT       at 0 range 0 .. 7;
      RXERRCNT       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Wake-Up Interrupt
   type ESR1_WAKINT_Field is
     (
      --  No such occurrence.
      ESR1_WAKINT_Field_0,
      --  Indicates a recessive to dominant transition was received on the CAN
      --  bus.
      ESR1_WAKINT_Field_1)
     with Size => 1;
   for ESR1_WAKINT_Field use
     (ESR1_WAKINT_Field_0 => 0,
      ESR1_WAKINT_Field_1 => 1);

   --  Error Interrupt
   type ESR1_ERRINT_Field is
     (
      --  No such occurrence.
      ESR1_ERRINT_Field_0,
      --  Indicates setting of any Error Bit in the Error and Status Register.
      ESR1_ERRINT_Field_1)
     with Size => 1;
   for ESR1_ERRINT_Field use
     (ESR1_ERRINT_Field_0 => 0,
      ESR1_ERRINT_Field_1 => 1);

   --  Bus Off Interrupt
   type ESR1_BOFFINT_Field is
     (
      --  No such occurrence.
      ESR1_BOFFINT_Field_0,
      --  FlexCAN module entered Bus Off state.
      ESR1_BOFFINT_Field_1)
     with Size => 1;
   for ESR1_BOFFINT_Field use
     (ESR1_BOFFINT_Field_0 => 0,
      ESR1_BOFFINT_Field_1 => 1);

   --  FlexCAN In Reception
   type ESR1_RX_Field is
     (
      --  FlexCAN is not receiving a message.
      ESR1_RX_Field_0,
      --  FlexCAN is receiving a message.
      ESR1_RX_Field_1)
     with Size => 1;
   for ESR1_RX_Field use
     (ESR1_RX_Field_0 => 0,
      ESR1_RX_Field_1 => 1);

   --  Fault Confinement State
   type ESR1_FLTCONF_Field is
     (
      --  Error Active
      ESR1_FLTCONF_Field_00,
      --  Error Passive
      ESR1_FLTCONF_Field_01)
     with Size => 2;
   for ESR1_FLTCONF_Field use
     (ESR1_FLTCONF_Field_00 => 0,
      ESR1_FLTCONF_Field_01 => 1);

   --  FlexCAN In Transmission
   type ESR1_TX_Field is
     (
      --  FlexCAN is not transmitting a message.
      ESR1_TX_Field_0,
      --  FlexCAN is transmitting a message.
      ESR1_TX_Field_1)
     with Size => 1;
   for ESR1_TX_Field use
     (ESR1_TX_Field_0 => 0,
      ESR1_TX_Field_1 => 1);

   --  This bit indicates when CAN bus is in IDLE state
   type ESR1_IDLE_Field is
     (
      --  No such occurrence.
      ESR1_IDLE_Field_0,
      --  CAN bus is now IDLE.
      ESR1_IDLE_Field_1)
     with Size => 1;
   for ESR1_IDLE_Field use
     (ESR1_IDLE_Field_0 => 0,
      ESR1_IDLE_Field_1 => 1);

   --  Rx Error Warning
   type ESR1_RXWRN_Field is
     (
      --  No such occurrence.
      ESR1_RXWRN_Field_0,
      --  RXERRCNT is greater than or equal to 96.
      ESR1_RXWRN_Field_1)
     with Size => 1;
   for ESR1_RXWRN_Field use
     (ESR1_RXWRN_Field_0 => 0,
      ESR1_RXWRN_Field_1 => 1);

   --  TX Error Warning
   type ESR1_TXWRN_Field is
     (
      --  No such occurrence.
      ESR1_TXWRN_Field_0,
      --  TXERRCNT is greater than or equal to 96.
      ESR1_TXWRN_Field_1)
     with Size => 1;
   for ESR1_TXWRN_Field use
     (ESR1_TXWRN_Field_0 => 0,
      ESR1_TXWRN_Field_1 => 1);

   --  Stuffing Error
   type ESR1_STFERR_Field is
     (
      --  No such occurrence.
      ESR1_STFERR_Field_0,
      --  A Stuffing Error occurred since last read of this register.
      ESR1_STFERR_Field_1)
     with Size => 1;
   for ESR1_STFERR_Field use
     (ESR1_STFERR_Field_0 => 0,
      ESR1_STFERR_Field_1 => 1);

   --  Form Error
   type ESR1_FRMERR_Field is
     (
      --  No such occurrence.
      ESR1_FRMERR_Field_0,
      --  A Form Error occurred since last read of this register.
      ESR1_FRMERR_Field_1)
     with Size => 1;
   for ESR1_FRMERR_Field use
     (ESR1_FRMERR_Field_0 => 0,
      ESR1_FRMERR_Field_1 => 1);

   --  Cyclic Redundancy Check Error
   type ESR1_CRCERR_Field is
     (
      --  No such occurrence.
      ESR1_CRCERR_Field_0,
      --  A CRC error occurred since last read of this register.
      ESR1_CRCERR_Field_1)
     with Size => 1;
   for ESR1_CRCERR_Field use
     (ESR1_CRCERR_Field_0 => 0,
      ESR1_CRCERR_Field_1 => 1);

   --  Acknowledge Error
   type ESR1_ACKERR_Field is
     (
      --  No such occurrence.
      ESR1_ACKERR_Field_0,
      --  An ACK error occurred since last read of this register.
      ESR1_ACKERR_Field_1)
     with Size => 1;
   for ESR1_ACKERR_Field use
     (ESR1_ACKERR_Field_0 => 0,
      ESR1_ACKERR_Field_1 => 1);

   --  Bit0 Error
   type ESR1_BIT0ERR_Field is
     (
      --  No such occurrence.
      ESR1_BIT0ERR_Field_0,
      --  At least one bit sent as dominant is received as recessive.
      ESR1_BIT0ERR_Field_1)
     with Size => 1;
   for ESR1_BIT0ERR_Field use
     (ESR1_BIT0ERR_Field_0 => 0,
      ESR1_BIT0ERR_Field_1 => 1);

   --  Bit1 Error
   type ESR1_BIT1ERR_Field is
     (
      --  No such occurrence.
      ESR1_BIT1ERR_Field_0,
      --  At least one bit sent as recessive is received as dominant.
      ESR1_BIT1ERR_Field_1)
     with Size => 1;
   for ESR1_BIT1ERR_Field use
     (ESR1_BIT1ERR_Field_0 => 0,
      ESR1_BIT1ERR_Field_1 => 1);

   --  Rx Warning Interrupt Flag
   type ESR1_RWRNINT_Field is
     (
      --  No such occurrence.
      ESR1_RWRNINT_Field_0,
      --  The Rx error counter transitioned from less than 96 to greater than
      --  or equal to 96.
      ESR1_RWRNINT_Field_1)
     with Size => 1;
   for ESR1_RWRNINT_Field use
     (ESR1_RWRNINT_Field_0 => 0,
      ESR1_RWRNINT_Field_1 => 1);

   --  Tx Warning Interrupt Flag
   type ESR1_TWRNINT_Field is
     (
      --  No such occurrence.
      ESR1_TWRNINT_Field_0,
      --  The Tx error counter transitioned from less than 96 to greater than
      --  or equal to 96.
      ESR1_TWRNINT_Field_1)
     with Size => 1;
   for ESR1_TWRNINT_Field use
     (ESR1_TWRNINT_Field_0 => 0,
      ESR1_TWRNINT_Field_1 => 1);

   --  CAN Synchronization Status
   type ESR1_SYNCH_Field is
     (
      --  FlexCAN is not synchronized to the CAN bus.
      ESR1_SYNCH_Field_0,
      --  FlexCAN is synchronized to the CAN bus.
      ESR1_SYNCH_Field_1)
     with Size => 1;
   for ESR1_SYNCH_Field use
     (ESR1_SYNCH_Field_0 => 0,
      ESR1_SYNCH_Field_1 => 1);

   --  Error and Status 1 register
   type CAN0_ESR1_Register is record
      --  Wake-Up Interrupt
      WAKINT         : ESR1_WAKINT_Field := NRF_SVD.CAN.ESR1_WAKINT_Field_0;
      --  Error Interrupt
      ERRINT         : ESR1_ERRINT_Field := NRF_SVD.CAN.ESR1_ERRINT_Field_0;
      --  Bus Off Interrupt
      BOFFINT        : ESR1_BOFFINT_Field := NRF_SVD.CAN.ESR1_BOFFINT_Field_0;
      --  Read-only. FlexCAN In Reception
      RX             : ESR1_RX_Field := NRF_SVD.CAN.ESR1_RX_Field_0;
      --  Read-only. Fault Confinement State
      FLTCONF        : ESR1_FLTCONF_Field :=
                        NRF_SVD.CAN.ESR1_FLTCONF_Field_00;
      --  Read-only. FlexCAN In Transmission
      TX             : ESR1_TX_Field := NRF_SVD.CAN.ESR1_TX_Field_0;
      --  Read-only. This bit indicates when CAN bus is in IDLE state
      IDLE           : ESR1_IDLE_Field := NRF_SVD.CAN.ESR1_IDLE_Field_0;
      --  Read-only. Rx Error Warning
      RXWRN          : ESR1_RXWRN_Field := NRF_SVD.CAN.ESR1_RXWRN_Field_0;
      --  Read-only. TX Error Warning
      TXWRN          : ESR1_TXWRN_Field := NRF_SVD.CAN.ESR1_TXWRN_Field_0;
      --  Read-only. Stuffing Error
      STFERR         : ESR1_STFERR_Field := NRF_SVD.CAN.ESR1_STFERR_Field_0;
      --  Read-only. Form Error
      FRMERR         : ESR1_FRMERR_Field := NRF_SVD.CAN.ESR1_FRMERR_Field_0;
      --  Read-only. Cyclic Redundancy Check Error
      CRCERR         : ESR1_CRCERR_Field := NRF_SVD.CAN.ESR1_CRCERR_Field_0;
      --  Read-only. Acknowledge Error
      ACKERR         : ESR1_ACKERR_Field := NRF_SVD.CAN.ESR1_ACKERR_Field_0;
      --  Read-only. Bit0 Error
      BIT0ERR        : ESR1_BIT0ERR_Field := NRF_SVD.CAN.ESR1_BIT0ERR_Field_0;
      --  Read-only. Bit1 Error
      BIT1ERR        : ESR1_BIT1ERR_Field := NRF_SVD.CAN.ESR1_BIT1ERR_Field_0;
      --  Rx Warning Interrupt Flag
      RWRNINT        : ESR1_RWRNINT_Field := NRF_SVD.CAN.ESR1_RWRNINT_Field_0;
      --  Tx Warning Interrupt Flag
      TWRNINT        : ESR1_TWRNINT_Field := NRF_SVD.CAN.ESR1_TWRNINT_Field_0;
      --  Read-only. CAN Synchronization Status
      SYNCH          : ESR1_SYNCH_Field := NRF_SVD.CAN.ESR1_SYNCH_Field_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_ESR1_Register use record
      WAKINT         at 0 range 0 .. 0;
      ERRINT         at 0 range 1 .. 1;
      BOFFINT        at 0 range 2 .. 2;
      RX             at 0 range 3 .. 3;
      FLTCONF        at 0 range 4 .. 5;
      TX             at 0 range 6 .. 6;
      IDLE           at 0 range 7 .. 7;
      RXWRN          at 0 range 8 .. 8;
      TXWRN          at 0 range 9 .. 9;
      STFERR         at 0 range 10 .. 10;
      FRMERR         at 0 range 11 .. 11;
      CRCERR         at 0 range 12 .. 12;
      ACKERR         at 0 range 13 .. 13;
      BIT0ERR        at 0 range 14 .. 14;
      BIT1ERR        at 0 range 15 .. 15;
      RWRNINT        at 0 range 16 .. 16;
      TWRNINT        at 0 range 17 .. 17;
      SYNCH          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Buffer MB0 Interrupt Or "reserved"
   type IFLAG1_BUF0I_Field is
     (
      --  The corresponding buffer has no occurrence of successfully completed
      --  transmission or reception when MCR[RFEN]=0.
      IFLAG1_BUF0I_Field_0,
      --  The corresponding buffer has successfully completed transmission or
      --  reception when MCR[RFEN]=0.
      IFLAG1_BUF0I_Field_1)
     with Size => 1;
   for IFLAG1_BUF0I_Field use
     (IFLAG1_BUF0I_Field_0 => 0,
      IFLAG1_BUF0I_Field_1 => 1);

   --  Buffer MB i Interrupt Or "reserved"
   type IFLAG1_BUF4TO1I_Field is
     (
      --  The corresponding buffer has no occurrence of successfully completed
      --  transmission or reception when MCR[RFEN]=0.
      IFLAG1_BUF4TO1I_Field_0,
      --  The corresponding buffer has successfully completed transmission or
      --  reception when MCR[RFEN]=0.
      IFLAG1_BUF4TO1I_Field_1)
     with Size => 4;
   for IFLAG1_BUF4TO1I_Field use
     (IFLAG1_BUF4TO1I_Field_0 => 0,
      IFLAG1_BUF4TO1I_Field_1 => 1);

   --  Buffer MB5 Interrupt Or "Frames available in Rx FIFO"
   type IFLAG1_BUF5I_Field is
     (
      --  No occurrence of MB5 completing transmission/reception when
      --  MCR[RFEN]=0, or of frame(s) available in the FIFO, when MCR[RFEN]=1
      IFLAG1_BUF5I_Field_0,
      --  MB5 completed transmission/reception when MCR[RFEN]=0, or frame(s)
      --  available in the Rx FIFO when MCR[RFEN]=1
      IFLAG1_BUF5I_Field_1)
     with Size => 1;
   for IFLAG1_BUF5I_Field use
     (IFLAG1_BUF5I_Field_0 => 0,
      IFLAG1_BUF5I_Field_1 => 1);

   --  Buffer MB6 Interrupt Or "Rx FIFO Warning"
   type IFLAG1_BUF6I_Field is
     (
      --  No occurrence of MB6 completing transmission/reception when
      --  MCR[RFEN]=0, or of Rx FIFO almost full when MCR[RFEN]=1
      IFLAG1_BUF6I_Field_0,
      --  MB6 completed transmission/reception when MCR[RFEN]=0, or Rx FIFO
      --  almost full when MCR[RFEN]=1
      IFLAG1_BUF6I_Field_1)
     with Size => 1;
   for IFLAG1_BUF6I_Field use
     (IFLAG1_BUF6I_Field_0 => 0,
      IFLAG1_BUF6I_Field_1 => 1);

   --  Buffer MB7 Interrupt Or "Rx FIFO Overflow"
   type IFLAG1_BUF7I_Field is
     (
      --  No occurrence of MB7 completing transmission/reception when
      --  MCR[RFEN]=0, or of Rx FIFO overflow when MCR[RFEN]=1
      IFLAG1_BUF7I_Field_0,
      --  MB7 completed transmission/reception when MCR[RFEN]=0, or Rx FIFO
      --  overflow when MCR[RFEN]=1
      IFLAG1_BUF7I_Field_1)
     with Size => 1;
   for IFLAG1_BUF7I_Field use
     (IFLAG1_BUF7I_Field_0 => 0,
      IFLAG1_BUF7I_Field_1 => 1);

   --  Buffer MBi Interrupt
   type IFLAG1_BUF31TO8I_Field is
     (
      --  The corresponding buffer has no occurrence of successfully completed
      --  transmission or reception.
      IFLAG1_BUF31TO8I_Field_0,
      --  The corresponding buffer has successfully completed transmission or
      --  reception.
      IFLAG1_BUF31TO8I_Field_1)
     with Size => 24;
   for IFLAG1_BUF31TO8I_Field use
     (IFLAG1_BUF31TO8I_Field_0 => 0,
      IFLAG1_BUF31TO8I_Field_1 => 1);

   --  Interrupt Flags 1 register
   type CAN0_IFLAG1_Register is record
      --  Buffer MB0 Interrupt Or "reserved"
      BUF0I     : IFLAG1_BUF0I_Field := NRF_SVD.CAN.IFLAG1_BUF0I_Field_0;
      --  Buffer MB i Interrupt Or "reserved"
      BUF4TO1I  : IFLAG1_BUF4TO1I_Field :=
                   NRF_SVD.CAN.IFLAG1_BUF4TO1I_Field_0;
      --  Buffer MB5 Interrupt Or "Frames available in Rx FIFO"
      BUF5I     : IFLAG1_BUF5I_Field := NRF_SVD.CAN.IFLAG1_BUF5I_Field_0;
      --  Buffer MB6 Interrupt Or "Rx FIFO Warning"
      BUF6I     : IFLAG1_BUF6I_Field := NRF_SVD.CAN.IFLAG1_BUF6I_Field_0;
      --  Buffer MB7 Interrupt Or "Rx FIFO Overflow"
      BUF7I     : IFLAG1_BUF7I_Field := NRF_SVD.CAN.IFLAG1_BUF7I_Field_0;
      --  Buffer MBi Interrupt
      BUF31TO8I : IFLAG1_BUF31TO8I_Field :=
                   NRF_SVD.CAN.IFLAG1_BUF31TO8I_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_IFLAG1_Register use record
      BUF0I     at 0 range 0 .. 0;
      BUF4TO1I  at 0 range 1 .. 4;
      BUF5I     at 0 range 5 .. 5;
      BUF6I     at 0 range 6 .. 6;
      BUF7I     at 0 range 7 .. 7;
      BUF31TO8I at 0 range 8 .. 31;
   end record;

   --  Entire Frame Arbitration Field Comparison Enable For Rx Mailboxes
   type CTRL2_EACEN_Field is
     (
      --  Rx Mailbox filter's IDE bit is always compared and RTR is never
      --  compared despite mask bits.
      CTRL2_EACEN_Field_0,
      --  Enables the comparison of both Rx Mailbox filter's IDE and RTR bit
      --  with their corresponding bits within the incoming frame. Mask bits do
      --  apply.
      CTRL2_EACEN_Field_1)
     with Size => 1;
   for CTRL2_EACEN_Field use
     (CTRL2_EACEN_Field_0 => 0,
      CTRL2_EACEN_Field_1 => 1);

   --  Remote Request Storing
   type CTRL2_RRS_Field is
     (
      --  Remote Response Frame is generated.
      CTRL2_RRS_Field_0,
      --  Remote Request Frame is stored.
      CTRL2_RRS_Field_1)
     with Size => 1;
   for CTRL2_RRS_Field use
     (CTRL2_RRS_Field_0 => 0,
      CTRL2_RRS_Field_1 => 1);

   --  Mailboxes Reception Priority
   type CTRL2_MRP_Field is
     (
      --  Matching starts from Rx FIFO and continues on Mailboxes.
      CTRL2_MRP_Field_0,
      --  Matching starts from Mailboxes and continues on Rx FIFO.
      CTRL2_MRP_Field_1)
     with Size => 1;
   for CTRL2_MRP_Field use
     (CTRL2_MRP_Field_0 => 0,
      CTRL2_MRP_Field_1 => 1);

   subtype CAN0_CTRL2_TASD_Field is HAL.UInt5;
   subtype CAN0_CTRL2_RFFN_Field is HAL.UInt4;

   --  Write-Access To Memory In Freeze Mode
   type CTRL2_WRMFRZ_Field is
     (
      --  Maintain the write access restrictions.
      CTRL2_WRMFRZ_Field_0,
      --  Enable unrestricted write access to FlexCAN memory.
      CTRL2_WRMFRZ_Field_1)
     with Size => 1;
   for CTRL2_WRMFRZ_Field use
     (CTRL2_WRMFRZ_Field_0 => 0,
      CTRL2_WRMFRZ_Field_1 => 1);

   --  Control 2 register
   type CAN0_CTRL2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Entire Frame Arbitration Field Comparison Enable For Rx Mailboxes
      EACEN          : CTRL2_EACEN_Field := NRF_SVD.CAN.CTRL2_EACEN_Field_0;
      --  Remote Request Storing
      RRS            : CTRL2_RRS_Field := NRF_SVD.CAN.CTRL2_RRS_Field_0;
      --  Mailboxes Reception Priority
      MRP            : CTRL2_MRP_Field := NRF_SVD.CAN.CTRL2_MRP_Field_0;
      --  Tx Arbitration Start Delay
      TASD           : CAN0_CTRL2_TASD_Field := 16#16#;
      --  Number Of Rx FIFO Filters
      RFFN           : CAN0_CTRL2_RFFN_Field := 16#0#;
      --  Write-Access To Memory In Freeze Mode
      WRMFRZ         : CTRL2_WRMFRZ_Field := NRF_SVD.CAN.CTRL2_WRMFRZ_Field_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_CTRL2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      EACEN          at 0 range 16 .. 16;
      RRS            at 0 range 17 .. 17;
      MRP            at 0 range 18 .. 18;
      TASD           at 0 range 19 .. 23;
      RFFN           at 0 range 24 .. 27;
      WRMFRZ         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Inactive Mailbox
   type ESR2_IMB_Field is
     (
      --  If ESR2[VPS] is asserted, the ESR2[LPTM] is not an inactive Mailbox.
      ESR2_IMB_Field_0,
      --  If ESR2[VPS] is asserted, there is at least one inactive Mailbox.
      --  LPTM content is the number of the first one.
      ESR2_IMB_Field_1)
     with Size => 1;
   for ESR2_IMB_Field use
     (ESR2_IMB_Field_0 => 0,
      ESR2_IMB_Field_1 => 1);

   --  Valid Priority Status
   type ESR2_VPS_Field is
     (
      --  Contents of IMB and LPTM are invalid.
      ESR2_VPS_Field_0,
      --  Contents of IMB and LPTM are valid.
      ESR2_VPS_Field_1)
     with Size => 1;
   for ESR2_VPS_Field use
     (ESR2_VPS_Field_0 => 0,
      ESR2_VPS_Field_1 => 1);

   subtype CAN0_ESR2_LPTM_Field is HAL.UInt7;

   --  Error and Status 2 register
   type CAN0_ESR2_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13;
      --  Read-only. Inactive Mailbox
      IMB            : ESR2_IMB_Field;
      --  Read-only. Valid Priority Status
      VPS            : ESR2_VPS_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Lowest Priority Tx Mailbox
      LPTM           : CAN0_ESR2_LPTM_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_ESR2_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      IMB            at 0 range 13 .. 13;
      VPS            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LPTM           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CAN0_CRCR_TXCRC_Field is HAL.UInt15;
   subtype CAN0_CRCR_MBCRC_Field is HAL.UInt7;

   --  CRC Register
   type CAN0_CRCR_Register is record
      --  Read-only. CRC Transmitted
      TXCRC          : CAN0_CRCR_TXCRC_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. CRC Mailbox
      MBCRC          : CAN0_CRCR_MBCRC_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_CRCR_Register use record
      TXCRC          at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MBCRC          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CAN0_RXFIR_IDHIT_Field is HAL.UInt9;

   --  Rx FIFO Information Register
   type CAN0_RXFIR_Register is record
      --  Read-only. Identifier Acceptance Filter Hit Indicator
      IDHIT         : CAN0_RXFIR_IDHIT_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_RXFIR_Register use record
      IDHIT         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CS_TIME_STAMP_Field is HAL.UInt16;
   subtype CS_DLC_Field is HAL.UInt4;
   subtype CS_CODE_Field is HAL.UInt4;

   --  Message Buffer 0 CS Register
   type CS_Register is record
      --  Free-Running Counter Time stamp. This 16-bit field is a copy of the
      --  Free-Running Timer, captured for Tx and Rx frames at the time when
      --  the beginning of the Identifier field appears on the CAN bus.
      TIME_STAMP     : CS_TIME_STAMP_Field := 16#0#;
      --  Length of the data to be stored/transmitted.
      DLC            : CS_DLC_Field := 16#0#;
      --  Remote Transmission Request. One/zero for remote/data frame.
      RTR            : Boolean := False;
      --  ID Extended. One/zero for extended/standard format frame.
      IDE            : Boolean := False;
      --  Substitute Remote Request. Contains a fixed recessive bit.
      SRR            : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Reserved
      CODE           : CS_CODE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CS_Register use record
      TIME_STAMP     at 0 range 0 .. 15;
      DLC            at 0 range 16 .. 19;
      RTR            at 0 range 20 .. 20;
      IDE            at 0 range 21 .. 21;
      SRR            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CODE           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ID_EXT_Field is HAL.UInt18;
   subtype ID_STD_Field is HAL.UInt11;
   subtype ID_PRIO_Field is HAL.UInt3;

   --  Message Buffer 0 ID Register
   type ID_Register is record
      --  Contains extended (LOW word) identifier of message buffer.
      EXT  : ID_EXT_Field := 16#0#;
      --  Contains standard/extended (HIGH word) identifier of message buffer.
      STD  : ID_STD_Field := 16#0#;
      --  Local priority. This 3-bit fieldis only used when LPRIO_EN bit is set
      --  in MCR and it only makes sense for Tx buffers. These bits are not
      --  transmitted. They are appended to the regular ID to define the
      --  transmission priority.
      PRIO : ID_PRIO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      EXT  at 0 range 0 .. 17;
      STD  at 0 range 18 .. 28;
      PRIO at 0 range 29 .. 31;
   end record;

   subtype WORD_DATA_BYTE_3_Field is HAL.UInt8;
   subtype WORD_DATA_BYTE_2_Field is HAL.UInt8;
   subtype WORD_DATA_BYTE_1_Field is HAL.UInt8;
   subtype WORD_DATA_BYTE_0_Field is HAL.UInt8;

   --  Message Buffer 0 WORD0 Register
   type WORD_Register is record
      --  Data byte 3 of Rx/Tx frame.
      DATA_BYTE_3 : WORD_DATA_BYTE_3_Field := 16#0#;
      --  Data byte 2 of Rx/Tx frame.
      DATA_BYTE_2 : WORD_DATA_BYTE_2_Field := 16#0#;
      --  Data byte 1 of Rx/Tx frame.
      DATA_BYTE_1 : WORD_DATA_BYTE_1_Field := 16#0#;
      --  Data byte 0 of Rx/Tx frame.
      DATA_BYTE_0 : WORD_DATA_BYTE_0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WORD_Register use record
      DATA_BYTE_3 at 0 range 0 .. 7;
      DATA_BYTE_2 at 0 range 8 .. 15;
      DATA_BYTE_1 at 0 range 16 .. 23;
      DATA_BYTE_0 at 0 range 24 .. 31;
   end record;

   subtype WORD_DATA_BYTE_7_Field is HAL.UInt8;
   subtype WORD_DATA_BYTE_6_Field is HAL.UInt8;
   subtype WORD_DATA_BYTE_5_Field is HAL.UInt8;
   subtype WORD_DATA_BYTE_4_Field is HAL.UInt8;

   --  Message Buffer 0 WORD1 Register
   type WORD_Register_1 is record
      --  Data byte 7 of Rx/Tx frame.
      DATA_BYTE_7 : WORD_DATA_BYTE_7_Field := 16#0#;
      --  Data byte 6 of Rx/Tx frame.
      DATA_BYTE_6 : WORD_DATA_BYTE_6_Field := 16#0#;
      --  Data byte 5 of Rx/Tx frame.
      DATA_BYTE_5 : WORD_DATA_BYTE_5_Field := 16#0#;
      --  Data byte 4 of Rx/Tx frame.
      DATA_BYTE_4 : WORD_DATA_BYTE_4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WORD_Register_1 use record
      DATA_BYTE_7 at 0 range 0 .. 7;
      DATA_BYTE_6 at 0 range 8 .. 15;
      DATA_BYTE_5 at 0 range 16 .. 23;
      DATA_BYTE_4 at 0 range 24 .. 31;
   end record;

   --  Rx Individual Mask Registers

   --  Rx Individual Mask Registers
   type CAN0_RXIMR_Registers is array (0 .. 15) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Flex Controller Area Network module
   type CAN_Peripheral is record
      --  Module Configuration Register
      MCR      : aliased CAN0_MCR_Register;
      --  Control 1 register
      CTRL1    : aliased CAN0_CTRL1_Register;
      --  Free Running Timer
      TIMER    : aliased CAN0_TIMER_Register;
      --  Rx Mailboxes Global Mask Register
      RXMGMASK : aliased HAL.UInt32;
      --  Rx 14 Mask register
      RX14MASK : aliased HAL.UInt32;
      --  Rx 15 Mask register
      RX15MASK : aliased HAL.UInt32;
      --  Error Counter
      ECR      : aliased CAN0_ECR_Register;
      --  Error and Status 1 register
      ESR1     : aliased CAN0_ESR1_Register;
      --  Interrupt Masks 1 register
      IMASK1   : aliased HAL.UInt32;
      --  Interrupt Flags 1 register
      IFLAG1   : aliased CAN0_IFLAG1_Register;
      --  Control 2 register
      CTRL2    : aliased CAN0_CTRL2_Register;
      --  Error and Status 2 register
      ESR2     : aliased CAN0_ESR2_Register;
      --  CRC Register
      CRCR     : aliased CAN0_CRCR_Register;
      --  Rx FIFO Global Mask register
      RXFGMASK : aliased HAL.UInt32;
      --  Rx FIFO Information Register
      RXFIR    : aliased CAN0_RXFIR_Register;
      --  Message Buffer 0 CS Register
      CS0      : aliased CS_Register;
      --  Message Buffer 0 ID Register
      ID0      : aliased ID_Register;
      --  Message Buffer 0 WORD0 Register
      WORD00   : aliased WORD_Register;
      --  Message Buffer 0 WORD1 Register
      WORD10   : aliased WORD_Register_1;
      --  Message Buffer 1 CS Register
      CS1      : aliased CS_Register;
      --  Message Buffer 1 ID Register
      ID1      : aliased ID_Register;
      --  Message Buffer 1 WORD0 Register
      WORD01   : aliased WORD_Register;
      --  Message Buffer 1 WORD1 Register
      WORD11   : aliased WORD_Register_1;
      --  Message Buffer 2 CS Register
      CS2      : aliased CS_Register;
      --  Message Buffer 2 ID Register
      ID2      : aliased ID_Register;
      --  Message Buffer 2 WORD0 Register
      WORD02   : aliased WORD_Register;
      --  Message Buffer 2 WORD1 Register
      WORD12   : aliased WORD_Register_1;
      --  Message Buffer 3 CS Register
      CS3      : aliased CS_Register;
      --  Message Buffer 3 ID Register
      ID3      : aliased ID_Register;
      --  Message Buffer 3 WORD0 Register
      WORD03   : aliased WORD_Register;
      --  Message Buffer 3 WORD1 Register
      WORD13   : aliased WORD_Register_1;
      --  Message Buffer 4 CS Register
      CS4      : aliased CS_Register;
      --  Message Buffer 4 ID Register
      ID4      : aliased ID_Register;
      --  Message Buffer 4 WORD0 Register
      WORD04   : aliased WORD_Register;
      --  Message Buffer 4 WORD1 Register
      WORD14   : aliased WORD_Register_1;
      --  Message Buffer 5 CS Register
      CS5      : aliased CS_Register;
      --  Message Buffer 5 ID Register
      ID5      : aliased ID_Register;
      --  Message Buffer 5 WORD0 Register
      WORD05   : aliased WORD_Register;
      --  Message Buffer 5 WORD1 Register
      WORD15   : aliased WORD_Register_1;
      --  Message Buffer 6 CS Register
      CS6      : aliased CS_Register;
      --  Message Buffer 6 ID Register
      ID6      : aliased ID_Register;
      --  Message Buffer 6 WORD0 Register
      WORD06   : aliased WORD_Register;
      --  Message Buffer 6 WORD1 Register
      WORD16   : aliased WORD_Register_1;
      --  Message Buffer 7 CS Register
      CS7      : aliased CS_Register;
      --  Message Buffer 7 ID Register
      ID7      : aliased ID_Register;
      --  Message Buffer 7 WORD0 Register
      WORD07   : aliased WORD_Register;
      --  Message Buffer 7 WORD1 Register
      WORD17   : aliased WORD_Register_1;
      --  Message Buffer 8 CS Register
      CS8      : aliased CS_Register;
      --  Message Buffer 8 ID Register
      ID8      : aliased ID_Register;
      --  Message Buffer 8 WORD0 Register
      WORD08   : aliased WORD_Register;
      --  Message Buffer 8 WORD1 Register
      WORD18   : aliased WORD_Register_1;
      --  Message Buffer 9 CS Register
      CS9      : aliased CS_Register;
      --  Message Buffer 9 ID Register
      ID9      : aliased ID_Register;
      --  Message Buffer 9 WORD0 Register
      WORD09   : aliased WORD_Register;
      --  Message Buffer 9 WORD1 Register
      WORD19   : aliased WORD_Register_1;
      --  Message Buffer 10 CS Register
      CS10     : aliased CS_Register;
      --  Message Buffer 10 ID Register
      ID10     : aliased ID_Register;
      --  Message Buffer 10 WORD0 Register
      WORD010  : aliased WORD_Register;
      --  Message Buffer 10 WORD1 Register
      WORD110  : aliased WORD_Register_1;
      --  Message Buffer 11 CS Register
      CS11     : aliased CS_Register;
      --  Message Buffer 11 ID Register
      ID11     : aliased ID_Register;
      --  Message Buffer 11 WORD0 Register
      WORD011  : aliased WORD_Register;
      --  Message Buffer 11 WORD1 Register
      WORD111  : aliased WORD_Register_1;
      --  Message Buffer 12 CS Register
      CS12     : aliased CS_Register;
      --  Message Buffer 12 ID Register
      ID12     : aliased ID_Register;
      --  Message Buffer 12 WORD0 Register
      WORD012  : aliased WORD_Register;
      --  Message Buffer 12 WORD1 Register
      WORD112  : aliased WORD_Register_1;
      --  Message Buffer 13 CS Register
      CS13     : aliased CS_Register;
      --  Message Buffer 13 ID Register
      ID13     : aliased ID_Register;
      --  Message Buffer 13 WORD0 Register
      WORD013  : aliased WORD_Register;
      --  Message Buffer 13 WORD1 Register
      WORD113  : aliased WORD_Register_1;
      --  Message Buffer 14 CS Register
      CS14     : aliased CS_Register;
      --  Message Buffer 14 ID Register
      ID14     : aliased ID_Register;
      --  Message Buffer 14 WORD0 Register
      WORD014  : aliased WORD_Register;
      --  Message Buffer 14 WORD1 Register
      WORD114  : aliased WORD_Register_1;
      --  Message Buffer 15 CS Register
      CS15     : aliased CS_Register;
      --  Message Buffer 15 ID Register
      ID15     : aliased ID_Register;
      --  Message Buffer 15 WORD0 Register
      WORD015  : aliased WORD_Register;
      --  Message Buffer 15 WORD1 Register
      WORD115  : aliased WORD_Register_1;
      --  Rx Individual Mask Registers
      RXIMR    : aliased CAN0_RXIMR_Registers;
   end record
     with Volatile;

   for CAN_Peripheral use record
      MCR      at 16#0# range 0 .. 31;
      CTRL1    at 16#4# range 0 .. 31;
      TIMER    at 16#8# range 0 .. 31;
      RXMGMASK at 16#10# range 0 .. 31;
      RX14MASK at 16#14# range 0 .. 31;
      RX15MASK at 16#18# range 0 .. 31;
      ECR      at 16#1C# range 0 .. 31;
      ESR1     at 16#20# range 0 .. 31;
      IMASK1   at 16#28# range 0 .. 31;
      IFLAG1   at 16#30# range 0 .. 31;
      CTRL2    at 16#34# range 0 .. 31;
      ESR2     at 16#38# range 0 .. 31;
      CRCR     at 16#44# range 0 .. 31;
      RXFGMASK at 16#48# range 0 .. 31;
      RXFIR    at 16#4C# range 0 .. 31;
      CS0      at 16#80# range 0 .. 31;
      ID0      at 16#84# range 0 .. 31;
      WORD00   at 16#88# range 0 .. 31;
      WORD10   at 16#8C# range 0 .. 31;
      CS1      at 16#90# range 0 .. 31;
      ID1      at 16#94# range 0 .. 31;
      WORD01   at 16#98# range 0 .. 31;
      WORD11   at 16#9C# range 0 .. 31;
      CS2      at 16#A0# range 0 .. 31;
      ID2      at 16#A4# range 0 .. 31;
      WORD02   at 16#A8# range 0 .. 31;
      WORD12   at 16#AC# range 0 .. 31;
      CS3      at 16#B0# range 0 .. 31;
      ID3      at 16#B4# range 0 .. 31;
      WORD03   at 16#B8# range 0 .. 31;
      WORD13   at 16#BC# range 0 .. 31;
      CS4      at 16#C0# range 0 .. 31;
      ID4      at 16#C4# range 0 .. 31;
      WORD04   at 16#C8# range 0 .. 31;
      WORD14   at 16#CC# range 0 .. 31;
      CS5      at 16#D0# range 0 .. 31;
      ID5      at 16#D4# range 0 .. 31;
      WORD05   at 16#D8# range 0 .. 31;
      WORD15   at 16#DC# range 0 .. 31;
      CS6      at 16#E0# range 0 .. 31;
      ID6      at 16#E4# range 0 .. 31;
      WORD06   at 16#E8# range 0 .. 31;
      WORD16   at 16#EC# range 0 .. 31;
      CS7      at 16#F0# range 0 .. 31;
      ID7      at 16#F4# range 0 .. 31;
      WORD07   at 16#F8# range 0 .. 31;
      WORD17   at 16#FC# range 0 .. 31;
      CS8      at 16#100# range 0 .. 31;
      ID8      at 16#104# range 0 .. 31;
      WORD08   at 16#108# range 0 .. 31;
      WORD18   at 16#10C# range 0 .. 31;
      CS9      at 16#110# range 0 .. 31;
      ID9      at 16#114# range 0 .. 31;
      WORD09   at 16#118# range 0 .. 31;
      WORD19   at 16#11C# range 0 .. 31;
      CS10     at 16#120# range 0 .. 31;
      ID10     at 16#124# range 0 .. 31;
      WORD010  at 16#128# range 0 .. 31;
      WORD110  at 16#12C# range 0 .. 31;
      CS11     at 16#130# range 0 .. 31;
      ID11     at 16#134# range 0 .. 31;
      WORD011  at 16#138# range 0 .. 31;
      WORD111  at 16#13C# range 0 .. 31;
      CS12     at 16#140# range 0 .. 31;
      ID12     at 16#144# range 0 .. 31;
      WORD012  at 16#148# range 0 .. 31;
      WORD112  at 16#14C# range 0 .. 31;
      CS13     at 16#150# range 0 .. 31;
      ID13     at 16#154# range 0 .. 31;
      WORD013  at 16#158# range 0 .. 31;
      WORD113  at 16#15C# range 0 .. 31;
      CS14     at 16#160# range 0 .. 31;
      ID14     at 16#164# range 0 .. 31;
      WORD014  at 16#168# range 0 .. 31;
      WORD114  at 16#16C# range 0 .. 31;
      CS15     at 16#170# range 0 .. 31;
      ID15     at 16#174# range 0 .. 31;
      WORD015  at 16#178# range 0 .. 31;
      WORD115  at 16#17C# range 0 .. 31;
      RXIMR    at 16#880# range 0 .. 511;
   end record;

   --  Flex Controller Area Network module
   CAN0_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#40024000#);

   --  Flex Controller Area Network module
   CAN1_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#400A4000#);

end NRF_SVD.CAN;
