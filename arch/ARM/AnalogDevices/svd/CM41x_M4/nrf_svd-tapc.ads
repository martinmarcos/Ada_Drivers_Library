--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TAPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDCODE_MNFID_Field is HAL.UInt11;
   subtype IDCODE_JTAGID_Field is HAL.UInt16;
   subtype IDCODE_REVID_Field is HAL.UInt4;

   --  IDCODE Register
   type IDCODE_Register is record
      --  Read-only. IDCODE LSB
      LSB    : Boolean;
      --  Read-only. Manufacturer ID
      MNFID  : IDCODE_MNFID_Field;
      --  Read-only. JTAG ID
      JTAGID : IDCODE_JTAGID_Field;
      --  Read-only. Silicon Revision
      REVID  : IDCODE_REVID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDCODE_Register use record
      LSB    at 0 range 0 .. 0;
      MNFID  at 0 range 1 .. 11;
      JTAGID at 0 range 12 .. 27;
      REVID  at 0 range 28 .. 31;
   end record;

   --  Secure Debug Key Control Register
   type SDBGKEY_CTL_Register is record
      --  SDBGKEY Valid bit
      VALID         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDBGKEY_CTL_Register use record
      VALID         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Secure Debug Key Status Register
   type SDBGKEY_STAT_Register is record
      --  Read-only. SDBGKEY MATCH PASSED
      PASS          : Boolean;
      --  Read-only. SDBGKEY MATCH FAILED
      FAIL          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDBGKEY_STAT_Register use record
      PASS          at 0 range 0 .. 0;
      FAIL          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Debug Control
   type DBGCTL_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  SPIDEN for DAP
      SPIDENDAP      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  DBGEN for Core 0
      DBGENC0        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DBGEN for STM
      DBGENSTM       : Boolean := False;
      --  NIDEN for STM
      NIDENSTM       : Boolean := False;
      --  SPNIDEN for STM
      SPNIDENSTM     : Boolean := False;
      --  SPIDEN for STM
      SPIDENSTM      : Boolean := False;
      --  DBGEN for CTISYS
      DBGENCTISYS    : Boolean := False;
      --  NIDEN for CTISYS
      NIDENCTISYS    : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  DBGEN for trace blocks
      DBGENTRACE     : Boolean := False;
      --  NIDEN for trace blocks
      NIDENTRACE     : Boolean := False;
      --  SPIDEN for ETR
      SPIDENTRACE    : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGCTL_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SPIDENDAP      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DBGENC0        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBGENSTM       at 0 range 8 .. 8;
      NIDENSTM       at 0 range 9 .. 9;
      SPNIDENSTM     at 0 range 10 .. 10;
      SPIDENSTM      at 0 range 11 .. 11;
      DBGENCTISYS    at 0 range 12 .. 12;
      NIDENCTISYS    at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DBGENTRACE     at 0 range 16 .. 16;
      NIDENTRACE     at 0 range 17 .. 17;
      SPIDENTRACE    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Debug Status Register
   type DBGSTAT_Register is record
      --  Set is swk block initiated a hwrst
      SRSTSTAT      : Boolean := False;
      --  Set if JTAG tap controller did a capture of the IDCODE register
      IDRDSTAT      : Boolean := False;
      --  JTAG connection has multiple active messages to system domain
      RCCTERR       : Boolean := False;
      --  Serial wire connection had multiple active messages to system domain.
      RCCSERR       : Boolean := False;
      --  RCMSG register had multiple updates requested on same system cycle
      RCWRERR       : Boolean := False;
      --  Concurrent transfers to tclk domain
      SDKEYERR      : Boolean := False;
      --  Read-only. tapc has had a valid reset applied, is in known state
      TRSTDET       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGSTAT_Register use record
      SRSTSTAT      at 0 range 0 .. 0;
      IDRDSTAT      at 0 range 1 .. 1;
      RCCTERR       at 0 range 2 .. 2;
      RCCSERR       at 0 range 3 .. 3;
      RCWRERR       at 0 range 4 .. 4;
      SDKEYERR      at 0 range 5 .. 5;
      TRSTDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Run Control Message Register
   type RCMSG_Register is record
      --  unspecified
      Reserved_0_3     : HAL.UInt4 := 16#0#;
      --  Do not initialize memory (Main M4 SRAM and MBOX memories)
      NOMEMINIT        : Boolean := False;
      --  unspecified
      Reserved_5_10    : HAL.UInt6 := 16#0#;
      --  Do not perform factory preboot
      NOFACTORYPREBOOT : Boolean := False;
      --  Do not configure L2
      NOL2CONFIG       : Boolean := False;
      --  Enter idle, or wfi, on entry
      HALTONENTRY      : Boolean := False;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Enable CRC of the application (first 4K of flash)
      ACRC             : Boolean := False;
      --  unspecified
      Reserved_17_19   : HAL.UInt3 := 16#0#;
      --  Disable CRC checking of ROM Image
      NOCRC            : Boolean := False;
      --  unspecified
      Reserved_21_23   : HAL.UInt3 := 16#0#;
      --  1 indicates that initial Booting and initializations are complete
      BOOT_DONE        : Boolean := False;
      --  Enable M0 out of reset into idle (wfi) state
      M0EN             : Boolean := False;
      --  unspecified
      Reserved_26_31   : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCMSG_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      NOMEMINIT        at 0 range 4 .. 4;
      Reserved_5_10    at 0 range 5 .. 10;
      NOFACTORYPREBOOT at 0 range 11 .. 11;
      NOL2CONFIG       at 0 range 12 .. 12;
      HALTONENTRY      at 0 range 13 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      ACRC             at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      NOCRC            at 0 range 20 .. 20;
      Reserved_21_23   at 0 range 21 .. 23;
      BOOT_DONE        at 0 range 24 .. 24;
      M0EN             at 0 range 25 .. 25;
      Reserved_26_31   at 0 range 26 .. 31;
   end record;

   --  Run Control Message Set Register
   type RCMSG_SET_Register is record
      --  unspecified
      Reserved_0_3     : HAL.UInt4 := 16#0#;
      --  Do not initialize memory (Main M4 SRAM and MBOX memories)
      NOMEMINIT        : Boolean := False;
      --  unspecified
      Reserved_5_10    : HAL.UInt6 := 16#0#;
      --  Do not perform factory preboot
      NOFACTORYPREBOOT : Boolean := False;
      --  Do not configure L2
      NOL2CONFIG       : Boolean := False;
      --  Enter idle, or wfi, on entry
      HALTONENTRY      : Boolean := False;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Enable CRC of the application (first 4K of flash)
      ACRC             : Boolean := False;
      --  unspecified
      Reserved_17_19   : HAL.UInt3 := 16#0#;
      --  Disable CRC checking of ROM Image
      NOCRC            : Boolean := False;
      --  unspecified
      Reserved_21_23   : HAL.UInt3 := 16#0#;
      --  1 indicates that initial Booting and initializations are complete
      BOOT_DONE        : Boolean := False;
      --  Enable M0 out of reset into idle (wfi) state
      M0EN             : Boolean := False;
      --  unspecified
      Reserved_26_31   : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCMSG_SET_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      NOMEMINIT        at 0 range 4 .. 4;
      Reserved_5_10    at 0 range 5 .. 10;
      NOFACTORYPREBOOT at 0 range 11 .. 11;
      NOL2CONFIG       at 0 range 12 .. 12;
      HALTONENTRY      at 0 range 13 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      ACRC             at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      NOCRC            at 0 range 20 .. 20;
      Reserved_21_23   at 0 range 21 .. 23;
      BOOT_DONE        at 0 range 24 .. 24;
      M0EN             at 0 range 25 .. 25;
      Reserved_26_31   at 0 range 26 .. 31;
   end record;

   --  Run Control Message Clear Register
   type RCMSG_CLR_Register is record
      --  unspecified
      Reserved_0_3     : HAL.UInt4 := 16#0#;
      --  Do not initialize memory (Main M4 SRAM and MBOX memories)
      NOMEMINIT        : Boolean := False;
      --  unspecified
      Reserved_5_10    : HAL.UInt6 := 16#0#;
      --  Do not perform factory preboot
      NOFACTORYPREBOOT : Boolean := False;
      --  Do not configure L2
      NOL2CONFIG       : Boolean := False;
      --  Enter idle, or wfi, on entry
      HALTONENTRY      : Boolean := False;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Enable CRC of the application (first 4K of flash)
      ACRC             : Boolean := False;
      --  unspecified
      Reserved_17_19   : HAL.UInt3 := 16#0#;
      --  Disable CRC checking of ROM Image
      NOCRC            : Boolean := False;
      --  unspecified
      Reserved_21_23   : HAL.UInt3 := 16#0#;
      --  1 indicates that initial Booting and initializations are complete
      BOOT_DONE        : Boolean := False;
      --  Enable M0 out of reset into idle (wfi) state
      M0EN             : Boolean := False;
      --  unspecified
      Reserved_26_31   : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCMSG_CLR_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      NOMEMINIT        at 0 range 4 .. 4;
      Reserved_5_10    at 0 range 5 .. 10;
      NOFACTORYPREBOOT at 0 range 11 .. 11;
      NOL2CONFIG       at 0 range 12 .. 12;
      HALTONENTRY      at 0 range 13 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      ACRC             at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      NOCRC            at 0 range 20 .. 20;
      Reserved_21_23   at 0 range 21 .. 23;
      BOOT_DONE        at 0 range 24 .. 24;
      M0EN             at 0 range 25 .. 25;
      Reserved_26_31   at 0 range 26 .. 31;
   end record;

   --  Run Control Message Toggle Register
   type RCMSG_TGL_Register is record
      --  unspecified
      Reserved_0_3     : HAL.UInt4 := 16#0#;
      --  Do not initialize memory (Main M4 SRAM and MBOX memories)
      NOMEMINIT        : Boolean := False;
      --  unspecified
      Reserved_5_10    : HAL.UInt6 := 16#0#;
      --  Do not perform factory preboot
      NOFACTORYPREBOOT : Boolean := False;
      --  Do not configure L2
      NOL2CONFIG       : Boolean := False;
      --  Enter idle, or wfi, on entry
      HALTONENTRY      : Boolean := False;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Enable CRC of the application (first 4K of flash)
      ACRC             : Boolean := False;
      --  unspecified
      Reserved_17_19   : HAL.UInt3 := 16#0#;
      --  Disable CRC checking of ROM Image
      NOCRC            : Boolean := False;
      --  unspecified
      Reserved_21_23   : HAL.UInt3 := 16#0#;
      --  1 indicates that initial Booting and initializations are complete
      BOOT_DONE        : Boolean := False;
      --  Enable M0 out of reset into idle (wfi) state
      M0EN             : Boolean := False;
      --  unspecified
      Reserved_26_31   : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCMSG_TGL_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      NOMEMINIT        at 0 range 4 .. 4;
      Reserved_5_10    at 0 range 5 .. 10;
      NOFACTORYPREBOOT at 0 range 11 .. 11;
      NOL2CONFIG       at 0 range 12 .. 12;
      HALTONENTRY      at 0 range 13 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      ACRC             at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      NOCRC            at 0 range 20 .. 20;
      Reserved_21_23   at 0 range 21 .. 23;
      BOOT_DONE        at 0 range 24 .. 24;
      M0EN             at 0 range 25 .. 25;
      Reserved_26_31   at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TAPC
   type TAPC_Peripheral is record
      --  IDCODE Register
      IDCODE       : aliased IDCODE_Register;
      --  USERCODE Register
      USERCODE     : aliased HAL.UInt32;
      --  Secure Debug Key Control Register
      SDBGKEY_CTL  : aliased SDBGKEY_CTL_Register;
      --  Secure Debug Key Status Register
      SDBGKEY_STAT : aliased SDBGKEY_STAT_Register;
      --  Secure Debug Key 0 Register
      SDBGKEY0     : aliased HAL.UInt32;
      --  Secure Debug Key 1 Register
      SDBGKEY1     : aliased HAL.UInt32;
      --  Secure Debug Key 2 Register
      SDBGKEY2     : aliased HAL.UInt32;
      --  Secure Debug Key 3 Register
      SDBGKEY3     : aliased HAL.UInt32;
      --  Debug Control
      DBGCTL       : aliased DBGCTL_Register;
      --  Debug Status Register
      DBGSTAT      : aliased DBGSTAT_Register;
      --  Secure Debug Key 0 Compare Register
      SDBGKEYCMP0  : aliased HAL.UInt32;
      --  Secure Debug Key 1 Compare Register
      SDBGKEYCMP1  : aliased HAL.UInt32;
      --  Secure Debug Key 2 Compare Register
      SDBGKEYCMP2  : aliased HAL.UInt32;
      --  Secure Debug Key 3 Compare Register
      SDBGKEYCMP3  : aliased HAL.UInt32;
      --  Secure Debug Key 0 Identification Register
      SDBGKEYID0   : aliased HAL.UInt32;
      --  Secure Debug Key 1 Key Identification Register
      SDBGKEYID1   : aliased HAL.UInt32;
      --  Secure Debug Key 2 Key Identification Register
      SDBGKEYID2   : aliased HAL.UInt32;
      --  Secure Debug Key 3 Key Identification Register
      SDBGKEYID3   : aliased HAL.UInt32;
      --  System Run Control Message Register
      SCMSG        : aliased HAL.UInt32;
      --  System Run Control Message Set Register
      SCMSG_SET    : aliased HAL.UInt32;
      --  System Run Control Message Clear Register
      SCMSG_CLR    : aliased HAL.UInt32;
      --  System Run Control Message Toggle Register
      SCMSG_TGL    : aliased HAL.UInt32;
      --  Run Control Message Register
      RCMSG        : aliased RCMSG_Register;
      --  Run Control Message Set Register
      RCMSG_SET    : aliased RCMSG_SET_Register;
      --  Run Control Message Clear Register
      RCMSG_CLR    : aliased RCMSG_CLR_Register;
      --  Run Control Message Toggle Register
      RCMSG_TGL    : aliased RCMSG_TGL_Register;
   end record
     with Volatile;

   for TAPC_Peripheral use record
      IDCODE       at 16#0# range 0 .. 31;
      USERCODE     at 16#4# range 0 .. 31;
      SDBGKEY_CTL  at 16#8# range 0 .. 31;
      SDBGKEY_STAT at 16#C# range 0 .. 31;
      SDBGKEY0     at 16#10# range 0 .. 31;
      SDBGKEY1     at 16#14# range 0 .. 31;
      SDBGKEY2     at 16#18# range 0 .. 31;
      SDBGKEY3     at 16#1C# range 0 .. 31;
      DBGCTL       at 16#30# range 0 .. 31;
      DBGSTAT      at 16#34# range 0 .. 31;
      SDBGKEYCMP0  at 16#50# range 0 .. 31;
      SDBGKEYCMP1  at 16#54# range 0 .. 31;
      SDBGKEYCMP2  at 16#58# range 0 .. 31;
      SDBGKEYCMP3  at 16#5C# range 0 .. 31;
      SDBGKEYID0   at 16#70# range 0 .. 31;
      SDBGKEYID1   at 16#74# range 0 .. 31;
      SDBGKEYID2   at 16#78# range 0 .. 31;
      SDBGKEYID3   at 16#7C# range 0 .. 31;
      SCMSG        at 16#E0# range 0 .. 31;
      SCMSG_SET    at 16#E4# range 0 .. 31;
      SCMSG_CLR    at 16#E8# range 0 .. 31;
      SCMSG_TGL    at 16#EC# range 0 .. 31;
      RCMSG        at 16#F0# range 0 .. 31;
      RCMSG_SET    at 16#F4# range 0 .. 31;
      RCMSG_CLR    at 16#F8# range 0 .. 31;
      RCMSG_TGL    at 16#FC# range 0 .. 31;
   end record;

   --  TAPC
   TAPC_Periph : aliased TAPC_Peripheral
     with Import, Address => System'To_Address (16#40017000#);

end NRF_SVD.TAPC;
