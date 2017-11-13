--  This spec has been automatically generated from ATSAMS70N20.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TWIHS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type TWIHS0_CR_Register is record
      --  Write-only. Send a START Condition
      START          : Boolean := False;
      --  Write-only. Send a STOP Condition
      STOP           : Boolean := False;
      --  Write-only. TWIHS Master Mode Enabled
      MSEN           : Boolean := False;
      --  Write-only. TWIHS Master Mode Disabled
      MSDIS          : Boolean := False;
      --  Write-only. TWIHS Slave Mode Enabled
      SVEN           : Boolean := False;
      --  Write-only. TWIHS Slave Mode Disabled
      SVDIS          : Boolean := False;
      --  Write-only. SMBus Quick Command
      QUICK          : Boolean := False;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  Write-only. TWIHS High-Speed Mode Enabled
      HSEN           : Boolean := False;
      --  Write-only. TWIHS High-Speed Mode Disabled
      HSDIS          : Boolean := False;
      --  Write-only. SMBus Mode Enabled
      SMBEN          : Boolean := False;
      --  Write-only. SMBus Mode Disabled
      SMBDIS         : Boolean := False;
      --  Write-only. Packet Error Checking Enable
      PECEN          : Boolean := False;
      --  Write-only. Packet Error Checking Disable
      PECDIS         : Boolean := False;
      --  Write-only. PEC Request
      PECRQ          : Boolean := False;
      --  Write-only. Bus CLEAR Command
      CLEAR          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_CR_Register use record
      START          at 0 range 0 .. 0;
      STOP           at 0 range 1 .. 1;
      MSEN           at 0 range 2 .. 2;
      MSDIS          at 0 range 3 .. 3;
      SVEN           at 0 range 4 .. 4;
      SVDIS          at 0 range 5 .. 5;
      QUICK          at 0 range 6 .. 6;
      SWRST          at 0 range 7 .. 7;
      HSEN           at 0 range 8 .. 8;
      HSDIS          at 0 range 9 .. 9;
      SMBEN          at 0 range 10 .. 10;
      SMBDIS         at 0 range 11 .. 11;
      PECEN          at 0 range 12 .. 12;
      PECDIS         at 0 range 13 .. 13;
      PECRQ          at 0 range 14 .. 14;
      CLEAR          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Internal Device Address Size
   type MMR_IADRSZ_Field is
     (
      --  No internal device address
      None,
      --  One-byte internal device address
      MMR_IADRSZ_Field_1_Byte,
      --  Two-byte internal device address
      MMR_IADRSZ_Field_2_Byte,
      --  Three-byte internal device address
      MMR_IADRSZ_Field_3_Byte)
     with Size => 2;
   for MMR_IADRSZ_Field use
     (None => 0,
      MMR_IADRSZ_Field_1_Byte => 1,
      MMR_IADRSZ_Field_2_Byte => 2,
      MMR_IADRSZ_Field_3_Byte => 3);

   subtype TWIHS0_MMR_DADR_Field is HAL.UInt7;

   --  Master Mode Register
   type TWIHS0_MMR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Internal Device Address Size
      IADRSZ         : MMR_IADRSZ_Field := SAM_SVD.TWIHS.None;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master Read Direction
      MREAD          : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Device Address
      DADR           : TWIHS0_MMR_DADR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_MMR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      IADRSZ         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MREAD          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DADR           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype TWIHS0_SMR_MASK_Field is HAL.UInt7;
   subtype TWIHS0_SMR_SADR_Field is HAL.UInt7;

   --  Slave Mode Register
   type TWIHS0_SMR_Register is record
      --  Slave Receiver Data Phase NACK enable
      NACKEN         : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  SMBus Default Address
      SMDA           : Boolean := False;
      --  SMBus Host Header
      SMHH           : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Clock Wait State Disable
      SCLWSDIS       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Slave Address Mask
      MASK           : TWIHS0_SMR_MASK_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Slave Address
      SADR           : TWIHS0_SMR_SADR_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  Slave Address 1 Enable
      SADR1EN        : Boolean := False;
      --  Slave Address 2 Enable
      SADR2EN        : Boolean := False;
      --  Slave Address 3 Enable
      SADR3EN        : Boolean := False;
      --  Data Matching Enable
      DATAMEN        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_SMR_Register use record
      NACKEN         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SMDA           at 0 range 2 .. 2;
      SMHH           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SCLWSDIS       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MASK           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SADR           at 0 range 16 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      SADR1EN        at 0 range 28 .. 28;
      SADR2EN        at 0 range 29 .. 29;
      SADR3EN        at 0 range 30 .. 30;
      DATAMEN        at 0 range 31 .. 31;
   end record;

   subtype TWIHS0_IADR_IADR_Field is HAL.UInt24;

   --  Internal Address Register
   type TWIHS0_IADR_Register is record
      --  Internal Address
      IADR           : TWIHS0_IADR_IADR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_IADR_Register use record
      IADR           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TWIHS0_CWGR_CLDIV_Field is HAL.UInt8;
   subtype TWIHS0_CWGR_CHDIV_Field is HAL.UInt8;
   subtype TWIHS0_CWGR_CKDIV_Field is HAL.UInt3;
   subtype TWIHS0_CWGR_HOLD_Field is HAL.UInt5;

   --  Clock Waveform Generator Register
   type TWIHS0_CWGR_Register is record
      --  Clock Low Divider
      CLDIV          : TWIHS0_CWGR_CLDIV_Field := 16#0#;
      --  Clock High Divider
      CHDIV          : TWIHS0_CWGR_CHDIV_Field := 16#0#;
      --  Clock Divider
      CKDIV          : TWIHS0_CWGR_CKDIV_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  TWD Hold Time Versus TWCK Falling
      HOLD           : TWIHS0_CWGR_HOLD_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_CWGR_Register use record
      CLDIV          at 0 range 0 .. 7;
      CHDIV          at 0 range 8 .. 15;
      CKDIV          at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      HOLD           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Status Register
   type TWIHS0_SR_Register is record
      --  Read-only. Transmission Completed (cleared by writing TWIHS_THR)
      TXCOMP         : Boolean;
      --  Read-only. Receive Holding Register Ready (cleared by reading
      --  TWIHS_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmit Holding Register Ready (cleared by writing
      --  TWIHS_THR)
      TXRDY          : Boolean;
      --  Read-only. Slave Read
      SVREAD         : Boolean;
      --  Read-only. Slave Access
      SVACC          : Boolean;
      --  Read-only. General Call Access (cleared on read)
      GACC           : Boolean;
      --  Read-only. Overrun Error (cleared on read)
      OVRE           : Boolean;
      --  Read-only. Underrun Error (cleared on read)
      UNRE           : Boolean;
      --  Read-only. Not Acknowledged (cleared on read)
      NACK           : Boolean;
      --  Read-only. Arbitration Lost (cleared on read)
      ARBLST         : Boolean;
      --  Read-only. Clock Wait State
      SCLWS          : Boolean;
      --  Read-only. End Of Slave Access (cleared on read)
      EOSACC         : Boolean;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Master Code Acknowledge (cleared on read)
      MCACK          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Timeout Error (cleared on read)
      TOUT           : Boolean;
      --  Read-only. PEC Error (cleared on read)
      PECERR         : Boolean;
      --  Read-only. SMBus Default Address Match (cleared on read)
      SMBDAM         : Boolean;
      --  Read-only. SMBus Host Header Address Match (cleared on read)
      SMBHHM         : Boolean;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. SCL Line Value
      SCL            : Boolean;
      --  Read-only. SDA Line Value
      SDA            : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_SR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      SVREAD         at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCLWS          at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SCL            at 0 range 24 .. 24;
      SDA            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Interrupt Enable Register
   type TWIHS0_IER_Register is record
      --  Write-only. Transmission Completed Interrupt Enable
      TXCOMP         : Boolean := False;
      --  Write-only. Receive Holding Register Ready Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. Transmit Holding Register Ready Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Enable
      SVACC          : Boolean := False;
      --  Write-only. General Call Access Interrupt Enable
      GACC           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Underrun Error Interrupt Enable
      UNRE           : Boolean := False;
      --  Write-only. Not Acknowledge Interrupt Enable
      NACK           : Boolean := False;
      --  Write-only. Arbitration Lost Interrupt Enable
      ARBLST         : Boolean := False;
      --  Write-only. Clock Wait State Interrupt Enable
      SCL_WS         : Boolean := False;
      --  Write-only. End Of Slave Access Interrupt Enable
      EOSACC         : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Master Code Acknowledge Interrupt Enable
      MCACK          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Enable
      TOUT           : Boolean := False;
      --  Write-only. PEC Error Interrupt Enable
      PECERR         : Boolean := False;
      --  Write-only. SMBus Default Address Match Interrupt Enable
      SMBDAM         : Boolean := False;
      --  Write-only. SMBus Host Header Address Match Interrupt Enable
      SMBHHM         : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_IER_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Interrupt Disable Register
   type TWIHS0_IDR_Register is record
      --  Write-only. Transmission Completed Interrupt Disable
      TXCOMP         : Boolean := False;
      --  Write-only. Receive Holding Register Ready Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. Transmit Holding Register Ready Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Disable
      SVACC          : Boolean := False;
      --  Write-only. General Call Access Interrupt Disable
      GACC           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  Write-only. Underrun Error Interrupt Disable
      UNRE           : Boolean := False;
      --  Write-only. Not Acknowledge Interrupt Disable
      NACK           : Boolean := False;
      --  Write-only. Arbitration Lost Interrupt Disable
      ARBLST         : Boolean := False;
      --  Write-only. Clock Wait State Interrupt Disable
      SCL_WS         : Boolean := False;
      --  Write-only. End Of Slave Access Interrupt Disable
      EOSACC         : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Master Code Acknowledge Interrupt Disable
      MCACK          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Disable
      TOUT           : Boolean := False;
      --  Write-only. PEC Error Interrupt Disable
      PECERR         : Boolean := False;
      --  Write-only. SMBus Default Address Match Interrupt Disable
      SMBDAM         : Boolean := False;
      --  Write-only. SMBus Host Header Address Match Interrupt Disable
      SMBHHM         : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_IDR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Interrupt Mask Register
   type TWIHS0_IMR_Register is record
      --  Read-only. Transmission Completed Interrupt Mask
      TXCOMP         : Boolean;
      --  Read-only. Receive Holding Register Ready Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. Transmit Holding Register Ready Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Slave Access Interrupt Mask
      SVACC          : Boolean;
      --  Read-only. General Call Access Interrupt Mask
      GACC           : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  Read-only. Not Acknowledge Interrupt Mask
      NACK           : Boolean;
      --  Read-only. Arbitration Lost Interrupt Mask
      ARBLST         : Boolean;
      --  Read-only. Clock Wait State Interrupt Mask
      SCL_WS         : Boolean;
      --  Read-only. End Of Slave Access Interrupt Mask
      EOSACC         : Boolean;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Master Code Acknowledge Interrupt Mask
      MCACK          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Timeout Error Interrupt Mask
      TOUT           : Boolean;
      --  Read-only. PEC Error Interrupt Mask
      PECERR         : Boolean;
      --  Read-only. SMBus Default Address Match Interrupt Mask
      SMBDAM         : Boolean;
      --  Read-only. SMBus Host Header Address Match Interrupt Mask
      SMBHHM         : Boolean;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_IMR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TWIHS0_RHR_RXDATA_Field is HAL.UInt8;

   --  Receive Holding Register
   type TWIHS0_RHR_Register is record
      --  Read-only. Master or Slave Receive Holding Data
      RXDATA        : TWIHS0_RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWIHS0_THR_TXDATA_Field is HAL.UInt8;

   --  Transmit Holding Register
   type TWIHS0_THR_Register is record
      --  Write-only. Master or Slave Transmit Holding Data
      TXDATA        : TWIHS0_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWIHS0_SMBTR_PRESC_Field is HAL.UInt4;
   subtype TWIHS0_SMBTR_TLOWS_Field is HAL.UInt8;
   subtype TWIHS0_SMBTR_TLOWM_Field is HAL.UInt8;
   subtype TWIHS0_SMBTR_THMAX_Field is HAL.UInt8;

   --  SMBus Timing Register
   type TWIHS0_SMBTR_Register is record
      --  SMBus Clock Prescaler
      PRESC        : TWIHS0_SMBTR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  Slave Clock Stretch Maximum Cycles
      TLOWS        : TWIHS0_SMBTR_TLOWS_Field := 16#0#;
      --  Master Clock Stretch Maximum Cycles
      TLOWM        : TWIHS0_SMBTR_TLOWM_Field := 16#0#;
      --  Clock High Maximum Cycles
      THMAX        : TWIHS0_SMBTR_THMAX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_SMBTR_Register use record
      PRESC        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      TLOWS        at 0 range 8 .. 15;
      TLOWM        at 0 range 16 .. 23;
      THMAX        at 0 range 24 .. 31;
   end record;

   subtype TWIHS0_FILTR_THRES_Field is HAL.UInt3;

   --  Filter Register
   type TWIHS0_FILTR_Register is record
      --  RX Digital Filter
      FILT           : Boolean := False;
      --  PAD Filter Enable
      PADFEN         : Boolean := False;
      --  PAD Filter Config
      PADFCFG        : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Digital Filter Threshold
      THRES          : TWIHS0_FILTR_THRES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_FILTR_Register use record
      FILT           at 0 range 0 .. 0;
      PADFEN         at 0 range 1 .. 1;
      PADFCFG        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      THRES          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype TWIHS0_SWMR_SADR1_Field is HAL.UInt7;
   subtype TWIHS0_SWMR_SADR2_Field is HAL.UInt7;
   subtype TWIHS0_SWMR_SADR3_Field is HAL.UInt7;
   subtype TWIHS0_SWMR_DATAM_Field is HAL.UInt8;

   --  SleepWalking Matching Register
   type TWIHS0_SWMR_Register is record
      --  Slave Address 1
      SADR1          : TWIHS0_SWMR_SADR1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Slave Address 2
      SADR2          : TWIHS0_SWMR_SADR2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Slave Address 3
      SADR3          : TWIHS0_SWMR_SADR3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Data Match
      DATAM          : TWIHS0_SWMR_DATAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_SWMR_Register use record
      SADR1          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SADR2          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SADR3          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DATAM          at 0 range 24 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5527369);

   --  Write Protection Mode Register
   type TWIHS0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype TWIHS0_WPSR_WPVSRC_Field is HAL.UInt24;

   --  Write Protection Status Register
   type TWIHS0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS         : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC       : TWIHS0_WPSR_WPVSRC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIHS0_WPSR_Register use record
      WPVS         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPVSRC       at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-wire Interface High Speed 0
   type TWIHS_Peripheral is record
      --  Control Register
      CR    : aliased TWIHS0_CR_Register;
      --  Master Mode Register
      MMR   : aliased TWIHS0_MMR_Register;
      --  Slave Mode Register
      SMR   : aliased TWIHS0_SMR_Register;
      --  Internal Address Register
      IADR  : aliased TWIHS0_IADR_Register;
      --  Clock Waveform Generator Register
      CWGR  : aliased TWIHS0_CWGR_Register;
      --  Status Register
      SR    : aliased TWIHS0_SR_Register;
      --  Interrupt Enable Register
      IER   : aliased TWIHS0_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased TWIHS0_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased TWIHS0_IMR_Register;
      --  Receive Holding Register
      RHR   : aliased TWIHS0_RHR_Register;
      --  Transmit Holding Register
      THR   : aliased TWIHS0_THR_Register;
      --  SMBus Timing Register
      SMBTR : aliased TWIHS0_SMBTR_Register;
      --  Filter Register
      FILTR : aliased TWIHS0_FILTR_Register;
      --  SleepWalking Matching Register
      SWMR  : aliased TWIHS0_SWMR_Register;
      --  Write Protection Mode Register
      WPMR  : aliased TWIHS0_WPMR_Register;
      --  Write Protection Status Register
      WPSR  : aliased TWIHS0_WPSR_Register;
   end record
     with Volatile;

   for TWIHS_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      MMR   at 16#4# range 0 .. 31;
      SMR   at 16#8# range 0 .. 31;
      IADR  at 16#C# range 0 .. 31;
      CWGR  at 16#10# range 0 .. 31;
      SR    at 16#20# range 0 .. 31;
      IER   at 16#24# range 0 .. 31;
      IDR   at 16#28# range 0 .. 31;
      IMR   at 16#2C# range 0 .. 31;
      RHR   at 16#30# range 0 .. 31;
      THR   at 16#34# range 0 .. 31;
      SMBTR at 16#38# range 0 .. 31;
      FILTR at 16#44# range 0 .. 31;
      SWMR  at 16#4C# range 0 .. 31;
      WPMR  at 16#E4# range 0 .. 31;
      WPSR  at 16#E8# range 0 .. 31;
   end record;

   --  Two-wire Interface High Speed 0
   TWIHS0_Periph : aliased TWIHS_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

   --  Two-wire Interface High Speed 1
   TWIHS1_Periph : aliased TWIHS_Peripheral
     with Import, Address => System'To_Address (16#4001C000#);

   --  Two-wire Interface High Speed 2
   TWIHS2_Periph : aliased TWIHS_Peripheral
     with Import, Address => System'To_Address (16#40060000#);

end SAM_SVD.TWIHS;
