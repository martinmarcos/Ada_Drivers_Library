--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash Controller Control Register
   type CTL_Register is record
      --  Command Mode
      CMDM          : Boolean := False;
      --  Wake on access enable
      WKAE          : Boolean := False;
      --  Information block Read Enable
      IRFREN        : Boolean := False;
      --  Information block Write Enable
      IRFWEN        : Boolean := False;
      --  Manual ECC Mode
      MECC          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      CMDM          at 0 range 0 .. 0;
      WKAE          at 0 range 1 .. 1;
      IRFREN        at 0 range 2 .. 2;
      IRFWEN        at 0 range 3 .. 3;
      MECC          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Flash controller commands
   type CMD_FLCMDS_Field is
     (
      --  Reset value for the field
      Cmd_Flcmds_Field_Reset,
      --  Page erase command
      Per,
      --  Mass Erase command
      Mer,
      --  Program command
      Pgmc,
      --  Start Program Mode
      Spgmm,
      --  End Program Mode
      Epgmm,
      --  Read Command
      Rdc,
      --  Sleep command
      Slpc,
      --  Wakeup from sleep
      Wksl,
      --  Update timing info
      Utm,
      --  Abort the current command
      Abort_k)
     with Size => 4;
   for CMD_FLCMDS_Field use
     (Cmd_Flcmds_Field_Reset => 0,
      Per => 1,
      Mer => 2,
      Pgmc => 3,
      Spgmm => 4,
      Epgmm => 5,
      Rdc => 6,
      Slpc => 7,
      Wksl => 8,
      Utm => 11,
      Abort_k => 15);

   --  Flash Controller Command Register
   type CMD_Register is record
      --  Flash controller commands
      FLCMDS        : CMD_FLCMDS_Field := Cmd_Flcmds_Field_Reset;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      FLCMDS        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Flash Controller Interrupt Enable Register
   type IMSK_Register is record
      --  Interrupt Enable on completion of Page Erase command
      PER            : Boolean := False;
      --  Interrupt Enable on completion of Mass Erase command
      MER            : Boolean := False;
      --  Interrupt Enable on completion of Program command
      PGM            : Boolean := False;
      --  Interrupt Enable on completion of Program Mode Change Command
      PGMMC          : Boolean := False;
      --  Interrupt Enable on completion of Power Down command
      PDN            : Boolean := False;
      --  Interrupt Enable on completion of Wakeup Commands
      WKUP           : Boolean := False;
      --  Interrupt Enable on completion of Update Timing Command
      UTM            : Boolean := False;
      --  Interrupt Enable On Completion Of Abort Command.
      ABORT_k        : Boolean := False;
      --  Interrupt Enable on improper flash command
      IFL            : Boolean := False;
      --  Interrupt enable on core Multi bit error
      MBERRC         : Boolean := False;
      --  Interrupt enable on DMA Multi bit error
      MBERRD         : Boolean := False;
      --  Interrupt enable on flash controller command read multi bit error
      MBERRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      PER            at 0 range 0 .. 0;
      MER            at 0 range 1 .. 1;
      PGM            at 0 range 2 .. 2;
      PGMMC          at 0 range 3 .. 3;
      PDN            at 0 range 4 .. 4;
      WKUP           at 0 range 5 .. 5;
      UTM            at 0 range 6 .. 6;
      ABORT_k        at 0 range 7 .. 7;
      IFL            at 0 range 8 .. 8;
      MBERRC         at 0 range 9 .. 9;
      MBERRD         at 0 range 10 .. 10;
      MBERRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADDR_YADR_Field is HAL.UInt9;
   subtype ADDR_XADR_Field is HAL.UInt10;

   --  Flash controller Command Address Register
   type ADDR_Register is record
      --  Flash Controller Command Column Address (YADR)
      YADR           : ADDR_YADR_Field := 16#0#;
      --  Flash Controller Command Row Address (XADR)
      XADR           : ADDR_XADR_Field := 16#0#;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  Information block Select
      IRFSEL         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDR_Register use record
      YADR           at 0 range 0 .. 8;
      XADR           at 0 range 9 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      IRFSEL         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ECC_VALUE_Field is HAL.UInt8;

   --  Flash Controller Command ECC register
   type ECC_Register is record
      --  Flash Controller ECC bits
      VALUE         : ECC_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Flash Controller Status Register
   type STAT_Register is record
      --  Read-only. Page erase command pending
      PERP           : Boolean := False;
      --  Read-only. Mass Erase command pending
      MERP           : Boolean := False;
      --  Read-only. Program command pending
      PGMCP          : Boolean := False;
      --  Read-only. Program Mode Change pending
      PGMMP          : Boolean := False;
      --  Read-only. Read command pending
      RDCP           : Boolean := False;
      --  Read-only. Sleep command pending
      SLPCP          : Boolean := False;
      --  Read-only. Power down command pending
      PDNCP          : Boolean := False;
      --  Read-only. Wakeup Command pending
      WKUPP          : Boolean := False;
      --  Read-only. Update Timing Registers Pending
      UTMP           : Boolean := False;
      --  Read-only. Abort Command Pending.
      ABTP           : Boolean := False;
      --  Command executed
      CMDEX          : Boolean := False;
      --  Read-only. Controller in Program MODE
      PGMM           : Boolean := False;
      --  Read-only. Controller in Command Mode
      CMDM           : Boolean := False;
      --  Command Issued in Busy State
      CFBUSY         : Boolean := False;
      --  Command Issued in sleep mode
      CFSLP          : Boolean := False;
      --  Command issued in non command mode
      CFNCMDM        : Boolean := False;
      --  Command violated information block privileges
      CIRFERR        : Boolean := False;
      --  Command violated program mode guidelines
      CPGMERR        : Boolean := False;
      --  Read-only. Flash in Power down State
      PDN            : Boolean := False;
      --  Read-only. Flash in Sleep State
      SLP            : Boolean := False;
      --  ECC Single Bit Correction Threshold reached - All Reads
      EERRSRT        : Boolean := False;
      --  ECC Error Sticky Multi Bit - Core reads
      EERRMC         : Boolean := False;
      --  ECC Error Sticky Multi Bit - DMA reads
      EERRMD         : Boolean := False;
      --  ECC Error Sticky Multi Bit - Command reads
      EERRMF         : Boolean := False;
      --  ECC Error Sticky Multi Bit Pre-fetcher Read
      EERRMP         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      PERP           at 0 range 0 .. 0;
      MERP           at 0 range 1 .. 1;
      PGMCP          at 0 range 2 .. 2;
      PGMMP          at 0 range 3 .. 3;
      RDCP           at 0 range 4 .. 4;
      SLPCP          at 0 range 5 .. 5;
      PDNCP          at 0 range 6 .. 6;
      WKUPP          at 0 range 7 .. 7;
      UTMP           at 0 range 8 .. 8;
      ABTP           at 0 range 9 .. 9;
      CMDEX          at 0 range 10 .. 10;
      PGMM           at 0 range 11 .. 11;
      CMDM           at 0 range 12 .. 12;
      CFBUSY         at 0 range 13 .. 13;
      CFSLP          at 0 range 14 .. 14;
      CFNCMDM        at 0 range 15 .. 15;
      CIRFERR        at 0 range 16 .. 16;
      CPGMERR        at 0 range 17 .. 17;
      PDN            at 0 range 18 .. 18;
      SLP            at 0 range 19 .. 19;
      EERRSRT        at 0 range 20 .. 20;
      EERRMC         at 0 range 21 .. 21;
      EERRMD         at 0 range 22 .. 22;
      EERRMF         at 0 range 23 .. 23;
      EERRMP         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CMD_KEY_VALUE_Field is HAL.UInt16;

   --  Flash Controller Command Key Register
   type CMD_KEY_Register is record
      --  Command key
      VALUE          : CMD_KEY_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_KEY_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SBERR_THR_THR_Field is HAL.UInt8;

   --  Flash Controller ECC Single Bit Error Threshold Register
   type SBERR_THR_Register is record
      --  ECC Single Bit Error Threshold
      THR           : SBERR_THR_THR_Field := 16#0#;
      --  ECC Single bit Error Counter Enable
      CNTEN         : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SBERR_THR_Register use record
      THR           at 0 range 0 .. 7;
      CNTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TIM_PWR_WKS_Field is HAL.UInt12;
   subtype TIM_PWR_SH_Field is HAL.UInt6;

   --  Flash Controller Power Timing Register
   type TIM_PWR_Register is record
      --  Wakeup time from sleep to standby
      WKS            : TIM_PWR_WKS_Field := 16#578#;
      --  Standby hold time
      SH             : TIM_PWR_SH_Field := 16#14#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM_PWR_Register use record
      WKS            at 0 range 0 .. 11;
      SH             at 0 range 12 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Performance Mode
   type PRFCTL_PMODE_Field is
     (
      --  Performance Mode A is <= 75 MHz
      A,
      --  Performance Mode B is 76 to 150 MHz
      B,
      --  Performance Mode C is 151 to 225 MHz
      C,
      --  Performance Mode E is 226 to 240 MHz
      E)
     with Size => 3;
   for PRFCTL_PMODE_Field use
     (A => 0,
      B => 2,
      C => 4,
      E => 6);

   --  Flash Prefetch Control Register
   type PRFCTL_Register is record
      --  Pre-fetcher Enable
      PRFEN         : Boolean := True;
      --  Performance Mode
      PMODE         : PRFCTL_PMODE_Field := NRF_SVD.FLC0.C;
      --  Performance Counters Enable
      PEREN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRFCTL_Register use record
      PRFEN         at 0 range 0 .. 0;
      PMODE         at 0 range 1 .. 3;
      PEREN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FILL_CNT_CNT_Field is HAL.UInt23;

   --  Flash Pre-fetcher Fill Count Register
   type FILL_CNT_Register is record
      --  Fill Count
      CNT            : FILL_CNT_CNT_Field := 16#0#;
      --  Fill Count Overflow
      OVF            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FILL_CNT_Register use record
      CNT            at 0 range 0 .. 22;
      OVF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MISS_CNT_CNT_Field is HAL.UInt23;

   --  Flash Pre-fetcher Miss Count Register
   type MISS_CNT_Register is record
      --  Miss Count.
      CNT            : MISS_CNT_CNT_Field := 16#0#;
      --  Miss Count Overflow
      OVF            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISS_CNT_Register use record
      CNT            at 0 range 0 .. 22;
      OVF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype REF_CNT_CNT_Field is HAL.UInt23;

   --  Flash Pre-fetcher Reference Count Register
   type REF_CNT_Register is record
      --  Reference Count.
      CNT            : REF_CNT_CNT_Field := 16#0#;
      --  Reference Count Overflow.
      OVF            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REF_CNT_Register use record
      CNT            at 0 range 0 .. 22;
      OVF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype REVID_REV_Field is HAL.UInt4;
   subtype REVID_MAJOR_Field is HAL.UInt4;

   --  Revision ID
   type REVID_Register is record
      --  Read-only. Incremental Revision ID
      REV           : REVID_REV_Field;
      --  Read-only. Major Revision ID
      MAJOR         : REVID_MAJOR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REVID_Register use record
      REV           at 0 range 0 .. 3;
      MAJOR         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Controller
   type FLC0_Peripheral is record
      --  Flash Controller Control Register
      CTL       : aliased CTL_Register;
      --  Flash Controller Command Register
      CMD       : aliased CMD_Register;
      --  Flash Controller Interrupt Enable Register
      IMSK      : aliased IMSK_Register;
      --  Flash controller Command Address Register
      ADDR      : aliased ADDR_Register;
      --  Flash Controller Command Data Register 0
      DATA0     : aliased HAL.UInt32;
      --  Flash Controller Command Data Register 1
      DATA1     : aliased HAL.UInt32;
      --  Flash Controller Command ECC register
      ECC       : aliased ECC_Register;
      --  Flash Controller Status Register
      STAT      : aliased STAT_Register;
      --  Flash Controller Command Key Register
      CMD_KEY   : aliased CMD_KEY_Register;
      --  Flash Controller ECC Single Bit Error Threshold Register
      SBERR_THR : aliased SBERR_THR_Register;
      --  Flash Controller Power Timing Register
      TIM_PWR   : aliased TIM_PWR_Register;
      --  Flash Prefetch Control Register
      PRFCTL    : aliased PRFCTL_Register;
      --  Flash Pre-fetcher Fill Count Register
      FILL_CNT  : aliased FILL_CNT_Register;
      --  Flash Pre-fetcher Miss Count Register
      MISS_CNT  : aliased MISS_CNT_Register;
      --  Flash Pre-fetcher Reference Count Register
      REF_CNT   : aliased REF_CNT_Register;
      --  Revision ID
      REVID     : aliased REVID_Register;
   end record
     with Volatile;

   for FLC0_Peripheral use record
      CTL       at 16#0# range 0 .. 31;
      CMD       at 16#4# range 0 .. 31;
      IMSK      at 16#8# range 0 .. 31;
      ADDR      at 16#C# range 0 .. 31;
      DATA0     at 16#10# range 0 .. 31;
      DATA1     at 16#14# range 0 .. 31;
      ECC       at 16#18# range 0 .. 31;
      STAT      at 16#1C# range 0 .. 31;
      CMD_KEY   at 16#20# range 0 .. 31;
      SBERR_THR at 16#24# range 0 .. 31;
      TIM_PWR   at 16#30# range 0 .. 31;
      PRFCTL    at 16#40# range 0 .. 31;
      FILL_CNT  at 16#44# range 0 .. 31;
      MISS_CNT  at 16#48# range 0 .. 31;
      REF_CNT   at 16#4C# range 0 .. 31;
      REVID     at 16#54# range 0 .. 31;
   end record;

   --  Flash Controller
   FLC0_Periph : aliased FLC0_Peripheral
     with Import, Address => System'To_Address (16#F8010000#);

   --  Flash Controller
   FLC1_Periph : aliased FLC0_Peripheral
     with Import, Address => System'To_Address (16#F8011000#);

end NRF_SVD.FLC0;
