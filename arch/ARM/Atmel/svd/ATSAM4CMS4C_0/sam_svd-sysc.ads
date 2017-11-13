--  This spec has been automatically generated from ATSAM4CMS4C_0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SYSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  General Purpose Backup Register

   --  General Purpose Backup Register
   type GPBR_GPBR_Registers is array (0 .. 15) of HAL.UInt32
     with Volatile;

   --  System Reset Key
   type CR_KEY_Field is
     (
      --  Reset value for the field
      Cr_Key_Field_Reset,
      --  Writing any other value in this field aborts the write operation.
      Passwd)
     with Size => 8;
   for CR_KEY_Field use
     (Cr_Key_Field_Reset => 0,
      Passwd => 165);

   --  Control Register
   type RSTC_CR_Register is record
      --  Write-only. Processor Reset
      PROCRST       : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Write-only. Peripheral Reset
      PERRST        : Boolean := False;
      --  Write-only. External Reset
      EXTRST        : Boolean := False;
      --  unspecified
      Reserved_4_23 : HAL.UInt20 := 16#0#;
      --  Write-only. System Reset Key
      KEY           : CR_KEY_Field := Cr_Key_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_CR_Register use record
      PROCRST       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PERRST        at 0 range 2 .. 2;
      EXTRST        at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   --  Reset Type
   type SR_RSTTYP_Field is
     (
      --  First power-up reset
      General_Rst,
      --  Return from Backup Mode
      Backup_Rst,
      --  Watchdog fault occurred
      Wdt_Rst,
      --  Processor reset required by the software
      Soft_Rst,
      --  NRST pin detected low
      User_Rst)
     with Size => 3;
   for SR_RSTTYP_Field use
     (General_Rst => 0,
      Backup_Rst => 1,
      Wdt_Rst => 2,
      Soft_Rst => 3,
      User_Rst => 4);

   --  Status Register
   type RSTC_SR_Register is record
      --  Read-only. User Reset Status
      URSTS          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Reset Type
      RSTTYP         : SR_RSTTYP_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. NRST Pin Level
      NRSTL          : Boolean;
      --  Read-only. Software Reset Command in Progress
      SRCMP          : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_SR_Register use record
      URSTS          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RSTTYP         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      NRSTL          at 0 range 16 .. 16;
      SRCMP          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RSTC_MR_ERSTL_Field is HAL.UInt4;

   --  Write Access Password
   type MR_KEY_Field is
     (
      --  Reset value for the field
      Mr_Key_Field_Reset,
      --  Writing any other value in this field aborts the write
      --  operation.Always reads as 0.
      Passwd)
     with Size => 8;
   for MR_KEY_Field use
     (Mr_Key_Field_Reset => 0,
      Passwd => 165);

   --  Mode Register
   type RSTC_MR_Register is record
      --  User Reset Enable
      URSTEN         : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  User Reset Interrupt Enable
      URSTIEN        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  External Reset Length
      ERSTL          : RSTC_MR_ERSTL_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : HAL.UInt12 := 16#0#;
      --  Write Access Password
      KEY            : MR_KEY_Field := Mr_Key_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_MR_Register use record
      URSTEN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      URSTIEN        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ERSTL          at 0 range 8 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Coprocessor System Enable Key
   type CPMR_CPKEY_Field is
     (
      --  Reset value for the field
      Cpmr_Cpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation.
      Passwd)
     with Size => 8;
   for CPMR_CPKEY_Field use
     (Cpmr_Cpkey_Field_Reset => 0,
      Passwd => 90);

   --  Coprocessor Mode Register
   type RSTC_CPMR_Register is record
      --  Coprocessor (Second Processor) Enable
      CPROCEN       : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Coprocessor Peripheral Enable
      CPEREN        : Boolean := False;
      --  unspecified
      Reserved_5_23 : HAL.UInt19 := 16#0#;
      --  Coprocessor System Enable Key
      CPKEY         : CPMR_CPKEY_Field := Cpmr_Cpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_CPMR_Register use record
      CPROCEN       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CPEREN        at 0 range 4 .. 4;
      Reserved_5_23 at 0 range 5 .. 23;
      CPKEY         at 0 range 24 .. 31;
   end record;

   --  Password
   type CR_KEY_Field_1 is
     (
      --  Reset value for the field
      Cr_Key_Field_Reset,
      --  Writing any other value in this field aborts the write operation.
      Passwd)
     with Size => 8;
   for CR_KEY_Field_1 use
     (Cr_Key_Field_Reset => 0,
      Passwd => 196);

   --  Control Register
   type RSWDT_CR_Register is record
      --  Write-only. Watchdog Restart
      WDRSTT        : Boolean := False;
      --  unspecified
      Reserved_1_23 : HAL.UInt23 := 16#0#;
      --  Write-only. Password
      KEY           : CR_KEY_Field_1 := Cr_Key_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSWDT_CR_Register use record
      WDRSTT        at 0 range 0 .. 0;
      Reserved_1_23 at 0 range 1 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype RSWDT_MR_WDV_Field is HAL.UInt12;
   subtype RSWDT_MR_WDD_Field is HAL.UInt12;

   --  Mode Register
   type RSWDT_MR_Register is record
      --  Watchdog Counter Value
      WDV            : RSWDT_MR_WDV_Field := 16#FFF#;
      --  Watchdog Fault Interrupt Enable
      WDFIEN         : Boolean := False;
      --  Watchdog Reset Enable
      WDRSTEN        : Boolean := True;
      --  Watchdog Reset Processor
      WDRPROC        : Boolean := False;
      --  Watchdog Disable
      WDDIS          : Boolean := True;
      --  Watchdog Delta Value
      WDD            : RSWDT_MR_WDD_Field := 16#FFF#;
      --  Watchdog Debug Halt
      WDDBGHLT       : Boolean := True;
      --  Watchdog Idle Halt
      WDIDLEHLT      : Boolean := True;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSWDT_MR_Register use record
      WDV            at 0 range 0 .. 11;
      WDFIEN         at 0 range 12 .. 12;
      WDRSTEN        at 0 range 13 .. 13;
      WDRPROC        at 0 range 14 .. 14;
      WDDIS          at 0 range 15 .. 15;
      WDD            at 0 range 16 .. 27;
      WDDBGHLT       at 0 range 28 .. 28;
      WDIDLEHLT      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Status Register
   type RSWDT_SR_Register is record
      --  Read-only. Watchdog Underflow
      WDUNF         : Boolean;
      --  Read-only. Watchdog Error
      WDERR         : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSWDT_SR_Register use record
      WDUNF         at 0 range 0 .. 0;
      WDERR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Time Event Selection
   type CR_TIMEVSEL_Field is
     (
      --  Minute change
      Minute,
      --  Hour change
      Hour,
      --  Every day at midnight
      Midnight,
      --  Every day at noon
      Noon)
     with Size => 2;
   for CR_TIMEVSEL_Field use
     (Minute => 0,
      Hour => 1,
      Midnight => 2,
      Noon => 3);

   --  Calendar Event Selection
   type CR_CALEVSEL_Field is
     (
      --  Week change (every Monday at time 00:00:00)
      Week,
      --  Month change (every 01 of each month at time 00:00:00)
      Month,
      --  Year change (every January 1 at time 00:00:00)
      Year)
     with Size => 2;
   for CR_CALEVSEL_Field use
     (Week => 0,
      Month => 1,
      Year => 2);

   --  Control Register
   type RTC_CR_Register is record
      --  Update Request Time Register
      UPDTIM         : Boolean := False;
      --  Update Request Calendar Register
      UPDCAL         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Time Event Selection
      TIMEVSEL       : CR_TIMEVSEL_Field := SAM_SVD.SYSC.Minute;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Calendar Event Selection
      CALEVSEL       : CR_CALEVSEL_Field := SAM_SVD.SYSC.Week;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CR_Register use record
      UPDTIM         at 0 range 0 .. 0;
      UPDCAL         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TIMEVSEL       at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CALEVSEL       at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RTC_MR_CORRECTION_Field is HAL.UInt7;

   --  RTCOUT0 OutputSource Selection
   type MR_OUT0_Field is
     (
      --  No waveform, stuck at '0'
      No_Wave,
      --  1 Hz square wave
      Freq1Hz,
      --  32 Hz square wave
      Freq32Hz,
      --  64 Hz square wave
      Freq64Hz,
      --  512 Hz square wave
      Freq512Hz,
      --  Output toggles when alarm flag rises
      Alarm_Toggle,
      --  Output is a copy of the alarm flag
      Alarm_Flag,
      --  Duty cycle programmable pulse
      Prog_Pulse)
     with Size => 3;
   for MR_OUT0_Field use
     (No_Wave => 0,
      Freq1Hz => 1,
      Freq32Hz => 2,
      Freq64Hz => 3,
      Freq512Hz => 4,
      Alarm_Toggle => 5,
      Alarm_Flag => 6,
      Prog_Pulse => 7);

   --  High Duration of the Output Pulse
   type MR_THIGH_Field is
     (
      --  31.2 ms
      H_31Ms,
      --  15.6 ms
      H_16Ms,
      --  3.91 ms
      H_4Ms,
      --  976 us
      H_976Us,
      --  488 us
      H_488Us,
      --  122 us
      H_122Us,
      --  30.5 us
      H_30Us,
      --  15.2 us
      H_15Us)
     with Size => 3;
   for MR_THIGH_Field use
     (H_31Ms => 0,
      H_16Ms => 1,
      H_4Ms => 2,
      H_976Us => 3,
      H_488Us => 4,
      H_122Us => 5,
      H_30Us => 6,
      H_15Us => 7);

   --  Period of the Output Pulse
   type MR_TPERIOD_Field is
     (
      --  1 second
      P_1S,
      --  500 ms
      P_500Ms,
      --  250 ms
      P_250Ms,
      --  125 ms
      P_125Ms)
     with Size => 2;
   for MR_TPERIOD_Field use
     (P_1S => 0,
      P_500Ms => 1,
      P_250Ms => 2,
      P_125Ms => 3);

   --  Mode Register
   type RTC_MR_Register is record
      --  12-/24-hour Mode
      HRMOD          : Boolean := False;
      --  PERSIAN Calendar
      PERSIAN        : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  NEGative PPM Correction
      NEGPPM         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Slow Clock Correction
      CORRECTION     : RTC_MR_CORRECTION_Field := 16#0#;
      --  HIGH PPM Correction
      HIGHPPM        : Boolean := False;
      --  RTCOUT0 OutputSource Selection
      OUT0           : MR_OUT0_Field := SAM_SVD.SYSC.No_Wave;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  High Duration of the Output Pulse
      THIGH          : MR_THIGH_Field := SAM_SVD.SYSC.H_31Ms;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Period of the Output Pulse
      TPERIOD        : MR_TPERIOD_Field := SAM_SVD.SYSC.P_1S;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MR_Register use record
      HRMOD          at 0 range 0 .. 0;
      PERSIAN        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NEGPPM         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CORRECTION     at 0 range 8 .. 14;
      HIGHPPM        at 0 range 15 .. 15;
      OUT0           at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      THIGH          at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TPERIOD        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RTC_TIMR_SEC_Field is HAL.UInt7;
   subtype RTC_TIMR_MIN_Field is HAL.UInt7;
   subtype RTC_TIMR_HOUR_Field is HAL.UInt6;

   --  Time Register
   type RTC_TIMR_Register is record
      --  Current Second
      SEC            : RTC_TIMR_SEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Current Minute
      MIN            : RTC_TIMR_MIN_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Current Hour
      HOUR           : RTC_TIMR_HOUR_Field := 16#0#;
      --  Ante Meridiem Post Meridiem Indicator
      AMPM           : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TIMR_Register use record
      SEC            at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_CALR_CENT_Field is HAL.UInt7;
   subtype RTC_CALR_YEAR_Field is HAL.UInt8;
   subtype RTC_CALR_MONTH_Field is HAL.UInt5;
   subtype RTC_CALR_DAY_Field is HAL.UInt3;
   subtype RTC_CALR_DATE_Field is HAL.UInt6;

   --  Calendar Register
   type RTC_CALR_Register is record
      --  Current Century
      CENT           : RTC_CALR_CENT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Current Year
      YEAR           : RTC_CALR_YEAR_Field := 16#0#;
      --  Current Month
      MONTH          : RTC_CALR_MONTH_Field := 16#0#;
      --  Current Day in Current Week
      DAY            : RTC_CALR_DAY_Field := 16#0#;
      --  Current Day in Current Month
      DATE           : RTC_CALR_DATE_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALR_Register use record
      CENT           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      YEAR           at 0 range 8 .. 15;
      MONTH          at 0 range 16 .. 20;
      DAY            at 0 range 21 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RTC_TIMALR_SEC_Field is HAL.UInt7;
   subtype RTC_TIMALR_MIN_Field is HAL.UInt7;
   subtype RTC_TIMALR_HOUR_Field is HAL.UInt6;

   --  Time Alarm Register
   type RTC_TIMALR_Register is record
      --  Second Alarm
      SEC            : RTC_TIMALR_SEC_Field := 16#0#;
      --  Second Alarm Enable
      SECEN          : Boolean := False;
      --  Minute Alarm
      MIN            : RTC_TIMALR_MIN_Field := 16#0#;
      --  Minute Alarm Enable
      MINEN          : Boolean := False;
      --  Hour Alarm
      HOUR           : RTC_TIMALR_HOUR_Field := 16#0#;
      --  AM/PM Indicator
      AMPM           : Boolean := False;
      --  Hour Alarm Enable
      HOUREN         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TIMALR_Register use record
      SEC            at 0 range 0 .. 6;
      SECEN          at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      MINEN          at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      HOUREN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RTC_CALALR_MONTH_Field is HAL.UInt5;
   subtype RTC_CALALR_DATE_Field is HAL.UInt6;

   --  Calendar Alarm Register
   type RTC_CALALR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Month Alarm
      MONTH          : RTC_CALALR_MONTH_Field := 16#1#;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Month Alarm Enable
      MTHEN          : Boolean := False;
      --  Date Alarm
      DATE           : RTC_CALALR_DATE_Field := 16#1#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Date Alarm Enable
      DATEEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALALR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MONTH          at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      MTHEN          at 0 range 23 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      DATEEN         at 0 range 31 .. 31;
   end record;

   --  Acknowledge for Update
   type SR_ACKUPD_Field is
     (
      --  Time and calendar registers cannot be updated.
      Freerun,
      --  Time and calendar registers can be updated.
      Update)
     with Size => 1;
   for SR_ACKUPD_Field use
     (Freerun => 0,
      Update => 1);

   --  Alarm Flag
   type SR_ALARM_Field is
     (
      --  No alarm matching condition occurred.
      No_Alarmevent,
      --  An alarm matching condition has occurred.
      Alarmevent)
     with Size => 1;
   for SR_ALARM_Field use
     (No_Alarmevent => 0,
      Alarmevent => 1);

   --  Second Event
   type SR_SEC_Field is
     (
      --  No second event has occurred since the last clear.
      No_Secevent,
      --  At least one second event has occurred since the last clear.
      Secevent)
     with Size => 1;
   for SR_SEC_Field use
     (No_Secevent => 0,
      Secevent => 1);

   --  Time Event
   type SR_TIMEV_Field is
     (
      --  No time event has occurred since the last clear.
      No_Timevent,
      --  At least one time event has occurred since the last clear.
      Timevent)
     with Size => 1;
   for SR_TIMEV_Field use
     (No_Timevent => 0,
      Timevent => 1);

   --  Calendar Event
   type SR_CALEV_Field is
     (
      --  No calendar event has occurred since the last clear.
      No_Calevent,
      --  At least one calendar event has occurred since the last clear.
      Calevent)
     with Size => 1;
   for SR_CALEV_Field use
     (No_Calevent => 0,
      Calevent => 1);

   --  Time and/or Date Free Running Error
   type SR_TDERR_Field is
     (
      --  The internal free running counters are carrying valid values since
      --  the last read of the Status Register (RTC_SR).
      Correct,
      --  The internal free running counters have been corrupted (invalid date
      --  or time, non-BCD values) since the last read and/or they are still
      --  invalid.
      Err_Timedate)
     with Size => 1;
   for SR_TDERR_Field use
     (Correct => 0,
      Err_Timedate => 1);

   --  Status Register
   type RTC_SR_Register is record
      --  Read-only. Acknowledge for Update
      ACKUPD        : SR_ACKUPD_Field;
      --  Read-only. Alarm Flag
      ALARM         : SR_ALARM_Field;
      --  Read-only. Second Event
      SEC           : SR_SEC_Field;
      --  Read-only. Time Event
      TIMEV         : SR_TIMEV_Field;
      --  Read-only. Calendar Event
      CALEV         : SR_CALEV_Field;
      --  Read-only. Time and/or Date Free Running Error
      TDERR         : SR_TDERR_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SR_Register use record
      ACKUPD        at 0 range 0 .. 0;
      ALARM         at 0 range 1 .. 1;
      SEC           at 0 range 2 .. 2;
      TIMEV         at 0 range 3 .. 3;
      CALEV         at 0 range 4 .. 4;
      TDERR         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Status Clear Command Register
   type RTC_SCCR_Register is record
      --  Write-only. Acknowledge Clear
      ACKCLR        : Boolean := False;
      --  Write-only. Alarm Clear
      ALRCLR        : Boolean := False;
      --  Write-only. Second Clear
      SECCLR        : Boolean := False;
      --  Write-only. Time Clear
      TIMCLR        : Boolean := False;
      --  Write-only. Calendar Clear
      CALCLR        : Boolean := False;
      --  Write-only. Time and/or Date Free Running Error Clear
      TDERRCLR      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SCCR_Register use record
      ACKCLR        at 0 range 0 .. 0;
      ALRCLR        at 0 range 1 .. 1;
      SECCLR        at 0 range 2 .. 2;
      TIMCLR        at 0 range 3 .. 3;
      CALCLR        at 0 range 4 .. 4;
      TDERRCLR      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Enable Register
   type RTC_IER_Register is record
      --  Write-only. Acknowledge Update Interrupt Enable
      ACKEN         : Boolean := False;
      --  Write-only. Alarm Interrupt Enable
      ALREN         : Boolean := False;
      --  Write-only. Second Event Interrupt Enable
      SECEN         : Boolean := False;
      --  Write-only. Time Event Interrupt Enable
      TIMEN         : Boolean := False;
      --  Write-only. Calendar Event Interrupt Enable
      CALEN         : Boolean := False;
      --  Write-only. Time and/or Date Error Interrupt Enable
      TDERREN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IER_Register use record
      ACKEN         at 0 range 0 .. 0;
      ALREN         at 0 range 1 .. 1;
      SECEN         at 0 range 2 .. 2;
      TIMEN         at 0 range 3 .. 3;
      CALEN         at 0 range 4 .. 4;
      TDERREN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Disable Register
   type RTC_IDR_Register is record
      --  Write-only. Acknowledge Update Interrupt Disable
      ACKDIS        : Boolean := False;
      --  Write-only. Alarm Interrupt Disable
      ALRDIS        : Boolean := False;
      --  Write-only. Second Event Interrupt Disable
      SECDIS        : Boolean := False;
      --  Write-only. Time Event Interrupt Disable
      TIMDIS        : Boolean := False;
      --  Write-only. Calendar Event Interrupt Disable
      CALDIS        : Boolean := False;
      --  Write-only. Time and/or Date Error Interrupt Disable
      TDERRDIS      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IDR_Register use record
      ACKDIS        at 0 range 0 .. 0;
      ALRDIS        at 0 range 1 .. 1;
      SECDIS        at 0 range 2 .. 2;
      TIMDIS        at 0 range 3 .. 3;
      CALDIS        at 0 range 4 .. 4;
      TDERRDIS      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Mask Register
   type RTC_IMR_Register is record
      --  Read-only. Acknowledge Update Interrupt Mask
      ACK           : Boolean;
      --  Read-only. Alarm Interrupt Mask
      ALR           : Boolean;
      --  Read-only. Second Event Interrupt Mask
      SEC           : Boolean;
      --  Read-only. Time Event Interrupt Mask
      TIM           : Boolean;
      --  Read-only. Calendar Event Interrupt Mask
      CAL           : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IMR_Register use record
      ACK           at 0 range 0 .. 0;
      ALR           at 0 range 1 .. 1;
      SEC           at 0 range 2 .. 2;
      TIM           at 0 range 3 .. 3;
      CAL           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Valid Entry Register
   type RTC_VER_Register is record
      --  Read-only. Non-valid Time
      NVTIM         : Boolean;
      --  Read-only. Non-valid Calendar
      NVCAL         : Boolean;
      --  Read-only. Non-valid Time Alarm
      NVTIMALR      : Boolean;
      --  Read-only. Non-valid Calendar Alarm
      NVCALALR      : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_VER_Register use record
      NVTIM         at 0 range 0 .. 0;
      NVCAL         at 0 range 1 .. 1;
      NVTIMALR      at 0 range 2 .. 2;
      NVCALALR      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype RTC_TSTR0_SEC_Field is HAL.UInt7;
   subtype RTC_TSTR0_MIN_Field is HAL.UInt7;
   subtype RTC_TSTR0_HOUR_Field is HAL.UInt6;
   subtype RTC_TSTR0_TEVCNT_Field is HAL.UInt4;

   --  TimeStamp Time Register 0
   type RTC_TSTR0_Register is record
      --  Read-only. Seconds of the Tamper
      SEC            : RTC_TSTR0_SEC_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Minutes of the Tamper
      MIN            : RTC_TSTR0_MIN_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Hours of the Tamper
      HOUR           : RTC_TSTR0_HOUR_Field;
      --  Read-only. AM/PM Indicator of the Tamper
      AMPM           : Boolean;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Tamper Events Counter
      TEVCNT         : RTC_TSTR0_TEVCNT_Field;
      --  unspecified
      Reserved_28_30 : HAL.UInt3;
      --  Read-only. System Mode of the Tamper
      BACKUP         : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSTR0_Register use record
      SEC            at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TEVCNT         at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      BACKUP         at 0 range 31 .. 31;
   end record;

   subtype TSDR_CENT_Field is HAL.UInt7;
   subtype TSDR_YEAR_Field is HAL.UInt8;
   subtype TSDR_MONTH_Field is HAL.UInt5;
   subtype TSDR_DAY_Field is HAL.UInt3;
   subtype TSDR_DATE_Field is HAL.UInt6;

   --  TimeStamp Date Register 0
   type TSDR_Register is record
      --  Read-only. Century of the Tamper
      CENT           : TSDR_CENT_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Year of the Tamper
      YEAR           : TSDR_YEAR_Field;
      --  Read-only. Month of the Tamper
      MONTH          : TSDR_MONTH_Field;
      --  Read-only. Day of the Tamper
      DAY            : TSDR_DAY_Field;
      --  Read-only. Date of the Tamper
      DATE           : TSDR_DATE_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSDR_Register use record
      CENT           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      YEAR           at 0 range 8 .. 15;
      MONTH          at 0 range 16 .. 20;
      DAY            at 0 range 21 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TSSR_TSRC_Field is HAL.UInt2;

   --  TimeStamp Source Register 0
   type TSSR_Register is record
      --  Read-only. Tamper Source
      TSRC          : TSSR_TSRC_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSSR_Register use record
      TSRC          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RTC_TSTR1_SEC_Field is HAL.UInt7;
   subtype RTC_TSTR1_MIN_Field is HAL.UInt7;
   subtype RTC_TSTR1_HOUR_Field is HAL.UInt6;

   --  TimeStamp Time Register 1
   type RTC_TSTR1_Register is record
      --  Read-only. Seconds of the Tamper
      SEC            : RTC_TSTR1_SEC_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Minutes of the Tamper
      MIN            : RTC_TSTR1_MIN_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Hours of the Tamper
      HOUR           : RTC_TSTR1_HOUR_Field;
      --  Read-only. AM/PM Indicator of the Tamper
      AMPM           : Boolean;
      --  unspecified
      Reserved_23_30 : HAL.UInt8;
      --  Read-only. System Mode of the Tamper
      BACKUP         : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSTR1_Register use record
      SEC            at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      BACKUP         at 0 range 31 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5395523);

   --  Write Protection Mode Register
   type RTC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype RTT_MR_RTPRES_Field is HAL.UInt16;

   --  Mode Register
   type RTT_MR_Register is record
      --  Real-time Timer Prescaler Value
      RTPRES         : RTT_MR_RTPRES_Field := 16#8000#;
      --  Alarm Interrupt Enable
      ALMIEN         : Boolean := False;
      --  Real-time Timer Increment Interrupt Enable
      RTTINCIEN      : Boolean := False;
      --  Real-time Timer Restart
      RTTRST         : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Real-time Timer Disable
      RTTDIS         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Real-Time Clock 1Hz Clock Selection
      RTC1HZ         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_MR_Register use record
      RTPRES         at 0 range 0 .. 15;
      ALMIEN         at 0 range 16 .. 16;
      RTTINCIEN      at 0 range 17 .. 17;
      RTTRST         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RTTDIS         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      RTC1HZ         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Status Register
   type RTT_SR_Register is record
      --  Read-only. Real-time Alarm Status
      ALMS          : Boolean;
      --  Read-only. Prescaler Roll-over Status
      RTTINC        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_SR_Register use record
      ALMS          at 0 range 0 .. 0;
      RTTINC        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Voltage Regulator Off
   type CR_VROFF_Field is
     (
      --  No effect.
      No_Effect,
      --  If KEY is correct, asserts the system reset signal and stops the
      --  voltage regulator.
      Stop_Vreg)
     with Size => 1;
   for CR_VROFF_Field use
     (No_Effect => 0,
      Stop_Vreg => 1);

   --  Crystal Oscillator Select
   type CR_XTALSEL_Field is
     (
      --  No effect.
      No_Effect,
      --  If KEY is correct, switches the slow clock on the crystal oscillator
      --  output.
      Crystal_Sel)
     with Size => 1;
   for CR_XTALSEL_Field use
     (No_Effect => 0,
      Crystal_Sel => 1);

   --  Supply Controller Control Register
   type SUPC_CR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Voltage Regulator Off
      VROFF         : CR_VROFF_Field := SAM_SVD.SYSC.No_Effect;
      --  Write-only. Crystal Oscillator Select
      XTALSEL       : CR_XTALSEL_Field := SAM_SVD.SYSC.No_Effect;
      --  unspecified
      Reserved_4_23 : HAL.UInt20 := 16#0#;
      --  Write-only. Password
      KEY           : CR_KEY_Field := Cr_Key_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      VROFF         at 0 range 2 .. 2;
      XTALSEL       at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype SUPC_SMMR_SMTH_Field is HAL.UInt4;

   --  Supply Monitor Sampling Period
   type SMMR_SMSMPL_Field is
     (
      --  Supply Monitor disabled
      Smd,
      --  Continuous Supply Monitor
      Csm,
      --  Supply Monitor enabled one SLCK period every 32 SLCK periods
      SMMR_SMSMPL_Field_32Slck,
      --  Supply Monitor enabled one SLCK period every 256 SLCK periods
      SMMR_SMSMPL_Field_256Slck,
      --  Supply Monitor enabled one SLCK period every 2,048 SLCK periods
      SMMR_SMSMPL_Field_2048Slck)
     with Size => 3;
   for SMMR_SMSMPL_Field use
     (Smd => 0,
      Csm => 1,
      SMMR_SMSMPL_Field_32Slck => 2,
      SMMR_SMSMPL_Field_256Slck => 3,
      SMMR_SMSMPL_Field_2048Slck => 4);

   --  Supply Monitor Reset Enable
   type SMMR_SMRSTEN_Field is
     (
      --  The system reset signal is not affected when a supply monitor
      --  detection occurs.
      Not_Enable,
      --  The system reset signal is asserted when a supply monitor detection
      --  occurs.
      Enable)
     with Size => 1;
   for SMMR_SMRSTEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Supply Monitor Interrupt Enable
   type SMMR_SMIEN_Field is
     (
      --  The SUPC interrupt signal is not affected when a supply monitor
      --  detection occurs.
      Not_Enable,
      --  The SUPC interrupt signal is asserted when a supply monitor detection
      --  occurs.
      Enable)
     with Size => 1;
   for SMMR_SMIEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Supply Controller Supply Monitor Mode Register
   type SUPC_SMMR_Register is record
      --  Supply Monitor Threshold
      SMTH           : SUPC_SMMR_SMTH_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Supply Monitor Sampling Period
      SMSMPL         : SMMR_SMSMPL_Field := SAM_SVD.SYSC.Smd;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Supply Monitor Reset Enable
      SMRSTEN        : SMMR_SMRSTEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  Supply Monitor Interrupt Enable
      SMIEN          : SMMR_SMIEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SMMR_Register use record
      SMTH           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SMSMPL         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SMRSTEN        at 0 range 12 .. 12;
      SMIEN          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SUPC_MR_LCDVROUT_Field is HAL.UInt4;

   --  LCD Controller Mode of Operation
   type MR_LCDMODE_Field is
     (
      --  The internal supply source and the external supply source are both
      --  deselected (OFF mode).
      Lcdoff,
      --  The external supply source for LCD (VDDLCD) is selected (the LCD
      --  voltage regulator is in Hi-Z mode).
      Lcdon_Extvr,
      --  The internal supply source for LCD (the LCD Voltage Regulator) is
      --  selected (Active mode).
      Lcdon_Invr)
     with Size => 2;
   for MR_LCDMODE_Field use
     (Lcdoff => 0,
      Lcdon_Extvr => 2,
      Lcdon_Invr => 3);

   --  Brownout Detector Reset Enable
   type MR_BODRSTEN_Field is
     (
      --  The system reset signal is not affected when a brownout detection
      --  occurs.
      Not_Enable,
      --  The system reset signal is asserted when a brownout detection occurs.
      Enable)
     with Size => 1;
   for MR_BODRSTEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Brownout Detector Disable
   type MR_BODDIS_Field is
     (
      --  The core brownout detector is enabled.
      Enable,
      --  The core brownout detector is disabled.
      Disable)
     with Size => 1;
   for MR_BODDIS_Field use
     (Enable => 0,
      Disable => 1);

   --  Voltage Regulator enable
   type MR_ONREG_Field is
     (
      --  Internal voltage regulator is not used (external power supply is
      --  used).
      Onreg_Unused,
      --  Internal voltage regulator is used.
      Onreg_Used)
     with Size => 1;
   for MR_ONREG_Field use
     (Onreg_Unused => 0,
      Onreg_Used => 1);

   --  Backup Area Power-On Reset Enable
   type MR_BUPPOREN_Field is
     (
      --  Disables the backup POR.
      Buppor_Disable,
      --  Enables the backup POR.
      Buppor_Enable)
     with Size => 1;
   for MR_BUPPOREN_Field use
     (Buppor_Disable => 0,
      Buppor_Enable => 1);

   --  Oscillator Bypass
   type MR_OSCBYPASS_Field is
     (
      --  No effect. Clock selection depends on XTALSEL value.
      No_Effect,
      --  The 32 kHz crystal oscillator is bypassed if XTALSEL = 1. OSCBYPASS
      --  must be set before setting XTALSEL.
      Bypass)
     with Size => 1;
   for MR_OSCBYPASS_Field use
     (No_Effect => 0,
      Bypass => 1);

   --  Supply Controller Mode Register
   type SUPC_MR_Register is record
      --  LCD Voltage Regulator Output
      LCDVROUT       : SUPC_MR_LCDVROUT_Field := 16#0#;
      --  LCD Controller Mode of Operation
      LCDMODE        : MR_LCDMODE_Field := SAM_SVD.SYSC.Lcdoff;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#28#;
      --  Brownout Detector Reset Enable
      BODRSTEN       : MR_BODRSTEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  Brownout Detector Disable
      BODDIS         : MR_BODDIS_Field := SAM_SVD.SYSC.Enable;
      --  Voltage Regulator enable
      ONREG          : MR_ONREG_Field := SAM_SVD.SYSC.Onreg_Unused;
      --  Backup Area Power-On Reset Enable
      BUPPOREN       : MR_BUPPOREN_Field := SAM_SVD.SYSC.Buppor_Disable;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Oscillator Bypass
      OSCBYPASS      : MR_OSCBYPASS_Field := SAM_SVD.SYSC.No_Effect;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Password Key
      KEY            : MR_KEY_Field := Mr_Key_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_MR_Register use record
      LCDVROUT       at 0 range 0 .. 3;
      LCDMODE        at 0 range 4 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      BODRSTEN       at 0 range 12 .. 12;
      BODDIS         at 0 range 13 .. 13;
      ONREG          at 0 range 14 .. 14;
      BUPPOREN       at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      OSCBYPASS      at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Force Wake-up Enable
   type WUMR_FWUPEN_Field is
     (
      --  The force wake-up pin has no wake-up effect.
      Not_Enable,
      --  The force wake-up pin low forces a system wake-up.
      Enable)
     with Size => 1;
   for WUMR_FWUPEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Supply Monitor Wake-up Enable
   type WUMR_SMEN_Field is
     (
      --  The supply monitor detection has no wake-up effect.
      Not_Enable,
      --  The supply monitor detection forces a system wake-up.
      Enable)
     with Size => 1;
   for WUMR_SMEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Real-time Timer Wake-up Enable
   type WUMR_RTTEN_Field is
     (
      --  The RTT alarm signal has no wake-up effect.
      Not_Enable,
      --  The RTT alarm signal forces a system wake-up.
      Enable)
     with Size => 1;
   for WUMR_RTTEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Real-time Clock Wake-up Enable
   type WUMR_RTCEN_Field is
     (
      --  The RTC alarm signal has no wake-up effect.
      Not_Enable,
      --  The RTC alarm signal forces a system wake-up.
      Enable)
     with Size => 1;
   for WUMR_RTCEN_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Low-Power Debouncer Enable WKUP0/TMP0
   type WUMR_LPDBCEN0_Field is
     (
      --  The WKUP0/TMP0 input pin is not connected to the low-power debouncer.
      Not_Enable,
      --  The WKUP0/TMP0 input pin is connected to the low-power debouncer and
      --  can force a system wake-up.
      Enable)
     with Size => 1;
   for WUMR_LPDBCEN0_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Low-Power Debouncer Enable WKUP10/TMP1
   type WUMR_LPDBCEN1_Field is
     (
      --  The WKUP10/TMP1 input pin is not connected to the low-power
      --  debouncer.
      Not_Enable,
      --  The WKUP10/TMP1 input pin is connected to the low-power debouncer and
      --  can force a system wake-up.
      Enable)
     with Size => 1;
   for WUMR_LPDBCEN1_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Low-Power Debouncer Clear
   type WUMR_LPDBCCLR_Field is
     (
      --  A low-power debounce event does not create an immediate clear on the
      --  first half of GPBR registers.
      Not_Enable,
      --  A low-power debounce event on WKUP0/TMP0 or WKUP10TMP1(if DISTMPCLR1
      --  is cleared) generates an immediate clear on the first half of GPBR
      --  registers.
      Enable)
     with Size => 1;
   for WUMR_LPDBCCLR_Field use
     (Not_Enable => 0,
      Enable => 1);

   --  Force Wake-up Debouncer Period
   type WUMR_FWUPDBC_Field is
     (
      --  Immediate, no debouncing, detected active at least on one Slow Clock
      --  edge.
      Immediate,
      --  FWUP shall be low for at least 3 SLCK periods
      WUMR_FWUPDBC_Field_3_Sclk,
      --  FWUP shall be low for at least 32 SLCK periods
      WUMR_FWUPDBC_Field_32_Sclk,
      --  FWUP shall be low for at least 512 SLCK periods
      WUMR_FWUPDBC_Field_512_Sclk,
      --  FWUP shall be low for at least 4,096 SLCK periods
      WUMR_FWUPDBC_Field_4096_Sclk,
      --  FWUP shall be low for at least 32,768 SLCK periods
      WUMR_FWUPDBC_Field_32768_Sclk)
     with Size => 3;
   for WUMR_FWUPDBC_Field use
     (Immediate => 0,
      WUMR_FWUPDBC_Field_3_Sclk => 1,
      WUMR_FWUPDBC_Field_32_Sclk => 2,
      WUMR_FWUPDBC_Field_512_Sclk => 3,
      WUMR_FWUPDBC_Field_4096_Sclk => 4,
      WUMR_FWUPDBC_Field_32768_Sclk => 5);

   --  Wake-up Inputs Debouncer Period
   type WUMR_WKUPDBC_Field is
     (
      --  Immediate, no debouncing, detected active at least on one Slow Clock
      --  edge.
      Immediate,
      --  WKUPx shall be in its active state for at least 3 SLCK periods
      WUMR_WKUPDBC_Field_3_Sclk,
      --  WKUPx shall be in its active state for at least 32 SLCK periods
      WUMR_WKUPDBC_Field_32_Sclk,
      --  WKUPx shall be in its active state for at least 512 SLCK periods
      WUMR_WKUPDBC_Field_512_Sclk,
      --  WKUPx shall be in its active state for at least 4,096 SLCK periods
      WUMR_WKUPDBC_Field_4096_Sclk,
      --  WKUPx shall be in its active state for at least 32,768 SLCK periods
      WUMR_WKUPDBC_Field_32768_Sclk)
     with Size => 3;
   for WUMR_WKUPDBC_Field use
     (Immediate => 0,
      WUMR_WKUPDBC_Field_3_Sclk => 1,
      WUMR_WKUPDBC_Field_32_Sclk => 2,
      WUMR_WKUPDBC_Field_512_Sclk => 3,
      WUMR_WKUPDBC_Field_4096_Sclk => 4,
      WUMR_WKUPDBC_Field_32768_Sclk => 5);

   --  Low Power Debouncer Period
   type WUMR_LPDBC_Field is
     (
      --  Disable the low-power debouncers.
      Disable,
      --  WKUP0/10TMP0/1 in active state for at least 2 RTCOUT0 periods
      WUMR_LPDBC_Field_2_Rtcout0,
      --  WKUP0/10TMP0/1 in active state for at least 3 RTCOUT0 periods
      WUMR_LPDBC_Field_3_Rtcout0,
      --  WKUP0/10TMP0/1 in active state for at least 4 RTCOUT0 periods
      WUMR_LPDBC_Field_4_Rtcout0,
      --  WKUP0/10TMP0/1 in active state for at least 5 RTCOUT0 periods
      WUMR_LPDBC_Field_5_Rtcout0,
      --  WKUP0/10TMP0/1 in active state for at least 6 RTCOUT0 periods
      WUMR_LPDBC_Field_6_Rtcout0,
      --  WKUP0/10TMP0/1 in active state for at least 7 RTCOUT0 periods
      WUMR_LPDBC_Field_7_Rtcout0,
      --  WKUP0/10TMP0/1 in active state for at least 8 RTCOUT0 periods
      WUMR_LPDBC_Field_8_Rtcout0)
     with Size => 3;
   for WUMR_LPDBC_Field use
     (Disable => 0,
      WUMR_LPDBC_Field_2_Rtcout0 => 1,
      WUMR_LPDBC_Field_3_Rtcout0 => 2,
      WUMR_LPDBC_Field_4_Rtcout0 => 3,
      WUMR_LPDBC_Field_5_Rtcout0 => 4,
      WUMR_LPDBC_Field_6_Rtcout0 => 5,
      WUMR_LPDBC_Field_7_Rtcout0 => 6,
      WUMR_LPDBC_Field_8_Rtcout0 => 7);

   --  Disable GPBR Clear Command from WKUP10/TMP1 pin
   type WUMR_DISTMPCLR1_Field is
     (
      --  The WKUP10/TMP1 input pin can clear the GPBR (if LPDBCCLR is enabled)
      --  when tamper is detected.
      Enable,
      --  The WKUP10/TMP1 input pin has no effect on the GPBR value (no clear
      --  on tamper detection).
      Disable)
     with Size => 1;
   for WUMR_DISTMPCLR1_Field use
     (Enable => 0,
      Disable => 1);

   --  Disable Timestamp from WKUP10/TMP1 Pin
   type WUMR_DISTSTMP1_Field is
     (
      --  A tamper detection on WKUP10/TMP1 pin generates a timestamp.
      Enable,
      --  A tamper detection on WKUP10/TMP1 does NOT generate a report in
      --  timestamp register.
      Disable)
     with Size => 1;
   for WUMR_DISTSTMP1_Field use
     (Enable => 0,
      Disable => 1);

   --  Supply Controller Wake-up Mode Register
   type SUPC_WUMR_Register is record
      --  Force Wake-up Enable
      FWUPEN         : WUMR_FWUPEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  Supply Monitor Wake-up Enable
      SMEN           : WUMR_SMEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  Real-time Timer Wake-up Enable
      RTTEN          : WUMR_RTTEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  Real-time Clock Wake-up Enable
      RTCEN          : WUMR_RTCEN_Field := SAM_SVD.SYSC.Not_Enable;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Low-Power Debouncer Enable WKUP0/TMP0
      LPDBCEN0       : WUMR_LPDBCEN0_Field := SAM_SVD.SYSC.Not_Enable;
      --  Low-Power Debouncer Enable WKUP10/TMP1
      LPDBCEN1       : WUMR_LPDBCEN1_Field := SAM_SVD.SYSC.Not_Enable;
      --  Low-Power Debouncer Clear
      LPDBCCLR       : WUMR_LPDBCCLR_Field := SAM_SVD.SYSC.Not_Enable;
      --  Force Wake-up Debouncer Period
      FWUPDBC        : WUMR_FWUPDBC_Field := SAM_SVD.SYSC.Immediate;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Wake-up Inputs Debouncer Period
      WKUPDBC        : WUMR_WKUPDBC_Field := SAM_SVD.SYSC.Immediate;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Low Power Debouncer Period
      LPDBC          : WUMR_LPDBC_Field := SAM_SVD.SYSC.Disable;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Disable GPBR Clear Command from WKUP10/TMP1 pin
      DISTMPCLR1     : WUMR_DISTMPCLR1_Field := SAM_SVD.SYSC.Enable;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Disable Timestamp from WKUP10/TMP1 Pin
      DISTSTMP1      : WUMR_DISTSTMP1_Field := SAM_SVD.SYSC.Enable;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_WUMR_Register use record
      FWUPEN         at 0 range 0 .. 0;
      SMEN           at 0 range 1 .. 1;
      RTTEN          at 0 range 2 .. 2;
      RTCEN          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      LPDBCEN0       at 0 range 5 .. 5;
      LPDBCEN1       at 0 range 6 .. 6;
      LPDBCCLR       at 0 range 7 .. 7;
      FWUPDBC        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WKUPDBC        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LPDBC          at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      DISTMPCLR1     at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      DISTSTMP1      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  WKUPx Input Enable
   type WUIR_WKUPEN0_Field is
     (
      --  The corresponding wake-up input has no wake-up effect.
      Disable,
      --  The corresponding wake-up input forces a system wake-up.
      Enable)
     with Size => 1;
   for WUIR_WKUPEN0_Field use
     (Disable => 0,
      Enable => 1);

   --  SUPC_WUIR_WKUPEN array
   type SUPC_WUIR_WKUPEN_Field_Array is array (0 .. 15) of WUIR_WKUPEN0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for SUPC_WUIR_WKUPEN
   type SUPC_WUIR_WKUPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPEN as a value
            Val : HAL.UInt16;
         when True =>
            --  WKUPEN as an array
            Arr : SUPC_WUIR_WKUPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SUPC_WUIR_WKUPEN_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  WKUPx Input Type
   type WUIR_WKUPT0_Field is
     (
      --  A low level for a period defined by WKUPDBC in SUPC_WUMR on the
      --  corresponding wake-up input forces a system wake-up.
      Low,
      --  A high level for a period defined by WKUPDBC in SUPC_WUMR on the
      --  corresponding wake-up input forces a system wake-up.
      High)
     with Size => 1;
   for WUIR_WKUPT0_Field use
     (Low => 0,
      High => 1);

   --  SUPC_WUIR_WKUPT array
   type SUPC_WUIR_WKUPT_Field_Array is array (0 .. 12) of WUIR_WKUPT0_Field
     with Component_Size => 1, Size => 13;

   --  Type definition for SUPC_WUIR_WKUPT
   type SUPC_WUIR_WKUPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPT as a value
            Val : HAL.UInt13;
         when True =>
            --  WKUPT as an array
            Arr : SUPC_WUIR_WKUPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for SUPC_WUIR_WKUPT_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  Supply Controller Wake-up Inputs Register
   type SUPC_WUIR_Register is record
      --  WKUPx Input Enable
      WKUPEN         : SUPC_WUIR_WKUPEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  WKUPx Input Type
      WKUPT          : SUPC_WUIR_WKUPT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_WUIR_Register use record
      WKUPEN         at 0 range 0 .. 15;
      WKUPT          at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  FWUP Wake-up Status (cleared on read)
   type SR_FWUPS_Field is
     (
      --  No wake-up due to the assertion of the FWUP pin has occurred since
      --  the last read of SUPC_SR.
      No,
      --  At least one wake-up due to the assertion of the FWUP pin has
      --  occurred since the last read of SUPC_SR.
      Present)
     with Size => 1;
   for SR_FWUPS_Field use
     (No => 0,
      Present => 1);

   --  WKUP Wake-up Status (cleared on read)
   type SR_WKUPS_Field is
     (
      --  No wake-up due to the assertion of the WKUP pins has occurred since
      --  the last read of SUPC_SR.
      No,
      --  At least one wake-up due to the assertion of the WKUP pins has
      --  occurred since the last read of SUPC_SR.
      Present)
     with Size => 1;
   for SR_WKUPS_Field use
     (No => 0,
      Present => 1);

   --  Supply Monitor Detection Wake-up Status (cleared on read)
   type SR_SMWS_Field is
     (
      --  No wake-up due to a supply monitor detection has occurred since the
      --  last read of SUPC_SR.
      No,
      --  At least one wake-up due to a supply monitor detection has occurred
      --  since the last read of SUPC_SR.
      Present)
     with Size => 1;
   for SR_SMWS_Field use
     (No => 0,
      Present => 1);

   --  Brownout Detector Reset Status (cleared on read)
   type SR_BODRSTS_Field is
     (
      --  No core brownout rising edge event has been detected since the last
      --  read of SUPC_SR.
      No,
      --  At least one brownout output rising edge event has been detected
      --  since the last read of SUPC_SR.
      Present)
     with Size => 1;
   for SR_BODRSTS_Field use
     (No => 0,
      Present => 1);

   --  Supply Monitor Reset Status (cleared on read)
   type SR_SMRSTS_Field is
     (
      --  No supply monitor detection has generated a system reset since the
      --  last read of SUPC_SR.
      No,
      --  At least one supply monitor detection has generated a system reset
      --  since the last read of SUPC_SR.
      Present)
     with Size => 1;
   for SR_SMRSTS_Field use
     (No => 0,
      Present => 1);

   --  Supply Monitor Status (cleared on read)
   type SR_SMS_Field is
     (
      --  No supply monitor detection since the last read of SUPC_SR.
      No,
      --  At least one supply monitor detection since the last read of SUPC_SR.
      Present)
     with Size => 1;
   for SR_SMS_Field use
     (No => 0,
      Present => 1);

   --  Supply Monitor Output Status
   type SR_SMOS_Field is
     (
      --  The supply monitor detected VDDIO higher than its threshold at its
      --  last measurement.
      High,
      --  The supply monitor detected VDDIO lower than its threshold at its
      --  last measurement.
      Low)
     with Size => 1;
   for SR_SMOS_Field use
     (High => 0,
      Low => 1);

   --  32 kHz Oscillator Selection Status
   type SR_OSCSEL_Field is
     (
      --  The slow clock, SLCK, is generated by the embedded 32 kHz RC
      --  oscillator.
      Rc,
      --  The slow clock, SLCK, is generated by the 32 kHz crystal oscillator.
      Cryst)
     with Size => 1;
   for SR_OSCSEL_Field use
     (Rc => 0,
      Cryst => 1);

   --  LCD Status
   type SR_LCDS_Field is
     (
      --  LCD controller is disabled.
      Disabled,
      --  LCD controller is enabled.
      Enabled)
     with Size => 1;
   for SR_LCDS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  FWUP Input Status
   type SR_FWUPIS_Field is
     (
      --  FWUP input is tied low.
      Low,
      --  FWUP input is tied high.
      High)
     with Size => 1;
   for SR_FWUPIS_Field use
     (Low => 0,
      High => 1);

   --  Low Power Debouncer Wake-up Status on WKUP0/TMP0 (cleared on read)
   type SR_LPDBCS0_Field is
     (
      --  No tamper detection or wake-up due to the assertion of the WKUP0/TMP0
      --  pin has occurred since the last read of SUPC_SR.
      No,
      --  At least one tamper detection and wake-up (if enabled by WKUPEN0) due
      --  to the assertion of the WKUP0/TMP0 pin has occurred since the last
      --  read of SUPC_SR. The SUPC interrupt line is asserted while LPDBCS0 is
      --  1.
      Present)
     with Size => 1;
   for SR_LPDBCS0_Field use
     (No => 0,
      Present => 1);

   --  Low Power Debouncer Wake-up Status on WKUP10/TMP1 (cleared on read)
   type SR_LPDBCS1_Field is
     (
      --  No tamper detection or wake-up due to the assertion of the WKUP10 pin
      --  has occurred since the last read of SUPC_SR.
      No,
      --  At least one tamper detection and wake-up (if enabled by WKUPEN10)
      --  due to the assertion of the WKUP10/TMP1 pin has occurred since the
      --  last read of SUPC_SR. The SUPC interrupt line is asserted while
      --  LPDBCS1 is 1.
      Present)
     with Size => 1;
   for SR_LPDBCS1_Field use
     (No => 0,
      Present => 1);

   --  Backup Area Power-On Reset Status
   type SR_BUPPORS_Field is
     (
      --  Backup POR is disabled.
      Buppor_Disabled,
      --  Backup POR is enabled.
      Buppor_Enabled)
     with Size => 1;
   for SR_BUPPORS_Field use
     (Buppor_Disabled => 0,
      Buppor_Enabled => 1);

   --  WKUPx Input Status (cleared on read)
   type SR_WKUPIS0_Field is
     (
      --  The corresponding wake-up input is disabled, or was inactive at the
      --  time the debouncer triggered a wake-up event.
      Dis,
      --  The corresponding wake-up input was active at the time the debouncer
      --  triggered a wake-up event since the last read of SUPC_SR.
      En)
     with Size => 1;
   for SR_WKUPIS0_Field use
     (Dis => 0,
      En => 1);

   --  SUPC_SR_WKUPIS array
   type SUPC_SR_WKUPIS_Field_Array is array (0 .. 12) of SR_WKUPIS0_Field
     with Component_Size => 1, Size => 13;

   --  Type definition for SUPC_SR_WKUPIS
   type SUPC_SR_WKUPIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPIS as a value
            Val : HAL.UInt13;
         when True =>
            --  WKUPIS as an array
            Arr : SUPC_SR_WKUPIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for SUPC_SR_WKUPIS_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  Supply Controller Status Register
   type SUPC_SR_Register is record
      --  Read-only. FWUP Wake-up Status (cleared on read)
      FWUPS          : SR_FWUPS_Field;
      --  Read-only. WKUP Wake-up Status (cleared on read)
      WKUPS          : SR_WKUPS_Field;
      --  Read-only. Supply Monitor Detection Wake-up Status (cleared on read)
      SMWS           : SR_SMWS_Field;
      --  Read-only. Brownout Detector Reset Status (cleared on read)
      BODRSTS        : SR_BODRSTS_Field;
      --  Read-only. Supply Monitor Reset Status (cleared on read)
      SMRSTS         : SR_SMRSTS_Field;
      --  Read-only. Supply Monitor Status (cleared on read)
      SMS            : SR_SMS_Field;
      --  Read-only. Supply Monitor Output Status
      SMOS           : SR_SMOS_Field;
      --  Read-only. 32 kHz Oscillator Selection Status
      OSCSEL         : SR_OSCSEL_Field;
      --  Read-only. LCD Status
      LCDS           : SR_LCDS_Field;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. FWUP Input Status
      FWUPIS         : SR_FWUPIS_Field;
      --  Read-only. Low Power Debouncer Wake-up Status on WKUP0/TMP0 (cleared
      --  on read)
      LPDBCS0        : SR_LPDBCS0_Field;
      --  Read-only. Low Power Debouncer Wake-up Status on WKUP10/TMP1 (cleared
      --  on read)
      LPDBCS1        : SR_LPDBCS1_Field;
      --  Read-only. Backup Area Power-On Reset Status
      BUPPORS        : SR_BUPPORS_Field;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS         : SUPC_SR_WKUPIS_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SR_Register use record
      FWUPS          at 0 range 0 .. 0;
      WKUPS          at 0 range 1 .. 1;
      SMWS           at 0 range 2 .. 2;
      BODRSTS        at 0 range 3 .. 3;
      SMRSTS         at 0 range 4 .. 4;
      SMS            at 0 range 5 .. 5;
      SMOS           at 0 range 6 .. 6;
      OSCSEL         at 0 range 7 .. 7;
      LCDS           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      FWUPIS         at 0 range 12 .. 12;
      LPDBCS0        at 0 range 13 .. 13;
      LPDBCS1        at 0 range 14 .. 14;
      BUPPORS        at 0 range 15 .. 15;
      WKUPIS         at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Backup Registers
   type GPBR_Peripheral is record
      --  General Purpose Backup Register
      GPBR : aliased GPBR_GPBR_Registers;
   end record
     with Volatile;

   for GPBR_Peripheral use record
      GPBR at 0 range 0 .. 511;
   end record;

   --  General Purpose Backup Registers
   GPBR_Periph : aliased GPBR_Peripheral
     with Import, Address => System'To_Address (16#400E1490#);

   --  Reset Controller
   type RSTC_Peripheral is record
      --  Control Register
      CR   : aliased RSTC_CR_Register;
      --  Status Register
      SR   : aliased RSTC_SR_Register;
      --  Mode Register
      MR   : aliased RSTC_MR_Register;
      --  Coprocessor Mode Register
      CPMR : aliased RSTC_CPMR_Register;
   end record
     with Volatile;

   for RSTC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      SR   at 16#4# range 0 .. 31;
      MR   at 16#8# range 0 .. 31;
      CPMR at 16#C# range 0 .. 31;
   end record;

   --  Reset Controller
   RSTC_Periph : aliased RSTC_Peripheral
     with Import, Address => System'To_Address (16#400E1400#);

   --  Reinforced Safety Watchdog Timer
   type RSWDT_Peripheral is record
      --  Control Register
      CR : aliased RSWDT_CR_Register;
      --  Mode Register
      MR : aliased RSWDT_MR_Register;
      --  Status Register
      SR : aliased RSWDT_SR_Register;
   end record
     with Volatile;

   for RSWDT_Peripheral use record
      CR at 16#0# range 0 .. 31;
      MR at 16#4# range 0 .. 31;
      SR at 16#8# range 0 .. 31;
   end record;

   --  Reinforced Safety Watchdog Timer
   RSWDT_Periph : aliased RSWDT_Peripheral
     with Import, Address => System'To_Address (16#400E1500#);

   --  Watchdog Timer
   WDT_Periph : aliased RSWDT_Peripheral
     with Import, Address => System'To_Address (16#400E1450#);

   --  Real-time Clock
   type RTC_Peripheral is record
      --  Control Register
      CR     : aliased RTC_CR_Register;
      --  Mode Register
      MR     : aliased RTC_MR_Register;
      --  Time Register
      TIMR   : aliased RTC_TIMR_Register;
      --  Calendar Register
      CALR   : aliased RTC_CALR_Register;
      --  Time Alarm Register
      TIMALR : aliased RTC_TIMALR_Register;
      --  Calendar Alarm Register
      CALALR : aliased RTC_CALALR_Register;
      --  Status Register
      SR     : aliased RTC_SR_Register;
      --  Status Clear Command Register
      SCCR   : aliased RTC_SCCR_Register;
      --  Interrupt Enable Register
      IER    : aliased RTC_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased RTC_IDR_Register;
      --  Interrupt Mask Register
      IMR    : aliased RTC_IMR_Register;
      --  Valid Entry Register
      VER    : aliased RTC_VER_Register;
      --  TimeStamp Time Register 0
      TSTR0  : aliased RTC_TSTR0_Register;
      --  TimeStamp Date Register 0
      TSDR0  : aliased TSDR_Register;
      --  TimeStamp Source Register 0
      TSSR0  : aliased TSSR_Register;
      --  TimeStamp Time Register 1
      TSTR1  : aliased RTC_TSTR1_Register;
      --  TimeStamp Date Register 1
      TSDR1  : aliased TSDR_Register;
      --  TimeStamp Source Register 1
      TSSR1  : aliased TSSR_Register;
      --  Write Protection Mode Register
      WPMR   : aliased RTC_WPMR_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      MR     at 16#4# range 0 .. 31;
      TIMR   at 16#8# range 0 .. 31;
      CALR   at 16#C# range 0 .. 31;
      TIMALR at 16#10# range 0 .. 31;
      CALALR at 16#14# range 0 .. 31;
      SR     at 16#18# range 0 .. 31;
      SCCR   at 16#1C# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      VER    at 16#2C# range 0 .. 31;
      TSTR0  at 16#B0# range 0 .. 31;
      TSDR0  at 16#B4# range 0 .. 31;
      TSSR0  at 16#B8# range 0 .. 31;
      TSTR1  at 16#BC# range 0 .. 31;
      TSDR1  at 16#C0# range 0 .. 31;
      TSSR1  at 16#C4# range 0 .. 31;
      WPMR   at 16#E4# range 0 .. 31;
   end record;

   --  Real-time Clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => System'To_Address (16#400E1460#);

   --  Real-time Timer
   type RTT_Peripheral is record
      --  Mode Register
      MR : aliased RTT_MR_Register;
      --  Alarm Register
      AR : aliased HAL.UInt32;
      --  Value Register
      VR : aliased HAL.UInt32;
      --  Status Register
      SR : aliased RTT_SR_Register;
   end record
     with Volatile;

   for RTT_Peripheral use record
      MR at 16#0# range 0 .. 31;
      AR at 16#4# range 0 .. 31;
      VR at 16#8# range 0 .. 31;
      SR at 16#C# range 0 .. 31;
   end record;

   --  Real-time Timer
   RTT_Periph : aliased RTT_Peripheral
     with Import, Address => System'To_Address (16#400E1430#);

   --  Supply Controller
   type SUPC_Peripheral is record
      --  Supply Controller Control Register
      CR   : aliased SUPC_CR_Register;
      --  Supply Controller Supply Monitor Mode Register
      SMMR : aliased SUPC_SMMR_Register;
      --  Supply Controller Mode Register
      MR   : aliased SUPC_MR_Register;
      --  Supply Controller Wake-up Mode Register
      WUMR : aliased SUPC_WUMR_Register;
      --  Supply Controller Wake-up Inputs Register
      WUIR : aliased SUPC_WUIR_Register;
      --  Supply Controller Status Register
      SR   : aliased SUPC_SR_Register;
   end record
     with Volatile;

   for SUPC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      SMMR at 16#4# range 0 .. 31;
      MR   at 16#8# range 0 .. 31;
      WUMR at 16#C# range 0 .. 31;
      WUIR at 16#10# range 0 .. 31;
      SR   at 16#14# range 0 .. 31;
   end record;

   --  Supply Controller
   SUPC_Periph : aliased SUPC_Peripheral
     with Import, Address => System'To_Address (16#400E1410#);

end SAM_SVD.SYSC;
