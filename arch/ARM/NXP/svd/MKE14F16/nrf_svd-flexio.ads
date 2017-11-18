--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLEXIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Specification Number
   type VERID_FEATURE_Field is
     (
      --  Standard features implemented.
      Feature_0,
      --  Supports state, logic and parallel modes.
      Feature_1)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_0 => 0,
      Feature_1 => 1);

   subtype FLEXIO_VERID_MINOR_Field is HAL.UInt8;
   subtype FLEXIO_VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type FLEXIO_VERID_Register is record
      --  Read-only. Feature Specification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : FLEXIO_VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : FLEXIO_VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   subtype FLEXIO_PARAM_SHIFTER_Field is HAL.UInt8;
   subtype FLEXIO_PARAM_TIMER_Field is HAL.UInt8;
   subtype FLEXIO_PARAM_PIN_Field is HAL.UInt8;
   subtype FLEXIO_PARAM_TRIGGER_Field is HAL.UInt8;

   --  Parameter Register
   type FLEXIO_PARAM_Register is record
      --  Read-only. Shifter Number
      SHIFTER : FLEXIO_PARAM_SHIFTER_Field;
      --  Read-only. Timer Number
      TIMER   : FLEXIO_PARAM_TIMER_Field;
      --  Read-only. Pin Number
      PIN     : FLEXIO_PARAM_PIN_Field;
      --  Read-only. Trigger Number
      TRIGGER : FLEXIO_PARAM_TRIGGER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_PARAM_Register use record
      SHIFTER at 0 range 0 .. 7;
      TIMER   at 0 range 8 .. 15;
      PIN     at 0 range 16 .. 23;
      TRIGGER at 0 range 24 .. 31;
   end record;

   --  FlexIO Enable
   type CTRL_FLEXEN_Field is
     (
      --  FlexIO module is disabled.
      Flexen_0,
      --  FlexIO module is enabled.
      Flexen_1)
     with Size => 1;
   for CTRL_FLEXEN_Field use
     (Flexen_0 => 0,
      Flexen_1 => 1);

   --  Software Reset
   type CTRL_SWRST_Field is
     (
      --  Software reset is disabled
      Swrst_0,
      --  Software reset is enabled, all FlexIO registers except the Control
      --  Register are reset.
      Swrst_1)
     with Size => 1;
   for CTRL_SWRST_Field use
     (Swrst_0 => 0,
      Swrst_1 => 1);

   --  Fast Access
   type CTRL_FASTACC_Field is
     (
      --  Configures for normal register accesses to FlexIO
      Fastacc_0,
      --  Configures for fast register accesses to FlexIO
      Fastacc_1)
     with Size => 1;
   for CTRL_FASTACC_Field use
     (Fastacc_0 => 0,
      Fastacc_1 => 1);

   --  Debug Enable
   type CTRL_DBGE_Field is
     (
      --  FlexIO is disabled in debug modes.
      Dbge_0,
      --  FlexIO is enabled in debug modes
      Dbge_1)
     with Size => 1;
   for CTRL_DBGE_Field use
     (Dbge_0 => 0,
      Dbge_1 => 1);

   --  Doze Enable
   type CTRL_DOZEN_Field is
     (
      --  FlexIO enabled in Doze modes.
      Dozen_0,
      --  FlexIO disabled in Doze modes.
      Dozen_1)
     with Size => 1;
   for CTRL_DOZEN_Field use
     (Dozen_0 => 0,
      Dozen_1 => 1);

   --  FlexIO Control Register
   type FLEXIO_CTRL_Register is record
      --  FlexIO Enable
      FLEXEN        : CTRL_FLEXEN_Field := NRF_SVD.FLEXIO.Flexen_0;
      --  Software Reset
      SWRST         : CTRL_SWRST_Field := NRF_SVD.FLEXIO.Swrst_0;
      --  Fast Access
      FASTACC       : CTRL_FASTACC_Field := NRF_SVD.FLEXIO.Fastacc_0;
      --  unspecified
      Reserved_3_29 : HAL.UInt27 := 16#0#;
      --  Debug Enable
      DBGE          : CTRL_DBGE_Field := NRF_SVD.FLEXIO.Dbge_0;
      --  Doze Enable
      DOZEN         : CTRL_DOZEN_Field := NRF_SVD.FLEXIO.Dozen_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_CTRL_Register use record
      FLEXEN        at 0 range 0 .. 0;
      SWRST         at 0 range 1 .. 1;
      FASTACC       at 0 range 2 .. 2;
      Reserved_3_29 at 0 range 3 .. 29;
      DBGE          at 0 range 30 .. 30;
      DOZEN         at 0 range 31 .. 31;
   end record;

   subtype FLEXIO_PIN_PDI_Field is HAL.UInt8;

   --  Pin State Register
   type FLEXIO_PIN_Register is record
      --  Read-only. Pin Data Input
      PDI           : FLEXIO_PIN_PDI_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_PIN_Register use record
      PDI           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Shifter Status Flag
   type SHIFTSTAT_SSF_Field is
     (
      --  Status flag is clear
      Ssf_0,
      --  Status flag is set
      Ssf_1)
     with Size => 4;
   for SHIFTSTAT_SSF_Field use
     (Ssf_0 => 0,
      Ssf_1 => 1);

   --  Shifter Status Register
   type FLEXIO_SHIFTSTAT_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Shifter Status Flag
      SSF           : SHIFTSTAT_SSF_Field := NRF_SVD.FLEXIO.Ssf_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTSTAT_Register use record
      SSF           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Shifter Error Flags
   type SHIFTERR_SEF_Field is
     (
      --  Shifter Error Flag is clear
      Sef_0,
      --  Shifter Error Flag is set
      Sef_1)
     with Size => 4;
   for SHIFTERR_SEF_Field use
     (Sef_0 => 0,
      Sef_1 => 1);

   --  Shifter Error Register
   type FLEXIO_SHIFTERR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Shifter Error Flags
      SEF           : SHIFTERR_SEF_Field := NRF_SVD.FLEXIO.Sef_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTERR_Register use record
      SEF           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Timer Status Flags
   type TIMSTAT_TSF_Field is
     (
      --  Timer Status Flag is clear
      Tsf_0,
      --  Timer Status Flag is set
      Tsf_1)
     with Size => 4;
   for TIMSTAT_TSF_Field use
     (Tsf_0 => 0,
      Tsf_1 => 1);

   --  Timer Status Register
   type FLEXIO_TIMSTAT_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Timer Status Flags
      TSF           : TIMSTAT_TSF_Field := NRF_SVD.FLEXIO.Tsf_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_TIMSTAT_Register use record
      TSF           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Shifter Status Interrupt Enable
   type SHIFTSIEN_SSIE_Field is
     (
      --  Shifter Status Flag interrupt disabled
      Ssie_0,
      --  Shifter Status Flag interrupt enabled
      Ssie_1)
     with Size => 4;
   for SHIFTSIEN_SSIE_Field use
     (Ssie_0 => 0,
      Ssie_1 => 1);

   --  Shifter Status Interrupt Enable
   type FLEXIO_SHIFTSIEN_Register is record
      --  Shifter Status Interrupt Enable
      SSIE          : SHIFTSIEN_SSIE_Field := NRF_SVD.FLEXIO.Ssie_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTSIEN_Register use record
      SSIE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Shifter Error Interrupt Enable
   type SHIFTEIEN_SEIE_Field is
     (
      --  Shifter Error Flag interrupt disabled
      Seie_0,
      --  Shifter Error Flag interrupt enabled
      Seie_1)
     with Size => 4;
   for SHIFTEIEN_SEIE_Field use
     (Seie_0 => 0,
      Seie_1 => 1);

   --  Shifter Error Interrupt Enable
   type FLEXIO_SHIFTEIEN_Register is record
      --  Shifter Error Interrupt Enable
      SEIE          : SHIFTEIEN_SEIE_Field := NRF_SVD.FLEXIO.Seie_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTEIEN_Register use record
      SEIE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Timer Status Interrupt Enable
   type TIMIEN_TEIE_Field is
     (
      --  Timer Status Flag interrupt is disabled
      Teie_0,
      --  Timer Status Flag interrupt is enabled
      Teie_1)
     with Size => 4;
   for TIMIEN_TEIE_Field use
     (Teie_0 => 0,
      Teie_1 => 1);

   --  Timer Interrupt Enable Register
   type FLEXIO_TIMIEN_Register is record
      --  Timer Status Interrupt Enable
      TEIE          : TIMIEN_TEIE_Field := NRF_SVD.FLEXIO.Teie_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_TIMIEN_Register use record
      TEIE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Shifter Status DMA Enable
   type SHIFTSDEN_SSDE_Field is
     (
      --  Shifter Status Flag DMA request is disabled
      Ssde_0,
      --  Shifter Status Flag DMA request is enabled
      Ssde_1)
     with Size => 4;
   for SHIFTSDEN_SSDE_Field use
     (Ssde_0 => 0,
      Ssde_1 => 1);

   --  Shifter Status DMA Enable
   type FLEXIO_SHIFTSDEN_Register is record
      --  Shifter Status DMA Enable
      SSDE          : SHIFTSDEN_SSDE_Field := NRF_SVD.FLEXIO.Ssde_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTSDEN_Register use record
      SSDE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Shifter Mode
   type SHIFTCTL_SMOD_Field is
     (
      --  Disabled.
      Smod_0,
      --  Receive mode. Captures the current Shifter content into the SHIFTBUF
      --  on expiration of the Timer.
      Smod_1,
      --  Transmit mode. Load SHIFTBUF contents into the Shifter on expiration
      --  of the Timer.
      Smod_2,
      --  Match Store mode. Shifter data is compared to SHIFTBUF content on
      --  expiration of the Timer.
      Smod_4,
      --  Match Continuous mode. Shifter data is continuously compared to
      --  SHIFTBUF contents.
      Smod_5)
     with Size => 3;
   for SHIFTCTL_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_4 => 4,
      Smod_5 => 5);

   --  Shifter Pin Polarity
   type SHIFTCTL_PINPOL_Field is
     (
      --  Pin is active high
      Pinpol_0,
      --  Pin is active low
      Pinpol_1)
     with Size => 1;
   for SHIFTCTL_PINPOL_Field use
     (Pinpol_0 => 0,
      Pinpol_1 => 1);

   subtype FLEXIO_SHIFTCTL_PINSEL_Field is HAL.UInt3;

   --  Shifter Pin Configuration
   type SHIFTCTL_PINCFG_Field is
     (
      --  Shifter pin output disabled
      Pincfg_0,
      --  Shifter pin open drain or bidirectional output enable
      Pincfg_1,
      --  Shifter pin bidirectional output data
      Pincfg_2,
      --  Shifter pin output
      Pincfg_3)
     with Size => 2;
   for SHIFTCTL_PINCFG_Field use
     (Pincfg_0 => 0,
      Pincfg_1 => 1,
      Pincfg_2 => 2,
      Pincfg_3 => 3);

   --  Timer Polarity
   type SHIFTCTL_TIMPOL_Field is
     (
      --  Shift on posedge of Shift clock
      Timpol_0,
      --  Shift on negedge of Shift clock
      Timpol_1)
     with Size => 1;
   for SHIFTCTL_TIMPOL_Field use
     (Timpol_0 => 0,
      Timpol_1 => 1);

   subtype FLEXIO_SHIFTCTL_TIMSEL_Field is HAL.UInt2;

   --  Shifter Control N Register
   type FLEXIO_SHIFTCTL_Register is record
      --  Shifter Mode
      SMOD           : SHIFTCTL_SMOD_Field := NRF_SVD.FLEXIO.Smod_0;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Shifter Pin Polarity
      PINPOL         : SHIFTCTL_PINPOL_Field := NRF_SVD.FLEXIO.Pinpol_0;
      --  Shifter Pin Select
      PINSEL         : FLEXIO_SHIFTCTL_PINSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Shifter Pin Configuration
      PINCFG         : SHIFTCTL_PINCFG_Field := NRF_SVD.FLEXIO.Pincfg_0;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Timer Polarity
      TIMPOL         : SHIFTCTL_TIMPOL_Field := NRF_SVD.FLEXIO.Timpol_0;
      --  Timer Select
      TIMSEL         : FLEXIO_SHIFTCTL_TIMSEL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTCTL_Register use record
      SMOD           at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      PINPOL         at 0 range 7 .. 7;
      PINSEL         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PINCFG         at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      TIMPOL         at 0 range 23 .. 23;
      TIMSEL         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Shifter Control N Register
   type FLEXIO_SHIFTCTL_Registers is array (0 .. 3)
     of FLEXIO_SHIFTCTL_Register
     with Volatile;

   --  Shifter Start bit
   type SHIFTCFG_SSTART_Field is
     (
      --  Start bit disabled for transmitter/receiver/match store, transmitter
      --  loads data on enable
      Sstart_0,
      --  Start bit disabled for transmitter/receiver/match store, transmitter
      --  loads data on first shift
      Sstart_1,
      --  Transmitter outputs start bit value 0 before loading data on first
      --  shift, receiver/match store sets error flag if start bit is not 0
      Sstart_2,
      --  Transmitter outputs start bit value 1 before loading data on first
      --  shift, receiver/match store sets error flag if start bit is not 1
      Sstart_3)
     with Size => 2;
   for SHIFTCFG_SSTART_Field use
     (Sstart_0 => 0,
      Sstart_1 => 1,
      Sstart_2 => 2,
      Sstart_3 => 3);

   --  Shifter Stop bit
   type SHIFTCFG_SSTOP_Field is
     (
      --  Stop bit disabled for transmitter/receiver/match store
      Sstop_0,
      --  Transmitter outputs stop bit value 0 on store, receiver/match store
      --  sets error flag if stop bit is not 0
      Sstop_2,
      --  Transmitter outputs stop bit value 1 on store, receiver/match store
      --  sets error flag if stop bit is not 1
      Sstop_3)
     with Size => 2;
   for SHIFTCFG_SSTOP_Field use
     (Sstop_0 => 0,
      Sstop_2 => 2,
      Sstop_3 => 3);

   --  Input Source
   type SHIFTCFG_INSRC_Field is
     (
      --  Pin
      Insrc_0,
      --  Shifter N+1 Output
      Insrc_1)
     with Size => 1;
   for SHIFTCFG_INSRC_Field use
     (Insrc_0 => 0,
      Insrc_1 => 1);

   --  Shifter Configuration N Register
   type FLEXIO_SHIFTCFG_Register is record
      --  Shifter Start bit
      SSTART        : SHIFTCFG_SSTART_Field := NRF_SVD.FLEXIO.Sstart_0;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Shifter Stop bit
      SSTOP         : SHIFTCFG_SSTOP_Field := NRF_SVD.FLEXIO.Sstop_0;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Input Source
      INSRC         : SHIFTCFG_INSRC_Field := NRF_SVD.FLEXIO.Insrc_0;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_SHIFTCFG_Register use record
      SSTART        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SSTOP         at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      INSRC         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Shifter Configuration N Register
   type FLEXIO_SHIFTCFG_Registers is array (0 .. 3)
     of FLEXIO_SHIFTCFG_Register
     with Volatile;

   --  Shifter Buffer N Register

   --  Shifter Buffer N Register
   type FLEXIO_SHIFTBUF_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Bit Swapped Register

   --  Shifter Buffer N Bit Swapped Register
   type FLEXIO_SHIFTBUFBIS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Byte Swapped Register

   --  Shifter Buffer N Byte Swapped Register
   type FLEXIO_SHIFTBUFBYS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Bit Byte Swapped Register

   --  Shifter Buffer N Bit Byte Swapped Register
   type FLEXIO_SHIFTBUFBBS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Timer Mode
   type TIMCTL_TIMOD_Field is
     (
      --  Timer Disabled.
      Timod_0,
      --  Dual 8-bit counters baud/bit mode.
      Timod_1,
      --  Dual 8-bit counters PWM mode.
      Timod_2,
      --  Single 16-bit counter mode.
      Timod_3)
     with Size => 2;
   for TIMCTL_TIMOD_Field use
     (Timod_0 => 0,
      Timod_1 => 1,
      Timod_2 => 2,
      Timod_3 => 3);

   --  Timer Pin Polarity
   type TIMCTL_PINPOL_Field is
     (
      --  Pin is active high
      Pinpol_0,
      --  Pin is active low
      Pinpol_1)
     with Size => 1;
   for TIMCTL_PINPOL_Field use
     (Pinpol_0 => 0,
      Pinpol_1 => 1);

   subtype FLEXIO_TIMCTL_PINSEL_Field is HAL.UInt3;

   --  Timer Pin Configuration
   type TIMCTL_PINCFG_Field is
     (
      --  Timer pin output disabled
      Pincfg_0,
      --  Timer pin open drain or bidirectional output enable
      Pincfg_1,
      --  Timer pin bidirectional output data
      Pincfg_2,
      --  Timer pin output
      Pincfg_3)
     with Size => 2;
   for TIMCTL_PINCFG_Field use
     (Pincfg_0 => 0,
      Pincfg_1 => 1,
      Pincfg_2 => 2,
      Pincfg_3 => 3);

   --  Trigger Source
   type TIMCTL_TRGSRC_Field is
     (
      --  External trigger selected
      Trgsrc_0,
      --  Internal trigger selected
      Trgsrc_1)
     with Size => 1;
   for TIMCTL_TRGSRC_Field use
     (Trgsrc_0 => 0,
      Trgsrc_1 => 1);

   --  Trigger Polarity
   type TIMCTL_TRGPOL_Field is
     (
      --  Trigger active high
      Trgpol_0,
      --  Trigger active low
      Trgpol_1)
     with Size => 1;
   for TIMCTL_TRGPOL_Field use
     (Trgpol_0 => 0,
      Trgpol_1 => 1);

   subtype FLEXIO_TIMCTL_TRGSEL_Field is HAL.UInt4;

   --  Timer Control N Register
   type FLEXIO_TIMCTL_Register is record
      --  Timer Mode
      TIMOD          : TIMCTL_TIMOD_Field := NRF_SVD.FLEXIO.Timod_0;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  Timer Pin Polarity
      PINPOL         : TIMCTL_PINPOL_Field := NRF_SVD.FLEXIO.Pinpol_0;
      --  Timer Pin Select
      PINSEL         : FLEXIO_TIMCTL_PINSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Timer Pin Configuration
      PINCFG         : TIMCTL_PINCFG_Field := NRF_SVD.FLEXIO.Pincfg_0;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Trigger Source
      TRGSRC         : TIMCTL_TRGSRC_Field := NRF_SVD.FLEXIO.Trgsrc_0;
      --  Trigger Polarity
      TRGPOL         : TIMCTL_TRGPOL_Field := NRF_SVD.FLEXIO.Trgpol_0;
      --  Trigger Select
      TRGSEL         : FLEXIO_TIMCTL_TRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_TIMCTL_Register use record
      TIMOD          at 0 range 0 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      PINPOL         at 0 range 7 .. 7;
      PINSEL         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PINCFG         at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      TRGSRC         at 0 range 22 .. 22;
      TRGPOL         at 0 range 23 .. 23;
      TRGSEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Timer Control N Register
   type FLEXIO_TIMCTL_Registers is array (0 .. 3) of FLEXIO_TIMCTL_Register
     with Volatile;

   --  Timer Start Bit
   type TIMCFG_TSTART_Field is
     (
      --  Start bit disabled
      Tstart_0,
      --  Start bit enabled
      Tstart_1)
     with Size => 1;
   for TIMCFG_TSTART_Field use
     (Tstart_0 => 0,
      Tstart_1 => 1);

   --  Timer Stop Bit
   type TIMCFG_TSTOP_Field is
     (
      --  Stop bit disabled
      Tstop_0,
      --  Stop bit is enabled on timer compare
      Tstop_1,
      --  Stop bit is enabled on timer disable
      Tstop_2,
      --  Stop bit is enabled on timer compare and timer disable
      Tstop_3)
     with Size => 2;
   for TIMCFG_TSTOP_Field use
     (Tstop_0 => 0,
      Tstop_1 => 1,
      Tstop_2 => 2,
      Tstop_3 => 3);

   --  Timer Enable
   type TIMCFG_TIMENA_Field is
     (
      --  Timer always enabled
      Timena_0,
      --  Timer enabled on Timer N-1 enable
      Timena_1,
      --  Timer enabled on Trigger high
      Timena_2,
      --  Timer enabled on Trigger high and Pin high
      Timena_3,
      --  Timer enabled on Pin rising edge
      Timena_4,
      --  Timer enabled on Pin rising edge and Trigger high
      Timena_5,
      --  Timer enabled on Trigger rising edge
      Timena_6,
      --  Timer enabled on Trigger rising or falling edge
      Timena_7)
     with Size => 3;
   for TIMCFG_TIMENA_Field use
     (Timena_0 => 0,
      Timena_1 => 1,
      Timena_2 => 2,
      Timena_3 => 3,
      Timena_4 => 4,
      Timena_5 => 5,
      Timena_6 => 6,
      Timena_7 => 7);

   --  Timer Disable
   type TIMCFG_TIMDIS_Field is
     (
      --  Timer never disabled
      Timdis_0,
      --  Timer disabled on Timer N-1 disable
      Timdis_1,
      --  Timer disabled on Timer compare
      Timdis_2,
      --  Timer disabled on Timer compare and Trigger Low
      Timdis_3,
      --  Timer disabled on Pin rising or falling edge
      Timdis_4,
      --  Timer disabled on Pin rising or falling edge provided Trigger is high
      Timdis_5,
      --  Timer disabled on Trigger falling edge
      Timdis_6)
     with Size => 3;
   for TIMCFG_TIMDIS_Field use
     (Timdis_0 => 0,
      Timdis_1 => 1,
      Timdis_2 => 2,
      Timdis_3 => 3,
      Timdis_4 => 4,
      Timdis_5 => 5,
      Timdis_6 => 6);

   --  Timer Reset
   type TIMCFG_TIMRST_Field is
     (
      --  Timer never reset
      Timrst_0,
      --  Timer reset on Timer Pin equal to Timer Output
      Timrst_2,
      --  Timer reset on Timer Trigger equal to Timer Output
      Timrst_3,
      --  Timer reset on Timer Pin rising edge
      Timrst_4,
      --  Timer reset on Trigger rising edge
      Timrst_6,
      --  Timer reset on Trigger rising or falling edge
      Timrst_7)
     with Size => 3;
   for TIMCFG_TIMRST_Field use
     (Timrst_0 => 0,
      Timrst_2 => 2,
      Timrst_3 => 3,
      Timrst_4 => 4,
      Timrst_6 => 6,
      Timrst_7 => 7);

   --  Timer Decrement
   type TIMCFG_TIMDEC_Field is
     (
      --  Decrement counter on FlexIO clock, Shift clock equals Timer output.
      Timdec_0,
      --  Decrement counter on Trigger input (both edges), Shift clock equals
      --  Timer output.
      Timdec_1,
      --  Decrement counter on Pin input (both edges), Shift clock equals Pin
      --  input.
      Timdec_2,
      --  Decrement counter on Trigger input (both edges), Shift clock equals
      --  Trigger input.
      Timdec_3)
     with Size => 2;
   for TIMCFG_TIMDEC_Field use
     (Timdec_0 => 0,
      Timdec_1 => 1,
      Timdec_2 => 2,
      Timdec_3 => 3);

   --  Timer Output
   type TIMCFG_TIMOUT_Field is
     (
      --  Timer output is logic one when enabled and is not affected by timer
      --  reset
      Timout_0,
      --  Timer output is logic zero when enabled and is not affected by timer
      --  reset
      Timout_1,
      --  Timer output is logic one when enabled and on timer reset
      Timout_2,
      --  Timer output is logic zero when enabled and on timer reset
      Timout_3)
     with Size => 2;
   for TIMCFG_TIMOUT_Field use
     (Timout_0 => 0,
      Timout_1 => 1,
      Timout_2 => 2,
      Timout_3 => 3);

   --  Timer Configuration N Register
   type FLEXIO_TIMCFG_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Timer Start Bit
      TSTART         : TIMCFG_TSTART_Field := NRF_SVD.FLEXIO.Tstart_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Timer Stop Bit
      TSTOP          : TIMCFG_TSTOP_Field := NRF_SVD.FLEXIO.Tstop_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Timer Enable
      TIMENA         : TIMCFG_TIMENA_Field := NRF_SVD.FLEXIO.Timena_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Timer Disable
      TIMDIS         : TIMCFG_TIMDIS_Field := NRF_SVD.FLEXIO.Timdis_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Timer Reset
      TIMRST         : TIMCFG_TIMRST_Field := NRF_SVD.FLEXIO.Timrst_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Timer Decrement
      TIMDEC         : TIMCFG_TIMDEC_Field := NRF_SVD.FLEXIO.Timdec_0;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Timer Output
      TIMOUT         : TIMCFG_TIMOUT_Field := NRF_SVD.FLEXIO.Timout_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_TIMCFG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TSTART         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TSTOP          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TIMENA         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TIMDIS         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIMRST         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TIMDEC         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TIMOUT         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Timer Configuration N Register
   type FLEXIO_TIMCFG_Registers is array (0 .. 3) of FLEXIO_TIMCFG_Register
     with Volatile;

   subtype FLEXIO_TIMCMP_CMP_Field is HAL.UInt16;

   --  Timer Compare N Register
   type FLEXIO_TIMCMP_Register is record
      --  Timer Compare Value
      CMP            : FLEXIO_TIMCMP_CMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXIO_TIMCMP_Register use record
      CMP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timer Compare N Register
   type FLEXIO_TIMCMP_Registers is array (0 .. 3) of FLEXIO_TIMCMP_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible I/O - universal I/O module for communication (UART, SPI, I2C,
   --  I2S) and PWM purposes.
   type FLEXIO_Peripheral is record
      --  Version ID Register
      VERID       : aliased FLEXIO_VERID_Register;
      --  Parameter Register
      PARAM       : aliased FLEXIO_PARAM_Register;
      --  FlexIO Control Register
      CTRL        : aliased FLEXIO_CTRL_Register;
      --  Pin State Register
      PIN         : aliased FLEXIO_PIN_Register;
      --  Shifter Status Register
      SHIFTSTAT   : aliased FLEXIO_SHIFTSTAT_Register;
      --  Shifter Error Register
      SHIFTERR    : aliased FLEXIO_SHIFTERR_Register;
      --  Timer Status Register
      TIMSTAT     : aliased FLEXIO_TIMSTAT_Register;
      --  Shifter Status Interrupt Enable
      SHIFTSIEN   : aliased FLEXIO_SHIFTSIEN_Register;
      --  Shifter Error Interrupt Enable
      SHIFTEIEN   : aliased FLEXIO_SHIFTEIEN_Register;
      --  Timer Interrupt Enable Register
      TIMIEN      : aliased FLEXIO_TIMIEN_Register;
      --  Shifter Status DMA Enable
      SHIFTSDEN   : aliased FLEXIO_SHIFTSDEN_Register;
      --  Shifter Control N Register
      SHIFTCTL    : aliased FLEXIO_SHIFTCTL_Registers;
      --  Shifter Configuration N Register
      SHIFTCFG    : aliased FLEXIO_SHIFTCFG_Registers;
      --  Shifter Buffer N Register
      SHIFTBUF    : aliased FLEXIO_SHIFTBUF_Registers;
      --  Shifter Buffer N Bit Swapped Register
      SHIFTBUFBIS : aliased FLEXIO_SHIFTBUFBIS_Registers;
      --  Shifter Buffer N Byte Swapped Register
      SHIFTBUFBYS : aliased FLEXIO_SHIFTBUFBYS_Registers;
      --  Shifter Buffer N Bit Byte Swapped Register
      SHIFTBUFBBS : aliased FLEXIO_SHIFTBUFBBS_Registers;
      --  Timer Control N Register
      TIMCTL      : aliased FLEXIO_TIMCTL_Registers;
      --  Timer Configuration N Register
      TIMCFG      : aliased FLEXIO_TIMCFG_Registers;
      --  Timer Compare N Register
      TIMCMP      : aliased FLEXIO_TIMCMP_Registers;
   end record
     with Volatile;

   for FLEXIO_Peripheral use record
      VERID       at 16#0# range 0 .. 31;
      PARAM       at 16#4# range 0 .. 31;
      CTRL        at 16#8# range 0 .. 31;
      PIN         at 16#C# range 0 .. 31;
      SHIFTSTAT   at 16#10# range 0 .. 31;
      SHIFTERR    at 16#14# range 0 .. 31;
      TIMSTAT     at 16#18# range 0 .. 31;
      SHIFTSIEN   at 16#20# range 0 .. 31;
      SHIFTEIEN   at 16#24# range 0 .. 31;
      TIMIEN      at 16#28# range 0 .. 31;
      SHIFTSDEN   at 16#30# range 0 .. 31;
      SHIFTCTL    at 16#80# range 0 .. 127;
      SHIFTCFG    at 16#100# range 0 .. 127;
      SHIFTBUF    at 16#200# range 0 .. 127;
      SHIFTBUFBIS at 16#280# range 0 .. 127;
      SHIFTBUFBYS at 16#300# range 0 .. 127;
      SHIFTBUFBBS at 16#380# range 0 .. 127;
      TIMCTL      at 16#400# range 0 .. 127;
      TIMCFG      at 16#480# range 0 .. 127;
      TIMCMP      at 16#500# range 0 .. 127;
   end record;

   --  Flexible I/O - universal I/O module for communication (UART, SPI, I2C,
   --  I2S) and PWM purposes.
   FLEXIO_Periph : aliased FLEXIO_Peripheral
     with Import, Address => System'To_Address (16#4005A000#);

end NRF_SVD.FLEXIO;
