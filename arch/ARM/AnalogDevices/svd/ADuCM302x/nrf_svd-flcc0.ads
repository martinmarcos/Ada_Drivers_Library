--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLCC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype STAT_CMDFAIL_Field is HAL.UInt2;
   subtype STAT_ECCERRCMD_Field is HAL.UInt2;
   subtype STAT_ECCRDERR_Field is HAL.UInt2;
   subtype STAT_ECCINFOSIGN_Field is HAL.UInt2;
   subtype STAT_ECCERRCNT_Field is HAL.UInt3;
   subtype STAT_ECCICODE_Field is HAL.UInt2;
   subtype STAT_ECCDCODE_Field is HAL.UInt2;

   --  Status
   type STAT_Register is record
      --  Read-only. Command Busy
      CMDBUSY        : Boolean := False;
      --  Read-only. WRITE Registers are Closed
      WRCLOSE        : Boolean := False;
      --  Read-only. Command Complete
      CMDCOMP        : Boolean := False;
      --  Read-only. Write Almost Complete
      WRALCOMP       : Boolean := False;
      --  Read-only. Provides Information on Command Failures
      CMDFAIL        : STAT_CMDFAIL_Field := 16#0#;
      --  Read-only. Flash Array is in Low Power (Sleep) Mode
      SLEEPING       : Boolean := False;
      --  Read-only. ECC Errors Detected During User Issued SIGN Command
      ECCERRCMD      : STAT_ECCERRCMD_Field := 16#0#;
      --  Read-only. ECC IRQ Cause
      ECCRDERR       : STAT_ECCRDERR_Field := 16#0#;
      --  Overlapping Command
      OVERLAP        : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Read-only. Signature Check Failure During Initialization
      SIGNERR        : Boolean := False;
      --  Read-only. Flash Controller Initialization in Progress
      INIT           : Boolean := False;
      --  Read-only. ECC Status of Flash Initialization
      ECCINFOSIGN    : STAT_ECCINFOSIGN_Field := 16#0#;
      --  Read-only. ECC Correction Counter
      ECCERRCNT      : STAT_ECCERRCNT_Field := 16#0#;
      --  unspecified
      Reserved_20_24 : HAL.UInt5 := 16#0#;
      --  Read-only. ICode AHB Bus Error ECC Status
      ECCICODE       : STAT_ECCICODE_Field := 16#0#;
      --  Read-only. DCode AHB Bus Error ECC Status
      ECCDCODE       : STAT_ECCDCODE_Field := 16#0#;
      --  Read-only. SRAM Parity Errors in Cache Controller
      CACHESRAMPERR  : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      CMDBUSY        at 0 range 0 .. 0;
      WRCLOSE        at 0 range 1 .. 1;
      CMDCOMP        at 0 range 2 .. 2;
      WRALCOMP       at 0 range 3 .. 3;
      CMDFAIL        at 0 range 4 .. 5;
      SLEEPING       at 0 range 6 .. 6;
      ECCERRCMD      at 0 range 7 .. 8;
      ECCRDERR       at 0 range 9 .. 10;
      OVERLAP        at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      SIGNERR        at 0 range 13 .. 13;
      INIT           at 0 range 14 .. 14;
      ECCINFOSIGN    at 0 range 15 .. 16;
      ECCERRCNT      at 0 range 17 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      ECCICODE       at 0 range 25 .. 26;
      ECCDCODE       at 0 range 27 .. 28;
      CACHESRAMPERR  at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Control 2-bit ECC Error Events
   type IEN_ECC_ERROR_Field is
     (
      --  Do not generate a response to ECC events
      None_ERR,
      --  Generate Bus Errors in response to ECC events
      Bus_Err_ERR,
      --  Generate IRQs in response to ECC events
      Irq_ERR)
     with Size => 2;
   for IEN_ECC_ERROR_Field use
     (None_ERR => 0,
      Bus_Err_ERR => 1,
      Irq_ERR => 2);

   --  Interrupt Enable
   type IEN_Register is record
      --  Command Complete Interrupt Enable
      CMDCMPLT      : Boolean := False;
      --  Write Almost Complete Interrupt Enable
      WRALCMPLT     : Boolean := False;
      --  Command Fail Interrupt Enable
      CMDFAIL       : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#4#;
      --  Control 2-bit ECC Error Events
      ECC_ERROR     : IEN_ECC_ERROR_Field := NRF_SVD.FLCC0.Bus_Err_ERR;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      CMDCMPLT      at 0 range 0 .. 0;
      WRALCMPLT     at 0 range 1 .. 1;
      CMDFAIL       at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      ECC_ERROR     at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Commands
   type CMD_VALUE_Field is
     (
      --  IDLE
      Idle,
      --  ABORT
      Abort_k,
      --  Requests flash to enter Sleep mode
      Sleep,
      --  SIGN
      Sign,
      --  WRITE
      Write,
      --  Checks all of User Space; fails if any bits in user space are cleared
      Blank_Check,
      --  ERASEPAGE
      Erasepage,
      --  MASSERASE
      Masserase)
     with Size => 4;
   for CMD_VALUE_Field use
     (Idle => 0,
      Abort_k => 1,
      Sleep => 2,
      Sign => 3,
      Write => 4,
      Blank_Check => 5,
      Erasepage => 6,
      Masserase => 7);

   --  Command
   type CMD_Register is record
      --  Commands
      VALUE         : CMD_VALUE_Field := NRF_SVD.FLCC0.Idle;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      VALUE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype KH_ADDR_VALUE_Field is HAL.UInt16;

   --  Write Address
   type KH_ADDR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Key Hole Address
      VALUE          : KH_ADDR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KH_ADDR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      VALUE          at 0 range 3 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PAGE_ADDR_VALUE_Field is HAL.UInt9;

   --  Lower Page Address
   type PAGE_ADDR_Register is record
      --  unspecified
      Reserved_0_9   : HAL.UInt10 := 16#0#;
      --  Lower Address Bits of the Page Address
      VALUE          : PAGE_ADDR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAGE_ADDR_Register use record
      Reserved_0_9   at 0 range 0 .. 9;
      VALUE          at 0 range 10 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  User Configuration
   type UCFG_Register is record
      --  Key Hole DMA Enable
      KHDMAEN       : Boolean := False;
      --  Auto Address Increment for Key Hole Access
      AUTOINCEN     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCFG_Register use record
      KHDMAEN       at 0 range 0 .. 0;
      AUTOINCEN     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TIME_PARAM0_TNVS_Field is HAL.UInt4;
   subtype TIME_PARAM0_TPGS_Field is HAL.UInt4;
   subtype TIME_PARAM0_TPROG_Field is HAL.UInt4;
   subtype TIME_PARAM0_TNVH_Field is HAL.UInt4;
   subtype TIME_PARAM0_TRCV_Field is HAL.UInt4;
   subtype TIME_PARAM0_TERASE_Field is HAL.UInt4;
   subtype TIME_PARAM0_TNVH1_Field is HAL.UInt4;

   --  Time Parameter 0
   type TIME_PARAM0_Register is record
      --  Divide Reference Clock (by 2)
      DIVREFCLK    : Boolean := False;
      --  unspecified
      Reserved_1_3 : HAL.UInt3 := 16#0#;
      --  PROG/ERASE to NVSTR Setup Time
      TNVS         : TIME_PARAM0_TNVS_Field := 16#5#;
      --  NVSTR to Program Setup Time
      TPGS         : TIME_PARAM0_TPGS_Field := 16#9#;
      --  Program Time
      TPROG        : TIME_PARAM0_TPROG_Field := 16#5#;
      --  NVSTR Hold Time
      TNVH         : TIME_PARAM0_TNVH_Field := 16#5#;
      --  Recovery Time
      TRCV         : TIME_PARAM0_TRCV_Field := 16#9#;
      --  Erase Time
      TERASE       : TIME_PARAM0_TERASE_Field := 16#8#;
      --  NVSTR Hold Time During Mass Erase
      TNVH1        : TIME_PARAM0_TNVH1_Field := 16#B#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_PARAM0_Register use record
      DIVREFCLK    at 0 range 0 .. 0;
      Reserved_1_3 at 0 range 1 .. 3;
      TNVS         at 0 range 4 .. 7;
      TPGS         at 0 range 8 .. 11;
      TPROG        at 0 range 12 .. 15;
      TNVH         at 0 range 16 .. 19;
      TRCV         at 0 range 20 .. 23;
      TERASE       at 0 range 24 .. 27;
      TNVH1        at 0 range 28 .. 31;
   end record;

   subtype TIME_PARAM1_TWK_Field is HAL.UInt4;

   --  Time Parameter 1
   type TIME_PARAM1_Register is record
      --  Wakeup Time
      TWK           : TIME_PARAM1_TWK_Field := 16#4#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_PARAM1_Register use record
      TWK           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ECC_CFG_PTR_Field is HAL.UInt24;

   --  ECC Configuration
   type ECC_CFG_Register is record
      --  ECC Enable
      EN           : Boolean := False;
      --  Info Space ECC Enable Bit
      INFOEN       : Boolean := True;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
      --  ECC Start Page Pointer
      PTR          : ECC_CFG_PTR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_CFG_Register use record
      EN           at 0 range 0 .. 0;
      INFOEN       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
      PTR          at 0 range 8 .. 31;
   end record;

   subtype ECC_ADDR_VALUE_Field is HAL.UInt19;

   --  ECC Status (Address)
   type ECC_ADDR_Register is record
      --  Read-only. ECC Error Address
      VALUE          : ECC_ADDR_VALUE_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_ADDR_Register use record
      VALUE          at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Flash Security
   type POR_SEC_Register is record
      --  Prevent Read/Write Access to User Space (Sticky When Set)
      SECURE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POR_SEC_Register use record
      SECURE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Volatile Flash Configuration
   type VOL_CFG_Register is record
      --  Alias the Info Space to the Base Address of User Space
      INFO_REMAP    : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VOL_CFG_Register use record
      INFO_REMAP    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Controller
   type FLCC0_Peripheral is record
      --  Status
      STAT          : aliased STAT_Register;
      --  Interrupt Enable
      IEN           : aliased IEN_Register;
      --  Command
      CMD           : aliased CMD_Register;
      --  Write Address
      KH_ADDR       : aliased KH_ADDR_Register;
      --  Write Lower Data
      KH_DATA0      : aliased HAL.UInt32;
      --  Write Upper Data
      KH_DATA1      : aliased HAL.UInt32;
      --  Lower Page Address
      PAGE_ADDR0    : aliased PAGE_ADDR_Register;
      --  Upper Page Address
      PAGE_ADDR1    : aliased PAGE_ADDR_Register;
      --  Key
      KEY           : aliased HAL.UInt32;
      --  Write Abort Address
      WR_ABORT_ADDR : aliased HAL.UInt32;
      --  Write Protection
      WRPROT        : aliased HAL.UInt32;
      --  Signature
      SIGNATURE     : aliased HAL.UInt32;
      --  User Configuration
      UCFG          : aliased UCFG_Register;
      --  Time Parameter 0
      TIME_PARAM0   : aliased TIME_PARAM0_Register;
      --  Time Parameter 1
      TIME_PARAM1   : aliased TIME_PARAM1_Register;
      --  IRQ Abort Enable (Lower Bits)
      ABORT_EN_LO   : aliased HAL.UInt32;
      --  IRQ Abort Enable (Upper Bits)
      ABORT_EN_HI   : aliased HAL.UInt32;
      --  ECC Configuration
      ECC_CFG       : aliased ECC_CFG_Register;
      --  ECC Status (Address)
      ECC_ADDR      : aliased ECC_ADDR_Register;
      --  Flash Security
      POR_SEC       : aliased POR_SEC_Register;
      --  Volatile Flash Configuration
      VOL_CFG       : aliased VOL_CFG_Register;
   end record
     with Volatile;

   for FLCC0_Peripheral use record
      STAT          at 16#0# range 0 .. 31;
      IEN           at 16#4# range 0 .. 31;
      CMD           at 16#8# range 0 .. 31;
      KH_ADDR       at 16#C# range 0 .. 31;
      KH_DATA0      at 16#10# range 0 .. 31;
      KH_DATA1      at 16#14# range 0 .. 31;
      PAGE_ADDR0    at 16#18# range 0 .. 31;
      PAGE_ADDR1    at 16#1C# range 0 .. 31;
      KEY           at 16#20# range 0 .. 31;
      WR_ABORT_ADDR at 16#24# range 0 .. 31;
      WRPROT        at 16#28# range 0 .. 31;
      SIGNATURE     at 16#2C# range 0 .. 31;
      UCFG          at 16#30# range 0 .. 31;
      TIME_PARAM0   at 16#34# range 0 .. 31;
      TIME_PARAM1   at 16#38# range 0 .. 31;
      ABORT_EN_LO   at 16#3C# range 0 .. 31;
      ABORT_EN_HI   at 16#40# range 0 .. 31;
      ECC_CFG       at 16#44# range 0 .. 31;
      ECC_ADDR      at 16#48# range 0 .. 31;
      POR_SEC       at 16#50# range 0 .. 31;
      VOL_CFG       at 16#54# range 0 .. 31;
   end record;

   --  Flash Controller
   FLCC0_Periph : aliased FLCC0_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

end NRF_SVD.FLCC0;
