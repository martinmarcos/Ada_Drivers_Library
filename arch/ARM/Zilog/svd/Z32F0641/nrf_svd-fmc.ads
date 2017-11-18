--

--  This spec has been automatically generated from Z32F0641.svd

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
      --  Read-only. All Erase
      AE             : Boolean := False;
      --  Read-only. Pre PGM enable
      PPGM           : Boolean := False;
      --  Read-only. OTP area A enable
      OTPAE          : Boolean := False;
      --  Read-only. OTP area B enable
      OTPBE          : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Read-only. Program verify mode
      PVER           : Boolean := False;
      --  Read-only. Erase verify Mode
      EVER           : Boolean := False;
      --  Read-only. Charge pump Vpp Output
      VPPOUT         : Boolean := False;
      --  Read-only. TEST
      TEST           : CR_TEST_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Read-only. program timer enable
      TIMER          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
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
      OTPAE          at 0 range 10 .. 10;
      OTPBE          at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      PVER           at 0 range 13 .. 13;
      EVER           at 0 range 14 .. 14;
      VPPOUT         at 0 range 15 .. 15;
      TEST           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      TIMER          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype AR_FADDR_Field is HAL.UInt14;

   --  Flash Memory Address Register
   type AR_Register is record
      --  32K words address
      FADDR          : AR_FADDR_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AR_Register use record
      FADDR          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TMR_TMR_Field is HAL.UInt16;

   --  Flash Memory Timer Register
   type TMR_Register is record
      --  Erase/PGM timer
      TMR            : TMR_TMR_Field := 16#9C4#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMR_Register use record
      TMR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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

   --  Flash Memory Config value register
   type CFG_Register is record
      --  Flash Trim Value
      TRIM           : CFG_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Enable CRC on Flash Read
      CRCEN          : Boolean := False;
      --  Initalize CRC Register
      CRCINIT        : Boolean := False;
      --  Wait Access for Flash
      WAIT           : CFG_WAIT_Field := 16#3#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Timer Clock Source
      TMRCK          : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  HRESP Disable (Error Response Function)
      HRESPD         : Boolean := True;
      --  Write Key for access
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

   subtype PROTECT_WRITE_KEY_Field is HAL.UInt8;

   --  Write Protection Control Register
   type PROTECT_Register is record
      --  WP Block 0
      WP             : PROTECT_WP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write Key
      WRITE_KEY      : PROTECT_WRITE_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROTECT_Register use record
      WP             at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WRITE_KEY      at 0 range 24 .. 31;
   end record;

   subtype JTAGEN_WRITE_KEY_Field is HAL.UInt8;

   --  JTAG Protection Control Register
   type JTAGEN_Register is record
      --  JTAG Enable
      JTAGEN        : Boolean := True;
      --  unspecified
      Reserved_1_23 : HAL.UInt23 := 16#0#;
      --  Write Key
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
      --  Flash Memory Config value register
      CFG     : aliased CFG_Register;
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
      BOOTCR  at 16#74# range 0 .. 31;
      PROTECT at 16#78# range 0 .. 31;
      JTAGEN  at 16#7C# range 0 .. 31;
   end record;

   --  FLASH MEMORY CONTROLLER
   FM_Periph : aliased FM_Peripheral
     with Import, Address => System'To_Address (16#40000100#);

end NRF_SVD.FMC;
