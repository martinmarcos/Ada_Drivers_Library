--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.M4P is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Code/Data Banks Partition
   type SRAM_CFG_CDBANKS_Field is
     (
      --  No CODE Config Banks: all assigned to Data
      Sram_Code_0,
      --  1 CODE Config Bank
      Sram_Code_1,
      --  2 CODE Config Banks
      Sram_Code_2,
      --  3 CODE Config Banks
      Sram_Code_3,
      --  4 CODE Config Banks
      Sram_Code_4,
      --  5 CODE Config Banks
      Sram_Code_5)
     with Size => 4;
   for SRAM_CFG_CDBANKS_Field use
     (Sram_Code_0 => 0,
      Sram_Code_1 => 1,
      Sram_Code_2 => 2,
      Sram_Code_3 => 3,
      Sram_Code_4 => 4,
      Sram_Code_5 => 5);

   --  Enable Posted System Writes
   type SRAM_CFG_POSTWR_Field is
     (
      --  Normal System Writes
      Normsyswrite,
      --  Posted System Writes
      Postsyswrite)
     with Size => 1;
   for SRAM_CFG_POSTWR_Field use
     (Normsyswrite => 0,
      Postsyswrite => 1);

   --  Enable Accessing the Raw data and ECC Bit in Memory
   type SRAM_CFG_MAP_Field is
     (
      --  Normal Operation
      Normal,
      --  Map Data
      Ecc_Bypass_Wr_Data,
      --  Map ECC
      Ecc_Bypass_Wr_Ecc)
     with Size => 2;
   for SRAM_CFG_MAP_Field use
     (Normal => 0,
      Ecc_Bypass_Wr_Data => 2,
      Ecc_Bypass_Wr_Ecc => 3);

   subtype SRAM_CFG_DMAMAXLAT_Field is HAL.UInt4;

   --  SRAM Configuration Register
   type SRAM_CFG_Register is record
      --  Code/Data Banks Partition
      CDBANKS        : SRAM_CFG_CDBANKS_Field := NRF_SVD.M4P.Sram_Code_2;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  Enable Sync Bypass
      SYNCCLK        : Boolean := False;
      --  Enable Posted System Writes
      POSTWR         : SRAM_CFG_POSTWR_Field := NRF_SVD.M4P.Normsyswrite;
      --  Enable ECC interrupt, Core
      EERRCORE       : Boolean := False;
      --  Enable ECC interrupt, DMA
      EERRDMA        : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Enable Accessing the Raw data and ECC Bit in Memory
      MAP            : SRAM_CFG_MAP_Field := NRF_SVD.M4P.Normal;
      --  Enable SRAM Auto-refresh ECC State
      RFR            : Boolean := False;
      --  Enable SRAM Initialization
      INIT           : Boolean := False;
      --  Enable initialization Done Interrupt
      INITDONE       : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  DMA Maximum Latency
      DMAMAXLAT      : SRAM_CFG_DMAMAXLAT_Field := 16#8#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_CFG_Register use record
      CDBANKS        at 0 range 0 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      SYNCCLK        at 0 range 11 .. 11;
      POSTWR         at 0 range 12 .. 12;
      EERRCORE       at 0 range 13 .. 13;
      EERRDMA        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MAP            at 0 range 16 .. 17;
      RFR            at 0 range 18 .. 18;
      INIT           at 0 range 19 .. 19;
      INITDONE       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      DMAMAXLAT      at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype BUSFLT_ADDR_Field is HAL.UInt30;

   --  Bus Fault Error Information Register
   type BUSFLT_Register is record
      --  Bus Fault Status
      STAT         : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Read-only. Bus Fault Address
      ADDR         : BUSFLT_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUSFLT_Register use record
      STAT         at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   subtype STCALIB_TENMS_Field is HAL.UInt24;

   --  SysTick Ref Clock Implementation
   type STCALIB_NOREF_Field is
     (
      --  SYSTICK External Reference Clock is Implemented
      Xrefclk,
      --  SYSTICK External Reference Clock is Not Implemented
      No_Xrefclk)
     with Size => 1;
   for STCALIB_NOREF_Field use
     (Xrefclk => 0,
      No_Xrefclk => 1);

   --  SysTick Calibration Register
   type STCALIB_Register is record
      --  SysTick 10ms Calibration
      TENMS          : STCALIB_TENMS_Field := 16#1E8480#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  SysTick Inexact
      SKEW           : Boolean := False;
      --  Read-only. SysTick Ref Clock Implementation
      NOREF          : STCALIB_NOREF_Field := NRF_SVD.M4P.No_Xrefclk;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   --  SRAM Initialization Done Status Register
   type SRAM_INITDONE_Register is record
      --  SRAM Initialization Done Status
      STAT          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_INITDONE_Register use record
      STAT          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SRAM_EEADDR_CORE_ADDR_Field is HAL.UInt18;

   --  ECC Bus Interface
   type SRAM_EEADDR_CORE_BUS_Field is
     (
      --  ECC Error from I-CODE Interface
      Ibus,
      --  ECC Error from D-Code Interface
      Dbus,
      --  ECC Error from SYS Interface
      Sbus)
     with Size => 2;
   for SRAM_EEADDR_CORE_BUS_Field use
     (Ibus => 0,
      Dbus => 1,
      Sbus => 2);

   --  SRAM ECC Error Address (Core) Register
   type SRAM_EEADDR_CORE_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Read-only. ECC Error Address
      ADDR           : SRAM_EEADDR_CORE_ADDR_Field := 16#0#;
      --  Read-only. ECC Bus Interface
      BUS            : SRAM_EEADDR_CORE_BUS_Field := NRF_SVD.M4P.Ibus;
      --  unspecified
      Reserved_22_29 : HAL.UInt8 := 16#0#;
      --  Multiple ECC Error Detected
      MEERR          : Boolean := False;
      --  ECC Error Detected
      EERR           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_EEADDR_CORE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ADDR           at 0 range 2 .. 19;
      BUS            at 0 range 20 .. 21;
      Reserved_22_29 at 0 range 22 .. 29;
      MEERR          at 0 range 30 .. 30;
      EERR           at 0 range 31 .. 31;
   end record;

   subtype SRAM_EEADDR_DMA_ADDR_Field is HAL.UInt18;

   --  SRAM ECC Error Address (DMA) Register
   type SRAM_EEADDR_DMA_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Read-only. ECC Error Address
      ADDR           : SRAM_EEADDR_DMA_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_29 : HAL.UInt10 := 16#0#;
      --  Multiple ECC Errors Detected
      MEERR          : Boolean := False;
      --  ECC Error Detected
      EERR           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_EEADDR_DMA_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ADDR           at 0 range 2 .. 19;
      Reserved_20_29 at 0 range 20 .. 29;
      MEERR          at 0 range 30 .. 30;
      EERR           at 0 range 31 .. 31;
   end record;

   subtype SRAM_RFRADDR_VALUE_Field is HAL.UInt18;

   --  SRAM Refresh Address
   type SRAM_RFRADDR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2;
      --  Read-only. SRAM Auto-refresh Address
      VALUE          : SRAM_RFRADDR_VALUE_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_RFRADDR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      VALUE          at 0 range 2 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Boot ROM Error Register
   type BROMERR_Register is record
      --  BROM CRC Error
      CRCERR        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BROMERR_Register use record
      CRCERR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM Cortex-M4 Platform
   type M4P_Peripheral is record
      --  SRAM Configuration Register
      SRAM_CFG         : aliased SRAM_CFG_Register;
      --  Bus Fault Error Information Register
      BUSFLT           : aliased BUSFLT_Register;
      --  SysTick Calibration Register
      STCALIB          : aliased STCALIB_Register;
      --  SRAM Initialization Done Status Register
      SRAM_INITDONE    : aliased SRAM_INITDONE_Register;
      --  SRAM ECC Error Address (Core) Register
      SRAM_EEADDR_CORE : aliased SRAM_EEADDR_CORE_Register;
      --  SRAM ECC Error Address (DMA) Register
      SRAM_EEADDR_DMA  : aliased SRAM_EEADDR_DMA_Register;
      --  SRAM Refresh Period Register
      SRAM_RFRPER      : aliased HAL.UInt32;
      --  SRAM Refresh Address
      SRAM_RFRADDR     : aliased SRAM_RFRADDR_Register;
      --  Boot ROM Error Register
      BROMERR          : aliased BROMERR_Register;
   end record
     with Volatile;

   for M4P_Peripheral use record
      SRAM_CFG         at 16#20# range 0 .. 31;
      BUSFLT           at 16#2C# range 0 .. 31;
      STCALIB          at 16#30# range 0 .. 31;
      SRAM_INITDONE    at 16#5C# range 0 .. 31;
      SRAM_EEADDR_CORE at 16#60# range 0 .. 31;
      SRAM_EEADDR_DMA  at 16#64# range 0 .. 31;
      SRAM_RFRPER      at 16#68# range 0 .. 31;
      SRAM_RFRADDR     at 16#6C# range 0 .. 31;
      BROMERR          at 16#70# range 0 .. 31;
   end record;

   --  ARM Cortex-M4 Platform
   M4P_Periph : aliased M4P_Peripheral
     with Import, Address => System'To_Address (16#F8008000#);

end NRF_SVD.M4P;
