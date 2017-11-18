--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.OCU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register
   type CTL_Register is record
      --  Start a freq. measurement cycle
      MEASURE       : Boolean := False;
      --  Enable continous freq. monitoring
      AUTO_EN       : Boolean := False;
      --  Freq. fault enable
      FREQ_FAULT_EN : Boolean := False;
      --  Clkin monitor fault status enable
      CMON_FAULT_EN : Boolean := False;
      --  LFO monitor fault enable
      LMON_FAULT_EN : Boolean := False;
      --  Asynchronous fault output enable
      DEAD_CLOCK_EN : Boolean := False;
      --  Disable the external LFO oscillator
      LFO_OSC_DIS   : Boolean := False;
      --  unspecified
      Reserved_7_29 : HAL.UInt23 := 16#0#;
      --  Enable OCU Functional Test Mode
      TEST          : Boolean := False;
      --  Enable LOCK function
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      MEASURE       at 0 range 0 .. 0;
      AUTO_EN       at 0 range 1 .. 1;
      FREQ_FAULT_EN at 0 range 2 .. 2;
      CMON_FAULT_EN at 0 range 3 .. 3;
      LMON_FAULT_EN at 0 range 4 .. 4;
      DEAD_CLOCK_EN at 0 range 5 .. 5;
      LFO_OSC_DIS   at 0 range 6 .. 6;
      Reserved_7_29 at 0 range 7 .. 29;
      TEST          at 0 range 30 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Status register
   type STAT_Register is record
      --  Freq. fault status
      FREQ_FAULT    : Boolean := False;
      --  LFO monitor fault status
      LMON_FAULT    : Boolean := False;
      --  Clkin monitor fault status
      CMON_FAULT    : Boolean := False;
      --  Freq. measurement overflow status
      OVERFLOW      : Boolean := False;
      --  Read-only. Freq. measurement in progress
      BUSY          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      FREQ_FAULT    at 0 range 0 .. 0;
      LMON_FAULT    at 0 range 1 .. 1;
      CMON_FAULT    at 0 range 2 .. 2;
      OVERFLOW      at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PID4_JEOP106CC_Field is HAL.UInt4;
   subtype PID4_SIZE_Field is HAL.UInt4;

   --  Peripheral ID4Register
   type PID4_Register is record
      --  Read-only. JEOP106 continuation code (number of leading 0x7Fs)
      JEOP106CC     : PID4_JEOP106CC_Field;
      --  Read-only. Number of 4K Blocks
      SIZE          : PID4_SIZE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID4_Register use record
      JEOP106CC     at 0 range 0 .. 3;
      SIZE          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PID_FUTUREUSE_Field is HAL.UInt8;

   --  Peripheral ID5Register
   type PID_Register is record
      --  Read-only. For Future Use
      FUTUREUSE     : PID_FUTUREUSE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID_Register use record
      FUTUREUSE     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PID0_PARTNUM_Field is HAL.UInt8;

   --  Peripheral ID0Register
   type PID0_Register is record
      --  Read-only. PARTNUM[7:0] Part Number
      PARTNUM       : PID0_PARTNUM_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID0_Register use record
      PARTNUM       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PID1_PARTNUM_Field is HAL.UInt4;
   subtype PID1_JEP106_Field is HAL.UInt4;

   --  Peripheral ID1Register
   type PID1_Register is record
      --  Read-only. PARTNUM[11:8] Part Number
      PARTNUM       : PID1_PARTNUM_Field;
      --  Read-only. JEP106[3:0] JEDEC JEP106 Maufacturer ID code
      JEP106        : PID1_JEP106_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID1_Register use record
      PARTNUM       at 0 range 0 .. 3;
      JEP106        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PID2_JEP106_Field is HAL.UInt3;
   subtype PID2_REV_Field is HAL.UInt4;

   --  Peripheral ID3Register
   type PID2_Register is record
      --  Read-only. JEP106[6:4] JEDEC JEP106 Maufacturer ID code
      JEP106        : PID2_JEP106_Field;
      --  Read-only. A JEDEC Assigned Value is Used
      JEDECASGN     : Boolean;
      --  Read-only. Peripheral Revision
      REV           : PID2_REV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID2_Register use record
      JEP106        at 0 range 0 .. 2;
      JEDECASGN     at 0 range 3 .. 3;
      REV           at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PID3_CUSTMOD_Field is HAL.UInt4;
   subtype PID3_REVAND_Field is HAL.UInt4;

   --  Peripheral ID3Register
   type PID3_Register is record
      --  Read-only. Customer Modified
      CUSTMOD       : PID3_CUSTMOD_Field;
      --  Read-only. Field to mark metal fix revision
      REVAND        : PID3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID3_Register use record
      CUSTMOD       at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CID_COMPID_Field is HAL.UInt8;

   --  Component ID0 Register
   type CID_Register is record
      --  Read-only. COMPID[7:0] Component ID
      COMPID        : CID_COMPID_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CID_Register use record
      COMPID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Oscillator Counter Unit
   type OCU0_Peripheral is record
      --  Control register
      CTL     : aliased CTL_Register;
      --  Status register
      STAT    : aliased STAT_Register;
      --  Freq. measured count register
      CLKCNT  : aliased HAL.UInt32;
      --  Freq measurement reference count register
      REFCNT  : aliased HAL.UInt32;
      --  Min. limit register
      MINCNT  : aliased HAL.UInt32;
      --  Max. limit register
      MAXCNT  : aliased HAL.UInt32;
      --  LFO monitor reference count
      LMONCNT : aliased HAL.UInt32;
      --  Clkin monitor reference count
      CMONCNT : aliased HAL.UInt32;
      --  Peripheral ID4Register
      PID4    : aliased PID4_Register;
      --  Peripheral ID5Register
      PID5    : aliased PID_Register;
      --  Peripheral ID6Register
      PID6    : aliased PID_Register;
      --  Peripheral ID7Register
      PID7    : aliased PID_Register;
      --  Peripheral ID0Register
      PID0    : aliased PID0_Register;
      --  Peripheral ID1Register
      PID1    : aliased PID1_Register;
      --  Peripheral ID3Register
      PID2    : aliased PID2_Register;
      --  Peripheral ID3Register
      PID3    : aliased PID3_Register;
      --  Component ID0 Register
      CID0    : aliased CID_Register;
      --  Component ID1 Register
      CID1    : aliased CID_Register;
      --  Component ID2 Register
      CID2    : aliased CID_Register;
      --  Component ID3 Register
      CID3    : aliased CID_Register;
   end record
     with Volatile;

   for OCU0_Peripheral use record
      CTL     at 16#0# range 0 .. 31;
      STAT    at 16#4# range 0 .. 31;
      CLKCNT  at 16#8# range 0 .. 31;
      REFCNT  at 16#C# range 0 .. 31;
      MINCNT  at 16#10# range 0 .. 31;
      MAXCNT  at 16#14# range 0 .. 31;
      LMONCNT at 16#18# range 0 .. 31;
      CMONCNT at 16#1C# range 0 .. 31;
      PID4    at 16#FD0# range 0 .. 31;
      PID5    at 16#FD4# range 0 .. 31;
      PID6    at 16#FD8# range 0 .. 31;
      PID7    at 16#FDC# range 0 .. 31;
      PID0    at 16#FE0# range 0 .. 31;
      PID1    at 16#FE4# range 0 .. 31;
      PID2    at 16#FE8# range 0 .. 31;
      PID3    at 16#FEC# range 0 .. 31;
      CID0    at 16#FF0# range 0 .. 31;
      CID1    at 16#FF4# range 0 .. 31;
      CID2    at 16#FF8# range 0 .. 31;
      CID3    at 16#FFC# range 0 .. 31;
   end record;

   --  Oscillator Counter Unit
   OCU0_Periph : aliased OCU0_Peripheral
     with Import, Address => System'To_Address (16#40015000#);

end NRF_SVD.OCU0;
