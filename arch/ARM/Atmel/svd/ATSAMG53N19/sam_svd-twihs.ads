--  This spec has been automatically generated from ATSAMG53N19.svd

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
   type TWI0_CR_Register is record
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

   for TWI0_CR_Register use record
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

   subtype TWI0_MMR_DADR_Field is HAL.UInt7;

   --  Master Mode Register
   type TWI0_MMR_Register is record
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
      DADR           : TWI0_MMR_DADR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_MMR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      IADRSZ         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MREAD          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DADR           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype TWI0_SMR_MASK_Field is HAL.UInt7;
   subtype TWI0_SMR_SADR_Field is HAL.UInt7;

   --  Slave Mode Register
   type TWI0_SMR_Register is record
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
      MASK           : TWI0_SMR_MASK_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Slave Address
      SADR           : TWI0_SMR_SADR_Field := 16#0#;
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

   for TWI0_SMR_Register use record
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

   subtype TWI0_IADR_IADR_Field is HAL.UInt24;

   --  Internal Address Register
   type TWI0_IADR_Register is record
      --  Internal Address
      IADR           : TWI0_IADR_IADR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_IADR_Register use record
      IADR           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TWI0_CWGR_CLDIV_Field is HAL.UInt8;
   subtype TWI0_CWGR_CHDIV_Field is HAL.UInt8;
   subtype TWI0_CWGR_CKDIV_Field is HAL.UInt3;
   subtype TWI0_CWGR_HOLD_Field is HAL.UInt5;

   --  Clock Waveform Generator Register
   type TWI0_CWGR_Register is record
      --  Clock Low Divider
      CLDIV          : TWI0_CWGR_CLDIV_Field := 16#0#;
      --  Clock High Divider
      CHDIV          : TWI0_CWGR_CHDIV_Field := 16#0#;
      --  Clock Divider
      CKDIV          : TWI0_CWGR_CKDIV_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  TWD Hold Time Versus TWCK Falling
      HOLD           : TWI0_CWGR_HOLD_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_CWGR_Register use record
      CLDIV          at 0 range 0 .. 7;
      CHDIV          at 0 range 8 .. 15;
      CKDIV          at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      HOLD           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Status Register
   type TWI0_SR_Register is record
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
      --  Read-only. End of RX Buffer (cleared by writing TWIHS_RCR or
      --  TWIHS_RNCR)
      ENDRX          : Boolean;
      --  Read-only. End of TX Buffer (cleared by writing TWIHS_TCR or
      --  TWIHS_TNCR)
      ENDTX          : Boolean;
      --  Read-only. RX Buffer Full (cleared by writing TWIHS_RCR or
      --  TWIHS_RNCR)
      RXBUFF         : Boolean;
      --  Read-only. TX Buffer Empty (cleared by writing TWIHS_TCR or
      --  TWIHS_TNCR)
      TXBUFE         : Boolean;
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
      --  Read-only. SCL line value
      SCL            : Boolean;
      --  Read-only. SDA line value
      SDA            : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SR_Register use record
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
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
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
   type TWI0_IER_Register is record
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
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : Boolean := False;
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

   for TWI0_IER_Register use record
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
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Interrupt Disable Register
   type TWI0_IDR_Register is record
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
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : Boolean := False;
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

   for TWI0_IDR_Register use record
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
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Interrupt Mask Register
   type TWI0_IMR_Register is record
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
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : Boolean;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : Boolean;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : Boolean;
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

   for TWI0_IMR_Register use record
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
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TWI0_RHR_RXDATA_Field is HAL.UInt8;

   --  Receive Holding Register
   type TWI0_RHR_Register is record
      --  Read-only. Master or Slave Receive Holding Data
      RXDATA        : TWI0_RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWI0_THR_TXDATA_Field is HAL.UInt8;

   --  Transmit Holding Register
   type TWI0_THR_Register is record
      --  Write-only. Master or Slave Transmit Holding Data
      TXDATA        : TWI0_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWI0_SMBTR_PRESC_Field is HAL.UInt4;
   subtype TWI0_SMBTR_TLOWS_Field is HAL.UInt8;
   subtype TWI0_SMBTR_TLOWM_Field is HAL.UInt8;
   subtype TWI0_SMBTR_THMAX_Field is HAL.UInt8;

   --  SMBus Timing Register
   type TWI0_SMBTR_Register is record
      --  SMBus Clock Prescaler
      PRESC        : TWI0_SMBTR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  Slave Clock Stretch Maximum Cycles
      TLOWS        : TWI0_SMBTR_TLOWS_Field := 16#0#;
      --  Master Clock Stretch Maximum Cycles
      TLOWM        : TWI0_SMBTR_TLOWM_Field := 16#0#;
      --  Clock High Maximum Cycles
      THMAX        : TWI0_SMBTR_THMAX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SMBTR_Register use record
      PRESC        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      TLOWS        at 0 range 8 .. 15;
      TLOWM        at 0 range 16 .. 23;
      THMAX        at 0 range 24 .. 31;
   end record;

   subtype TWI0_FILTR_THRES_Field is HAL.UInt3;

   --  Filter Register
   type TWI0_FILTR_Register is record
      --  RX Digital Filter
      FILT           : Boolean := False;
      --  PAD Filter Enable
      PADFEN         : Boolean := False;
      --  PAD Filter Config
      PADFCFG        : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Digital Filter Threshold
      THRES          : TWI0_FILTR_THRES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_FILTR_Register use record
      FILT           at 0 range 0 .. 0;
      PADFEN         at 0 range 1 .. 1;
      PADFCFG        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      THRES          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype TWI0_SWMR_SADR1_Field is HAL.UInt7;
   subtype TWI0_SWMR_SADR2_Field is HAL.UInt7;
   subtype TWI0_SWMR_SADR3_Field is HAL.UInt7;
   subtype TWI0_SWMR_DATAM_Field is HAL.UInt8;

   --  SleepWalking Matching Register
   type TWI0_SWMR_Register is record
      --  Slave Address 1
      SADR1          : TWI0_SWMR_SADR1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Slave Address 2
      SADR2          : TWI0_SWMR_SADR2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Slave Address 3
      SADR3          : TWI0_SWMR_SADR3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Data Match
      DATAM          : TWI0_SWMR_DATAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SWMR_Register use record
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
   type TWI0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype TWI0_WPSR_WPVSRC_Field is HAL.UInt24;

   --  Write Protection Status Register
   type TWI0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS         : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC       : TWI0_WPSR_WPVSRC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_WPSR_Register use record
      WPVS         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPVSRC       at 0 range 8 .. 31;
   end record;

   subtype TWI0_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type TWI0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : TWI0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type TWI0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : TWI0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type TWI0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : TWI0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type TWI0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : TWI0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type TWI0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean := False;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      RXCBDIS        at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      TXCBDIS        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ERRCLR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transfer Status Register
   type TWI0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean;
      --  unspecified
      Reserved_19_23 : HAL.UInt5;
      --  Read-only. Transfer Bus Error
      ERR            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_PTSR_Register use record
      RXTEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TXTEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ERR            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-wire Interface High Speed
   type TWI0_Peripheral is record
      --  Control Register
      CR    : aliased TWI0_CR_Register;
      --  Master Mode Register
      MMR   : aliased TWI0_MMR_Register;
      --  Slave Mode Register
      SMR   : aliased TWI0_SMR_Register;
      --  Internal Address Register
      IADR  : aliased TWI0_IADR_Register;
      --  Clock Waveform Generator Register
      CWGR  : aliased TWI0_CWGR_Register;
      --  Status Register
      SR    : aliased TWI0_SR_Register;
      --  Interrupt Enable Register
      IER   : aliased TWI0_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased TWI0_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased TWI0_IMR_Register;
      --  Receive Holding Register
      RHR   : aliased TWI0_RHR_Register;
      --  Transmit Holding Register
      THR   : aliased TWI0_THR_Register;
      --  SMBus Timing Register
      SMBTR : aliased TWI0_SMBTR_Register;
      --  Filter Register
      FILTR : aliased TWI0_FILTR_Register;
      --  SleepWalking Matching Register
      SWMR  : aliased TWI0_SWMR_Register;
      --  Write Protection Mode Register
      WPMR  : aliased TWI0_WPMR_Register;
      --  Write Protection Status Register
      WPSR  : aliased TWI0_WPSR_Register;
      --  Receive Pointer Register
      RPR   : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR   : aliased TWI0_RCR_Register;
      --  Transmit Pointer Register
      TPR   : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR   : aliased TWI0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR  : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR  : aliased TWI0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR  : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR  : aliased TWI0_TNCR_Register;
      --  Transfer Control Register
      PTCR  : aliased TWI0_PTCR_Register;
      --  Transfer Status Register
      PTSR  : aliased TWI0_PTSR_Register;
   end record
     with Volatile;

   for TWI0_Peripheral use record
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
      RPR   at 16#100# range 0 .. 31;
      RCR   at 16#104# range 0 .. 31;
      TPR   at 16#108# range 0 .. 31;
      TCR   at 16#10C# range 0 .. 31;
      RNPR  at 16#110# range 0 .. 31;
      RNCR  at 16#114# range 0 .. 31;
      TNPR  at 16#118# range 0 .. 31;
      TNCR  at 16#11C# range 0 .. 31;
      PTCR  at 16#120# range 0 .. 31;
      PTSR  at 16#124# range 0 .. 31;
   end record;

   --  Two-wire Interface High Speed
   TWI0_Periph : aliased TWI0_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

end SAM_SVD.TWIHS;
