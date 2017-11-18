--  This spec has been automatically generated from MKE16F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RTC_TPR_TPR_Field is HAL.UInt16;

   --  RTC Time Prescaler Register
   type RTC_TPR_Register is record
      --  Time Prescaler Register
      TPR            : RTC_TPR_TPR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TPR_Register use record
      TPR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Time Compensation Register
   type TCR_TCR_Field is
     (
      --  Time Prescaler Register overflows every 32768 clock cycles.
      Tcr_0,
      --  Time Prescaler Register overflows every 32767 clock cycles.
      Tcr_1,
      --  Time Prescaler Register overflows every 32641 clock cycles.
      Tcr_127,
      --  Time Prescaler Register overflows every 32896 clock cycles.
      Tcr_128,
      --  Time Prescaler Register overflows every 32769 clock cycles.
      Tcr_255)
     with Size => 8;
   for TCR_TCR_Field use
     (Tcr_0 => 0,
      Tcr_1 => 1,
      Tcr_127 => 127,
      Tcr_128 => 128,
      Tcr_255 => 255);

   subtype RTC_TCR_CIR_Field is HAL.UInt8;
   subtype RTC_TCR_TCV_Field is HAL.UInt8;
   subtype RTC_TCR_CIC_Field is HAL.UInt8;

   --  RTC Time Compensation Register
   type RTC_TCR_Register is record
      --  Time Compensation Register
      TCR : TCR_TCR_Field := NRF_SVD.RTC.Tcr_0;
      --  Compensation Interval Register
      CIR : RTC_TCR_CIR_Field := 16#0#;
      --  Read-only. Time Compensation Value
      TCV : RTC_TCR_TCV_Field := 16#0#;
      --  Read-only. Compensation Interval Counter
      CIC : RTC_TCR_CIC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TCR_Register use record
      TCR at 0 range 0 .. 7;
      CIR at 0 range 8 .. 15;
      TCV at 0 range 16 .. 23;
      CIC at 0 range 24 .. 31;
   end record;

   --  Software Reset
   type CR_SWR_Field is
     (
      --  No effect.
      No_Effect,
      --  Resets all RTC registers except for the SWR bit and the RTC_WAR and
      --  RTC_RAR registers . The SWR bit is cleared by POR and by software
      --  explicitly clearing it.
      Reset)
     with Size => 1;
   for CR_SWR_Field use
     (No_Effect => 0,
      Reset => 1);

   --  Wakeup Pin Enable
   type CR_WPE_Field is
     (
      --  Wakeup pin is disabled.
      Disabled,
      --  Wakeup pin is enabled and wakeup pin asserts if the RTC interrupt
      --  asserts or the wakeup pin is turned on.
      Enabled)
     with Size => 1;
   for CR_WPE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Supervisor Access
   type CR_SUP_Field is
     (
      --  Non-supervisor mode write accesses are not supported and generate a
      --  bus error.
      Non_Supported,
      --  Non-supervisor mode write accesses are supported.
      Supported)
     with Size => 1;
   for CR_SUP_Field use
     (Non_Supported => 0,
      Supported => 1);

   --  Update Mode
   type CR_UM_Field is
     (
      --  Registers cannot be written when locked.
      Protected_k,
      --  Registers can be written when locked under limited conditions.
      Writeable)
     with Size => 1;
   for CR_UM_Field use
     (Protected_k => 0,
      Writeable => 1);

   --  Clock Pin Select
   type CR_CPS_Field is
     (
      --  The prescaler output clock (as configured by TSIC) is output on
      --  RTC_CLKOUT.
      Prescaler,
      --  The RTC 32kHz crystal clock is output on RTC_CLKOUT.
      Crystal)
     with Size => 1;
   for CR_CPS_Field use
     (Prescaler => 0,
      Crystal => 1);

   --  LPO Select
   type CR_LPOS_Field is
     (
      --  RTC prescaler increments using 32 kHz crystal.
      Crystal,
      --  RTC prescaler increments using LPO, bits [4:0] of the prescaler are
      --  bypassed.
      Lpo)
     with Size => 1;
   for CR_LPOS_Field use
     (Crystal => 0,
      Lpo => 1);

   --  Oscillator Enable
   type CR_OSCE_Field is
     (
      --  32.768 kHz oscillator is disabled.
      Disabled,
      --  32.768 kHz oscillator is enabled. After setting this bit, wait the
      --  oscillator startup time before enabling the time counter to allow the
      --  32.768 kHz clock time to stabilize.
      Enabled)
     with Size => 1;
   for CR_OSCE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Clock Output
   type CR_CLKO_Field is
     (
      --  The 32 kHz clock is allowed to output on RTC_CLKOUT.
      Enabled,
      --  The 32 kHz clock is not allowed to output on RTC_CLKOUT.
      Disabled)
     with Size => 1;
   for CR_CLKO_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Clock Pin Enable
   type CR_CPE_Field is
     (
      --  RTC_CLKOUT is disabled.
      Disabled,
      --  RTC_CLKOUT is enabled.
      Rtc_Pte0)
     with Size => 2;
   for CR_CPE_Field use
     (Disabled => 0,
      Rtc_Pte0 => 1);

   --  RTC Control Register
   type RTC_CR_Register is record
      --  Software Reset
      SWR            : CR_SWR_Field := NRF_SVD.RTC.No_Effect;
      --  Wakeup Pin Enable
      WPE            : CR_WPE_Field := NRF_SVD.RTC.Disabled;
      --  Supervisor Access
      SUP            : CR_SUP_Field := NRF_SVD.RTC.Non_Supported;
      --  Update Mode
      UM             : CR_UM_Field := NRF_SVD.RTC.Protected_k;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Clock Pin Select
      CPS            : CR_CPS_Field := NRF_SVD.RTC.Prescaler;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  LPO Select
      LPOS           : CR_LPOS_Field := NRF_SVD.RTC.Crystal;
      --  Oscillator Enable
      OSCE           : CR_OSCE_Field := NRF_SVD.RTC.Disabled;
      --  Clock Output
      CLKO           : CR_CLKO_Field := NRF_SVD.RTC.Enabled;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  Clock Pin Enable
      CPE            : CR_CPE_Field := NRF_SVD.RTC.Disabled;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CR_Register use record
      SWR            at 0 range 0 .. 0;
      WPE            at 0 range 1 .. 1;
      SUP            at 0 range 2 .. 2;
      UM             at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CPS            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LPOS           at 0 range 7 .. 7;
      OSCE           at 0 range 8 .. 8;
      CLKO           at 0 range 9 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      CPE            at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Time Invalid Flag
   type SR_TIF_Field is
     (
      --  Time is valid.
      Valid,
      --  Time is invalid and time counter is read as zero.
      Invalid)
     with Size => 1;
   for SR_TIF_Field use
     (Valid => 0,
      Invalid => 1);

   --  Time Overflow Flag
   type SR_TOF_Field is
     (
      --  Time overflow has not occurred.
      Not_Occured,
      --  Time overflow has occurred and time counter is read as zero.
      Occured)
     with Size => 1;
   for SR_TOF_Field use
     (Not_Occured => 0,
      Occured => 1);

   --  Time Alarm Flag
   type SR_TAF_Field is
     (
      --  Time alarm has not occurred.
      Not_Occured,
      --  Time alarm has occurred.
      Occured)
     with Size => 1;
   for SR_TAF_Field use
     (Not_Occured => 0,
      Occured => 1);

   --  Time Counter Enable
   type SR_TCE_Field is
     (
      --  Time counter is disabled.
      Disabled,
      --  Time counter is enabled.
      Enabled)
     with Size => 1;
   for SR_TCE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  RTC Status Register
   type RTC_SR_Register is record
      --  Read-only. Time Invalid Flag
      TIF           : SR_TIF_Field := NRF_SVD.RTC.Invalid;
      --  Read-only. Time Overflow Flag
      TOF           : SR_TOF_Field := NRF_SVD.RTC.Not_Occured;
      --  Read-only. Time Alarm Flag
      TAF           : SR_TAF_Field := NRF_SVD.RTC.Not_Occured;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Time Counter Enable
      TCE           : SR_TCE_Field := NRF_SVD.RTC.Disabled;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SR_Register use record
      TIF           at 0 range 0 .. 0;
      TOF           at 0 range 1 .. 1;
      TAF           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      TCE           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Time Compensation Lock
   type LR_TCL_Field is
     (
      --  Time Compensation Register is locked and writes are ignored.
      Locked,
      --  Time Compensation Register is not locked and writes complete as
      --  normal.
      Normal)
     with Size => 1;
   for LR_TCL_Field use
     (Locked => 0,
      Normal => 1);

   --  Control Register Lock
   type LR_CRL_Field is
     (
      --  Control Register is locked and writes are ignored.
      Locked,
      --  Control Register is not locked and writes complete as normal.
      Normal)
     with Size => 1;
   for LR_CRL_Field use
     (Locked => 0,
      Normal => 1);

   --  Status Register Lock
   type LR_SRL_Field is
     (
      --  Status Register is locked and writes are ignored.
      Locked,
      --  Status Register is not locked and writes complete as normal.
      Normal)
     with Size => 1;
   for LR_SRL_Field use
     (Locked => 0,
      Normal => 1);

   --  Lock Register Lock
   type LR_LRL_Field is
     (
      --  Lock Register is locked and writes are ignored.
      Locked,
      --  Lock Register is not locked and writes complete as normal.
      Normal)
     with Size => 1;
   for LR_LRL_Field use
     (Locked => 0,
      Normal => 1);

   --  RTC Lock Register
   type RTC_LR_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#7#;
      --  Time Compensation Lock
      TCL           : LR_TCL_Field := NRF_SVD.RTC.Normal;
      --  Control Register Lock
      CRL           : LR_CRL_Field := NRF_SVD.RTC.Normal;
      --  Status Register Lock
      SRL           : LR_SRL_Field := NRF_SVD.RTC.Normal;
      --  Lock Register Lock
      LRL           : LR_LRL_Field := NRF_SVD.RTC.Normal;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_LR_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      TCL           at 0 range 3 .. 3;
      CRL           at 0 range 4 .. 4;
      SRL           at 0 range 5 .. 5;
      LRL           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Time Invalid Interrupt Enable
   type IER_TIIE_Field is
     (
      --  Time invalid flag does not generate an interrupt.
      Disabled,
      --  Time invalid flag does generate an interrupt.
      Enabled)
     with Size => 1;
   for IER_TIIE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Time Overflow Interrupt Enable
   type IER_TOIE_Field is
     (
      --  Time overflow flag does not generate an interrupt.
      Disabled,
      --  Time overflow flag does generate an interrupt.
      Enabled)
     with Size => 1;
   for IER_TOIE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Time Alarm Interrupt Enable
   type IER_TAIE_Field is
     (
      --  Time alarm flag does not generate an interrupt.
      Disabled,
      --  Time alarm flag does generate an interrupt.
      Enabled)
     with Size => 1;
   for IER_TAIE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Time Seconds Interrupt Enable
   type IER_TSIE_Field is
     (
      --  Seconds interrupt is disabled.
      Disabled,
      --  Seconds interrupt is enabled.
      Enabled)
     with Size => 1;
   for IER_TSIE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Wakeup Pin On
   type IER_WPON_Field is
     (
      --  No effect.
      No_Effect,
      --  If the wakeup pin is enabled, then the wakeup pin will assert.
      On)
     with Size => 1;
   for IER_WPON_Field use
     (No_Effect => 0,
      On => 1);

   --  Timer Seconds Interrupt Configuration
   type IER_TSIC_Field is
     (
      --  1 Hz.
      F1Hz,
      --  2 Hz.
      F2Hz,
      --  4 Hz.
      F4Hz,
      --  8 Hz.
      F8Hz,
      --  16 Hz.
      F16Hz,
      --  32 Hz.
      F32Hz,
      --  64 Hz.
      F64Hz,
      --  128 Hz.
      F128Hz)
     with Size => 3;
   for IER_TSIC_Field use
     (F1Hz => 0,
      F2Hz => 1,
      F4Hz => 2,
      F8Hz => 3,
      F16Hz => 4,
      F32Hz => 5,
      F64Hz => 6,
      F128Hz => 7);

   --  RTC Interrupt Enable Register
   type RTC_IER_Register is record
      --  Time Invalid Interrupt Enable
      TIIE           : IER_TIIE_Field := NRF_SVD.RTC.Enabled;
      --  Time Overflow Interrupt Enable
      TOIE           : IER_TOIE_Field := NRF_SVD.RTC.Enabled;
      --  Time Alarm Interrupt Enable
      TAIE           : IER_TAIE_Field := NRF_SVD.RTC.Enabled;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Time Seconds Interrupt Enable
      TSIE           : IER_TSIE_Field := NRF_SVD.RTC.Disabled;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Wakeup Pin On
      WPON           : IER_WPON_Field := NRF_SVD.RTC.No_Effect;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Timer Seconds Interrupt Configuration
      TSIC           : IER_TSIC_Field := NRF_SVD.RTC.F1Hz;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IER_Register use record
      TIIE           at 0 range 0 .. 0;
      TOIE           at 0 range 1 .. 1;
      TAIE           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TSIE           at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      WPON           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TSIC           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Time Seconds Register Write
   type WAR_TSRW_Field is
     (
      --  Writes to the Time Seconds Register are ignored.
      Ignored,
      --  Writes to the Time Seconds Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_TSRW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Time Prescaler Register Write
   type WAR_TPRW_Field is
     (
      --  Writes to the Time Prescaler Register are ignored.
      Ignored,
      --  Writes to the Time Prescaler Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_TPRW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Time Alarm Register Write
   type WAR_TARW_Field is
     (
      --  Writes to the Time Alarm Register are ignored.
      Ignored,
      --  Writes to the Time Alarm Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_TARW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Time Compensation Register Write
   type WAR_TCRW_Field is
     (
      --  Writes to the Time Compensation Register are ignored.
      Ignored,
      --  Writes to the Time Compensation Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_TCRW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Control Register Write
   type WAR_CRW_Field is
     (
      --  Writes to the Control Register are ignored.
      Ignored,
      --  Writes to the Control Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_CRW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Status Register Write
   type WAR_SRW_Field is
     (
      --  Writes to the Status Register are ignored.
      Ignored,
      --  Writes to the Status Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_SRW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Lock Register Write
   type WAR_LRW_Field is
     (
      --  Writes to the Lock Register are ignored.
      Ignored,
      --  Writes to the Lock Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_LRW_Field use
     (Ignored => 0,
      Normal => 1);

   --  Interrupt Enable Register Write
   type WAR_IERW_Field is
     (
      --  Writes to the Interupt Enable Register are ignored.
      Ignored,
      --  Writes to the Interrupt Enable Register complete as normal.
      Normal)
     with Size => 1;
   for WAR_IERW_Field use
     (Ignored => 0,
      Normal => 1);

   --  RTC Write Access Register
   type RTC_WAR_Register is record
      --  Time Seconds Register Write
      TSRW          : WAR_TSRW_Field := NRF_SVD.RTC.Normal;
      --  Time Prescaler Register Write
      TPRW          : WAR_TPRW_Field := NRF_SVD.RTC.Normal;
      --  Time Alarm Register Write
      TARW          : WAR_TARW_Field := NRF_SVD.RTC.Normal;
      --  Time Compensation Register Write
      TCRW          : WAR_TCRW_Field := NRF_SVD.RTC.Normal;
      --  Control Register Write
      CRW           : WAR_CRW_Field := NRF_SVD.RTC.Normal;
      --  Status Register Write
      SRW           : WAR_SRW_Field := NRF_SVD.RTC.Normal;
      --  Lock Register Write
      LRW           : WAR_LRW_Field := NRF_SVD.RTC.Normal;
      --  Interrupt Enable Register Write
      IERW          : WAR_IERW_Field := NRF_SVD.RTC.Normal;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_WAR_Register use record
      TSRW          at 0 range 0 .. 0;
      TPRW          at 0 range 1 .. 1;
      TARW          at 0 range 2 .. 2;
      TCRW          at 0 range 3 .. 3;
      CRW           at 0 range 4 .. 4;
      SRW           at 0 range 5 .. 5;
      LRW           at 0 range 6 .. 6;
      IERW          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Time Seconds Register Read
   type RAR_TSRR_Field is
     (
      --  Reads to the Time Seconds Register are ignored.
      Ignored,
      --  Reads to the Time Seconds Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_TSRR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Time Prescaler Register Read
   type RAR_TPRR_Field is
     (
      --  Reads to the Time Pprescaler Register are ignored.
      Ignored,
      --  Reads to the Time Prescaler Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_TPRR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Time Alarm Register Read
   type RAR_TARR_Field is
     (
      --  Reads to the Time Alarm Register are ignored.
      Ignored,
      --  Reads to the Time Alarm Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_TARR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Time Compensation Register Read
   type RAR_TCRR_Field is
     (
      --  Reads to the Time Compensation Register are ignored.
      Ignored,
      --  Reads to the Time Compensation Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_TCRR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Control Register Read
   type RAR_CRR_Field is
     (
      --  Reads to the Control Register are ignored.
      Ignored,
      --  Reads to the Control Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_CRR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Status Register Read
   type RAR_SRR_Field is
     (
      --  Reads to the Status Register are ignored.
      Ignored,
      --  Reads to the Status Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_SRR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Lock Register Read
   type RAR_LRR_Field is
     (
      --  Reads to the Lock Register are ignored.
      Ignored,
      --  Reads to the Lock Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_LRR_Field use
     (Ignored => 0,
      Normal => 1);

   --  Interrupt Enable Register Read
   type RAR_IERR_Field is
     (
      --  Reads to the Interrupt Enable Register are ignored.
      Ignored,
      --  Reads to the Interrupt Enable Register complete as normal.
      Normal)
     with Size => 1;
   for RAR_IERR_Field use
     (Ignored => 0,
      Normal => 1);

   --  RTC Read Access Register
   type RTC_RAR_Register is record
      --  Time Seconds Register Read
      TSRR          : RAR_TSRR_Field := NRF_SVD.RTC.Normal;
      --  Time Prescaler Register Read
      TPRR          : RAR_TPRR_Field := NRF_SVD.RTC.Normal;
      --  Time Alarm Register Read
      TARR          : RAR_TARR_Field := NRF_SVD.RTC.Normal;
      --  Time Compensation Register Read
      TCRR          : RAR_TCRR_Field := NRF_SVD.RTC.Normal;
      --  Control Register Read
      CRR           : RAR_CRR_Field := NRF_SVD.RTC.Normal;
      --  Status Register Read
      SRR           : RAR_SRR_Field := NRF_SVD.RTC.Normal;
      --  Lock Register Read
      LRR           : RAR_LRR_Field := NRF_SVD.RTC.Normal;
      --  Interrupt Enable Register Read
      IERR          : RAR_IERR_Field := NRF_SVD.RTC.Normal;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_RAR_Register use record
      TSRR          at 0 range 0 .. 0;
      TPRR          at 0 range 1 .. 1;
      TARR          at 0 range 2 .. 2;
      TCRR          at 0 range 3 .. 3;
      CRR           at 0 range 4 .. 4;
      SRR           at 0 range 5 .. 5;
      LRR           at 0 range 6 .. 6;
      IERR          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Secure Real Time Clock
   type RTC_Peripheral is record
      --  RTC Time Seconds Register
      TSR : aliased HAL.UInt32;
      --  RTC Time Prescaler Register
      TPR : aliased RTC_TPR_Register;
      --  RTC Time Alarm Register
      TAR : aliased HAL.UInt32;
      --  RTC Time Compensation Register
      TCR : aliased RTC_TCR_Register;
      --  RTC Control Register
      CR  : aliased RTC_CR_Register;
      --  RTC Status Register
      SR  : aliased RTC_SR_Register;
      --  RTC Lock Register
      LR  : aliased RTC_LR_Register;
      --  RTC Interrupt Enable Register
      IER : aliased RTC_IER_Register;
      --  RTC Write Access Register
      WAR : aliased RTC_WAR_Register;
      --  RTC Read Access Register
      RAR : aliased RTC_RAR_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      TSR at 16#0# range 0 .. 31;
      TPR at 16#4# range 0 .. 31;
      TAR at 16#8# range 0 .. 31;
      TCR at 16#C# range 0 .. 31;
      CR  at 16#10# range 0 .. 31;
      SR  at 16#14# range 0 .. 31;
      LR  at 16#18# range 0 .. 31;
      IER at 16#1C# range 0 .. 31;
      WAR at 16#800# range 0 .. 31;
      RAR at 16#804# range 0 .. 31;
   end record;

   --  Secure Real Time Clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => System'To_Address (16#4003D000#);

end NRF_SVD.RTC;
