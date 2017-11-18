--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_GLCK_Field is HAL.UInt8;

   --  Control Register
   type CTL_Register is record
      --  Global Lock
      GLCK           : CTL_GLCK_Field := 16#AD#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Protection Violation Interrupt Enable
      PINTEN         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write Protect Register Lock
      WPLCK          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Access Protect Register Lock
      APLCK          : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Timeout Monitor
      TOMON          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      GLCK           at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PINTEN         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WPLCK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      APLCK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TOMON          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Status Register
   type STAT_Register is record
      --  Read-only. Global Lock Status
      GLCK           : Boolean := False;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Violation Interrupt Request
      VIRQ           : Boolean := False;
      --  Timeout Interrupt
      TIRQ           : Boolean := False;
      --  unspecified
      Reserved_14_28 : HAL.UInt15 := 16#0#;
      --  Read-only. Timeout Error
      TOERR          : Boolean := False;
      --  Address Error
      ADDRERR        : Boolean := False;
      --  Lock Write Error
      LWERR          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      GLCK           at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      VIRQ           at 0 range 12 .. 12;
      TIRQ           at 0 range 13 .. 13;
      Reserved_14_28 at 0 range 14 .. 28;
      TOERR          at 0 range 29 .. 29;
      ADDRERR        at 0 range 30 .. 30;
      LWERR          at 0 range 31 .. 31;
   end record;

   subtype TIMEOUT_VALUE_Field is HAL.UInt16;

   --  Timeout Register
   type TIMEOUT_Register is record
      --  Timeout Counter Value
      VALUE          : TIMEOUT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUT_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype WP_CMn_Field is HAL.UInt2;

   --  Write Protect Register n
   type WP_Register is record
      --  Core Master x Write Protect Enable
      CMn            : WP_CMn_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  System Master x Write Protect Enable
      SMn            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WP_Register use record
      CMn            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      SMn            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Write Protect Register n
   type WP_Registers is array (0 .. 19) of WP_Register
     with Volatile;

   subtype AP_CMAn_Field is HAL.UInt2;

   --  Access Protect Register n
   type AP_Register is record
      --  Core Master x Access Protect Enable
      CMAn           : AP_CMAn_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  System Master x Access Protect Enable
      SMAn           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AP_Register use record
      CMAn           at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      SMAn           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Access Protect Register n
   type AP_Registers is array (0 .. 19) of AP_Register
     with Volatile;

   subtype IDTLS_ID_Field is HAL.UInt16;

   --  Interrupt Details Register
   type IDTLS_Register is record
      --  Read-only. Secure Status
      SECURE         : Boolean;
      --  Read-only. Read/Write Status
      RNW            : Boolean;
      --  unspecified
      Reserved_2_7   : HAL.UInt6;
      --  Read-only. ID of Transaction
      ID             : IDTLS_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDTLS_Register use record
      SECURE         at 0 range 0 .. 0;
      RNW            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ID             at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DEVID_ITYPE_Field is HAL.UInt3;
   subtype DEVID_CMCNT_Field is HAL.UInt5;
   subtype DEVID_SMCNT_Field is HAL.UInt5;
   subtype DEVID_ENDPTCNT_Field is HAL.UInt9;

   --  Device Configuration Register
   type DEVID_Register is record
      --  Read-only. Interface Type
      ITYPE          : DEVID_ITYPE_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. No Security
      NS             : Boolean;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. Core Master Count
      CMCNT          : DEVID_CMCNT_Field;
      --  Read-only. System Master Count
      SMCNT          : DEVID_SMCNT_Field;
      --  Read-only. End Point Count
      ENDPTCNT       : DEVID_ENDPTCNT_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVID_Register use record
      ITYPE          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      NS             at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CMCNT          at 0 range 6 .. 10;
      SMCNT          at 0 range 11 .. 15;
      ENDPTCNT       at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PID4_JEOP106CC_Field is HAL.UInt4;
   subtype PID4_SIZE_Field is HAL.UInt4;

   --  Peripheral ID4 Register
   type PID4_Register is record
      --  Read-only. JEOP106 continuation code (number of leading 0x7Fs)
      JEOP106CC     : PID4_JEOP106CC_Field;
      --  Read-only. Number of 4k blocks
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

   --  Peripheral ID5 Register
   type PID_Register is record
      --  Read-only. For future use
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

   --  Peripheral ID0 Register
   type PID0_Register is record
      --  Read-only. PARTNUM[7:0] Part number for component identification. SPU
      --  in this case
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
   subtype PID1_JEP106_Field is HAL.UInt28;

   --  Peripheral ID1 Register
   type PID1_Register is record
      --  Read-only. PARTNUM[11:8] Part number for component identification.
      --  SPU in this case
      PARTNUM : PID1_PARTNUM_Field;
      --  Read-only. JEDEC JEP106 Manufacturer ID code
      JEP106  : PID1_JEP106_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PID1_Register use record
      PARTNUM at 0 range 0 .. 3;
      JEP106  at 0 range 4 .. 31;
   end record;

   subtype PID2_JEP106_Field is HAL.UInt3;
   subtype PID2_REV_Field is HAL.UInt4;

   --  Peripheral ID2 Register
   type PID2_Register is record
      --  Read-only. JEDEC JEP106 Manufacturer ID code
      JEP106        : PID2_JEP106_Field;
      --  Read-only. A JEDEC Assigned Value is Used. Indicates that a JEDEC
      --  assigned value is used.
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

   --  Peripheral ID3 Register
   type PID3_Register is record
      --  Read-only. Customer Modified
      CUSTMOD       : PID3_CUSTMOD_Field;
      --  Read-only. Metal fix revision
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

   subtype CID_PREAMBLE_Field is HAL.UInt8;

   --  Component ID0 Register
   type CID_Register is record
      --  Read-only. Component ID Preamble. Identifies this as a Component ID
      --  Register
      PREAMBLE      : CID_PREAMBLE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CID_Register use record
      PREAMBLE      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CID1_PREAMBLE_Field is HAL.UInt4;
   subtype CID1_COMPCLASS_Field is HAL.UInt4;

   --  Component ID1 Register
   type CID1_Register is record
      --  Read-only. Component ID Preamble. Identifies this as a Component ID
      --  Register
      PREAMBLE      : CID1_PREAMBLE_Field;
      --  Read-only. Component Class
      COMPCLASS     : CID1_COMPCLASS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CID1_Register use record
      PREAMBLE      at 0 range 0 .. 3;
      COMPCLASS     at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Protection Unit
   type SPU0_Peripheral is record
      --  Control Register
      CTL     : aliased CTL_Register;
      --  Status Register
      STAT    : aliased STAT_Register;
      --  Timeout Register
      TIMEOUT : aliased TIMEOUT_Register;
      --  Write Protect Register n
      WP      : aliased WP_Registers;
      --  Access Protect Register n
      AP      : aliased AP_Registers;
      --  Interrupt Details Register
      IDTLS   : aliased IDTLS_Register;
      --  Interrupt Address Register
      IADDR   : aliased HAL.UInt32;
      --  Device Configuration Register
      DEVID   : aliased DEVID_Register;
      --  Device Type Identifier Register
      DEVTYPE : aliased HAL.UInt32;
      --  Peripheral ID4 Register
      PID4    : aliased PID4_Register;
      --  Peripheral ID5 Register
      PID5    : aliased PID_Register;
      --  Peripheral ID6 Register
      PID6    : aliased PID_Register;
      --  Peripheral ID7 Register
      PID7    : aliased PID_Register;
      --  Peripheral ID0 Register
      PID0    : aliased PID0_Register;
      --  Peripheral ID1 Register
      PID1    : aliased PID1_Register;
      --  Peripheral ID2 Register
      PID2    : aliased PID2_Register;
      --  Peripheral ID3 Register
      PID3    : aliased PID3_Register;
      --  Component ID0 Register
      CID0    : aliased CID_Register;
      --  Component ID1 Register
      CID1    : aliased CID1_Register;
      --  Component ID2 Register
      CID2    : aliased CID_Register;
      --  Component ID3 Register
      CID3    : aliased CID_Register;
   end record
     with Volatile;

   for SPU0_Peripheral use record
      CTL     at 16#0# range 0 .. 31;
      STAT    at 16#4# range 0 .. 31;
      TIMEOUT at 16#40# range 0 .. 31;
      WP      at 16#400# range 0 .. 639;
      AP      at 16#800# range 0 .. 639;
      IDTLS   at 16#1080# range 0 .. 31;
      IADDR   at 16#1084# range 0 .. 31;
      DEVID   at 16#1FC8# range 0 .. 31;
      DEVTYPE at 16#1FCC# range 0 .. 31;
      PID4    at 16#1FD0# range 0 .. 31;
      PID5    at 16#1FD4# range 0 .. 31;
      PID6    at 16#1FD8# range 0 .. 31;
      PID7    at 16#1FDC# range 0 .. 31;
      PID0    at 16#1FE0# range 0 .. 31;
      PID1    at 16#1FE4# range 0 .. 31;
      PID2    at 16#1FE8# range 0 .. 31;
      PID3    at 16#1FEC# range 0 .. 31;
      CID0    at 16#1FF0# range 0 .. 31;
      CID1    at 16#1FF4# range 0 .. 31;
      CID2    at 16#1FF8# range 0 .. 31;
      CID3    at 16#1FFC# range 0 .. 31;
   end record;

   --  System Protection Unit
   SPU0_Periph : aliased SPU0_Peripheral
     with Import, Address => System'To_Address (16#410F8000#);

end NRF_SVD.SPU0;
