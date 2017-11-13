--  This spec has been automatically generated from ATSAMV71J20.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.MCAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MCAN0_CREL_DAY_Field is HAL.UInt8;
   subtype MCAN0_CREL_MON_Field is HAL.UInt8;
   subtype MCAN0_CREL_YEAR_Field is HAL.UInt4;
   subtype MCAN0_CREL_SUBSTEP_Field is HAL.UInt4;
   subtype MCAN0_CREL_STEP_Field is HAL.UInt4;
   subtype MCAN0_CREL_REL_Field is HAL.UInt4;

   --  Core Release Register
   type MCAN0_CREL_Register is record
      --  Read-only. Timestamp Day
      DAY     : MCAN0_CREL_DAY_Field;
      --  Read-only. Timestamp Month
      MON     : MCAN0_CREL_MON_Field;
      --  Read-only. Timestamp Year
      YEAR    : MCAN0_CREL_YEAR_Field;
      --  Read-only. Sub-step of Core Release
      SUBSTEP : MCAN0_CREL_SUBSTEP_Field;
      --  Read-only. Step of Core Release
      STEP    : MCAN0_CREL_STEP_Field;
      --  Read-only. Core Release
      REL     : MCAN0_CREL_REL_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_CREL_Register use record
      DAY     at 0 range 0 .. 7;
      MON     at 0 range 8 .. 15;
      YEAR    at 0 range 16 .. 19;
      SUBSTEP at 0 range 20 .. 23;
      STEP    at 0 range 24 .. 27;
      REL     at 0 range 28 .. 31;
   end record;

   subtype MCAN0_FBTP_FSJW_Field is HAL.UInt2;
   subtype MCAN0_FBTP_FTSEG2_Field is HAL.UInt3;
   subtype MCAN0_FBTP_FTSEG1_Field is HAL.UInt4;
   subtype MCAN0_FBTP_FBRP_Field is HAL.UInt5;

   --  Transceiver Delay Compensation
   type FBTP_TDC_Field is
     (
      --  Transceiver Delay Compensation disabled.
      Disabled,
      --  Transceiver Delay Compensation enabled.
      Enabled)
     with Size => 1;
   for FBTP_TDC_Field use
     (Disabled => 0,
      Enabled => 1);

   subtype MCAN0_FBTP_TDCO_Field is HAL.UInt5;

   --  Fast Bit Timing and Prescaler Register
   type MCAN0_FBTP_Register is record
      --  Fast (Re) Synchronization Jump Width
      FSJW           : MCAN0_FBTP_FSJW_Field := 16#3#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Fast Time Segment After Sample Point
      FTSEG2         : MCAN0_FBTP_FTSEG2_Field := 16#3#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Fast Time Segment Before Sample Point
      FTSEG1         : MCAN0_FBTP_FTSEG1_Field := 16#A#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Fast Baud Rate Prescaler
      FBRP           : MCAN0_FBTP_FBRP_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Transceiver Delay Compensation
      TDC            : FBTP_TDC_Field := SAM_SVD.MCAN.Disabled;
      --  Transceiver Delay Compensation Offset
      TDCO           : MCAN0_FBTP_TDCO_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_FBTP_Register use record
      FSJW           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FTSEG2         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FTSEG1         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FBRP           at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      TDC            at 0 range 23 .. 23;
      TDCO           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Loop Back Mode (read/write)
   type TEST_LBCK_Field is
     (
      --  Reset value. Loop Back mode is disabled.
      Disabled,
      --  Loop Back mode is enabled (see Section 6.1.9).
      Enabled)
     with Size => 1;
   for TEST_LBCK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Control of Transmit Pin (read/write)
   type TEST_TX_Field is
     (
      --  Reset value, CANTX controlled by the CAN Core, updated at the end of
      --  the CAN bit time.
      Reset,
      --  Sample Point can be monitored at pin CANTX.
      Sample_Point_Monitoring,
      --  Dominant ('0') level at pin CANTX.
      Dominant,
      --  Recessive ('1') at pin CANTX.
      Recessive)
     with Size => 2;
   for TEST_TX_Field use
     (Reset => 0,
      Sample_Point_Monitoring => 1,
      Dominant => 2,
      Recessive => 3);

   subtype MCAN0_TEST_TDCV_Field is HAL.UInt6;

   --  Test Register
   type MCAN0_TEST_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Loop Back Mode (read/write)
      LBCK           : TEST_LBCK_Field := SAM_SVD.MCAN.Disabled;
      --  Control of Transmit Pin (read/write)
      TX             : TEST_TX_Field := SAM_SVD.MCAN.Reset;
      --  Receive Pin (read-only)
      RX             : Boolean := False;
      --  Transceiver Delay Compensation Value (read-only)
      TDCV           : MCAN0_TEST_TDCV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TEST_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      LBCK           at 0 range 4 .. 4;
      TX             at 0 range 5 .. 6;
      RX             at 0 range 7 .. 7;
      TDCV           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype MCAN0_RWD_WDC_Field is HAL.UInt8;
   subtype MCAN0_RWD_WDV_Field is HAL.UInt8;

   --  RAM Watchdog Register
   type MCAN0_RWD_Register is record
      --  Watchdog Configuration (read/write)
      WDC            : MCAN0_RWD_WDC_Field := 16#0#;
      --  Watchdog Value (read-only)
      WDV            : MCAN0_RWD_WDV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RWD_Register use record
      WDC            at 0 range 0 .. 7;
      WDV            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Initialization (read/write)
   type CCCR_INIT_Field is
     (
      --  Normal operation.
      Disabled,
      --  Initialization is started.
      Enabled)
     with Size => 1;
   for CCCR_INIT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Configuration Change Enable (read/write, write protection)
   type CCCR_CCE_Field is
     (
      --  The processor has no write access to the protected configuration
      --  registers.
      Protected_k,
      --  The processor has write access to the protected configuration
      --  registers (while MCAN_CCCR.INIT = '1').
      Configurable)
     with Size => 1;
   for CCCR_CCE_Field use
     (Protected_k => 0,
      Configurable => 1);

   --  Restricted Operation Mode (read/write, write protection against '1')
   type CCCR_ASM_Field is
     (
      --  Normal CAN operation.
      Normal,
      --  Restricted operation mode active.
      Restricted)
     with Size => 1;
   for CCCR_ASM_Field use
     (Normal => 0,
      Restricted => 1);

   --  Clock Stop Request (read/write)
   type CCCR_CSR_Field is
     (
      --  No clock stop is requested.
      No_Clock_Stop,
      --  Clock stop requested. When clock stop is requested, first INIT and
      --  then CSA will be set after all pend-ing transfer requests have been
      --  completed and the CAN bus reached idle.
      Clock_Stop)
     with Size => 1;
   for CCCR_CSR_Field use
     (No_Clock_Stop => 0,
      Clock_Stop => 1);

   --  Bus Monitoring Mode (read/write, write protection against '1')
   type CCCR_MON_Field is
     (
      --  Bus Monitoring mode is disabled.
      Disabled,
      --  Bus Monitoring mode is enabled.
      Enabled)
     with Size => 1;
   for CCCR_MON_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable Automatic Retransmission (read/write, write protection)
   type CCCR_DAR_Field is
     (
      --  Automatic retransmission of messages not transmitted successfully
      --  enabled.
      Auto_Retx,
      --  Automatic retransmission disabled.
      No_Auto_Retx)
     with Size => 1;
   for CCCR_DAR_Field use
     (Auto_Retx => 0,
      No_Auto_Retx => 1);

   --  Test Mode Enable (read/write, write protection against '1')
   type CCCR_TEST_Field is
     (
      --  Normal operation, MCAN_TEST register holds reset values.
      Disabled,
      --  Test mode, write access to MCAN_TEST register enabled.
      Enabled)
     with Size => 1;
   for CCCR_TEST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CAN Mode Enable (read/write, write protection)
   type CCCR_CME_Field is
     (
      --  CAN operation according to ISO11898-1 enabled
      Iso11898_1,
      --  CAN FD operation enabled
      Fd)
     with Size => 2;
   for CCCR_CME_Field use
     (Iso11898_1 => 0,
      Fd => 1);

   --  CAN Mode Request (read/write)
   type CCCR_CMR_Field is
     (
      --  No mode change
      No_Change,
      --  Request CAN FD operation
      Fd,
      --  Request CAN FD operation with bit rate switching
      Fd_Bitrate_Switch,
      --  Request CAN operation according ISO11898-1
      Iso11898_1)
     with Size => 2;
   for CCCR_CMR_Field use
     (No_Change => 0,
      Fd => 1,
      Fd_Bitrate_Switch => 2,
      Iso11898_1 => 3);

   --  CC Control Register
   type MCAN0_CCCR_Register is record
      --  Initialization (read/write)
      INIT           : CCCR_INIT_Field := SAM_SVD.MCAN.Enabled;
      --  Configuration Change Enable (read/write, write protection)
      CCE            : CCCR_CCE_Field := SAM_SVD.MCAN.Protected_k;
      --  Restricted Operation Mode (read/write, write protection against '1')
      ASM            : CCCR_ASM_Field := SAM_SVD.MCAN.Normal;
      --  Clock Stop Acknowledge (read-only)
      CSA            : Boolean := False;
      --  Clock Stop Request (read/write)
      CSR            : CCCR_CSR_Field := SAM_SVD.MCAN.No_Clock_Stop;
      --  Bus Monitoring Mode (read/write, write protection against '1')
      MON            : CCCR_MON_Field := SAM_SVD.MCAN.Disabled;
      --  Disable Automatic Retransmission (read/write, write protection)
      DAR            : CCCR_DAR_Field := SAM_SVD.MCAN.Auto_Retx;
      --  Test Mode Enable (read/write, write protection against '1')
      TEST           : CCCR_TEST_Field := SAM_SVD.MCAN.Disabled;
      --  CAN Mode Enable (read/write, write protection)
      CME            : CCCR_CME_Field := SAM_SVD.MCAN.Iso11898_1;
      --  CAN Mode Request (read/write)
      CMR            : CCCR_CMR_Field := SAM_SVD.MCAN.No_Change;
      --  CAN FD Operation (read-only)
      FDO            : Boolean := False;
      --  CAN FD Bit Rate Switching (read-only)
      FDBS           : Boolean := False;
      --  Transmit Pause (read/write, write protection)
      TXP            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_CCCR_Register use record
      INIT           at 0 range 0 .. 0;
      CCE            at 0 range 1 .. 1;
      ASM            at 0 range 2 .. 2;
      CSA            at 0 range 3 .. 3;
      CSR            at 0 range 4 .. 4;
      MON            at 0 range 5 .. 5;
      DAR            at 0 range 6 .. 6;
      TEST           at 0 range 7 .. 7;
      CME            at 0 range 8 .. 9;
      CMR            at 0 range 10 .. 11;
      FDO            at 0 range 12 .. 12;
      FDBS           at 0 range 13 .. 13;
      TXP            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype MCAN0_BTP_SJW_Field is HAL.UInt4;
   subtype MCAN0_BTP_TSEG2_Field is HAL.UInt4;
   subtype MCAN0_BTP_TSEG1_Field is HAL.UInt6;
   subtype MCAN0_BTP_BRP_Field is HAL.UInt10;

   --  Bit Timing and Prescaler Register
   type MCAN0_BTP_Register is record
      --  (Re) Synchronization Jump Width
      SJW            : MCAN0_BTP_SJW_Field := 16#3#;
      --  Time Segment After Sample Point
      TSEG2          : MCAN0_BTP_TSEG2_Field := 16#3#;
      --  Time Segment Before Sample Point
      TSEG1          : MCAN0_BTP_TSEG1_Field := 16#A#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Baud Rate Prescaler
      BRP            : MCAN0_BTP_BRP_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_BTP_Register use record
      SJW            at 0 range 0 .. 3;
      TSEG2          at 0 range 4 .. 7;
      TSEG1          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BRP            at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Timestamp Select
   type TSCC_TSS_Field is
     (
      --  Timestamp counter value always 0x0000
      Always_0,
      --  Timestamp counter value incremented according to TCP
      Tcp_Inc,
      --  External timestamp counter value used
      Ext_Timestamp)
     with Size => 2;
   for TSCC_TSS_Field use
     (Always_0 => 0,
      Tcp_Inc => 1,
      Ext_Timestamp => 2);

   subtype MCAN0_TSCC_TCP_Field is HAL.UInt4;

   --  Timestamp Counter Configuration Register
   type MCAN0_TSCC_Register is record
      --  Timestamp Select
      TSS            : TSCC_TSS_Field := SAM_SVD.MCAN.Always_0;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Timestamp Counter Prescaler
      TCP            : MCAN0_TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype MCAN0_TSCV_TSC_Field is HAL.UInt16;

   --  Timestamp Counter Value Register
   type MCAN0_TSCV_Register is record
      --  Timestamp Counter (cleared on write)
      TSC            : MCAN0_TSCV_TSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Enable Timeout Counter
   type TOCC_ETOC_Field is
     (
      --  Timeout Counter disabled.
      No_Timeout,
      --  Timeout Counter enabled.
      Tos_Controlled)
     with Size => 1;
   for TOCC_ETOC_Field use
     (No_Timeout => 0,
      Tos_Controlled => 1);

   --  Timeout Select
   type TOCC_TOS_Field is
     (
      --  Continuous operation
      Continuous,
      --  Timeout controlled by Tx Event FIFO
      Tx_Ev_Timeout,
      --  Timeout controlled by Receive FIFO 0
      Rx0_Ev_Timeout,
      --  Timeout controlled by Receive FIFO 1
      Rx1_Ev_Timeout)
     with Size => 2;
   for TOCC_TOS_Field use
     (Continuous => 0,
      Tx_Ev_Timeout => 1,
      Rx0_Ev_Timeout => 2,
      Rx1_Ev_Timeout => 3);

   subtype MCAN0_TOCC_TOP_Field is HAL.UInt16;

   --  Timeout Counter Configuration Register
   type MCAN0_TOCC_Register is record
      --  Enable Timeout Counter
      ETOC          : TOCC_ETOC_Field := SAM_SVD.MCAN.No_Timeout;
      --  Timeout Select
      TOS           : TOCC_TOS_Field := SAM_SVD.MCAN.Continuous;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
      --  Timeout Period
      TOP           : MCAN0_TOCC_TOP_Field := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TOCC_Register use record
      ETOC          at 0 range 0 .. 0;
      TOS           at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      TOP           at 0 range 16 .. 31;
   end record;

   subtype MCAN0_TOCV_TOC_Field is HAL.UInt16;

   --  Timeout Counter Value Register
   type MCAN0_TOCV_Register is record
      --  Timeout Counter (cleared on write)
      TOC            : MCAN0_TOCV_TOC_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCAN0_ECR_TEC_Field is HAL.UInt8;
   subtype MCAN0_ECR_REC_Field is HAL.UInt7;
   subtype MCAN0_ECR_CEL_Field is HAL.UInt8;

   --  Error Counter Register
   type MCAN0_ECR_Register is record
      --  Read-only. Transmit Error Counter
      TEC            : MCAN0_ECR_TEC_Field;
      --  Read-only. Receive Error Counter
      REC            : MCAN0_ECR_REC_Field;
      --  Read-only. Receive Error Passive
      RP             : Boolean;
      --  Read-only. CAN Error Logging (cleared on read)
      CEL            : MCAN0_ECR_CEL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_ECR_Register use record
      TEC            at 0 range 0 .. 7;
      REC            at 0 range 8 .. 14;
      RP             at 0 range 15 .. 15;
      CEL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Last Error Code (set to 111 on read)
   type PSR_LEC_Field is
     (
      --  No error occurred since LEC has been reset by successful reception or
      --  transmission.
      No_Error,
      --  More than 5 equal bits in a sequence have occurred in a part of a
      --  received message where this is not allowed.
      Stuff_Error,
      --  A fixed format part of a received frame has the wrong format.
      Form_Error,
      --  The message transmitted by the MCAN was not acknowledged by another
      --  node.
      Ack_Error,
      --  During the transmission of a message (with the exception of the
      --  arbitration field), the device wanted to send a recessive level (bit
      --  of logical value '1'), but the monitored bus value was dominant.
      Bit1_Error,
      --  During the transmission of a message (or acknowledge bit, or active
      --  error flag, or overload flag), the device wanted to send a dominant
      --  level (data or identifier bit logical value '0'), but the monitored
      --  bus value was recessive. During Bus_Off recovery this status is set
      --  each time a sequence of 11 recessive bits has been monitored. This
      --  enables the processor to monitor the proceeding of the Bus_Off
      --  recovery sequence (indicating the bus is not stuck at dominant or
      --  continuously disturbed).
      Bit0_Error,
      --  The CRC check sum of a received message was incorrect. The CRC of an
      --  incoming message does not match with the CRC calculated from the
      --  received data.
      Crc_Error,
      --  Any read access to the Protocol Status Register re-initializes the
      --  LEC to '7'. When the LEC shows the value '7', no CAN bus event was
      --  detected since the last processor read access to the Protocol Status
      --  Register.
      No_Change)
     with Size => 3;
   for PSR_LEC_Field use
     (No_Error => 0,
      Stuff_Error => 1,
      Form_Error => 2,
      Ack_Error => 3,
      Bit1_Error => 4,
      Bit0_Error => 5,
      Crc_Error => 6,
      No_Change => 7);

   --  Activity
   type PSR_ACT_Field is
     (
      --  Node is synchronizing on CAN communication
      Synchronizing,
      --  Node is neither receiver nor transmitter
      Idle,
      --  Node is operating as receiver
      Receiver,
      --  Node is operating as transmitter
      Transmitter)
     with Size => 2;
   for PSR_ACT_Field use
     (Synchronizing => 0,
      Idle => 1,
      Receiver => 2,
      Transmitter => 3);

   subtype MCAN0_PSR_FLEC_Field is HAL.UInt3;

   --  Protocol Status Register
   type MCAN0_PSR_Register is record
      --  Read-only. Last Error Code (set to 111 on read)
      LEC            : PSR_LEC_Field;
      --  Read-only. Activity
      ACT            : PSR_ACT_Field;
      --  Read-only. Error Passive
      EP             : Boolean;
      --  Read-only. Warning Status
      EW             : Boolean;
      --  Read-only. Bus_Off Status
      BO             : Boolean;
      --  Read-only. Fast Last Error Code (set to 111 on read)
      FLEC           : MCAN0_PSR_FLEC_Field;
      --  Read-only. ESI Flag of Last Received CAN FD Message (cleared on read)
      RESI           : Boolean;
      --  Read-only. BRS Flag of Last Received CAN FD Message (cleared on read)
      RBRS           : Boolean;
      --  Read-only. Received a CAN FD Message (cleared on read)
      REDL           : Boolean;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_PSR_Register use record
      LEC            at 0 range 0 .. 2;
      ACT            at 0 range 3 .. 4;
      EP             at 0 range 5 .. 5;
      EW             at 0 range 6 .. 6;
      BO             at 0 range 7 .. 7;
      FLEC           at 0 range 8 .. 10;
      RESI           at 0 range 11 .. 11;
      RBRS           at 0 range 12 .. 12;
      REDL           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Register
   type MCAN0_IR_Register is record
      --  Receive FIFO 0 New Message
      RF0N : Boolean := False;
      --  Receive FIFO 0 Watermark Reached
      RF0W : Boolean := False;
      --  Receive FIFO 0 Full
      RF0F : Boolean := False;
      --  Receive FIFO 0 Message Lost
      RF0L : Boolean := False;
      --  Receive FIFO 1 New Message
      RF1N : Boolean := False;
      --  Receive FIFO 1 Watermark Reached
      RF1W : Boolean := False;
      --  Receive FIFO 1 Full
      RF1F : Boolean := False;
      --  Receive FIFO 1 Message Lost
      RF1L : Boolean := False;
      --  High Priority Message
      HPM  : Boolean := False;
      --  Transmission Completed
      TC   : Boolean := False;
      --  Transmission Cancellation Finished
      TCF  : Boolean := False;
      --  Tx FIFO Empty
      TFE  : Boolean := False;
      --  Tx Event FIFO New Entry
      TEFN : Boolean := False;
      --  Tx Event FIFO Watermark Reached
      TEFW : Boolean := False;
      --  Tx Event FIFO Full
      TEFF : Boolean := False;
      --  Tx Event FIFO Element Lost
      TEFL : Boolean := False;
      --  Timestamp Wraparound
      TSW  : Boolean := False;
      --  Message RAM Access Failure
      MRAF : Boolean := False;
      --  Timeout Occurred
      TOO  : Boolean := False;
      --  Message stored to Dedicated Receive Buffer
      DRX  : Boolean := False;
      --  Bit Error Corrected
      BEC  : Boolean := False;
      --  Bit Error Uncorrected
      BEU  : Boolean := False;
      --  Error Logging Overflow
      ELO  : Boolean := False;
      --  Error Passive
      EP   : Boolean := False;
      --  Warning Status
      EW   : Boolean := False;
      --  Bus_Off Status
      BO   : Boolean := False;
      --  Watchdog Interrupt
      WDI  : Boolean := False;
      --  CRC Error
      CRCE : Boolean := False;
      --  Bit Error
      BE   : Boolean := False;
      --  Acknowledge Error
      ACKE : Boolean := False;
      --  Format Error
      FOE  : Boolean := False;
      --  Stuff Error
      STE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_IR_Register use record
      RF0N at 0 range 0 .. 0;
      RF0W at 0 range 1 .. 1;
      RF0F at 0 range 2 .. 2;
      RF0L at 0 range 3 .. 3;
      RF1N at 0 range 4 .. 4;
      RF1W at 0 range 5 .. 5;
      RF1F at 0 range 6 .. 6;
      RF1L at 0 range 7 .. 7;
      HPM  at 0 range 8 .. 8;
      TC   at 0 range 9 .. 9;
      TCF  at 0 range 10 .. 10;
      TFE  at 0 range 11 .. 11;
      TEFN at 0 range 12 .. 12;
      TEFW at 0 range 13 .. 13;
      TEFF at 0 range 14 .. 14;
      TEFL at 0 range 15 .. 15;
      TSW  at 0 range 16 .. 16;
      MRAF at 0 range 17 .. 17;
      TOO  at 0 range 18 .. 18;
      DRX  at 0 range 19 .. 19;
      BEC  at 0 range 20 .. 20;
      BEU  at 0 range 21 .. 21;
      ELO  at 0 range 22 .. 22;
      EP   at 0 range 23 .. 23;
      EW   at 0 range 24 .. 24;
      BO   at 0 range 25 .. 25;
      WDI  at 0 range 26 .. 26;
      CRCE at 0 range 27 .. 27;
      BE   at 0 range 28 .. 28;
      ACKE at 0 range 29 .. 29;
      FOE  at 0 range 30 .. 30;
      STE  at 0 range 31 .. 31;
   end record;

   --  Interrupt Enable Register
   type MCAN0_IE_Register is record
      --  Receive FIFO 0 New Message Interrupt Enable
      RF0NE : Boolean := False;
      --  Receive FIFO 0 Watermark Reached Interrupt Enable
      RF0WE : Boolean := False;
      --  Receive FIFO 0 Full Interrupt Enable
      RF0FE : Boolean := False;
      --  Receive FIFO 0 Message Lost Interrupt Enable
      RF0LE : Boolean := False;
      --  Receive FIFO 1 New Message Interrupt Enable
      RF1NE : Boolean := False;
      --  Receive FIFO 1 Watermark Reached Interrupt Enable
      RF1WE : Boolean := False;
      --  Receive FIFO 1 Full Interrupt Enable
      RF1FE : Boolean := False;
      --  Receive FIFO 1 Message Lost Interrupt Enable
      RF1LE : Boolean := False;
      --  High Priority Message Interrupt Enable
      HPME  : Boolean := False;
      --  Transmission Completed Interrupt Enable
      TCE   : Boolean := False;
      --  Transmission Cancellation Finished Interrupt Enable
      TCFE  : Boolean := False;
      --  Tx FIFO Empty Interrupt Enable
      TFEE  : Boolean := False;
      --  Tx Event FIFO New Entry Interrupt Enable
      TEFNE : Boolean := False;
      --  Tx Event FIFO Watermark Reached Interrupt Enable
      TEFWE : Boolean := False;
      --  Tx Event FIFO Full Interrupt Enable
      TEFFE : Boolean := False;
      --  Tx Event FIFO Event Lost Interrupt Enable
      TEFLE : Boolean := False;
      --  Timestamp Wraparound Interrupt Enable
      TSWE  : Boolean := False;
      --  Message RAM Access Failure Interrupt Enable
      MRAFE : Boolean := False;
      --  Timeout Occurred Interrupt Enable
      TOOE  : Boolean := False;
      --  Message stored to Dedicated Receive Buffer Interrupt Enable
      DRXE  : Boolean := False;
      --  Bit Error Corrected Interrupt Enable
      BECE  : Boolean := False;
      --  Bit Error Uncorrected Interrupt Enable
      BEUE  : Boolean := False;
      --  Error Logging Overflow Interrupt Enable
      ELOE  : Boolean := False;
      --  Error Passive Interrupt Enable
      EPE   : Boolean := False;
      --  Warning Status Interrupt Enable
      EWE   : Boolean := False;
      --  Bus_Off Status Interrupt Enable
      BOE   : Boolean := False;
      --  Watchdog Interrupt Enable
      WDIE  : Boolean := False;
      --  CRC Error Interrupt Enable
      CRCEE : Boolean := False;
      --  Bit Error Interrupt Enable
      BEE   : Boolean := False;
      --  Acknowledge Error Interrupt Enable
      ACKEE : Boolean := False;
      --  Format Error Interrupt Enable
      FOEE  : Boolean := False;
      --  Stuff Error Interrupt Enable
      STEE  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_IE_Register use record
      RF0NE at 0 range 0 .. 0;
      RF0WE at 0 range 1 .. 1;
      RF0FE at 0 range 2 .. 2;
      RF0LE at 0 range 3 .. 3;
      RF1NE at 0 range 4 .. 4;
      RF1WE at 0 range 5 .. 5;
      RF1FE at 0 range 6 .. 6;
      RF1LE at 0 range 7 .. 7;
      HPME  at 0 range 8 .. 8;
      TCE   at 0 range 9 .. 9;
      TCFE  at 0 range 10 .. 10;
      TFEE  at 0 range 11 .. 11;
      TEFNE at 0 range 12 .. 12;
      TEFWE at 0 range 13 .. 13;
      TEFFE at 0 range 14 .. 14;
      TEFLE at 0 range 15 .. 15;
      TSWE  at 0 range 16 .. 16;
      MRAFE at 0 range 17 .. 17;
      TOOE  at 0 range 18 .. 18;
      DRXE  at 0 range 19 .. 19;
      BECE  at 0 range 20 .. 20;
      BEUE  at 0 range 21 .. 21;
      ELOE  at 0 range 22 .. 22;
      EPE   at 0 range 23 .. 23;
      EWE   at 0 range 24 .. 24;
      BOE   at 0 range 25 .. 25;
      WDIE  at 0 range 26 .. 26;
      CRCEE at 0 range 27 .. 27;
      BEE   at 0 range 28 .. 28;
      ACKEE at 0 range 29 .. 29;
      FOEE  at 0 range 30 .. 30;
      STEE  at 0 range 31 .. 31;
   end record;

   --  Interrupt Line Select Register
   type MCAN0_ILS_Register is record
      --  Receive FIFO 0 New Message Interrupt Line
      RF0NL : Boolean := False;
      --  Receive FIFO 0 Watermark Reached Interrupt Line
      RF0WL : Boolean := False;
      --  Receive FIFO 0 Full Interrupt Line
      RF0FL : Boolean := False;
      --  Receive FIFO 0 Message Lost Interrupt Line
      RF0LL : Boolean := False;
      --  Receive FIFO 1 New Message Interrupt Line
      RF1NL : Boolean := False;
      --  Receive FIFO 1 Watermark Reached Interrupt Line
      RF1WL : Boolean := False;
      --  Receive FIFO 1 Full Interrupt Line
      RF1FL : Boolean := False;
      --  Receive FIFO 1 Message Lost Interrupt Line
      RF1LL : Boolean := False;
      --  High Priority Message Interrupt Line
      HPML  : Boolean := False;
      --  Transmission Completed Interrupt Line
      TCL   : Boolean := False;
      --  Transmission Cancellation Finished Interrupt Line
      TCFL  : Boolean := False;
      --  Tx FIFO Empty Interrupt Line
      TFEL  : Boolean := False;
      --  Tx Event FIFO New Entry Interrupt Line
      TEFNL : Boolean := False;
      --  Tx Event FIFO Watermark Reached Interrupt Line
      TEFWL : Boolean := False;
      --  Tx Event FIFO Full Interrupt Line
      TEFFL : Boolean := False;
      --  Tx Event FIFO Event Lost Interrupt Line
      TEFLL : Boolean := False;
      --  Timestamp Wraparound Interrupt Line
      TSWL  : Boolean := False;
      --  Message RAM Access Failure Interrupt Line
      MRAFL : Boolean := False;
      --  Timeout Occurred Interrupt Line
      TOOL  : Boolean := False;
      --  Message stored to Dedicated Receive Buffer Interrupt Line
      DRXL  : Boolean := False;
      --  Bit Error Corrected Interrupt Line
      BECL  : Boolean := False;
      --  Bit Error Uncorrected Interrupt Line
      BEUL  : Boolean := False;
      --  Error Logging Overflow Interrupt Line
      ELOL  : Boolean := False;
      --  Error Passive Interrupt Line
      EPL   : Boolean := False;
      --  Warning Status Interrupt Line
      EWL   : Boolean := False;
      --  Bus_Off Status Interrupt Line
      BOL   : Boolean := False;
      --  Watchdog Interrupt Line
      WDIL  : Boolean := False;
      --  CRC Error Interrupt Line
      CRCEL : Boolean := False;
      --  Bit Error Interrupt Line
      BEL   : Boolean := False;
      --  Acknowledge Error Interrupt Line
      ACKEL : Boolean := False;
      --  Format Error Interrupt Line
      FOEL  : Boolean := False;
      --  Stuff Error Interrupt Line
      STEL  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_ILS_Register use record
      RF0NL at 0 range 0 .. 0;
      RF0WL at 0 range 1 .. 1;
      RF0FL at 0 range 2 .. 2;
      RF0LL at 0 range 3 .. 3;
      RF1NL at 0 range 4 .. 4;
      RF1WL at 0 range 5 .. 5;
      RF1FL at 0 range 6 .. 6;
      RF1LL at 0 range 7 .. 7;
      HPML  at 0 range 8 .. 8;
      TCL   at 0 range 9 .. 9;
      TCFL  at 0 range 10 .. 10;
      TFEL  at 0 range 11 .. 11;
      TEFNL at 0 range 12 .. 12;
      TEFWL at 0 range 13 .. 13;
      TEFFL at 0 range 14 .. 14;
      TEFLL at 0 range 15 .. 15;
      TSWL  at 0 range 16 .. 16;
      MRAFL at 0 range 17 .. 17;
      TOOL  at 0 range 18 .. 18;
      DRXL  at 0 range 19 .. 19;
      BECL  at 0 range 20 .. 20;
      BEUL  at 0 range 21 .. 21;
      ELOL  at 0 range 22 .. 22;
      EPL   at 0 range 23 .. 23;
      EWL   at 0 range 24 .. 24;
      BOL   at 0 range 25 .. 25;
      WDIL  at 0 range 26 .. 26;
      CRCEL at 0 range 27 .. 27;
      BEL   at 0 range 28 .. 28;
      ACKEL at 0 range 29 .. 29;
      FOEL  at 0 range 30 .. 30;
      STEL  at 0 range 31 .. 31;
   end record;

   --  MCAN0_ILE_EINT array
   type MCAN0_ILE_EINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MCAN0_ILE_EINT
   type MCAN0_ILE_EINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EINT as a value
            Val : HAL.UInt2;
         when True =>
            --  EINT as an array
            Arr : MCAN0_ILE_EINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MCAN0_ILE_EINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Line Enable Register
   type MCAN0_ILE_Register is record
      --  Enable Interrupt Line 0
      EINT          : MCAN0_ILE_EINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Reject Remote Frames Extended
   type GFC_RRFE_Field is
     (
      --  Filter remote frames with 29-bit extended IDs.
      Filter,
      --  Reject all remote frames with 29-bit extended IDs.
      Reject)
     with Size => 1;
   for GFC_RRFE_Field use
     (Filter => 0,
      Reject => 1);

   --  Reject Remote Frames Standard
   type GFC_RRFS_Field is
     (
      --  Filter remote frames with 11-bit standard IDs.
      Filter,
      --  Reject all remote frames with 11-bit standard IDs.
      Reject)
     with Size => 1;
   for GFC_RRFS_Field use
     (Filter => 0,
      Reject => 1);

   --  Accept Non-matching Frames Extended
   type GFC_ANFE_Field is
     (
      --  Message stored in Receive FIFO 0
      Rx_Fifo_0,
      --  Message stored in Receive FIFO 1
      Rx_Fifo_1)
     with Size => 2;
   for GFC_ANFE_Field use
     (Rx_Fifo_0 => 0,
      Rx_Fifo_1 => 1);

   --  Accept Non-matching Frames Standard
   type GFC_ANFS_Field is
     (
      --  Message stored in Receive FIFO 0
      Rx_Fifo_0,
      --  Message stored in Receive FIFO 1
      Rx_Fifo_1)
     with Size => 2;
   for GFC_ANFS_Field use
     (Rx_Fifo_0 => 0,
      Rx_Fifo_1 => 1);

   --  Global Filter Configuration Register
   type MCAN0_GFC_Register is record
      --  Reject Remote Frames Extended
      RRFE          : GFC_RRFE_Field := SAM_SVD.MCAN.Filter;
      --  Reject Remote Frames Standard
      RRFS          : GFC_RRFS_Field := SAM_SVD.MCAN.Filter;
      --  Accept Non-matching Frames Extended
      ANFE          : GFC_ANFE_Field := SAM_SVD.MCAN.Rx_Fifo_0;
      --  Accept Non-matching Frames Standard
      ANFS          : GFC_ANFS_Field := SAM_SVD.MCAN.Rx_Fifo_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_GFC_Register use record
      RRFE          at 0 range 0 .. 0;
      RRFS          at 0 range 1 .. 1;
      ANFE          at 0 range 2 .. 3;
      ANFS          at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MCAN0_SIDFC_FLSSA_Field is HAL.UInt14;
   subtype MCAN0_SIDFC_LSS_Field is HAL.UInt8;

   --  Standard ID Filter Configuration Register
   type MCAN0_SIDFC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Filter List Standard Start Address
      FLSSA          : MCAN0_SIDFC_FLSSA_Field := 16#0#;
      --  List Size Standard
      LSS            : MCAN0_SIDFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_SIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLSSA          at 0 range 2 .. 15;
      LSS            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MCAN0_XIDFC_FLESA_Field is HAL.UInt14;
   subtype MCAN0_XIDFC_LSE_Field is HAL.UInt7;

   --  Extended ID Filter Configuration Register
   type MCAN0_XIDFC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Filter List Extended Start Address
      FLESA          : MCAN0_XIDFC_FLESA_Field := 16#0#;
      --  List Size Extended
      LSE            : MCAN0_XIDFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_XIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLESA          at 0 range 2 .. 15;
      LSE            at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype MCAN0_XIDAM_EIDM_Field is HAL.UInt29;

   --  Extended ID AND Mask Register
   type MCAN0_XIDAM_Register is record
      --  Extended ID Mask
      EIDM           : MCAN0_XIDAM_EIDM_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_XIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype MCAN0_HPMS_BIDX_Field is HAL.UInt6;

   --  Message Storage Indicator
   type HPMS_MSI_Field is
     (
      --  No FIFO selected.
      No_Fifo_Sel,
      --  FIFO message.
      Lost,
      --  Message stored in FIFO 0.
      Fifo_0,
      --  Message stored in FIFO 1.
      Fifo_1)
     with Size => 2;
   for HPMS_MSI_Field use
     (No_Fifo_Sel => 0,
      Lost => 1,
      Fifo_0 => 2,
      Fifo_1 => 3);

   subtype MCAN0_HPMS_FIDX_Field is HAL.UInt7;

   --  High Priority Message Status Register
   type MCAN0_HPMS_Register is record
      --  Read-only. Buffer Index
      BIDX           : MCAN0_HPMS_BIDX_Field;
      --  Read-only. Message Storage Indicator
      MSI            : HPMS_MSI_Field;
      --  Read-only. Filter Index
      FIDX           : MCAN0_HPMS_FIDX_Field;
      --  Read-only. Filter List
      FLST           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_HPMS_Register use record
      BIDX           at 0 range 0 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDX           at 0 range 8 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MCAN0_NDAT1_ND array
   type MCAN0_NDAT1_ND_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  New Data 1 Register
   type MCAN0_NDAT1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : HAL.UInt32;
         when True =>
            --  ND as an array
            Arr : MCAN0_NDAT1_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_NDAT1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_NDAT2_ND array
   type MCAN0_NDAT2_ND_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  New Data 2 Register
   type MCAN0_NDAT2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : HAL.UInt32;
         when True =>
            --  ND as an array
            Arr : MCAN0_NDAT2_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_NDAT2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MCAN0_RXF0C_F0SA_Field is HAL.UInt14;
   subtype MCAN0_RXF0C_F0S_Field is HAL.UInt7;
   subtype MCAN0_RXF0C_F0WM_Field is HAL.UInt7;

   --  Receive FIFO 0 Configuration Register
   type MCAN0_RXF0C_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Receive FIFO 0 Start Address
      F0SA           : MCAN0_RXF0C_F0SA_Field := 16#0#;
      --  Receive FIFO 0 Start Address
      F0S            : MCAN0_RXF0C_F0S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Receive FIFO 0 Watermark
      F0WM           : MCAN0_RXF0C_F0WM_Field := 16#0#;
      --  FIFO 0 Operation Mode
      F0OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXF0C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F0SA           at 0 range 2 .. 15;
      F0S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F0WM           at 0 range 24 .. 30;
      F0OM           at 0 range 31 .. 31;
   end record;

   subtype MCAN0_RXF0S_F0FL_Field is HAL.UInt7;
   subtype MCAN0_RXF0S_F0GI_Field is HAL.UInt6;
   subtype MCAN0_RXF0S_F0PI_Field is HAL.UInt6;

   --  Receive FIFO 0 Status Register
   type MCAN0_RXF0S_Register is record
      --  Read-only. Receive FIFO 0 Fill Level
      F0FL           : MCAN0_RXF0S_F0FL_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Receive FIFO 0 Get Index
      F0GI           : MCAN0_RXF0S_F0GI_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Receive FIFO 0 Put Index
      F0PI           : MCAN0_RXF0S_F0PI_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Receive FIFO 0 Fill Level
      F0F            : Boolean;
      --  Read-only. Receive FIFO 0 Message Lost
      RF0L           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXF0S_Register use record
      F0FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F0GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F0PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MCAN0_RXF0A_F0AI_Field is HAL.UInt6;

   --  Receive FIFO 0 Acknowledge Register
   type MCAN0_RXF0A_Register is record
      --  Receive FIFO 0 Acknowledge Index
      F0AI          : MCAN0_RXF0A_F0AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXF0A_Register use record
      F0AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MCAN0_RXBC_RBSA_Field is HAL.UInt14;

   --  Receive Rx Buffer Configuration Register
   type MCAN0_RXBC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Receive Buffer Start Address
      RBSA           : MCAN0_RXBC_RBSA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RBSA           at 0 range 2 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCAN0_RXF1C_F1SA_Field is HAL.UInt14;
   subtype MCAN0_RXF1C_F1S_Field is HAL.UInt7;
   subtype MCAN0_RXF1C_F1WM_Field is HAL.UInt7;

   --  Receive FIFO 1 Configuration Register
   type MCAN0_RXF1C_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Receive FIFO 1 Start Address
      F1SA           : MCAN0_RXF1C_F1SA_Field := 16#0#;
      --  Receive FIFO 1 Start Address
      F1S            : MCAN0_RXF1C_F1S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Receive FIFO 1 Watermark
      F1WM           : MCAN0_RXF1C_F1WM_Field := 16#0#;
      --  FIFO 1 Operation Mode
      F1OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXF1C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F1SA           at 0 range 2 .. 15;
      F1S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1WM           at 0 range 24 .. 30;
      F1OM           at 0 range 31 .. 31;
   end record;

   subtype MCAN0_RXF1S_F1FL_Field is HAL.UInt7;
   subtype MCAN0_RXF1S_F1GI_Field is HAL.UInt6;
   subtype MCAN0_RXF1S_F1PI_Field is HAL.UInt6;

   --  Debug Message Status
   type RXF1S_DMS_Field is
     (
      --  Idle state, wait for reception of debug messages, DMA request is
      --  cleared.
      Idle,
      --  Debug message A received.
      Msg_A,
      --  Debug messages A, B received.
      Msg_Ab,
      --  Debug messages A, B, C received, DMA request is set.
      Msg_Abc)
     with Size => 2;
   for RXF1S_DMS_Field use
     (Idle => 0,
      Msg_A => 1,
      Msg_Ab => 2,
      Msg_Abc => 3);

   --  Receive FIFO 1 Status Register
   type MCAN0_RXF1S_Register is record
      --  Read-only. Receive FIFO 1 Fill Level
      F1FL           : MCAN0_RXF1S_F1FL_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Receive FIFO 1 Get Index
      F1GI           : MCAN0_RXF1S_F1GI_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Receive FIFO 1 Put Index
      F1PI           : MCAN0_RXF1S_F1PI_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Receive FIFO 1 Fill Level
      F1F            : Boolean;
      --  Read-only. Receive FIFO 1 Message Lost
      RF1L           : Boolean;
      --  unspecified
      Reserved_26_29 : HAL.UInt4;
      --  Read-only. Debug Message Status
      DMS            : RXF1S_DMS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXF1S_Register use record
      F1FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F1GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F1PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DMS            at 0 range 30 .. 31;
   end record;

   subtype MCAN0_RXF1A_F1AI_Field is HAL.UInt6;

   --  Receive FIFO 1 Acknowledge Register
   type MCAN0_RXF1A_Register is record
      --  Receive FIFO 1 Acknowledge Index
      F1AI          : MCAN0_RXF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXF1A_Register use record
      F1AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Receive FIFO 0 Data Field Size
   type RXESC_F0DS_Field is
     (
      --  8-byte data field
      RXESC_F0DS_Field_8_Byte,
      --  12-byte data field
      RXESC_F0DS_Field_12_Byte,
      --  16-byte data field
      RXESC_F0DS_Field_16_Byte,
      --  20-byte data field
      RXESC_F0DS_Field_20_Byte,
      --  24-byte data field
      RXESC_F0DS_Field_24_Byte,
      --  32-byte data field
      RXESC_F0DS_Field_32_Byte,
      --  48-byte data field
      RXESC_F0DS_Field_48_Byte,
      --  64-byte data field
      RXESC_F0DS_Field_64_Byte)
     with Size => 3;
   for RXESC_F0DS_Field use
     (RXESC_F0DS_Field_8_Byte => 0,
      RXESC_F0DS_Field_12_Byte => 1,
      RXESC_F0DS_Field_16_Byte => 2,
      RXESC_F0DS_Field_20_Byte => 3,
      RXESC_F0DS_Field_24_Byte => 4,
      RXESC_F0DS_Field_32_Byte => 5,
      RXESC_F0DS_Field_48_Byte => 6,
      RXESC_F0DS_Field_64_Byte => 7);

   --  Receive FIFO 1 Data Field Size
   type RXESC_F1DS_Field is
     (
      --  8-byte data field
      RXESC_F1DS_Field_8_Byte,
      --  12-byte data field
      RXESC_F1DS_Field_12_Byte,
      --  16-byte data field
      RXESC_F1DS_Field_16_Byte,
      --  20-byte data field
      RXESC_F1DS_Field_20_Byte,
      --  24-byte data field
      RXESC_F1DS_Field_24_Byte,
      --  32-byte data field
      RXESC_F1DS_Field_32_Byte,
      --  48-byte data field
      RXESC_F1DS_Field_48_Byte,
      --  64-byte data field
      RXESC_F1DS_Field_64_Byte)
     with Size => 3;
   for RXESC_F1DS_Field use
     (RXESC_F1DS_Field_8_Byte => 0,
      RXESC_F1DS_Field_12_Byte => 1,
      RXESC_F1DS_Field_16_Byte => 2,
      RXESC_F1DS_Field_20_Byte => 3,
      RXESC_F1DS_Field_24_Byte => 4,
      RXESC_F1DS_Field_32_Byte => 5,
      RXESC_F1DS_Field_48_Byte => 6,
      RXESC_F1DS_Field_64_Byte => 7);

   --  Receive Buffer Data Field Size
   type RXESC_RBDS_Field is
     (
      --  8-byte data field
      RXESC_RBDS_Field_8_Byte,
      --  12-byte data field
      RXESC_RBDS_Field_12_Byte,
      --  16-byte data field
      RXESC_RBDS_Field_16_Byte,
      --  20-byte data field
      RXESC_RBDS_Field_20_Byte,
      --  24-byte data field
      RXESC_RBDS_Field_24_Byte,
      --  32-byte data field
      RXESC_RBDS_Field_32_Byte,
      --  48-byte data field
      RXESC_RBDS_Field_48_Byte,
      --  64-byte data field
      RXESC_RBDS_Field_64_Byte)
     with Size => 3;
   for RXESC_RBDS_Field use
     (RXESC_RBDS_Field_8_Byte => 0,
      RXESC_RBDS_Field_12_Byte => 1,
      RXESC_RBDS_Field_16_Byte => 2,
      RXESC_RBDS_Field_20_Byte => 3,
      RXESC_RBDS_Field_24_Byte => 4,
      RXESC_RBDS_Field_32_Byte => 5,
      RXESC_RBDS_Field_48_Byte => 6,
      RXESC_RBDS_Field_64_Byte => 7);

   --  Receive Buffer / FIFO Element Size Configuration Register
   type MCAN0_RXESC_Register is record
      --  Receive FIFO 0 Data Field Size
      F0DS           : RXESC_F0DS_Field :=
                        SAM_SVD.MCAN.RXESC_F0DS_Field_8_Byte;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Receive FIFO 1 Data Field Size
      F1DS           : RXESC_F1DS_Field :=
                        SAM_SVD.MCAN.RXESC_F1DS_Field_8_Byte;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Receive Buffer Data Field Size
      RBDS           : RXESC_RBDS_Field :=
                        SAM_SVD.MCAN.RXESC_RBDS_Field_8_Byte;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_RXESC_Register use record
      F0DS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      F1DS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RBDS           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MCAN0_TXBC_TBSA_Field is HAL.UInt14;
   subtype MCAN0_TXBC_NDTB_Field is HAL.UInt6;
   subtype MCAN0_TXBC_TFQS_Field is HAL.UInt6;

   --  Transmit Buffer Configuration Register
   type MCAN0_TXBC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Tx Buffers Start Address
      TBSA           : MCAN0_TXBC_TBSA_Field := 16#0#;
      --  Number of Dedicated Transmit Buffers
      NDTB           : MCAN0_TXBC_NDTB_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Transmit FIFO/Queue Size
      TFQS           : MCAN0_TXBC_TFQS_Field := 16#0#;
      --  Tx FIFO/Queue Mode
      TFQM           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TBSA           at 0 range 2 .. 15;
      NDTB           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFQS           at 0 range 24 .. 29;
      TFQM           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MCAN0_TXFQS_TFFL_Field is HAL.UInt6;
   subtype MCAN0_TXFQS_TFGI_Field is HAL.UInt5;
   subtype MCAN0_TXFQS_TFQPI_Field is HAL.UInt5;

   --  Transmit FIFO/Queue Status Register
   type MCAN0_TXFQS_Register is record
      --  Read-only. Tx FIFO Free Level
      TFFL           : MCAN0_TXFQS_TFFL_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Tx FIFO Get Index
      TFGI           : MCAN0_TXFQS_TFGI_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Tx FIFO/Queue Put Index
      TFQPI          : MCAN0_TXFQS_TFQPI_Field;
      --  Read-only. Tx FIFO/Queue Full
      TFQF           : Boolean;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXFQS_Register use record
      TFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TFQPI          at 0 range 16 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Tx Buffer Data Field Size
   type TXESC_TBDS_Field is
     (
      --  8-byte data field
      TXESC_TBDS_Field_8_Byte,
      --  12-byte data field
      TXESC_TBDS_Field_12_Byte,
      --  16-byte data field
      TXESC_TBDS_Field_16_Byte,
      --  20-byte data field
      TXESC_TBDS_Field_20_Byte,
      --  24-byte data field
      TXESC_TBDS_Field_24_Byte,
      --  32-byte data field
      TXESC_TBDS_Field_32_Byte,
      --  48- byte data field
      TXESC_TBDS_Field_48_Byte,
      --  64-byte data field
      TXESC_TBDS_Field_64_Byte)
     with Size => 3;
   for TXESC_TBDS_Field use
     (TXESC_TBDS_Field_8_Byte => 0,
      TXESC_TBDS_Field_12_Byte => 1,
      TXESC_TBDS_Field_16_Byte => 2,
      TXESC_TBDS_Field_20_Byte => 3,
      TXESC_TBDS_Field_24_Byte => 4,
      TXESC_TBDS_Field_32_Byte => 5,
      TXESC_TBDS_Field_48_Byte => 6,
      TXESC_TBDS_Field_64_Byte => 7);

   --  Transmit Buffer Element Size Configuration Register
   type MCAN0_TXESC_Register is record
      --  Tx Buffer Data Field Size
      TBDS          : TXESC_TBDS_Field :=
                       SAM_SVD.MCAN.TXESC_TBDS_Field_8_Byte;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXESC_Register use record
      TBDS          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  MCAN0_TXBRP_TRP array
   type MCAN0_TXBRP_TRP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Request Pending Register
   type MCAN0_TXBRP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRP as a value
            Val : HAL.UInt32;
         when True =>
            --  TRP as an array
            Arr : MCAN0_TXBRP_TRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBRP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_TXBAR_AR array
   type MCAN0_TXBAR_AR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Add Request Register
   type MCAN0_TXBAR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AR as a value
            Val : HAL.UInt32;
         when True =>
            --  AR as an array
            Arr : MCAN0_TXBAR_AR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBAR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_TXBCR_CR array
   type MCAN0_TXBCR_CR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Cancellation Request Register
   type MCAN0_TXBCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CR as a value
            Val : HAL.UInt32;
         when True =>
            --  CR as an array
            Arr : MCAN0_TXBCR_CR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_TXBTO_TO array
   type MCAN0_TXBTO_TO_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Transmission Occurred Register
   type MCAN0_TXBTO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TO as a value
            Val : HAL.UInt32;
         when True =>
            --  TO as an array
            Arr : MCAN0_TXBTO_TO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBTO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_TXBCF_CF array
   type MCAN0_TXBCF_CF_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Cancellation Finished Register
   type MCAN0_TXBCF_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CF as a value
            Val : HAL.UInt32;
         when True =>
            --  CF as an array
            Arr : MCAN0_TXBCF_CF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBCF_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_TXBTIE_TIE array
   type MCAN0_TXBTIE_TIE_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Transmission Interrupt Enable Register
   type MCAN0_TXBTIE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIE as a value
            Val : HAL.UInt32;
         when True =>
            --  TIE as an array
            Arr : MCAN0_TXBTIE_TIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBTIE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN0_TXBCIE_CFIE array
   type MCAN0_TXBCIE_CFIE_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Cancellation Finished Interrupt Enable Register
   type MCAN0_TXBCIE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFIE as a value
            Val : HAL.UInt32;
         when True =>
            --  CFIE as an array
            Arr : MCAN0_TXBCIE_CFIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXBCIE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MCAN0_TXEFC_EFSA_Field is HAL.UInt14;
   subtype MCAN0_TXEFC_EFS_Field is HAL.UInt6;
   subtype MCAN0_TXEFC_EFWM_Field is HAL.UInt6;

   --  Transmit Event FIFO Configuration Register
   type MCAN0_TXEFC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Event FIFO Start Address
      EFSA           : MCAN0_TXEFC_EFSA_Field := 16#0#;
      --  Event FIFO Size
      EFS            : MCAN0_TXEFC_EFS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Event FIFO Watermark
      EFWM           : MCAN0_TXEFC_EFWM_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXEFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EFSA           at 0 range 2 .. 15;
      EFS            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFWM           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MCAN0_TXEFS_EFFL_Field is HAL.UInt6;
   subtype MCAN0_TXEFS_EFGI_Field is HAL.UInt5;
   subtype MCAN0_TXEFS_EFPI_Field is HAL.UInt5;

   --  Transmit Event FIFO Status Register
   type MCAN0_TXEFS_Register is record
      --  Read-only. Event FIFO Fill Level
      EFFL           : MCAN0_TXEFS_EFFL_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Event FIFO Get Index
      EFGI           : MCAN0_TXEFS_EFGI_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Event FIFO Put Index
      EFPI           : MCAN0_TXEFS_EFPI_Field;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. Event FIFO Full
      EFF            : Boolean;
      --  Read-only. Tx Event FIFO Element Lost
      TEFL           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXEFS_Register use record
      EFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EFPI           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MCAN0_TXEFA_EFAI_Field is HAL.UInt5;

   --  Transmit Event FIFO Acknowledge Register
   type MCAN0_TXEFA_Register is record
      --  Event FIFO Acknowledge Index
      EFAI          : MCAN0_TXEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN0_TXEFA_Register use record
      EFAI          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Controller Area Network 0
   type MCAN_Peripheral is record
      --  Core Release Register
      CREL   : aliased MCAN0_CREL_Register;
      --  Endian Register
      ENDN   : aliased HAL.UInt32;
      --  Customer Register
      CUST   : aliased HAL.UInt32;
      --  Fast Bit Timing and Prescaler Register
      FBTP   : aliased MCAN0_FBTP_Register;
      --  Test Register
      TEST   : aliased MCAN0_TEST_Register;
      --  RAM Watchdog Register
      RWD    : aliased MCAN0_RWD_Register;
      --  CC Control Register
      CCCR   : aliased MCAN0_CCCR_Register;
      --  Bit Timing and Prescaler Register
      BTP    : aliased MCAN0_BTP_Register;
      --  Timestamp Counter Configuration Register
      TSCC   : aliased MCAN0_TSCC_Register;
      --  Timestamp Counter Value Register
      TSCV   : aliased MCAN0_TSCV_Register;
      --  Timeout Counter Configuration Register
      TOCC   : aliased MCAN0_TOCC_Register;
      --  Timeout Counter Value Register
      TOCV   : aliased MCAN0_TOCV_Register;
      --  Error Counter Register
      ECR    : aliased MCAN0_ECR_Register;
      --  Protocol Status Register
      PSR    : aliased MCAN0_PSR_Register;
      --  Interrupt Register
      IR     : aliased MCAN0_IR_Register;
      --  Interrupt Enable Register
      IE     : aliased MCAN0_IE_Register;
      --  Interrupt Line Select Register
      ILS    : aliased MCAN0_ILS_Register;
      --  Interrupt Line Enable Register
      ILE    : aliased MCAN0_ILE_Register;
      --  Global Filter Configuration Register
      GFC    : aliased MCAN0_GFC_Register;
      --  Standard ID Filter Configuration Register
      SIDFC  : aliased MCAN0_SIDFC_Register;
      --  Extended ID Filter Configuration Register
      XIDFC  : aliased MCAN0_XIDFC_Register;
      --  Extended ID AND Mask Register
      XIDAM  : aliased MCAN0_XIDAM_Register;
      --  High Priority Message Status Register
      HPMS   : aliased MCAN0_HPMS_Register;
      --  New Data 1 Register
      NDAT1  : aliased MCAN0_NDAT1_Register;
      --  New Data 2 Register
      NDAT2  : aliased MCAN0_NDAT2_Register;
      --  Receive FIFO 0 Configuration Register
      RXF0C  : aliased MCAN0_RXF0C_Register;
      --  Receive FIFO 0 Status Register
      RXF0S  : aliased MCAN0_RXF0S_Register;
      --  Receive FIFO 0 Acknowledge Register
      RXF0A  : aliased MCAN0_RXF0A_Register;
      --  Receive Rx Buffer Configuration Register
      RXBC   : aliased MCAN0_RXBC_Register;
      --  Receive FIFO 1 Configuration Register
      RXF1C  : aliased MCAN0_RXF1C_Register;
      --  Receive FIFO 1 Status Register
      RXF1S  : aliased MCAN0_RXF1S_Register;
      --  Receive FIFO 1 Acknowledge Register
      RXF1A  : aliased MCAN0_RXF1A_Register;
      --  Receive Buffer / FIFO Element Size Configuration Register
      RXESC  : aliased MCAN0_RXESC_Register;
      --  Transmit Buffer Configuration Register
      TXBC   : aliased MCAN0_TXBC_Register;
      --  Transmit FIFO/Queue Status Register
      TXFQS  : aliased MCAN0_TXFQS_Register;
      --  Transmit Buffer Element Size Configuration Register
      TXESC  : aliased MCAN0_TXESC_Register;
      --  Transmit Buffer Request Pending Register
      TXBRP  : aliased MCAN0_TXBRP_Register;
      --  Transmit Buffer Add Request Register
      TXBAR  : aliased MCAN0_TXBAR_Register;
      --  Transmit Buffer Cancellation Request Register
      TXBCR  : aliased MCAN0_TXBCR_Register;
      --  Transmit Buffer Transmission Occurred Register
      TXBTO  : aliased MCAN0_TXBTO_Register;
      --  Transmit Buffer Cancellation Finished Register
      TXBCF  : aliased MCAN0_TXBCF_Register;
      --  Transmit Buffer Transmission Interrupt Enable Register
      TXBTIE : aliased MCAN0_TXBTIE_Register;
      --  Transmit Buffer Cancellation Finished Interrupt Enable Register
      TXBCIE : aliased MCAN0_TXBCIE_Register;
      --  Transmit Event FIFO Configuration Register
      TXEFC  : aliased MCAN0_TXEFC_Register;
      --  Transmit Event FIFO Status Register
      TXEFS  : aliased MCAN0_TXEFS_Register;
      --  Transmit Event FIFO Acknowledge Register
      TXEFA  : aliased MCAN0_TXEFA_Register;
   end record
     with Volatile;

   for MCAN_Peripheral use record
      CREL   at 16#0# range 0 .. 31;
      ENDN   at 16#4# range 0 .. 31;
      CUST   at 16#8# range 0 .. 31;
      FBTP   at 16#C# range 0 .. 31;
      TEST   at 16#10# range 0 .. 31;
      RWD    at 16#14# range 0 .. 31;
      CCCR   at 16#18# range 0 .. 31;
      BTP    at 16#1C# range 0 .. 31;
      TSCC   at 16#20# range 0 .. 31;
      TSCV   at 16#24# range 0 .. 31;
      TOCC   at 16#28# range 0 .. 31;
      TOCV   at 16#2C# range 0 .. 31;
      ECR    at 16#40# range 0 .. 31;
      PSR    at 16#44# range 0 .. 31;
      IR     at 16#50# range 0 .. 31;
      IE     at 16#54# range 0 .. 31;
      ILS    at 16#58# range 0 .. 31;
      ILE    at 16#5C# range 0 .. 31;
      GFC    at 16#80# range 0 .. 31;
      SIDFC  at 16#84# range 0 .. 31;
      XIDFC  at 16#88# range 0 .. 31;
      XIDAM  at 16#90# range 0 .. 31;
      HPMS   at 16#94# range 0 .. 31;
      NDAT1  at 16#98# range 0 .. 31;
      NDAT2  at 16#9C# range 0 .. 31;
      RXF0C  at 16#A0# range 0 .. 31;
      RXF0S  at 16#A4# range 0 .. 31;
      RXF0A  at 16#A8# range 0 .. 31;
      RXBC   at 16#AC# range 0 .. 31;
      RXF1C  at 16#B0# range 0 .. 31;
      RXF1S  at 16#B4# range 0 .. 31;
      RXF1A  at 16#B8# range 0 .. 31;
      RXESC  at 16#BC# range 0 .. 31;
      TXBC   at 16#C0# range 0 .. 31;
      TXFQS  at 16#C4# range 0 .. 31;
      TXESC  at 16#C8# range 0 .. 31;
      TXBRP  at 16#CC# range 0 .. 31;
      TXBAR  at 16#D0# range 0 .. 31;
      TXBCR  at 16#D4# range 0 .. 31;
      TXBTO  at 16#D8# range 0 .. 31;
      TXBCF  at 16#DC# range 0 .. 31;
      TXBTIE at 16#E0# range 0 .. 31;
      TXBCIE at 16#E4# range 0 .. 31;
      TXEFC  at 16#F0# range 0 .. 31;
      TXEFS  at 16#F4# range 0 .. 31;
      TXEFA  at 16#F8# range 0 .. 31;
   end record;

   --  Controller Area Network 0
   MCAN0_Periph : aliased MCAN_Peripheral
     with Import, Address => System'To_Address (16#40030000#);

   --  Controller Area Network 1
   MCAN1_Periph : aliased MCAN_Peripheral
     with Import, Address => System'To_Address (16#40034000#);

end SAM_SVD.MCAN;
