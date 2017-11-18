--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RCU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type CTL_Register is record
      --  System Reset
      SYSRST         : Boolean := False;
      --  Reset Out Assert
      RSTOUTASRT     : Boolean := False;
      --  Reset Out Deassert
      RSTOUTDSRT     : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  System Reset Request Enabled
      SRSTREQEN      : Boolean := True;
      --  Core Reset Request Enabled
      CRSTREQEN      : Boolean := True;
      --  Core Reset System Reset Mask Select
      CRSTMSKSEL     : Boolean := True;
      --  unspecified
      Reserved_11_30 : HAL.UInt20 := 16#0#;
      --  Lock
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      SYSRST         at 0 range 0 .. 0;
      RSTOUTASRT     at 0 range 1 .. 1;
      RSTOUTDSRT     at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SRSTREQEN      at 0 range 8 .. 8;
      CRSTREQEN      at 0 range 9 .. 9;
      CRSTMSKSEL     at 0 range 10 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype STAT_BMODE_Field is HAL.UInt4;

   --  Status Register
   type STAT_Register is record
      --  Hardware Reset
      HWRST          : Boolean := True;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  System Source Reset
      SSRST          : Boolean := False;
      --  Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Read-only. Reset Out Status
      RSTOUT         : Boolean := True;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. Boot Mode
      BMODE          : STAT_BMODE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Address Error
      ADDRERR        : Boolean := False;
      --  Lock Write Error
      LWERR          : Boolean := False;
      --  Reset Out Error
      RSTOUTERR      : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      HWRST          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SSRST          at 0 range 2 .. 2;
      SWRST          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      RSTOUT         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BMODE          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ADDRERR        at 0 range 16 .. 16;
      LWERR          at 0 range 17 .. 17;
      RSTOUTERR      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CRCTL_CRn_Field is HAL.UInt3;

   --  Core Reset outputs Control Register
   type CRCTL_Register is record
      --  Core Reset Outputs
      CRn           : CRCTL_CRn_Field := 16#2#;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  Lock
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCTL_Register use record
      CRn           at 0 range 0 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   subtype CRSTAT_CRn_Field is HAL.UInt3;

   --  Core Reset outputs Status Register
   type CRSTAT_Register is record
      --  Core Reset Outputs
      CRn           : CRSTAT_CRn_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSTAT_Register use record
      CRn           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SRRQSTAT_SRRQ_Field is HAL.UInt8;

   --  System Reset Request Status
   type SRRQSTAT_Register is record
      --  System Reset triggered by System Reset Request [n]
      SRRQ          : SRRQSTAT_SRRQ_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRRQSTAT_Register use record
      SRRQ          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  BCODE_NOCORE array
   type BCODE_NOCORE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for BCODE_NOCORE
   type BCODE_NOCORE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NOCORE as a value
            Val : HAL.UInt2;
         when True =>
            --  NOCORE as an array
            Arr : BCODE_NOCORE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BCODE_NOCORE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Boot Code Register
   type BCODE_Register is record
      --  No Boot Kernel
      NOKERNEL       : Boolean := False;
      --  No Vector Initialize
      NOVECTINIT     : Boolean := False;
      --  Halt
      HALT           : Boolean := False;
      --  Execute Wakeup
      HBTOVW         : Boolean := False;
      --  No Memory Initialization
      NOMEMINIT      : Boolean := False;
      --  No Cache
      NOCACHE        : Boolean := False;
      --  No Faults
      NOFAULTS       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  No Preboot
      NOPREBOOT      : Boolean := False;
      --  No Hook
      NOHOOK         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  No L2 Configuration
      NOL2CONFIG     : Boolean := False;
      --  Idle On Entry
      IDLEONENTRY    : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  No Core 0 Present
      NOCORE         : BCODE_NOCORE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Lock
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCODE_Register use record
      NOKERNEL       at 0 range 0 .. 0;
      NOVECTINIT     at 0 range 1 .. 1;
      HALT           at 0 range 2 .. 2;
      HBTOVW         at 0 range 3 .. 3;
      NOMEMINIT      at 0 range 4 .. 4;
      NOCACHE        at 0 range 5 .. 5;
      NOFAULTS       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      NOPREBOOT      at 0 range 9 .. 9;
      NOHOOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NOL2CONFIG     at 0 range 12 .. 12;
      IDLEONENTRY    at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NOCORE         at 0 range 16 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype MSG_ERRCODE_Field is HAL.UInt8;

   --  Message Register
   type MSG_Register is record
      --  Error Code of the ROM valid only when in error handler
      ERRCODE        : MSG_ERRCODE_Field := 16#0#;
      --  Indicates that Core 0 is in a safe idle state in ROM
      C0IDLE         : Boolean := False;
      --  Indicates that Core 1 is in a safe idle state in ROM
      C1IDLE         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Core 0 L1 Initialized
      C0L1INIT       : Boolean := False;
      --  Core 1 L1 Initialized
      C1L1INIT       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Core 1 activated
      C1ACTIVATE     : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  L2 Initialized
      L2INIT         : Boolean := False;
      --  L3 Initialized
      L3INIT         : Boolean := False;
      --  Halt on Application Call
      HALTONAPP      : Boolean := False;
      --  Halt on Initcode Call
      HALTONINIT     : Boolean := False;
      --  Halt on Callback Call
      HALTONCALL     : Boolean := False;
      --  Halt on Error Call
      HALTONERR      : Boolean := False;
      --  Call Application Flag
      CALLAPP        : Boolean := False;
      --  Call Initcode Flag
      CALLINIT       : Boolean := False;
      --  Callback Call Flag
      CALLBACK       : Boolean := False;
      --  Call Error Flag
      CALLERR        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSG_Register use record
      ERRCODE        at 0 range 0 .. 7;
      C0IDLE         at 0 range 8 .. 8;
      C1IDLE         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      C0L1INIT       at 0 range 16 .. 16;
      C1L1INIT       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      C1ACTIVATE     at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      L2INIT         at 0 range 22 .. 22;
      L3INIT         at 0 range 23 .. 23;
      HALTONAPP      at 0 range 24 .. 24;
      HALTONINIT     at 0 range 25 .. 25;
      HALTONCALL     at 0 range 26 .. 26;
      HALTONERR      at 0 range 27 .. 27;
      CALLAPP        at 0 range 28 .. 28;
      CALLINIT       at 0 range 29 .. 29;
      CALLBACK       at 0 range 30 .. 30;
      CALLERR        at 0 range 31 .. 31;
   end record;

   subtype REVID_REV_Field is HAL.UInt4;
   subtype REVID_MAJOR_Field is HAL.UInt4;

   --  Revision ID Register
   type REVID_Register is record
      --  Read-only. Incremental Version ID
      REV           : REVID_REV_Field;
      --  Read-only. Major Version ID
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

   --  Reset Control Unit
   type RCU0_Peripheral is record
      --  Control Register
      CTL      : aliased CTL_Register;
      --  Status Register
      STAT     : aliased STAT_Register;
      --  Core Reset outputs Control Register
      CRCTL    : aliased CRCTL_Register;
      --  Core Reset outputs Status Register
      CRSTAT   : aliased CRSTAT_Register;
      --  System Reset Request Status
      SRRQSTAT : aliased SRRQSTAT_Register;
      --  Boot Code Register
      BCODE    : aliased BCODE_Register;
      --  Message Register
      MSG      : aliased MSG_Register;
      --  Message Set Bits Register
      MSG_SET  : aliased HAL.UInt32;
      --  Message Clear Bits Register
      MSG_CLR  : aliased HAL.UInt32;
      --  Revision ID Register
      REVID    : aliased REVID_Register;
   end record
     with Volatile;

   for RCU0_Peripheral use record
      CTL      at 16#0# range 0 .. 31;
      STAT     at 16#4# range 0 .. 31;
      CRCTL    at 16#8# range 0 .. 31;
      CRSTAT   at 16#C# range 0 .. 31;
      SRRQSTAT at 16#18# range 0 .. 31;
      BCODE    at 16#28# range 0 .. 31;
      MSG      at 16#6C# range 0 .. 31;
      MSG_SET  at 16#70# range 0 .. 31;
      MSG_CLR  at 16#74# range 0 .. 31;
      REVID    at 16#7C# range 0 .. 31;
   end record;

   --  Reset Control Unit
   RCU0_Periph : aliased RCU0_Peripheral
     with Import, Address => System'To_Address (16#40012000#);

end NRF_SVD.RCU0;
