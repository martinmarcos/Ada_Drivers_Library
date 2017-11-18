--  This spec has been automatically generated from MKE16F16.xml

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
      Idam_0,
      --  Format B: Two full standard IDs or two partial 14-bit (standard and
      --  extended) IDs per ID Filter Table element.
      Idam_1,
      --  Format C: Four partial 8-bit Standard IDs per ID Filter Table
      --  element.
      Idam_2,
      --  Format D: All frames rejected.
      Idam_3)
     with Size => 2;
   for MCR_IDAM_Field use
     (Idam_0 => 0,
      Idam_1 => 1,
      Idam_2 => 2,
      Idam_3 => 3);

   --  Abort Enable
   type MCR_AEN_Field is
     (
      --  Abort disabled.
      Aen_0,
      --  Abort enabled.
      Aen_1)
     with Size => 1;
   for MCR_AEN_Field use
     (Aen_0 => 0,
      Aen_1 => 1);

   --  Local Priority Enable
   type MCR_LPRIOEN_Field is
     (
      --  Local Priority disabled.
      Lprioen_0,
      --  Local Priority enabled.
      Lprioen_1)
     with Size => 1;
   for MCR_LPRIOEN_Field use
     (Lprioen_0 => 0,
      Lprioen_1 => 1);

   --  DMA Enable
   type MCR_DMA_Field is
     (
      --  DMA feature for RX FIFO disabled.
      Dma_0,
      --  DMA feature for RX FIFO enabled.
      Dma_1)
     with Size => 1;
   for MCR_DMA_Field use
     (Dma_0 => 0,
      Dma_1 => 1);

   --  Individual Rx Masking And Queue Enable
   type MCR_IRMQ_Field is
     (
      --  Individual Rx masking and queue feature are disabled. For backward
      --  compatibility with legacy applications, the reading of C/S word locks
      --  the MB even if it is EMPTY.
      Irmq_0,
      --  Individual Rx masking and queue feature are enabled.
      Irmq_1)
     with Size => 1;
   for MCR_IRMQ_Field use
     (Irmq_0 => 0,
      Irmq_1 => 1);

   --  Self Reception Disable
   type MCR_SRXDIS_Field is
     (
      --  Self reception enabled.
      Srxdis_0,
      --  Self reception disabled.
      Srxdis_1)
     with Size => 1;
   for MCR_SRXDIS_Field use
     (Srxdis_0 => 0,
      Srxdis_1 => 1);

   --  Wake Up Source
   type MCR_WAKSRC_Field is
     (
      --  FlexCAN uses the unfiltered Rx input to detect recessive to dominant
      --  edges on the CAN bus.
      Waksrc_0,
      --  FlexCAN uses the filtered Rx input to detect recessive to dominant
      --  edges on the CAN bus.
      Waksrc_1)
     with Size => 1;
   for MCR_WAKSRC_Field use
     (Waksrc_0 => 0,
      Waksrc_1 => 1);

   --  Low-Power Mode Acknowledge
   type MCR_LPMACK_Field is
     (
      --  FlexCAN is not in a low-power mode.
      Lpmack_0,
      --  FlexCAN is in a low-power mode.
      Lpmack_1)
     with Size => 1;
   for MCR_LPMACK_Field use
     (Lpmack_0 => 0,
      Lpmack_1 => 1);

   --  Warning Interrupt Enable
   type MCR_WRNEN_Field is
     (
      --  TWRNINT and RWRNINT bits are zero, independent of the values in the
      --  error counters.
      Wrnen_0,
      --  TWRNINT and RWRNINT bits are set when the respective error counter
      --  transitions from less than 96 to greater than or equal to 96.
      Wrnen_1)
     with Size => 1;
   for MCR_WRNEN_Field use
     (Wrnen_0 => 0,
      Wrnen_1 => 1);

   --  Self Wake Up
   type MCR_SLFWAK_Field is
     (
      --  FlexCAN Self Wake Up feature is disabled.
      Slfwak_0,
      --  FlexCAN Self Wake Up feature is enabled.
      Slfwak_1)
     with Size => 1;
   for MCR_SLFWAK_Field use
     (Slfwak_0 => 0,
      Slfwak_1 => 1);

   --  Supervisor Mode
   type MCR_SUPV_Field is
     (
      --  FlexCAN is in User mode. Affected registers allow both Supervisor and
      --  Unrestricted accesses.
      Supv_0,
      --  FlexCAN is in Supervisor mode. Affected registers allow only
      --  Supervisor access. Unrestricted access behaves as though the access
      --  was done to an unimplemented register location.
      Supv_1)
     with Size => 1;
   for MCR_SUPV_Field use
     (Supv_0 => 0,
      Supv_1 => 1);

   --  Freeze Mode Acknowledge
   type MCR_FRZACK_Field is
     (
      --  FlexCAN not in Freeze mode, prescaler running.
      Frzack_0,
      --  FlexCAN in Freeze mode, prescaler stopped.
      Frzack_1)
     with Size => 1;
   for MCR_FRZACK_Field use
     (Frzack_0 => 0,
      Frzack_1 => 1);

   --  Soft Reset
   type MCR_SOFTRST_Field is
     (
      --  No reset request.
      Softrst_0,
      --  Resets the registers affected by soft reset.
      Softrst_1)
     with Size => 1;
   for MCR_SOFTRST_Field use
     (Softrst_0 => 0,
      Softrst_1 => 1);

   --  Wake Up Interrupt Mask
   type MCR_WAKMSK_Field is
     (
      --  Wake Up Interrupt is disabled.
      Wakmsk_0,
      --  Wake Up Interrupt is enabled.
      Wakmsk_1)
     with Size => 1;
   for MCR_WAKMSK_Field use
     (Wakmsk_0 => 0,
      Wakmsk_1 => 1);

   --  FlexCAN Not Ready
   type MCR_NOTRDY_Field is
     (
      --  FlexCAN module is either in Normal mode, Listen-Only mode or
      --  Loop-Back mode.
      Notrdy_0,
      --  FlexCAN module is either in Disable mode, Stop mode or Freeze mode.
      Notrdy_1)
     with Size => 1;
   for MCR_NOTRDY_Field use
     (Notrdy_0 => 0,
      Notrdy_1 => 1);

   --  Halt FlexCAN
   type MCR_HALT_Field is
     (
      --  No Freeze mode request.
      Halt_0,
      --  Enters Freeze mode if the FRZ bit is asserted.
      Halt_1)
     with Size => 1;
   for MCR_HALT_Field use
     (Halt_0 => 0,
      Halt_1 => 1);

   --  Rx FIFO Enable
   type MCR_RFEN_Field is
     (
      --  Rx FIFO not enabled.
      Rfen_0,
      --  Rx FIFO enabled.
      Rfen_1)
     with Size => 1;
   for MCR_RFEN_Field use
     (Rfen_0 => 0,
      Rfen_1 => 1);

   --  Freeze Enable
   type MCR_FRZ_Field is
     (
      --  Not enabled to enter Freeze mode.
      Frz_0,
      --  Enabled to enter Freeze mode.
      Frz_1)
     with Size => 1;
   for MCR_FRZ_Field use
     (Frz_0 => 0,
      Frz_1 => 1);

   --  Module Disable
   type MCR_MDIS_Field is
     (
      --  Enable the FlexCAN module.
      Mdis_0,
      --  Disable the FlexCAN module.
      Mdis_1)
     with Size => 1;
   for MCR_MDIS_Field use
     (Mdis_0 => 0,
      Mdis_1 => 1);

   --  Module Configuration Register
   type CAN0_MCR_Register is record
      --  Number Of The Last Message Buffer
      MAXMB          : CAN0_MCR_MAXMB_Field := 16#F#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ID Acceptance Mode
      IDAM           : MCR_IDAM_Field := NRF_SVD.CAN.Idam_0;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Abort Enable
      AEN            : MCR_AEN_Field := NRF_SVD.CAN.Aen_0;
      --  Local Priority Enable
      LPRIOEN        : MCR_LPRIOEN_Field := NRF_SVD.CAN.Lprioen_0;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  DMA Enable
      DMA            : MCR_DMA_Field := NRF_SVD.CAN.Dma_0;
      --  Individual Rx Masking And Queue Enable
      IRMQ           : MCR_IRMQ_Field := NRF_SVD.CAN.Irmq_0;
      --  Self Reception Disable
      SRXDIS         : MCR_SRXDIS_Field := NRF_SVD.CAN.Srxdis_0;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Wake Up Source
      WAKSRC         : MCR_WAKSRC_Field := NRF_SVD.CAN.Waksrc_0;
      --  Read-only. Low-Power Mode Acknowledge
      LPMACK         : MCR_LPMACK_Field := NRF_SVD.CAN.Lpmack_1;
      --  Warning Interrupt Enable
      WRNEN          : MCR_WRNEN_Field := NRF_SVD.CAN.Wrnen_0;
      --  Self Wake Up
      SLFWAK         : MCR_SLFWAK_Field := NRF_SVD.CAN.Slfwak_0;
      --  Supervisor Mode
      SUPV           : MCR_SUPV_Field := NRF_SVD.CAN.Supv_1;
      --  Read-only. Freeze Mode Acknowledge
      FRZACK         : MCR_FRZACK_Field := NRF_SVD.CAN.Frzack_0;
      --  Soft Reset
      SOFTRST        : MCR_SOFTRST_Field := NRF_SVD.CAN.Softrst_0;
      --  Wake Up Interrupt Mask
      WAKMSK         : MCR_WAKMSK_Field := NRF_SVD.CAN.Wakmsk_0;
      --  Read-only. FlexCAN Not Ready
      NOTRDY         : MCR_NOTRDY_Field := NRF_SVD.CAN.Notrdy_1;
      --  Halt FlexCAN
      HALT           : MCR_HALT_Field := NRF_SVD.CAN.Halt_1;
      --  Rx FIFO Enable
      RFEN           : MCR_RFEN_Field := NRF_SVD.CAN.Rfen_0;
      --  Freeze Enable
      FRZ            : MCR_FRZ_Field := NRF_SVD.CAN.Frz_1;
      --  Module Disable
      MDIS           : MCR_MDIS_Field := NRF_SVD.CAN.Mdis_1;
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
      Reserved_14_14 at 0 range 14 .. 14;
      DMA            at 0 range 15 .. 15;
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
      Lom_0,
      --  FlexCAN module operates in Listen-Only mode.
      Lom_1)
     with Size => 1;
   for CTRL1_LOM_Field use
     (Lom_0 => 0,
      Lom_1 => 1);

   --  Lowest Buffer Transmitted First
   type CTRL1_LBUF_Field is
     (
      --  Buffer with highest priority is transmitted first.
      Lbuf_0,
      --  Lowest number buffer is transmitted first.
      Lbuf_1)
     with Size => 1;
   for CTRL1_LBUF_Field use
     (Lbuf_0 => 0,
      Lbuf_1 => 1);

   --  Timer Sync
   type CTRL1_TSYN_Field is
     (
      --  Timer Sync feature disabled
      Tsyn_0,
      --  Timer Sync feature enabled
      Tsyn_1)
     with Size => 1;
   for CTRL1_TSYN_Field use
     (Tsyn_0 => 0,
      Tsyn_1 => 1);

   --  Bus Off Recovery
   type CTRL1_BOFFREC_Field is
     (
      --  Automatic recovering from Bus Off state enabled.
      Boffrec_0,
      --  Automatic recovering from Bus Off state disabled.
      Boffrec_1)
     with Size => 1;
   for CTRL1_BOFFREC_Field use
     (Boffrec_0 => 0,
      Boffrec_1 => 1);

   --  CAN Bit Sampling
   type CTRL1_SMP_Field is
     (
      --  Just one sample is used to determine the bit value.
      Smp_0,
      --  Three samples are used to determine the value of the received bit:
      --  the regular one (sample point) and 2 preceding samples; a majority
      --  rule is used.
      Smp_1)
     with Size => 1;
   for CTRL1_SMP_Field use
     (Smp_0 => 0,
      Smp_1 => 1);

   --  Rx Warning Interrupt Mask
   type CTRL1_RWRNMSK_Field is
     (
      --  Rx Warning Interrupt disabled.
      Rwrnmsk_0,
      --  Rx Warning Interrupt enabled.
      Rwrnmsk_1)
     with Size => 1;
   for CTRL1_RWRNMSK_Field use
     (Rwrnmsk_0 => 0,
      Rwrnmsk_1 => 1);

   --  Tx Warning Interrupt Mask
   type CTRL1_TWRNMSK_Field is
     (
      --  Tx Warning Interrupt disabled.
      Twrnmsk_0,
      --  Tx Warning Interrupt enabled.
      Twrnmsk_1)
     with Size => 1;
   for CTRL1_TWRNMSK_Field use
     (Twrnmsk_0 => 0,
      Twrnmsk_1 => 1);

   --  Loop Back Mode
   type CTRL1_LPB_Field is
     (
      --  Loop Back disabled.
      Lpb_0,
      --  Loop Back enabled.
      Lpb_1)
     with Size => 1;
   for CTRL1_LPB_Field use
     (Lpb_0 => 0,
      Lpb_1 => 1);

   --  CAN Engine Clock Source
   type CTRL1_CLKSRC_Field is
     (
      --  The CAN engine clock source is the oscillator clock. Under this
      --  condition, the oscillator clock frequency must be lower than the bus
      --  clock.
      Clksrc_0,
      --  The CAN engine clock source is the peripheral clock.
      Clksrc_1)
     with Size => 1;
   for CTRL1_CLKSRC_Field use
     (Clksrc_0 => 0,
      Clksrc_1 => 1);

   --  Error Interrupt Mask
   type CTRL1_ERRMSK_Field is
     (
      --  Error interrupt disabled.
      Errmsk_0,
      --  Error interrupt enabled.
      Errmsk_1)
     with Size => 1;
   for CTRL1_ERRMSK_Field use
     (Errmsk_0 => 0,
      Errmsk_1 => 1);

   --  Bus Off Interrupt Mask
   type CTRL1_BOFFMSK_Field is
     (
      --  Bus Off interrupt disabled.
      Boffmsk_0,
      --  Bus Off interrupt enabled.
      Boffmsk_1)
     with Size => 1;
   for CTRL1_BOFFMSK_Field use
     (Boffmsk_0 => 0,
      Boffmsk_1 => 1);

   subtype CAN0_CTRL1_PSEG2_Field is HAL.UInt3;
   subtype CAN0_CTRL1_PSEG1_Field is HAL.UInt3;
   subtype CAN0_CTRL1_RJW_Field is HAL.UInt2;
   subtype CAN0_CTRL1_PRESDIV_Field is HAL.UInt8;

   --  Control 1 register
   type CAN0_CTRL1_Register is record
      --  Propagation Segment
      PROPSEG      : CAN0_CTRL1_PROPSEG_Field := 16#0#;
      --  Listen-Only Mode
      LOM          : CTRL1_LOM_Field := NRF_SVD.CAN.Lom_0;
      --  Lowest Buffer Transmitted First
      LBUF         : CTRL1_LBUF_Field := NRF_SVD.CAN.Lbuf_0;
      --  Timer Sync
      TSYN         : CTRL1_TSYN_Field := NRF_SVD.CAN.Tsyn_0;
      --  Bus Off Recovery
      BOFFREC      : CTRL1_BOFFREC_Field := NRF_SVD.CAN.Boffrec_0;
      --  CAN Bit Sampling
      SMP          : CTRL1_SMP_Field := NRF_SVD.CAN.Smp_0;
      --  unspecified
      Reserved_8_9 : HAL.UInt2 := 16#0#;
      --  Rx Warning Interrupt Mask
      RWRNMSK      : CTRL1_RWRNMSK_Field := NRF_SVD.CAN.Rwrnmsk_0;
      --  Tx Warning Interrupt Mask
      TWRNMSK      : CTRL1_TWRNMSK_Field := NRF_SVD.CAN.Twrnmsk_0;
      --  Loop Back Mode
      LPB          : CTRL1_LPB_Field := NRF_SVD.CAN.Lpb_0;
      --  CAN Engine Clock Source
      CLKSRC       : CTRL1_CLKSRC_Field := NRF_SVD.CAN.Clksrc_0;
      --  Error Interrupt Mask
      ERRMSK       : CTRL1_ERRMSK_Field := NRF_SVD.CAN.Errmsk_0;
      --  Bus Off Interrupt Mask
      BOFFMSK      : CTRL1_BOFFMSK_Field := NRF_SVD.CAN.Boffmsk_0;
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
      Wakint_0,
      --  Indicates a recessive to dominant transition was received on the CAN
      --  bus.
      Wakint_1)
     with Size => 1;
   for ESR1_WAKINT_Field use
     (Wakint_0 => 0,
      Wakint_1 => 1);

   --  Error Interrupt
   type ESR1_ERRINT_Field is
     (
      --  No such occurrence.
      Errint_0,
      --  Indicates setting of any Error Bit in the Error and Status Register.
      Errint_1)
     with Size => 1;
   for ESR1_ERRINT_Field use
     (Errint_0 => 0,
      Errint_1 => 1);

   --  Bus Off Interrupt
   type ESR1_BOFFINT_Field is
     (
      --  No such occurrence.
      Boffint_0,
      --  FlexCAN module entered Bus Off state.
      Boffint_1)
     with Size => 1;
   for ESR1_BOFFINT_Field use
     (Boffint_0 => 0,
      Boffint_1 => 1);

   --  FlexCAN In Reception
   type ESR1_RX_Field is
     (
      --  FlexCAN is not receiving a message.
      Rx_0,
      --  FlexCAN is receiving a message.
      Rx_1)
     with Size => 1;
   for ESR1_RX_Field use
     (Rx_0 => 0,
      Rx_1 => 1);

   --  Fault Confinement State
   type ESR1_FLTCONF_Field is
     (
      --  Error Active
      Fltconf_0,
      --  Error Passive
      Fltconf_1)
     with Size => 2;
   for ESR1_FLTCONF_Field use
     (Fltconf_0 => 0,
      Fltconf_1 => 1);

   --  FlexCAN In Transmission
   type ESR1_TX_Field is
     (
      --  FlexCAN is not transmitting a message.
      Tx_0,
      --  FlexCAN is transmitting a message.
      Tx_1)
     with Size => 1;
   for ESR1_TX_Field use
     (Tx_0 => 0,
      Tx_1 => 1);

   --  This bit indicates when CAN bus is in IDLE state
   type ESR1_IDLE_Field is
     (
      --  No such occurrence.
      Idle_0,
      --  CAN bus is now IDLE.
      Idle_1)
     with Size => 1;
   for ESR1_IDLE_Field use
     (Idle_0 => 0,
      Idle_1 => 1);

   --  Rx Error Warning
   type ESR1_RXWRN_Field is
     (
      --  No such occurrence.
      Rxwrn_0,
      --  RXERRCNT is greater than or equal to 96.
      Rxwrn_1)
     with Size => 1;
   for ESR1_RXWRN_Field use
     (Rxwrn_0 => 0,
      Rxwrn_1 => 1);

   --  TX Error Warning
   type ESR1_TXWRN_Field is
     (
      --  No such occurrence.
      Txwrn_0,
      --  TXERRCNT is greater than or equal to 96.
      Txwrn_1)
     with Size => 1;
   for ESR1_TXWRN_Field use
     (Txwrn_0 => 0,
      Txwrn_1 => 1);

   --  Stuffing Error
   type ESR1_STFERR_Field is
     (
      --  No such occurrence.
      Stferr_0,
      --  A Stuffing Error occurred since last read of this register.
      Stferr_1)
     with Size => 1;
   for ESR1_STFERR_Field use
     (Stferr_0 => 0,
      Stferr_1 => 1);

   --  Form Error
   type ESR1_FRMERR_Field is
     (
      --  No such occurrence.
      Frmerr_0,
      --  A Form Error occurred since last read of this register.
      Frmerr_1)
     with Size => 1;
   for ESR1_FRMERR_Field use
     (Frmerr_0 => 0,
      Frmerr_1 => 1);

   --  Cyclic Redundancy Check Error
   type ESR1_CRCERR_Field is
     (
      --  No such occurrence.
      Crcerr_0,
      --  A CRC error occurred since last read of this register.
      Crcerr_1)
     with Size => 1;
   for ESR1_CRCERR_Field use
     (Crcerr_0 => 0,
      Crcerr_1 => 1);

   --  Acknowledge Error
   type ESR1_ACKERR_Field is
     (
      --  No such occurrence.
      Ackerr_0,
      --  An ACK error occurred since last read of this register.
      Ackerr_1)
     with Size => 1;
   for ESR1_ACKERR_Field use
     (Ackerr_0 => 0,
      Ackerr_1 => 1);

   --  Bit0 Error
   type ESR1_BIT0ERR_Field is
     (
      --  No such occurrence.
      Bit0Err_0,
      --  At least one bit sent as dominant is received as recessive.
      Bit0Err_1)
     with Size => 1;
   for ESR1_BIT0ERR_Field use
     (Bit0Err_0 => 0,
      Bit0Err_1 => 1);

   --  Bit1 Error
   type ESR1_BIT1ERR_Field is
     (
      --  No such occurrence.
      Bit1Err_0,
      --  At least one bit sent as recessive is received as dominant.
      Bit1Err_1)
     with Size => 1;
   for ESR1_BIT1ERR_Field use
     (Bit1Err_0 => 0,
      Bit1Err_1 => 1);

   --  Rx Warning Interrupt Flag
   type ESR1_RWRNINT_Field is
     (
      --  No such occurrence.
      Rwrnint_0,
      --  The Rx error counter transitioned from less than 96 to greater than
      --  or equal to 96.
      Rwrnint_1)
     with Size => 1;
   for ESR1_RWRNINT_Field use
     (Rwrnint_0 => 0,
      Rwrnint_1 => 1);

   --  Tx Warning Interrupt Flag
   type ESR1_TWRNINT_Field is
     (
      --  No such occurrence.
      Twrnint_0,
      --  The Tx error counter transitioned from less than 96 to greater than
      --  or equal to 96.
      Twrnint_1)
     with Size => 1;
   for ESR1_TWRNINT_Field use
     (Twrnint_0 => 0,
      Twrnint_1 => 1);

   --  CAN Synchronization Status
   type ESR1_SYNCH_Field is
     (
      --  FlexCAN is not synchronized to the CAN bus.
      Synch_0,
      --  FlexCAN is synchronized to the CAN bus.
      Synch_1)
     with Size => 1;
   for ESR1_SYNCH_Field use
     (Synch_0 => 0,
      Synch_1 => 1);

   --  Bus Off Done Interrupt
   type ESR1_BOFFDONEINT_Field is
     (
      --  No such occurrence.
      Boffdoneint_0,
      --  FlexCAN module has completed Bus Off process.
      Boffdoneint_1)
     with Size => 1;
   for ESR1_BOFFDONEINT_Field use
     (Boffdoneint_0 => 0,
      Boffdoneint_1 => 1);

   --  Error Overrun bit
   type ESR1_ERROVR_Field is
     (
      --  Overrun has not occurred.
      Errovr_0,
      --  Overrun has occurred.
      Errovr_1)
     with Size => 1;
   for ESR1_ERROVR_Field use
     (Errovr_0 => 0,
      Errovr_1 => 1);

   --  Error and Status 1 register
   type CAN0_ESR1_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Wake-Up Interrupt
      WAKINT         : ESR1_WAKINT_Field := NRF_SVD.CAN.Wakint_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error Interrupt
      ERRINT         : ESR1_ERRINT_Field := NRF_SVD.CAN.Errint_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Bus Off Interrupt
      BOFFINT        : ESR1_BOFFINT_Field := NRF_SVD.CAN.Boffint_0;
      --  Read-only. FlexCAN In Reception
      RX             : ESR1_RX_Field := NRF_SVD.CAN.Rx_0;
      --  Read-only. Fault Confinement State
      FLTCONF        : ESR1_FLTCONF_Field := NRF_SVD.CAN.Fltconf_0;
      --  Read-only. FlexCAN In Transmission
      TX             : ESR1_TX_Field := NRF_SVD.CAN.Tx_0;
      --  Read-only. This bit indicates when CAN bus is in IDLE state
      IDLE           : ESR1_IDLE_Field := NRF_SVD.CAN.Idle_0;
      --  Read-only. Rx Error Warning
      RXWRN          : ESR1_RXWRN_Field := NRF_SVD.CAN.Rxwrn_0;
      --  Read-only. TX Error Warning
      TXWRN          : ESR1_TXWRN_Field := NRF_SVD.CAN.Txwrn_0;
      --  Read-only. Stuffing Error
      STFERR         : ESR1_STFERR_Field := NRF_SVD.CAN.Stferr_0;
      --  Read-only. Form Error
      FRMERR         : ESR1_FRMERR_Field := NRF_SVD.CAN.Frmerr_0;
      --  Read-only. Cyclic Redundancy Check Error
      CRCERR         : ESR1_CRCERR_Field := NRF_SVD.CAN.Crcerr_0;
      --  Read-only. Acknowledge Error
      ACKERR         : ESR1_ACKERR_Field := NRF_SVD.CAN.Ackerr_0;
      --  Read-only. Bit0 Error
      BIT0ERR        : ESR1_BIT0ERR_Field := NRF_SVD.CAN.Bit0Err_0;
      --  Read-only. Bit1 Error
      BIT1ERR        : ESR1_BIT1ERR_Field := NRF_SVD.CAN.Bit1Err_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Rx Warning Interrupt Flag
      RWRNINT        : ESR1_RWRNINT_Field := NRF_SVD.CAN.Rwrnint_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Tx Warning Interrupt Flag
      TWRNINT        : ESR1_TWRNINT_Field := NRF_SVD.CAN.Twrnint_0;
      --  Read-only. CAN Synchronization Status
      SYNCH          : ESR1_SYNCH_Field := NRF_SVD.CAN.Synch_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Bus Off Done Interrupt
      BOFFDONEINT    : ESR1_BOFFDONEINT_Field := NRF_SVD.CAN.Boffdoneint_0;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error Overrun bit
      ERROVR         : ESR1_ERROVR_Field := NRF_SVD.CAN.Errovr_0;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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
      BOFFDONEINT    at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      ERROVR         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Buffer MB0 Interrupt Or Clear FIFO bit
   type IFLAG1_BUF0I_Field is
     (
      --  The corresponding buffer has no occurrence of successfully completed
      --  transmission or reception when MCR[RFEN]=0.
      Buf0I_0,
      --  The corresponding buffer has successfully completed transmission or
      --  reception when MCR[RFEN]=0.
      Buf0I_1)
     with Size => 1;
   for IFLAG1_BUF0I_Field use
     (Buf0I_0 => 0,
      Buf0I_1 => 1);

   --  Buffer MB i Interrupt Or "reserved"
   type IFLAG1_BUF4TO1I_Field is
     (
      --  The corresponding buffer has no occurrence of successfully completed
      --  transmission or reception when MCR[RFEN]=0.
      Buf4To1I_0,
      --  The corresponding buffer has successfully completed transmission or
      --  reception when MCR[RFEN]=0.
      Buf4To1I_1)
     with Size => 4;
   for IFLAG1_BUF4TO1I_Field use
     (Buf4To1I_0 => 0,
      Buf4To1I_1 => 1);

   --  Buffer MB5 Interrupt Or "Frames available in Rx FIFO"
   type IFLAG1_BUF5I_Field is
     (
      --  No occurrence of MB5 completing transmission/reception when
      --  MCR[RFEN]=0, or of frame(s) available in the FIFO, when MCR[RFEN]=1
      Buf5I_0,
      --  MB5 completed transmission/reception when MCR[RFEN]=0, or frame(s)
      --  available in the Rx FIFO when MCR[RFEN]=1. It generates a DMA request
      --  in case of MCR[RFEN] and MCR[DMA] are enabled.
      Buf5I_1)
     with Size => 1;
   for IFLAG1_BUF5I_Field use
     (Buf5I_0 => 0,
      Buf5I_1 => 1);

   --  Buffer MB6 Interrupt Or "Rx FIFO Warning"
   type IFLAG1_BUF6I_Field is
     (
      --  No occurrence of MB6 completing transmission/reception when
      --  MCR[RFEN]=0, or of Rx FIFO almost full when MCR[RFEN]=1
      Buf6I_0,
      --  MB6 completed transmission/reception when MCR[RFEN]=0, or Rx FIFO
      --  almost full when MCR[RFEN]=1
      Buf6I_1)
     with Size => 1;
   for IFLAG1_BUF6I_Field use
     (Buf6I_0 => 0,
      Buf6I_1 => 1);

   --  Buffer MB7 Interrupt Or "Rx FIFO Overflow"
   type IFLAG1_BUF7I_Field is
     (
      --  No occurrence of MB7 completing transmission/reception when
      --  MCR[RFEN]=0, or of Rx FIFO overflow when MCR[RFEN]=1
      Buf7I_0,
      --  MB7 completed transmission/reception when MCR[RFEN]=0, or Rx FIFO
      --  overflow when MCR[RFEN]=1
      Buf7I_1)
     with Size => 1;
   for IFLAG1_BUF7I_Field use
     (Buf7I_0 => 0,
      Buf7I_1 => 1);

   --  Buffer MBi Interrupt
   type IFLAG1_BUF31TO8I_Field is
     (
      --  The corresponding buffer has no occurrence of successfully completed
      --  transmission or reception.
      Buf31To8I_0,
      --  The corresponding buffer has successfully completed transmission or
      --  reception.
      Buf31To8I_1)
     with Size => 24;
   for IFLAG1_BUF31TO8I_Field use
     (Buf31To8I_0 => 0,
      Buf31To8I_1 => 1);

   --  Interrupt Flags 1 register
   type CAN0_IFLAG1_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer MB0 Interrupt Or Clear FIFO bit
      BUF0I     : IFLAG1_BUF0I_Field := NRF_SVD.CAN.Buf0I_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer MB i Interrupt Or "reserved"
      BUF4TO1I  : IFLAG1_BUF4TO1I_Field := NRF_SVD.CAN.Buf4To1I_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer MB5 Interrupt Or "Frames available in Rx FIFO"
      BUF5I     : IFLAG1_BUF5I_Field := NRF_SVD.CAN.Buf5I_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer MB6 Interrupt Or "Rx FIFO Warning"
      BUF6I     : IFLAG1_BUF6I_Field := NRF_SVD.CAN.Buf6I_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer MB7 Interrupt Or "Rx FIFO Overflow"
      BUF7I     : IFLAG1_BUF7I_Field := NRF_SVD.CAN.Buf7I_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer MBi Interrupt
      BUF31TO8I : IFLAG1_BUF31TO8I_Field := NRF_SVD.CAN.Buf31To8I_0;
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

   --  Edge Filter Disable
   type CTRL2_EDFLTDIS_Field is
     (
      --  Edge Filter is enabled.
      Edfltdis_0,
      --  Edge Filter is disabled.
      Edfltdis_1)
     with Size => 1;
   for CTRL2_EDFLTDIS_Field use
     (Edfltdis_0 => 0,
      Edfltdis_1 => 1);

   --  ISO CAN FD Enable
   type CTRL2_ISOCANFDEN_Field is
     (
      --  Stuff Count feature is disabled. Stuff Count bit field is not
      --  inserted before the CRC Sequence field.
      Isocanfden_0,
      --  Stuff Count feature is enabled. Stuff Count bit field is inserted
      --  before the CRC Sequence field.
      Isocanfden_1)
     with Size => 1;
   for CTRL2_ISOCANFDEN_Field use
     (Isocanfden_0 => 0,
      Isocanfden_1 => 1);

   --  Protocol Exception Enable
   type CTRL2_PREXCEN_Field is
     (
      --  Protocol Exception is disabled.
      Prexcen_0,
      --  Protocol Exception is enabled.
      Prexcen_1)
     with Size => 1;
   for CTRL2_PREXCEN_Field use
     (Prexcen_0 => 0,
      Prexcen_1 => 1);

   --  Timer Source
   type CTRL2_TIMER_SRC_Field is
     (
      --  The Free Running Timer is clocked by the CAN bit clock, which defines
      --  the baud rate on the CAN bus.
      Timer_Src_0,
      --  The Free Running Timer is clocked by an external time tick. The
      --  period can be either adjusted to be equal to the baud rate on the CAN
      --  bus, or a different value as required. See the device specific
      --  section for details about the external time tick.
      Timer_Src_1)
     with Size => 1;
   for CTRL2_TIMER_SRC_Field use
     (Timer_Src_0 => 0,
      Timer_Src_1 => 1);

   --  Entire Frame Arbitration Field Comparison Enable For Rx Mailboxes
   type CTRL2_EACEN_Field is
     (
      --  Rx Mailbox filter's IDE bit is always compared and RTR is never
      --  compared despite mask bits.
      Eacen_0,
      --  Enables the comparison of both Rx Mailbox filter's IDE and RTR bit
      --  with their corresponding bits within the incoming frame. Mask bits do
      --  apply.
      Eacen_1)
     with Size => 1;
   for CTRL2_EACEN_Field use
     (Eacen_0 => 0,
      Eacen_1 => 1);

   --  Remote Request Storing
   type CTRL2_RRS_Field is
     (
      --  Remote Response Frame is generated.
      Rrs_0,
      --  Remote Request Frame is stored.
      Rrs_1)
     with Size => 1;
   for CTRL2_RRS_Field use
     (Rrs_0 => 0,
      Rrs_1 => 1);

   --  Mailboxes Reception Priority
   type CTRL2_MRP_Field is
     (
      --  Matching starts from Rx FIFO and continues on Mailboxes.
      Mrp_0,
      --  Matching starts from Mailboxes and continues on Rx FIFO.
      Mrp_1)
     with Size => 1;
   for CTRL2_MRP_Field use
     (Mrp_0 => 0,
      Mrp_1 => 1);

   subtype CAN0_CTRL2_TASD_Field is HAL.UInt5;
   subtype CAN0_CTRL2_RFFN_Field is HAL.UInt4;

   --  Bus Off Done Interrupt Mask
   type CTRL2_BOFFDONEMSK_Field is
     (
      --  Bus Off Done interrupt disabled.
      Boffdonemsk_0,
      --  Bus Off Done interrupt enabled.
      Boffdonemsk_1)
     with Size => 1;
   for CTRL2_BOFFDONEMSK_Field use
     (Boffdonemsk_0 => 0,
      Boffdonemsk_1 => 1);

   --  Control 2 register
   type CAN0_CTRL2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Edge Filter Disable
      EDFLTDIS       : CTRL2_EDFLTDIS_Field := NRF_SVD.CAN.Edfltdis_0;
      --  ISO CAN FD Enable
      ISOCANFDEN     : CTRL2_ISOCANFDEN_Field := NRF_SVD.CAN.Isocanfden_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Protocol Exception Enable
      PREXCEN        : CTRL2_PREXCEN_Field := NRF_SVD.CAN.Prexcen_0;
      --  Timer Source
      TIMER_SRC      : CTRL2_TIMER_SRC_Field := NRF_SVD.CAN.Timer_Src_0;
      --  Entire Frame Arbitration Field Comparison Enable For Rx Mailboxes
      EACEN          : CTRL2_EACEN_Field := NRF_SVD.CAN.Eacen_0;
      --  Remote Request Storing
      RRS            : CTRL2_RRS_Field := NRF_SVD.CAN.Rrs_0;
      --  Mailboxes Reception Priority
      MRP            : CTRL2_MRP_Field := NRF_SVD.CAN.Mrp_0;
      --  Tx Arbitration Start Delay
      TASD           : CAN0_CTRL2_TASD_Field := 16#16#;
      --  Number Of Rx FIFO Filters
      RFFN           : CAN0_CTRL2_RFFN_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Bus Off Done Interrupt Mask
      BOFFDONEMSK    : CTRL2_BOFFDONEMSK_Field := NRF_SVD.CAN.Boffdonemsk_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_CTRL2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      EDFLTDIS       at 0 range 11 .. 11;
      ISOCANFDEN     at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PREXCEN        at 0 range 14 .. 14;
      TIMER_SRC      at 0 range 15 .. 15;
      EACEN          at 0 range 16 .. 16;
      RRS            at 0 range 17 .. 17;
      MRP            at 0 range 18 .. 18;
      TASD           at 0 range 19 .. 23;
      RFFN           at 0 range 24 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      BOFFDONEMSK    at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Inactive Mailbox
   type ESR2_IMB_Field is
     (
      --  If ESR2[VPS] is asserted, the ESR2[LPTM] is not an inactive Mailbox.
      Imb_0,
      --  If ESR2[VPS] is asserted, there is at least one inactive Mailbox.
      --  LPTM content is the number of the first one.
      Imb_1)
     with Size => 1;
   for ESR2_IMB_Field use
     (Imb_0 => 0,
      Imb_1 => 1);

   --  Valid Priority Status
   type ESR2_VPS_Field is
     (
      --  Contents of IMB and LPTM are invalid.
      Vps_0,
      --  Contents of IMB and LPTM are valid.
      Vps_1)
     with Size => 1;
   for ESR2_VPS_Field use
     (Vps_0 => 0,
      Vps_1 => 1);

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
      --  Read-only. Transmitted CRC value
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

   subtype CAN0_CBT_EPSEG2_Field is HAL.UInt5;
   subtype CAN0_CBT_EPSEG1_Field is HAL.UInt5;
   subtype CAN0_CBT_EPROPSEG_Field is HAL.UInt6;
   subtype CAN0_CBT_ERJW_Field is HAL.UInt5;
   subtype CAN0_CBT_EPRESDIV_Field is HAL.UInt10;

   --  Bit Timing Format Enable
   type CBT_BTF_Field is
     (
      --  Extended bit time definitions disabled.
      Btf_0,
      --  Extended bit time definitions enabled.
      Btf_1)
     with Size => 1;
   for CBT_BTF_Field use
     (Btf_0 => 0,
      Btf_1 => 1);

   --  CAN Bit Timing Register
   type CAN0_CBT_Register is record
      --  Extended Phase Segment 2
      EPSEG2   : CAN0_CBT_EPSEG2_Field := 16#0#;
      --  Extended Phase Segment 1
      EPSEG1   : CAN0_CBT_EPSEG1_Field := 16#0#;
      --  Extended Propagation Segment
      EPROPSEG : CAN0_CBT_EPROPSEG_Field := 16#0#;
      --  Extended Resync Jump Width
      ERJW     : CAN0_CBT_ERJW_Field := 16#0#;
      --  Extended Prescaler Division Factor
      EPRESDIV : CAN0_CBT_EPRESDIV_Field := 16#0#;
      --  Bit Timing Format Enable
      BTF      : CBT_BTF_Field := NRF_SVD.CAN.Btf_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_CBT_Register use record
      EPSEG2   at 0 range 0 .. 4;
      EPSEG1   at 0 range 5 .. 9;
      EPROPSEG at 0 range 10 .. 15;
      ERJW     at 0 range 16 .. 20;
      EPRESDIV at 0 range 21 .. 30;
      BTF      at 0 range 31 .. 31;
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
   type CAN0_Peripheral is record
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
      --  CAN Bit Timing Register
      CBT      : aliased CAN0_CBT_Register;
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
      --  Message Buffer 16 CS Register
      CS16     : aliased CS_Register;
      --  Message Buffer 16 ID Register
      ID16     : aliased ID_Register;
      --  Message Buffer 16 WORD0 Register
      WORD016  : aliased WORD_Register;
      --  Message Buffer 16 WORD1 Register
      WORD116  : aliased WORD_Register_1;
      --  Message Buffer 17 CS Register
      CS17     : aliased CS_Register;
      --  Message Buffer 17 ID Register
      ID17     : aliased ID_Register;
      --  Message Buffer 17 WORD0 Register
      WORD017  : aliased WORD_Register;
      --  Message Buffer 17 WORD1 Register
      WORD117  : aliased WORD_Register_1;
      --  Message Buffer 18 CS Register
      CS18     : aliased CS_Register;
      --  Message Buffer 18 ID Register
      ID18     : aliased ID_Register;
      --  Message Buffer 18 WORD0 Register
      WORD018  : aliased WORD_Register;
      --  Message Buffer 18 WORD1 Register
      WORD118  : aliased WORD_Register_1;
      --  Message Buffer 19 CS Register
      CS19     : aliased CS_Register;
      --  Message Buffer 19 ID Register
      ID19     : aliased ID_Register;
      --  Message Buffer 19 WORD0 Register
      WORD019  : aliased WORD_Register;
      --  Message Buffer 19 WORD1 Register
      WORD119  : aliased WORD_Register_1;
      --  Message Buffer 20 CS Register
      CS20     : aliased CS_Register;
      --  Message Buffer 20 ID Register
      ID20     : aliased ID_Register;
      --  Message Buffer 20 WORD0 Register
      WORD020  : aliased WORD_Register;
      --  Message Buffer 20 WORD1 Register
      WORD120  : aliased WORD_Register_1;
      --  Message Buffer 21 CS Register
      CS21     : aliased CS_Register;
      --  Message Buffer 21 ID Register
      ID21     : aliased ID_Register;
      --  Message Buffer 21 WORD0 Register
      WORD021  : aliased WORD_Register;
      --  Message Buffer 21 WORD1 Register
      WORD121  : aliased WORD_Register_1;
      --  Message Buffer 22 CS Register
      CS22     : aliased CS_Register;
      --  Message Buffer 22 ID Register
      ID22     : aliased ID_Register;
      --  Message Buffer 22 WORD0 Register
      WORD022  : aliased WORD_Register;
      --  Message Buffer 22 WORD1 Register
      WORD122  : aliased WORD_Register_1;
      --  Message Buffer 23 CS Register
      CS23     : aliased CS_Register;
      --  Message Buffer 23 ID Register
      ID23     : aliased ID_Register;
      --  Message Buffer 23 WORD0 Register
      WORD023  : aliased WORD_Register;
      --  Message Buffer 23 WORD1 Register
      WORD123  : aliased WORD_Register_1;
      --  Message Buffer 24 CS Register
      CS24     : aliased CS_Register;
      --  Message Buffer 24 ID Register
      ID24     : aliased ID_Register;
      --  Message Buffer 24 WORD0 Register
      WORD024  : aliased WORD_Register;
      --  Message Buffer 24 WORD1 Register
      WORD124  : aliased WORD_Register_1;
      --  Message Buffer 25 CS Register
      CS25     : aliased CS_Register;
      --  Message Buffer 25 ID Register
      ID25     : aliased ID_Register;
      --  Message Buffer 25 WORD0 Register
      WORD025  : aliased WORD_Register;
      --  Message Buffer 25 WORD1 Register
      WORD125  : aliased WORD_Register_1;
      --  Message Buffer 26 CS Register
      CS26     : aliased CS_Register;
      --  Message Buffer 26 ID Register
      ID26     : aliased ID_Register;
      --  Message Buffer 26 WORD0 Register
      WORD026  : aliased WORD_Register;
      --  Message Buffer 26 WORD1 Register
      WORD126  : aliased WORD_Register_1;
      --  Message Buffer 27 CS Register
      CS27     : aliased CS_Register;
      --  Message Buffer 27 ID Register
      ID27     : aliased ID_Register;
      --  Message Buffer 27 WORD0 Register
      WORD027  : aliased WORD_Register;
      --  Message Buffer 27 WORD1 Register
      WORD127  : aliased WORD_Register_1;
      --  Message Buffer 28 CS Register
      CS28     : aliased CS_Register;
      --  Message Buffer 28 ID Register
      ID28     : aliased ID_Register;
      --  Message Buffer 28 WORD0 Register
      WORD028  : aliased WORD_Register;
      --  Message Buffer 28 WORD1 Register
      WORD128  : aliased WORD_Register_1;
      --  Message Buffer 29 CS Register
      CS29     : aliased CS_Register;
      --  Message Buffer 29 ID Register
      ID29     : aliased ID_Register;
      --  Message Buffer 29 WORD0 Register
      WORD029  : aliased WORD_Register;
      --  Message Buffer 29 WORD1 Register
      WORD129  : aliased WORD_Register_1;
      --  Message Buffer 30 CS Register
      CS30     : aliased CS_Register;
      --  Message Buffer 30 ID Register
      ID30     : aliased ID_Register;
      --  Message Buffer 30 WORD0 Register
      WORD030  : aliased WORD_Register;
      --  Message Buffer 30 WORD1 Register
      WORD130  : aliased WORD_Register_1;
      --  Message Buffer 31 CS Register
      CS31     : aliased CS_Register;
      --  Message Buffer 31 ID Register
      ID31     : aliased ID_Register;
      --  Message Buffer 31 WORD0 Register
      WORD031  : aliased WORD_Register;
      --  Message Buffer 31 WORD1 Register
      WORD131  : aliased WORD_Register_1;
      --  Message Buffer 32 CS Register
      CS32     : aliased CS_Register;
      --  Message Buffer 32 ID Register
      ID32     : aliased ID_Register;
      --  Message Buffer 32 WORD0 Register
      WORD032  : aliased WORD_Register;
      --  Message Buffer 32 WORD1 Register
      WORD132  : aliased WORD_Register_1;
      --  Message Buffer 33 CS Register
      CS33     : aliased CS_Register;
      --  Message Buffer 33 ID Register
      ID33     : aliased ID_Register;
      --  Message Buffer 33 WORD0 Register
      WORD033  : aliased WORD_Register;
      --  Message Buffer 33 WORD1 Register
      WORD133  : aliased WORD_Register_1;
      --  Message Buffer 34 CS Register
      CS34     : aliased CS_Register;
      --  Message Buffer 34 ID Register
      ID34     : aliased ID_Register;
      --  Message Buffer 34 WORD0 Register
      WORD034  : aliased WORD_Register;
      --  Message Buffer 34 WORD1 Register
      WORD134  : aliased WORD_Register_1;
      --  Message Buffer 35 CS Register
      CS35     : aliased CS_Register;
      --  Message Buffer 35 ID Register
      ID35     : aliased ID_Register;
      --  Message Buffer 35 WORD0 Register
      WORD035  : aliased WORD_Register;
      --  Message Buffer 35 WORD1 Register
      WORD135  : aliased WORD_Register_1;
      --  Message Buffer 36 CS Register
      CS36     : aliased CS_Register;
      --  Message Buffer 36 ID Register
      ID36     : aliased ID_Register;
      --  Message Buffer 36 WORD0 Register
      WORD036  : aliased WORD_Register;
      --  Message Buffer 36 WORD1 Register
      WORD136  : aliased WORD_Register_1;
      --  Message Buffer 37 CS Register
      CS37     : aliased CS_Register;
      --  Message Buffer 37 ID Register
      ID37     : aliased ID_Register;
      --  Message Buffer 37 WORD0 Register
      WORD037  : aliased WORD_Register;
      --  Message Buffer 37 WORD1 Register
      WORD137  : aliased WORD_Register_1;
      --  Message Buffer 38 CS Register
      CS38     : aliased CS_Register;
      --  Message Buffer 38 ID Register
      ID38     : aliased ID_Register;
      --  Message Buffer 38 WORD0 Register
      WORD038  : aliased WORD_Register;
      --  Message Buffer 38 WORD1 Register
      WORD138  : aliased WORD_Register_1;
      --  Message Buffer 39 CS Register
      CS39     : aliased CS_Register;
      --  Message Buffer 39 ID Register
      ID39     : aliased ID_Register;
      --  Message Buffer 39 WORD0 Register
      WORD039  : aliased WORD_Register;
      --  Message Buffer 39 WORD1 Register
      WORD139  : aliased WORD_Register_1;
      --  Message Buffer 40 CS Register
      CS40     : aliased CS_Register;
      --  Message Buffer 40 ID Register
      ID40     : aliased ID_Register;
      --  Message Buffer 40 WORD0 Register
      WORD040  : aliased WORD_Register;
      --  Message Buffer 40 WORD1 Register
      WORD140  : aliased WORD_Register_1;
      --  Message Buffer 41 CS Register
      CS41     : aliased CS_Register;
      --  Message Buffer 41 ID Register
      ID41     : aliased ID_Register;
      --  Message Buffer 41 WORD0 Register
      WORD041  : aliased WORD_Register;
      --  Message Buffer 41 WORD1 Register
      WORD141  : aliased WORD_Register_1;
      --  Message Buffer 42 CS Register
      CS42     : aliased CS_Register;
      --  Message Buffer 42 ID Register
      ID42     : aliased ID_Register;
      --  Message Buffer 42 WORD0 Register
      WORD042  : aliased WORD_Register;
      --  Message Buffer 42 WORD1 Register
      WORD142  : aliased WORD_Register_1;
      --  Message Buffer 43 CS Register
      CS43     : aliased CS_Register;
      --  Message Buffer 43 ID Register
      ID43     : aliased ID_Register;
      --  Message Buffer 43 WORD0 Register
      WORD043  : aliased WORD_Register;
      --  Message Buffer 43 WORD1 Register
      WORD143  : aliased WORD_Register_1;
      --  Message Buffer 44 CS Register
      CS44     : aliased CS_Register;
      --  Message Buffer 44 ID Register
      ID44     : aliased ID_Register;
      --  Message Buffer 44 WORD0 Register
      WORD044  : aliased WORD_Register;
      --  Message Buffer 44 WORD1 Register
      WORD144  : aliased WORD_Register_1;
      --  Message Buffer 45 CS Register
      CS45     : aliased CS_Register;
      --  Message Buffer 45 ID Register
      ID45     : aliased ID_Register;
      --  Message Buffer 45 WORD0 Register
      WORD045  : aliased WORD_Register;
      --  Message Buffer 45 WORD1 Register
      WORD145  : aliased WORD_Register_1;
      --  Message Buffer 46 CS Register
      CS46     : aliased CS_Register;
      --  Message Buffer 46 ID Register
      ID46     : aliased ID_Register;
      --  Message Buffer 46 WORD0 Register
      WORD046  : aliased WORD_Register;
      --  Message Buffer 46 WORD1 Register
      WORD146  : aliased WORD_Register_1;
      --  Message Buffer 47 CS Register
      CS47     : aliased CS_Register;
      --  Message Buffer 47 ID Register
      ID47     : aliased ID_Register;
      --  Message Buffer 47 WORD0 Register
      WORD047  : aliased WORD_Register;
      --  Message Buffer 47 WORD1 Register
      WORD147  : aliased WORD_Register_1;
      --  Message Buffer 48 CS Register
      CS48     : aliased CS_Register;
      --  Message Buffer 48 ID Register
      ID48     : aliased ID_Register;
      --  Message Buffer 48 WORD0 Register
      WORD048  : aliased WORD_Register;
      --  Message Buffer 48 WORD1 Register
      WORD148  : aliased WORD_Register_1;
      --  Message Buffer 49 CS Register
      CS49     : aliased CS_Register;
      --  Message Buffer 49 ID Register
      ID49     : aliased ID_Register;
      --  Message Buffer 49 WORD0 Register
      WORD049  : aliased WORD_Register;
      --  Message Buffer 49 WORD1 Register
      WORD149  : aliased WORD_Register_1;
      --  Message Buffer 50 CS Register
      CS50     : aliased CS_Register;
      --  Message Buffer 50 ID Register
      ID50     : aliased ID_Register;
      --  Message Buffer 50 WORD0 Register
      WORD050  : aliased WORD_Register;
      --  Message Buffer 50 WORD1 Register
      WORD150  : aliased WORD_Register_1;
      --  Message Buffer 51 CS Register
      CS51     : aliased CS_Register;
      --  Message Buffer 51 ID Register
      ID51     : aliased ID_Register;
      --  Message Buffer 51 WORD0 Register
      WORD051  : aliased WORD_Register;
      --  Message Buffer 51 WORD1 Register
      WORD151  : aliased WORD_Register_1;
      --  Message Buffer 52 CS Register
      CS52     : aliased CS_Register;
      --  Message Buffer 52 ID Register
      ID52     : aliased ID_Register;
      --  Message Buffer 52 WORD0 Register
      WORD052  : aliased WORD_Register;
      --  Message Buffer 52 WORD1 Register
      WORD152  : aliased WORD_Register_1;
      --  Message Buffer 53 CS Register
      CS53     : aliased CS_Register;
      --  Message Buffer 53 ID Register
      ID53     : aliased ID_Register;
      --  Message Buffer 53 WORD0 Register
      WORD053  : aliased WORD_Register;
      --  Message Buffer 53 WORD1 Register
      WORD153  : aliased WORD_Register_1;
      --  Message Buffer 54 CS Register
      CS54     : aliased CS_Register;
      --  Message Buffer 54 ID Register
      ID54     : aliased ID_Register;
      --  Message Buffer 54 WORD0 Register
      WORD054  : aliased WORD_Register;
      --  Message Buffer 54 WORD1 Register
      WORD154  : aliased WORD_Register_1;
      --  Message Buffer 55 CS Register
      CS55     : aliased CS_Register;
      --  Message Buffer 55 ID Register
      ID55     : aliased ID_Register;
      --  Message Buffer 55 WORD0 Register
      WORD055  : aliased WORD_Register;
      --  Message Buffer 55 WORD1 Register
      WORD155  : aliased WORD_Register_1;
      --  Message Buffer 56 CS Register
      CS56     : aliased CS_Register;
      --  Message Buffer 56 ID Register
      ID56     : aliased ID_Register;
      --  Message Buffer 56 WORD0 Register
      WORD056  : aliased WORD_Register;
      --  Message Buffer 56 WORD1 Register
      WORD156  : aliased WORD_Register_1;
      --  Message Buffer 57 CS Register
      CS57     : aliased CS_Register;
      --  Message Buffer 57 ID Register
      ID57     : aliased ID_Register;
      --  Message Buffer 57 WORD0 Register
      WORD057  : aliased WORD_Register;
      --  Message Buffer 57 WORD1 Register
      WORD157  : aliased WORD_Register_1;
      --  Message Buffer 58 CS Register
      CS58     : aliased CS_Register;
      --  Message Buffer 58 ID Register
      ID58     : aliased ID_Register;
      --  Message Buffer 58 WORD0 Register
      WORD058  : aliased WORD_Register;
      --  Message Buffer 58 WORD1 Register
      WORD158  : aliased WORD_Register_1;
      --  Message Buffer 59 CS Register
      CS59     : aliased CS_Register;
      --  Message Buffer 59 ID Register
      ID59     : aliased ID_Register;
      --  Message Buffer 59 WORD0 Register
      WORD059  : aliased WORD_Register;
      --  Message Buffer 59 WORD1 Register
      WORD159  : aliased WORD_Register_1;
      --  Message Buffer 60 CS Register
      CS60     : aliased CS_Register;
      --  Message Buffer 60 ID Register
      ID60     : aliased ID_Register;
      --  Message Buffer 60 WORD0 Register
      WORD060  : aliased WORD_Register;
      --  Message Buffer 60 WORD1 Register
      WORD160  : aliased WORD_Register_1;
      --  Message Buffer 61 CS Register
      CS61     : aliased CS_Register;
      --  Message Buffer 61 ID Register
      ID61     : aliased ID_Register;
      --  Message Buffer 61 WORD0 Register
      WORD061  : aliased WORD_Register;
      --  Message Buffer 61 WORD1 Register
      WORD161  : aliased WORD_Register_1;
      --  Message Buffer 62 CS Register
      CS62     : aliased CS_Register;
      --  Message Buffer 62 ID Register
      ID62     : aliased ID_Register;
      --  Message Buffer 62 WORD0 Register
      WORD062  : aliased WORD_Register;
      --  Message Buffer 62 WORD1 Register
      WORD162  : aliased WORD_Register_1;
      --  Message Buffer 63 CS Register
      CS63     : aliased CS_Register;
      --  Message Buffer 63 ID Register
      ID63     : aliased ID_Register;
      --  Message Buffer 63 WORD0 Register
      WORD063  : aliased WORD_Register;
      --  Message Buffer 63 WORD1 Register
      WORD163  : aliased WORD_Register_1;
      --  Rx Individual Mask Registers
      RXIMR    : aliased CAN0_RXIMR_Registers;
   end record
     with Volatile;

   for CAN0_Peripheral use record
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
      CBT      at 16#50# range 0 .. 31;
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
      CS16     at 16#180# range 0 .. 31;
      ID16     at 16#184# range 0 .. 31;
      WORD016  at 16#188# range 0 .. 31;
      WORD116  at 16#18C# range 0 .. 31;
      CS17     at 16#190# range 0 .. 31;
      ID17     at 16#194# range 0 .. 31;
      WORD017  at 16#198# range 0 .. 31;
      WORD117  at 16#19C# range 0 .. 31;
      CS18     at 16#1A0# range 0 .. 31;
      ID18     at 16#1A4# range 0 .. 31;
      WORD018  at 16#1A8# range 0 .. 31;
      WORD118  at 16#1AC# range 0 .. 31;
      CS19     at 16#1B0# range 0 .. 31;
      ID19     at 16#1B4# range 0 .. 31;
      WORD019  at 16#1B8# range 0 .. 31;
      WORD119  at 16#1BC# range 0 .. 31;
      CS20     at 16#1C0# range 0 .. 31;
      ID20     at 16#1C4# range 0 .. 31;
      WORD020  at 16#1C8# range 0 .. 31;
      WORD120  at 16#1CC# range 0 .. 31;
      CS21     at 16#1D0# range 0 .. 31;
      ID21     at 16#1D4# range 0 .. 31;
      WORD021  at 16#1D8# range 0 .. 31;
      WORD121  at 16#1DC# range 0 .. 31;
      CS22     at 16#1E0# range 0 .. 31;
      ID22     at 16#1E4# range 0 .. 31;
      WORD022  at 16#1E8# range 0 .. 31;
      WORD122  at 16#1EC# range 0 .. 31;
      CS23     at 16#1F0# range 0 .. 31;
      ID23     at 16#1F4# range 0 .. 31;
      WORD023  at 16#1F8# range 0 .. 31;
      WORD123  at 16#1FC# range 0 .. 31;
      CS24     at 16#200# range 0 .. 31;
      ID24     at 16#204# range 0 .. 31;
      WORD024  at 16#208# range 0 .. 31;
      WORD124  at 16#20C# range 0 .. 31;
      CS25     at 16#210# range 0 .. 31;
      ID25     at 16#214# range 0 .. 31;
      WORD025  at 16#218# range 0 .. 31;
      WORD125  at 16#21C# range 0 .. 31;
      CS26     at 16#220# range 0 .. 31;
      ID26     at 16#224# range 0 .. 31;
      WORD026  at 16#228# range 0 .. 31;
      WORD126  at 16#22C# range 0 .. 31;
      CS27     at 16#230# range 0 .. 31;
      ID27     at 16#234# range 0 .. 31;
      WORD027  at 16#238# range 0 .. 31;
      WORD127  at 16#23C# range 0 .. 31;
      CS28     at 16#240# range 0 .. 31;
      ID28     at 16#244# range 0 .. 31;
      WORD028  at 16#248# range 0 .. 31;
      WORD128  at 16#24C# range 0 .. 31;
      CS29     at 16#250# range 0 .. 31;
      ID29     at 16#254# range 0 .. 31;
      WORD029  at 16#258# range 0 .. 31;
      WORD129  at 16#25C# range 0 .. 31;
      CS30     at 16#260# range 0 .. 31;
      ID30     at 16#264# range 0 .. 31;
      WORD030  at 16#268# range 0 .. 31;
      WORD130  at 16#26C# range 0 .. 31;
      CS31     at 16#270# range 0 .. 31;
      ID31     at 16#274# range 0 .. 31;
      WORD031  at 16#278# range 0 .. 31;
      WORD131  at 16#27C# range 0 .. 31;
      CS32     at 16#280# range 0 .. 31;
      ID32     at 16#284# range 0 .. 31;
      WORD032  at 16#288# range 0 .. 31;
      WORD132  at 16#28C# range 0 .. 31;
      CS33     at 16#290# range 0 .. 31;
      ID33     at 16#294# range 0 .. 31;
      WORD033  at 16#298# range 0 .. 31;
      WORD133  at 16#29C# range 0 .. 31;
      CS34     at 16#2A0# range 0 .. 31;
      ID34     at 16#2A4# range 0 .. 31;
      WORD034  at 16#2A8# range 0 .. 31;
      WORD134  at 16#2AC# range 0 .. 31;
      CS35     at 16#2B0# range 0 .. 31;
      ID35     at 16#2B4# range 0 .. 31;
      WORD035  at 16#2B8# range 0 .. 31;
      WORD135  at 16#2BC# range 0 .. 31;
      CS36     at 16#2C0# range 0 .. 31;
      ID36     at 16#2C4# range 0 .. 31;
      WORD036  at 16#2C8# range 0 .. 31;
      WORD136  at 16#2CC# range 0 .. 31;
      CS37     at 16#2D0# range 0 .. 31;
      ID37     at 16#2D4# range 0 .. 31;
      WORD037  at 16#2D8# range 0 .. 31;
      WORD137  at 16#2DC# range 0 .. 31;
      CS38     at 16#2E0# range 0 .. 31;
      ID38     at 16#2E4# range 0 .. 31;
      WORD038  at 16#2E8# range 0 .. 31;
      WORD138  at 16#2EC# range 0 .. 31;
      CS39     at 16#2F0# range 0 .. 31;
      ID39     at 16#2F4# range 0 .. 31;
      WORD039  at 16#2F8# range 0 .. 31;
      WORD139  at 16#2FC# range 0 .. 31;
      CS40     at 16#300# range 0 .. 31;
      ID40     at 16#304# range 0 .. 31;
      WORD040  at 16#308# range 0 .. 31;
      WORD140  at 16#30C# range 0 .. 31;
      CS41     at 16#310# range 0 .. 31;
      ID41     at 16#314# range 0 .. 31;
      WORD041  at 16#318# range 0 .. 31;
      WORD141  at 16#31C# range 0 .. 31;
      CS42     at 16#320# range 0 .. 31;
      ID42     at 16#324# range 0 .. 31;
      WORD042  at 16#328# range 0 .. 31;
      WORD142  at 16#32C# range 0 .. 31;
      CS43     at 16#330# range 0 .. 31;
      ID43     at 16#334# range 0 .. 31;
      WORD043  at 16#338# range 0 .. 31;
      WORD143  at 16#33C# range 0 .. 31;
      CS44     at 16#340# range 0 .. 31;
      ID44     at 16#344# range 0 .. 31;
      WORD044  at 16#348# range 0 .. 31;
      WORD144  at 16#34C# range 0 .. 31;
      CS45     at 16#350# range 0 .. 31;
      ID45     at 16#354# range 0 .. 31;
      WORD045  at 16#358# range 0 .. 31;
      WORD145  at 16#35C# range 0 .. 31;
      CS46     at 16#360# range 0 .. 31;
      ID46     at 16#364# range 0 .. 31;
      WORD046  at 16#368# range 0 .. 31;
      WORD146  at 16#36C# range 0 .. 31;
      CS47     at 16#370# range 0 .. 31;
      ID47     at 16#374# range 0 .. 31;
      WORD047  at 16#378# range 0 .. 31;
      WORD147  at 16#37C# range 0 .. 31;
      CS48     at 16#380# range 0 .. 31;
      ID48     at 16#384# range 0 .. 31;
      WORD048  at 16#388# range 0 .. 31;
      WORD148  at 16#38C# range 0 .. 31;
      CS49     at 16#390# range 0 .. 31;
      ID49     at 16#394# range 0 .. 31;
      WORD049  at 16#398# range 0 .. 31;
      WORD149  at 16#39C# range 0 .. 31;
      CS50     at 16#3A0# range 0 .. 31;
      ID50     at 16#3A4# range 0 .. 31;
      WORD050  at 16#3A8# range 0 .. 31;
      WORD150  at 16#3AC# range 0 .. 31;
      CS51     at 16#3B0# range 0 .. 31;
      ID51     at 16#3B4# range 0 .. 31;
      WORD051  at 16#3B8# range 0 .. 31;
      WORD151  at 16#3BC# range 0 .. 31;
      CS52     at 16#3C0# range 0 .. 31;
      ID52     at 16#3C4# range 0 .. 31;
      WORD052  at 16#3C8# range 0 .. 31;
      WORD152  at 16#3CC# range 0 .. 31;
      CS53     at 16#3D0# range 0 .. 31;
      ID53     at 16#3D4# range 0 .. 31;
      WORD053  at 16#3D8# range 0 .. 31;
      WORD153  at 16#3DC# range 0 .. 31;
      CS54     at 16#3E0# range 0 .. 31;
      ID54     at 16#3E4# range 0 .. 31;
      WORD054  at 16#3E8# range 0 .. 31;
      WORD154  at 16#3EC# range 0 .. 31;
      CS55     at 16#3F0# range 0 .. 31;
      ID55     at 16#3F4# range 0 .. 31;
      WORD055  at 16#3F8# range 0 .. 31;
      WORD155  at 16#3FC# range 0 .. 31;
      CS56     at 16#400# range 0 .. 31;
      ID56     at 16#404# range 0 .. 31;
      WORD056  at 16#408# range 0 .. 31;
      WORD156  at 16#40C# range 0 .. 31;
      CS57     at 16#410# range 0 .. 31;
      ID57     at 16#414# range 0 .. 31;
      WORD057  at 16#418# range 0 .. 31;
      WORD157  at 16#41C# range 0 .. 31;
      CS58     at 16#420# range 0 .. 31;
      ID58     at 16#424# range 0 .. 31;
      WORD058  at 16#428# range 0 .. 31;
      WORD158  at 16#42C# range 0 .. 31;
      CS59     at 16#430# range 0 .. 31;
      ID59     at 16#434# range 0 .. 31;
      WORD059  at 16#438# range 0 .. 31;
      WORD159  at 16#43C# range 0 .. 31;
      CS60     at 16#440# range 0 .. 31;
      ID60     at 16#444# range 0 .. 31;
      WORD060  at 16#448# range 0 .. 31;
      WORD160  at 16#44C# range 0 .. 31;
      CS61     at 16#450# range 0 .. 31;
      ID61     at 16#454# range 0 .. 31;
      WORD061  at 16#458# range 0 .. 31;
      WORD161  at 16#45C# range 0 .. 31;
      CS62     at 16#460# range 0 .. 31;
      ID62     at 16#464# range 0 .. 31;
      WORD062  at 16#468# range 0 .. 31;
      WORD162  at 16#46C# range 0 .. 31;
      CS63     at 16#470# range 0 .. 31;
      ID63     at 16#474# range 0 .. 31;
      WORD063  at 16#478# range 0 .. 31;
      WORD163  at 16#47C# range 0 .. 31;
      RXIMR    at 16#880# range 0 .. 511;
   end record;

   --  Flex Controller Area Network module
   CAN0_Periph : aliased CAN0_Peripheral
     with Import, Address => System'To_Address (16#40024000#);

end NRF_SVD.CAN;
