--

--  This spec has been automatically generated from Z32F0642.svd

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
      --  Read-only. Trim Mode entry status
      TRMEN          : Boolean := False;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  Read-only. Flash protection
      PROTEN         : Boolean := False;
      --  Read-only. AMBA mode enable
      AMBAEN         : Boolean := False;
      --  Read-only. Flash test
      TESTEN         : Boolean := False;
      --  Read-only. Idle mode status
      IDLE           : Boolean := True;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
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
      Reserved_18_20 at 0 range 18 .. 20;
      PROTEN         at 0 range 21 .. 21;
      AMBAEN         at 0 range 22 .. 22;
      TESTEN         at 0 range 23 .. 23;
      IDLE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CR_TEST_Field is HAL.UInt2;

   --  CR_OTP array
   type CR_OTP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CR_OTP
   type CR_OTP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OTP as a value
            Val : HAL.UInt4;
         when True =>
            --  OTP as an array
            Arr : CR_OTP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CR_OTP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

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
      --  PPGM
      PPGM           : Boolean := False;
      --  SUBACT
      SUBACT         : Boolean := False;
      --  All Erase
      AEF            : Boolean := False;
      --  AEE
      AEE            : Boolean := False;
      --  OTP area a,b,c,d enable
      OTPE           : Boolean := False;
      --  DUMMY Area enable
      DMYE           : Boolean := False;
      --  128page write enable for full chip writing to save program time
      BLKE           : Boolean := False;
      --  Program verify mode
      PVER           : Boolean := False;
      --  Erase verify Mode
      EVER           : Boolean := False;
      --  Charge pump Vpp Output
      VPPOUT         : Boolean := False;
      --  TEST
      TEST           : CR_TEST_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  program timer enable
      TMREN          : Boolean := False;
      --  unspecified
      Reserved_21_27 : HAL.UInt7 := 16#28#;
      --  OTP0
      OTP            : CR_OTP_Field := (As_Array => False, Val => 16#0#);
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
      PPGM           at 0 range 6 .. 6;
      SUBACT         at 0 range 7 .. 7;
      AEF            at 0 range 8 .. 8;
      AEE            at 0 range 9 .. 9;
      OTPE           at 0 range 10 .. 10;
      DMYE           at 0 range 11 .. 11;
      BLKE           at 0 range 12 .. 12;
      PVER           at 0 range 13 .. 13;
      EVER           at 0 range 14 .. 14;
      VPPOUT         at 0 range 15 .. 15;
      TEST           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      TMREN          at 0 range 20 .. 20;
      Reserved_21_27 at 0 range 21 .. 27;
      OTP            at 0 range 28 .. 31;
   end record;

   subtype AR_FADDR_Field is HAL.UInt15;

   --  Flash Memory Address Register
   type AR_Register is record
      --  16K words address
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

   subtype TMR_TMR_Field is HAL.UInt18;

   --  Flash Memory Timer Register
   type TMR_Register is record
      --  Erase/PGM timer
      TMR            : TMR_TMR_Field := 16#BB#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR_Register use record
      TMR            at 0 range 0 .. 17;
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

   subtype CFG_WAIT_Field is HAL.UInt2;
   subtype CFG_WRITEKEY_Field is HAL.UInt16;

   --  Flash Memory CONFIG value register
   type CFG_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  CRC16 Enable
      CRCEN          : Boolean := False;
      --  CRCINIT
      CRCINIT        : Boolean := False;
      --  WAIT
      WAIT           : CFG_WAIT_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  TESTCLK
      TESTCLK        : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  HRESPD
      HRESPD         : Boolean := False;
      --  WRITEKEY
      WRITEKEY       : CFG_WRITEKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      CRCEN          at 0 range 6 .. 6;
      CRCINIT        at 0 range 7 .. 7;
      WAIT           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TESTCLK        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      HRESPD         at 0 range 15 .. 15;
      WRITEKEY       at 0 range 16 .. 31;
   end record;

   --  Boot ROM Remap Clear Register
   type BOOTCR_Register is record
      --  Boot mode
      BOOTROM       : Boolean := True;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  SRAM remap enable
      SREMAP        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOOTCR_Register use record
      BOOTROM       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SREMAP        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype WPROT_WP_Field is HAL.UInt16;
   subtype WPROT_WPEN_Field is HAL.UInt8;

   --  Flash Memory Write Protection Register
   type WPROT_Register is record
      --  Sector protect
      WP             : WPROT_WP_Field := 16#FF01#;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#FF#;
      --  WP access enable
      WPEN           : WPROT_WPEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPROT_Register use record
      WP             at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WPEN           at 0 range 24 .. 31;
   end record;

   subtype RPROT_RPEN_Field is HAL.UInt8;

   --  RPROT_LOCK array
   type RPROT_LOCK_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RPROT_LOCK
   type RPROT_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : HAL.UInt2;
         when True =>
            --  LOCK as an array
            Arr : RPROT_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RPROT_LOCK_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Flash Memory Read Protection Register
   type RPROT_Register is record
      --  Read Protection Enable
      RPEN          : RPROT_RPEN_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Read-only. JTAG Disable State Flag
      JTAGDIS       : Boolean := False;
      --  Read-only. Read Protection Level 1 State Flag
      LOCK          : RPROT_LOCK_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RPROT_Register use record
      RPEN          at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      JTAGDIS       at 0 range 29 .. 29;
      LOCK          at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH MEMORY CONTROLLER
   type FM_Peripheral is record
      --  Flash Memory Mode Register
      MR     : aliased MR_Register;
      --  Flash Memory Control Register
      CR     : aliased CR_Register;
      --  Flash Memory Address Register
      AR     : aliased AR_Register;
      --  Flash Memory Data Register
      DR     : aliased HAL.UInt32;
      --  Flash Memory Timer Register
      TMR    : aliased TMR_Register;
      --  Flash Memory Dirty Register
      DIRTY  : aliased HAL.UInt32;
      --  Flash Memory Tick Timer register
      TICK   : aliased HAL.UInt32;
      --  Flash Memory CRC value register
      CRC    : aliased CRC_Register;
      --  Flash Memory CONFIG value register
      CFG    : aliased CFG_Register;
      --  Flash Hardware ID Register
      HWID   : aliased HAL.UInt32;
      --  Boot ROM Remap Clear Register
      BOOTCR : aliased BOOTCR_Register;
      --  Flash Memory Write Protection Register
      WPROT  : aliased WPROT_Register;
      --  Flash Memory Read Protection Register
      RPROT  : aliased RPROT_Register;
   end record
     with Volatile;

   for FM_Peripheral use record
      MR     at 16#4# range 0 .. 31;
      CR     at 16#8# range 0 .. 31;
      AR     at 16#C# range 0 .. 31;
      DR     at 16#10# range 0 .. 31;
      TMR    at 16#14# range 0 .. 31;
      DIRTY  at 16#18# range 0 .. 31;
      TICK   at 16#1C# range 0 .. 31;
      CRC    at 16#20# range 0 .. 31;
      CFG    at 16#30# range 0 .. 31;
      HWID   at 16#40# range 0 .. 31;
      BOOTCR at 16#74# range 0 .. 31;
      WPROT  at 16#78# range 0 .. 31;
      RPROT  at 16#7C# range 0 .. 31;
   end record;

   --  FLASH MEMORY CONTROLLER
   FM_Periph : aliased FM_Peripheral
     with Import, Address => System'To_Address (16#40000100#);

end NRF_SVD.FMC;
