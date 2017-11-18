--

--  This spec has been automatically generated from Z32F1281.svd

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

   --  CR_CLK array
   type CR_CLK_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CR_CLK
   type CR_CLK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLK as a value
            Val : HAL.UInt2;
         when True =>
            --  CLK as an array
            Arr : CR_CLK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR_CLK_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CR_TRIM_Field is HAL.UInt3;

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
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  OTP area A enable
      OTPAE          : Boolean := False;
      --  OTP area B enable
      OTPBE          : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
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
      TIMER          : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  CRC16 Enable
      CRCEN          : Boolean := False;
      --  CRCINIT
      CRCINIT        : Boolean := False;
      --  flash access CLK
      CLK            : CR_CLK_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  PCLK=HCLK*1/2
      PCLK2          : Boolean := False;
      --  TRIM
      TRIM           : CR_TRIM_Field := 16#0#;
      --  HRESPD
      HRESPD         : Boolean := True;
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
      Reserved_9_9   at 0 range 9 .. 9;
      OTPAE          at 0 range 10 .. 10;
      OTPBE          at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      PVER           at 0 range 13 .. 13;
      EVER           at 0 range 14 .. 14;
      VPPOUT         at 0 range 15 .. 15;
      TEST           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      TIMER          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CRCEN          at 0 range 22 .. 22;
      CRCINIT        at 0 range 23 .. 23;
      CLK            at 0 range 24 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PCLK2          at 0 range 27 .. 27;
      TRIM           at 0 range 28 .. 30;
      HRESPD         at 0 range 31 .. 31;
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
      TMR           : TMR_TMR_Field := 16#BB#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
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
      --  Flash Memory Dirty bit Register
      DRTY   : aliased HAL.UInt32;
      --  Flash Memory Tick Timer register
      TICK   : aliased TICK_Register;
      --  Flash Memory CRC value register
      CRC    : aliased CRC_Register;
      --  Boot ROM Remap Clear Register
      BOOTCR : aliased BOOTCR_Register;
   end record
     with Volatile;

   for FM_Peripheral use record
      MR     at 16#4# range 0 .. 31;
      CR     at 16#8# range 0 .. 31;
      AR     at 16#C# range 0 .. 31;
      DR     at 16#10# range 0 .. 31;
      TMR    at 16#14# range 0 .. 31;
      DRTY   at 16#18# range 0 .. 31;
      TICK   at 16#1C# range 0 .. 31;
      CRC    at 16#20# range 0 .. 31;
      BOOTCR at 16#74# range 0 .. 31;
   end record;

   --  FLASH MEMORY CONTROLLER
   FM_Periph : aliased FM_Peripheral
     with Import, Address => System'To_Address (16#40000100#);

end NRF_SVD.FMC;
