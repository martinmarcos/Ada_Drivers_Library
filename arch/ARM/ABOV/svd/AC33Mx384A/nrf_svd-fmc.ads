--

--  This spec has been automatically generated from AC33Mx384A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_ACODE_Field is HAL.UInt8;

   --  Flash Memory Mode Register
   type MR_Register is record
      --  Flash Mode/Trim Mode
      ACODE          : MR_ACODE_Field := 16#0#;
      --  Read-only. Flash Mode status
      FMOD           : Boolean := False;
      --  Read-only. Flash Mode entry status
      FEMOD          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Read-only. Trim Mode status
      TRM            : Boolean := False;
      --  Trim Mode entry status
      TRMEN          : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  AMBA mode enable
      AMBAEN         : Boolean := False;
      --  Read-only. Flash verify Mode enable status
      VERIFY         : Boolean := False;
      --  Read-only. Idle mode enable status
      IDLE           : Boolean := True;
      --  unspecified
      Reserved_25_30 : HAL.UInt6 := 16#0#;
      --  Read-only. Boot Mode enable status
      BOOT           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      ACODE          at 0 range 0 .. 7;
      FMOD           at 0 range 8 .. 8;
      FEMOD          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      TRM            at 0 range 16 .. 16;
      TRMEN          at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      AMBAEN         at 0 range 22 .. 22;
      VERIFY         at 0 range 23 .. 23;
      IDLE           at 0 range 24 .. 24;
      Reserved_25_30 at 0 range 25 .. 30;
      BOOT           at 0 range 31 .. 31;
   end record;

   subtype CR_TEST_Field is HAL.UInt2;

   --  Flash Memory Control Register
   type CR_Register is record
      --  page buffer reset
      PBR            : Boolean := False;
      --  program mode/erase mode Enable
      ERS            : Boolean := False;
      --  PGM
      PGM            : Boolean := False;
      --  page buffer load
      PBLD           : Boolean := False;
      --  write Enable
      WE             : Boolean := False;
      --  Pmode Enable
      PMODE          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  All Erase
      AE             : Boolean := False;
      --  PPGM
      PPGM           : Boolean := False;
      --  OTP area enable
      OTPE           : Boolean := False;
      --  DMY area enable
      DMYE           : Boolean := False;
      --  Block pgm enable for each 128KB
      BLKE           : Boolean := False;
      --  Program verify mode
      PVER           : Boolean := False;
      --  Erase verify Mode
      EVER           : Boolean := False;
      --  Read-only. Charge pump Vpp Output
      VPPOUT         : Boolean := False;
      --  TEST
      TEST           : CR_TEST_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  program timer enable
      TIMER          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#410#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      PBR            at 0 range 0 .. 0;
      ERS            at 0 range 1 .. 1;
      PGM            at 0 range 2 .. 2;
      PBLD           at 0 range 3 .. 3;
      WE             at 0 range 4 .. 4;
      PMODE          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AE             at 0 range 8 .. 8;
      PPGM           at 0 range 9 .. 9;
      OTPE           at 0 range 10 .. 10;
      DMYE           at 0 range 11 .. 11;
      BLKE           at 0 range 12 .. 12;
      PVER           at 0 range 13 .. 13;
      EVER           at 0 range 14 .. 14;
      VPPOUT         at 0 range 15 .. 15;
      TEST           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      TIMER          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype AR_FADDR_Field is HAL.UInt15;

   --  Flash Memory Address Register
   type AR_Register is record
      --  32K words address
      FADDR          : AR_FADDR_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AR_Register use record
      FADDR          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TMR_TMR_Field is HAL.UInt9;

   --  Flash Memory Timer Register
   type TMR_Register is record
      --  Erase/PGM timer
      TMR           : TMR_TMR_Field := 16#1C4#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR_Register use record
      TMR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TICK_FTICK_Field is HAL.UInt18;

   --  Flash Memory Tick Timer register
   type TICK_Register is record
      --  TICK
      FTICK          : TICK_FTICK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TICK_Register use record
      FTICK          at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CRC_CRC_Field is HAL.UInt16;

   --  Flash Memory CRC value register
   type CRC_Register is record
      --  CRC16 Value
      CRC            : CRC_CRC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_Register use record
      CRC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CFG_TRIM_Field is HAL.UInt4;
   subtype CFG_WAIT_Field is HAL.UInt3;
   subtype CFG_WRITEKEY_Field is HAL.UInt16;

   --  Flash Memory CONFIG value register
   type CFG_Register is record
      --  TRIM
      TRIM           : CFG_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  CRC16 Enable
      CRCEN          : Boolean := False;
      --  CRCINIT
      CRCINIT        : Boolean := False;
      --  WAIT
      WAIT           : CFG_WAIT_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  TMRCK
      TMRCK          : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  HRESPD
      HRESPD         : Boolean := False;
      --  WRITEKEY 0x7858
      WRITEKEY       : CFG_WRITEKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      TRIM           at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      CRCEN          at 0 range 6 .. 6;
      CRCINIT        at 0 range 7 .. 7;
      WAIT           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TMRCK          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      HRESPD         at 0 range 15 .. 15;
      WRITEKEY       at 0 range 16 .. 31;
   end record;

   subtype OTPCR_OTPACODE_Field is HAL.UInt8;

   --  Flash Memory CONFIG value register
   type OTPCR_Register is record
      --  OTPAE
      OTPAE          : Boolean := False;
      --  OTPBE
      OTPBE          : Boolean := False;
      --  OTPCE
      OTPCE          : Boolean := False;
      --  OTPDE
      OTPDE          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  OTPACODE
      OTPACODE       : OTPCR_OTPACODE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTPCR_Register use record
      OTPAE          at 0 range 0 .. 0;
      OTPBE          at 0 range 1 .. 1;
      OTPCE          at 0 range 2 .. 2;
      OTPDE          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OTPACODE       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Boot ROM Remap Clear Register
   type BOOTCR_Register is record
      --  Boot mode
      BOOTROM       : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOOTCR_Register use record
      BOOTROM       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PROTECT_WP array
   type PROTECT_WP_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PROTECT_WP
   type PROTECT_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WP as a value
            Val : HAL.UInt16;
         when True =>
            --  WP as an array
            Arr : PROTECT_WP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PROTECT_WP_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype PROTECT_PAS_Field is HAL.UInt3;
   subtype PROTECT_WRITE_KEY_Field is HAL.UInt8;

   --  Write Protection Control Register
   type PROTECT_Register is record
      --  WP0
      WP             : PROTECT_WP_Field := (As_Array => False, Val => 16#0#);
      --  PAS
      PAS            : PROTECT_PAS_Field := 16#0#;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  APR
      APR            : Boolean := False;
      --  WRITE_KEY
      WRITE_KEY      : PROTECT_WRITE_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROTECT_Register use record
      WP             at 0 range 0 .. 15;
      PAS            at 0 range 16 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      APR            at 0 range 23 .. 23;
      WRITE_KEY      at 0 range 24 .. 31;
   end record;

   subtype JTAGEN_WRITE_KEY_Field is HAL.UInt8;

   --  JTAG Protection Control Register
   type JTAGEN_Register is record
      --  JTAGEN
      JTAGEN        : Boolean := True;
      --  unspecified
      Reserved_1_23 : HAL.UInt23 := 16#0#;
      --  WRITE_KEY
      WRITE_KEY     : JTAGEN_WRITE_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JTAGEN_Register use record
      JTAGEN        at 0 range 0 .. 0;
      Reserved_1_23 at 0 range 1 .. 23;
      WRITE_KEY     at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH MEMORY CONTROLLER
   type FM_Peripheral is record
      --  Flash Memory Mode Register
      MR      : aliased MR_Register;
      --  Flash Memory Control Register
      CR      : aliased CR_Register;
      --  Flash Memory Address Register
      AR      : aliased AR_Register;
      --  Flash Memory Data Register
      DR      : aliased HAL.UInt32;
      --  Flash Memory Timer Register
      TMR     : aliased TMR_Register;
      --  Flash Memory Dirty bit Register
      DRTY    : aliased HAL.UInt32;
      --  Flash Memory Tick Timer register
      TICK    : aliased TICK_Register;
      --  Flash Memory CRC value register
      CRC     : aliased CRC_Register;
      --  Flash Memory CONFIG value register
      CFG     : aliased CFG_Register;
      --  Flash Memory CONFIG value register
      OTPCR   : aliased OTPCR_Register;
      --  Boot ROM Remap Clear Register
      BOOTCR  : aliased BOOTCR_Register;
      --  Write Protection Control Register
      PROTECT : aliased PROTECT_Register;
      --  JTAG Protection Control Register
      JTAGEN  : aliased JTAGEN_Register;
   end record
     with Volatile;

   for FM_Peripheral use record
      MR      at 16#4# range 0 .. 31;
      CR      at 16#8# range 0 .. 31;
      AR      at 16#C# range 0 .. 31;
      DR      at 16#10# range 0 .. 31;
      TMR     at 16#14# range 0 .. 31;
      DRTY    at 16#18# range 0 .. 31;
      TICK    at 16#1C# range 0 .. 31;
      CRC     at 16#20# range 0 .. 31;
      CFG     at 16#30# range 0 .. 31;
      OTPCR   at 16#34# range 0 .. 31;
      BOOTCR  at 16#74# range 0 .. 31;
      PROTECT at 16#78# range 0 .. 31;
      JTAGEN  at 16#7C# range 0 .. 31;
   end record;

   --  FLASH MEMORY CONTROLLER
   FM_Periph : aliased FM_Peripheral
     with Import, Address => System'To_Address (16#40000100#);

end NRF_SVD.FMC;
