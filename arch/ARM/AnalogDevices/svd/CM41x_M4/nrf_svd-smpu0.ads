--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SMPU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Read Speculation Disable
   type CTL_RSDIS_Field is
     (
      --  Read Speculation Enable
      Rsen,
      --  Read Speculation Disable
      Rsdis)
     with Size => 1;
   for CTL_RSDIS_Field use
     (Rsen => 0,
      Rsdis => 1);

   --  Protection Violation Bus Error Disable
   type CTL_PBEDIS_Field is
     (
      --  Bus Error Generation Enable
      Pbeen,
      --  Bus Error Generation Disable
      Pbedis)
     with Size => 1;
   for CTL_PBEDIS_Field use
     (Pbeen => 0,
      Pbedis => 1);

   --  Protection Violation Bus Error Type
   type CTL_PBETYPE_Field is
     (
      --  Decode Error Type
      Decerr,
      --  Save Error Type
      Slverr)
     with Size => 1;
   for CTL_PBETYPE_Field use
     (Decerr => 0,
      Slverr => 1);

   --  Protection Violation Interrupt Enable
   type CTL_PINTEN_Field is
     (
      --  Protection Violation IRQ Disable
      Pintdis,
      --  Protection Violation IRQ Enable
      Pinten)
     with Size => 1;
   for CTL_PINTEN_Field use
     (Pintdis => 0,
      Pinten => 1);

   --  SMPU Control Register
   type CTL_Register is record
      --  Read Speculation Disable
      RSDIS         : CTL_RSDIS_Field := NRF_SVD.SMPU0.Rsen;
      --  Protection Violation Bus Error Disable
      PBEDIS        : CTL_PBEDIS_Field := NRF_SVD.SMPU0.Pbeen;
      --  Protection Violation Bus Error Type
      PBETYPE       : CTL_PBETYPE_Field := NRF_SVD.SMPU0.Decerr;
      --  Protection Violation Interrupt Enable
      PINTEN        : CTL_PINTEN_Field := NRF_SVD.SMPU0.Pintdis;
      --  RCTLn, RADDRn, RIDxn and RIDMxn Registers Lock Bit
      RLOCK         : Boolean := False;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Lock Bit
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      RSDIS         at 0 range 0 .. 0;
      PBEDIS        at 0 range 1 .. 1;
      PBETYPE       at 0 range 2 .. 2;
      PINTEN        at 0 range 3 .. 3;
      RLOCK         at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Interrupt Request
   type STAT_IRQ_Field is
     (
      --  No Interrupt since this bit has been cleared
      Noirq,
      --  Interrupt has been generated
      Irq)
     with Size => 1;
   for STAT_IRQ_Field use
     (Noirq => 0,
      Irq => 1);

   --  Interrupt Overrun
   type STAT_IOVR_Field is
     (
      --  No Interrupt overrun
      Noiovr,
      --  Interrupt overrun has occured
      Iovr)
     with Size => 1;
   for STAT_IOVR_Field use
     (Noiovr => 0,
      Iovr => 1);

   --  Bus Error
   type STAT_BERR_Field is
     (
      --  No Bus Error since this bit has been cleared
      Noberr,
      --  Bus Error has been generated
      Berr)
     with Size => 1;
   for STAT_BERR_Field use
     (Noberr => 0,
      Berr => 1);

   --  Bus Error Overrun
   type STAT_BEOVR_Field is
     (
      --  No Bus Error overrun
      Nobeovr,
      --  Bus Error overrun has occured
      Beovr)
     with Size => 1;
   for STAT_BEOVR_Field use
     (Nobeovr => 0,
      Beovr => 1);

   --  Address Error
   type STAT_ADRERR_Field is
     (
      --  No Address Error
      Noadrerr,
      --  Address Error
      Adrerr)
     with Size => 1;
   for STAT_ADRERR_Field use
     (Noadrerr => 0,
      Adrerr => 1);

   --  Lock Write Error
   type STAT_LWERR_Field is
     (
      --  No Lock Write Error
      Nolwerr,
      --  Lock Write Error
      Lwerr)
     with Size => 1;
   for STAT_LWERR_Field use
     (Nolwerr => 0,
      Lwerr => 1);

   --  SMPU Status Register
   type STAT_Register is record
      --  Interrupt Request
      IRQ            : STAT_IRQ_Field := NRF_SVD.SMPU0.Noirq;
      --  Interrupt Overrun
      IOVR           : STAT_IOVR_Field := NRF_SVD.SMPU0.Noiovr;
      --  Bus Error
      BERR           : STAT_BERR_Field := NRF_SVD.SMPU0.Noberr;
      --  Bus Error Overrun
      BEOVR          : STAT_BEOVR_Field := NRF_SVD.SMPU0.Nobeovr;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Address Error
      ADRERR         : STAT_ADRERR_Field := NRF_SVD.SMPU0.Noadrerr;
      --  Lock Write Error
      LWERR          : STAT_LWERR_Field := NRF_SVD.SMPU0.Nolwerr;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      IRQ            at 0 range 0 .. 0;
      IOVR           at 0 range 1 .. 1;
      BERR           at 0 range 2 .. 2;
      BEOVR          at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      ADRERR         at 0 range 16 .. 16;
      LWERR          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Read/Write Status.
   type IDTLS_RNW_Field is
     (
      --  Transaction that caused last signaled interrupt was a write
      Write,
      --  Transaction that caused last signaled interrupt was a read
      Read)
     with Size => 1;
   for IDTLS_RNW_Field use
     (Write => 0,
      Read => 1);

   subtype IDTLS_ID_Field is HAL.UInt12;

   --  Interrupt Details Register
   type IDTLS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Read/Write Status.
      RNW            : IDTLS_RNW_Field;
      --  unspecified
      Reserved_2_7   : HAL.UInt6;
      --  Read-only. ID of Transaction.
      ID             : IDTLS_ID_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDTLS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RNW            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ID             at 0 range 8 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Read/Write Status
   type BDTLS_RNW_Field is
     (
      --  Transaction that caused last bus error was a write
      Write,
      --  Transaction that caused last bus error was a read
      Read)
     with Size => 1;
   for BDTLS_RNW_Field use
     (Write => 0,
      Read => 1);

   subtype BDTLS_ID_Field is HAL.UInt12;

   --  Bus Error Details Register
   type BDTLS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Read/Write Status
      RNW            : BDTLS_RNW_Field;
      --  unspecified
      Reserved_2_7   : HAL.UInt6;
      --  Read-only. ID of Transaction
      ID             : BDTLS_ID_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTLS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RNW            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ID             at 0 range 8 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------------
   -- SMPU0_Rn cluster's Registers --
   ----------------------------------

   subtype RCTL_SMPU0_Rn_SIZE_Field is HAL.UInt5;

   --  Read Transaction Protection Enable
   type RCTL_RPROTEN_Field is
     (
      --  Read transaction ID-based protection disabled
      Rprotdis,
      --  Read transaction ID-based protection enabled
      Rproten)
     with Size => 1;
   for RCTL_RPROTEN_Field use
     (Rprotdis => 0,
      Rproten => 1);

   --  Write Transaction Protection Enable
   type RCTL_WPROTEN_Field is
     (
      --  Write transaction ID-based protection disabled
      Wprotdis,
      --  Write transaction ID-based protection enabled
      Wproten)
     with Size => 1;
   for RCTL_WPROTEN_Field use
     (Wprotdis => 0,
      Wproten => 1);

   --  Region n Control Register
   type RCTL_SMPU0_Rn_Register is record
      --  Region Enable
      EN             : Boolean := False;
      --  Memory Region Size
      SIZE           : RCTL_SMPU0_Rn_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read Transaction Protection Enable
      RPROTEN        : RCTL_RPROTEN_Field := NRF_SVD.SMPU0.Rprotdis;
      --  Read Transaction ID Compare Invert
      RIDCINV        : Boolean := False;
      --  Write Transaction Protection Enable
      WPROTEN        : RCTL_WPROTEN_Field := NRF_SVD.SMPU0.Wprotdis;
      --  Write Transaction ID Compare Invert
      WIDCINV        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCTL_SMPU0_Rn_Register use record
      EN             at 0 range 0 .. 0;
      SIZE           at 0 range 1 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RPROTEN        at 0 range 8 .. 8;
      RIDCINV        at 0 range 9 .. 9;
      WPROTEN        at 0 range 10 .. 10;
      WIDCINV        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype RADDR_SMPU0_Rn_BADDR_Field is HAL.UInt20;

   --  Region n Address Register
   type RADDR_SMPU0_Rn_Register is record
      --  unspecified
      Reserved_0_11 : HAL.UInt12 := 16#0#;
      --  Region n Base Address 20 Most Significant Bits
      BADDR         : RADDR_SMPU0_Rn_BADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RADDR_SMPU0_Rn_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      BADDR         at 0 range 12 .. 31;
   end record;

   subtype RIDA_SMPU0_Rn_ID_Field is HAL.UInt12;

   --  Region n ID A Register
   type RIDA_SMPU0_Rn_Register is record
      --  Region n ID Register A
      ID             : RIDA_SMPU0_Rn_ID_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIDA_SMPU0_Rn_Register use record
      ID             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype RIDMSKA_SMPU0_Rn_MSK_Field is HAL.UInt12;

   --  Region n ID Mask A Register
   type RIDMSKA_SMPU0_Rn_Register is record
      --  Region n ID Mask Register A
      MSK            : RIDMSKA_SMPU0_Rn_MSK_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIDMSKA_SMPU0_Rn_Register use record
      MSK            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype RIDB_SMPU0_Rn_ID_Field is HAL.UInt12;

   --  Region n ID B Register
   type RIDB_SMPU0_Rn_Register is record
      --  Region n ID Register B
      ID             : RIDB_SMPU0_Rn_ID_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIDB_SMPU0_Rn_Register use record
      ID             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype RIDMSKB_SMPU0_Rn_MSK_Field is HAL.UInt12;

   --  Region n ID Mask B Register
   type RIDMSKB_SMPU0_Rn_Register is record
      --  Region n ID Mask Register B
      MSK            : RIDMSKB_SMPU0_Rn_MSK_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIDMSKB_SMPU0_Rn_Register use record
      MSK            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Region n
   type SMPU0_Rn_Cluster is record
      --  Region n Control Register
      RCTL    : aliased RCTL_SMPU0_Rn_Register;
      --  Region n Address Register
      RADDR   : aliased RADDR_SMPU0_Rn_Register;
      --  Region n ID A Register
      RIDA    : aliased RIDA_SMPU0_Rn_Register;
      --  Region n ID Mask A Register
      RIDMSKA : aliased RIDMSKA_SMPU0_Rn_Register;
      --  Region n ID B Register
      RIDB    : aliased RIDB_SMPU0_Rn_Register;
      --  Region n ID Mask B Register
      RIDMSKB : aliased RIDMSKB_SMPU0_Rn_Register;
   end record
     with Volatile, Size => 192;

   for SMPU0_Rn_Cluster use record
      RCTL    at 16#0# range 0 .. 31;
      RADDR   at 16#4# range 0 .. 31;
      RIDA    at 16#8# range 0 .. 31;
      RIDMSKA at 16#C# range 0 .. 31;
      RIDB    at 16#10# range 0 .. 31;
      RIDMSKB at 16#14# range 0 .. 31;
   end record;

   --  Region n
   type SMPU0_Rn_Clusters is array (0 .. 3) of SMPU0_Rn_Cluster;

   subtype REVID_REV_Field is HAL.UInt4;
   subtype REVID_MAJOR_Field is HAL.UInt4;

   --  SMPU Revision ID Register
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

   --  System Memory Protection Unit
   type SMPU0_Peripheral is record
      --  SMPU Control Register
      CTL      : aliased CTL_Register;
      --  SMPU Status Register
      STAT     : aliased STAT_Register;
      --  Interrupt Address Register
      IADDR    : aliased HAL.UInt32;
      --  Interrupt Details Register
      IDTLS    : aliased IDTLS_Register;
      --  Bus Error Address Register
      BADDR    : aliased HAL.UInt32;
      --  Bus Error Details Register
      BDTLS    : aliased BDTLS_Register;
      --  Region n
      SMPU0_Rn : aliased SMPU0_Rn_Clusters;
      --  SMPU Revision ID Register
      REVID    : aliased REVID_Register;
   end record
     with Volatile;

   for SMPU0_Peripheral use record
      CTL      at 16#0# range 0 .. 31;
      STAT     at 16#4# range 0 .. 31;
      IADDR    at 16#8# range 0 .. 31;
      IDTLS    at 16#C# range 0 .. 31;
      BADDR    at 16#10# range 0 .. 31;
      BDTLS    at 16#14# range 0 .. 31;
      SMPU0_Rn at 16#20# range 0 .. 767;
      REVID    at 16#220# range 0 .. 31;
   end record;

   --  System Memory Protection Unit
   SMPU0_Periph : aliased SMPU0_Peripheral
     with Import, Address => System'To_Address (16#410E0000#);

end NRF_SVD.SMPU0;
