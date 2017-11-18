--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TIMER0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RUN_TMRnn_Field is HAL.UInt8;

   --  Run Register
   type RUN_Register is record
      --  Start/Stop Timer n
      TMRnn         : RUN_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RUN_SET_TMRnn_Field is HAL.UInt8;

   --  Run Set Register
   type RUN_SET_Register is record
      --  Start/Stop Timer n
      TMRnn         : RUN_SET_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_SET_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RUN_CLR_TMRnn_Field is HAL.UInt8;

   --  Run Clear Register
   type RUN_CLR_Register is record
      --  Start/Stop Timer n
      TMRnn         : RUN_CLR_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_CLR_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STOP_CFG_TMRnn_Field is HAL.UInt8;

   --  Stop Configuration Register
   type STOP_CFG_Register is record
      --  Stop Mode Select
      TMRnn         : STOP_CFG_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STOP_CFG_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STOP_CFG_SET_TMRnn_Field is HAL.UInt8;

   --  Stop Configuration Set Register
   type STOP_CFG_SET_Register is record
      --  Stop Mode Select
      TMRnn         : STOP_CFG_SET_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STOP_CFG_SET_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STOP_CFG_CLR_TMRnn_Field is HAL.UInt8;

   --  Stop Configuration Clear Register
   type STOP_CFG_CLR_Register is record
      --  Stop Mode Select
      TMRnn         : STOP_CFG_CLR_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STOP_CFG_CLR_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_IMSK_TMRnn_Field is HAL.UInt8;

   --  Data Interrupt Mask Register
   type DATA_IMSK_Register is record
      --  Data Interrupt Mask
      TMRnn         : DATA_IMSK_TMRnn_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_IMSK_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STAT_IMSK_TMRnn_Field is HAL.UInt8;

   --  Status Interrupt Mask Register
   type STAT_IMSK_Register is record
      --  Status Interrupt Mask
      TMRnn         : STAT_IMSK_TMRnn_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_IMSK_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TRG_MSK_TMRnn_Field is HAL.UInt8;

   --  Trigger Master Mask Register
   type TRG_MSK_Register is record
      --  Trigger Output Mask
      TMRnn         : TRG_MSK_TMRnn_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRG_MSK_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TRG_IE_TMRnn_Field is HAL.UInt8;

   --  Trigger Slave Enable Register
   type TRG_IE_Register is record
      --  Trigger Input Enable
      TMRnn         : TRG_IE_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRG_IE_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_ILAT_TMRnn_Field is HAL.UInt8;

   --  Data Interrupt Latch Register
   type DATA_ILAT_Register is record
      --  Data Interrupt Latch
      TMRnn         : DATA_ILAT_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_ILAT_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STAT_ILAT_TMRnn_Field is HAL.UInt8;

   --  Status Interrupt Latch Register
   type STAT_ILAT_Register is record
      --  Status Interrupt Latch
      TMRnn         : STAT_ILAT_TMRnn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_ILAT_Register use record
      TMRnn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Error type for Timer 0
   type ERR_TYPE_TERR0_Field is
     (
      --  No Error
      No_Err0,
      --  Counter Overflow Error
      Cntovf0,
      --  PER Register Programming Error
      Perprg0,
      --  WID or DLY Register Programming Error
      Pulseprg0)
     with Size => 2;
   for ERR_TYPE_TERR0_Field use
     (No_Err0 => 0,
      Cntovf0 => 1,
      Perprg0 => 2,
      Pulseprg0 => 3);

   --  Error type for Timer 1
   type ERR_TYPE_TERR1_Field is
     (
      --  No Error
      No_Err1,
      --  Counter Overflow Error
      Cntovf1,
      --  PER Register Programming Error
      Perprg1,
      --  WID or DLY Register Programming Error
      Pulseprg1)
     with Size => 2;
   for ERR_TYPE_TERR1_Field use
     (No_Err1 => 0,
      Cntovf1 => 1,
      Perprg1 => 2,
      Pulseprg1 => 3);

   --  Error type for Timer 2
   type ERR_TYPE_TERR2_Field is
     (
      --  No Error
      No_Err2,
      --  Counter Overflow Error
      Cntovf2,
      --  PER Register Programming Error
      Perprg2,
      --  WID or DLY Register Programming Error
      Pulseprg2)
     with Size => 2;
   for ERR_TYPE_TERR2_Field use
     (No_Err2 => 0,
      Cntovf2 => 1,
      Perprg2 => 2,
      Pulseprg2 => 3);

   --  Error type for Timer 3
   type ERR_TYPE_TERR3_Field is
     (
      --  No Error
      No_Err3,
      --  Counter Overflow Error
      Cntovf3,
      --  PER Register Programming Error
      Perprg3,
      --  WID or DLY Register Programming Error
      Pulseprg3)
     with Size => 2;
   for ERR_TYPE_TERR3_Field use
     (No_Err3 => 0,
      Cntovf3 => 1,
      Perprg3 => 2,
      Pulseprg3 => 3);

   --  Error type for Timer 4
   type ERR_TYPE_TERR4_Field is
     (
      --  No Error
      No_Err4,
      --  Counter Overflow Error
      Cntovf4,
      --  PER Register Programming Error
      Perprg4,
      --  WID or DLY Register Programming Error
      Pulseprg4)
     with Size => 2;
   for ERR_TYPE_TERR4_Field use
     (No_Err4 => 0,
      Cntovf4 => 1,
      Perprg4 => 2,
      Pulseprg4 => 3);

   --  Error type for Timer 5
   type ERR_TYPE_TERR5_Field is
     (
      --  No Error
      No_Err5,
      --  Counter Overflow Error
      Cntovf5,
      --  PER Register Programming Error
      Perprg5,
      --  WID or DLY Register Programming Error
      Pulseprg5)
     with Size => 2;
   for ERR_TYPE_TERR5_Field use
     (No_Err5 => 0,
      Cntovf5 => 1,
      Perprg5 => 2,
      Pulseprg5 => 3);

   --  Error type for Timer 6
   type ERR_TYPE_TERR6_Field is
     (
      --  No Error
      No_Err6,
      --  Counter Overflow Error
      Cntovf6,
      --  PER Register Programming Error
      Perprg6,
      --  WID or DLY Register Programming Error
      Pulseprg6)
     with Size => 2;
   for ERR_TYPE_TERR6_Field use
     (No_Err6 => 0,
      Cntovf6 => 1,
      Perprg6 => 2,
      Pulseprg6 => 3);

   --  Error type for Timer 7
   type ERR_TYPE_TERR7_Field is
     (
      --  No Error
      No_Err7,
      --  Counter Overflow Error
      Cntovf7,
      --  PER Register Programming Error
      Perprg7,
      --  WID or DLY Register Programming Error
      Pulseprg7)
     with Size => 2;
   for ERR_TYPE_TERR7_Field use
     (No_Err7 => 0,
      Cntovf7 => 1,
      Perprg7 => 2,
      Pulseprg7 => 3);

   --  Error Type Status Register
   type ERR_TYPE_Register is record
      --  Read-only. Error type for Timer 0
      TERR0          : ERR_TYPE_TERR0_Field;
      --  Read-only. Error type for Timer 1
      TERR1          : ERR_TYPE_TERR1_Field;
      --  Read-only. Error type for Timer 2
      TERR2          : ERR_TYPE_TERR2_Field;
      --  Read-only. Error type for Timer 3
      TERR3          : ERR_TYPE_TERR3_Field;
      --  Read-only. Error type for Timer 4
      TERR4          : ERR_TYPE_TERR4_Field;
      --  Read-only. Error type for Timer 5
      TERR5          : ERR_TYPE_TERR5_Field;
      --  Read-only. Error type for Timer 6
      TERR6          : ERR_TYPE_TERR6_Field;
      --  Read-only. Error type for Timer 7
      TERR7          : ERR_TYPE_TERR7_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_TYPE_Register use record
      TERR0          at 0 range 0 .. 1;
      TERR1          at 0 range 2 .. 3;
      TERR2          at 0 range 4 .. 5;
      TERR3          at 0 range 6 .. 7;
      TERR4          at 0 range 8 .. 9;
      TERR5          at 0 range 10 .. 11;
      TERR6          at 0 range 12 .. 13;
      TERR7          at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- TMR cluster's Registers --
   -----------------------------

   --  Timer Mode Select
   type CFG_TMODE_Field is
     (
      --  Idle Mode
      Idle_Mode0,
      --  Idle Mode
      Idle_Mode1,
      --  Idle Mode
      Idle_Mode2,
      --  Idle Mode
      Idle_Mode3,
      --  Idle Mode
      Idle_Mode4,
      --  Idle Mode
      Idle_Mode5,
      --  Idle Mode
      Idle_Mode6,
      --  Idle Mode
      Idle_Mode7,
      --  Period Watchdog Mode
      Wdper_Mode,
      --  Width Watchdog Mode
      Wdwid_Mode,
      --  Measurement report at asserting edge of waveform
      Widcap0_Mode,
      --  Measurement report at de-asserting edge of waveform
      Widcap1_Mode,
      --  Continuous PWMOUT mode
      Pwmcont_Mode,
      --  Single pulse PWMOUT mode
      Pwmsing_Mode,
      --  EXTCLK mode
      Extclk_Mode,
      --  PININT (pin interrupt) mode
      Pinint_Mode)
     with Size => 4;
   for CFG_TMODE_Field use
     (Idle_Mode0 => 0,
      Idle_Mode1 => 1,
      Idle_Mode2 => 2,
      Idle_Mode3 => 3,
      Idle_Mode4 => 4,
      Idle_Mode5 => 5,
      Idle_Mode6 => 6,
      Idle_Mode7 => 7,
      Wdper_Mode => 8,
      Wdwid_Mode => 9,
      Widcap0_Mode => 10,
      Widcap1_Mode => 11,
      Pwmcont_Mode => 12,
      Pwmsing_Mode => 13,
      Extclk_Mode => 14,
      Pinint_Mode => 15);

   --  Interrupt Modes
   type CFG_IRQMODE_Field is
     (
      --  Active Edge Mode
      Irqmode0,
      --  Delay Expired Mode
      Irqmode1,
      --  Width Plus Delay Expired Mode
      Irqmode2,
      --  Period Expired Mode
      Irqmode3)
     with Size => 2;
   for CFG_IRQMODE_Field use
     (Irqmode0 => 0,
      Irqmode1 => 1,
      Irqmode2 => 2,
      Irqmode3 => 3);

   --  Slave Trigger Response
   type CFG_SLAVETRIG_Field is
     (
      --  Pulse stops timer if it is running
      Trigstop,
      --  Pulse starts timer if it is stopped
      Trigstart)
     with Size => 1;
   for CFG_SLAVETRIG_Field use
     (Trigstop => 0,
      Trigstart => 1);

   --  Polarity Response Select
   type CFG_PULSEHI_Field is
     (
      --  Negative Response/Pulse
      Neg_Edge,
      --  Positive Response/Pulse
      Pos_Edge)
     with Size => 1;
   for CFG_PULSEHI_Field use
     (Neg_Edge => 0,
      Pos_Edge => 1);

   --  Clock Select
   type CFG_CLKSEL_Field is
     (
      --  Use SCLK
      Clksel_Sclk,
      --  Use TMR_ALT_CLK0 as the TMR clock
      Clksel_Alt0,
      --  Use TMR_ALT_CLK1 as the TMR clock
      Clksel_Alt1)
     with Size => 2;
   for CFG_CLKSEL_Field use
     (Clksel_Sclk => 0,
      Clksel_Alt0 => 1,
      Clksel_Alt1 => 3);

   --  Timer Input Select (for WIDCAP, WATCHDOG, PININT modes)
   type CFG_TINSEL_Field is
     (
      --  Use TMR pin input
      Tinsel_Tmr,
      --  Use TMR Alternate Capture Input
      Tinsel_Aux)
     with Size => 1;
   for CFG_TINSEL_Field use
     (Tinsel_Tmr => 0,
      Tinsel_Aux => 1);

   --  Output Disable
   type CFG_OUTDIS_Field is
     (
      --  Enable TMR pin output buffer
      Padout_En,
      --  Disable TMR pin output buffer
      Padout_Dis)
     with Size => 1;
   for CFG_OUTDIS_Field use
     (Padout_En => 0,
      Padout_Dis => 1);

   --  Broadcast Delay Enable
   type CFG_BDLYEN_Field is
     (
      --  Disable Broadcast to DLY Register
      Bcastdly_Dis,
      --  Enable Broadcast to DLY Register
      Bcastdly_En)
     with Size => 1;
   for CFG_BDLYEN_Field use
     (Bcastdly_Dis => 0,
      Bcastdly_En => 1);

   --  Broadcast Width Enable
   type CFG_BWIDEN_Field is
     (
      --  Disable Broadcast to WID Register
      Bcastwid_Dis,
      --  Enable Broadcast to WID Register
      Bcastwid_En)
     with Size => 1;
   for CFG_BWIDEN_Field use
     (Bcastwid_Dis => 0,
      Bcastwid_En => 1);

   --  Broadcast Period Enable
   type CFG_BPEREN_Field is
     (
      --  Disable Broadcast to PER Register
      Bcastper_Dis,
      --  Enable Broadcast to PER Register
      Bcastper_En)
     with Size => 1;
   for CFG_BPEREN_Field use
     (Bcastper_Dis => 0,
      Bcastper_En => 1);

   --  Emulation Run
   type CFG_EMURUN_Field is
     (
      --  Stop Timer During Emulation
      Emu_Nocnt,
      --  Run Timer During Emulation
      Emu_Cnt)
     with Size => 1;
   for CFG_EMURUN_Field use
     (Emu_Nocnt => 0,
      Emu_Cnt => 1);

   --  Slave Trigger Toggle Enable
   type CFG_TGLTRIG_Field is
     (
      --  Slave trigger response depends on SLAVETRIG bit setting
      Tgltrig0,
      --  Slave trigger toggles timer state
      Tgltrig1)
     with Size => 1;
   for CFG_TGLTRIG_Field use
     (Tgltrig0 => 0,
      Tgltrig1 => 1);

   --  Timer n Configuration Register
   type CFG_TMR_Register is record
      --  Timer Mode Select
      TMODE          : CFG_TMODE_Field := NRF_SVD.TIMER0.Idle_Mode0;
      --  Interrupt Modes
      IRQMODE        : CFG_IRQMODE_Field := NRF_SVD.TIMER0.Irqmode0;
      --  Slave Trigger Response
      SLAVETRIG      : CFG_SLAVETRIG_Field := NRF_SVD.TIMER0.Trigstop;
      --  Polarity Response Select
      PULSEHI        : CFG_PULSEHI_Field := NRF_SVD.TIMER0.Neg_Edge;
      --  Clock Select
      CLKSEL         : CFG_CLKSEL_Field := NRF_SVD.TIMER0.Clksel_Sclk;
      --  Timer Input Select (for WIDCAP, WATCHDOG, PININT modes)
      TINSEL         : CFG_TINSEL_Field := NRF_SVD.TIMER0.Tinsel_Tmr;
      --  Output Disable
      OUTDIS         : CFG_OUTDIS_Field := NRF_SVD.TIMER0.Padout_En;
      --  Broadcast Delay Enable
      BDLYEN         : CFG_BDLYEN_Field := NRF_SVD.TIMER0.Bcastdly_Dis;
      --  Broadcast Width Enable
      BWIDEN         : CFG_BWIDEN_Field := NRF_SVD.TIMER0.Bcastwid_Dis;
      --  Broadcast Period Enable
      BPEREN         : CFG_BPEREN_Field := NRF_SVD.TIMER0.Bcastper_Dis;
      --  Emulation Run
      EMURUN         : CFG_EMURUN_Field := NRF_SVD.TIMER0.Emu_Nocnt;
      --  Slave Trigger Toggle Enable
      TGLTRIG        : CFG_TGLTRIG_Field := NRF_SVD.TIMER0.Tgltrig0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_TMR_Register use record
      TMODE          at 0 range 0 .. 3;
      IRQMODE        at 0 range 4 .. 5;
      SLAVETRIG      at 0 range 6 .. 6;
      PULSEHI        at 0 range 7 .. 7;
      CLKSEL         at 0 range 8 .. 9;
      TINSEL         at 0 range 10 .. 10;
      OUTDIS         at 0 range 11 .. 11;
      BDLYEN         at 0 range 12 .. 12;
      BWIDEN         at 0 range 13 .. 13;
      BPEREN         at 0 range 14 .. 14;
      EMURUN         at 0 range 15 .. 15;
      TGLTRIG        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TMR block
   type TMR_Cluster is record
      --  Timer n Configuration Register
      CFG : aliased CFG_TMR_Register;
      --  Timer n Counter Register
      CNT : aliased HAL.UInt32;
      --  Timer n Period Register
      PER : aliased HAL.UInt32;
      --  Timer n Width Register
      WID : aliased HAL.UInt32;
      --  Timer n Delay Register
      DLY : aliased HAL.UInt32;
   end record
     with Volatile, Size => 256;

   for TMR_Cluster use record
      CFG at 16#0# range 0 .. 31;
      CNT at 16#4# range 0 .. 31;
      PER at 16#8# range 0 .. 31;
      WID at 16#C# range 0 .. 31;
      DLY at 16#10# range 0 .. 31;
   end record;

   --  TMR block
   type TMR_Clusters is array (0 .. 7) of TMR_Cluster;

   -----------------------------
   -- TMR cluster's Registers --
   -----------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  General-Purpose Timer Block
   type TIMER0_Peripheral is record
      --  Run Register
      RUN          : aliased RUN_Register;
      --  Run Set Register
      RUN_SET      : aliased RUN_SET_Register;
      --  Run Clear Register
      RUN_CLR      : aliased RUN_CLR_Register;
      --  Stop Configuration Register
      STOP_CFG     : aliased STOP_CFG_Register;
      --  Stop Configuration Set Register
      STOP_CFG_SET : aliased STOP_CFG_SET_Register;
      --  Stop Configuration Clear Register
      STOP_CFG_CLR : aliased STOP_CFG_CLR_Register;
      --  Data Interrupt Mask Register
      DATA_IMSK    : aliased DATA_IMSK_Register;
      --  Status Interrupt Mask Register
      STAT_IMSK    : aliased STAT_IMSK_Register;
      --  Trigger Master Mask Register
      TRG_MSK      : aliased TRG_MSK_Register;
      --  Trigger Slave Enable Register
      TRG_IE       : aliased TRG_IE_Register;
      --  Data Interrupt Latch Register
      DATA_ILAT    : aliased DATA_ILAT_Register;
      --  Status Interrupt Latch Register
      STAT_ILAT    : aliased STAT_ILAT_Register;
      --  Error Type Status Register
      ERR_TYPE     : aliased ERR_TYPE_Register;
      --  Broadcast Period Register
      BCAST_PER    : aliased HAL.UInt32;
      --  Broadcast Width Register
      BCAST_WID    : aliased HAL.UInt32;
      --  Broadcast Delay Register
      BCAST_DLY    : aliased HAL.UInt32;
      --  TMR block
      TMR          : aliased TMR_Clusters;
   end record
     with Volatile;

   for TIMER0_Peripheral use record
      RUN          at 16#4# range 0 .. 31;
      RUN_SET      at 16#8# range 0 .. 31;
      RUN_CLR      at 16#C# range 0 .. 31;
      STOP_CFG     at 16#10# range 0 .. 31;
      STOP_CFG_SET at 16#14# range 0 .. 31;
      STOP_CFG_CLR at 16#18# range 0 .. 31;
      DATA_IMSK    at 16#1C# range 0 .. 31;
      STAT_IMSK    at 16#20# range 0 .. 31;
      TRG_MSK      at 16#24# range 0 .. 31;
      TRG_IE       at 16#28# range 0 .. 31;
      DATA_ILAT    at 16#2C# range 0 .. 31;
      STAT_ILAT    at 16#30# range 0 .. 31;
      ERR_TYPE     at 16#34# range 0 .. 31;
      BCAST_PER    at 16#38# range 0 .. 31;
      BCAST_WID    at 16#3C# range 0 .. 31;
      BCAST_DLY    at 16#40# range 0 .. 31;
      TMR          at 16#60# range 0 .. 2047;
   end record;

   --  General-Purpose Timer Block
   TIMER0_Periph : aliased TIMER0_Peripheral
     with Import, Address => System'To_Address (16#41007000#);

   --  General-Purpose Timer Block
   TIMER1_Periph : aliased TIMER0_Peripheral
     with Import, Address => System'To_Address (16#40021000#);

end NRF_SVD.TIMER0;
